; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347982 () Bool)

(assert start!347982)

(declare-fun b!3695432 () Bool)

(declare-fun b_free!98249 () Bool)

(declare-fun b_next!98953 () Bool)

(assert (=> b!3695432 (= b_free!98249 (not b_next!98953))))

(declare-fun tp!1123157 () Bool)

(declare-fun b_and!276171 () Bool)

(assert (=> b!3695432 (= tp!1123157 b_and!276171)))

(declare-fun b_free!98251 () Bool)

(declare-fun b_next!98955 () Bool)

(assert (=> b!3695432 (= b_free!98251 (not b_next!98955))))

(declare-fun tp!1123153 () Bool)

(declare-fun b_and!276173 () Bool)

(assert (=> b!3695432 (= tp!1123153 b_and!276173)))

(declare-fun b!3695421 () Bool)

(declare-fun b_free!98253 () Bool)

(declare-fun b_next!98957 () Bool)

(assert (=> b!3695421 (= b_free!98253 (not b_next!98957))))

(declare-fun tp!1123156 () Bool)

(declare-fun b_and!276175 () Bool)

(assert (=> b!3695421 (= tp!1123156 b_and!276175)))

(declare-fun b_free!98255 () Bool)

(declare-fun b_next!98959 () Bool)

(assert (=> b!3695421 (= b_free!98255 (not b_next!98959))))

(declare-fun tp!1123160 () Bool)

(declare-fun b_and!276177 () Bool)

(assert (=> b!3695421 (= tp!1123160 b_and!276177)))

(declare-fun b!3695419 () Bool)

(declare-fun e!2288395 () Bool)

(assert (=> b!3695419 (= e!2288395 (not true))))

(declare-fun lt!1293499 () Bool)

(declare-datatypes ((LexerInterface!5529 0))(
  ( (LexerInterfaceExt!5526 (__x!24557 Int)) (Lexer!5527) )
))
(declare-fun thiss!25322 () LexerInterface!5529)

(declare-datatypes ((List!39324 0))(
  ( (Nil!39200) (Cons!39200 (h!44620 (_ BitVec 16)) (t!301659 List!39324)) )
))
(declare-datatypes ((TokenValue!6170 0))(
  ( (FloatLiteralValue!12340 (text!43635 List!39324)) (TokenValueExt!6169 (__x!24558 Int)) (Broken!30850 (value!189718 List!39324)) (Object!6293) (End!6170) (Def!6170) (Underscore!6170) (Match!6170) (Else!6170) (Error!6170) (Case!6170) (If!6170) (Extends!6170) (Abstract!6170) (Class!6170) (Val!6170) (DelimiterValue!12340 (del!6230 List!39324)) (KeywordValue!6176 (value!189719 List!39324)) (CommentValue!12340 (value!189720 List!39324)) (WhitespaceValue!12340 (value!189721 List!39324)) (IndentationValue!6170 (value!189722 List!39324)) (String!44183) (Int32!6170) (Broken!30851 (value!189723 List!39324)) (Boolean!6171) (Unit!57191) (OperatorValue!6173 (op!6230 List!39324)) (IdentifierValue!12340 (value!189724 List!39324)) (IdentifierValue!12341 (value!189725 List!39324)) (WhitespaceValue!12341 (value!189726 List!39324)) (True!12340) (False!12340) (Broken!30852 (value!189727 List!39324)) (Broken!30853 (value!189728 List!39324)) (True!12341) (RightBrace!6170) (RightBracket!6170) (Colon!6170) (Null!6170) (Comma!6170) (LeftBracket!6170) (False!12341) (LeftBrace!6170) (ImaginaryLiteralValue!6170 (text!43636 List!39324)) (StringLiteralValue!18510 (value!189729 List!39324)) (EOFValue!6170 (value!189730 List!39324)) (IdentValue!6170 (value!189731 List!39324)) (DelimiterValue!12341 (value!189732 List!39324)) (DedentValue!6170 (value!189733 List!39324)) (NewLineValue!6170 (value!189734 List!39324)) (IntegerValue!18510 (value!189735 (_ BitVec 32)) (text!43637 List!39324)) (IntegerValue!18511 (value!189736 Int) (text!43638 List!39324)) (Times!6170) (Or!6170) (Equal!6170) (Minus!6170) (Broken!30854 (value!189737 List!39324)) (And!6170) (Div!6170) (LessEqual!6170) (Mod!6170) (Concat!16869) (Not!6170) (Plus!6170) (SpaceValue!6170 (value!189738 List!39324)) (IntegerValue!18512 (value!189739 Int) (text!43639 List!39324)) (StringLiteralValue!18511 (text!43640 List!39324)) (FloatLiteralValue!12341 (text!43641 List!39324)) (BytesLiteralValue!6170 (value!189740 List!39324)) (CommentValue!12341 (value!189741 List!39324)) (StringLiteralValue!18512 (value!189742 List!39324)) (ErrorTokenValue!6170 (msg!6231 List!39324)) )
))
(declare-datatypes ((C!21584 0))(
  ( (C!21585 (val!12840 Int)) )
))
(declare-datatypes ((Regex!10699 0))(
  ( (ElementMatch!10699 (c!638828 C!21584)) (Concat!16870 (regOne!21910 Regex!10699) (regTwo!21910 Regex!10699)) (EmptyExpr!10699) (Star!10699 (reg!11028 Regex!10699)) (EmptyLang!10699) (Union!10699 (regOne!21911 Regex!10699) (regTwo!21911 Regex!10699)) )
))
(declare-datatypes ((String!44184 0))(
  ( (String!44185 (value!189743 String)) )
))
(declare-datatypes ((List!39325 0))(
  ( (Nil!39201) (Cons!39201 (h!44621 C!21584) (t!301660 List!39325)) )
))
(declare-datatypes ((IArray!24079 0))(
  ( (IArray!24080 (innerList!12097 List!39325)) )
))
(declare-datatypes ((Conc!12037 0))(
  ( (Node!12037 (left!30553 Conc!12037) (right!30883 Conc!12037) (csize!24304 Int) (cheight!12248 Int)) (Leaf!18618 (xs!15239 IArray!24079) (csize!24305 Int)) (Empty!12037) )
))
(declare-datatypes ((BalanceConc!23688 0))(
  ( (BalanceConc!23689 (c!638829 Conc!12037)) )
))
(declare-datatypes ((TokenValueInjection!11768 0))(
  ( (TokenValueInjection!11769 (toValue!8272 Int) (toChars!8131 Int)) )
))
(declare-datatypes ((Rule!11680 0))(
  ( (Rule!11681 (regex!5940 Regex!10699) (tag!6764 String!44184) (isSeparator!5940 Bool) (transformation!5940 TokenValueInjection!11768)) )
))
(declare-datatypes ((List!39326 0))(
  ( (Nil!39202) (Cons!39202 (h!44622 Rule!11680) (t!301661 List!39326)) )
))
(declare-fun rules!3598 () List!39326)

(declare-fun rulesInvariant!4926 (LexerInterface!5529 List!39326) Bool)

(assert (=> b!3695419 (= lt!1293499 (rulesInvariant!4926 thiss!25322 (Cons!39202 (h!44622 rules!3598) (t!301661 rules!3598))))))

(declare-fun e!2288397 () Bool)

(assert (=> b!3695419 e!2288397))

(declare-fun res!1502602 () Bool)

(assert (=> b!3695419 (=> (not res!1502602) (not e!2288397))))

(declare-datatypes ((Option!8459 0))(
  ( (None!8458) (Some!8458 (v!38416 Rule!11680)) )
))
(declare-fun lt!1293496 () Option!8459)

(declare-fun isDefined!6650 (Option!8459) Bool)

(assert (=> b!3695419 (= res!1502602 (isDefined!6650 lt!1293496))))

(declare-datatypes ((Token!11234 0))(
  ( (Token!11235 (value!189744 TokenValue!6170) (rule!8794 Rule!11680) (size!29918 Int) (originalCharacters!6648 List!39325)) )
))
(declare-fun token!544 () Token!11234)

(declare-fun getRuleFromTag!1496 (LexerInterface!5529 List!39326 String!44184) Option!8459)

(assert (=> b!3695419 (= lt!1293496 (getRuleFromTag!1496 thiss!25322 (t!301661 rules!3598) (tag!6764 (rule!8794 token!544))))))

(declare-fun input!3172 () List!39325)

(declare-datatypes ((Unit!57192 0))(
  ( (Unit!57193) )
))
(declare-fun lt!1293500 () Unit!57192)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1490 (LexerInterface!5529 List!39326 List!39325 Token!11234) Unit!57192)

(assert (=> b!3695419 (= lt!1293500 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1490 thiss!25322 (t!301661 rules!3598) input!3172 token!544))))

(assert (=> b!3695419 (rulesInvariant!4926 thiss!25322 (t!301661 rules!3598))))

(declare-fun lt!1293495 () Unit!57192)

(declare-fun lemmaInvariantOnRulesThenOnTail!648 (LexerInterface!5529 Rule!11680 List!39326) Unit!57192)

(assert (=> b!3695419 (= lt!1293495 (lemmaInvariantOnRulesThenOnTail!648 thiss!25322 (h!44622 rules!3598) (t!301661 rules!3598)))))

(declare-fun b!3695420 () Bool)

(declare-fun e!2288398 () Bool)

(assert (=> b!3695420 (= e!2288398 e!2288395)))

(declare-fun res!1502604 () Bool)

(assert (=> b!3695420 (=> (not res!1502604) (not e!2288395))))

(declare-fun e!2288405 () Bool)

(assert (=> b!3695420 (= res!1502604 e!2288405)))

(declare-fun res!1502603 () Bool)

(assert (=> b!3695420 (=> res!1502603 e!2288405)))

(declare-datatypes ((tuple2!39088 0))(
  ( (tuple2!39089 (_1!22678 Token!11234) (_2!22678 List!39325)) )
))
(declare-datatypes ((Option!8460 0))(
  ( (None!8459) (Some!8459 (v!38417 tuple2!39088)) )
))
(declare-fun lt!1293498 () Option!8460)

(declare-fun isDefined!6651 (Option!8460) Bool)

(assert (=> b!3695420 (= res!1502603 (not (isDefined!6651 lt!1293498)))))

(declare-fun maxPrefixOneRule!2165 (LexerInterface!5529 Rule!11680 List!39325) Option!8460)

(assert (=> b!3695420 (= lt!1293498 (maxPrefixOneRule!2165 thiss!25322 (h!44622 rules!3598) input!3172))))

(declare-fun e!2288392 () Bool)

(assert (=> b!3695421 (= e!2288392 (and tp!1123156 tp!1123160))))

(declare-fun e!2288406 () Bool)

(declare-fun e!2288403 () Bool)

(declare-fun b!3695422 () Bool)

(declare-fun tp!1123155 () Bool)

(declare-fun inv!21 (TokenValue!6170) Bool)

(assert (=> b!3695422 (= e!2288403 (and (inv!21 (value!189744 token!544)) e!2288406 tp!1123155))))

(declare-fun b!3695423 () Bool)

(declare-fun res!1502597 () Bool)

(declare-fun e!2288391 () Bool)

(assert (=> b!3695423 (=> (not res!1502597) (not e!2288391))))

(declare-fun isEmpty!23360 (List!39326) Bool)

(assert (=> b!3695423 (= res!1502597 (not (isEmpty!23360 rules!3598)))))

(declare-fun b!3695424 () Bool)

(declare-fun res!1502607 () Bool)

(assert (=> b!3695424 (=> (not res!1502607) (not e!2288391))))

(assert (=> b!3695424 (= res!1502607 (rulesInvariant!4926 thiss!25322 rules!3598))))

(declare-fun b!3695425 () Bool)

(declare-fun e!2288404 () Bool)

(declare-fun tp_is_empty!18473 () Bool)

(declare-fun tp!1123159 () Bool)

(assert (=> b!3695425 (= e!2288404 (and tp_is_empty!18473 tp!1123159))))

(declare-fun b!3695426 () Bool)

(declare-fun e!2288399 () Bool)

(assert (=> b!3695426 (= e!2288397 e!2288399)))

(declare-fun res!1502601 () Bool)

(assert (=> b!3695426 (=> (not res!1502601) (not e!2288399))))

(declare-fun lt!1293497 () Rule!11680)

(declare-fun matchR!5238 (Regex!10699 List!39325) Bool)

(declare-fun list!14648 (BalanceConc!23688) List!39325)

(declare-fun charsOf!3935 (Token!11234) BalanceConc!23688)

(assert (=> b!3695426 (= res!1502601 (matchR!5238 (regex!5940 lt!1293497) (list!14648 (charsOf!3935 token!544))))))

(declare-fun get!13018 (Option!8459) Rule!11680)

(assert (=> b!3695426 (= lt!1293497 (get!13018 lt!1293496))))

(declare-fun tp!1123154 () Bool)

(declare-fun b!3695428 () Bool)

(declare-fun inv!52683 (String!44184) Bool)

(declare-fun inv!52686 (TokenValueInjection!11768) Bool)

(assert (=> b!3695428 (= e!2288406 (and tp!1123154 (inv!52683 (tag!6764 (rule!8794 token!544))) (inv!52686 (transformation!5940 (rule!8794 token!544))) e!2288392))))

(declare-fun b!3695429 () Bool)

(declare-fun res!1502605 () Bool)

(assert (=> b!3695429 (=> (not res!1502605) (not e!2288395))))

(assert (=> b!3695429 (= res!1502605 (not (isEmpty!23360 (t!301661 rules!3598))))))

(declare-fun e!2288401 () Bool)

(declare-fun tp!1123152 () Bool)

(declare-fun e!2288402 () Bool)

(declare-fun b!3695430 () Bool)

(assert (=> b!3695430 (= e!2288401 (and tp!1123152 (inv!52683 (tag!6764 (h!44622 rules!3598))) (inv!52686 (transformation!5940 (h!44622 rules!3598))) e!2288402))))

(declare-fun b!3695431 () Bool)

(assert (=> b!3695431 (= e!2288399 (= (rule!8794 token!544) lt!1293497))))

(assert (=> b!3695432 (= e!2288402 (and tp!1123157 tp!1123153))))

(declare-fun b!3695433 () Bool)

(declare-fun res!1502599 () Bool)

(assert (=> b!3695433 (=> (not res!1502599) (not e!2288398))))

(get-info :version)

(assert (=> b!3695433 (= res!1502599 ((_ is Cons!39202) rules!3598))))

(declare-fun b!3695434 () Bool)

(assert (=> b!3695434 (= e!2288391 e!2288398)))

(declare-fun res!1502598 () Bool)

(assert (=> b!3695434 (=> (not res!1502598) (not e!2288398))))

(declare-fun lt!1293494 () Option!8460)

(assert (=> b!3695434 (= res!1502598 (isDefined!6651 lt!1293494))))

(declare-fun maxPrefix!3051 (LexerInterface!5529 List!39326 List!39325) Option!8460)

(assert (=> b!3695434 (= lt!1293494 (maxPrefix!3051 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3695435 () Bool)

(declare-fun res!1502600 () Bool)

(assert (=> b!3695435 (=> (not res!1502600) (not e!2288398))))

(declare-fun get!13019 (Option!8460) tuple2!39088)

(assert (=> b!3695435 (= res!1502600 (= (_1!22678 (get!13019 lt!1293494)) token!544))))

(declare-fun b!3695436 () Bool)

(declare-fun e!2288396 () Bool)

(declare-fun tp!1123158 () Bool)

(assert (=> b!3695436 (= e!2288396 (and e!2288401 tp!1123158))))

(declare-fun res!1502606 () Bool)

(assert (=> start!347982 (=> (not res!1502606) (not e!2288391))))

(assert (=> start!347982 (= res!1502606 ((_ is Lexer!5527) thiss!25322))))

(assert (=> start!347982 e!2288391))

(assert (=> start!347982 true))

(assert (=> start!347982 e!2288396))

(declare-fun inv!52687 (Token!11234) Bool)

(assert (=> start!347982 (and (inv!52687 token!544) e!2288403)))

(assert (=> start!347982 e!2288404))

(declare-fun b!3695427 () Bool)

(assert (=> b!3695427 (= e!2288405 (not (= (_1!22678 (get!13019 lt!1293498)) token!544)))))

(assert (= (and start!347982 res!1502606) b!3695424))

(assert (= (and b!3695424 res!1502607) b!3695423))

(assert (= (and b!3695423 res!1502597) b!3695434))

(assert (= (and b!3695434 res!1502598) b!3695435))

(assert (= (and b!3695435 res!1502600) b!3695433))

(assert (= (and b!3695433 res!1502599) b!3695420))

(assert (= (and b!3695420 (not res!1502603)) b!3695427))

(assert (= (and b!3695420 res!1502604) b!3695429))

(assert (= (and b!3695429 res!1502605) b!3695419))

(assert (= (and b!3695419 res!1502602) b!3695426))

(assert (= (and b!3695426 res!1502601) b!3695431))

(assert (= b!3695430 b!3695432))

(assert (= b!3695436 b!3695430))

(assert (= (and start!347982 ((_ is Cons!39202) rules!3598)) b!3695436))

(assert (= b!3695428 b!3695421))

(assert (= b!3695422 b!3695428))

(assert (= start!347982 b!3695422))

(assert (= (and start!347982 ((_ is Cons!39201) input!3172)) b!3695425))

(declare-fun m!4207191 () Bool)

(assert (=> b!3695434 m!4207191))

(declare-fun m!4207193 () Bool)

(assert (=> b!3695434 m!4207193))

(declare-fun m!4207195 () Bool)

(assert (=> b!3695424 m!4207195))

(declare-fun m!4207197 () Bool)

(assert (=> b!3695419 m!4207197))

(declare-fun m!4207199 () Bool)

(assert (=> b!3695419 m!4207199))

(declare-fun m!4207201 () Bool)

(assert (=> b!3695419 m!4207201))

(declare-fun m!4207203 () Bool)

(assert (=> b!3695419 m!4207203))

(declare-fun m!4207205 () Bool)

(assert (=> b!3695419 m!4207205))

(declare-fun m!4207207 () Bool)

(assert (=> b!3695419 m!4207207))

(declare-fun m!4207209 () Bool)

(assert (=> b!3695420 m!4207209))

(declare-fun m!4207211 () Bool)

(assert (=> b!3695420 m!4207211))

(declare-fun m!4207213 () Bool)

(assert (=> b!3695435 m!4207213))

(declare-fun m!4207215 () Bool)

(assert (=> b!3695423 m!4207215))

(declare-fun m!4207217 () Bool)

(assert (=> b!3695422 m!4207217))

(declare-fun m!4207219 () Bool)

(assert (=> b!3695427 m!4207219))

(declare-fun m!4207221 () Bool)

(assert (=> b!3695429 m!4207221))

(declare-fun m!4207223 () Bool)

(assert (=> b!3695426 m!4207223))

(assert (=> b!3695426 m!4207223))

(declare-fun m!4207225 () Bool)

(assert (=> b!3695426 m!4207225))

(assert (=> b!3695426 m!4207225))

(declare-fun m!4207227 () Bool)

(assert (=> b!3695426 m!4207227))

(declare-fun m!4207229 () Bool)

(assert (=> b!3695426 m!4207229))

(declare-fun m!4207231 () Bool)

(assert (=> b!3695428 m!4207231))

(declare-fun m!4207233 () Bool)

(assert (=> b!3695428 m!4207233))

(declare-fun m!4207235 () Bool)

(assert (=> start!347982 m!4207235))

(declare-fun m!4207237 () Bool)

(assert (=> b!3695430 m!4207237))

(declare-fun m!4207239 () Bool)

(assert (=> b!3695430 m!4207239))

(check-sat (not b!3695434) (not b!3695430) (not b_next!98959) (not b!3695429) (not b!3695428) (not b_next!98953) (not b_next!98957) (not b!3695420) b_and!276171 b_and!276175 (not start!347982) (not b!3695435) (not b!3695426) b_and!276177 (not b!3695427) (not b!3695424) (not b!3695423) (not b!3695422) (not b_next!98955) b_and!276173 tp_is_empty!18473 (not b!3695419) (not b!3695425) (not b!3695436))
(check-sat b_and!276177 (not b_next!98959) (not b_next!98955) b_and!276173 (not b_next!98953) (not b_next!98957) b_and!276171 b_and!276175)
