; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!167496 () Bool)

(assert start!167496)

(declare-fun b!1712431 () Bool)

(declare-fun b_free!46479 () Bool)

(declare-fun b_next!47183 () Bool)

(assert (=> b!1712431 (= b_free!46479 (not b_next!47183))))

(declare-fun tp!489347 () Bool)

(declare-fun b_and!124017 () Bool)

(assert (=> b!1712431 (= tp!489347 b_and!124017)))

(declare-fun b_free!46481 () Bool)

(declare-fun b_next!47185 () Bool)

(assert (=> b!1712431 (= b_free!46481 (not b_next!47185))))

(declare-fun tp!489346 () Bool)

(declare-fun b_and!124019 () Bool)

(assert (=> b!1712431 (= tp!489346 b_and!124019)))

(declare-fun b!1712427 () Bool)

(declare-fun b_free!46483 () Bool)

(declare-fun b_next!47187 () Bool)

(assert (=> b!1712427 (= b_free!46483 (not b_next!47187))))

(declare-fun tp!489352 () Bool)

(declare-fun b_and!124021 () Bool)

(assert (=> b!1712427 (= tp!489352 b_and!124021)))

(declare-fun b_free!46485 () Bool)

(declare-fun b_next!47189 () Bool)

(assert (=> b!1712427 (= b_free!46485 (not b_next!47189))))

(declare-fun tp!489350 () Bool)

(declare-fun b_and!124023 () Bool)

(assert (=> b!1712427 (= tp!489350 b_and!124023)))

(declare-fun b!1712423 () Bool)

(declare-fun b_free!46487 () Bool)

(declare-fun b_next!47191 () Bool)

(assert (=> b!1712423 (= b_free!46487 (not b_next!47191))))

(declare-fun tp!489356 () Bool)

(declare-fun b_and!124025 () Bool)

(assert (=> b!1712423 (= tp!489356 b_and!124025)))

(declare-fun b_free!46489 () Bool)

(declare-fun b_next!47193 () Bool)

(assert (=> b!1712423 (= b_free!46489 (not b_next!47193))))

(declare-fun tp!489355 () Bool)

(declare-fun b_and!124027 () Bool)

(assert (=> b!1712423 (= tp!489355 b_and!124027)))

(declare-fun b!1712452 () Bool)

(declare-fun e!1095221 () Bool)

(assert (=> b!1712452 (= e!1095221 true)))

(declare-fun b!1712451 () Bool)

(declare-fun e!1095220 () Bool)

(assert (=> b!1712451 (= e!1095220 e!1095221)))

(declare-fun b!1712450 () Bool)

(declare-fun e!1095219 () Bool)

(assert (=> b!1712450 (= e!1095219 e!1095220)))

(declare-fun b!1712424 () Bool)

(assert (=> b!1712424 e!1095219))

(assert (= b!1712451 b!1712452))

(assert (= b!1712450 b!1712451))

(assert (= b!1712424 b!1712450))

(declare-datatypes ((List!18778 0))(
  ( (Nil!18708) (Cons!18708 (h!24109 (_ BitVec 16)) (t!158391 List!18778)) )
))
(declare-datatypes ((TokenValue!3396 0))(
  ( (FloatLiteralValue!6792 (text!24217 List!18778)) (TokenValueExt!3395 (__x!12094 Int)) (Broken!16980 (value!103869 List!18778)) (Object!3465) (End!3396) (Def!3396) (Underscore!3396) (Match!3396) (Else!3396) (Error!3396) (Case!3396) (If!3396) (Extends!3396) (Abstract!3396) (Class!3396) (Val!3396) (DelimiterValue!6792 (del!3456 List!18778)) (KeywordValue!3402 (value!103870 List!18778)) (CommentValue!6792 (value!103871 List!18778)) (WhitespaceValue!6792 (value!103872 List!18778)) (IndentationValue!3396 (value!103873 List!18778)) (String!21313) (Int32!3396) (Broken!16981 (value!103874 List!18778)) (Boolean!3397) (Unit!32535) (OperatorValue!3399 (op!3456 List!18778)) (IdentifierValue!6792 (value!103875 List!18778)) (IdentifierValue!6793 (value!103876 List!18778)) (WhitespaceValue!6793 (value!103877 List!18778)) (True!6792) (False!6792) (Broken!16982 (value!103878 List!18778)) (Broken!16983 (value!103879 List!18778)) (True!6793) (RightBrace!3396) (RightBracket!3396) (Colon!3396) (Null!3396) (Comma!3396) (LeftBracket!3396) (False!6793) (LeftBrace!3396) (ImaginaryLiteralValue!3396 (text!24218 List!18778)) (StringLiteralValue!10188 (value!103880 List!18778)) (EOFValue!3396 (value!103881 List!18778)) (IdentValue!3396 (value!103882 List!18778)) (DelimiterValue!6793 (value!103883 List!18778)) (DedentValue!3396 (value!103884 List!18778)) (NewLineValue!3396 (value!103885 List!18778)) (IntegerValue!10188 (value!103886 (_ BitVec 32)) (text!24219 List!18778)) (IntegerValue!10189 (value!103887 Int) (text!24220 List!18778)) (Times!3396) (Or!3396) (Equal!3396) (Minus!3396) (Broken!16984 (value!103888 List!18778)) (And!3396) (Div!3396) (LessEqual!3396) (Mod!3396) (Concat!8030) (Not!3396) (Plus!3396) (SpaceValue!3396 (value!103889 List!18778)) (IntegerValue!10190 (value!103890 Int) (text!24221 List!18778)) (StringLiteralValue!10189 (text!24222 List!18778)) (FloatLiteralValue!6793 (text!24223 List!18778)) (BytesLiteralValue!3396 (value!103891 List!18778)) (CommentValue!6793 (value!103892 List!18778)) (StringLiteralValue!10190 (value!103893 List!18778)) (ErrorTokenValue!3396 (msg!3457 List!18778)) )
))
(declare-datatypes ((C!9442 0))(
  ( (C!9443 (val!5317 Int)) )
))
(declare-datatypes ((List!18779 0))(
  ( (Nil!18709) (Cons!18709 (h!24110 C!9442) (t!158392 List!18779)) )
))
(declare-datatypes ((Regex!4634 0))(
  ( (ElementMatch!4634 (c!280547 C!9442)) (Concat!8031 (regOne!9780 Regex!4634) (regTwo!9780 Regex!4634)) (EmptyExpr!4634) (Star!4634 (reg!4963 Regex!4634)) (EmptyLang!4634) (Union!4634 (regOne!9781 Regex!4634) (regTwo!9781 Regex!4634)) )
))
(declare-datatypes ((String!21314 0))(
  ( (String!21315 (value!103894 String)) )
))
(declare-datatypes ((IArray!12449 0))(
  ( (IArray!12450 (innerList!6282 List!18779)) )
))
(declare-datatypes ((Conc!6222 0))(
  ( (Node!6222 (left!14911 Conc!6222) (right!15241 Conc!6222) (csize!12674 Int) (cheight!6433 Int)) (Leaf!9096 (xs!9098 IArray!12449) (csize!12675 Int)) (Empty!6222) )
))
(declare-datatypes ((BalanceConc!12388 0))(
  ( (BalanceConc!12389 (c!280548 Conc!6222)) )
))
(declare-datatypes ((TokenValueInjection!6452 0))(
  ( (TokenValueInjection!6453 (toValue!4809 Int) (toChars!4668 Int)) )
))
(declare-datatypes ((Rule!6412 0))(
  ( (Rule!6413 (regex!3306 Regex!4634) (tag!3604 String!21314) (isSeparator!3306 Bool) (transformation!3306 TokenValueInjection!6452)) )
))
(declare-datatypes ((Token!6178 0))(
  ( (Token!6179 (value!103895 TokenValue!3396) (rule!5242 Rule!6412) (size!14869 Int) (originalCharacters!4120 List!18779)) )
))
(declare-datatypes ((tuple2!18420 0))(
  ( (tuple2!18421 (_1!10612 Token!6178) (_2!10612 List!18779)) )
))
(declare-fun lt!654328 () tuple2!18420)

(declare-fun order!11265 () Int)

(declare-fun lambda!68861 () Int)

(declare-fun order!11267 () Int)

(declare-fun dynLambda!8502 (Int Int) Int)

(declare-fun dynLambda!8503 (Int Int) Int)

(assert (=> b!1712452 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (dynLambda!8503 order!11267 lambda!68861))))

(declare-fun order!11269 () Int)

(declare-fun dynLambda!8504 (Int Int) Int)

(assert (=> b!1712452 (< (dynLambda!8504 order!11269 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (dynLambda!8503 order!11267 lambda!68861))))

(declare-fun e!1095207 () Bool)

(declare-fun tp!489354 () Bool)

(declare-fun b!1712415 () Bool)

(declare-datatypes ((List!18780 0))(
  ( (Nil!18710) (Cons!18710 (h!24111 Rule!6412) (t!158393 List!18780)) )
))
(declare-fun rules!3447 () List!18780)

(declare-fun e!1095194 () Bool)

(declare-fun inv!24124 (String!21314) Bool)

(declare-fun inv!24127 (TokenValueInjection!6452) Bool)

(assert (=> b!1712415 (= e!1095207 (and tp!489354 (inv!24124 (tag!3604 (h!24111 rules!3447))) (inv!24127 (transformation!3306 (h!24111 rules!3447))) e!1095194))))

(declare-fun b!1712416 () Bool)

(declare-fun e!1095202 () Bool)

(declare-fun e!1095198 () Bool)

(assert (=> b!1712416 (= e!1095202 e!1095198)))

(declare-fun res!767732 () Bool)

(assert (=> b!1712416 (=> res!767732 e!1095198)))

(declare-fun lt!654332 () BalanceConc!12388)

(declare-fun lt!654329 () List!18779)

(declare-fun list!7551 (BalanceConc!12388) List!18779)

(declare-fun dynLambda!8505 (Int TokenValue!3396) BalanceConc!12388)

(declare-fun dynLambda!8506 (Int BalanceConc!12388) TokenValue!3396)

(assert (=> b!1712416 (= res!767732 (not (= (list!7551 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) lt!654329)))))

(declare-datatypes ((Unit!32536 0))(
  ( (Unit!32537) )
))
(declare-fun lt!654337 () Unit!32536)

(declare-fun lemmaSemiInverse!452 (TokenValueInjection!6452 BalanceConc!12388) Unit!32536)

(assert (=> b!1712416 (= lt!654337 (lemmaSemiInverse!452 (transformation!3306 (rule!5242 (_1!10612 lt!654328))) lt!654332))))

(declare-fun b!1712417 () Bool)

(declare-fun res!767747 () Bool)

(declare-fun e!1095210 () Bool)

(assert (=> b!1712417 (=> res!767747 e!1095210)))

(declare-fun suffix!1421 () List!18779)

(declare-fun lt!654323 () List!18779)

(declare-datatypes ((LexerInterface!2935 0))(
  ( (LexerInterfaceExt!2932 (__x!12095 Int)) (Lexer!2933) )
))
(declare-fun thiss!24550 () LexerInterface!2935)

(declare-fun prefixMatch!519 (Regex!4634 List!18779) Bool)

(declare-fun rulesRegex!664 (LexerInterface!2935 List!18780) Regex!4634)

(declare-fun ++!5131 (List!18779 List!18779) List!18779)

(declare-fun head!3845 (List!18779) C!9442)

(assert (=> b!1712417 (= res!767747 (prefixMatch!519 (rulesRegex!664 thiss!24550 rules!3447) (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))

(declare-fun b!1712418 () Bool)

(declare-fun e!1095212 () Bool)

(declare-fun e!1095192 () Bool)

(assert (=> b!1712418 (= e!1095212 e!1095192)))

(declare-fun res!767746 () Bool)

(assert (=> b!1712418 (=> (not res!767746) (not e!1095192))))

(declare-datatypes ((Option!3636 0))(
  ( (None!3635) (Some!3635 (v!25026 tuple2!18420)) )
))
(declare-fun lt!654333 () Option!3636)

(declare-fun isDefined!2979 (Option!3636) Bool)

(assert (=> b!1712418 (= res!767746 (isDefined!2979 lt!654333))))

(declare-fun maxPrefix!1489 (LexerInterface!2935 List!18780 List!18779) Option!3636)

(assert (=> b!1712418 (= lt!654333 (maxPrefix!1489 thiss!24550 rules!3447 lt!654323))))

(declare-fun token!523 () Token!6178)

(declare-fun charsOf!1955 (Token!6178) BalanceConc!12388)

(assert (=> b!1712418 (= lt!654323 (list!7551 (charsOf!1955 token!523)))))

(declare-fun e!1095205 () Bool)

(declare-fun tp!489353 () Bool)

(declare-fun b!1712420 () Bool)

(declare-fun e!1095203 () Bool)

(declare-fun inv!21 (TokenValue!3396) Bool)

(assert (=> b!1712420 (= e!1095205 (and (inv!21 (value!103895 token!523)) e!1095203 tp!489353))))

(declare-fun b!1712421 () Bool)

(declare-fun res!767735 () Bool)

(assert (=> b!1712421 (=> (not res!767735) (not e!1095212))))

(declare-fun isEmpty!11753 (List!18780) Bool)

(assert (=> b!1712421 (= res!767735 (not (isEmpty!11753 rules!3447)))))

(declare-fun b!1712422 () Bool)

(declare-fun res!767731 () Bool)

(assert (=> b!1712422 (=> (not res!767731) (not e!1095212))))

(declare-fun rule!422 () Rule!6412)

(declare-fun contains!3326 (List!18780 Rule!6412) Bool)

(assert (=> b!1712422 (= res!767731 (contains!3326 rules!3447 rule!422))))

(assert (=> b!1712423 (= e!1095194 (and tp!489356 tp!489355))))

(declare-fun e!1095196 () Bool)

(assert (=> b!1712424 (= e!1095196 e!1095202)))

(declare-fun res!767739 () Bool)

(assert (=> b!1712424 (=> res!767739 e!1095202)))

(declare-fun Forall!681 (Int) Bool)

(assert (=> b!1712424 (= res!767739 (not (Forall!681 lambda!68861)))))

(declare-fun lt!654331 () Unit!32536)

(declare-fun lemmaInv!513 (TokenValueInjection!6452) Unit!32536)

(assert (=> b!1712424 (= lt!654331 (lemmaInv!513 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun b!1712425 () Bool)

(declare-fun e!1095195 () Bool)

(declare-fun tp!489345 () Bool)

(assert (=> b!1712425 (= e!1095203 (and tp!489345 (inv!24124 (tag!3604 (rule!5242 token!523))) (inv!24127 (transformation!3306 (rule!5242 token!523))) e!1095195))))

(declare-fun b!1712426 () Bool)

(declare-fun e!1095206 () Bool)

(declare-fun tp_is_empty!7511 () Bool)

(declare-fun tp!489349 () Bool)

(assert (=> b!1712426 (= e!1095206 (and tp_is_empty!7511 tp!489349))))

(declare-fun e!1095197 () Bool)

(assert (=> b!1712427 (= e!1095197 (and tp!489352 tp!489350))))

(declare-fun b!1712428 () Bool)

(declare-fun res!767734 () Bool)

(assert (=> b!1712428 (=> res!767734 e!1095196)))

(declare-fun matchR!2108 (Regex!4634 List!18779) Bool)

(assert (=> b!1712428 (= res!767734 (not (matchR!2108 (regex!3306 (rule!5242 (_1!10612 lt!654328))) lt!654329)))))

(declare-fun b!1712429 () Bool)

(declare-fun res!767733 () Bool)

(declare-fun e!1095209 () Bool)

(assert (=> b!1712429 (=> (not res!767733) (not e!1095209))))

(assert (=> b!1712429 (= res!767733 (= (rule!5242 token!523) rule!422))))

(declare-fun b!1712430 () Bool)

(declare-fun tp!489351 () Bool)

(declare-fun e!1095204 () Bool)

(assert (=> b!1712430 (= e!1095204 (and tp!489351 (inv!24124 (tag!3604 rule!422)) (inv!24127 (transformation!3306 rule!422)) e!1095197))))

(assert (=> b!1712431 (= e!1095195 (and tp!489347 tp!489346))))

(declare-fun b!1712432 () Bool)

(assert (=> b!1712432 (= e!1095209 (not e!1095210))))

(declare-fun res!767736 () Bool)

(assert (=> b!1712432 (=> res!767736 e!1095210)))

(assert (=> b!1712432 (= res!767736 (not (matchR!2108 (regex!3306 rule!422) lt!654323)))))

(declare-fun ruleValid!805 (LexerInterface!2935 Rule!6412) Bool)

(assert (=> b!1712432 (ruleValid!805 thiss!24550 rule!422)))

(declare-fun lt!654336 () Unit!32536)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!329 (LexerInterface!2935 Rule!6412 List!18780) Unit!32536)

(assert (=> b!1712432 (= lt!654336 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!329 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1712419 () Bool)

(assert (=> b!1712419 (= e!1095210 e!1095196)))

(declare-fun res!767744 () Bool)

(assert (=> b!1712419 (=> res!767744 e!1095196)))

(declare-fun lt!654334 () List!18779)

(declare-fun isPrefix!1547 (List!18779 List!18779) Bool)

(assert (=> b!1712419 (= res!767744 (not (isPrefix!1547 lt!654329 lt!654334)))))

(assert (=> b!1712419 (isPrefix!1547 lt!654329 (++!5131 lt!654329 (_2!10612 lt!654328)))))

(declare-fun lt!654325 () Unit!32536)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1057 (List!18779 List!18779) Unit!32536)

(assert (=> b!1712419 (= lt!654325 (lemmaConcatTwoListThenFirstIsPrefix!1057 lt!654329 (_2!10612 lt!654328)))))

(assert (=> b!1712419 (= lt!654329 (list!7551 lt!654332))))

(assert (=> b!1712419 (= lt!654332 (charsOf!1955 (_1!10612 lt!654328)))))

(declare-fun e!1095191 () Bool)

(assert (=> b!1712419 e!1095191))

(declare-fun res!767738 () Bool)

(assert (=> b!1712419 (=> (not res!767738) (not e!1095191))))

(declare-datatypes ((Option!3637 0))(
  ( (None!3636) (Some!3636 (v!25027 Rule!6412)) )
))
(declare-fun lt!654327 () Option!3637)

(declare-fun isDefined!2980 (Option!3637) Bool)

(assert (=> b!1712419 (= res!767738 (isDefined!2980 lt!654327))))

(declare-fun getRuleFromTag!356 (LexerInterface!2935 List!18780 String!21314) Option!3637)

(assert (=> b!1712419 (= lt!654327 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun lt!654326 () Unit!32536)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!356 (LexerInterface!2935 List!18780 List!18779 Token!6178) Unit!32536)

(assert (=> b!1712419 (= lt!654326 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!356 thiss!24550 rules!3447 lt!654334 (_1!10612 lt!654328)))))

(declare-fun lt!654322 () Option!3636)

(declare-fun get!5507 (Option!3636) tuple2!18420)

(assert (=> b!1712419 (= lt!654328 (get!5507 lt!654322))))

(declare-fun lt!654321 () Unit!32536)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!459 (LexerInterface!2935 List!18780 List!18779 List!18779) Unit!32536)

(assert (=> b!1712419 (= lt!654321 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!459 thiss!24550 rules!3447 lt!654323 suffix!1421))))

(assert (=> b!1712419 (= lt!654322 (maxPrefix!1489 thiss!24550 rules!3447 lt!654334))))

(assert (=> b!1712419 (isPrefix!1547 lt!654323 lt!654334)))

(declare-fun lt!654324 () Unit!32536)

(assert (=> b!1712419 (= lt!654324 (lemmaConcatTwoListThenFirstIsPrefix!1057 lt!654323 suffix!1421))))

(assert (=> b!1712419 (= lt!654334 (++!5131 lt!654323 suffix!1421))))

(declare-fun res!767737 () Bool)

(assert (=> start!167496 (=> (not res!767737) (not e!1095212))))

(assert (=> start!167496 (= res!767737 (is-Lexer!2933 thiss!24550))))

(assert (=> start!167496 e!1095212))

(assert (=> start!167496 e!1095206))

(assert (=> start!167496 e!1095204))

(assert (=> start!167496 true))

(declare-fun inv!24128 (Token!6178) Bool)

(assert (=> start!167496 (and (inv!24128 token!523) e!1095205)))

(declare-fun e!1095200 () Bool)

(assert (=> start!167496 e!1095200))

(declare-fun b!1712433 () Bool)

(declare-fun seqFromList!2280 (List!18779) BalanceConc!12388)

(assert (=> b!1712433 (= e!1095198 (= lt!654329 (list!7551 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328))))))))

(declare-fun b!1712434 () Bool)

(declare-fun res!767745 () Bool)

(assert (=> b!1712434 (=> (not res!767745) (not e!1095212))))

(declare-fun rulesInvariant!2604 (LexerInterface!2935 List!18780) Bool)

(assert (=> b!1712434 (= res!767745 (rulesInvariant!2604 thiss!24550 rules!3447))))

(declare-fun b!1712435 () Bool)

(declare-fun res!767740 () Bool)

(assert (=> b!1712435 (=> (not res!767740) (not e!1095209))))

(declare-fun lt!654330 () tuple2!18420)

(declare-fun isEmpty!11754 (List!18779) Bool)

(assert (=> b!1712435 (= res!767740 (isEmpty!11754 (_2!10612 lt!654330)))))

(declare-fun b!1712436 () Bool)

(declare-fun e!1095193 () Bool)

(declare-fun lt!654335 () Rule!6412)

(assert (=> b!1712436 (= e!1095193 (= (rule!5242 (_1!10612 lt!654328)) lt!654335))))

(declare-fun b!1712437 () Bool)

(assert (=> b!1712437 (= e!1095192 e!1095209)))

(declare-fun res!767741 () Bool)

(assert (=> b!1712437 (=> (not res!767741) (not e!1095209))))

(assert (=> b!1712437 (= res!767741 (= (_1!10612 lt!654330) token!523))))

(assert (=> b!1712437 (= lt!654330 (get!5507 lt!654333))))

(declare-fun b!1712438 () Bool)

(declare-fun res!767743 () Bool)

(assert (=> b!1712438 (=> res!767743 e!1095210)))

(assert (=> b!1712438 (= res!767743 (isEmpty!11754 suffix!1421))))

(declare-fun b!1712439 () Bool)

(assert (=> b!1712439 (= e!1095191 e!1095193)))

(declare-fun res!767748 () Bool)

(assert (=> b!1712439 (=> (not res!767748) (not e!1095193))))

(assert (=> b!1712439 (= res!767748 (matchR!2108 (regex!3306 lt!654335) (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(declare-fun get!5508 (Option!3637) Rule!6412)

(assert (=> b!1712439 (= lt!654335 (get!5508 lt!654327))))

(declare-fun b!1712440 () Bool)

(declare-fun res!767742 () Bool)

(assert (=> b!1712440 (=> res!767742 e!1095198)))

(assert (=> b!1712440 (= res!767742 (not (= lt!654332 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))

(declare-fun b!1712441 () Bool)

(declare-fun tp!489348 () Bool)

(assert (=> b!1712441 (= e!1095200 (and e!1095207 tp!489348))))

(assert (= (and start!167496 res!767737) b!1712421))

(assert (= (and b!1712421 res!767735) b!1712434))

(assert (= (and b!1712434 res!767745) b!1712422))

(assert (= (and b!1712422 res!767731) b!1712418))

(assert (= (and b!1712418 res!767746) b!1712437))

(assert (= (and b!1712437 res!767741) b!1712435))

(assert (= (and b!1712435 res!767740) b!1712429))

(assert (= (and b!1712429 res!767733) b!1712432))

(assert (= (and b!1712432 (not res!767736)) b!1712438))

(assert (= (and b!1712438 (not res!767743)) b!1712417))

(assert (= (and b!1712417 (not res!767747)) b!1712419))

(assert (= (and b!1712419 res!767738) b!1712439))

(assert (= (and b!1712439 res!767748) b!1712436))

(assert (= (and b!1712419 (not res!767744)) b!1712428))

(assert (= (and b!1712428 (not res!767734)) b!1712424))

(assert (= (and b!1712424 (not res!767739)) b!1712416))

(assert (= (and b!1712416 (not res!767732)) b!1712440))

(assert (= (and b!1712440 (not res!767742)) b!1712433))

(assert (= (and start!167496 (is-Cons!18709 suffix!1421)) b!1712426))

(assert (= b!1712430 b!1712427))

(assert (= start!167496 b!1712430))

(assert (= b!1712425 b!1712431))

(assert (= b!1712420 b!1712425))

(assert (= start!167496 b!1712420))

(assert (= b!1712415 b!1712423))

(assert (= b!1712441 b!1712415))

(assert (= (and start!167496 (is-Cons!18710 rules!3447)) b!1712441))

(declare-fun b_lambda!54025 () Bool)

(assert (=> (not b_lambda!54025) (not b!1712416)))

(declare-fun tb!101035 () Bool)

(declare-fun t!158374 () Bool)

(assert (=> (and b!1712431 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158374) tb!101035))

(declare-fun tp!489359 () Bool)

(declare-fun e!1095224 () Bool)

(declare-fun b!1712457 () Bool)

(declare-fun inv!24129 (Conc!6222) Bool)

(assert (=> b!1712457 (= e!1095224 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) tp!489359))))

(declare-fun result!121418 () Bool)

(declare-fun inv!24130 (BalanceConc!12388) Bool)

(assert (=> tb!101035 (= result!121418 (and (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) e!1095224))))

(assert (= tb!101035 b!1712457))

(declare-fun m!2115861 () Bool)

(assert (=> b!1712457 m!2115861))

(declare-fun m!2115863 () Bool)

(assert (=> tb!101035 m!2115863))

(assert (=> b!1712416 t!158374))

(declare-fun b_and!124029 () Bool)

(assert (= b_and!124019 (and (=> t!158374 result!121418) b_and!124029)))

(declare-fun tb!101037 () Bool)

(declare-fun t!158376 () Bool)

(assert (=> (and b!1712427 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158376) tb!101037))

(declare-fun result!121422 () Bool)

(assert (= result!121422 result!121418))

(assert (=> b!1712416 t!158376))

(declare-fun b_and!124031 () Bool)

(assert (= b_and!124023 (and (=> t!158376 result!121422) b_and!124031)))

(declare-fun tb!101039 () Bool)

(declare-fun t!158378 () Bool)

(assert (=> (and b!1712423 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158378) tb!101039))

(declare-fun result!121424 () Bool)

(assert (= result!121424 result!121418))

(assert (=> b!1712416 t!158378))

(declare-fun b_and!124033 () Bool)

(assert (= b_and!124027 (and (=> t!158378 result!121424) b_and!124033)))

(declare-fun b_lambda!54027 () Bool)

(assert (=> (not b_lambda!54027) (not b!1712416)))

(declare-fun tb!101041 () Bool)

(declare-fun t!158380 () Bool)

(assert (=> (and b!1712431 (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158380) tb!101041))

(declare-fun result!121426 () Bool)

(assert (=> tb!101041 (= result!121426 (inv!21 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))

(declare-fun m!2115865 () Bool)

(assert (=> tb!101041 m!2115865))

(assert (=> b!1712416 t!158380))

(declare-fun b_and!124035 () Bool)

(assert (= b_and!124017 (and (=> t!158380 result!121426) b_and!124035)))

(declare-fun t!158382 () Bool)

(declare-fun tb!101043 () Bool)

(assert (=> (and b!1712427 (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158382) tb!101043))

(declare-fun result!121430 () Bool)

(assert (= result!121430 result!121426))

(assert (=> b!1712416 t!158382))

(declare-fun b_and!124037 () Bool)

(assert (= b_and!124021 (and (=> t!158382 result!121430) b_and!124037)))

(declare-fun t!158384 () Bool)

(declare-fun tb!101045 () Bool)

(assert (=> (and b!1712423 (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158384) tb!101045))

(declare-fun result!121432 () Bool)

(assert (= result!121432 result!121426))

(assert (=> b!1712416 t!158384))

(declare-fun b_and!124039 () Bool)

(assert (= b_and!124025 (and (=> t!158384 result!121432) b_and!124039)))

(declare-fun b_lambda!54029 () Bool)

(assert (=> (not b_lambda!54029) (not b!1712440)))

(declare-fun tb!101047 () Bool)

(declare-fun t!158386 () Bool)

(assert (=> (and b!1712431 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158386) tb!101047))

(declare-fun b!1712460 () Bool)

(declare-fun e!1095228 () Bool)

(declare-fun tp!489360 () Bool)

(assert (=> b!1712460 (= e!1095228 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) tp!489360))))

(declare-fun result!121434 () Bool)

(assert (=> tb!101047 (= result!121434 (and (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))) e!1095228))))

(assert (= tb!101047 b!1712460))

(declare-fun m!2115867 () Bool)

(assert (=> b!1712460 m!2115867))

(declare-fun m!2115869 () Bool)

(assert (=> tb!101047 m!2115869))

(assert (=> b!1712440 t!158386))

(declare-fun b_and!124041 () Bool)

(assert (= b_and!124029 (and (=> t!158386 result!121434) b_and!124041)))

(declare-fun t!158388 () Bool)

(declare-fun tb!101049 () Bool)

(assert (=> (and b!1712427 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158388) tb!101049))

(declare-fun result!121436 () Bool)

(assert (= result!121436 result!121434))

(assert (=> b!1712440 t!158388))

(declare-fun b_and!124043 () Bool)

(assert (= b_and!124031 (and (=> t!158388 result!121436) b_and!124043)))

(declare-fun tb!101051 () Bool)

(declare-fun t!158390 () Bool)

(assert (=> (and b!1712423 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158390) tb!101051))

(declare-fun result!121438 () Bool)

(assert (= result!121438 result!121434))

(assert (=> b!1712440 t!158390))

(declare-fun b_and!124045 () Bool)

(assert (= b_and!124033 (and (=> t!158390 result!121438) b_and!124045)))

(declare-fun m!2115871 () Bool)

(assert (=> b!1712424 m!2115871))

(declare-fun m!2115873 () Bool)

(assert (=> b!1712424 m!2115873))

(declare-fun m!2115875 () Bool)

(assert (=> b!1712420 m!2115875))

(declare-fun m!2115877 () Bool)

(assert (=> b!1712430 m!2115877))

(declare-fun m!2115879 () Bool)

(assert (=> b!1712430 m!2115879))

(declare-fun m!2115881 () Bool)

(assert (=> b!1712416 m!2115881))

(assert (=> b!1712416 m!2115881))

(declare-fun m!2115883 () Bool)

(assert (=> b!1712416 m!2115883))

(assert (=> b!1712416 m!2115883))

(declare-fun m!2115885 () Bool)

(assert (=> b!1712416 m!2115885))

(declare-fun m!2115887 () Bool)

(assert (=> b!1712416 m!2115887))

(declare-fun m!2115889 () Bool)

(assert (=> b!1712419 m!2115889))

(declare-fun m!2115891 () Bool)

(assert (=> b!1712419 m!2115891))

(declare-fun m!2115893 () Bool)

(assert (=> b!1712419 m!2115893))

(declare-fun m!2115895 () Bool)

(assert (=> b!1712419 m!2115895))

(declare-fun m!2115897 () Bool)

(assert (=> b!1712419 m!2115897))

(declare-fun m!2115899 () Bool)

(assert (=> b!1712419 m!2115899))

(declare-fun m!2115901 () Bool)

(assert (=> b!1712419 m!2115901))

(declare-fun m!2115903 () Bool)

(assert (=> b!1712419 m!2115903))

(declare-fun m!2115905 () Bool)

(assert (=> b!1712419 m!2115905))

(declare-fun m!2115907 () Bool)

(assert (=> b!1712419 m!2115907))

(declare-fun m!2115909 () Bool)

(assert (=> b!1712419 m!2115909))

(declare-fun m!2115911 () Bool)

(assert (=> b!1712419 m!2115911))

(declare-fun m!2115913 () Bool)

(assert (=> b!1712419 m!2115913))

(declare-fun m!2115915 () Bool)

(assert (=> b!1712419 m!2115915))

(declare-fun m!2115917 () Bool)

(assert (=> b!1712419 m!2115917))

(assert (=> b!1712419 m!2115893))

(declare-fun m!2115919 () Bool)

(assert (=> b!1712440 m!2115919))

(declare-fun m!2115921 () Bool)

(assert (=> start!167496 m!2115921))

(declare-fun m!2115923 () Bool)

(assert (=> b!1712438 m!2115923))

(declare-fun m!2115925 () Bool)

(assert (=> b!1712421 m!2115925))

(declare-fun m!2115927 () Bool)

(assert (=> b!1712428 m!2115927))

(declare-fun m!2115929 () Bool)

(assert (=> b!1712435 m!2115929))

(declare-fun m!2115931 () Bool)

(assert (=> b!1712432 m!2115931))

(declare-fun m!2115933 () Bool)

(assert (=> b!1712432 m!2115933))

(declare-fun m!2115935 () Bool)

(assert (=> b!1712432 m!2115935))

(declare-fun m!2115937 () Bool)

(assert (=> b!1712422 m!2115937))

(assert (=> b!1712439 m!2115913))

(assert (=> b!1712439 m!2115913))

(declare-fun m!2115939 () Bool)

(assert (=> b!1712439 m!2115939))

(assert (=> b!1712439 m!2115939))

(declare-fun m!2115941 () Bool)

(assert (=> b!1712439 m!2115941))

(declare-fun m!2115943 () Bool)

(assert (=> b!1712439 m!2115943))

(declare-fun m!2115945 () Bool)

(assert (=> b!1712425 m!2115945))

(declare-fun m!2115947 () Bool)

(assert (=> b!1712425 m!2115947))

(declare-fun m!2115949 () Bool)

(assert (=> b!1712417 m!2115949))

(declare-fun m!2115951 () Bool)

(assert (=> b!1712417 m!2115951))

(declare-fun m!2115953 () Bool)

(assert (=> b!1712417 m!2115953))

(assert (=> b!1712417 m!2115949))

(assert (=> b!1712417 m!2115953))

(declare-fun m!2115955 () Bool)

(assert (=> b!1712417 m!2115955))

(declare-fun m!2115957 () Bool)

(assert (=> b!1712434 m!2115957))

(declare-fun m!2115959 () Bool)

(assert (=> b!1712437 m!2115959))

(declare-fun m!2115961 () Bool)

(assert (=> b!1712433 m!2115961))

(assert (=> b!1712433 m!2115961))

(declare-fun m!2115963 () Bool)

(assert (=> b!1712433 m!2115963))

(declare-fun m!2115965 () Bool)

(assert (=> b!1712418 m!2115965))

(declare-fun m!2115967 () Bool)

(assert (=> b!1712418 m!2115967))

(declare-fun m!2115969 () Bool)

(assert (=> b!1712418 m!2115969))

(assert (=> b!1712418 m!2115969))

(declare-fun m!2115971 () Bool)

(assert (=> b!1712418 m!2115971))

(declare-fun m!2115973 () Bool)

(assert (=> b!1712415 m!2115973))

(declare-fun m!2115975 () Bool)

(assert (=> b!1712415 m!2115975))

(push 1)

(assert (not b!1712441))

(assert b_and!124045)

(assert b_and!124037)

(assert (not b!1712420))

(assert (not b!1712433))

(assert (not b!1712438))

(assert b_and!124035)

(assert (not b_next!47193))

(assert (not b_lambda!54027))

(assert b_and!124043)

(assert (not b!1712434))

(assert (not b_next!47191))

(assert (not b!1712425))

(assert (not b_lambda!54029))

(assert (not b!1712428))

(assert (not b!1712422))

(assert (not start!167496))

(assert (not b_next!47185))

(assert (not b!1712421))

(assert (not b!1712418))

(assert (not b!1712417))

(assert (not b!1712419))

(assert (not b!1712432))

(assert (not b!1712460))

(assert (not b_next!47189))

(assert (not b!1712435))

(assert b_and!124039)

(assert (not b_next!47183))

(assert (not b!1712416))

(assert (not b!1712430))

(assert (not b!1712437))

(assert (not b!1712426))

(assert (not b_lambda!54025))

(assert (not b!1712424))

(assert tp_is_empty!7511)

(assert (not b!1712415))

(assert (not tb!101035))

(assert (not b!1712457))

(assert (not b_next!47187))

(assert (not tb!101047))

(assert b_and!124041)

(assert (not tb!101041))

(assert (not b!1712439))

(check-sat)

(pop 1)

(push 1)

(assert b_and!124045)

(assert b_and!124037)

(assert (not b_next!47185))

(assert (not b_next!47189))

(assert b_and!124035)

(assert (not b_next!47193))

(assert b_and!124043)

(assert (not b_next!47191))

(assert (not b_next!47187))

(assert b_and!124041)

(assert b_and!124039)

(assert (not b_next!47183))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!525344 () Bool)

(declare-fun list!7553 (Conc!6222) List!18779)

(assert (=> d!525344 (= (list!7551 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328)))) (list!7553 (c!280548 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328))))))))

(declare-fun bs!401816 () Bool)

(assert (= bs!401816 d!525344))

(declare-fun m!2116093 () Bool)

(assert (=> bs!401816 m!2116093))

(assert (=> b!1712433 d!525344))

(declare-fun d!525346 () Bool)

(declare-fun fromListB!1048 (List!18779) BalanceConc!12388)

(assert (=> d!525346 (= (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328))) (fromListB!1048 (originalCharacters!4120 (_1!10612 lt!654328))))))

(declare-fun bs!401817 () Bool)

(assert (= bs!401817 d!525346))

(declare-fun m!2116095 () Bool)

(assert (=> bs!401817 m!2116095))

(assert (=> b!1712433 d!525346))

(declare-fun d!525348 () Bool)

(declare-fun e!1095329 () Bool)

(assert (=> d!525348 e!1095329))

(declare-fun c!280560 () Bool)

(assert (=> d!525348 (= c!280560 (is-EmptyExpr!4634 (regex!3306 rule!422)))))

(declare-fun lt!654391 () Bool)

(declare-fun e!1095325 () Bool)

(assert (=> d!525348 (= lt!654391 e!1095325)))

(declare-fun c!280558 () Bool)

(assert (=> d!525348 (= c!280558 (isEmpty!11754 lt!654323))))

(declare-fun validRegex!1867 (Regex!4634) Bool)

(assert (=> d!525348 (validRegex!1867 (regex!3306 rule!422))))

(assert (=> d!525348 (= (matchR!2108 (regex!3306 rule!422) lt!654323) lt!654391)))

(declare-fun b!1712589 () Bool)

(declare-fun nullable!1393 (Regex!4634) Bool)

(assert (=> b!1712589 (= e!1095325 (nullable!1393 (regex!3306 rule!422)))))

(declare-fun b!1712590 () Bool)

(declare-fun res!767824 () Bool)

(declare-fun e!1095331 () Bool)

(assert (=> b!1712590 (=> res!767824 e!1095331)))

(assert (=> b!1712590 (= res!767824 (not (is-ElementMatch!4634 (regex!3306 rule!422))))))

(declare-fun e!1095328 () Bool)

(assert (=> b!1712590 (= e!1095328 e!1095331)))

(declare-fun b!1712591 () Bool)

(declare-fun res!767825 () Bool)

(declare-fun e!1095326 () Bool)

(assert (=> b!1712591 (=> res!767825 e!1095326)))

(declare-fun tail!2556 (List!18779) List!18779)

(assert (=> b!1712591 (= res!767825 (not (isEmpty!11754 (tail!2556 lt!654323))))))

(declare-fun b!1712592 () Bool)

(declare-fun e!1095327 () Bool)

(assert (=> b!1712592 (= e!1095331 e!1095327)))

(declare-fun res!767819 () Bool)

(assert (=> b!1712592 (=> (not res!767819) (not e!1095327))))

(assert (=> b!1712592 (= res!767819 (not lt!654391))))

(declare-fun b!1712593 () Bool)

(declare-fun res!767821 () Bool)

(assert (=> b!1712593 (=> res!767821 e!1095331)))

(declare-fun e!1095330 () Bool)

(assert (=> b!1712593 (= res!767821 e!1095330)))

(declare-fun res!767823 () Bool)

(assert (=> b!1712593 (=> (not res!767823) (not e!1095330))))

(assert (=> b!1712593 (= res!767823 lt!654391)))

(declare-fun b!1712594 () Bool)

(declare-fun res!767826 () Bool)

(assert (=> b!1712594 (=> (not res!767826) (not e!1095330))))

(declare-fun call!109509 () Bool)

(assert (=> b!1712594 (= res!767826 (not call!109509))))

(declare-fun b!1712595 () Bool)

(assert (=> b!1712595 (= e!1095329 e!1095328)))

(declare-fun c!280559 () Bool)

(assert (=> b!1712595 (= c!280559 (is-EmptyLang!4634 (regex!3306 rule!422)))))

(declare-fun b!1712596 () Bool)

(assert (=> b!1712596 (= e!1095328 (not lt!654391))))

(declare-fun b!1712597 () Bool)

(declare-fun res!767820 () Bool)

(assert (=> b!1712597 (=> (not res!767820) (not e!1095330))))

(assert (=> b!1712597 (= res!767820 (isEmpty!11754 (tail!2556 lt!654323)))))

(declare-fun b!1712598 () Bool)

(assert (=> b!1712598 (= e!1095330 (= (head!3845 lt!654323) (c!280547 (regex!3306 rule!422))))))

(declare-fun b!1712599 () Bool)

(assert (=> b!1712599 (= e!1095326 (not (= (head!3845 lt!654323) (c!280547 (regex!3306 rule!422)))))))

(declare-fun b!1712600 () Bool)

(assert (=> b!1712600 (= e!1095327 e!1095326)))

(declare-fun res!767822 () Bool)

(assert (=> b!1712600 (=> res!767822 e!1095326)))

(assert (=> b!1712600 (= res!767822 call!109509)))

(declare-fun b!1712601 () Bool)

(assert (=> b!1712601 (= e!1095329 (= lt!654391 call!109509))))

(declare-fun bm!109504 () Bool)

(assert (=> bm!109504 (= call!109509 (isEmpty!11754 lt!654323))))

(declare-fun b!1712602 () Bool)

(declare-fun derivativeStep!1161 (Regex!4634 C!9442) Regex!4634)

(assert (=> b!1712602 (= e!1095325 (matchR!2108 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323)) (tail!2556 lt!654323)))))

(assert (= (and d!525348 c!280558) b!1712589))

(assert (= (and d!525348 (not c!280558)) b!1712602))

(assert (= (and d!525348 c!280560) b!1712601))

(assert (= (and d!525348 (not c!280560)) b!1712595))

(assert (= (and b!1712595 c!280559) b!1712596))

(assert (= (and b!1712595 (not c!280559)) b!1712590))

(assert (= (and b!1712590 (not res!767824)) b!1712593))

(assert (= (and b!1712593 res!767823) b!1712594))

(assert (= (and b!1712594 res!767826) b!1712597))

(assert (= (and b!1712597 res!767820) b!1712598))

(assert (= (and b!1712593 (not res!767821)) b!1712592))

(assert (= (and b!1712592 res!767819) b!1712600))

(assert (= (and b!1712600 (not res!767822)) b!1712591))

(assert (= (and b!1712591 (not res!767825)) b!1712599))

(assert (= (or b!1712601 b!1712594 b!1712600) bm!109504))

(declare-fun m!2116097 () Bool)

(assert (=> b!1712598 m!2116097))

(assert (=> b!1712599 m!2116097))

(declare-fun m!2116099 () Bool)

(assert (=> b!1712597 m!2116099))

(assert (=> b!1712597 m!2116099))

(declare-fun m!2116101 () Bool)

(assert (=> b!1712597 m!2116101))

(assert (=> b!1712591 m!2116099))

(assert (=> b!1712591 m!2116099))

(assert (=> b!1712591 m!2116101))

(assert (=> b!1712602 m!2116097))

(assert (=> b!1712602 m!2116097))

(declare-fun m!2116103 () Bool)

(assert (=> b!1712602 m!2116103))

(assert (=> b!1712602 m!2116099))

(assert (=> b!1712602 m!2116103))

(assert (=> b!1712602 m!2116099))

(declare-fun m!2116105 () Bool)

(assert (=> b!1712602 m!2116105))

(declare-fun m!2116107 () Bool)

(assert (=> bm!109504 m!2116107))

(declare-fun m!2116109 () Bool)

(assert (=> b!1712589 m!2116109))

(assert (=> d!525348 m!2116107))

(declare-fun m!2116111 () Bool)

(assert (=> d!525348 m!2116111))

(assert (=> b!1712432 d!525348))

(declare-fun d!525350 () Bool)

(declare-fun res!767831 () Bool)

(declare-fun e!1095334 () Bool)

(assert (=> d!525350 (=> (not res!767831) (not e!1095334))))

(assert (=> d!525350 (= res!767831 (validRegex!1867 (regex!3306 rule!422)))))

(assert (=> d!525350 (= (ruleValid!805 thiss!24550 rule!422) e!1095334)))

(declare-fun b!1712607 () Bool)

(declare-fun res!767832 () Bool)

(assert (=> b!1712607 (=> (not res!767832) (not e!1095334))))

(assert (=> b!1712607 (= res!767832 (not (nullable!1393 (regex!3306 rule!422))))))

(declare-fun b!1712608 () Bool)

(assert (=> b!1712608 (= e!1095334 (not (= (tag!3604 rule!422) (String!21315 ""))))))

(assert (= (and d!525350 res!767831) b!1712607))

(assert (= (and b!1712607 res!767832) b!1712608))

(assert (=> d!525350 m!2116111))

(assert (=> b!1712607 m!2116109))

(assert (=> b!1712432 d!525350))

(declare-fun d!525352 () Bool)

(assert (=> d!525352 (ruleValid!805 thiss!24550 rule!422)))

(declare-fun lt!654394 () Unit!32536)

(declare-fun choose!10391 (LexerInterface!2935 Rule!6412 List!18780) Unit!32536)

(assert (=> d!525352 (= lt!654394 (choose!10391 thiss!24550 rule!422 rules!3447))))

(assert (=> d!525352 (contains!3326 rules!3447 rule!422)))

(assert (=> d!525352 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!329 thiss!24550 rule!422 rules!3447) lt!654394)))

(declare-fun bs!401818 () Bool)

(assert (= bs!401818 d!525352))

(assert (=> bs!401818 m!2115933))

(declare-fun m!2116113 () Bool)

(assert (=> bs!401818 m!2116113))

(assert (=> bs!401818 m!2115937))

(assert (=> b!1712432 d!525352))

(declare-fun d!525354 () Bool)

(declare-fun isBalanced!1948 (Conc!6222) Bool)

(assert (=> d!525354 (= (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))) (isBalanced!1948 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))

(declare-fun bs!401819 () Bool)

(assert (= bs!401819 d!525354))

(declare-fun m!2116115 () Bool)

(assert (=> bs!401819 m!2116115))

(assert (=> tb!101047 d!525354))

(declare-fun d!525356 () Bool)

(assert (=> d!525356 (= (isEmpty!11754 (_2!10612 lt!654330)) (is-Nil!18709 (_2!10612 lt!654330)))))

(assert (=> b!1712435 d!525356))

(declare-fun d!525358 () Bool)

(declare-fun res!767835 () Bool)

(declare-fun e!1095337 () Bool)

(assert (=> d!525358 (=> (not res!767835) (not e!1095337))))

(declare-fun rulesValid!1234 (LexerInterface!2935 List!18780) Bool)

(assert (=> d!525358 (= res!767835 (rulesValid!1234 thiss!24550 rules!3447))))

(assert (=> d!525358 (= (rulesInvariant!2604 thiss!24550 rules!3447) e!1095337)))

(declare-fun b!1712611 () Bool)

(declare-datatypes ((List!18784 0))(
  ( (Nil!18714) (Cons!18714 (h!24115 String!21314) (t!158435 List!18784)) )
))
(declare-fun noDuplicateTag!1234 (LexerInterface!2935 List!18780 List!18784) Bool)

(assert (=> b!1712611 (= e!1095337 (noDuplicateTag!1234 thiss!24550 rules!3447 Nil!18714))))

(assert (= (and d!525358 res!767835) b!1712611))

(declare-fun m!2116117 () Bool)

(assert (=> d!525358 m!2116117))

(declare-fun m!2116119 () Bool)

(assert (=> b!1712611 m!2116119))

(assert (=> b!1712434 d!525358))

(declare-fun d!525360 () Bool)

(declare-fun c!280563 () Bool)

(assert (=> d!525360 (= c!280563 (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))

(declare-fun e!1095342 () Bool)

(assert (=> d!525360 (= (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) e!1095342)))

(declare-fun b!1712618 () Bool)

(declare-fun inv!24135 (Conc!6222) Bool)

(assert (=> b!1712618 (= e!1095342 (inv!24135 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))

(declare-fun b!1712619 () Bool)

(declare-fun e!1095343 () Bool)

(assert (=> b!1712619 (= e!1095342 e!1095343)))

(declare-fun res!767838 () Bool)

(assert (=> b!1712619 (= res!767838 (not (is-Leaf!9096 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(assert (=> b!1712619 (=> res!767838 e!1095343)))

(declare-fun b!1712620 () Bool)

(declare-fun inv!24136 (Conc!6222) Bool)

(assert (=> b!1712620 (= e!1095343 (inv!24136 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))

(assert (= (and d!525360 c!280563) b!1712618))

(assert (= (and d!525360 (not c!280563)) b!1712619))

(assert (= (and b!1712619 (not res!767838)) b!1712620))

(declare-fun m!2116121 () Bool)

(assert (=> b!1712618 m!2116121))

(declare-fun m!2116123 () Bool)

(assert (=> b!1712620 m!2116123))

(assert (=> b!1712457 d!525360))

(declare-fun d!525362 () Bool)

(assert (=> d!525362 (= (inv!24124 (tag!3604 rule!422)) (= (mod (str.len (value!103894 (tag!3604 rule!422))) 2) 0))))

(assert (=> b!1712430 d!525362))

(declare-fun d!525364 () Bool)

(declare-fun res!767841 () Bool)

(declare-fun e!1095346 () Bool)

(assert (=> d!525364 (=> (not res!767841) (not e!1095346))))

(declare-fun semiInverseModEq!1306 (Int Int) Bool)

(assert (=> d!525364 (= res!767841 (semiInverseModEq!1306 (toChars!4668 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 rule!422))))))

(assert (=> d!525364 (= (inv!24127 (transformation!3306 rule!422)) e!1095346)))

(declare-fun b!1712623 () Bool)

(declare-fun equivClasses!1247 (Int Int) Bool)

(assert (=> b!1712623 (= e!1095346 (equivClasses!1247 (toChars!4668 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 rule!422))))))

(assert (= (and d!525364 res!767841) b!1712623))

(declare-fun m!2116125 () Bool)

(assert (=> d!525364 m!2116125))

(declare-fun m!2116127 () Bool)

(assert (=> b!1712623 m!2116127))

(assert (=> b!1712430 d!525364))

(declare-fun d!525366 () Bool)

(declare-fun e!1095351 () Bool)

(assert (=> d!525366 e!1095351))

(declare-fun c!280566 () Bool)

(assert (=> d!525366 (= c!280566 (is-EmptyExpr!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun lt!654395 () Bool)

(declare-fun e!1095347 () Bool)

(assert (=> d!525366 (= lt!654395 e!1095347)))

(declare-fun c!280564 () Bool)

(assert (=> d!525366 (= c!280564 (isEmpty!11754 lt!654329))))

(assert (=> d!525366 (validRegex!1867 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))

(assert (=> d!525366 (= (matchR!2108 (regex!3306 (rule!5242 (_1!10612 lt!654328))) lt!654329) lt!654395)))

(declare-fun b!1712624 () Bool)

(assert (=> b!1712624 (= e!1095347 (nullable!1393 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun b!1712625 () Bool)

(declare-fun res!767847 () Bool)

(declare-fun e!1095353 () Bool)

(assert (=> b!1712625 (=> res!767847 e!1095353)))

(assert (=> b!1712625 (= res!767847 (not (is-ElementMatch!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))))

(declare-fun e!1095350 () Bool)

(assert (=> b!1712625 (= e!1095350 e!1095353)))

(declare-fun b!1712626 () Bool)

(declare-fun res!767848 () Bool)

(declare-fun e!1095348 () Bool)

(assert (=> b!1712626 (=> res!767848 e!1095348)))

(assert (=> b!1712626 (= res!767848 (not (isEmpty!11754 (tail!2556 lt!654329))))))

(declare-fun b!1712627 () Bool)

(declare-fun e!1095349 () Bool)

(assert (=> b!1712627 (= e!1095353 e!1095349)))

(declare-fun res!767842 () Bool)

(assert (=> b!1712627 (=> (not res!767842) (not e!1095349))))

(assert (=> b!1712627 (= res!767842 (not lt!654395))))

(declare-fun b!1712628 () Bool)

(declare-fun res!767844 () Bool)

(assert (=> b!1712628 (=> res!767844 e!1095353)))

(declare-fun e!1095352 () Bool)

(assert (=> b!1712628 (= res!767844 e!1095352)))

(declare-fun res!767846 () Bool)

(assert (=> b!1712628 (=> (not res!767846) (not e!1095352))))

(assert (=> b!1712628 (= res!767846 lt!654395)))

(declare-fun b!1712629 () Bool)

(declare-fun res!767849 () Bool)

(assert (=> b!1712629 (=> (not res!767849) (not e!1095352))))

(declare-fun call!109510 () Bool)

(assert (=> b!1712629 (= res!767849 (not call!109510))))

(declare-fun b!1712630 () Bool)

(assert (=> b!1712630 (= e!1095351 e!1095350)))

(declare-fun c!280565 () Bool)

(assert (=> b!1712630 (= c!280565 (is-EmptyLang!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun b!1712631 () Bool)

(assert (=> b!1712631 (= e!1095350 (not lt!654395))))

(declare-fun b!1712632 () Bool)

(declare-fun res!767843 () Bool)

(assert (=> b!1712632 (=> (not res!767843) (not e!1095352))))

(assert (=> b!1712632 (= res!767843 (isEmpty!11754 (tail!2556 lt!654329)))))

(declare-fun b!1712633 () Bool)

(assert (=> b!1712633 (= e!1095352 (= (head!3845 lt!654329) (c!280547 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))))

(declare-fun b!1712634 () Bool)

(assert (=> b!1712634 (= e!1095348 (not (= (head!3845 lt!654329) (c!280547 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))))

(declare-fun b!1712635 () Bool)

(assert (=> b!1712635 (= e!1095349 e!1095348)))

(declare-fun res!767845 () Bool)

(assert (=> b!1712635 (=> res!767845 e!1095348)))

(assert (=> b!1712635 (= res!767845 call!109510)))

(declare-fun b!1712636 () Bool)

(assert (=> b!1712636 (= e!1095351 (= lt!654395 call!109510))))

(declare-fun bm!109505 () Bool)

(assert (=> bm!109505 (= call!109510 (isEmpty!11754 lt!654329))))

(declare-fun b!1712637 () Bool)

(assert (=> b!1712637 (= e!1095347 (matchR!2108 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329)) (tail!2556 lt!654329)))))

(assert (= (and d!525366 c!280564) b!1712624))

(assert (= (and d!525366 (not c!280564)) b!1712637))

(assert (= (and d!525366 c!280566) b!1712636))

(assert (= (and d!525366 (not c!280566)) b!1712630))

(assert (= (and b!1712630 c!280565) b!1712631))

(assert (= (and b!1712630 (not c!280565)) b!1712625))

(assert (= (and b!1712625 (not res!767847)) b!1712628))

(assert (= (and b!1712628 res!767846) b!1712629))

(assert (= (and b!1712629 res!767849) b!1712632))

(assert (= (and b!1712632 res!767843) b!1712633))

(assert (= (and b!1712628 (not res!767844)) b!1712627))

(assert (= (and b!1712627 res!767842) b!1712635))

(assert (= (and b!1712635 (not res!767845)) b!1712626))

(assert (= (and b!1712626 (not res!767848)) b!1712634))

(assert (= (or b!1712636 b!1712629 b!1712635) bm!109505))

(declare-fun m!2116129 () Bool)

(assert (=> b!1712633 m!2116129))

(assert (=> b!1712634 m!2116129))

(declare-fun m!2116131 () Bool)

(assert (=> b!1712632 m!2116131))

(assert (=> b!1712632 m!2116131))

(declare-fun m!2116133 () Bool)

(assert (=> b!1712632 m!2116133))

(assert (=> b!1712626 m!2116131))

(assert (=> b!1712626 m!2116131))

(assert (=> b!1712626 m!2116133))

(assert (=> b!1712637 m!2116129))

(assert (=> b!1712637 m!2116129))

(declare-fun m!2116135 () Bool)

(assert (=> b!1712637 m!2116135))

(assert (=> b!1712637 m!2116131))

(assert (=> b!1712637 m!2116135))

(assert (=> b!1712637 m!2116131))

(declare-fun m!2116137 () Bool)

(assert (=> b!1712637 m!2116137))

(declare-fun m!2116139 () Bool)

(assert (=> bm!109505 m!2116139))

(declare-fun m!2116141 () Bool)

(assert (=> b!1712624 m!2116141))

(assert (=> d!525366 m!2116139))

(declare-fun m!2116143 () Bool)

(assert (=> d!525366 m!2116143))

(assert (=> b!1712428 d!525366))

(declare-fun d!525368 () Bool)

(declare-fun lt!654398 () Bool)

(declare-fun content!2663 (List!18780) (Set Rule!6412))

(assert (=> d!525368 (= lt!654398 (set.member rule!422 (content!2663 rules!3447)))))

(declare-fun e!1095358 () Bool)

(assert (=> d!525368 (= lt!654398 e!1095358)))

(declare-fun res!767855 () Bool)

(assert (=> d!525368 (=> (not res!767855) (not e!1095358))))

(assert (=> d!525368 (= res!767855 (is-Cons!18710 rules!3447))))

(assert (=> d!525368 (= (contains!3326 rules!3447 rule!422) lt!654398)))

(declare-fun b!1712642 () Bool)

(declare-fun e!1095359 () Bool)

(assert (=> b!1712642 (= e!1095358 e!1095359)))

(declare-fun res!767854 () Bool)

(assert (=> b!1712642 (=> res!767854 e!1095359)))

(assert (=> b!1712642 (= res!767854 (= (h!24111 rules!3447) rule!422))))

(declare-fun b!1712643 () Bool)

(assert (=> b!1712643 (= e!1095359 (contains!3326 (t!158393 rules!3447) rule!422))))

(assert (= (and d!525368 res!767855) b!1712642))

(assert (= (and b!1712642 (not res!767854)) b!1712643))

(declare-fun m!2116145 () Bool)

(assert (=> d!525368 m!2116145))

(declare-fun m!2116147 () Bool)

(assert (=> d!525368 m!2116147))

(declare-fun m!2116149 () Bool)

(assert (=> b!1712643 m!2116149))

(assert (=> b!1712422 d!525368))

(declare-fun d!525370 () Bool)

(assert (=> d!525370 (= (isEmpty!11753 rules!3447) (is-Nil!18710 rules!3447))))

(assert (=> b!1712421 d!525370))

(declare-fun b!1712654 () Bool)

(declare-fun e!1095367 () Bool)

(declare-fun inv!17 (TokenValue!3396) Bool)

(assert (=> b!1712654 (= e!1095367 (inv!17 (value!103895 token!523)))))

(declare-fun b!1712655 () Bool)

(declare-fun e!1095366 () Bool)

(declare-fun inv!16 (TokenValue!3396) Bool)

(assert (=> b!1712655 (= e!1095366 (inv!16 (value!103895 token!523)))))

(declare-fun b!1712656 () Bool)

(declare-fun res!767858 () Bool)

(declare-fun e!1095368 () Bool)

(assert (=> b!1712656 (=> res!767858 e!1095368)))

(assert (=> b!1712656 (= res!767858 (not (is-IntegerValue!10190 (value!103895 token!523))))))

(assert (=> b!1712656 (= e!1095367 e!1095368)))

(declare-fun d!525372 () Bool)

(declare-fun c!280572 () Bool)

(assert (=> d!525372 (= c!280572 (is-IntegerValue!10188 (value!103895 token!523)))))

(assert (=> d!525372 (= (inv!21 (value!103895 token!523)) e!1095366)))

(declare-fun b!1712657 () Bool)

(assert (=> b!1712657 (= e!1095366 e!1095367)))

(declare-fun c!280571 () Bool)

(assert (=> b!1712657 (= c!280571 (is-IntegerValue!10189 (value!103895 token!523)))))

(declare-fun b!1712658 () Bool)

(declare-fun inv!15 (TokenValue!3396) Bool)

(assert (=> b!1712658 (= e!1095368 (inv!15 (value!103895 token!523)))))

(assert (= (and d!525372 c!280572) b!1712655))

(assert (= (and d!525372 (not c!280572)) b!1712657))

(assert (= (and b!1712657 c!280571) b!1712654))

(assert (= (and b!1712657 (not c!280571)) b!1712656))

(assert (= (and b!1712656 (not res!767858)) b!1712658))

(declare-fun m!2116151 () Bool)

(assert (=> b!1712654 m!2116151))

(declare-fun m!2116153 () Bool)

(assert (=> b!1712655 m!2116153))

(declare-fun m!2116155 () Bool)

(assert (=> b!1712658 m!2116155))

(assert (=> b!1712420 d!525372))

(declare-fun d!525374 () Bool)

(assert (=> d!525374 (= (inv!24124 (tag!3604 (rule!5242 token!523))) (= (mod (str.len (value!103894 (tag!3604 (rule!5242 token!523)))) 2) 0))))

(assert (=> b!1712425 d!525374))

(declare-fun d!525376 () Bool)

(declare-fun res!767859 () Bool)

(declare-fun e!1095369 () Bool)

(assert (=> d!525376 (=> (not res!767859) (not e!1095369))))

(assert (=> d!525376 (= res!767859 (semiInverseModEq!1306 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 token!523)))))))

(assert (=> d!525376 (= (inv!24127 (transformation!3306 (rule!5242 token!523))) e!1095369)))

(declare-fun b!1712659 () Bool)

(assert (=> b!1712659 (= e!1095369 (equivClasses!1247 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 token!523)))))))

(assert (= (and d!525376 res!767859) b!1712659))

(declare-fun m!2116157 () Bool)

(assert (=> d!525376 m!2116157))

(declare-fun m!2116159 () Bool)

(assert (=> b!1712659 m!2116159))

(assert (=> b!1712425 d!525376))

(declare-fun d!525378 () Bool)

(declare-fun choose!10392 (Int) Bool)

(assert (=> d!525378 (= (Forall!681 lambda!68861) (choose!10392 lambda!68861))))

(declare-fun bs!401820 () Bool)

(assert (= bs!401820 d!525378))

(declare-fun m!2116161 () Bool)

(assert (=> bs!401820 m!2116161))

(assert (=> b!1712424 d!525378))

(declare-fun d!525380 () Bool)

(declare-fun e!1095372 () Bool)

(assert (=> d!525380 e!1095372))

(declare-fun res!767862 () Bool)

(assert (=> d!525380 (=> (not res!767862) (not e!1095372))))

(assert (=> d!525380 (= res!767862 (semiInverseModEq!1306 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))))))

(declare-fun Unit!32541 () Unit!32536)

(assert (=> d!525380 (= (lemmaInv!513 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) Unit!32541)))

(declare-fun b!1712662 () Bool)

(assert (=> b!1712662 (= e!1095372 (equivClasses!1247 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))))))

(assert (= (and d!525380 res!767862) b!1712662))

(declare-fun m!2116163 () Bool)

(assert (=> d!525380 m!2116163))

(declare-fun m!2116165 () Bool)

(assert (=> b!1712662 m!2116165))

(assert (=> b!1712424 d!525380))

(declare-fun d!525382 () Bool)

(assert (=> d!525382 (= (isEmpty!11754 suffix!1421) (is-Nil!18709 suffix!1421))))

(assert (=> b!1712438 d!525382))

(declare-fun d!525384 () Bool)

(declare-fun c!280575 () Bool)

(assert (=> d!525384 (= c!280575 (isEmpty!11754 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))

(declare-fun e!1095375 () Bool)

(assert (=> d!525384 (= (prefixMatch!519 (rulesRegex!664 thiss!24550 rules!3447) (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))) e!1095375)))

(declare-fun b!1712667 () Bool)

(declare-fun lostCause!503 (Regex!4634) Bool)

(assert (=> b!1712667 (= e!1095375 (not (lostCause!503 (rulesRegex!664 thiss!24550 rules!3447))))))

(declare-fun b!1712668 () Bool)

(assert (=> b!1712668 (= e!1095375 (prefixMatch!519 (derivativeStep!1161 (rulesRegex!664 thiss!24550 rules!3447) (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))) (tail!2556 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(assert (= (and d!525384 c!280575) b!1712667))

(assert (= (and d!525384 (not c!280575)) b!1712668))

(assert (=> d!525384 m!2115953))

(declare-fun m!2116167 () Bool)

(assert (=> d!525384 m!2116167))

(assert (=> b!1712667 m!2115949))

(declare-fun m!2116169 () Bool)

(assert (=> b!1712667 m!2116169))

(assert (=> b!1712668 m!2115953))

(declare-fun m!2116171 () Bool)

(assert (=> b!1712668 m!2116171))

(assert (=> b!1712668 m!2115949))

(assert (=> b!1712668 m!2116171))

(declare-fun m!2116173 () Bool)

(assert (=> b!1712668 m!2116173))

(assert (=> b!1712668 m!2115953))

(declare-fun m!2116175 () Bool)

(assert (=> b!1712668 m!2116175))

(assert (=> b!1712668 m!2116173))

(assert (=> b!1712668 m!2116175))

(declare-fun m!2116177 () Bool)

(assert (=> b!1712668 m!2116177))

(assert (=> b!1712417 d!525384))

(declare-fun d!525386 () Bool)

(declare-fun lt!654401 () Unit!32536)

(declare-fun lemma!317 (List!18780 LexerInterface!2935 List!18780) Unit!32536)

(assert (=> d!525386 (= lt!654401 (lemma!317 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68867 () Int)

(declare-datatypes ((List!18785 0))(
  ( (Nil!18715) (Cons!18715 (h!24116 Regex!4634) (t!158436 List!18785)) )
))
(declare-fun generalisedUnion!325 (List!18785) Regex!4634)

(declare-fun map!3850 (List!18780 Int) List!18785)

(assert (=> d!525386 (= (rulesRegex!664 thiss!24550 rules!3447) (generalisedUnion!325 (map!3850 rules!3447 lambda!68867)))))

(declare-fun bs!401821 () Bool)

(assert (= bs!401821 d!525386))

(declare-fun m!2116179 () Bool)

(assert (=> bs!401821 m!2116179))

(declare-fun m!2116181 () Bool)

(assert (=> bs!401821 m!2116181))

(assert (=> bs!401821 m!2116181))

(declare-fun m!2116183 () Bool)

(assert (=> bs!401821 m!2116183))

(assert (=> b!1712417 d!525386))

(declare-fun d!525388 () Bool)

(declare-fun e!1095381 () Bool)

(assert (=> d!525388 e!1095381))

(declare-fun res!767867 () Bool)

(assert (=> d!525388 (=> (not res!767867) (not e!1095381))))

(declare-fun lt!654404 () List!18779)

(declare-fun content!2664 (List!18779) (Set C!9442))

(assert (=> d!525388 (= res!767867 (= (content!2664 lt!654404) (set.union (content!2664 lt!654323) (content!2664 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(declare-fun e!1095380 () List!18779)

(assert (=> d!525388 (= lt!654404 e!1095380)))

(declare-fun c!280578 () Bool)

(assert (=> d!525388 (= c!280578 (is-Nil!18709 lt!654323))))

(assert (=> d!525388 (= (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)) lt!654404)))

(declare-fun b!1712677 () Bool)

(assert (=> b!1712677 (= e!1095380 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))

(declare-fun b!1712680 () Bool)

(assert (=> b!1712680 (= e!1095381 (or (not (= (Cons!18709 (head!3845 suffix!1421) Nil!18709) Nil!18709)) (= lt!654404 lt!654323)))))

(declare-fun b!1712678 () Bool)

(assert (=> b!1712678 (= e!1095380 (Cons!18709 (h!24110 lt!654323) (++!5131 (t!158392 lt!654323) (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))

(declare-fun b!1712679 () Bool)

(declare-fun res!767868 () Bool)

(assert (=> b!1712679 (=> (not res!767868) (not e!1095381))))

(declare-fun size!14871 (List!18779) Int)

(assert (=> b!1712679 (= res!767868 (= (size!14871 lt!654404) (+ (size!14871 lt!654323) (size!14871 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(assert (= (and d!525388 c!280578) b!1712677))

(assert (= (and d!525388 (not c!280578)) b!1712678))

(assert (= (and d!525388 res!767867) b!1712679))

(assert (= (and b!1712679 res!767868) b!1712680))

(declare-fun m!2116185 () Bool)

(assert (=> d!525388 m!2116185))

(declare-fun m!2116187 () Bool)

(assert (=> d!525388 m!2116187))

(declare-fun m!2116189 () Bool)

(assert (=> d!525388 m!2116189))

(declare-fun m!2116191 () Bool)

(assert (=> b!1712678 m!2116191))

(declare-fun m!2116193 () Bool)

(assert (=> b!1712679 m!2116193))

(declare-fun m!2116195 () Bool)

(assert (=> b!1712679 m!2116195))

(declare-fun m!2116197 () Bool)

(assert (=> b!1712679 m!2116197))

(assert (=> b!1712417 d!525388))

(declare-fun d!525392 () Bool)

(assert (=> d!525392 (= (head!3845 suffix!1421) (h!24110 suffix!1421))))

(assert (=> b!1712417 d!525392))

(declare-fun d!525394 () Bool)

(assert (=> d!525394 (= (list!7551 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) (list!7553 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))

(declare-fun bs!401822 () Bool)

(assert (= bs!401822 d!525394))

(declare-fun m!2116199 () Bool)

(assert (=> bs!401822 m!2116199))

(assert (=> b!1712416 d!525394))

(declare-fun bs!401823 () Bool)

(declare-fun d!525396 () Bool)

(assert (= bs!401823 (and d!525396 b!1712424)))

(declare-fun lambda!68870 () Int)

(assert (=> bs!401823 (= lambda!68870 lambda!68861)))

(declare-fun b!1712691 () Bool)

(declare-fun e!1095388 () Bool)

(assert (=> b!1712691 (= e!1095388 true)))

(assert (=> d!525396 e!1095388))

(assert (= d!525396 b!1712691))

(assert (=> b!1712691 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (dynLambda!8503 order!11267 lambda!68870))))

(assert (=> b!1712691 (< (dynLambda!8504 order!11269 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (dynLambda!8503 order!11267 lambda!68870))))

(assert (=> d!525396 (= (list!7551 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) (list!7551 lt!654332))))

(declare-fun lt!654407 () Unit!32536)

(declare-fun ForallOf!249 (Int BalanceConc!12388) Unit!32536)

(assert (=> d!525396 (= lt!654407 (ForallOf!249 lambda!68870 lt!654332))))

(assert (=> d!525396 (= (lemmaSemiInverse!452 (transformation!3306 (rule!5242 (_1!10612 lt!654328))) lt!654332) lt!654407)))

(declare-fun b_lambda!54037 () Bool)

(assert (=> (not b_lambda!54037) (not d!525396)))

(assert (=> d!525396 t!158374))

(declare-fun b_and!124077 () Bool)

(assert (= b_and!124041 (and (=> t!158374 result!121418) b_and!124077)))

(assert (=> d!525396 t!158376))

(declare-fun b_and!124079 () Bool)

(assert (= b_and!124043 (and (=> t!158376 result!121422) b_and!124079)))

(assert (=> d!525396 t!158378))

(declare-fun b_and!124081 () Bool)

(assert (= b_and!124045 (and (=> t!158378 result!121424) b_and!124081)))

(declare-fun b_lambda!54039 () Bool)

(assert (=> (not b_lambda!54039) (not d!525396)))

(assert (=> d!525396 t!158380))

(declare-fun b_and!124083 () Bool)

(assert (= b_and!124035 (and (=> t!158380 result!121426) b_and!124083)))

(assert (=> d!525396 t!158382))

(declare-fun b_and!124085 () Bool)

(assert (= b_and!124037 (and (=> t!158382 result!121430) b_and!124085)))

(assert (=> d!525396 t!158384))

(declare-fun b_and!124087 () Bool)

(assert (= b_and!124039 (and (=> t!158384 result!121432) b_and!124087)))

(assert (=> d!525396 m!2115883))

(assert (=> d!525396 m!2115885))

(assert (=> d!525396 m!2115881))

(assert (=> d!525396 m!2115897))

(assert (=> d!525396 m!2115881))

(assert (=> d!525396 m!2115883))

(declare-fun m!2116201 () Bool)

(assert (=> d!525396 m!2116201))

(assert (=> b!1712416 d!525396))

(declare-fun d!525398 () Bool)

(assert (=> d!525398 (= (get!5507 lt!654333) (v!25026 lt!654333))))

(assert (=> b!1712437 d!525398))

(declare-fun d!525402 () Bool)

(assert (=> d!525402 (= (inv!24124 (tag!3604 (h!24111 rules!3447))) (= (mod (str.len (value!103894 (tag!3604 (h!24111 rules!3447)))) 2) 0))))

(assert (=> b!1712415 d!525402))

(declare-fun d!525404 () Bool)

(declare-fun res!767872 () Bool)

(declare-fun e!1095391 () Bool)

(assert (=> d!525404 (=> (not res!767872) (not e!1095391))))

(assert (=> d!525404 (= res!767872 (semiInverseModEq!1306 (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (h!24111 rules!3447)))))))

(assert (=> d!525404 (= (inv!24127 (transformation!3306 (h!24111 rules!3447))) e!1095391)))

(declare-fun b!1712695 () Bool)

(assert (=> b!1712695 (= e!1095391 (equivClasses!1247 (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (h!24111 rules!3447)))))))

(assert (= (and d!525404 res!767872) b!1712695))

(declare-fun m!2116207 () Bool)

(assert (=> d!525404 m!2116207))

(declare-fun m!2116209 () Bool)

(assert (=> b!1712695 m!2116209))

(assert (=> b!1712415 d!525404))

(declare-fun b!1712696 () Bool)

(declare-fun e!1095393 () Bool)

(assert (=> b!1712696 (= e!1095393 (inv!17 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))

(declare-fun b!1712697 () Bool)

(declare-fun e!1095392 () Bool)

(assert (=> b!1712697 (= e!1095392 (inv!16 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))

(declare-fun b!1712698 () Bool)

(declare-fun res!767873 () Bool)

(declare-fun e!1095394 () Bool)

(assert (=> b!1712698 (=> res!767873 e!1095394)))

(assert (=> b!1712698 (= res!767873 (not (is-IntegerValue!10190 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))

(assert (=> b!1712698 (= e!1095393 e!1095394)))

(declare-fun d!525406 () Bool)

(declare-fun c!280584 () Bool)

(assert (=> d!525406 (= c!280584 (is-IntegerValue!10188 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))

(assert (=> d!525406 (= (inv!21 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)) e!1095392)))

(declare-fun b!1712699 () Bool)

(assert (=> b!1712699 (= e!1095392 e!1095393)))

(declare-fun c!280583 () Bool)

(assert (=> b!1712699 (= c!280583 (is-IntegerValue!10189 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))

(declare-fun b!1712700 () Bool)

(assert (=> b!1712700 (= e!1095394 (inv!15 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))

(assert (= (and d!525406 c!280584) b!1712697))

(assert (= (and d!525406 (not c!280584)) b!1712699))

(assert (= (and b!1712699 c!280583) b!1712696))

(assert (= (and b!1712699 (not c!280583)) b!1712698))

(assert (= (and b!1712698 (not res!767873)) b!1712700))

(declare-fun m!2116211 () Bool)

(assert (=> b!1712696 m!2116211))

(declare-fun m!2116213 () Bool)

(assert (=> b!1712697 m!2116213))

(declare-fun m!2116215 () Bool)

(assert (=> b!1712700 m!2116215))

(assert (=> tb!101041 d!525406))

(declare-fun b!1712731 () Bool)

(declare-fun res!767897 () Bool)

(declare-fun e!1095412 () Bool)

(assert (=> b!1712731 (=> (not res!767897) (not e!1095412))))

(declare-fun lt!654419 () Option!3636)

(assert (=> b!1712731 (= res!767897 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))) (_2!10612 (get!5507 lt!654419))) lt!654334))))

(declare-fun b!1712732 () Bool)

(declare-fun res!767896 () Bool)

(assert (=> b!1712732 (=> (not res!767896) (not e!1095412))))

(assert (=> b!1712732 (= res!767896 (< (size!14871 (_2!10612 (get!5507 lt!654419))) (size!14871 lt!654334)))))

(declare-fun b!1712733 () Bool)

(assert (=> b!1712733 (= e!1095412 (contains!3326 rules!3447 (rule!5242 (_1!10612 (get!5507 lt!654419)))))))

(declare-fun d!525408 () Bool)

(declare-fun e!1095410 () Bool)

(assert (=> d!525408 e!1095410))

(declare-fun res!767895 () Bool)

(assert (=> d!525408 (=> res!767895 e!1095410)))

(declare-fun isEmpty!11757 (Option!3636) Bool)

(assert (=> d!525408 (= res!767895 (isEmpty!11757 lt!654419))))

(declare-fun e!1095411 () Option!3636)

(assert (=> d!525408 (= lt!654419 e!1095411)))

(declare-fun c!280590 () Bool)

(assert (=> d!525408 (= c!280590 (and (is-Cons!18710 rules!3447) (is-Nil!18710 (t!158393 rules!3447))))))

(declare-fun lt!654418 () Unit!32536)

(declare-fun lt!654421 () Unit!32536)

(assert (=> d!525408 (= lt!654418 lt!654421)))

(assert (=> d!525408 (isPrefix!1547 lt!654334 lt!654334)))

(declare-fun lemmaIsPrefixRefl!1056 (List!18779 List!18779) Unit!32536)

(assert (=> d!525408 (= lt!654421 (lemmaIsPrefixRefl!1056 lt!654334 lt!654334))))

(declare-fun rulesValidInductive!1091 (LexerInterface!2935 List!18780) Bool)

(assert (=> d!525408 (rulesValidInductive!1091 thiss!24550 rules!3447)))

(assert (=> d!525408 (= (maxPrefix!1489 thiss!24550 rules!3447 lt!654334) lt!654419)))

(declare-fun b!1712734 () Bool)

(declare-fun call!109513 () Option!3636)

(assert (=> b!1712734 (= e!1095411 call!109513)))

(declare-fun b!1712735 () Bool)

(declare-fun res!767899 () Bool)

(assert (=> b!1712735 (=> (not res!767899) (not e!1095412))))

(assert (=> b!1712735 (= res!767899 (matchR!2108 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))))))

(declare-fun b!1712736 () Bool)

(declare-fun lt!654422 () Option!3636)

(declare-fun lt!654420 () Option!3636)

(assert (=> b!1712736 (= e!1095411 (ite (and (is-None!3635 lt!654422) (is-None!3635 lt!654420)) None!3635 (ite (is-None!3635 lt!654420) lt!654422 (ite (is-None!3635 lt!654422) lt!654420 (ite (>= (size!14869 (_1!10612 (v!25026 lt!654422))) (size!14869 (_1!10612 (v!25026 lt!654420)))) lt!654422 lt!654420)))))))

(assert (=> b!1712736 (= lt!654422 call!109513)))

(assert (=> b!1712736 (= lt!654420 (maxPrefix!1489 thiss!24550 (t!158393 rules!3447) lt!654334))))

(declare-fun b!1712737 () Bool)

(declare-fun res!767900 () Bool)

(assert (=> b!1712737 (=> (not res!767900) (not e!1095412))))

(declare-fun apply!5115 (TokenValueInjection!6452 BalanceConc!12388) TokenValue!3396)

(assert (=> b!1712737 (= res!767900 (= (value!103895 (_1!10612 (get!5507 lt!654419))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654419)))))))))

(declare-fun b!1712738 () Bool)

(assert (=> b!1712738 (= e!1095410 e!1095412)))

(declare-fun res!767898 () Bool)

(assert (=> b!1712738 (=> (not res!767898) (not e!1095412))))

(assert (=> b!1712738 (= res!767898 (isDefined!2979 lt!654419))))

(declare-fun b!1712739 () Bool)

(declare-fun res!767894 () Bool)

(assert (=> b!1712739 (=> (not res!767894) (not e!1095412))))

(assert (=> b!1712739 (= res!767894 (= (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))) (originalCharacters!4120 (_1!10612 (get!5507 lt!654419)))))))

(declare-fun bm!109508 () Bool)

(declare-fun maxPrefixOneRule!871 (LexerInterface!2935 Rule!6412 List!18779) Option!3636)

(assert (=> bm!109508 (= call!109513 (maxPrefixOneRule!871 thiss!24550 (h!24111 rules!3447) lt!654334))))

(assert (= (and d!525408 c!280590) b!1712734))

(assert (= (and d!525408 (not c!280590)) b!1712736))

(assert (= (or b!1712734 b!1712736) bm!109508))

(assert (= (and d!525408 (not res!767895)) b!1712738))

(assert (= (and b!1712738 res!767898) b!1712739))

(assert (= (and b!1712739 res!767894) b!1712732))

(assert (= (and b!1712732 res!767896) b!1712731))

(assert (= (and b!1712731 res!767897) b!1712737))

(assert (= (and b!1712737 res!767900) b!1712735))

(assert (= (and b!1712735 res!767899) b!1712733))

(declare-fun m!2116243 () Bool)

(assert (=> b!1712738 m!2116243))

(declare-fun m!2116245 () Bool)

(assert (=> b!1712735 m!2116245))

(declare-fun m!2116247 () Bool)

(assert (=> b!1712735 m!2116247))

(assert (=> b!1712735 m!2116247))

(declare-fun m!2116249 () Bool)

(assert (=> b!1712735 m!2116249))

(assert (=> b!1712735 m!2116249))

(declare-fun m!2116251 () Bool)

(assert (=> b!1712735 m!2116251))

(declare-fun m!2116253 () Bool)

(assert (=> d!525408 m!2116253))

(declare-fun m!2116255 () Bool)

(assert (=> d!525408 m!2116255))

(declare-fun m!2116257 () Bool)

(assert (=> d!525408 m!2116257))

(declare-fun m!2116259 () Bool)

(assert (=> d!525408 m!2116259))

(declare-fun m!2116261 () Bool)

(assert (=> b!1712736 m!2116261))

(assert (=> b!1712732 m!2116245))

(declare-fun m!2116263 () Bool)

(assert (=> b!1712732 m!2116263))

(declare-fun m!2116265 () Bool)

(assert (=> b!1712732 m!2116265))

(assert (=> b!1712737 m!2116245))

(declare-fun m!2116267 () Bool)

(assert (=> b!1712737 m!2116267))

(assert (=> b!1712737 m!2116267))

(declare-fun m!2116269 () Bool)

(assert (=> b!1712737 m!2116269))

(assert (=> b!1712733 m!2116245))

(declare-fun m!2116271 () Bool)

(assert (=> b!1712733 m!2116271))

(declare-fun m!2116273 () Bool)

(assert (=> bm!109508 m!2116273))

(assert (=> b!1712731 m!2116245))

(assert (=> b!1712731 m!2116247))

(assert (=> b!1712731 m!2116247))

(assert (=> b!1712731 m!2116249))

(assert (=> b!1712731 m!2116249))

(declare-fun m!2116275 () Bool)

(assert (=> b!1712731 m!2116275))

(assert (=> b!1712739 m!2116245))

(assert (=> b!1712739 m!2116247))

(assert (=> b!1712739 m!2116247))

(assert (=> b!1712739 m!2116249))

(assert (=> b!1712419 d!525408))

(declare-fun d!525424 () Bool)

(assert (=> d!525424 (isPrefix!1547 lt!654323 (++!5131 lt!654323 suffix!1421))))

(declare-fun lt!654425 () Unit!32536)

(declare-fun choose!10393 (List!18779 List!18779) Unit!32536)

(assert (=> d!525424 (= lt!654425 (choose!10393 lt!654323 suffix!1421))))

(assert (=> d!525424 (= (lemmaConcatTwoListThenFirstIsPrefix!1057 lt!654323 suffix!1421) lt!654425)))

(declare-fun bs!401827 () Bool)

(assert (= bs!401827 d!525424))

(assert (=> bs!401827 m!2115911))

(assert (=> bs!401827 m!2115911))

(declare-fun m!2116277 () Bool)

(assert (=> bs!401827 m!2116277))

(declare-fun m!2116279 () Bool)

(assert (=> bs!401827 m!2116279))

(assert (=> b!1712419 d!525424))

(declare-fun d!525426 () Bool)

(assert (=> d!525426 (= (get!5507 lt!654322) (v!25026 lt!654322))))

(assert (=> b!1712419 d!525426))

(declare-fun d!525428 () Bool)

(assert (=> d!525428 (isPrefix!1547 lt!654329 (++!5131 lt!654329 (_2!10612 lt!654328)))))

(declare-fun lt!654426 () Unit!32536)

(assert (=> d!525428 (= lt!654426 (choose!10393 lt!654329 (_2!10612 lt!654328)))))

(assert (=> d!525428 (= (lemmaConcatTwoListThenFirstIsPrefix!1057 lt!654329 (_2!10612 lt!654328)) lt!654426)))

(declare-fun bs!401828 () Bool)

(assert (= bs!401828 d!525428))

(assert (=> bs!401828 m!2115893))

(assert (=> bs!401828 m!2115893))

(assert (=> bs!401828 m!2115895))

(declare-fun m!2116281 () Bool)

(assert (=> bs!401828 m!2116281))

(assert (=> b!1712419 d!525428))

(declare-fun d!525430 () Bool)

(declare-fun e!1095414 () Bool)

(assert (=> d!525430 e!1095414))

(declare-fun res!767901 () Bool)

(assert (=> d!525430 (=> (not res!767901) (not e!1095414))))

(declare-fun lt!654427 () List!18779)

(assert (=> d!525430 (= res!767901 (= (content!2664 lt!654427) (set.union (content!2664 lt!654329) (content!2664 (_2!10612 lt!654328)))))))

(declare-fun e!1095413 () List!18779)

(assert (=> d!525430 (= lt!654427 e!1095413)))

(declare-fun c!280591 () Bool)

(assert (=> d!525430 (= c!280591 (is-Nil!18709 lt!654329))))

(assert (=> d!525430 (= (++!5131 lt!654329 (_2!10612 lt!654328)) lt!654427)))

(declare-fun b!1712740 () Bool)

(assert (=> b!1712740 (= e!1095413 (_2!10612 lt!654328))))

(declare-fun b!1712743 () Bool)

(assert (=> b!1712743 (= e!1095414 (or (not (= (_2!10612 lt!654328) Nil!18709)) (= lt!654427 lt!654329)))))

(declare-fun b!1712741 () Bool)

(assert (=> b!1712741 (= e!1095413 (Cons!18709 (h!24110 lt!654329) (++!5131 (t!158392 lt!654329) (_2!10612 lt!654328))))))

(declare-fun b!1712742 () Bool)

(declare-fun res!767902 () Bool)

(assert (=> b!1712742 (=> (not res!767902) (not e!1095414))))

(assert (=> b!1712742 (= res!767902 (= (size!14871 lt!654427) (+ (size!14871 lt!654329) (size!14871 (_2!10612 lt!654328)))))))

(assert (= (and d!525430 c!280591) b!1712740))

(assert (= (and d!525430 (not c!280591)) b!1712741))

(assert (= (and d!525430 res!767901) b!1712742))

(assert (= (and b!1712742 res!767902) b!1712743))

(declare-fun m!2116283 () Bool)

(assert (=> d!525430 m!2116283))

(declare-fun m!2116285 () Bool)

(assert (=> d!525430 m!2116285))

(declare-fun m!2116287 () Bool)

(assert (=> d!525430 m!2116287))

(declare-fun m!2116289 () Bool)

(assert (=> b!1712741 m!2116289))

(declare-fun m!2116291 () Bool)

(assert (=> b!1712742 m!2116291))

(declare-fun m!2116293 () Bool)

(assert (=> b!1712742 m!2116293))

(declare-fun m!2116295 () Bool)

(assert (=> b!1712742 m!2116295))

(assert (=> b!1712419 d!525430))

(declare-fun d!525432 () Bool)

(declare-fun e!1095421 () Bool)

(assert (=> d!525432 e!1095421))

(declare-fun res!767911 () Bool)

(assert (=> d!525432 (=> (not res!767911) (not e!1095421))))

(assert (=> d!525432 (= res!767911 (isDefined!2980 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))

(declare-fun lt!654435 () Unit!32536)

(declare-fun choose!10394 (LexerInterface!2935 List!18780 List!18779 Token!6178) Unit!32536)

(assert (=> d!525432 (= lt!654435 (choose!10394 thiss!24550 rules!3447 lt!654334 (_1!10612 lt!654328)))))

(assert (=> d!525432 (rulesInvariant!2604 thiss!24550 rules!3447)))

(assert (=> d!525432 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!356 thiss!24550 rules!3447 lt!654334 (_1!10612 lt!654328)) lt!654435)))

(declare-fun b!1712756 () Bool)

(declare-fun res!767912 () Bool)

(assert (=> b!1712756 (=> (not res!767912) (not e!1095421))))

(assert (=> b!1712756 (= res!767912 (matchR!2108 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))) (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(declare-fun b!1712757 () Bool)

(assert (=> b!1712757 (= e!1095421 (= (rule!5242 (_1!10612 lt!654328)) (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))

(assert (= (and d!525432 res!767911) b!1712756))

(assert (= (and b!1712756 res!767912) b!1712757))

(assert (=> d!525432 m!2115905))

(assert (=> d!525432 m!2115905))

(declare-fun m!2116303 () Bool)

(assert (=> d!525432 m!2116303))

(declare-fun m!2116305 () Bool)

(assert (=> d!525432 m!2116305))

(assert (=> d!525432 m!2115957))

(assert (=> b!1712756 m!2115913))

(assert (=> b!1712756 m!2115905))

(assert (=> b!1712756 m!2115905))

(declare-fun m!2116307 () Bool)

(assert (=> b!1712756 m!2116307))

(assert (=> b!1712756 m!2115939))

(declare-fun m!2116309 () Bool)

(assert (=> b!1712756 m!2116309))

(assert (=> b!1712756 m!2115913))

(assert (=> b!1712756 m!2115939))

(assert (=> b!1712757 m!2115905))

(assert (=> b!1712757 m!2115905))

(assert (=> b!1712757 m!2116307))

(assert (=> b!1712419 d!525432))

(declare-fun b!1712772 () Bool)

(declare-fun e!1095431 () Bool)

(assert (=> b!1712772 (= e!1095431 (isPrefix!1547 (tail!2556 lt!654329) (tail!2556 (++!5131 lt!654329 (_2!10612 lt!654328)))))))

(declare-fun d!525436 () Bool)

(declare-fun e!1095432 () Bool)

(assert (=> d!525436 e!1095432))

(declare-fun res!767926 () Bool)

(assert (=> d!525436 (=> res!767926 e!1095432)))

(declare-fun lt!654439 () Bool)

(assert (=> d!525436 (= res!767926 (not lt!654439))))

(declare-fun e!1095430 () Bool)

(assert (=> d!525436 (= lt!654439 e!1095430)))

(declare-fun res!767925 () Bool)

(assert (=> d!525436 (=> res!767925 e!1095430)))

(assert (=> d!525436 (= res!767925 (is-Nil!18709 lt!654329))))

(assert (=> d!525436 (= (isPrefix!1547 lt!654329 (++!5131 lt!654329 (_2!10612 lt!654328))) lt!654439)))

(declare-fun b!1712773 () Bool)

(assert (=> b!1712773 (= e!1095432 (>= (size!14871 (++!5131 lt!654329 (_2!10612 lt!654328))) (size!14871 lt!654329)))))

(declare-fun b!1712770 () Bool)

(assert (=> b!1712770 (= e!1095430 e!1095431)))

(declare-fun res!767923 () Bool)

(assert (=> b!1712770 (=> (not res!767923) (not e!1095431))))

(assert (=> b!1712770 (= res!767923 (not (is-Nil!18709 (++!5131 lt!654329 (_2!10612 lt!654328)))))))

(declare-fun b!1712771 () Bool)

(declare-fun res!767924 () Bool)

(assert (=> b!1712771 (=> (not res!767924) (not e!1095431))))

(assert (=> b!1712771 (= res!767924 (= (head!3845 lt!654329) (head!3845 (++!5131 lt!654329 (_2!10612 lt!654328)))))))

(assert (= (and d!525436 (not res!767925)) b!1712770))

(assert (= (and b!1712770 res!767923) b!1712771))

(assert (= (and b!1712771 res!767924) b!1712772))

(assert (= (and d!525436 (not res!767926)) b!1712773))

(assert (=> b!1712772 m!2116131))

(assert (=> b!1712772 m!2115893))

(declare-fun m!2116325 () Bool)

(assert (=> b!1712772 m!2116325))

(assert (=> b!1712772 m!2116131))

(assert (=> b!1712772 m!2116325))

(declare-fun m!2116327 () Bool)

(assert (=> b!1712772 m!2116327))

(assert (=> b!1712773 m!2115893))

(declare-fun m!2116329 () Bool)

(assert (=> b!1712773 m!2116329))

(assert (=> b!1712773 m!2116293))

(assert (=> b!1712771 m!2116129))

(assert (=> b!1712771 m!2115893))

(declare-fun m!2116331 () Bool)

(assert (=> b!1712771 m!2116331))

(assert (=> b!1712419 d!525436))

(declare-fun d!525442 () Bool)

(declare-fun lt!654442 () BalanceConc!12388)

(assert (=> d!525442 (= (list!7551 lt!654442) (originalCharacters!4120 (_1!10612 lt!654328)))))

(assert (=> d!525442 (= lt!654442 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))

(assert (=> d!525442 (= (charsOf!1955 (_1!10612 lt!654328)) lt!654442)))

(declare-fun b_lambda!54041 () Bool)

(assert (=> (not b_lambda!54041) (not d!525442)))

(assert (=> d!525442 t!158386))

(declare-fun b_and!124089 () Bool)

(assert (= b_and!124077 (and (=> t!158386 result!121434) b_and!124089)))

(assert (=> d!525442 t!158388))

(declare-fun b_and!124091 () Bool)

(assert (= b_and!124079 (and (=> t!158388 result!121436) b_and!124091)))

(assert (=> d!525442 t!158390))

(declare-fun b_and!124093 () Bool)

(assert (= b_and!124081 (and (=> t!158390 result!121438) b_and!124093)))

(declare-fun m!2116333 () Bool)

(assert (=> d!525442 m!2116333))

(assert (=> d!525442 m!2115919))

(assert (=> b!1712419 d!525442))

(declare-fun b!1712784 () Bool)

(declare-fun e!1095437 () Bool)

(assert (=> b!1712784 (= e!1095437 (isPrefix!1547 (tail!2556 lt!654323) (tail!2556 lt!654334)))))

(declare-fun d!525444 () Bool)

(declare-fun e!1095439 () Bool)

(assert (=> d!525444 e!1095439))

(declare-fun res!767930 () Bool)

(assert (=> d!525444 (=> res!767930 e!1095439)))

(declare-fun lt!654443 () Bool)

(assert (=> d!525444 (= res!767930 (not lt!654443))))

(declare-fun e!1095435 () Bool)

(assert (=> d!525444 (= lt!654443 e!1095435)))

(declare-fun res!767929 () Bool)

(assert (=> d!525444 (=> res!767929 e!1095435)))

(assert (=> d!525444 (= res!767929 (is-Nil!18709 lt!654323))))

(assert (=> d!525444 (= (isPrefix!1547 lt!654323 lt!654334) lt!654443)))

(declare-fun b!1712785 () Bool)

(assert (=> b!1712785 (= e!1095439 (>= (size!14871 lt!654334) (size!14871 lt!654323)))))

(declare-fun b!1712782 () Bool)

(assert (=> b!1712782 (= e!1095435 e!1095437)))

(declare-fun res!767927 () Bool)

(assert (=> b!1712782 (=> (not res!767927) (not e!1095437))))

(assert (=> b!1712782 (= res!767927 (not (is-Nil!18709 lt!654334)))))

(declare-fun b!1712783 () Bool)

(declare-fun res!767928 () Bool)

(assert (=> b!1712783 (=> (not res!767928) (not e!1095437))))

(assert (=> b!1712783 (= res!767928 (= (head!3845 lt!654323) (head!3845 lt!654334)))))

(assert (= (and d!525444 (not res!767929)) b!1712782))

(assert (= (and b!1712782 res!767927) b!1712783))

(assert (= (and b!1712783 res!767928) b!1712784))

(assert (= (and d!525444 (not res!767930)) b!1712785))

(assert (=> b!1712784 m!2116099))

(declare-fun m!2116335 () Bool)

(assert (=> b!1712784 m!2116335))

(assert (=> b!1712784 m!2116099))

(assert (=> b!1712784 m!2116335))

(declare-fun m!2116337 () Bool)

(assert (=> b!1712784 m!2116337))

(assert (=> b!1712785 m!2116265))

(assert (=> b!1712785 m!2116195))

(assert (=> b!1712783 m!2116097))

(declare-fun m!2116339 () Bool)

(assert (=> b!1712783 m!2116339))

(assert (=> b!1712419 d!525444))

(declare-fun d!525446 () Bool)

(declare-fun isEmpty!11758 (Option!3637) Bool)

(assert (=> d!525446 (= (isDefined!2980 lt!654327) (not (isEmpty!11758 lt!654327)))))

(declare-fun bs!401830 () Bool)

(assert (= bs!401830 d!525446))

(declare-fun m!2116341 () Bool)

(assert (=> bs!401830 m!2116341))

(assert (=> b!1712419 d!525446))

(declare-fun b!1712930 () Bool)

(declare-fun e!1095518 () Unit!32536)

(declare-fun Unit!32542 () Unit!32536)

(assert (=> b!1712930 (= e!1095518 Unit!32542)))

(declare-fun lt!654535 () List!18779)

(assert (=> b!1712930 (= lt!654535 (++!5131 lt!654323 suffix!1421))))

(declare-fun lt!654520 () Token!6178)

(declare-fun lt!654522 () Unit!32536)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!250 (LexerInterface!2935 Rule!6412 List!18780 List!18779) Unit!32536)

(assert (=> b!1712930 (= lt!654522 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!250 thiss!24550 (rule!5242 lt!654520) rules!3447 lt!654535))))

(assert (=> b!1712930 (isEmpty!11757 (maxPrefixOneRule!871 thiss!24550 (rule!5242 lt!654520) lt!654535))))

(declare-fun lt!654532 () Unit!32536)

(assert (=> b!1712930 (= lt!654532 lt!654522)))

(declare-fun lt!654528 () List!18779)

(assert (=> b!1712930 (= lt!654528 (list!7551 (charsOf!1955 lt!654520)))))

(declare-fun lt!654524 () Unit!32536)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!246 (LexerInterface!2935 Rule!6412 List!18779 List!18779) Unit!32536)

(assert (=> b!1712930 (= lt!654524 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!246 thiss!24550 (rule!5242 lt!654520) lt!654528 (++!5131 lt!654323 suffix!1421)))))

(assert (=> b!1712930 (not (matchR!2108 (regex!3306 (rule!5242 lt!654520)) lt!654528))))

(declare-fun lt!654529 () Unit!32536)

(assert (=> b!1712930 (= lt!654529 lt!654524)))

(assert (=> b!1712930 false))

(declare-fun e!1095519 () Bool)

(declare-fun b!1712929 () Bool)

(assert (=> b!1712929 (= e!1095519 (= (rule!5242 lt!654520) (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))))))

(declare-fun b!1712931 () Bool)

(declare-fun Unit!32543 () Unit!32536)

(assert (=> b!1712931 (= e!1095518 Unit!32543)))

(declare-fun d!525448 () Bool)

(assert (=> d!525448 (isDefined!2979 (maxPrefix!1489 thiss!24550 rules!3447 (++!5131 lt!654323 suffix!1421)))))

(declare-fun lt!654523 () Unit!32536)

(assert (=> d!525448 (= lt!654523 e!1095518)))

(declare-fun c!280623 () Bool)

(assert (=> d!525448 (= c!280623 (isEmpty!11757 (maxPrefix!1489 thiss!24550 rules!3447 (++!5131 lt!654323 suffix!1421))))))

(declare-fun lt!654536 () Unit!32536)

(declare-fun lt!654531 () Unit!32536)

(assert (=> d!525448 (= lt!654536 lt!654531)))

(assert (=> d!525448 e!1095519))

(declare-fun res!768024 () Bool)

(assert (=> d!525448 (=> (not res!768024) (not e!1095519))))

(assert (=> d!525448 (= res!768024 (isDefined!2980 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))))))

(assert (=> d!525448 (= lt!654531 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!356 thiss!24550 rules!3447 lt!654323 lt!654520))))

(declare-fun lt!654533 () Unit!32536)

(declare-fun lt!654526 () Unit!32536)

(assert (=> d!525448 (= lt!654533 lt!654526)))

(declare-fun lt!654527 () List!18779)

(assert (=> d!525448 (isPrefix!1547 lt!654527 (++!5131 lt!654323 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!242 (List!18779 List!18779 List!18779) Unit!32536)

(assert (=> d!525448 (= lt!654526 (lemmaPrefixStaysPrefixWhenAddingToSuffix!242 lt!654527 lt!654323 suffix!1421))))

(assert (=> d!525448 (= lt!654527 (list!7551 (charsOf!1955 lt!654520)))))

(declare-fun lt!654521 () Unit!32536)

(declare-fun lt!654525 () Unit!32536)

(assert (=> d!525448 (= lt!654521 lt!654525)))

(declare-fun lt!654534 () List!18779)

(declare-fun lt!654530 () List!18779)

(assert (=> d!525448 (isPrefix!1547 lt!654534 (++!5131 lt!654534 lt!654530))))

(assert (=> d!525448 (= lt!654525 (lemmaConcatTwoListThenFirstIsPrefix!1057 lt!654534 lt!654530))))

(assert (=> d!525448 (= lt!654530 (_2!10612 (get!5507 (maxPrefix!1489 thiss!24550 rules!3447 lt!654323))))))

(assert (=> d!525448 (= lt!654534 (list!7551 (charsOf!1955 lt!654520)))))

(declare-datatypes ((List!18786 0))(
  ( (Nil!18716) (Cons!18716 (h!24117 Token!6178) (t!158445 List!18786)) )
))
(declare-fun head!3847 (List!18786) Token!6178)

(declare-datatypes ((IArray!12453 0))(
  ( (IArray!12454 (innerList!6284 List!18786)) )
))
(declare-datatypes ((Conc!6224 0))(
  ( (Node!6224 (left!14915 Conc!6224) (right!15245 Conc!6224) (csize!12678 Int) (cheight!6435 Int)) (Leaf!9098 (xs!9100 IArray!12453) (csize!12679 Int)) (Empty!6224) )
))
(declare-datatypes ((BalanceConc!12392 0))(
  ( (BalanceConc!12393 (c!280650 Conc!6224)) )
))
(declare-fun list!7554 (BalanceConc!12392) List!18786)

(declare-datatypes ((tuple2!18424 0))(
  ( (tuple2!18425 (_1!10614 BalanceConc!12392) (_2!10614 BalanceConc!12388)) )
))
(declare-fun lex!1381 (LexerInterface!2935 List!18780 BalanceConc!12388) tuple2!18424)

(assert (=> d!525448 (= lt!654520 (head!3847 (list!7554 (_1!10614 (lex!1381 thiss!24550 rules!3447 (seqFromList!2280 lt!654323))))))))

(assert (=> d!525448 (not (isEmpty!11753 rules!3447))))

(assert (=> d!525448 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!459 thiss!24550 rules!3447 lt!654323 suffix!1421) lt!654523)))

(declare-fun b!1712928 () Bool)

(declare-fun res!768025 () Bool)

(assert (=> b!1712928 (=> (not res!768025) (not e!1095519))))

(assert (=> b!1712928 (= res!768025 (matchR!2108 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))) (list!7551 (charsOf!1955 lt!654520))))))

(assert (= (and d!525448 res!768024) b!1712928))

(assert (= (and b!1712928 res!768025) b!1712929))

(assert (= (and d!525448 c!280623) b!1712930))

(assert (= (and d!525448 (not c!280623)) b!1712931))

(assert (=> b!1712930 m!2115911))

(declare-fun m!2116473 () Bool)

(assert (=> b!1712930 m!2116473))

(declare-fun m!2116479 () Bool)

(assert (=> b!1712930 m!2116479))

(declare-fun m!2116481 () Bool)

(assert (=> b!1712930 m!2116481))

(declare-fun m!2116483 () Bool)

(assert (=> b!1712930 m!2116483))

(declare-fun m!2116485 () Bool)

(assert (=> b!1712930 m!2116485))

(declare-fun m!2116487 () Bool)

(assert (=> b!1712930 m!2116487))

(declare-fun m!2116489 () Bool)

(assert (=> b!1712930 m!2116489))

(assert (=> b!1712930 m!2116479))

(assert (=> b!1712930 m!2115911))

(assert (=> b!1712930 m!2116487))

(declare-fun m!2116491 () Bool)

(assert (=> b!1712929 m!2116491))

(assert (=> b!1712929 m!2116491))

(declare-fun m!2116493 () Bool)

(assert (=> b!1712929 m!2116493))

(assert (=> d!525448 m!2115925))

(declare-fun m!2116495 () Bool)

(assert (=> d!525448 m!2116495))

(declare-fun m!2116497 () Bool)

(assert (=> d!525448 m!2116497))

(declare-fun m!2116499 () Bool)

(assert (=> d!525448 m!2116499))

(declare-fun m!2116501 () Bool)

(assert (=> d!525448 m!2116501))

(declare-fun m!2116503 () Bool)

(assert (=> d!525448 m!2116503))

(assert (=> d!525448 m!2116487))

(assert (=> d!525448 m!2116489))

(assert (=> d!525448 m!2116497))

(assert (=> d!525448 m!2115911))

(assert (=> d!525448 m!2115911))

(declare-fun m!2116505 () Bool)

(assert (=> d!525448 m!2116505))

(assert (=> d!525448 m!2116491))

(declare-fun m!2116509 () Bool)

(assert (=> d!525448 m!2116509))

(assert (=> d!525448 m!2116501))

(assert (=> d!525448 m!2116487))

(declare-fun m!2116513 () Bool)

(assert (=> d!525448 m!2116513))

(assert (=> d!525448 m!2115967))

(declare-fun m!2116517 () Bool)

(assert (=> d!525448 m!2116517))

(assert (=> d!525448 m!2116513))

(declare-fun m!2116521 () Bool)

(assert (=> d!525448 m!2116521))

(assert (=> d!525448 m!2116491))

(declare-fun m!2116523 () Bool)

(assert (=> d!525448 m!2116523))

(assert (=> d!525448 m!2116505))

(declare-fun m!2116525 () Bool)

(assert (=> d!525448 m!2116525))

(assert (=> d!525448 m!2116505))

(declare-fun m!2116527 () Bool)

(assert (=> d!525448 m!2116527))

(assert (=> d!525448 m!2115911))

(declare-fun m!2116529 () Bool)

(assert (=> d!525448 m!2116529))

(declare-fun m!2116531 () Bool)

(assert (=> d!525448 m!2116531))

(assert (=> d!525448 m!2115967))

(assert (=> b!1712928 m!2116491))

(assert (=> b!1712928 m!2116493))

(assert (=> b!1712928 m!2116491))

(assert (=> b!1712928 m!2116487))

(assert (=> b!1712928 m!2116489))

(assert (=> b!1712928 m!2116489))

(declare-fun m!2116535 () Bool)

(assert (=> b!1712928 m!2116535))

(assert (=> b!1712928 m!2116487))

(assert (=> b!1712419 d!525448))

(declare-fun b!1712948 () Bool)

(declare-fun e!1095531 () Bool)

(assert (=> b!1712948 (= e!1095531 (isPrefix!1547 (tail!2556 lt!654329) (tail!2556 lt!654334)))))

(declare-fun d!525492 () Bool)

(declare-fun e!1095532 () Bool)

(assert (=> d!525492 e!1095532))

(declare-fun res!768039 () Bool)

(assert (=> d!525492 (=> res!768039 e!1095532)))

(declare-fun lt!654542 () Bool)

(assert (=> d!525492 (= res!768039 (not lt!654542))))

(declare-fun e!1095530 () Bool)

(assert (=> d!525492 (= lt!654542 e!1095530)))

(declare-fun res!768038 () Bool)

(assert (=> d!525492 (=> res!768038 e!1095530)))

(assert (=> d!525492 (= res!768038 (is-Nil!18709 lt!654329))))

(assert (=> d!525492 (= (isPrefix!1547 lt!654329 lt!654334) lt!654542)))

(declare-fun b!1712949 () Bool)

(assert (=> b!1712949 (= e!1095532 (>= (size!14871 lt!654334) (size!14871 lt!654329)))))

(declare-fun b!1712946 () Bool)

(assert (=> b!1712946 (= e!1095530 e!1095531)))

(declare-fun res!768036 () Bool)

(assert (=> b!1712946 (=> (not res!768036) (not e!1095531))))

(assert (=> b!1712946 (= res!768036 (not (is-Nil!18709 lt!654334)))))

(declare-fun b!1712947 () Bool)

(declare-fun res!768037 () Bool)

(assert (=> b!1712947 (=> (not res!768037) (not e!1095531))))

(assert (=> b!1712947 (= res!768037 (= (head!3845 lt!654329) (head!3845 lt!654334)))))

(assert (= (and d!525492 (not res!768038)) b!1712946))

(assert (= (and b!1712946 res!768036) b!1712947))

(assert (= (and b!1712947 res!768037) b!1712948))

(assert (= (and d!525492 (not res!768039)) b!1712949))

(assert (=> b!1712948 m!2116131))

(assert (=> b!1712948 m!2116335))

(assert (=> b!1712948 m!2116131))

(assert (=> b!1712948 m!2116335))

(declare-fun m!2116537 () Bool)

(assert (=> b!1712948 m!2116537))

(assert (=> b!1712949 m!2116265))

(assert (=> b!1712949 m!2116293))

(assert (=> b!1712947 m!2116129))

(assert (=> b!1712947 m!2116339))

(assert (=> b!1712419 d!525492))

(declare-fun d!525494 () Bool)

(assert (=> d!525494 (= (list!7551 lt!654332) (list!7553 (c!280548 lt!654332)))))

(declare-fun bs!401836 () Bool)

(assert (= bs!401836 d!525494))

(declare-fun m!2116539 () Bool)

(assert (=> bs!401836 m!2116539))

(assert (=> b!1712419 d!525494))

(declare-fun b!1712962 () Bool)

(declare-fun e!1095543 () Bool)

(declare-fun lt!654550 () Option!3637)

(assert (=> b!1712962 (= e!1095543 (= (tag!3604 (get!5508 lt!654550)) (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun d!525496 () Bool)

(declare-fun e!1095541 () Bool)

(assert (=> d!525496 e!1095541))

(declare-fun res!768045 () Bool)

(assert (=> d!525496 (=> res!768045 e!1095541)))

(assert (=> d!525496 (= res!768045 (isEmpty!11758 lt!654550))))

(declare-fun e!1095542 () Option!3637)

(assert (=> d!525496 (= lt!654550 e!1095542)))

(declare-fun c!280631 () Bool)

(assert (=> d!525496 (= c!280631 (and (is-Cons!18710 rules!3447) (= (tag!3604 (h!24111 rules!3447)) (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))

(assert (=> d!525496 (rulesInvariant!2604 thiss!24550 rules!3447)))

(assert (=> d!525496 (= (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))) lt!654550)))

(declare-fun b!1712963 () Bool)

(declare-fun e!1095544 () Option!3637)

(assert (=> b!1712963 (= e!1095542 e!1095544)))

(declare-fun c!280630 () Bool)

(assert (=> b!1712963 (= c!280630 (and (is-Cons!18710 rules!3447) (not (= (tag!3604 (h!24111 rules!3447)) (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))

(declare-fun b!1712964 () Bool)

(assert (=> b!1712964 (= e!1095541 e!1095543)))

(declare-fun res!768044 () Bool)

(assert (=> b!1712964 (=> (not res!768044) (not e!1095543))))

(assert (=> b!1712964 (= res!768044 (contains!3326 rules!3447 (get!5508 lt!654550)))))

(declare-fun b!1712965 () Bool)

(assert (=> b!1712965 (= e!1095544 None!3636)))

(declare-fun b!1712966 () Bool)

(assert (=> b!1712966 (= e!1095542 (Some!3636 (h!24111 rules!3447)))))

(declare-fun b!1712967 () Bool)

(declare-fun lt!654551 () Unit!32536)

(declare-fun lt!654549 () Unit!32536)

(assert (=> b!1712967 (= lt!654551 lt!654549)))

(assert (=> b!1712967 (rulesInvariant!2604 thiss!24550 (t!158393 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!121 (LexerInterface!2935 Rule!6412 List!18780) Unit!32536)

(assert (=> b!1712967 (= lt!654549 (lemmaInvariantOnRulesThenOnTail!121 thiss!24550 (h!24111 rules!3447) (t!158393 rules!3447)))))

(assert (=> b!1712967 (= e!1095544 (getRuleFromTag!356 thiss!24550 (t!158393 rules!3447) (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))

(assert (= (and d!525496 c!280631) b!1712966))

(assert (= (and d!525496 (not c!280631)) b!1712963))

(assert (= (and b!1712963 c!280630) b!1712967))

(assert (= (and b!1712963 (not c!280630)) b!1712965))

(assert (= (and d!525496 (not res!768045)) b!1712964))

(assert (= (and b!1712964 res!768044) b!1712962))

(declare-fun m!2116541 () Bool)

(assert (=> b!1712962 m!2116541))

(declare-fun m!2116543 () Bool)

(assert (=> d!525496 m!2116543))

(assert (=> d!525496 m!2115957))

(assert (=> b!1712964 m!2116541))

(assert (=> b!1712964 m!2116541))

(declare-fun m!2116545 () Bool)

(assert (=> b!1712964 m!2116545))

(declare-fun m!2116547 () Bool)

(assert (=> b!1712967 m!2116547))

(declare-fun m!2116549 () Bool)

(assert (=> b!1712967 m!2116549))

(declare-fun m!2116551 () Bool)

(assert (=> b!1712967 m!2116551))

(assert (=> b!1712419 d!525496))

(declare-fun d!525498 () Bool)

(declare-fun e!1095546 () Bool)

(assert (=> d!525498 e!1095546))

(declare-fun res!768046 () Bool)

(assert (=> d!525498 (=> (not res!768046) (not e!1095546))))

(declare-fun lt!654552 () List!18779)

(assert (=> d!525498 (= res!768046 (= (content!2664 lt!654552) (set.union (content!2664 lt!654323) (content!2664 suffix!1421))))))

(declare-fun e!1095545 () List!18779)

(assert (=> d!525498 (= lt!654552 e!1095545)))

(declare-fun c!280632 () Bool)

(assert (=> d!525498 (= c!280632 (is-Nil!18709 lt!654323))))

(assert (=> d!525498 (= (++!5131 lt!654323 suffix!1421) lt!654552)))

(declare-fun b!1712968 () Bool)

(assert (=> b!1712968 (= e!1095545 suffix!1421)))

(declare-fun b!1712971 () Bool)

(assert (=> b!1712971 (= e!1095546 (or (not (= suffix!1421 Nil!18709)) (= lt!654552 lt!654323)))))

(declare-fun b!1712969 () Bool)

(assert (=> b!1712969 (= e!1095545 (Cons!18709 (h!24110 lt!654323) (++!5131 (t!158392 lt!654323) suffix!1421)))))

(declare-fun b!1712970 () Bool)

(declare-fun res!768047 () Bool)

(assert (=> b!1712970 (=> (not res!768047) (not e!1095546))))

(assert (=> b!1712970 (= res!768047 (= (size!14871 lt!654552) (+ (size!14871 lt!654323) (size!14871 suffix!1421))))))

(assert (= (and d!525498 c!280632) b!1712968))

(assert (= (and d!525498 (not c!280632)) b!1712969))

(assert (= (and d!525498 res!768046) b!1712970))

(assert (= (and b!1712970 res!768047) b!1712971))

(declare-fun m!2116553 () Bool)

(assert (=> d!525498 m!2116553))

(assert (=> d!525498 m!2116187))

(declare-fun m!2116555 () Bool)

(assert (=> d!525498 m!2116555))

(declare-fun m!2116557 () Bool)

(assert (=> b!1712969 m!2116557))

(declare-fun m!2116559 () Bool)

(assert (=> b!1712970 m!2116559))

(assert (=> b!1712970 m!2116195))

(declare-fun m!2116561 () Bool)

(assert (=> b!1712970 m!2116561))

(assert (=> b!1712419 d!525498))

(declare-fun d!525500 () Bool)

(declare-fun c!280633 () Bool)

(assert (=> d!525500 (= c!280633 (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))

(declare-fun e!1095547 () Bool)

(assert (=> d!525500 (= (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) e!1095547)))

(declare-fun b!1712972 () Bool)

(assert (=> b!1712972 (= e!1095547 (inv!24135 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))

(declare-fun b!1712973 () Bool)

(declare-fun e!1095548 () Bool)

(assert (=> b!1712973 (= e!1095547 e!1095548)))

(declare-fun res!768048 () Bool)

(assert (=> b!1712973 (= res!768048 (not (is-Leaf!9096 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(assert (=> b!1712973 (=> res!768048 e!1095548)))

(declare-fun b!1712974 () Bool)

(assert (=> b!1712974 (= e!1095548 (inv!24136 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))

(assert (= (and d!525500 c!280633) b!1712972))

(assert (= (and d!525500 (not c!280633)) b!1712973))

(assert (= (and b!1712973 (not res!768048)) b!1712974))

(declare-fun m!2116563 () Bool)

(assert (=> b!1712972 m!2116563))

(declare-fun m!2116565 () Bool)

(assert (=> b!1712974 m!2116565))

(assert (=> b!1712460 d!525500))

(declare-fun d!525502 () Bool)

(assert (=> d!525502 (= (isDefined!2979 lt!654333) (not (isEmpty!11757 lt!654333)))))

(declare-fun bs!401837 () Bool)

(assert (= bs!401837 d!525502))

(declare-fun m!2116567 () Bool)

(assert (=> bs!401837 m!2116567))

(assert (=> b!1712418 d!525502))

(declare-fun b!1712975 () Bool)

(declare-fun res!768052 () Bool)

(declare-fun e!1095551 () Bool)

(assert (=> b!1712975 (=> (not res!768052) (not e!1095551))))

(declare-fun lt!654554 () Option!3636)

(assert (=> b!1712975 (= res!768052 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))) (_2!10612 (get!5507 lt!654554))) lt!654323))))

(declare-fun b!1712976 () Bool)

(declare-fun res!768051 () Bool)

(assert (=> b!1712976 (=> (not res!768051) (not e!1095551))))

(assert (=> b!1712976 (= res!768051 (< (size!14871 (_2!10612 (get!5507 lt!654554))) (size!14871 lt!654323)))))

(declare-fun b!1712977 () Bool)

(assert (=> b!1712977 (= e!1095551 (contains!3326 rules!3447 (rule!5242 (_1!10612 (get!5507 lt!654554)))))))

(declare-fun d!525504 () Bool)

(declare-fun e!1095549 () Bool)

(assert (=> d!525504 e!1095549))

(declare-fun res!768050 () Bool)

(assert (=> d!525504 (=> res!768050 e!1095549)))

(assert (=> d!525504 (= res!768050 (isEmpty!11757 lt!654554))))

(declare-fun e!1095550 () Option!3636)

(assert (=> d!525504 (= lt!654554 e!1095550)))

(declare-fun c!280634 () Bool)

(assert (=> d!525504 (= c!280634 (and (is-Cons!18710 rules!3447) (is-Nil!18710 (t!158393 rules!3447))))))

(declare-fun lt!654553 () Unit!32536)

(declare-fun lt!654556 () Unit!32536)

(assert (=> d!525504 (= lt!654553 lt!654556)))

(assert (=> d!525504 (isPrefix!1547 lt!654323 lt!654323)))

(assert (=> d!525504 (= lt!654556 (lemmaIsPrefixRefl!1056 lt!654323 lt!654323))))

(assert (=> d!525504 (rulesValidInductive!1091 thiss!24550 rules!3447)))

(assert (=> d!525504 (= (maxPrefix!1489 thiss!24550 rules!3447 lt!654323) lt!654554)))

(declare-fun b!1712978 () Bool)

(declare-fun call!109521 () Option!3636)

(assert (=> b!1712978 (= e!1095550 call!109521)))

(declare-fun b!1712979 () Bool)

(declare-fun res!768054 () Bool)

(assert (=> b!1712979 (=> (not res!768054) (not e!1095551))))

(assert (=> b!1712979 (= res!768054 (matchR!2108 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))))))

(declare-fun b!1712980 () Bool)

(declare-fun lt!654557 () Option!3636)

(declare-fun lt!654555 () Option!3636)

(assert (=> b!1712980 (= e!1095550 (ite (and (is-None!3635 lt!654557) (is-None!3635 lt!654555)) None!3635 (ite (is-None!3635 lt!654555) lt!654557 (ite (is-None!3635 lt!654557) lt!654555 (ite (>= (size!14869 (_1!10612 (v!25026 lt!654557))) (size!14869 (_1!10612 (v!25026 lt!654555)))) lt!654557 lt!654555)))))))

(assert (=> b!1712980 (= lt!654557 call!109521)))

(assert (=> b!1712980 (= lt!654555 (maxPrefix!1489 thiss!24550 (t!158393 rules!3447) lt!654323))))

(declare-fun b!1712981 () Bool)

(declare-fun res!768055 () Bool)

(assert (=> b!1712981 (=> (not res!768055) (not e!1095551))))

(assert (=> b!1712981 (= res!768055 (= (value!103895 (_1!10612 (get!5507 lt!654554))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654554)))))))))

(declare-fun b!1712982 () Bool)

(assert (=> b!1712982 (= e!1095549 e!1095551)))

(declare-fun res!768053 () Bool)

(assert (=> b!1712982 (=> (not res!768053) (not e!1095551))))

(assert (=> b!1712982 (= res!768053 (isDefined!2979 lt!654554))))

(declare-fun b!1712983 () Bool)

(declare-fun res!768049 () Bool)

(assert (=> b!1712983 (=> (not res!768049) (not e!1095551))))

(assert (=> b!1712983 (= res!768049 (= (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))) (originalCharacters!4120 (_1!10612 (get!5507 lt!654554)))))))

(declare-fun bm!109516 () Bool)

(assert (=> bm!109516 (= call!109521 (maxPrefixOneRule!871 thiss!24550 (h!24111 rules!3447) lt!654323))))

(assert (= (and d!525504 c!280634) b!1712978))

(assert (= (and d!525504 (not c!280634)) b!1712980))

(assert (= (or b!1712978 b!1712980) bm!109516))

(assert (= (and d!525504 (not res!768050)) b!1712982))

(assert (= (and b!1712982 res!768053) b!1712983))

(assert (= (and b!1712983 res!768049) b!1712976))

(assert (= (and b!1712976 res!768051) b!1712975))

(assert (= (and b!1712975 res!768052) b!1712981))

(assert (= (and b!1712981 res!768055) b!1712979))

(assert (= (and b!1712979 res!768054) b!1712977))

(declare-fun m!2116569 () Bool)

(assert (=> b!1712982 m!2116569))

(declare-fun m!2116571 () Bool)

(assert (=> b!1712979 m!2116571))

(declare-fun m!2116573 () Bool)

(assert (=> b!1712979 m!2116573))

(assert (=> b!1712979 m!2116573))

(declare-fun m!2116575 () Bool)

(assert (=> b!1712979 m!2116575))

(assert (=> b!1712979 m!2116575))

(declare-fun m!2116577 () Bool)

(assert (=> b!1712979 m!2116577))

(declare-fun m!2116579 () Bool)

(assert (=> d!525504 m!2116579))

(declare-fun m!2116581 () Bool)

(assert (=> d!525504 m!2116581))

(declare-fun m!2116583 () Bool)

(assert (=> d!525504 m!2116583))

(assert (=> d!525504 m!2116259))

(declare-fun m!2116585 () Bool)

(assert (=> b!1712980 m!2116585))

(assert (=> b!1712976 m!2116571))

(declare-fun m!2116587 () Bool)

(assert (=> b!1712976 m!2116587))

(assert (=> b!1712976 m!2116195))

(assert (=> b!1712981 m!2116571))

(declare-fun m!2116589 () Bool)

(assert (=> b!1712981 m!2116589))

(assert (=> b!1712981 m!2116589))

(declare-fun m!2116591 () Bool)

(assert (=> b!1712981 m!2116591))

(assert (=> b!1712977 m!2116571))

(declare-fun m!2116593 () Bool)

(assert (=> b!1712977 m!2116593))

(declare-fun m!2116595 () Bool)

(assert (=> bm!109516 m!2116595))

(assert (=> b!1712975 m!2116571))

(assert (=> b!1712975 m!2116573))

(assert (=> b!1712975 m!2116573))

(assert (=> b!1712975 m!2116575))

(assert (=> b!1712975 m!2116575))

(declare-fun m!2116597 () Bool)

(assert (=> b!1712975 m!2116597))

(assert (=> b!1712983 m!2116571))

(assert (=> b!1712983 m!2116573))

(assert (=> b!1712983 m!2116573))

(assert (=> b!1712983 m!2116575))

(assert (=> b!1712418 d!525504))

(declare-fun d!525506 () Bool)

(assert (=> d!525506 (= (list!7551 (charsOf!1955 token!523)) (list!7553 (c!280548 (charsOf!1955 token!523))))))

(declare-fun bs!401838 () Bool)

(assert (= bs!401838 d!525506))

(declare-fun m!2116599 () Bool)

(assert (=> bs!401838 m!2116599))

(assert (=> b!1712418 d!525506))

(declare-fun d!525508 () Bool)

(declare-fun lt!654558 () BalanceConc!12388)

(assert (=> d!525508 (= (list!7551 lt!654558) (originalCharacters!4120 token!523))))

(assert (=> d!525508 (= lt!654558 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))))

(assert (=> d!525508 (= (charsOf!1955 token!523) lt!654558)))

(declare-fun b_lambda!54047 () Bool)

(assert (=> (not b_lambda!54047) (not d!525508)))

(declare-fun t!158422 () Bool)

(declare-fun tb!101077 () Bool)

(assert (=> (and b!1712431 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 token!523)))) t!158422) tb!101077))

(declare-fun b!1712984 () Bool)

(declare-fun e!1095552 () Bool)

(declare-fun tp!489402 () Bool)

(assert (=> b!1712984 (= e!1095552 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))) tp!489402))))

(declare-fun result!121468 () Bool)

(assert (=> tb!101077 (= result!121468 (and (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))) e!1095552))))

(assert (= tb!101077 b!1712984))

(declare-fun m!2116601 () Bool)

(assert (=> b!1712984 m!2116601))

(declare-fun m!2116603 () Bool)

(assert (=> tb!101077 m!2116603))

(assert (=> d!525508 t!158422))

(declare-fun b_and!124107 () Bool)

(assert (= b_and!124089 (and (=> t!158422 result!121468) b_and!124107)))

(declare-fun t!158424 () Bool)

(declare-fun tb!101079 () Bool)

(assert (=> (and b!1712427 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 token!523)))) t!158424) tb!101079))

(declare-fun result!121470 () Bool)

(assert (= result!121470 result!121468))

(assert (=> d!525508 t!158424))

(declare-fun b_and!124109 () Bool)

(assert (= b_and!124091 (and (=> t!158424 result!121470) b_and!124109)))

(declare-fun t!158426 () Bool)

(declare-fun tb!101081 () Bool)

(assert (=> (and b!1712423 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 token!523)))) t!158426) tb!101081))

(declare-fun result!121472 () Bool)

(assert (= result!121472 result!121468))

(assert (=> d!525508 t!158426))

(declare-fun b_and!124111 () Bool)

(assert (= b_and!124093 (and (=> t!158426 result!121472) b_and!124111)))

(declare-fun m!2116605 () Bool)

(assert (=> d!525508 m!2116605))

(declare-fun m!2116607 () Bool)

(assert (=> d!525508 m!2116607))

(assert (=> b!1712418 d!525508))

(declare-fun d!525510 () Bool)

(declare-fun res!768060 () Bool)

(declare-fun e!1095555 () Bool)

(assert (=> d!525510 (=> (not res!768060) (not e!1095555))))

(assert (=> d!525510 (= res!768060 (not (isEmpty!11754 (originalCharacters!4120 token!523))))))

(assert (=> d!525510 (= (inv!24128 token!523) e!1095555)))

(declare-fun b!1712989 () Bool)

(declare-fun res!768061 () Bool)

(assert (=> b!1712989 (=> (not res!768061) (not e!1095555))))

(assert (=> b!1712989 (= res!768061 (= (originalCharacters!4120 token!523) (list!7551 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))))))

(declare-fun b!1712990 () Bool)

(assert (=> b!1712990 (= e!1095555 (= (size!14869 token!523) (size!14871 (originalCharacters!4120 token!523))))))

(assert (= (and d!525510 res!768060) b!1712989))

(assert (= (and b!1712989 res!768061) b!1712990))

(declare-fun b_lambda!54049 () Bool)

(assert (=> (not b_lambda!54049) (not b!1712989)))

(assert (=> b!1712989 t!158422))

(declare-fun b_and!124113 () Bool)

(assert (= b_and!124107 (and (=> t!158422 result!121468) b_and!124113)))

(assert (=> b!1712989 t!158424))

(declare-fun b_and!124115 () Bool)

(assert (= b_and!124109 (and (=> t!158424 result!121470) b_and!124115)))

(assert (=> b!1712989 t!158426))

(declare-fun b_and!124117 () Bool)

(assert (= b_and!124111 (and (=> t!158426 result!121472) b_and!124117)))

(declare-fun m!2116609 () Bool)

(assert (=> d!525510 m!2116609))

(assert (=> b!1712989 m!2116607))

(assert (=> b!1712989 m!2116607))

(declare-fun m!2116611 () Bool)

(assert (=> b!1712989 m!2116611))

(declare-fun m!2116613 () Bool)

(assert (=> b!1712990 m!2116613))

(assert (=> start!167496 d!525510))

(declare-fun d!525512 () Bool)

(assert (=> d!525512 (= (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) (isBalanced!1948 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))

(declare-fun bs!401839 () Bool)

(assert (= bs!401839 d!525512))

(declare-fun m!2116615 () Bool)

(assert (=> bs!401839 m!2116615))

(assert (=> tb!101035 d!525512))

(declare-fun d!525514 () Bool)

(declare-fun e!1095560 () Bool)

(assert (=> d!525514 e!1095560))

(declare-fun c!280637 () Bool)

(assert (=> d!525514 (= c!280637 (is-EmptyExpr!4634 (regex!3306 lt!654335)))))

(declare-fun lt!654559 () Bool)

(declare-fun e!1095556 () Bool)

(assert (=> d!525514 (= lt!654559 e!1095556)))

(declare-fun c!280635 () Bool)

(assert (=> d!525514 (= c!280635 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(assert (=> d!525514 (validRegex!1867 (regex!3306 lt!654335))))

(assert (=> d!525514 (= (matchR!2108 (regex!3306 lt!654335) (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) lt!654559)))

(declare-fun b!1712991 () Bool)

(assert (=> b!1712991 (= e!1095556 (nullable!1393 (regex!3306 lt!654335)))))

(declare-fun b!1712992 () Bool)

(declare-fun res!768067 () Bool)

(declare-fun e!1095562 () Bool)

(assert (=> b!1712992 (=> res!768067 e!1095562)))

(assert (=> b!1712992 (= res!768067 (not (is-ElementMatch!4634 (regex!3306 lt!654335))))))

(declare-fun e!1095559 () Bool)

(assert (=> b!1712992 (= e!1095559 e!1095562)))

(declare-fun b!1712993 () Bool)

(declare-fun res!768068 () Bool)

(declare-fun e!1095557 () Bool)

(assert (=> b!1712993 (=> res!768068 e!1095557)))

(assert (=> b!1712993 (= res!768068 (not (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))

(declare-fun b!1712994 () Bool)

(declare-fun e!1095558 () Bool)

(assert (=> b!1712994 (= e!1095562 e!1095558)))

(declare-fun res!768062 () Bool)

(assert (=> b!1712994 (=> (not res!768062) (not e!1095558))))

(assert (=> b!1712994 (= res!768062 (not lt!654559))))

(declare-fun b!1712995 () Bool)

(declare-fun res!768064 () Bool)

(assert (=> b!1712995 (=> res!768064 e!1095562)))

(declare-fun e!1095561 () Bool)

(assert (=> b!1712995 (= res!768064 e!1095561)))

(declare-fun res!768066 () Bool)

(assert (=> b!1712995 (=> (not res!768066) (not e!1095561))))

(assert (=> b!1712995 (= res!768066 lt!654559)))

(declare-fun b!1712996 () Bool)

(declare-fun res!768069 () Bool)

(assert (=> b!1712996 (=> (not res!768069) (not e!1095561))))

(declare-fun call!109522 () Bool)

(assert (=> b!1712996 (= res!768069 (not call!109522))))

(declare-fun b!1712997 () Bool)

(assert (=> b!1712997 (= e!1095560 e!1095559)))

(declare-fun c!280636 () Bool)

(assert (=> b!1712997 (= c!280636 (is-EmptyLang!4634 (regex!3306 lt!654335)))))

(declare-fun b!1712998 () Bool)

(assert (=> b!1712998 (= e!1095559 (not lt!654559))))

(declare-fun b!1712999 () Bool)

(declare-fun res!768063 () Bool)

(assert (=> b!1712999 (=> (not res!768063) (not e!1095561))))

(assert (=> b!1712999 (= res!768063 (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(declare-fun b!1713000 () Bool)

(assert (=> b!1713000 (= e!1095561 (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (c!280547 (regex!3306 lt!654335))))))

(declare-fun b!1713001 () Bool)

(assert (=> b!1713001 (= e!1095557 (not (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (c!280547 (regex!3306 lt!654335)))))))

(declare-fun b!1713002 () Bool)

(assert (=> b!1713002 (= e!1095558 e!1095557)))

(declare-fun res!768065 () Bool)

(assert (=> b!1713002 (=> res!768065 e!1095557)))

(assert (=> b!1713002 (= res!768065 call!109522)))

(declare-fun b!1713003 () Bool)

(assert (=> b!1713003 (= e!1095560 (= lt!654559 call!109522))))

(declare-fun bm!109517 () Bool)

(assert (=> bm!109517 (= call!109522 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(declare-fun b!1713004 () Bool)

(assert (=> b!1713004 (= e!1095556 (matchR!2108 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(assert (= (and d!525514 c!280635) b!1712991))

(assert (= (and d!525514 (not c!280635)) b!1713004))

(assert (= (and d!525514 c!280637) b!1713003))

(assert (= (and d!525514 (not c!280637)) b!1712997))

(assert (= (and b!1712997 c!280636) b!1712998))

(assert (= (and b!1712997 (not c!280636)) b!1712992))

(assert (= (and b!1712992 (not res!768067)) b!1712995))

(assert (= (and b!1712995 res!768066) b!1712996))

(assert (= (and b!1712996 res!768069) b!1712999))

(assert (= (and b!1712999 res!768063) b!1713000))

(assert (= (and b!1712995 (not res!768064)) b!1712994))

(assert (= (and b!1712994 res!768062) b!1713002))

(assert (= (and b!1713002 (not res!768065)) b!1712993))

(assert (= (and b!1712993 (not res!768068)) b!1713001))

(assert (= (or b!1713003 b!1712996 b!1713002) bm!109517))

(assert (=> b!1713000 m!2115939))

(declare-fun m!2116617 () Bool)

(assert (=> b!1713000 m!2116617))

(assert (=> b!1713001 m!2115939))

(assert (=> b!1713001 m!2116617))

(assert (=> b!1712999 m!2115939))

(declare-fun m!2116619 () Bool)

(assert (=> b!1712999 m!2116619))

(assert (=> b!1712999 m!2116619))

(declare-fun m!2116621 () Bool)

(assert (=> b!1712999 m!2116621))

(assert (=> b!1712993 m!2115939))

(assert (=> b!1712993 m!2116619))

(assert (=> b!1712993 m!2116619))

(assert (=> b!1712993 m!2116621))

(assert (=> b!1713004 m!2115939))

(assert (=> b!1713004 m!2116617))

(assert (=> b!1713004 m!2116617))

(declare-fun m!2116623 () Bool)

(assert (=> b!1713004 m!2116623))

(assert (=> b!1713004 m!2115939))

(assert (=> b!1713004 m!2116619))

(assert (=> b!1713004 m!2116623))

(assert (=> b!1713004 m!2116619))

(declare-fun m!2116625 () Bool)

(assert (=> b!1713004 m!2116625))

(assert (=> bm!109517 m!2115939))

(declare-fun m!2116627 () Bool)

(assert (=> bm!109517 m!2116627))

(declare-fun m!2116629 () Bool)

(assert (=> b!1712991 m!2116629))

(assert (=> d!525514 m!2115939))

(assert (=> d!525514 m!2116627))

(declare-fun m!2116631 () Bool)

(assert (=> d!525514 m!2116631))

(assert (=> b!1712439 d!525514))

(declare-fun d!525516 () Bool)

(assert (=> d!525516 (= (list!7551 (charsOf!1955 (_1!10612 lt!654328))) (list!7553 (c!280548 (charsOf!1955 (_1!10612 lt!654328)))))))

(declare-fun bs!401840 () Bool)

(assert (= bs!401840 d!525516))

(declare-fun m!2116633 () Bool)

(assert (=> bs!401840 m!2116633))

(assert (=> b!1712439 d!525516))

(assert (=> b!1712439 d!525442))

(declare-fun d!525518 () Bool)

(assert (=> d!525518 (= (get!5508 lt!654327) (v!25027 lt!654327))))

(assert (=> b!1712439 d!525518))

(declare-fun b!1713009 () Bool)

(declare-fun e!1095565 () Bool)

(declare-fun tp!489405 () Bool)

(assert (=> b!1713009 (= e!1095565 (and tp_is_empty!7511 tp!489405))))

(assert (=> b!1712426 (= tp!489349 e!1095565)))

(assert (= (and b!1712426 (is-Cons!18709 (t!158392 suffix!1421))) b!1713009))

(declare-fun b!1713010 () Bool)

(declare-fun e!1095566 () Bool)

(declare-fun tp!489406 () Bool)

(assert (=> b!1713010 (= e!1095566 (and tp_is_empty!7511 tp!489406))))

(assert (=> b!1712420 (= tp!489353 e!1095566)))

(assert (= (and b!1712420 (is-Cons!18709 (originalCharacters!4120 token!523))) b!1713010))

(declare-fun b!1713023 () Bool)

(declare-fun e!1095569 () Bool)

(declare-fun tp!489419 () Bool)

(assert (=> b!1713023 (= e!1095569 tp!489419)))

(declare-fun b!1713021 () Bool)

(assert (=> b!1713021 (= e!1095569 tp_is_empty!7511)))

(declare-fun b!1713024 () Bool)

(declare-fun tp!489421 () Bool)

(declare-fun tp!489420 () Bool)

(assert (=> b!1713024 (= e!1095569 (and tp!489421 tp!489420))))

(declare-fun b!1713022 () Bool)

(declare-fun tp!489417 () Bool)

(declare-fun tp!489418 () Bool)

(assert (=> b!1713022 (= e!1095569 (and tp!489417 tp!489418))))

(assert (=> b!1712415 (= tp!489354 e!1095569)))

(assert (= (and b!1712415 (is-ElementMatch!4634 (regex!3306 (h!24111 rules!3447)))) b!1713021))

(assert (= (and b!1712415 (is-Concat!8031 (regex!3306 (h!24111 rules!3447)))) b!1713022))

(assert (= (and b!1712415 (is-Star!4634 (regex!3306 (h!24111 rules!3447)))) b!1713023))

(assert (= (and b!1712415 (is-Union!4634 (regex!3306 (h!24111 rules!3447)))) b!1713024))

(declare-fun b!1713027 () Bool)

(declare-fun e!1095570 () Bool)

(declare-fun tp!489424 () Bool)

(assert (=> b!1713027 (= e!1095570 tp!489424)))

(declare-fun b!1713025 () Bool)

(assert (=> b!1713025 (= e!1095570 tp_is_empty!7511)))

(declare-fun b!1713028 () Bool)

(declare-fun tp!489426 () Bool)

(declare-fun tp!489425 () Bool)

(assert (=> b!1713028 (= e!1095570 (and tp!489426 tp!489425))))

(declare-fun b!1713026 () Bool)

(declare-fun tp!489422 () Bool)

(declare-fun tp!489423 () Bool)

(assert (=> b!1713026 (= e!1095570 (and tp!489422 tp!489423))))

(assert (=> b!1712430 (= tp!489351 e!1095570)))

(assert (= (and b!1712430 (is-ElementMatch!4634 (regex!3306 rule!422))) b!1713025))

(assert (= (and b!1712430 (is-Concat!8031 (regex!3306 rule!422))) b!1713026))

(assert (= (and b!1712430 (is-Star!4634 (regex!3306 rule!422))) b!1713027))

(assert (= (and b!1712430 (is-Union!4634 (regex!3306 rule!422))) b!1713028))

(declare-fun b!1713031 () Bool)

(declare-fun e!1095571 () Bool)

(declare-fun tp!489429 () Bool)

(assert (=> b!1713031 (= e!1095571 tp!489429)))

(declare-fun b!1713029 () Bool)

(assert (=> b!1713029 (= e!1095571 tp_is_empty!7511)))

(declare-fun b!1713032 () Bool)

(declare-fun tp!489431 () Bool)

(declare-fun tp!489430 () Bool)

(assert (=> b!1713032 (= e!1095571 (and tp!489431 tp!489430))))

(declare-fun b!1713030 () Bool)

(declare-fun tp!489427 () Bool)

(declare-fun tp!489428 () Bool)

(assert (=> b!1713030 (= e!1095571 (and tp!489427 tp!489428))))

(assert (=> b!1712425 (= tp!489345 e!1095571)))

(assert (= (and b!1712425 (is-ElementMatch!4634 (regex!3306 (rule!5242 token!523)))) b!1713029))

(assert (= (and b!1712425 (is-Concat!8031 (regex!3306 (rule!5242 token!523)))) b!1713030))

(assert (= (and b!1712425 (is-Star!4634 (regex!3306 (rule!5242 token!523)))) b!1713031))

(assert (= (and b!1712425 (is-Union!4634 (regex!3306 (rule!5242 token!523)))) b!1713032))

(declare-fun b!1713043 () Bool)

(declare-fun b_free!46503 () Bool)

(declare-fun b_next!47207 () Bool)

(assert (=> b!1713043 (= b_free!46503 (not b_next!47207))))

(declare-fun t!158428 () Bool)

(declare-fun tb!101083 () Bool)

(assert (=> (and b!1713043 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158428) tb!101083))

(declare-fun result!121480 () Bool)

(assert (= result!121480 result!121426))

(assert (=> b!1712416 t!158428))

(assert (=> d!525396 t!158428))

(declare-fun tp!489442 () Bool)

(declare-fun b_and!124119 () Bool)

(assert (=> b!1713043 (= tp!489442 (and (=> t!158428 result!121480) b_and!124119))))

(declare-fun b_free!46505 () Bool)

(declare-fun b_next!47209 () Bool)

(assert (=> b!1713043 (= b_free!46505 (not b_next!47209))))

(declare-fun t!158430 () Bool)

(declare-fun tb!101085 () Bool)

(assert (=> (and b!1713043 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158430) tb!101085))

(declare-fun result!121482 () Bool)

(assert (= result!121482 result!121418))

(assert (=> b!1712416 t!158430))

(declare-fun t!158432 () Bool)

(declare-fun tb!101087 () Bool)

(assert (=> (and b!1713043 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 token!523)))) t!158432) tb!101087))

(declare-fun result!121484 () Bool)

(assert (= result!121484 result!121468))

(assert (=> b!1712989 t!158432))

(assert (=> d!525396 t!158430))

(declare-fun t!158434 () Bool)

(declare-fun tb!101089 () Bool)

(assert (=> (and b!1713043 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158434) tb!101089))

(declare-fun result!121486 () Bool)

(assert (= result!121486 result!121434))

(assert (=> d!525442 t!158434))

(assert (=> d!525508 t!158432))

(assert (=> b!1712440 t!158434))

(declare-fun tp!489443 () Bool)

(declare-fun b_and!124121 () Bool)

(assert (=> b!1713043 (= tp!489443 (and (=> t!158432 result!121484) (=> t!158434 result!121486) (=> t!158430 result!121482) b_and!124121))))

(declare-fun e!1095581 () Bool)

(assert (=> b!1713043 (= e!1095581 (and tp!489442 tp!489443))))

(declare-fun b!1713042 () Bool)

(declare-fun tp!489440 () Bool)

(declare-fun e!1095582 () Bool)

(assert (=> b!1713042 (= e!1095582 (and tp!489440 (inv!24124 (tag!3604 (h!24111 (t!158393 rules!3447)))) (inv!24127 (transformation!3306 (h!24111 (t!158393 rules!3447)))) e!1095581))))

(declare-fun b!1713041 () Bool)

(declare-fun e!1095580 () Bool)

(declare-fun tp!489441 () Bool)

(assert (=> b!1713041 (= e!1095580 (and e!1095582 tp!489441))))

(assert (=> b!1712441 (= tp!489348 e!1095580)))

(assert (= b!1713042 b!1713043))

(assert (= b!1713041 b!1713042))

(assert (= (and b!1712441 (is-Cons!18710 (t!158393 rules!3447))) b!1713041))

(declare-fun m!2116635 () Bool)

(assert (=> b!1713042 m!2116635))

(declare-fun m!2116637 () Bool)

(assert (=> b!1713042 m!2116637))

(declare-fun tp!489450 () Bool)

(declare-fun tp!489452 () Bool)

(declare-fun b!1713052 () Bool)

(declare-fun e!1095588 () Bool)

(assert (=> b!1713052 (= e!1095588 (and (inv!24129 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) tp!489450 (inv!24129 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) tp!489452))))

(declare-fun b!1713054 () Bool)

(declare-fun e!1095589 () Bool)

(declare-fun tp!489451 () Bool)

(assert (=> b!1713054 (= e!1095589 tp!489451)))

(declare-fun b!1713053 () Bool)

(declare-fun inv!24139 (IArray!12449) Bool)

(assert (=> b!1713053 (= e!1095588 (and (inv!24139 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) e!1095589))))

(assert (=> b!1712460 (= tp!489360 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) e!1095588))))

(assert (= (and b!1712460 (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) b!1713052))

(assert (= b!1713053 b!1713054))

(assert (= (and b!1712460 (is-Leaf!9096 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) b!1713053))

(declare-fun m!2116639 () Bool)

(assert (=> b!1713052 m!2116639))

(declare-fun m!2116641 () Bool)

(assert (=> b!1713052 m!2116641))

(declare-fun m!2116643 () Bool)

(assert (=> b!1713053 m!2116643))

(assert (=> b!1712460 m!2115867))

(declare-fun e!1095590 () Bool)

(declare-fun b!1713055 () Bool)

(declare-fun tp!489455 () Bool)

(declare-fun tp!489453 () Bool)

(assert (=> b!1713055 (= e!1095590 (and (inv!24129 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) tp!489453 (inv!24129 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) tp!489455))))

(declare-fun b!1713057 () Bool)

(declare-fun e!1095591 () Bool)

(declare-fun tp!489454 () Bool)

(assert (=> b!1713057 (= e!1095591 tp!489454)))

(declare-fun b!1713056 () Bool)

(assert (=> b!1713056 (= e!1095590 (and (inv!24139 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) e!1095591))))

(assert (=> b!1712457 (= tp!489359 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) e!1095590))))

(assert (= (and b!1712457 (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) b!1713055))

(assert (= b!1713056 b!1713057))

(assert (= (and b!1712457 (is-Leaf!9096 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) b!1713056))

(declare-fun m!2116645 () Bool)

(assert (=> b!1713055 m!2116645))

(declare-fun m!2116647 () Bool)

(assert (=> b!1713055 m!2116647))

(declare-fun m!2116649 () Bool)

(assert (=> b!1713056 m!2116649))

(assert (=> b!1712457 m!2115861))

(declare-fun b_lambda!54051 () Bool)

(assert (= b_lambda!54029 (or (and b!1712431 b_free!46481 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712427 b_free!46485 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712423 b_free!46489 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1713043 b_free!46505 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) b_lambda!54051)))

(declare-fun b_lambda!54053 () Bool)

(assert (= b_lambda!54025 (or (and b!1712431 b_free!46481 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712427 b_free!46485 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712423 b_free!46489 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1713043 b_free!46505 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) b_lambda!54053)))

(declare-fun b_lambda!54055 () Bool)

(assert (= b_lambda!54047 (or (and b!1712431 b_free!46481) (and b!1712427 b_free!46485 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 token!523))))) (and b!1712423 b_free!46489 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 token!523))))) (and b!1713043 b_free!46505 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 token!523))))) b_lambda!54055)))

(declare-fun b_lambda!54057 () Bool)

(assert (= b_lambda!54049 (or (and b!1712431 b_free!46481) (and b!1712427 b_free!46485 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 token!523))))) (and b!1712423 b_free!46489 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 token!523))))) (and b!1713043 b_free!46505 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 token!523))))) b_lambda!54057)))

(declare-fun b_lambda!54059 () Bool)

(assert (= b_lambda!54027 (or (and b!1712431 b_free!46479 (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712427 b_free!46483 (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712423 b_free!46487 (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1713043 b_free!46503 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) b_lambda!54059)))

(push 1)

(assert (not b!1713031))

(assert (not b!1712668))

(assert (not d!525352))

(assert (not b!1712983))

(assert (not b!1712700))

(assert (not b!1712967))

(assert (not b!1712785))

(assert (not d!525442))

(assert (not d!525388))

(assert (not b!1712633))

(assert (not b!1712989))

(assert (not b!1712731))

(assert (not b!1713030))

(assert (not b!1713022))

(assert (not b!1713026))

(assert (not b!1712695))

(assert (not b!1712632))

(assert (not b!1712976))

(assert (not d!525494))

(assert (not d!525404))

(assert (not b_lambda!54041))

(assert (not d!525514))

(assert (not d!525368))

(assert (not b!1712737))

(assert (not b_lambda!54037))

(assert (not b!1712982))

(assert (not b_next!47185))

(assert (not d!525364))

(assert (not b!1712599))

(assert (not b!1713041))

(assert (not b!1712756))

(assert (not b!1712980))

(assert (not b!1712696))

(assert (not d!525506))

(assert b_and!124115)

(assert (not b!1712783))

(assert (not b_next!47209))

(assert (not d!525386))

(assert (not b!1712735))

(assert (not b!1712964))

(assert (not b!1712947))

(assert (not b!1712623))

(assert (not d!525358))

(assert (not d!525348))

(assert (not b!1712757))

(assert (not b!1713055))

(assert (not b!1712981))

(assert (not b!1712784))

(assert (not b!1712733))

(assert b_and!124085)

(assert (not b!1713057))

(assert (not b!1713054))

(assert (not d!525432))

(assert (not b!1712637))

(assert (not b_next!47189))

(assert (not bm!109516))

(assert (not b_lambda!54057))

(assert (not b!1712597))

(assert (not b!1712460))

(assert (not tb!101077))

(assert (not d!525496))

(assert (not b!1712962))

(assert (not bm!109508))

(assert (not b!1712607))

(assert (not b!1712589))

(assert (not bm!109504))

(assert (not b_next!47183))

(assert (not d!525508))

(assert (not d!525510))

(assert (not d!525376))

(assert (not b!1713024))

(assert (not d!525424))

(assert (not b!1712977))

(assert (not b!1712984))

(assert (not d!525504))

(assert (not bm!109517))

(assert (not b!1713056))

(assert (not b!1712979))

(assert (not d!525366))

(assert (not b!1713052))

(assert (not b!1712602))

(assert (not d!525380))

(assert (not b!1712598))

(assert (not b!1712974))

(assert (not b!1712591))

(assert (not b_next!47193))

(assert (not b!1712969))

(assert (not b!1713028))

(assert (not b!1712999))

(assert (not b!1712949))

(assert (not b!1712654))

(assert (not b!1712738))

(assert (not b_lambda!54059))

(assert (not b!1712626))

(assert (not b!1712679))

(assert (not d!525430))

(assert (not b!1712739))

(assert (not d!525346))

(assert (not b!1712948))

(assert (not b!1713000))

(assert (not b!1712772))

(assert (not b!1712928))

(assert (not b!1712620))

(assert (not d!525396))

(assert (not b!1712678))

(assert (not d!525378))

(assert b_and!124113)

(assert b_and!124087)

(assert (not d!525394))

(assert (not d!525354))

(assert (not b!1712773))

(assert (not b!1713023))

(assert (not d!525512))

(assert b_and!124121)

(assert (not b!1712970))

(assert b_and!124083)

(assert (not b!1712618))

(assert tp_is_empty!7511)

(assert (not b!1712662))

(assert (not d!525446))

(assert (not b!1713027))

(assert (not b!1712991))

(assert (not b!1713032))

(assert (not b!1712990))

(assert b_and!124117)

(assert (not b_lambda!54055))

(assert (not b!1712930))

(assert (not b!1712742))

(assert (not b!1712741))

(assert (not b_lambda!54051))

(assert (not b!1713042))

(assert (not b!1712624))

(assert (not d!525350))

(assert (not d!525408))

(assert (not b!1712929))

(assert (not b!1713010))

(assert (not b!1712658))

(assert (not b!1712659))

(assert (not b!1712732))

(assert (not b!1712975))

(assert (not d!525448))

(assert (not d!525516))

(assert (not b!1712634))

(assert (not b!1712667))

(assert (not b!1712972))

(assert (not d!525428))

(assert (not b_lambda!54053))

(assert (not b_next!47191))

(assert b_and!124119)

(assert (not b!1713053))

(assert (not b!1712655))

(assert (not b_lambda!54039))

(assert (not b!1712771))

(assert (not b!1712643))

(assert (not d!525502))

(assert (not b!1713009))

(assert (not b!1713004))

(assert (not d!525344))

(assert (not b_next!47207))

(assert (not b!1712457))

(assert (not d!525498))

(assert (not b!1712736))

(assert (not b!1712993))

(assert (not bm!109505))

(assert (not b_next!47187))

(assert (not d!525384))

(assert (not b!1712697))

(assert (not b!1713001))

(assert (not b!1712611))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!47185))

(assert b_and!124085)

(assert (not b_next!47189))

(assert (not b_next!47183))

(assert (not b_next!47193))

(assert b_and!124117)

(assert b_and!124115)

(assert (not b_next!47209))

(assert b_and!124113)

(assert b_and!124087)

(assert b_and!124121)

(assert b_and!124083)

(assert (not b_next!47191))

(assert b_and!124119)

(assert (not b_next!47207))

(assert (not b_next!47187))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!525564 () Bool)

(assert (=> d!525564 (= (isEmpty!11754 lt!654329) (is-Nil!18709 lt!654329))))

(assert (=> bm!109505 d!525564))

(declare-fun d!525566 () Bool)

(declare-fun e!1095657 () Bool)

(assert (=> d!525566 e!1095657))

(declare-fun res!768111 () Bool)

(assert (=> d!525566 (=> (not res!768111) (not e!1095657))))

(declare-fun lt!654627 () BalanceConc!12388)

(assert (=> d!525566 (= res!768111 (= (list!7551 lt!654627) (originalCharacters!4120 (_1!10612 lt!654328))))))

(declare-fun fromList!437 (List!18779) Conc!6222)

(assert (=> d!525566 (= lt!654627 (BalanceConc!12389 (fromList!437 (originalCharacters!4120 (_1!10612 lt!654328)))))))

(assert (=> d!525566 (= (fromListB!1048 (originalCharacters!4120 (_1!10612 lt!654328))) lt!654627)))

(declare-fun b!1713179 () Bool)

(assert (=> b!1713179 (= e!1095657 (isBalanced!1948 (fromList!437 (originalCharacters!4120 (_1!10612 lt!654328)))))))

(assert (= (and d!525566 res!768111) b!1713179))

(declare-fun m!2116821 () Bool)

(assert (=> d!525566 m!2116821))

(declare-fun m!2116823 () Bool)

(assert (=> d!525566 m!2116823))

(assert (=> b!1713179 m!2116823))

(assert (=> b!1713179 m!2116823))

(declare-fun m!2116825 () Bool)

(assert (=> b!1713179 m!2116825))

(assert (=> d!525346 d!525566))

(declare-fun b!1713180 () Bool)

(declare-fun res!768115 () Bool)

(declare-fun e!1095660 () Bool)

(assert (=> b!1713180 (=> (not res!768115) (not e!1095660))))

(declare-fun lt!654629 () Option!3636)

(assert (=> b!1713180 (= res!768115 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654629)))) (_2!10612 (get!5507 lt!654629))) lt!654323))))

(declare-fun b!1713181 () Bool)

(declare-fun res!768114 () Bool)

(assert (=> b!1713181 (=> (not res!768114) (not e!1095660))))

(assert (=> b!1713181 (= res!768114 (< (size!14871 (_2!10612 (get!5507 lt!654629))) (size!14871 lt!654323)))))

(declare-fun b!1713182 () Bool)

(assert (=> b!1713182 (= e!1095660 (contains!3326 (t!158393 rules!3447) (rule!5242 (_1!10612 (get!5507 lt!654629)))))))

(declare-fun d!525568 () Bool)

(declare-fun e!1095658 () Bool)

(assert (=> d!525568 e!1095658))

(declare-fun res!768113 () Bool)

(assert (=> d!525568 (=> res!768113 e!1095658)))

(assert (=> d!525568 (= res!768113 (isEmpty!11757 lt!654629))))

(declare-fun e!1095659 () Option!3636)

(assert (=> d!525568 (= lt!654629 e!1095659)))

(declare-fun c!280653 () Bool)

(assert (=> d!525568 (= c!280653 (and (is-Cons!18710 (t!158393 rules!3447)) (is-Nil!18710 (t!158393 (t!158393 rules!3447)))))))

(declare-fun lt!654628 () Unit!32536)

(declare-fun lt!654631 () Unit!32536)

(assert (=> d!525568 (= lt!654628 lt!654631)))

(assert (=> d!525568 (isPrefix!1547 lt!654323 lt!654323)))

(assert (=> d!525568 (= lt!654631 (lemmaIsPrefixRefl!1056 lt!654323 lt!654323))))

(assert (=> d!525568 (rulesValidInductive!1091 thiss!24550 (t!158393 rules!3447))))

(assert (=> d!525568 (= (maxPrefix!1489 thiss!24550 (t!158393 rules!3447) lt!654323) lt!654629)))

(declare-fun b!1713183 () Bool)

(declare-fun call!109525 () Option!3636)

(assert (=> b!1713183 (= e!1095659 call!109525)))

(declare-fun b!1713184 () Bool)

(declare-fun res!768117 () Bool)

(assert (=> b!1713184 (=> (not res!768117) (not e!1095660))))

(assert (=> b!1713184 (= res!768117 (matchR!2108 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654629)))) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654629))))))))

(declare-fun b!1713185 () Bool)

(declare-fun lt!654632 () Option!3636)

(declare-fun lt!654630 () Option!3636)

(assert (=> b!1713185 (= e!1095659 (ite (and (is-None!3635 lt!654632) (is-None!3635 lt!654630)) None!3635 (ite (is-None!3635 lt!654630) lt!654632 (ite (is-None!3635 lt!654632) lt!654630 (ite (>= (size!14869 (_1!10612 (v!25026 lt!654632))) (size!14869 (_1!10612 (v!25026 lt!654630)))) lt!654632 lt!654630)))))))

(assert (=> b!1713185 (= lt!654632 call!109525)))

(assert (=> b!1713185 (= lt!654630 (maxPrefix!1489 thiss!24550 (t!158393 (t!158393 rules!3447)) lt!654323))))

(declare-fun b!1713186 () Bool)

(declare-fun res!768118 () Bool)

(assert (=> b!1713186 (=> (not res!768118) (not e!1095660))))

(assert (=> b!1713186 (= res!768118 (= (value!103895 (_1!10612 (get!5507 lt!654629))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654629)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654629)))))))))

(declare-fun b!1713187 () Bool)

(assert (=> b!1713187 (= e!1095658 e!1095660)))

(declare-fun res!768116 () Bool)

(assert (=> b!1713187 (=> (not res!768116) (not e!1095660))))

(assert (=> b!1713187 (= res!768116 (isDefined!2979 lt!654629))))

(declare-fun b!1713188 () Bool)

(declare-fun res!768112 () Bool)

(assert (=> b!1713188 (=> (not res!768112) (not e!1095660))))

(assert (=> b!1713188 (= res!768112 (= (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654629)))) (originalCharacters!4120 (_1!10612 (get!5507 lt!654629)))))))

(declare-fun bm!109520 () Bool)

(assert (=> bm!109520 (= call!109525 (maxPrefixOneRule!871 thiss!24550 (h!24111 (t!158393 rules!3447)) lt!654323))))

(assert (= (and d!525568 c!280653) b!1713183))

(assert (= (and d!525568 (not c!280653)) b!1713185))

(assert (= (or b!1713183 b!1713185) bm!109520))

(assert (= (and d!525568 (not res!768113)) b!1713187))

(assert (= (and b!1713187 res!768116) b!1713188))

(assert (= (and b!1713188 res!768112) b!1713181))

(assert (= (and b!1713181 res!768114) b!1713180))

(assert (= (and b!1713180 res!768115) b!1713186))

(assert (= (and b!1713186 res!768118) b!1713184))

(assert (= (and b!1713184 res!768117) b!1713182))

(declare-fun m!2116827 () Bool)

(assert (=> b!1713187 m!2116827))

(declare-fun m!2116829 () Bool)

(assert (=> b!1713184 m!2116829))

(declare-fun m!2116831 () Bool)

(assert (=> b!1713184 m!2116831))

(assert (=> b!1713184 m!2116831))

(declare-fun m!2116833 () Bool)

(assert (=> b!1713184 m!2116833))

(assert (=> b!1713184 m!2116833))

(declare-fun m!2116835 () Bool)

(assert (=> b!1713184 m!2116835))

(declare-fun m!2116837 () Bool)

(assert (=> d!525568 m!2116837))

(assert (=> d!525568 m!2116581))

(assert (=> d!525568 m!2116583))

(declare-fun m!2116839 () Bool)

(assert (=> d!525568 m!2116839))

(declare-fun m!2116841 () Bool)

(assert (=> b!1713185 m!2116841))

(assert (=> b!1713181 m!2116829))

(declare-fun m!2116843 () Bool)

(assert (=> b!1713181 m!2116843))

(assert (=> b!1713181 m!2116195))

(assert (=> b!1713186 m!2116829))

(declare-fun m!2116845 () Bool)

(assert (=> b!1713186 m!2116845))

(assert (=> b!1713186 m!2116845))

(declare-fun m!2116847 () Bool)

(assert (=> b!1713186 m!2116847))

(assert (=> b!1713182 m!2116829))

(declare-fun m!2116849 () Bool)

(assert (=> b!1713182 m!2116849))

(declare-fun m!2116851 () Bool)

(assert (=> bm!109520 m!2116851))

(assert (=> b!1713180 m!2116829))

(assert (=> b!1713180 m!2116831))

(assert (=> b!1713180 m!2116831))

(assert (=> b!1713180 m!2116833))

(assert (=> b!1713180 m!2116833))

(declare-fun m!2116853 () Bool)

(assert (=> b!1713180 m!2116853))

(assert (=> b!1713188 m!2116829))

(assert (=> b!1713188 m!2116831))

(assert (=> b!1713188 m!2116831))

(assert (=> b!1713188 m!2116833))

(assert (=> b!1712980 d!525568))

(declare-fun d!525570 () Bool)

(assert (=> d!525570 (= (isEmpty!11754 (tail!2556 lt!654323)) (is-Nil!18709 (tail!2556 lt!654323)))))

(assert (=> b!1712597 d!525570))

(declare-fun d!525572 () Bool)

(assert (=> d!525572 (= (tail!2556 lt!654323) (t!158392 lt!654323))))

(assert (=> b!1712597 d!525572))

(declare-fun d!525574 () Bool)

(assert (=> d!525574 (= (head!3845 lt!654329) (h!24110 lt!654329))))

(assert (=> b!1712947 d!525574))

(declare-fun d!525576 () Bool)

(assert (=> d!525576 (= (head!3845 lt!654334) (h!24110 lt!654334))))

(assert (=> b!1712947 d!525576))

(assert (=> b!1712771 d!525574))

(declare-fun d!525578 () Bool)

(assert (=> d!525578 (= (head!3845 (++!5131 lt!654329 (_2!10612 lt!654328))) (h!24110 (++!5131 lt!654329 (_2!10612 lt!654328))))))

(assert (=> b!1712771 d!525578))

(declare-fun d!525580 () Bool)

(assert (=> d!525580 (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (h!24110 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(assert (=> b!1713001 d!525580))

(declare-fun d!525582 () Bool)

(declare-fun c!280656 () Bool)

(assert (=> d!525582 (= c!280656 (is-Nil!18710 rules!3447))))

(declare-fun e!1095663 () (Set Rule!6412))

(assert (=> d!525582 (= (content!2663 rules!3447) e!1095663)))

(declare-fun b!1713193 () Bool)

(assert (=> b!1713193 (= e!1095663 (as set.empty (Set Rule!6412)))))

(declare-fun b!1713194 () Bool)

(assert (=> b!1713194 (= e!1095663 (set.union (set.insert (h!24111 rules!3447) (as set.empty (Set Rule!6412))) (content!2663 (t!158393 rules!3447))))))

(assert (= (and d!525582 c!280656) b!1713193))

(assert (= (and d!525582 (not c!280656)) b!1713194))

(declare-fun m!2116855 () Bool)

(assert (=> b!1713194 m!2116855))

(declare-fun m!2116857 () Bool)

(assert (=> b!1713194 m!2116857))

(assert (=> d!525368 d!525582))

(declare-fun d!525584 () Bool)

(assert (=> d!525584 (= (isDefined!2979 lt!654419) (not (isEmpty!11757 lt!654419)))))

(declare-fun bs!401848 () Bool)

(assert (= bs!401848 d!525584))

(assert (=> bs!401848 m!2116253))

(assert (=> b!1712738 d!525584))

(assert (=> d!525396 d!525394))

(assert (=> d!525396 d!525494))

(declare-fun d!525586 () Bool)

(declare-fun dynLambda!8512 (Int BalanceConc!12388) Bool)

(assert (=> d!525586 (dynLambda!8512 lambda!68870 lt!654332)))

(declare-fun lt!654635 () Unit!32536)

(declare-fun choose!10399 (Int BalanceConc!12388) Unit!32536)

(assert (=> d!525586 (= lt!654635 (choose!10399 lambda!68870 lt!654332))))

(assert (=> d!525586 (Forall!681 lambda!68870)))

(assert (=> d!525586 (= (ForallOf!249 lambda!68870 lt!654332) lt!654635)))

(declare-fun b_lambda!54077 () Bool)

(assert (=> (not b_lambda!54077) (not d!525586)))

(declare-fun bs!401849 () Bool)

(assert (= bs!401849 d!525586))

(declare-fun m!2116859 () Bool)

(assert (=> bs!401849 m!2116859))

(declare-fun m!2116861 () Bool)

(assert (=> bs!401849 m!2116861))

(declare-fun m!2116863 () Bool)

(assert (=> bs!401849 m!2116863))

(assert (=> d!525396 d!525586))

(assert (=> b!1712457 d!525360))

(declare-fun d!525588 () Bool)

(declare-fun nullableFct!324 (Regex!4634) Bool)

(assert (=> d!525588 (= (nullable!1393 (regex!3306 rule!422)) (nullableFct!324 (regex!3306 rule!422)))))

(declare-fun bs!401850 () Bool)

(assert (= bs!401850 d!525588))

(declare-fun m!2116865 () Bool)

(assert (=> bs!401850 m!2116865))

(assert (=> b!1712607 d!525588))

(declare-fun bs!401851 () Bool)

(declare-fun d!525590 () Bool)

(assert (= bs!401851 (and d!525590 b!1712424)))

(declare-fun lambda!68879 () Int)

(assert (=> bs!401851 (= (and (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68879 lambda!68861))))

(declare-fun bs!401852 () Bool)

(assert (= bs!401852 (and d!525590 d!525396)))

(assert (=> bs!401852 (= (and (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68879 lambda!68870))))

(assert (=> d!525590 true))

(assert (=> d!525590 (< (dynLambda!8504 order!11269 (toChars!4668 (transformation!3306 (h!24111 rules!3447)))) (dynLambda!8503 order!11267 lambda!68879))))

(assert (=> d!525590 true))

(assert (=> d!525590 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (h!24111 rules!3447)))) (dynLambda!8503 order!11267 lambda!68879))))

(assert (=> d!525590 (= (semiInverseModEq!1306 (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (h!24111 rules!3447)))) (Forall!681 lambda!68879))))

(declare-fun bs!401853 () Bool)

(assert (= bs!401853 d!525590))

(declare-fun m!2116867 () Bool)

(assert (=> bs!401853 m!2116867))

(assert (=> d!525404 d!525590))

(declare-fun b!1713217 () Bool)

(declare-fun e!1095674 () Option!3636)

(declare-datatypes ((tuple2!18428 0))(
  ( (tuple2!18429 (_1!10616 List!18779) (_2!10616 List!18779)) )
))
(declare-fun lt!654650 () tuple2!18428)

(declare-fun size!14873 (BalanceConc!12388) Int)

(assert (=> b!1713217 (= e!1095674 (Some!3635 (tuple2!18421 (Token!6179 (apply!5115 (transformation!3306 (h!24111 rules!3447)) (seqFromList!2280 (_1!10616 lt!654650))) (h!24111 rules!3447) (size!14873 (seqFromList!2280 (_1!10616 lt!654650))) (_1!10616 lt!654650)) (_2!10616 lt!654650))))))

(declare-fun lt!654648 () Unit!32536)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!370 (Regex!4634 List!18779) Unit!32536)

(assert (=> b!1713217 (= lt!654648 (longestMatchIsAcceptedByMatchOrIsEmpty!370 (regex!3306 (h!24111 rules!3447)) lt!654323))))

(declare-fun res!768137 () Bool)

(declare-fun findLongestMatchInner!386 (Regex!4634 List!18779 Int List!18779 List!18779 Int) tuple2!18428)

(assert (=> b!1713217 (= res!768137 (isEmpty!11754 (_1!10616 (findLongestMatchInner!386 (regex!3306 (h!24111 rules!3447)) Nil!18709 (size!14871 Nil!18709) lt!654323 lt!654323 (size!14871 lt!654323)))))))

(declare-fun e!1095672 () Bool)

(assert (=> b!1713217 (=> res!768137 e!1095672)))

(assert (=> b!1713217 e!1095672))

(declare-fun lt!654646 () Unit!32536)

(assert (=> b!1713217 (= lt!654646 lt!654648)))

(declare-fun lt!654647 () Unit!32536)

(assert (=> b!1713217 (= lt!654647 (lemmaSemiInverse!452 (transformation!3306 (h!24111 rules!3447)) (seqFromList!2280 (_1!10616 lt!654650))))))

(declare-fun b!1713219 () Bool)

(declare-fun res!768139 () Bool)

(declare-fun e!1095675 () Bool)

(assert (=> b!1713219 (=> (not res!768139) (not e!1095675))))

(declare-fun lt!654649 () Option!3636)

(assert (=> b!1713219 (= res!768139 (= (rule!5242 (_1!10612 (get!5507 lt!654649))) (h!24111 rules!3447)))))

(declare-fun b!1713220 () Bool)

(declare-fun res!768134 () Bool)

(assert (=> b!1713220 (=> (not res!768134) (not e!1095675))))

(assert (=> b!1713220 (= res!768134 (= (value!103895 (_1!10612 (get!5507 lt!654649))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654649)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654649)))))))))

(declare-fun b!1713221 () Bool)

(declare-fun res!768138 () Bool)

(assert (=> b!1713221 (=> (not res!768138) (not e!1095675))))

(assert (=> b!1713221 (= res!768138 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654649)))) (_2!10612 (get!5507 lt!654649))) lt!654323))))

(declare-fun b!1713222 () Bool)

(assert (=> b!1713222 (= e!1095674 None!3635)))

(declare-fun b!1713223 () Bool)

(assert (=> b!1713223 (= e!1095672 (matchR!2108 (regex!3306 (h!24111 rules!3447)) (_1!10616 (findLongestMatchInner!386 (regex!3306 (h!24111 rules!3447)) Nil!18709 (size!14871 Nil!18709) lt!654323 lt!654323 (size!14871 lt!654323)))))))

(declare-fun b!1713218 () Bool)

(declare-fun e!1095673 () Bool)

(assert (=> b!1713218 (= e!1095673 e!1095675)))

(declare-fun res!768133 () Bool)

(assert (=> b!1713218 (=> (not res!768133) (not e!1095675))))

(assert (=> b!1713218 (= res!768133 (matchR!2108 (regex!3306 (h!24111 rules!3447)) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654649))))))))

(declare-fun d!525592 () Bool)

(assert (=> d!525592 e!1095673))

(declare-fun res!768136 () Bool)

(assert (=> d!525592 (=> res!768136 e!1095673)))

(assert (=> d!525592 (= res!768136 (isEmpty!11757 lt!654649))))

(assert (=> d!525592 (= lt!654649 e!1095674)))

(declare-fun c!280659 () Bool)

(assert (=> d!525592 (= c!280659 (isEmpty!11754 (_1!10616 lt!654650)))))

(declare-fun findLongestMatch!313 (Regex!4634 List!18779) tuple2!18428)

(assert (=> d!525592 (= lt!654650 (findLongestMatch!313 (regex!3306 (h!24111 rules!3447)) lt!654323))))

(assert (=> d!525592 (ruleValid!805 thiss!24550 (h!24111 rules!3447))))

(assert (=> d!525592 (= (maxPrefixOneRule!871 thiss!24550 (h!24111 rules!3447) lt!654323) lt!654649)))

(declare-fun b!1713224 () Bool)

(assert (=> b!1713224 (= e!1095675 (= (size!14869 (_1!10612 (get!5507 lt!654649))) (size!14871 (originalCharacters!4120 (_1!10612 (get!5507 lt!654649))))))))

(declare-fun b!1713225 () Bool)

(declare-fun res!768135 () Bool)

(assert (=> b!1713225 (=> (not res!768135) (not e!1095675))))

(assert (=> b!1713225 (= res!768135 (< (size!14871 (_2!10612 (get!5507 lt!654649))) (size!14871 lt!654323)))))

(assert (= (and d!525592 c!280659) b!1713222))

(assert (= (and d!525592 (not c!280659)) b!1713217))

(assert (= (and b!1713217 (not res!768137)) b!1713223))

(assert (= (and d!525592 (not res!768136)) b!1713218))

(assert (= (and b!1713218 res!768133) b!1713221))

(assert (= (and b!1713221 res!768138) b!1713225))

(assert (= (and b!1713225 res!768135) b!1713219))

(assert (= (and b!1713219 res!768139) b!1713220))

(assert (= (and b!1713220 res!768134) b!1713224))

(declare-fun m!2116869 () Bool)

(assert (=> b!1713225 m!2116869))

(declare-fun m!2116871 () Bool)

(assert (=> b!1713225 m!2116871))

(assert (=> b!1713225 m!2116195))

(assert (=> b!1713221 m!2116869))

(declare-fun m!2116873 () Bool)

(assert (=> b!1713221 m!2116873))

(assert (=> b!1713221 m!2116873))

(declare-fun m!2116875 () Bool)

(assert (=> b!1713221 m!2116875))

(assert (=> b!1713221 m!2116875))

(declare-fun m!2116877 () Bool)

(assert (=> b!1713221 m!2116877))

(declare-fun m!2116879 () Bool)

(assert (=> d!525592 m!2116879))

(declare-fun m!2116881 () Bool)

(assert (=> d!525592 m!2116881))

(declare-fun m!2116883 () Bool)

(assert (=> d!525592 m!2116883))

(declare-fun m!2116885 () Bool)

(assert (=> d!525592 m!2116885))

(assert (=> b!1713224 m!2116869))

(declare-fun m!2116887 () Bool)

(assert (=> b!1713224 m!2116887))

(assert (=> b!1713219 m!2116869))

(declare-fun m!2116889 () Bool)

(assert (=> b!1713223 m!2116889))

(assert (=> b!1713223 m!2116195))

(assert (=> b!1713223 m!2116889))

(assert (=> b!1713223 m!2116195))

(declare-fun m!2116891 () Bool)

(assert (=> b!1713223 m!2116891))

(declare-fun m!2116893 () Bool)

(assert (=> b!1713223 m!2116893))

(declare-fun m!2116895 () Bool)

(assert (=> b!1713217 m!2116895))

(assert (=> b!1713217 m!2116895))

(declare-fun m!2116897 () Bool)

(assert (=> b!1713217 m!2116897))

(declare-fun m!2116899 () Bool)

(assert (=> b!1713217 m!2116899))

(assert (=> b!1713217 m!2116895))

(declare-fun m!2116901 () Bool)

(assert (=> b!1713217 m!2116901))

(declare-fun m!2116903 () Bool)

(assert (=> b!1713217 m!2116903))

(assert (=> b!1713217 m!2116895))

(declare-fun m!2116905 () Bool)

(assert (=> b!1713217 m!2116905))

(assert (=> b!1713217 m!2116195))

(assert (=> b!1713217 m!2116889))

(assert (=> b!1713217 m!2116195))

(assert (=> b!1713217 m!2116891))

(assert (=> b!1713217 m!2116889))

(assert (=> b!1713218 m!2116869))

(assert (=> b!1713218 m!2116873))

(assert (=> b!1713218 m!2116873))

(assert (=> b!1713218 m!2116875))

(assert (=> b!1713218 m!2116875))

(declare-fun m!2116907 () Bool)

(assert (=> b!1713218 m!2116907))

(assert (=> b!1713220 m!2116869))

(declare-fun m!2116909 () Bool)

(assert (=> b!1713220 m!2116909))

(assert (=> b!1713220 m!2116909))

(declare-fun m!2116911 () Bool)

(assert (=> b!1713220 m!2116911))

(assert (=> bm!109516 d!525592))

(declare-fun d!525594 () Bool)

(declare-fun lt!654651 () BalanceConc!12388)

(assert (=> d!525594 (= (list!7551 lt!654651) (originalCharacters!4120 lt!654520))))

(assert (=> d!525594 (= lt!654651 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 lt!654520))) (value!103895 lt!654520)))))

(assert (=> d!525594 (= (charsOf!1955 lt!654520) lt!654651)))

(declare-fun b_lambda!54079 () Bool)

(assert (=> (not b_lambda!54079) (not d!525594)))

(declare-fun t!158450 () Bool)

(declare-fun tb!101099 () Bool)

(assert (=> (and b!1712431 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 lt!654520)))) t!158450) tb!101099))

(declare-fun b!1713226 () Bool)

(declare-fun e!1095676 () Bool)

(declare-fun tp!489509 () Bool)

(assert (=> b!1713226 (= e!1095676 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 lt!654520))) (value!103895 lt!654520)))) tp!489509))))

(declare-fun result!121506 () Bool)

(assert (=> tb!101099 (= result!121506 (and (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 lt!654520))) (value!103895 lt!654520))) e!1095676))))

(assert (= tb!101099 b!1713226))

(declare-fun m!2116913 () Bool)

(assert (=> b!1713226 m!2116913))

(declare-fun m!2116915 () Bool)

(assert (=> tb!101099 m!2116915))

(assert (=> d!525594 t!158450))

(declare-fun b_and!124145 () Bool)

(assert (= b_and!124113 (and (=> t!158450 result!121506) b_and!124145)))

(declare-fun t!158452 () Bool)

(declare-fun tb!101101 () Bool)

(assert (=> (and b!1712427 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 lt!654520)))) t!158452) tb!101101))

(declare-fun result!121508 () Bool)

(assert (= result!121508 result!121506))

(assert (=> d!525594 t!158452))

(declare-fun b_and!124147 () Bool)

(assert (= b_and!124115 (and (=> t!158452 result!121508) b_and!124147)))

(declare-fun tb!101103 () Bool)

(declare-fun t!158454 () Bool)

(assert (=> (and b!1712423 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 lt!654520)))) t!158454) tb!101103))

(declare-fun result!121510 () Bool)

(assert (= result!121510 result!121506))

(assert (=> d!525594 t!158454))

(declare-fun b_and!124149 () Bool)

(assert (= b_and!124117 (and (=> t!158454 result!121510) b_and!124149)))

(declare-fun tb!101105 () Bool)

(declare-fun t!158456 () Bool)

(assert (=> (and b!1713043 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 lt!654520)))) t!158456) tb!101105))

(declare-fun result!121512 () Bool)

(assert (= result!121512 result!121506))

(assert (=> d!525594 t!158456))

(declare-fun b_and!124151 () Bool)

(assert (= b_and!124121 (and (=> t!158456 result!121512) b_and!124151)))

(declare-fun m!2116917 () Bool)

(assert (=> d!525594 m!2116917))

(declare-fun m!2116919 () Bool)

(assert (=> d!525594 m!2116919))

(assert (=> b!1712928 d!525594))

(declare-fun d!525596 () Bool)

(assert (=> d!525596 (= (list!7551 (charsOf!1955 lt!654520)) (list!7553 (c!280548 (charsOf!1955 lt!654520))))))

(declare-fun bs!401854 () Bool)

(assert (= bs!401854 d!525596))

(declare-fun m!2116921 () Bool)

(assert (=> bs!401854 m!2116921))

(assert (=> b!1712928 d!525596))

(declare-fun d!525598 () Bool)

(assert (=> d!525598 (= (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))) (v!25027 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))))))

(assert (=> b!1712928 d!525598))

(declare-fun b!1713227 () Bool)

(declare-fun e!1095679 () Bool)

(declare-fun lt!654653 () Option!3637)

(assert (=> b!1713227 (= e!1095679 (= (tag!3604 (get!5508 lt!654653)) (tag!3604 (rule!5242 lt!654520))))))

(declare-fun d!525600 () Bool)

(declare-fun e!1095677 () Bool)

(assert (=> d!525600 e!1095677))

(declare-fun res!768141 () Bool)

(assert (=> d!525600 (=> res!768141 e!1095677)))

(assert (=> d!525600 (= res!768141 (isEmpty!11758 lt!654653))))

(declare-fun e!1095678 () Option!3637)

(assert (=> d!525600 (= lt!654653 e!1095678)))

(declare-fun c!280661 () Bool)

(assert (=> d!525600 (= c!280661 (and (is-Cons!18710 rules!3447) (= (tag!3604 (h!24111 rules!3447)) (tag!3604 (rule!5242 lt!654520)))))))

(assert (=> d!525600 (rulesInvariant!2604 thiss!24550 rules!3447)))

(assert (=> d!525600 (= (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))) lt!654653)))

(declare-fun b!1713228 () Bool)

(declare-fun e!1095680 () Option!3637)

(assert (=> b!1713228 (= e!1095678 e!1095680)))

(declare-fun c!280660 () Bool)

(assert (=> b!1713228 (= c!280660 (and (is-Cons!18710 rules!3447) (not (= (tag!3604 (h!24111 rules!3447)) (tag!3604 (rule!5242 lt!654520))))))))

(declare-fun b!1713229 () Bool)

(assert (=> b!1713229 (= e!1095677 e!1095679)))

(declare-fun res!768140 () Bool)

(assert (=> b!1713229 (=> (not res!768140) (not e!1095679))))

(assert (=> b!1713229 (= res!768140 (contains!3326 rules!3447 (get!5508 lt!654653)))))

(declare-fun b!1713230 () Bool)

(assert (=> b!1713230 (= e!1095680 None!3636)))

(declare-fun b!1713231 () Bool)

(assert (=> b!1713231 (= e!1095678 (Some!3636 (h!24111 rules!3447)))))

(declare-fun b!1713232 () Bool)

(declare-fun lt!654654 () Unit!32536)

(declare-fun lt!654652 () Unit!32536)

(assert (=> b!1713232 (= lt!654654 lt!654652)))

(assert (=> b!1713232 (rulesInvariant!2604 thiss!24550 (t!158393 rules!3447))))

(assert (=> b!1713232 (= lt!654652 (lemmaInvariantOnRulesThenOnTail!121 thiss!24550 (h!24111 rules!3447) (t!158393 rules!3447)))))

(assert (=> b!1713232 (= e!1095680 (getRuleFromTag!356 thiss!24550 (t!158393 rules!3447) (tag!3604 (rule!5242 lt!654520))))))

(assert (= (and d!525600 c!280661) b!1713231))

(assert (= (and d!525600 (not c!280661)) b!1713228))

(assert (= (and b!1713228 c!280660) b!1713232))

(assert (= (and b!1713228 (not c!280660)) b!1713230))

(assert (= (and d!525600 (not res!768141)) b!1713229))

(assert (= (and b!1713229 res!768140) b!1713227))

(declare-fun m!2116923 () Bool)

(assert (=> b!1713227 m!2116923))

(declare-fun m!2116925 () Bool)

(assert (=> d!525600 m!2116925))

(assert (=> d!525600 m!2115957))

(assert (=> b!1713229 m!2116923))

(assert (=> b!1713229 m!2116923))

(declare-fun m!2116927 () Bool)

(assert (=> b!1713229 m!2116927))

(assert (=> b!1713232 m!2116547))

(assert (=> b!1713232 m!2116549))

(declare-fun m!2116929 () Bool)

(assert (=> b!1713232 m!2116929))

(assert (=> b!1712928 d!525600))

(declare-fun d!525602 () Bool)

(declare-fun e!1095685 () Bool)

(assert (=> d!525602 e!1095685))

(declare-fun c!280664 () Bool)

(assert (=> d!525602 (= c!280664 (is-EmptyExpr!4634 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))))))))

(declare-fun lt!654655 () Bool)

(declare-fun e!1095681 () Bool)

(assert (=> d!525602 (= lt!654655 e!1095681)))

(declare-fun c!280662 () Bool)

(assert (=> d!525602 (= c!280662 (isEmpty!11754 (list!7551 (charsOf!1955 lt!654520))))))

(assert (=> d!525602 (validRegex!1867 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))))))

(assert (=> d!525602 (= (matchR!2108 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))) (list!7551 (charsOf!1955 lt!654520))) lt!654655)))

(declare-fun b!1713233 () Bool)

(assert (=> b!1713233 (= e!1095681 (nullable!1393 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))))))))

(declare-fun b!1713234 () Bool)

(declare-fun res!768147 () Bool)

(declare-fun e!1095687 () Bool)

(assert (=> b!1713234 (=> res!768147 e!1095687)))

(assert (=> b!1713234 (= res!768147 (not (is-ElementMatch!4634 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))))))))

(declare-fun e!1095684 () Bool)

(assert (=> b!1713234 (= e!1095684 e!1095687)))

(declare-fun b!1713235 () Bool)

(declare-fun res!768148 () Bool)

(declare-fun e!1095682 () Bool)

(assert (=> b!1713235 (=> res!768148 e!1095682)))

(assert (=> b!1713235 (= res!768148 (not (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 lt!654520))))))))

(declare-fun b!1713236 () Bool)

(declare-fun e!1095683 () Bool)

(assert (=> b!1713236 (= e!1095687 e!1095683)))

(declare-fun res!768142 () Bool)

(assert (=> b!1713236 (=> (not res!768142) (not e!1095683))))

(assert (=> b!1713236 (= res!768142 (not lt!654655))))

(declare-fun b!1713237 () Bool)

(declare-fun res!768144 () Bool)

(assert (=> b!1713237 (=> res!768144 e!1095687)))

(declare-fun e!1095686 () Bool)

(assert (=> b!1713237 (= res!768144 e!1095686)))

(declare-fun res!768146 () Bool)

(assert (=> b!1713237 (=> (not res!768146) (not e!1095686))))

(assert (=> b!1713237 (= res!768146 lt!654655)))

(declare-fun b!1713238 () Bool)

(declare-fun res!768149 () Bool)

(assert (=> b!1713238 (=> (not res!768149) (not e!1095686))))

(declare-fun call!109526 () Bool)

(assert (=> b!1713238 (= res!768149 (not call!109526))))

(declare-fun b!1713239 () Bool)

(assert (=> b!1713239 (= e!1095685 e!1095684)))

(declare-fun c!280663 () Bool)

(assert (=> b!1713239 (= c!280663 (is-EmptyLang!4634 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))))))))

(declare-fun b!1713240 () Bool)

(assert (=> b!1713240 (= e!1095684 (not lt!654655))))

(declare-fun b!1713241 () Bool)

(declare-fun res!768143 () Bool)

(assert (=> b!1713241 (=> (not res!768143) (not e!1095686))))

(assert (=> b!1713241 (= res!768143 (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 lt!654520)))))))

(declare-fun b!1713242 () Bool)

(assert (=> b!1713242 (= e!1095686 (= (head!3845 (list!7551 (charsOf!1955 lt!654520))) (c!280547 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))))))))

(declare-fun b!1713243 () Bool)

(assert (=> b!1713243 (= e!1095682 (not (= (head!3845 (list!7551 (charsOf!1955 lt!654520))) (c!280547 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))))))))))

(declare-fun b!1713244 () Bool)

(assert (=> b!1713244 (= e!1095683 e!1095682)))

(declare-fun res!768145 () Bool)

(assert (=> b!1713244 (=> res!768145 e!1095682)))

(assert (=> b!1713244 (= res!768145 call!109526)))

(declare-fun b!1713245 () Bool)

(assert (=> b!1713245 (= e!1095685 (= lt!654655 call!109526))))

(declare-fun bm!109521 () Bool)

(assert (=> bm!109521 (= call!109526 (isEmpty!11754 (list!7551 (charsOf!1955 lt!654520))))))

(declare-fun b!1713246 () Bool)

(assert (=> b!1713246 (= e!1095681 (matchR!2108 (derivativeStep!1161 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))) (head!3845 (list!7551 (charsOf!1955 lt!654520)))) (tail!2556 (list!7551 (charsOf!1955 lt!654520)))))))

(assert (= (and d!525602 c!280662) b!1713233))

(assert (= (and d!525602 (not c!280662)) b!1713246))

(assert (= (and d!525602 c!280664) b!1713245))

(assert (= (and d!525602 (not c!280664)) b!1713239))

(assert (= (and b!1713239 c!280663) b!1713240))

(assert (= (and b!1713239 (not c!280663)) b!1713234))

(assert (= (and b!1713234 (not res!768147)) b!1713237))

(assert (= (and b!1713237 res!768146) b!1713238))

(assert (= (and b!1713238 res!768149) b!1713241))

(assert (= (and b!1713241 res!768143) b!1713242))

(assert (= (and b!1713237 (not res!768144)) b!1713236))

(assert (= (and b!1713236 res!768142) b!1713244))

(assert (= (and b!1713244 (not res!768145)) b!1713235))

(assert (= (and b!1713235 (not res!768148)) b!1713243))

(assert (= (or b!1713245 b!1713238 b!1713244) bm!109521))

(assert (=> b!1713242 m!2116489))

(declare-fun m!2116931 () Bool)

(assert (=> b!1713242 m!2116931))

(assert (=> b!1713243 m!2116489))

(assert (=> b!1713243 m!2116931))

(assert (=> b!1713241 m!2116489))

(declare-fun m!2116933 () Bool)

(assert (=> b!1713241 m!2116933))

(assert (=> b!1713241 m!2116933))

(declare-fun m!2116935 () Bool)

(assert (=> b!1713241 m!2116935))

(assert (=> b!1713235 m!2116489))

(assert (=> b!1713235 m!2116933))

(assert (=> b!1713235 m!2116933))

(assert (=> b!1713235 m!2116935))

(assert (=> b!1713246 m!2116489))

(assert (=> b!1713246 m!2116931))

(assert (=> b!1713246 m!2116931))

(declare-fun m!2116937 () Bool)

(assert (=> b!1713246 m!2116937))

(assert (=> b!1713246 m!2116489))

(assert (=> b!1713246 m!2116933))

(assert (=> b!1713246 m!2116937))

(assert (=> b!1713246 m!2116933))

(declare-fun m!2116939 () Bool)

(assert (=> b!1713246 m!2116939))

(assert (=> bm!109521 m!2116489))

(declare-fun m!2116941 () Bool)

(assert (=> bm!109521 m!2116941))

(declare-fun m!2116943 () Bool)

(assert (=> b!1713233 m!2116943))

(assert (=> d!525602 m!2116489))

(assert (=> d!525602 m!2116941))

(declare-fun m!2116945 () Bool)

(assert (=> d!525602 m!2116945))

(assert (=> b!1712928 d!525602))

(declare-fun d!525604 () Bool)

(declare-fun charsToBigInt!0 (List!18778 Int) Int)

(assert (=> d!525604 (= (inv!15 (value!103895 token!523)) (= (charsToBigInt!0 (text!24221 (value!103895 token!523)) 0) (value!103890 (value!103895 token!523))))))

(declare-fun bs!401855 () Bool)

(assert (= bs!401855 d!525604))

(declare-fun m!2116947 () Bool)

(assert (=> bs!401855 m!2116947))

(assert (=> b!1712658 d!525604))

(declare-fun d!525606 () Bool)

(assert (=> d!525606 (= (head!3845 lt!654323) (h!24110 lt!654323))))

(assert (=> b!1712783 d!525606))

(assert (=> b!1712783 d!525576))

(declare-fun d!525608 () Bool)

(declare-fun lt!654658 () Int)

(assert (=> d!525608 (>= lt!654658 0)))

(declare-fun e!1095690 () Int)

(assert (=> d!525608 (= lt!654658 e!1095690)))

(declare-fun c!280667 () Bool)

(assert (=> d!525608 (= c!280667 (is-Nil!18709 (_2!10612 (get!5507 lt!654554))))))

(assert (=> d!525608 (= (size!14871 (_2!10612 (get!5507 lt!654554))) lt!654658)))

(declare-fun b!1713251 () Bool)

(assert (=> b!1713251 (= e!1095690 0)))

(declare-fun b!1713252 () Bool)

(assert (=> b!1713252 (= e!1095690 (+ 1 (size!14871 (t!158392 (_2!10612 (get!5507 lt!654554))))))))

(assert (= (and d!525608 c!280667) b!1713251))

(assert (= (and d!525608 (not c!280667)) b!1713252))

(declare-fun m!2116949 () Bool)

(assert (=> b!1713252 m!2116949))

(assert (=> b!1712976 d!525608))

(declare-fun d!525610 () Bool)

(assert (=> d!525610 (= (get!5507 lt!654554) (v!25026 lt!654554))))

(assert (=> b!1712976 d!525610))

(declare-fun d!525612 () Bool)

(declare-fun lt!654659 () Int)

(assert (=> d!525612 (>= lt!654659 0)))

(declare-fun e!1095691 () Int)

(assert (=> d!525612 (= lt!654659 e!1095691)))

(declare-fun c!280668 () Bool)

(assert (=> d!525612 (= c!280668 (is-Nil!18709 lt!654323))))

(assert (=> d!525612 (= (size!14871 lt!654323) lt!654659)))

(declare-fun b!1713253 () Bool)

(assert (=> b!1713253 (= e!1095691 0)))

(declare-fun b!1713254 () Bool)

(assert (=> b!1713254 (= e!1095691 (+ 1 (size!14871 (t!158392 lt!654323))))))

(assert (= (and d!525612 c!280668) b!1713253))

(assert (= (and d!525612 (not c!280668)) b!1713254))

(declare-fun m!2116951 () Bool)

(assert (=> b!1713254 m!2116951))

(assert (=> b!1712976 d!525612))

(assert (=> b!1712633 d!525574))

(declare-fun d!525614 () Bool)

(declare-fun res!768156 () Bool)

(declare-fun e!1095694 () Bool)

(assert (=> d!525614 (=> (not res!768156) (not e!1095694))))

(declare-fun size!14874 (Conc!6222) Int)

(assert (=> d!525614 (= res!768156 (= (csize!12674 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) (+ (size!14874 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) (size!14874 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))))

(assert (=> d!525614 (= (inv!24135 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) e!1095694)))

(declare-fun b!1713261 () Bool)

(declare-fun res!768157 () Bool)

(assert (=> b!1713261 (=> (not res!768157) (not e!1095694))))

(assert (=> b!1713261 (= res!768157 (and (not (= (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) Empty!6222)) (not (= (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) Empty!6222))))))

(declare-fun b!1713262 () Bool)

(declare-fun res!768158 () Bool)

(assert (=> b!1713262 (=> (not res!768158) (not e!1095694))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1000 (Conc!6222) Int)

(assert (=> b!1713262 (= res!768158 (= (cheight!6433 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) (+ (max!0 (height!1000 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) (height!1000 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) 1)))))

(declare-fun b!1713263 () Bool)

(assert (=> b!1713263 (= e!1095694 (<= 0 (cheight!6433 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(assert (= (and d!525614 res!768156) b!1713261))

(assert (= (and b!1713261 res!768157) b!1713262))

(assert (= (and b!1713262 res!768158) b!1713263))

(declare-fun m!2116953 () Bool)

(assert (=> d!525614 m!2116953))

(declare-fun m!2116955 () Bool)

(assert (=> d!525614 m!2116955))

(declare-fun m!2116957 () Bool)

(assert (=> b!1713262 m!2116957))

(declare-fun m!2116959 () Bool)

(assert (=> b!1713262 m!2116959))

(assert (=> b!1713262 m!2116957))

(assert (=> b!1713262 m!2116959))

(declare-fun m!2116961 () Bool)

(assert (=> b!1713262 m!2116961))

(assert (=> b!1712618 d!525614))

(declare-fun d!525616 () Bool)

(assert (=> d!525616 (= (list!7551 lt!654442) (list!7553 (c!280548 lt!654442)))))

(declare-fun bs!401856 () Bool)

(assert (= bs!401856 d!525616))

(declare-fun m!2116963 () Bool)

(assert (=> bs!401856 m!2116963))

(assert (=> d!525442 d!525616))

(declare-fun d!525618 () Bool)

(assert (=> d!525618 (= (isEmpty!11758 lt!654327) (not (is-Some!3636 lt!654327)))))

(assert (=> d!525446 d!525618))

(declare-fun b!1713274 () Bool)

(declare-fun e!1095700 () List!18779)

(declare-fun list!7557 (IArray!12449) List!18779)

(assert (=> b!1713274 (= e!1095700 (list!7557 (xs!9098 (c!280548 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328)))))))))

(declare-fun b!1713272 () Bool)

(declare-fun e!1095699 () List!18779)

(assert (=> b!1713272 (= e!1095699 Nil!18709)))

(declare-fun b!1713275 () Bool)

(assert (=> b!1713275 (= e!1095700 (++!5131 (list!7553 (left!14911 (c!280548 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328)))))) (list!7553 (right!15241 (c!280548 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328))))))))))

(declare-fun b!1713273 () Bool)

(assert (=> b!1713273 (= e!1095699 e!1095700)))

(declare-fun c!280674 () Bool)

(assert (=> b!1713273 (= c!280674 (is-Leaf!9096 (c!280548 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328))))))))

(declare-fun d!525620 () Bool)

(declare-fun c!280673 () Bool)

(assert (=> d!525620 (= c!280673 (is-Empty!6222 (c!280548 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328))))))))

(assert (=> d!525620 (= (list!7553 (c!280548 (seqFromList!2280 (originalCharacters!4120 (_1!10612 lt!654328))))) e!1095699)))

(assert (= (and d!525620 c!280673) b!1713272))

(assert (= (and d!525620 (not c!280673)) b!1713273))

(assert (= (and b!1713273 c!280674) b!1713274))

(assert (= (and b!1713273 (not c!280674)) b!1713275))

(declare-fun m!2116965 () Bool)

(assert (=> b!1713274 m!2116965))

(declare-fun m!2116967 () Bool)

(assert (=> b!1713275 m!2116967))

(declare-fun m!2116969 () Bool)

(assert (=> b!1713275 m!2116969))

(assert (=> b!1713275 m!2116967))

(assert (=> b!1713275 m!2116969))

(declare-fun m!2116971 () Bool)

(assert (=> b!1713275 m!2116971))

(assert (=> d!525344 d!525620))

(declare-fun d!525622 () Bool)

(assert (=> d!525622 (= (inv!24139 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) (<= (size!14871 (innerList!6282 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) 2147483647))))

(declare-fun bs!401857 () Bool)

(assert (= bs!401857 d!525622))

(declare-fun m!2116973 () Bool)

(assert (=> bs!401857 m!2116973))

(assert (=> b!1713056 d!525622))

(declare-fun d!525624 () Bool)

(assert (=> d!525624 true))

(declare-fun lambda!68882 () Int)

(declare-fun order!11277 () Int)

(declare-fun dynLambda!8513 (Int Int) Int)

(assert (=> d!525624 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (dynLambda!8513 order!11277 lambda!68882))))

(declare-fun Forall2!552 (Int) Bool)

(assert (=> d!525624 (= (equivClasses!1247 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (Forall2!552 lambda!68882))))

(declare-fun bs!401858 () Bool)

(assert (= bs!401858 d!525624))

(declare-fun m!2116975 () Bool)

(assert (=> bs!401858 m!2116975))

(assert (=> b!1712662 d!525624))

(declare-fun d!525626 () Bool)

(assert (=> d!525626 true))

(declare-fun lt!654662 () Bool)

(assert (=> d!525626 (= lt!654662 (rulesValidInductive!1091 thiss!24550 rules!3447))))

(declare-fun lambda!68885 () Int)

(declare-fun forall!4248 (List!18780 Int) Bool)

(assert (=> d!525626 (= lt!654662 (forall!4248 rules!3447 lambda!68885))))

(assert (=> d!525626 (= (rulesValid!1234 thiss!24550 rules!3447) lt!654662)))

(declare-fun bs!401859 () Bool)

(assert (= bs!401859 d!525626))

(assert (=> bs!401859 m!2116259))

(declare-fun m!2116977 () Bool)

(assert (=> bs!401859 m!2116977))

(assert (=> d!525358 d!525626))

(declare-fun d!525628 () Bool)

(assert (=> d!525628 (= (inv!24124 (tag!3604 (h!24111 (t!158393 rules!3447)))) (= (mod (str.len (value!103894 (tag!3604 (h!24111 (t!158393 rules!3447))))) 2) 0))))

(assert (=> b!1713042 d!525628))

(declare-fun d!525630 () Bool)

(declare-fun res!768161 () Bool)

(declare-fun e!1095703 () Bool)

(assert (=> d!525630 (=> (not res!768161) (not e!1095703))))

(assert (=> d!525630 (= res!768161 (semiInverseModEq!1306 (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toValue!4809 (transformation!3306 (h!24111 (t!158393 rules!3447))))))))

(assert (=> d!525630 (= (inv!24127 (transformation!3306 (h!24111 (t!158393 rules!3447)))) e!1095703)))

(declare-fun b!1713282 () Bool)

(assert (=> b!1713282 (= e!1095703 (equivClasses!1247 (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toValue!4809 (transformation!3306 (h!24111 (t!158393 rules!3447))))))))

(assert (= (and d!525630 res!768161) b!1713282))

(declare-fun m!2116979 () Bool)

(assert (=> d!525630 m!2116979))

(declare-fun m!2116981 () Bool)

(assert (=> b!1713282 m!2116981))

(assert (=> b!1713042 d!525630))

(declare-fun d!525632 () Bool)

(declare-fun e!1095708 () Bool)

(assert (=> d!525632 e!1095708))

(declare-fun c!280677 () Bool)

(assert (=> d!525632 (= c!280677 (is-EmptyExpr!4634 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))

(declare-fun lt!654663 () Bool)

(declare-fun e!1095704 () Bool)

(assert (=> d!525632 (= lt!654663 e!1095704)))

(declare-fun c!280675 () Bool)

(assert (=> d!525632 (= c!280675 (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(assert (=> d!525632 (validRegex!1867 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(assert (=> d!525632 (= (matchR!2108 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) lt!654663)))

(declare-fun b!1713283 () Bool)

(assert (=> b!1713283 (= e!1095704 (nullable!1393 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))

(declare-fun b!1713284 () Bool)

(declare-fun res!768167 () Bool)

(declare-fun e!1095710 () Bool)

(assert (=> b!1713284 (=> res!768167 e!1095710)))

(assert (=> b!1713284 (= res!768167 (not (is-ElementMatch!4634 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))))

(declare-fun e!1095707 () Bool)

(assert (=> b!1713284 (= e!1095707 e!1095710)))

(declare-fun b!1713285 () Bool)

(declare-fun res!768168 () Bool)

(declare-fun e!1095705 () Bool)

(assert (=> b!1713285 (=> res!768168 e!1095705)))

(assert (=> b!1713285 (= res!768168 (not (isEmpty!11754 (tail!2556 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))))

(declare-fun b!1713286 () Bool)

(declare-fun e!1095706 () Bool)

(assert (=> b!1713286 (= e!1095710 e!1095706)))

(declare-fun res!768162 () Bool)

(assert (=> b!1713286 (=> (not res!768162) (not e!1095706))))

(assert (=> b!1713286 (= res!768162 (not lt!654663))))

(declare-fun b!1713287 () Bool)

(declare-fun res!768164 () Bool)

(assert (=> b!1713287 (=> res!768164 e!1095710)))

(declare-fun e!1095709 () Bool)

(assert (=> b!1713287 (= res!768164 e!1095709)))

(declare-fun res!768166 () Bool)

(assert (=> b!1713287 (=> (not res!768166) (not e!1095709))))

(assert (=> b!1713287 (= res!768166 lt!654663)))

(declare-fun b!1713288 () Bool)

(declare-fun res!768169 () Bool)

(assert (=> b!1713288 (=> (not res!768169) (not e!1095709))))

(declare-fun call!109527 () Bool)

(assert (=> b!1713288 (= res!768169 (not call!109527))))

(declare-fun b!1713289 () Bool)

(assert (=> b!1713289 (= e!1095708 e!1095707)))

(declare-fun c!280676 () Bool)

(assert (=> b!1713289 (= c!280676 (is-EmptyLang!4634 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))

(declare-fun b!1713290 () Bool)

(assert (=> b!1713290 (= e!1095707 (not lt!654663))))

(declare-fun b!1713291 () Bool)

(declare-fun res!768163 () Bool)

(assert (=> b!1713291 (=> (not res!768163) (not e!1095709))))

(assert (=> b!1713291 (= res!768163 (isEmpty!11754 (tail!2556 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))

(declare-fun b!1713292 () Bool)

(assert (=> b!1713292 (= e!1095709 (= (head!3845 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) (c!280547 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))))

(declare-fun b!1713293 () Bool)

(assert (=> b!1713293 (= e!1095705 (not (= (head!3845 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) (c!280547 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))))

(declare-fun b!1713294 () Bool)

(assert (=> b!1713294 (= e!1095706 e!1095705)))

(declare-fun res!768165 () Bool)

(assert (=> b!1713294 (=> res!768165 e!1095705)))

(assert (=> b!1713294 (= res!768165 call!109527)))

(declare-fun b!1713295 () Bool)

(assert (=> b!1713295 (= e!1095708 (= lt!654663 call!109527))))

(declare-fun bm!109522 () Bool)

(assert (=> bm!109522 (= call!109527 (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(declare-fun b!1713296 () Bool)

(assert (=> b!1713296 (= e!1095704 (matchR!2108 (derivativeStep!1161 (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) (head!3845 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))) (tail!2556 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))

(assert (= (and d!525632 c!280675) b!1713283))

(assert (= (and d!525632 (not c!280675)) b!1713296))

(assert (= (and d!525632 c!280677) b!1713295))

(assert (= (and d!525632 (not c!280677)) b!1713289))

(assert (= (and b!1713289 c!280676) b!1713290))

(assert (= (and b!1713289 (not c!280676)) b!1713284))

(assert (= (and b!1713284 (not res!768167)) b!1713287))

(assert (= (and b!1713287 res!768166) b!1713288))

(assert (= (and b!1713288 res!768169) b!1713291))

(assert (= (and b!1713291 res!768163) b!1713292))

(assert (= (and b!1713287 (not res!768164)) b!1713286))

(assert (= (and b!1713286 res!768162) b!1713294))

(assert (= (and b!1713294 (not res!768165)) b!1713285))

(assert (= (and b!1713285 (not res!768168)) b!1713293))

(assert (= (or b!1713295 b!1713288 b!1713294) bm!109522))

(assert (=> b!1713292 m!2116619))

(declare-fun m!2116983 () Bool)

(assert (=> b!1713292 m!2116983))

(assert (=> b!1713293 m!2116619))

(assert (=> b!1713293 m!2116983))

(assert (=> b!1713291 m!2116619))

(declare-fun m!2116985 () Bool)

(assert (=> b!1713291 m!2116985))

(assert (=> b!1713291 m!2116985))

(declare-fun m!2116987 () Bool)

(assert (=> b!1713291 m!2116987))

(assert (=> b!1713285 m!2116619))

(assert (=> b!1713285 m!2116985))

(assert (=> b!1713285 m!2116985))

(assert (=> b!1713285 m!2116987))

(assert (=> b!1713296 m!2116619))

(assert (=> b!1713296 m!2116983))

(assert (=> b!1713296 m!2116623))

(assert (=> b!1713296 m!2116983))

(declare-fun m!2116989 () Bool)

(assert (=> b!1713296 m!2116989))

(assert (=> b!1713296 m!2116619))

(assert (=> b!1713296 m!2116985))

(assert (=> b!1713296 m!2116989))

(assert (=> b!1713296 m!2116985))

(declare-fun m!2116991 () Bool)

(assert (=> b!1713296 m!2116991))

(assert (=> bm!109522 m!2116619))

(assert (=> bm!109522 m!2116621))

(assert (=> b!1713283 m!2116623))

(declare-fun m!2116993 () Bool)

(assert (=> b!1713283 m!2116993))

(assert (=> d!525632 m!2116619))

(assert (=> d!525632 m!2116621))

(assert (=> d!525632 m!2116623))

(declare-fun m!2116995 () Bool)

(assert (=> d!525632 m!2116995))

(assert (=> b!1713004 d!525632))

(declare-fun b!1713317 () Bool)

(declare-fun e!1095725 () Regex!4634)

(declare-fun call!109537 () Regex!4634)

(assert (=> b!1713317 (= e!1095725 (Concat!8031 call!109537 (regex!3306 lt!654335)))))

(declare-fun b!1713318 () Bool)

(declare-fun e!1095724 () Regex!4634)

(assert (=> b!1713318 (= e!1095724 (ite (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (c!280547 (regex!3306 lt!654335))) EmptyExpr!4634 EmptyLang!4634))))

(declare-fun bm!109531 () Bool)

(declare-fun c!280690 () Bool)

(declare-fun c!280689 () Bool)

(declare-fun c!280692 () Bool)

(declare-fun call!109538 () Regex!4634)

(assert (=> bm!109531 (= call!109538 (derivativeStep!1161 (ite c!280689 (regTwo!9781 (regex!3306 lt!654335)) (ite c!280690 (reg!4963 (regex!3306 lt!654335)) (ite c!280692 (regTwo!9780 (regex!3306 lt!654335)) (regOne!9780 (regex!3306 lt!654335))))) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(declare-fun b!1713320 () Bool)

(assert (=> b!1713320 (= c!280689 (is-Union!4634 (regex!3306 lt!654335)))))

(declare-fun e!1095722 () Regex!4634)

(assert (=> b!1713320 (= e!1095724 e!1095722)))

(declare-fun b!1713321 () Bool)

(assert (=> b!1713321 (= e!1095722 e!1095725)))

(assert (=> b!1713321 (= c!280690 (is-Star!4634 (regex!3306 lt!654335)))))

(declare-fun e!1095723 () Regex!4634)

(declare-fun call!109536 () Regex!4634)

(declare-fun call!109539 () Regex!4634)

(declare-fun b!1713322 () Bool)

(assert (=> b!1713322 (= e!1095723 (Union!4634 (Concat!8031 call!109536 (regTwo!9780 (regex!3306 lt!654335))) call!109539))))

(declare-fun bm!109532 () Bool)

(assert (=> bm!109532 (= call!109539 call!109537)))

(declare-fun bm!109533 () Bool)

(assert (=> bm!109533 (= call!109536 (derivativeStep!1161 (ite c!280689 (regOne!9781 (regex!3306 lt!654335)) (regOne!9780 (regex!3306 lt!654335))) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(declare-fun b!1713323 () Bool)

(assert (=> b!1713323 (= c!280692 (nullable!1393 (regOne!9780 (regex!3306 lt!654335))))))

(assert (=> b!1713323 (= e!1095725 e!1095723)))

(declare-fun b!1713324 () Bool)

(assert (=> b!1713324 (= e!1095723 (Union!4634 (Concat!8031 call!109539 (regTwo!9780 (regex!3306 lt!654335))) EmptyLang!4634))))

(declare-fun b!1713325 () Bool)

(assert (=> b!1713325 (= e!1095722 (Union!4634 call!109536 call!109538))))

(declare-fun b!1713319 () Bool)

(declare-fun e!1095721 () Regex!4634)

(assert (=> b!1713319 (= e!1095721 e!1095724)))

(declare-fun c!280688 () Bool)

(assert (=> b!1713319 (= c!280688 (is-ElementMatch!4634 (regex!3306 lt!654335)))))

(declare-fun d!525634 () Bool)

(declare-fun lt!654666 () Regex!4634)

(assert (=> d!525634 (validRegex!1867 lt!654666)))

(assert (=> d!525634 (= lt!654666 e!1095721)))

(declare-fun c!280691 () Bool)

(assert (=> d!525634 (= c!280691 (or (is-EmptyExpr!4634 (regex!3306 lt!654335)) (is-EmptyLang!4634 (regex!3306 lt!654335))))))

(assert (=> d!525634 (validRegex!1867 (regex!3306 lt!654335))))

(assert (=> d!525634 (= (derivativeStep!1161 (regex!3306 lt!654335) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) lt!654666)))

(declare-fun bm!109534 () Bool)

(assert (=> bm!109534 (= call!109537 call!109538)))

(declare-fun b!1713326 () Bool)

(assert (=> b!1713326 (= e!1095721 EmptyLang!4634)))

(assert (= (and d!525634 c!280691) b!1713326))

(assert (= (and d!525634 (not c!280691)) b!1713319))

(assert (= (and b!1713319 c!280688) b!1713318))

(assert (= (and b!1713319 (not c!280688)) b!1713320))

(assert (= (and b!1713320 c!280689) b!1713325))

(assert (= (and b!1713320 (not c!280689)) b!1713321))

(assert (= (and b!1713321 c!280690) b!1713317))

(assert (= (and b!1713321 (not c!280690)) b!1713323))

(assert (= (and b!1713323 c!280692) b!1713322))

(assert (= (and b!1713323 (not c!280692)) b!1713324))

(assert (= (or b!1713322 b!1713324) bm!109532))

(assert (= (or b!1713317 bm!109532) bm!109534))

(assert (= (or b!1713325 bm!109534) bm!109531))

(assert (= (or b!1713325 b!1713322) bm!109533))

(assert (=> bm!109531 m!2116617))

(declare-fun m!2116997 () Bool)

(assert (=> bm!109531 m!2116997))

(assert (=> bm!109533 m!2116617))

(declare-fun m!2116999 () Bool)

(assert (=> bm!109533 m!2116999))

(declare-fun m!2117001 () Bool)

(assert (=> b!1713323 m!2117001))

(declare-fun m!2117003 () Bool)

(assert (=> d!525634 m!2117003))

(assert (=> d!525634 m!2116631))

(assert (=> b!1713004 d!525634))

(assert (=> b!1713004 d!525580))

(declare-fun d!525636 () Bool)

(assert (=> d!525636 (= (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (t!158392 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(assert (=> b!1713004 d!525636))

(declare-fun d!525638 () Bool)

(declare-fun res!768170 () Bool)

(declare-fun e!1095726 () Bool)

(assert (=> d!525638 (=> (not res!768170) (not e!1095726))))

(assert (=> d!525638 (= res!768170 (rulesValid!1234 thiss!24550 (t!158393 rules!3447)))))

(assert (=> d!525638 (= (rulesInvariant!2604 thiss!24550 (t!158393 rules!3447)) e!1095726)))

(declare-fun b!1713327 () Bool)

(assert (=> b!1713327 (= e!1095726 (noDuplicateTag!1234 thiss!24550 (t!158393 rules!3447) Nil!18714))))

(assert (= (and d!525638 res!768170) b!1713327))

(declare-fun m!2117005 () Bool)

(assert (=> d!525638 m!2117005))

(declare-fun m!2117007 () Bool)

(assert (=> b!1713327 m!2117007))

(assert (=> b!1712967 d!525638))

(declare-fun d!525640 () Bool)

(assert (=> d!525640 (rulesInvariant!2604 thiss!24550 (t!158393 rules!3447))))

(declare-fun lt!654669 () Unit!32536)

(declare-fun choose!10400 (LexerInterface!2935 Rule!6412 List!18780) Unit!32536)

(assert (=> d!525640 (= lt!654669 (choose!10400 thiss!24550 (h!24111 rules!3447) (t!158393 rules!3447)))))

(assert (=> d!525640 (rulesInvariant!2604 thiss!24550 (Cons!18710 (h!24111 rules!3447) (t!158393 rules!3447)))))

(assert (=> d!525640 (= (lemmaInvariantOnRulesThenOnTail!121 thiss!24550 (h!24111 rules!3447) (t!158393 rules!3447)) lt!654669)))

(declare-fun bs!401860 () Bool)

(assert (= bs!401860 d!525640))

(assert (=> bs!401860 m!2116547))

(declare-fun m!2117009 () Bool)

(assert (=> bs!401860 m!2117009))

(declare-fun m!2117011 () Bool)

(assert (=> bs!401860 m!2117011))

(assert (=> b!1712967 d!525640))

(declare-fun b!1713328 () Bool)

(declare-fun e!1095729 () Bool)

(declare-fun lt!654671 () Option!3637)

(assert (=> b!1713328 (= e!1095729 (= (tag!3604 (get!5508 lt!654671)) (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun d!525642 () Bool)

(declare-fun e!1095727 () Bool)

(assert (=> d!525642 e!1095727))

(declare-fun res!768172 () Bool)

(assert (=> d!525642 (=> res!768172 e!1095727)))

(assert (=> d!525642 (= res!768172 (isEmpty!11758 lt!654671))))

(declare-fun e!1095728 () Option!3637)

(assert (=> d!525642 (= lt!654671 e!1095728)))

(declare-fun c!280694 () Bool)

(assert (=> d!525642 (= c!280694 (and (is-Cons!18710 (t!158393 rules!3447)) (= (tag!3604 (h!24111 (t!158393 rules!3447))) (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))

(assert (=> d!525642 (rulesInvariant!2604 thiss!24550 (t!158393 rules!3447))))

(assert (=> d!525642 (= (getRuleFromTag!356 thiss!24550 (t!158393 rules!3447) (tag!3604 (rule!5242 (_1!10612 lt!654328)))) lt!654671)))

(declare-fun b!1713329 () Bool)

(declare-fun e!1095730 () Option!3637)

(assert (=> b!1713329 (= e!1095728 e!1095730)))

(declare-fun c!280693 () Bool)

(assert (=> b!1713329 (= c!280693 (and (is-Cons!18710 (t!158393 rules!3447)) (not (= (tag!3604 (h!24111 (t!158393 rules!3447))) (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))

(declare-fun b!1713330 () Bool)

(assert (=> b!1713330 (= e!1095727 e!1095729)))

(declare-fun res!768171 () Bool)

(assert (=> b!1713330 (=> (not res!768171) (not e!1095729))))

(assert (=> b!1713330 (= res!768171 (contains!3326 (t!158393 rules!3447) (get!5508 lt!654671)))))

(declare-fun b!1713331 () Bool)

(assert (=> b!1713331 (= e!1095730 None!3636)))

(declare-fun b!1713332 () Bool)

(assert (=> b!1713332 (= e!1095728 (Some!3636 (h!24111 (t!158393 rules!3447))))))

(declare-fun b!1713333 () Bool)

(declare-fun lt!654672 () Unit!32536)

(declare-fun lt!654670 () Unit!32536)

(assert (=> b!1713333 (= lt!654672 lt!654670)))

(assert (=> b!1713333 (rulesInvariant!2604 thiss!24550 (t!158393 (t!158393 rules!3447)))))

(assert (=> b!1713333 (= lt!654670 (lemmaInvariantOnRulesThenOnTail!121 thiss!24550 (h!24111 (t!158393 rules!3447)) (t!158393 (t!158393 rules!3447))))))

(assert (=> b!1713333 (= e!1095730 (getRuleFromTag!356 thiss!24550 (t!158393 (t!158393 rules!3447)) (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))

(assert (= (and d!525642 c!280694) b!1713332))

(assert (= (and d!525642 (not c!280694)) b!1713329))

(assert (= (and b!1713329 c!280693) b!1713333))

(assert (= (and b!1713329 (not c!280693)) b!1713331))

(assert (= (and d!525642 (not res!768172)) b!1713330))

(assert (= (and b!1713330 res!768171) b!1713328))

(declare-fun m!2117013 () Bool)

(assert (=> b!1713328 m!2117013))

(declare-fun m!2117015 () Bool)

(assert (=> d!525642 m!2117015))

(assert (=> d!525642 m!2116547))

(assert (=> b!1713330 m!2117013))

(assert (=> b!1713330 m!2117013))

(declare-fun m!2117017 () Bool)

(assert (=> b!1713330 m!2117017))

(declare-fun m!2117019 () Bool)

(assert (=> b!1713333 m!2117019))

(declare-fun m!2117021 () Bool)

(assert (=> b!1713333 m!2117021))

(declare-fun m!2117023 () Bool)

(assert (=> b!1713333 m!2117023))

(assert (=> b!1712967 d!525642))

(assert (=> b!1712756 d!525516))

(assert (=> b!1712756 d!525442))

(declare-fun d!525644 () Bool)

(assert (=> d!525644 (= (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))) (v!25027 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))

(assert (=> b!1712756 d!525644))

(declare-fun d!525646 () Bool)

(declare-fun e!1095735 () Bool)

(assert (=> d!525646 e!1095735))

(declare-fun c!280697 () Bool)

(assert (=> d!525646 (= c!280697 (is-EmptyExpr!4634 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))))

(declare-fun lt!654673 () Bool)

(declare-fun e!1095731 () Bool)

(assert (=> d!525646 (= lt!654673 e!1095731)))

(declare-fun c!280695 () Bool)

(assert (=> d!525646 (= c!280695 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(assert (=> d!525646 (validRegex!1867 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))

(assert (=> d!525646 (= (matchR!2108 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))) (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) lt!654673)))

(declare-fun b!1713334 () Bool)

(assert (=> b!1713334 (= e!1095731 (nullable!1393 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))))

(declare-fun b!1713335 () Bool)

(declare-fun res!768178 () Bool)

(declare-fun e!1095737 () Bool)

(assert (=> b!1713335 (=> res!768178 e!1095737)))

(assert (=> b!1713335 (= res!768178 (not (is-ElementMatch!4634 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))))

(declare-fun e!1095734 () Bool)

(assert (=> b!1713335 (= e!1095734 e!1095737)))

(declare-fun b!1713336 () Bool)

(declare-fun res!768179 () Bool)

(declare-fun e!1095732 () Bool)

(assert (=> b!1713336 (=> res!768179 e!1095732)))

(assert (=> b!1713336 (= res!768179 (not (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))))

(declare-fun b!1713337 () Bool)

(declare-fun e!1095733 () Bool)

(assert (=> b!1713337 (= e!1095737 e!1095733)))

(declare-fun res!768173 () Bool)

(assert (=> b!1713337 (=> (not res!768173) (not e!1095733))))

(assert (=> b!1713337 (= res!768173 (not lt!654673))))

(declare-fun b!1713338 () Bool)

(declare-fun res!768175 () Bool)

(assert (=> b!1713338 (=> res!768175 e!1095737)))

(declare-fun e!1095736 () Bool)

(assert (=> b!1713338 (= res!768175 e!1095736)))

(declare-fun res!768177 () Bool)

(assert (=> b!1713338 (=> (not res!768177) (not e!1095736))))

(assert (=> b!1713338 (= res!768177 lt!654673)))

(declare-fun b!1713339 () Bool)

(declare-fun res!768180 () Bool)

(assert (=> b!1713339 (=> (not res!768180) (not e!1095736))))

(declare-fun call!109540 () Bool)

(assert (=> b!1713339 (= res!768180 (not call!109540))))

(declare-fun b!1713340 () Bool)

(assert (=> b!1713340 (= e!1095735 e!1095734)))

(declare-fun c!280696 () Bool)

(assert (=> b!1713340 (= c!280696 (is-EmptyLang!4634 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))))

(declare-fun b!1713341 () Bool)

(assert (=> b!1713341 (= e!1095734 (not lt!654673))))

(declare-fun b!1713342 () Bool)

(declare-fun res!768174 () Bool)

(assert (=> b!1713342 (=> (not res!768174) (not e!1095736))))

(assert (=> b!1713342 (= res!768174 (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(declare-fun b!1713343 () Bool)

(assert (=> b!1713343 (= e!1095736 (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (c!280547 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))))

(declare-fun b!1713344 () Bool)

(assert (=> b!1713344 (= e!1095732 (not (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (c!280547 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))))))

(declare-fun b!1713345 () Bool)

(assert (=> b!1713345 (= e!1095733 e!1095732)))

(declare-fun res!768176 () Bool)

(assert (=> b!1713345 (=> res!768176 e!1095732)))

(assert (=> b!1713345 (= res!768176 call!109540)))

(declare-fun b!1713346 () Bool)

(assert (=> b!1713346 (= e!1095735 (= lt!654673 call!109540))))

(declare-fun bm!109535 () Bool)

(assert (=> bm!109535 (= call!109540 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(declare-fun b!1713347 () Bool)

(assert (=> b!1713347 (= e!1095731 (matchR!2108 (derivativeStep!1161 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))) (head!3845 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(assert (= (and d!525646 c!280695) b!1713334))

(assert (= (and d!525646 (not c!280695)) b!1713347))

(assert (= (and d!525646 c!280697) b!1713346))

(assert (= (and d!525646 (not c!280697)) b!1713340))

(assert (= (and b!1713340 c!280696) b!1713341))

(assert (= (and b!1713340 (not c!280696)) b!1713335))

(assert (= (and b!1713335 (not res!768178)) b!1713338))

(assert (= (and b!1713338 res!768177) b!1713339))

(assert (= (and b!1713339 res!768180) b!1713342))

(assert (= (and b!1713342 res!768174) b!1713343))

(assert (= (and b!1713338 (not res!768175)) b!1713337))

(assert (= (and b!1713337 res!768173) b!1713345))

(assert (= (and b!1713345 (not res!768176)) b!1713336))

(assert (= (and b!1713336 (not res!768179)) b!1713344))

(assert (= (or b!1713346 b!1713339 b!1713345) bm!109535))

(assert (=> b!1713343 m!2115939))

(assert (=> b!1713343 m!2116617))

(assert (=> b!1713344 m!2115939))

(assert (=> b!1713344 m!2116617))

(assert (=> b!1713342 m!2115939))

(assert (=> b!1713342 m!2116619))

(assert (=> b!1713342 m!2116619))

(assert (=> b!1713342 m!2116621))

(assert (=> b!1713336 m!2115939))

(assert (=> b!1713336 m!2116619))

(assert (=> b!1713336 m!2116619))

(assert (=> b!1713336 m!2116621))

(assert (=> b!1713347 m!2115939))

(assert (=> b!1713347 m!2116617))

(assert (=> b!1713347 m!2116617))

(declare-fun m!2117025 () Bool)

(assert (=> b!1713347 m!2117025))

(assert (=> b!1713347 m!2115939))

(assert (=> b!1713347 m!2116619))

(assert (=> b!1713347 m!2117025))

(assert (=> b!1713347 m!2116619))

(declare-fun m!2117027 () Bool)

(assert (=> b!1713347 m!2117027))

(assert (=> bm!109535 m!2115939))

(assert (=> bm!109535 m!2116627))

(declare-fun m!2117029 () Bool)

(assert (=> b!1713334 m!2117029))

(assert (=> d!525646 m!2115939))

(assert (=> d!525646 m!2116627))

(declare-fun m!2117031 () Bool)

(assert (=> d!525646 m!2117031))

(assert (=> b!1712756 d!525646))

(assert (=> b!1712756 d!525496))

(declare-fun d!525648 () Bool)

(assert (=> d!525648 (= (nullable!1393 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (nullableFct!324 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun bs!401861 () Bool)

(assert (= bs!401861 d!525648))

(declare-fun m!2117033 () Bool)

(assert (=> bs!401861 m!2117033))

(assert (=> b!1712624 d!525648))

(assert (=> d!525366 d!525564))

(declare-fun b!1713366 () Bool)

(declare-fun e!1095753 () Bool)

(declare-fun e!1095754 () Bool)

(assert (=> b!1713366 (= e!1095753 e!1095754)))

(declare-fun c!280702 () Bool)

(assert (=> b!1713366 (= c!280702 (is-Union!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun b!1713367 () Bool)

(declare-fun e!1095752 () Bool)

(declare-fun call!109547 () Bool)

(assert (=> b!1713367 (= e!1095752 call!109547)))

(declare-fun b!1713368 () Bool)

(declare-fun e!1095756 () Bool)

(declare-fun call!109549 () Bool)

(assert (=> b!1713368 (= e!1095756 call!109549)))

(declare-fun bm!109542 () Bool)

(declare-fun c!280703 () Bool)

(assert (=> bm!109542 (= call!109549 (validRegex!1867 (ite c!280703 (reg!4963 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (ite c!280702 (regOne!9781 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (regTwo!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))))))

(declare-fun b!1713369 () Bool)

(declare-fun e!1095755 () Bool)

(declare-fun e!1095757 () Bool)

(assert (=> b!1713369 (= e!1095755 e!1095757)))

(declare-fun res!768194 () Bool)

(assert (=> b!1713369 (=> (not res!768194) (not e!1095757))))

(assert (=> b!1713369 (= res!768194 call!109547)))

(declare-fun bm!109543 () Bool)

(declare-fun call!109548 () Bool)

(assert (=> bm!109543 (= call!109548 call!109549)))

(declare-fun d!525650 () Bool)

(declare-fun res!768193 () Bool)

(declare-fun e!1095758 () Bool)

(assert (=> d!525650 (=> res!768193 e!1095758)))

(assert (=> d!525650 (= res!768193 (is-ElementMatch!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(assert (=> d!525650 (= (validRegex!1867 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) e!1095758)))

(declare-fun bm!109544 () Bool)

(assert (=> bm!109544 (= call!109547 (validRegex!1867 (ite c!280702 (regTwo!9781 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (regOne!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))))

(declare-fun b!1713370 () Bool)

(declare-fun res!768195 () Bool)

(assert (=> b!1713370 (=> (not res!768195) (not e!1095752))))

(assert (=> b!1713370 (= res!768195 call!109548)))

(assert (=> b!1713370 (= e!1095754 e!1095752)))

(declare-fun b!1713371 () Bool)

(assert (=> b!1713371 (= e!1095757 call!109548)))

(declare-fun b!1713372 () Bool)

(assert (=> b!1713372 (= e!1095753 e!1095756)))

(declare-fun res!768192 () Bool)

(assert (=> b!1713372 (= res!768192 (not (nullable!1393 (reg!4963 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))))

(assert (=> b!1713372 (=> (not res!768192) (not e!1095756))))

(declare-fun b!1713373 () Bool)

(assert (=> b!1713373 (= e!1095758 e!1095753)))

(assert (=> b!1713373 (= c!280703 (is-Star!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun b!1713374 () Bool)

(declare-fun res!768191 () Bool)

(assert (=> b!1713374 (=> res!768191 e!1095755)))

(assert (=> b!1713374 (= res!768191 (not (is-Concat!8031 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))))

(assert (=> b!1713374 (= e!1095754 e!1095755)))

(assert (= (and d!525650 (not res!768193)) b!1713373))

(assert (= (and b!1713373 c!280703) b!1713372))

(assert (= (and b!1713373 (not c!280703)) b!1713366))

(assert (= (and b!1713372 res!768192) b!1713368))

(assert (= (and b!1713366 c!280702) b!1713370))

(assert (= (and b!1713366 (not c!280702)) b!1713374))

(assert (= (and b!1713370 res!768195) b!1713367))

(assert (= (and b!1713374 (not res!768191)) b!1713369))

(assert (= (and b!1713369 res!768194) b!1713371))

(assert (= (or b!1713370 b!1713371) bm!109543))

(assert (= (or b!1713367 b!1713369) bm!109544))

(assert (= (or b!1713368 bm!109543) bm!109542))

(declare-fun m!2117035 () Bool)

(assert (=> bm!109542 m!2117035))

(declare-fun m!2117037 () Bool)

(assert (=> bm!109544 m!2117037))

(declare-fun m!2117039 () Bool)

(assert (=> b!1713372 m!2117039))

(assert (=> d!525366 d!525650))

(declare-fun d!525652 () Bool)

(declare-fun c!280704 () Bool)

(assert (=> d!525652 (= c!280704 (isEmpty!11754 (tail!2556 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(declare-fun e!1095759 () Bool)

(assert (=> d!525652 (= (prefixMatch!519 (derivativeStep!1161 (rulesRegex!664 thiss!24550 rules!3447) (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))) (tail!2556 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))) e!1095759)))

(declare-fun b!1713375 () Bool)

(assert (=> b!1713375 (= e!1095759 (not (lostCause!503 (derivativeStep!1161 (rulesRegex!664 thiss!24550 rules!3447) (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))))

(declare-fun b!1713376 () Bool)

(assert (=> b!1713376 (= e!1095759 (prefixMatch!519 (derivativeStep!1161 (derivativeStep!1161 (rulesRegex!664 thiss!24550 rules!3447) (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))) (head!3845 (tail!2556 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))) (tail!2556 (tail!2556 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))))

(assert (= (and d!525652 c!280704) b!1713375))

(assert (= (and d!525652 (not c!280704)) b!1713376))

(assert (=> d!525652 m!2116175))

(declare-fun m!2117041 () Bool)

(assert (=> d!525652 m!2117041))

(assert (=> b!1713375 m!2116173))

(declare-fun m!2117043 () Bool)

(assert (=> b!1713375 m!2117043))

(assert (=> b!1713376 m!2116175))

(declare-fun m!2117045 () Bool)

(assert (=> b!1713376 m!2117045))

(assert (=> b!1713376 m!2116173))

(assert (=> b!1713376 m!2117045))

(declare-fun m!2117047 () Bool)

(assert (=> b!1713376 m!2117047))

(assert (=> b!1713376 m!2116175))

(declare-fun m!2117049 () Bool)

(assert (=> b!1713376 m!2117049))

(assert (=> b!1713376 m!2117047))

(assert (=> b!1713376 m!2117049))

(declare-fun m!2117051 () Bool)

(assert (=> b!1713376 m!2117051))

(assert (=> b!1712668 d!525652))

(declare-fun b!1713377 () Bool)

(declare-fun call!109551 () Regex!4634)

(declare-fun e!1095764 () Regex!4634)

(assert (=> b!1713377 (= e!1095764 (Concat!8031 call!109551 (rulesRegex!664 thiss!24550 rules!3447)))))

(declare-fun b!1713378 () Bool)

(declare-fun e!1095763 () Regex!4634)

(assert (=> b!1713378 (= e!1095763 (ite (= (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))) (c!280547 (rulesRegex!664 thiss!24550 rules!3447))) EmptyExpr!4634 EmptyLang!4634))))

(declare-fun c!280709 () Bool)

(declare-fun call!109552 () Regex!4634)

(declare-fun c!280707 () Bool)

(declare-fun c!280706 () Bool)

(declare-fun bm!109545 () Bool)

(assert (=> bm!109545 (= call!109552 (derivativeStep!1161 (ite c!280706 (regTwo!9781 (rulesRegex!664 thiss!24550 rules!3447)) (ite c!280707 (reg!4963 (rulesRegex!664 thiss!24550 rules!3447)) (ite c!280709 (regTwo!9780 (rulesRegex!664 thiss!24550 rules!3447)) (regOne!9780 (rulesRegex!664 thiss!24550 rules!3447))))) (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(declare-fun b!1713380 () Bool)

(assert (=> b!1713380 (= c!280706 (is-Union!4634 (rulesRegex!664 thiss!24550 rules!3447)))))

(declare-fun e!1095761 () Regex!4634)

(assert (=> b!1713380 (= e!1095763 e!1095761)))

(declare-fun b!1713381 () Bool)

(assert (=> b!1713381 (= e!1095761 e!1095764)))

(assert (=> b!1713381 (= c!280707 (is-Star!4634 (rulesRegex!664 thiss!24550 rules!3447)))))

(declare-fun e!1095762 () Regex!4634)

(declare-fun call!109550 () Regex!4634)

(declare-fun b!1713382 () Bool)

(declare-fun call!109553 () Regex!4634)

(assert (=> b!1713382 (= e!1095762 (Union!4634 (Concat!8031 call!109550 (regTwo!9780 (rulesRegex!664 thiss!24550 rules!3447))) call!109553))))

(declare-fun bm!109546 () Bool)

(assert (=> bm!109546 (= call!109553 call!109551)))

(declare-fun bm!109547 () Bool)

(assert (=> bm!109547 (= call!109550 (derivativeStep!1161 (ite c!280706 (regOne!9781 (rulesRegex!664 thiss!24550 rules!3447)) (regOne!9780 (rulesRegex!664 thiss!24550 rules!3447))) (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(declare-fun b!1713383 () Bool)

(assert (=> b!1713383 (= c!280709 (nullable!1393 (regOne!9780 (rulesRegex!664 thiss!24550 rules!3447))))))

(assert (=> b!1713383 (= e!1095764 e!1095762)))

(declare-fun b!1713384 () Bool)

(assert (=> b!1713384 (= e!1095762 (Union!4634 (Concat!8031 call!109553 (regTwo!9780 (rulesRegex!664 thiss!24550 rules!3447))) EmptyLang!4634))))

(declare-fun b!1713385 () Bool)

(assert (=> b!1713385 (= e!1095761 (Union!4634 call!109550 call!109552))))

(declare-fun b!1713379 () Bool)

(declare-fun e!1095760 () Regex!4634)

(assert (=> b!1713379 (= e!1095760 e!1095763)))

(declare-fun c!280705 () Bool)

(assert (=> b!1713379 (= c!280705 (is-ElementMatch!4634 (rulesRegex!664 thiss!24550 rules!3447)))))

(declare-fun d!525654 () Bool)

(declare-fun lt!654674 () Regex!4634)

(assert (=> d!525654 (validRegex!1867 lt!654674)))

(assert (=> d!525654 (= lt!654674 e!1095760)))

(declare-fun c!280708 () Bool)

(assert (=> d!525654 (= c!280708 (or (is-EmptyExpr!4634 (rulesRegex!664 thiss!24550 rules!3447)) (is-EmptyLang!4634 (rulesRegex!664 thiss!24550 rules!3447))))))

(assert (=> d!525654 (validRegex!1867 (rulesRegex!664 thiss!24550 rules!3447))))

(assert (=> d!525654 (= (derivativeStep!1161 (rulesRegex!664 thiss!24550 rules!3447) (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))) lt!654674)))

(declare-fun bm!109548 () Bool)

(assert (=> bm!109548 (= call!109551 call!109552)))

(declare-fun b!1713386 () Bool)

(assert (=> b!1713386 (= e!1095760 EmptyLang!4634)))

(assert (= (and d!525654 c!280708) b!1713386))

(assert (= (and d!525654 (not c!280708)) b!1713379))

(assert (= (and b!1713379 c!280705) b!1713378))

(assert (= (and b!1713379 (not c!280705)) b!1713380))

(assert (= (and b!1713380 c!280706) b!1713385))

(assert (= (and b!1713380 (not c!280706)) b!1713381))

(assert (= (and b!1713381 c!280707) b!1713377))

(assert (= (and b!1713381 (not c!280707)) b!1713383))

(assert (= (and b!1713383 c!280709) b!1713382))

(assert (= (and b!1713383 (not c!280709)) b!1713384))

(assert (= (or b!1713382 b!1713384) bm!109546))

(assert (= (or b!1713377 bm!109546) bm!109548))

(assert (= (or b!1713385 bm!109548) bm!109545))

(assert (= (or b!1713385 b!1713382) bm!109547))

(assert (=> bm!109545 m!2116171))

(declare-fun m!2117053 () Bool)

(assert (=> bm!109545 m!2117053))

(assert (=> bm!109547 m!2116171))

(declare-fun m!2117055 () Bool)

(assert (=> bm!109547 m!2117055))

(declare-fun m!2117057 () Bool)

(assert (=> b!1713383 m!2117057))

(declare-fun m!2117059 () Bool)

(assert (=> d!525654 m!2117059))

(assert (=> d!525654 m!2115949))

(declare-fun m!2117061 () Bool)

(assert (=> d!525654 m!2117061))

(assert (=> b!1712668 d!525654))

(declare-fun d!525656 () Bool)

(assert (=> d!525656 (= (head!3845 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))) (h!24110 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))

(assert (=> b!1712668 d!525656))

(declare-fun d!525658 () Bool)

(assert (=> d!525658 (= (tail!2556 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))) (t!158392 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))

(assert (=> b!1712668 d!525658))

(assert (=> b!1713000 d!525580))

(declare-fun d!525660 () Bool)

(assert (=> d!525660 (= (get!5508 lt!654550) (v!25027 lt!654550))))

(assert (=> b!1712962 d!525660))

(declare-fun d!525662 () Bool)

(declare-fun charsToInt!0 (List!18778) (_ BitVec 32))

(assert (=> d!525662 (= (inv!16 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)) (= (charsToInt!0 (text!24219 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) (value!103886 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))

(declare-fun bs!401862 () Bool)

(assert (= bs!401862 d!525662))

(declare-fun m!2117063 () Bool)

(assert (=> bs!401862 m!2117063))

(assert (=> b!1712697 d!525662))

(declare-fun d!525664 () Bool)

(declare-fun lt!654675 () Int)

(assert (=> d!525664 (>= lt!654675 0)))

(declare-fun e!1095765 () Int)

(assert (=> d!525664 (= lt!654675 e!1095765)))

(declare-fun c!280710 () Bool)

(assert (=> d!525664 (= c!280710 (is-Nil!18709 lt!654427))))

(assert (=> d!525664 (= (size!14871 lt!654427) lt!654675)))

(declare-fun b!1713387 () Bool)

(assert (=> b!1713387 (= e!1095765 0)))

(declare-fun b!1713388 () Bool)

(assert (=> b!1713388 (= e!1095765 (+ 1 (size!14871 (t!158392 lt!654427))))))

(assert (= (and d!525664 c!280710) b!1713387))

(assert (= (and d!525664 (not c!280710)) b!1713388))

(declare-fun m!2117065 () Bool)

(assert (=> b!1713388 m!2117065))

(assert (=> b!1712742 d!525664))

(declare-fun d!525666 () Bool)

(declare-fun lt!654676 () Int)

(assert (=> d!525666 (>= lt!654676 0)))

(declare-fun e!1095766 () Int)

(assert (=> d!525666 (= lt!654676 e!1095766)))

(declare-fun c!280711 () Bool)

(assert (=> d!525666 (= c!280711 (is-Nil!18709 lt!654329))))

(assert (=> d!525666 (= (size!14871 lt!654329) lt!654676)))

(declare-fun b!1713389 () Bool)

(assert (=> b!1713389 (= e!1095766 0)))

(declare-fun b!1713390 () Bool)

(assert (=> b!1713390 (= e!1095766 (+ 1 (size!14871 (t!158392 lt!654329))))))

(assert (= (and d!525666 c!280711) b!1713389))

(assert (= (and d!525666 (not c!280711)) b!1713390))

(declare-fun m!2117067 () Bool)

(assert (=> b!1713390 m!2117067))

(assert (=> b!1712742 d!525666))

(declare-fun d!525668 () Bool)

(declare-fun lt!654677 () Int)

(assert (=> d!525668 (>= lt!654677 0)))

(declare-fun e!1095767 () Int)

(assert (=> d!525668 (= lt!654677 e!1095767)))

(declare-fun c!280712 () Bool)

(assert (=> d!525668 (= c!280712 (is-Nil!18709 (_2!10612 lt!654328)))))

(assert (=> d!525668 (= (size!14871 (_2!10612 lt!654328)) lt!654677)))

(declare-fun b!1713391 () Bool)

(assert (=> b!1713391 (= e!1095767 0)))

(declare-fun b!1713392 () Bool)

(assert (=> b!1713392 (= e!1095767 (+ 1 (size!14871 (t!158392 (_2!10612 lt!654328)))))))

(assert (= (and d!525668 c!280712) b!1713391))

(assert (= (and d!525668 (not c!280712)) b!1713392))

(declare-fun m!2117069 () Bool)

(assert (=> b!1713392 m!2117069))

(assert (=> b!1712742 d!525668))

(declare-fun b!1713395 () Bool)

(declare-fun e!1095769 () List!18779)

(assert (=> b!1713395 (= e!1095769 (list!7557 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(declare-fun b!1713393 () Bool)

(declare-fun e!1095768 () List!18779)

(assert (=> b!1713393 (= e!1095768 Nil!18709)))

(declare-fun b!1713396 () Bool)

(assert (=> b!1713396 (= e!1095769 (++!5131 (list!7553 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) (list!7553 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))))

(declare-fun b!1713394 () Bool)

(assert (=> b!1713394 (= e!1095768 e!1095769)))

(declare-fun c!280714 () Bool)

(assert (=> b!1713394 (= c!280714 (is-Leaf!9096 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))

(declare-fun d!525670 () Bool)

(declare-fun c!280713 () Bool)

(assert (=> d!525670 (= c!280713 (is-Empty!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))

(assert (=> d!525670 (= (list!7553 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) e!1095768)))

(assert (= (and d!525670 c!280713) b!1713393))

(assert (= (and d!525670 (not c!280713)) b!1713394))

(assert (= (and b!1713394 c!280714) b!1713395))

(assert (= (and b!1713394 (not c!280714)) b!1713396))

(declare-fun m!2117071 () Bool)

(assert (=> b!1713395 m!2117071))

(declare-fun m!2117073 () Bool)

(assert (=> b!1713396 m!2117073))

(declare-fun m!2117075 () Bool)

(assert (=> b!1713396 m!2117075))

(assert (=> b!1713396 m!2117073))

(assert (=> b!1713396 m!2117075))

(declare-fun m!2117077 () Bool)

(assert (=> b!1713396 m!2117077))

(assert (=> d!525394 d!525670))

(declare-fun d!525672 () Bool)

(declare-fun res!768196 () Bool)

(declare-fun e!1095770 () Bool)

(assert (=> d!525672 (=> (not res!768196) (not e!1095770))))

(assert (=> d!525672 (= res!768196 (= (csize!12674 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) (+ (size!14874 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) (size!14874 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))))

(assert (=> d!525672 (= (inv!24135 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) e!1095770)))

(declare-fun b!1713397 () Bool)

(declare-fun res!768197 () Bool)

(assert (=> b!1713397 (=> (not res!768197) (not e!1095770))))

(assert (=> b!1713397 (= res!768197 (and (not (= (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) Empty!6222)) (not (= (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) Empty!6222))))))

(declare-fun b!1713398 () Bool)

(declare-fun res!768198 () Bool)

(assert (=> b!1713398 (=> (not res!768198) (not e!1095770))))

(assert (=> b!1713398 (= res!768198 (= (cheight!6433 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) (+ (max!0 (height!1000 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) (height!1000 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) 1)))))

(declare-fun b!1713399 () Bool)

(assert (=> b!1713399 (= e!1095770 (<= 0 (cheight!6433 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(assert (= (and d!525672 res!768196) b!1713397))

(assert (= (and b!1713397 res!768197) b!1713398))

(assert (= (and b!1713398 res!768198) b!1713399))

(declare-fun m!2117079 () Bool)

(assert (=> d!525672 m!2117079))

(declare-fun m!2117081 () Bool)

(assert (=> d!525672 m!2117081))

(declare-fun m!2117083 () Bool)

(assert (=> b!1713398 m!2117083))

(declare-fun m!2117085 () Bool)

(assert (=> b!1713398 m!2117085))

(assert (=> b!1713398 m!2117083))

(assert (=> b!1713398 m!2117085))

(declare-fun m!2117087 () Bool)

(assert (=> b!1713398 m!2117087))

(assert (=> b!1712972 d!525672))

(declare-fun d!525674 () Bool)

(assert (=> d!525674 (= (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))) (list!7553 (c!280548 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))))))

(declare-fun bs!401863 () Bool)

(assert (= bs!401863 d!525674))

(declare-fun m!2117089 () Bool)

(assert (=> bs!401863 m!2117089))

(assert (=> b!1712983 d!525674))

(declare-fun d!525676 () Bool)

(declare-fun lt!654678 () BalanceConc!12388)

(assert (=> d!525676 (= (list!7551 lt!654678) (originalCharacters!4120 (_1!10612 (get!5507 lt!654554))))))

(assert (=> d!525676 (= lt!654678 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))) (value!103895 (_1!10612 (get!5507 lt!654554)))))))

(assert (=> d!525676 (= (charsOf!1955 (_1!10612 (get!5507 lt!654554))) lt!654678)))

(declare-fun b_lambda!54081 () Bool)

(assert (=> (not b_lambda!54081) (not d!525676)))

(declare-fun tb!101107 () Bool)

(declare-fun t!158459 () Bool)

(assert (=> (and b!1712431 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158459) tb!101107))

(declare-fun b!1713400 () Bool)

(declare-fun e!1095771 () Bool)

(declare-fun tp!489510 () Bool)

(assert (=> b!1713400 (= e!1095771 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))) (value!103895 (_1!10612 (get!5507 lt!654554)))))) tp!489510))))

(declare-fun result!121514 () Bool)

(assert (=> tb!101107 (= result!121514 (and (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))) (value!103895 (_1!10612 (get!5507 lt!654554))))) e!1095771))))

(assert (= tb!101107 b!1713400))

(declare-fun m!2117091 () Bool)

(assert (=> b!1713400 m!2117091))

(declare-fun m!2117093 () Bool)

(assert (=> tb!101107 m!2117093))

(assert (=> d!525676 t!158459))

(declare-fun b_and!124153 () Bool)

(assert (= b_and!124145 (and (=> t!158459 result!121514) b_and!124153)))

(declare-fun t!158461 () Bool)

(declare-fun tb!101109 () Bool)

(assert (=> (and b!1712427 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158461) tb!101109))

(declare-fun result!121516 () Bool)

(assert (= result!121516 result!121514))

(assert (=> d!525676 t!158461))

(declare-fun b_and!124155 () Bool)

(assert (= b_and!124147 (and (=> t!158461 result!121516) b_and!124155)))

(declare-fun tb!101111 () Bool)

(declare-fun t!158463 () Bool)

(assert (=> (and b!1712423 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158463) tb!101111))

(declare-fun result!121518 () Bool)

(assert (= result!121518 result!121514))

(assert (=> d!525676 t!158463))

(declare-fun b_and!124157 () Bool)

(assert (= b_and!124149 (and (=> t!158463 result!121518) b_and!124157)))

(declare-fun tb!101113 () Bool)

(declare-fun t!158465 () Bool)

(assert (=> (and b!1713043 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158465) tb!101113))

(declare-fun result!121520 () Bool)

(assert (= result!121520 result!121514))

(assert (=> d!525676 t!158465))

(declare-fun b_and!124159 () Bool)

(assert (= b_and!124151 (and (=> t!158465 result!121520) b_and!124159)))

(declare-fun m!2117095 () Bool)

(assert (=> d!525676 m!2117095))

(declare-fun m!2117097 () Bool)

(assert (=> d!525676 m!2117097))

(assert (=> b!1712983 d!525676))

(assert (=> b!1712983 d!525610))

(declare-fun b!1713401 () Bool)

(declare-fun e!1095773 () Bool)

(declare-fun e!1095774 () Bool)

(assert (=> b!1713401 (= e!1095773 e!1095774)))

(declare-fun c!280715 () Bool)

(assert (=> b!1713401 (= c!280715 (is-Union!4634 (regex!3306 rule!422)))))

(declare-fun b!1713402 () Bool)

(declare-fun e!1095772 () Bool)

(declare-fun call!109554 () Bool)

(assert (=> b!1713402 (= e!1095772 call!109554)))

(declare-fun b!1713403 () Bool)

(declare-fun e!1095776 () Bool)

(declare-fun call!109556 () Bool)

(assert (=> b!1713403 (= e!1095776 call!109556)))

(declare-fun c!280716 () Bool)

(declare-fun bm!109549 () Bool)

(assert (=> bm!109549 (= call!109556 (validRegex!1867 (ite c!280716 (reg!4963 (regex!3306 rule!422)) (ite c!280715 (regOne!9781 (regex!3306 rule!422)) (regTwo!9780 (regex!3306 rule!422))))))))

(declare-fun b!1713404 () Bool)

(declare-fun e!1095775 () Bool)

(declare-fun e!1095777 () Bool)

(assert (=> b!1713404 (= e!1095775 e!1095777)))

(declare-fun res!768202 () Bool)

(assert (=> b!1713404 (=> (not res!768202) (not e!1095777))))

(assert (=> b!1713404 (= res!768202 call!109554)))

(declare-fun bm!109550 () Bool)

(declare-fun call!109555 () Bool)

(assert (=> bm!109550 (= call!109555 call!109556)))

(declare-fun d!525678 () Bool)

(declare-fun res!768201 () Bool)

(declare-fun e!1095778 () Bool)

(assert (=> d!525678 (=> res!768201 e!1095778)))

(assert (=> d!525678 (= res!768201 (is-ElementMatch!4634 (regex!3306 rule!422)))))

(assert (=> d!525678 (= (validRegex!1867 (regex!3306 rule!422)) e!1095778)))

(declare-fun bm!109551 () Bool)

(assert (=> bm!109551 (= call!109554 (validRegex!1867 (ite c!280715 (regTwo!9781 (regex!3306 rule!422)) (regOne!9780 (regex!3306 rule!422)))))))

(declare-fun b!1713405 () Bool)

(declare-fun res!768203 () Bool)

(assert (=> b!1713405 (=> (not res!768203) (not e!1095772))))

(assert (=> b!1713405 (= res!768203 call!109555)))

(assert (=> b!1713405 (= e!1095774 e!1095772)))

(declare-fun b!1713406 () Bool)

(assert (=> b!1713406 (= e!1095777 call!109555)))

(declare-fun b!1713407 () Bool)

(assert (=> b!1713407 (= e!1095773 e!1095776)))

(declare-fun res!768200 () Bool)

(assert (=> b!1713407 (= res!768200 (not (nullable!1393 (reg!4963 (regex!3306 rule!422)))))))

(assert (=> b!1713407 (=> (not res!768200) (not e!1095776))))

(declare-fun b!1713408 () Bool)

(assert (=> b!1713408 (= e!1095778 e!1095773)))

(assert (=> b!1713408 (= c!280716 (is-Star!4634 (regex!3306 rule!422)))))

(declare-fun b!1713409 () Bool)

(declare-fun res!768199 () Bool)

(assert (=> b!1713409 (=> res!768199 e!1095775)))

(assert (=> b!1713409 (= res!768199 (not (is-Concat!8031 (regex!3306 rule!422))))))

(assert (=> b!1713409 (= e!1095774 e!1095775)))

(assert (= (and d!525678 (not res!768201)) b!1713408))

(assert (= (and b!1713408 c!280716) b!1713407))

(assert (= (and b!1713408 (not c!280716)) b!1713401))

(assert (= (and b!1713407 res!768200) b!1713403))

(assert (= (and b!1713401 c!280715) b!1713405))

(assert (= (and b!1713401 (not c!280715)) b!1713409))

(assert (= (and b!1713405 res!768203) b!1713402))

(assert (= (and b!1713409 (not res!768199)) b!1713404))

(assert (= (and b!1713404 res!768202) b!1713406))

(assert (= (or b!1713405 b!1713406) bm!109550))

(assert (= (or b!1713402 b!1713404) bm!109551))

(assert (= (or b!1713403 bm!109550) bm!109549))

(declare-fun m!2117099 () Bool)

(assert (=> bm!109549 m!2117099))

(declare-fun m!2117101 () Bool)

(assert (=> bm!109551 m!2117101))

(declare-fun m!2117103 () Bool)

(assert (=> b!1713407 m!2117103))

(assert (=> d!525350 d!525678))

(declare-fun d!525680 () Bool)

(assert (=> d!525680 (= (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))) (is-Nil!18709 (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(assert (=> bm!109517 d!525680))

(declare-fun d!525682 () Bool)

(assert (=> d!525682 (= (get!5507 lt!654419) (v!25026 lt!654419))))

(assert (=> b!1712737 d!525682))

(declare-fun d!525684 () Bool)

(assert (=> d!525684 (= (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654419))))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654419))))))))

(declare-fun b_lambda!54083 () Bool)

(assert (=> (not b_lambda!54083) (not d!525684)))

(declare-fun t!158467 () Bool)

(declare-fun tb!101115 () Bool)

(assert (=> (and b!1712431 (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158467) tb!101115))

(declare-fun result!121522 () Bool)

(assert (=> tb!101115 (= result!121522 (inv!21 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654419)))))))))

(declare-fun m!2117105 () Bool)

(assert (=> tb!101115 m!2117105))

(assert (=> d!525684 t!158467))

(declare-fun b_and!124161 () Bool)

(assert (= b_and!124083 (and (=> t!158467 result!121522) b_and!124161)))

(declare-fun t!158469 () Bool)

(declare-fun tb!101117 () Bool)

(assert (=> (and b!1712427 (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158469) tb!101117))

(declare-fun result!121524 () Bool)

(assert (= result!121524 result!121522))

(assert (=> d!525684 t!158469))

(declare-fun b_and!124163 () Bool)

(assert (= b_and!124085 (and (=> t!158469 result!121524) b_and!124163)))

(declare-fun t!158471 () Bool)

(declare-fun tb!101119 () Bool)

(assert (=> (and b!1712423 (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158471) tb!101119))

(declare-fun result!121526 () Bool)

(assert (= result!121526 result!121522))

(assert (=> d!525684 t!158471))

(declare-fun b_and!124165 () Bool)

(assert (= b_and!124087 (and (=> t!158471 result!121526) b_and!124165)))

(declare-fun t!158473 () Bool)

(declare-fun tb!101121 () Bool)

(assert (=> (and b!1713043 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158473) tb!101121))

(declare-fun result!121528 () Bool)

(assert (= result!121528 result!121522))

(assert (=> d!525684 t!158473))

(declare-fun b_and!124167 () Bool)

(assert (= b_and!124119 (and (=> t!158473 result!121528) b_and!124167)))

(assert (=> d!525684 m!2116267))

(declare-fun m!2117107 () Bool)

(assert (=> d!525684 m!2117107))

(assert (=> b!1712737 d!525684))

(declare-fun d!525686 () Bool)

(assert (=> d!525686 (= (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654419)))) (fromListB!1048 (originalCharacters!4120 (_1!10612 (get!5507 lt!654419)))))))

(declare-fun bs!401864 () Bool)

(assert (= bs!401864 d!525686))

(declare-fun m!2117109 () Bool)

(assert (=> bs!401864 m!2117109))

(assert (=> b!1712737 d!525686))

(declare-fun d!525688 () Bool)

(assert (=> d!525688 (= (isEmpty!11754 (tail!2556 lt!654329)) (is-Nil!18709 (tail!2556 lt!654329)))))

(assert (=> b!1712632 d!525688))

(declare-fun d!525690 () Bool)

(assert (=> d!525690 (= (tail!2556 lt!654329) (t!158392 lt!654329))))

(assert (=> b!1712632 d!525690))

(declare-fun d!525692 () Bool)

(declare-fun e!1095781 () Bool)

(assert (=> d!525692 e!1095781))

(declare-fun res!768204 () Bool)

(assert (=> d!525692 (=> (not res!768204) (not e!1095781))))

(declare-fun lt!654679 () List!18779)

(assert (=> d!525692 (= res!768204 (= (content!2664 lt!654679) (set.union (content!2664 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))) (content!2664 (_2!10612 (get!5507 lt!654554))))))))

(declare-fun e!1095780 () List!18779)

(assert (=> d!525692 (= lt!654679 e!1095780)))

(declare-fun c!280717 () Bool)

(assert (=> d!525692 (= c!280717 (is-Nil!18709 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))))))

(assert (=> d!525692 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))) (_2!10612 (get!5507 lt!654554))) lt!654679)))

(declare-fun b!1713410 () Bool)

(assert (=> b!1713410 (= e!1095780 (_2!10612 (get!5507 lt!654554)))))

(declare-fun b!1713413 () Bool)

(assert (=> b!1713413 (= e!1095781 (or (not (= (_2!10612 (get!5507 lt!654554)) Nil!18709)) (= lt!654679 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))))))))

(declare-fun b!1713411 () Bool)

(assert (=> b!1713411 (= e!1095780 (Cons!18709 (h!24110 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))) (++!5131 (t!158392 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))) (_2!10612 (get!5507 lt!654554)))))))

(declare-fun b!1713412 () Bool)

(declare-fun res!768205 () Bool)

(assert (=> b!1713412 (=> (not res!768205) (not e!1095781))))

(assert (=> b!1713412 (= res!768205 (= (size!14871 lt!654679) (+ (size!14871 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))) (size!14871 (_2!10612 (get!5507 lt!654554))))))))

(assert (= (and d!525692 c!280717) b!1713410))

(assert (= (and d!525692 (not c!280717)) b!1713411))

(assert (= (and d!525692 res!768204) b!1713412))

(assert (= (and b!1713412 res!768205) b!1713413))

(declare-fun m!2117111 () Bool)

(assert (=> d!525692 m!2117111))

(assert (=> d!525692 m!2116575))

(declare-fun m!2117113 () Bool)

(assert (=> d!525692 m!2117113))

(declare-fun m!2117115 () Bool)

(assert (=> d!525692 m!2117115))

(declare-fun m!2117117 () Bool)

(assert (=> b!1713411 m!2117117))

(declare-fun m!2117119 () Bool)

(assert (=> b!1713412 m!2117119))

(assert (=> b!1713412 m!2116575))

(declare-fun m!2117121 () Bool)

(assert (=> b!1713412 m!2117121))

(assert (=> b!1713412 m!2116587))

(assert (=> b!1712975 d!525692))

(assert (=> b!1712975 d!525674))

(assert (=> b!1712975 d!525676))

(assert (=> b!1712975 d!525610))

(declare-fun d!525694 () Bool)

(assert (=> d!525694 (= (list!7551 lt!654558) (list!7553 (c!280548 lt!654558)))))

(declare-fun bs!401865 () Bool)

(assert (= bs!401865 d!525694))

(declare-fun m!2117123 () Bool)

(assert (=> bs!401865 m!2117123))

(assert (=> d!525508 d!525694))

(declare-fun d!525696 () Bool)

(declare-fun lt!654680 () Bool)

(assert (=> d!525696 (= lt!654680 (set.member (rule!5242 (_1!10612 (get!5507 lt!654419))) (content!2663 rules!3447)))))

(declare-fun e!1095782 () Bool)

(assert (=> d!525696 (= lt!654680 e!1095782)))

(declare-fun res!768207 () Bool)

(assert (=> d!525696 (=> (not res!768207) (not e!1095782))))

(assert (=> d!525696 (= res!768207 (is-Cons!18710 rules!3447))))

(assert (=> d!525696 (= (contains!3326 rules!3447 (rule!5242 (_1!10612 (get!5507 lt!654419)))) lt!654680)))

(declare-fun b!1713414 () Bool)

(declare-fun e!1095783 () Bool)

(assert (=> b!1713414 (= e!1095782 e!1095783)))

(declare-fun res!768206 () Bool)

(assert (=> b!1713414 (=> res!768206 e!1095783)))

(assert (=> b!1713414 (= res!768206 (= (h!24111 rules!3447) (rule!5242 (_1!10612 (get!5507 lt!654419)))))))

(declare-fun b!1713415 () Bool)

(assert (=> b!1713415 (= e!1095783 (contains!3326 (t!158393 rules!3447) (rule!5242 (_1!10612 (get!5507 lt!654419)))))))

(assert (= (and d!525696 res!768207) b!1713414))

(assert (= (and b!1713414 (not res!768206)) b!1713415))

(assert (=> d!525696 m!2116145))

(declare-fun m!2117125 () Bool)

(assert (=> d!525696 m!2117125))

(declare-fun m!2117127 () Bool)

(assert (=> b!1713415 m!2117127))

(assert (=> b!1712733 d!525696))

(assert (=> b!1712733 d!525682))

(declare-fun d!525698 () Bool)

(declare-fun e!1095788 () Bool)

(assert (=> d!525698 e!1095788))

(declare-fun c!280720 () Bool)

(assert (=> d!525698 (= c!280720 (is-EmptyExpr!4634 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))))))

(declare-fun lt!654681 () Bool)

(declare-fun e!1095784 () Bool)

(assert (=> d!525698 (= lt!654681 e!1095784)))

(declare-fun c!280718 () Bool)

(assert (=> d!525698 (= c!280718 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))))))

(assert (=> d!525698 (validRegex!1867 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))))

(assert (=> d!525698 (= (matchR!2108 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))) lt!654681)))

(declare-fun b!1713416 () Bool)

(assert (=> b!1713416 (= e!1095784 (nullable!1393 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))))))

(declare-fun b!1713417 () Bool)

(declare-fun res!768213 () Bool)

(declare-fun e!1095790 () Bool)

(assert (=> b!1713417 (=> res!768213 e!1095790)))

(assert (=> b!1713417 (= res!768213 (not (is-ElementMatch!4634 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))))))

(declare-fun e!1095787 () Bool)

(assert (=> b!1713417 (= e!1095787 e!1095790)))

(declare-fun b!1713418 () Bool)

(declare-fun res!768214 () Bool)

(declare-fun e!1095785 () Bool)

(assert (=> b!1713418 (=> res!768214 e!1095785)))

(assert (=> b!1713418 (= res!768214 (not (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))))))))

(declare-fun b!1713419 () Bool)

(declare-fun e!1095786 () Bool)

(assert (=> b!1713419 (= e!1095790 e!1095786)))

(declare-fun res!768208 () Bool)

(assert (=> b!1713419 (=> (not res!768208) (not e!1095786))))

(assert (=> b!1713419 (= res!768208 (not lt!654681))))

(declare-fun b!1713420 () Bool)

(declare-fun res!768210 () Bool)

(assert (=> b!1713420 (=> res!768210 e!1095790)))

(declare-fun e!1095789 () Bool)

(assert (=> b!1713420 (= res!768210 e!1095789)))

(declare-fun res!768212 () Bool)

(assert (=> b!1713420 (=> (not res!768212) (not e!1095789))))

(assert (=> b!1713420 (= res!768212 lt!654681)))

(declare-fun b!1713421 () Bool)

(declare-fun res!768215 () Bool)

(assert (=> b!1713421 (=> (not res!768215) (not e!1095789))))

(declare-fun call!109557 () Bool)

(assert (=> b!1713421 (= res!768215 (not call!109557))))

(declare-fun b!1713422 () Bool)

(assert (=> b!1713422 (= e!1095788 e!1095787)))

(declare-fun c!280719 () Bool)

(assert (=> b!1713422 (= c!280719 (is-EmptyLang!4634 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))))))

(declare-fun b!1713423 () Bool)

(assert (=> b!1713423 (= e!1095787 (not lt!654681))))

(declare-fun b!1713424 () Bool)

(declare-fun res!768209 () Bool)

(assert (=> b!1713424 (=> (not res!768209) (not e!1095789))))

(assert (=> b!1713424 (= res!768209 (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))))))))

(declare-fun b!1713425 () Bool)

(assert (=> b!1713425 (= e!1095789 (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))) (c!280547 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))))))

(declare-fun b!1713426 () Bool)

(assert (=> b!1713426 (= e!1095785 (not (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))) (c!280547 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))))))))

(declare-fun b!1713427 () Bool)

(assert (=> b!1713427 (= e!1095786 e!1095785)))

(declare-fun res!768211 () Bool)

(assert (=> b!1713427 (=> res!768211 e!1095785)))

(assert (=> b!1713427 (= res!768211 call!109557)))

(declare-fun b!1713428 () Bool)

(assert (=> b!1713428 (= e!1095788 (= lt!654681 call!109557))))

(declare-fun bm!109552 () Bool)

(assert (=> bm!109552 (= call!109557 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554))))))))

(declare-fun b!1713429 () Bool)

(assert (=> b!1713429 (= e!1095784 (matchR!2108 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))) (head!3845 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))))) (tail!2556 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654554)))))))))

(assert (= (and d!525698 c!280718) b!1713416))

(assert (= (and d!525698 (not c!280718)) b!1713429))

(assert (= (and d!525698 c!280720) b!1713428))

(assert (= (and d!525698 (not c!280720)) b!1713422))

(assert (= (and b!1713422 c!280719) b!1713423))

(assert (= (and b!1713422 (not c!280719)) b!1713417))

(assert (= (and b!1713417 (not res!768213)) b!1713420))

(assert (= (and b!1713420 res!768212) b!1713421))

(assert (= (and b!1713421 res!768215) b!1713424))

(assert (= (and b!1713424 res!768209) b!1713425))

(assert (= (and b!1713420 (not res!768210)) b!1713419))

(assert (= (and b!1713419 res!768208) b!1713427))

(assert (= (and b!1713427 (not res!768211)) b!1713418))

(assert (= (and b!1713418 (not res!768214)) b!1713426))

(assert (= (or b!1713428 b!1713421 b!1713427) bm!109552))

(assert (=> b!1713425 m!2116575))

(declare-fun m!2117129 () Bool)

(assert (=> b!1713425 m!2117129))

(assert (=> b!1713426 m!2116575))

(assert (=> b!1713426 m!2117129))

(assert (=> b!1713424 m!2116575))

(declare-fun m!2117131 () Bool)

(assert (=> b!1713424 m!2117131))

(assert (=> b!1713424 m!2117131))

(declare-fun m!2117133 () Bool)

(assert (=> b!1713424 m!2117133))

(assert (=> b!1713418 m!2116575))

(assert (=> b!1713418 m!2117131))

(assert (=> b!1713418 m!2117131))

(assert (=> b!1713418 m!2117133))

(assert (=> b!1713429 m!2116575))

(assert (=> b!1713429 m!2117129))

(assert (=> b!1713429 m!2117129))

(declare-fun m!2117135 () Bool)

(assert (=> b!1713429 m!2117135))

(assert (=> b!1713429 m!2116575))

(assert (=> b!1713429 m!2117131))

(assert (=> b!1713429 m!2117135))

(assert (=> b!1713429 m!2117131))

(declare-fun m!2117137 () Bool)

(assert (=> b!1713429 m!2117137))

(assert (=> bm!109552 m!2116575))

(declare-fun m!2117139 () Bool)

(assert (=> bm!109552 m!2117139))

(declare-fun m!2117141 () Bool)

(assert (=> b!1713416 m!2117141))

(assert (=> d!525698 m!2116575))

(assert (=> d!525698 m!2117139))

(declare-fun m!2117143 () Bool)

(assert (=> d!525698 m!2117143))

(assert (=> b!1712979 d!525698))

(assert (=> b!1712979 d!525610))

(assert (=> b!1712979 d!525674))

(assert (=> b!1712979 d!525676))

(assert (=> d!525448 d!525594))

(declare-fun b!1713430 () Bool)

(declare-fun res!768219 () Bool)

(declare-fun e!1095793 () Bool)

(assert (=> b!1713430 (=> (not res!768219) (not e!1095793))))

(declare-fun lt!654683 () Option!3636)

(assert (=> b!1713430 (= res!768219 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654683)))) (_2!10612 (get!5507 lt!654683))) (++!5131 lt!654323 suffix!1421)))))

(declare-fun b!1713431 () Bool)

(declare-fun res!768218 () Bool)

(assert (=> b!1713431 (=> (not res!768218) (not e!1095793))))

(assert (=> b!1713431 (= res!768218 (< (size!14871 (_2!10612 (get!5507 lt!654683))) (size!14871 (++!5131 lt!654323 suffix!1421))))))

(declare-fun b!1713432 () Bool)

(assert (=> b!1713432 (= e!1095793 (contains!3326 rules!3447 (rule!5242 (_1!10612 (get!5507 lt!654683)))))))

(declare-fun d!525700 () Bool)

(declare-fun e!1095791 () Bool)

(assert (=> d!525700 e!1095791))

(declare-fun res!768217 () Bool)

(assert (=> d!525700 (=> res!768217 e!1095791)))

(assert (=> d!525700 (= res!768217 (isEmpty!11757 lt!654683))))

(declare-fun e!1095792 () Option!3636)

(assert (=> d!525700 (= lt!654683 e!1095792)))

(declare-fun c!280721 () Bool)

(assert (=> d!525700 (= c!280721 (and (is-Cons!18710 rules!3447) (is-Nil!18710 (t!158393 rules!3447))))))

(declare-fun lt!654682 () Unit!32536)

(declare-fun lt!654685 () Unit!32536)

(assert (=> d!525700 (= lt!654682 lt!654685)))

(assert (=> d!525700 (isPrefix!1547 (++!5131 lt!654323 suffix!1421) (++!5131 lt!654323 suffix!1421))))

(assert (=> d!525700 (= lt!654685 (lemmaIsPrefixRefl!1056 (++!5131 lt!654323 suffix!1421) (++!5131 lt!654323 suffix!1421)))))

(assert (=> d!525700 (rulesValidInductive!1091 thiss!24550 rules!3447)))

(assert (=> d!525700 (= (maxPrefix!1489 thiss!24550 rules!3447 (++!5131 lt!654323 suffix!1421)) lt!654683)))

(declare-fun b!1713433 () Bool)

(declare-fun call!109558 () Option!3636)

(assert (=> b!1713433 (= e!1095792 call!109558)))

(declare-fun b!1713434 () Bool)

(declare-fun res!768221 () Bool)

(assert (=> b!1713434 (=> (not res!768221) (not e!1095793))))

(assert (=> b!1713434 (= res!768221 (matchR!2108 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654683)))) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654683))))))))

(declare-fun b!1713435 () Bool)

(declare-fun lt!654686 () Option!3636)

(declare-fun lt!654684 () Option!3636)

(assert (=> b!1713435 (= e!1095792 (ite (and (is-None!3635 lt!654686) (is-None!3635 lt!654684)) None!3635 (ite (is-None!3635 lt!654684) lt!654686 (ite (is-None!3635 lt!654686) lt!654684 (ite (>= (size!14869 (_1!10612 (v!25026 lt!654686))) (size!14869 (_1!10612 (v!25026 lt!654684)))) lt!654686 lt!654684)))))))

(assert (=> b!1713435 (= lt!654686 call!109558)))

(assert (=> b!1713435 (= lt!654684 (maxPrefix!1489 thiss!24550 (t!158393 rules!3447) (++!5131 lt!654323 suffix!1421)))))

(declare-fun b!1713436 () Bool)

(declare-fun res!768222 () Bool)

(assert (=> b!1713436 (=> (not res!768222) (not e!1095793))))

(assert (=> b!1713436 (= res!768222 (= (value!103895 (_1!10612 (get!5507 lt!654683))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654683)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654683)))))))))

(declare-fun b!1713437 () Bool)

(assert (=> b!1713437 (= e!1095791 e!1095793)))

(declare-fun res!768220 () Bool)

(assert (=> b!1713437 (=> (not res!768220) (not e!1095793))))

(assert (=> b!1713437 (= res!768220 (isDefined!2979 lt!654683))))

(declare-fun b!1713438 () Bool)

(declare-fun res!768216 () Bool)

(assert (=> b!1713438 (=> (not res!768216) (not e!1095793))))

(assert (=> b!1713438 (= res!768216 (= (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654683)))) (originalCharacters!4120 (_1!10612 (get!5507 lt!654683)))))))

(declare-fun bm!109553 () Bool)

(assert (=> bm!109553 (= call!109558 (maxPrefixOneRule!871 thiss!24550 (h!24111 rules!3447) (++!5131 lt!654323 suffix!1421)))))

(assert (= (and d!525700 c!280721) b!1713433))

(assert (= (and d!525700 (not c!280721)) b!1713435))

(assert (= (or b!1713433 b!1713435) bm!109553))

(assert (= (and d!525700 (not res!768217)) b!1713437))

(assert (= (and b!1713437 res!768220) b!1713438))

(assert (= (and b!1713438 res!768216) b!1713431))

(assert (= (and b!1713431 res!768218) b!1713430))

(assert (= (and b!1713430 res!768219) b!1713436))

(assert (= (and b!1713436 res!768222) b!1713434))

(assert (= (and b!1713434 res!768221) b!1713432))

(declare-fun m!2117145 () Bool)

(assert (=> b!1713437 m!2117145))

(declare-fun m!2117147 () Bool)

(assert (=> b!1713434 m!2117147))

(declare-fun m!2117149 () Bool)

(assert (=> b!1713434 m!2117149))

(assert (=> b!1713434 m!2117149))

(declare-fun m!2117151 () Bool)

(assert (=> b!1713434 m!2117151))

(assert (=> b!1713434 m!2117151))

(declare-fun m!2117153 () Bool)

(assert (=> b!1713434 m!2117153))

(declare-fun m!2117155 () Bool)

(assert (=> d!525700 m!2117155))

(assert (=> d!525700 m!2115911))

(assert (=> d!525700 m!2115911))

(declare-fun m!2117157 () Bool)

(assert (=> d!525700 m!2117157))

(assert (=> d!525700 m!2115911))

(assert (=> d!525700 m!2115911))

(declare-fun m!2117159 () Bool)

(assert (=> d!525700 m!2117159))

(assert (=> d!525700 m!2116259))

(assert (=> b!1713435 m!2115911))

(declare-fun m!2117161 () Bool)

(assert (=> b!1713435 m!2117161))

(assert (=> b!1713431 m!2117147))

(declare-fun m!2117163 () Bool)

(assert (=> b!1713431 m!2117163))

(assert (=> b!1713431 m!2115911))

(declare-fun m!2117165 () Bool)

(assert (=> b!1713431 m!2117165))

(assert (=> b!1713436 m!2117147))

(declare-fun m!2117167 () Bool)

(assert (=> b!1713436 m!2117167))

(assert (=> b!1713436 m!2117167))

(declare-fun m!2117169 () Bool)

(assert (=> b!1713436 m!2117169))

(assert (=> b!1713432 m!2117147))

(declare-fun m!2117171 () Bool)

(assert (=> b!1713432 m!2117171))

(assert (=> bm!109553 m!2115911))

(declare-fun m!2117173 () Bool)

(assert (=> bm!109553 m!2117173))

(assert (=> b!1713430 m!2117147))

(assert (=> b!1713430 m!2117149))

(assert (=> b!1713430 m!2117149))

(assert (=> b!1713430 m!2117151))

(assert (=> b!1713430 m!2117151))

(declare-fun m!2117175 () Bool)

(assert (=> b!1713430 m!2117175))

(assert (=> b!1713438 m!2117147))

(assert (=> b!1713438 m!2117149))

(assert (=> b!1713438 m!2117149))

(assert (=> b!1713438 m!2117151))

(assert (=> d!525448 d!525700))

(declare-fun d!525702 () Bool)

(assert (=> d!525702 (isPrefix!1547 lt!654534 (++!5131 lt!654534 lt!654530))))

(declare-fun lt!654687 () Unit!32536)

(assert (=> d!525702 (= lt!654687 (choose!10393 lt!654534 lt!654530))))

(assert (=> d!525702 (= (lemmaConcatTwoListThenFirstIsPrefix!1057 lt!654534 lt!654530) lt!654687)))

(declare-fun bs!401866 () Bool)

(assert (= bs!401866 d!525702))

(assert (=> bs!401866 m!2116501))

(assert (=> bs!401866 m!2116501))

(assert (=> bs!401866 m!2116503))

(declare-fun m!2117177 () Bool)

(assert (=> bs!401866 m!2117177))

(assert (=> d!525448 d!525702))

(declare-fun d!525704 () Bool)

(assert (=> d!525704 (isPrefix!1547 lt!654527 (++!5131 lt!654323 suffix!1421))))

(declare-fun lt!654690 () Unit!32536)

(declare-fun choose!10401 (List!18779 List!18779 List!18779) Unit!32536)

(assert (=> d!525704 (= lt!654690 (choose!10401 lt!654527 lt!654323 suffix!1421))))

(assert (=> d!525704 (isPrefix!1547 lt!654527 lt!654323)))

(assert (=> d!525704 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!242 lt!654527 lt!654323 suffix!1421) lt!654690)))

(declare-fun bs!401867 () Bool)

(assert (= bs!401867 d!525704))

(assert (=> bs!401867 m!2115911))

(assert (=> bs!401867 m!2115911))

(assert (=> bs!401867 m!2116529))

(declare-fun m!2117179 () Bool)

(assert (=> bs!401867 m!2117179))

(declare-fun m!2117181 () Bool)

(assert (=> bs!401867 m!2117181))

(assert (=> d!525448 d!525704))

(declare-fun d!525706 () Bool)

(declare-fun e!1095794 () Bool)

(assert (=> d!525706 e!1095794))

(declare-fun res!768223 () Bool)

(assert (=> d!525706 (=> (not res!768223) (not e!1095794))))

(assert (=> d!525706 (= res!768223 (isDefined!2980 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))))))

(declare-fun lt!654691 () Unit!32536)

(assert (=> d!525706 (= lt!654691 (choose!10394 thiss!24550 rules!3447 lt!654323 lt!654520))))

(assert (=> d!525706 (rulesInvariant!2604 thiss!24550 rules!3447)))

(assert (=> d!525706 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!356 thiss!24550 rules!3447 lt!654323 lt!654520) lt!654691)))

(declare-fun b!1713439 () Bool)

(declare-fun res!768224 () Bool)

(assert (=> b!1713439 (=> (not res!768224) (not e!1095794))))

(assert (=> b!1713439 (= res!768224 (matchR!2108 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))) (list!7551 (charsOf!1955 lt!654520))))))

(declare-fun b!1713440 () Bool)

(assert (=> b!1713440 (= e!1095794 (= (rule!5242 lt!654520) (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))))))

(assert (= (and d!525706 res!768223) b!1713439))

(assert (= (and b!1713439 res!768224) b!1713440))

(assert (=> d!525706 m!2116491))

(assert (=> d!525706 m!2116491))

(assert (=> d!525706 m!2116509))

(declare-fun m!2117183 () Bool)

(assert (=> d!525706 m!2117183))

(assert (=> d!525706 m!2115957))

(assert (=> b!1713439 m!2116487))

(assert (=> b!1713439 m!2116491))

(assert (=> b!1713439 m!2116491))

(assert (=> b!1713439 m!2116493))

(assert (=> b!1713439 m!2116489))

(assert (=> b!1713439 m!2116535))

(assert (=> b!1713439 m!2116487))

(assert (=> b!1713439 m!2116489))

(assert (=> b!1713440 m!2116491))

(assert (=> b!1713440 m!2116491))

(assert (=> b!1713440 m!2116493))

(assert (=> d!525448 d!525706))

(declare-fun d!525708 () Bool)

(declare-fun e!1095796 () Bool)

(assert (=> d!525708 e!1095796))

(declare-fun res!768225 () Bool)

(assert (=> d!525708 (=> (not res!768225) (not e!1095796))))

(declare-fun lt!654692 () List!18779)

(assert (=> d!525708 (= res!768225 (= (content!2664 lt!654692) (set.union (content!2664 lt!654534) (content!2664 lt!654530))))))

(declare-fun e!1095795 () List!18779)

(assert (=> d!525708 (= lt!654692 e!1095795)))

(declare-fun c!280722 () Bool)

(assert (=> d!525708 (= c!280722 (is-Nil!18709 lt!654534))))

(assert (=> d!525708 (= (++!5131 lt!654534 lt!654530) lt!654692)))

(declare-fun b!1713441 () Bool)

(assert (=> b!1713441 (= e!1095795 lt!654530)))

(declare-fun b!1713444 () Bool)

(assert (=> b!1713444 (= e!1095796 (or (not (= lt!654530 Nil!18709)) (= lt!654692 lt!654534)))))

(declare-fun b!1713442 () Bool)

(assert (=> b!1713442 (= e!1095795 (Cons!18709 (h!24110 lt!654534) (++!5131 (t!158392 lt!654534) lt!654530)))))

(declare-fun b!1713443 () Bool)

(declare-fun res!768226 () Bool)

(assert (=> b!1713443 (=> (not res!768226) (not e!1095796))))

(assert (=> b!1713443 (= res!768226 (= (size!14871 lt!654692) (+ (size!14871 lt!654534) (size!14871 lt!654530))))))

(assert (= (and d!525708 c!280722) b!1713441))

(assert (= (and d!525708 (not c!280722)) b!1713442))

(assert (= (and d!525708 res!768225) b!1713443))

(assert (= (and b!1713443 res!768226) b!1713444))

(declare-fun m!2117185 () Bool)

(assert (=> d!525708 m!2117185))

(declare-fun m!2117187 () Bool)

(assert (=> d!525708 m!2117187))

(declare-fun m!2117189 () Bool)

(assert (=> d!525708 m!2117189))

(declare-fun m!2117191 () Bool)

(assert (=> b!1713442 m!2117191))

(declare-fun m!2117193 () Bool)

(assert (=> b!1713443 m!2117193))

(declare-fun m!2117195 () Bool)

(assert (=> b!1713443 m!2117195))

(declare-fun m!2117197 () Bool)

(assert (=> b!1713443 m!2117197))

(assert (=> d!525448 d!525708))

(declare-fun d!525710 () Bool)

(declare-fun list!7558 (Conc!6224) List!18786)

(assert (=> d!525710 (= (list!7554 (_1!10614 (lex!1381 thiss!24550 rules!3447 (seqFromList!2280 lt!654323)))) (list!7558 (c!280650 (_1!10614 (lex!1381 thiss!24550 rules!3447 (seqFromList!2280 lt!654323))))))))

(declare-fun bs!401868 () Bool)

(assert (= bs!401868 d!525710))

(declare-fun m!2117199 () Bool)

(assert (=> bs!401868 m!2117199))

(assert (=> d!525448 d!525710))

(assert (=> d!525448 d!525504))

(assert (=> d!525448 d!525498))

(declare-fun b!1713447 () Bool)

(declare-fun e!1095798 () Bool)

(assert (=> b!1713447 (= e!1095798 (isPrefix!1547 (tail!2556 lt!654527) (tail!2556 (++!5131 lt!654323 suffix!1421))))))

(declare-fun d!525712 () Bool)

(declare-fun e!1095799 () Bool)

(assert (=> d!525712 e!1095799))

(declare-fun res!768230 () Bool)

(assert (=> d!525712 (=> res!768230 e!1095799)))

(declare-fun lt!654693 () Bool)

(assert (=> d!525712 (= res!768230 (not lt!654693))))

(declare-fun e!1095797 () Bool)

(assert (=> d!525712 (= lt!654693 e!1095797)))

(declare-fun res!768229 () Bool)

(assert (=> d!525712 (=> res!768229 e!1095797)))

(assert (=> d!525712 (= res!768229 (is-Nil!18709 lt!654527))))

(assert (=> d!525712 (= (isPrefix!1547 lt!654527 (++!5131 lt!654323 suffix!1421)) lt!654693)))

(declare-fun b!1713448 () Bool)

(assert (=> b!1713448 (= e!1095799 (>= (size!14871 (++!5131 lt!654323 suffix!1421)) (size!14871 lt!654527)))))

(declare-fun b!1713445 () Bool)

(assert (=> b!1713445 (= e!1095797 e!1095798)))

(declare-fun res!768227 () Bool)

(assert (=> b!1713445 (=> (not res!768227) (not e!1095798))))

(assert (=> b!1713445 (= res!768227 (not (is-Nil!18709 (++!5131 lt!654323 suffix!1421))))))

(declare-fun b!1713446 () Bool)

(declare-fun res!768228 () Bool)

(assert (=> b!1713446 (=> (not res!768228) (not e!1095798))))

(assert (=> b!1713446 (= res!768228 (= (head!3845 lt!654527) (head!3845 (++!5131 lt!654323 suffix!1421))))))

(assert (= (and d!525712 (not res!768229)) b!1713445))

(assert (= (and b!1713445 res!768227) b!1713446))

(assert (= (and b!1713446 res!768228) b!1713447))

(assert (= (and d!525712 (not res!768230)) b!1713448))

(declare-fun m!2117201 () Bool)

(assert (=> b!1713447 m!2117201))

(assert (=> b!1713447 m!2115911))

(declare-fun m!2117203 () Bool)

(assert (=> b!1713447 m!2117203))

(assert (=> b!1713447 m!2117201))

(assert (=> b!1713447 m!2117203))

(declare-fun m!2117205 () Bool)

(assert (=> b!1713447 m!2117205))

(assert (=> b!1713448 m!2115911))

(assert (=> b!1713448 m!2117165))

(declare-fun m!2117207 () Bool)

(assert (=> b!1713448 m!2117207))

(declare-fun m!2117209 () Bool)

(assert (=> b!1713446 m!2117209))

(assert (=> b!1713446 m!2115911))

(declare-fun m!2117211 () Bool)

(assert (=> b!1713446 m!2117211))

(assert (=> d!525448 d!525712))

(declare-fun d!525714 () Bool)

(assert (=> d!525714 (= (seqFromList!2280 lt!654323) (fromListB!1048 lt!654323))))

(declare-fun bs!401869 () Bool)

(assert (= bs!401869 d!525714))

(declare-fun m!2117213 () Bool)

(assert (=> bs!401869 m!2117213))

(assert (=> d!525448 d!525714))

(assert (=> d!525448 d!525370))

(declare-fun d!525716 () Bool)

(assert (=> d!525716 (= (isDefined!2979 (maxPrefix!1489 thiss!24550 rules!3447 (++!5131 lt!654323 suffix!1421))) (not (isEmpty!11757 (maxPrefix!1489 thiss!24550 rules!3447 (++!5131 lt!654323 suffix!1421)))))))

(declare-fun bs!401870 () Bool)

(assert (= bs!401870 d!525716))

(assert (=> bs!401870 m!2116505))

(assert (=> bs!401870 m!2116527))

(assert (=> d!525448 d!525716))

(declare-fun d!525718 () Bool)

(assert (=> d!525718 (= (isEmpty!11757 (maxPrefix!1489 thiss!24550 rules!3447 (++!5131 lt!654323 suffix!1421))) (not (is-Some!3635 (maxPrefix!1489 thiss!24550 rules!3447 (++!5131 lt!654323 suffix!1421)))))))

(assert (=> d!525448 d!525718))

(declare-fun d!525720 () Bool)

(assert (=> d!525720 (= (head!3847 (list!7554 (_1!10614 (lex!1381 thiss!24550 rules!3447 (seqFromList!2280 lt!654323))))) (h!24117 (list!7554 (_1!10614 (lex!1381 thiss!24550 rules!3447 (seqFromList!2280 lt!654323))))))))

(assert (=> d!525448 d!525720))

(assert (=> d!525448 d!525596))

(declare-fun b!1713459 () Bool)

(declare-fun e!1095807 () Bool)

(declare-fun lt!654696 () tuple2!18424)

(declare-fun isEmpty!11761 (BalanceConc!12392) Bool)

(assert (=> b!1713459 (= e!1095807 (not (isEmpty!11761 (_1!10614 lt!654696))))))

(declare-fun b!1713460 () Bool)

(declare-fun e!1095808 () Bool)

(assert (=> b!1713460 (= e!1095808 e!1095807)))

(declare-fun res!768238 () Bool)

(assert (=> b!1713460 (= res!768238 (< (size!14873 (_2!10614 lt!654696)) (size!14873 (seqFromList!2280 lt!654323))))))

(assert (=> b!1713460 (=> (not res!768238) (not e!1095807))))

(declare-fun b!1713461 () Bool)

(declare-fun res!768237 () Bool)

(declare-fun e!1095806 () Bool)

(assert (=> b!1713461 (=> (not res!768237) (not e!1095806))))

(declare-datatypes ((tuple2!18430 0))(
  ( (tuple2!18431 (_1!10617 List!18786) (_2!10617 List!18779)) )
))
(declare-fun lexList!916 (LexerInterface!2935 List!18780 List!18779) tuple2!18430)

(assert (=> b!1713461 (= res!768237 (= (list!7554 (_1!10614 lt!654696)) (_1!10617 (lexList!916 thiss!24550 rules!3447 (list!7551 (seqFromList!2280 lt!654323))))))))

(declare-fun b!1713462 () Bool)

(assert (=> b!1713462 (= e!1095808 (= (_2!10614 lt!654696) (seqFromList!2280 lt!654323)))))

(declare-fun d!525722 () Bool)

(assert (=> d!525722 e!1095806))

(declare-fun res!768239 () Bool)

(assert (=> d!525722 (=> (not res!768239) (not e!1095806))))

(assert (=> d!525722 (= res!768239 e!1095808)))

(declare-fun c!280725 () Bool)

(declare-fun size!14875 (BalanceConc!12392) Int)

(assert (=> d!525722 (= c!280725 (> (size!14875 (_1!10614 lt!654696)) 0))))

(declare-fun lexTailRecV2!639 (LexerInterface!2935 List!18780 BalanceConc!12388 BalanceConc!12388 BalanceConc!12388 BalanceConc!12392) tuple2!18424)

(assert (=> d!525722 (= lt!654696 (lexTailRecV2!639 thiss!24550 rules!3447 (seqFromList!2280 lt!654323) (BalanceConc!12389 Empty!6222) (seqFromList!2280 lt!654323) (BalanceConc!12393 Empty!6224)))))

(assert (=> d!525722 (= (lex!1381 thiss!24550 rules!3447 (seqFromList!2280 lt!654323)) lt!654696)))

(declare-fun b!1713463 () Bool)

(assert (=> b!1713463 (= e!1095806 (= (list!7551 (_2!10614 lt!654696)) (_2!10617 (lexList!916 thiss!24550 rules!3447 (list!7551 (seqFromList!2280 lt!654323))))))))

(assert (= (and d!525722 c!280725) b!1713460))

(assert (= (and d!525722 (not c!280725)) b!1713462))

(assert (= (and b!1713460 res!768238) b!1713459))

(assert (= (and d!525722 res!768239) b!1713461))

(assert (= (and b!1713461 res!768237) b!1713463))

(declare-fun m!2117215 () Bool)

(assert (=> b!1713461 m!2117215))

(assert (=> b!1713461 m!2116497))

(declare-fun m!2117217 () Bool)

(assert (=> b!1713461 m!2117217))

(assert (=> b!1713461 m!2117217))

(declare-fun m!2117219 () Bool)

(assert (=> b!1713461 m!2117219))

(declare-fun m!2117221 () Bool)

(assert (=> b!1713459 m!2117221))

(declare-fun m!2117223 () Bool)

(assert (=> b!1713463 m!2117223))

(assert (=> b!1713463 m!2116497))

(assert (=> b!1713463 m!2117217))

(assert (=> b!1713463 m!2117217))

(assert (=> b!1713463 m!2117219))

(declare-fun m!2117225 () Bool)

(assert (=> b!1713460 m!2117225))

(assert (=> b!1713460 m!2116497))

(declare-fun m!2117227 () Bool)

(assert (=> b!1713460 m!2117227))

(declare-fun m!2117229 () Bool)

(assert (=> d!525722 m!2117229))

(assert (=> d!525722 m!2116497))

(assert (=> d!525722 m!2116497))

(declare-fun m!2117231 () Bool)

(assert (=> d!525722 m!2117231))

(assert (=> d!525448 d!525722))

(declare-fun b!1713466 () Bool)

(declare-fun e!1095810 () Bool)

(assert (=> b!1713466 (= e!1095810 (isPrefix!1547 (tail!2556 lt!654534) (tail!2556 (++!5131 lt!654534 lt!654530))))))

(declare-fun d!525724 () Bool)

(declare-fun e!1095811 () Bool)

(assert (=> d!525724 e!1095811))

(declare-fun res!768243 () Bool)

(assert (=> d!525724 (=> res!768243 e!1095811)))

(declare-fun lt!654697 () Bool)

(assert (=> d!525724 (= res!768243 (not lt!654697))))

(declare-fun e!1095809 () Bool)

(assert (=> d!525724 (= lt!654697 e!1095809)))

(declare-fun res!768242 () Bool)

(assert (=> d!525724 (=> res!768242 e!1095809)))

(assert (=> d!525724 (= res!768242 (is-Nil!18709 lt!654534))))

(assert (=> d!525724 (= (isPrefix!1547 lt!654534 (++!5131 lt!654534 lt!654530)) lt!654697)))

(declare-fun b!1713467 () Bool)

(assert (=> b!1713467 (= e!1095811 (>= (size!14871 (++!5131 lt!654534 lt!654530)) (size!14871 lt!654534)))))

(declare-fun b!1713464 () Bool)

(assert (=> b!1713464 (= e!1095809 e!1095810)))

(declare-fun res!768240 () Bool)

(assert (=> b!1713464 (=> (not res!768240) (not e!1095810))))

(assert (=> b!1713464 (= res!768240 (not (is-Nil!18709 (++!5131 lt!654534 lt!654530))))))

(declare-fun b!1713465 () Bool)

(declare-fun res!768241 () Bool)

(assert (=> b!1713465 (=> (not res!768241) (not e!1095810))))

(assert (=> b!1713465 (= res!768241 (= (head!3845 lt!654534) (head!3845 (++!5131 lt!654534 lt!654530))))))

(assert (= (and d!525724 (not res!768242)) b!1713464))

(assert (= (and b!1713464 res!768240) b!1713465))

(assert (= (and b!1713465 res!768241) b!1713466))

(assert (= (and d!525724 (not res!768243)) b!1713467))

(declare-fun m!2117233 () Bool)

(assert (=> b!1713466 m!2117233))

(assert (=> b!1713466 m!2116501))

(declare-fun m!2117235 () Bool)

(assert (=> b!1713466 m!2117235))

(assert (=> b!1713466 m!2117233))

(assert (=> b!1713466 m!2117235))

(declare-fun m!2117237 () Bool)

(assert (=> b!1713466 m!2117237))

(assert (=> b!1713467 m!2116501))

(declare-fun m!2117239 () Bool)

(assert (=> b!1713467 m!2117239))

(assert (=> b!1713467 m!2117195))

(declare-fun m!2117241 () Bool)

(assert (=> b!1713465 m!2117241))

(assert (=> b!1713465 m!2116501))

(declare-fun m!2117243 () Bool)

(assert (=> b!1713465 m!2117243))

(assert (=> d!525448 d!525724))

(assert (=> d!525448 d!525600))

(declare-fun d!525726 () Bool)

(assert (=> d!525726 (= (isDefined!2980 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520)))) (not (isEmpty!11758 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 lt!654520))))))))

(declare-fun bs!401871 () Bool)

(assert (= bs!401871 d!525726))

(assert (=> bs!401871 m!2116491))

(declare-fun m!2117245 () Bool)

(assert (=> bs!401871 m!2117245))

(assert (=> d!525448 d!525726))

(declare-fun d!525728 () Bool)

(assert (=> d!525728 (= (get!5507 (maxPrefix!1489 thiss!24550 rules!3447 lt!654323)) (v!25026 (maxPrefix!1489 thiss!24550 rules!3447 lt!654323)))))

(assert (=> d!525448 d!525728))

(declare-fun d!525730 () Bool)

(assert (=> d!525730 (= (isEmpty!11757 lt!654333) (not (is-Some!3635 lt!654333)))))

(assert (=> d!525502 d!525730))

(declare-fun d!525732 () Bool)

(assert (=> d!525732 (= (nullable!1393 (regex!3306 lt!654335)) (nullableFct!324 (regex!3306 lt!654335)))))

(declare-fun bs!401872 () Bool)

(assert (= bs!401872 d!525732))

(declare-fun m!2117247 () Bool)

(assert (=> bs!401872 m!2117247))

(assert (=> b!1712991 d!525732))

(declare-fun d!525734 () Bool)

(assert (=> d!525734 true))

(assert (=> d!525734 true))

(declare-fun res!768246 () Bool)

(assert (=> d!525734 (= (choose!10392 lambda!68861) res!768246)))

(assert (=> d!525378 d!525734))

(declare-fun d!525736 () Bool)

(declare-fun c!280728 () Bool)

(assert (=> d!525736 (= c!280728 (is-Nil!18709 lt!654427))))

(declare-fun e!1095814 () (Set C!9442))

(assert (=> d!525736 (= (content!2664 lt!654427) e!1095814)))

(declare-fun b!1713472 () Bool)

(assert (=> b!1713472 (= e!1095814 (as set.empty (Set C!9442)))))

(declare-fun b!1713473 () Bool)

(assert (=> b!1713473 (= e!1095814 (set.union (set.insert (h!24110 lt!654427) (as set.empty (Set C!9442))) (content!2664 (t!158392 lt!654427))))))

(assert (= (and d!525736 c!280728) b!1713472))

(assert (= (and d!525736 (not c!280728)) b!1713473))

(declare-fun m!2117249 () Bool)

(assert (=> b!1713473 m!2117249))

(declare-fun m!2117251 () Bool)

(assert (=> b!1713473 m!2117251))

(assert (=> d!525430 d!525736))

(declare-fun d!525738 () Bool)

(declare-fun c!280729 () Bool)

(assert (=> d!525738 (= c!280729 (is-Nil!18709 lt!654329))))

(declare-fun e!1095815 () (Set C!9442))

(assert (=> d!525738 (= (content!2664 lt!654329) e!1095815)))

(declare-fun b!1713474 () Bool)

(assert (=> b!1713474 (= e!1095815 (as set.empty (Set C!9442)))))

(declare-fun b!1713475 () Bool)

(assert (=> b!1713475 (= e!1095815 (set.union (set.insert (h!24110 lt!654329) (as set.empty (Set C!9442))) (content!2664 (t!158392 lt!654329))))))

(assert (= (and d!525738 c!280729) b!1713474))

(assert (= (and d!525738 (not c!280729)) b!1713475))

(declare-fun m!2117253 () Bool)

(assert (=> b!1713475 m!2117253))

(declare-fun m!2117255 () Bool)

(assert (=> b!1713475 m!2117255))

(assert (=> d!525430 d!525738))

(declare-fun d!525740 () Bool)

(declare-fun c!280730 () Bool)

(assert (=> d!525740 (= c!280730 (is-Nil!18709 (_2!10612 lt!654328)))))

(declare-fun e!1095816 () (Set C!9442))

(assert (=> d!525740 (= (content!2664 (_2!10612 lt!654328)) e!1095816)))

(declare-fun b!1713476 () Bool)

(assert (=> b!1713476 (= e!1095816 (as set.empty (Set C!9442)))))

(declare-fun b!1713477 () Bool)

(assert (=> b!1713477 (= e!1095816 (set.union (set.insert (h!24110 (_2!10612 lt!654328)) (as set.empty (Set C!9442))) (content!2664 (t!158392 (_2!10612 lt!654328)))))))

(assert (= (and d!525740 c!280730) b!1713476))

(assert (= (and d!525740 (not c!280730)) b!1713477))

(declare-fun m!2117257 () Bool)

(assert (=> b!1713477 m!2117257))

(declare-fun m!2117259 () Bool)

(assert (=> b!1713477 m!2117259))

(assert (=> d!525430 d!525740))

(assert (=> b!1712591 d!525570))

(assert (=> b!1712591 d!525572))

(declare-fun d!525742 () Bool)

(declare-fun lt!654698 () Int)

(assert (=> d!525742 (>= lt!654698 0)))

(declare-fun e!1095817 () Int)

(assert (=> d!525742 (= lt!654698 e!1095817)))

(declare-fun c!280731 () Bool)

(assert (=> d!525742 (= c!280731 (is-Nil!18709 (originalCharacters!4120 token!523)))))

(assert (=> d!525742 (= (size!14871 (originalCharacters!4120 token!523)) lt!654698)))

(declare-fun b!1713478 () Bool)

(assert (=> b!1713478 (= e!1095817 0)))

(declare-fun b!1713479 () Bool)

(assert (=> b!1713479 (= e!1095817 (+ 1 (size!14871 (t!158392 (originalCharacters!4120 token!523)))))))

(assert (= (and d!525742 c!280731) b!1713478))

(assert (= (and d!525742 (not c!280731)) b!1713479))

(declare-fun m!2117261 () Bool)

(assert (=> b!1713479 m!2117261))

(assert (=> b!1712990 d!525742))

(declare-fun d!525744 () Bool)

(declare-fun c!280732 () Bool)

(assert (=> d!525744 (= c!280732 (is-Node!6222 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(declare-fun e!1095818 () Bool)

(assert (=> d!525744 (= (inv!24129 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) e!1095818)))

(declare-fun b!1713480 () Bool)

(assert (=> b!1713480 (= e!1095818 (inv!24135 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(declare-fun b!1713481 () Bool)

(declare-fun e!1095819 () Bool)

(assert (=> b!1713481 (= e!1095818 e!1095819)))

(declare-fun res!768247 () Bool)

(assert (=> b!1713481 (= res!768247 (not (is-Leaf!9096 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))))

(assert (=> b!1713481 (=> res!768247 e!1095819)))

(declare-fun b!1713482 () Bool)

(assert (=> b!1713482 (= e!1095819 (inv!24136 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(assert (= (and d!525744 c!280732) b!1713480))

(assert (= (and d!525744 (not c!280732)) b!1713481))

(assert (= (and b!1713481 (not res!768247)) b!1713482))

(declare-fun m!2117263 () Bool)

(assert (=> b!1713480 m!2117263))

(declare-fun m!2117265 () Bool)

(assert (=> b!1713482 m!2117265))

(assert (=> b!1713055 d!525744))

(declare-fun d!525746 () Bool)

(declare-fun c!280733 () Bool)

(assert (=> d!525746 (= c!280733 (is-Node!6222 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(declare-fun e!1095820 () Bool)

(assert (=> d!525746 (= (inv!24129 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) e!1095820)))

(declare-fun b!1713483 () Bool)

(assert (=> b!1713483 (= e!1095820 (inv!24135 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(declare-fun b!1713484 () Bool)

(declare-fun e!1095821 () Bool)

(assert (=> b!1713484 (= e!1095820 e!1095821)))

(declare-fun res!768248 () Bool)

(assert (=> b!1713484 (= res!768248 (not (is-Leaf!9096 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))))

(assert (=> b!1713484 (=> res!768248 e!1095821)))

(declare-fun b!1713485 () Bool)

(assert (=> b!1713485 (= e!1095821 (inv!24136 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(assert (= (and d!525746 c!280733) b!1713483))

(assert (= (and d!525746 (not c!280733)) b!1713484))

(assert (= (and b!1713484 (not res!768248)) b!1713485))

(declare-fun m!2117267 () Bool)

(assert (=> b!1713483 m!2117267))

(declare-fun m!2117269 () Bool)

(assert (=> b!1713485 m!2117269))

(assert (=> b!1713055 d!525746))

(declare-fun d!525748 () Bool)

(assert (=> d!525748 (= (isEmpty!11758 lt!654550) (not (is-Some!3636 lt!654550)))))

(assert (=> d!525496 d!525748))

(assert (=> d!525496 d!525358))

(assert (=> d!525514 d!525680))

(declare-fun b!1713486 () Bool)

(declare-fun e!1095823 () Bool)

(declare-fun e!1095824 () Bool)

(assert (=> b!1713486 (= e!1095823 e!1095824)))

(declare-fun c!280734 () Bool)

(assert (=> b!1713486 (= c!280734 (is-Union!4634 (regex!3306 lt!654335)))))

(declare-fun b!1713487 () Bool)

(declare-fun e!1095822 () Bool)

(declare-fun call!109559 () Bool)

(assert (=> b!1713487 (= e!1095822 call!109559)))

(declare-fun b!1713488 () Bool)

(declare-fun e!1095826 () Bool)

(declare-fun call!109561 () Bool)

(assert (=> b!1713488 (= e!1095826 call!109561)))

(declare-fun bm!109554 () Bool)

(declare-fun c!280735 () Bool)

(assert (=> bm!109554 (= call!109561 (validRegex!1867 (ite c!280735 (reg!4963 (regex!3306 lt!654335)) (ite c!280734 (regOne!9781 (regex!3306 lt!654335)) (regTwo!9780 (regex!3306 lt!654335))))))))

(declare-fun b!1713489 () Bool)

(declare-fun e!1095825 () Bool)

(declare-fun e!1095827 () Bool)

(assert (=> b!1713489 (= e!1095825 e!1095827)))

(declare-fun res!768252 () Bool)

(assert (=> b!1713489 (=> (not res!768252) (not e!1095827))))

(assert (=> b!1713489 (= res!768252 call!109559)))

(declare-fun bm!109555 () Bool)

(declare-fun call!109560 () Bool)

(assert (=> bm!109555 (= call!109560 call!109561)))

(declare-fun d!525750 () Bool)

(declare-fun res!768251 () Bool)

(declare-fun e!1095828 () Bool)

(assert (=> d!525750 (=> res!768251 e!1095828)))

(assert (=> d!525750 (= res!768251 (is-ElementMatch!4634 (regex!3306 lt!654335)))))

(assert (=> d!525750 (= (validRegex!1867 (regex!3306 lt!654335)) e!1095828)))

(declare-fun bm!109556 () Bool)

(assert (=> bm!109556 (= call!109559 (validRegex!1867 (ite c!280734 (regTwo!9781 (regex!3306 lt!654335)) (regOne!9780 (regex!3306 lt!654335)))))))

(declare-fun b!1713490 () Bool)

(declare-fun res!768253 () Bool)

(assert (=> b!1713490 (=> (not res!768253) (not e!1095822))))

(assert (=> b!1713490 (= res!768253 call!109560)))

(assert (=> b!1713490 (= e!1095824 e!1095822)))

(declare-fun b!1713491 () Bool)

(assert (=> b!1713491 (= e!1095827 call!109560)))

(declare-fun b!1713492 () Bool)

(assert (=> b!1713492 (= e!1095823 e!1095826)))

(declare-fun res!768250 () Bool)

(assert (=> b!1713492 (= res!768250 (not (nullable!1393 (reg!4963 (regex!3306 lt!654335)))))))

(assert (=> b!1713492 (=> (not res!768250) (not e!1095826))))

(declare-fun b!1713493 () Bool)

(assert (=> b!1713493 (= e!1095828 e!1095823)))

(assert (=> b!1713493 (= c!280735 (is-Star!4634 (regex!3306 lt!654335)))))

(declare-fun b!1713494 () Bool)

(declare-fun res!768249 () Bool)

(assert (=> b!1713494 (=> res!768249 e!1095825)))

(assert (=> b!1713494 (= res!768249 (not (is-Concat!8031 (regex!3306 lt!654335))))))

(assert (=> b!1713494 (= e!1095824 e!1095825)))

(assert (= (and d!525750 (not res!768251)) b!1713493))

(assert (= (and b!1713493 c!280735) b!1713492))

(assert (= (and b!1713493 (not c!280735)) b!1713486))

(assert (= (and b!1713492 res!768250) b!1713488))

(assert (= (and b!1713486 c!280734) b!1713490))

(assert (= (and b!1713486 (not c!280734)) b!1713494))

(assert (= (and b!1713490 res!768253) b!1713487))

(assert (= (and b!1713494 (not res!768249)) b!1713489))

(assert (= (and b!1713489 res!768252) b!1713491))

(assert (= (or b!1713490 b!1713491) bm!109555))

(assert (= (or b!1713487 b!1713489) bm!109556))

(assert (= (or b!1713488 bm!109555) bm!109554))

(declare-fun m!2117271 () Bool)

(assert (=> bm!109554 m!2117271))

(declare-fun m!2117273 () Bool)

(assert (=> bm!109556 m!2117273))

(declare-fun m!2117275 () Bool)

(assert (=> b!1713492 m!2117275))

(assert (=> d!525514 d!525750))

(declare-fun d!525752 () Bool)

(assert (=> d!525752 (= (isEmpty!11754 lt!654323) (is-Nil!18709 lt!654323))))

(assert (=> d!525348 d!525752))

(assert (=> d!525348 d!525678))

(declare-fun b!1713497 () Bool)

(declare-fun e!1095830 () List!18779)

(assert (=> b!1713497 (= e!1095830 (list!7557 (xs!9098 (c!280548 (charsOf!1955 token!523)))))))

(declare-fun b!1713495 () Bool)

(declare-fun e!1095829 () List!18779)

(assert (=> b!1713495 (= e!1095829 Nil!18709)))

(declare-fun b!1713498 () Bool)

(assert (=> b!1713498 (= e!1095830 (++!5131 (list!7553 (left!14911 (c!280548 (charsOf!1955 token!523)))) (list!7553 (right!15241 (c!280548 (charsOf!1955 token!523))))))))

(declare-fun b!1713496 () Bool)

(assert (=> b!1713496 (= e!1095829 e!1095830)))

(declare-fun c!280737 () Bool)

(assert (=> b!1713496 (= c!280737 (is-Leaf!9096 (c!280548 (charsOf!1955 token!523))))))

(declare-fun d!525754 () Bool)

(declare-fun c!280736 () Bool)

(assert (=> d!525754 (= c!280736 (is-Empty!6222 (c!280548 (charsOf!1955 token!523))))))

(assert (=> d!525754 (= (list!7553 (c!280548 (charsOf!1955 token!523))) e!1095829)))

(assert (= (and d!525754 c!280736) b!1713495))

(assert (= (and d!525754 (not c!280736)) b!1713496))

(assert (= (and b!1713496 c!280737) b!1713497))

(assert (= (and b!1713496 (not c!280737)) b!1713498))

(declare-fun m!2117277 () Bool)

(assert (=> b!1713497 m!2117277))

(declare-fun m!2117279 () Bool)

(assert (=> b!1713498 m!2117279))

(declare-fun m!2117281 () Bool)

(assert (=> b!1713498 m!2117281))

(assert (=> b!1713498 m!2117279))

(assert (=> b!1713498 m!2117281))

(declare-fun m!2117283 () Bool)

(assert (=> b!1713498 m!2117283))

(assert (=> d!525506 d!525754))

(declare-fun bs!401873 () Bool)

(declare-fun d!525756 () Bool)

(assert (= bs!401873 (and d!525756 d!525624)))

(declare-fun lambda!68886 () Int)

(assert (=> bs!401873 (= (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= lambda!68886 lambda!68882))))

(assert (=> d!525756 true))

(assert (=> d!525756 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (h!24111 rules!3447)))) (dynLambda!8513 order!11277 lambda!68886))))

(assert (=> d!525756 (= (equivClasses!1247 (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (h!24111 rules!3447)))) (Forall2!552 lambda!68886))))

(declare-fun bs!401874 () Bool)

(assert (= bs!401874 d!525756))

(declare-fun m!2117285 () Bool)

(assert (=> bs!401874 m!2117285))

(assert (=> b!1712695 d!525756))

(assert (=> d!525352 d!525350))

(declare-fun d!525758 () Bool)

(assert (=> d!525758 (ruleValid!805 thiss!24550 rule!422)))

(assert (=> d!525758 true))

(declare-fun _$65!918 () Unit!32536)

(assert (=> d!525758 (= (choose!10391 thiss!24550 rule!422 rules!3447) _$65!918)))

(declare-fun bs!401875 () Bool)

(assert (= bs!401875 d!525758))

(assert (=> bs!401875 m!2115933))

(assert (=> d!525352 d!525758))

(assert (=> d!525352 d!525368))

(assert (=> b!1712460 d!525500))

(declare-fun d!525760 () Bool)

(declare-fun c!280738 () Bool)

(assert (=> d!525760 (= c!280738 (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))))))

(declare-fun e!1095831 () Bool)

(assert (=> d!525760 (= (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))) e!1095831)))

(declare-fun b!1713499 () Bool)

(assert (=> b!1713499 (= e!1095831 (inv!24135 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))))))

(declare-fun b!1713500 () Bool)

(declare-fun e!1095832 () Bool)

(assert (=> b!1713500 (= e!1095831 e!1095832)))

(declare-fun res!768254 () Bool)

(assert (=> b!1713500 (= res!768254 (not (is-Leaf!9096 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))))))))

(assert (=> b!1713500 (=> res!768254 e!1095832)))

(declare-fun b!1713501 () Bool)

(assert (=> b!1713501 (= e!1095832 (inv!24136 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))))))

(assert (= (and d!525760 c!280738) b!1713499))

(assert (= (and d!525760 (not c!280738)) b!1713500))

(assert (= (and b!1713500 (not res!768254)) b!1713501))

(declare-fun m!2117287 () Bool)

(assert (=> b!1713499 m!2117287))

(declare-fun m!2117289 () Bool)

(assert (=> b!1713501 m!2117289))

(assert (=> b!1712984 d!525760))

(declare-fun bs!401876 () Bool)

(declare-fun d!525762 () Bool)

(assert (= bs!401876 (and d!525762 b!1712424)))

(declare-fun lambda!68887 () Int)

(assert (=> bs!401876 (= lambda!68887 lambda!68861)))

(declare-fun bs!401877 () Bool)

(assert (= bs!401877 (and d!525762 d!525396)))

(assert (=> bs!401877 (= lambda!68887 lambda!68870)))

(declare-fun bs!401878 () Bool)

(assert (= bs!401878 (and d!525762 d!525590)))

(assert (=> bs!401878 (= (and (= (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (toChars!4668 (transformation!3306 (h!24111 rules!3447)))) (= (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (toValue!4809 (transformation!3306 (h!24111 rules!3447))))) (= lambda!68887 lambda!68879))))

(assert (=> d!525762 true))

(assert (=> d!525762 (< (dynLambda!8504 order!11269 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (dynLambda!8503 order!11267 lambda!68887))))

(assert (=> d!525762 true))

(assert (=> d!525762 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (dynLambda!8503 order!11267 lambda!68887))))

(assert (=> d!525762 (= (semiInverseModEq!1306 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (Forall!681 lambda!68887))))

(declare-fun bs!401879 () Bool)

(assert (= bs!401879 d!525762))

(declare-fun m!2117291 () Bool)

(assert (=> bs!401879 m!2117291))

(assert (=> d!525380 d!525762))

(declare-fun d!525764 () Bool)

(declare-fun charsToBigInt!1 (List!18778) Int)

(assert (=> d!525764 (= (inv!17 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)) (= (charsToBigInt!1 (text!24220 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) (value!103887 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))

(declare-fun bs!401880 () Bool)

(assert (= bs!401880 d!525764))

(declare-fun m!2117293 () Bool)

(assert (=> bs!401880 m!2117293))

(assert (=> b!1712696 d!525764))

(declare-fun d!525766 () Bool)

(declare-fun e!1095834 () Bool)

(assert (=> d!525766 e!1095834))

(declare-fun res!768255 () Bool)

(assert (=> d!525766 (=> (not res!768255) (not e!1095834))))

(declare-fun lt!654699 () List!18779)

(assert (=> d!525766 (= res!768255 (= (content!2664 lt!654699) (set.union (content!2664 (t!158392 lt!654329)) (content!2664 (_2!10612 lt!654328)))))))

(declare-fun e!1095833 () List!18779)

(assert (=> d!525766 (= lt!654699 e!1095833)))

(declare-fun c!280739 () Bool)

(assert (=> d!525766 (= c!280739 (is-Nil!18709 (t!158392 lt!654329)))))

(assert (=> d!525766 (= (++!5131 (t!158392 lt!654329) (_2!10612 lt!654328)) lt!654699)))

(declare-fun b!1713502 () Bool)

(assert (=> b!1713502 (= e!1095833 (_2!10612 lt!654328))))

(declare-fun b!1713505 () Bool)

(assert (=> b!1713505 (= e!1095834 (or (not (= (_2!10612 lt!654328) Nil!18709)) (= lt!654699 (t!158392 lt!654329))))))

(declare-fun b!1713503 () Bool)

(assert (=> b!1713503 (= e!1095833 (Cons!18709 (h!24110 (t!158392 lt!654329)) (++!5131 (t!158392 (t!158392 lt!654329)) (_2!10612 lt!654328))))))

(declare-fun b!1713504 () Bool)

(declare-fun res!768256 () Bool)

(assert (=> b!1713504 (=> (not res!768256) (not e!1095834))))

(assert (=> b!1713504 (= res!768256 (= (size!14871 lt!654699) (+ (size!14871 (t!158392 lt!654329)) (size!14871 (_2!10612 lt!654328)))))))

(assert (= (and d!525766 c!280739) b!1713502))

(assert (= (and d!525766 (not c!280739)) b!1713503))

(assert (= (and d!525766 res!768255) b!1713504))

(assert (= (and b!1713504 res!768256) b!1713505))

(declare-fun m!2117295 () Bool)

(assert (=> d!525766 m!2117295))

(assert (=> d!525766 m!2117255))

(assert (=> d!525766 m!2116287))

(declare-fun m!2117297 () Bool)

(assert (=> b!1713503 m!2117297))

(declare-fun m!2117299 () Bool)

(assert (=> b!1713504 m!2117299))

(assert (=> b!1713504 m!2117067))

(assert (=> b!1713504 m!2116295))

(assert (=> b!1712741 d!525766))

(assert (=> b!1712599 d!525606))

(declare-fun d!525768 () Bool)

(assert (=> d!525768 (= (inv!24139 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) (<= (size!14871 (innerList!6282 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) 2147483647))))

(declare-fun bs!401881 () Bool)

(assert (= bs!401881 d!525768))

(declare-fun m!2117301 () Bool)

(assert (=> bs!401881 m!2117301))

(assert (=> b!1713053 d!525768))

(declare-fun d!525770 () Bool)

(declare-fun res!768261 () Bool)

(declare-fun e!1095837 () Bool)

(assert (=> d!525770 (=> (not res!768261) (not e!1095837))))

(assert (=> d!525770 (= res!768261 (<= (size!14871 (list!7557 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) 512))))

(assert (=> d!525770 (= (inv!24136 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) e!1095837)))

(declare-fun b!1713510 () Bool)

(declare-fun res!768262 () Bool)

(assert (=> b!1713510 (=> (not res!768262) (not e!1095837))))

(assert (=> b!1713510 (= res!768262 (= (csize!12675 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) (size!14871 (list!7557 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))))

(declare-fun b!1713511 () Bool)

(assert (=> b!1713511 (= e!1095837 (and (> (csize!12675 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) 0) (<= (csize!12675 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) 512)))))

(assert (= (and d!525770 res!768261) b!1713510))

(assert (= (and b!1713510 res!768262) b!1713511))

(assert (=> d!525770 m!2117071))

(assert (=> d!525770 m!2117071))

(declare-fun m!2117303 () Bool)

(assert (=> d!525770 m!2117303))

(assert (=> b!1713510 m!2117071))

(assert (=> b!1713510 m!2117071))

(assert (=> b!1713510 m!2117303))

(assert (=> b!1712620 d!525770))

(declare-fun d!525772 () Bool)

(assert (=> d!525772 (= (isDefined!2979 lt!654554) (not (isEmpty!11757 lt!654554)))))

(declare-fun bs!401882 () Bool)

(assert (= bs!401882 d!525772))

(assert (=> bs!401882 m!2116579))

(assert (=> b!1712982 d!525772))

(declare-fun d!525774 () Bool)

(declare-fun lostCauseFct!180 (Regex!4634) Bool)

(assert (=> d!525774 (= (lostCause!503 (rulesRegex!664 thiss!24550 rules!3447)) (lostCauseFct!180 (rulesRegex!664 thiss!24550 rules!3447)))))

(declare-fun bs!401883 () Bool)

(assert (= bs!401883 d!525774))

(assert (=> bs!401883 m!2115949))

(declare-fun m!2117305 () Bool)

(assert (=> bs!401883 m!2117305))

(assert (=> b!1712667 d!525774))

(declare-fun bs!401884 () Bool)

(declare-fun d!525776 () Bool)

(assert (= bs!401884 (and d!525776 d!525624)))

(declare-fun lambda!68888 () Int)

(assert (=> bs!401884 (= (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= lambda!68888 lambda!68882))))

(declare-fun bs!401885 () Bool)

(assert (= bs!401885 (and d!525776 d!525756)))

(assert (=> bs!401885 (= (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (h!24111 rules!3447)))) (= lambda!68888 lambda!68886))))

(assert (=> d!525776 true))

(assert (=> d!525776 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 rule!422))) (dynLambda!8513 order!11277 lambda!68888))))

(assert (=> d!525776 (= (equivClasses!1247 (toChars!4668 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 rule!422))) (Forall2!552 lambda!68888))))

(declare-fun bs!401886 () Bool)

(assert (= bs!401886 d!525776))

(declare-fun m!2117307 () Bool)

(assert (=> bs!401886 m!2117307))

(assert (=> b!1712623 d!525776))

(declare-fun b!1713512 () Bool)

(declare-fun res!768266 () Bool)

(declare-fun e!1095840 () Bool)

(assert (=> b!1713512 (=> (not res!768266) (not e!1095840))))

(declare-fun lt!654701 () Option!3636)

(assert (=> b!1713512 (= res!768266 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654701)))) (_2!10612 (get!5507 lt!654701))) lt!654334))))

(declare-fun b!1713513 () Bool)

(declare-fun res!768265 () Bool)

(assert (=> b!1713513 (=> (not res!768265) (not e!1095840))))

(assert (=> b!1713513 (= res!768265 (< (size!14871 (_2!10612 (get!5507 lt!654701))) (size!14871 lt!654334)))))

(declare-fun b!1713514 () Bool)

(assert (=> b!1713514 (= e!1095840 (contains!3326 (t!158393 rules!3447) (rule!5242 (_1!10612 (get!5507 lt!654701)))))))

(declare-fun d!525778 () Bool)

(declare-fun e!1095838 () Bool)

(assert (=> d!525778 e!1095838))

(declare-fun res!768264 () Bool)

(assert (=> d!525778 (=> res!768264 e!1095838)))

(assert (=> d!525778 (= res!768264 (isEmpty!11757 lt!654701))))

(declare-fun e!1095839 () Option!3636)

(assert (=> d!525778 (= lt!654701 e!1095839)))

(declare-fun c!280740 () Bool)

(assert (=> d!525778 (= c!280740 (and (is-Cons!18710 (t!158393 rules!3447)) (is-Nil!18710 (t!158393 (t!158393 rules!3447)))))))

(declare-fun lt!654700 () Unit!32536)

(declare-fun lt!654703 () Unit!32536)

(assert (=> d!525778 (= lt!654700 lt!654703)))

(assert (=> d!525778 (isPrefix!1547 lt!654334 lt!654334)))

(assert (=> d!525778 (= lt!654703 (lemmaIsPrefixRefl!1056 lt!654334 lt!654334))))

(assert (=> d!525778 (rulesValidInductive!1091 thiss!24550 (t!158393 rules!3447))))

(assert (=> d!525778 (= (maxPrefix!1489 thiss!24550 (t!158393 rules!3447) lt!654334) lt!654701)))

(declare-fun b!1713515 () Bool)

(declare-fun call!109562 () Option!3636)

(assert (=> b!1713515 (= e!1095839 call!109562)))

(declare-fun b!1713516 () Bool)

(declare-fun res!768268 () Bool)

(assert (=> b!1713516 (=> (not res!768268) (not e!1095840))))

(assert (=> b!1713516 (= res!768268 (matchR!2108 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654701)))) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654701))))))))

(declare-fun b!1713517 () Bool)

(declare-fun lt!654704 () Option!3636)

(declare-fun lt!654702 () Option!3636)

(assert (=> b!1713517 (= e!1095839 (ite (and (is-None!3635 lt!654704) (is-None!3635 lt!654702)) None!3635 (ite (is-None!3635 lt!654702) lt!654704 (ite (is-None!3635 lt!654704) lt!654702 (ite (>= (size!14869 (_1!10612 (v!25026 lt!654704))) (size!14869 (_1!10612 (v!25026 lt!654702)))) lt!654704 lt!654702)))))))

(assert (=> b!1713517 (= lt!654704 call!109562)))

(assert (=> b!1713517 (= lt!654702 (maxPrefix!1489 thiss!24550 (t!158393 (t!158393 rules!3447)) lt!654334))))

(declare-fun b!1713518 () Bool)

(declare-fun res!768269 () Bool)

(assert (=> b!1713518 (=> (not res!768269) (not e!1095840))))

(assert (=> b!1713518 (= res!768269 (= (value!103895 (_1!10612 (get!5507 lt!654701))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654701)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654701)))))))))

(declare-fun b!1713519 () Bool)

(assert (=> b!1713519 (= e!1095838 e!1095840)))

(declare-fun res!768267 () Bool)

(assert (=> b!1713519 (=> (not res!768267) (not e!1095840))))

(assert (=> b!1713519 (= res!768267 (isDefined!2979 lt!654701))))

(declare-fun b!1713520 () Bool)

(declare-fun res!768263 () Bool)

(assert (=> b!1713520 (=> (not res!768263) (not e!1095840))))

(assert (=> b!1713520 (= res!768263 (= (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654701)))) (originalCharacters!4120 (_1!10612 (get!5507 lt!654701)))))))

(declare-fun bm!109557 () Bool)

(assert (=> bm!109557 (= call!109562 (maxPrefixOneRule!871 thiss!24550 (h!24111 (t!158393 rules!3447)) lt!654334))))

(assert (= (and d!525778 c!280740) b!1713515))

(assert (= (and d!525778 (not c!280740)) b!1713517))

(assert (= (or b!1713515 b!1713517) bm!109557))

(assert (= (and d!525778 (not res!768264)) b!1713519))

(assert (= (and b!1713519 res!768267) b!1713520))

(assert (= (and b!1713520 res!768263) b!1713513))

(assert (= (and b!1713513 res!768265) b!1713512))

(assert (= (and b!1713512 res!768266) b!1713518))

(assert (= (and b!1713518 res!768269) b!1713516))

(assert (= (and b!1713516 res!768268) b!1713514))

(declare-fun m!2117309 () Bool)

(assert (=> b!1713519 m!2117309))

(declare-fun m!2117311 () Bool)

(assert (=> b!1713516 m!2117311))

(declare-fun m!2117313 () Bool)

(assert (=> b!1713516 m!2117313))

(assert (=> b!1713516 m!2117313))

(declare-fun m!2117315 () Bool)

(assert (=> b!1713516 m!2117315))

(assert (=> b!1713516 m!2117315))

(declare-fun m!2117317 () Bool)

(assert (=> b!1713516 m!2117317))

(declare-fun m!2117319 () Bool)

(assert (=> d!525778 m!2117319))

(assert (=> d!525778 m!2116255))

(assert (=> d!525778 m!2116257))

(assert (=> d!525778 m!2116839))

(declare-fun m!2117321 () Bool)

(assert (=> b!1713517 m!2117321))

(assert (=> b!1713513 m!2117311))

(declare-fun m!2117323 () Bool)

(assert (=> b!1713513 m!2117323))

(assert (=> b!1713513 m!2116265))

(assert (=> b!1713518 m!2117311))

(declare-fun m!2117325 () Bool)

(assert (=> b!1713518 m!2117325))

(assert (=> b!1713518 m!2117325))

(declare-fun m!2117327 () Bool)

(assert (=> b!1713518 m!2117327))

(assert (=> b!1713514 m!2117311))

(declare-fun m!2117329 () Bool)

(assert (=> b!1713514 m!2117329))

(declare-fun m!2117331 () Bool)

(assert (=> bm!109557 m!2117331))

(assert (=> b!1713512 m!2117311))

(assert (=> b!1713512 m!2117313))

(assert (=> b!1713512 m!2117313))

(assert (=> b!1713512 m!2117315))

(assert (=> b!1713512 m!2117315))

(declare-fun m!2117333 () Bool)

(assert (=> b!1713512 m!2117333))

(assert (=> b!1713520 m!2117311))

(assert (=> b!1713520 m!2117313))

(assert (=> b!1713520 m!2117313))

(assert (=> b!1713520 m!2117315))

(assert (=> b!1712736 d!525778))

(declare-fun d!525780 () Bool)

(declare-fun lt!654705 () Int)

(assert (=> d!525780 (>= lt!654705 0)))

(declare-fun e!1095841 () Int)

(assert (=> d!525780 (= lt!654705 e!1095841)))

(declare-fun c!280741 () Bool)

(assert (=> d!525780 (= c!280741 (is-Nil!18709 (++!5131 lt!654329 (_2!10612 lt!654328))))))

(assert (=> d!525780 (= (size!14871 (++!5131 lt!654329 (_2!10612 lt!654328))) lt!654705)))

(declare-fun b!1713521 () Bool)

(assert (=> b!1713521 (= e!1095841 0)))

(declare-fun b!1713522 () Bool)

(assert (=> b!1713522 (= e!1095841 (+ 1 (size!14871 (t!158392 (++!5131 lt!654329 (_2!10612 lt!654328))))))))

(assert (= (and d!525780 c!280741) b!1713521))

(assert (= (and d!525780 (not c!280741)) b!1713522))

(declare-fun m!2117335 () Bool)

(assert (=> b!1713522 m!2117335))

(assert (=> b!1712773 d!525780))

(assert (=> b!1712773 d!525666))

(declare-fun d!525782 () Bool)

(declare-fun lt!654706 () Int)

(assert (=> d!525782 (>= lt!654706 0)))

(declare-fun e!1095842 () Int)

(assert (=> d!525782 (= lt!654706 e!1095842)))

(declare-fun c!280742 () Bool)

(assert (=> d!525782 (= c!280742 (is-Nil!18709 lt!654334))))

(assert (=> d!525782 (= (size!14871 lt!654334) lt!654706)))

(declare-fun b!1713523 () Bool)

(assert (=> b!1713523 (= e!1095842 0)))

(declare-fun b!1713524 () Bool)

(assert (=> b!1713524 (= e!1095842 (+ 1 (size!14871 (t!158392 lt!654334))))))

(assert (= (and d!525782 c!280742) b!1713523))

(assert (= (and d!525782 (not c!280742)) b!1713524))

(declare-fun m!2117337 () Bool)

(assert (=> b!1713524 m!2117337))

(assert (=> b!1712949 d!525782))

(assert (=> b!1712949 d!525666))

(declare-fun d!525784 () Bool)

(declare-fun lt!654707 () Int)

(assert (=> d!525784 (>= lt!654707 0)))

(declare-fun e!1095843 () Int)

(assert (=> d!525784 (= lt!654707 e!1095843)))

(declare-fun c!280743 () Bool)

(assert (=> d!525784 (= c!280743 (is-Nil!18709 (_2!10612 (get!5507 lt!654419))))))

(assert (=> d!525784 (= (size!14871 (_2!10612 (get!5507 lt!654419))) lt!654707)))

(declare-fun b!1713525 () Bool)

(assert (=> b!1713525 (= e!1095843 0)))

(declare-fun b!1713526 () Bool)

(assert (=> b!1713526 (= e!1095843 (+ 1 (size!14871 (t!158392 (_2!10612 (get!5507 lt!654419))))))))

(assert (= (and d!525784 c!280743) b!1713525))

(assert (= (and d!525784 (not c!280743)) b!1713526))

(declare-fun m!2117339 () Bool)

(assert (=> b!1713526 m!2117339))

(assert (=> b!1712732 d!525784))

(assert (=> b!1712732 d!525682))

(assert (=> b!1712732 d!525782))

(assert (=> b!1712930 d!525594))

(declare-fun d!525786 () Bool)

(assert (=> d!525786 (isEmpty!11757 (maxPrefixOneRule!871 thiss!24550 (rule!5242 lt!654520) lt!654535))))

(declare-fun lt!654710 () Unit!32536)

(declare-fun choose!10402 (LexerInterface!2935 Rule!6412 List!18780 List!18779) Unit!32536)

(assert (=> d!525786 (= lt!654710 (choose!10402 thiss!24550 (rule!5242 lt!654520) rules!3447 lt!654535))))

(assert (=> d!525786 (not (isEmpty!11753 rules!3447))))

(assert (=> d!525786 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!250 thiss!24550 (rule!5242 lt!654520) rules!3447 lt!654535) lt!654710)))

(declare-fun bs!401887 () Bool)

(assert (= bs!401887 d!525786))

(assert (=> bs!401887 m!2116479))

(assert (=> bs!401887 m!2116479))

(assert (=> bs!401887 m!2116481))

(declare-fun m!2117341 () Bool)

(assert (=> bs!401887 m!2117341))

(assert (=> bs!401887 m!2115925))

(assert (=> b!1712930 d!525786))

(declare-fun b!1713527 () Bool)

(declare-fun e!1095846 () Option!3636)

(declare-fun lt!654715 () tuple2!18428)

(assert (=> b!1713527 (= e!1095846 (Some!3635 (tuple2!18421 (Token!6179 (apply!5115 (transformation!3306 (rule!5242 lt!654520)) (seqFromList!2280 (_1!10616 lt!654715))) (rule!5242 lt!654520) (size!14873 (seqFromList!2280 (_1!10616 lt!654715))) (_1!10616 lt!654715)) (_2!10616 lt!654715))))))

(declare-fun lt!654713 () Unit!32536)

(assert (=> b!1713527 (= lt!654713 (longestMatchIsAcceptedByMatchOrIsEmpty!370 (regex!3306 (rule!5242 lt!654520)) lt!654535))))

(declare-fun res!768274 () Bool)

(assert (=> b!1713527 (= res!768274 (isEmpty!11754 (_1!10616 (findLongestMatchInner!386 (regex!3306 (rule!5242 lt!654520)) Nil!18709 (size!14871 Nil!18709) lt!654535 lt!654535 (size!14871 lt!654535)))))))

(declare-fun e!1095844 () Bool)

(assert (=> b!1713527 (=> res!768274 e!1095844)))

(assert (=> b!1713527 e!1095844))

(declare-fun lt!654711 () Unit!32536)

(assert (=> b!1713527 (= lt!654711 lt!654713)))

(declare-fun lt!654712 () Unit!32536)

(assert (=> b!1713527 (= lt!654712 (lemmaSemiInverse!452 (transformation!3306 (rule!5242 lt!654520)) (seqFromList!2280 (_1!10616 lt!654715))))))

(declare-fun b!1713529 () Bool)

(declare-fun res!768276 () Bool)

(declare-fun e!1095847 () Bool)

(assert (=> b!1713529 (=> (not res!768276) (not e!1095847))))

(declare-fun lt!654714 () Option!3636)

(assert (=> b!1713529 (= res!768276 (= (rule!5242 (_1!10612 (get!5507 lt!654714))) (rule!5242 lt!654520)))))

(declare-fun b!1713530 () Bool)

(declare-fun res!768271 () Bool)

(assert (=> b!1713530 (=> (not res!768271) (not e!1095847))))

(assert (=> b!1713530 (= res!768271 (= (value!103895 (_1!10612 (get!5507 lt!654714))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654714)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654714)))))))))

(declare-fun b!1713531 () Bool)

(declare-fun res!768275 () Bool)

(assert (=> b!1713531 (=> (not res!768275) (not e!1095847))))

(assert (=> b!1713531 (= res!768275 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654714)))) (_2!10612 (get!5507 lt!654714))) lt!654535))))

(declare-fun b!1713532 () Bool)

(assert (=> b!1713532 (= e!1095846 None!3635)))

(declare-fun b!1713533 () Bool)

(assert (=> b!1713533 (= e!1095844 (matchR!2108 (regex!3306 (rule!5242 lt!654520)) (_1!10616 (findLongestMatchInner!386 (regex!3306 (rule!5242 lt!654520)) Nil!18709 (size!14871 Nil!18709) lt!654535 lt!654535 (size!14871 lt!654535)))))))

(declare-fun b!1713528 () Bool)

(declare-fun e!1095845 () Bool)

(assert (=> b!1713528 (= e!1095845 e!1095847)))

(declare-fun res!768270 () Bool)

(assert (=> b!1713528 (=> (not res!768270) (not e!1095847))))

(assert (=> b!1713528 (= res!768270 (matchR!2108 (regex!3306 (rule!5242 lt!654520)) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654714))))))))

(declare-fun d!525788 () Bool)

(assert (=> d!525788 e!1095845))

(declare-fun res!768273 () Bool)

(assert (=> d!525788 (=> res!768273 e!1095845)))

(assert (=> d!525788 (= res!768273 (isEmpty!11757 lt!654714))))

(assert (=> d!525788 (= lt!654714 e!1095846)))

(declare-fun c!280744 () Bool)

(assert (=> d!525788 (= c!280744 (isEmpty!11754 (_1!10616 lt!654715)))))

(assert (=> d!525788 (= lt!654715 (findLongestMatch!313 (regex!3306 (rule!5242 lt!654520)) lt!654535))))

(assert (=> d!525788 (ruleValid!805 thiss!24550 (rule!5242 lt!654520))))

(assert (=> d!525788 (= (maxPrefixOneRule!871 thiss!24550 (rule!5242 lt!654520) lt!654535) lt!654714)))

(declare-fun b!1713534 () Bool)

(assert (=> b!1713534 (= e!1095847 (= (size!14869 (_1!10612 (get!5507 lt!654714))) (size!14871 (originalCharacters!4120 (_1!10612 (get!5507 lt!654714))))))))

(declare-fun b!1713535 () Bool)

(declare-fun res!768272 () Bool)

(assert (=> b!1713535 (=> (not res!768272) (not e!1095847))))

(assert (=> b!1713535 (= res!768272 (< (size!14871 (_2!10612 (get!5507 lt!654714))) (size!14871 lt!654535)))))

(assert (= (and d!525788 c!280744) b!1713532))

(assert (= (and d!525788 (not c!280744)) b!1713527))

(assert (= (and b!1713527 (not res!768274)) b!1713533))

(assert (= (and d!525788 (not res!768273)) b!1713528))

(assert (= (and b!1713528 res!768270) b!1713531))

(assert (= (and b!1713531 res!768275) b!1713535))

(assert (= (and b!1713535 res!768272) b!1713529))

(assert (= (and b!1713529 res!768276) b!1713530))

(assert (= (and b!1713530 res!768271) b!1713534))

(declare-fun m!2117343 () Bool)

(assert (=> b!1713535 m!2117343))

(declare-fun m!2117345 () Bool)

(assert (=> b!1713535 m!2117345))

(declare-fun m!2117347 () Bool)

(assert (=> b!1713535 m!2117347))

(assert (=> b!1713531 m!2117343))

(declare-fun m!2117349 () Bool)

(assert (=> b!1713531 m!2117349))

(assert (=> b!1713531 m!2117349))

(declare-fun m!2117351 () Bool)

(assert (=> b!1713531 m!2117351))

(assert (=> b!1713531 m!2117351))

(declare-fun m!2117353 () Bool)

(assert (=> b!1713531 m!2117353))

(declare-fun m!2117355 () Bool)

(assert (=> d!525788 m!2117355))

(declare-fun m!2117357 () Bool)

(assert (=> d!525788 m!2117357))

(declare-fun m!2117359 () Bool)

(assert (=> d!525788 m!2117359))

(declare-fun m!2117361 () Bool)

(assert (=> d!525788 m!2117361))

(assert (=> b!1713534 m!2117343))

(declare-fun m!2117363 () Bool)

(assert (=> b!1713534 m!2117363))

(assert (=> b!1713529 m!2117343))

(assert (=> b!1713533 m!2116889))

(assert (=> b!1713533 m!2117347))

(assert (=> b!1713533 m!2116889))

(assert (=> b!1713533 m!2117347))

(declare-fun m!2117365 () Bool)

(assert (=> b!1713533 m!2117365))

(declare-fun m!2117367 () Bool)

(assert (=> b!1713533 m!2117367))

(declare-fun m!2117369 () Bool)

(assert (=> b!1713527 m!2117369))

(assert (=> b!1713527 m!2117369))

(declare-fun m!2117371 () Bool)

(assert (=> b!1713527 m!2117371))

(declare-fun m!2117373 () Bool)

(assert (=> b!1713527 m!2117373))

(assert (=> b!1713527 m!2117369))

(declare-fun m!2117375 () Bool)

(assert (=> b!1713527 m!2117375))

(declare-fun m!2117377 () Bool)

(assert (=> b!1713527 m!2117377))

(assert (=> b!1713527 m!2117369))

(declare-fun m!2117379 () Bool)

(assert (=> b!1713527 m!2117379))

(assert (=> b!1713527 m!2117347))

(assert (=> b!1713527 m!2116889))

(assert (=> b!1713527 m!2117347))

(assert (=> b!1713527 m!2117365))

(assert (=> b!1713527 m!2116889))

(assert (=> b!1713528 m!2117343))

(assert (=> b!1713528 m!2117349))

(assert (=> b!1713528 m!2117349))

(assert (=> b!1713528 m!2117351))

(assert (=> b!1713528 m!2117351))

(declare-fun m!2117381 () Bool)

(assert (=> b!1713528 m!2117381))

(assert (=> b!1713530 m!2117343))

(declare-fun m!2117383 () Bool)

(assert (=> b!1713530 m!2117383))

(assert (=> b!1713530 m!2117383))

(declare-fun m!2117385 () Bool)

(assert (=> b!1713530 m!2117385))

(assert (=> b!1712930 d!525788))

(declare-fun d!525790 () Bool)

(declare-fun e!1095852 () Bool)

(assert (=> d!525790 e!1095852))

(declare-fun c!280747 () Bool)

(assert (=> d!525790 (= c!280747 (is-EmptyExpr!4634 (regex!3306 (rule!5242 lt!654520))))))

(declare-fun lt!654716 () Bool)

(declare-fun e!1095848 () Bool)

(assert (=> d!525790 (= lt!654716 e!1095848)))

(declare-fun c!280745 () Bool)

(assert (=> d!525790 (= c!280745 (isEmpty!11754 lt!654528))))

(assert (=> d!525790 (validRegex!1867 (regex!3306 (rule!5242 lt!654520)))))

(assert (=> d!525790 (= (matchR!2108 (regex!3306 (rule!5242 lt!654520)) lt!654528) lt!654716)))

(declare-fun b!1713536 () Bool)

(assert (=> b!1713536 (= e!1095848 (nullable!1393 (regex!3306 (rule!5242 lt!654520))))))

(declare-fun b!1713537 () Bool)

(declare-fun res!768282 () Bool)

(declare-fun e!1095854 () Bool)

(assert (=> b!1713537 (=> res!768282 e!1095854)))

(assert (=> b!1713537 (= res!768282 (not (is-ElementMatch!4634 (regex!3306 (rule!5242 lt!654520)))))))

(declare-fun e!1095851 () Bool)

(assert (=> b!1713537 (= e!1095851 e!1095854)))

(declare-fun b!1713538 () Bool)

(declare-fun res!768283 () Bool)

(declare-fun e!1095849 () Bool)

(assert (=> b!1713538 (=> res!768283 e!1095849)))

(assert (=> b!1713538 (= res!768283 (not (isEmpty!11754 (tail!2556 lt!654528))))))

(declare-fun b!1713539 () Bool)

(declare-fun e!1095850 () Bool)

(assert (=> b!1713539 (= e!1095854 e!1095850)))

(declare-fun res!768277 () Bool)

(assert (=> b!1713539 (=> (not res!768277) (not e!1095850))))

(assert (=> b!1713539 (= res!768277 (not lt!654716))))

(declare-fun b!1713540 () Bool)

(declare-fun res!768279 () Bool)

(assert (=> b!1713540 (=> res!768279 e!1095854)))

(declare-fun e!1095853 () Bool)

(assert (=> b!1713540 (= res!768279 e!1095853)))

(declare-fun res!768281 () Bool)

(assert (=> b!1713540 (=> (not res!768281) (not e!1095853))))

(assert (=> b!1713540 (= res!768281 lt!654716)))

(declare-fun b!1713541 () Bool)

(declare-fun res!768284 () Bool)

(assert (=> b!1713541 (=> (not res!768284) (not e!1095853))))

(declare-fun call!109563 () Bool)

(assert (=> b!1713541 (= res!768284 (not call!109563))))

(declare-fun b!1713542 () Bool)

(assert (=> b!1713542 (= e!1095852 e!1095851)))

(declare-fun c!280746 () Bool)

(assert (=> b!1713542 (= c!280746 (is-EmptyLang!4634 (regex!3306 (rule!5242 lt!654520))))))

(declare-fun b!1713543 () Bool)

(assert (=> b!1713543 (= e!1095851 (not lt!654716))))

(declare-fun b!1713544 () Bool)

(declare-fun res!768278 () Bool)

(assert (=> b!1713544 (=> (not res!768278) (not e!1095853))))

(assert (=> b!1713544 (= res!768278 (isEmpty!11754 (tail!2556 lt!654528)))))

(declare-fun b!1713545 () Bool)

(assert (=> b!1713545 (= e!1095853 (= (head!3845 lt!654528) (c!280547 (regex!3306 (rule!5242 lt!654520)))))))

(declare-fun b!1713546 () Bool)

(assert (=> b!1713546 (= e!1095849 (not (= (head!3845 lt!654528) (c!280547 (regex!3306 (rule!5242 lt!654520))))))))

(declare-fun b!1713547 () Bool)

(assert (=> b!1713547 (= e!1095850 e!1095849)))

(declare-fun res!768280 () Bool)

(assert (=> b!1713547 (=> res!768280 e!1095849)))

(assert (=> b!1713547 (= res!768280 call!109563)))

(declare-fun b!1713548 () Bool)

(assert (=> b!1713548 (= e!1095852 (= lt!654716 call!109563))))

(declare-fun bm!109558 () Bool)

(assert (=> bm!109558 (= call!109563 (isEmpty!11754 lt!654528))))

(declare-fun b!1713549 () Bool)

(assert (=> b!1713549 (= e!1095848 (matchR!2108 (derivativeStep!1161 (regex!3306 (rule!5242 lt!654520)) (head!3845 lt!654528)) (tail!2556 lt!654528)))))

(assert (= (and d!525790 c!280745) b!1713536))

(assert (= (and d!525790 (not c!280745)) b!1713549))

(assert (= (and d!525790 c!280747) b!1713548))

(assert (= (and d!525790 (not c!280747)) b!1713542))

(assert (= (and b!1713542 c!280746) b!1713543))

(assert (= (and b!1713542 (not c!280746)) b!1713537))

(assert (= (and b!1713537 (not res!768282)) b!1713540))

(assert (= (and b!1713540 res!768281) b!1713541))

(assert (= (and b!1713541 res!768284) b!1713544))

(assert (= (and b!1713544 res!768278) b!1713545))

(assert (= (and b!1713540 (not res!768279)) b!1713539))

(assert (= (and b!1713539 res!768277) b!1713547))

(assert (= (and b!1713547 (not res!768280)) b!1713538))

(assert (= (and b!1713538 (not res!768283)) b!1713546))

(assert (= (or b!1713548 b!1713541 b!1713547) bm!109558))

(declare-fun m!2117387 () Bool)

(assert (=> b!1713545 m!2117387))

(assert (=> b!1713546 m!2117387))

(declare-fun m!2117389 () Bool)

(assert (=> b!1713544 m!2117389))

(assert (=> b!1713544 m!2117389))

(declare-fun m!2117391 () Bool)

(assert (=> b!1713544 m!2117391))

(assert (=> b!1713538 m!2117389))

(assert (=> b!1713538 m!2117389))

(assert (=> b!1713538 m!2117391))

(assert (=> b!1713549 m!2117387))

(assert (=> b!1713549 m!2117387))

(declare-fun m!2117393 () Bool)

(assert (=> b!1713549 m!2117393))

(assert (=> b!1713549 m!2117389))

(assert (=> b!1713549 m!2117393))

(assert (=> b!1713549 m!2117389))

(declare-fun m!2117395 () Bool)

(assert (=> b!1713549 m!2117395))

(declare-fun m!2117397 () Bool)

(assert (=> bm!109558 m!2117397))

(declare-fun m!2117399 () Bool)

(assert (=> b!1713536 m!2117399))

(assert (=> d!525790 m!2117397))

(declare-fun m!2117401 () Bool)

(assert (=> d!525790 m!2117401))

(assert (=> b!1712930 d!525790))

(assert (=> b!1712930 d!525596))

(declare-fun d!525792 () Bool)

(assert (=> d!525792 (= (isEmpty!11757 (maxPrefixOneRule!871 thiss!24550 (rule!5242 lt!654520) lt!654535)) (not (is-Some!3635 (maxPrefixOneRule!871 thiss!24550 (rule!5242 lt!654520) lt!654535))))))

(assert (=> b!1712930 d!525792))

(declare-fun d!525794 () Bool)

(assert (=> d!525794 (not (matchR!2108 (regex!3306 (rule!5242 lt!654520)) lt!654528))))

(declare-fun lt!654719 () Unit!32536)

(declare-fun choose!10403 (LexerInterface!2935 Rule!6412 List!18779 List!18779) Unit!32536)

(assert (=> d!525794 (= lt!654719 (choose!10403 thiss!24550 (rule!5242 lt!654520) lt!654528 (++!5131 lt!654323 suffix!1421)))))

(assert (=> d!525794 (isPrefix!1547 lt!654528 (++!5131 lt!654323 suffix!1421))))

(assert (=> d!525794 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!246 thiss!24550 (rule!5242 lt!654520) lt!654528 (++!5131 lt!654323 suffix!1421)) lt!654719)))

(declare-fun bs!401888 () Bool)

(assert (= bs!401888 d!525794))

(assert (=> bs!401888 m!2116485))

(assert (=> bs!401888 m!2115911))

(declare-fun m!2117403 () Bool)

(assert (=> bs!401888 m!2117403))

(assert (=> bs!401888 m!2115911))

(declare-fun m!2117405 () Bool)

(assert (=> bs!401888 m!2117405))

(assert (=> b!1712930 d!525794))

(assert (=> b!1712930 d!525498))

(declare-fun d!525796 () Bool)

(assert (=> d!525796 (= (isEmpty!11757 lt!654554) (not (is-Some!3635 lt!654554)))))

(assert (=> d!525504 d!525796))

(declare-fun b!1713552 () Bool)

(declare-fun e!1095856 () Bool)

(assert (=> b!1713552 (= e!1095856 (isPrefix!1547 (tail!2556 lt!654323) (tail!2556 lt!654323)))))

(declare-fun d!525798 () Bool)

(declare-fun e!1095857 () Bool)

(assert (=> d!525798 e!1095857))

(declare-fun res!768288 () Bool)

(assert (=> d!525798 (=> res!768288 e!1095857)))

(declare-fun lt!654720 () Bool)

(assert (=> d!525798 (= res!768288 (not lt!654720))))

(declare-fun e!1095855 () Bool)

(assert (=> d!525798 (= lt!654720 e!1095855)))

(declare-fun res!768287 () Bool)

(assert (=> d!525798 (=> res!768287 e!1095855)))

(assert (=> d!525798 (= res!768287 (is-Nil!18709 lt!654323))))

(assert (=> d!525798 (= (isPrefix!1547 lt!654323 lt!654323) lt!654720)))

(declare-fun b!1713553 () Bool)

(assert (=> b!1713553 (= e!1095857 (>= (size!14871 lt!654323) (size!14871 lt!654323)))))

(declare-fun b!1713550 () Bool)

(assert (=> b!1713550 (= e!1095855 e!1095856)))

(declare-fun res!768285 () Bool)

(assert (=> b!1713550 (=> (not res!768285) (not e!1095856))))

(assert (=> b!1713550 (= res!768285 (not (is-Nil!18709 lt!654323)))))

(declare-fun b!1713551 () Bool)

(declare-fun res!768286 () Bool)

(assert (=> b!1713551 (=> (not res!768286) (not e!1095856))))

(assert (=> b!1713551 (= res!768286 (= (head!3845 lt!654323) (head!3845 lt!654323)))))

(assert (= (and d!525798 (not res!768287)) b!1713550))

(assert (= (and b!1713550 res!768285) b!1713551))

(assert (= (and b!1713551 res!768286) b!1713552))

(assert (= (and d!525798 (not res!768288)) b!1713553))

(assert (=> b!1713552 m!2116099))

(assert (=> b!1713552 m!2116099))

(assert (=> b!1713552 m!2116099))

(assert (=> b!1713552 m!2116099))

(declare-fun m!2117407 () Bool)

(assert (=> b!1713552 m!2117407))

(assert (=> b!1713553 m!2116195))

(assert (=> b!1713553 m!2116195))

(assert (=> b!1713551 m!2116097))

(assert (=> b!1713551 m!2116097))

(assert (=> d!525504 d!525798))

(declare-fun d!525800 () Bool)

(assert (=> d!525800 (isPrefix!1547 lt!654323 lt!654323)))

(declare-fun lt!654723 () Unit!32536)

(declare-fun choose!10404 (List!18779 List!18779) Unit!32536)

(assert (=> d!525800 (= lt!654723 (choose!10404 lt!654323 lt!654323))))

(assert (=> d!525800 (= (lemmaIsPrefixRefl!1056 lt!654323 lt!654323) lt!654723)))

(declare-fun bs!401889 () Bool)

(assert (= bs!401889 d!525800))

(assert (=> bs!401889 m!2116581))

(declare-fun m!2117409 () Bool)

(assert (=> bs!401889 m!2117409))

(assert (=> d!525504 d!525800))

(declare-fun bs!401890 () Bool)

(declare-fun d!525802 () Bool)

(assert (= bs!401890 (and d!525802 d!525626)))

(declare-fun lambda!68891 () Int)

(assert (=> bs!401890 (= lambda!68891 lambda!68885)))

(assert (=> d!525802 true))

(declare-fun lt!654726 () Bool)

(assert (=> d!525802 (= lt!654726 (forall!4248 rules!3447 lambda!68891))))

(declare-fun e!1095862 () Bool)

(assert (=> d!525802 (= lt!654726 e!1095862)))

(declare-fun res!768294 () Bool)

(assert (=> d!525802 (=> res!768294 e!1095862)))

(assert (=> d!525802 (= res!768294 (not (is-Cons!18710 rules!3447)))))

(assert (=> d!525802 (= (rulesValidInductive!1091 thiss!24550 rules!3447) lt!654726)))

(declare-fun b!1713558 () Bool)

(declare-fun e!1095863 () Bool)

(assert (=> b!1713558 (= e!1095862 e!1095863)))

(declare-fun res!768293 () Bool)

(assert (=> b!1713558 (=> (not res!768293) (not e!1095863))))

(assert (=> b!1713558 (= res!768293 (ruleValid!805 thiss!24550 (h!24111 rules!3447)))))

(declare-fun b!1713559 () Bool)

(assert (=> b!1713559 (= e!1095863 (rulesValidInductive!1091 thiss!24550 (t!158393 rules!3447)))))

(assert (= (and d!525802 (not res!768294)) b!1713558))

(assert (= (and b!1713558 res!768293) b!1713559))

(declare-fun m!2117411 () Bool)

(assert (=> d!525802 m!2117411))

(assert (=> b!1713558 m!2116885))

(assert (=> b!1713559 m!2116839))

(assert (=> d!525504 d!525802))

(declare-fun d!525804 () Bool)

(declare-fun lt!654727 () Int)

(assert (=> d!525804 (>= lt!654727 0)))

(declare-fun e!1095864 () Int)

(assert (=> d!525804 (= lt!654727 e!1095864)))

(declare-fun c!280748 () Bool)

(assert (=> d!525804 (= c!280748 (is-Nil!18709 lt!654404))))

(assert (=> d!525804 (= (size!14871 lt!654404) lt!654727)))

(declare-fun b!1713560 () Bool)

(assert (=> b!1713560 (= e!1095864 0)))

(declare-fun b!1713561 () Bool)

(assert (=> b!1713561 (= e!1095864 (+ 1 (size!14871 (t!158392 lt!654404))))))

(assert (= (and d!525804 c!280748) b!1713560))

(assert (= (and d!525804 (not c!280748)) b!1713561))

(declare-fun m!2117413 () Bool)

(assert (=> b!1713561 m!2117413))

(assert (=> b!1712679 d!525804))

(assert (=> b!1712679 d!525612))

(declare-fun d!525806 () Bool)

(declare-fun lt!654728 () Int)

(assert (=> d!525806 (>= lt!654728 0)))

(declare-fun e!1095865 () Int)

(assert (=> d!525806 (= lt!654728 e!1095865)))

(declare-fun c!280749 () Bool)

(assert (=> d!525806 (= c!280749 (is-Nil!18709 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))

(assert (=> d!525806 (= (size!14871 (Cons!18709 (head!3845 suffix!1421) Nil!18709)) lt!654728)))

(declare-fun b!1713562 () Bool)

(assert (=> b!1713562 (= e!1095865 0)))

(declare-fun b!1713563 () Bool)

(assert (=> b!1713563 (= e!1095865 (+ 1 (size!14871 (t!158392 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(assert (= (and d!525806 c!280749) b!1713562))

(assert (= (and d!525806 (not c!280749)) b!1713563))

(declare-fun m!2117415 () Bool)

(assert (=> b!1713563 m!2117415))

(assert (=> b!1712679 d!525806))

(declare-fun d!525808 () Bool)

(assert (=> d!525808 (= (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))) (is-Nil!18709 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 lt!654328))))))))

(assert (=> b!1712999 d!525808))

(assert (=> b!1712999 d!525636))

(assert (=> b!1712785 d!525782))

(assert (=> b!1712785 d!525612))

(declare-fun d!525810 () Bool)

(assert (=> d!525810 (= (list!7551 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))) (list!7553 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))))))

(declare-fun bs!401891 () Bool)

(assert (= bs!401891 d!525810))

(declare-fun m!2117417 () Bool)

(assert (=> bs!401891 m!2117417))

(assert (=> b!1712989 d!525810))

(assert (=> b!1712626 d!525688))

(assert (=> b!1712626 d!525690))

(declare-fun d!525812 () Bool)

(assert (=> d!525812 (= (isEmpty!11757 lt!654419) (not (is-Some!3635 lt!654419)))))

(assert (=> d!525408 d!525812))

(declare-fun b!1713566 () Bool)

(declare-fun e!1095867 () Bool)

(assert (=> b!1713566 (= e!1095867 (isPrefix!1547 (tail!2556 lt!654334) (tail!2556 lt!654334)))))

(declare-fun d!525814 () Bool)

(declare-fun e!1095868 () Bool)

(assert (=> d!525814 e!1095868))

(declare-fun res!768298 () Bool)

(assert (=> d!525814 (=> res!768298 e!1095868)))

(declare-fun lt!654729 () Bool)

(assert (=> d!525814 (= res!768298 (not lt!654729))))

(declare-fun e!1095866 () Bool)

(assert (=> d!525814 (= lt!654729 e!1095866)))

(declare-fun res!768297 () Bool)

(assert (=> d!525814 (=> res!768297 e!1095866)))

(assert (=> d!525814 (= res!768297 (is-Nil!18709 lt!654334))))

(assert (=> d!525814 (= (isPrefix!1547 lt!654334 lt!654334) lt!654729)))

(declare-fun b!1713567 () Bool)

(assert (=> b!1713567 (= e!1095868 (>= (size!14871 lt!654334) (size!14871 lt!654334)))))

(declare-fun b!1713564 () Bool)

(assert (=> b!1713564 (= e!1095866 e!1095867)))

(declare-fun res!768295 () Bool)

(assert (=> b!1713564 (=> (not res!768295) (not e!1095867))))

(assert (=> b!1713564 (= res!768295 (not (is-Nil!18709 lt!654334)))))

(declare-fun b!1713565 () Bool)

(declare-fun res!768296 () Bool)

(assert (=> b!1713565 (=> (not res!768296) (not e!1095867))))

(assert (=> b!1713565 (= res!768296 (= (head!3845 lt!654334) (head!3845 lt!654334)))))

(assert (= (and d!525814 (not res!768297)) b!1713564))

(assert (= (and b!1713564 res!768295) b!1713565))

(assert (= (and b!1713565 res!768296) b!1713566))

(assert (= (and d!525814 (not res!768298)) b!1713567))

(assert (=> b!1713566 m!2116335))

(assert (=> b!1713566 m!2116335))

(assert (=> b!1713566 m!2116335))

(assert (=> b!1713566 m!2116335))

(declare-fun m!2117419 () Bool)

(assert (=> b!1713566 m!2117419))

(assert (=> b!1713567 m!2116265))

(assert (=> b!1713567 m!2116265))

(assert (=> b!1713565 m!2116339))

(assert (=> b!1713565 m!2116339))

(assert (=> d!525408 d!525814))

(declare-fun d!525816 () Bool)

(assert (=> d!525816 (isPrefix!1547 lt!654334 lt!654334)))

(declare-fun lt!654730 () Unit!32536)

(assert (=> d!525816 (= lt!654730 (choose!10404 lt!654334 lt!654334))))

(assert (=> d!525816 (= (lemmaIsPrefixRefl!1056 lt!654334 lt!654334) lt!654730)))

(declare-fun bs!401892 () Bool)

(assert (= bs!401892 d!525816))

(assert (=> bs!401892 m!2116255))

(declare-fun m!2117421 () Bool)

(assert (=> bs!401892 m!2117421))

(assert (=> d!525408 d!525816))

(assert (=> d!525408 d!525802))

(declare-fun d!525818 () Bool)

(assert (=> d!525818 (= (inv!16 (value!103895 token!523)) (= (charsToInt!0 (text!24219 (value!103895 token!523))) (value!103886 (value!103895 token!523))))))

(declare-fun bs!401893 () Bool)

(assert (= bs!401893 d!525818))

(declare-fun m!2117423 () Bool)

(assert (=> bs!401893 m!2117423))

(assert (=> b!1712655 d!525818))

(declare-fun b!1713570 () Bool)

(declare-fun e!1095870 () Bool)

(assert (=> b!1713570 (= e!1095870 (isPrefix!1547 (tail!2556 lt!654323) (tail!2556 (++!5131 lt!654323 suffix!1421))))))

(declare-fun d!525820 () Bool)

(declare-fun e!1095871 () Bool)

(assert (=> d!525820 e!1095871))

(declare-fun res!768302 () Bool)

(assert (=> d!525820 (=> res!768302 e!1095871)))

(declare-fun lt!654731 () Bool)

(assert (=> d!525820 (= res!768302 (not lt!654731))))

(declare-fun e!1095869 () Bool)

(assert (=> d!525820 (= lt!654731 e!1095869)))

(declare-fun res!768301 () Bool)

(assert (=> d!525820 (=> res!768301 e!1095869)))

(assert (=> d!525820 (= res!768301 (is-Nil!18709 lt!654323))))

(assert (=> d!525820 (= (isPrefix!1547 lt!654323 (++!5131 lt!654323 suffix!1421)) lt!654731)))

(declare-fun b!1713571 () Bool)

(assert (=> b!1713571 (= e!1095871 (>= (size!14871 (++!5131 lt!654323 suffix!1421)) (size!14871 lt!654323)))))

(declare-fun b!1713568 () Bool)

(assert (=> b!1713568 (= e!1095869 e!1095870)))

(declare-fun res!768299 () Bool)

(assert (=> b!1713568 (=> (not res!768299) (not e!1095870))))

(assert (=> b!1713568 (= res!768299 (not (is-Nil!18709 (++!5131 lt!654323 suffix!1421))))))

(declare-fun b!1713569 () Bool)

(declare-fun res!768300 () Bool)

(assert (=> b!1713569 (=> (not res!768300) (not e!1095870))))

(assert (=> b!1713569 (= res!768300 (= (head!3845 lt!654323) (head!3845 (++!5131 lt!654323 suffix!1421))))))

(assert (= (and d!525820 (not res!768301)) b!1713568))

(assert (= (and b!1713568 res!768299) b!1713569))

(assert (= (and b!1713569 res!768300) b!1713570))

(assert (= (and d!525820 (not res!768302)) b!1713571))

(assert (=> b!1713570 m!2116099))

(assert (=> b!1713570 m!2115911))

(assert (=> b!1713570 m!2117203))

(assert (=> b!1713570 m!2116099))

(assert (=> b!1713570 m!2117203))

(declare-fun m!2117425 () Bool)

(assert (=> b!1713570 m!2117425))

(assert (=> b!1713571 m!2115911))

(assert (=> b!1713571 m!2117165))

(assert (=> b!1713571 m!2116195))

(assert (=> b!1713569 m!2116097))

(assert (=> b!1713569 m!2115911))

(assert (=> b!1713569 m!2117211))

(assert (=> d!525424 d!525820))

(assert (=> d!525424 d!525498))

(declare-fun d!525822 () Bool)

(assert (=> d!525822 (isPrefix!1547 lt!654323 (++!5131 lt!654323 suffix!1421))))

(assert (=> d!525822 true))

(declare-fun _$46!1180 () Unit!32536)

(assert (=> d!525822 (= (choose!10393 lt!654323 suffix!1421) _$46!1180)))

(declare-fun bs!401894 () Bool)

(assert (= bs!401894 d!525822))

(assert (=> bs!401894 m!2115911))

(assert (=> bs!401894 m!2115911))

(assert (=> bs!401894 m!2116277))

(assert (=> d!525424 d!525822))

(declare-fun d!525824 () Bool)

(declare-fun lt!654732 () Bool)

(assert (=> d!525824 (= lt!654732 (set.member rule!422 (content!2663 (t!158393 rules!3447))))))

(declare-fun e!1095872 () Bool)

(assert (=> d!525824 (= lt!654732 e!1095872)))

(declare-fun res!768304 () Bool)

(assert (=> d!525824 (=> (not res!768304) (not e!1095872))))

(assert (=> d!525824 (= res!768304 (is-Cons!18710 (t!158393 rules!3447)))))

(assert (=> d!525824 (= (contains!3326 (t!158393 rules!3447) rule!422) lt!654732)))

(declare-fun b!1713572 () Bool)

(declare-fun e!1095873 () Bool)

(assert (=> b!1713572 (= e!1095872 e!1095873)))

(declare-fun res!768303 () Bool)

(assert (=> b!1713572 (=> res!768303 e!1095873)))

(assert (=> b!1713572 (= res!768303 (= (h!24111 (t!158393 rules!3447)) rule!422))))

(declare-fun b!1713573 () Bool)

(assert (=> b!1713573 (= e!1095873 (contains!3326 (t!158393 (t!158393 rules!3447)) rule!422))))

(assert (= (and d!525824 res!768304) b!1713572))

(assert (= (and b!1713572 (not res!768303)) b!1713573))

(assert (=> d!525824 m!2116857))

(declare-fun m!2117427 () Bool)

(assert (=> d!525824 m!2117427))

(declare-fun m!2117429 () Bool)

(assert (=> b!1713573 m!2117429))

(assert (=> b!1712643 d!525824))

(declare-fun b!1713574 () Bool)

(declare-fun e!1095876 () Option!3636)

(declare-fun lt!654737 () tuple2!18428)

(assert (=> b!1713574 (= e!1095876 (Some!3635 (tuple2!18421 (Token!6179 (apply!5115 (transformation!3306 (h!24111 rules!3447)) (seqFromList!2280 (_1!10616 lt!654737))) (h!24111 rules!3447) (size!14873 (seqFromList!2280 (_1!10616 lt!654737))) (_1!10616 lt!654737)) (_2!10616 lt!654737))))))

(declare-fun lt!654735 () Unit!32536)

(assert (=> b!1713574 (= lt!654735 (longestMatchIsAcceptedByMatchOrIsEmpty!370 (regex!3306 (h!24111 rules!3447)) lt!654334))))

(declare-fun res!768309 () Bool)

(assert (=> b!1713574 (= res!768309 (isEmpty!11754 (_1!10616 (findLongestMatchInner!386 (regex!3306 (h!24111 rules!3447)) Nil!18709 (size!14871 Nil!18709) lt!654334 lt!654334 (size!14871 lt!654334)))))))

(declare-fun e!1095874 () Bool)

(assert (=> b!1713574 (=> res!768309 e!1095874)))

(assert (=> b!1713574 e!1095874))

(declare-fun lt!654733 () Unit!32536)

(assert (=> b!1713574 (= lt!654733 lt!654735)))

(declare-fun lt!654734 () Unit!32536)

(assert (=> b!1713574 (= lt!654734 (lemmaSemiInverse!452 (transformation!3306 (h!24111 rules!3447)) (seqFromList!2280 (_1!10616 lt!654737))))))

(declare-fun b!1713576 () Bool)

(declare-fun res!768311 () Bool)

(declare-fun e!1095877 () Bool)

(assert (=> b!1713576 (=> (not res!768311) (not e!1095877))))

(declare-fun lt!654736 () Option!3636)

(assert (=> b!1713576 (= res!768311 (= (rule!5242 (_1!10612 (get!5507 lt!654736))) (h!24111 rules!3447)))))

(declare-fun b!1713577 () Bool)

(declare-fun res!768306 () Bool)

(assert (=> b!1713577 (=> (not res!768306) (not e!1095877))))

(assert (=> b!1713577 (= res!768306 (= (value!103895 (_1!10612 (get!5507 lt!654736))) (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654736)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654736)))))))))

(declare-fun b!1713578 () Bool)

(declare-fun res!768310 () Bool)

(assert (=> b!1713578 (=> (not res!768310) (not e!1095877))))

(assert (=> b!1713578 (= res!768310 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654736)))) (_2!10612 (get!5507 lt!654736))) lt!654334))))

(declare-fun b!1713579 () Bool)

(assert (=> b!1713579 (= e!1095876 None!3635)))

(declare-fun b!1713580 () Bool)

(assert (=> b!1713580 (= e!1095874 (matchR!2108 (regex!3306 (h!24111 rules!3447)) (_1!10616 (findLongestMatchInner!386 (regex!3306 (h!24111 rules!3447)) Nil!18709 (size!14871 Nil!18709) lt!654334 lt!654334 (size!14871 lt!654334)))))))

(declare-fun b!1713575 () Bool)

(declare-fun e!1095875 () Bool)

(assert (=> b!1713575 (= e!1095875 e!1095877)))

(declare-fun res!768305 () Bool)

(assert (=> b!1713575 (=> (not res!768305) (not e!1095877))))

(assert (=> b!1713575 (= res!768305 (matchR!2108 (regex!3306 (h!24111 rules!3447)) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654736))))))))

(declare-fun d!525826 () Bool)

(assert (=> d!525826 e!1095875))

(declare-fun res!768308 () Bool)

(assert (=> d!525826 (=> res!768308 e!1095875)))

(assert (=> d!525826 (= res!768308 (isEmpty!11757 lt!654736))))

(assert (=> d!525826 (= lt!654736 e!1095876)))

(declare-fun c!280750 () Bool)

(assert (=> d!525826 (= c!280750 (isEmpty!11754 (_1!10616 lt!654737)))))

(assert (=> d!525826 (= lt!654737 (findLongestMatch!313 (regex!3306 (h!24111 rules!3447)) lt!654334))))

(assert (=> d!525826 (ruleValid!805 thiss!24550 (h!24111 rules!3447))))

(assert (=> d!525826 (= (maxPrefixOneRule!871 thiss!24550 (h!24111 rules!3447) lt!654334) lt!654736)))

(declare-fun b!1713581 () Bool)

(assert (=> b!1713581 (= e!1095877 (= (size!14869 (_1!10612 (get!5507 lt!654736))) (size!14871 (originalCharacters!4120 (_1!10612 (get!5507 lt!654736))))))))

(declare-fun b!1713582 () Bool)

(declare-fun res!768307 () Bool)

(assert (=> b!1713582 (=> (not res!768307) (not e!1095877))))

(assert (=> b!1713582 (= res!768307 (< (size!14871 (_2!10612 (get!5507 lt!654736))) (size!14871 lt!654334)))))

(assert (= (and d!525826 c!280750) b!1713579))

(assert (= (and d!525826 (not c!280750)) b!1713574))

(assert (= (and b!1713574 (not res!768309)) b!1713580))

(assert (= (and d!525826 (not res!768308)) b!1713575))

(assert (= (and b!1713575 res!768305) b!1713578))

(assert (= (and b!1713578 res!768310) b!1713582))

(assert (= (and b!1713582 res!768307) b!1713576))

(assert (= (and b!1713576 res!768311) b!1713577))

(assert (= (and b!1713577 res!768306) b!1713581))

(declare-fun m!2117431 () Bool)

(assert (=> b!1713582 m!2117431))

(declare-fun m!2117433 () Bool)

(assert (=> b!1713582 m!2117433))

(assert (=> b!1713582 m!2116265))

(assert (=> b!1713578 m!2117431))

(declare-fun m!2117435 () Bool)

(assert (=> b!1713578 m!2117435))

(assert (=> b!1713578 m!2117435))

(declare-fun m!2117437 () Bool)

(assert (=> b!1713578 m!2117437))

(assert (=> b!1713578 m!2117437))

(declare-fun m!2117439 () Bool)

(assert (=> b!1713578 m!2117439))

(declare-fun m!2117441 () Bool)

(assert (=> d!525826 m!2117441))

(declare-fun m!2117443 () Bool)

(assert (=> d!525826 m!2117443))

(declare-fun m!2117445 () Bool)

(assert (=> d!525826 m!2117445))

(assert (=> d!525826 m!2116885))

(assert (=> b!1713581 m!2117431))

(declare-fun m!2117447 () Bool)

(assert (=> b!1713581 m!2117447))

(assert (=> b!1713576 m!2117431))

(assert (=> b!1713580 m!2116889))

(assert (=> b!1713580 m!2116265))

(assert (=> b!1713580 m!2116889))

(assert (=> b!1713580 m!2116265))

(declare-fun m!2117449 () Bool)

(assert (=> b!1713580 m!2117449))

(declare-fun m!2117451 () Bool)

(assert (=> b!1713580 m!2117451))

(declare-fun m!2117453 () Bool)

(assert (=> b!1713574 m!2117453))

(assert (=> b!1713574 m!2117453))

(declare-fun m!2117455 () Bool)

(assert (=> b!1713574 m!2117455))

(declare-fun m!2117457 () Bool)

(assert (=> b!1713574 m!2117457))

(assert (=> b!1713574 m!2117453))

(declare-fun m!2117459 () Bool)

(assert (=> b!1713574 m!2117459))

(declare-fun m!2117461 () Bool)

(assert (=> b!1713574 m!2117461))

(assert (=> b!1713574 m!2117453))

(declare-fun m!2117463 () Bool)

(assert (=> b!1713574 m!2117463))

(assert (=> b!1713574 m!2116265))

(assert (=> b!1713574 m!2116889))

(assert (=> b!1713574 m!2116265))

(assert (=> b!1713574 m!2117449))

(assert (=> b!1713574 m!2116889))

(assert (=> b!1713575 m!2117431))

(assert (=> b!1713575 m!2117435))

(assert (=> b!1713575 m!2117435))

(assert (=> b!1713575 m!2117437))

(assert (=> b!1713575 m!2117437))

(declare-fun m!2117465 () Bool)

(assert (=> b!1713575 m!2117465))

(assert (=> b!1713577 m!2117431))

(declare-fun m!2117467 () Bool)

(assert (=> b!1713577 m!2117467))

(assert (=> b!1713577 m!2117467))

(declare-fun m!2117469 () Bool)

(assert (=> b!1713577 m!2117469))

(assert (=> bm!109508 d!525826))

(declare-fun d!525828 () Bool)

(assert (=> d!525828 (= (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))) (isBalanced!1948 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))))))

(declare-fun bs!401895 () Bool)

(assert (= bs!401895 d!525828))

(declare-fun m!2117471 () Bool)

(assert (=> bs!401895 m!2117471))

(assert (=> tb!101077 d!525828))

(declare-fun d!525830 () Bool)

(assert (=> d!525830 (= (inv!15 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)) (= (charsToBigInt!0 (text!24221 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)) 0) (value!103890 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))

(declare-fun bs!401896 () Bool)

(assert (= bs!401896 d!525830))

(declare-fun m!2117473 () Bool)

(assert (=> bs!401896 m!2117473))

(assert (=> b!1712700 d!525830))

(declare-fun bs!401897 () Bool)

(declare-fun d!525832 () Bool)

(assert (= bs!401897 (and d!525832 b!1712424)))

(declare-fun lambda!68892 () Int)

(assert (=> bs!401897 (= (and (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68892 lambda!68861))))

(declare-fun bs!401898 () Bool)

(assert (= bs!401898 (and d!525832 d!525396)))

(assert (=> bs!401898 (= (and (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68892 lambda!68870))))

(declare-fun bs!401899 () Bool)

(assert (= bs!401899 (and d!525832 d!525590)))

(assert (=> bs!401899 (= (and (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (h!24111 rules!3447)))) (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (h!24111 rules!3447))))) (= lambda!68892 lambda!68879))))

(declare-fun bs!401900 () Bool)

(assert (= bs!401900 (and d!525832 d!525762)))

(assert (=> bs!401900 (= (and (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68892 lambda!68887))))

(assert (=> d!525832 true))

(assert (=> d!525832 (< (dynLambda!8504 order!11269 (toChars!4668 (transformation!3306 (rule!5242 token!523)))) (dynLambda!8503 order!11267 lambda!68892))))

(assert (=> d!525832 true))

(assert (=> d!525832 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (rule!5242 token!523)))) (dynLambda!8503 order!11267 lambda!68892))))

(assert (=> d!525832 (= (semiInverseModEq!1306 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 token!523)))) (Forall!681 lambda!68892))))

(declare-fun bs!401901 () Bool)

(assert (= bs!401901 d!525832))

(declare-fun m!2117475 () Bool)

(assert (=> bs!401901 m!2117475))

(assert (=> d!525376 d!525832))

(declare-fun d!525834 () Bool)

(declare-fun e!1095882 () Bool)

(assert (=> d!525834 e!1095882))

(declare-fun c!280753 () Bool)

(assert (=> d!525834 (= c!280753 (is-EmptyExpr!4634 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323))))))

(declare-fun lt!654738 () Bool)

(declare-fun e!1095878 () Bool)

(assert (=> d!525834 (= lt!654738 e!1095878)))

(declare-fun c!280751 () Bool)

(assert (=> d!525834 (= c!280751 (isEmpty!11754 (tail!2556 lt!654323)))))

(assert (=> d!525834 (validRegex!1867 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323)))))

(assert (=> d!525834 (= (matchR!2108 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323)) (tail!2556 lt!654323)) lt!654738)))

(declare-fun b!1713583 () Bool)

(assert (=> b!1713583 (= e!1095878 (nullable!1393 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323))))))

(declare-fun b!1713584 () Bool)

(declare-fun res!768317 () Bool)

(declare-fun e!1095884 () Bool)

(assert (=> b!1713584 (=> res!768317 e!1095884)))

(assert (=> b!1713584 (= res!768317 (not (is-ElementMatch!4634 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323)))))))

(declare-fun e!1095881 () Bool)

(assert (=> b!1713584 (= e!1095881 e!1095884)))

(declare-fun b!1713585 () Bool)

(declare-fun res!768318 () Bool)

(declare-fun e!1095879 () Bool)

(assert (=> b!1713585 (=> res!768318 e!1095879)))

(assert (=> b!1713585 (= res!768318 (not (isEmpty!11754 (tail!2556 (tail!2556 lt!654323)))))))

(declare-fun b!1713586 () Bool)

(declare-fun e!1095880 () Bool)

(assert (=> b!1713586 (= e!1095884 e!1095880)))

(declare-fun res!768312 () Bool)

(assert (=> b!1713586 (=> (not res!768312) (not e!1095880))))

(assert (=> b!1713586 (= res!768312 (not lt!654738))))

(declare-fun b!1713587 () Bool)

(declare-fun res!768314 () Bool)

(assert (=> b!1713587 (=> res!768314 e!1095884)))

(declare-fun e!1095883 () Bool)

(assert (=> b!1713587 (= res!768314 e!1095883)))

(declare-fun res!768316 () Bool)

(assert (=> b!1713587 (=> (not res!768316) (not e!1095883))))

(assert (=> b!1713587 (= res!768316 lt!654738)))

(declare-fun b!1713588 () Bool)

(declare-fun res!768319 () Bool)

(assert (=> b!1713588 (=> (not res!768319) (not e!1095883))))

(declare-fun call!109564 () Bool)

(assert (=> b!1713588 (= res!768319 (not call!109564))))

(declare-fun b!1713589 () Bool)

(assert (=> b!1713589 (= e!1095882 e!1095881)))

(declare-fun c!280752 () Bool)

(assert (=> b!1713589 (= c!280752 (is-EmptyLang!4634 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323))))))

(declare-fun b!1713590 () Bool)

(assert (=> b!1713590 (= e!1095881 (not lt!654738))))

(declare-fun b!1713591 () Bool)

(declare-fun res!768313 () Bool)

(assert (=> b!1713591 (=> (not res!768313) (not e!1095883))))

(assert (=> b!1713591 (= res!768313 (isEmpty!11754 (tail!2556 (tail!2556 lt!654323))))))

(declare-fun b!1713592 () Bool)

(assert (=> b!1713592 (= e!1095883 (= (head!3845 (tail!2556 lt!654323)) (c!280547 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323)))))))

(declare-fun b!1713593 () Bool)

(assert (=> b!1713593 (= e!1095879 (not (= (head!3845 (tail!2556 lt!654323)) (c!280547 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323))))))))

(declare-fun b!1713594 () Bool)

(assert (=> b!1713594 (= e!1095880 e!1095879)))

(declare-fun res!768315 () Bool)

(assert (=> b!1713594 (=> res!768315 e!1095879)))

(assert (=> b!1713594 (= res!768315 call!109564)))

(declare-fun b!1713595 () Bool)

(assert (=> b!1713595 (= e!1095882 (= lt!654738 call!109564))))

(declare-fun bm!109559 () Bool)

(assert (=> bm!109559 (= call!109564 (isEmpty!11754 (tail!2556 lt!654323)))))

(declare-fun b!1713596 () Bool)

(assert (=> b!1713596 (= e!1095878 (matchR!2108 (derivativeStep!1161 (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323)) (head!3845 (tail!2556 lt!654323))) (tail!2556 (tail!2556 lt!654323))))))

(assert (= (and d!525834 c!280751) b!1713583))

(assert (= (and d!525834 (not c!280751)) b!1713596))

(assert (= (and d!525834 c!280753) b!1713595))

(assert (= (and d!525834 (not c!280753)) b!1713589))

(assert (= (and b!1713589 c!280752) b!1713590))

(assert (= (and b!1713589 (not c!280752)) b!1713584))

(assert (= (and b!1713584 (not res!768317)) b!1713587))

(assert (= (and b!1713587 res!768316) b!1713588))

(assert (= (and b!1713588 res!768319) b!1713591))

(assert (= (and b!1713591 res!768313) b!1713592))

(assert (= (and b!1713587 (not res!768314)) b!1713586))

(assert (= (and b!1713586 res!768312) b!1713594))

(assert (= (and b!1713594 (not res!768315)) b!1713585))

(assert (= (and b!1713585 (not res!768318)) b!1713593))

(assert (= (or b!1713595 b!1713588 b!1713594) bm!109559))

(assert (=> b!1713592 m!2116099))

(declare-fun m!2117477 () Bool)

(assert (=> b!1713592 m!2117477))

(assert (=> b!1713593 m!2116099))

(assert (=> b!1713593 m!2117477))

(assert (=> b!1713591 m!2116099))

(declare-fun m!2117479 () Bool)

(assert (=> b!1713591 m!2117479))

(assert (=> b!1713591 m!2117479))

(declare-fun m!2117481 () Bool)

(assert (=> b!1713591 m!2117481))

(assert (=> b!1713585 m!2116099))

(assert (=> b!1713585 m!2117479))

(assert (=> b!1713585 m!2117479))

(assert (=> b!1713585 m!2117481))

(assert (=> b!1713596 m!2116099))

(assert (=> b!1713596 m!2117477))

(assert (=> b!1713596 m!2116103))

(assert (=> b!1713596 m!2117477))

(declare-fun m!2117483 () Bool)

(assert (=> b!1713596 m!2117483))

(assert (=> b!1713596 m!2116099))

(assert (=> b!1713596 m!2117479))

(assert (=> b!1713596 m!2117483))

(assert (=> b!1713596 m!2117479))

(declare-fun m!2117485 () Bool)

(assert (=> b!1713596 m!2117485))

(assert (=> bm!109559 m!2116099))

(assert (=> bm!109559 m!2116101))

(assert (=> b!1713583 m!2116103))

(declare-fun m!2117487 () Bool)

(assert (=> b!1713583 m!2117487))

(assert (=> d!525834 m!2116099))

(assert (=> d!525834 m!2116101))

(assert (=> d!525834 m!2116103))

(declare-fun m!2117489 () Bool)

(assert (=> d!525834 m!2117489))

(assert (=> b!1712602 d!525834))

(declare-fun b!1713597 () Bool)

(declare-fun e!1095889 () Regex!4634)

(declare-fun call!109566 () Regex!4634)

(assert (=> b!1713597 (= e!1095889 (Concat!8031 call!109566 (regex!3306 rule!422)))))

(declare-fun b!1713598 () Bool)

(declare-fun e!1095888 () Regex!4634)

(assert (=> b!1713598 (= e!1095888 (ite (= (head!3845 lt!654323) (c!280547 (regex!3306 rule!422))) EmptyExpr!4634 EmptyLang!4634))))

(declare-fun c!280755 () Bool)

(declare-fun bm!109560 () Bool)

(declare-fun c!280756 () Bool)

(declare-fun c!280758 () Bool)

(declare-fun call!109567 () Regex!4634)

(assert (=> bm!109560 (= call!109567 (derivativeStep!1161 (ite c!280755 (regTwo!9781 (regex!3306 rule!422)) (ite c!280756 (reg!4963 (regex!3306 rule!422)) (ite c!280758 (regTwo!9780 (regex!3306 rule!422)) (regOne!9780 (regex!3306 rule!422))))) (head!3845 lt!654323)))))

(declare-fun b!1713600 () Bool)

(assert (=> b!1713600 (= c!280755 (is-Union!4634 (regex!3306 rule!422)))))

(declare-fun e!1095886 () Regex!4634)

(assert (=> b!1713600 (= e!1095888 e!1095886)))

(declare-fun b!1713601 () Bool)

(assert (=> b!1713601 (= e!1095886 e!1095889)))

(assert (=> b!1713601 (= c!280756 (is-Star!4634 (regex!3306 rule!422)))))

(declare-fun call!109565 () Regex!4634)

(declare-fun b!1713602 () Bool)

(declare-fun call!109568 () Regex!4634)

(declare-fun e!1095887 () Regex!4634)

(assert (=> b!1713602 (= e!1095887 (Union!4634 (Concat!8031 call!109565 (regTwo!9780 (regex!3306 rule!422))) call!109568))))

(declare-fun bm!109561 () Bool)

(assert (=> bm!109561 (= call!109568 call!109566)))

(declare-fun bm!109562 () Bool)

(assert (=> bm!109562 (= call!109565 (derivativeStep!1161 (ite c!280755 (regOne!9781 (regex!3306 rule!422)) (regOne!9780 (regex!3306 rule!422))) (head!3845 lt!654323)))))

(declare-fun b!1713603 () Bool)

(assert (=> b!1713603 (= c!280758 (nullable!1393 (regOne!9780 (regex!3306 rule!422))))))

(assert (=> b!1713603 (= e!1095889 e!1095887)))

(declare-fun b!1713604 () Bool)

(assert (=> b!1713604 (= e!1095887 (Union!4634 (Concat!8031 call!109568 (regTwo!9780 (regex!3306 rule!422))) EmptyLang!4634))))

(declare-fun b!1713605 () Bool)

(assert (=> b!1713605 (= e!1095886 (Union!4634 call!109565 call!109567))))

(declare-fun b!1713599 () Bool)

(declare-fun e!1095885 () Regex!4634)

(assert (=> b!1713599 (= e!1095885 e!1095888)))

(declare-fun c!280754 () Bool)

(assert (=> b!1713599 (= c!280754 (is-ElementMatch!4634 (regex!3306 rule!422)))))

(declare-fun d!525836 () Bool)

(declare-fun lt!654739 () Regex!4634)

(assert (=> d!525836 (validRegex!1867 lt!654739)))

(assert (=> d!525836 (= lt!654739 e!1095885)))

(declare-fun c!280757 () Bool)

(assert (=> d!525836 (= c!280757 (or (is-EmptyExpr!4634 (regex!3306 rule!422)) (is-EmptyLang!4634 (regex!3306 rule!422))))))

(assert (=> d!525836 (validRegex!1867 (regex!3306 rule!422))))

(assert (=> d!525836 (= (derivativeStep!1161 (regex!3306 rule!422) (head!3845 lt!654323)) lt!654739)))

(declare-fun bm!109563 () Bool)

(assert (=> bm!109563 (= call!109566 call!109567)))

(declare-fun b!1713606 () Bool)

(assert (=> b!1713606 (= e!1095885 EmptyLang!4634)))

(assert (= (and d!525836 c!280757) b!1713606))

(assert (= (and d!525836 (not c!280757)) b!1713599))

(assert (= (and b!1713599 c!280754) b!1713598))

(assert (= (and b!1713599 (not c!280754)) b!1713600))

(assert (= (and b!1713600 c!280755) b!1713605))

(assert (= (and b!1713600 (not c!280755)) b!1713601))

(assert (= (and b!1713601 c!280756) b!1713597))

(assert (= (and b!1713601 (not c!280756)) b!1713603))

(assert (= (and b!1713603 c!280758) b!1713602))

(assert (= (and b!1713603 (not c!280758)) b!1713604))

(assert (= (or b!1713602 b!1713604) bm!109561))

(assert (= (or b!1713597 bm!109561) bm!109563))

(assert (= (or b!1713605 bm!109563) bm!109560))

(assert (= (or b!1713605 b!1713602) bm!109562))

(assert (=> bm!109560 m!2116097))

(declare-fun m!2117491 () Bool)

(assert (=> bm!109560 m!2117491))

(assert (=> bm!109562 m!2116097))

(declare-fun m!2117493 () Bool)

(assert (=> bm!109562 m!2117493))

(declare-fun m!2117495 () Bool)

(assert (=> b!1713603 m!2117495))

(declare-fun m!2117497 () Bool)

(assert (=> d!525836 m!2117497))

(assert (=> d!525836 m!2116111))

(assert (=> b!1712602 d!525836))

(assert (=> b!1712602 d!525606))

(assert (=> b!1712602 d!525572))

(declare-fun d!525838 () Bool)

(declare-fun lt!654740 () Int)

(assert (=> d!525838 (>= lt!654740 0)))

(declare-fun e!1095890 () Int)

(assert (=> d!525838 (= lt!654740 e!1095890)))

(declare-fun c!280759 () Bool)

(assert (=> d!525838 (= c!280759 (is-Nil!18709 lt!654552))))

(assert (=> d!525838 (= (size!14871 lt!654552) lt!654740)))

(declare-fun b!1713607 () Bool)

(assert (=> b!1713607 (= e!1095890 0)))

(declare-fun b!1713608 () Bool)

(assert (=> b!1713608 (= e!1095890 (+ 1 (size!14871 (t!158392 lt!654552))))))

(assert (= (and d!525838 c!280759) b!1713607))

(assert (= (and d!525838 (not c!280759)) b!1713608))

(declare-fun m!2117499 () Bool)

(assert (=> b!1713608 m!2117499))

(assert (=> b!1712970 d!525838))

(assert (=> b!1712970 d!525612))

(declare-fun d!525840 () Bool)

(declare-fun lt!654741 () Int)

(assert (=> d!525840 (>= lt!654741 0)))

(declare-fun e!1095891 () Int)

(assert (=> d!525840 (= lt!654741 e!1095891)))

(declare-fun c!280760 () Bool)

(assert (=> d!525840 (= c!280760 (is-Nil!18709 suffix!1421))))

(assert (=> d!525840 (= (size!14871 suffix!1421) lt!654741)))

(declare-fun b!1713609 () Bool)

(assert (=> b!1713609 (= e!1095891 0)))

(declare-fun b!1713610 () Bool)

(assert (=> b!1713610 (= e!1095891 (+ 1 (size!14871 (t!158392 suffix!1421))))))

(assert (= (and d!525840 c!280760) b!1713609))

(assert (= (and d!525840 (not c!280760)) b!1713610))

(declare-fun m!2117501 () Bool)

(assert (=> b!1713610 m!2117501))

(assert (=> b!1712970 d!525840))

(declare-fun b!1713613 () Bool)

(declare-fun e!1095893 () List!18779)

(assert (=> b!1713613 (= e!1095893 (list!7557 (xs!9098 (c!280548 lt!654332))))))

(declare-fun b!1713611 () Bool)

(declare-fun e!1095892 () List!18779)

(assert (=> b!1713611 (= e!1095892 Nil!18709)))

(declare-fun b!1713614 () Bool)

(assert (=> b!1713614 (= e!1095893 (++!5131 (list!7553 (left!14911 (c!280548 lt!654332))) (list!7553 (right!15241 (c!280548 lt!654332)))))))

(declare-fun b!1713612 () Bool)

(assert (=> b!1713612 (= e!1095892 e!1095893)))

(declare-fun c!280762 () Bool)

(assert (=> b!1713612 (= c!280762 (is-Leaf!9096 (c!280548 lt!654332)))))

(declare-fun d!525842 () Bool)

(declare-fun c!280761 () Bool)

(assert (=> d!525842 (= c!280761 (is-Empty!6222 (c!280548 lt!654332)))))

(assert (=> d!525842 (= (list!7553 (c!280548 lt!654332)) e!1095892)))

(assert (= (and d!525842 c!280761) b!1713611))

(assert (= (and d!525842 (not c!280761)) b!1713612))

(assert (= (and b!1713612 c!280762) b!1713613))

(assert (= (and b!1713612 (not c!280762)) b!1713614))

(declare-fun m!2117503 () Bool)

(assert (=> b!1713613 m!2117503))

(declare-fun m!2117505 () Bool)

(assert (=> b!1713614 m!2117505))

(declare-fun m!2117507 () Bool)

(assert (=> b!1713614 m!2117507))

(assert (=> b!1713614 m!2117505))

(assert (=> b!1713614 m!2117507))

(declare-fun m!2117509 () Bool)

(assert (=> b!1713614 m!2117509))

(assert (=> d!525494 d!525842))

(declare-fun b!1713627 () Bool)

(declare-fun res!768332 () Bool)

(declare-fun e!1095898 () Bool)

(assert (=> b!1713627 (=> (not res!768332) (not e!1095898))))

(declare-fun isEmpty!11762 (Conc!6222) Bool)

(assert (=> b!1713627 (= res!768332 (not (isEmpty!11762 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))))

(declare-fun b!1713628 () Bool)

(declare-fun res!768334 () Bool)

(assert (=> b!1713628 (=> (not res!768334) (not e!1095898))))

(assert (=> b!1713628 (= res!768334 (isBalanced!1948 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(declare-fun b!1713629 () Bool)

(declare-fun res!768335 () Bool)

(assert (=> b!1713629 (=> (not res!768335) (not e!1095898))))

(assert (=> b!1713629 (= res!768335 (isBalanced!1948 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(declare-fun d!525844 () Bool)

(declare-fun res!768337 () Bool)

(declare-fun e!1095899 () Bool)

(assert (=> d!525844 (=> res!768337 e!1095899)))

(assert (=> d!525844 (= res!768337 (not (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))

(assert (=> d!525844 (= (isBalanced!1948 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))) e!1095899)))

(declare-fun b!1713630 () Bool)

(assert (=> b!1713630 (= e!1095899 e!1095898)))

(declare-fun res!768333 () Bool)

(assert (=> b!1713630 (=> (not res!768333) (not e!1095898))))

(assert (=> b!1713630 (= res!768333 (<= (- 1) (- (height!1000 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) (height!1000 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))))))

(declare-fun b!1713631 () Bool)

(assert (=> b!1713631 (= e!1095898 (not (isEmpty!11762 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))))))

(declare-fun b!1713632 () Bool)

(declare-fun res!768336 () Bool)

(assert (=> b!1713632 (=> (not res!768336) (not e!1095898))))

(assert (=> b!1713632 (= res!768336 (<= (- (height!1000 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) (height!1000 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) 1))))

(assert (= (and d!525844 (not res!768337)) b!1713630))

(assert (= (and b!1713630 res!768333) b!1713632))

(assert (= (and b!1713632 res!768336) b!1713628))

(assert (= (and b!1713628 res!768334) b!1713629))

(assert (= (and b!1713629 res!768335) b!1713627))

(assert (= (and b!1713627 res!768332) b!1713631))

(declare-fun m!2117511 () Bool)

(assert (=> b!1713627 m!2117511))

(assert (=> b!1713630 m!2116957))

(assert (=> b!1713630 m!2116959))

(assert (=> b!1713632 m!2116957))

(assert (=> b!1713632 m!2116959))

(declare-fun m!2117513 () Bool)

(assert (=> b!1713631 m!2117513))

(declare-fun m!2117515 () Bool)

(assert (=> b!1713628 m!2117515))

(declare-fun m!2117517 () Bool)

(assert (=> b!1713629 m!2117517))

(assert (=> d!525512 d!525844))

(declare-fun d!525846 () Bool)

(declare-fun res!768342 () Bool)

(declare-fun e!1095904 () Bool)

(assert (=> d!525846 (=> res!768342 e!1095904)))

(assert (=> d!525846 (= res!768342 (is-Nil!18710 rules!3447))))

(assert (=> d!525846 (= (noDuplicateTag!1234 thiss!24550 rules!3447 Nil!18714) e!1095904)))

(declare-fun b!1713637 () Bool)

(declare-fun e!1095905 () Bool)

(assert (=> b!1713637 (= e!1095904 e!1095905)))

(declare-fun res!768343 () Bool)

(assert (=> b!1713637 (=> (not res!768343) (not e!1095905))))

(declare-fun contains!3328 (List!18784 String!21314) Bool)

(assert (=> b!1713637 (= res!768343 (not (contains!3328 Nil!18714 (tag!3604 (h!24111 rules!3447)))))))

(declare-fun b!1713638 () Bool)

(assert (=> b!1713638 (= e!1095905 (noDuplicateTag!1234 thiss!24550 (t!158393 rules!3447) (Cons!18714 (tag!3604 (h!24111 rules!3447)) Nil!18714)))))

(assert (= (and d!525846 (not res!768342)) b!1713637))

(assert (= (and b!1713637 res!768343) b!1713638))

(declare-fun m!2117519 () Bool)

(assert (=> b!1713637 m!2117519))

(declare-fun m!2117521 () Bool)

(assert (=> b!1713638 m!2117521))

(assert (=> b!1712611 d!525846))

(assert (=> b!1712981 d!525610))

(declare-fun d!525848 () Bool)

(assert (=> d!525848 (= (apply!5115 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654554))))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654554))))))))

(declare-fun b_lambda!54085 () Bool)

(assert (=> (not b_lambda!54085) (not d!525848)))

(declare-fun t!158476 () Bool)

(declare-fun tb!101123 () Bool)

(assert (=> (and b!1712431 (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158476) tb!101123))

(declare-fun result!121530 () Bool)

(assert (=> tb!101123 (= result!121530 (inv!21 (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554))))) (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654554)))))))))

(declare-fun m!2117523 () Bool)

(assert (=> tb!101123 m!2117523))

(assert (=> d!525848 t!158476))

(declare-fun b_and!124169 () Bool)

(assert (= b_and!124161 (and (=> t!158476 result!121530) b_and!124169)))

(declare-fun t!158478 () Bool)

(declare-fun tb!101125 () Bool)

(assert (=> (and b!1712427 (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158478) tb!101125))

(declare-fun result!121532 () Bool)

(assert (= result!121532 result!121530))

(assert (=> d!525848 t!158478))

(declare-fun b_and!124171 () Bool)

(assert (= b_and!124163 (and (=> t!158478 result!121532) b_and!124171)))

(declare-fun t!158480 () Bool)

(declare-fun tb!101127 () Bool)

(assert (=> (and b!1712423 (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158480) tb!101127))

(declare-fun result!121534 () Bool)

(assert (= result!121534 result!121530))

(assert (=> d!525848 t!158480))

(declare-fun b_and!124173 () Bool)

(assert (= b_and!124165 (and (=> t!158480 result!121534) b_and!124173)))

(declare-fun tb!101129 () Bool)

(declare-fun t!158482 () Bool)

(assert (=> (and b!1713043 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158482) tb!101129))

(declare-fun result!121536 () Bool)

(assert (= result!121536 result!121530))

(assert (=> d!525848 t!158482))

(declare-fun b_and!124175 () Bool)

(assert (= b_and!124167 (and (=> t!158482 result!121536) b_and!124175)))

(assert (=> d!525848 m!2116589))

(declare-fun m!2117525 () Bool)

(assert (=> d!525848 m!2117525))

(assert (=> b!1712981 d!525848))

(declare-fun d!525850 () Bool)

(assert (=> d!525850 (= (seqFromList!2280 (originalCharacters!4120 (_1!10612 (get!5507 lt!654554)))) (fromListB!1048 (originalCharacters!4120 (_1!10612 (get!5507 lt!654554)))))))

(declare-fun bs!401902 () Bool)

(assert (= bs!401902 d!525850))

(declare-fun m!2117527 () Bool)

(assert (=> bs!401902 m!2117527))

(assert (=> b!1712981 d!525850))

(assert (=> b!1712598 d!525606))

(declare-fun d!525852 () Bool)

(declare-fun e!1095911 () Bool)

(assert (=> d!525852 e!1095911))

(declare-fun c!280765 () Bool)

(assert (=> d!525852 (= c!280765 (is-EmptyExpr!4634 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))))))

(declare-fun lt!654742 () Bool)

(declare-fun e!1095907 () Bool)

(assert (=> d!525852 (= lt!654742 e!1095907)))

(declare-fun c!280763 () Bool)

(assert (=> d!525852 (= c!280763 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))))))

(assert (=> d!525852 (validRegex!1867 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))))

(assert (=> d!525852 (= (matchR!2108 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))) (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))) lt!654742)))

(declare-fun b!1713639 () Bool)

(assert (=> b!1713639 (= e!1095907 (nullable!1393 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))))))

(declare-fun b!1713640 () Bool)

(declare-fun res!768349 () Bool)

(declare-fun e!1095913 () Bool)

(assert (=> b!1713640 (=> res!768349 e!1095913)))

(assert (=> b!1713640 (= res!768349 (not (is-ElementMatch!4634 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))))))

(declare-fun e!1095910 () Bool)

(assert (=> b!1713640 (= e!1095910 e!1095913)))

(declare-fun b!1713641 () Bool)

(declare-fun res!768350 () Bool)

(declare-fun e!1095908 () Bool)

(assert (=> b!1713641 (=> res!768350 e!1095908)))

(assert (=> b!1713641 (= res!768350 (not (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))))))))

(declare-fun b!1713642 () Bool)

(declare-fun e!1095909 () Bool)

(assert (=> b!1713642 (= e!1095913 e!1095909)))

(declare-fun res!768344 () Bool)

(assert (=> b!1713642 (=> (not res!768344) (not e!1095909))))

(assert (=> b!1713642 (= res!768344 (not lt!654742))))

(declare-fun b!1713643 () Bool)

(declare-fun res!768346 () Bool)

(assert (=> b!1713643 (=> res!768346 e!1095913)))

(declare-fun e!1095912 () Bool)

(assert (=> b!1713643 (= res!768346 e!1095912)))

(declare-fun res!768348 () Bool)

(assert (=> b!1713643 (=> (not res!768348) (not e!1095912))))

(assert (=> b!1713643 (= res!768348 lt!654742)))

(declare-fun b!1713644 () Bool)

(declare-fun res!768351 () Bool)

(assert (=> b!1713644 (=> (not res!768351) (not e!1095912))))

(declare-fun call!109569 () Bool)

(assert (=> b!1713644 (= res!768351 (not call!109569))))

(declare-fun b!1713645 () Bool)

(assert (=> b!1713645 (= e!1095911 e!1095910)))

(declare-fun c!280764 () Bool)

(assert (=> b!1713645 (= c!280764 (is-EmptyLang!4634 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))))))

(declare-fun b!1713646 () Bool)

(assert (=> b!1713646 (= e!1095910 (not lt!654742))))

(declare-fun b!1713647 () Bool)

(declare-fun res!768345 () Bool)

(assert (=> b!1713647 (=> (not res!768345) (not e!1095912))))

(assert (=> b!1713647 (= res!768345 (isEmpty!11754 (tail!2556 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))))))))

(declare-fun b!1713648 () Bool)

(assert (=> b!1713648 (= e!1095912 (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))) (c!280547 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))))))

(declare-fun b!1713649 () Bool)

(assert (=> b!1713649 (= e!1095908 (not (= (head!3845 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))) (c!280547 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))))))))

(declare-fun b!1713650 () Bool)

(assert (=> b!1713650 (= e!1095909 e!1095908)))

(declare-fun res!768347 () Bool)

(assert (=> b!1713650 (=> res!768347 e!1095908)))

(assert (=> b!1713650 (= res!768347 call!109569)))

(declare-fun b!1713651 () Bool)

(assert (=> b!1713651 (= e!1095911 (= lt!654742 call!109569))))

(declare-fun bm!109564 () Bool)

(assert (=> bm!109564 (= call!109569 (isEmpty!11754 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))))))

(declare-fun b!1713652 () Bool)

(assert (=> b!1713652 (= e!1095907 (matchR!2108 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))) (head!3845 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))))) (tail!2556 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))))))))

(assert (= (and d!525852 c!280763) b!1713639))

(assert (= (and d!525852 (not c!280763)) b!1713652))

(assert (= (and d!525852 c!280765) b!1713651))

(assert (= (and d!525852 (not c!280765)) b!1713645))

(assert (= (and b!1713645 c!280764) b!1713646))

(assert (= (and b!1713645 (not c!280764)) b!1713640))

(assert (= (and b!1713640 (not res!768349)) b!1713643))

(assert (= (and b!1713643 res!768348) b!1713644))

(assert (= (and b!1713644 res!768351) b!1713647))

(assert (= (and b!1713647 res!768345) b!1713648))

(assert (= (and b!1713643 (not res!768346)) b!1713642))

(assert (= (and b!1713642 res!768344) b!1713650))

(assert (= (and b!1713650 (not res!768347)) b!1713641))

(assert (= (and b!1713641 (not res!768350)) b!1713649))

(assert (= (or b!1713651 b!1713644 b!1713650) bm!109564))

(assert (=> b!1713648 m!2116249))

(declare-fun m!2117529 () Bool)

(assert (=> b!1713648 m!2117529))

(assert (=> b!1713649 m!2116249))

(assert (=> b!1713649 m!2117529))

(assert (=> b!1713647 m!2116249))

(declare-fun m!2117531 () Bool)

(assert (=> b!1713647 m!2117531))

(assert (=> b!1713647 m!2117531))

(declare-fun m!2117533 () Bool)

(assert (=> b!1713647 m!2117533))

(assert (=> b!1713641 m!2116249))

(assert (=> b!1713641 m!2117531))

(assert (=> b!1713641 m!2117531))

(assert (=> b!1713641 m!2117533))

(assert (=> b!1713652 m!2116249))

(assert (=> b!1713652 m!2117529))

(assert (=> b!1713652 m!2117529))

(declare-fun m!2117535 () Bool)

(assert (=> b!1713652 m!2117535))

(assert (=> b!1713652 m!2116249))

(assert (=> b!1713652 m!2117531))

(assert (=> b!1713652 m!2117535))

(assert (=> b!1713652 m!2117531))

(declare-fun m!2117537 () Bool)

(assert (=> b!1713652 m!2117537))

(assert (=> bm!109564 m!2116249))

(declare-fun m!2117539 () Bool)

(assert (=> bm!109564 m!2117539))

(declare-fun m!2117541 () Bool)

(assert (=> b!1713639 m!2117541))

(assert (=> d!525852 m!2116249))

(assert (=> d!525852 m!2117539))

(declare-fun m!2117543 () Bool)

(assert (=> d!525852 m!2117543))

(assert (=> b!1712735 d!525852))

(assert (=> b!1712735 d!525682))

(declare-fun d!525854 () Bool)

(assert (=> d!525854 (= (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))) (list!7553 (c!280548 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))))))

(declare-fun bs!401903 () Bool)

(assert (= bs!401903 d!525854))

(declare-fun m!2117545 () Bool)

(assert (=> bs!401903 m!2117545))

(assert (=> b!1712735 d!525854))

(declare-fun d!525856 () Bool)

(declare-fun lt!654743 () BalanceConc!12388)

(assert (=> d!525856 (= (list!7551 lt!654743) (originalCharacters!4120 (_1!10612 (get!5507 lt!654419))))))

(assert (=> d!525856 (= lt!654743 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))) (value!103895 (_1!10612 (get!5507 lt!654419)))))))

(assert (=> d!525856 (= (charsOf!1955 (_1!10612 (get!5507 lt!654419))) lt!654743)))

(declare-fun b_lambda!54087 () Bool)

(assert (=> (not b_lambda!54087) (not d!525856)))

(declare-fun t!158484 () Bool)

(declare-fun tb!101131 () Bool)

(assert (=> (and b!1712431 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158484) tb!101131))

(declare-fun b!1713653 () Bool)

(declare-fun e!1095914 () Bool)

(declare-fun tp!489511 () Bool)

(assert (=> b!1713653 (= e!1095914 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))) (value!103895 (_1!10612 (get!5507 lt!654419)))))) tp!489511))))

(declare-fun result!121538 () Bool)

(assert (=> tb!101131 (= result!121538 (and (inv!24130 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419))))) (value!103895 (_1!10612 (get!5507 lt!654419))))) e!1095914))))

(assert (= tb!101131 b!1713653))

(declare-fun m!2117547 () Bool)

(assert (=> b!1713653 m!2117547))

(declare-fun m!2117549 () Bool)

(assert (=> tb!101131 m!2117549))

(assert (=> d!525856 t!158484))

(declare-fun b_and!124177 () Bool)

(assert (= b_and!124153 (and (=> t!158484 result!121538) b_and!124177)))

(declare-fun tb!101133 () Bool)

(declare-fun t!158486 () Bool)

(assert (=> (and b!1712427 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158486) tb!101133))

(declare-fun result!121540 () Bool)

(assert (= result!121540 result!121538))

(assert (=> d!525856 t!158486))

(declare-fun b_and!124179 () Bool)

(assert (= b_and!124155 (and (=> t!158486 result!121540) b_and!124179)))

(declare-fun t!158488 () Bool)

(declare-fun tb!101135 () Bool)

(assert (=> (and b!1712423 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158488) tb!101135))

(declare-fun result!121542 () Bool)

(assert (= result!121542 result!121538))

(assert (=> d!525856 t!158488))

(declare-fun b_and!124181 () Bool)

(assert (= b_and!124157 (and (=> t!158488 result!121542) b_and!124181)))

(declare-fun tb!101137 () Bool)

(declare-fun t!158490 () Bool)

(assert (=> (and b!1713043 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158490) tb!101137))

(declare-fun result!121544 () Bool)

(assert (= result!121544 result!121538))

(assert (=> d!525856 t!158490))

(declare-fun b_and!124183 () Bool)

(assert (= b_and!124159 (and (=> t!158490 result!121544) b_and!124183)))

(declare-fun m!2117551 () Bool)

(assert (=> d!525856 m!2117551))

(declare-fun m!2117553 () Bool)

(assert (=> d!525856 m!2117553))

(assert (=> b!1712735 d!525856))

(declare-fun b!1713656 () Bool)

(declare-fun e!1095916 () Bool)

(assert (=> b!1713656 (= e!1095916 (isPrefix!1547 (tail!2556 (tail!2556 lt!654329)) (tail!2556 (tail!2556 (++!5131 lt!654329 (_2!10612 lt!654328))))))))

(declare-fun d!525858 () Bool)

(declare-fun e!1095917 () Bool)

(assert (=> d!525858 e!1095917))

(declare-fun res!768355 () Bool)

(assert (=> d!525858 (=> res!768355 e!1095917)))

(declare-fun lt!654744 () Bool)

(assert (=> d!525858 (= res!768355 (not lt!654744))))

(declare-fun e!1095915 () Bool)

(assert (=> d!525858 (= lt!654744 e!1095915)))

(declare-fun res!768354 () Bool)

(assert (=> d!525858 (=> res!768354 e!1095915)))

(assert (=> d!525858 (= res!768354 (is-Nil!18709 (tail!2556 lt!654329)))))

(assert (=> d!525858 (= (isPrefix!1547 (tail!2556 lt!654329) (tail!2556 (++!5131 lt!654329 (_2!10612 lt!654328)))) lt!654744)))

(declare-fun b!1713657 () Bool)

(assert (=> b!1713657 (= e!1095917 (>= (size!14871 (tail!2556 (++!5131 lt!654329 (_2!10612 lt!654328)))) (size!14871 (tail!2556 lt!654329))))))

(declare-fun b!1713654 () Bool)

(assert (=> b!1713654 (= e!1095915 e!1095916)))

(declare-fun res!768352 () Bool)

(assert (=> b!1713654 (=> (not res!768352) (not e!1095916))))

(assert (=> b!1713654 (= res!768352 (not (is-Nil!18709 (tail!2556 (++!5131 lt!654329 (_2!10612 lt!654328))))))))

(declare-fun b!1713655 () Bool)

(declare-fun res!768353 () Bool)

(assert (=> b!1713655 (=> (not res!768353) (not e!1095916))))

(assert (=> b!1713655 (= res!768353 (= (head!3845 (tail!2556 lt!654329)) (head!3845 (tail!2556 (++!5131 lt!654329 (_2!10612 lt!654328))))))))

(assert (= (and d!525858 (not res!768354)) b!1713654))

(assert (= (and b!1713654 res!768352) b!1713655))

(assert (= (and b!1713655 res!768353) b!1713656))

(assert (= (and d!525858 (not res!768355)) b!1713657))

(assert (=> b!1713656 m!2116131))

(declare-fun m!2117555 () Bool)

(assert (=> b!1713656 m!2117555))

(assert (=> b!1713656 m!2116325))

(declare-fun m!2117557 () Bool)

(assert (=> b!1713656 m!2117557))

(assert (=> b!1713656 m!2117555))

(assert (=> b!1713656 m!2117557))

(declare-fun m!2117559 () Bool)

(assert (=> b!1713656 m!2117559))

(assert (=> b!1713657 m!2116325))

(declare-fun m!2117561 () Bool)

(assert (=> b!1713657 m!2117561))

(assert (=> b!1713657 m!2116131))

(declare-fun m!2117563 () Bool)

(assert (=> b!1713657 m!2117563))

(assert (=> b!1713655 m!2116131))

(declare-fun m!2117565 () Bool)

(assert (=> b!1713655 m!2117565))

(assert (=> b!1713655 m!2116325))

(declare-fun m!2117567 () Bool)

(assert (=> b!1713655 m!2117567))

(assert (=> b!1712772 d!525858))

(assert (=> b!1712772 d!525690))

(declare-fun d!525860 () Bool)

(assert (=> d!525860 (= (tail!2556 (++!5131 lt!654329 (_2!10612 lt!654328))) (t!158392 (++!5131 lt!654329 (_2!10612 lt!654328))))))

(assert (=> b!1712772 d!525860))

(declare-fun d!525862 () Bool)

(declare-fun e!1095922 () Bool)

(assert (=> d!525862 e!1095922))

(declare-fun c!280768 () Bool)

(assert (=> d!525862 (= c!280768 (is-EmptyExpr!4634 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329))))))

(declare-fun lt!654745 () Bool)

(declare-fun e!1095918 () Bool)

(assert (=> d!525862 (= lt!654745 e!1095918)))

(declare-fun c!280766 () Bool)

(assert (=> d!525862 (= c!280766 (isEmpty!11754 (tail!2556 lt!654329)))))

(assert (=> d!525862 (validRegex!1867 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329)))))

(assert (=> d!525862 (= (matchR!2108 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329)) (tail!2556 lt!654329)) lt!654745)))

(declare-fun b!1713658 () Bool)

(assert (=> b!1713658 (= e!1095918 (nullable!1393 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329))))))

(declare-fun b!1713659 () Bool)

(declare-fun res!768361 () Bool)

(declare-fun e!1095924 () Bool)

(assert (=> b!1713659 (=> res!768361 e!1095924)))

(assert (=> b!1713659 (= res!768361 (not (is-ElementMatch!4634 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329)))))))

(declare-fun e!1095921 () Bool)

(assert (=> b!1713659 (= e!1095921 e!1095924)))

(declare-fun b!1713660 () Bool)

(declare-fun res!768362 () Bool)

(declare-fun e!1095919 () Bool)

(assert (=> b!1713660 (=> res!768362 e!1095919)))

(assert (=> b!1713660 (= res!768362 (not (isEmpty!11754 (tail!2556 (tail!2556 lt!654329)))))))

(declare-fun b!1713661 () Bool)

(declare-fun e!1095920 () Bool)

(assert (=> b!1713661 (= e!1095924 e!1095920)))

(declare-fun res!768356 () Bool)

(assert (=> b!1713661 (=> (not res!768356) (not e!1095920))))

(assert (=> b!1713661 (= res!768356 (not lt!654745))))

(declare-fun b!1713662 () Bool)

(declare-fun res!768358 () Bool)

(assert (=> b!1713662 (=> res!768358 e!1095924)))

(declare-fun e!1095923 () Bool)

(assert (=> b!1713662 (= res!768358 e!1095923)))

(declare-fun res!768360 () Bool)

(assert (=> b!1713662 (=> (not res!768360) (not e!1095923))))

(assert (=> b!1713662 (= res!768360 lt!654745)))

(declare-fun b!1713663 () Bool)

(declare-fun res!768363 () Bool)

(assert (=> b!1713663 (=> (not res!768363) (not e!1095923))))

(declare-fun call!109570 () Bool)

(assert (=> b!1713663 (= res!768363 (not call!109570))))

(declare-fun b!1713664 () Bool)

(assert (=> b!1713664 (= e!1095922 e!1095921)))

(declare-fun c!280767 () Bool)

(assert (=> b!1713664 (= c!280767 (is-EmptyLang!4634 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329))))))

(declare-fun b!1713665 () Bool)

(assert (=> b!1713665 (= e!1095921 (not lt!654745))))

(declare-fun b!1713666 () Bool)

(declare-fun res!768357 () Bool)

(assert (=> b!1713666 (=> (not res!768357) (not e!1095923))))

(assert (=> b!1713666 (= res!768357 (isEmpty!11754 (tail!2556 (tail!2556 lt!654329))))))

(declare-fun b!1713667 () Bool)

(assert (=> b!1713667 (= e!1095923 (= (head!3845 (tail!2556 lt!654329)) (c!280547 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329)))))))

(declare-fun b!1713668 () Bool)

(assert (=> b!1713668 (= e!1095919 (not (= (head!3845 (tail!2556 lt!654329)) (c!280547 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329))))))))

(declare-fun b!1713669 () Bool)

(assert (=> b!1713669 (= e!1095920 e!1095919)))

(declare-fun res!768359 () Bool)

(assert (=> b!1713669 (=> res!768359 e!1095919)))

(assert (=> b!1713669 (= res!768359 call!109570)))

(declare-fun b!1713670 () Bool)

(assert (=> b!1713670 (= e!1095922 (= lt!654745 call!109570))))

(declare-fun bm!109565 () Bool)

(assert (=> bm!109565 (= call!109570 (isEmpty!11754 (tail!2556 lt!654329)))))

(declare-fun b!1713671 () Bool)

(assert (=> b!1713671 (= e!1095918 (matchR!2108 (derivativeStep!1161 (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329)) (head!3845 (tail!2556 lt!654329))) (tail!2556 (tail!2556 lt!654329))))))

(assert (= (and d!525862 c!280766) b!1713658))

(assert (= (and d!525862 (not c!280766)) b!1713671))

(assert (= (and d!525862 c!280768) b!1713670))

(assert (= (and d!525862 (not c!280768)) b!1713664))

(assert (= (and b!1713664 c!280767) b!1713665))

(assert (= (and b!1713664 (not c!280767)) b!1713659))

(assert (= (and b!1713659 (not res!768361)) b!1713662))

(assert (= (and b!1713662 res!768360) b!1713663))

(assert (= (and b!1713663 res!768363) b!1713666))

(assert (= (and b!1713666 res!768357) b!1713667))

(assert (= (and b!1713662 (not res!768358)) b!1713661))

(assert (= (and b!1713661 res!768356) b!1713669))

(assert (= (and b!1713669 (not res!768359)) b!1713660))

(assert (= (and b!1713660 (not res!768362)) b!1713668))

(assert (= (or b!1713670 b!1713663 b!1713669) bm!109565))

(assert (=> b!1713667 m!2116131))

(assert (=> b!1713667 m!2117565))

(assert (=> b!1713668 m!2116131))

(assert (=> b!1713668 m!2117565))

(assert (=> b!1713666 m!2116131))

(assert (=> b!1713666 m!2117555))

(assert (=> b!1713666 m!2117555))

(declare-fun m!2117569 () Bool)

(assert (=> b!1713666 m!2117569))

(assert (=> b!1713660 m!2116131))

(assert (=> b!1713660 m!2117555))

(assert (=> b!1713660 m!2117555))

(assert (=> b!1713660 m!2117569))

(assert (=> b!1713671 m!2116131))

(assert (=> b!1713671 m!2117565))

(assert (=> b!1713671 m!2116135))

(assert (=> b!1713671 m!2117565))

(declare-fun m!2117571 () Bool)

(assert (=> b!1713671 m!2117571))

(assert (=> b!1713671 m!2116131))

(assert (=> b!1713671 m!2117555))

(assert (=> b!1713671 m!2117571))

(assert (=> b!1713671 m!2117555))

(declare-fun m!2117573 () Bool)

(assert (=> b!1713671 m!2117573))

(assert (=> bm!109565 m!2116131))

(assert (=> bm!109565 m!2116133))

(assert (=> b!1713658 m!2116135))

(declare-fun m!2117575 () Bool)

(assert (=> b!1713658 m!2117575))

(assert (=> d!525862 m!2116131))

(assert (=> d!525862 m!2116133))

(assert (=> d!525862 m!2116135))

(declare-fun m!2117577 () Bool)

(assert (=> d!525862 m!2117577))

(assert (=> b!1712637 d!525862))

(declare-fun b!1713672 () Bool)

(declare-fun e!1095929 () Regex!4634)

(declare-fun call!109572 () Regex!4634)

(assert (=> b!1713672 (= e!1095929 (Concat!8031 call!109572 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun b!1713673 () Bool)

(declare-fun e!1095928 () Regex!4634)

(assert (=> b!1713673 (= e!1095928 (ite (= (head!3845 lt!654329) (c!280547 (regex!3306 (rule!5242 (_1!10612 lt!654328))))) EmptyExpr!4634 EmptyLang!4634))))

(declare-fun c!280773 () Bool)

(declare-fun bm!109566 () Bool)

(declare-fun call!109573 () Regex!4634)

(declare-fun c!280770 () Bool)

(declare-fun c!280771 () Bool)

(assert (=> bm!109566 (= call!109573 (derivativeStep!1161 (ite c!280770 (regTwo!9781 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (ite c!280771 (reg!4963 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (ite c!280773 (regTwo!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (regOne!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))) (head!3845 lt!654329)))))

(declare-fun b!1713675 () Bool)

(assert (=> b!1713675 (= c!280770 (is-Union!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun e!1095926 () Regex!4634)

(assert (=> b!1713675 (= e!1095928 e!1095926)))

(declare-fun b!1713676 () Bool)

(assert (=> b!1713676 (= e!1095926 e!1095929)))

(assert (=> b!1713676 (= c!280771 (is-Star!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun call!109571 () Regex!4634)

(declare-fun b!1713677 () Bool)

(declare-fun e!1095927 () Regex!4634)

(declare-fun call!109574 () Regex!4634)

(assert (=> b!1713677 (= e!1095927 (Union!4634 (Concat!8031 call!109571 (regTwo!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328))))) call!109574))))

(declare-fun bm!109567 () Bool)

(assert (=> bm!109567 (= call!109574 call!109572)))

(declare-fun bm!109568 () Bool)

(assert (=> bm!109568 (= call!109571 (derivativeStep!1161 (ite c!280770 (regOne!9781 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (regOne!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328))))) (head!3845 lt!654329)))))

(declare-fun b!1713678 () Bool)

(assert (=> b!1713678 (= c!280773 (nullable!1393 (regOne!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))))

(assert (=> b!1713678 (= e!1095929 e!1095927)))

(declare-fun b!1713679 () Bool)

(assert (=> b!1713679 (= e!1095927 (Union!4634 (Concat!8031 call!109574 (regTwo!9780 (regex!3306 (rule!5242 (_1!10612 lt!654328))))) EmptyLang!4634))))

(declare-fun b!1713680 () Bool)

(assert (=> b!1713680 (= e!1095926 (Union!4634 call!109571 call!109573))))

(declare-fun b!1713674 () Bool)

(declare-fun e!1095925 () Regex!4634)

(assert (=> b!1713674 (= e!1095925 e!1095928)))

(declare-fun c!280769 () Bool)

(assert (=> b!1713674 (= c!280769 (is-ElementMatch!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))))))

(declare-fun d!525864 () Bool)

(declare-fun lt!654746 () Regex!4634)

(assert (=> d!525864 (validRegex!1867 lt!654746)))

(assert (=> d!525864 (= lt!654746 e!1095925)))

(declare-fun c!280772 () Bool)

(assert (=> d!525864 (= c!280772 (or (is-EmptyExpr!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328)))) (is-EmptyLang!4634 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))))

(assert (=> d!525864 (validRegex!1867 (regex!3306 (rule!5242 (_1!10612 lt!654328))))))

(assert (=> d!525864 (= (derivativeStep!1161 (regex!3306 (rule!5242 (_1!10612 lt!654328))) (head!3845 lt!654329)) lt!654746)))

(declare-fun bm!109569 () Bool)

(assert (=> bm!109569 (= call!109572 call!109573)))

(declare-fun b!1713681 () Bool)

(assert (=> b!1713681 (= e!1095925 EmptyLang!4634)))

(assert (= (and d!525864 c!280772) b!1713681))

(assert (= (and d!525864 (not c!280772)) b!1713674))

(assert (= (and b!1713674 c!280769) b!1713673))

(assert (= (and b!1713674 (not c!280769)) b!1713675))

(assert (= (and b!1713675 c!280770) b!1713680))

(assert (= (and b!1713675 (not c!280770)) b!1713676))

(assert (= (and b!1713676 c!280771) b!1713672))

(assert (= (and b!1713676 (not c!280771)) b!1713678))

(assert (= (and b!1713678 c!280773) b!1713677))

(assert (= (and b!1713678 (not c!280773)) b!1713679))

(assert (= (or b!1713677 b!1713679) bm!109567))

(assert (= (or b!1713672 bm!109567) bm!109569))

(assert (= (or b!1713680 bm!109569) bm!109566))

(assert (= (or b!1713680 b!1713677) bm!109568))

(assert (=> bm!109566 m!2116129))

(declare-fun m!2117579 () Bool)

(assert (=> bm!109566 m!2117579))

(assert (=> bm!109568 m!2116129))

(declare-fun m!2117581 () Bool)

(assert (=> bm!109568 m!2117581))

(declare-fun m!2117583 () Bool)

(assert (=> b!1713678 m!2117583))

(declare-fun m!2117585 () Bool)

(assert (=> d!525864 m!2117585))

(assert (=> d!525864 m!2116143))

(assert (=> b!1712637 d!525864))

(assert (=> b!1712637 d!525574))

(assert (=> b!1712637 d!525690))

(declare-fun b!1713682 () Bool)

(declare-fun res!768364 () Bool)

(declare-fun e!1095930 () Bool)

(assert (=> b!1713682 (=> (not res!768364) (not e!1095930))))

(assert (=> b!1713682 (= res!768364 (not (isEmpty!11762 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))))

(declare-fun b!1713683 () Bool)

(declare-fun res!768366 () Bool)

(assert (=> b!1713683 (=> (not res!768366) (not e!1095930))))

(assert (=> b!1713683 (= res!768366 (isBalanced!1948 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(declare-fun b!1713684 () Bool)

(declare-fun res!768367 () Bool)

(assert (=> b!1713684 (=> (not res!768367) (not e!1095930))))

(assert (=> b!1713684 (= res!768367 (isBalanced!1948 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(declare-fun d!525866 () Bool)

(declare-fun res!768369 () Bool)

(declare-fun e!1095931 () Bool)

(assert (=> d!525866 (=> res!768369 e!1095931)))

(assert (=> d!525866 (= res!768369 (not (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(assert (=> d!525866 (= (isBalanced!1948 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) e!1095931)))

(declare-fun b!1713685 () Bool)

(assert (=> b!1713685 (= e!1095931 e!1095930)))

(declare-fun res!768365 () Bool)

(assert (=> b!1713685 (=> (not res!768365) (not e!1095930))))

(assert (=> b!1713685 (= res!768365 (<= (- 1) (- (height!1000 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) (height!1000 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))))

(declare-fun b!1713686 () Bool)

(assert (=> b!1713686 (= e!1095930 (not (isEmpty!11762 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))))

(declare-fun b!1713687 () Bool)

(declare-fun res!768368 () Bool)

(assert (=> b!1713687 (=> (not res!768368) (not e!1095930))))

(assert (=> b!1713687 (= res!768368 (<= (- (height!1000 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) (height!1000 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) 1))))

(assert (= (and d!525866 (not res!768369)) b!1713685))

(assert (= (and b!1713685 res!768365) b!1713687))

(assert (= (and b!1713687 res!768368) b!1713683))

(assert (= (and b!1713683 res!768366) b!1713684))

(assert (= (and b!1713684 res!768367) b!1713682))

(assert (= (and b!1713682 res!768364) b!1713686))

(declare-fun m!2117587 () Bool)

(assert (=> b!1713682 m!2117587))

(assert (=> b!1713685 m!2117083))

(assert (=> b!1713685 m!2117085))

(assert (=> b!1713687 m!2117083))

(assert (=> b!1713687 m!2117085))

(declare-fun m!2117589 () Bool)

(assert (=> b!1713686 m!2117589))

(declare-fun m!2117591 () Bool)

(assert (=> b!1713683 m!2117591))

(declare-fun m!2117593 () Bool)

(assert (=> b!1713684 m!2117593))

(assert (=> d!525354 d!525866))

(declare-fun d!525868 () Bool)

(declare-fun lt!654747 () Bool)

(assert (=> d!525868 (= lt!654747 (set.member (get!5508 lt!654550) (content!2663 rules!3447)))))

(declare-fun e!1095932 () Bool)

(assert (=> d!525868 (= lt!654747 e!1095932)))

(declare-fun res!768371 () Bool)

(assert (=> d!525868 (=> (not res!768371) (not e!1095932))))

(assert (=> d!525868 (= res!768371 (is-Cons!18710 rules!3447))))

(assert (=> d!525868 (= (contains!3326 rules!3447 (get!5508 lt!654550)) lt!654747)))

(declare-fun b!1713688 () Bool)

(declare-fun e!1095933 () Bool)

(assert (=> b!1713688 (= e!1095932 e!1095933)))

(declare-fun res!768370 () Bool)

(assert (=> b!1713688 (=> res!768370 e!1095933)))

(assert (=> b!1713688 (= res!768370 (= (h!24111 rules!3447) (get!5508 lt!654550)))))

(declare-fun b!1713689 () Bool)

(assert (=> b!1713689 (= e!1095933 (contains!3326 (t!158393 rules!3447) (get!5508 lt!654550)))))

(assert (= (and d!525868 res!768371) b!1713688))

(assert (= (and b!1713688 (not res!768370)) b!1713689))

(assert (=> d!525868 m!2116145))

(assert (=> d!525868 m!2116541))

(declare-fun m!2117595 () Bool)

(assert (=> d!525868 m!2117595))

(assert (=> b!1713689 m!2116541))

(declare-fun m!2117597 () Bool)

(assert (=> b!1713689 m!2117597))

(assert (=> b!1712964 d!525868))

(assert (=> b!1712964 d!525660))

(declare-fun b!1713692 () Bool)

(declare-fun e!1095935 () List!18779)

(assert (=> b!1713692 (= e!1095935 (list!7557 (xs!9098 (c!280548 (charsOf!1955 (_1!10612 lt!654328))))))))

(declare-fun b!1713690 () Bool)

(declare-fun e!1095934 () List!18779)

(assert (=> b!1713690 (= e!1095934 Nil!18709)))

(declare-fun b!1713693 () Bool)

(assert (=> b!1713693 (= e!1095935 (++!5131 (list!7553 (left!14911 (c!280548 (charsOf!1955 (_1!10612 lt!654328))))) (list!7553 (right!15241 (c!280548 (charsOf!1955 (_1!10612 lt!654328)))))))))

(declare-fun b!1713691 () Bool)

(assert (=> b!1713691 (= e!1095934 e!1095935)))

(declare-fun c!280775 () Bool)

(assert (=> b!1713691 (= c!280775 (is-Leaf!9096 (c!280548 (charsOf!1955 (_1!10612 lt!654328)))))))

(declare-fun d!525870 () Bool)

(declare-fun c!280774 () Bool)

(assert (=> d!525870 (= c!280774 (is-Empty!6222 (c!280548 (charsOf!1955 (_1!10612 lt!654328)))))))

(assert (=> d!525870 (= (list!7553 (c!280548 (charsOf!1955 (_1!10612 lt!654328)))) e!1095934)))

(assert (= (and d!525870 c!280774) b!1713690))

(assert (= (and d!525870 (not c!280774)) b!1713691))

(assert (= (and b!1713691 c!280775) b!1713692))

(assert (= (and b!1713691 (not c!280775)) b!1713693))

(declare-fun m!2117599 () Bool)

(assert (=> b!1713692 m!2117599))

(declare-fun m!2117601 () Bool)

(assert (=> b!1713693 m!2117601))

(declare-fun m!2117603 () Bool)

(assert (=> b!1713693 m!2117603))

(assert (=> b!1713693 m!2117601))

(assert (=> b!1713693 m!2117603))

(declare-fun m!2117605 () Bool)

(assert (=> b!1713693 m!2117605))

(assert (=> d!525516 d!525870))

(declare-fun d!525872 () Bool)

(assert (=> d!525872 (= (isEmpty!11754 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))) (is-Nil!18709 (++!5131 lt!654323 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))

(assert (=> d!525384 d!525872))

(declare-fun b!1713696 () Bool)

(declare-fun e!1095937 () Bool)

(assert (=> b!1713696 (= e!1095937 (isPrefix!1547 (tail!2556 (tail!2556 lt!654329)) (tail!2556 (tail!2556 lt!654334))))))

(declare-fun d!525874 () Bool)

(declare-fun e!1095938 () Bool)

(assert (=> d!525874 e!1095938))

(declare-fun res!768375 () Bool)

(assert (=> d!525874 (=> res!768375 e!1095938)))

(declare-fun lt!654748 () Bool)

(assert (=> d!525874 (= res!768375 (not lt!654748))))

(declare-fun e!1095936 () Bool)

(assert (=> d!525874 (= lt!654748 e!1095936)))

(declare-fun res!768374 () Bool)

(assert (=> d!525874 (=> res!768374 e!1095936)))

(assert (=> d!525874 (= res!768374 (is-Nil!18709 (tail!2556 lt!654329)))))

(assert (=> d!525874 (= (isPrefix!1547 (tail!2556 lt!654329) (tail!2556 lt!654334)) lt!654748)))

(declare-fun b!1713697 () Bool)

(assert (=> b!1713697 (= e!1095938 (>= (size!14871 (tail!2556 lt!654334)) (size!14871 (tail!2556 lt!654329))))))

(declare-fun b!1713694 () Bool)

(assert (=> b!1713694 (= e!1095936 e!1095937)))

(declare-fun res!768372 () Bool)

(assert (=> b!1713694 (=> (not res!768372) (not e!1095937))))

(assert (=> b!1713694 (= res!768372 (not (is-Nil!18709 (tail!2556 lt!654334))))))

(declare-fun b!1713695 () Bool)

(declare-fun res!768373 () Bool)

(assert (=> b!1713695 (=> (not res!768373) (not e!1095937))))

(assert (=> b!1713695 (= res!768373 (= (head!3845 (tail!2556 lt!654329)) (head!3845 (tail!2556 lt!654334))))))

(assert (= (and d!525874 (not res!768374)) b!1713694))

(assert (= (and b!1713694 res!768372) b!1713695))

(assert (= (and b!1713695 res!768373) b!1713696))

(assert (= (and d!525874 (not res!768375)) b!1713697))

(assert (=> b!1713696 m!2116131))

(assert (=> b!1713696 m!2117555))

(assert (=> b!1713696 m!2116335))

(declare-fun m!2117607 () Bool)

(assert (=> b!1713696 m!2117607))

(assert (=> b!1713696 m!2117555))

(assert (=> b!1713696 m!2117607))

(declare-fun m!2117609 () Bool)

(assert (=> b!1713696 m!2117609))

(assert (=> b!1713697 m!2116335))

(declare-fun m!2117611 () Bool)

(assert (=> b!1713697 m!2117611))

(assert (=> b!1713697 m!2116131))

(assert (=> b!1713697 m!2117563))

(assert (=> b!1713695 m!2116131))

(assert (=> b!1713695 m!2117565))

(assert (=> b!1713695 m!2116335))

(declare-fun m!2117613 () Bool)

(assert (=> b!1713695 m!2117613))

(assert (=> b!1712948 d!525874))

(assert (=> b!1712948 d!525690))

(declare-fun d!525876 () Bool)

(assert (=> d!525876 (= (tail!2556 lt!654334) (t!158392 lt!654334))))

(assert (=> b!1712948 d!525876))

(declare-fun d!525878 () Bool)

(declare-fun c!280776 () Bool)

(assert (=> d!525878 (= c!280776 (is-Nil!18709 lt!654404))))

(declare-fun e!1095939 () (Set C!9442))

(assert (=> d!525878 (= (content!2664 lt!654404) e!1095939)))

(declare-fun b!1713698 () Bool)

(assert (=> b!1713698 (= e!1095939 (as set.empty (Set C!9442)))))

(declare-fun b!1713699 () Bool)

(assert (=> b!1713699 (= e!1095939 (set.union (set.insert (h!24110 lt!654404) (as set.empty (Set C!9442))) (content!2664 (t!158392 lt!654404))))))

(assert (= (and d!525878 c!280776) b!1713698))

(assert (= (and d!525878 (not c!280776)) b!1713699))

(declare-fun m!2117615 () Bool)

(assert (=> b!1713699 m!2117615))

(declare-fun m!2117617 () Bool)

(assert (=> b!1713699 m!2117617))

(assert (=> d!525388 d!525878))

(declare-fun d!525880 () Bool)

(declare-fun c!280777 () Bool)

(assert (=> d!525880 (= c!280777 (is-Nil!18709 lt!654323))))

(declare-fun e!1095940 () (Set C!9442))

(assert (=> d!525880 (= (content!2664 lt!654323) e!1095940)))

(declare-fun b!1713700 () Bool)

(assert (=> b!1713700 (= e!1095940 (as set.empty (Set C!9442)))))

(declare-fun b!1713701 () Bool)

(assert (=> b!1713701 (= e!1095940 (set.union (set.insert (h!24110 lt!654323) (as set.empty (Set C!9442))) (content!2664 (t!158392 lt!654323))))))

(assert (= (and d!525880 c!280777) b!1713700))

(assert (= (and d!525880 (not c!280777)) b!1713701))

(declare-fun m!2117619 () Bool)

(assert (=> b!1713701 m!2117619))

(declare-fun m!2117621 () Bool)

(assert (=> b!1713701 m!2117621))

(assert (=> d!525388 d!525880))

(declare-fun d!525882 () Bool)

(declare-fun c!280778 () Bool)

(assert (=> d!525882 (= c!280778 (is-Nil!18709 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))

(declare-fun e!1095941 () (Set C!9442))

(assert (=> d!525882 (= (content!2664 (Cons!18709 (head!3845 suffix!1421) Nil!18709)) e!1095941)))

(declare-fun b!1713702 () Bool)

(assert (=> b!1713702 (= e!1095941 (as set.empty (Set C!9442)))))

(declare-fun b!1713703 () Bool)

(assert (=> b!1713703 (= e!1095941 (set.union (set.insert (h!24110 (Cons!18709 (head!3845 suffix!1421) Nil!18709)) (as set.empty (Set C!9442))) (content!2664 (t!158392 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(assert (= (and d!525882 c!280778) b!1713702))

(assert (= (and d!525882 (not c!280778)) b!1713703))

(declare-fun m!2117623 () Bool)

(assert (=> b!1713703 m!2117623))

(declare-fun m!2117625 () Bool)

(assert (=> b!1713703 m!2117625))

(assert (=> d!525388 d!525882))

(declare-fun d!525884 () Bool)

(assert (=> d!525884 (= (isEmpty!11754 (originalCharacters!4120 token!523)) (is-Nil!18709 (originalCharacters!4120 token!523)))))

(assert (=> d!525510 d!525884))

(declare-fun b!1713706 () Bool)

(declare-fun e!1095943 () Bool)

(assert (=> b!1713706 (= e!1095943 (isPrefix!1547 (tail!2556 (tail!2556 lt!654323)) (tail!2556 (tail!2556 lt!654334))))))

(declare-fun d!525886 () Bool)

(declare-fun e!1095944 () Bool)

(assert (=> d!525886 e!1095944))

(declare-fun res!768379 () Bool)

(assert (=> d!525886 (=> res!768379 e!1095944)))

(declare-fun lt!654749 () Bool)

(assert (=> d!525886 (= res!768379 (not lt!654749))))

(declare-fun e!1095942 () Bool)

(assert (=> d!525886 (= lt!654749 e!1095942)))

(declare-fun res!768378 () Bool)

(assert (=> d!525886 (=> res!768378 e!1095942)))

(assert (=> d!525886 (= res!768378 (is-Nil!18709 (tail!2556 lt!654323)))))

(assert (=> d!525886 (= (isPrefix!1547 (tail!2556 lt!654323) (tail!2556 lt!654334)) lt!654749)))

(declare-fun b!1713707 () Bool)

(assert (=> b!1713707 (= e!1095944 (>= (size!14871 (tail!2556 lt!654334)) (size!14871 (tail!2556 lt!654323))))))

(declare-fun b!1713704 () Bool)

(assert (=> b!1713704 (= e!1095942 e!1095943)))

(declare-fun res!768376 () Bool)

(assert (=> b!1713704 (=> (not res!768376) (not e!1095943))))

(assert (=> b!1713704 (= res!768376 (not (is-Nil!18709 (tail!2556 lt!654334))))))

(declare-fun b!1713705 () Bool)

(declare-fun res!768377 () Bool)

(assert (=> b!1713705 (=> (not res!768377) (not e!1095943))))

(assert (=> b!1713705 (= res!768377 (= (head!3845 (tail!2556 lt!654323)) (head!3845 (tail!2556 lt!654334))))))

(assert (= (and d!525886 (not res!768378)) b!1713704))

(assert (= (and b!1713704 res!768376) b!1713705))

(assert (= (and b!1713705 res!768377) b!1713706))

(assert (= (and d!525886 (not res!768379)) b!1713707))

(assert (=> b!1713706 m!2116099))

(assert (=> b!1713706 m!2117479))

(assert (=> b!1713706 m!2116335))

(assert (=> b!1713706 m!2117607))

(assert (=> b!1713706 m!2117479))

(assert (=> b!1713706 m!2117607))

(declare-fun m!2117627 () Bool)

(assert (=> b!1713706 m!2117627))

(assert (=> b!1713707 m!2116335))

(assert (=> b!1713707 m!2117611))

(assert (=> b!1713707 m!2116099))

(declare-fun m!2117629 () Bool)

(assert (=> b!1713707 m!2117629))

(assert (=> b!1713705 m!2116099))

(assert (=> b!1713705 m!2117477))

(assert (=> b!1713705 m!2116335))

(assert (=> b!1713705 m!2117613))

(assert (=> b!1712784 d!525886))

(assert (=> b!1712784 d!525572))

(assert (=> b!1712784 d!525876))

(declare-fun d!525888 () Bool)

(declare-fun lt!654750 () Bool)

(assert (=> d!525888 (= lt!654750 (set.member (rule!5242 (_1!10612 (get!5507 lt!654554))) (content!2663 rules!3447)))))

(declare-fun e!1095945 () Bool)

(assert (=> d!525888 (= lt!654750 e!1095945)))

(declare-fun res!768381 () Bool)

(assert (=> d!525888 (=> (not res!768381) (not e!1095945))))

(assert (=> d!525888 (= res!768381 (is-Cons!18710 rules!3447))))

(assert (=> d!525888 (= (contains!3326 rules!3447 (rule!5242 (_1!10612 (get!5507 lt!654554)))) lt!654750)))

(declare-fun b!1713708 () Bool)

(declare-fun e!1095946 () Bool)

(assert (=> b!1713708 (= e!1095945 e!1095946)))

(declare-fun res!768380 () Bool)

(assert (=> b!1713708 (=> res!768380 e!1095946)))

(assert (=> b!1713708 (= res!768380 (= (h!24111 rules!3447) (rule!5242 (_1!10612 (get!5507 lt!654554)))))))

(declare-fun b!1713709 () Bool)

(assert (=> b!1713709 (= e!1095946 (contains!3326 (t!158393 rules!3447) (rule!5242 (_1!10612 (get!5507 lt!654554)))))))

(assert (= (and d!525888 res!768381) b!1713708))

(assert (= (and b!1713708 (not res!768380)) b!1713709))

(assert (=> d!525888 m!2116145))

(declare-fun m!2117631 () Bool)

(assert (=> d!525888 m!2117631))

(declare-fun m!2117633 () Bool)

(assert (=> b!1713709 m!2117633))

(assert (=> b!1712977 d!525888))

(assert (=> b!1712977 d!525610))

(declare-fun bs!401904 () Bool)

(declare-fun d!525890 () Bool)

(assert (= bs!401904 (and d!525890 d!525386)))

(declare-fun lambda!68897 () Int)

(assert (=> bs!401904 (= lambda!68897 lambda!68867)))

(declare-fun lambda!68898 () Int)

(declare-fun forall!4249 (List!18785 Int) Bool)

(assert (=> d!525890 (forall!4249 (map!3850 rules!3447 lambda!68897) lambda!68898)))

(declare-fun lt!654755 () Unit!32536)

(declare-fun e!1095949 () Unit!32536)

(assert (=> d!525890 (= lt!654755 e!1095949)))

(declare-fun c!280781 () Bool)

(assert (=> d!525890 (= c!280781 (is-Nil!18710 rules!3447))))

(assert (=> d!525890 (rulesValidInductive!1091 thiss!24550 rules!3447)))

(assert (=> d!525890 (= (lemma!317 rules!3447 thiss!24550 rules!3447) lt!654755)))

(declare-fun b!1713714 () Bool)

(declare-fun Unit!32547 () Unit!32536)

(assert (=> b!1713714 (= e!1095949 Unit!32547)))

(declare-fun b!1713715 () Bool)

(declare-fun Unit!32548 () Unit!32536)

(assert (=> b!1713715 (= e!1095949 Unit!32548)))

(declare-fun lt!654756 () Unit!32536)

(assert (=> b!1713715 (= lt!654756 (lemma!317 rules!3447 thiss!24550 (t!158393 rules!3447)))))

(assert (= (and d!525890 c!280781) b!1713714))

(assert (= (and d!525890 (not c!280781)) b!1713715))

(declare-fun m!2117635 () Bool)

(assert (=> d!525890 m!2117635))

(assert (=> d!525890 m!2117635))

(declare-fun m!2117637 () Bool)

(assert (=> d!525890 m!2117637))

(assert (=> d!525890 m!2116259))

(declare-fun m!2117639 () Bool)

(assert (=> b!1713715 m!2117639))

(assert (=> d!525386 d!525890))

(declare-fun bs!401905 () Bool)

(declare-fun d!525892 () Bool)

(assert (= bs!401905 (and d!525892 d!525890)))

(declare-fun lambda!68901 () Int)

(assert (=> bs!401905 (= lambda!68901 lambda!68898)))

(declare-fun b!1713736 () Bool)

(declare-fun e!1095962 () Bool)

(declare-fun e!1095966 () Bool)

(assert (=> b!1713736 (= e!1095962 e!1095966)))

(declare-fun c!280792 () Bool)

(declare-fun isEmpty!11763 (List!18785) Bool)

(assert (=> b!1713736 (= c!280792 (isEmpty!11763 (map!3850 rules!3447 lambda!68867)))))

(declare-fun b!1713738 () Bool)

(declare-fun e!1095965 () Regex!4634)

(assert (=> b!1713738 (= e!1095965 (h!24116 (map!3850 rules!3447 lambda!68867)))))

(declare-fun b!1713739 () Bool)

(declare-fun lt!654759 () Regex!4634)

(declare-fun isEmptyLang!94 (Regex!4634) Bool)

(assert (=> b!1713739 (= e!1095966 (isEmptyLang!94 lt!654759))))

(declare-fun b!1713740 () Bool)

(declare-fun e!1095964 () Regex!4634)

(assert (=> b!1713740 (= e!1095964 EmptyLang!4634)))

(declare-fun b!1713741 () Bool)

(declare-fun e!1095963 () Bool)

(declare-fun head!3849 (List!18785) Regex!4634)

(assert (=> b!1713741 (= e!1095963 (= lt!654759 (head!3849 (map!3850 rules!3447 lambda!68867))))))

(declare-fun b!1713742 () Bool)

(declare-fun e!1095967 () Bool)

(assert (=> b!1713742 (= e!1095967 (isEmpty!11763 (t!158436 (map!3850 rules!3447 lambda!68867))))))

(declare-fun b!1713743 () Bool)

(declare-fun isUnion!94 (Regex!4634) Bool)

(assert (=> b!1713743 (= e!1095963 (isUnion!94 lt!654759))))

(declare-fun b!1713737 () Bool)

(assert (=> b!1713737 (= e!1095966 e!1095963)))

(declare-fun c!280793 () Bool)

(declare-fun tail!2558 (List!18785) List!18785)

(assert (=> b!1713737 (= c!280793 (isEmpty!11763 (tail!2558 (map!3850 rules!3447 lambda!68867))))))

(assert (=> d!525892 e!1095962))

(declare-fun res!768386 () Bool)

(assert (=> d!525892 (=> (not res!768386) (not e!1095962))))

(assert (=> d!525892 (= res!768386 (validRegex!1867 lt!654759))))

(assert (=> d!525892 (= lt!654759 e!1095965)))

(declare-fun c!280790 () Bool)

(assert (=> d!525892 (= c!280790 e!1095967)))

(declare-fun res!768387 () Bool)

(assert (=> d!525892 (=> (not res!768387) (not e!1095967))))

(assert (=> d!525892 (= res!768387 (is-Cons!18715 (map!3850 rules!3447 lambda!68867)))))

(assert (=> d!525892 (forall!4249 (map!3850 rules!3447 lambda!68867) lambda!68901)))

(assert (=> d!525892 (= (generalisedUnion!325 (map!3850 rules!3447 lambda!68867)) lt!654759)))

(declare-fun b!1713744 () Bool)

(assert (=> b!1713744 (= e!1095964 (Union!4634 (h!24116 (map!3850 rules!3447 lambda!68867)) (generalisedUnion!325 (t!158436 (map!3850 rules!3447 lambda!68867)))))))

(declare-fun b!1713745 () Bool)

(assert (=> b!1713745 (= e!1095965 e!1095964)))

(declare-fun c!280791 () Bool)

(assert (=> b!1713745 (= c!280791 (is-Cons!18715 (map!3850 rules!3447 lambda!68867)))))

(assert (= (and d!525892 res!768387) b!1713742))

(assert (= (and d!525892 c!280790) b!1713738))

(assert (= (and d!525892 (not c!280790)) b!1713745))

(assert (= (and b!1713745 c!280791) b!1713744))

(assert (= (and b!1713745 (not c!280791)) b!1713740))

(assert (= (and d!525892 res!768386) b!1713736))

(assert (= (and b!1713736 c!280792) b!1713739))

(assert (= (and b!1713736 (not c!280792)) b!1713737))

(assert (= (and b!1713737 c!280793) b!1713741))

(assert (= (and b!1713737 (not c!280793)) b!1713743))

(declare-fun m!2117641 () Bool)

(assert (=> d!525892 m!2117641))

(assert (=> d!525892 m!2116181))

(declare-fun m!2117643 () Bool)

(assert (=> d!525892 m!2117643))

(declare-fun m!2117645 () Bool)

(assert (=> b!1713743 m!2117645))

(assert (=> b!1713736 m!2116181))

(declare-fun m!2117647 () Bool)

(assert (=> b!1713736 m!2117647))

(assert (=> b!1713737 m!2116181))

(declare-fun m!2117649 () Bool)

(assert (=> b!1713737 m!2117649))

(assert (=> b!1713737 m!2117649))

(declare-fun m!2117651 () Bool)

(assert (=> b!1713737 m!2117651))

(declare-fun m!2117653 () Bool)

(assert (=> b!1713742 m!2117653))

(declare-fun m!2117655 () Bool)

(assert (=> b!1713739 m!2117655))

(assert (=> b!1713741 m!2116181))

(declare-fun m!2117657 () Bool)

(assert (=> b!1713741 m!2117657))

(declare-fun m!2117659 () Bool)

(assert (=> b!1713744 m!2117659))

(assert (=> d!525386 d!525892))

(declare-fun d!525894 () Bool)

(declare-fun lt!654762 () List!18785)

(declare-fun size!14877 (List!18785) Int)

(declare-fun size!14878 (List!18780) Int)

(assert (=> d!525894 (= (size!14877 lt!654762) (size!14878 rules!3447))))

(declare-fun e!1095970 () List!18785)

(assert (=> d!525894 (= lt!654762 e!1095970)))

(declare-fun c!280796 () Bool)

(assert (=> d!525894 (= c!280796 (is-Nil!18710 rules!3447))))

(assert (=> d!525894 (= (map!3850 rules!3447 lambda!68867) lt!654762)))

(declare-fun b!1713750 () Bool)

(assert (=> b!1713750 (= e!1095970 Nil!18715)))

(declare-fun b!1713751 () Bool)

(declare-fun $colon$colon!425 (List!18785 Regex!4634) List!18785)

(declare-fun dynLambda!8516 (Int Rule!6412) Regex!4634)

(assert (=> b!1713751 (= e!1095970 ($colon$colon!425 (map!3850 (t!158393 rules!3447) lambda!68867) (dynLambda!8516 lambda!68867 (h!24111 rules!3447))))))

(assert (= (and d!525894 c!280796) b!1713750))

(assert (= (and d!525894 (not c!280796)) b!1713751))

(declare-fun b_lambda!54089 () Bool)

(assert (=> (not b_lambda!54089) (not b!1713751)))

(declare-fun m!2117661 () Bool)

(assert (=> d!525894 m!2117661))

(declare-fun m!2117663 () Bool)

(assert (=> d!525894 m!2117663))

(declare-fun m!2117665 () Bool)

(assert (=> b!1713751 m!2117665))

(declare-fun m!2117667 () Bool)

(assert (=> b!1713751 m!2117667))

(assert (=> b!1713751 m!2117665))

(assert (=> b!1713751 m!2117667))

(declare-fun m!2117669 () Bool)

(assert (=> b!1713751 m!2117669))

(assert (=> d!525386 d!525894))

(declare-fun d!525896 () Bool)

(declare-fun c!280797 () Bool)

(assert (=> d!525896 (= c!280797 (is-Nil!18709 lt!654552))))

(declare-fun e!1095971 () (Set C!9442))

(assert (=> d!525896 (= (content!2664 lt!654552) e!1095971)))

(declare-fun b!1713752 () Bool)

(assert (=> b!1713752 (= e!1095971 (as set.empty (Set C!9442)))))

(declare-fun b!1713753 () Bool)

(assert (=> b!1713753 (= e!1095971 (set.union (set.insert (h!24110 lt!654552) (as set.empty (Set C!9442))) (content!2664 (t!158392 lt!654552))))))

(assert (= (and d!525896 c!280797) b!1713752))

(assert (= (and d!525896 (not c!280797)) b!1713753))

(declare-fun m!2117671 () Bool)

(assert (=> b!1713753 m!2117671))

(declare-fun m!2117673 () Bool)

(assert (=> b!1713753 m!2117673))

(assert (=> d!525498 d!525896))

(assert (=> d!525498 d!525880))

(declare-fun d!525898 () Bool)

(declare-fun c!280798 () Bool)

(assert (=> d!525898 (= c!280798 (is-Nil!18709 suffix!1421))))

(declare-fun e!1095972 () (Set C!9442))

(assert (=> d!525898 (= (content!2664 suffix!1421) e!1095972)))

(declare-fun b!1713754 () Bool)

(assert (=> b!1713754 (= e!1095972 (as set.empty (Set C!9442)))))

(declare-fun b!1713755 () Bool)

(assert (=> b!1713755 (= e!1095972 (set.union (set.insert (h!24110 suffix!1421) (as set.empty (Set C!9442))) (content!2664 (t!158392 suffix!1421))))))

(assert (= (and d!525898 c!280798) b!1713754))

(assert (= (and d!525898 (not c!280798)) b!1713755))

(declare-fun m!2117675 () Bool)

(assert (=> b!1713755 m!2117675))

(declare-fun m!2117677 () Bool)

(assert (=> b!1713755 m!2117677))

(assert (=> d!525498 d!525898))

(assert (=> b!1712929 d!525598))

(assert (=> b!1712929 d!525600))

(declare-fun d!525900 () Bool)

(declare-fun c!280799 () Bool)

(assert (=> d!525900 (= c!280799 (is-Node!6222 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(declare-fun e!1095973 () Bool)

(assert (=> d!525900 (= (inv!24129 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) e!1095973)))

(declare-fun b!1713756 () Bool)

(assert (=> b!1713756 (= e!1095973 (inv!24135 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(declare-fun b!1713757 () Bool)

(declare-fun e!1095974 () Bool)

(assert (=> b!1713757 (= e!1095973 e!1095974)))

(declare-fun res!768388 () Bool)

(assert (=> b!1713757 (= res!768388 (not (is-Leaf!9096 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))))

(assert (=> b!1713757 (=> res!768388 e!1095974)))

(declare-fun b!1713758 () Bool)

(assert (=> b!1713758 (= e!1095974 (inv!24136 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(assert (= (and d!525900 c!280799) b!1713756))

(assert (= (and d!525900 (not c!280799)) b!1713757))

(assert (= (and b!1713757 (not res!768388)) b!1713758))

(declare-fun m!2117679 () Bool)

(assert (=> b!1713756 m!2117679))

(declare-fun m!2117681 () Bool)

(assert (=> b!1713758 m!2117681))

(assert (=> b!1713052 d!525900))

(declare-fun d!525902 () Bool)

(declare-fun c!280800 () Bool)

(assert (=> d!525902 (= c!280800 (is-Node!6222 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(declare-fun e!1095975 () Bool)

(assert (=> d!525902 (= (inv!24129 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) e!1095975)))

(declare-fun b!1713759 () Bool)

(assert (=> b!1713759 (= e!1095975 (inv!24135 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(declare-fun b!1713760 () Bool)

(declare-fun e!1095976 () Bool)

(assert (=> b!1713760 (= e!1095975 e!1095976)))

(declare-fun res!768389 () Bool)

(assert (=> b!1713760 (= res!768389 (not (is-Leaf!9096 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))))))

(assert (=> b!1713760 (=> res!768389 e!1095976)))

(declare-fun b!1713761 () Bool)

(assert (=> b!1713761 (= e!1095976 (inv!24136 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))

(assert (= (and d!525902 c!280800) b!1713759))

(assert (= (and d!525902 (not c!280800)) b!1713760))

(assert (= (and b!1713760 (not res!768389)) b!1713761))

(declare-fun m!2117683 () Bool)

(assert (=> b!1713759 m!2117683))

(declare-fun m!2117685 () Bool)

(assert (=> b!1713761 m!2117685))

(assert (=> b!1713052 d!525902))

(declare-fun d!525904 () Bool)

(declare-fun e!1095978 () Bool)

(assert (=> d!525904 e!1095978))

(declare-fun res!768390 () Bool)

(assert (=> d!525904 (=> (not res!768390) (not e!1095978))))

(declare-fun lt!654763 () List!18779)

(assert (=> d!525904 (= res!768390 (= (content!2664 lt!654763) (set.union (content!2664 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))) (content!2664 (_2!10612 (get!5507 lt!654419))))))))

(declare-fun e!1095977 () List!18779)

(assert (=> d!525904 (= lt!654763 e!1095977)))

(declare-fun c!280801 () Bool)

(assert (=> d!525904 (= c!280801 (is-Nil!18709 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))))))

(assert (=> d!525904 (= (++!5131 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))) (_2!10612 (get!5507 lt!654419))) lt!654763)))

(declare-fun b!1713762 () Bool)

(assert (=> b!1713762 (= e!1095977 (_2!10612 (get!5507 lt!654419)))))

(declare-fun b!1713765 () Bool)

(assert (=> b!1713765 (= e!1095978 (or (not (= (_2!10612 (get!5507 lt!654419)) Nil!18709)) (= lt!654763 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419)))))))))

(declare-fun b!1713763 () Bool)

(assert (=> b!1713763 (= e!1095977 (Cons!18709 (h!24110 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))) (++!5131 (t!158392 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))) (_2!10612 (get!5507 lt!654419)))))))

(declare-fun b!1713764 () Bool)

(declare-fun res!768391 () Bool)

(assert (=> b!1713764 (=> (not res!768391) (not e!1095978))))

(assert (=> b!1713764 (= res!768391 (= (size!14871 lt!654763) (+ (size!14871 (list!7551 (charsOf!1955 (_1!10612 (get!5507 lt!654419))))) (size!14871 (_2!10612 (get!5507 lt!654419))))))))

(assert (= (and d!525904 c!280801) b!1713762))

(assert (= (and d!525904 (not c!280801)) b!1713763))

(assert (= (and d!525904 res!768390) b!1713764))

(assert (= (and b!1713764 res!768391) b!1713765))

(declare-fun m!2117687 () Bool)

(assert (=> d!525904 m!2117687))

(assert (=> d!525904 m!2116249))

(declare-fun m!2117689 () Bool)

(assert (=> d!525904 m!2117689))

(declare-fun m!2117691 () Bool)

(assert (=> d!525904 m!2117691))

(declare-fun m!2117693 () Bool)

(assert (=> b!1713763 m!2117693))

(declare-fun m!2117695 () Bool)

(assert (=> b!1713764 m!2117695))

(assert (=> b!1713764 m!2116249))

(declare-fun m!2117697 () Bool)

(assert (=> b!1713764 m!2117697))

(assert (=> b!1713764 m!2116263))

(assert (=> b!1712731 d!525904))

(assert (=> b!1712731 d!525854))

(assert (=> b!1712731 d!525856))

(assert (=> b!1712731 d!525682))

(assert (=> b!1712634 d!525574))

(declare-fun d!525906 () Bool)

(declare-fun e!1095980 () Bool)

(assert (=> d!525906 e!1095980))

(declare-fun res!768392 () Bool)

(assert (=> d!525906 (=> (not res!768392) (not e!1095980))))

(declare-fun lt!654764 () List!18779)

(assert (=> d!525906 (= res!768392 (= (content!2664 lt!654764) (set.union (content!2664 (t!158392 lt!654323)) (content!2664 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(declare-fun e!1095979 () List!18779)

(assert (=> d!525906 (= lt!654764 e!1095979)))

(declare-fun c!280802 () Bool)

(assert (=> d!525906 (= c!280802 (is-Nil!18709 (t!158392 lt!654323)))))

(assert (=> d!525906 (= (++!5131 (t!158392 lt!654323) (Cons!18709 (head!3845 suffix!1421) Nil!18709)) lt!654764)))

(declare-fun b!1713766 () Bool)

(assert (=> b!1713766 (= e!1095979 (Cons!18709 (head!3845 suffix!1421) Nil!18709))))

(declare-fun b!1713769 () Bool)

(assert (=> b!1713769 (= e!1095980 (or (not (= (Cons!18709 (head!3845 suffix!1421) Nil!18709) Nil!18709)) (= lt!654764 (t!158392 lt!654323))))))

(declare-fun b!1713767 () Bool)

(assert (=> b!1713767 (= e!1095979 (Cons!18709 (h!24110 (t!158392 lt!654323)) (++!5131 (t!158392 (t!158392 lt!654323)) (Cons!18709 (head!3845 suffix!1421) Nil!18709))))))

(declare-fun b!1713768 () Bool)

(declare-fun res!768393 () Bool)

(assert (=> b!1713768 (=> (not res!768393) (not e!1095980))))

(assert (=> b!1713768 (= res!768393 (= (size!14871 lt!654764) (+ (size!14871 (t!158392 lt!654323)) (size!14871 (Cons!18709 (head!3845 suffix!1421) Nil!18709)))))))

(assert (= (and d!525906 c!280802) b!1713766))

(assert (= (and d!525906 (not c!280802)) b!1713767))

(assert (= (and d!525906 res!768392) b!1713768))

(assert (= (and b!1713768 res!768393) b!1713769))

(declare-fun m!2117699 () Bool)

(assert (=> d!525906 m!2117699))

(assert (=> d!525906 m!2117621))

(assert (=> d!525906 m!2116189))

(declare-fun m!2117701 () Bool)

(assert (=> b!1713767 m!2117701))

(declare-fun m!2117703 () Bool)

(assert (=> b!1713768 m!2117703))

(assert (=> b!1713768 m!2116951))

(assert (=> b!1713768 m!2116197))

(assert (=> b!1712678 d!525906))

(declare-fun d!525908 () Bool)

(assert (=> d!525908 (= (inv!17 (value!103895 token!523)) (= (charsToBigInt!1 (text!24220 (value!103895 token!523))) (value!103887 (value!103895 token!523))))))

(declare-fun bs!401906 () Bool)

(assert (= bs!401906 d!525908))

(declare-fun m!2117705 () Bool)

(assert (=> bs!401906 m!2117705))

(assert (=> b!1712654 d!525908))

(declare-fun bs!401907 () Bool)

(declare-fun d!525910 () Bool)

(assert (= bs!401907 (and d!525910 d!525762)))

(declare-fun lambda!68902 () Int)

(assert (=> bs!401907 (= (and (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68902 lambda!68887))))

(declare-fun bs!401908 () Bool)

(assert (= bs!401908 (and d!525910 b!1712424)))

(assert (=> bs!401908 (= (and (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68902 lambda!68861))))

(declare-fun bs!401909 () Bool)

(assert (= bs!401909 (and d!525910 d!525590)))

(assert (=> bs!401909 (= (and (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (h!24111 rules!3447)))) (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (h!24111 rules!3447))))) (= lambda!68902 lambda!68879))))

(declare-fun bs!401910 () Bool)

(assert (= bs!401910 (and d!525910 d!525832)))

(assert (=> bs!401910 (= (and (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 token!523)))) (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 token!523))))) (= lambda!68902 lambda!68892))))

(declare-fun bs!401911 () Bool)

(assert (= bs!401911 (and d!525910 d!525396)))

(assert (=> bs!401911 (= (and (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (= lambda!68902 lambda!68870))))

(assert (=> d!525910 true))

(assert (=> d!525910 (< (dynLambda!8504 order!11269 (toChars!4668 (transformation!3306 rule!422))) (dynLambda!8503 order!11267 lambda!68902))))

(assert (=> d!525910 true))

(assert (=> d!525910 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 rule!422))) (dynLambda!8503 order!11267 lambda!68902))))

(assert (=> d!525910 (= (semiInverseModEq!1306 (toChars!4668 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 rule!422))) (Forall!681 lambda!68902))))

(declare-fun bs!401912 () Bool)

(assert (= bs!401912 d!525910))

(declare-fun m!2117707 () Bool)

(assert (=> bs!401912 m!2117707))

(assert (=> d!525364 d!525910))

(assert (=> b!1712589 d!525588))

(assert (=> b!1712993 d!525808))

(assert (=> b!1712993 d!525636))

(assert (=> b!1712757 d!525644))

(assert (=> b!1712757 d!525496))

(declare-fun d!525912 () Bool)

(declare-fun e!1095982 () Bool)

(assert (=> d!525912 e!1095982))

(declare-fun res!768394 () Bool)

(assert (=> d!525912 (=> (not res!768394) (not e!1095982))))

(declare-fun lt!654765 () List!18779)

(assert (=> d!525912 (= res!768394 (= (content!2664 lt!654765) (set.union (content!2664 (t!158392 lt!654323)) (content!2664 suffix!1421))))))

(declare-fun e!1095981 () List!18779)

(assert (=> d!525912 (= lt!654765 e!1095981)))

(declare-fun c!280803 () Bool)

(assert (=> d!525912 (= c!280803 (is-Nil!18709 (t!158392 lt!654323)))))

(assert (=> d!525912 (= (++!5131 (t!158392 lt!654323) suffix!1421) lt!654765)))

(declare-fun b!1713770 () Bool)

(assert (=> b!1713770 (= e!1095981 suffix!1421)))

(declare-fun b!1713773 () Bool)

(assert (=> b!1713773 (= e!1095982 (or (not (= suffix!1421 Nil!18709)) (= lt!654765 (t!158392 lt!654323))))))

(declare-fun b!1713771 () Bool)

(assert (=> b!1713771 (= e!1095981 (Cons!18709 (h!24110 (t!158392 lt!654323)) (++!5131 (t!158392 (t!158392 lt!654323)) suffix!1421)))))

(declare-fun b!1713772 () Bool)

(declare-fun res!768395 () Bool)

(assert (=> b!1713772 (=> (not res!768395) (not e!1095982))))

(assert (=> b!1713772 (= res!768395 (= (size!14871 lt!654765) (+ (size!14871 (t!158392 lt!654323)) (size!14871 suffix!1421))))))

(assert (= (and d!525912 c!280803) b!1713770))

(assert (= (and d!525912 (not c!280803)) b!1713771))

(assert (= (and d!525912 res!768394) b!1713772))

(assert (= (and b!1713772 res!768395) b!1713773))

(declare-fun m!2117709 () Bool)

(assert (=> d!525912 m!2117709))

(assert (=> d!525912 m!2117621))

(assert (=> d!525912 m!2116555))

(declare-fun m!2117711 () Bool)

(assert (=> b!1713771 m!2117711))

(declare-fun m!2117713 () Bool)

(assert (=> b!1713772 m!2117713))

(assert (=> b!1713772 m!2116951))

(assert (=> b!1713772 m!2116561))

(assert (=> b!1712969 d!525912))

(declare-fun d!525914 () Bool)

(declare-fun res!768396 () Bool)

(declare-fun e!1095983 () Bool)

(assert (=> d!525914 (=> (not res!768396) (not e!1095983))))

(assert (=> d!525914 (= res!768396 (<= (size!14871 (list!7557 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) 512))))

(assert (=> d!525914 (= (inv!24136 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) e!1095983)))

(declare-fun b!1713774 () Bool)

(declare-fun res!768397 () Bool)

(assert (=> b!1713774 (=> (not res!768397) (not e!1095983))))

(assert (=> b!1713774 (= res!768397 (= (csize!12675 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) (size!14871 (list!7557 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))))))

(declare-fun b!1713775 () Bool)

(assert (=> b!1713775 (= e!1095983 (and (> (csize!12675 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) 0) (<= (csize!12675 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))) 512)))))

(assert (= (and d!525914 res!768396) b!1713774))

(assert (= (and b!1713774 res!768397) b!1713775))

(declare-fun m!2117715 () Bool)

(assert (=> d!525914 m!2117715))

(assert (=> d!525914 m!2117715))

(declare-fun m!2117717 () Bool)

(assert (=> d!525914 m!2117717))

(assert (=> b!1713774 m!2117715))

(assert (=> b!1713774 m!2117715))

(assert (=> b!1713774 m!2117717))

(assert (=> b!1712974 d!525914))

(assert (=> bm!109504 d!525752))

(assert (=> b!1712739 d!525854))

(assert (=> b!1712739 d!525856))

(assert (=> b!1712739 d!525682))

(declare-fun d!525916 () Bool)

(assert (=> d!525916 (= (isDefined!2980 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))) (not (isEmpty!11758 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))

(declare-fun bs!401913 () Bool)

(assert (= bs!401913 d!525916))

(assert (=> bs!401913 m!2115905))

(declare-fun m!2117719 () Bool)

(assert (=> bs!401913 m!2117719))

(assert (=> d!525432 d!525916))

(assert (=> d!525432 d!525496))

(declare-fun d!525918 () Bool)

(declare-fun e!1095986 () Bool)

(assert (=> d!525918 e!1095986))

(declare-fun res!768402 () Bool)

(assert (=> d!525918 (=> (not res!768402) (not e!1095986))))

(assert (=> d!525918 (= res!768402 (isDefined!2980 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328))))))))

(assert (=> d!525918 true))

(declare-fun _$52!1091 () Unit!32536)

(assert (=> d!525918 (= (choose!10394 thiss!24550 rules!3447 lt!654334 (_1!10612 lt!654328)) _$52!1091)))

(declare-fun b!1713780 () Bool)

(declare-fun res!768403 () Bool)

(assert (=> b!1713780 (=> (not res!768403) (not e!1095986))))

(assert (=> b!1713780 (= res!768403 (matchR!2108 (regex!3306 (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))) (list!7551 (charsOf!1955 (_1!10612 lt!654328)))))))

(declare-fun b!1713781 () Bool)

(assert (=> b!1713781 (= e!1095986 (= (rule!5242 (_1!10612 lt!654328)) (get!5508 (getRuleFromTag!356 thiss!24550 rules!3447 (tag!3604 (rule!5242 (_1!10612 lt!654328)))))))))

(assert (= (and d!525918 res!768402) b!1713780))

(assert (= (and b!1713780 res!768403) b!1713781))

(assert (=> d!525918 m!2115905))

(assert (=> d!525918 m!2115905))

(assert (=> d!525918 m!2116303))

(assert (=> b!1713780 m!2115913))

(assert (=> b!1713780 m!2115905))

(assert (=> b!1713780 m!2116307))

(assert (=> b!1713780 m!2115939))

(assert (=> b!1713780 m!2116309))

(assert (=> b!1713780 m!2115913))

(assert (=> b!1713780 m!2115939))

(assert (=> b!1713780 m!2115905))

(assert (=> b!1713781 m!2115905))

(assert (=> b!1713781 m!2115905))

(assert (=> b!1713781 m!2116307))

(assert (=> d!525432 d!525918))

(assert (=> d!525432 d!525358))

(declare-fun bs!401914 () Bool)

(declare-fun d!525920 () Bool)

(assert (= bs!401914 (and d!525920 d!525624)))

(declare-fun lambda!68903 () Int)

(assert (=> bs!401914 (= (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) (= lambda!68903 lambda!68882))))

(declare-fun bs!401915 () Bool)

(assert (= bs!401915 (and d!525920 d!525756)))

(assert (=> bs!401915 (= (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (h!24111 rules!3447)))) (= lambda!68903 lambda!68886))))

(declare-fun bs!401916 () Bool)

(assert (= bs!401916 (and d!525920 d!525776)))

(assert (=> bs!401916 (= (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 rule!422))) (= lambda!68903 lambda!68888))))

(assert (=> d!525920 true))

(assert (=> d!525920 (< (dynLambda!8502 order!11265 (toValue!4809 (transformation!3306 (rule!5242 token!523)))) (dynLambda!8513 order!11277 lambda!68903))))

(assert (=> d!525920 (= (equivClasses!1247 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 token!523)))) (Forall2!552 lambda!68903))))

(declare-fun bs!401917 () Bool)

(assert (= bs!401917 d!525920))

(declare-fun m!2117721 () Bool)

(assert (=> bs!401917 m!2117721))

(assert (=> b!1712659 d!525920))

(assert (=> d!525428 d!525436))

(assert (=> d!525428 d!525430))

(declare-fun d!525922 () Bool)

(assert (=> d!525922 (isPrefix!1547 lt!654329 (++!5131 lt!654329 (_2!10612 lt!654328)))))

(assert (=> d!525922 true))

(declare-fun _$46!1181 () Unit!32536)

(assert (=> d!525922 (= (choose!10393 lt!654329 (_2!10612 lt!654328)) _$46!1181)))

(declare-fun bs!401918 () Bool)

(assert (= bs!401918 d!525922))

(assert (=> bs!401918 m!2115893))

(assert (=> bs!401918 m!2115893))

(assert (=> bs!401918 m!2115895))

(assert (=> d!525428 d!525922))

(declare-fun b!1713784 () Bool)

(declare-fun e!1095987 () Bool)

(declare-fun tp!489514 () Bool)

(assert (=> b!1713784 (= e!1095987 tp!489514)))

(declare-fun b!1713782 () Bool)

(assert (=> b!1713782 (= e!1095987 tp_is_empty!7511)))

(declare-fun b!1713785 () Bool)

(declare-fun tp!489516 () Bool)

(declare-fun tp!489515 () Bool)

(assert (=> b!1713785 (= e!1095987 (and tp!489516 tp!489515))))

(declare-fun b!1713783 () Bool)

(declare-fun tp!489512 () Bool)

(declare-fun tp!489513 () Bool)

(assert (=> b!1713783 (= e!1095987 (and tp!489512 tp!489513))))

(assert (=> b!1713024 (= tp!489421 e!1095987)))

(assert (= (and b!1713024 (is-ElementMatch!4634 (regOne!9781 (regex!3306 (h!24111 rules!3447))))) b!1713782))

(assert (= (and b!1713024 (is-Concat!8031 (regOne!9781 (regex!3306 (h!24111 rules!3447))))) b!1713783))

(assert (= (and b!1713024 (is-Star!4634 (regOne!9781 (regex!3306 (h!24111 rules!3447))))) b!1713784))

(assert (= (and b!1713024 (is-Union!4634 (regOne!9781 (regex!3306 (h!24111 rules!3447))))) b!1713785))

(declare-fun b!1713788 () Bool)

(declare-fun e!1095988 () Bool)

(declare-fun tp!489519 () Bool)

(assert (=> b!1713788 (= e!1095988 tp!489519)))

(declare-fun b!1713786 () Bool)

(assert (=> b!1713786 (= e!1095988 tp_is_empty!7511)))

(declare-fun b!1713789 () Bool)

(declare-fun tp!489521 () Bool)

(declare-fun tp!489520 () Bool)

(assert (=> b!1713789 (= e!1095988 (and tp!489521 tp!489520))))

(declare-fun b!1713787 () Bool)

(declare-fun tp!489517 () Bool)

(declare-fun tp!489518 () Bool)

(assert (=> b!1713787 (= e!1095988 (and tp!489517 tp!489518))))

(assert (=> b!1713024 (= tp!489420 e!1095988)))

(assert (= (and b!1713024 (is-ElementMatch!4634 (regTwo!9781 (regex!3306 (h!24111 rules!3447))))) b!1713786))

(assert (= (and b!1713024 (is-Concat!8031 (regTwo!9781 (regex!3306 (h!24111 rules!3447))))) b!1713787))

(assert (= (and b!1713024 (is-Star!4634 (regTwo!9781 (regex!3306 (h!24111 rules!3447))))) b!1713788))

(assert (= (and b!1713024 (is-Union!4634 (regTwo!9781 (regex!3306 (h!24111 rules!3447))))) b!1713789))

(declare-fun b!1713790 () Bool)

(declare-fun e!1095989 () Bool)

(declare-fun tp!489522 () Bool)

(assert (=> b!1713790 (= e!1095989 (and tp_is_empty!7511 tp!489522))))

(assert (=> b!1713054 (= tp!489451 e!1095989)))

(assert (= (and b!1713054 (is-Cons!18709 (innerList!6282 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))))) b!1713790))

(declare-fun tp!489523 () Bool)

(declare-fun tp!489525 () Bool)

(declare-fun e!1095990 () Bool)

(declare-fun b!1713791 () Bool)

(assert (=> b!1713791 (= e!1095990 (and (inv!24129 (left!14911 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) tp!489523 (inv!24129 (right!15241 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) tp!489525))))

(declare-fun b!1713793 () Bool)

(declare-fun e!1095991 () Bool)

(declare-fun tp!489524 () Bool)

(assert (=> b!1713793 (= e!1095991 tp!489524)))

(declare-fun b!1713792 () Bool)

(assert (=> b!1713792 (= e!1095990 (and (inv!24139 (xs!9098 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) e!1095991))))

(assert (=> b!1713055 (= tp!489453 (and (inv!24129 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) e!1095990))))

(assert (= (and b!1713055 (is-Node!6222 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) b!1713791))

(assert (= b!1713792 b!1713793))

(assert (= (and b!1713055 (is-Leaf!9096 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) b!1713792))

(declare-fun m!2117723 () Bool)

(assert (=> b!1713791 m!2117723))

(declare-fun m!2117725 () Bool)

(assert (=> b!1713791 m!2117725))

(declare-fun m!2117727 () Bool)

(assert (=> b!1713792 m!2117727))

(assert (=> b!1713055 m!2116645))

(declare-fun tp!489526 () Bool)

(declare-fun b!1713794 () Bool)

(declare-fun e!1095992 () Bool)

(declare-fun tp!489528 () Bool)

(assert (=> b!1713794 (= e!1095992 (and (inv!24129 (left!14911 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) tp!489526 (inv!24129 (right!15241 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) tp!489528))))

(declare-fun b!1713796 () Bool)

(declare-fun e!1095993 () Bool)

(declare-fun tp!489527 () Bool)

(assert (=> b!1713796 (= e!1095993 tp!489527)))

(declare-fun b!1713795 () Bool)

(assert (=> b!1713795 (= e!1095992 (and (inv!24139 (xs!9098 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) e!1095993))))

(assert (=> b!1713055 (= tp!489455 (and (inv!24129 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))) e!1095992))))

(assert (= (and b!1713055 (is-Node!6222 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) b!1713794))

(assert (= b!1713795 b!1713796))

(assert (= (and b!1713055 (is-Leaf!9096 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332)))))) b!1713795))

(declare-fun m!2117729 () Bool)

(assert (=> b!1713794 m!2117729))

(declare-fun m!2117731 () Bool)

(assert (=> b!1713794 m!2117731))

(declare-fun m!2117733 () Bool)

(assert (=> b!1713795 m!2117733))

(assert (=> b!1713055 m!2116647))

(declare-fun b!1713797 () Bool)

(declare-fun e!1095994 () Bool)

(declare-fun tp!489529 () Bool)

(assert (=> b!1713797 (= e!1095994 (and tp_is_empty!7511 tp!489529))))

(assert (=> b!1713057 (= tp!489454 e!1095994)))

(assert (= (and b!1713057 (is-Cons!18709 (innerList!6282 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))))))) b!1713797))

(declare-fun b!1713800 () Bool)

(declare-fun e!1095995 () Bool)

(declare-fun tp!489532 () Bool)

(assert (=> b!1713800 (= e!1095995 tp!489532)))

(declare-fun b!1713798 () Bool)

(assert (=> b!1713798 (= e!1095995 tp_is_empty!7511)))

(declare-fun b!1713801 () Bool)

(declare-fun tp!489534 () Bool)

(declare-fun tp!489533 () Bool)

(assert (=> b!1713801 (= e!1095995 (and tp!489534 tp!489533))))

(declare-fun b!1713799 () Bool)

(declare-fun tp!489530 () Bool)

(declare-fun tp!489531 () Bool)

(assert (=> b!1713799 (= e!1095995 (and tp!489530 tp!489531))))

(assert (=> b!1713042 (= tp!489440 e!1095995)))

(assert (= (and b!1713042 (is-ElementMatch!4634 (regex!3306 (h!24111 (t!158393 rules!3447))))) b!1713798))

(assert (= (and b!1713042 (is-Concat!8031 (regex!3306 (h!24111 (t!158393 rules!3447))))) b!1713799))

(assert (= (and b!1713042 (is-Star!4634 (regex!3306 (h!24111 (t!158393 rules!3447))))) b!1713800))

(assert (= (and b!1713042 (is-Union!4634 (regex!3306 (h!24111 (t!158393 rules!3447))))) b!1713801))

(declare-fun b!1713804 () Bool)

(declare-fun b_free!46511 () Bool)

(declare-fun b_next!47215 () Bool)

(assert (=> b!1713804 (= b_free!46511 (not b_next!47215))))

(declare-fun t!158492 () Bool)

(declare-fun tb!101139 () Bool)

(assert (=> (and b!1713804 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158492) tb!101139))

(declare-fun result!121546 () Bool)

(assert (= result!121546 result!121426))

(assert (=> b!1712416 t!158492))

(assert (=> d!525396 t!158492))

(declare-fun tb!101141 () Bool)

(declare-fun t!158494 () Bool)

(assert (=> (and b!1713804 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158494) tb!101141))

(declare-fun result!121548 () Bool)

(assert (= result!121548 result!121522))

(assert (=> d!525684 t!158494))

(declare-fun tb!101143 () Bool)

(declare-fun t!158496 () Bool)

(assert (=> (and b!1713804 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158496) tb!101143))

(declare-fun result!121550 () Bool)

(assert (= result!121550 result!121530))

(assert (=> d!525848 t!158496))

(declare-fun tp!489537 () Bool)

(declare-fun b_and!124185 () Bool)

(assert (=> b!1713804 (= tp!489537 (and (=> t!158492 result!121546) (=> t!158494 result!121548) (=> t!158496 result!121550) b_and!124185))))

(declare-fun b_free!46513 () Bool)

(declare-fun b_next!47217 () Bool)

(assert (=> b!1713804 (= b_free!46513 (not b_next!47217))))

(declare-fun tb!101145 () Bool)

(declare-fun t!158498 () Bool)

(assert (=> (and b!1713804 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158498) tb!101145))

(declare-fun result!121552 () Bool)

(assert (= result!121552 result!121418))

(assert (=> b!1712416 t!158498))

(declare-fun tb!101147 () Bool)

(declare-fun t!158500 () Bool)

(assert (=> (and b!1713804 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 lt!654520)))) t!158500) tb!101147))

(declare-fun result!121554 () Bool)

(assert (= result!121554 result!121506))

(assert (=> d!525594 t!158500))

(declare-fun t!158502 () Bool)

(declare-fun tb!101149 () Bool)

(assert (=> (and b!1713804 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654419)))))) t!158502) tb!101149))

(declare-fun result!121556 () Bool)

(assert (= result!121556 result!121538))

(assert (=> d!525856 t!158502))

(declare-fun t!158504 () Bool)

(declare-fun tb!101151 () Bool)

(assert (=> (and b!1713804 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 token!523)))) t!158504) tb!101151))

(declare-fun result!121558 () Bool)

(assert (= result!121558 result!121468))

(assert (=> b!1712989 t!158504))

(assert (=> d!525396 t!158498))

(declare-fun tb!101153 () Bool)

(declare-fun t!158506 () Bool)

(assert (=> (and b!1713804 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328))))) t!158506) tb!101153))

(declare-fun result!121560 () Bool)

(assert (= result!121560 result!121434))

(assert (=> d!525442 t!158506))

(declare-fun tb!101155 () Bool)

(declare-fun t!158508 () Bool)

(assert (=> (and b!1713804 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 (get!5507 lt!654554)))))) t!158508) tb!101155))

(declare-fun result!121562 () Bool)

(assert (= result!121562 result!121514))

(assert (=> d!525676 t!158508))

(assert (=> d!525508 t!158504))

(assert (=> b!1712440 t!158506))

(declare-fun tp!489538 () Bool)

(declare-fun b_and!124187 () Bool)

(assert (=> b!1713804 (= tp!489538 (and (=> t!158500 result!121554) (=> t!158498 result!121552) (=> t!158502 result!121556) (=> t!158508 result!121562) (=> t!158504 result!121558) (=> t!158506 result!121560) b_and!124187))))

(declare-fun e!1095997 () Bool)

(assert (=> b!1713804 (= e!1095997 (and tp!489537 tp!489538))))

(declare-fun e!1095998 () Bool)

(declare-fun tp!489535 () Bool)

(declare-fun b!1713803 () Bool)

(assert (=> b!1713803 (= e!1095998 (and tp!489535 (inv!24124 (tag!3604 (h!24111 (t!158393 (t!158393 rules!3447))))) (inv!24127 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) e!1095997))))

(declare-fun b!1713802 () Bool)

(declare-fun e!1095996 () Bool)

(declare-fun tp!489536 () Bool)

(assert (=> b!1713802 (= e!1095996 (and e!1095998 tp!489536))))

(assert (=> b!1713041 (= tp!489441 e!1095996)))

(assert (= b!1713803 b!1713804))

(assert (= b!1713802 b!1713803))

(assert (= (and b!1713041 (is-Cons!18710 (t!158393 (t!158393 rules!3447)))) b!1713802))

(declare-fun m!2117735 () Bool)

(assert (=> b!1713803 m!2117735))

(declare-fun m!2117737 () Bool)

(assert (=> b!1713803 m!2117737))

(declare-fun b!1713805 () Bool)

(declare-fun e!1096000 () Bool)

(declare-fun tp!489539 () Bool)

(assert (=> b!1713805 (= e!1096000 (and tp_is_empty!7511 tp!489539))))

(assert (=> b!1713009 (= tp!489405 e!1096000)))

(assert (= (and b!1713009 (is-Cons!18709 (t!158392 (t!158392 suffix!1421)))) b!1713805))

(declare-fun b!1713808 () Bool)

(declare-fun e!1096001 () Bool)

(declare-fun tp!489542 () Bool)

(assert (=> b!1713808 (= e!1096001 tp!489542)))

(declare-fun b!1713806 () Bool)

(assert (=> b!1713806 (= e!1096001 tp_is_empty!7511)))

(declare-fun b!1713809 () Bool)

(declare-fun tp!489544 () Bool)

(declare-fun tp!489543 () Bool)

(assert (=> b!1713809 (= e!1096001 (and tp!489544 tp!489543))))

(declare-fun b!1713807 () Bool)

(declare-fun tp!489540 () Bool)

(declare-fun tp!489541 () Bool)

(assert (=> b!1713807 (= e!1096001 (and tp!489540 tp!489541))))

(assert (=> b!1713030 (= tp!489427 e!1096001)))

(assert (= (and b!1713030 (is-ElementMatch!4634 (regOne!9780 (regex!3306 (rule!5242 token!523))))) b!1713806))

(assert (= (and b!1713030 (is-Concat!8031 (regOne!9780 (regex!3306 (rule!5242 token!523))))) b!1713807))

(assert (= (and b!1713030 (is-Star!4634 (regOne!9780 (regex!3306 (rule!5242 token!523))))) b!1713808))

(assert (= (and b!1713030 (is-Union!4634 (regOne!9780 (regex!3306 (rule!5242 token!523))))) b!1713809))

(declare-fun b!1713812 () Bool)

(declare-fun e!1096002 () Bool)

(declare-fun tp!489547 () Bool)

(assert (=> b!1713812 (= e!1096002 tp!489547)))

(declare-fun b!1713810 () Bool)

(assert (=> b!1713810 (= e!1096002 tp_is_empty!7511)))

(declare-fun b!1713813 () Bool)

(declare-fun tp!489549 () Bool)

(declare-fun tp!489548 () Bool)

(assert (=> b!1713813 (= e!1096002 (and tp!489549 tp!489548))))

(declare-fun b!1713811 () Bool)

(declare-fun tp!489545 () Bool)

(declare-fun tp!489546 () Bool)

(assert (=> b!1713811 (= e!1096002 (and tp!489545 tp!489546))))

(assert (=> b!1713030 (= tp!489428 e!1096002)))

(assert (= (and b!1713030 (is-ElementMatch!4634 (regTwo!9780 (regex!3306 (rule!5242 token!523))))) b!1713810))

(assert (= (and b!1713030 (is-Concat!8031 (regTwo!9780 (regex!3306 (rule!5242 token!523))))) b!1713811))

(assert (= (and b!1713030 (is-Star!4634 (regTwo!9780 (regex!3306 (rule!5242 token!523))))) b!1713812))

(assert (= (and b!1713030 (is-Union!4634 (regTwo!9780 (regex!3306 (rule!5242 token!523))))) b!1713813))

(declare-fun b!1713814 () Bool)

(declare-fun e!1096003 () Bool)

(declare-fun tp!489550 () Bool)

(assert (=> b!1713814 (= e!1096003 (and tp_is_empty!7511 tp!489550))))

(assert (=> b!1713010 (= tp!489406 e!1096003)))

(assert (= (and b!1713010 (is-Cons!18709 (t!158392 (originalCharacters!4120 token!523)))) b!1713814))

(declare-fun b!1713817 () Bool)

(declare-fun e!1096004 () Bool)

(declare-fun tp!489553 () Bool)

(assert (=> b!1713817 (= e!1096004 tp!489553)))

(declare-fun b!1713815 () Bool)

(assert (=> b!1713815 (= e!1096004 tp_is_empty!7511)))

(declare-fun b!1713818 () Bool)

(declare-fun tp!489555 () Bool)

(declare-fun tp!489554 () Bool)

(assert (=> b!1713818 (= e!1096004 (and tp!489555 tp!489554))))

(declare-fun b!1713816 () Bool)

(declare-fun tp!489551 () Bool)

(declare-fun tp!489552 () Bool)

(assert (=> b!1713816 (= e!1096004 (and tp!489551 tp!489552))))

(assert (=> b!1713031 (= tp!489429 e!1096004)))

(assert (= (and b!1713031 (is-ElementMatch!4634 (reg!4963 (regex!3306 (rule!5242 token!523))))) b!1713815))

(assert (= (and b!1713031 (is-Concat!8031 (reg!4963 (regex!3306 (rule!5242 token!523))))) b!1713816))

(assert (= (and b!1713031 (is-Star!4634 (reg!4963 (regex!3306 (rule!5242 token!523))))) b!1713817))

(assert (= (and b!1713031 (is-Union!4634 (reg!4963 (regex!3306 (rule!5242 token!523))))) b!1713818))

(declare-fun b!1713821 () Bool)

(declare-fun e!1096005 () Bool)

(declare-fun tp!489558 () Bool)

(assert (=> b!1713821 (= e!1096005 tp!489558)))

(declare-fun b!1713819 () Bool)

(assert (=> b!1713819 (= e!1096005 tp_is_empty!7511)))

(declare-fun b!1713822 () Bool)

(declare-fun tp!489560 () Bool)

(declare-fun tp!489559 () Bool)

(assert (=> b!1713822 (= e!1096005 (and tp!489560 tp!489559))))

(declare-fun b!1713820 () Bool)

(declare-fun tp!489556 () Bool)

(declare-fun tp!489557 () Bool)

(assert (=> b!1713820 (= e!1096005 (and tp!489556 tp!489557))))

(assert (=> b!1713022 (= tp!489417 e!1096005)))

(assert (= (and b!1713022 (is-ElementMatch!4634 (regOne!9780 (regex!3306 (h!24111 rules!3447))))) b!1713819))

(assert (= (and b!1713022 (is-Concat!8031 (regOne!9780 (regex!3306 (h!24111 rules!3447))))) b!1713820))

(assert (= (and b!1713022 (is-Star!4634 (regOne!9780 (regex!3306 (h!24111 rules!3447))))) b!1713821))

(assert (= (and b!1713022 (is-Union!4634 (regOne!9780 (regex!3306 (h!24111 rules!3447))))) b!1713822))

(declare-fun b!1713825 () Bool)

(declare-fun e!1096006 () Bool)

(declare-fun tp!489563 () Bool)

(assert (=> b!1713825 (= e!1096006 tp!489563)))

(declare-fun b!1713823 () Bool)

(assert (=> b!1713823 (= e!1096006 tp_is_empty!7511)))

(declare-fun b!1713826 () Bool)

(declare-fun tp!489565 () Bool)

(declare-fun tp!489564 () Bool)

(assert (=> b!1713826 (= e!1096006 (and tp!489565 tp!489564))))

(declare-fun b!1713824 () Bool)

(declare-fun tp!489561 () Bool)

(declare-fun tp!489562 () Bool)

(assert (=> b!1713824 (= e!1096006 (and tp!489561 tp!489562))))

(assert (=> b!1713022 (= tp!489418 e!1096006)))

(assert (= (and b!1713022 (is-ElementMatch!4634 (regTwo!9780 (regex!3306 (h!24111 rules!3447))))) b!1713823))

(assert (= (and b!1713022 (is-Concat!8031 (regTwo!9780 (regex!3306 (h!24111 rules!3447))))) b!1713824))

(assert (= (and b!1713022 (is-Star!4634 (regTwo!9780 (regex!3306 (h!24111 rules!3447))))) b!1713825))

(assert (= (and b!1713022 (is-Union!4634 (regTwo!9780 (regex!3306 (h!24111 rules!3447))))) b!1713826))

(declare-fun b!1713829 () Bool)

(declare-fun e!1096007 () Bool)

(declare-fun tp!489568 () Bool)

(assert (=> b!1713829 (= e!1096007 tp!489568)))

(declare-fun b!1713827 () Bool)

(assert (=> b!1713827 (= e!1096007 tp_is_empty!7511)))

(declare-fun b!1713830 () Bool)

(declare-fun tp!489570 () Bool)

(declare-fun tp!489569 () Bool)

(assert (=> b!1713830 (= e!1096007 (and tp!489570 tp!489569))))

(declare-fun b!1713828 () Bool)

(declare-fun tp!489566 () Bool)

(declare-fun tp!489567 () Bool)

(assert (=> b!1713828 (= e!1096007 (and tp!489566 tp!489567))))

(assert (=> b!1713026 (= tp!489422 e!1096007)))

(assert (= (and b!1713026 (is-ElementMatch!4634 (regOne!9780 (regex!3306 rule!422)))) b!1713827))

(assert (= (and b!1713026 (is-Concat!8031 (regOne!9780 (regex!3306 rule!422)))) b!1713828))

(assert (= (and b!1713026 (is-Star!4634 (regOne!9780 (regex!3306 rule!422)))) b!1713829))

(assert (= (and b!1713026 (is-Union!4634 (regOne!9780 (regex!3306 rule!422)))) b!1713830))

(declare-fun b!1713833 () Bool)

(declare-fun e!1096008 () Bool)

(declare-fun tp!489573 () Bool)

(assert (=> b!1713833 (= e!1096008 tp!489573)))

(declare-fun b!1713831 () Bool)

(assert (=> b!1713831 (= e!1096008 tp_is_empty!7511)))

(declare-fun b!1713834 () Bool)

(declare-fun tp!489575 () Bool)

(declare-fun tp!489574 () Bool)

(assert (=> b!1713834 (= e!1096008 (and tp!489575 tp!489574))))

(declare-fun b!1713832 () Bool)

(declare-fun tp!489571 () Bool)

(declare-fun tp!489572 () Bool)

(assert (=> b!1713832 (= e!1096008 (and tp!489571 tp!489572))))

(assert (=> b!1713026 (= tp!489423 e!1096008)))

(assert (= (and b!1713026 (is-ElementMatch!4634 (regTwo!9780 (regex!3306 rule!422)))) b!1713831))

(assert (= (and b!1713026 (is-Concat!8031 (regTwo!9780 (regex!3306 rule!422)))) b!1713832))

(assert (= (and b!1713026 (is-Star!4634 (regTwo!9780 (regex!3306 rule!422)))) b!1713833))

(assert (= (and b!1713026 (is-Union!4634 (regTwo!9780 (regex!3306 rule!422)))) b!1713834))

(declare-fun b!1713835 () Bool)

(declare-fun e!1096009 () Bool)

(declare-fun tp!489578 () Bool)

(declare-fun tp!489576 () Bool)

(assert (=> b!1713835 (= e!1096009 (and (inv!24129 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))))) tp!489576 (inv!24129 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))))) tp!489578))))

(declare-fun b!1713837 () Bool)

(declare-fun e!1096010 () Bool)

(declare-fun tp!489577 () Bool)

(assert (=> b!1713837 (= e!1096010 tp!489577)))

(declare-fun b!1713836 () Bool)

(assert (=> b!1713836 (= e!1096009 (and (inv!24139 (xs!9098 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))))) e!1096010))))

(assert (=> b!1712984 (= tp!489402 (and (inv!24129 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523)))) e!1096009))))

(assert (= (and b!1712984 (is-Node!6222 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))))) b!1713835))

(assert (= b!1713836 b!1713837))

(assert (= (and b!1712984 (is-Leaf!9096 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 token!523))) (value!103895 token!523))))) b!1713836))

(declare-fun m!2117739 () Bool)

(assert (=> b!1713835 m!2117739))

(declare-fun m!2117741 () Bool)

(assert (=> b!1713835 m!2117741))

(declare-fun m!2117743 () Bool)

(assert (=> b!1713836 m!2117743))

(assert (=> b!1712984 m!2116601))

(declare-fun b!1713840 () Bool)

(declare-fun e!1096011 () Bool)

(declare-fun tp!489581 () Bool)

(assert (=> b!1713840 (= e!1096011 tp!489581)))

(declare-fun b!1713838 () Bool)

(assert (=> b!1713838 (= e!1096011 tp_is_empty!7511)))

(declare-fun b!1713841 () Bool)

(declare-fun tp!489583 () Bool)

(declare-fun tp!489582 () Bool)

(assert (=> b!1713841 (= e!1096011 (and tp!489583 tp!489582))))

(declare-fun b!1713839 () Bool)

(declare-fun tp!489579 () Bool)

(declare-fun tp!489580 () Bool)

(assert (=> b!1713839 (= e!1096011 (and tp!489579 tp!489580))))

(assert (=> b!1713023 (= tp!489419 e!1096011)))

(assert (= (and b!1713023 (is-ElementMatch!4634 (reg!4963 (regex!3306 (h!24111 rules!3447))))) b!1713838))

(assert (= (and b!1713023 (is-Concat!8031 (reg!4963 (regex!3306 (h!24111 rules!3447))))) b!1713839))

(assert (= (and b!1713023 (is-Star!4634 (reg!4963 (regex!3306 (h!24111 rules!3447))))) b!1713840))

(assert (= (and b!1713023 (is-Union!4634 (reg!4963 (regex!3306 (h!24111 rules!3447))))) b!1713841))

(declare-fun e!1096012 () Bool)

(declare-fun tp!489586 () Bool)

(declare-fun tp!489584 () Bool)

(declare-fun b!1713842 () Bool)

(assert (=> b!1713842 (= e!1096012 (and (inv!24129 (left!14911 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) tp!489584 (inv!24129 (right!15241 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) tp!489586))))

(declare-fun b!1713844 () Bool)

(declare-fun e!1096013 () Bool)

(declare-fun tp!489585 () Bool)

(assert (=> b!1713844 (= e!1096013 tp!489585)))

(declare-fun b!1713843 () Bool)

(assert (=> b!1713843 (= e!1096012 (and (inv!24139 (xs!9098 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) e!1096013))))

(assert (=> b!1713052 (= tp!489450 (and (inv!24129 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) e!1096012))))

(assert (= (and b!1713052 (is-Node!6222 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) b!1713842))

(assert (= b!1713843 b!1713844))

(assert (= (and b!1713052 (is-Leaf!9096 (left!14911 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) b!1713843))

(declare-fun m!2117745 () Bool)

(assert (=> b!1713842 m!2117745))

(declare-fun m!2117747 () Bool)

(assert (=> b!1713842 m!2117747))

(declare-fun m!2117749 () Bool)

(assert (=> b!1713843 m!2117749))

(assert (=> b!1713052 m!2116639))

(declare-fun tp!489587 () Bool)

(declare-fun b!1713845 () Bool)

(declare-fun e!1096014 () Bool)

(declare-fun tp!489589 () Bool)

(assert (=> b!1713845 (= e!1096014 (and (inv!24129 (left!14911 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) tp!489587 (inv!24129 (right!15241 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) tp!489589))))

(declare-fun b!1713847 () Bool)

(declare-fun e!1096015 () Bool)

(declare-fun tp!489588 () Bool)

(assert (=> b!1713847 (= e!1096015 tp!489588)))

(declare-fun b!1713846 () Bool)

(assert (=> b!1713846 (= e!1096014 (and (inv!24139 (xs!9098 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) e!1096015))))

(assert (=> b!1713052 (= tp!489452 (and (inv!24129 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328)))))) e!1096014))))

(assert (= (and b!1713052 (is-Node!6222 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) b!1713845))

(assert (= b!1713846 b!1713847))

(assert (= (and b!1713052 (is-Leaf!9096 (right!15241 (c!280548 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (value!103895 (_1!10612 lt!654328))))))) b!1713846))

(declare-fun m!2117751 () Bool)

(assert (=> b!1713845 m!2117751))

(declare-fun m!2117753 () Bool)

(assert (=> b!1713845 m!2117753))

(declare-fun m!2117755 () Bool)

(assert (=> b!1713846 m!2117755))

(assert (=> b!1713052 m!2116641))

(declare-fun b!1713850 () Bool)

(declare-fun e!1096016 () Bool)

(declare-fun tp!489592 () Bool)

(assert (=> b!1713850 (= e!1096016 tp!489592)))

(declare-fun b!1713848 () Bool)

(assert (=> b!1713848 (= e!1096016 tp_is_empty!7511)))

(declare-fun b!1713851 () Bool)

(declare-fun tp!489594 () Bool)

(declare-fun tp!489593 () Bool)

(assert (=> b!1713851 (= e!1096016 (and tp!489594 tp!489593))))

(declare-fun b!1713849 () Bool)

(declare-fun tp!489590 () Bool)

(declare-fun tp!489591 () Bool)

(assert (=> b!1713849 (= e!1096016 (and tp!489590 tp!489591))))

(assert (=> b!1713028 (= tp!489426 e!1096016)))

(assert (= (and b!1713028 (is-ElementMatch!4634 (regOne!9781 (regex!3306 rule!422)))) b!1713848))

(assert (= (and b!1713028 (is-Concat!8031 (regOne!9781 (regex!3306 rule!422)))) b!1713849))

(assert (= (and b!1713028 (is-Star!4634 (regOne!9781 (regex!3306 rule!422)))) b!1713850))

(assert (= (and b!1713028 (is-Union!4634 (regOne!9781 (regex!3306 rule!422)))) b!1713851))

(declare-fun b!1713854 () Bool)

(declare-fun e!1096017 () Bool)

(declare-fun tp!489597 () Bool)

(assert (=> b!1713854 (= e!1096017 tp!489597)))

(declare-fun b!1713852 () Bool)

(assert (=> b!1713852 (= e!1096017 tp_is_empty!7511)))

(declare-fun b!1713855 () Bool)

(declare-fun tp!489599 () Bool)

(declare-fun tp!489598 () Bool)

(assert (=> b!1713855 (= e!1096017 (and tp!489599 tp!489598))))

(declare-fun b!1713853 () Bool)

(declare-fun tp!489595 () Bool)

(declare-fun tp!489596 () Bool)

(assert (=> b!1713853 (= e!1096017 (and tp!489595 tp!489596))))

(assert (=> b!1713028 (= tp!489425 e!1096017)))

(assert (= (and b!1713028 (is-ElementMatch!4634 (regTwo!9781 (regex!3306 rule!422)))) b!1713852))

(assert (= (and b!1713028 (is-Concat!8031 (regTwo!9781 (regex!3306 rule!422)))) b!1713853))

(assert (= (and b!1713028 (is-Star!4634 (regTwo!9781 (regex!3306 rule!422)))) b!1713854))

(assert (= (and b!1713028 (is-Union!4634 (regTwo!9781 (regex!3306 rule!422)))) b!1713855))

(declare-fun b!1713858 () Bool)

(declare-fun e!1096018 () Bool)

(declare-fun tp!489602 () Bool)

(assert (=> b!1713858 (= e!1096018 tp!489602)))

(declare-fun b!1713856 () Bool)

(assert (=> b!1713856 (= e!1096018 tp_is_empty!7511)))

(declare-fun b!1713859 () Bool)

(declare-fun tp!489604 () Bool)

(declare-fun tp!489603 () Bool)

(assert (=> b!1713859 (= e!1096018 (and tp!489604 tp!489603))))

(declare-fun b!1713857 () Bool)

(declare-fun tp!489600 () Bool)

(declare-fun tp!489601 () Bool)

(assert (=> b!1713857 (= e!1096018 (and tp!489600 tp!489601))))

(assert (=> b!1713027 (= tp!489424 e!1096018)))

(assert (= (and b!1713027 (is-ElementMatch!4634 (reg!4963 (regex!3306 rule!422)))) b!1713856))

(assert (= (and b!1713027 (is-Concat!8031 (reg!4963 (regex!3306 rule!422)))) b!1713857))

(assert (= (and b!1713027 (is-Star!4634 (reg!4963 (regex!3306 rule!422)))) b!1713858))

(assert (= (and b!1713027 (is-Union!4634 (reg!4963 (regex!3306 rule!422)))) b!1713859))

(declare-fun b!1713862 () Bool)

(declare-fun e!1096019 () Bool)

(declare-fun tp!489607 () Bool)

(assert (=> b!1713862 (= e!1096019 tp!489607)))

(declare-fun b!1713860 () Bool)

(assert (=> b!1713860 (= e!1096019 tp_is_empty!7511)))

(declare-fun b!1713863 () Bool)

(declare-fun tp!489609 () Bool)

(declare-fun tp!489608 () Bool)

(assert (=> b!1713863 (= e!1096019 (and tp!489609 tp!489608))))

(declare-fun b!1713861 () Bool)

(declare-fun tp!489605 () Bool)

(declare-fun tp!489606 () Bool)

(assert (=> b!1713861 (= e!1096019 (and tp!489605 tp!489606))))

(assert (=> b!1713032 (= tp!489431 e!1096019)))

(assert (= (and b!1713032 (is-ElementMatch!4634 (regOne!9781 (regex!3306 (rule!5242 token!523))))) b!1713860))

(assert (= (and b!1713032 (is-Concat!8031 (regOne!9781 (regex!3306 (rule!5242 token!523))))) b!1713861))

(assert (= (and b!1713032 (is-Star!4634 (regOne!9781 (regex!3306 (rule!5242 token!523))))) b!1713862))

(assert (= (and b!1713032 (is-Union!4634 (regOne!9781 (regex!3306 (rule!5242 token!523))))) b!1713863))

(declare-fun b!1713866 () Bool)

(declare-fun e!1096020 () Bool)

(declare-fun tp!489612 () Bool)

(assert (=> b!1713866 (= e!1096020 tp!489612)))

(declare-fun b!1713864 () Bool)

(assert (=> b!1713864 (= e!1096020 tp_is_empty!7511)))

(declare-fun b!1713867 () Bool)

(declare-fun tp!489614 () Bool)

(declare-fun tp!489613 () Bool)

(assert (=> b!1713867 (= e!1096020 (and tp!489614 tp!489613))))

(declare-fun b!1713865 () Bool)

(declare-fun tp!489610 () Bool)

(declare-fun tp!489611 () Bool)

(assert (=> b!1713865 (= e!1096020 (and tp!489610 tp!489611))))

(assert (=> b!1713032 (= tp!489430 e!1096020)))

(assert (= (and b!1713032 (is-ElementMatch!4634 (regTwo!9781 (regex!3306 (rule!5242 token!523))))) b!1713864))

(assert (= (and b!1713032 (is-Concat!8031 (regTwo!9781 (regex!3306 (rule!5242 token!523))))) b!1713865))

(assert (= (and b!1713032 (is-Star!4634 (regTwo!9781 (regex!3306 (rule!5242 token!523))))) b!1713866))

(assert (= (and b!1713032 (is-Union!4634 (regTwo!9781 (regex!3306 (rule!5242 token!523))))) b!1713867))

(declare-fun b_lambda!54091 () Bool)

(assert (= b_lambda!54077 (or d!525396 b_lambda!54091)))

(declare-fun bs!401919 () Bool)

(declare-fun d!525924 () Bool)

(assert (= bs!401919 (and d!525924 d!525396)))

(assert (=> bs!401919 (= (dynLambda!8512 lambda!68870 lt!654332) (= (list!7551 (dynLambda!8505 (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) (dynLambda!8506 (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))) lt!654332))) (list!7551 lt!654332)))))

(declare-fun b_lambda!54101 () Bool)

(assert (=> (not b_lambda!54101) (not bs!401919)))

(assert (=> bs!401919 t!158374))

(declare-fun b_and!124189 () Bool)

(assert (= b_and!124177 (and (=> t!158374 result!121418) b_and!124189)))

(assert (=> bs!401919 t!158376))

(declare-fun b_and!124191 () Bool)

(assert (= b_and!124179 (and (=> t!158376 result!121422) b_and!124191)))

(assert (=> bs!401919 t!158378))

(declare-fun b_and!124193 () Bool)

(assert (= b_and!124181 (and (=> t!158378 result!121424) b_and!124193)))

(assert (=> bs!401919 t!158498))

(declare-fun b_and!124195 () Bool)

(assert (= b_and!124187 (and (=> t!158498 result!121552) b_and!124195)))

(assert (=> bs!401919 t!158430))

(declare-fun b_and!124197 () Bool)

(assert (= b_and!124183 (and (=> t!158430 result!121482) b_and!124197)))

(declare-fun b_lambda!54103 () Bool)

(assert (=> (not b_lambda!54103) (not bs!401919)))

(assert (=> bs!401919 t!158380))

(declare-fun b_and!124199 () Bool)

(assert (= b_and!124169 (and (=> t!158380 result!121426) b_and!124199)))

(assert (=> bs!401919 t!158492))

(declare-fun b_and!124201 () Bool)

(assert (= b_and!124185 (and (=> t!158492 result!121546) b_and!124201)))

(assert (=> bs!401919 t!158382))

(declare-fun b_and!124203 () Bool)

(assert (= b_and!124171 (and (=> t!158382 result!121430) b_and!124203)))

(assert (=> bs!401919 t!158428))

(declare-fun b_and!124205 () Bool)

(assert (= b_and!124175 (and (=> t!158428 result!121480) b_and!124205)))

(assert (=> bs!401919 t!158384))

(declare-fun b_and!124207 () Bool)

(assert (= b_and!124173 (and (=> t!158384 result!121432) b_and!124207)))

(assert (=> bs!401919 m!2115897))

(assert (=> bs!401919 m!2115881))

(assert (=> bs!401919 m!2115883))

(assert (=> bs!401919 m!2115883))

(assert (=> bs!401919 m!2115885))

(assert (=> bs!401919 m!2115881))

(assert (=> d!525586 d!525924))

(declare-fun b_lambda!54093 () Bool)

(assert (= b_lambda!54039 (or (and b!1713804 b_free!46511 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712423 b_free!46487 (= (toValue!4809 (transformation!3306 (h!24111 rules!3447))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712427 b_free!46483 (= (toValue!4809 (transformation!3306 rule!422)) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712431 b_free!46479 (= (toValue!4809 (transformation!3306 (rule!5242 token!523))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1713043 b_free!46503 (= (toValue!4809 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toValue!4809 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) b_lambda!54093)))

(declare-fun b_lambda!54095 () Bool)

(assert (= b_lambda!54037 (or (and b!1713043 b_free!46505 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712423 b_free!46489 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712431 b_free!46481 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712427 b_free!46485 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1713804 b_free!46513 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) b_lambda!54095)))

(declare-fun b_lambda!54097 () Bool)

(assert (= b_lambda!54089 (or d!525386 b_lambda!54097)))

(declare-fun bs!401920 () Bool)

(declare-fun d!525926 () Bool)

(assert (= bs!401920 (and d!525926 d!525386)))

(assert (=> bs!401920 (= (dynLambda!8516 lambda!68867 (h!24111 rules!3447)) (regex!3306 (h!24111 rules!3447)))))

(assert (=> b!1713751 d!525926))

(declare-fun b_lambda!54099 () Bool)

(assert (= b_lambda!54041 (or (and b!1713043 b_free!46505 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 rules!3447)))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712423 b_free!46489 (= (toChars!4668 (transformation!3306 (h!24111 rules!3447))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712431 b_free!46481 (= (toChars!4668 (transformation!3306 (rule!5242 token!523))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1712427 b_free!46485 (= (toChars!4668 (transformation!3306 rule!422)) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) (and b!1713804 b_free!46513 (= (toChars!4668 (transformation!3306 (h!24111 (t!158393 (t!158393 rules!3447))))) (toChars!4668 (transformation!3306 (rule!5242 (_1!10612 lt!654328)))))) b_lambda!54099)))

(push 1)

(assert (not b!1713608))

(assert (not d!525826))

(assert (not b!1713739))

(assert (not b!1713293))

(assert (not b!1713497))

(assert (not b!1713743))

(assert (not b!1713628))

(assert (not d!525710))

(assert (not tb!101123))

(assert (not b!1713392))

(assert (not b!1713783))

(assert (not b!1713430))

(assert (not b!1713415))

(assert (not d!525566))

(assert (not b_lambda!54085))

(assert (not b!1713736))

(assert (not b!1713563))

(assert (not b!1713376))

(assert (not b_next!47217))

(assert (not d!525698))

(assert (not bm!109552))

(assert (not b!1713184))

(assert (not b!1713534))

(assert (not b!1713684))

(assert (not d!525868))

(assert (not b!1713436))

(assert (not b!1713561))

(assert (not b!1713629))

(assert (not d!525904))

(assert (not b!1713552))

(assert (not d!525834))

(assert (not b!1713553))

(assert (not bm!109521))

(assert (not b!1713666))

(assert b_and!124189)

(assert (not b!1713668))

(assert (not b!1713781))

(assert (not d!525910))

(assert (not b!1713461))

(assert (not b!1713235))

(assert (not d!525912))

(assert (not b!1713667))

(assert (not b!1713501))

(assert (not d!525726))

(assert (not bs!401919))

(assert (not b!1713336))

(assert (not b!1713764))

(assert (not b!1713697))

(assert (not bm!109549))

(assert (not d!525592))

(assert (not b!1713551))

(assert (not b!1713388))

(assert (not b!1713292))

(assert (not b!1713426))

(assert (not d!525588))

(assert (not d!525662))

(assert (not d!525768))

(assert (not b!1713652))

(assert (not b!1713686))

(assert (not b!1713830))

(assert (not b!1713785))

(assert (not b!1713799))

(assert (not b!1713851))

(assert b_and!124197)

(assert (not b_lambda!54079))

(assert (not b!1713477))

(assert (not b!1713814))

(assert (not d!525828))

(assert (not b!1713224))

(assert (not b!1713794))

(assert (not b!1713853))

(assert (not d!525836))

(assert (not d!525708))

(assert (not b!1713274))

(assert (not d!525816))

(assert b_and!124199)

(assert (not b!1713840))

(assert (not b!1713788))

(assert (not d!525756))

(assert (not b!1713793))

(assert (not b!1713678))

(assert (not b!1713227))

(assert (not bm!109551))

(assert (not b!1713254))

(assert (not d!525766))

(assert (not d!525822))

(assert (not b!1713536))

(assert (not b!1713218))

(assert (not b!1713514))

(assert (not b!1713517))

(assert (not b!1713226))

(assert (not bm!109556))

(assert (not b!1713395))

(assert (not b!1713344))

(assert (not d!525584))

(assert (not b!1713185))

(assert (not b!1713492))

(assert (not b!1713459))

(assert (not d!525772))

(assert (not b!1713797))

(assert (not b_next!47185))

(assert (not d!525794))

(assert (not b!1713755))

(assert (not b!1713347))

(assert (not d!525600))

(assert (not b!1713424))

(assert (not b!1713375))

(assert (not b_next!47209))

(assert (not b!1713703))

(assert (not b!1713448))

(assert (not d!525632))

(assert (not b!1713585))

(assert (not tb!101131))

(assert (not b_lambda!54091))

(assert (not b!1713818))

(assert b_and!124191)

(assert (not b!1713632))

(assert (not b!1713687))

(assert (not b!1713841))

(assert (not b!1713647))

(assert (not b!1713631))

(assert (not b!1713219))

(assert (not b!1713460))

(assert (not d!525702))

(assert (not b!1713188))

(assert (not b_lambda!54103))

(assert (not b!1713844))

(assert (not b!1713809))

(assert (not d!525706))

(assert (not d!525892))

(assert (not tb!101115))

(assert (not b!1713709))

(assert (not b!1713638))

(assert (not d!525862))

(assert (not b!1713217))

(assert (not b!1713243))

(assert (not b!1713467))

(assert (not bm!109558))

(assert (not d!525770))

(assert (not b!1713693))

(assert (not b!1713715))

(assert (not d!525922))

(assert (not b!1713641))

(assert (not b!1713780))

(assert (not d!525638))

(assert (not b!1713751))

(assert (not b!1713855))

(assert (not bm!109557))

(assert (not b!1713610))

(assert (not b!1713055))

(assert (not b!1713808))

(assert (not b!1713275))

(assert (not b!1713503))

(assert (not b!1713828))

(assert (not b!1713603))

(assert (not bm!109553))

(assert (not b!1713482))

(assert (not d!525776))

(assert (not b!1713232))

(assert (not b!1713343))

(assert (not b!1713701))

(assert (not b!1713613))

(assert (not bm!109535))

(assert (not b!1713411))

(assert (not bm!109542))

(assert (not b!1713223))

(assert (not b!1713867))

(assert (not b!1713283))

(assert (not b!1713705))

(assert (not d!525630))

(assert (not b!1713533))

(assert (not b_lambda!54057))

(assert (not b!1713866))

(assert (not b!1713544))

(assert (not b!1713759))

(assert (not b_next!47189))

(assert (not d!525640))

(assert (not b!1713466))

(assert (not b!1713771))

(assert (not d!525604))

(assert (not b!1713591))

(assert (not d!525704))

(assert (not b!1713685))

(assert (not d!525824))

(assert (not b_next!47215))

(assert (not b!1713692))

(assert (not b!1713863))

(assert (not d!525920))

(assert (not b!1713182))

(assert (not b!1713805))

(assert (not d!525586))

(assert (not b_next!47183))

(assert (not b!1713383))

(assert (not b!1713817))

(assert (not b!1713846))

(assert (not d!525634))

(assert (not b!1713768))

(assert (not b!1713854))

(assert (not b!1713829))

(assert (not b!1713816))

(assert (not b!1713187))

(assert (not b!1713671))

(assert (not b!1713822))

(assert (not b!1713498))

(assert (not b!1713334))

(assert (not d!525790))

(assert (not b!1713233))

(assert (not b!1713429))

(assert (not b!1713865))

(assert (not b!1713648))

(assert (not bm!109562))

(assert (not b!1713803))

(assert (not b!1713683))

(assert (not b!1713849))

(assert (not bm!109545))

(assert (not b!1713792))

(assert (not b!1713438))

(assert (not bm!109559))

(assert (not b!1713789))

(assert (not b!1713528))

(assert (not b!1713627))

(assert (not b!1712984))

(assert (not b!1713577))

(assert (not b!1713241))

(assert (not b!1713807))

(assert (not b!1713400))

(assert (not b!1713566))

(assert (not b!1713538))

(assert (not b!1713431))

(assert (not d!525758))

(assert (not b!1713658))

(assert (not b!1713753))

(assert (not b!1713246))

(assert (not b!1713473))

(assert (not b!1713522))

(assert (not d!525626))

(assert (not b!1713499))

(assert (not b!1713513))

(assert (not b!1713843))

(assert (not b!1713052))

(assert (not d!525778))

(assert (not b!1713520))

(assert (not b!1713835))

(assert b_and!124205)

(assert (not d!525602))

(assert (not d!525722))

(assert (not b!1713707))

(assert (not b!1713741))

(assert (not d!525654))

(assert (not b!1713220))

(assert (not b!1713796))

(assert (not d!525908))

(assert (not b!1713824))

(assert (not b!1713372))

(assert (not d!525716))

(assert (not b!1713656))

(assert (not d!525686))

(assert (not b!1713812))

(assert (not b!1713439))

(assert (not b_lambda!54097))

(assert (not b_next!47193))

(assert (not bm!109560))

(assert (not d!525596))

(assert (not bm!109568))

(assert (not b!1713435))

(assert (not d!525916))

(assert (not d!525676))

(assert (not b!1713328))

(assert (not b!1713655))

(assert (not b!1713737))

(assert (not b!1713802))

(assert (not b!1713262))

(assert (not b!1713593))

(assert (not b!1713559))

(assert (not b!1713825))

(assert (not b!1713858))

(assert (not d!525624))

(assert (not b!1713545))

(assert (not b!1713592))

(assert (not b!1713689))

(assert (not b!1713504))

(assert (not b_lambda!54059))

(assert (not b!1713859))

(assert (not b!1713756))

(assert (not b!1713850))

(assert b_and!124201)

(assert (not d!525700))

(assert (not b!1713333))

(assert (not d!525774))

(assert (not b!1713837))

(assert (not d!525674))

(assert (not b!1713396))

(assert (not tb!101099))

(assert (not b!1713791))

(assert (not d!525850))

(assert (not b!1713323))

(assert (not b!1713772))

(assert (not b!1713416))

(assert (not b!1713342))

(assert (not b!1713763))

(assert (not d!525918))

(assert (not b!1713529))

(assert (not d!525642))

(assert (not b!1713820))

(assert (not b!1713186))

(assert (not d!525788))

(assert (not b!1713574))

(assert (not d!525590))

(assert (not b!1713742))

(assert (not b!1713596))

(assert (not b!1713833))

(assert (not b!1713857))

(assert (not b!1713407))

(assert (not bm!109565))

(assert (not d!525646))

(assert (not b!1713696))

(assert (not d!525762))

(assert (not b!1713194))

(assert (not b!1713512))

(assert (not b!1713519))

(assert (not b!1713518))

(assert (not b!1713845))

(assert (not b!1713630))

(assert (not b!1713774))

(assert (not bm!109564))

(assert (not b!1713784))

(assert (not b!1713862))

(assert (not b_lambda!54083))

(assert tp_is_empty!7511)

(assert (not b!1713582))

(assert (not b!1713442))

(assert (not d!525614))

(assert (not b!1713549))

(assert (not b!1713811))

(assert (not d!525786))

(assert b_and!124203)

(assert (not b!1713573))

(assert (not b!1713526))

(assert (not b!1713434))

(assert (not b!1713575))

(assert (not b!1713180))

(assert (not b!1713614))

(assert (not b!1713832))

(assert (not b!1713446))

(assert (not bm!109522))

(assert (not b_lambda!54101))

(assert (not b!1713578))

(assert (not bm!109531))

(assert (not b!1713546))

(assert (not b!1713567))

(assert (not b!1713581))

(assert (not bm!109544))

(assert (not b!1713527))

(assert (not b!1713695))

(assert (not b!1713524))

(assert (not b!1713583))

(assert (not b!1713285))

(assert (not b_lambda!54055))

(assert (not b_lambda!54099))

(assert (not d!525852))

(assert (not b_lambda!54087))

(assert (not b_lambda!54093))

(assert (not b!1713531))

(assert (not b!1713826))

(assert (not b!1713330))

(assert (not b!1713649))

(assert (not b!1713465))

(assert (not b!1713425))

(assert (not b!1713229))

(assert (not bm!109554))

(assert (not b_lambda!54051))

(assert (not b!1713861))

(assert (not d!525622))

(assert (not b!1713569))

(assert (not b!1713842))

(assert (not d!525652))

(assert (not d!525802))

(assert b_and!124207)

(assert (not bm!109533))

(assert (not b!1713758))

(assert (not b!1713530))

(assert (not b!1713821))

(assert b_and!124195)

(assert (not d!525568))

(assert (not b!1713637))

(assert (not b!1713282))

(assert (not b!1713558))

(assert (not b!1713535))

(assert (not d!525906))

(assert (not d!525696))

(assert (not b!1713475))

(assert (not b_lambda!54081))

(assert (not b!1713181))

(assert (not b!1713443))

(assert (not d!525616))

(assert (not b!1713390))

(assert (not d!525692))

(assert (not b!1713800))

(assert (not b!1713570))

(assert (not b!1713437))

(assert (not d!525914))

(assert (not b!1713571))

(assert (not b!1713699))

(assert (not bm!109520))

(assert (not b!1713432))

(assert (not d!525694))

(assert (not b!1713412))

(assert (not b!1713480))

(assert (not b!1713682))

(assert (not b!1713706))

(assert (not b!1713660))

(assert (not b!1713516))

(assert b_and!124193)

(assert (not d!525856))

(assert (not b!1713565))

(assert (not b!1713836))

(assert (not b!1713813))

(assert (not d!525864))

(assert (not b!1713767))

(assert (not d!525648))

(assert (not b!1713839))

(assert (not b!1713463))

(assert (not b!1713580))

(assert (not b!1713252))

(assert (not b_lambda!54053))

(assert (not b!1713744))

(assert (not d!525672))

(assert (not b!1713787))

(assert (not d!525888))

(assert (not d!525832))

(assert (not b!1713510))

(assert (not b!1713639))

(assert (not b!1713761))

(assert (not b_next!47191))

(assert (not b!1713440))

(assert (not b!1713834))

(assert (not b_lambda!54095))

(assert (not d!525810))

(assert (not d!525894))

(assert (not b!1713242))

(assert (not b!1713418))

(assert (not b!1713847))

(assert (not b!1713657))

(assert (not b!1713801))

(assert (not b!1713327))

(assert (not d!525818))

(assert (not b!1713225))

(assert (not d!525800))

(assert (not b!1713447))

(assert (not d!525890))

(assert (not b!1713221))

(assert (not b_next!47207))

(assert (not b!1713479))

(assert (not b!1713179))

(assert (not bm!109547))

(assert (not b!1713576))

(assert (not d!525830))

(assert (not b!1713296))

(assert (not d!525732))

(assert (not b!1713485))

(assert (not b!1713795))

(assert (not d!525764))

(assert (not b!1713653))

(assert (not d!525854))

(assert (not b_next!47187))

(assert (not d!525594))

(assert (not b!1713790))

(assert (not b!1713398))

(assert (not d!525714))

(assert (not b!1713483))

(assert (not bm!109566))

(assert (not tb!101107))

(assert (not b!1713291))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!47217))

(assert b_and!124189)

(assert b_and!124197)

(assert b_and!124199)

(assert (not b_next!47185))

(assert (not b_next!47209))

(assert b_and!124191)

(assert (not b_next!47189))

(assert b_and!124205)

(assert (not b_next!47193))

(assert b_and!124201)

(assert b_and!124203)

(assert b_and!124193)

(assert (not b_next!47191))

(assert (not b_next!47215))

(assert (not b_next!47183))

(assert b_and!124195)

(assert b_and!124207)

(assert (not b_next!47207))

(assert (not b_next!47187))

(check-sat)

(pop 1)

