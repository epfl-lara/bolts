; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746036 () Bool)

(assert start!746036)

(declare-fun b!7906486 () Bool)

(declare-fun b_free!134999 () Bool)

(declare-fun b_next!135789 () Bool)

(assert (=> b!7906486 (= b_free!134999 (not b_next!135789))))

(declare-fun tp!2355438 () Bool)

(declare-fun b_and!353187 () Bool)

(assert (=> b!7906486 (= tp!2355438 b_and!353187)))

(declare-fun b_free!135001 () Bool)

(declare-fun b_next!135791 () Bool)

(assert (=> b!7906486 (= b_free!135001 (not b_next!135791))))

(declare-fun tp!2355436 () Bool)

(declare-fun b_and!353189 () Bool)

(assert (=> b!7906486 (= tp!2355436 b_and!353189)))

(declare-fun b!7906483 () Bool)

(declare-fun e!4667151 () Bool)

(declare-datatypes ((List!74404 0))(
  ( (Nil!74280) (Cons!74280 (h!80728 (_ BitVec 16)) (t!389657 List!74404)) )
))
(declare-datatypes ((TokenValue!8944 0))(
  ( (FloatLiteralValue!17888 (text!63053 List!74404)) (TokenValueExt!8943 (__x!35175 Int)) (Broken!44720 (value!287853 List!74404)) (Object!9067) (End!8944) (Def!8944) (Underscore!8944) (Match!8944) (Else!8944) (Error!8944) (Case!8944) (If!8944) (Extends!8944) (Abstract!8944) (Class!8944) (Val!8944) (DelimiterValue!17888 (del!9004 List!74404)) (KeywordValue!8950 (value!287854 List!74404)) (CommentValue!17888 (value!287855 List!74404)) (WhitespaceValue!17888 (value!287856 List!74404)) (IndentationValue!8944 (value!287857 List!74404)) (String!83141) (Int32!8944) (Broken!44721 (value!287858 List!74404)) (Boolean!8945) (Unit!169322) (OperatorValue!8947 (op!9004 List!74404)) (IdentifierValue!17888 (value!287859 List!74404)) (IdentifierValue!17889 (value!287860 List!74404)) (WhitespaceValue!17889 (value!287861 List!74404)) (True!17888) (False!17888) (Broken!44722 (value!287862 List!74404)) (Broken!44723 (value!287863 List!74404)) (True!17889) (RightBrace!8944) (RightBracket!8944) (Colon!8944) (Null!8944) (Comma!8944) (LeftBracket!8944) (False!17889) (LeftBrace!8944) (ImaginaryLiteralValue!8944 (text!63054 List!74404)) (StringLiteralValue!26832 (value!287864 List!74404)) (EOFValue!8944 (value!287865 List!74404)) (IdentValue!8944 (value!287866 List!74404)) (DelimiterValue!17889 (value!287867 List!74404)) (DedentValue!8944 (value!287868 List!74404)) (NewLineValue!8944 (value!287869 List!74404)) (IntegerValue!26832 (value!287870 (_ BitVec 32)) (text!63055 List!74404)) (IntegerValue!26833 (value!287871 Int) (text!63056 List!74404)) (Times!8944) (Or!8944) (Equal!8944) (Minus!8944) (Broken!44724 (value!287872 List!74404)) (And!8944) (Div!8944) (LessEqual!8944) (Mod!8944) (Concat!30275) (Not!8944) (Plus!8944) (SpaceValue!8944 (value!287873 List!74404)) (IntegerValue!26834 (value!287874 Int) (text!63057 List!74404)) (StringLiteralValue!26833 (text!63058 List!74404)) (FloatLiteralValue!17889 (text!63059 List!74404)) (BytesLiteralValue!8944 (value!287875 List!74404)) (CommentValue!17889 (value!287876 List!74404)) (StringLiteralValue!26834 (value!287877 List!74404)) (ErrorTokenValue!8944 (msg!9005 List!74404)) )
))
(declare-datatypes ((C!42992 0))(
  ( (C!42993 (val!31960 Int)) )
))
(declare-datatypes ((List!74405 0))(
  ( (Nil!74281) (Cons!74281 (h!80729 C!42992) (t!389658 List!74405)) )
))
(declare-datatypes ((IArray!31665 0))(
  ( (IArray!31666 (innerList!15890 List!74405)) )
))
(declare-datatypes ((Conc!15802 0))(
  ( (Node!15802 (left!56655 Conc!15802) (right!56985 Conc!15802) (csize!31834 Int) (cheight!16013 Int)) (Leaf!30084 (xs!19184 IArray!31665) (csize!31835 Int)) (Empty!15802) )
))
(declare-datatypes ((BalanceConc!30722 0))(
  ( (BalanceConc!30723 (c!1450757 Conc!15802)) )
))
(declare-datatypes ((String!83142 0))(
  ( (String!83143 (value!287878 String)) )
))
(declare-datatypes ((Regex!21331 0))(
  ( (ElementMatch!21331 (c!1450758 C!42992)) (Concat!30276 (regOne!43174 Regex!21331) (regTwo!43174 Regex!21331)) (EmptyExpr!21331) (Star!21331 (reg!21660 Regex!21331)) (EmptyLang!21331) (Union!21331 (regOne!43175 Regex!21331) (regTwo!43175 Regex!21331)) )
))
(declare-datatypes ((TokenValueInjection!17196 0))(
  ( (TokenValueInjection!17197 (toValue!11685 Int) (toChars!11544 Int)) )
))
(declare-datatypes ((Rule!17056 0))(
  ( (Rule!17057 (regex!8628 Regex!21331) (tag!9492 String!83142) (isSeparator!8628 Bool) (transformation!8628 TokenValueInjection!17196)) )
))
(declare-datatypes ((List!74406 0))(
  ( (Nil!74282) (Cons!74282 (h!80730 Rule!17056) (t!389659 List!74406)) )
))
(declare-fun rulesArg!141 () List!74406)

(declare-fun size!43055 (List!74406) Int)

(assert (=> b!7906483 (= e!4667151 (< (size!43055 (t!389659 rulesArg!141)) (size!43055 rulesArg!141)))))

(declare-fun input!1184 () List!74405)

(declare-datatypes ((LexerInterface!8220 0))(
  ( (LexerInterfaceExt!8217 (__x!35176 Int)) (Lexer!8218) )
))
(declare-fun thiss!14377 () LexerInterface!8220)

(declare-datatypes ((Token!15676 0))(
  ( (Token!15677 (value!287879 TokenValue!8944) (rule!11922 Rule!17056) (size!43056 Int) (originalCharacters!8869 List!74405)) )
))
(declare-datatypes ((tuple2!70292 0))(
  ( (tuple2!70293 (_1!38449 Token!15676) (_2!38449 List!74405)) )
))
(declare-datatypes ((Option!17910 0))(
  ( (None!17909) (Some!17909 (v!55056 tuple2!70292)) )
))
(declare-fun lt!2685230 () Option!17910)

(declare-fun maxPrefixOneRule!3796 (LexerInterface!8220 Rule!17056 List!74405) Option!17910)

(assert (=> b!7906483 (= lt!2685230 (maxPrefixOneRule!3796 thiss!14377 (h!80730 rulesArg!141) input!1184))))

(declare-fun b!7906484 () Bool)

(declare-fun e!4667150 () Bool)

(assert (=> b!7906484 (= e!4667150 (not e!4667151))))

(declare-fun res!3137529 () Bool)

(assert (=> b!7906484 (=> res!3137529 e!4667151)))

(get-info :version)

(assert (=> b!7906484 (= res!3137529 (or (and ((_ is Cons!74282) rulesArg!141) ((_ is Nil!74282) (t!389659 rulesArg!141))) (not ((_ is Cons!74282) rulesArg!141))))))

(declare-fun isPrefix!6461 (List!74405 List!74405) Bool)

(assert (=> b!7906484 (isPrefix!6461 input!1184 input!1184)))

(declare-datatypes ((Unit!169323 0))(
  ( (Unit!169324) )
))
(declare-fun lt!2685229 () Unit!169323)

(declare-fun lemmaIsPrefixRefl!3972 (List!74405 List!74405) Unit!169323)

(assert (=> b!7906484 (= lt!2685229 (lemmaIsPrefixRefl!3972 input!1184 input!1184))))

(declare-fun b!7906485 () Bool)

(declare-fun res!3137532 () Bool)

(assert (=> b!7906485 (=> (not res!3137532) (not e!4667150))))

(declare-fun rulesValidInductive!3439 (LexerInterface!8220 List!74406) Bool)

(assert (=> b!7906485 (= res!3137532 (rulesValidInductive!3439 thiss!14377 rulesArg!141))))

(declare-fun e!4667156 () Bool)

(assert (=> b!7906486 (= e!4667156 (and tp!2355438 tp!2355436))))

(declare-fun res!3137530 () Bool)

(assert (=> start!746036 (=> (not res!3137530) (not e!4667150))))

(assert (=> start!746036 (= res!3137530 ((_ is Lexer!8218) thiss!14377))))

(assert (=> start!746036 e!4667150))

(assert (=> start!746036 true))

(declare-fun e!4667155 () Bool)

(assert (=> start!746036 e!4667155))

(declare-fun e!4667153 () Bool)

(assert (=> start!746036 e!4667153))

(declare-fun b!7906487 () Bool)

(declare-fun tp_is_empty!53037 () Bool)

(declare-fun tp!2355435 () Bool)

(assert (=> b!7906487 (= e!4667153 (and tp_is_empty!53037 tp!2355435))))

(declare-fun tp!2355434 () Bool)

(declare-fun b!7906488 () Bool)

(declare-fun e!4667152 () Bool)

(declare-fun inv!95290 (String!83142) Bool)

(declare-fun inv!95292 (TokenValueInjection!17196) Bool)

(assert (=> b!7906488 (= e!4667152 (and tp!2355434 (inv!95290 (tag!9492 (h!80730 rulesArg!141))) (inv!95292 (transformation!8628 (h!80730 rulesArg!141))) e!4667156))))

(declare-fun b!7906489 () Bool)

(declare-fun res!3137531 () Bool)

(assert (=> b!7906489 (=> (not res!3137531) (not e!4667150))))

(declare-fun isEmpty!42631 (List!74406) Bool)

(assert (=> b!7906489 (= res!3137531 (not (isEmpty!42631 rulesArg!141)))))

(declare-fun b!7906490 () Bool)

(declare-fun tp!2355437 () Bool)

(assert (=> b!7906490 (= e!4667155 (and e!4667152 tp!2355437))))

(assert (= (and start!746036 res!3137530) b!7906485))

(assert (= (and b!7906485 res!3137532) b!7906489))

(assert (= (and b!7906489 res!3137531) b!7906484))

(assert (= (and b!7906484 (not res!3137529)) b!7906483))

(assert (= b!7906488 b!7906486))

(assert (= b!7906490 b!7906488))

(assert (= (and start!746036 ((_ is Cons!74282) rulesArg!141)) b!7906490))

(assert (= (and start!746036 ((_ is Cons!74281) input!1184)) b!7906487))

(declare-fun m!8280754 () Bool)

(assert (=> b!7906488 m!8280754))

(declare-fun m!8280756 () Bool)

(assert (=> b!7906488 m!8280756))

(declare-fun m!8280758 () Bool)

(assert (=> b!7906485 m!8280758))

(declare-fun m!8280760 () Bool)

(assert (=> b!7906483 m!8280760))

(declare-fun m!8280762 () Bool)

(assert (=> b!7906483 m!8280762))

(declare-fun m!8280764 () Bool)

(assert (=> b!7906483 m!8280764))

(declare-fun m!8280766 () Bool)

(assert (=> b!7906489 m!8280766))

(declare-fun m!8280768 () Bool)

(assert (=> b!7906484 m!8280768))

(declare-fun m!8280770 () Bool)

(assert (=> b!7906484 m!8280770))

(check-sat (not b_next!135789) (not b!7906487) (not b!7906490) b_and!353189 (not b!7906488) (not b!7906484) (not b_next!135791) (not b!7906489) (not b!7906483) b_and!353187 (not b!7906485) tp_is_empty!53037)
(check-sat b_and!353189 b_and!353187 (not b_next!135791) (not b_next!135789))
(get-model)

(declare-fun d!2359418 () Bool)

(assert (=> d!2359418 true))

(declare-fun lt!2685254 () Bool)

(declare-fun lambda!472506 () Int)

(declare-fun forall!18449 (List!74406 Int) Bool)

(assert (=> d!2359418 (= lt!2685254 (forall!18449 rulesArg!141 lambda!472506))))

(declare-fun e!4667182 () Bool)

(assert (=> d!2359418 (= lt!2685254 e!4667182)))

(declare-fun res!3137568 () Bool)

(assert (=> d!2359418 (=> res!3137568 e!4667182)))

(assert (=> d!2359418 (= res!3137568 (not ((_ is Cons!74282) rulesArg!141)))))

(assert (=> d!2359418 (= (rulesValidInductive!3439 thiss!14377 rulesArg!141) lt!2685254)))

(declare-fun b!7906534 () Bool)

(declare-fun e!4667181 () Bool)

(assert (=> b!7906534 (= e!4667182 e!4667181)))

(declare-fun res!3137569 () Bool)

(assert (=> b!7906534 (=> (not res!3137569) (not e!4667181))))

(declare-fun ruleValid!3941 (LexerInterface!8220 Rule!17056) Bool)

(assert (=> b!7906534 (= res!3137569 (ruleValid!3941 thiss!14377 (h!80730 rulesArg!141)))))

(declare-fun b!7906535 () Bool)

(assert (=> b!7906535 (= e!4667181 (rulesValidInductive!3439 thiss!14377 (t!389659 rulesArg!141)))))

(assert (= (and d!2359418 (not res!3137568)) b!7906534))

(assert (= (and b!7906534 res!3137569) b!7906535))

(declare-fun m!8280820 () Bool)

(assert (=> d!2359418 m!8280820))

(declare-fun m!8280822 () Bool)

(assert (=> b!7906534 m!8280822))

(declare-fun m!8280824 () Bool)

(assert (=> b!7906535 m!8280824))

(assert (=> b!7906485 d!2359418))

(declare-fun d!2359430 () Bool)

(assert (=> d!2359430 (= (inv!95290 (tag!9492 (h!80730 rulesArg!141))) (= (mod (str.len (value!287878 (tag!9492 (h!80730 rulesArg!141)))) 2) 0))))

(assert (=> b!7906488 d!2359430))

(declare-fun d!2359432 () Bool)

(declare-fun res!3137572 () Bool)

(declare-fun e!4667185 () Bool)

(assert (=> d!2359432 (=> (not res!3137572) (not e!4667185))))

(declare-fun semiInverseModEq!3820 (Int Int) Bool)

(assert (=> d!2359432 (= res!3137572 (semiInverseModEq!3820 (toChars!11544 (transformation!8628 (h!80730 rulesArg!141))) (toValue!11685 (transformation!8628 (h!80730 rulesArg!141)))))))

(assert (=> d!2359432 (= (inv!95292 (transformation!8628 (h!80730 rulesArg!141))) e!4667185)))

(declare-fun b!7906540 () Bool)

(declare-fun equivClasses!3635 (Int Int) Bool)

(assert (=> b!7906540 (= e!4667185 (equivClasses!3635 (toChars!11544 (transformation!8628 (h!80730 rulesArg!141))) (toValue!11685 (transformation!8628 (h!80730 rulesArg!141)))))))

(assert (= (and d!2359432 res!3137572) b!7906540))

(declare-fun m!8280826 () Bool)

(assert (=> d!2359432 m!8280826))

(declare-fun m!8280828 () Bool)

(assert (=> b!7906540 m!8280828))

(assert (=> b!7906488 d!2359432))

(declare-fun d!2359434 () Bool)

(declare-fun lt!2685257 () Int)

(assert (=> d!2359434 (>= lt!2685257 0)))

(declare-fun e!4667188 () Int)

(assert (=> d!2359434 (= lt!2685257 e!4667188)))

(declare-fun c!1450769 () Bool)

(assert (=> d!2359434 (= c!1450769 ((_ is Nil!74282) (t!389659 rulesArg!141)))))

(assert (=> d!2359434 (= (size!43055 (t!389659 rulesArg!141)) lt!2685257)))

(declare-fun b!7906545 () Bool)

(assert (=> b!7906545 (= e!4667188 0)))

(declare-fun b!7906546 () Bool)

(assert (=> b!7906546 (= e!4667188 (+ 1 (size!43055 (t!389659 (t!389659 rulesArg!141)))))))

(assert (= (and d!2359434 c!1450769) b!7906545))

(assert (= (and d!2359434 (not c!1450769)) b!7906546))

(declare-fun m!8280830 () Bool)

(assert (=> b!7906546 m!8280830))

(assert (=> b!7906483 d!2359434))

(declare-fun d!2359436 () Bool)

(declare-fun lt!2685258 () Int)

(assert (=> d!2359436 (>= lt!2685258 0)))

(declare-fun e!4667189 () Int)

(assert (=> d!2359436 (= lt!2685258 e!4667189)))

(declare-fun c!1450770 () Bool)

(assert (=> d!2359436 (= c!1450770 ((_ is Nil!74282) rulesArg!141))))

(assert (=> d!2359436 (= (size!43055 rulesArg!141) lt!2685258)))

(declare-fun b!7906547 () Bool)

(assert (=> b!7906547 (= e!4667189 0)))

(declare-fun b!7906548 () Bool)

(assert (=> b!7906548 (= e!4667189 (+ 1 (size!43055 (t!389659 rulesArg!141))))))

(assert (= (and d!2359436 c!1450770) b!7906547))

(assert (= (and d!2359436 (not c!1450770)) b!7906548))

(assert (=> b!7906548 m!8280760))

(assert (=> b!7906483 d!2359436))

(declare-fun b!7906616 () Bool)

(declare-fun e!4667230 () Bool)

(declare-fun matchR!10658 (Regex!21331 List!74405) Bool)

(declare-datatypes ((tuple2!70296 0))(
  ( (tuple2!70297 (_1!38451 List!74405) (_2!38451 List!74405)) )
))
(declare-fun findLongestMatchInner!2158 (Regex!21331 List!74405 Int List!74405 List!74405 Int) tuple2!70296)

(declare-fun size!43059 (List!74405) Int)

(assert (=> b!7906616 (= e!4667230 (matchR!10658 (regex!8628 (h!80730 rulesArg!141)) (_1!38451 (findLongestMatchInner!2158 (regex!8628 (h!80730 rulesArg!141)) Nil!74281 (size!43059 Nil!74281) input!1184 input!1184 (size!43059 input!1184)))))))

(declare-fun b!7906617 () Bool)

(declare-fun e!4667233 () Bool)

(declare-fun e!4667232 () Bool)

(assert (=> b!7906617 (= e!4667233 e!4667232)))

(declare-fun res!3137605 () Bool)

(assert (=> b!7906617 (=> (not res!3137605) (not e!4667232))))

(declare-fun lt!2685280 () Option!17910)

(declare-fun list!19266 (BalanceConc!30722) List!74405)

(declare-fun charsOf!5572 (Token!15676) BalanceConc!30722)

(declare-fun get!26696 (Option!17910) tuple2!70292)

(assert (=> b!7906617 (= res!3137605 (matchR!10658 (regex!8628 (h!80730 rulesArg!141)) (list!19266 (charsOf!5572 (_1!38449 (get!26696 lt!2685280))))))))

(declare-fun b!7906618 () Bool)

(declare-fun res!3137610 () Bool)

(assert (=> b!7906618 (=> (not res!3137610) (not e!4667232))))

(assert (=> b!7906618 (= res!3137610 (< (size!43059 (_2!38449 (get!26696 lt!2685280))) (size!43059 input!1184)))))

(declare-fun b!7906619 () Bool)

(declare-fun res!3137604 () Bool)

(assert (=> b!7906619 (=> (not res!3137604) (not e!4667232))))

(declare-fun apply!14351 (TokenValueInjection!17196 BalanceConc!30722) TokenValue!8944)

(declare-fun seqFromList!6169 (List!74405) BalanceConc!30722)

(assert (=> b!7906619 (= res!3137604 (= (value!287879 (_1!38449 (get!26696 lt!2685280))) (apply!14351 (transformation!8628 (rule!11922 (_1!38449 (get!26696 lt!2685280)))) (seqFromList!6169 (originalCharacters!8869 (_1!38449 (get!26696 lt!2685280)))))))))

(declare-fun b!7906620 () Bool)

(assert (=> b!7906620 (= e!4667232 (= (size!43056 (_1!38449 (get!26696 lt!2685280))) (size!43059 (originalCharacters!8869 (_1!38449 (get!26696 lt!2685280))))))))

(declare-fun b!7906621 () Bool)

(declare-fun res!3137608 () Bool)

(assert (=> b!7906621 (=> (not res!3137608) (not e!4667232))))

(assert (=> b!7906621 (= res!3137608 (= (rule!11922 (_1!38449 (get!26696 lt!2685280))) (h!80730 rulesArg!141)))))

(declare-fun b!7906622 () Bool)

(declare-fun e!4667231 () Option!17910)

(declare-fun lt!2685276 () tuple2!70296)

(declare-fun size!43060 (BalanceConc!30722) Int)

(assert (=> b!7906622 (= e!4667231 (Some!17909 (tuple2!70293 (Token!15677 (apply!14351 (transformation!8628 (h!80730 rulesArg!141)) (seqFromList!6169 (_1!38451 lt!2685276))) (h!80730 rulesArg!141) (size!43060 (seqFromList!6169 (_1!38451 lt!2685276))) (_1!38451 lt!2685276)) (_2!38451 lt!2685276))))))

(declare-fun lt!2685277 () Unit!169323)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2121 (Regex!21331 List!74405) Unit!169323)

(assert (=> b!7906622 (= lt!2685277 (longestMatchIsAcceptedByMatchOrIsEmpty!2121 (regex!8628 (h!80730 rulesArg!141)) input!1184))))

(declare-fun res!3137607 () Bool)

(declare-fun isEmpty!42634 (List!74405) Bool)

(assert (=> b!7906622 (= res!3137607 (isEmpty!42634 (_1!38451 (findLongestMatchInner!2158 (regex!8628 (h!80730 rulesArg!141)) Nil!74281 (size!43059 Nil!74281) input!1184 input!1184 (size!43059 input!1184)))))))

(assert (=> b!7906622 (=> res!3137607 e!4667230)))

(assert (=> b!7906622 e!4667230))

(declare-fun lt!2685279 () Unit!169323)

(assert (=> b!7906622 (= lt!2685279 lt!2685277)))

(declare-fun lt!2685278 () Unit!169323)

(declare-fun lemmaSemiInverse!2668 (TokenValueInjection!17196 BalanceConc!30722) Unit!169323)

(assert (=> b!7906622 (= lt!2685278 (lemmaSemiInverse!2668 (transformation!8628 (h!80730 rulesArg!141)) (seqFromList!6169 (_1!38451 lt!2685276))))))

(declare-fun d!2359438 () Bool)

(assert (=> d!2359438 e!4667233))

(declare-fun res!3137609 () Bool)

(assert (=> d!2359438 (=> res!3137609 e!4667233)))

(declare-fun isEmpty!42635 (Option!17910) Bool)

(assert (=> d!2359438 (= res!3137609 (isEmpty!42635 lt!2685280))))

(assert (=> d!2359438 (= lt!2685280 e!4667231)))

(declare-fun c!1450774 () Bool)

(assert (=> d!2359438 (= c!1450774 (isEmpty!42634 (_1!38451 lt!2685276)))))

(declare-fun findLongestMatch!1925 (Regex!21331 List!74405) tuple2!70296)

(assert (=> d!2359438 (= lt!2685276 (findLongestMatch!1925 (regex!8628 (h!80730 rulesArg!141)) input!1184))))

(assert (=> d!2359438 (ruleValid!3941 thiss!14377 (h!80730 rulesArg!141))))

(assert (=> d!2359438 (= (maxPrefixOneRule!3796 thiss!14377 (h!80730 rulesArg!141) input!1184) lt!2685280)))

(declare-fun b!7906623 () Bool)

(declare-fun res!3137606 () Bool)

(assert (=> b!7906623 (=> (not res!3137606) (not e!4667232))))

(declare-fun ++!18182 (List!74405 List!74405) List!74405)

(assert (=> b!7906623 (= res!3137606 (= (++!18182 (list!19266 (charsOf!5572 (_1!38449 (get!26696 lt!2685280)))) (_2!38449 (get!26696 lt!2685280))) input!1184))))

(declare-fun b!7906624 () Bool)

(assert (=> b!7906624 (= e!4667231 None!17909)))

(assert (= (and d!2359438 c!1450774) b!7906624))

(assert (= (and d!2359438 (not c!1450774)) b!7906622))

(assert (= (and b!7906622 (not res!3137607)) b!7906616))

(assert (= (and d!2359438 (not res!3137609)) b!7906617))

(assert (= (and b!7906617 res!3137605) b!7906623))

(assert (= (and b!7906623 res!3137606) b!7906618))

(assert (= (and b!7906618 res!3137610) b!7906621))

(assert (= (and b!7906621 res!3137608) b!7906619))

(assert (= (and b!7906619 res!3137604) b!7906620))

(declare-fun m!8280852 () Bool)

(assert (=> d!2359438 m!8280852))

(declare-fun m!8280854 () Bool)

(assert (=> d!2359438 m!8280854))

(declare-fun m!8280856 () Bool)

(assert (=> d!2359438 m!8280856))

(assert (=> d!2359438 m!8280822))

(declare-fun m!8280858 () Bool)

(assert (=> b!7906619 m!8280858))

(declare-fun m!8280860 () Bool)

(assert (=> b!7906619 m!8280860))

(assert (=> b!7906619 m!8280860))

(declare-fun m!8280862 () Bool)

(assert (=> b!7906619 m!8280862))

(declare-fun m!8280864 () Bool)

(assert (=> b!7906616 m!8280864))

(declare-fun m!8280866 () Bool)

(assert (=> b!7906616 m!8280866))

(assert (=> b!7906616 m!8280864))

(assert (=> b!7906616 m!8280866))

(declare-fun m!8280868 () Bool)

(assert (=> b!7906616 m!8280868))

(declare-fun m!8280870 () Bool)

(assert (=> b!7906616 m!8280870))

(assert (=> b!7906620 m!8280858))

(declare-fun m!8280872 () Bool)

(assert (=> b!7906620 m!8280872))

(assert (=> b!7906617 m!8280858))

(declare-fun m!8280874 () Bool)

(assert (=> b!7906617 m!8280874))

(assert (=> b!7906617 m!8280874))

(declare-fun m!8280876 () Bool)

(assert (=> b!7906617 m!8280876))

(assert (=> b!7906617 m!8280876))

(declare-fun m!8280878 () Bool)

(assert (=> b!7906617 m!8280878))

(assert (=> b!7906622 m!8280864))

(declare-fun m!8280880 () Bool)

(assert (=> b!7906622 m!8280880))

(declare-fun m!8280882 () Bool)

(assert (=> b!7906622 m!8280882))

(declare-fun m!8280884 () Bool)

(assert (=> b!7906622 m!8280884))

(assert (=> b!7906622 m!8280864))

(assert (=> b!7906622 m!8280866))

(assert (=> b!7906622 m!8280868))

(declare-fun m!8280886 () Bool)

(assert (=> b!7906622 m!8280886))

(assert (=> b!7906622 m!8280880))

(declare-fun m!8280888 () Bool)

(assert (=> b!7906622 m!8280888))

(assert (=> b!7906622 m!8280866))

(assert (=> b!7906622 m!8280880))

(declare-fun m!8280890 () Bool)

(assert (=> b!7906622 m!8280890))

(assert (=> b!7906622 m!8280880))

(assert (=> b!7906621 m!8280858))

(assert (=> b!7906618 m!8280858))

(declare-fun m!8280892 () Bool)

(assert (=> b!7906618 m!8280892))

(assert (=> b!7906618 m!8280866))

(assert (=> b!7906623 m!8280858))

(assert (=> b!7906623 m!8280874))

(assert (=> b!7906623 m!8280874))

(assert (=> b!7906623 m!8280876))

(assert (=> b!7906623 m!8280876))

(declare-fun m!8280894 () Bool)

(assert (=> b!7906623 m!8280894))

(assert (=> b!7906483 d!2359438))

(declare-fun d!2359448 () Bool)

(assert (=> d!2359448 (= (isEmpty!42631 rulesArg!141) ((_ is Nil!74282) rulesArg!141))))

(assert (=> b!7906489 d!2359448))

(declare-fun d!2359450 () Bool)

(declare-fun e!4667242 () Bool)

(assert (=> d!2359450 e!4667242))

(declare-fun res!3137621 () Bool)

(assert (=> d!2359450 (=> res!3137621 e!4667242)))

(declare-fun lt!2685283 () Bool)

(assert (=> d!2359450 (= res!3137621 (not lt!2685283))))

(declare-fun e!4667240 () Bool)

(assert (=> d!2359450 (= lt!2685283 e!4667240)))

(declare-fun res!3137619 () Bool)

(assert (=> d!2359450 (=> res!3137619 e!4667240)))

(assert (=> d!2359450 (= res!3137619 ((_ is Nil!74281) input!1184))))

(assert (=> d!2359450 (= (isPrefix!6461 input!1184 input!1184) lt!2685283)))

(declare-fun b!7906636 () Bool)

(assert (=> b!7906636 (= e!4667242 (>= (size!43059 input!1184) (size!43059 input!1184)))))

(declare-fun b!7906634 () Bool)

(declare-fun res!3137622 () Bool)

(declare-fun e!4667241 () Bool)

(assert (=> b!7906634 (=> (not res!3137622) (not e!4667241))))

(declare-fun head!16153 (List!74405) C!42992)

(assert (=> b!7906634 (= res!3137622 (= (head!16153 input!1184) (head!16153 input!1184)))))

(declare-fun b!7906633 () Bool)

(assert (=> b!7906633 (= e!4667240 e!4667241)))

(declare-fun res!3137620 () Bool)

(assert (=> b!7906633 (=> (not res!3137620) (not e!4667241))))

(assert (=> b!7906633 (= res!3137620 (not ((_ is Nil!74281) input!1184)))))

(declare-fun b!7906635 () Bool)

(declare-fun tail!15696 (List!74405) List!74405)

(assert (=> b!7906635 (= e!4667241 (isPrefix!6461 (tail!15696 input!1184) (tail!15696 input!1184)))))

(assert (= (and d!2359450 (not res!3137619)) b!7906633))

(assert (= (and b!7906633 res!3137620) b!7906634))

(assert (= (and b!7906634 res!3137622) b!7906635))

(assert (= (and d!2359450 (not res!3137621)) b!7906636))

(assert (=> b!7906636 m!8280866))

(assert (=> b!7906636 m!8280866))

(declare-fun m!8280896 () Bool)

(assert (=> b!7906634 m!8280896))

(assert (=> b!7906634 m!8280896))

(declare-fun m!8280898 () Bool)

(assert (=> b!7906635 m!8280898))

(assert (=> b!7906635 m!8280898))

(assert (=> b!7906635 m!8280898))

(assert (=> b!7906635 m!8280898))

(declare-fun m!8280900 () Bool)

(assert (=> b!7906635 m!8280900))

(assert (=> b!7906484 d!2359450))

(declare-fun d!2359452 () Bool)

(assert (=> d!2359452 (isPrefix!6461 input!1184 input!1184)))

(declare-fun lt!2685286 () Unit!169323)

(declare-fun choose!59728 (List!74405 List!74405) Unit!169323)

(assert (=> d!2359452 (= lt!2685286 (choose!59728 input!1184 input!1184))))

(assert (=> d!2359452 (= (lemmaIsPrefixRefl!3972 input!1184 input!1184) lt!2685286)))

(declare-fun bs!1968137 () Bool)

(assert (= bs!1968137 d!2359452))

(assert (=> bs!1968137 m!8280768))

(declare-fun m!8280902 () Bool)

(assert (=> bs!1968137 m!8280902))

(assert (=> b!7906484 d!2359452))

(declare-fun b!7906641 () Bool)

(declare-fun e!4667245 () Bool)

(declare-fun tp!2355471 () Bool)

(assert (=> b!7906641 (= e!4667245 (and tp_is_empty!53037 tp!2355471))))

(assert (=> b!7906487 (= tp!2355435 e!4667245)))

(assert (= (and b!7906487 ((_ is Cons!74281) (t!389658 input!1184))) b!7906641))

(declare-fun e!4667248 () Bool)

(assert (=> b!7906488 (= tp!2355434 e!4667248)))

(declare-fun b!7906654 () Bool)

(declare-fun tp!2355486 () Bool)

(assert (=> b!7906654 (= e!4667248 tp!2355486)))

(declare-fun b!7906655 () Bool)

(declare-fun tp!2355482 () Bool)

(declare-fun tp!2355485 () Bool)

(assert (=> b!7906655 (= e!4667248 (and tp!2355482 tp!2355485))))

(declare-fun b!7906652 () Bool)

(assert (=> b!7906652 (= e!4667248 tp_is_empty!53037)))

(declare-fun b!7906653 () Bool)

(declare-fun tp!2355484 () Bool)

(declare-fun tp!2355483 () Bool)

(assert (=> b!7906653 (= e!4667248 (and tp!2355484 tp!2355483))))

(assert (= (and b!7906488 ((_ is ElementMatch!21331) (regex!8628 (h!80730 rulesArg!141)))) b!7906652))

(assert (= (and b!7906488 ((_ is Concat!30276) (regex!8628 (h!80730 rulesArg!141)))) b!7906653))

(assert (= (and b!7906488 ((_ is Star!21331) (regex!8628 (h!80730 rulesArg!141)))) b!7906654))

(assert (= (and b!7906488 ((_ is Union!21331) (regex!8628 (h!80730 rulesArg!141)))) b!7906655))

(declare-fun b!7906666 () Bool)

(declare-fun b_free!135007 () Bool)

(declare-fun b_next!135797 () Bool)

(assert (=> b!7906666 (= b_free!135007 (not b_next!135797))))

(declare-fun tp!2355497 () Bool)

(declare-fun b_and!353195 () Bool)

(assert (=> b!7906666 (= tp!2355497 b_and!353195)))

(declare-fun b_free!135009 () Bool)

(declare-fun b_next!135799 () Bool)

(assert (=> b!7906666 (= b_free!135009 (not b_next!135799))))

(declare-fun tp!2355495 () Bool)

(declare-fun b_and!353197 () Bool)

(assert (=> b!7906666 (= tp!2355495 b_and!353197)))

(declare-fun e!4667259 () Bool)

(assert (=> b!7906666 (= e!4667259 (and tp!2355497 tp!2355495))))

(declare-fun tp!2355498 () Bool)

(declare-fun e!4667257 () Bool)

(declare-fun b!7906665 () Bool)

(assert (=> b!7906665 (= e!4667257 (and tp!2355498 (inv!95290 (tag!9492 (h!80730 (t!389659 rulesArg!141)))) (inv!95292 (transformation!8628 (h!80730 (t!389659 rulesArg!141)))) e!4667259))))

(declare-fun b!7906664 () Bool)

(declare-fun e!4667258 () Bool)

(declare-fun tp!2355496 () Bool)

(assert (=> b!7906664 (= e!4667258 (and e!4667257 tp!2355496))))

(assert (=> b!7906490 (= tp!2355437 e!4667258)))

(assert (= b!7906665 b!7906666))

(assert (= b!7906664 b!7906665))

(assert (= (and b!7906490 ((_ is Cons!74282) (t!389659 rulesArg!141))) b!7906664))

(declare-fun m!8280904 () Bool)

(assert (=> b!7906665 m!8280904))

(declare-fun m!8280906 () Bool)

(assert (=> b!7906665 m!8280906))

(check-sat b_and!353195 (not b_next!135791) (not b!7906618) (not b!7906548) (not d!2359418) (not d!2359438) (not b!7906654) (not b_next!135799) (not b!7906534) (not b_next!135789) (not b!7906616) (not b!7906540) (not b!7906621) (not b!7906620) b_and!353189 (not b!7906653) (not b!7906664) (not b!7906535) (not b!7906634) b_and!353187 (not b_next!135797) b_and!353197 (not b!7906617) (not b!7906641) (not b!7906622) (not b!7906635) (not b!7906665) tp_is_empty!53037 (not b!7906636) (not d!2359432) (not b!7906619) (not d!2359452) (not b!7906655) (not b!7906623) (not b!7906546))
(check-sat (not b_next!135799) b_and!353195 (not b_next!135789) b_and!353189 (not b_next!135791) b_and!353187 (not b_next!135797) b_and!353197)
