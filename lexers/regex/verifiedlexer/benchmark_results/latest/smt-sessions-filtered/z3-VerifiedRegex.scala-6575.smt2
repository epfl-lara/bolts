; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347894 () Bool)

(assert start!347894)

(declare-fun b!3694497 () Bool)

(declare-fun b_free!98161 () Bool)

(declare-fun b_next!98865 () Bool)

(assert (=> b!3694497 (= b_free!98161 (not b_next!98865))))

(declare-fun tp!1122810 () Bool)

(declare-fun b_and!276067 () Bool)

(assert (=> b!3694497 (= tp!1122810 b_and!276067)))

(declare-fun b_free!98163 () Bool)

(declare-fun b_next!98867 () Bool)

(assert (=> b!3694497 (= b_free!98163 (not b_next!98867))))

(declare-fun tp!1122809 () Bool)

(declare-fun b_and!276069 () Bool)

(assert (=> b!3694497 (= tp!1122809 b_and!276069)))

(declare-fun b!3694499 () Bool)

(declare-fun b_free!98165 () Bool)

(declare-fun b_next!98869 () Bool)

(assert (=> b!3694499 (= b_free!98165 (not b_next!98869))))

(declare-fun tp!1122808 () Bool)

(declare-fun b_and!276071 () Bool)

(assert (=> b!3694499 (= tp!1122808 b_and!276071)))

(declare-fun b_free!98167 () Bool)

(declare-fun b_next!98871 () Bool)

(assert (=> b!3694499 (= b_free!98167 (not b_next!98871))))

(declare-fun tp!1122805 () Bool)

(declare-fun b_and!276073 () Bool)

(assert (=> b!3694499 (= tp!1122805 b_and!276073)))

(declare-fun b!3694486 () Bool)

(declare-fun res!1502081 () Bool)

(declare-fun e!2287726 () Bool)

(assert (=> b!3694486 (=> (not res!1502081) (not e!2287726))))

(declare-datatypes ((List!39293 0))(
  ( (Nil!39169) (Cons!39169 (h!44589 (_ BitVec 16)) (t!301616 List!39293)) )
))
(declare-datatypes ((TokenValue!6160 0))(
  ( (FloatLiteralValue!12320 (text!43565 List!39293)) (TokenValueExt!6159 (__x!24537 Int)) (Broken!30800 (value!189433 List!39293)) (Object!6283) (End!6160) (Def!6160) (Underscore!6160) (Match!6160) (Else!6160) (Error!6160) (Case!6160) (If!6160) (Extends!6160) (Abstract!6160) (Class!6160) (Val!6160) (DelimiterValue!12320 (del!6220 List!39293)) (KeywordValue!6166 (value!189434 List!39293)) (CommentValue!12320 (value!189435 List!39293)) (WhitespaceValue!12320 (value!189436 List!39293)) (IndentationValue!6160 (value!189437 List!39293)) (String!44133) (Int32!6160) (Broken!30801 (value!189438 List!39293)) (Boolean!6161) (Unit!57171) (OperatorValue!6163 (op!6220 List!39293)) (IdentifierValue!12320 (value!189439 List!39293)) (IdentifierValue!12321 (value!189440 List!39293)) (WhitespaceValue!12321 (value!189441 List!39293)) (True!12320) (False!12320) (Broken!30802 (value!189442 List!39293)) (Broken!30803 (value!189443 List!39293)) (True!12321) (RightBrace!6160) (RightBracket!6160) (Colon!6160) (Null!6160) (Comma!6160) (LeftBracket!6160) (False!12321) (LeftBrace!6160) (ImaginaryLiteralValue!6160 (text!43566 List!39293)) (StringLiteralValue!18480 (value!189444 List!39293)) (EOFValue!6160 (value!189445 List!39293)) (IdentValue!6160 (value!189446 List!39293)) (DelimiterValue!12321 (value!189447 List!39293)) (DedentValue!6160 (value!189448 List!39293)) (NewLineValue!6160 (value!189449 List!39293)) (IntegerValue!18480 (value!189450 (_ BitVec 32)) (text!43567 List!39293)) (IntegerValue!18481 (value!189451 Int) (text!43568 List!39293)) (Times!6160) (Or!6160) (Equal!6160) (Minus!6160) (Broken!30804 (value!189452 List!39293)) (And!6160) (Div!6160) (LessEqual!6160) (Mod!6160) (Concat!16849) (Not!6160) (Plus!6160) (SpaceValue!6160 (value!189453 List!39293)) (IntegerValue!18482 (value!189454 Int) (text!43569 List!39293)) (StringLiteralValue!18481 (text!43570 List!39293)) (FloatLiteralValue!12321 (text!43571 List!39293)) (BytesLiteralValue!6160 (value!189455 List!39293)) (CommentValue!12321 (value!189456 List!39293)) (StringLiteralValue!18482 (value!189457 List!39293)) (ErrorTokenValue!6160 (msg!6221 List!39293)) )
))
(declare-datatypes ((C!21564 0))(
  ( (C!21565 (val!12830 Int)) )
))
(declare-datatypes ((Regex!10689 0))(
  ( (ElementMatch!10689 (c!638732 C!21564)) (Concat!16850 (regOne!21890 Regex!10689) (regTwo!21890 Regex!10689)) (EmptyExpr!10689) (Star!10689 (reg!11018 Regex!10689)) (EmptyLang!10689) (Union!10689 (regOne!21891 Regex!10689) (regTwo!21891 Regex!10689)) )
))
(declare-datatypes ((String!44134 0))(
  ( (String!44135 (value!189458 String)) )
))
(declare-datatypes ((List!39294 0))(
  ( (Nil!39170) (Cons!39170 (h!44590 C!21564) (t!301617 List!39294)) )
))
(declare-datatypes ((IArray!24059 0))(
  ( (IArray!24060 (innerList!12087 List!39294)) )
))
(declare-datatypes ((Conc!12027 0))(
  ( (Node!12027 (left!30538 Conc!12027) (right!30868 Conc!12027) (csize!24284 Int) (cheight!12238 Int)) (Leaf!18603 (xs!15229 IArray!24059) (csize!24285 Int)) (Empty!12027) )
))
(declare-datatypes ((BalanceConc!23668 0))(
  ( (BalanceConc!23669 (c!638733 Conc!12027)) )
))
(declare-datatypes ((TokenValueInjection!11748 0))(
  ( (TokenValueInjection!11749 (toValue!8262 Int) (toChars!8121 Int)) )
))
(declare-datatypes ((Rule!11660 0))(
  ( (Rule!11661 (regex!5930 Regex!10689) (tag!6752 String!44134) (isSeparator!5930 Bool) (transformation!5930 TokenValueInjection!11748)) )
))
(declare-datatypes ((List!39295 0))(
  ( (Nil!39171) (Cons!39171 (h!44591 Rule!11660) (t!301618 List!39295)) )
))
(declare-fun rules!3598 () List!39295)

(declare-datatypes ((Token!11214 0))(
  ( (Token!11215 (value!189459 TokenValue!6160) (rule!8782 Rule!11660) (size!29905 Int) (originalCharacters!6638 List!39294)) )
))
(declare-fun token!544 () Token!11214)

(declare-fun matchR!5232 (Regex!10689 List!39294) Bool)

(declare-fun list!14641 (BalanceConc!23668) List!39294)

(declare-fun charsOf!3929 (Token!11214) BalanceConc!23668)

(assert (=> b!3694486 (= res!1502081 (matchR!5232 (regex!5930 (h!44591 rules!3598)) (list!14641 (charsOf!3929 token!544))))))

(declare-fun b!3694487 () Bool)

(declare-fun res!1502088 () Bool)

(assert (=> b!3694487 (=> (not res!1502088) (not e!2287726))))

(assert (=> b!3694487 (= res!1502088 (= (h!44591 rules!3598) (rule!8782 token!544)))))

(declare-fun tp!1122806 () Bool)

(declare-fun e!2287733 () Bool)

(declare-fun b!3694488 () Bool)

(declare-fun e!2287730 () Bool)

(declare-fun inv!52646 (String!44134) Bool)

(declare-fun inv!52649 (TokenValueInjection!11748) Bool)

(assert (=> b!3694488 (= e!2287733 (and tp!1122806 (inv!52646 (tag!6752 (rule!8782 token!544))) (inv!52649 (transformation!5930 (rule!8782 token!544))) e!2287730))))

(declare-fun e!2287722 () Bool)

(declare-fun b!3694489 () Bool)

(declare-fun tp!1122812 () Bool)

(declare-fun inv!21 (TokenValue!6160) Bool)

(assert (=> b!3694489 (= e!2287722 (and (inv!21 (value!189459 token!544)) e!2287733 tp!1122812))))

(declare-fun b!3694490 () Bool)

(declare-fun e!2287727 () Bool)

(declare-fun e!2287731 () Bool)

(declare-fun tp!1122804 () Bool)

(assert (=> b!3694490 (= e!2287727 (and e!2287731 tp!1122804))))

(declare-fun b!3694491 () Bool)

(declare-fun res!1502087 () Bool)

(declare-fun e!2287723 () Bool)

(assert (=> b!3694491 (=> (not res!1502087) (not e!2287723))))

(get-info :version)

(assert (=> b!3694491 (= res!1502087 ((_ is Cons!39171) rules!3598))))

(declare-fun b!3694492 () Bool)

(declare-fun e!2287732 () Bool)

(declare-fun tp_is_empty!18453 () Bool)

(declare-fun tp!1122807 () Bool)

(assert (=> b!3694492 (= e!2287732 (and tp_is_empty!18453 tp!1122807))))

(declare-fun b!3694493 () Bool)

(assert (=> b!3694493 (= e!2287726 false)))

(declare-datatypes ((Option!8443 0))(
  ( (None!8442) (Some!8442 (v!38400 Rule!11660)) )
))
(declare-fun lt!1293278 () Option!8443)

(declare-datatypes ((LexerInterface!5519 0))(
  ( (LexerInterfaceExt!5516 (__x!24538 Int)) (Lexer!5517) )
))
(declare-fun thiss!25322 () LexerInterface!5519)

(declare-fun getRuleFromTag!1490 (LexerInterface!5519 List!39295 String!44134) Option!8443)

(assert (=> b!3694493 (= lt!1293278 (getRuleFromTag!1490 thiss!25322 rules!3598 (tag!6752 (rule!8782 token!544))))))

(declare-fun e!2287734 () Bool)

(declare-fun b!3694494 () Bool)

(declare-fun tp!1122811 () Bool)

(assert (=> b!3694494 (= e!2287731 (and tp!1122811 (inv!52646 (tag!6752 (h!44591 rules!3598))) (inv!52649 (transformation!5930 (h!44591 rules!3598))) e!2287734))))

(declare-fun b!3694495 () Bool)

(declare-fun res!1502080 () Bool)

(assert (=> b!3694495 (=> (not res!1502080) (not e!2287723))))

(declare-datatypes ((tuple2!39066 0))(
  ( (tuple2!39067 (_1!22667 Token!11214) (_2!22667 List!39294)) )
))
(declare-datatypes ((Option!8444 0))(
  ( (None!8443) (Some!8443 (v!38401 tuple2!39066)) )
))
(declare-fun lt!1293277 () Option!8444)

(declare-fun get!12998 (Option!8444) tuple2!39066)

(assert (=> b!3694495 (= res!1502080 (= (_1!22667 (get!12998 lt!1293277)) token!544))))

(declare-fun b!3694496 () Bool)

(declare-fun res!1502083 () Bool)

(assert (=> b!3694496 (=> (not res!1502083) (not e!2287726))))

(declare-fun lt!1293276 () Option!8444)

(assert (=> b!3694496 (= res!1502083 (= (_1!22667 (get!12998 lt!1293276)) token!544))))

(assert (=> b!3694497 (= e!2287734 (and tp!1122810 tp!1122809))))

(declare-fun res!1502082 () Bool)

(declare-fun e!2287729 () Bool)

(assert (=> start!347894 (=> (not res!1502082) (not e!2287729))))

(assert (=> start!347894 (= res!1502082 ((_ is Lexer!5517) thiss!25322))))

(assert (=> start!347894 e!2287729))

(assert (=> start!347894 true))

(assert (=> start!347894 e!2287727))

(declare-fun inv!52650 (Token!11214) Bool)

(assert (=> start!347894 (and (inv!52650 token!544) e!2287722)))

(assert (=> start!347894 e!2287732))

(declare-fun b!3694498 () Bool)

(declare-fun res!1502086 () Bool)

(assert (=> b!3694498 (=> (not res!1502086) (not e!2287729))))

(declare-fun rulesInvariant!4916 (LexerInterface!5519 List!39295) Bool)

(assert (=> b!3694498 (= res!1502086 (rulesInvariant!4916 thiss!25322 rules!3598))))

(assert (=> b!3694499 (= e!2287730 (and tp!1122808 tp!1122805))))

(declare-fun b!3694500 () Bool)

(declare-fun res!1502085 () Bool)

(assert (=> b!3694500 (=> (not res!1502085) (not e!2287729))))

(declare-fun isEmpty!23346 (List!39295) Bool)

(assert (=> b!3694500 (= res!1502085 (not (isEmpty!23346 rules!3598)))))

(declare-fun b!3694501 () Bool)

(assert (=> b!3694501 (= e!2287729 e!2287723)))

(declare-fun res!1502084 () Bool)

(assert (=> b!3694501 (=> (not res!1502084) (not e!2287723))))

(declare-fun isDefined!6635 (Option!8444) Bool)

(assert (=> b!3694501 (= res!1502084 (isDefined!6635 lt!1293277))))

(declare-fun input!3172 () List!39294)

(declare-fun maxPrefix!3041 (LexerInterface!5519 List!39295 List!39294) Option!8444)

(assert (=> b!3694501 (= lt!1293277 (maxPrefix!3041 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3694502 () Bool)

(assert (=> b!3694502 (= e!2287723 e!2287726)))

(declare-fun res!1502089 () Bool)

(assert (=> b!3694502 (=> (not res!1502089) (not e!2287726))))

(assert (=> b!3694502 (= res!1502089 (isDefined!6635 lt!1293276))))

(declare-fun maxPrefixOneRule!2155 (LexerInterface!5519 Rule!11660 List!39294) Option!8444)

(assert (=> b!3694502 (= lt!1293276 (maxPrefixOneRule!2155 thiss!25322 (h!44591 rules!3598) input!3172))))

(assert (= (and start!347894 res!1502082) b!3694498))

(assert (= (and b!3694498 res!1502086) b!3694500))

(assert (= (and b!3694500 res!1502085) b!3694501))

(assert (= (and b!3694501 res!1502084) b!3694495))

(assert (= (and b!3694495 res!1502080) b!3694491))

(assert (= (and b!3694491 res!1502087) b!3694502))

(assert (= (and b!3694502 res!1502089) b!3694496))

(assert (= (and b!3694496 res!1502083) b!3694487))

(assert (= (and b!3694487 res!1502088) b!3694486))

(assert (= (and b!3694486 res!1502081) b!3694493))

(assert (= b!3694494 b!3694497))

(assert (= b!3694490 b!3694494))

(assert (= (and start!347894 ((_ is Cons!39171) rules!3598)) b!3694490))

(assert (= b!3694488 b!3694499))

(assert (= b!3694489 b!3694488))

(assert (= start!347894 b!3694489))

(assert (= (and start!347894 ((_ is Cons!39170) input!3172)) b!3694492))

(declare-fun m!4206493 () Bool)

(assert (=> b!3694500 m!4206493))

(declare-fun m!4206495 () Bool)

(assert (=> b!3694501 m!4206495))

(declare-fun m!4206497 () Bool)

(assert (=> b!3694501 m!4206497))

(declare-fun m!4206499 () Bool)

(assert (=> b!3694493 m!4206499))

(declare-fun m!4206501 () Bool)

(assert (=> b!3694496 m!4206501))

(declare-fun m!4206503 () Bool)

(assert (=> b!3694488 m!4206503))

(declare-fun m!4206505 () Bool)

(assert (=> b!3694488 m!4206505))

(declare-fun m!4206507 () Bool)

(assert (=> b!3694489 m!4206507))

(declare-fun m!4206509 () Bool)

(assert (=> b!3694502 m!4206509))

(declare-fun m!4206511 () Bool)

(assert (=> b!3694502 m!4206511))

(declare-fun m!4206513 () Bool)

(assert (=> start!347894 m!4206513))

(declare-fun m!4206515 () Bool)

(assert (=> b!3694498 m!4206515))

(declare-fun m!4206517 () Bool)

(assert (=> b!3694494 m!4206517))

(declare-fun m!4206519 () Bool)

(assert (=> b!3694494 m!4206519))

(declare-fun m!4206521 () Bool)

(assert (=> b!3694495 m!4206521))

(declare-fun m!4206523 () Bool)

(assert (=> b!3694486 m!4206523))

(assert (=> b!3694486 m!4206523))

(declare-fun m!4206525 () Bool)

(assert (=> b!3694486 m!4206525))

(assert (=> b!3694486 m!4206525))

(declare-fun m!4206527 () Bool)

(assert (=> b!3694486 m!4206527))

(check-sat (not b_next!98869) tp_is_empty!18453 (not b!3694496) (not b_next!98867) (not b!3694495) (not b!3694492) (not b!3694490) (not b!3694498) (not b!3694489) b_and!276069 (not b!3694494) (not b!3694501) (not b_next!98871) (not b_next!98865) (not b!3694502) (not b!3694500) (not start!347894) (not b!3694493) (not b!3694486) b_and!276067 (not b!3694488) b_and!276073 b_and!276071)
(check-sat b_and!276069 (not b_next!98871) (not b_next!98865) (not b_next!98869) (not b_next!98867) b_and!276067 b_and!276073 b_and!276071)
