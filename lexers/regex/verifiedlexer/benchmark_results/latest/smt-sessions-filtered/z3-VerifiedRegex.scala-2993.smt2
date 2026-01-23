; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179210 () Bool)

(assert start!179210)

(declare-fun b!1812248 () Bool)

(declare-fun b_free!49895 () Bool)

(declare-fun b_next!50599 () Bool)

(assert (=> b!1812248 (= b_free!49895 (not b_next!50599))))

(declare-fun tp!511936 () Bool)

(declare-fun b_and!139891 () Bool)

(assert (=> b!1812248 (= tp!511936 b_and!139891)))

(declare-fun b_free!49897 () Bool)

(declare-fun b_next!50601 () Bool)

(assert (=> b!1812248 (= b_free!49897 (not b_next!50601))))

(declare-fun tp!511940 () Bool)

(declare-fun b_and!139893 () Bool)

(assert (=> b!1812248 (= tp!511940 b_and!139893)))

(declare-fun b!1812231 () Bool)

(declare-fun b_free!49899 () Bool)

(declare-fun b_next!50603 () Bool)

(assert (=> b!1812231 (= b_free!49899 (not b_next!50603))))

(declare-fun tp!511933 () Bool)

(declare-fun b_and!139895 () Bool)

(assert (=> b!1812231 (= tp!511933 b_and!139895)))

(declare-fun b_free!49901 () Bool)

(declare-fun b_next!50605 () Bool)

(assert (=> b!1812231 (= b_free!49901 (not b_next!50605))))

(declare-fun tp!511931 () Bool)

(declare-fun b_and!139897 () Bool)

(assert (=> b!1812231 (= tp!511931 b_and!139897)))

(declare-fun b!1812236 () Bool)

(declare-fun b_free!49903 () Bool)

(declare-fun b_next!50607 () Bool)

(assert (=> b!1812236 (= b_free!49903 (not b_next!50607))))

(declare-fun tp!511932 () Bool)

(declare-fun b_and!139899 () Bool)

(assert (=> b!1812236 (= tp!511932 b_and!139899)))

(declare-fun b_free!49905 () Bool)

(declare-fun b_next!50609 () Bool)

(assert (=> b!1812236 (= b_free!49905 (not b_next!50609))))

(declare-fun tp!511939 () Bool)

(declare-fun b_and!139901 () Bool)

(assert (=> b!1812236 (= tp!511939 b_and!139901)))

(declare-fun b!1812280 () Bool)

(declare-fun e!1157651 () Bool)

(assert (=> b!1812280 (= e!1157651 true)))

(declare-fun b!1812279 () Bool)

(declare-fun e!1157650 () Bool)

(assert (=> b!1812279 (= e!1157650 e!1157651)))

(declare-fun b!1812278 () Bool)

(declare-fun e!1157649 () Bool)

(assert (=> b!1812278 (= e!1157649 e!1157650)))

(declare-fun b!1812266 () Bool)

(assert (=> b!1812266 e!1157649))

(assert (= b!1812279 b!1812280))

(assert (= b!1812278 b!1812279))

(assert (= b!1812266 b!1812278))

(declare-datatypes ((List!19833 0))(
  ( (Nil!19763) (Cons!19763 (h!25164 (_ BitVec 16)) (t!169166 List!19833)) )
))
(declare-datatypes ((TokenValue!3637 0))(
  ( (FloatLiteralValue!7274 (text!25904 List!19833)) (TokenValueExt!3636 (__x!12576 Int)) (Broken!18185 (value!110736 List!19833)) (Object!3706) (End!3637) (Def!3637) (Underscore!3637) (Match!3637) (Else!3637) (Error!3637) (Case!3637) (If!3637) (Extends!3637) (Abstract!3637) (Class!3637) (Val!3637) (DelimiterValue!7274 (del!3697 List!19833)) (KeywordValue!3643 (value!110737 List!19833)) (CommentValue!7274 (value!110738 List!19833)) (WhitespaceValue!7274 (value!110739 List!19833)) (IndentationValue!3637 (value!110740 List!19833)) (String!22516) (Int32!3637) (Broken!18186 (value!110741 List!19833)) (Boolean!3638) (Unit!34356) (OperatorValue!3640 (op!3697 List!19833)) (IdentifierValue!7274 (value!110742 List!19833)) (IdentifierValue!7275 (value!110743 List!19833)) (WhitespaceValue!7275 (value!110744 List!19833)) (True!7274) (False!7274) (Broken!18187 (value!110745 List!19833)) (Broken!18188 (value!110746 List!19833)) (True!7275) (RightBrace!3637) (RightBracket!3637) (Colon!3637) (Null!3637) (Comma!3637) (LeftBracket!3637) (False!7275) (LeftBrace!3637) (ImaginaryLiteralValue!3637 (text!25905 List!19833)) (StringLiteralValue!10911 (value!110747 List!19833)) (EOFValue!3637 (value!110748 List!19833)) (IdentValue!3637 (value!110749 List!19833)) (DelimiterValue!7275 (value!110750 List!19833)) (DedentValue!3637 (value!110751 List!19833)) (NewLineValue!3637 (value!110752 List!19833)) (IntegerValue!10911 (value!110753 (_ BitVec 32)) (text!25906 List!19833)) (IntegerValue!10912 (value!110754 Int) (text!25907 List!19833)) (Times!3637) (Or!3637) (Equal!3637) (Minus!3637) (Broken!18189 (value!110755 List!19833)) (And!3637) (Div!3637) (LessEqual!3637) (Mod!3637) (Concat!8512) (Not!3637) (Plus!3637) (SpaceValue!3637 (value!110756 List!19833)) (IntegerValue!10913 (value!110757 Int) (text!25908 List!19833)) (StringLiteralValue!10912 (text!25909 List!19833)) (FloatLiteralValue!7275 (text!25910 List!19833)) (BytesLiteralValue!3637 (value!110758 List!19833)) (CommentValue!7275 (value!110759 List!19833)) (StringLiteralValue!10913 (value!110760 List!19833)) (ErrorTokenValue!3637 (msg!3698 List!19833)) )
))
(declare-datatypes ((C!9924 0))(
  ( (C!9925 (val!5558 Int)) )
))
(declare-datatypes ((List!19834 0))(
  ( (Nil!19764) (Cons!19764 (h!25165 C!9924) (t!169167 List!19834)) )
))
(declare-datatypes ((Regex!4875 0))(
  ( (ElementMatch!4875 (c!296080 C!9924)) (Concat!8513 (regOne!10262 Regex!4875) (regTwo!10262 Regex!4875)) (EmptyExpr!4875) (Star!4875 (reg!5204 Regex!4875)) (EmptyLang!4875) (Union!4875 (regOne!10263 Regex!4875) (regTwo!10263 Regex!4875)) )
))
(declare-datatypes ((String!22517 0))(
  ( (String!22518 (value!110761 String)) )
))
(declare-datatypes ((IArray!13155 0))(
  ( (IArray!13156 (innerList!6635 List!19834)) )
))
(declare-datatypes ((Conc!6575 0))(
  ( (Node!6575 (left!15854 Conc!6575) (right!16184 Conc!6575) (csize!13380 Int) (cheight!6786 Int)) (Leaf!9569 (xs!9451 IArray!13155) (csize!13381 Int)) (Empty!6575) )
))
(declare-datatypes ((BalanceConc!13094 0))(
  ( (BalanceConc!13095 (c!296081 Conc!6575)) )
))
(declare-datatypes ((TokenValueInjection!6934 0))(
  ( (TokenValueInjection!6935 (toValue!5078 Int) (toChars!4937 Int)) )
))
(declare-datatypes ((Rule!6894 0))(
  ( (Rule!6895 (regex!3547 Regex!4875) (tag!3957 String!22517) (isSeparator!3547 Bool) (transformation!3547 TokenValueInjection!6934)) )
))
(declare-datatypes ((Token!6660 0))(
  ( (Token!6661 (value!110762 TokenValue!3637) (rule!5653 Rule!6894) (size!15710 Int) (originalCharacters!4361 List!19834)) )
))
(declare-datatypes ((tuple2!19350 0))(
  ( (tuple2!19351 (_1!11077 Token!6660) (_2!11077 List!19834)) )
))
(declare-fun lt!703347 () tuple2!19350)

(declare-fun order!12877 () Int)

(declare-fun order!12875 () Int)

(declare-fun lambda!71000 () Int)

(declare-fun dynLambda!9813 (Int Int) Int)

(declare-fun dynLambda!9814 (Int Int) Int)

(assert (=> b!1812280 (< (dynLambda!9813 order!12875 (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) (dynLambda!9814 order!12877 lambda!71000))))

(declare-fun order!12879 () Int)

(declare-fun dynLambda!9815 (Int Int) Int)

(assert (=> b!1812280 (< (dynLambda!9815 order!12879 (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) (dynLambda!9814 order!12877 lambda!71000))))

(declare-fun b!1812224 () Bool)

(declare-fun res!814632 () Bool)

(declare-fun e!1157639 () Bool)

(assert (=> b!1812224 (=> (not res!814632) (not e!1157639))))

(declare-fun lt!703325 () tuple2!19350)

(declare-fun isEmpty!12506 (List!19834) Bool)

(assert (=> b!1812224 (= res!814632 (isEmpty!12506 (_2!11077 lt!703325)))))

(declare-fun b!1812225 () Bool)

(declare-fun token!523 () Token!6660)

(declare-fun e!1157631 () Bool)

(declare-fun e!1157640 () Bool)

(declare-fun tp!511938 () Bool)

(declare-fun inv!25753 (String!22517) Bool)

(declare-fun inv!25758 (TokenValueInjection!6934) Bool)

(assert (=> b!1812225 (= e!1157631 (and tp!511938 (inv!25753 (tag!3957 (rule!5653 token!523))) (inv!25758 (transformation!3547 (rule!5653 token!523))) e!1157640))))

(declare-fun b!1812226 () Bool)

(declare-fun e!1157622 () Bool)

(declare-fun e!1157620 () Bool)

(assert (=> b!1812226 (= e!1157622 e!1157620)))

(declare-fun res!814614 () Bool)

(assert (=> b!1812226 (=> res!814614 e!1157620)))

(declare-fun lt!703354 () Regex!4875)

(declare-fun lt!703344 () List!19834)

(declare-fun prefixMatch!758 (Regex!4875 List!19834) Bool)

(assert (=> b!1812226 (= res!814614 (prefixMatch!758 lt!703354 lt!703344))))

(declare-fun lt!703308 () List!19834)

(declare-fun suffix!1421 () List!19834)

(declare-fun ++!5377 (List!19834 List!19834) List!19834)

(declare-fun head!4210 (List!19834) C!9924)

(assert (=> b!1812226 (= lt!703344 (++!5377 lt!703308 (Cons!19764 (head!4210 suffix!1421) Nil!19764)))))

(declare-datatypes ((LexerInterface!3176 0))(
  ( (LexerInterfaceExt!3173 (__x!12577 Int)) (Lexer!3174) )
))
(declare-fun thiss!24550 () LexerInterface!3176)

(declare-datatypes ((List!19835 0))(
  ( (Nil!19765) (Cons!19765 (h!25166 Rule!6894) (t!169168 List!19835)) )
))
(declare-fun rules!3447 () List!19835)

(declare-fun rulesRegex!903 (LexerInterface!3176 List!19835) Regex!4875)

(assert (=> b!1812226 (= lt!703354 (rulesRegex!903 thiss!24550 rules!3447))))

(declare-fun tp!511935 () Bool)

(declare-fun b!1812227 () Bool)

(declare-fun e!1157611 () Bool)

(declare-fun e!1157614 () Bool)

(assert (=> b!1812227 (= e!1157611 (and tp!511935 (inv!25753 (tag!3957 (h!25166 rules!3447))) (inv!25758 (transformation!3547 (h!25166 rules!3447))) e!1157614))))

(declare-fun b!1812228 () Bool)

(declare-fun e!1157627 () Bool)

(declare-fun e!1157624 () Bool)

(assert (=> b!1812228 (= e!1157627 e!1157624)))

(declare-fun res!814636 () Bool)

(assert (=> b!1812228 (=> res!814636 e!1157624)))

(declare-fun lt!703345 () Bool)

(assert (=> b!1812228 (= res!814636 lt!703345)))

(declare-datatypes ((Unit!34357 0))(
  ( (Unit!34358) )
))
(declare-fun lt!703329 () Unit!34357)

(declare-fun e!1157612 () Unit!34357)

(assert (=> b!1812228 (= lt!703329 e!1157612)))

(declare-fun c!296078 () Bool)

(assert (=> b!1812228 (= c!296078 lt!703345)))

(declare-fun lt!703313 () Int)

(declare-fun lt!703331 () Int)

(assert (=> b!1812228 (= lt!703345 (> lt!703313 lt!703331))))

(declare-fun lt!703338 () BalanceConc!13094)

(declare-fun size!15711 (BalanceConc!13094) Int)

(assert (=> b!1812228 (= lt!703331 (size!15711 lt!703338))))

(declare-fun matchR!2348 (Regex!4875 List!19834) Bool)

(assert (=> b!1812228 (matchR!2348 lt!703354 lt!703308)))

(declare-fun rule!422 () Rule!6894)

(declare-fun lt!703332 () Unit!34357)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!254 (LexerInterface!3176 List!19835 List!19834 Token!6660 Rule!6894 List!19834) Unit!34357)

(assert (=> b!1812228 (= lt!703332 (lemmaMaxPrefixThenMatchesRulesRegex!254 thiss!24550 rules!3447 lt!703308 token!523 rule!422 Nil!19764))))

(declare-fun b!1812229 () Bool)

(declare-fun e!1157633 () Unit!34357)

(declare-fun Unit!34359 () Unit!34357)

(assert (=> b!1812229 (= e!1157633 Unit!34359)))

(declare-fun b!1812230 () Bool)

(declare-fun e!1157635 () Bool)

(assert (=> b!1812230 (= e!1157624 e!1157635)))

(declare-fun res!814630 () Bool)

(assert (=> b!1812230 (=> res!814630 e!1157635)))

(assert (=> b!1812230 (= res!814630 (not (= lt!703313 lt!703331)))))

(declare-fun lt!703311 () Unit!34357)

(assert (=> b!1812230 (= lt!703311 e!1157633)))

(declare-fun c!296077 () Bool)

(assert (=> b!1812230 (= c!296077 (< lt!703313 lt!703331))))

(declare-fun e!1157638 () Bool)

(assert (=> b!1812231 (= e!1157638 (and tp!511933 tp!511931))))

(declare-fun b!1812232 () Bool)

(declare-fun e!1157613 () Bool)

(declare-fun tp!511941 () Bool)

(assert (=> b!1812232 (= e!1157613 (and e!1157611 tp!511941))))

(declare-fun res!814634 () Bool)

(declare-fun e!1157625 () Bool)

(assert (=> start!179210 (=> (not res!814634) (not e!1157625))))

(get-info :version)

(assert (=> start!179210 (= res!814634 ((_ is Lexer!3174) thiss!24550))))

(assert (=> start!179210 e!1157625))

(declare-fun e!1157636 () Bool)

(assert (=> start!179210 e!1157636))

(declare-fun e!1157632 () Bool)

(assert (=> start!179210 e!1157632))

(assert (=> start!179210 true))

(declare-fun e!1157621 () Bool)

(declare-fun inv!25759 (Token!6660) Bool)

(assert (=> start!179210 (and (inv!25759 token!523) e!1157621)))

(assert (=> start!179210 e!1157613))

(declare-fun b!1812233 () Bool)

(declare-fun res!814619 () Bool)

(declare-fun e!1157629 () Bool)

(assert (=> b!1812233 (=> res!814619 e!1157629)))

(declare-fun lt!703327 () List!19834)

(assert (=> b!1812233 (= res!814619 (not (matchR!2348 (regex!3547 (rule!5653 (_1!11077 lt!703347))) lt!703327)))))

(declare-fun b!1812234 () Bool)

(declare-fun res!814641 () Bool)

(assert (=> b!1812234 (=> (not res!814641) (not e!1157625))))

(declare-fun contains!3581 (List!19835 Rule!6894) Bool)

(assert (=> b!1812234 (= res!814641 (contains!3581 rules!3447 rule!422))))

(declare-fun b!1812235 () Bool)

(declare-fun res!814633 () Bool)

(declare-fun e!1157618 () Bool)

(assert (=> b!1812235 (=> res!814633 e!1157618)))

(assert (=> b!1812235 (= res!814633 (not (contains!3581 rules!3447 (rule!5653 token!523))))))

(assert (=> b!1812236 (= e!1157614 (and tp!511932 tp!511939))))

(declare-fun tp!511934 () Bool)

(declare-fun b!1812237 () Bool)

(declare-fun inv!21 (TokenValue!3637) Bool)

(assert (=> b!1812237 (= e!1157621 (and (inv!21 (value!110762 token!523)) e!1157631 tp!511934))))

(declare-fun b!1812238 () Bool)

(declare-fun e!1157623 () Bool)

(assert (=> b!1812238 (= e!1157623 e!1157627)))

(declare-fun res!814618 () Bool)

(assert (=> b!1812238 (=> res!814618 e!1157627)))

(declare-fun lt!703319 () List!19834)

(declare-datatypes ((Option!4120 0))(
  ( (None!4119) (Some!4119 (v!25638 tuple2!19350)) )
))
(declare-fun lt!703352 () Option!4120)

(assert (=> b!1812238 (= res!814618 (or (not (= lt!703319 (_2!11077 lt!703347))) (not (= lt!703352 (Some!4119 (tuple2!19351 (_1!11077 lt!703347) lt!703319))))))))

(assert (=> b!1812238 (= (_2!11077 lt!703347) lt!703319)))

(declare-fun lt!703343 () Unit!34357)

(declare-fun lt!703349 () List!19834)

(declare-fun lemmaSamePrefixThenSameSuffix!898 (List!19834 List!19834 List!19834 List!19834 List!19834) Unit!34357)

(assert (=> b!1812238 (= lt!703343 (lemmaSamePrefixThenSameSuffix!898 lt!703327 (_2!11077 lt!703347) lt!703327 lt!703319 lt!703349))))

(declare-fun getSuffix!954 (List!19834 List!19834) List!19834)

(assert (=> b!1812238 (= lt!703319 (getSuffix!954 lt!703349 lt!703327))))

(declare-fun lt!703315 () TokenValue!3637)

(declare-fun lt!703348 () Int)

(assert (=> b!1812238 (= lt!703352 (Some!4119 (tuple2!19351 (Token!6661 lt!703315 (rule!5653 (_1!11077 lt!703347)) lt!703348 lt!703327) (_2!11077 lt!703347))))))

(declare-fun maxPrefixOneRule!1099 (LexerInterface!3176 Rule!6894 List!19834) Option!4120)

(assert (=> b!1812238 (= lt!703352 (maxPrefixOneRule!1099 thiss!24550 (rule!5653 (_1!11077 lt!703347)) lt!703349))))

(declare-fun size!15712 (List!19834) Int)

(assert (=> b!1812238 (= lt!703348 (size!15712 lt!703327))))

(declare-fun apply!5347 (TokenValueInjection!6934 BalanceConc!13094) TokenValue!3637)

(declare-fun seqFromList!2516 (List!19834) BalanceConc!13094)

(assert (=> b!1812238 (= lt!703315 (apply!5347 (transformation!3547 (rule!5653 (_1!11077 lt!703347))) (seqFromList!2516 lt!703327)))))

(declare-fun lt!703351 () Unit!34357)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!477 (LexerInterface!3176 List!19835 List!19834 List!19834 List!19834 Rule!6894) Unit!34357)

(assert (=> b!1812238 (= lt!703351 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!477 thiss!24550 rules!3447 lt!703327 lt!703349 (_2!11077 lt!703347) (rule!5653 (_1!11077 lt!703347))))))

(declare-fun b!1812239 () Bool)

(declare-fun e!1157642 () Bool)

(assert (=> b!1812239 (= e!1157618 e!1157642)))

(declare-fun res!814628 () Bool)

(assert (=> b!1812239 (=> res!814628 e!1157642)))

(declare-fun lt!703310 () BalanceConc!13094)

(declare-fun lt!703340 () Option!4120)

(assert (=> b!1812239 (= res!814628 (not (= lt!703340 (Some!4119 (tuple2!19351 (Token!6661 (apply!5347 (transformation!3547 (rule!5653 token!523)) lt!703310) (rule!5653 token!523) (size!15712 lt!703308) lt!703308) (getSuffix!954 lt!703308 lt!703308))))))))

(declare-fun lt!703336 () Unit!34357)

(declare-fun lemmaSemiInverse!685 (TokenValueInjection!6934 BalanceConc!13094) Unit!34357)

(assert (=> b!1812239 (= lt!703336 (lemmaSemiInverse!685 (transformation!3547 (rule!5653 token!523)) lt!703310))))

(assert (=> b!1812239 (= lt!703310 (seqFromList!2516 lt!703308))))

(declare-fun b!1812240 () Bool)

(declare-fun e!1157619 () Bool)

(declare-fun e!1157641 () Bool)

(assert (=> b!1812240 (= e!1157619 e!1157641)))

(declare-fun res!814620 () Bool)

(assert (=> b!1812240 (=> res!814620 e!1157641)))

(declare-fun lt!703305 () BalanceConc!13094)

(declare-fun list!8047 (BalanceConc!13094) List!19834)

(declare-fun dynLambda!9816 (Int TokenValue!3637) BalanceConc!13094)

(declare-fun dynLambda!9817 (Int BalanceConc!13094) TokenValue!3637)

(assert (=> b!1812240 (= res!814620 (not (= (list!8047 (dynLambda!9816 (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) (dynLambda!9817 (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) lt!703305))) lt!703327)))))

(declare-fun lt!703314 () Unit!34357)

(assert (=> b!1812240 (= lt!703314 (lemmaSemiInverse!685 (transformation!3547 (rule!5653 (_1!11077 lt!703347))) lt!703305))))

(declare-fun b!1812241 () Bool)

(declare-fun e!1157615 () Bool)

(assert (=> b!1812241 (= e!1157625 e!1157615)))

(declare-fun res!814616 () Bool)

(assert (=> b!1812241 (=> (not res!814616) (not e!1157615))))

(declare-fun isDefined!3461 (Option!4120) Bool)

(assert (=> b!1812241 (= res!814616 (isDefined!3461 lt!703340))))

(declare-fun maxPrefix!1730 (LexerInterface!3176 List!19835 List!19834) Option!4120)

(assert (=> b!1812241 (= lt!703340 (maxPrefix!1730 thiss!24550 rules!3447 lt!703308))))

(assert (=> b!1812241 (= lt!703308 (list!8047 lt!703338))))

(declare-fun charsOf!2196 (Token!6660) BalanceConc!13094)

(assert (=> b!1812241 (= lt!703338 (charsOf!2196 token!523))))

(declare-fun b!1812242 () Bool)

(declare-fun Unit!34360 () Unit!34357)

(assert (=> b!1812242 (= e!1157612 Unit!34360)))

(declare-fun lt!703320 () Unit!34357)

(assert (=> b!1812242 (= lt!703320 (lemmaMaxPrefixThenMatchesRulesRegex!254 thiss!24550 rules!3447 lt!703349 (_1!11077 lt!703347) (rule!5653 (_1!11077 lt!703347)) (_2!11077 lt!703347)))))

(assert (=> b!1812242 (matchR!2348 lt!703354 lt!703327)))

(declare-fun lt!703306 () List!19834)

(assert (=> b!1812242 (= lt!703306 (getSuffix!954 lt!703349 lt!703308))))

(declare-fun lt!703339 () Unit!34357)

(assert (=> b!1812242 (= lt!703339 (lemmaSamePrefixThenSameSuffix!898 lt!703308 suffix!1421 lt!703308 lt!703306 lt!703349))))

(assert (=> b!1812242 (= suffix!1421 lt!703306)))

(declare-fun lt!703307 () Unit!34357)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!323 (List!19834 List!19834) Unit!34357)

(assert (=> b!1812242 (= lt!703307 (lemmaAddHeadSuffixToPrefixStillPrefix!323 lt!703308 lt!703349))))

(declare-fun isPrefix!1787 (List!19834 List!19834) Bool)

(assert (=> b!1812242 (isPrefix!1787 (++!5377 lt!703308 (Cons!19764 (head!4210 lt!703306) Nil!19764)) lt!703349)))

(declare-fun lt!703316 () Unit!34357)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!195 (List!19834 List!19834 List!19834) Unit!34357)

(assert (=> b!1812242 (= lt!703316 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!195 lt!703327 lt!703344 lt!703349))))

(assert (=> b!1812242 (isPrefix!1787 lt!703344 lt!703327)))

(declare-fun lt!703353 () Unit!34357)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!186 (Regex!4875 List!19834 List!19834) Unit!34357)

(assert (=> b!1812242 (= lt!703353 (lemmaNotPrefixMatchThenCannotMatchLonger!186 lt!703354 lt!703344 lt!703327))))

(assert (=> b!1812242 false))

(declare-fun b!1812243 () Bool)

(declare-fun res!814622 () Bool)

(assert (=> b!1812243 (=> res!814622 e!1157618)))

(assert (=> b!1812243 (= res!814622 (not (contains!3581 rules!3447 (rule!5653 (_1!11077 lt!703347)))))))

(declare-fun b!1812244 () Bool)

(declare-fun res!814621 () Bool)

(assert (=> b!1812244 (=> res!814621 e!1157618)))

(assert (=> b!1812244 (= res!814621 (not (isPrefix!1787 lt!703308 lt!703308)))))

(declare-fun b!1812245 () Bool)

(declare-fun e!1157626 () Unit!34357)

(declare-fun Unit!34361 () Unit!34357)

(assert (=> b!1812245 (= e!1157626 Unit!34361)))

(declare-fun lt!703323 () Unit!34357)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!168 (LexerInterface!3176 List!19835 Rule!6894 List!19834 List!19834 Rule!6894) Unit!34357)

(assert (=> b!1812245 (= lt!703323 (lemmaMaxPrefNoSmallerRuleMatches!168 thiss!24550 rules!3447 (rule!5653 (_1!11077 lt!703347)) lt!703327 lt!703349 (rule!5653 token!523)))))

(declare-fun res!814629 () Bool)

(assert (=> b!1812245 (= res!814629 (not (matchR!2348 (regex!3547 (rule!5653 token!523)) lt!703327)))))

(declare-fun e!1157616 () Bool)

(assert (=> b!1812245 (=> (not res!814629) (not e!1157616))))

(assert (=> b!1812245 e!1157616))

(declare-fun b!1812246 () Bool)

(assert (=> b!1812246 (= e!1157616 false)))

(declare-fun b!1812247 () Bool)

(assert (=> b!1812247 (= e!1157641 e!1157623)))

(declare-fun res!814638 () Bool)

(assert (=> b!1812247 (=> res!814638 e!1157623)))

(declare-fun lt!703321 () TokenValue!3637)

(declare-fun lt!703326 () Option!4120)

(assert (=> b!1812247 (= res!814638 (not (= lt!703326 (Some!4119 (tuple2!19351 (Token!6661 lt!703321 (rule!5653 (_1!11077 lt!703347)) lt!703313 lt!703327) (_2!11077 lt!703347))))))))

(assert (=> b!1812247 (= lt!703313 (size!15711 lt!703305))))

(assert (=> b!1812247 (= lt!703321 (apply!5347 (transformation!3547 (rule!5653 (_1!11077 lt!703347))) lt!703305))))

(declare-fun lt!703342 () Unit!34357)

(declare-fun lemmaCharactersSize!605 (Token!6660) Unit!34357)

(assert (=> b!1812247 (= lt!703342 (lemmaCharactersSize!605 (_1!11077 lt!703347)))))

(declare-fun lt!703318 () Unit!34357)

(declare-fun lemmaEqSameImage!458 (TokenValueInjection!6934 BalanceConc!13094 BalanceConc!13094) Unit!34357)

(assert (=> b!1812247 (= lt!703318 (lemmaEqSameImage!458 (transformation!3547 (rule!5653 (_1!11077 lt!703347))) lt!703305 (seqFromList!2516 (originalCharacters!4361 (_1!11077 lt!703347)))))))

(assert (=> b!1812248 (= e!1157640 (and tp!511936 tp!511940))))

(declare-fun b!1812249 () Bool)

(assert (=> b!1812249 (= e!1157620 e!1157629)))

(declare-fun res!814617 () Bool)

(assert (=> b!1812249 (=> res!814617 e!1157629)))

(assert (=> b!1812249 (= res!814617 (not (isPrefix!1787 lt!703327 lt!703349)))))

(assert (=> b!1812249 (isPrefix!1787 lt!703327 (++!5377 lt!703327 (_2!11077 lt!703347)))))

(declare-fun lt!703312 () Unit!34357)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1296 (List!19834 List!19834) Unit!34357)

(assert (=> b!1812249 (= lt!703312 (lemmaConcatTwoListThenFirstIsPrefix!1296 lt!703327 (_2!11077 lt!703347)))))

(assert (=> b!1812249 (= lt!703327 (list!8047 lt!703305))))

(assert (=> b!1812249 (= lt!703305 (charsOf!2196 (_1!11077 lt!703347)))))

(declare-fun e!1157609 () Bool)

(assert (=> b!1812249 e!1157609))

(declare-fun res!814639 () Bool)

(assert (=> b!1812249 (=> (not res!814639) (not e!1157609))))

(declare-datatypes ((Option!4121 0))(
  ( (None!4120) (Some!4120 (v!25639 Rule!6894)) )
))
(declare-fun lt!703350 () Option!4121)

(declare-fun isDefined!3462 (Option!4121) Bool)

(assert (=> b!1812249 (= res!814639 (isDefined!3462 lt!703350))))

(declare-fun getRuleFromTag!595 (LexerInterface!3176 List!19835 String!22517) Option!4121)

(assert (=> b!1812249 (= lt!703350 (getRuleFromTag!595 thiss!24550 rules!3447 (tag!3957 (rule!5653 (_1!11077 lt!703347)))))))

(declare-fun lt!703309 () Unit!34357)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!595 (LexerInterface!3176 List!19835 List!19834 Token!6660) Unit!34357)

(assert (=> b!1812249 (= lt!703309 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!595 thiss!24550 rules!3447 lt!703349 (_1!11077 lt!703347)))))

(declare-fun get!6109 (Option!4120) tuple2!19350)

(assert (=> b!1812249 (= lt!703347 (get!6109 lt!703326))))

(declare-fun lt!703337 () Unit!34357)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!698 (LexerInterface!3176 List!19835 List!19834 List!19834) Unit!34357)

(assert (=> b!1812249 (= lt!703337 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!698 thiss!24550 rules!3447 lt!703308 suffix!1421))))

(assert (=> b!1812249 (= lt!703326 (maxPrefix!1730 thiss!24550 rules!3447 lt!703349))))

(assert (=> b!1812249 (isPrefix!1787 lt!703308 lt!703349)))

(declare-fun lt!703334 () Unit!34357)

(assert (=> b!1812249 (= lt!703334 (lemmaConcatTwoListThenFirstIsPrefix!1296 lt!703308 suffix!1421))))

(assert (=> b!1812249 (= lt!703349 (++!5377 lt!703308 suffix!1421))))

(declare-fun b!1812250 () Bool)

(declare-fun Unit!34362 () Unit!34357)

(assert (=> b!1812250 (= e!1157633 Unit!34362)))

(declare-fun lt!703322 () Unit!34357)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!256 (LexerInterface!3176 List!19835 Rule!6894 List!19834 List!19834 List!19834 Rule!6894) Unit!34357)

(assert (=> b!1812250 (= lt!703322 (lemmaMaxPrefixOutputsMaxPrefix!256 thiss!24550 rules!3447 (rule!5653 (_1!11077 lt!703347)) lt!703327 lt!703349 lt!703308 rule!422))))

(assert (=> b!1812250 false))

(declare-fun b!1812251 () Bool)

(declare-fun tp!511937 () Bool)

(assert (=> b!1812251 (= e!1157632 (and tp!511937 (inv!25753 (tag!3957 rule!422)) (inv!25758 (transformation!3547 rule!422)) e!1157638))))

(declare-fun b!1812252 () Bool)

(declare-fun e!1157628 () Bool)

(assert (=> b!1812252 (= e!1157628 e!1157618)))

(declare-fun res!814640 () Bool)

(assert (=> b!1812252 (=> res!814640 e!1157618)))

(declare-fun lt!703330 () Int)

(declare-fun lt!703335 () Int)

(assert (=> b!1812252 (= res!814640 (>= lt!703330 lt!703335))))

(declare-fun lt!703328 () Unit!34357)

(assert (=> b!1812252 (= lt!703328 e!1157626)))

(declare-fun c!296079 () Bool)

(assert (=> b!1812252 (= c!296079 (< lt!703335 lt!703330))))

(declare-fun getIndex!212 (List!19835 Rule!6894) Int)

(assert (=> b!1812252 (= lt!703330 (getIndex!212 rules!3447 (rule!5653 (_1!11077 lt!703347))))))

(assert (=> b!1812252 (= lt!703335 (getIndex!212 rules!3447 (rule!5653 token!523)))))

(declare-fun b!1812253 () Bool)

(declare-fun e!1157617 () Bool)

(declare-fun lt!703346 () Rule!6894)

(assert (=> b!1812253 (= e!1157617 (= (rule!5653 (_1!11077 lt!703347)) lt!703346))))

(declare-fun b!1812254 () Bool)

(declare-fun res!814642 () Bool)

(assert (=> b!1812254 (=> res!814642 e!1157641)))

(assert (=> b!1812254 (= res!814642 (not (= lt!703305 (dynLambda!9816 (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) (value!110762 (_1!11077 lt!703347))))))))

(declare-fun b!1812255 () Bool)

(declare-fun tp_is_empty!7993 () Bool)

(declare-fun tp!511942 () Bool)

(assert (=> b!1812255 (= e!1157636 (and tp_is_empty!7993 tp!511942))))

(declare-fun b!1812256 () Bool)

(assert (=> b!1812256 (= e!1157615 e!1157639)))

(declare-fun res!814631 () Bool)

(assert (=> b!1812256 (=> (not res!814631) (not e!1157639))))

(assert (=> b!1812256 (= res!814631 (= (_1!11077 lt!703325) token!523))))

(assert (=> b!1812256 (= lt!703325 (get!6109 lt!703340))))

(declare-fun b!1812257 () Bool)

(declare-fun res!814625 () Bool)

(assert (=> b!1812257 (=> (not res!814625) (not e!1157625))))

(declare-fun isEmpty!12507 (List!19835) Bool)

(assert (=> b!1812257 (= res!814625 (not (isEmpty!12507 rules!3447)))))

(declare-fun b!1812258 () Bool)

(declare-fun Unit!34363 () Unit!34357)

(assert (=> b!1812258 (= e!1157626 Unit!34363)))

(declare-fun b!1812259 () Bool)

(assert (=> b!1812259 (= e!1157639 (not e!1157622))))

(declare-fun res!814626 () Bool)

(assert (=> b!1812259 (=> res!814626 e!1157622)))

(assert (=> b!1812259 (= res!814626 (not (matchR!2348 (regex!3547 rule!422) lt!703308)))))

(declare-fun ruleValid!1045 (LexerInterface!3176 Rule!6894) Bool)

(assert (=> b!1812259 (ruleValid!1045 thiss!24550 rule!422)))

(declare-fun lt!703324 () Unit!34357)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!568 (LexerInterface!3176 Rule!6894 List!19835) Unit!34357)

(assert (=> b!1812259 (= lt!703324 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!568 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1812260 () Bool)

(declare-fun res!814624 () Bool)

(assert (=> b!1812260 (=> res!814624 e!1157622)))

(assert (=> b!1812260 (= res!814624 (isEmpty!12506 suffix!1421))))

(declare-fun b!1812261 () Bool)

(declare-fun res!814615 () Bool)

(assert (=> b!1812261 (=> (not res!814615) (not e!1157639))))

(assert (=> b!1812261 (= res!814615 (= (rule!5653 token!523) rule!422))))

(declare-fun b!1812262 () Bool)

(assert (=> b!1812262 (= e!1157635 e!1157628)))

(declare-fun res!814623 () Bool)

(assert (=> b!1812262 (=> res!814623 e!1157628)))

(assert (=> b!1812262 (= res!814623 (= (rule!5653 (_1!11077 lt!703347)) (rule!5653 token!523)))))

(assert (=> b!1812262 (= suffix!1421 (_2!11077 lt!703347))))

(declare-fun lt!703317 () Unit!34357)

(assert (=> b!1812262 (= lt!703317 (lemmaSamePrefixThenSameSuffix!898 lt!703308 suffix!1421 lt!703308 (_2!11077 lt!703347) lt!703349))))

(assert (=> b!1812262 (= lt!703327 lt!703308)))

(declare-fun lt!703333 () Unit!34357)

(declare-fun lemmaIsPrefixSameLengthThenSameList!283 (List!19834 List!19834 List!19834) Unit!34357)

(assert (=> b!1812262 (= lt!703333 (lemmaIsPrefixSameLengthThenSameList!283 lt!703327 lt!703308 lt!703349))))

(declare-fun b!1812263 () Bool)

(declare-fun res!814644 () Bool)

(assert (=> b!1812263 (=> res!814644 e!1157618)))

(assert (=> b!1812263 (= res!814644 (isEmpty!12506 lt!703308))))

(declare-fun b!1812264 () Bool)

(declare-fun res!814635 () Bool)

(assert (=> b!1812264 (=> (not res!814635) (not e!1157625))))

(declare-fun rulesInvariant!2845 (LexerInterface!3176 List!19835) Bool)

(assert (=> b!1812264 (= res!814635 (rulesInvariant!2845 thiss!24550 rules!3447))))

(declare-fun b!1812265 () Bool)

(assert (=> b!1812265 (= e!1157642 (ruleValid!1045 thiss!24550 (rule!5653 token!523)))))

(assert (=> b!1812266 (= e!1157629 e!1157619)))

(declare-fun res!814643 () Bool)

(assert (=> b!1812266 (=> res!814643 e!1157619)))

(declare-fun Forall!914 (Int) Bool)

(assert (=> b!1812266 (= res!814643 (not (Forall!914 lambda!71000)))))

(declare-fun lt!703341 () Unit!34357)

(declare-fun lemmaInv!746 (TokenValueInjection!6934) Unit!34357)

(assert (=> b!1812266 (= lt!703341 (lemmaInv!746 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))))))

(declare-fun b!1812267 () Bool)

(declare-fun Unit!34364 () Unit!34357)

(assert (=> b!1812267 (= e!1157612 Unit!34364)))

(declare-fun b!1812268 () Bool)

(assert (=> b!1812268 (= e!1157609 e!1157617)))

(declare-fun res!814627 () Bool)

(assert (=> b!1812268 (=> (not res!814627) (not e!1157617))))

(assert (=> b!1812268 (= res!814627 (matchR!2348 (regex!3547 lt!703346) (list!8047 (charsOf!2196 (_1!11077 lt!703347)))))))

(declare-fun get!6110 (Option!4121) Rule!6894)

(assert (=> b!1812268 (= lt!703346 (get!6110 lt!703350))))

(declare-fun b!1812269 () Bool)

(declare-fun res!814637 () Bool)

(assert (=> b!1812269 (=> res!814637 e!1157642)))

(assert (=> b!1812269 (= res!814637 (not (matchR!2348 (regex!3547 (rule!5653 token!523)) lt!703308)))))

(assert (= (and start!179210 res!814634) b!1812257))

(assert (= (and b!1812257 res!814625) b!1812264))

(assert (= (and b!1812264 res!814635) b!1812234))

(assert (= (and b!1812234 res!814641) b!1812241))

(assert (= (and b!1812241 res!814616) b!1812256))

(assert (= (and b!1812256 res!814631) b!1812224))

(assert (= (and b!1812224 res!814632) b!1812261))

(assert (= (and b!1812261 res!814615) b!1812259))

(assert (= (and b!1812259 (not res!814626)) b!1812260))

(assert (= (and b!1812260 (not res!814624)) b!1812226))

(assert (= (and b!1812226 (not res!814614)) b!1812249))

(assert (= (and b!1812249 res!814639) b!1812268))

(assert (= (and b!1812268 res!814627) b!1812253))

(assert (= (and b!1812249 (not res!814617)) b!1812233))

(assert (= (and b!1812233 (not res!814619)) b!1812266))

(assert (= (and b!1812266 (not res!814643)) b!1812240))

(assert (= (and b!1812240 (not res!814620)) b!1812254))

(assert (= (and b!1812254 (not res!814642)) b!1812247))

(assert (= (and b!1812247 (not res!814638)) b!1812238))

(assert (= (and b!1812238 (not res!814618)) b!1812228))

(assert (= (and b!1812228 c!296078) b!1812242))

(assert (= (and b!1812228 (not c!296078)) b!1812267))

(assert (= (and b!1812228 (not res!814636)) b!1812230))

(assert (= (and b!1812230 c!296077) b!1812250))

(assert (= (and b!1812230 (not c!296077)) b!1812229))

(assert (= (and b!1812230 (not res!814630)) b!1812262))

(assert (= (and b!1812262 (not res!814623)) b!1812252))

(assert (= (and b!1812252 c!296079) b!1812245))

(assert (= (and b!1812252 (not c!296079)) b!1812258))

(assert (= (and b!1812245 res!814629) b!1812246))

(assert (= (and b!1812252 (not res!814640)) b!1812244))

(assert (= (and b!1812244 (not res!814621)) b!1812235))

(assert (= (and b!1812235 (not res!814633)) b!1812243))

(assert (= (and b!1812243 (not res!814622)) b!1812263))

(assert (= (and b!1812263 (not res!814644)) b!1812239))

(assert (= (and b!1812239 (not res!814628)) b!1812269))

(assert (= (and b!1812269 (not res!814637)) b!1812265))

(assert (= (and start!179210 ((_ is Cons!19764) suffix!1421)) b!1812255))

(assert (= b!1812251 b!1812231))

(assert (= start!179210 b!1812251))

(assert (= b!1812225 b!1812248))

(assert (= b!1812237 b!1812225))

(assert (= start!179210 b!1812237))

(assert (= b!1812227 b!1812236))

(assert (= b!1812232 b!1812227))

(assert (= (and start!179210 ((_ is Cons!19765) rules!3447)) b!1812232))

(declare-fun b_lambda!59739 () Bool)

(assert (=> (not b_lambda!59739) (not b!1812240)))

(declare-fun tb!110707 () Bool)

(declare-fun t!169149 () Bool)

(assert (=> (and b!1812248 (= (toChars!4937 (transformation!3547 (rule!5653 token!523))) (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169149) tb!110707))

(declare-fun b!1812285 () Bool)

(declare-fun tp!511945 () Bool)

(declare-fun e!1157654 () Bool)

(declare-fun inv!25760 (Conc!6575) Bool)

(assert (=> b!1812285 (= e!1157654 (and (inv!25760 (c!296081 (dynLambda!9816 (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) (dynLambda!9817 (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) lt!703305)))) tp!511945))))

(declare-fun result!132934 () Bool)

(declare-fun inv!25761 (BalanceConc!13094) Bool)

(assert (=> tb!110707 (= result!132934 (and (inv!25761 (dynLambda!9816 (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) (dynLambda!9817 (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) lt!703305))) e!1157654))))

(assert (= tb!110707 b!1812285))

(declare-fun m!2241149 () Bool)

(assert (=> b!1812285 m!2241149))

(declare-fun m!2241151 () Bool)

(assert (=> tb!110707 m!2241151))

(assert (=> b!1812240 t!169149))

(declare-fun b_and!139903 () Bool)

(assert (= b_and!139893 (and (=> t!169149 result!132934) b_and!139903)))

(declare-fun t!169151 () Bool)

(declare-fun tb!110709 () Bool)

(assert (=> (and b!1812231 (= (toChars!4937 (transformation!3547 rule!422)) (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169151) tb!110709))

(declare-fun result!132938 () Bool)

(assert (= result!132938 result!132934))

(assert (=> b!1812240 t!169151))

(declare-fun b_and!139905 () Bool)

(assert (= b_and!139897 (and (=> t!169151 result!132938) b_and!139905)))

(declare-fun tb!110711 () Bool)

(declare-fun t!169153 () Bool)

(assert (=> (and b!1812236 (= (toChars!4937 (transformation!3547 (h!25166 rules!3447))) (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169153) tb!110711))

(declare-fun result!132940 () Bool)

(assert (= result!132940 result!132934))

(assert (=> b!1812240 t!169153))

(declare-fun b_and!139907 () Bool)

(assert (= b_and!139901 (and (=> t!169153 result!132940) b_and!139907)))

(declare-fun b_lambda!59741 () Bool)

(assert (=> (not b_lambda!59741) (not b!1812240)))

(declare-fun t!169155 () Bool)

(declare-fun tb!110713 () Bool)

(assert (=> (and b!1812248 (= (toValue!5078 (transformation!3547 (rule!5653 token!523))) (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169155) tb!110713))

(declare-fun result!132942 () Bool)

(assert (=> tb!110713 (= result!132942 (inv!21 (dynLambda!9817 (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) lt!703305)))))

(declare-fun m!2241153 () Bool)

(assert (=> tb!110713 m!2241153))

(assert (=> b!1812240 t!169155))

(declare-fun b_and!139909 () Bool)

(assert (= b_and!139891 (and (=> t!169155 result!132942) b_and!139909)))

(declare-fun tb!110715 () Bool)

(declare-fun t!169157 () Bool)

(assert (=> (and b!1812231 (= (toValue!5078 (transformation!3547 rule!422)) (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169157) tb!110715))

(declare-fun result!132946 () Bool)

(assert (= result!132946 result!132942))

(assert (=> b!1812240 t!169157))

(declare-fun b_and!139911 () Bool)

(assert (= b_and!139895 (and (=> t!169157 result!132946) b_and!139911)))

(declare-fun t!169159 () Bool)

(declare-fun tb!110717 () Bool)

(assert (=> (and b!1812236 (= (toValue!5078 (transformation!3547 (h!25166 rules!3447))) (toValue!5078 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169159) tb!110717))

(declare-fun result!132948 () Bool)

(assert (= result!132948 result!132942))

(assert (=> b!1812240 t!169159))

(declare-fun b_and!139913 () Bool)

(assert (= b_and!139899 (and (=> t!169159 result!132948) b_and!139913)))

(declare-fun b_lambda!59743 () Bool)

(assert (=> (not b_lambda!59743) (not b!1812254)))

(declare-fun t!169161 () Bool)

(declare-fun tb!110719 () Bool)

(assert (=> (and b!1812248 (= (toChars!4937 (transformation!3547 (rule!5653 token!523))) (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169161) tb!110719))

(declare-fun b!1812288 () Bool)

(declare-fun e!1157658 () Bool)

(declare-fun tp!511946 () Bool)

(assert (=> b!1812288 (= e!1157658 (and (inv!25760 (c!296081 (dynLambda!9816 (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) (value!110762 (_1!11077 lt!703347))))) tp!511946))))

(declare-fun result!132950 () Bool)

(assert (=> tb!110719 (= result!132950 (and (inv!25761 (dynLambda!9816 (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347)))) (value!110762 (_1!11077 lt!703347)))) e!1157658))))

(assert (= tb!110719 b!1812288))

(declare-fun m!2241155 () Bool)

(assert (=> b!1812288 m!2241155))

(declare-fun m!2241157 () Bool)

(assert (=> tb!110719 m!2241157))

(assert (=> b!1812254 t!169161))

(declare-fun b_and!139915 () Bool)

(assert (= b_and!139903 (and (=> t!169161 result!132950) b_and!139915)))

(declare-fun tb!110721 () Bool)

(declare-fun t!169163 () Bool)

(assert (=> (and b!1812231 (= (toChars!4937 (transformation!3547 rule!422)) (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169163) tb!110721))

(declare-fun result!132952 () Bool)

(assert (= result!132952 result!132950))

(assert (=> b!1812254 t!169163))

(declare-fun b_and!139917 () Bool)

(assert (= b_and!139905 (and (=> t!169163 result!132952) b_and!139917)))

(declare-fun t!169165 () Bool)

(declare-fun tb!110723 () Bool)

(assert (=> (and b!1812236 (= (toChars!4937 (transformation!3547 (h!25166 rules!3447))) (toChars!4937 (transformation!3547 (rule!5653 (_1!11077 lt!703347))))) t!169165) tb!110723))

(declare-fun result!132954 () Bool)

(assert (= result!132954 result!132950))

(assert (=> b!1812254 t!169165))

(declare-fun b_and!139919 () Bool)

(assert (= b_and!139907 (and (=> t!169165 result!132954) b_and!139919)))

(declare-fun m!2241159 () Bool)

(assert (=> b!1812260 m!2241159))

(declare-fun m!2241161 () Bool)

(assert (=> b!1812262 m!2241161))

(declare-fun m!2241163 () Bool)

(assert (=> b!1812262 m!2241163))

(declare-fun m!2241165 () Bool)

(assert (=> b!1812251 m!2241165))

(declare-fun m!2241167 () Bool)

(assert (=> b!1812251 m!2241167))

(declare-fun m!2241169 () Bool)

(assert (=> b!1812243 m!2241169))

(declare-fun m!2241171 () Bool)

(assert (=> b!1812266 m!2241171))

(declare-fun m!2241173 () Bool)

(assert (=> b!1812266 m!2241173))

(declare-fun m!2241175 () Bool)

(assert (=> b!1812263 m!2241175))

(declare-fun m!2241177 () Bool)

(assert (=> b!1812240 m!2241177))

(assert (=> b!1812240 m!2241177))

(declare-fun m!2241179 () Bool)

(assert (=> b!1812240 m!2241179))

(assert (=> b!1812240 m!2241179))

(declare-fun m!2241181 () Bool)

(assert (=> b!1812240 m!2241181))

(declare-fun m!2241183 () Bool)

(assert (=> b!1812240 m!2241183))

(declare-fun m!2241185 () Bool)

(assert (=> b!1812256 m!2241185))

(declare-fun m!2241187 () Bool)

(assert (=> b!1812234 m!2241187))

(declare-fun m!2241189 () Bool)

(assert (=> b!1812250 m!2241189))

(declare-fun m!2241191 () Bool)

(assert (=> b!1812269 m!2241191))

(declare-fun m!2241193 () Bool)

(assert (=> b!1812239 m!2241193))

(declare-fun m!2241195 () Bool)

(assert (=> b!1812239 m!2241195))

(declare-fun m!2241197 () Bool)

(assert (=> b!1812239 m!2241197))

(declare-fun m!2241199 () Bool)

(assert (=> b!1812239 m!2241199))

(declare-fun m!2241201 () Bool)

(assert (=> b!1812239 m!2241201))

(declare-fun m!2241203 () Bool)

(assert (=> b!1812265 m!2241203))

(declare-fun m!2241205 () Bool)

(assert (=> b!1812228 m!2241205))

(declare-fun m!2241207 () Bool)

(assert (=> b!1812228 m!2241207))

(declare-fun m!2241209 () Bool)

(assert (=> b!1812228 m!2241209))

(declare-fun m!2241211 () Bool)

(assert (=> b!1812237 m!2241211))

(declare-fun m!2241213 () Bool)

(assert (=> b!1812241 m!2241213))

(declare-fun m!2241215 () Bool)

(assert (=> b!1812241 m!2241215))

(declare-fun m!2241217 () Bool)

(assert (=> b!1812241 m!2241217))

(declare-fun m!2241219 () Bool)

(assert (=> b!1812241 m!2241219))

(declare-fun m!2241221 () Bool)

(assert (=> b!1812247 m!2241221))

(declare-fun m!2241223 () Bool)

(assert (=> b!1812247 m!2241223))

(declare-fun m!2241225 () Bool)

(assert (=> b!1812247 m!2241225))

(declare-fun m!2241227 () Bool)

(assert (=> b!1812247 m!2241227))

(assert (=> b!1812247 m!2241221))

(declare-fun m!2241229 () Bool)

(assert (=> b!1812247 m!2241229))

(declare-fun m!2241231 () Bool)

(assert (=> b!1812226 m!2241231))

(declare-fun m!2241233 () Bool)

(assert (=> b!1812226 m!2241233))

(declare-fun m!2241235 () Bool)

(assert (=> b!1812226 m!2241235))

(declare-fun m!2241237 () Bool)

(assert (=> b!1812226 m!2241237))

(declare-fun m!2241239 () Bool)

(assert (=> b!1812233 m!2241239))

(declare-fun m!2241241 () Bool)

(assert (=> b!1812225 m!2241241))

(declare-fun m!2241243 () Bool)

(assert (=> b!1812225 m!2241243))

(declare-fun m!2241245 () Bool)

(assert (=> start!179210 m!2241245))

(declare-fun m!2241247 () Bool)

(assert (=> b!1812245 m!2241247))

(declare-fun m!2241249 () Bool)

(assert (=> b!1812245 m!2241249))

(declare-fun m!2241251 () Bool)

(assert (=> b!1812264 m!2241251))

(declare-fun m!2241253 () Bool)

(assert (=> b!1812268 m!2241253))

(assert (=> b!1812268 m!2241253))

(declare-fun m!2241255 () Bool)

(assert (=> b!1812268 m!2241255))

(assert (=> b!1812268 m!2241255))

(declare-fun m!2241257 () Bool)

(assert (=> b!1812268 m!2241257))

(declare-fun m!2241259 () Bool)

(assert (=> b!1812268 m!2241259))

(declare-fun m!2241261 () Bool)

(assert (=> b!1812257 m!2241261))

(declare-fun m!2241263 () Bool)

(assert (=> b!1812242 m!2241263))

(declare-fun m!2241265 () Bool)

(assert (=> b!1812242 m!2241265))

(declare-fun m!2241267 () Bool)

(assert (=> b!1812242 m!2241267))

(declare-fun m!2241269 () Bool)

(assert (=> b!1812242 m!2241269))

(declare-fun m!2241271 () Bool)

(assert (=> b!1812242 m!2241271))

(declare-fun m!2241273 () Bool)

(assert (=> b!1812242 m!2241273))

(assert (=> b!1812242 m!2241271))

(declare-fun m!2241275 () Bool)

(assert (=> b!1812242 m!2241275))

(declare-fun m!2241277 () Bool)

(assert (=> b!1812242 m!2241277))

(declare-fun m!2241279 () Bool)

(assert (=> b!1812242 m!2241279))

(declare-fun m!2241281 () Bool)

(assert (=> b!1812242 m!2241281))

(declare-fun m!2241283 () Bool)

(assert (=> b!1812242 m!2241283))

(declare-fun m!2241285 () Bool)

(assert (=> b!1812244 m!2241285))

(declare-fun m!2241287 () Bool)

(assert (=> b!1812259 m!2241287))

(declare-fun m!2241289 () Bool)

(assert (=> b!1812259 m!2241289))

(declare-fun m!2241291 () Bool)

(assert (=> b!1812259 m!2241291))

(declare-fun m!2241293 () Bool)

(assert (=> b!1812227 m!2241293))

(declare-fun m!2241295 () Bool)

(assert (=> b!1812227 m!2241295))

(declare-fun m!2241297 () Bool)

(assert (=> b!1812254 m!2241297))

(declare-fun m!2241299 () Bool)

(assert (=> b!1812252 m!2241299))

(declare-fun m!2241301 () Bool)

(assert (=> b!1812252 m!2241301))

(declare-fun m!2241303 () Bool)

(assert (=> b!1812235 m!2241303))

(declare-fun m!2241305 () Bool)

(assert (=> b!1812249 m!2241305))

(declare-fun m!2241307 () Bool)

(assert (=> b!1812249 m!2241307))

(declare-fun m!2241309 () Bool)

(assert (=> b!1812249 m!2241309))

(declare-fun m!2241311 () Bool)

(assert (=> b!1812249 m!2241311))

(assert (=> b!1812249 m!2241307))

(declare-fun m!2241313 () Bool)

(assert (=> b!1812249 m!2241313))

(declare-fun m!2241315 () Bool)

(assert (=> b!1812249 m!2241315))

(declare-fun m!2241317 () Bool)

(assert (=> b!1812249 m!2241317))

(declare-fun m!2241319 () Bool)

(assert (=> b!1812249 m!2241319))

(declare-fun m!2241321 () Bool)

(assert (=> b!1812249 m!2241321))

(declare-fun m!2241323 () Bool)

(assert (=> b!1812249 m!2241323))

(declare-fun m!2241325 () Bool)

(assert (=> b!1812249 m!2241325))

(declare-fun m!2241327 () Bool)

(assert (=> b!1812249 m!2241327))

(declare-fun m!2241329 () Bool)

(assert (=> b!1812249 m!2241329))

(declare-fun m!2241331 () Bool)

(assert (=> b!1812249 m!2241331))

(assert (=> b!1812249 m!2241253))

(declare-fun m!2241333 () Bool)

(assert (=> b!1812224 m!2241333))

(declare-fun m!2241335 () Bool)

(assert (=> b!1812238 m!2241335))

(declare-fun m!2241337 () Bool)

(assert (=> b!1812238 m!2241337))

(declare-fun m!2241339 () Bool)

(assert (=> b!1812238 m!2241339))

(declare-fun m!2241341 () Bool)

(assert (=> b!1812238 m!2241341))

(declare-fun m!2241343 () Bool)

(assert (=> b!1812238 m!2241343))

(declare-fun m!2241345 () Bool)

(assert (=> b!1812238 m!2241345))

(declare-fun m!2241347 () Bool)

(assert (=> b!1812238 m!2241347))

(assert (=> b!1812238 m!2241345))

(check-sat (not b!1812268) b_and!139919 (not b!1812237) (not tb!110713) (not b!1812259) (not b!1812226) (not b_lambda!59743) (not b_lambda!59741) b_and!139915 (not start!179210) (not b!1812234) (not b!1812238) (not b_next!50601) (not b!1812247) (not b!1812252) (not b!1812257) b_and!139913 (not b_next!50607) (not b!1812255) (not b!1812235) (not b_next!50605) (not b!1812260) tp_is_empty!7993 (not b!1812265) (not b_lambda!59739) (not b!1812241) (not tb!110719) (not b!1812233) (not b!1812245) (not b!1812228) (not b!1812224) (not b_next!50603) (not b!1812256) (not b!1812249) (not b!1812266) (not b!1812232) (not b!1812263) (not b!1812269) (not b!1812242) (not tb!110707) (not b!1812250) (not b_next!50599) (not b!1812244) (not b!1812264) (not b!1812225) (not b!1812227) (not b!1812240) b_and!139917 (not b!1812251) (not b!1812243) (not b!1812288) (not b!1812285) (not b_next!50609) b_and!139909 (not b!1812262) (not b!1812239) b_and!139911)
(check-sat (not b_next!50601) b_and!139919 (not b_next!50605) (not b_next!50603) (not b_next!50599) b_and!139917 b_and!139915 b_and!139913 (not b_next!50607) (not b_next!50609) b_and!139909 b_and!139911)
