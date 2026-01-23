; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391110 () Bool)

(assert start!391110)

(declare-fun b!4123646 () Bool)

(declare-fun b_free!116731 () Bool)

(declare-fun b_next!117435 () Bool)

(assert (=> b!4123646 (= b_free!116731 (not b_next!117435))))

(declare-fun tp!1256659 () Bool)

(declare-fun b_and!319125 () Bool)

(assert (=> b!4123646 (= tp!1256659 b_and!319125)))

(declare-fun b_free!116733 () Bool)

(declare-fun b_next!117437 () Bool)

(assert (=> b!4123646 (= b_free!116733 (not b_next!117437))))

(declare-fun tp!1256660 () Bool)

(declare-fun b_and!319127 () Bool)

(assert (=> b!4123646 (= tp!1256660 b_and!319127)))

(declare-fun b!4123642 () Bool)

(declare-fun b_free!116735 () Bool)

(declare-fun b_next!117439 () Bool)

(assert (=> b!4123642 (= b_free!116735 (not b_next!117439))))

(declare-fun tp!1256652 () Bool)

(declare-fun b_and!319129 () Bool)

(assert (=> b!4123642 (= tp!1256652 b_and!319129)))

(declare-fun b_free!116737 () Bool)

(declare-fun b_next!117441 () Bool)

(assert (=> b!4123642 (= b_free!116737 (not b_next!117441))))

(declare-fun tp!1256662 () Bool)

(declare-fun b_and!319131 () Bool)

(assert (=> b!4123642 (= tp!1256662 b_and!319131)))

(declare-fun b!4123650 () Bool)

(declare-fun b_free!116739 () Bool)

(declare-fun b_next!117443 () Bool)

(assert (=> b!4123650 (= b_free!116739 (not b_next!117443))))

(declare-fun tp!1256658 () Bool)

(declare-fun b_and!319133 () Bool)

(assert (=> b!4123650 (= tp!1256658 b_and!319133)))

(declare-fun b_free!116741 () Bool)

(declare-fun b_next!117445 () Bool)

(assert (=> b!4123650 (= b_free!116741 (not b_next!117445))))

(declare-fun tp!1256661 () Bool)

(declare-fun b_and!319135 () Bool)

(assert (=> b!4123650 (= tp!1256661 b_and!319135)))

(declare-fun b!4123634 () Bool)

(declare-fun res!1685166 () Bool)

(declare-fun e!2558769 () Bool)

(assert (=> b!4123634 (=> (not res!1685166) (not e!2558769))))

(declare-datatypes ((List!44741 0))(
  ( (Nil!44617) (Cons!44617 (h!50037 (_ BitVec 16)) (t!340950 List!44741)) )
))
(declare-datatypes ((TokenValue!7524 0))(
  ( (FloatLiteralValue!15048 (text!53113 List!44741)) (TokenValueExt!7523 (__x!27265 Int)) (Broken!37620 (value!228407 List!44741)) (Object!7647) (End!7524) (Def!7524) (Underscore!7524) (Match!7524) (Else!7524) (Error!7524) (Case!7524) (If!7524) (Extends!7524) (Abstract!7524) (Class!7524) (Val!7524) (DelimiterValue!15048 (del!7584 List!44741)) (KeywordValue!7530 (value!228408 List!44741)) (CommentValue!15048 (value!228409 List!44741)) (WhitespaceValue!15048 (value!228410 List!44741)) (IndentationValue!7524 (value!228411 List!44741)) (String!51369) (Int32!7524) (Broken!37621 (value!228412 List!44741)) (Boolean!7525) (Unit!63958) (OperatorValue!7527 (op!7584 List!44741)) (IdentifierValue!15048 (value!228413 List!44741)) (IdentifierValue!15049 (value!228414 List!44741)) (WhitespaceValue!15049 (value!228415 List!44741)) (True!15048) (False!15048) (Broken!37622 (value!228416 List!44741)) (Broken!37623 (value!228417 List!44741)) (True!15049) (RightBrace!7524) (RightBracket!7524) (Colon!7524) (Null!7524) (Comma!7524) (LeftBracket!7524) (False!15049) (LeftBrace!7524) (ImaginaryLiteralValue!7524 (text!53114 List!44741)) (StringLiteralValue!22572 (value!228418 List!44741)) (EOFValue!7524 (value!228419 List!44741)) (IdentValue!7524 (value!228420 List!44741)) (DelimiterValue!15049 (value!228421 List!44741)) (DedentValue!7524 (value!228422 List!44741)) (NewLineValue!7524 (value!228423 List!44741)) (IntegerValue!22572 (value!228424 (_ BitVec 32)) (text!53115 List!44741)) (IntegerValue!22573 (value!228425 Int) (text!53116 List!44741)) (Times!7524) (Or!7524) (Equal!7524) (Minus!7524) (Broken!37624 (value!228426 List!44741)) (And!7524) (Div!7524) (LessEqual!7524) (Mod!7524) (Concat!19723) (Not!7524) (Plus!7524) (SpaceValue!7524 (value!228427 List!44741)) (IntegerValue!22574 (value!228428 Int) (text!53117 List!44741)) (StringLiteralValue!22573 (text!53118 List!44741)) (FloatLiteralValue!15049 (text!53119 List!44741)) (BytesLiteralValue!7524 (value!228429 List!44741)) (CommentValue!15049 (value!228430 List!44741)) (StringLiteralValue!22574 (value!228431 List!44741)) (ErrorTokenValue!7524 (msg!7585 List!44741)) )
))
(declare-datatypes ((C!24584 0))(
  ( (C!24585 (val!14402 Int)) )
))
(declare-datatypes ((List!44742 0))(
  ( (Nil!44618) (Cons!44618 (h!50038 C!24584) (t!340951 List!44742)) )
))
(declare-datatypes ((IArray!27015 0))(
  ( (IArray!27016 (innerList!13565 List!44742)) )
))
(declare-datatypes ((Conc!13505 0))(
  ( (Node!13505 (left!33414 Conc!13505) (right!33744 Conc!13505) (csize!27240 Int) (cheight!13716 Int)) (Leaf!20867 (xs!16811 IArray!27015) (csize!27241 Int)) (Empty!13505) )
))
(declare-datatypes ((BalanceConc!26604 0))(
  ( (BalanceConc!26605 (c!707866 Conc!13505)) )
))
(declare-datatypes ((Regex!12199 0))(
  ( (ElementMatch!12199 (c!707867 C!24584)) (Concat!19724 (regOne!24910 Regex!12199) (regTwo!24910 Regex!12199)) (EmptyExpr!12199) (Star!12199 (reg!12528 Regex!12199)) (EmptyLang!12199) (Union!12199 (regOne!24911 Regex!12199) (regTwo!24911 Regex!12199)) )
))
(declare-datatypes ((String!51370 0))(
  ( (String!51371 (value!228432 String)) )
))
(declare-datatypes ((TokenValueInjection!14476 0))(
  ( (TokenValueInjection!14477 (toValue!9946 Int) (toChars!9805 Int)) )
))
(declare-datatypes ((Rule!14388 0))(
  ( (Rule!14389 (regex!7294 Regex!12199) (tag!8154 String!51370) (isSeparator!7294 Bool) (transformation!7294 TokenValueInjection!14476)) )
))
(declare-datatypes ((List!44743 0))(
  ( (Nil!44619) (Cons!44619 (h!50039 Rule!14388) (t!340952 List!44743)) )
))
(declare-fun rules!3756 () List!44743)

(declare-fun isEmpty!26556 (List!44743) Bool)

(assert (=> b!4123634 (= res!1685166 (not (isEmpty!26556 rules!3756)))))

(declare-fun rBis!149 () Rule!14388)

(declare-fun e!2558758 () Bool)

(declare-fun b!4123635 () Bool)

(declare-fun e!2558757 () Bool)

(declare-fun tp!1256654 () Bool)

(declare-fun inv!59196 (String!51370) Bool)

(declare-fun inv!59198 (TokenValueInjection!14476) Bool)

(assert (=> b!4123635 (= e!2558757 (and tp!1256654 (inv!59196 (tag!8154 rBis!149)) (inv!59198 (transformation!7294 rBis!149)) e!2558758))))

(declare-fun b!4123636 () Bool)

(declare-fun e!2558754 () Bool)

(assert (=> b!4123636 (= e!2558769 e!2558754)))

(declare-fun res!1685167 () Bool)

(assert (=> b!4123636 (=> (not res!1685167) (not e!2558754))))

(declare-fun input!3238 () List!44742)

(declare-datatypes ((LexerInterface!6883 0))(
  ( (LexerInterfaceExt!6880 (__x!27266 Int)) (Lexer!6881) )
))
(declare-fun thiss!25645 () LexerInterface!6883)

(declare-datatypes ((Token!13518 0))(
  ( (Token!13519 (value!228433 TokenValue!7524) (rule!10374 Rule!14388) (size!33036 Int) (originalCharacters!7790 List!44742)) )
))
(declare-datatypes ((tuple2!43074 0))(
  ( (tuple2!43075 (_1!24671 Token!13518) (_2!24671 List!44742)) )
))
(declare-fun lt!1471290 () tuple2!43074)

(declare-datatypes ((Option!9602 0))(
  ( (None!9601) (Some!9601 (v!40193 tuple2!43074)) )
))
(declare-fun maxPrefix!4075 (LexerInterface!6883 List!44743 List!44742) Option!9602)

(assert (=> b!4123636 (= res!1685167 (= (maxPrefix!4075 thiss!25645 rules!3756 input!3238) (Some!9601 lt!1471290)))))

(declare-fun lt!1471299 () TokenValue!7524)

(declare-fun p!2912 () List!44742)

(declare-fun lt!1471293 () Int)

(declare-fun r!4008 () Rule!14388)

(declare-fun getSuffix!2558 (List!44742 List!44742) List!44742)

(assert (=> b!4123636 (= lt!1471290 (tuple2!43075 (Token!13519 lt!1471299 r!4008 lt!1471293 p!2912) (getSuffix!2558 input!3238 p!2912)))))

(declare-fun size!33037 (List!44742) Int)

(assert (=> b!4123636 (= lt!1471293 (size!33037 p!2912))))

(declare-fun lt!1471294 () BalanceConc!26604)

(declare-fun apply!10367 (TokenValueInjection!14476 BalanceConc!26604) TokenValue!7524)

(assert (=> b!4123636 (= lt!1471299 (apply!10367 (transformation!7294 r!4008) lt!1471294))))

(declare-datatypes ((Unit!63959 0))(
  ( (Unit!63960) )
))
(declare-fun lt!1471289 () Unit!63959)

(declare-fun lemmaSemiInverse!2152 (TokenValueInjection!14476 BalanceConc!26604) Unit!63959)

(assert (=> b!4123636 (= lt!1471289 (lemmaSemiInverse!2152 (transformation!7294 r!4008) lt!1471294))))

(declare-fun seqFromList!5411 (List!44742) BalanceConc!26604)

(assert (=> b!4123636 (= lt!1471294 (seqFromList!5411 p!2912))))

(declare-fun e!2558759 () Bool)

(declare-fun b!4123637 () Bool)

(declare-fun e!2558760 () Bool)

(declare-fun tp!1256653 () Bool)

(assert (=> b!4123637 (= e!2558759 (and tp!1256653 (inv!59196 (tag!8154 r!4008)) (inv!59198 (transformation!7294 r!4008)) e!2558760))))

(declare-fun res!1685171 () Bool)

(assert (=> start!391110 (=> (not res!1685171) (not e!2558769))))

(get-info :version)

(assert (=> start!391110 (= res!1685171 ((_ is Lexer!6881) thiss!25645))))

(assert (=> start!391110 e!2558769))

(declare-fun e!2558761 () Bool)

(assert (=> start!391110 e!2558761))

(declare-fun e!2558768 () Bool)

(assert (=> start!391110 e!2558768))

(assert (=> start!391110 true))

(assert (=> start!391110 e!2558759))

(declare-fun e!2558756 () Bool)

(assert (=> start!391110 e!2558756))

(assert (=> start!391110 e!2558757))

(declare-fun b!4123638 () Bool)

(declare-fun res!1685169 () Bool)

(assert (=> b!4123638 (=> (not res!1685169) (not e!2558769))))

(declare-fun isEmpty!26557 (List!44742) Bool)

(assert (=> b!4123638 (= res!1685169 (not (isEmpty!26557 p!2912)))))

(declare-fun b!4123639 () Bool)

(declare-fun e!2558755 () Bool)

(assert (=> b!4123639 (= e!2558754 (not e!2558755))))

(declare-fun res!1685162 () Bool)

(assert (=> b!4123639 (=> res!1685162 e!2558755)))

(assert (=> b!4123639 (= res!1685162 (or (not ((_ is Cons!44619) rules!3756)) (not (= (h!50039 rules!3756) rBis!149))))))

(declare-fun lt!1471292 () Unit!63959)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2146 (LexerInterface!6883 Rule!14388 List!44743) Unit!63959)

(assert (=> b!4123639 (= lt!1471292 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2146 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3102 (LexerInterface!6883 Rule!14388) Bool)

(assert (=> b!4123639 (ruleValid!3102 thiss!25645 rBis!149)))

(declare-fun lt!1471295 () Unit!63959)

(assert (=> b!4123639 (= lt!1471295 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2146 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4123640 () Bool)

(declare-fun e!2558765 () Bool)

(declare-fun tp!1256655 () Bool)

(assert (=> b!4123640 (= e!2558761 (and e!2558765 tp!1256655))))

(declare-fun b!4123641 () Bool)

(declare-fun res!1685174 () Bool)

(assert (=> b!4123641 (=> (not res!1685174) (not e!2558754))))

(declare-fun getIndex!642 (List!44743 Rule!14388) Int)

(assert (=> b!4123641 (= res!1685174 (< (getIndex!642 rules!3756 rBis!149) (getIndex!642 rules!3756 r!4008)))))

(declare-fun e!2558767 () Bool)

(assert (=> b!4123642 (= e!2558767 (and tp!1256652 tp!1256662))))

(declare-fun b!4123643 () Bool)

(declare-fun res!1685163 () Bool)

(assert (=> b!4123643 (=> (not res!1685163) (not e!2558769))))

(declare-fun contains!8966 (List!44743 Rule!14388) Bool)

(assert (=> b!4123643 (= res!1685163 (contains!8966 rules!3756 r!4008))))

(declare-fun b!4123644 () Bool)

(declare-fun res!1685172 () Bool)

(assert (=> b!4123644 (=> (not res!1685172) (not e!2558754))))

(assert (=> b!4123644 (= res!1685172 (ruleValid!3102 thiss!25645 r!4008))))

(declare-fun b!4123645 () Bool)

(declare-fun e!2558766 () Bool)

(declare-fun validRegex!5486 (Regex!12199) Bool)

(assert (=> b!4123645 (= e!2558766 (validRegex!5486 (regex!7294 rBis!149)))))

(declare-fun lt!1471300 () tuple2!43074)

(assert (=> b!4123645 (and (not (= (tag!8154 rBis!149) (tag!8154 r!4008))) (not (= lt!1471300 lt!1471290)))))

(declare-fun lt!1471298 () Unit!63959)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!52 (LexerInterface!6883 List!44743 Rule!14388 Rule!14388) Unit!63959)

(assert (=> b!4123645 (= lt!1471298 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!52 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> b!4123646 (= e!2558760 (and tp!1256659 tp!1256660))))

(declare-fun b!4123647 () Bool)

(declare-fun res!1685170 () Bool)

(assert (=> b!4123647 (=> (not res!1685170) (not e!2558769))))

(declare-fun isPrefix!4229 (List!44742 List!44742) Bool)

(assert (=> b!4123647 (= res!1685170 (isPrefix!4229 p!2912 input!3238))))

(declare-fun b!4123648 () Bool)

(declare-fun e!2558770 () Bool)

(assert (=> b!4123648 (= e!2558770 e!2558766)))

(declare-fun res!1685173 () Bool)

(assert (=> b!4123648 (=> res!1685173 e!2558766)))

(declare-fun lt!1471296 () Int)

(assert (=> b!4123648 (= res!1685173 (or (> lt!1471296 lt!1471293) (< lt!1471296 lt!1471293)))))

(declare-fun size!33038 (BalanceConc!26604) Int)

(declare-fun charsOf!4916 (Token!13518) BalanceConc!26604)

(assert (=> b!4123648 (= lt!1471296 (size!33038 (charsOf!4916 (_1!24671 lt!1471300))))))

(declare-fun lt!1471297 () Option!9602)

(declare-fun get!14559 (Option!9602) tuple2!43074)

(assert (=> b!4123648 (= lt!1471300 (get!14559 lt!1471297))))

(declare-fun b!4123649 () Bool)

(declare-fun tp_is_empty!21321 () Bool)

(declare-fun tp!1256657 () Bool)

(assert (=> b!4123649 (= e!2558756 (and tp_is_empty!21321 tp!1256657))))

(assert (=> b!4123650 (= e!2558758 (and tp!1256658 tp!1256661))))

(declare-fun b!4123651 () Bool)

(declare-fun res!1685164 () Bool)

(assert (=> b!4123651 (=> (not res!1685164) (not e!2558769))))

(assert (=> b!4123651 (= res!1685164 (contains!8966 rules!3756 rBis!149))))

(declare-fun b!4123652 () Bool)

(assert (=> b!4123652 (= e!2558755 e!2558770)))

(declare-fun res!1685165 () Bool)

(assert (=> b!4123652 (=> res!1685165 e!2558770)))

(declare-fun isEmpty!26558 (Option!9602) Bool)

(assert (=> b!4123652 (= res!1685165 (isEmpty!26558 lt!1471297))))

(declare-fun maxPrefixOneRule!3025 (LexerInterface!6883 Rule!14388 List!44742) Option!9602)

(assert (=> b!4123652 (= lt!1471297 (maxPrefixOneRule!3025 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4123652 (not (= rBis!149 r!4008))))

(declare-fun lt!1471291 () Unit!63959)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!34 (LexerInterface!6883 List!44743 Rule!14388 Rule!14388) Unit!63959)

(assert (=> b!4123652 (= lt!1471291 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!34 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6457 (List!44743) List!44743)

(assert (=> b!4123652 (contains!8966 (tail!6457 rules!3756) r!4008)))

(declare-fun lt!1471288 () Unit!63959)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!36 (List!44743 Rule!14388 Rule!14388) Unit!63959)

(assert (=> b!4123652 (= lt!1471288 (lemmaGetIndexBiggerAndHeadEqThenTailContains!36 rules!3756 rBis!149 r!4008))))

(declare-fun b!4123653 () Bool)

(declare-fun tp!1256651 () Bool)

(assert (=> b!4123653 (= e!2558768 (and tp_is_empty!21321 tp!1256651))))

(declare-fun b!4123654 () Bool)

(declare-fun res!1685161 () Bool)

(assert (=> b!4123654 (=> (not res!1685161) (not e!2558769))))

(declare-fun rulesInvariant!6180 (LexerInterface!6883 List!44743) Bool)

(assert (=> b!4123654 (= res!1685161 (rulesInvariant!6180 thiss!25645 rules!3756))))

(declare-fun tp!1256656 () Bool)

(declare-fun b!4123655 () Bool)

(assert (=> b!4123655 (= e!2558765 (and tp!1256656 (inv!59196 (tag!8154 (h!50039 rules!3756))) (inv!59198 (transformation!7294 (h!50039 rules!3756))) e!2558767))))

(declare-fun b!4123656 () Bool)

(declare-fun res!1685168 () Bool)

(assert (=> b!4123656 (=> (not res!1685168) (not e!2558754))))

(declare-fun matchR!6030 (Regex!12199 List!44742) Bool)

(assert (=> b!4123656 (= res!1685168 (matchR!6030 (regex!7294 r!4008) p!2912))))

(assert (= (and start!391110 res!1685171) b!4123647))

(assert (= (and b!4123647 res!1685170) b!4123634))

(assert (= (and b!4123634 res!1685166) b!4123654))

(assert (= (and b!4123654 res!1685161) b!4123643))

(assert (= (and b!4123643 res!1685163) b!4123651))

(assert (= (and b!4123651 res!1685164) b!4123638))

(assert (= (and b!4123638 res!1685169) b!4123636))

(assert (= (and b!4123636 res!1685167) b!4123656))

(assert (= (and b!4123656 res!1685168) b!4123641))

(assert (= (and b!4123641 res!1685174) b!4123644))

(assert (= (and b!4123644 res!1685172) b!4123639))

(assert (= (and b!4123639 (not res!1685162)) b!4123652))

(assert (= (and b!4123652 (not res!1685165)) b!4123648))

(assert (= (and b!4123648 (not res!1685173)) b!4123645))

(assert (= b!4123655 b!4123642))

(assert (= b!4123640 b!4123655))

(assert (= (and start!391110 ((_ is Cons!44619) rules!3756)) b!4123640))

(assert (= (and start!391110 ((_ is Cons!44618) p!2912)) b!4123653))

(assert (= b!4123637 b!4123646))

(assert (= start!391110 b!4123637))

(assert (= (and start!391110 ((_ is Cons!44618) input!3238)) b!4123649))

(assert (= b!4123635 b!4123650))

(assert (= start!391110 b!4123635))

(declare-fun m!4722633 () Bool)

(assert (=> b!4123648 m!4722633))

(assert (=> b!4123648 m!4722633))

(declare-fun m!4722635 () Bool)

(assert (=> b!4123648 m!4722635))

(declare-fun m!4722637 () Bool)

(assert (=> b!4123648 m!4722637))

(declare-fun m!4722639 () Bool)

(assert (=> b!4123655 m!4722639))

(declare-fun m!4722641 () Bool)

(assert (=> b!4123655 m!4722641))

(declare-fun m!4722643 () Bool)

(assert (=> b!4123641 m!4722643))

(declare-fun m!4722645 () Bool)

(assert (=> b!4123641 m!4722645))

(declare-fun m!4722647 () Bool)

(assert (=> b!4123645 m!4722647))

(declare-fun m!4722649 () Bool)

(assert (=> b!4123645 m!4722649))

(declare-fun m!4722651 () Bool)

(assert (=> b!4123643 m!4722651))

(declare-fun m!4722653 () Bool)

(assert (=> b!4123634 m!4722653))

(declare-fun m!4722655 () Bool)

(assert (=> b!4123636 m!4722655))

(declare-fun m!4722657 () Bool)

(assert (=> b!4123636 m!4722657))

(declare-fun m!4722659 () Bool)

(assert (=> b!4123636 m!4722659))

(declare-fun m!4722661 () Bool)

(assert (=> b!4123636 m!4722661))

(declare-fun m!4722663 () Bool)

(assert (=> b!4123636 m!4722663))

(declare-fun m!4722665 () Bool)

(assert (=> b!4123636 m!4722665))

(declare-fun m!4722667 () Bool)

(assert (=> b!4123637 m!4722667))

(declare-fun m!4722669 () Bool)

(assert (=> b!4123637 m!4722669))

(declare-fun m!4722671 () Bool)

(assert (=> b!4123635 m!4722671))

(declare-fun m!4722673 () Bool)

(assert (=> b!4123635 m!4722673))

(declare-fun m!4722675 () Bool)

(assert (=> b!4123647 m!4722675))

(declare-fun m!4722677 () Bool)

(assert (=> b!4123651 m!4722677))

(declare-fun m!4722679 () Bool)

(assert (=> b!4123652 m!4722679))

(declare-fun m!4722681 () Bool)

(assert (=> b!4123652 m!4722681))

(declare-fun m!4722683 () Bool)

(assert (=> b!4123652 m!4722683))

(assert (=> b!4123652 m!4722679))

(declare-fun m!4722685 () Bool)

(assert (=> b!4123652 m!4722685))

(declare-fun m!4722687 () Bool)

(assert (=> b!4123652 m!4722687))

(declare-fun m!4722689 () Bool)

(assert (=> b!4123652 m!4722689))

(declare-fun m!4722691 () Bool)

(assert (=> b!4123639 m!4722691))

(declare-fun m!4722693 () Bool)

(assert (=> b!4123639 m!4722693))

(declare-fun m!4722695 () Bool)

(assert (=> b!4123639 m!4722695))

(declare-fun m!4722697 () Bool)

(assert (=> b!4123654 m!4722697))

(declare-fun m!4722699 () Bool)

(assert (=> b!4123638 m!4722699))

(declare-fun m!4722701 () Bool)

(assert (=> b!4123656 m!4722701))

(declare-fun m!4722703 () Bool)

(assert (=> b!4123644 m!4722703))

(check-sat (not b_next!117437) (not b!4123655) (not b!4123634) b_and!319135 (not b!4123636) (not b_next!117443) tp_is_empty!21321 (not b!4123652) (not b_next!117445) b_and!319127 (not b_next!117435) (not b!4123651) (not b!4123643) b_and!319125 (not b_next!117439) b_and!319133 (not b!4123635) (not b!4123656) (not b!4123645) (not b!4123653) b_and!319129 (not b!4123637) (not b!4123654) (not b!4123638) (not b!4123649) (not b_next!117441) (not b!4123641) (not b!4123639) (not b!4123644) (not b!4123647) (not b!4123648) b_and!319131 (not b!4123640))
(check-sat (not b_next!117437) b_and!319135 b_and!319133 (not b_next!117443) b_and!319129 (not b_next!117445) b_and!319127 (not b_next!117441) b_and!319131 (not b_next!117435) b_and!319125 (not b_next!117439))
(get-model)

(declare-fun d!1222176 () Bool)

(assert (=> d!1222176 (= (inv!59196 (tag!8154 rBis!149)) (= (mod (str.len (value!228432 (tag!8154 rBis!149))) 2) 0))))

(assert (=> b!4123635 d!1222176))

(declare-fun d!1222178 () Bool)

(declare-fun res!1685195 () Bool)

(declare-fun e!2558782 () Bool)

(assert (=> d!1222178 (=> (not res!1685195) (not e!2558782))))

(declare-fun semiInverseModEq!3140 (Int Int) Bool)

(assert (=> d!1222178 (= res!1685195 (semiInverseModEq!3140 (toChars!9805 (transformation!7294 rBis!149)) (toValue!9946 (transformation!7294 rBis!149))))))

(assert (=> d!1222178 (= (inv!59198 (transformation!7294 rBis!149)) e!2558782)))

(declare-fun b!4123668 () Bool)

(declare-fun equivClasses!3039 (Int Int) Bool)

(assert (=> b!4123668 (= e!2558782 (equivClasses!3039 (toChars!9805 (transformation!7294 rBis!149)) (toValue!9946 (transformation!7294 rBis!149))))))

(assert (= (and d!1222178 res!1685195) b!4123668))

(declare-fun m!4722713 () Bool)

(assert (=> d!1222178 m!4722713))

(declare-fun m!4722715 () Bool)

(assert (=> b!4123668 m!4722715))

(assert (=> b!4123635 d!1222178))

(declare-fun b!4123687 () Bool)

(declare-fun e!2558802 () Bool)

(declare-fun call!290017 () Bool)

(assert (=> b!4123687 (= e!2558802 call!290017)))

(declare-fun b!4123688 () Bool)

(declare-fun e!2558799 () Bool)

(assert (=> b!4123688 (= e!2558799 e!2558802)))

(declare-fun res!1685207 () Bool)

(declare-fun nullable!4279 (Regex!12199) Bool)

(assert (=> b!4123688 (= res!1685207 (not (nullable!4279 (reg!12528 (regex!7294 rBis!149)))))))

(assert (=> b!4123688 (=> (not res!1685207) (not e!2558802))))

(declare-fun d!1222186 () Bool)

(declare-fun res!1685209 () Bool)

(declare-fun e!2558803 () Bool)

(assert (=> d!1222186 (=> res!1685209 e!2558803)))

(assert (=> d!1222186 (= res!1685209 ((_ is ElementMatch!12199) (regex!7294 rBis!149)))))

(assert (=> d!1222186 (= (validRegex!5486 (regex!7294 rBis!149)) e!2558803)))

(declare-fun b!4123689 () Bool)

(declare-fun e!2558800 () Bool)

(declare-fun call!290018 () Bool)

(assert (=> b!4123689 (= e!2558800 call!290018)))

(declare-fun b!4123690 () Bool)

(assert (=> b!4123690 (= e!2558803 e!2558799)))

(declare-fun c!707872 () Bool)

(assert (=> b!4123690 (= c!707872 ((_ is Star!12199) (regex!7294 rBis!149)))))

(declare-fun bm!290012 () Bool)

(declare-fun call!290019 () Bool)

(assert (=> bm!290012 (= call!290019 call!290017)))

(declare-fun b!4123691 () Bool)

(declare-fun e!2558801 () Bool)

(assert (=> b!4123691 (= e!2558801 call!290018)))

(declare-fun b!4123692 () Bool)

(declare-fun e!2558798 () Bool)

(assert (=> b!4123692 (= e!2558799 e!2558798)))

(declare-fun c!707873 () Bool)

(assert (=> b!4123692 (= c!707873 ((_ is Union!12199) (regex!7294 rBis!149)))))

(declare-fun bm!290013 () Bool)

(assert (=> bm!290013 (= call!290017 (validRegex!5486 (ite c!707872 (reg!12528 (regex!7294 rBis!149)) (ite c!707873 (regOne!24911 (regex!7294 rBis!149)) (regOne!24910 (regex!7294 rBis!149))))))))

(declare-fun b!4123693 () Bool)

(declare-fun res!1685206 () Bool)

(declare-fun e!2558797 () Bool)

(assert (=> b!4123693 (=> res!1685206 e!2558797)))

(assert (=> b!4123693 (= res!1685206 (not ((_ is Concat!19724) (regex!7294 rBis!149))))))

(assert (=> b!4123693 (= e!2558798 e!2558797)))

(declare-fun bm!290014 () Bool)

(assert (=> bm!290014 (= call!290018 (validRegex!5486 (ite c!707873 (regTwo!24911 (regex!7294 rBis!149)) (regTwo!24910 (regex!7294 rBis!149)))))))

(declare-fun b!4123694 () Bool)

(declare-fun res!1685210 () Bool)

(assert (=> b!4123694 (=> (not res!1685210) (not e!2558801))))

(assert (=> b!4123694 (= res!1685210 call!290019)))

(assert (=> b!4123694 (= e!2558798 e!2558801)))

(declare-fun b!4123695 () Bool)

(assert (=> b!4123695 (= e!2558797 e!2558800)))

(declare-fun res!1685208 () Bool)

(assert (=> b!4123695 (=> (not res!1685208) (not e!2558800))))

(assert (=> b!4123695 (= res!1685208 call!290019)))

(assert (= (and d!1222186 (not res!1685209)) b!4123690))

(assert (= (and b!4123690 c!707872) b!4123688))

(assert (= (and b!4123690 (not c!707872)) b!4123692))

(assert (= (and b!4123688 res!1685207) b!4123687))

(assert (= (and b!4123692 c!707873) b!4123694))

(assert (= (and b!4123692 (not c!707873)) b!4123693))

(assert (= (and b!4123694 res!1685210) b!4123691))

(assert (= (and b!4123693 (not res!1685206)) b!4123695))

(assert (= (and b!4123695 res!1685208) b!4123689))

(assert (= (or b!4123694 b!4123695) bm!290012))

(assert (= (or b!4123691 b!4123689) bm!290014))

(assert (= (or b!4123687 bm!290012) bm!290013))

(declare-fun m!4722717 () Bool)

(assert (=> b!4123688 m!4722717))

(declare-fun m!4722719 () Bool)

(assert (=> bm!290013 m!4722719))

(declare-fun m!4722721 () Bool)

(assert (=> bm!290014 m!4722721))

(assert (=> b!4123645 d!1222186))

(declare-fun d!1222190 () Bool)

(assert (=> d!1222190 (not (= (tag!8154 rBis!149) (tag!8154 r!4008)))))

(declare-fun lt!1471309 () Unit!63959)

(declare-fun choose!25210 (LexerInterface!6883 List!44743 Rule!14388 Rule!14388) Unit!63959)

(assert (=> d!1222190 (= lt!1471309 (choose!25210 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1222190 (contains!8966 rules!3756 rBis!149)))

(assert (=> d!1222190 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!52 thiss!25645 rules!3756 rBis!149 r!4008) lt!1471309)))

(declare-fun bs!594752 () Bool)

(assert (= bs!594752 d!1222190))

(declare-fun m!4722723 () Bool)

(assert (=> bs!594752 m!4722723))

(assert (=> bs!594752 m!4722677))

(assert (=> b!4123645 d!1222190))

(declare-fun b!4123724 () Bool)

(declare-fun res!1685232 () Bool)

(declare-fun e!2558819 () Bool)

(assert (=> b!4123724 (=> res!1685232 e!2558819)))

(declare-fun tail!6459 (List!44742) List!44742)

(assert (=> b!4123724 (= res!1685232 (not (isEmpty!26557 (tail!6459 p!2912))))))

(declare-fun b!4123725 () Bool)

(declare-fun e!2558820 () Bool)

(declare-fun e!2558823 () Bool)

(assert (=> b!4123725 (= e!2558820 e!2558823)))

(declare-fun c!707882 () Bool)

(assert (=> b!4123725 (= c!707882 ((_ is EmptyLang!12199) (regex!7294 r!4008)))))

(declare-fun d!1222192 () Bool)

(assert (=> d!1222192 e!2558820))

(declare-fun c!707880 () Bool)

(assert (=> d!1222192 (= c!707880 ((_ is EmptyExpr!12199) (regex!7294 r!4008)))))

(declare-fun lt!1471312 () Bool)

(declare-fun e!2558821 () Bool)

(assert (=> d!1222192 (= lt!1471312 e!2558821)))

(declare-fun c!707881 () Bool)

(assert (=> d!1222192 (= c!707881 (isEmpty!26557 p!2912))))

(assert (=> d!1222192 (validRegex!5486 (regex!7294 r!4008))))

(assert (=> d!1222192 (= (matchR!6030 (regex!7294 r!4008) p!2912) lt!1471312)))

(declare-fun b!4123726 () Bool)

(declare-fun head!8687 (List!44742) C!24584)

(assert (=> b!4123726 (= e!2558819 (not (= (head!8687 p!2912) (c!707867 (regex!7294 r!4008)))))))

(declare-fun b!4123727 () Bool)

(assert (=> b!4123727 (= e!2558821 (nullable!4279 (regex!7294 r!4008)))))

(declare-fun b!4123728 () Bool)

(declare-fun res!1685229 () Bool)

(declare-fun e!2558822 () Bool)

(assert (=> b!4123728 (=> (not res!1685229) (not e!2558822))))

(declare-fun call!290022 () Bool)

(assert (=> b!4123728 (= res!1685229 (not call!290022))))

(declare-fun b!4123729 () Bool)

(assert (=> b!4123729 (= e!2558822 (= (head!8687 p!2912) (c!707867 (regex!7294 r!4008))))))

(declare-fun b!4123730 () Bool)

(declare-fun res!1685230 () Bool)

(declare-fun e!2558824 () Bool)

(assert (=> b!4123730 (=> res!1685230 e!2558824)))

(assert (=> b!4123730 (= res!1685230 (not ((_ is ElementMatch!12199) (regex!7294 r!4008))))))

(assert (=> b!4123730 (= e!2558823 e!2558824)))

(declare-fun b!4123731 () Bool)

(declare-fun res!1685231 () Bool)

(assert (=> b!4123731 (=> (not res!1685231) (not e!2558822))))

(assert (=> b!4123731 (= res!1685231 (isEmpty!26557 (tail!6459 p!2912)))))

(declare-fun b!4123732 () Bool)

(declare-fun e!2558818 () Bool)

(assert (=> b!4123732 (= e!2558824 e!2558818)))

(declare-fun res!1685233 () Bool)

(assert (=> b!4123732 (=> (not res!1685233) (not e!2558818))))

(assert (=> b!4123732 (= res!1685233 (not lt!1471312))))

(declare-fun bm!290017 () Bool)

(assert (=> bm!290017 (= call!290022 (isEmpty!26557 p!2912))))

(declare-fun b!4123733 () Bool)

(declare-fun res!1685228 () Bool)

(assert (=> b!4123733 (=> res!1685228 e!2558824)))

(assert (=> b!4123733 (= res!1685228 e!2558822)))

(declare-fun res!1685227 () Bool)

(assert (=> b!4123733 (=> (not res!1685227) (not e!2558822))))

(assert (=> b!4123733 (= res!1685227 lt!1471312)))

(declare-fun b!4123734 () Bool)

(assert (=> b!4123734 (= e!2558823 (not lt!1471312))))

(declare-fun b!4123735 () Bool)

(declare-fun derivativeStep!3674 (Regex!12199 C!24584) Regex!12199)

(assert (=> b!4123735 (= e!2558821 (matchR!6030 (derivativeStep!3674 (regex!7294 r!4008) (head!8687 p!2912)) (tail!6459 p!2912)))))

(declare-fun b!4123736 () Bool)

(assert (=> b!4123736 (= e!2558818 e!2558819)))

(declare-fun res!1685234 () Bool)

(assert (=> b!4123736 (=> res!1685234 e!2558819)))

(assert (=> b!4123736 (= res!1685234 call!290022)))

(declare-fun b!4123737 () Bool)

(assert (=> b!4123737 (= e!2558820 (= lt!1471312 call!290022))))

(assert (= (and d!1222192 c!707881) b!4123727))

(assert (= (and d!1222192 (not c!707881)) b!4123735))

(assert (= (and d!1222192 c!707880) b!4123737))

(assert (= (and d!1222192 (not c!707880)) b!4123725))

(assert (= (and b!4123725 c!707882) b!4123734))

(assert (= (and b!4123725 (not c!707882)) b!4123730))

(assert (= (and b!4123730 (not res!1685230)) b!4123733))

(assert (= (and b!4123733 res!1685227) b!4123728))

(assert (= (and b!4123728 res!1685229) b!4123731))

(assert (= (and b!4123731 res!1685231) b!4123729))

(assert (= (and b!4123733 (not res!1685228)) b!4123732))

(assert (= (and b!4123732 res!1685233) b!4123736))

(assert (= (and b!4123736 (not res!1685234)) b!4123724))

(assert (= (and b!4123724 (not res!1685232)) b!4123726))

(assert (= (or b!4123737 b!4123736 b!4123728) bm!290017))

(declare-fun m!4722725 () Bool)

(assert (=> b!4123726 m!4722725))

(declare-fun m!4722727 () Bool)

(assert (=> b!4123727 m!4722727))

(declare-fun m!4722729 () Bool)

(assert (=> b!4123731 m!4722729))

(assert (=> b!4123731 m!4722729))

(declare-fun m!4722731 () Bool)

(assert (=> b!4123731 m!4722731))

(assert (=> d!1222192 m!4722699))

(declare-fun m!4722733 () Bool)

(assert (=> d!1222192 m!4722733))

(assert (=> bm!290017 m!4722699))

(assert (=> b!4123724 m!4722729))

(assert (=> b!4123724 m!4722729))

(assert (=> b!4123724 m!4722731))

(assert (=> b!4123735 m!4722725))

(assert (=> b!4123735 m!4722725))

(declare-fun m!4722735 () Bool)

(assert (=> b!4123735 m!4722735))

(assert (=> b!4123735 m!4722729))

(assert (=> b!4123735 m!4722735))

(assert (=> b!4123735 m!4722729))

(declare-fun m!4722737 () Bool)

(assert (=> b!4123735 m!4722737))

(assert (=> b!4123729 m!4722725))

(assert (=> b!4123656 d!1222192))

(declare-fun d!1222194 () Bool)

(assert (=> d!1222194 (= (inv!59196 (tag!8154 (h!50039 rules!3756))) (= (mod (str.len (value!228432 (tag!8154 (h!50039 rules!3756)))) 2) 0))))

(assert (=> b!4123655 d!1222194))

(declare-fun d!1222196 () Bool)

(declare-fun res!1685235 () Bool)

(declare-fun e!2558825 () Bool)

(assert (=> d!1222196 (=> (not res!1685235) (not e!2558825))))

(assert (=> d!1222196 (= res!1685235 (semiInverseModEq!3140 (toChars!9805 (transformation!7294 (h!50039 rules!3756))) (toValue!9946 (transformation!7294 (h!50039 rules!3756)))))))

(assert (=> d!1222196 (= (inv!59198 (transformation!7294 (h!50039 rules!3756))) e!2558825)))

(declare-fun b!4123738 () Bool)

(assert (=> b!4123738 (= e!2558825 (equivClasses!3039 (toChars!9805 (transformation!7294 (h!50039 rules!3756))) (toValue!9946 (transformation!7294 (h!50039 rules!3756)))))))

(assert (= (and d!1222196 res!1685235) b!4123738))

(declare-fun m!4722739 () Bool)

(assert (=> d!1222196 m!4722739))

(declare-fun m!4722741 () Bool)

(assert (=> b!4123738 m!4722741))

(assert (=> b!4123655 d!1222196))

(declare-fun d!1222198 () Bool)

(assert (=> d!1222198 (= (isEmpty!26556 rules!3756) ((_ is Nil!44619) rules!3756))))

(assert (=> b!4123634 d!1222198))

(declare-fun d!1222200 () Bool)

(declare-fun res!1685242 () Bool)

(declare-fun e!2558832 () Bool)

(assert (=> d!1222200 (=> (not res!1685242) (not e!2558832))))

(assert (=> d!1222200 (= res!1685242 (validRegex!5486 (regex!7294 r!4008)))))

(assert (=> d!1222200 (= (ruleValid!3102 thiss!25645 r!4008) e!2558832)))

(declare-fun b!4123749 () Bool)

(declare-fun res!1685243 () Bool)

(assert (=> b!4123749 (=> (not res!1685243) (not e!2558832))))

(assert (=> b!4123749 (= res!1685243 (not (nullable!4279 (regex!7294 r!4008))))))

(declare-fun b!4123750 () Bool)

(assert (=> b!4123750 (= e!2558832 (not (= (tag!8154 r!4008) (String!51371 ""))))))

(assert (= (and d!1222200 res!1685242) b!4123749))

(assert (= (and b!4123749 res!1685243) b!4123750))

(assert (=> d!1222200 m!4722733))

(assert (=> b!4123749 m!4722727))

(assert (=> b!4123644 d!1222200))

(declare-fun d!1222202 () Bool)

(assert (=> d!1222202 (= (isEmpty!26557 p!2912) ((_ is Nil!44618) p!2912))))

(assert (=> b!4123638 d!1222202))

(declare-fun d!1222204 () Bool)

(assert (=> d!1222204 (= (inv!59196 (tag!8154 r!4008)) (= (mod (str.len (value!228432 (tag!8154 r!4008))) 2) 0))))

(assert (=> b!4123637 d!1222204))

(declare-fun d!1222206 () Bool)

(declare-fun res!1685256 () Bool)

(declare-fun e!2558837 () Bool)

(assert (=> d!1222206 (=> (not res!1685256) (not e!2558837))))

(assert (=> d!1222206 (= res!1685256 (semiInverseModEq!3140 (toChars!9805 (transformation!7294 r!4008)) (toValue!9946 (transformation!7294 r!4008))))))

(assert (=> d!1222206 (= (inv!59198 (transformation!7294 r!4008)) e!2558837)))

(declare-fun b!4123763 () Bool)

(assert (=> b!4123763 (= e!2558837 (equivClasses!3039 (toChars!9805 (transformation!7294 r!4008)) (toValue!9946 (transformation!7294 r!4008))))))

(assert (= (and d!1222206 res!1685256) b!4123763))

(declare-fun m!4722743 () Bool)

(assert (=> d!1222206 m!4722743))

(declare-fun m!4722745 () Bool)

(assert (=> b!4123763 m!4722745))

(assert (=> b!4123637 d!1222206))

(declare-fun d!1222208 () Bool)

(declare-fun lt!1471325 () Int)

(declare-fun list!16367 (BalanceConc!26604) List!44742)

(assert (=> d!1222208 (= lt!1471325 (size!33037 (list!16367 (charsOf!4916 (_1!24671 lt!1471300)))))))

(declare-fun size!33039 (Conc!13505) Int)

(assert (=> d!1222208 (= lt!1471325 (size!33039 (c!707866 (charsOf!4916 (_1!24671 lt!1471300)))))))

(assert (=> d!1222208 (= (size!33038 (charsOf!4916 (_1!24671 lt!1471300))) lt!1471325)))

(declare-fun bs!594753 () Bool)

(assert (= bs!594753 d!1222208))

(assert (=> bs!594753 m!4722633))

(declare-fun m!4722747 () Bool)

(assert (=> bs!594753 m!4722747))

(assert (=> bs!594753 m!4722747))

(declare-fun m!4722749 () Bool)

(assert (=> bs!594753 m!4722749))

(declare-fun m!4722751 () Bool)

(assert (=> bs!594753 m!4722751))

(assert (=> b!4123648 d!1222208))

(declare-fun d!1222210 () Bool)

(declare-fun lt!1471333 () BalanceConc!26604)

(assert (=> d!1222210 (= (list!16367 lt!1471333) (originalCharacters!7790 (_1!24671 lt!1471300)))))

(declare-fun dynLambda!19069 (Int TokenValue!7524) BalanceConc!26604)

(assert (=> d!1222210 (= lt!1471333 (dynLambda!19069 (toChars!9805 (transformation!7294 (rule!10374 (_1!24671 lt!1471300)))) (value!228433 (_1!24671 lt!1471300))))))

(assert (=> d!1222210 (= (charsOf!4916 (_1!24671 lt!1471300)) lt!1471333)))

(declare-fun b_lambda!121003 () Bool)

(assert (=> (not b_lambda!121003) (not d!1222210)))

(declare-fun t!340954 () Bool)

(declare-fun tb!247431 () Bool)

(assert (=> (and b!4123646 (= (toChars!9805 (transformation!7294 r!4008)) (toChars!9805 (transformation!7294 (rule!10374 (_1!24671 lt!1471300))))) t!340954) tb!247431))

(declare-fun b!4123781 () Bool)

(declare-fun e!2558848 () Bool)

(declare-fun tp!1256665 () Bool)

(declare-fun inv!59201 (Conc!13505) Bool)

(assert (=> b!4123781 (= e!2558848 (and (inv!59201 (c!707866 (dynLambda!19069 (toChars!9805 (transformation!7294 (rule!10374 (_1!24671 lt!1471300)))) (value!228433 (_1!24671 lt!1471300))))) tp!1256665))))

(declare-fun result!300636 () Bool)

(declare-fun inv!59202 (BalanceConc!26604) Bool)

(assert (=> tb!247431 (= result!300636 (and (inv!59202 (dynLambda!19069 (toChars!9805 (transformation!7294 (rule!10374 (_1!24671 lt!1471300)))) (value!228433 (_1!24671 lt!1471300)))) e!2558848))))

(assert (= tb!247431 b!4123781))

(declare-fun m!4722809 () Bool)

(assert (=> b!4123781 m!4722809))

(declare-fun m!4722811 () Bool)

(assert (=> tb!247431 m!4722811))

(assert (=> d!1222210 t!340954))

(declare-fun b_and!319137 () Bool)

(assert (= b_and!319127 (and (=> t!340954 result!300636) b_and!319137)))

(declare-fun tb!247433 () Bool)

(declare-fun t!340956 () Bool)

(assert (=> (and b!4123642 (= (toChars!9805 (transformation!7294 (h!50039 rules!3756))) (toChars!9805 (transformation!7294 (rule!10374 (_1!24671 lt!1471300))))) t!340956) tb!247433))

(declare-fun result!300640 () Bool)

(assert (= result!300640 result!300636))

(assert (=> d!1222210 t!340956))

(declare-fun b_and!319139 () Bool)

(assert (= b_and!319131 (and (=> t!340956 result!300640) b_and!319139)))

(declare-fun t!340960 () Bool)

(declare-fun tb!247437 () Bool)

(assert (=> (and b!4123650 (= (toChars!9805 (transformation!7294 rBis!149)) (toChars!9805 (transformation!7294 (rule!10374 (_1!24671 lt!1471300))))) t!340960) tb!247437))

(declare-fun result!300644 () Bool)

(assert (= result!300644 result!300636))

(assert (=> d!1222210 t!340960))

(declare-fun b_and!319141 () Bool)

(assert (= b_and!319135 (and (=> t!340960 result!300644) b_and!319141)))

(declare-fun m!4722813 () Bool)

(assert (=> d!1222210 m!4722813))

(declare-fun m!4722815 () Bool)

(assert (=> d!1222210 m!4722815))

(assert (=> b!4123648 d!1222210))

(declare-fun d!1222222 () Bool)

(assert (=> d!1222222 (= (get!14559 lt!1471297) (v!40193 lt!1471297))))

(assert (=> b!4123648 d!1222222))

(declare-fun b!4123800 () Bool)

(declare-fun e!2558861 () Bool)

(assert (=> b!4123800 (= e!2558861 (isPrefix!4229 (tail!6459 p!2912) (tail!6459 input!3238)))))

(declare-fun b!4123801 () Bool)

(declare-fun e!2558862 () Bool)

(assert (=> b!4123801 (= e!2558862 (>= (size!33037 input!3238) (size!33037 p!2912)))))

(declare-fun d!1222226 () Bool)

(assert (=> d!1222226 e!2558862))

(declare-fun res!1685276 () Bool)

(assert (=> d!1222226 (=> res!1685276 e!2558862)))

(declare-fun lt!1471346 () Bool)

(assert (=> d!1222226 (= res!1685276 (not lt!1471346))))

(declare-fun e!2558863 () Bool)

(assert (=> d!1222226 (= lt!1471346 e!2558863)))

(declare-fun res!1685279 () Bool)

(assert (=> d!1222226 (=> res!1685279 e!2558863)))

(assert (=> d!1222226 (= res!1685279 ((_ is Nil!44618) p!2912))))

(assert (=> d!1222226 (= (isPrefix!4229 p!2912 input!3238) lt!1471346)))

(declare-fun b!4123799 () Bool)

(declare-fun res!1685278 () Bool)

(assert (=> b!4123799 (=> (not res!1685278) (not e!2558861))))

(assert (=> b!4123799 (= res!1685278 (= (head!8687 p!2912) (head!8687 input!3238)))))

(declare-fun b!4123798 () Bool)

(assert (=> b!4123798 (= e!2558863 e!2558861)))

(declare-fun res!1685277 () Bool)

(assert (=> b!4123798 (=> (not res!1685277) (not e!2558861))))

(assert (=> b!4123798 (= res!1685277 (not ((_ is Nil!44618) input!3238)))))

(assert (= (and d!1222226 (not res!1685279)) b!4123798))

(assert (= (and b!4123798 res!1685277) b!4123799))

(assert (= (and b!4123799 res!1685278) b!4123800))

(assert (= (and d!1222226 (not res!1685276)) b!4123801))

(assert (=> b!4123800 m!4722729))

(declare-fun m!4722827 () Bool)

(assert (=> b!4123800 m!4722827))

(assert (=> b!4123800 m!4722729))

(assert (=> b!4123800 m!4722827))

(declare-fun m!4722829 () Bool)

(assert (=> b!4123800 m!4722829))

(declare-fun m!4722831 () Bool)

(assert (=> b!4123801 m!4722831))

(assert (=> b!4123801 m!4722655))

(assert (=> b!4123799 m!4722725))

(declare-fun m!4722833 () Bool)

(assert (=> b!4123799 m!4722833))

(assert (=> b!4123647 d!1222226))

(declare-fun b!4123851 () Bool)

(declare-fun e!2558886 () Bool)

(assert (=> b!4123851 (= e!2558886 true)))

(declare-fun d!1222230 () Bool)

(assert (=> d!1222230 e!2558886))

(assert (= d!1222230 b!4123851))

(declare-fun order!23477 () Int)

(declare-fun order!23479 () Int)

(declare-fun lambda!128697 () Int)

(declare-fun dynLambda!19070 (Int Int) Int)

(declare-fun dynLambda!19071 (Int Int) Int)

(assert (=> b!4123851 (< (dynLambda!19070 order!23477 (toValue!9946 (transformation!7294 r!4008))) (dynLambda!19071 order!23479 lambda!128697))))

(declare-fun order!23481 () Int)

(declare-fun dynLambda!19072 (Int Int) Int)

(assert (=> b!4123851 (< (dynLambda!19072 order!23481 (toChars!9805 (transformation!7294 r!4008))) (dynLambda!19071 order!23479 lambda!128697))))

(declare-fun dynLambda!19073 (Int BalanceConc!26604) TokenValue!7524)

(assert (=> d!1222230 (= (list!16367 (dynLambda!19069 (toChars!9805 (transformation!7294 r!4008)) (dynLambda!19073 (toValue!9946 (transformation!7294 r!4008)) lt!1471294))) (list!16367 lt!1471294))))

(declare-fun lt!1471368 () Unit!63959)

(declare-fun ForallOf!924 (Int BalanceConc!26604) Unit!63959)

(assert (=> d!1222230 (= lt!1471368 (ForallOf!924 lambda!128697 lt!1471294))))

(assert (=> d!1222230 (= (lemmaSemiInverse!2152 (transformation!7294 r!4008) lt!1471294) lt!1471368)))

(declare-fun b_lambda!121011 () Bool)

(assert (=> (not b_lambda!121011) (not d!1222230)))

(declare-fun t!340972 () Bool)

(declare-fun tb!247449 () Bool)

(assert (=> (and b!4123646 (= (toChars!9805 (transformation!7294 r!4008)) (toChars!9805 (transformation!7294 r!4008))) t!340972) tb!247449))

(declare-fun tp!1256669 () Bool)

(declare-fun e!2558888 () Bool)

(declare-fun b!4123853 () Bool)

(assert (=> b!4123853 (= e!2558888 (and (inv!59201 (c!707866 (dynLambda!19069 (toChars!9805 (transformation!7294 r!4008)) (dynLambda!19073 (toValue!9946 (transformation!7294 r!4008)) lt!1471294)))) tp!1256669))))

(declare-fun result!300660 () Bool)

(assert (=> tb!247449 (= result!300660 (and (inv!59202 (dynLambda!19069 (toChars!9805 (transformation!7294 r!4008)) (dynLambda!19073 (toValue!9946 (transformation!7294 r!4008)) lt!1471294))) e!2558888))))

(assert (= tb!247449 b!4123853))

(declare-fun m!4722887 () Bool)

(assert (=> b!4123853 m!4722887))

(declare-fun m!4722889 () Bool)

(assert (=> tb!247449 m!4722889))

(assert (=> d!1222230 t!340972))

(declare-fun b_and!319161 () Bool)

(assert (= b_and!319137 (and (=> t!340972 result!300660) b_and!319161)))

(declare-fun tb!247451 () Bool)

(declare-fun t!340974 () Bool)

(assert (=> (and b!4123642 (= (toChars!9805 (transformation!7294 (h!50039 rules!3756))) (toChars!9805 (transformation!7294 r!4008))) t!340974) tb!247451))

(declare-fun result!300662 () Bool)

(assert (= result!300662 result!300660))

(assert (=> d!1222230 t!340974))

(declare-fun b_and!319163 () Bool)

(assert (= b_and!319139 (and (=> t!340974 result!300662) b_and!319163)))

(declare-fun t!340976 () Bool)

(declare-fun tb!247453 () Bool)

(assert (=> (and b!4123650 (= (toChars!9805 (transformation!7294 rBis!149)) (toChars!9805 (transformation!7294 r!4008))) t!340976) tb!247453))

(declare-fun result!300664 () Bool)

(assert (= result!300664 result!300660))

(assert (=> d!1222230 t!340976))

(declare-fun b_and!319165 () Bool)

(assert (= b_and!319141 (and (=> t!340976 result!300664) b_and!319165)))

(declare-fun b_lambda!121013 () Bool)

(assert (=> (not b_lambda!121013) (not d!1222230)))

(declare-fun t!340978 () Bool)

(declare-fun tb!247455 () Bool)

(assert (=> (and b!4123646 (= (toValue!9946 (transformation!7294 r!4008)) (toValue!9946 (transformation!7294 r!4008))) t!340978) tb!247455))

(declare-fun result!300666 () Bool)

(declare-fun inv!21 (TokenValue!7524) Bool)

(assert (=> tb!247455 (= result!300666 (inv!21 (dynLambda!19073 (toValue!9946 (transformation!7294 r!4008)) lt!1471294)))))

(declare-fun m!4722891 () Bool)

(assert (=> tb!247455 m!4722891))

(assert (=> d!1222230 t!340978))

(declare-fun b_and!319167 () Bool)

(assert (= b_and!319125 (and (=> t!340978 result!300666) b_and!319167)))

(declare-fun tb!247457 () Bool)

(declare-fun t!340980 () Bool)

(assert (=> (and b!4123642 (= (toValue!9946 (transformation!7294 (h!50039 rules!3756))) (toValue!9946 (transformation!7294 r!4008))) t!340980) tb!247457))

(declare-fun result!300670 () Bool)

(assert (= result!300670 result!300666))

(assert (=> d!1222230 t!340980))

(declare-fun b_and!319169 () Bool)

(assert (= b_and!319129 (and (=> t!340980 result!300670) b_and!319169)))

(declare-fun t!340982 () Bool)

(declare-fun tb!247459 () Bool)

(assert (=> (and b!4123650 (= (toValue!9946 (transformation!7294 rBis!149)) (toValue!9946 (transformation!7294 r!4008))) t!340982) tb!247459))

(declare-fun result!300672 () Bool)

(assert (= result!300672 result!300666))

(assert (=> d!1222230 t!340982))

(declare-fun b_and!319171 () Bool)

(assert (= b_and!319133 (and (=> t!340982 result!300672) b_and!319171)))

(declare-fun m!4722893 () Bool)

(assert (=> d!1222230 m!4722893))

(declare-fun m!4722895 () Bool)

(assert (=> d!1222230 m!4722895))

(declare-fun m!4722897 () Bool)

(assert (=> d!1222230 m!4722897))

(assert (=> d!1222230 m!4722895))

(declare-fun m!4722899 () Bool)

(assert (=> d!1222230 m!4722899))

(assert (=> d!1222230 m!4722899))

(declare-fun m!4722901 () Bool)

(assert (=> d!1222230 m!4722901))

(assert (=> b!4123636 d!1222230))

(declare-fun d!1222244 () Bool)

(assert (=> d!1222244 (= (apply!10367 (transformation!7294 r!4008) lt!1471294) (dynLambda!19073 (toValue!9946 (transformation!7294 r!4008)) lt!1471294))))

(declare-fun b_lambda!121015 () Bool)

(assert (=> (not b_lambda!121015) (not d!1222244)))

(assert (=> d!1222244 t!340978))

(declare-fun b_and!319173 () Bool)

(assert (= b_and!319167 (and (=> t!340978 result!300666) b_and!319173)))

(assert (=> d!1222244 t!340980))

(declare-fun b_and!319175 () Bool)

(assert (= b_and!319169 (and (=> t!340980 result!300670) b_and!319175)))

(assert (=> d!1222244 t!340982))

(declare-fun b_and!319177 () Bool)

(assert (= b_and!319171 (and (=> t!340982 result!300672) b_and!319177)))

(assert (=> d!1222244 m!4722895))

(assert (=> b!4123636 d!1222244))

(declare-fun d!1222248 () Bool)

(declare-fun lt!1471375 () List!44742)

(declare-fun ++!11562 (List!44742 List!44742) List!44742)

(assert (=> d!1222248 (= (++!11562 p!2912 lt!1471375) input!3238)))

(declare-fun e!2558898 () List!44742)

(assert (=> d!1222248 (= lt!1471375 e!2558898)))

(declare-fun c!707899 () Bool)

(assert (=> d!1222248 (= c!707899 ((_ is Cons!44618) p!2912))))

(assert (=> d!1222248 (>= (size!33037 input!3238) (size!33037 p!2912))))

(assert (=> d!1222248 (= (getSuffix!2558 input!3238 p!2912) lt!1471375)))

(declare-fun b!4123867 () Bool)

(assert (=> b!4123867 (= e!2558898 (getSuffix!2558 (tail!6459 input!3238) (t!340951 p!2912)))))

(declare-fun b!4123868 () Bool)

(assert (=> b!4123868 (= e!2558898 input!3238)))

(assert (= (and d!1222248 c!707899) b!4123867))

(assert (= (and d!1222248 (not c!707899)) b!4123868))

(declare-fun m!4722913 () Bool)

(assert (=> d!1222248 m!4722913))

(assert (=> d!1222248 m!4722831))

(assert (=> d!1222248 m!4722655))

(assert (=> b!4123867 m!4722827))

(assert (=> b!4123867 m!4722827))

(declare-fun m!4722915 () Bool)

(assert (=> b!4123867 m!4722915))

(assert (=> b!4123636 d!1222248))

(declare-fun b!4123952 () Bool)

(declare-fun res!1685363 () Bool)

(declare-fun e!2558951 () Bool)

(assert (=> b!4123952 (=> (not res!1685363) (not e!2558951))))

(declare-fun lt!1471407 () Option!9602)

(assert (=> b!4123952 (= res!1685363 (matchR!6030 (regex!7294 (rule!10374 (_1!24671 (get!14559 lt!1471407)))) (list!16367 (charsOf!4916 (_1!24671 (get!14559 lt!1471407))))))))

(declare-fun b!4123953 () Bool)

(declare-fun e!2558952 () Bool)

(assert (=> b!4123953 (= e!2558952 e!2558951)))

(declare-fun res!1685357 () Bool)

(assert (=> b!4123953 (=> (not res!1685357) (not e!2558951))))

(declare-fun isDefined!7235 (Option!9602) Bool)

(assert (=> b!4123953 (= res!1685357 (isDefined!7235 lt!1471407))))

(declare-fun b!4123954 () Bool)

(declare-fun res!1685362 () Bool)

(assert (=> b!4123954 (=> (not res!1685362) (not e!2558951))))

(assert (=> b!4123954 (= res!1685362 (= (value!228433 (_1!24671 (get!14559 lt!1471407))) (apply!10367 (transformation!7294 (rule!10374 (_1!24671 (get!14559 lt!1471407)))) (seqFromList!5411 (originalCharacters!7790 (_1!24671 (get!14559 lt!1471407)))))))))

(declare-fun b!4123955 () Bool)

(declare-fun e!2558953 () Option!9602)

(declare-fun lt!1471406 () Option!9602)

(declare-fun lt!1471404 () Option!9602)

(assert (=> b!4123955 (= e!2558953 (ite (and ((_ is None!9601) lt!1471406) ((_ is None!9601) lt!1471404)) None!9601 (ite ((_ is None!9601) lt!1471404) lt!1471406 (ite ((_ is None!9601) lt!1471406) lt!1471404 (ite (>= (size!33036 (_1!24671 (v!40193 lt!1471406))) (size!33036 (_1!24671 (v!40193 lt!1471404)))) lt!1471406 lt!1471404)))))))

(declare-fun call!290037 () Option!9602)

(assert (=> b!4123955 (= lt!1471406 call!290037)))

(assert (=> b!4123955 (= lt!1471404 (maxPrefix!4075 thiss!25645 (t!340952 rules!3756) input!3238))))

(declare-fun b!4123956 () Bool)

(assert (=> b!4123956 (= e!2558951 (contains!8966 rules!3756 (rule!10374 (_1!24671 (get!14559 lt!1471407)))))))

(declare-fun b!4123957 () Bool)

(assert (=> b!4123957 (= e!2558953 call!290037)))

(declare-fun d!1222258 () Bool)

(assert (=> d!1222258 e!2558952))

(declare-fun res!1685360 () Bool)

(assert (=> d!1222258 (=> res!1685360 e!2558952)))

(assert (=> d!1222258 (= res!1685360 (isEmpty!26558 lt!1471407))))

(assert (=> d!1222258 (= lt!1471407 e!2558953)))

(declare-fun c!707918 () Bool)

(assert (=> d!1222258 (= c!707918 (and ((_ is Cons!44619) rules!3756) ((_ is Nil!44619) (t!340952 rules!3756))))))

(declare-fun lt!1471405 () Unit!63959)

(declare-fun lt!1471408 () Unit!63959)

(assert (=> d!1222258 (= lt!1471405 lt!1471408)))

(assert (=> d!1222258 (isPrefix!4229 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2741 (List!44742 List!44742) Unit!63959)

(assert (=> d!1222258 (= lt!1471408 (lemmaIsPrefixRefl!2741 input!3238 input!3238))))

(declare-fun rulesValidInductive!2692 (LexerInterface!6883 List!44743) Bool)

(assert (=> d!1222258 (rulesValidInductive!2692 thiss!25645 rules!3756)))

(assert (=> d!1222258 (= (maxPrefix!4075 thiss!25645 rules!3756 input!3238) lt!1471407)))

(declare-fun b!4123958 () Bool)

(declare-fun res!1685361 () Bool)

(assert (=> b!4123958 (=> (not res!1685361) (not e!2558951))))

(assert (=> b!4123958 (= res!1685361 (< (size!33037 (_2!24671 (get!14559 lt!1471407))) (size!33037 input!3238)))))

(declare-fun b!4123959 () Bool)

(declare-fun res!1685359 () Bool)

(assert (=> b!4123959 (=> (not res!1685359) (not e!2558951))))

(assert (=> b!4123959 (= res!1685359 (= (++!11562 (list!16367 (charsOf!4916 (_1!24671 (get!14559 lt!1471407)))) (_2!24671 (get!14559 lt!1471407))) input!3238))))

(declare-fun b!4123960 () Bool)

(declare-fun res!1685358 () Bool)

(assert (=> b!4123960 (=> (not res!1685358) (not e!2558951))))

(assert (=> b!4123960 (= res!1685358 (= (list!16367 (charsOf!4916 (_1!24671 (get!14559 lt!1471407)))) (originalCharacters!7790 (_1!24671 (get!14559 lt!1471407)))))))

(declare-fun bm!290032 () Bool)

(assert (=> bm!290032 (= call!290037 (maxPrefixOneRule!3025 thiss!25645 (h!50039 rules!3756) input!3238))))

(assert (= (and d!1222258 c!707918) b!4123957))

(assert (= (and d!1222258 (not c!707918)) b!4123955))

(assert (= (or b!4123957 b!4123955) bm!290032))

(assert (= (and d!1222258 (not res!1685360)) b!4123953))

(assert (= (and b!4123953 res!1685357) b!4123960))

(assert (= (and b!4123960 res!1685358) b!4123958))

(assert (= (and b!4123958 res!1685361) b!4123959))

(assert (= (and b!4123959 res!1685359) b!4123954))

(assert (= (and b!4123954 res!1685362) b!4123952))

(assert (= (and b!4123952 res!1685363) b!4123956))

(declare-fun m!4722959 () Bool)

(assert (=> bm!290032 m!4722959))

(declare-fun m!4722961 () Bool)

(assert (=> b!4123952 m!4722961))

(declare-fun m!4722963 () Bool)

(assert (=> b!4123952 m!4722963))

(assert (=> b!4123952 m!4722963))

(declare-fun m!4722965 () Bool)

(assert (=> b!4123952 m!4722965))

(assert (=> b!4123952 m!4722965))

(declare-fun m!4722967 () Bool)

(assert (=> b!4123952 m!4722967))

(assert (=> b!4123959 m!4722961))

(assert (=> b!4123959 m!4722963))

(assert (=> b!4123959 m!4722963))

(assert (=> b!4123959 m!4722965))

(assert (=> b!4123959 m!4722965))

(declare-fun m!4722969 () Bool)

(assert (=> b!4123959 m!4722969))

(assert (=> b!4123956 m!4722961))

(declare-fun m!4722971 () Bool)

(assert (=> b!4123956 m!4722971))

(assert (=> b!4123958 m!4722961))

(declare-fun m!4722973 () Bool)

(assert (=> b!4123958 m!4722973))

(assert (=> b!4123958 m!4722831))

(assert (=> b!4123960 m!4722961))

(assert (=> b!4123960 m!4722963))

(assert (=> b!4123960 m!4722963))

(assert (=> b!4123960 m!4722965))

(declare-fun m!4722975 () Bool)

(assert (=> b!4123953 m!4722975))

(declare-fun m!4722977 () Bool)

(assert (=> d!1222258 m!4722977))

(declare-fun m!4722979 () Bool)

(assert (=> d!1222258 m!4722979))

(declare-fun m!4722981 () Bool)

(assert (=> d!1222258 m!4722981))

(declare-fun m!4722983 () Bool)

(assert (=> d!1222258 m!4722983))

(declare-fun m!4722985 () Bool)

(assert (=> b!4123955 m!4722985))

(assert (=> b!4123954 m!4722961))

(declare-fun m!4722987 () Bool)

(assert (=> b!4123954 m!4722987))

(assert (=> b!4123954 m!4722987))

(declare-fun m!4722989 () Bool)

(assert (=> b!4123954 m!4722989))

(assert (=> b!4123636 d!1222258))

(declare-fun d!1222282 () Bool)

(declare-fun fromListB!2474 (List!44742) BalanceConc!26604)

(assert (=> d!1222282 (= (seqFromList!5411 p!2912) (fromListB!2474 p!2912))))

(declare-fun bs!594760 () Bool)

(assert (= bs!594760 d!1222282))

(declare-fun m!4722991 () Bool)

(assert (=> bs!594760 m!4722991))

(assert (=> b!4123636 d!1222282))

(declare-fun d!1222284 () Bool)

(declare-fun lt!1471412 () Int)

(assert (=> d!1222284 (>= lt!1471412 0)))

(declare-fun e!2558975 () Int)

(assert (=> d!1222284 (= lt!1471412 e!2558975)))

(declare-fun c!707928 () Bool)

(assert (=> d!1222284 (= c!707928 ((_ is Nil!44618) p!2912))))

(assert (=> d!1222284 (= (size!33037 p!2912) lt!1471412)))

(declare-fun b!4124003 () Bool)

(assert (=> b!4124003 (= e!2558975 0)))

(declare-fun b!4124004 () Bool)

(assert (=> b!4124004 (= e!2558975 (+ 1 (size!33037 (t!340951 p!2912))))))

(assert (= (and d!1222284 c!707928) b!4124003))

(assert (= (and d!1222284 (not c!707928)) b!4124004))

(declare-fun m!4722999 () Bool)

(assert (=> b!4124004 m!4722999))

(assert (=> b!4123636 d!1222284))

(declare-fun d!1222290 () Bool)

(declare-fun lt!1471415 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6878 (List!44743) (InoxSet Rule!14388))

(assert (=> d!1222290 (= lt!1471415 (select (content!6878 rules!3756) rBis!149))))

(declare-fun e!2558997 () Bool)

(assert (=> d!1222290 (= lt!1471415 e!2558997)))

(declare-fun res!1685393 () Bool)

(assert (=> d!1222290 (=> (not res!1685393) (not e!2558997))))

(assert (=> d!1222290 (= res!1685393 ((_ is Cons!44619) rules!3756))))

(assert (=> d!1222290 (= (contains!8966 rules!3756 rBis!149) lt!1471415)))

(declare-fun b!4124024 () Bool)

(declare-fun e!2558995 () Bool)

(assert (=> b!4124024 (= e!2558997 e!2558995)))

(declare-fun res!1685394 () Bool)

(assert (=> b!4124024 (=> res!1685394 e!2558995)))

(assert (=> b!4124024 (= res!1685394 (= (h!50039 rules!3756) rBis!149))))

(declare-fun b!4124026 () Bool)

(assert (=> b!4124026 (= e!2558995 (contains!8966 (t!340952 rules!3756) rBis!149))))

(assert (= (and d!1222290 res!1685393) b!4124024))

(assert (= (and b!4124024 (not res!1685394)) b!4124026))

(declare-fun m!4723005 () Bool)

(assert (=> d!1222290 m!4723005))

(declare-fun m!4723007 () Bool)

(assert (=> d!1222290 m!4723007))

(declare-fun m!4723009 () Bool)

(assert (=> b!4124026 m!4723009))

(assert (=> b!4123651 d!1222290))

(declare-fun d!1222292 () Bool)

(assert (=> d!1222292 (ruleValid!3102 thiss!25645 r!4008)))

(declare-fun lt!1471418 () Unit!63959)

(declare-fun choose!25213 (LexerInterface!6883 Rule!14388 List!44743) Unit!63959)

(assert (=> d!1222292 (= lt!1471418 (choose!25213 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1222292 (contains!8966 rules!3756 r!4008)))

(assert (=> d!1222292 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2146 thiss!25645 r!4008 rules!3756) lt!1471418)))

(declare-fun bs!594761 () Bool)

(assert (= bs!594761 d!1222292))

(assert (=> bs!594761 m!4722703))

(declare-fun m!4723015 () Bool)

(assert (=> bs!594761 m!4723015))

(assert (=> bs!594761 m!4722651))

(assert (=> b!4123639 d!1222292))

(declare-fun d!1222294 () Bool)

(declare-fun res!1685395 () Bool)

(declare-fun e!2559004 () Bool)

(assert (=> d!1222294 (=> (not res!1685395) (not e!2559004))))

(assert (=> d!1222294 (= res!1685395 (validRegex!5486 (regex!7294 rBis!149)))))

(assert (=> d!1222294 (= (ruleValid!3102 thiss!25645 rBis!149) e!2559004)))

(declare-fun b!4124051 () Bool)

(declare-fun res!1685396 () Bool)

(assert (=> b!4124051 (=> (not res!1685396) (not e!2559004))))

(assert (=> b!4124051 (= res!1685396 (not (nullable!4279 (regex!7294 rBis!149))))))

(declare-fun b!4124052 () Bool)

(assert (=> b!4124052 (= e!2559004 (not (= (tag!8154 rBis!149) (String!51371 ""))))))

(assert (= (and d!1222294 res!1685395) b!4124051))

(assert (= (and b!4124051 res!1685396) b!4124052))

(assert (=> d!1222294 m!4722647))

(declare-fun m!4723017 () Bool)

(assert (=> b!4124051 m!4723017))

(assert (=> b!4123639 d!1222294))

(declare-fun d!1222296 () Bool)

(assert (=> d!1222296 (ruleValid!3102 thiss!25645 rBis!149)))

(declare-fun lt!1471419 () Unit!63959)

(assert (=> d!1222296 (= lt!1471419 (choose!25213 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1222296 (contains!8966 rules!3756 rBis!149)))

(assert (=> d!1222296 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2146 thiss!25645 rBis!149 rules!3756) lt!1471419)))

(declare-fun bs!594762 () Bool)

(assert (= bs!594762 d!1222296))

(assert (=> bs!594762 m!4722693))

(declare-fun m!4723019 () Bool)

(assert (=> bs!594762 m!4723019))

(assert (=> bs!594762 m!4722677))

(assert (=> b!4123639 d!1222296))

(declare-fun d!1222298 () Bool)

(declare-fun lt!1471420 () Bool)

(assert (=> d!1222298 (= lt!1471420 (select (content!6878 rules!3756) r!4008))))

(declare-fun e!2559006 () Bool)

(assert (=> d!1222298 (= lt!1471420 e!2559006)))

(declare-fun res!1685397 () Bool)

(assert (=> d!1222298 (=> (not res!1685397) (not e!2559006))))

(assert (=> d!1222298 (= res!1685397 ((_ is Cons!44619) rules!3756))))

(assert (=> d!1222298 (= (contains!8966 rules!3756 r!4008) lt!1471420)))

(declare-fun b!4124053 () Bool)

(declare-fun e!2559005 () Bool)

(assert (=> b!4124053 (= e!2559006 e!2559005)))

(declare-fun res!1685398 () Bool)

(assert (=> b!4124053 (=> res!1685398 e!2559005)))

(assert (=> b!4124053 (= res!1685398 (= (h!50039 rules!3756) r!4008))))

(declare-fun b!4124054 () Bool)

(assert (=> b!4124054 (= e!2559005 (contains!8966 (t!340952 rules!3756) r!4008))))

(assert (= (and d!1222298 res!1685397) b!4124053))

(assert (= (and b!4124053 (not res!1685398)) b!4124054))

(assert (=> d!1222298 m!4723005))

(declare-fun m!4723021 () Bool)

(assert (=> d!1222298 m!4723021))

(declare-fun m!4723023 () Bool)

(assert (=> b!4124054 m!4723023))

(assert (=> b!4123643 d!1222298))

(declare-fun d!1222300 () Bool)

(declare-fun res!1685401 () Bool)

(declare-fun e!2559009 () Bool)

(assert (=> d!1222300 (=> (not res!1685401) (not e!2559009))))

(declare-fun rulesValid!2856 (LexerInterface!6883 List!44743) Bool)

(assert (=> d!1222300 (= res!1685401 (rulesValid!2856 thiss!25645 rules!3756))))

(assert (=> d!1222300 (= (rulesInvariant!6180 thiss!25645 rules!3756) e!2559009)))

(declare-fun b!4124057 () Bool)

(declare-datatypes ((List!44745 0))(
  ( (Nil!44621) (Cons!44621 (h!50041 String!51370) (t!341002 List!44745)) )
))
(declare-fun noDuplicateTag!2937 (LexerInterface!6883 List!44743 List!44745) Bool)

(assert (=> b!4124057 (= e!2559009 (noDuplicateTag!2937 thiss!25645 rules!3756 Nil!44621))))

(assert (= (and d!1222300 res!1685401) b!4124057))

(declare-fun m!4723025 () Bool)

(assert (=> d!1222300 m!4723025))

(declare-fun m!4723027 () Bool)

(assert (=> b!4124057 m!4723027))

(assert (=> b!4123654 d!1222300))

(declare-fun d!1222302 () Bool)

(declare-fun lt!1471423 () Int)

(assert (=> d!1222302 (>= lt!1471423 0)))

(declare-fun e!2559016 () Int)

(assert (=> d!1222302 (= lt!1471423 e!2559016)))

(declare-fun c!707934 () Bool)

(assert (=> d!1222302 (= c!707934 (and ((_ is Cons!44619) rules!3756) (= (h!50039 rules!3756) rBis!149)))))

(assert (=> d!1222302 (contains!8966 rules!3756 rBis!149)))

(assert (=> d!1222302 (= (getIndex!642 rules!3756 rBis!149) lt!1471423)))

(declare-fun b!4124067 () Bool)

(declare-fun e!2559015 () Int)

(assert (=> b!4124067 (= e!2559016 e!2559015)))

(declare-fun c!707933 () Bool)

(assert (=> b!4124067 (= c!707933 (and ((_ is Cons!44619) rules!3756) (not (= (h!50039 rules!3756) rBis!149))))))

(declare-fun b!4124069 () Bool)

(assert (=> b!4124069 (= e!2559015 (- 1))))

(declare-fun b!4124068 () Bool)

(assert (=> b!4124068 (= e!2559015 (+ 1 (getIndex!642 (t!340952 rules!3756) rBis!149)))))

(declare-fun b!4124066 () Bool)

(assert (=> b!4124066 (= e!2559016 0)))

(assert (= (and d!1222302 c!707934) b!4124066))

(assert (= (and d!1222302 (not c!707934)) b!4124067))

(assert (= (and b!4124067 c!707933) b!4124068))

(assert (= (and b!4124067 (not c!707933)) b!4124069))

(assert (=> d!1222302 m!4722677))

(declare-fun m!4723029 () Bool)

(assert (=> b!4124068 m!4723029))

(assert (=> b!4123641 d!1222302))

(declare-fun d!1222304 () Bool)

(declare-fun lt!1471424 () Int)

(assert (=> d!1222304 (>= lt!1471424 0)))

(declare-fun e!2559018 () Int)

(assert (=> d!1222304 (= lt!1471424 e!2559018)))

(declare-fun c!707936 () Bool)

(assert (=> d!1222304 (= c!707936 (and ((_ is Cons!44619) rules!3756) (= (h!50039 rules!3756) r!4008)))))

(assert (=> d!1222304 (contains!8966 rules!3756 r!4008)))

(assert (=> d!1222304 (= (getIndex!642 rules!3756 r!4008) lt!1471424)))

(declare-fun b!4124071 () Bool)

(declare-fun e!2559017 () Int)

(assert (=> b!4124071 (= e!2559018 e!2559017)))

(declare-fun c!707935 () Bool)

(assert (=> b!4124071 (= c!707935 (and ((_ is Cons!44619) rules!3756) (not (= (h!50039 rules!3756) r!4008))))))

(declare-fun b!4124073 () Bool)

(assert (=> b!4124073 (= e!2559017 (- 1))))

(declare-fun b!4124072 () Bool)

(assert (=> b!4124072 (= e!2559017 (+ 1 (getIndex!642 (t!340952 rules!3756) r!4008)))))

(declare-fun b!4124070 () Bool)

(assert (=> b!4124070 (= e!2559018 0)))

(assert (= (and d!1222304 c!707936) b!4124070))

(assert (= (and d!1222304 (not c!707936)) b!4124071))

(assert (= (and b!4124071 c!707935) b!4124072))

(assert (= (and b!4124071 (not c!707935)) b!4124073))

(assert (=> d!1222304 m!4722651))

(declare-fun m!4723031 () Bool)

(assert (=> b!4124072 m!4723031))

(assert (=> b!4123641 d!1222304))

(declare-fun d!1222306 () Bool)

(declare-fun lt!1471425 () Bool)

(assert (=> d!1222306 (= lt!1471425 (select (content!6878 (tail!6457 rules!3756)) r!4008))))

(declare-fun e!2559020 () Bool)

(assert (=> d!1222306 (= lt!1471425 e!2559020)))

(declare-fun res!1685402 () Bool)

(assert (=> d!1222306 (=> (not res!1685402) (not e!2559020))))

(assert (=> d!1222306 (= res!1685402 ((_ is Cons!44619) (tail!6457 rules!3756)))))

(assert (=> d!1222306 (= (contains!8966 (tail!6457 rules!3756) r!4008) lt!1471425)))

(declare-fun b!4124074 () Bool)

(declare-fun e!2559019 () Bool)

(assert (=> b!4124074 (= e!2559020 e!2559019)))

(declare-fun res!1685403 () Bool)

(assert (=> b!4124074 (=> res!1685403 e!2559019)))

(assert (=> b!4124074 (= res!1685403 (= (h!50039 (tail!6457 rules!3756)) r!4008))))

(declare-fun b!4124075 () Bool)

(assert (=> b!4124075 (= e!2559019 (contains!8966 (t!340952 (tail!6457 rules!3756)) r!4008))))

(assert (= (and d!1222306 res!1685402) b!4124074))

(assert (= (and b!4124074 (not res!1685403)) b!4124075))

(assert (=> d!1222306 m!4722679))

(declare-fun m!4723033 () Bool)

(assert (=> d!1222306 m!4723033))

(declare-fun m!4723035 () Bool)

(assert (=> d!1222306 m!4723035))

(declare-fun m!4723037 () Bool)

(assert (=> b!4124075 m!4723037))

(assert (=> b!4123652 d!1222306))

(declare-fun d!1222308 () Bool)

(assert (=> d!1222308 (= (tail!6457 rules!3756) (t!340952 rules!3756))))

(assert (=> b!4123652 d!1222308))

(declare-fun d!1222310 () Bool)

(assert (=> d!1222310 (contains!8966 (tail!6457 rules!3756) r!4008)))

(declare-fun lt!1471428 () Unit!63959)

(declare-fun choose!25214 (List!44743 Rule!14388 Rule!14388) Unit!63959)

(assert (=> d!1222310 (= lt!1471428 (choose!25214 rules!3756 rBis!149 r!4008))))

(declare-fun e!2559023 () Bool)

(assert (=> d!1222310 e!2559023))

(declare-fun res!1685406 () Bool)

(assert (=> d!1222310 (=> (not res!1685406) (not e!2559023))))

(assert (=> d!1222310 (= res!1685406 (contains!8966 rules!3756 rBis!149))))

(assert (=> d!1222310 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!36 rules!3756 rBis!149 r!4008) lt!1471428)))

(declare-fun b!4124078 () Bool)

(assert (=> b!4124078 (= e!2559023 (contains!8966 rules!3756 r!4008))))

(assert (= (and d!1222310 res!1685406) b!4124078))

(assert (=> d!1222310 m!4722679))

(assert (=> d!1222310 m!4722679))

(assert (=> d!1222310 m!4722681))

(declare-fun m!4723039 () Bool)

(assert (=> d!1222310 m!4723039))

(assert (=> d!1222310 m!4722677))

(assert (=> b!4124078 m!4722651))

(assert (=> b!4123652 d!1222310))

(declare-fun d!1222312 () Bool)

(assert (=> d!1222312 (= (isEmpty!26558 lt!1471297) (not ((_ is Some!9601) lt!1471297)))))

(assert (=> b!4123652 d!1222312))

(declare-fun b!4124097 () Bool)

(declare-fun res!1685423 () Bool)

(declare-fun e!2559034 () Bool)

(assert (=> b!4124097 (=> (not res!1685423) (not e!2559034))))

(declare-fun lt!1471441 () Option!9602)

(assert (=> b!4124097 (= res!1685423 (< (size!33037 (_2!24671 (get!14559 lt!1471441))) (size!33037 input!3238)))))

(declare-fun b!4124098 () Bool)

(assert (=> b!4124098 (= e!2559034 (= (size!33036 (_1!24671 (get!14559 lt!1471441))) (size!33037 (originalCharacters!7790 (_1!24671 (get!14559 lt!1471441))))))))

(declare-fun b!4124099 () Bool)

(declare-fun res!1685421 () Bool)

(assert (=> b!4124099 (=> (not res!1685421) (not e!2559034))))

(assert (=> b!4124099 (= res!1685421 (= (++!11562 (list!16367 (charsOf!4916 (_1!24671 (get!14559 lt!1471441)))) (_2!24671 (get!14559 lt!1471441))) input!3238))))

(declare-fun b!4124100 () Bool)

(declare-fun e!2559032 () Option!9602)

(assert (=> b!4124100 (= e!2559032 None!9601)))

(declare-fun b!4124101 () Bool)

(declare-datatypes ((tuple2!43078 0))(
  ( (tuple2!43079 (_1!24673 List!44742) (_2!24673 List!44742)) )
))
(declare-fun lt!1471440 () tuple2!43078)

(assert (=> b!4124101 (= e!2559032 (Some!9601 (tuple2!43075 (Token!13519 (apply!10367 (transformation!7294 rBis!149) (seqFromList!5411 (_1!24673 lt!1471440))) rBis!149 (size!33038 (seqFromList!5411 (_1!24673 lt!1471440))) (_1!24673 lt!1471440)) (_2!24673 lt!1471440))))))

(declare-fun lt!1471443 () Unit!63959)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1470 (Regex!12199 List!44742) Unit!63959)

(assert (=> b!4124101 (= lt!1471443 (longestMatchIsAcceptedByMatchOrIsEmpty!1470 (regex!7294 rBis!149) input!3238))))

(declare-fun res!1685427 () Bool)

(declare-fun findLongestMatchInner!1497 (Regex!12199 List!44742 Int List!44742 List!44742 Int) tuple2!43078)

(assert (=> b!4124101 (= res!1685427 (isEmpty!26557 (_1!24673 (findLongestMatchInner!1497 (regex!7294 rBis!149) Nil!44618 (size!33037 Nil!44618) input!3238 input!3238 (size!33037 input!3238)))))))

(declare-fun e!2559033 () Bool)

(assert (=> b!4124101 (=> res!1685427 e!2559033)))

(assert (=> b!4124101 e!2559033))

(declare-fun lt!1471439 () Unit!63959)

(assert (=> b!4124101 (= lt!1471439 lt!1471443)))

(declare-fun lt!1471442 () Unit!63959)

(assert (=> b!4124101 (= lt!1471442 (lemmaSemiInverse!2152 (transformation!7294 rBis!149) (seqFromList!5411 (_1!24673 lt!1471440))))))

(declare-fun b!4124102 () Bool)

(assert (=> b!4124102 (= e!2559033 (matchR!6030 (regex!7294 rBis!149) (_1!24673 (findLongestMatchInner!1497 (regex!7294 rBis!149) Nil!44618 (size!33037 Nil!44618) input!3238 input!3238 (size!33037 input!3238)))))))

(declare-fun d!1222314 () Bool)

(declare-fun e!2559035 () Bool)

(assert (=> d!1222314 e!2559035))

(declare-fun res!1685422 () Bool)

(assert (=> d!1222314 (=> res!1685422 e!2559035)))

(assert (=> d!1222314 (= res!1685422 (isEmpty!26558 lt!1471441))))

(assert (=> d!1222314 (= lt!1471441 e!2559032)))

(declare-fun c!707939 () Bool)

(assert (=> d!1222314 (= c!707939 (isEmpty!26557 (_1!24673 lt!1471440)))))

(declare-fun findLongestMatch!1410 (Regex!12199 List!44742) tuple2!43078)

(assert (=> d!1222314 (= lt!1471440 (findLongestMatch!1410 (regex!7294 rBis!149) input!3238))))

(assert (=> d!1222314 (ruleValid!3102 thiss!25645 rBis!149)))

(assert (=> d!1222314 (= (maxPrefixOneRule!3025 thiss!25645 rBis!149 input!3238) lt!1471441)))

(declare-fun b!4124103 () Bool)

(declare-fun res!1685425 () Bool)

(assert (=> b!4124103 (=> (not res!1685425) (not e!2559034))))

(assert (=> b!4124103 (= res!1685425 (= (value!228433 (_1!24671 (get!14559 lt!1471441))) (apply!10367 (transformation!7294 (rule!10374 (_1!24671 (get!14559 lt!1471441)))) (seqFromList!5411 (originalCharacters!7790 (_1!24671 (get!14559 lt!1471441)))))))))

(declare-fun b!4124104 () Bool)

(declare-fun res!1685426 () Bool)

(assert (=> b!4124104 (=> (not res!1685426) (not e!2559034))))

(assert (=> b!4124104 (= res!1685426 (= (rule!10374 (_1!24671 (get!14559 lt!1471441))) rBis!149))))

(declare-fun b!4124105 () Bool)

(assert (=> b!4124105 (= e!2559035 e!2559034)))

(declare-fun res!1685424 () Bool)

(assert (=> b!4124105 (=> (not res!1685424) (not e!2559034))))

(assert (=> b!4124105 (= res!1685424 (matchR!6030 (regex!7294 rBis!149) (list!16367 (charsOf!4916 (_1!24671 (get!14559 lt!1471441))))))))

(assert (= (and d!1222314 c!707939) b!4124100))

(assert (= (and d!1222314 (not c!707939)) b!4124101))

(assert (= (and b!4124101 (not res!1685427)) b!4124102))

(assert (= (and d!1222314 (not res!1685422)) b!4124105))

(assert (= (and b!4124105 res!1685424) b!4124099))

(assert (= (and b!4124099 res!1685421) b!4124097))

(assert (= (and b!4124097 res!1685423) b!4124104))

(assert (= (and b!4124104 res!1685426) b!4124103))

(assert (= (and b!4124103 res!1685425) b!4124098))

(declare-fun m!4723041 () Bool)

(assert (=> b!4124104 m!4723041))

(declare-fun m!4723043 () Bool)

(assert (=> b!4124102 m!4723043))

(assert (=> b!4124102 m!4722831))

(assert (=> b!4124102 m!4723043))

(assert (=> b!4124102 m!4722831))

(declare-fun m!4723045 () Bool)

(assert (=> b!4124102 m!4723045))

(declare-fun m!4723047 () Bool)

(assert (=> b!4124102 m!4723047))

(assert (=> b!4124105 m!4723041))

(declare-fun m!4723049 () Bool)

(assert (=> b!4124105 m!4723049))

(assert (=> b!4124105 m!4723049))

(declare-fun m!4723051 () Bool)

(assert (=> b!4124105 m!4723051))

(assert (=> b!4124105 m!4723051))

(declare-fun m!4723053 () Bool)

(assert (=> b!4124105 m!4723053))

(assert (=> b!4124097 m!4723041))

(declare-fun m!4723055 () Bool)

(assert (=> b!4124097 m!4723055))

(assert (=> b!4124097 m!4722831))

(assert (=> b!4124103 m!4723041))

(declare-fun m!4723057 () Bool)

(assert (=> b!4124103 m!4723057))

(assert (=> b!4124103 m!4723057))

(declare-fun m!4723059 () Bool)

(assert (=> b!4124103 m!4723059))

(assert (=> b!4124101 m!4723043))

(assert (=> b!4124101 m!4723043))

(assert (=> b!4124101 m!4722831))

(assert (=> b!4124101 m!4723045))

(declare-fun m!4723061 () Bool)

(assert (=> b!4124101 m!4723061))

(assert (=> b!4124101 m!4723061))

(declare-fun m!4723063 () Bool)

(assert (=> b!4124101 m!4723063))

(assert (=> b!4124101 m!4722831))

(declare-fun m!4723065 () Bool)

(assert (=> b!4124101 m!4723065))

(assert (=> b!4124101 m!4723061))

(declare-fun m!4723067 () Bool)

(assert (=> b!4124101 m!4723067))

(declare-fun m!4723069 () Bool)

(assert (=> b!4124101 m!4723069))

(assert (=> b!4124101 m!4723061))

(declare-fun m!4723071 () Bool)

(assert (=> b!4124101 m!4723071))

(assert (=> b!4124098 m!4723041))

(declare-fun m!4723073 () Bool)

(assert (=> b!4124098 m!4723073))

(assert (=> b!4124099 m!4723041))

(assert (=> b!4124099 m!4723049))

(assert (=> b!4124099 m!4723049))

(assert (=> b!4124099 m!4723051))

(assert (=> b!4124099 m!4723051))

(declare-fun m!4723075 () Bool)

(assert (=> b!4124099 m!4723075))

(declare-fun m!4723077 () Bool)

(assert (=> d!1222314 m!4723077))

(declare-fun m!4723079 () Bool)

(assert (=> d!1222314 m!4723079))

(declare-fun m!4723081 () Bool)

(assert (=> d!1222314 m!4723081))

(assert (=> d!1222314 m!4722693))

(assert (=> b!4123652 d!1222314))

(declare-fun d!1222316 () Bool)

(assert (=> d!1222316 (not (= rBis!149 r!4008))))

(declare-fun lt!1471446 () Unit!63959)

(declare-fun choose!25215 (LexerInterface!6883 List!44743 Rule!14388 Rule!14388) Unit!63959)

(assert (=> d!1222316 (= lt!1471446 (choose!25215 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1222316 (contains!8966 rules!3756 rBis!149)))

(assert (=> d!1222316 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!34 thiss!25645 rules!3756 rBis!149 r!4008) lt!1471446)))

(declare-fun bs!594763 () Bool)

(assert (= bs!594763 d!1222316))

(declare-fun m!4723083 () Bool)

(assert (=> bs!594763 m!4723083))

(assert (=> bs!594763 m!4722677))

(assert (=> b!4123652 d!1222316))

(declare-fun b!4124118 () Bool)

(declare-fun e!2559038 () Bool)

(declare-fun tp!1256723 () Bool)

(assert (=> b!4124118 (= e!2559038 tp!1256723)))

(declare-fun b!4124119 () Bool)

(declare-fun tp!1256726 () Bool)

(declare-fun tp!1256722 () Bool)

(assert (=> b!4124119 (= e!2559038 (and tp!1256726 tp!1256722))))

(declare-fun b!4124117 () Bool)

(declare-fun tp!1256725 () Bool)

(declare-fun tp!1256724 () Bool)

(assert (=> b!4124117 (= e!2559038 (and tp!1256725 tp!1256724))))

(declare-fun b!4124116 () Bool)

(assert (=> b!4124116 (= e!2559038 tp_is_empty!21321)))

(assert (=> b!4123635 (= tp!1256654 e!2559038)))

(assert (= (and b!4123635 ((_ is ElementMatch!12199) (regex!7294 rBis!149))) b!4124116))

(assert (= (and b!4123635 ((_ is Concat!19724) (regex!7294 rBis!149))) b!4124117))

(assert (= (and b!4123635 ((_ is Star!12199) (regex!7294 rBis!149))) b!4124118))

(assert (= (and b!4123635 ((_ is Union!12199) (regex!7294 rBis!149))) b!4124119))

(declare-fun b!4124130 () Bool)

(declare-fun b_free!116747 () Bool)

(declare-fun b_next!117451 () Bool)

(assert (=> b!4124130 (= b_free!116747 (not b_next!117451))))

(declare-fun t!340996 () Bool)

(declare-fun tb!247473 () Bool)

(assert (=> (and b!4124130 (= (toValue!9946 (transformation!7294 (h!50039 (t!340952 rules!3756)))) (toValue!9946 (transformation!7294 r!4008))) t!340996) tb!247473))

(declare-fun result!300696 () Bool)

(assert (= result!300696 result!300666))

(assert (=> d!1222230 t!340996))

(assert (=> d!1222244 t!340996))

(declare-fun tp!1256737 () Bool)

(declare-fun b_and!319189 () Bool)

(assert (=> b!4124130 (= tp!1256737 (and (=> t!340996 result!300696) b_and!319189))))

(declare-fun b_free!116749 () Bool)

(declare-fun b_next!117453 () Bool)

(assert (=> b!4124130 (= b_free!116749 (not b_next!117453))))

(declare-fun t!340998 () Bool)

(declare-fun tb!247475 () Bool)

(assert (=> (and b!4124130 (= (toChars!9805 (transformation!7294 (h!50039 (t!340952 rules!3756)))) (toChars!9805 (transformation!7294 (rule!10374 (_1!24671 lt!1471300))))) t!340998) tb!247475))

(declare-fun result!300698 () Bool)

(assert (= result!300698 result!300636))

(assert (=> d!1222210 t!340998))

(declare-fun t!341000 () Bool)

(declare-fun tb!247477 () Bool)

(assert (=> (and b!4124130 (= (toChars!9805 (transformation!7294 (h!50039 (t!340952 rules!3756)))) (toChars!9805 (transformation!7294 r!4008))) t!341000) tb!247477))

(declare-fun result!300700 () Bool)

(assert (= result!300700 result!300660))

(assert (=> d!1222230 t!341000))

(declare-fun tp!1256736 () Bool)

(declare-fun b_and!319191 () Bool)

(assert (=> b!4124130 (= tp!1256736 (and (=> t!340998 result!300698) (=> t!341000 result!300700) b_and!319191))))

(declare-fun e!2559048 () Bool)

(assert (=> b!4124130 (= e!2559048 (and tp!1256737 tp!1256736))))

(declare-fun b!4124129 () Bool)

(declare-fun tp!1256738 () Bool)

(declare-fun e!2559049 () Bool)

(assert (=> b!4124129 (= e!2559049 (and tp!1256738 (inv!59196 (tag!8154 (h!50039 (t!340952 rules!3756)))) (inv!59198 (transformation!7294 (h!50039 (t!340952 rules!3756)))) e!2559048))))

(declare-fun b!4124128 () Bool)

(declare-fun e!2559050 () Bool)

(declare-fun tp!1256735 () Bool)

(assert (=> b!4124128 (= e!2559050 (and e!2559049 tp!1256735))))

(assert (=> b!4123640 (= tp!1256655 e!2559050)))

(assert (= b!4124129 b!4124130))

(assert (= b!4124128 b!4124129))

(assert (= (and b!4123640 ((_ is Cons!44619) (t!340952 rules!3756))) b!4124128))

(declare-fun m!4723085 () Bool)

(assert (=> b!4124129 m!4723085))

(declare-fun m!4723087 () Bool)

(assert (=> b!4124129 m!4723087))

(declare-fun b!4124133 () Bool)

(declare-fun e!2559051 () Bool)

(declare-fun tp!1256740 () Bool)

(assert (=> b!4124133 (= e!2559051 tp!1256740)))

(declare-fun b!4124134 () Bool)

(declare-fun tp!1256743 () Bool)

(declare-fun tp!1256739 () Bool)

(assert (=> b!4124134 (= e!2559051 (and tp!1256743 tp!1256739))))

(declare-fun b!4124132 () Bool)

(declare-fun tp!1256742 () Bool)

(declare-fun tp!1256741 () Bool)

(assert (=> b!4124132 (= e!2559051 (and tp!1256742 tp!1256741))))

(declare-fun b!4124131 () Bool)

(assert (=> b!4124131 (= e!2559051 tp_is_empty!21321)))

(assert (=> b!4123655 (= tp!1256656 e!2559051)))

(assert (= (and b!4123655 ((_ is ElementMatch!12199) (regex!7294 (h!50039 rules!3756)))) b!4124131))

(assert (= (and b!4123655 ((_ is Concat!19724) (regex!7294 (h!50039 rules!3756)))) b!4124132))

(assert (= (and b!4123655 ((_ is Star!12199) (regex!7294 (h!50039 rules!3756)))) b!4124133))

(assert (= (and b!4123655 ((_ is Union!12199) (regex!7294 (h!50039 rules!3756)))) b!4124134))

(declare-fun b!4124139 () Bool)

(declare-fun e!2559054 () Bool)

(declare-fun tp!1256746 () Bool)

(assert (=> b!4124139 (= e!2559054 (and tp_is_empty!21321 tp!1256746))))

(assert (=> b!4123649 (= tp!1256657 e!2559054)))

(assert (= (and b!4123649 ((_ is Cons!44618) (t!340951 input!3238))) b!4124139))

(declare-fun b!4124142 () Bool)

(declare-fun e!2559055 () Bool)

(declare-fun tp!1256748 () Bool)

(assert (=> b!4124142 (= e!2559055 tp!1256748)))

(declare-fun b!4124143 () Bool)

(declare-fun tp!1256751 () Bool)

(declare-fun tp!1256747 () Bool)

(assert (=> b!4124143 (= e!2559055 (and tp!1256751 tp!1256747))))

(declare-fun b!4124141 () Bool)

(declare-fun tp!1256750 () Bool)

(declare-fun tp!1256749 () Bool)

(assert (=> b!4124141 (= e!2559055 (and tp!1256750 tp!1256749))))

(declare-fun b!4124140 () Bool)

(assert (=> b!4124140 (= e!2559055 tp_is_empty!21321)))

(assert (=> b!4123637 (= tp!1256653 e!2559055)))

(assert (= (and b!4123637 ((_ is ElementMatch!12199) (regex!7294 r!4008))) b!4124140))

(assert (= (and b!4123637 ((_ is Concat!19724) (regex!7294 r!4008))) b!4124141))

(assert (= (and b!4123637 ((_ is Star!12199) (regex!7294 r!4008))) b!4124142))

(assert (= (and b!4123637 ((_ is Union!12199) (regex!7294 r!4008))) b!4124143))

(declare-fun b!4124144 () Bool)

(declare-fun e!2559056 () Bool)

(declare-fun tp!1256752 () Bool)

(assert (=> b!4124144 (= e!2559056 (and tp_is_empty!21321 tp!1256752))))

(assert (=> b!4123653 (= tp!1256651 e!2559056)))

(assert (= (and b!4123653 ((_ is Cons!44618) (t!340951 p!2912))) b!4124144))

(declare-fun b_lambda!121025 () Bool)

(assert (= b_lambda!121013 (or (and b!4123646 b_free!116731) (and b!4123642 b_free!116735 (= (toValue!9946 (transformation!7294 (h!50039 rules!3756))) (toValue!9946 (transformation!7294 r!4008)))) (and b!4123650 b_free!116739 (= (toValue!9946 (transformation!7294 rBis!149)) (toValue!9946 (transformation!7294 r!4008)))) (and b!4124130 b_free!116747 (= (toValue!9946 (transformation!7294 (h!50039 (t!340952 rules!3756)))) (toValue!9946 (transformation!7294 r!4008)))) b_lambda!121025)))

(declare-fun b_lambda!121027 () Bool)

(assert (= b_lambda!121011 (or (and b!4123646 b_free!116733) (and b!4123642 b_free!116737 (= (toChars!9805 (transformation!7294 (h!50039 rules!3756))) (toChars!9805 (transformation!7294 r!4008)))) (and b!4123650 b_free!116741 (= (toChars!9805 (transformation!7294 rBis!149)) (toChars!9805 (transformation!7294 r!4008)))) (and b!4124130 b_free!116749 (= (toChars!9805 (transformation!7294 (h!50039 (t!340952 rules!3756)))) (toChars!9805 (transformation!7294 r!4008)))) b_lambda!121027)))

(declare-fun b_lambda!121029 () Bool)

(assert (= b_lambda!121015 (or (and b!4123646 b_free!116731) (and b!4123642 b_free!116735 (= (toValue!9946 (transformation!7294 (h!50039 rules!3756))) (toValue!9946 (transformation!7294 r!4008)))) (and b!4123650 b_free!116739 (= (toValue!9946 (transformation!7294 rBis!149)) (toValue!9946 (transformation!7294 r!4008)))) (and b!4124130 b_free!116747 (= (toValue!9946 (transformation!7294 (h!50039 (t!340952 rules!3756)))) (toValue!9946 (transformation!7294 r!4008)))) b_lambda!121029)))

(check-sat (not b_next!117439) (not b_lambda!121003) (not tb!247455) (not d!1222314) (not b!4124134) (not b!4124132) (not d!1222300) (not b_next!117437) (not b!4123952) (not d!1222230) (not b!4124098) (not b_next!117451) (not b!4124026) (not b!4123955) (not b!4124128) (not b!4124075) (not b!4123956) (not d!1222298) (not b!4123799) (not d!1222302) (not b!4123731) (not d!1222292) (not d!1222258) (not b!4123735) b_and!319191 (not d!1222190) (not b!4124119) (not b!4123960) (not b!4124102) (not d!1222310) b_and!319163 (not d!1222304) (not b!4124129) (not b!4123781) (not b!4124097) (not b!4123726) (not b!4124117) (not b!4123688) (not tb!247449) (not b!4123749) (not b!4124004) b_and!319161 (not b!4124133) (not b!4124139) b_and!319177 (not d!1222294) (not b!4123800) (not b!4124142) (not b!4123668) (not b!4124057) (not b_next!117443) tp_is_empty!21321 (not b_lambda!121027) (not b!4124072) b_and!319165 b_and!319173 (not d!1222206) (not b!4124051) (not b!4124099) (not d!1222200) (not d!1222282) (not b!4124101) (not d!1222248) (not b!4124054) (not bm!290014) (not b!4123853) (not d!1222210) (not b!4123954) (not b_lambda!121029) (not d!1222196) (not b!4123727) b_and!319189 (not b_next!117445) (not b!4124141) (not d!1222192) (not b_next!117453) (not d!1222296) (not b!4124103) (not b!4124078) (not b!4123959) (not b!4123738) (not b_lambda!121025) b_and!319175 (not d!1222178) (not b!4123729) (not b!4124143) (not b!4123724) (not tb!247431) (not bm!290032) (not d!1222316) (not d!1222290) (not b_next!117441) (not b!4124068) (not b!4123801) (not bm!290017) (not b!4123867) (not b!4123763) (not b!4124118) (not b!4124144) (not d!1222208) (not b!4123953) (not d!1222306) (not b!4124105) (not b!4123958) (not b_next!117435) (not bm!290013) (not b!4124104))
(check-sat (not b_next!117437) (not b_next!117451) (not b_next!117439) b_and!319191 b_and!319163 b_and!319161 (not b_next!117453) b_and!319175 (not b_next!117441) (not b_next!117435) b_and!319177 (not b_next!117443) b_and!319165 b_and!319173 b_and!319189 (not b_next!117445))
