; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390858 () Bool)

(assert start!390858)

(declare-fun b!4121640 () Bool)

(declare-fun b_free!116547 () Bool)

(declare-fun b_next!117251 () Bool)

(assert (=> b!4121640 (= b_free!116547 (not b_next!117251))))

(declare-fun tp!1255971 () Bool)

(declare-fun b_and!318845 () Bool)

(assert (=> b!4121640 (= tp!1255971 b_and!318845)))

(declare-fun b_free!116549 () Bool)

(declare-fun b_next!117253 () Bool)

(assert (=> b!4121640 (= b_free!116549 (not b_next!117253))))

(declare-fun tp!1255973 () Bool)

(declare-fun b_and!318847 () Bool)

(assert (=> b!4121640 (= tp!1255973 b_and!318847)))

(declare-fun b!4121634 () Bool)

(declare-fun b_free!116551 () Bool)

(declare-fun b_next!117255 () Bool)

(assert (=> b!4121634 (= b_free!116551 (not b_next!117255))))

(declare-fun tp!1255967 () Bool)

(declare-fun b_and!318849 () Bool)

(assert (=> b!4121634 (= tp!1255967 b_and!318849)))

(declare-fun b_free!116553 () Bool)

(declare-fun b_next!117257 () Bool)

(assert (=> b!4121634 (= b_free!116553 (not b_next!117257))))

(declare-fun tp!1255970 () Bool)

(declare-fun b_and!318851 () Bool)

(assert (=> b!4121634 (= tp!1255970 b_and!318851)))

(declare-fun b!4121649 () Bool)

(declare-fun b_free!116555 () Bool)

(declare-fun b_next!117259 () Bool)

(assert (=> b!4121649 (= b_free!116555 (not b_next!117259))))

(declare-fun tp!1255978 () Bool)

(declare-fun b_and!318853 () Bool)

(assert (=> b!4121649 (= tp!1255978 b_and!318853)))

(declare-fun b_free!116557 () Bool)

(declare-fun b_next!117261 () Bool)

(assert (=> b!4121649 (= b_free!116557 (not b_next!117261))))

(declare-fun tp!1255968 () Bool)

(declare-fun b_and!318855 () Bool)

(assert (=> b!4121649 (= tp!1255968 b_and!318855)))

(declare-fun b!4121633 () Bool)

(declare-fun res!1684025 () Bool)

(declare-fun e!2557457 () Bool)

(assert (=> b!4121633 (=> (not res!1684025) (not e!2557457))))

(declare-datatypes ((LexerInterface!6869 0))(
  ( (LexerInterfaceExt!6866 (__x!27237 Int)) (Lexer!6867) )
))
(declare-fun thiss!25645 () LexerInterface!6869)

(declare-datatypes ((List!44693 0))(
  ( (Nil!44569) (Cons!44569 (h!49989 (_ BitVec 16)) (t!340804 List!44693)) )
))
(declare-datatypes ((TokenValue!7510 0))(
  ( (FloatLiteralValue!15020 (text!53015 List!44693)) (TokenValueExt!7509 (__x!27238 Int)) (Broken!37550 (value!228008 List!44693)) (Object!7633) (End!7510) (Def!7510) (Underscore!7510) (Match!7510) (Else!7510) (Error!7510) (Case!7510) (If!7510) (Extends!7510) (Abstract!7510) (Class!7510) (Val!7510) (DelimiterValue!15020 (del!7570 List!44693)) (KeywordValue!7516 (value!228009 List!44693)) (CommentValue!15020 (value!228010 List!44693)) (WhitespaceValue!15020 (value!228011 List!44693)) (IndentationValue!7510 (value!228012 List!44693)) (String!51299) (Int32!7510) (Broken!37551 (value!228013 List!44693)) (Boolean!7511) (Unit!63916) (OperatorValue!7513 (op!7570 List!44693)) (IdentifierValue!15020 (value!228014 List!44693)) (IdentifierValue!15021 (value!228015 List!44693)) (WhitespaceValue!15021 (value!228016 List!44693)) (True!15020) (False!15020) (Broken!37552 (value!228017 List!44693)) (Broken!37553 (value!228018 List!44693)) (True!15021) (RightBrace!7510) (RightBracket!7510) (Colon!7510) (Null!7510) (Comma!7510) (LeftBracket!7510) (False!15021) (LeftBrace!7510) (ImaginaryLiteralValue!7510 (text!53016 List!44693)) (StringLiteralValue!22530 (value!228019 List!44693)) (EOFValue!7510 (value!228020 List!44693)) (IdentValue!7510 (value!228021 List!44693)) (DelimiterValue!15021 (value!228022 List!44693)) (DedentValue!7510 (value!228023 List!44693)) (NewLineValue!7510 (value!228024 List!44693)) (IntegerValue!22530 (value!228025 (_ BitVec 32)) (text!53017 List!44693)) (IntegerValue!22531 (value!228026 Int) (text!53018 List!44693)) (Times!7510) (Or!7510) (Equal!7510) (Minus!7510) (Broken!37554 (value!228027 List!44693)) (And!7510) (Div!7510) (LessEqual!7510) (Mod!7510) (Concat!19695) (Not!7510) (Plus!7510) (SpaceValue!7510 (value!228028 List!44693)) (IntegerValue!22532 (value!228029 Int) (text!53019 List!44693)) (StringLiteralValue!22531 (text!53020 List!44693)) (FloatLiteralValue!15021 (text!53021 List!44693)) (BytesLiteralValue!7510 (value!228030 List!44693)) (CommentValue!15021 (value!228031 List!44693)) (StringLiteralValue!22532 (value!228032 List!44693)) (ErrorTokenValue!7510 (msg!7571 List!44693)) )
))
(declare-datatypes ((C!24556 0))(
  ( (C!24557 (val!14388 Int)) )
))
(declare-datatypes ((List!44694 0))(
  ( (Nil!44570) (Cons!44570 (h!49990 C!24556) (t!340805 List!44694)) )
))
(declare-datatypes ((IArray!26987 0))(
  ( (IArray!26988 (innerList!13551 List!44694)) )
))
(declare-datatypes ((Conc!13491 0))(
  ( (Node!13491 (left!33385 Conc!13491) (right!33715 Conc!13491) (csize!27212 Int) (cheight!13702 Int)) (Leaf!20846 (xs!16797 IArray!26987) (csize!27213 Int)) (Empty!13491) )
))
(declare-datatypes ((BalanceConc!26576 0))(
  ( (BalanceConc!26577 (c!707678 Conc!13491)) )
))
(declare-datatypes ((Regex!12185 0))(
  ( (ElementMatch!12185 (c!707679 C!24556)) (Concat!19696 (regOne!24882 Regex!12185) (regTwo!24882 Regex!12185)) (EmptyExpr!12185) (Star!12185 (reg!12514 Regex!12185)) (EmptyLang!12185) (Union!12185 (regOne!24883 Regex!12185) (regTwo!24883 Regex!12185)) )
))
(declare-datatypes ((String!51300 0))(
  ( (String!51301 (value!228033 String)) )
))
(declare-datatypes ((TokenValueInjection!14448 0))(
  ( (TokenValueInjection!14449 (toValue!9932 Int) (toChars!9791 Int)) )
))
(declare-datatypes ((Rule!14360 0))(
  ( (Rule!14361 (regex!7280 Regex!12185) (tag!8140 String!51300) (isSeparator!7280 Bool) (transformation!7280 TokenValueInjection!14448)) )
))
(declare-fun r!4008 () Rule!14360)

(declare-fun ruleValid!3088 (LexerInterface!6869 Rule!14360) Bool)

(assert (=> b!4121633 (= res!1684025 (ruleValid!3088 thiss!25645 r!4008))))

(declare-fun res!1684026 () Bool)

(declare-fun e!2557458 () Bool)

(assert (=> start!390858 (=> (not res!1684026) (not e!2557458))))

(get-info :version)

(assert (=> start!390858 (= res!1684026 ((_ is Lexer!6867) thiss!25645))))

(assert (=> start!390858 e!2557458))

(declare-fun e!2557460 () Bool)

(assert (=> start!390858 e!2557460))

(declare-fun e!2557471 () Bool)

(assert (=> start!390858 e!2557471))

(assert (=> start!390858 true))

(declare-fun e!2557463 () Bool)

(assert (=> start!390858 e!2557463))

(declare-fun e!2557461 () Bool)

(assert (=> start!390858 e!2557461))

(declare-fun e!2557467 () Bool)

(assert (=> start!390858 e!2557467))

(declare-fun e!2557464 () Bool)

(assert (=> b!4121634 (= e!2557464 (and tp!1255967 tp!1255970))))

(declare-datatypes ((List!44695 0))(
  ( (Nil!44571) (Cons!44571 (h!49991 Rule!14360) (t!340806 List!44695)) )
))
(declare-fun rules!3756 () List!44695)

(declare-fun b!4121635 () Bool)

(declare-fun e!2557468 () Bool)

(declare-fun tp!1255975 () Bool)

(declare-fun inv!59153 (String!51300) Bool)

(declare-fun inv!59155 (TokenValueInjection!14448) Bool)

(assert (=> b!4121635 (= e!2557468 (and tp!1255975 (inv!59153 (tag!8140 (h!49991 rules!3756))) (inv!59155 (transformation!7280 (h!49991 rules!3756))) e!2557464))))

(declare-fun b!4121636 () Bool)

(declare-fun e!2557466 () Bool)

(declare-fun e!2557459 () Bool)

(assert (=> b!4121636 (= e!2557466 e!2557459)))

(declare-fun res!1684028 () Bool)

(assert (=> b!4121636 (=> res!1684028 e!2557459)))

(declare-datatypes ((Token!13490 0))(
  ( (Token!13491 (value!228034 TokenValue!7510) (rule!10356 Rule!14360) (size!32990 Int) (originalCharacters!7776 List!44694)) )
))
(declare-datatypes ((tuple2!43038 0))(
  ( (tuple2!43039 (_1!24653 Token!13490) (_2!24653 List!44694)) )
))
(declare-datatypes ((Option!9588 0))(
  ( (None!9587) (Some!9587 (v!40175 tuple2!43038)) )
))
(declare-fun lt!1470418 () Option!9588)

(declare-fun isEmpty!26514 (Option!9588) Bool)

(assert (=> b!4121636 (= res!1684028 (isEmpty!26514 lt!1470418))))

(declare-fun input!3238 () List!44694)

(declare-fun rBis!149 () Rule!14360)

(declare-fun maxPrefixOneRule!3011 (LexerInterface!6869 Rule!14360 List!44694) Option!9588)

(assert (=> b!4121636 (= lt!1470418 (maxPrefixOneRule!3011 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4121636 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!63917 0))(
  ( (Unit!63918) )
))
(declare-fun lt!1470429 () Unit!63917)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!20 (LexerInterface!6869 List!44695 Rule!14360 Rule!14360) Unit!63917)

(assert (=> b!4121636 (= lt!1470429 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!20 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!8952 (List!44695 Rule!14360) Bool)

(declare-fun tail!6439 (List!44695) List!44695)

(assert (=> b!4121636 (contains!8952 (tail!6439 rules!3756) r!4008)))

(declare-fun lt!1470431 () Unit!63917)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!22 (List!44695 Rule!14360 Rule!14360) Unit!63917)

(assert (=> b!4121636 (= lt!1470431 (lemmaGetIndexBiggerAndHeadEqThenTailContains!22 rules!3756 rBis!149 r!4008))))

(declare-fun b!4121637 () Bool)

(declare-fun e!2557470 () Bool)

(assert (=> b!4121637 (= e!2557470 false)))

(declare-fun b!4121638 () Bool)

(declare-fun tp_is_empty!21293 () Bool)

(declare-fun tp!1255977 () Bool)

(assert (=> b!4121638 (= e!2557461 (and tp_is_empty!21293 tp!1255977))))

(declare-fun b!4121639 () Bool)

(declare-fun res!1684024 () Bool)

(assert (=> b!4121639 (=> (not res!1684024) (not e!2557458))))

(assert (=> b!4121639 (= res!1684024 (contains!8952 rules!3756 r!4008))))

(declare-fun e!2557472 () Bool)

(assert (=> b!4121640 (= e!2557472 (and tp!1255971 tp!1255973))))

(declare-fun b!4121641 () Bool)

(declare-fun res!1684020 () Bool)

(assert (=> b!4121641 (=> (not res!1684020) (not e!2557457))))

(declare-fun getIndex!628 (List!44695 Rule!14360) Int)

(assert (=> b!4121641 (= res!1684020 (< (getIndex!628 rules!3756 rBis!149) (getIndex!628 rules!3756 r!4008)))))

(declare-fun b!4121642 () Bool)

(declare-fun res!1684027 () Bool)

(assert (=> b!4121642 (=> (not res!1684027) (not e!2557458))))

(declare-fun p!2912 () List!44694)

(declare-fun isEmpty!26515 (List!44694) Bool)

(assert (=> b!4121642 (= res!1684027 (not (isEmpty!26515 p!2912)))))

(declare-fun b!4121643 () Bool)

(assert (=> b!4121643 (= e!2557457 (not e!2557466))))

(declare-fun res!1684018 () Bool)

(assert (=> b!4121643 (=> res!1684018 e!2557466)))

(assert (=> b!4121643 (= res!1684018 (or (not ((_ is Cons!44571) rules!3756)) (not (= (h!49991 rules!3756) rBis!149))))))

(declare-fun lt!1470424 () Unit!63917)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2132 (LexerInterface!6869 Rule!14360 List!44695) Unit!63917)

(assert (=> b!4121643 (= lt!1470424 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2132 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4121643 (ruleValid!3088 thiss!25645 rBis!149)))

(declare-fun lt!1470419 () Unit!63917)

(assert (=> b!4121643 (= lt!1470419 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2132 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4121644 () Bool)

(declare-fun tp!1255974 () Bool)

(assert (=> b!4121644 (= e!2557471 (and tp_is_empty!21293 tp!1255974))))

(declare-fun b!4121645 () Bool)

(declare-fun tp!1255972 () Bool)

(assert (=> b!4121645 (= e!2557460 (and e!2557468 tp!1255972))))

(declare-fun b!4121646 () Bool)

(declare-fun res!1684015 () Bool)

(assert (=> b!4121646 (=> (not res!1684015) (not e!2557458))))

(declare-fun isEmpty!26516 (List!44695) Bool)

(assert (=> b!4121646 (= res!1684015 (not (isEmpty!26516 rules!3756)))))

(declare-fun b!4121647 () Bool)

(assert (=> b!4121647 (= e!2557458 e!2557457)))

(declare-fun res!1684023 () Bool)

(assert (=> b!4121647 (=> (not res!1684023) (not e!2557457))))

(declare-fun lt!1470422 () List!44694)

(declare-fun lt!1470421 () Token!13490)

(declare-fun maxPrefix!4061 (LexerInterface!6869 List!44695 List!44694) Option!9588)

(assert (=> b!4121647 (= res!1684023 (= (maxPrefix!4061 thiss!25645 rules!3756 input!3238) (Some!9587 (tuple2!43039 lt!1470421 lt!1470422))))))

(declare-fun getSuffix!2544 (List!44694 List!44694) List!44694)

(assert (=> b!4121647 (= lt!1470422 (getSuffix!2544 input!3238 p!2912))))

(declare-fun lt!1470428 () TokenValue!7510)

(declare-fun lt!1470423 () Int)

(assert (=> b!4121647 (= lt!1470421 (Token!13491 lt!1470428 r!4008 lt!1470423 p!2912))))

(declare-fun size!32991 (List!44694) Int)

(assert (=> b!4121647 (= lt!1470423 (size!32991 p!2912))))

(declare-fun lt!1470430 () BalanceConc!26576)

(declare-fun apply!10353 (TokenValueInjection!14448 BalanceConc!26576) TokenValue!7510)

(assert (=> b!4121647 (= lt!1470428 (apply!10353 (transformation!7280 r!4008) lt!1470430))))

(declare-fun lt!1470425 () Unit!63917)

(declare-fun lemmaSemiInverse!2138 (TokenValueInjection!14448 BalanceConc!26576) Unit!63917)

(assert (=> b!4121647 (= lt!1470425 (lemmaSemiInverse!2138 (transformation!7280 r!4008) lt!1470430))))

(declare-fun seqFromList!5397 (List!44694) BalanceConc!26576)

(assert (=> b!4121647 (= lt!1470430 (seqFromList!5397 p!2912))))

(declare-fun b!4121648 () Bool)

(declare-fun res!1684019 () Bool)

(assert (=> b!4121648 (=> (not res!1684019) (not e!2557457))))

(declare-fun matchR!6016 (Regex!12185 List!44694) Bool)

(assert (=> b!4121648 (= res!1684019 (matchR!6016 (regex!7280 r!4008) p!2912))))

(declare-fun e!2557462 () Bool)

(assert (=> b!4121649 (= e!2557462 (and tp!1255978 tp!1255968))))

(declare-fun b!4121650 () Bool)

(declare-fun res!1684014 () Bool)

(assert (=> b!4121650 (=> (not res!1684014) (not e!2557458))))

(assert (=> b!4121650 (= res!1684014 (contains!8952 rules!3756 rBis!149))))

(declare-fun tp!1255969 () Bool)

(declare-fun b!4121651 () Bool)

(assert (=> b!4121651 (= e!2557463 (and tp!1255969 (inv!59153 (tag!8140 r!4008)) (inv!59155 (transformation!7280 r!4008)) e!2557462))))

(declare-fun b!4121652 () Bool)

(declare-fun res!1684021 () Bool)

(assert (=> b!4121652 (=> (not res!1684021) (not e!2557458))))

(declare-fun rulesInvariant!6166 (LexerInterface!6869 List!44695) Bool)

(assert (=> b!4121652 (= res!1684021 (rulesInvariant!6166 thiss!25645 rules!3756))))

(declare-fun b!4121653 () Bool)

(declare-fun e!2557474 () Bool)

(declare-fun validRegex!5476 (Regex!12185) Bool)

(assert (=> b!4121653 (= e!2557474 (validRegex!5476 (regex!7280 rBis!149)))))

(assert (=> b!4121653 e!2557470))

(declare-fun res!1684016 () Bool)

(assert (=> b!4121653 (=> (not res!1684016) (not e!2557470))))

(declare-fun lt!1470426 () List!44694)

(assert (=> b!4121653 (= res!1684016 (<= (size!32991 lt!1470426) lt!1470423))))

(declare-fun lt!1470427 () tuple2!43038)

(declare-fun lt!1470420 () Unit!63917)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!2 (LexerInterface!6869 List!44695 List!44694 Token!13490 List!44694 List!44694 List!44694 List!44694 Rule!14360 Token!13490) Unit!63917)

(assert (=> b!4121653 (= lt!1470420 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!2 thiss!25645 rules!3756 p!2912 lt!1470421 input!3238 lt!1470422 lt!1470426 (getSuffix!2544 input!3238 lt!1470426) rBis!149 (_1!24653 lt!1470427)))))

(declare-fun lt!1470432 () BalanceConc!26576)

(declare-fun list!16355 (BalanceConc!26576) List!44694)

(assert (=> b!4121653 (= lt!1470426 (list!16355 lt!1470432))))

(declare-fun b!4121654 () Bool)

(assert (=> b!4121654 (= e!2557459 e!2557474)))

(declare-fun res!1684022 () Bool)

(assert (=> b!4121654 (=> res!1684022 e!2557474)))

(declare-fun size!32992 (BalanceConc!26576) Int)

(assert (=> b!4121654 (= res!1684022 (<= (size!32992 lt!1470432) lt!1470423))))

(declare-fun charsOf!4902 (Token!13490) BalanceConc!26576)

(assert (=> b!4121654 (= lt!1470432 (charsOf!4902 (_1!24653 lt!1470427)))))

(declare-fun get!14538 (Option!9588) tuple2!43038)

(assert (=> b!4121654 (= lt!1470427 (get!14538 lt!1470418))))

(declare-fun b!4121655 () Bool)

(declare-fun res!1684017 () Bool)

(assert (=> b!4121655 (=> (not res!1684017) (not e!2557458))))

(declare-fun isPrefix!4215 (List!44694 List!44694) Bool)

(assert (=> b!4121655 (= res!1684017 (isPrefix!4215 p!2912 input!3238))))

(declare-fun b!4121656 () Bool)

(declare-fun tp!1255976 () Bool)

(assert (=> b!4121656 (= e!2557467 (and tp!1255976 (inv!59153 (tag!8140 rBis!149)) (inv!59155 (transformation!7280 rBis!149)) e!2557472))))

(assert (= (and start!390858 res!1684026) b!4121655))

(assert (= (and b!4121655 res!1684017) b!4121646))

(assert (= (and b!4121646 res!1684015) b!4121652))

(assert (= (and b!4121652 res!1684021) b!4121639))

(assert (= (and b!4121639 res!1684024) b!4121650))

(assert (= (and b!4121650 res!1684014) b!4121642))

(assert (= (and b!4121642 res!1684027) b!4121647))

(assert (= (and b!4121647 res!1684023) b!4121648))

(assert (= (and b!4121648 res!1684019) b!4121641))

(assert (= (and b!4121641 res!1684020) b!4121633))

(assert (= (and b!4121633 res!1684025) b!4121643))

(assert (= (and b!4121643 (not res!1684018)) b!4121636))

(assert (= (and b!4121636 (not res!1684028)) b!4121654))

(assert (= (and b!4121654 (not res!1684022)) b!4121653))

(assert (= (and b!4121653 res!1684016) b!4121637))

(assert (= b!4121635 b!4121634))

(assert (= b!4121645 b!4121635))

(assert (= (and start!390858 ((_ is Cons!44571) rules!3756)) b!4121645))

(assert (= (and start!390858 ((_ is Cons!44570) p!2912)) b!4121644))

(assert (= b!4121651 b!4121649))

(assert (= start!390858 b!4121651))

(assert (= (and start!390858 ((_ is Cons!44570) input!3238)) b!4121638))

(assert (= b!4121656 b!4121640))

(assert (= start!390858 b!4121656))

(declare-fun m!4720723 () Bool)

(assert (=> b!4121655 m!4720723))

(declare-fun m!4720725 () Bool)

(assert (=> b!4121650 m!4720725))

(declare-fun m!4720727 () Bool)

(assert (=> b!4121651 m!4720727))

(declare-fun m!4720729 () Bool)

(assert (=> b!4121651 m!4720729))

(declare-fun m!4720731 () Bool)

(assert (=> b!4121635 m!4720731))

(declare-fun m!4720733 () Bool)

(assert (=> b!4121635 m!4720733))

(declare-fun m!4720735 () Bool)

(assert (=> b!4121653 m!4720735))

(declare-fun m!4720737 () Bool)

(assert (=> b!4121653 m!4720737))

(declare-fun m!4720739 () Bool)

(assert (=> b!4121653 m!4720739))

(declare-fun m!4720741 () Bool)

(assert (=> b!4121653 m!4720741))

(declare-fun m!4720743 () Bool)

(assert (=> b!4121653 m!4720743))

(assert (=> b!4121653 m!4720737))

(declare-fun m!4720745 () Bool)

(assert (=> b!4121646 m!4720745))

(declare-fun m!4720747 () Bool)

(assert (=> b!4121636 m!4720747))

(declare-fun m!4720749 () Bool)

(assert (=> b!4121636 m!4720749))

(declare-fun m!4720751 () Bool)

(assert (=> b!4121636 m!4720751))

(assert (=> b!4121636 m!4720747))

(declare-fun m!4720753 () Bool)

(assert (=> b!4121636 m!4720753))

(declare-fun m!4720755 () Bool)

(assert (=> b!4121636 m!4720755))

(declare-fun m!4720757 () Bool)

(assert (=> b!4121636 m!4720757))

(declare-fun m!4720759 () Bool)

(assert (=> b!4121639 m!4720759))

(declare-fun m!4720761 () Bool)

(assert (=> b!4121647 m!4720761))

(declare-fun m!4720763 () Bool)

(assert (=> b!4121647 m!4720763))

(declare-fun m!4720765 () Bool)

(assert (=> b!4121647 m!4720765))

(declare-fun m!4720767 () Bool)

(assert (=> b!4121647 m!4720767))

(declare-fun m!4720769 () Bool)

(assert (=> b!4121647 m!4720769))

(declare-fun m!4720771 () Bool)

(assert (=> b!4121647 m!4720771))

(declare-fun m!4720773 () Bool)

(assert (=> b!4121643 m!4720773))

(declare-fun m!4720775 () Bool)

(assert (=> b!4121643 m!4720775))

(declare-fun m!4720777 () Bool)

(assert (=> b!4121643 m!4720777))

(declare-fun m!4720779 () Bool)

(assert (=> b!4121642 m!4720779))

(declare-fun m!4720781 () Bool)

(assert (=> b!4121656 m!4720781))

(declare-fun m!4720783 () Bool)

(assert (=> b!4121656 m!4720783))

(declare-fun m!4720785 () Bool)

(assert (=> b!4121654 m!4720785))

(declare-fun m!4720787 () Bool)

(assert (=> b!4121654 m!4720787))

(declare-fun m!4720789 () Bool)

(assert (=> b!4121654 m!4720789))

(declare-fun m!4720791 () Bool)

(assert (=> b!4121652 m!4720791))

(declare-fun m!4720793 () Bool)

(assert (=> b!4121648 m!4720793))

(declare-fun m!4720795 () Bool)

(assert (=> b!4121641 m!4720795))

(declare-fun m!4720797 () Bool)

(assert (=> b!4121641 m!4720797))

(declare-fun m!4720799 () Bool)

(assert (=> b!4121633 m!4720799))

(check-sat (not b!4121654) (not b!4121635) (not b!4121656) (not b!4121644) (not b!4121647) (not b_next!117253) (not b!4121643) (not b!4121645) (not b!4121633) b_and!318853 b_and!318847 (not b_next!117259) (not b_next!117255) (not b!4121650) (not b!4121652) (not b!4121642) (not b!4121648) (not b!4121641) tp_is_empty!21293 (not b!4121639) b_and!318849 (not b!4121636) b_and!318855 (not b!4121655) (not b!4121651) b_and!318851 (not b!4121646) (not b_next!117251) (not b!4121638) (not b_next!117261) b_and!318845 (not b_next!117257) (not b!4121653))
(check-sat (not b_next!117253) b_and!318849 b_and!318855 b_and!318851 b_and!318853 b_and!318847 (not b_next!117259) (not b_next!117255) (not b_next!117251) (not b_next!117261) b_and!318845 (not b_next!117257))
