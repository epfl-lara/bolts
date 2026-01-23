; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!346024 () Bool)

(assert start!346024)

(declare-fun b!3684272 () Bool)

(declare-fun b_free!97689 () Bool)

(declare-fun b_next!98393 () Bool)

(assert (=> b!3684272 (= b_free!97689 (not b_next!98393))))

(declare-fun tp!1119904 () Bool)

(declare-fun b_and!275363 () Bool)

(assert (=> b!3684272 (= tp!1119904 b_and!275363)))

(declare-fun b_free!97691 () Bool)

(declare-fun b_next!98395 () Bool)

(assert (=> b!3684272 (= b_free!97691 (not b_next!98395))))

(declare-fun tp!1119901 () Bool)

(declare-fun b_and!275365 () Bool)

(assert (=> b!3684272 (= tp!1119901 b_and!275365)))

(declare-fun b!3684263 () Bool)

(declare-fun res!1496872 () Bool)

(declare-fun e!2281398 () Bool)

(assert (=> b!3684263 (=> (not res!1496872) (not e!2281398))))

(declare-datatypes ((List!39034 0))(
  ( (Nil!38910) (Cons!38910 (h!44330 (_ BitVec 16)) (t!300993 List!39034)) )
))
(declare-datatypes ((TokenValue!6097 0))(
  ( (FloatLiteralValue!12194 (text!43124 List!39034)) (TokenValueExt!6096 (__x!24411 Int)) (Broken!30485 (value!187645 List!39034)) (Object!6220) (End!6097) (Def!6097) (Underscore!6097) (Match!6097) (Else!6097) (Error!6097) (Case!6097) (If!6097) (Extends!6097) (Abstract!6097) (Class!6097) (Val!6097) (DelimiterValue!12194 (del!6157 List!39034)) (KeywordValue!6103 (value!187646 List!39034)) (CommentValue!12194 (value!187647 List!39034)) (WhitespaceValue!12194 (value!187648 List!39034)) (IndentationValue!6097 (value!187649 List!39034)) (String!43820) (Int32!6097) (Broken!30486 (value!187650 List!39034)) (Boolean!6098) (Unit!56996) (OperatorValue!6100 (op!6157 List!39034)) (IdentifierValue!12194 (value!187651 List!39034)) (IdentifierValue!12195 (value!187652 List!39034)) (WhitespaceValue!12195 (value!187653 List!39034)) (True!12194) (False!12194) (Broken!30487 (value!187654 List!39034)) (Broken!30488 (value!187655 List!39034)) (True!12195) (RightBrace!6097) (RightBracket!6097) (Colon!6097) (Null!6097) (Comma!6097) (LeftBracket!6097) (False!12195) (LeftBrace!6097) (ImaginaryLiteralValue!6097 (text!43125 List!39034)) (StringLiteralValue!18291 (value!187656 List!39034)) (EOFValue!6097 (value!187657 List!39034)) (IdentValue!6097 (value!187658 List!39034)) (DelimiterValue!12195 (value!187659 List!39034)) (DedentValue!6097 (value!187660 List!39034)) (NewLineValue!6097 (value!187661 List!39034)) (IntegerValue!18291 (value!187662 (_ BitVec 32)) (text!43126 List!39034)) (IntegerValue!18292 (value!187663 Int) (text!43127 List!39034)) (Times!6097) (Or!6097) (Equal!6097) (Minus!6097) (Broken!30489 (value!187664 List!39034)) (And!6097) (Div!6097) (LessEqual!6097) (Mod!6097) (Concat!16723) (Not!6097) (Plus!6097) (SpaceValue!6097 (value!187665 List!39034)) (IntegerValue!18293 (value!187666 Int) (text!43128 List!39034)) (StringLiteralValue!18292 (text!43129 List!39034)) (FloatLiteralValue!12195 (text!43130 List!39034)) (BytesLiteralValue!6097 (value!187667 List!39034)) (CommentValue!12195 (value!187668 List!39034)) (StringLiteralValue!18293 (value!187669 List!39034)) (ErrorTokenValue!6097 (msg!6158 List!39034)) )
))
(declare-datatypes ((String!43821 0))(
  ( (String!43822 (value!187670 String)) )
))
(declare-datatypes ((C!21438 0))(
  ( (C!21439 (val!12767 Int)) )
))
(declare-datatypes ((List!39035 0))(
  ( (Nil!38911) (Cons!38911 (h!44331 C!21438) (t!300994 List!39035)) )
))
(declare-datatypes ((IArray!23853 0))(
  ( (IArray!23854 (innerList!11984 List!39035)) )
))
(declare-datatypes ((Regex!10626 0))(
  ( (ElementMatch!10626 (c!637327 C!21438)) (Concat!16724 (regOne!21764 Regex!10626) (regTwo!21764 Regex!10626)) (EmptyExpr!10626) (Star!10626 (reg!10955 Regex!10626)) (EmptyLang!10626) (Union!10626 (regOne!21765 Regex!10626) (regTwo!21765 Regex!10626)) )
))
(declare-datatypes ((Conc!11924 0))(
  ( (Node!11924 (left!30360 Conc!11924) (right!30690 Conc!11924) (csize!24078 Int) (cheight!12135 Int)) (Leaf!18469 (xs!15126 IArray!23853) (csize!24079 Int)) (Empty!11924) )
))
(declare-datatypes ((BalanceConc!23462 0))(
  ( (BalanceConc!23463 (c!637328 Conc!11924)) )
))
(declare-datatypes ((TokenValueInjection!11622 0))(
  ( (TokenValueInjection!11623 (toValue!8175 Int) (toChars!8034 Int)) )
))
(declare-datatypes ((Rule!11534 0))(
  ( (Rule!11535 (regex!5867 Regex!10626) (tag!6673 String!43821) (isSeparator!5867 Bool) (transformation!5867 TokenValueInjection!11622)) )
))
(declare-datatypes ((List!39036 0))(
  ( (Nil!38912) (Cons!38912 (h!44332 Rule!11534) (t!300995 List!39036)) )
))
(declare-fun rules!3568 () List!39036)

(declare-fun isEmpty!23120 (List!39036) Bool)

(assert (=> b!3684263 (= res!1496872 (not (isEmpty!23120 rules!3568)))))

(declare-fun b!3684264 () Bool)

(declare-fun e!2281404 () Bool)

(assert (=> b!3684264 (= e!2281398 e!2281404)))

(declare-fun res!1496869 () Bool)

(assert (=> b!3684264 (=> (not res!1496869) (not e!2281404))))

(declare-datatypes ((Token!11100 0))(
  ( (Token!11101 (value!187671 TokenValue!6097) (rule!8709 Rule!11534) (size!29752 Int) (originalCharacters!6581 List!39035)) )
))
(declare-datatypes ((List!39037 0))(
  ( (Nil!38913) (Cons!38913 (h!44333 Token!11100) (t!300996 List!39037)) )
))
(declare-datatypes ((IArray!23855 0))(
  ( (IArray!23856 (innerList!11985 List!39037)) )
))
(declare-datatypes ((Conc!11925 0))(
  ( (Node!11925 (left!30361 Conc!11925) (right!30691 Conc!11925) (csize!24080 Int) (cheight!12136 Int)) (Leaf!18470 (xs!15127 IArray!23855) (csize!24081 Int)) (Empty!11925) )
))
(declare-datatypes ((BalanceConc!23464 0))(
  ( (BalanceConc!23465 (c!637329 Conc!11925)) )
))
(declare-datatypes ((tuple2!38788 0))(
  ( (tuple2!38789 (_1!22528 BalanceConc!23464) (_2!22528 BalanceConc!23462)) )
))
(declare-fun lt!1289102 () tuple2!38788)

(declare-fun isEmpty!23121 (BalanceConc!23464) Bool)

(assert (=> b!3684264 (= res!1496869 (not (isEmpty!23121 (_1!22528 lt!1289102))))))

(declare-datatypes ((LexerInterface!5456 0))(
  ( (LexerInterfaceExt!5453 (__x!24412 Int)) (Lexer!5454) )
))
(declare-fun thiss!25197 () LexerInterface!5456)

(declare-fun input!3129 () List!39035)

(declare-fun lex!2597 (LexerInterface!5456 List!39036 BalanceConc!23462) tuple2!38788)

(declare-fun seqFromList!4416 (List!39035) BalanceConc!23462)

(assert (=> b!3684264 (= lt!1289102 (lex!2597 thiss!25197 rules!3568 (seqFromList!4416 input!3129)))))

(declare-fun b!3684265 () Bool)

(declare-fun e!2281401 () Bool)

(declare-fun e!2281403 () Bool)

(assert (=> b!3684265 (= e!2281401 e!2281403)))

(declare-fun res!1496874 () Bool)

(assert (=> b!3684265 (=> (not res!1496874) (not e!2281403))))

(declare-fun lt!1289098 () Rule!11534)

(declare-fun lt!1289100 () List!39035)

(declare-fun matchR!5181 (Regex!10626 List!39035) Bool)

(assert (=> b!3684265 (= res!1496874 (matchR!5181 (regex!5867 lt!1289098) lt!1289100))))

(declare-datatypes ((Option!8345 0))(
  ( (None!8344) (Some!8344 (v!38290 Rule!11534)) )
))
(declare-fun lt!1289095 () Option!8345)

(declare-fun get!12880 (Option!8345) Rule!11534)

(assert (=> b!3684265 (= lt!1289098 (get!12880 lt!1289095))))

(declare-fun b!3684266 () Bool)

(declare-fun e!2281396 () Bool)

(declare-fun e!2281397 () Bool)

(declare-fun tp!1119906 () Bool)

(assert (=> b!3684266 (= e!2281396 (and e!2281397 tp!1119906))))

(declare-fun b!3684267 () Bool)

(declare-fun lt!1289097 () Token!11100)

(declare-fun validRegex!4864 (Regex!10626) Bool)

(assert (=> b!3684267 (= e!2281404 (not (validRegex!4864 (regex!5867 (rule!8709 lt!1289097)))))))

(assert (=> b!3684267 e!2281401))

(declare-fun res!1496871 () Bool)

(assert (=> b!3684267 (=> (not res!1496871) (not e!2281401))))

(declare-fun isDefined!6564 (Option!8345) Bool)

(assert (=> b!3684267 (= res!1496871 (isDefined!6564 lt!1289095))))

(declare-fun getRuleFromTag!1455 (LexerInterface!5456 List!39036 String!43821) Option!8345)

(assert (=> b!3684267 (= lt!1289095 (getRuleFromTag!1455 thiss!25197 rules!3568 (tag!6673 (rule!8709 lt!1289097))))))

(declare-datatypes ((Unit!56997 0))(
  ( (Unit!56998) )
))
(declare-fun lt!1289096 () Unit!56997)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1455 (LexerInterface!5456 List!39036 List!39035 Token!11100) Unit!56997)

(assert (=> b!3684267 (= lt!1289096 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1455 thiss!25197 rules!3568 input!3129 lt!1289097))))

(declare-fun suffix!1448 () List!39035)

(declare-fun isPrefix!3220 (List!39035 List!39035) Bool)

(declare-fun ++!9686 (List!39035 List!39035) List!39035)

(assert (=> b!3684267 (isPrefix!3220 lt!1289100 (++!9686 input!3129 suffix!1448))))

(declare-fun lt!1289103 () Unit!56997)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!551 (List!39035 List!39035 List!39035) Unit!56997)

(assert (=> b!3684267 (= lt!1289103 (lemmaPrefixStaysPrefixWhenAddingToSuffix!551 lt!1289100 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!38790 0))(
  ( (tuple2!38791 (_1!22529 Token!11100) (_2!22529 List!39035)) )
))
(declare-fun lt!1289099 () tuple2!38790)

(assert (=> b!3684267 (isPrefix!3220 lt!1289100 (++!9686 lt!1289100 (_2!22529 lt!1289099)))))

(declare-fun lt!1289101 () Unit!56997)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2137 (List!39035 List!39035) Unit!56997)

(assert (=> b!3684267 (= lt!1289101 (lemmaConcatTwoListThenFirstIsPrefix!2137 lt!1289100 (_2!22529 lt!1289099)))))

(declare-datatypes ((Option!8346 0))(
  ( (None!8345) (Some!8345 (v!38291 tuple2!38790)) )
))
(declare-fun get!12881 (Option!8346) tuple2!38790)

(declare-fun maxPrefix!2984 (LexerInterface!5456 List!39036 List!39035) Option!8346)

(assert (=> b!3684267 (= lt!1289099 (get!12881 (maxPrefix!2984 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14490 (BalanceConc!23462) List!39035)

(declare-fun charsOf!3878 (Token!11100) BalanceConc!23462)

(assert (=> b!3684267 (= lt!1289100 (list!14490 (charsOf!3878 lt!1289097)))))

(declare-fun head!7921 (List!39037) Token!11100)

(declare-fun list!14491 (BalanceConc!23464) List!39037)

(assert (=> b!3684267 (= lt!1289097 (head!7921 (list!14491 (_1!22528 lt!1289102))))))

(declare-fun b!3684268 () Bool)

(assert (=> b!3684268 (= e!2281403 (= (rule!8709 lt!1289097) lt!1289098))))

(declare-fun e!2281399 () Bool)

(declare-fun tp!1119903 () Bool)

(declare-fun b!3684269 () Bool)

(declare-fun inv!52398 (String!43821) Bool)

(declare-fun inv!52401 (TokenValueInjection!11622) Bool)

(assert (=> b!3684269 (= e!2281397 (and tp!1119903 (inv!52398 (tag!6673 (h!44332 rules!3568))) (inv!52401 (transformation!5867 (h!44332 rules!3568))) e!2281399))))

(declare-fun b!3684270 () Bool)

(declare-fun e!2281402 () Bool)

(declare-fun tp_is_empty!18335 () Bool)

(declare-fun tp!1119905 () Bool)

(assert (=> b!3684270 (= e!2281402 (and tp_is_empty!18335 tp!1119905))))

(declare-fun b!3684271 () Bool)

(declare-fun e!2281395 () Bool)

(declare-fun tp!1119902 () Bool)

(assert (=> b!3684271 (= e!2281395 (and tp_is_empty!18335 tp!1119902))))

(declare-fun res!1496870 () Bool)

(assert (=> start!346024 (=> (not res!1496870) (not e!2281398))))

(assert (=> start!346024 (= res!1496870 (is-Lexer!5454 thiss!25197))))

(assert (=> start!346024 e!2281398))

(assert (=> start!346024 true))

(assert (=> start!346024 e!2281396))

(assert (=> start!346024 e!2281402))

(assert (=> start!346024 e!2281395))

(assert (=> b!3684272 (= e!2281399 (and tp!1119904 tp!1119901))))

(declare-fun b!3684273 () Bool)

(declare-fun res!1496873 () Bool)

(assert (=> b!3684273 (=> (not res!1496873) (not e!2281398))))

(declare-fun rulesInvariant!4853 (LexerInterface!5456 List!39036) Bool)

(assert (=> b!3684273 (= res!1496873 (rulesInvariant!4853 thiss!25197 rules!3568))))

(assert (= (and start!346024 res!1496870) b!3684263))

(assert (= (and b!3684263 res!1496872) b!3684273))

(assert (= (and b!3684273 res!1496873) b!3684264))

(assert (= (and b!3684264 res!1496869) b!3684267))

(assert (= (and b!3684267 res!1496871) b!3684265))

(assert (= (and b!3684265 res!1496874) b!3684268))

(assert (= b!3684269 b!3684272))

(assert (= b!3684266 b!3684269))

(assert (= (and start!346024 (is-Cons!38912 rules!3568)) b!3684266))

(assert (= (and start!346024 (is-Cons!38911 suffix!1448)) b!3684270))

(assert (= (and start!346024 (is-Cons!38911 input!3129)) b!3684271))

(declare-fun m!4195621 () Bool)

(assert (=> b!3684265 m!4195621))

(declare-fun m!4195623 () Bool)

(assert (=> b!3684265 m!4195623))

(declare-fun m!4195625 () Bool)

(assert (=> b!3684273 m!4195625))

(declare-fun m!4195627 () Bool)

(assert (=> b!3684264 m!4195627))

(declare-fun m!4195629 () Bool)

(assert (=> b!3684264 m!4195629))

(assert (=> b!3684264 m!4195629))

(declare-fun m!4195631 () Bool)

(assert (=> b!3684264 m!4195631))

(declare-fun m!4195633 () Bool)

(assert (=> b!3684267 m!4195633))

(declare-fun m!4195635 () Bool)

(assert (=> b!3684267 m!4195635))

(declare-fun m!4195637 () Bool)

(assert (=> b!3684267 m!4195637))

(declare-fun m!4195639 () Bool)

(assert (=> b!3684267 m!4195639))

(assert (=> b!3684267 m!4195637))

(declare-fun m!4195641 () Bool)

(assert (=> b!3684267 m!4195641))

(declare-fun m!4195643 () Bool)

(assert (=> b!3684267 m!4195643))

(declare-fun m!4195645 () Bool)

(assert (=> b!3684267 m!4195645))

(declare-fun m!4195647 () Bool)

(assert (=> b!3684267 m!4195647))

(declare-fun m!4195649 () Bool)

(assert (=> b!3684267 m!4195649))

(declare-fun m!4195651 () Bool)

(assert (=> b!3684267 m!4195651))

(assert (=> b!3684267 m!4195649))

(declare-fun m!4195653 () Bool)

(assert (=> b!3684267 m!4195653))

(assert (=> b!3684267 m!4195643))

(declare-fun m!4195655 () Bool)

(assert (=> b!3684267 m!4195655))

(assert (=> b!3684267 m!4195645))

(declare-fun m!4195657 () Bool)

(assert (=> b!3684267 m!4195657))

(assert (=> b!3684267 m!4195633))

(declare-fun m!4195659 () Bool)

(assert (=> b!3684267 m!4195659))

(declare-fun m!4195661 () Bool)

(assert (=> b!3684267 m!4195661))

(declare-fun m!4195663 () Bool)

(assert (=> b!3684267 m!4195663))

(declare-fun m!4195665 () Bool)

(assert (=> b!3684263 m!4195665))

(declare-fun m!4195667 () Bool)

(assert (=> b!3684269 m!4195667))

(declare-fun m!4195669 () Bool)

(assert (=> b!3684269 m!4195669))

(push 1)

(assert (not b!3684264))

(assert b_and!275363)

(assert b_and!275365)

(assert (not b!3684271))

(assert (not b!3684273))

(assert (not b!3684267))

(assert (not b!3684269))

(assert (not b!3684266))

(assert (not b_next!98393))

(assert (not b!3684263))

(assert (not b_next!98395))

(assert (not b!3684265))

(assert (not b!3684270))

(assert tp_is_empty!18335)

(check-sat)

(pop 1)

(push 1)

(assert b_and!275363)

(assert b_and!275365)

(assert (not b_next!98395))

(assert (not b_next!98393))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3684335 () Bool)

(declare-fun e!2281453 () Bool)

(declare-fun e!2281452 () Bool)

(assert (=> b!3684335 (= e!2281453 e!2281452)))

(declare-fun res!1496919 () Bool)

(assert (=> b!3684335 (=> (not res!1496919) (not e!2281452))))

(declare-fun lt!1289133 () Bool)

(assert (=> b!3684335 (= res!1496919 (not lt!1289133))))

(declare-fun b!3684336 () Bool)

(declare-fun e!2281455 () Bool)

(declare-fun head!7923 (List!39035) C!21438)

(assert (=> b!3684336 (= e!2281455 (not (= (head!7923 lt!1289100) (c!637327 (regex!5867 lt!1289098)))))))

(declare-fun bm!266780 () Bool)

(declare-fun call!266785 () Bool)

(declare-fun isEmpty!23124 (List!39035) Bool)

(assert (=> bm!266780 (= call!266785 (isEmpty!23124 lt!1289100))))

(declare-fun b!3684337 () Bool)

(declare-fun e!2281451 () Bool)

(declare-fun derivativeStep!3249 (Regex!10626 C!21438) Regex!10626)

(declare-fun tail!5698 (List!39035) List!39035)

(assert (=> b!3684337 (= e!2281451 (matchR!5181 (derivativeStep!3249 (regex!5867 lt!1289098) (head!7923 lt!1289100)) (tail!5698 lt!1289100)))))

(declare-fun b!3684338 () Bool)

(declare-fun res!1496923 () Bool)

(declare-fun e!2281454 () Bool)

(assert (=> b!3684338 (=> (not res!1496923) (not e!2281454))))

(assert (=> b!3684338 (= res!1496923 (isEmpty!23124 (tail!5698 lt!1289100)))))

(declare-fun b!3684339 () Bool)

(declare-fun nullable!3702 (Regex!10626) Bool)

(assert (=> b!3684339 (= e!2281451 (nullable!3702 (regex!5867 lt!1289098)))))

(declare-fun b!3684340 () Bool)

(declare-fun e!2281449 () Bool)

(assert (=> b!3684340 (= e!2281449 (not lt!1289133))))

(declare-fun b!3684341 () Bool)

(declare-fun e!2281450 () Bool)

(assert (=> b!3684341 (= e!2281450 e!2281449)))

(declare-fun c!637342 () Bool)

(assert (=> b!3684341 (= c!637342 (is-EmptyLang!10626 (regex!5867 lt!1289098)))))

(declare-fun b!3684342 () Bool)

(assert (=> b!3684342 (= e!2281454 (= (head!7923 lt!1289100) (c!637327 (regex!5867 lt!1289098))))))

(declare-fun b!3684343 () Bool)

(declare-fun res!1496921 () Bool)

(assert (=> b!3684343 (=> (not res!1496921) (not e!2281454))))

(assert (=> b!3684343 (= res!1496921 (not call!266785))))

(declare-fun b!3684344 () Bool)

(declare-fun res!1496917 () Bool)

(assert (=> b!3684344 (=> res!1496917 e!2281455)))

(assert (=> b!3684344 (= res!1496917 (not (isEmpty!23124 (tail!5698 lt!1289100))))))

(declare-fun d!1081451 () Bool)

(assert (=> d!1081451 e!2281450))

(declare-fun c!637340 () Bool)

(assert (=> d!1081451 (= c!637340 (is-EmptyExpr!10626 (regex!5867 lt!1289098)))))

(assert (=> d!1081451 (= lt!1289133 e!2281451)))

(declare-fun c!637341 () Bool)

(assert (=> d!1081451 (= c!637341 (isEmpty!23124 lt!1289100))))

(assert (=> d!1081451 (validRegex!4864 (regex!5867 lt!1289098))))

(assert (=> d!1081451 (= (matchR!5181 (regex!5867 lt!1289098) lt!1289100) lt!1289133)))

(declare-fun b!3684345 () Bool)

(assert (=> b!3684345 (= e!2281450 (= lt!1289133 call!266785))))

(declare-fun b!3684346 () Bool)

(declare-fun res!1496918 () Bool)

(assert (=> b!3684346 (=> res!1496918 e!2281453)))

(assert (=> b!3684346 (= res!1496918 (not (is-ElementMatch!10626 (regex!5867 lt!1289098))))))

(assert (=> b!3684346 (= e!2281449 e!2281453)))

(declare-fun b!3684347 () Bool)

(declare-fun res!1496920 () Bool)

(assert (=> b!3684347 (=> res!1496920 e!2281453)))

(assert (=> b!3684347 (= res!1496920 e!2281454)))

(declare-fun res!1496916 () Bool)

(assert (=> b!3684347 (=> (not res!1496916) (not e!2281454))))

(assert (=> b!3684347 (= res!1496916 lt!1289133)))

(declare-fun b!3684348 () Bool)

(assert (=> b!3684348 (= e!2281452 e!2281455)))

(declare-fun res!1496922 () Bool)

(assert (=> b!3684348 (=> res!1496922 e!2281455)))

(assert (=> b!3684348 (= res!1496922 call!266785)))

(assert (= (and d!1081451 c!637341) b!3684339))

(assert (= (and d!1081451 (not c!637341)) b!3684337))

(assert (= (and d!1081451 c!637340) b!3684345))

(assert (= (and d!1081451 (not c!637340)) b!3684341))

(assert (= (and b!3684341 c!637342) b!3684340))

(assert (= (and b!3684341 (not c!637342)) b!3684346))

(assert (= (and b!3684346 (not res!1496918)) b!3684347))

(assert (= (and b!3684347 res!1496916) b!3684343))

(assert (= (and b!3684343 res!1496921) b!3684338))

(assert (= (and b!3684338 res!1496923) b!3684342))

(assert (= (and b!3684347 (not res!1496920)) b!3684335))

(assert (= (and b!3684335 res!1496919) b!3684348))

(assert (= (and b!3684348 (not res!1496922)) b!3684344))

(assert (= (and b!3684344 (not res!1496917)) b!3684336))

(assert (= (or b!3684345 b!3684343 b!3684348) bm!266780))

(declare-fun m!4195721 () Bool)

(assert (=> b!3684339 m!4195721))

(declare-fun m!4195723 () Bool)

(assert (=> b!3684344 m!4195723))

(assert (=> b!3684344 m!4195723))

(declare-fun m!4195725 () Bool)

(assert (=> b!3684344 m!4195725))

(assert (=> b!3684338 m!4195723))

(assert (=> b!3684338 m!4195723))

(assert (=> b!3684338 m!4195725))

(declare-fun m!4195727 () Bool)

(assert (=> d!1081451 m!4195727))

(declare-fun m!4195729 () Bool)

(assert (=> d!1081451 m!4195729))

(declare-fun m!4195731 () Bool)

(assert (=> b!3684337 m!4195731))

(assert (=> b!3684337 m!4195731))

(declare-fun m!4195733 () Bool)

(assert (=> b!3684337 m!4195733))

(assert (=> b!3684337 m!4195723))

(assert (=> b!3684337 m!4195733))

(assert (=> b!3684337 m!4195723))

(declare-fun m!4195735 () Bool)

(assert (=> b!3684337 m!4195735))

(assert (=> b!3684336 m!4195731))

(assert (=> bm!266780 m!4195727))

(assert (=> b!3684342 m!4195731))

(assert (=> b!3684265 d!1081451))

(declare-fun d!1081453 () Bool)

(assert (=> d!1081453 (= (get!12880 lt!1289095) (v!38290 lt!1289095))))

(assert (=> b!3684265 d!1081453))

(declare-fun d!1081455 () Bool)

(declare-fun res!1496926 () Bool)

(declare-fun e!2281458 () Bool)

(assert (=> d!1081455 (=> (not res!1496926) (not e!2281458))))

(declare-fun rulesValid!2261 (LexerInterface!5456 List!39036) Bool)

(assert (=> d!1081455 (= res!1496926 (rulesValid!2261 thiss!25197 rules!3568))))

(assert (=> d!1081455 (= (rulesInvariant!4853 thiss!25197 rules!3568) e!2281458)))

(declare-fun b!3684351 () Bool)

(declare-datatypes ((List!39042 0))(
  ( (Nil!38918) (Cons!38918 (h!44338 String!43821) (t!301007 List!39042)) )
))
(declare-fun noDuplicateTag!2257 (LexerInterface!5456 List!39036 List!39042) Bool)

(assert (=> b!3684351 (= e!2281458 (noDuplicateTag!2257 thiss!25197 rules!3568 Nil!38918))))

(assert (= (and d!1081455 res!1496926) b!3684351))

(declare-fun m!4195737 () Bool)

(assert (=> d!1081455 m!4195737))

(declare-fun m!4195739 () Bool)

(assert (=> b!3684351 m!4195739))

(assert (=> b!3684273 d!1081455))

(declare-fun b!3684370 () Bool)

(declare-fun e!2281475 () Bool)

(declare-fun call!266792 () Bool)

(assert (=> b!3684370 (= e!2281475 call!266792)))

(declare-fun b!3684371 () Bool)

(declare-fun e!2281477 () Bool)

(declare-fun e!2281478 () Bool)

(assert (=> b!3684371 (= e!2281477 e!2281478)))

(declare-fun res!1496937 () Bool)

(assert (=> b!3684371 (=> (not res!1496937) (not e!2281478))))

(assert (=> b!3684371 (= res!1496937 call!266792)))

(declare-fun call!266794 () Bool)

(declare-fun bm!266787 () Bool)

(declare-fun c!637347 () Bool)

(declare-fun c!637348 () Bool)

(assert (=> bm!266787 (= call!266794 (validRegex!4864 (ite c!637348 (reg!10955 (regex!5867 (rule!8709 lt!1289097))) (ite c!637347 (regTwo!21765 (regex!5867 (rule!8709 lt!1289097))) (regOne!21764 (regex!5867 (rule!8709 lt!1289097)))))))))

(declare-fun b!3684372 () Bool)

(declare-fun res!1496938 () Bool)

(assert (=> b!3684372 (=> res!1496938 e!2281477)))

(assert (=> b!3684372 (= res!1496938 (not (is-Concat!16724 (regex!5867 (rule!8709 lt!1289097)))))))

(declare-fun e!2281474 () Bool)

(assert (=> b!3684372 (= e!2281474 e!2281477)))

(declare-fun b!3684373 () Bool)

(declare-fun e!2281473 () Bool)

(assert (=> b!3684373 (= e!2281473 call!266794)))

(declare-fun b!3684374 () Bool)

(declare-fun e!2281479 () Bool)

(assert (=> b!3684374 (= e!2281479 e!2281474)))

(assert (=> b!3684374 (= c!637347 (is-Union!10626 (regex!5867 (rule!8709 lt!1289097))))))

(declare-fun b!3684375 () Bool)

(assert (=> b!3684375 (= e!2281479 e!2281473)))

(declare-fun res!1496939 () Bool)

(assert (=> b!3684375 (= res!1496939 (not (nullable!3702 (reg!10955 (regex!5867 (rule!8709 lt!1289097))))))))

(assert (=> b!3684375 (=> (not res!1496939) (not e!2281473))))

(declare-fun b!3684376 () Bool)

(declare-fun e!2281476 () Bool)

(assert (=> b!3684376 (= e!2281476 e!2281479)))

(assert (=> b!3684376 (= c!637348 (is-Star!10626 (regex!5867 (rule!8709 lt!1289097))))))

(declare-fun bm!266788 () Bool)

(assert (=> bm!266788 (= call!266792 call!266794)))

(declare-fun b!3684377 () Bool)

(declare-fun call!266793 () Bool)

(assert (=> b!3684377 (= e!2281478 call!266793)))

(declare-fun b!3684378 () Bool)

(declare-fun res!1496941 () Bool)

(assert (=> b!3684378 (=> (not res!1496941) (not e!2281475))))

(assert (=> b!3684378 (= res!1496941 call!266793)))

(assert (=> b!3684378 (= e!2281474 e!2281475)))

(declare-fun d!1081457 () Bool)

(declare-fun res!1496940 () Bool)

(assert (=> d!1081457 (=> res!1496940 e!2281476)))

(assert (=> d!1081457 (= res!1496940 (is-ElementMatch!10626 (regex!5867 (rule!8709 lt!1289097))))))

(assert (=> d!1081457 (= (validRegex!4864 (regex!5867 (rule!8709 lt!1289097))) e!2281476)))

(declare-fun bm!266789 () Bool)

(assert (=> bm!266789 (= call!266793 (validRegex!4864 (ite c!637347 (regOne!21765 (regex!5867 (rule!8709 lt!1289097))) (regTwo!21764 (regex!5867 (rule!8709 lt!1289097))))))))

(assert (= (and d!1081457 (not res!1496940)) b!3684376))

(assert (= (and b!3684376 c!637348) b!3684375))

(assert (= (and b!3684376 (not c!637348)) b!3684374))

(assert (= (and b!3684375 res!1496939) b!3684373))

(assert (= (and b!3684374 c!637347) b!3684378))

(assert (= (and b!3684374 (not c!637347)) b!3684372))

(assert (= (and b!3684378 res!1496941) b!3684370))

(assert (= (and b!3684372 (not res!1496938)) b!3684371))

(assert (= (and b!3684371 res!1496937) b!3684377))

(assert (= (or b!3684370 b!3684371) bm!266788))

(assert (= (or b!3684378 b!3684377) bm!266789))

(assert (= (or b!3684373 bm!266788) bm!266787))

(declare-fun m!4195741 () Bool)

(assert (=> bm!266787 m!4195741))

(declare-fun m!4195743 () Bool)

(assert (=> b!3684375 m!4195743))

(declare-fun m!4195745 () Bool)

(assert (=> bm!266789 m!4195745))

(assert (=> b!3684267 d!1081457))

(declare-fun d!1081459 () Bool)

(assert (=> d!1081459 (= (get!12881 (maxPrefix!2984 thiss!25197 rules!3568 input!3129)) (v!38291 (maxPrefix!2984 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3684267 d!1081459))

(declare-fun d!1081461 () Bool)

(declare-fun list!14494 (Conc!11924) List!39035)

(assert (=> d!1081461 (= (list!14490 (charsOf!3878 lt!1289097)) (list!14494 (c!637328 (charsOf!3878 lt!1289097))))))

(declare-fun bs!573800 () Bool)

(assert (= bs!573800 d!1081461))

(declare-fun m!4195747 () Bool)

(assert (=> bs!573800 m!4195747))

(assert (=> b!3684267 d!1081461))

(declare-fun b!3684388 () Bool)

(declare-fun res!1496950 () Bool)

(declare-fun e!2281486 () Bool)

(assert (=> b!3684388 (=> (not res!1496950) (not e!2281486))))

(assert (=> b!3684388 (= res!1496950 (= (head!7923 lt!1289100) (head!7923 (++!9686 lt!1289100 (_2!22529 lt!1289099)))))))

(declare-fun b!3684389 () Bool)

(assert (=> b!3684389 (= e!2281486 (isPrefix!3220 (tail!5698 lt!1289100) (tail!5698 (++!9686 lt!1289100 (_2!22529 lt!1289099)))))))

(declare-fun b!3684387 () Bool)

(declare-fun e!2281488 () Bool)

(assert (=> b!3684387 (= e!2281488 e!2281486)))

(declare-fun res!1496952 () Bool)

(assert (=> b!3684387 (=> (not res!1496952) (not e!2281486))))

(assert (=> b!3684387 (= res!1496952 (not (is-Nil!38911 (++!9686 lt!1289100 (_2!22529 lt!1289099)))))))

(declare-fun b!3684390 () Bool)

(declare-fun e!2281487 () Bool)

(declare-fun size!29754 (List!39035) Int)

(assert (=> b!3684390 (= e!2281487 (>= (size!29754 (++!9686 lt!1289100 (_2!22529 lt!1289099))) (size!29754 lt!1289100)))))

(declare-fun d!1081463 () Bool)

(assert (=> d!1081463 e!2281487))

(declare-fun res!1496951 () Bool)

(assert (=> d!1081463 (=> res!1496951 e!2281487)))

(declare-fun lt!1289136 () Bool)

(assert (=> d!1081463 (= res!1496951 (not lt!1289136))))

(assert (=> d!1081463 (= lt!1289136 e!2281488)))

(declare-fun res!1496953 () Bool)

(assert (=> d!1081463 (=> res!1496953 e!2281488)))

(assert (=> d!1081463 (= res!1496953 (is-Nil!38911 lt!1289100))))

(assert (=> d!1081463 (= (isPrefix!3220 lt!1289100 (++!9686 lt!1289100 (_2!22529 lt!1289099))) lt!1289136)))

(assert (= (and d!1081463 (not res!1496953)) b!3684387))

(assert (= (and b!3684387 res!1496952) b!3684388))

(assert (= (and b!3684388 res!1496950) b!3684389))

(assert (= (and d!1081463 (not res!1496951)) b!3684390))

(assert (=> b!3684388 m!4195731))

(assert (=> b!3684388 m!4195649))

(declare-fun m!4195749 () Bool)

(assert (=> b!3684388 m!4195749))

(assert (=> b!3684389 m!4195723))

(assert (=> b!3684389 m!4195649))

(declare-fun m!4195751 () Bool)

(assert (=> b!3684389 m!4195751))

(assert (=> b!3684389 m!4195723))

(assert (=> b!3684389 m!4195751))

(declare-fun m!4195753 () Bool)

(assert (=> b!3684389 m!4195753))

(assert (=> b!3684390 m!4195649))

(declare-fun m!4195755 () Bool)

(assert (=> b!3684390 m!4195755))

(declare-fun m!4195757 () Bool)

(assert (=> b!3684390 m!4195757))

(assert (=> b!3684267 d!1081463))

(declare-fun d!1081465 () Bool)

(declare-fun lt!1289139 () BalanceConc!23462)

(assert (=> d!1081465 (= (list!14490 lt!1289139) (originalCharacters!6581 lt!1289097))))

(declare-fun dynLambda!17070 (Int TokenValue!6097) BalanceConc!23462)

(assert (=> d!1081465 (= lt!1289139 (dynLambda!17070 (toChars!8034 (transformation!5867 (rule!8709 lt!1289097))) (value!187671 lt!1289097)))))

(assert (=> d!1081465 (= (charsOf!3878 lt!1289097) lt!1289139)))

(declare-fun b_lambda!109435 () Bool)

(assert (=> (not b_lambda!109435) (not d!1081465)))

(declare-fun t!301002 () Bool)

(declare-fun tb!213697 () Bool)

(assert (=> (and b!3684272 (= (toChars!8034 (transformation!5867 (h!44332 rules!3568))) (toChars!8034 (transformation!5867 (rule!8709 lt!1289097)))) t!301002) tb!213697))

(declare-fun b!3684395 () Bool)

(declare-fun e!2281491 () Bool)

(declare-fun tp!1119927 () Bool)

(declare-fun inv!52403 (Conc!11924) Bool)

(assert (=> b!3684395 (= e!2281491 (and (inv!52403 (c!637328 (dynLambda!17070 (toChars!8034 (transformation!5867 (rule!8709 lt!1289097))) (value!187671 lt!1289097)))) tp!1119927))))

(declare-fun result!260038 () Bool)

(declare-fun inv!52404 (BalanceConc!23462) Bool)

(assert (=> tb!213697 (= result!260038 (and (inv!52404 (dynLambda!17070 (toChars!8034 (transformation!5867 (rule!8709 lt!1289097))) (value!187671 lt!1289097))) e!2281491))))

(assert (= tb!213697 b!3684395))

(declare-fun m!4195759 () Bool)

(assert (=> b!3684395 m!4195759))

(declare-fun m!4195761 () Bool)

(assert (=> tb!213697 m!4195761))

(assert (=> d!1081465 t!301002))

(declare-fun b_and!275371 () Bool)

(assert (= b_and!275365 (and (=> t!301002 result!260038) b_and!275371)))

(declare-fun m!4195763 () Bool)

(assert (=> d!1081465 m!4195763))

(declare-fun m!4195765 () Bool)

(assert (=> d!1081465 m!4195765))

(assert (=> b!3684267 d!1081465))

(declare-fun b!3684397 () Bool)

(declare-fun res!1496954 () Bool)

(declare-fun e!2281492 () Bool)

(assert (=> b!3684397 (=> (not res!1496954) (not e!2281492))))

(assert (=> b!3684397 (= res!1496954 (= (head!7923 lt!1289100) (head!7923 (++!9686 input!3129 suffix!1448))))))

(declare-fun b!3684398 () Bool)

(assert (=> b!3684398 (= e!2281492 (isPrefix!3220 (tail!5698 lt!1289100) (tail!5698 (++!9686 input!3129 suffix!1448))))))

(declare-fun b!3684396 () Bool)

(declare-fun e!2281494 () Bool)

(assert (=> b!3684396 (= e!2281494 e!2281492)))

(declare-fun res!1496956 () Bool)

(assert (=> b!3684396 (=> (not res!1496956) (not e!2281492))))

(assert (=> b!3684396 (= res!1496956 (not (is-Nil!38911 (++!9686 input!3129 suffix!1448))))))

(declare-fun b!3684399 () Bool)

(declare-fun e!2281493 () Bool)

(assert (=> b!3684399 (= e!2281493 (>= (size!29754 (++!9686 input!3129 suffix!1448)) (size!29754 lt!1289100)))))

(declare-fun d!1081467 () Bool)

(assert (=> d!1081467 e!2281493))

(declare-fun res!1496955 () Bool)

(assert (=> d!1081467 (=> res!1496955 e!2281493)))

(declare-fun lt!1289140 () Bool)

(assert (=> d!1081467 (= res!1496955 (not lt!1289140))))

(assert (=> d!1081467 (= lt!1289140 e!2281494)))

(declare-fun res!1496957 () Bool)

(assert (=> d!1081467 (=> res!1496957 e!2281494)))

(assert (=> d!1081467 (= res!1496957 (is-Nil!38911 lt!1289100))))

(assert (=> d!1081467 (= (isPrefix!3220 lt!1289100 (++!9686 input!3129 suffix!1448)) lt!1289140)))

(assert (= (and d!1081467 (not res!1496957)) b!3684396))

(assert (= (and b!3684396 res!1496956) b!3684397))

(assert (= (and b!3684397 res!1496954) b!3684398))

(assert (= (and d!1081467 (not res!1496955)) b!3684399))

(assert (=> b!3684397 m!4195731))

(assert (=> b!3684397 m!4195637))

(declare-fun m!4195767 () Bool)

(assert (=> b!3684397 m!4195767))

(assert (=> b!3684398 m!4195723))

(assert (=> b!3684398 m!4195637))

(declare-fun m!4195769 () Bool)

(assert (=> b!3684398 m!4195769))

(assert (=> b!3684398 m!4195723))

(assert (=> b!3684398 m!4195769))

(declare-fun m!4195771 () Bool)

(assert (=> b!3684398 m!4195771))

(assert (=> b!3684399 m!4195637))

(declare-fun m!4195773 () Bool)

(assert (=> b!3684399 m!4195773))

(assert (=> b!3684399 m!4195757))

(assert (=> b!3684267 d!1081467))

(declare-fun b!3684409 () Bool)

(declare-fun e!2281500 () List!39035)

(assert (=> b!3684409 (= e!2281500 (Cons!38911 (h!44331 input!3129) (++!9686 (t!300994 input!3129) suffix!1448)))))

(declare-fun b!3684408 () Bool)

(assert (=> b!3684408 (= e!2281500 suffix!1448)))

(declare-fun d!1081469 () Bool)

(declare-fun e!2281499 () Bool)

(assert (=> d!1081469 e!2281499))

(declare-fun res!1496962 () Bool)

(assert (=> d!1081469 (=> (not res!1496962) (not e!2281499))))

(declare-fun lt!1289143 () List!39035)

(declare-fun content!5640 (List!39035) (Set C!21438))

(assert (=> d!1081469 (= res!1496962 (= (content!5640 lt!1289143) (set.union (content!5640 input!3129) (content!5640 suffix!1448))))))

(assert (=> d!1081469 (= lt!1289143 e!2281500)))

(declare-fun c!637351 () Bool)

(assert (=> d!1081469 (= c!637351 (is-Nil!38911 input!3129))))

(assert (=> d!1081469 (= (++!9686 input!3129 suffix!1448) lt!1289143)))

(declare-fun b!3684411 () Bool)

(assert (=> b!3684411 (= e!2281499 (or (not (= suffix!1448 Nil!38911)) (= lt!1289143 input!3129)))))

(declare-fun b!3684410 () Bool)

(declare-fun res!1496963 () Bool)

(assert (=> b!3684410 (=> (not res!1496963) (not e!2281499))))

(assert (=> b!3684410 (= res!1496963 (= (size!29754 lt!1289143) (+ (size!29754 input!3129) (size!29754 suffix!1448))))))

(assert (= (and d!1081469 c!637351) b!3684408))

(assert (= (and d!1081469 (not c!637351)) b!3684409))

(assert (= (and d!1081469 res!1496962) b!3684410))

(assert (= (and b!3684410 res!1496963) b!3684411))

(declare-fun m!4195775 () Bool)

(assert (=> b!3684409 m!4195775))

(declare-fun m!4195777 () Bool)

(assert (=> d!1081469 m!4195777))

(declare-fun m!4195779 () Bool)

(assert (=> d!1081469 m!4195779))

(declare-fun m!4195781 () Bool)

(assert (=> d!1081469 m!4195781))

(declare-fun m!4195783 () Bool)

(assert (=> b!3684410 m!4195783))

(declare-fun m!4195785 () Bool)

(assert (=> b!3684410 m!4195785))

(declare-fun m!4195787 () Bool)

(assert (=> b!3684410 m!4195787))

(assert (=> b!3684267 d!1081469))

(declare-fun d!1081471 () Bool)

(declare-fun list!14495 (Conc!11925) List!39037)

(assert (=> d!1081471 (= (list!14491 (_1!22528 lt!1289102)) (list!14495 (c!637329 (_1!22528 lt!1289102))))))

(declare-fun bs!573801 () Bool)

(assert (= bs!573801 d!1081471))

(declare-fun m!4195789 () Bool)

(assert (=> bs!573801 m!4195789))

(assert (=> b!3684267 d!1081471))

(declare-fun d!1081473 () Bool)

(assert (=> d!1081473 (isPrefix!3220 lt!1289100 (++!9686 lt!1289100 (_2!22529 lt!1289099)))))

(declare-fun lt!1289146 () Unit!56997)

(declare-fun choose!22044 (List!39035 List!39035) Unit!56997)

(assert (=> d!1081473 (= lt!1289146 (choose!22044 lt!1289100 (_2!22529 lt!1289099)))))

(assert (=> d!1081473 (= (lemmaConcatTwoListThenFirstIsPrefix!2137 lt!1289100 (_2!22529 lt!1289099)) lt!1289146)))

(declare-fun bs!573802 () Bool)

(assert (= bs!573802 d!1081473))

(assert (=> bs!573802 m!4195649))

(assert (=> bs!573802 m!4195649))

(assert (=> bs!573802 m!4195651))

(declare-fun m!4195791 () Bool)

(assert (=> bs!573802 m!4195791))

(assert (=> b!3684267 d!1081473))

(declare-fun d!1081475 () Bool)

(declare-fun isEmpty!23125 (Option!8345) Bool)

(assert (=> d!1081475 (= (isDefined!6564 lt!1289095) (not (isEmpty!23125 lt!1289095)))))

(declare-fun bs!573803 () Bool)

(assert (= bs!573803 d!1081475))

(declare-fun m!4195793 () Bool)

(assert (=> bs!573803 m!4195793))

(assert (=> b!3684267 d!1081475))

(declare-fun b!3684453 () Bool)

(declare-fun res!1496991 () Bool)

(declare-fun e!2281525 () Bool)

(assert (=> b!3684453 (=> (not res!1496991) (not e!2281525))))

(declare-fun lt!1289163 () Option!8346)

(assert (=> b!3684453 (= res!1496991 (matchR!5181 (regex!5867 (rule!8709 (_1!22529 (get!12881 lt!1289163)))) (list!14490 (charsOf!3878 (_1!22529 (get!12881 lt!1289163))))))))

(declare-fun b!3684454 () Bool)

(declare-fun e!2281526 () Option!8346)

(declare-fun lt!1289160 () Option!8346)

(declare-fun lt!1289162 () Option!8346)

(assert (=> b!3684454 (= e!2281526 (ite (and (is-None!8345 lt!1289160) (is-None!8345 lt!1289162)) None!8345 (ite (is-None!8345 lt!1289162) lt!1289160 (ite (is-None!8345 lt!1289160) lt!1289162 (ite (>= (size!29752 (_1!22529 (v!38291 lt!1289160))) (size!29752 (_1!22529 (v!38291 lt!1289162)))) lt!1289160 lt!1289162)))))))

(declare-fun call!266803 () Option!8346)

(assert (=> b!3684454 (= lt!1289160 call!266803)))

(assert (=> b!3684454 (= lt!1289162 (maxPrefix!2984 thiss!25197 (t!300995 rules!3568) input!3129))))

(declare-fun b!3684455 () Bool)

(declare-fun res!1496994 () Bool)

(assert (=> b!3684455 (=> (not res!1496994) (not e!2281525))))

(assert (=> b!3684455 (= res!1496994 (= (++!9686 (list!14490 (charsOf!3878 (_1!22529 (get!12881 lt!1289163)))) (_2!22529 (get!12881 lt!1289163))) input!3129))))

(declare-fun d!1081477 () Bool)

(declare-fun e!2281524 () Bool)

(assert (=> d!1081477 e!2281524))

(declare-fun res!1496990 () Bool)

(assert (=> d!1081477 (=> res!1496990 e!2281524)))

(declare-fun isEmpty!23126 (Option!8346) Bool)

(assert (=> d!1081477 (= res!1496990 (isEmpty!23126 lt!1289163))))

(assert (=> d!1081477 (= lt!1289163 e!2281526)))

(declare-fun c!637358 () Bool)

(assert (=> d!1081477 (= c!637358 (and (is-Cons!38912 rules!3568) (is-Nil!38912 (t!300995 rules!3568))))))

(declare-fun lt!1289161 () Unit!56997)

(declare-fun lt!1289164 () Unit!56997)

(assert (=> d!1081477 (= lt!1289161 lt!1289164)))

(assert (=> d!1081477 (isPrefix!3220 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2023 (List!39035 List!39035) Unit!56997)

(assert (=> d!1081477 (= lt!1289164 (lemmaIsPrefixRefl!2023 input!3129 input!3129))))

(declare-fun rulesValidInductive!2091 (LexerInterface!5456 List!39036) Bool)

(assert (=> d!1081477 (rulesValidInductive!2091 thiss!25197 rules!3568)))

(assert (=> d!1081477 (= (maxPrefix!2984 thiss!25197 rules!3568 input!3129) lt!1289163)))

(declare-fun bm!266798 () Bool)

(declare-fun maxPrefixOneRule!2114 (LexerInterface!5456 Rule!11534 List!39035) Option!8346)

(assert (=> bm!266798 (= call!266803 (maxPrefixOneRule!2114 thiss!25197 (h!44332 rules!3568) input!3129))))

(declare-fun b!3684456 () Bool)

(assert (=> b!3684456 (= e!2281524 e!2281525)))

(declare-fun res!1496993 () Bool)

(assert (=> b!3684456 (=> (not res!1496993) (not e!2281525))))

(declare-fun isDefined!6566 (Option!8346) Bool)

(assert (=> b!3684456 (= res!1496993 (isDefined!6566 lt!1289163))))

(declare-fun b!3684457 () Bool)

(declare-fun res!1496992 () Bool)

(assert (=> b!3684457 (=> (not res!1496992) (not e!2281525))))

(declare-fun apply!9355 (TokenValueInjection!11622 BalanceConc!23462) TokenValue!6097)

(assert (=> b!3684457 (= res!1496992 (= (value!187671 (_1!22529 (get!12881 lt!1289163))) (apply!9355 (transformation!5867 (rule!8709 (_1!22529 (get!12881 lt!1289163)))) (seqFromList!4416 (originalCharacters!6581 (_1!22529 (get!12881 lt!1289163)))))))))

(declare-fun b!3684458 () Bool)

(declare-fun contains!7776 (List!39036 Rule!11534) Bool)

(assert (=> b!3684458 (= e!2281525 (contains!7776 rules!3568 (rule!8709 (_1!22529 (get!12881 lt!1289163)))))))

(declare-fun b!3684459 () Bool)

(declare-fun res!1496988 () Bool)

(assert (=> b!3684459 (=> (not res!1496988) (not e!2281525))))

(assert (=> b!3684459 (= res!1496988 (< (size!29754 (_2!22529 (get!12881 lt!1289163))) (size!29754 input!3129)))))

(declare-fun b!3684460 () Bool)

(assert (=> b!3684460 (= e!2281526 call!266803)))

(declare-fun b!3684461 () Bool)

(declare-fun res!1496989 () Bool)

(assert (=> b!3684461 (=> (not res!1496989) (not e!2281525))))

(assert (=> b!3684461 (= res!1496989 (= (list!14490 (charsOf!3878 (_1!22529 (get!12881 lt!1289163)))) (originalCharacters!6581 (_1!22529 (get!12881 lt!1289163)))))))

(assert (= (and d!1081477 c!637358) b!3684460))

(assert (= (and d!1081477 (not c!637358)) b!3684454))

(assert (= (or b!3684460 b!3684454) bm!266798))

(assert (= (and d!1081477 (not res!1496990)) b!3684456))

(assert (= (and b!3684456 res!1496993) b!3684461))

(assert (= (and b!3684461 res!1496989) b!3684459))

(assert (= (and b!3684459 res!1496988) b!3684455))

(assert (= (and b!3684455 res!1496994) b!3684457))

(assert (= (and b!3684457 res!1496992) b!3684453))

(assert (= (and b!3684453 res!1496991) b!3684458))

(declare-fun m!4195803 () Bool)

(assert (=> bm!266798 m!4195803))

(declare-fun m!4195805 () Bool)

(assert (=> b!3684453 m!4195805))

(declare-fun m!4195807 () Bool)

(assert (=> b!3684453 m!4195807))

(assert (=> b!3684453 m!4195807))

(declare-fun m!4195809 () Bool)

(assert (=> b!3684453 m!4195809))

(assert (=> b!3684453 m!4195809))

(declare-fun m!4195811 () Bool)

(assert (=> b!3684453 m!4195811))

(assert (=> b!3684457 m!4195805))

(declare-fun m!4195813 () Bool)

(assert (=> b!3684457 m!4195813))

(assert (=> b!3684457 m!4195813))

(declare-fun m!4195815 () Bool)

(assert (=> b!3684457 m!4195815))

(declare-fun m!4195817 () Bool)

(assert (=> b!3684454 m!4195817))

(declare-fun m!4195819 () Bool)

(assert (=> b!3684456 m!4195819))

(assert (=> b!3684455 m!4195805))

(assert (=> b!3684455 m!4195807))

(assert (=> b!3684455 m!4195807))

(assert (=> b!3684455 m!4195809))

(assert (=> b!3684455 m!4195809))

(declare-fun m!4195821 () Bool)

(assert (=> b!3684455 m!4195821))

(assert (=> b!3684458 m!4195805))

(declare-fun m!4195823 () Bool)

(assert (=> b!3684458 m!4195823))

(assert (=> b!3684459 m!4195805))

(declare-fun m!4195825 () Bool)

(assert (=> b!3684459 m!4195825))

(assert (=> b!3684459 m!4195785))

(assert (=> b!3684461 m!4195805))

(assert (=> b!3684461 m!4195807))

(assert (=> b!3684461 m!4195807))

(assert (=> b!3684461 m!4195809))

(declare-fun m!4195827 () Bool)

(assert (=> d!1081477 m!4195827))

(declare-fun m!4195829 () Bool)

(assert (=> d!1081477 m!4195829))

(declare-fun m!4195831 () Bool)

(assert (=> d!1081477 m!4195831))

(declare-fun m!4195833 () Bool)

(assert (=> d!1081477 m!4195833))

(assert (=> b!3684267 d!1081477))

(declare-fun d!1081485 () Bool)

(declare-fun e!2281536 () Bool)

(assert (=> d!1081485 e!2281536))

(declare-fun res!1497004 () Bool)

(assert (=> d!1081485 (=> (not res!1497004) (not e!2281536))))

(assert (=> d!1081485 (= res!1497004 (isDefined!6564 (getRuleFromTag!1455 thiss!25197 rules!3568 (tag!6673 (rule!8709 lt!1289097)))))))

(declare-fun lt!1289167 () Unit!56997)

(declare-fun choose!22045 (LexerInterface!5456 List!39036 List!39035 Token!11100) Unit!56997)

(assert (=> d!1081485 (= lt!1289167 (choose!22045 thiss!25197 rules!3568 input!3129 lt!1289097))))

(assert (=> d!1081485 (rulesInvariant!4853 thiss!25197 rules!3568)))

(assert (=> d!1081485 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1455 thiss!25197 rules!3568 input!3129 lt!1289097) lt!1289167)))

(declare-fun b!3684475 () Bool)

(declare-fun res!1497005 () Bool)

(assert (=> b!3684475 (=> (not res!1497005) (not e!2281536))))

(assert (=> b!3684475 (= res!1497005 (matchR!5181 (regex!5867 (get!12880 (getRuleFromTag!1455 thiss!25197 rules!3568 (tag!6673 (rule!8709 lt!1289097))))) (list!14490 (charsOf!3878 lt!1289097))))))

(declare-fun b!3684476 () Bool)

(assert (=> b!3684476 (= e!2281536 (= (rule!8709 lt!1289097) (get!12880 (getRuleFromTag!1455 thiss!25197 rules!3568 (tag!6673 (rule!8709 lt!1289097))))))))

(assert (= (and d!1081485 res!1497004) b!3684475))

(assert (= (and b!3684475 res!1497005) b!3684476))

(assert (=> d!1081485 m!4195663))

(assert (=> d!1081485 m!4195663))

(declare-fun m!4195841 () Bool)

(assert (=> d!1081485 m!4195841))

(declare-fun m!4195843 () Bool)

(assert (=> d!1081485 m!4195843))

(assert (=> d!1081485 m!4195625))

(assert (=> b!3684475 m!4195635))

(declare-fun m!4195845 () Bool)

(assert (=> b!3684475 m!4195845))

(assert (=> b!3684475 m!4195663))

(declare-fun m!4195847 () Bool)

(assert (=> b!3684475 m!4195847))

(assert (=> b!3684475 m!4195633))

(assert (=> b!3684475 m!4195635))

(assert (=> b!3684475 m!4195633))

(assert (=> b!3684475 m!4195663))

(assert (=> b!3684476 m!4195663))

(assert (=> b!3684476 m!4195663))

(assert (=> b!3684476 m!4195847))

(assert (=> b!3684267 d!1081485))

(declare-fun d!1081491 () Bool)

(assert (=> d!1081491 (= (head!7921 (list!14491 (_1!22528 lt!1289102))) (h!44333 (list!14491 (_1!22528 lt!1289102))))))

(assert (=> b!3684267 d!1081491))

(declare-fun b!3684478 () Bool)

(declare-fun e!2281538 () List!39035)

(assert (=> b!3684478 (= e!2281538 (Cons!38911 (h!44331 lt!1289100) (++!9686 (t!300994 lt!1289100) (_2!22529 lt!1289099))))))

(declare-fun b!3684477 () Bool)

(assert (=> b!3684477 (= e!2281538 (_2!22529 lt!1289099))))

(declare-fun d!1081493 () Bool)

(declare-fun e!2281537 () Bool)

(assert (=> d!1081493 e!2281537))

(declare-fun res!1497006 () Bool)

(assert (=> d!1081493 (=> (not res!1497006) (not e!2281537))))

(declare-fun lt!1289168 () List!39035)

(assert (=> d!1081493 (= res!1497006 (= (content!5640 lt!1289168) (set.union (content!5640 lt!1289100) (content!5640 (_2!22529 lt!1289099)))))))

(assert (=> d!1081493 (= lt!1289168 e!2281538)))

(declare-fun c!637361 () Bool)

(assert (=> d!1081493 (= c!637361 (is-Nil!38911 lt!1289100))))

(assert (=> d!1081493 (= (++!9686 lt!1289100 (_2!22529 lt!1289099)) lt!1289168)))

(declare-fun b!3684480 () Bool)

(assert (=> b!3684480 (= e!2281537 (or (not (= (_2!22529 lt!1289099) Nil!38911)) (= lt!1289168 lt!1289100)))))

(declare-fun b!3684479 () Bool)

(declare-fun res!1497007 () Bool)

(assert (=> b!3684479 (=> (not res!1497007) (not e!2281537))))

(assert (=> b!3684479 (= res!1497007 (= (size!29754 lt!1289168) (+ (size!29754 lt!1289100) (size!29754 (_2!22529 lt!1289099)))))))

(assert (= (and d!1081493 c!637361) b!3684477))

(assert (= (and d!1081493 (not c!637361)) b!3684478))

(assert (= (and d!1081493 res!1497006) b!3684479))

(assert (= (and b!3684479 res!1497007) b!3684480))

(declare-fun m!4195849 () Bool)

(assert (=> b!3684478 m!4195849))

(declare-fun m!4195851 () Bool)

(assert (=> d!1081493 m!4195851))

(declare-fun m!4195853 () Bool)

(assert (=> d!1081493 m!4195853))

(declare-fun m!4195855 () Bool)

(assert (=> d!1081493 m!4195855))

(declare-fun m!4195857 () Bool)

(assert (=> b!3684479 m!4195857))

(assert (=> b!3684479 m!4195757))

(declare-fun m!4195859 () Bool)

(assert (=> b!3684479 m!4195859))

(assert (=> b!3684267 d!1081493))

(declare-fun d!1081495 () Bool)

(assert (=> d!1081495 (isPrefix!3220 lt!1289100 (++!9686 input!3129 suffix!1448))))

(declare-fun lt!1289171 () Unit!56997)

(declare-fun choose!22046 (List!39035 List!39035 List!39035) Unit!56997)

(assert (=> d!1081495 (= lt!1289171 (choose!22046 lt!1289100 input!3129 suffix!1448))))

(assert (=> d!1081495 (isPrefix!3220 lt!1289100 input!3129)))

(assert (=> d!1081495 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!551 lt!1289100 input!3129 suffix!1448) lt!1289171)))

(declare-fun bs!573804 () Bool)

(assert (= bs!573804 d!1081495))

(assert (=> bs!573804 m!4195637))

(assert (=> bs!573804 m!4195637))

(assert (=> bs!573804 m!4195639))

(declare-fun m!4195861 () Bool)

(assert (=> bs!573804 m!4195861))

(declare-fun m!4195863 () Bool)

(assert (=> bs!573804 m!4195863))

(assert (=> b!3684267 d!1081495))

(declare-fun b!3684499 () Bool)

(declare-fun lt!1289182 () Unit!56997)

(declare-fun lt!1289183 () Unit!56997)

(assert (=> b!3684499 (= lt!1289182 lt!1289183)))

(assert (=> b!3684499 (rulesInvariant!4853 thiss!25197 (t!300995 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!628 (LexerInterface!5456 Rule!11534 List!39036) Unit!56997)

(assert (=> b!3684499 (= lt!1289183 (lemmaInvariantOnRulesThenOnTail!628 thiss!25197 (h!44332 rules!3568) (t!300995 rules!3568)))))

(declare-fun e!2281550 () Option!8345)

(assert (=> b!3684499 (= e!2281550 (getRuleFromTag!1455 thiss!25197 (t!300995 rules!3568) (tag!6673 (rule!8709 lt!1289097))))))

(declare-fun b!3684500 () Bool)

(declare-fun e!2281552 () Bool)

(declare-fun lt!1289181 () Option!8345)

(assert (=> b!3684500 (= e!2281552 (= (tag!6673 (get!12880 lt!1289181)) (tag!6673 (rule!8709 lt!1289097))))))

(declare-fun b!3684501 () Bool)

(assert (=> b!3684501 (= e!2281550 None!8344)))

(declare-fun b!3684502 () Bool)

(declare-fun e!2281551 () Option!8345)

(assert (=> b!3684502 (= e!2281551 e!2281550)))

(declare-fun c!637367 () Bool)

(assert (=> b!3684502 (= c!637367 (and (is-Cons!38912 rules!3568) (not (= (tag!6673 (h!44332 rules!3568)) (tag!6673 (rule!8709 lt!1289097))))))))

(declare-fun d!1081497 () Bool)

(declare-fun e!2281553 () Bool)

(assert (=> d!1081497 e!2281553))

(declare-fun res!1497019 () Bool)

(assert (=> d!1081497 (=> res!1497019 e!2281553)))

(assert (=> d!1081497 (= res!1497019 (isEmpty!23125 lt!1289181))))

(assert (=> d!1081497 (= lt!1289181 e!2281551)))

(declare-fun c!637366 () Bool)

(assert (=> d!1081497 (= c!637366 (and (is-Cons!38912 rules!3568) (= (tag!6673 (h!44332 rules!3568)) (tag!6673 (rule!8709 lt!1289097)))))))

(assert (=> d!1081497 (rulesInvariant!4853 thiss!25197 rules!3568)))

(assert (=> d!1081497 (= (getRuleFromTag!1455 thiss!25197 rules!3568 (tag!6673 (rule!8709 lt!1289097))) lt!1289181)))

(declare-fun b!3684503 () Bool)

(assert (=> b!3684503 (= e!2281553 e!2281552)))

(declare-fun res!1497018 () Bool)

(assert (=> b!3684503 (=> (not res!1497018) (not e!2281552))))

(assert (=> b!3684503 (= res!1497018 (contains!7776 rules!3568 (get!12880 lt!1289181)))))

(declare-fun b!3684504 () Bool)

(assert (=> b!3684504 (= e!2281551 (Some!8344 (h!44332 rules!3568)))))

(assert (= (and d!1081497 c!637366) b!3684504))

(assert (= (and d!1081497 (not c!637366)) b!3684502))

(assert (= (and b!3684502 c!637367) b!3684499))

(assert (= (and b!3684502 (not c!637367)) b!3684501))

(assert (= (and d!1081497 (not res!1497019)) b!3684503))

(assert (= (and b!3684503 res!1497018) b!3684500))

(declare-fun m!4195873 () Bool)

(assert (=> b!3684499 m!4195873))

(declare-fun m!4195875 () Bool)

(assert (=> b!3684499 m!4195875))

(declare-fun m!4195877 () Bool)

(assert (=> b!3684499 m!4195877))

(declare-fun m!4195879 () Bool)

(assert (=> b!3684500 m!4195879))

(declare-fun m!4195881 () Bool)

(assert (=> d!1081497 m!4195881))

(assert (=> d!1081497 m!4195625))

(assert (=> b!3684503 m!4195879))

(assert (=> b!3684503 m!4195879))

(declare-fun m!4195883 () Bool)

(assert (=> b!3684503 m!4195883))

(assert (=> b!3684267 d!1081497))

(declare-fun d!1081501 () Bool)

(declare-fun lt!1289186 () Bool)

(declare-fun isEmpty!23127 (List!39037) Bool)

(assert (=> d!1081501 (= lt!1289186 (isEmpty!23127 (list!14491 (_1!22528 lt!1289102))))))

(declare-fun isEmpty!23128 (Conc!11925) Bool)

(assert (=> d!1081501 (= lt!1289186 (isEmpty!23128 (c!637329 (_1!22528 lt!1289102))))))

(assert (=> d!1081501 (= (isEmpty!23121 (_1!22528 lt!1289102)) lt!1289186)))

(declare-fun bs!573805 () Bool)

(assert (= bs!573805 d!1081501))

(assert (=> bs!573805 m!4195643))

(assert (=> bs!573805 m!4195643))

(declare-fun m!4195885 () Bool)

(assert (=> bs!573805 m!4195885))

(declare-fun m!4195887 () Bool)

(assert (=> bs!573805 m!4195887))

(assert (=> b!3684264 d!1081501))

(declare-fun b!3684542 () Bool)

(declare-fun e!2281571 () Bool)

(declare-fun lt!1289204 () tuple2!38788)

(assert (=> b!3684542 (= e!2281571 (not (isEmpty!23121 (_1!22528 lt!1289204))))))

(declare-fun b!3684543 () Bool)

(declare-fun e!2281569 () Bool)

(assert (=> b!3684543 (= e!2281569 e!2281571)))

(declare-fun res!1497049 () Bool)

(declare-fun size!29755 (BalanceConc!23462) Int)

(assert (=> b!3684543 (= res!1497049 (< (size!29755 (_2!22528 lt!1289204)) (size!29755 (seqFromList!4416 input!3129))))))

(assert (=> b!3684543 (=> (not res!1497049) (not e!2281571))))

(declare-fun e!2281570 () Bool)

(declare-fun b!3684544 () Bool)

(declare-datatypes ((tuple2!38796 0))(
  ( (tuple2!38797 (_1!22532 List!39037) (_2!22532 List!39035)) )
))
(declare-fun lexList!1523 (LexerInterface!5456 List!39036 List!39035) tuple2!38796)

(assert (=> b!3684544 (= e!2281570 (= (list!14490 (_2!22528 lt!1289204)) (_2!22532 (lexList!1523 thiss!25197 rules!3568 (list!14490 (seqFromList!4416 input!3129))))))))

(declare-fun b!3684545 () Bool)

(declare-fun res!1497047 () Bool)

(assert (=> b!3684545 (=> (not res!1497047) (not e!2281570))))

(assert (=> b!3684545 (= res!1497047 (= (list!14491 (_1!22528 lt!1289204)) (_1!22532 (lexList!1523 thiss!25197 rules!3568 (list!14490 (seqFromList!4416 input!3129))))))))

(declare-fun b!3684546 () Bool)

(assert (=> b!3684546 (= e!2281569 (= (_2!22528 lt!1289204) (seqFromList!4416 input!3129)))))

(declare-fun d!1081503 () Bool)

(assert (=> d!1081503 e!2281570))

(declare-fun res!1497048 () Bool)

(assert (=> d!1081503 (=> (not res!1497048) (not e!2281570))))

(assert (=> d!1081503 (= res!1497048 e!2281569)))

(declare-fun c!637373 () Bool)

(declare-fun size!29756 (BalanceConc!23464) Int)

(assert (=> d!1081503 (= c!637373 (> (size!29756 (_1!22528 lt!1289204)) 0))))

(declare-fun lexTailRecV2!1129 (LexerInterface!5456 List!39036 BalanceConc!23462 BalanceConc!23462 BalanceConc!23462 BalanceConc!23464) tuple2!38788)

(assert (=> d!1081503 (= lt!1289204 (lexTailRecV2!1129 thiss!25197 rules!3568 (seqFromList!4416 input!3129) (BalanceConc!23463 Empty!11924) (seqFromList!4416 input!3129) (BalanceConc!23465 Empty!11925)))))

(assert (=> d!1081503 (= (lex!2597 thiss!25197 rules!3568 (seqFromList!4416 input!3129)) lt!1289204)))

(assert (= (and d!1081503 c!637373) b!3684543))

(assert (= (and d!1081503 (not c!637373)) b!3684546))

(assert (= (and b!3684543 res!1497049) b!3684542))

(assert (= (and d!1081503 res!1497048) b!3684545))

(assert (= (and b!3684545 res!1497047) b!3684544))

(declare-fun m!4195923 () Bool)

(assert (=> d!1081503 m!4195923))

(assert (=> d!1081503 m!4195629))

(assert (=> d!1081503 m!4195629))

(declare-fun m!4195925 () Bool)

(assert (=> d!1081503 m!4195925))

(declare-fun m!4195927 () Bool)

(assert (=> b!3684542 m!4195927))

(declare-fun m!4195929 () Bool)

(assert (=> b!3684545 m!4195929))

(assert (=> b!3684545 m!4195629))

(declare-fun m!4195931 () Bool)

(assert (=> b!3684545 m!4195931))

(assert (=> b!3684545 m!4195931))

(declare-fun m!4195933 () Bool)

(assert (=> b!3684545 m!4195933))

(declare-fun m!4195935 () Bool)

(assert (=> b!3684544 m!4195935))

(assert (=> b!3684544 m!4195629))

(assert (=> b!3684544 m!4195931))

(assert (=> b!3684544 m!4195931))

(assert (=> b!3684544 m!4195933))

(declare-fun m!4195937 () Bool)

(assert (=> b!3684543 m!4195937))

(assert (=> b!3684543 m!4195629))

(declare-fun m!4195939 () Bool)

(assert (=> b!3684543 m!4195939))

(assert (=> b!3684264 d!1081503))

(declare-fun d!1081507 () Bool)

(declare-fun fromListB!2040 (List!39035) BalanceConc!23462)

(assert (=> d!1081507 (= (seqFromList!4416 input!3129) (fromListB!2040 input!3129))))

(declare-fun bs!573806 () Bool)

(assert (= bs!573806 d!1081507))

(declare-fun m!4195941 () Bool)

(assert (=> bs!573806 m!4195941))

(assert (=> b!3684264 d!1081507))

(declare-fun d!1081509 () Bool)

(assert (=> d!1081509 (= (inv!52398 (tag!6673 (h!44332 rules!3568))) (= (mod (str.len (value!187670 (tag!6673 (h!44332 rules!3568)))) 2) 0))))

(assert (=> b!3684269 d!1081509))

(declare-fun d!1081511 () Bool)

(declare-fun res!1497052 () Bool)

(declare-fun e!2281574 () Bool)

(assert (=> d!1081511 (=> (not res!1497052) (not e!2281574))))

(declare-fun semiInverseModEq!2504 (Int Int) Bool)

(assert (=> d!1081511 (= res!1497052 (semiInverseModEq!2504 (toChars!8034 (transformation!5867 (h!44332 rules!3568))) (toValue!8175 (transformation!5867 (h!44332 rules!3568)))))))

(assert (=> d!1081511 (= (inv!52401 (transformation!5867 (h!44332 rules!3568))) e!2281574)))

(declare-fun b!3684549 () Bool)

(declare-fun equivClasses!2403 (Int Int) Bool)

(assert (=> b!3684549 (= e!2281574 (equivClasses!2403 (toChars!8034 (transformation!5867 (h!44332 rules!3568))) (toValue!8175 (transformation!5867 (h!44332 rules!3568)))))))

(assert (= (and d!1081511 res!1497052) b!3684549))

(declare-fun m!4195943 () Bool)

(assert (=> d!1081511 m!4195943))

(declare-fun m!4195945 () Bool)

(assert (=> b!3684549 m!4195945))

(assert (=> b!3684269 d!1081511))

(declare-fun d!1081513 () Bool)

(assert (=> d!1081513 (= (isEmpty!23120 rules!3568) (is-Nil!38912 rules!3568))))

(assert (=> b!3684263 d!1081513))

(declare-fun b!3684554 () Bool)

(declare-fun e!2281577 () Bool)

(declare-fun tp!1119933 () Bool)

(assert (=> b!3684554 (= e!2281577 (and tp_is_empty!18335 tp!1119933))))

(assert (=> b!3684270 (= tp!1119905 e!2281577)))

(assert (= (and b!3684270 (is-Cons!38911 (t!300994 suffix!1448))) b!3684554))

(declare-fun b!3684565 () Bool)

(declare-fun b_free!97697 () Bool)

(declare-fun b_next!98401 () Bool)

(assert (=> b!3684565 (= b_free!97697 (not b_next!98401))))

(declare-fun tp!1119942 () Bool)

(declare-fun b_and!275375 () Bool)

(assert (=> b!3684565 (= tp!1119942 b_and!275375)))

(declare-fun b_free!97699 () Bool)

(declare-fun b_next!98403 () Bool)

(assert (=> b!3684565 (= b_free!97699 (not b_next!98403))))

(declare-fun tb!213701 () Bool)

(declare-fun t!301006 () Bool)

(assert (=> (and b!3684565 (= (toChars!8034 (transformation!5867 (h!44332 (t!300995 rules!3568)))) (toChars!8034 (transformation!5867 (rule!8709 lt!1289097)))) t!301006) tb!213701))

(declare-fun result!260050 () Bool)

(assert (= result!260050 result!260038))

(assert (=> d!1081465 t!301006))

(declare-fun tp!1119945 () Bool)

(declare-fun b_and!275377 () Bool)

(assert (=> b!3684565 (= tp!1119945 (and (=> t!301006 result!260050) b_and!275377))))

(declare-fun e!2281589 () Bool)

(assert (=> b!3684565 (= e!2281589 (and tp!1119942 tp!1119945))))

(declare-fun e!2281588 () Bool)

(declare-fun b!3684564 () Bool)

(declare-fun tp!1119943 () Bool)

(assert (=> b!3684564 (= e!2281588 (and tp!1119943 (inv!52398 (tag!6673 (h!44332 (t!300995 rules!3568)))) (inv!52401 (transformation!5867 (h!44332 (t!300995 rules!3568)))) e!2281589))))

(declare-fun b!3684563 () Bool)

(declare-fun e!2281586 () Bool)

(declare-fun tp!1119944 () Bool)

(assert (=> b!3684563 (= e!2281586 (and e!2281588 tp!1119944))))

(assert (=> b!3684266 (= tp!1119906 e!2281586)))

(assert (= b!3684564 b!3684565))

(assert (= b!3684563 b!3684564))

(assert (= (and b!3684266 (is-Cons!38912 (t!300995 rules!3568))) b!3684563))

(declare-fun m!4195947 () Bool)

(assert (=> b!3684564 m!4195947))

(declare-fun m!4195949 () Bool)

(assert (=> b!3684564 m!4195949))

(declare-fun b!3684566 () Bool)

(declare-fun e!2281590 () Bool)

(declare-fun tp!1119946 () Bool)

(assert (=> b!3684566 (= e!2281590 (and tp_is_empty!18335 tp!1119946))))

(assert (=> b!3684271 (= tp!1119902 e!2281590)))

(assert (= (and b!3684271 (is-Cons!38911 (t!300994 input!3129))) b!3684566))

(declare-fun b!3684580 () Bool)

(declare-fun e!2281593 () Bool)

(declare-fun tp!1119961 () Bool)

(declare-fun tp!1119958 () Bool)

(assert (=> b!3684580 (= e!2281593 (and tp!1119961 tp!1119958))))

(declare-fun b!3684577 () Bool)

(assert (=> b!3684577 (= e!2281593 tp_is_empty!18335)))

(declare-fun b!3684578 () Bool)

(declare-fun tp!1119960 () Bool)

(declare-fun tp!1119959 () Bool)

(assert (=> b!3684578 (= e!2281593 (and tp!1119960 tp!1119959))))

(declare-fun b!3684579 () Bool)

(declare-fun tp!1119957 () Bool)

(assert (=> b!3684579 (= e!2281593 tp!1119957)))

(assert (=> b!3684269 (= tp!1119903 e!2281593)))

(assert (= (and b!3684269 (is-ElementMatch!10626 (regex!5867 (h!44332 rules!3568)))) b!3684577))

(assert (= (and b!3684269 (is-Concat!16724 (regex!5867 (h!44332 rules!3568)))) b!3684578))

(assert (= (and b!3684269 (is-Star!10626 (regex!5867 (h!44332 rules!3568)))) b!3684579))

(assert (= (and b!3684269 (is-Union!10626 (regex!5867 (h!44332 rules!3568)))) b!3684580))

(push 1)

(assert (not b!3684459))

(assert (not bm!266787))

(assert b_and!275377)

(assert (not b_next!98401))

(assert (not b!3684566))

(assert (not b!3684580))

(assert (not b_next!98393))

(assert (not b!3684339))

(assert (not b!3684351))

(assert (not d!1081503))

(assert (not b!3684563))

(assert (not b!3684500))

(assert (not d!1081477))

(assert (not bm!266798))

(assert (not d!1081461))

(assert (not b!3684337))

(assert (not b!3684338))

(assert (not b!3684389))

(assert b_and!275363)

(assert (not b!3684545))

(assert (not b!3684395))

(assert (not d!1081475))

(assert (not b!3684461))

(assert (not b!3684476))

(assert (not b!3684344))

(assert (not b!3684543))

(assert (not tb!213697))

(assert (not b!3684390))

(assert (not b_next!98403))

(assert (not b!3684478))

(assert (not b!3684458))

(assert (not b!3684542))

(assert (not b!3684503))

(assert (not b_lambda!109435))

(assert (not b_next!98395))

(assert (not bm!266789))

(assert (not d!1081455))

(assert (not b!3684336))

(assert (not b!3684454))

(assert b_and!275375)

(assert tp_is_empty!18335)

(assert (not b!3684475))

(assert (not b!3684479))

(assert (not b!3684375))

(assert (not b!3684499))

(assert (not d!1081473))

(assert (not b!3684409))

(assert (not bm!266780))

(assert (not b!3684564))

(assert (not d!1081501))

(assert (not d!1081465))

(assert (not b!3684456))

(assert (not d!1081507))

(assert (not d!1081497))

(assert (not d!1081471))

(assert (not b!3684579))

(assert (not d!1081495))

(assert (not b!3684578))

(assert (not d!1081511))

(assert (not d!1081485))

(assert (not d!1081493))

(assert (not b!3684455))

(assert (not b!3684453))

(assert (not b!3684544))

(assert (not b!3684549))

(assert (not b!3684457))

(assert (not d!1081469))

(assert (not d!1081451))

(assert b_and!275371)

(assert (not b!3684388))

(assert (not b!3684410))

(assert (not b!3684397))

(assert (not b!3684342))

(assert (not b!3684399))

(assert (not b!3684554))

(assert (not b!3684398))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275363)

(assert (not b_next!98403))

(assert b_and!275377)

(assert (not b_next!98395))

(assert b_and!275375)

(assert (not b_next!98401))

(assert (not b_next!98393))

(assert b_and!275371)

(check-sat)

(pop 1)

