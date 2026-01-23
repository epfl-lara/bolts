; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336634 () Bool)

(assert start!336634)

(declare-fun b!3614964 () Bool)

(declare-fun b_free!94017 () Bool)

(declare-fun b_next!94721 () Bool)

(assert (=> b!3614964 (= b_free!94017 (not b_next!94721))))

(declare-fun tp!1104693 () Bool)

(declare-fun b_and!263923 () Bool)

(assert (=> b!3614964 (= tp!1104693 b_and!263923)))

(declare-fun b_free!94019 () Bool)

(declare-fun b_next!94723 () Bool)

(assert (=> b!3614964 (= b_free!94019 (not b_next!94723))))

(declare-fun tp!1104685 () Bool)

(declare-fun b_and!263925 () Bool)

(assert (=> b!3614964 (= tp!1104685 b_and!263925)))

(declare-fun b!3614953 () Bool)

(declare-fun b_free!94021 () Bool)

(declare-fun b_next!94725 () Bool)

(assert (=> b!3614953 (= b_free!94021 (not b_next!94725))))

(declare-fun tp!1104692 () Bool)

(declare-fun b_and!263927 () Bool)

(assert (=> b!3614953 (= tp!1104692 b_and!263927)))

(declare-fun b_free!94023 () Bool)

(declare-fun b_next!94727 () Bool)

(assert (=> b!3614953 (= b_free!94023 (not b_next!94727))))

(declare-fun tp!1104691 () Bool)

(declare-fun b_and!263929 () Bool)

(assert (=> b!3614953 (= tp!1104691 b_and!263929)))

(declare-fun b!3614934 () Bool)

(declare-fun b_free!94025 () Bool)

(declare-fun b_next!94729 () Bool)

(assert (=> b!3614934 (= b_free!94025 (not b_next!94729))))

(declare-fun tp!1104688 () Bool)

(declare-fun b_and!263931 () Bool)

(assert (=> b!3614934 (= tp!1104688 b_and!263931)))

(declare-fun b_free!94027 () Bool)

(declare-fun b_next!94731 () Bool)

(assert (=> b!3614934 (= b_free!94027 (not b_next!94731))))

(declare-fun tp!1104681 () Bool)

(declare-fun b_and!263933 () Bool)

(assert (=> b!3614934 (= tp!1104681 b_and!263933)))

(declare-fun b!3614950 () Bool)

(declare-fun b_free!94029 () Bool)

(declare-fun b_next!94733 () Bool)

(assert (=> b!3614950 (= b_free!94029 (not b_next!94733))))

(declare-fun tp!1104694 () Bool)

(declare-fun b_and!263935 () Bool)

(assert (=> b!3614950 (= tp!1104694 b_and!263935)))

(declare-fun b_free!94031 () Bool)

(declare-fun b_next!94735 () Bool)

(assert (=> b!3614950 (= b_free!94031 (not b_next!94735))))

(declare-fun tp!1104684 () Bool)

(declare-fun b_and!263937 () Bool)

(assert (=> b!3614950 (= tp!1104684 b_and!263937)))

(declare-fun b!3614928 () Bool)

(declare-fun e!2237387 () Bool)

(declare-fun e!2237360 () Bool)

(assert (=> b!3614928 (= e!2237387 e!2237360)))

(declare-fun res!1462585 () Bool)

(assert (=> b!3614928 (=> res!1462585 e!2237360)))

(declare-fun lt!1246345 () Int)

(declare-fun lt!1246325 () Int)

(assert (=> b!3614928 (= res!1462585 (>= lt!1246345 lt!1246325))))

(declare-datatypes ((Unit!54418 0))(
  ( (Unit!54419) )
))
(declare-fun lt!1246332 () Unit!54418)

(declare-fun e!2237386 () Unit!54418)

(assert (=> b!3614928 (= lt!1246332 e!2237386)))

(declare-fun c!625419 () Bool)

(assert (=> b!3614928 (= c!625419 (< lt!1246325 lt!1246345))))

(declare-datatypes ((List!38183 0))(
  ( (Nil!38059) (Cons!38059 (h!43479 (_ BitVec 16)) (t!293714 List!38183)) )
))
(declare-datatypes ((TokenValue!5884 0))(
  ( (FloatLiteralValue!11768 (text!41633 List!38183)) (TokenValueExt!5883 (__x!23985 Int)) (Broken!29420 (value!181573 List!38183)) (Object!6007) (End!5884) (Def!5884) (Underscore!5884) (Match!5884) (Else!5884) (Error!5884) (Case!5884) (If!5884) (Extends!5884) (Abstract!5884) (Class!5884) (Val!5884) (DelimiterValue!11768 (del!5944 List!38183)) (KeywordValue!5890 (value!181574 List!38183)) (CommentValue!11768 (value!181575 List!38183)) (WhitespaceValue!11768 (value!181576 List!38183)) (IndentationValue!5884 (value!181577 List!38183)) (String!42753) (Int32!5884) (Broken!29421 (value!181578 List!38183)) (Boolean!5885) (Unit!54420) (OperatorValue!5887 (op!5944 List!38183)) (IdentifierValue!11768 (value!181579 List!38183)) (IdentifierValue!11769 (value!181580 List!38183)) (WhitespaceValue!11769 (value!181581 List!38183)) (True!11768) (False!11768) (Broken!29422 (value!181582 List!38183)) (Broken!29423 (value!181583 List!38183)) (True!11769) (RightBrace!5884) (RightBracket!5884) (Colon!5884) (Null!5884) (Comma!5884) (LeftBracket!5884) (False!11769) (LeftBrace!5884) (ImaginaryLiteralValue!5884 (text!41634 List!38183)) (StringLiteralValue!17652 (value!181584 List!38183)) (EOFValue!5884 (value!181585 List!38183)) (IdentValue!5884 (value!181586 List!38183)) (DelimiterValue!11769 (value!181587 List!38183)) (DedentValue!5884 (value!181588 List!38183)) (NewLineValue!5884 (value!181589 List!38183)) (IntegerValue!17652 (value!181590 (_ BitVec 32)) (text!41635 List!38183)) (IntegerValue!17653 (value!181591 Int) (text!41636 List!38183)) (Times!5884) (Or!5884) (Equal!5884) (Minus!5884) (Broken!29424 (value!181592 List!38183)) (And!5884) (Div!5884) (LessEqual!5884) (Mod!5884) (Concat!16297) (Not!5884) (Plus!5884) (SpaceValue!5884 (value!181593 List!38183)) (IntegerValue!17654 (value!181594 Int) (text!41637 List!38183)) (StringLiteralValue!17653 (text!41638 List!38183)) (FloatLiteralValue!11769 (text!41639 List!38183)) (BytesLiteralValue!5884 (value!181595 List!38183)) (CommentValue!11769 (value!181596 List!38183)) (StringLiteralValue!17654 (value!181597 List!38183)) (ErrorTokenValue!5884 (msg!5945 List!38183)) )
))
(declare-datatypes ((C!21012 0))(
  ( (C!21013 (val!12554 Int)) )
))
(declare-datatypes ((Regex!10413 0))(
  ( (ElementMatch!10413 (c!625422 C!21012)) (Concat!16298 (regOne!21338 Regex!10413) (regTwo!21338 Regex!10413)) (EmptyExpr!10413) (Star!10413 (reg!10742 Regex!10413)) (EmptyLang!10413) (Union!10413 (regOne!21339 Regex!10413) (regTwo!21339 Regex!10413)) )
))
(declare-datatypes ((String!42754 0))(
  ( (String!42755 (value!181598 String)) )
))
(declare-datatypes ((List!38184 0))(
  ( (Nil!38060) (Cons!38060 (h!43480 C!21012) (t!293715 List!38184)) )
))
(declare-datatypes ((IArray!23207 0))(
  ( (IArray!23208 (innerList!11661 List!38184)) )
))
(declare-datatypes ((Conc!11601 0))(
  ( (Node!11601 (left!29730 Conc!11601) (right!30060 Conc!11601) (csize!23432 Int) (cheight!11812 Int)) (Leaf!18039 (xs!14803 IArray!23207) (csize!23433 Int)) (Empty!11601) )
))
(declare-datatypes ((BalanceConc!22816 0))(
  ( (BalanceConc!22817 (c!625423 Conc!11601)) )
))
(declare-datatypes ((TokenValueInjection!11196 0))(
  ( (TokenValueInjection!11197 (toValue!7938 Int) (toChars!7797 Int)) )
))
(declare-datatypes ((Rule!11108 0))(
  ( (Rule!11109 (regex!5654 Regex!10413) (tag!6366 String!42754) (isSeparator!5654 Bool) (transformation!5654 TokenValueInjection!11196)) )
))
(declare-datatypes ((List!38185 0))(
  ( (Nil!38061) (Cons!38061 (h!43481 Rule!11108) (t!293716 List!38185)) )
))
(declare-fun rules!3307 () List!38185)

(declare-fun rule!403 () Rule!11108)

(declare-fun getIndex!436 (List!38185 Rule!11108) Int)

(assert (=> b!3614928 (= lt!1246345 (getIndex!436 rules!3307 rule!403))))

(declare-datatypes ((Token!10674 0))(
  ( (Token!10675 (value!181599 TokenValue!5884) (rule!8410 Rule!11108) (size!29025 Int) (originalCharacters!6368 List!38184)) )
))
(declare-datatypes ((tuple2!37948 0))(
  ( (tuple2!37949 (_1!22108 Token!10674) (_2!22108 List!38184)) )
))
(declare-fun lt!1246299 () tuple2!37948)

(assert (=> b!3614928 (= lt!1246325 (getIndex!436 rules!3307 (rule!8410 (_1!22108 lt!1246299))))))

(declare-fun b!3614929 () Bool)

(declare-fun res!1462612 () Bool)

(declare-fun e!2237363 () Bool)

(assert (=> b!3614929 (=> (not res!1462612) (not e!2237363))))

(declare-fun token!511 () Token!10674)

(assert (=> b!3614929 (= res!1462612 (= (rule!8410 token!511) rule!403))))

(declare-fun b!3614930 () Bool)

(declare-fun e!2237369 () Unit!54418)

(declare-fun Unit!54421 () Unit!54418)

(assert (=> b!3614930 (= e!2237369 Unit!54421)))

(declare-fun lt!1246341 () List!38184)

(declare-fun bm!261420 () Bool)

(declare-fun lt!1246331 () C!21012)

(declare-fun call!261429 () Unit!54418)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!638 (Regex!10413 List!38184 C!21012) Unit!54418)

(assert (=> bm!261420 (= call!261429 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!638 (regex!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246341 lt!1246331))))

(declare-fun b!3614931 () Bool)

(declare-fun e!2237385 () Unit!54418)

(declare-fun Unit!54422 () Unit!54418)

(assert (=> b!3614931 (= e!2237385 Unit!54422)))

(declare-fun b!3614932 () Bool)

(declare-fun res!1462587 () Bool)

(declare-fun e!2237383 () Bool)

(assert (=> b!3614932 (=> (not res!1462587) (not e!2237383))))

(declare-fun anOtherTypeRule!33 () Rule!11108)

(declare-fun contains!7371 (List!38185 Rule!11108) Bool)

(assert (=> b!3614932 (= res!1462587 (contains!7371 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3614933 () Bool)

(declare-fun e!2237374 () Bool)

(assert (=> b!3614933 (= e!2237374 e!2237387)))

(declare-fun res!1462593 () Bool)

(assert (=> b!3614933 (=> res!1462593 e!2237387)))

(assert (=> b!3614933 (= res!1462593 (= (rule!8410 (_1!22108 lt!1246299)) (rule!8410 token!511)))))

(declare-fun lt!1246342 () List!38184)

(assert (=> b!3614933 (= lt!1246341 lt!1246342)))

(declare-fun lt!1246296 () List!38184)

(declare-fun lt!1246303 () Unit!54418)

(declare-fun lemmaIsPrefixSameLengthThenSameList!591 (List!38184 List!38184 List!38184) Unit!54418)

(assert (=> b!3614933 (= lt!1246303 (lemmaIsPrefixSameLengthThenSameList!591 lt!1246341 lt!1246342 lt!1246296))))

(declare-fun lt!1246324 () Unit!54418)

(assert (=> b!3614933 (= lt!1246324 e!2237369)))

(declare-fun c!625415 () Bool)

(declare-fun lt!1246298 () Int)

(declare-fun lt!1246320 () Int)

(assert (=> b!3614933 (= c!625415 (< lt!1246298 lt!1246320))))

(declare-fun lt!1246307 () Unit!54418)

(declare-fun e!2237373 () Unit!54418)

(assert (=> b!3614933 (= lt!1246307 e!2237373)))

(declare-fun c!625416 () Bool)

(assert (=> b!3614933 (= c!625416 (> lt!1246298 lt!1246320))))

(declare-fun lt!1246319 () BalanceConc!22816)

(declare-fun size!29026 (BalanceConc!22816) Int)

(assert (=> b!3614933 (= lt!1246320 (size!29026 lt!1246319))))

(declare-fun lt!1246330 () Unit!54418)

(declare-fun e!2237378 () Unit!54418)

(assert (=> b!3614933 (= lt!1246330 e!2237378)))

(declare-fun c!625420 () Bool)

(assert (=> b!3614933 (= c!625420 (isSeparator!5654 rule!403))))

(declare-fun lt!1246322 () Unit!54418)

(declare-fun e!2237371 () Unit!54418)

(assert (=> b!3614933 (= lt!1246322 e!2237371)))

(declare-fun c!625414 () Bool)

(declare-fun lt!1246343 () List!38184)

(declare-fun lt!1246347 () C!21012)

(declare-fun contains!7372 (List!38184 C!21012) Bool)

(assert (=> b!3614933 (= c!625414 (not (contains!7372 lt!1246343 lt!1246347)))))

(declare-fun head!7618 (List!38184) C!21012)

(assert (=> b!3614933 (= lt!1246347 (head!7618 lt!1246341))))

(declare-fun e!2237361 () Bool)

(assert (=> b!3614934 (= e!2237361 (and tp!1104688 tp!1104681))))

(declare-fun b!3614935 () Bool)

(declare-fun res!1462610 () Bool)

(assert (=> b!3614935 (=> (not res!1462610) (not e!2237383))))

(declare-fun isEmpty!22482 (List!38185) Bool)

(assert (=> b!3614935 (= res!1462610 (not (isEmpty!22482 rules!3307)))))

(declare-fun b!3614936 () Bool)

(declare-fun e!2237372 () Unit!54418)

(assert (=> b!3614936 (= e!2237378 e!2237372)))

(declare-fun c!625421 () Bool)

(assert (=> b!3614936 (= c!625421 (isSeparator!5654 (rule!8410 (_1!22108 lt!1246299))))))

(declare-fun b!3614937 () Bool)

(declare-fun e!2237359 () Bool)

(assert (=> b!3614937 (= e!2237363 (not e!2237359))))

(declare-fun res!1462603 () Bool)

(assert (=> b!3614937 (=> res!1462603 e!2237359)))

(declare-fun matchR!4982 (Regex!10413 List!38184) Bool)

(assert (=> b!3614937 (= res!1462603 (not (matchR!4982 (regex!5654 rule!403) lt!1246342)))))

(declare-datatypes ((LexerInterface!5243 0))(
  ( (LexerInterfaceExt!5240 (__x!23986 Int)) (Lexer!5241) )
))
(declare-fun thiss!23823 () LexerInterface!5243)

(declare-fun ruleValid!1919 (LexerInterface!5243 Rule!11108) Bool)

(assert (=> b!3614937 (ruleValid!1919 thiss!23823 rule!403)))

(declare-fun lt!1246333 () Unit!54418)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1074 (LexerInterface!5243 Rule!11108 List!38185) Unit!54418)

(assert (=> b!3614937 (= lt!1246333 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1074 thiss!23823 rule!403 rules!3307))))

(declare-fun call!261425 () Unit!54418)

(declare-fun bm!261421 () Bool)

(assert (=> bm!261421 (= call!261425 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!638 (regex!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246341 lt!1246347))))

(declare-fun bm!261422 () Bool)

(declare-fun call!261427 () Bool)

(declare-fun call!261430 () List!38184)

(assert (=> bm!261422 (= call!261427 (contains!7372 call!261430 lt!1246347))))

(declare-fun b!3614938 () Bool)

(declare-fun Unit!54423 () Unit!54418)

(assert (=> b!3614938 (= e!2237371 Unit!54423)))

(declare-fun b!3614939 () Bool)

(declare-fun res!1462605 () Bool)

(assert (=> b!3614939 (=> (not res!1462605) (not e!2237383))))

(assert (=> b!3614939 (= res!1462605 (not (= (isSeparator!5654 anOtherTypeRule!33) (isSeparator!5654 rule!403))))))

(declare-fun b!3614940 () Bool)

(declare-fun e!2237377 () Bool)

(declare-fun tp!1104683 () Bool)

(declare-fun inv!51439 (String!42754) Bool)

(declare-fun inv!51442 (TokenValueInjection!11196) Bool)

(assert (=> b!3614940 (= e!2237377 (and tp!1104683 (inv!51439 (tag!6366 (rule!8410 token!511))) (inv!51442 (transformation!5654 (rule!8410 token!511))) e!2237361))))

(declare-fun b!3614941 () Bool)

(declare-fun e!2237368 () Bool)

(declare-fun e!2237357 () Bool)

(declare-fun tp!1104682 () Bool)

(assert (=> b!3614941 (= e!2237368 (and e!2237357 tp!1104682))))

(declare-fun b!3614942 () Bool)

(declare-fun e!2237367 () Bool)

(assert (=> b!3614942 (= e!2237367 e!2237374)))

(declare-fun res!1462597 () Bool)

(assert (=> b!3614942 (=> res!1462597 e!2237374)))

(declare-datatypes ((Option!7938 0))(
  ( (None!7937) (Some!7937 (v!37691 tuple2!37948)) )
))
(declare-fun lt!1246312 () Option!7938)

(declare-fun lt!1246316 () List!38184)

(assert (=> b!3614942 (= res!1462597 (or (not (= lt!1246316 (_2!22108 lt!1246299))) (not (= lt!1246312 (Some!7937 (tuple2!37949 (_1!22108 lt!1246299) lt!1246316))))))))

(assert (=> b!3614942 (= (_2!22108 lt!1246299) lt!1246316)))

(declare-fun lt!1246311 () Unit!54418)

(declare-fun lemmaSamePrefixThenSameSuffix!1372 (List!38184 List!38184 List!38184 List!38184 List!38184) Unit!54418)

(assert (=> b!3614942 (= lt!1246311 (lemmaSamePrefixThenSameSuffix!1372 lt!1246341 (_2!22108 lt!1246299) lt!1246341 lt!1246316 lt!1246296))))

(declare-fun getSuffix!1592 (List!38184 List!38184) List!38184)

(assert (=> b!3614942 (= lt!1246316 (getSuffix!1592 lt!1246296 lt!1246341))))

(declare-fun lt!1246326 () TokenValue!5884)

(declare-fun lt!1246336 () Int)

(assert (=> b!3614942 (= lt!1246312 (Some!7937 (tuple2!37949 (Token!10675 lt!1246326 (rule!8410 (_1!22108 lt!1246299)) lt!1246336 lt!1246341) (_2!22108 lt!1246299))))))

(declare-fun maxPrefixOneRule!1921 (LexerInterface!5243 Rule!11108 List!38184) Option!7938)

(assert (=> b!3614942 (= lt!1246312 (maxPrefixOneRule!1921 thiss!23823 (rule!8410 (_1!22108 lt!1246299)) lt!1246296))))

(declare-fun size!29027 (List!38184) Int)

(assert (=> b!3614942 (= lt!1246336 (size!29027 lt!1246341))))

(declare-fun apply!9160 (TokenValueInjection!11196 BalanceConc!22816) TokenValue!5884)

(declare-fun seqFromList!4207 (List!38184) BalanceConc!22816)

(assert (=> b!3614942 (= lt!1246326 (apply!9160 (transformation!5654 (rule!8410 (_1!22108 lt!1246299))) (seqFromList!4207 lt!1246341)))))

(declare-fun lt!1246344 () Unit!54418)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!993 (LexerInterface!5243 List!38185 List!38184 List!38184 List!38184 Rule!11108) Unit!54418)

(assert (=> b!3614942 (= lt!1246344 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!993 thiss!23823 rules!3307 lt!1246341 lt!1246296 (_2!22108 lt!1246299) (rule!8410 (_1!22108 lt!1246299))))))

(declare-fun e!2237362 () Bool)

(declare-fun b!3614943 () Bool)

(declare-fun e!2237390 () Bool)

(declare-fun tp!1104686 () Bool)

(assert (=> b!3614943 (= e!2237390 (and tp!1104686 (inv!51439 (tag!6366 anOtherTypeRule!33)) (inv!51442 (transformation!5654 anOtherTypeRule!33)) e!2237362))))

(declare-fun b!3614944 () Bool)

(declare-fun res!1462588 () Bool)

(assert (=> b!3614944 (=> (not res!1462588) (not e!2237383))))

(declare-fun rulesInvariant!4640 (LexerInterface!5243 List!38185) Bool)

(assert (=> b!3614944 (= res!1462588 (rulesInvariant!4640 thiss!23823 rules!3307))))

(declare-fun b!3614945 () Bool)

(declare-fun Unit!54424 () Unit!54418)

(assert (=> b!3614945 (= e!2237386 Unit!54424)))

(declare-fun lt!1246323 () Unit!54418)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!148 (List!38184) Unit!54418)

(assert (=> b!3614945 (= lt!1246323 (lemmaGetSuffixOnListWithItSelfIsEmpty!148 lt!1246342))))

(declare-fun isEmpty!22483 (List!38184) Bool)

(assert (=> b!3614945 (isEmpty!22483 (getSuffix!1592 lt!1246342 lt!1246342))))

(declare-fun lt!1246339 () Unit!54418)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!188 (LexerInterface!5243 List!38185 Rule!11108 List!38184 List!38184 Rule!11108) Unit!54418)

(assert (=> b!3614945 (= lt!1246339 (lemmaMaxPrefNoSmallerRuleMatches!188 thiss!23823 rules!3307 rule!403 lt!1246342 lt!1246342 (rule!8410 (_1!22108 lt!1246299))))))

(declare-fun res!1462607 () Bool)

(assert (=> b!3614945 (= res!1462607 (not (matchR!4982 (regex!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246342)))))

(declare-fun e!2237356 () Bool)

(assert (=> b!3614945 (=> (not res!1462607) (not e!2237356))))

(assert (=> b!3614945 e!2237356))

(declare-fun tp!1104687 () Bool)

(declare-fun b!3614946 () Bool)

(declare-fun e!2237355 () Bool)

(declare-fun inv!21 (TokenValue!5884) Bool)

(assert (=> b!3614946 (= e!2237355 (and (inv!21 (value!181599 token!511)) e!2237377 tp!1104687))))

(declare-fun b!3614947 () Bool)

(declare-fun res!1462602 () Bool)

(declare-fun e!2237376 () Bool)

(assert (=> b!3614947 (=> res!1462602 e!2237376)))

(declare-fun usedCharacters!868 (Regex!10413) List!38184)

(assert (=> b!3614947 (= res!1462602 (not (contains!7372 (usedCharacters!868 (regex!5654 anOtherTypeRule!33)) lt!1246331)))))

(declare-fun b!3614948 () Bool)

(declare-fun tp!1104680 () Bool)

(declare-fun e!2237392 () Bool)

(assert (=> b!3614948 (= e!2237357 (and tp!1104680 (inv!51439 (tag!6366 (h!43481 rules!3307))) (inv!51442 (transformation!5654 (h!43481 rules!3307))) e!2237392))))

(declare-fun b!3614949 () Bool)

(declare-fun Unit!54425 () Unit!54418)

(assert (=> b!3614949 (= e!2237372 Unit!54425)))

(declare-fun e!2237370 () Bool)

(assert (=> b!3614950 (= e!2237370 (and tp!1104694 tp!1104684))))

(declare-fun b!3614951 () Bool)

(declare-fun e!2237380 () Bool)

(assert (=> b!3614951 (= e!2237380 e!2237363)))

(declare-fun res!1462590 () Bool)

(assert (=> b!3614951 (=> (not res!1462590) (not e!2237363))))

(declare-fun lt!1246301 () tuple2!37948)

(assert (=> b!3614951 (= res!1462590 (= (_1!22108 lt!1246301) token!511))))

(declare-fun lt!1246317 () Option!7938)

(declare-fun get!12375 (Option!7938) tuple2!37948)

(assert (=> b!3614951 (= lt!1246301 (get!12375 lt!1246317))))

(declare-fun b!3614952 () Bool)

(declare-fun res!1462604 () Bool)

(assert (=> b!3614952 (=> res!1462604 e!2237360)))

(assert (=> b!3614952 (= res!1462604 (isEmpty!22483 lt!1246342))))

(assert (=> b!3614953 (= e!2237362 (and tp!1104692 tp!1104691))))

(declare-fun b!3614954 () Bool)

(declare-fun e!2237382 () Bool)

(declare-fun tp!1104689 () Bool)

(assert (=> b!3614954 (= e!2237382 (and tp!1104689 (inv!51439 (tag!6366 rule!403)) (inv!51442 (transformation!5654 rule!403)) e!2237370))))

(declare-fun res!1462591 () Bool)

(assert (=> start!336634 (=> (not res!1462591) (not e!2237383))))

(get-info :version)

(assert (=> start!336634 (= res!1462591 ((_ is Lexer!5241) thiss!23823))))

(assert (=> start!336634 e!2237383))

(assert (=> start!336634 e!2237368))

(declare-fun e!2237391 () Bool)

(assert (=> start!336634 e!2237391))

(assert (=> start!336634 true))

(declare-fun inv!51443 (Token!10674) Bool)

(assert (=> start!336634 (and (inv!51443 token!511) e!2237355)))

(assert (=> start!336634 e!2237382))

(assert (=> start!336634 e!2237390))

(declare-fun b!3614955 () Bool)

(declare-fun e!2237375 () Bool)

(assert (=> b!3614955 (= e!2237375 e!2237367)))

(declare-fun res!1462594 () Bool)

(assert (=> b!3614955 (=> res!1462594 e!2237367)))

(declare-fun lt!1246314 () TokenValue!5884)

(declare-fun lt!1246350 () Option!7938)

(assert (=> b!3614955 (= res!1462594 (not (= lt!1246350 (Some!7937 (tuple2!37949 (Token!10675 lt!1246314 (rule!8410 (_1!22108 lt!1246299)) lt!1246298 lt!1246341) (_2!22108 lt!1246299))))))))

(declare-fun lt!1246349 () BalanceConc!22816)

(assert (=> b!3614955 (= lt!1246298 (size!29026 lt!1246349))))

(assert (=> b!3614955 (= lt!1246314 (apply!9160 (transformation!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246349))))

(declare-fun lt!1246328 () Unit!54418)

(declare-fun lemmaCharactersSize!707 (Token!10674) Unit!54418)

(assert (=> b!3614955 (= lt!1246328 (lemmaCharactersSize!707 (_1!22108 lt!1246299)))))

(declare-fun lt!1246338 () Unit!54418)

(declare-fun lemmaEqSameImage!845 (TokenValueInjection!11196 BalanceConc!22816 BalanceConc!22816) Unit!54418)

(assert (=> b!3614955 (= lt!1246338 (lemmaEqSameImage!845 (transformation!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246349 (seqFromList!4207 (originalCharacters!6368 (_1!22108 lt!1246299)))))))

(declare-fun lt!1246306 () Unit!54418)

(declare-fun lemmaSemiInverse!1411 (TokenValueInjection!11196 BalanceConc!22816) Unit!54418)

(assert (=> b!3614955 (= lt!1246306 (lemmaSemiInverse!1411 (transformation!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246349))))

(declare-fun b!3614956 () Bool)

(declare-fun res!1462600 () Bool)

(assert (=> b!3614956 (=> res!1462600 e!2237359)))

(declare-fun suffix!1395 () List!38184)

(assert (=> b!3614956 (= res!1462600 (isEmpty!22483 suffix!1395))))

(declare-fun b!3614957 () Bool)

(declare-fun res!1462586 () Bool)

(assert (=> b!3614957 (=> (not res!1462586) (not e!2237383))))

(assert (=> b!3614957 (= res!1462586 (contains!7371 rules!3307 rule!403))))

(declare-fun b!3614958 () Bool)

(declare-fun Unit!54426 () Unit!54418)

(assert (=> b!3614958 (= e!2237369 Unit!54426)))

(declare-fun lt!1246329 () Unit!54418)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!302 (LexerInterface!5243 List!38185 Rule!11108 List!38184 List!38184 List!38184 Rule!11108) Unit!54418)

(assert (=> b!3614958 (= lt!1246329 (lemmaMaxPrefixOutputsMaxPrefix!302 thiss!23823 rules!3307 (rule!8410 (_1!22108 lt!1246299)) lt!1246341 lt!1246296 lt!1246342 rule!403))))

(assert (=> b!3614958 false))

(declare-fun b!3614959 () Bool)

(declare-fun Unit!54427 () Unit!54418)

(assert (=> b!3614959 (= e!2237371 Unit!54427)))

(declare-fun lt!1246318 () Unit!54418)

(assert (=> b!3614959 (= lt!1246318 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!638 (regex!5654 rule!403) lt!1246342 lt!1246347))))

(assert (=> b!3614959 false))

(declare-fun bm!261423 () Bool)

(declare-fun call!261426 () Bool)

(declare-fun call!261428 () List!38184)

(assert (=> bm!261423 (= call!261426 (contains!7372 call!261428 lt!1246331))))

(declare-fun b!3614960 () Bool)

(declare-fun res!1462592 () Bool)

(assert (=> b!3614960 (=> res!1462592 e!2237360)))

(assert (=> b!3614960 (= res!1462592 (not (contains!7371 rules!3307 (rule!8410 (_1!22108 lt!1246299)))))))

(declare-fun b!3614961 () Bool)

(declare-fun e!2237365 () Bool)

(assert (=> b!3614961 (= e!2237360 e!2237365)))

(declare-fun res!1462599 () Bool)

(assert (=> b!3614961 (=> res!1462599 e!2237365)))

(declare-fun lt!1246297 () BalanceConc!22816)

(assert (=> b!3614961 (= res!1462599 (not (= lt!1246350 (Some!7937 (tuple2!37949 (Token!10675 (apply!9160 (transformation!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246297) (rule!8410 (_1!22108 lt!1246299)) (size!29027 lt!1246342) lt!1246342) (getSuffix!1592 lt!1246296 lt!1246342))))))))

(declare-fun lt!1246313 () Unit!54418)

(assert (=> b!3614961 (= lt!1246313 (lemmaSemiInverse!1411 (transformation!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246297))))

(assert (=> b!3614961 (= lt!1246297 (seqFromList!4207 lt!1246342))))

(declare-fun b!3614962 () Bool)

(assert (=> b!3614962 false))

(declare-fun lt!1246348 () Unit!54418)

(assert (=> b!3614962 (= lt!1246348 call!261425)))

(assert (=> b!3614962 (not call!261427)))

(declare-fun lt!1246327 () Unit!54418)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!242 (LexerInterface!5243 List!38185 List!38185 Rule!11108 Rule!11108 C!21012) Unit!54418)

(assert (=> b!3614962 (= lt!1246327 (lemmaSepRuleNotContainsCharContainedInANonSepRule!242 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8410 (_1!22108 lt!1246299)) lt!1246347))))

(declare-fun Unit!54428 () Unit!54418)

(assert (=> b!3614962 (= e!2237372 Unit!54428)))

(declare-fun b!3614963 () Bool)

(declare-fun e!2237366 () Bool)

(declare-fun e!2237388 () Bool)

(assert (=> b!3614963 (= e!2237366 e!2237388)))

(declare-fun res!1462608 () Bool)

(assert (=> b!3614963 (=> (not res!1462608) (not e!2237388))))

(declare-fun lt!1246340 () Rule!11108)

(declare-fun list!14042 (BalanceConc!22816) List!38184)

(declare-fun charsOf!3668 (Token!10674) BalanceConc!22816)

(assert (=> b!3614963 (= res!1462608 (matchR!4982 (regex!5654 lt!1246340) (list!14042 (charsOf!3668 (_1!22108 lt!1246299)))))))

(declare-datatypes ((Option!7939 0))(
  ( (None!7938) (Some!7938 (v!37692 Rule!11108)) )
))
(declare-fun lt!1246300 () Option!7939)

(declare-fun get!12376 (Option!7939) Rule!11108)

(assert (=> b!3614963 (= lt!1246340 (get!12376 lt!1246300))))

(assert (=> b!3614964 (= e!2237392 (and tp!1104693 tp!1104685))))

(declare-fun b!3614965 () Bool)

(assert (=> b!3614965 false))

(declare-fun lt!1246308 () Unit!54418)

(assert (=> b!3614965 (= lt!1246308 call!261429)))

(assert (=> b!3614965 (not call!261426)))

(declare-fun lt!1246302 () Unit!54418)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!360 (LexerInterface!5243 List!38185 List!38185 Rule!11108 Rule!11108 C!21012) Unit!54418)

(assert (=> b!3614965 (= lt!1246302 (lemmaNonSepRuleNotContainsCharContainedInASepRule!360 thiss!23823 rules!3307 rules!3307 (rule!8410 (_1!22108 lt!1246299)) anOtherTypeRule!33 lt!1246331))))

(declare-fun e!2237379 () Unit!54418)

(declare-fun Unit!54429 () Unit!54418)

(assert (=> b!3614965 (= e!2237379 Unit!54429)))

(declare-fun b!3614966 () Bool)

(declare-fun res!1462609 () Bool)

(assert (=> b!3614966 (=> (not res!1462609) (not e!2237363))))

(assert (=> b!3614966 (= res!1462609 (isEmpty!22483 (_2!22108 lt!1246301)))))

(declare-fun b!3614967 () Bool)

(assert (=> b!3614967 (= e!2237365 true)))

(declare-fun lt!1246309 () Bool)

(assert (=> b!3614967 (= lt!1246309 (ruleValid!1919 thiss!23823 (rule!8410 (_1!22108 lt!1246299))))))

(declare-fun b!3614968 () Bool)

(assert (=> b!3614968 (= e!2237356 false)))

(declare-fun b!3614969 () Bool)

(assert (=> b!3614969 (= e!2237359 e!2237376)))

(declare-fun res!1462596 () Bool)

(assert (=> b!3614969 (=> res!1462596 e!2237376)))

(assert (=> b!3614969 (= res!1462596 (contains!7372 lt!1246343 lt!1246331))))

(assert (=> b!3614969 (= lt!1246331 (head!7618 suffix!1395))))

(assert (=> b!3614969 (= lt!1246343 (usedCharacters!868 (regex!5654 rule!403)))))

(declare-fun b!3614970 () Bool)

(declare-fun Unit!54430 () Unit!54418)

(assert (=> b!3614970 (= e!2237386 Unit!54430)))

(declare-fun b!3614971 () Bool)

(assert (=> b!3614971 (= e!2237378 e!2237385)))

(declare-fun c!625417 () Bool)

(assert (=> b!3614971 (= c!625417 (not (isSeparator!5654 (rule!8410 (_1!22108 lt!1246299)))))))

(declare-fun bm!261424 () Bool)

(assert (=> bm!261424 (= call!261428 (usedCharacters!868 (regex!5654 (rule!8410 (_1!22108 lt!1246299)))))))

(declare-fun b!3614972 () Bool)

(declare-fun tp_is_empty!17909 () Bool)

(declare-fun tp!1104690 () Bool)

(assert (=> b!3614972 (= e!2237391 (and tp_is_empty!17909 tp!1104690))))

(declare-fun b!3614973 () Bool)

(assert (=> b!3614973 (= e!2237376 e!2237375)))

(declare-fun res!1462606 () Bool)

(assert (=> b!3614973 (=> res!1462606 e!2237375)))

(declare-fun isPrefix!3017 (List!38184 List!38184) Bool)

(assert (=> b!3614973 (= res!1462606 (not (isPrefix!3017 lt!1246341 lt!1246296)))))

(declare-fun ++!9470 (List!38184 List!38184) List!38184)

(assert (=> b!3614973 (isPrefix!3017 lt!1246341 (++!9470 lt!1246341 (_2!22108 lt!1246299)))))

(declare-fun lt!1246310 () Unit!54418)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1938 (List!38184 List!38184) Unit!54418)

(assert (=> b!3614973 (= lt!1246310 (lemmaConcatTwoListThenFirstIsPrefix!1938 lt!1246341 (_2!22108 lt!1246299)))))

(assert (=> b!3614973 (= lt!1246341 (list!14042 lt!1246349))))

(assert (=> b!3614973 (= lt!1246349 (charsOf!3668 (_1!22108 lt!1246299)))))

(assert (=> b!3614973 e!2237366))

(declare-fun res!1462595 () Bool)

(assert (=> b!3614973 (=> (not res!1462595) (not e!2237366))))

(declare-fun isDefined!6170 (Option!7939) Bool)

(assert (=> b!3614973 (= res!1462595 (isDefined!6170 lt!1246300))))

(declare-fun getRuleFromTag!1260 (LexerInterface!5243 List!38185 String!42754) Option!7939)

(assert (=> b!3614973 (= lt!1246300 (getRuleFromTag!1260 thiss!23823 rules!3307 (tag!6366 (rule!8410 (_1!22108 lt!1246299)))))))

(declare-fun lt!1246315 () Unit!54418)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1260 (LexerInterface!5243 List!38185 List!38184 Token!10674) Unit!54418)

(assert (=> b!3614973 (= lt!1246315 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1260 thiss!23823 rules!3307 lt!1246296 (_1!22108 lt!1246299)))))

(assert (=> b!3614973 (= lt!1246299 (get!12375 lt!1246350))))

(declare-fun lt!1246321 () Unit!54418)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!923 (LexerInterface!5243 List!38185 List!38184 List!38184) Unit!54418)

(assert (=> b!3614973 (= lt!1246321 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!923 thiss!23823 rules!3307 lt!1246342 suffix!1395))))

(declare-fun maxPrefix!2777 (LexerInterface!5243 List!38185 List!38184) Option!7938)

(assert (=> b!3614973 (= lt!1246350 (maxPrefix!2777 thiss!23823 rules!3307 lt!1246296))))

(assert (=> b!3614973 (isPrefix!3017 lt!1246342 lt!1246296)))

(declare-fun lt!1246335 () Unit!54418)

(assert (=> b!3614973 (= lt!1246335 (lemmaConcatTwoListThenFirstIsPrefix!1938 lt!1246342 suffix!1395))))

(assert (=> b!3614973 (= lt!1246296 (++!9470 lt!1246342 suffix!1395))))

(declare-fun b!3614974 () Bool)

(declare-fun Unit!54431 () Unit!54418)

(assert (=> b!3614974 (= e!2237373 Unit!54431)))

(declare-fun b!3614975 () Bool)

(assert (=> b!3614975 (= e!2237383 e!2237380)))

(declare-fun res!1462598 () Bool)

(assert (=> b!3614975 (=> (not res!1462598) (not e!2237380))))

(declare-fun isDefined!6171 (Option!7938) Bool)

(assert (=> b!3614975 (= res!1462598 (isDefined!6171 lt!1246317))))

(assert (=> b!3614975 (= lt!1246317 (maxPrefix!2777 thiss!23823 rules!3307 lt!1246342))))

(assert (=> b!3614975 (= lt!1246342 (list!14042 lt!1246319))))

(assert (=> b!3614975 (= lt!1246319 (charsOf!3668 token!511))))

(declare-fun b!3614976 () Bool)

(declare-fun res!1462611 () Bool)

(assert (=> b!3614976 (=> res!1462611 e!2237365)))

(assert (=> b!3614976 (= res!1462611 (not (matchR!4982 (regex!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246342)))))

(declare-fun b!3614977 () Bool)

(declare-fun res!1462589 () Bool)

(assert (=> b!3614977 (=> res!1462589 e!2237376)))

(declare-fun sepAndNonSepRulesDisjointChars!1824 (List!38185 List!38185) Bool)

(assert (=> b!3614977 (= res!1462589 (not (sepAndNonSepRulesDisjointChars!1824 rules!3307 rules!3307)))))

(declare-fun b!3614978 () Bool)

(declare-fun res!1462601 () Bool)

(assert (=> b!3614978 (=> res!1462601 e!2237375)))

(assert (=> b!3614978 (= res!1462601 (not (matchR!4982 (regex!5654 (rule!8410 (_1!22108 lt!1246299))) lt!1246341)))))

(declare-fun b!3614979 () Bool)

(assert (=> b!3614979 false))

(declare-fun lt!1246305 () Unit!54418)

(assert (=> b!3614979 (= lt!1246305 call!261425)))

(assert (=> b!3614979 (not call!261427)))

(declare-fun lt!1246334 () Unit!54418)

(assert (=> b!3614979 (= lt!1246334 (lemmaNonSepRuleNotContainsCharContainedInASepRule!360 thiss!23823 rules!3307 rules!3307 (rule!8410 (_1!22108 lt!1246299)) rule!403 lt!1246347))))

(declare-fun Unit!54432 () Unit!54418)

(assert (=> b!3614979 (= e!2237385 Unit!54432)))

(declare-fun b!3614980 () Bool)

(assert (=> b!3614980 (= e!2237388 (= (rule!8410 (_1!22108 lt!1246299)) lt!1246340))))

(declare-fun b!3614981 () Bool)

(assert (=> b!3614981 (= e!2237373 e!2237379)))

(declare-fun lt!1246346 () Unit!54418)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!32 (List!38184 List!38184 List!38184 List!38184) Unit!54418)

(assert (=> b!3614981 (= lt!1246346 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!32 lt!1246342 suffix!1395 lt!1246341 lt!1246296))))

(assert (=> b!3614981 (contains!7372 lt!1246341 lt!1246331)))

(declare-fun c!625418 () Bool)

(assert (=> b!3614981 (= c!625418 (isSeparator!5654 rule!403))))

(declare-fun bm!261425 () Bool)

(assert (=> bm!261425 (= call!261430 (usedCharacters!868 (regex!5654 (rule!8410 (_1!22108 lt!1246299)))))))

(declare-fun b!3614982 () Bool)

(assert (=> b!3614982 false))

(declare-fun lt!1246337 () Unit!54418)

(assert (=> b!3614982 (= lt!1246337 call!261429)))

(assert (=> b!3614982 (not call!261426)))

(declare-fun lt!1246304 () Unit!54418)

(assert (=> b!3614982 (= lt!1246304 (lemmaSepRuleNotContainsCharContainedInANonSepRule!242 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8410 (_1!22108 lt!1246299)) lt!1246331))))

(declare-fun Unit!54433 () Unit!54418)

(assert (=> b!3614982 (= e!2237379 Unit!54433)))

(assert (= (and start!336634 res!1462591) b!3614935))

(assert (= (and b!3614935 res!1462610) b!3614944))

(assert (= (and b!3614944 res!1462588) b!3614957))

(assert (= (and b!3614957 res!1462586) b!3614932))

(assert (= (and b!3614932 res!1462587) b!3614939))

(assert (= (and b!3614939 res!1462605) b!3614975))

(assert (= (and b!3614975 res!1462598) b!3614951))

(assert (= (and b!3614951 res!1462590) b!3614966))

(assert (= (and b!3614966 res!1462609) b!3614929))

(assert (= (and b!3614929 res!1462612) b!3614937))

(assert (= (and b!3614937 (not res!1462603)) b!3614956))

(assert (= (and b!3614956 (not res!1462600)) b!3614969))

(assert (= (and b!3614969 (not res!1462596)) b!3614947))

(assert (= (and b!3614947 (not res!1462602)) b!3614977))

(assert (= (and b!3614977 (not res!1462589)) b!3614973))

(assert (= (and b!3614973 res!1462595) b!3614963))

(assert (= (and b!3614963 res!1462608) b!3614980))

(assert (= (and b!3614973 (not res!1462606)) b!3614978))

(assert (= (and b!3614978 (not res!1462601)) b!3614955))

(assert (= (and b!3614955 (not res!1462594)) b!3614942))

(assert (= (and b!3614942 (not res!1462597)) b!3614933))

(assert (= (and b!3614933 c!625414) b!3614959))

(assert (= (and b!3614933 (not c!625414)) b!3614938))

(assert (= (and b!3614933 c!625420) b!3614971))

(assert (= (and b!3614933 (not c!625420)) b!3614936))

(assert (= (and b!3614971 c!625417) b!3614979))

(assert (= (and b!3614971 (not c!625417)) b!3614931))

(assert (= (and b!3614936 c!625421) b!3614962))

(assert (= (and b!3614936 (not c!625421)) b!3614949))

(assert (= (or b!3614979 b!3614962) bm!261421))

(assert (= (or b!3614979 b!3614962) bm!261425))

(assert (= (or b!3614979 b!3614962) bm!261422))

(assert (= (and b!3614933 c!625416) b!3614981))

(assert (= (and b!3614933 (not c!625416)) b!3614974))

(assert (= (and b!3614981 c!625418) b!3614982))

(assert (= (and b!3614981 (not c!625418)) b!3614965))

(assert (= (or b!3614982 b!3614965) bm!261420))

(assert (= (or b!3614982 b!3614965) bm!261424))

(assert (= (or b!3614982 b!3614965) bm!261423))

(assert (= (and b!3614933 c!625415) b!3614958))

(assert (= (and b!3614933 (not c!625415)) b!3614930))

(assert (= (and b!3614933 (not res!1462593)) b!3614928))

(assert (= (and b!3614928 c!625419) b!3614945))

(assert (= (and b!3614928 (not c!625419)) b!3614970))

(assert (= (and b!3614945 res!1462607) b!3614968))

(assert (= (and b!3614928 (not res!1462585)) b!3614960))

(assert (= (and b!3614960 (not res!1462592)) b!3614952))

(assert (= (and b!3614952 (not res!1462604)) b!3614961))

(assert (= (and b!3614961 (not res!1462599)) b!3614976))

(assert (= (and b!3614976 (not res!1462611)) b!3614967))

(assert (= b!3614948 b!3614964))

(assert (= b!3614941 b!3614948))

(assert (= (and start!336634 ((_ is Cons!38061) rules!3307)) b!3614941))

(assert (= (and start!336634 ((_ is Cons!38060) suffix!1395)) b!3614972))

(assert (= b!3614940 b!3614934))

(assert (= b!3614946 b!3614940))

(assert (= start!336634 b!3614946))

(assert (= b!3614954 b!3614950))

(assert (= start!336634 b!3614954))

(assert (= b!3614943 b!3614953))

(assert (= start!336634 b!3614943))

(declare-fun m!4113345 () Bool)

(assert (=> b!3614963 m!4113345))

(assert (=> b!3614963 m!4113345))

(declare-fun m!4113347 () Bool)

(assert (=> b!3614963 m!4113347))

(assert (=> b!3614963 m!4113347))

(declare-fun m!4113349 () Bool)

(assert (=> b!3614963 m!4113349))

(declare-fun m!4113351 () Bool)

(assert (=> b!3614963 m!4113351))

(declare-fun m!4113353 () Bool)

(assert (=> b!3614982 m!4113353))

(declare-fun m!4113355 () Bool)

(assert (=> b!3614981 m!4113355))

(declare-fun m!4113357 () Bool)

(assert (=> b!3614981 m!4113357))

(declare-fun m!4113359 () Bool)

(assert (=> b!3614958 m!4113359))

(declare-fun m!4113361 () Bool)

(assert (=> b!3614977 m!4113361))

(declare-fun m!4113363 () Bool)

(assert (=> b!3614935 m!4113363))

(declare-fun m!4113365 () Bool)

(assert (=> b!3614962 m!4113365))

(declare-fun m!4113367 () Bool)

(assert (=> b!3614978 m!4113367))

(declare-fun m!4113369 () Bool)

(assert (=> b!3614946 m!4113369))

(declare-fun m!4113371 () Bool)

(assert (=> b!3614959 m!4113371))

(declare-fun m!4113373 () Bool)

(assert (=> bm!261420 m!4113373))

(declare-fun m!4113375 () Bool)

(assert (=> b!3614960 m!4113375))

(declare-fun m!4113377 () Bool)

(assert (=> b!3614969 m!4113377))

(declare-fun m!4113379 () Bool)

(assert (=> b!3614969 m!4113379))

(declare-fun m!4113381 () Bool)

(assert (=> b!3614969 m!4113381))

(declare-fun m!4113383 () Bool)

(assert (=> b!3614979 m!4113383))

(declare-fun m!4113385 () Bool)

(assert (=> b!3614975 m!4113385))

(declare-fun m!4113387 () Bool)

(assert (=> b!3614975 m!4113387))

(declare-fun m!4113389 () Bool)

(assert (=> b!3614975 m!4113389))

(declare-fun m!4113391 () Bool)

(assert (=> b!3614975 m!4113391))

(declare-fun m!4113393 () Bool)

(assert (=> b!3614947 m!4113393))

(assert (=> b!3614947 m!4113393))

(declare-fun m!4113395 () Bool)

(assert (=> b!3614947 m!4113395))

(declare-fun m!4113397 () Bool)

(assert (=> bm!261422 m!4113397))

(declare-fun m!4113399 () Bool)

(assert (=> b!3614951 m!4113399))

(declare-fun m!4113401 () Bool)

(assert (=> b!3614967 m!4113401))

(declare-fun m!4113403 () Bool)

(assert (=> b!3614943 m!4113403))

(declare-fun m!4113405 () Bool)

(assert (=> b!3614943 m!4113405))

(declare-fun m!4113407 () Bool)

(assert (=> b!3614957 m!4113407))

(declare-fun m!4113409 () Bool)

(assert (=> b!3614976 m!4113409))

(declare-fun m!4113411 () Bool)

(assert (=> b!3614942 m!4113411))

(declare-fun m!4113413 () Bool)

(assert (=> b!3614942 m!4113413))

(declare-fun m!4113415 () Bool)

(assert (=> b!3614942 m!4113415))

(declare-fun m!4113417 () Bool)

(assert (=> b!3614942 m!4113417))

(declare-fun m!4113419 () Bool)

(assert (=> b!3614942 m!4113419))

(assert (=> b!3614942 m!4113415))

(declare-fun m!4113421 () Bool)

(assert (=> b!3614942 m!4113421))

(declare-fun m!4113423 () Bool)

(assert (=> b!3614942 m!4113423))

(declare-fun m!4113425 () Bool)

(assert (=> b!3614940 m!4113425))

(declare-fun m!4113427 () Bool)

(assert (=> b!3614940 m!4113427))

(declare-fun m!4113429 () Bool)

(assert (=> bm!261425 m!4113429))

(declare-fun m!4113431 () Bool)

(assert (=> b!3614973 m!4113431))

(declare-fun m!4113433 () Bool)

(assert (=> b!3614973 m!4113433))

(declare-fun m!4113435 () Bool)

(assert (=> b!3614973 m!4113435))

(declare-fun m!4113437 () Bool)

(assert (=> b!3614973 m!4113437))

(declare-fun m!4113439 () Bool)

(assert (=> b!3614973 m!4113439))

(assert (=> b!3614973 m!4113345))

(declare-fun m!4113441 () Bool)

(assert (=> b!3614973 m!4113441))

(declare-fun m!4113443 () Bool)

(assert (=> b!3614973 m!4113443))

(assert (=> b!3614973 m!4113431))

(declare-fun m!4113445 () Bool)

(assert (=> b!3614973 m!4113445))

(declare-fun m!4113447 () Bool)

(assert (=> b!3614973 m!4113447))

(declare-fun m!4113449 () Bool)

(assert (=> b!3614973 m!4113449))

(declare-fun m!4113451 () Bool)

(assert (=> b!3614973 m!4113451))

(declare-fun m!4113453 () Bool)

(assert (=> b!3614973 m!4113453))

(declare-fun m!4113455 () Bool)

(assert (=> b!3614973 m!4113455))

(declare-fun m!4113457 () Bool)

(assert (=> b!3614973 m!4113457))

(declare-fun m!4113459 () Bool)

(assert (=> b!3614933 m!4113459))

(declare-fun m!4113461 () Bool)

(assert (=> b!3614933 m!4113461))

(declare-fun m!4113463 () Bool)

(assert (=> b!3614933 m!4113463))

(declare-fun m!4113465 () Bool)

(assert (=> b!3614933 m!4113465))

(declare-fun m!4113467 () Bool)

(assert (=> b!3614945 m!4113467))

(declare-fun m!4113469 () Bool)

(assert (=> b!3614945 m!4113469))

(declare-fun m!4113471 () Bool)

(assert (=> b!3614945 m!4113471))

(assert (=> b!3614945 m!4113409))

(declare-fun m!4113473 () Bool)

(assert (=> b!3614945 m!4113473))

(assert (=> b!3614945 m!4113467))

(declare-fun m!4113475 () Bool)

(assert (=> b!3614956 m!4113475))

(declare-fun m!4113477 () Bool)

(assert (=> b!3614944 m!4113477))

(declare-fun m!4113479 () Bool)

(assert (=> b!3614966 m!4113479))

(declare-fun m!4113481 () Bool)

(assert (=> bm!261423 m!4113481))

(declare-fun m!4113483 () Bool)

(assert (=> b!3614954 m!4113483))

(declare-fun m!4113485 () Bool)

(assert (=> b!3614954 m!4113485))

(assert (=> bm!261424 m!4113429))

(declare-fun m!4113487 () Bool)

(assert (=> start!336634 m!4113487))

(declare-fun m!4113489 () Bool)

(assert (=> b!3614961 m!4113489))

(declare-fun m!4113491 () Bool)

(assert (=> b!3614961 m!4113491))

(declare-fun m!4113493 () Bool)

(assert (=> b!3614961 m!4113493))

(declare-fun m!4113495 () Bool)

(assert (=> b!3614961 m!4113495))

(declare-fun m!4113497 () Bool)

(assert (=> b!3614961 m!4113497))

(declare-fun m!4113499 () Bool)

(assert (=> b!3614937 m!4113499))

(declare-fun m!4113501 () Bool)

(assert (=> b!3614937 m!4113501))

(declare-fun m!4113503 () Bool)

(assert (=> b!3614937 m!4113503))

(declare-fun m!4113505 () Bool)

(assert (=> b!3614955 m!4113505))

(declare-fun m!4113507 () Bool)

(assert (=> b!3614955 m!4113507))

(declare-fun m!4113509 () Bool)

(assert (=> b!3614955 m!4113509))

(declare-fun m!4113511 () Bool)

(assert (=> b!3614955 m!4113511))

(declare-fun m!4113513 () Bool)

(assert (=> b!3614955 m!4113513))

(declare-fun m!4113515 () Bool)

(assert (=> b!3614955 m!4113515))

(assert (=> b!3614955 m!4113507))

(declare-fun m!4113517 () Bool)

(assert (=> b!3614928 m!4113517))

(declare-fun m!4113519 () Bool)

(assert (=> b!3614928 m!4113519))

(declare-fun m!4113521 () Bool)

(assert (=> b!3614932 m!4113521))

(declare-fun m!4113523 () Bool)

(assert (=> bm!261421 m!4113523))

(declare-fun m!4113525 () Bool)

(assert (=> b!3614948 m!4113525))

(declare-fun m!4113527 () Bool)

(assert (=> b!3614948 m!4113527))

(declare-fun m!4113529 () Bool)

(assert (=> b!3614952 m!4113529))

(declare-fun m!4113531 () Bool)

(assert (=> b!3614965 m!4113531))

(check-sat (not b!3614948) (not b!3614969) (not bm!261420) (not b!3614960) (not bm!261423) (not b!3614933) b_and!263937 (not b_next!94731) (not b!3614940) (not b!3614946) b_and!263931 (not b!3614961) (not b!3614952) (not b!3614962) (not bm!261421) (not b!3614958) (not b!3614966) (not b_next!94727) (not b!3614957) (not b!3614965) (not b!3614977) b_and!263925 (not bm!261422) tp_is_empty!17909 (not b!3614955) (not b!3614963) (not b!3614978) (not b_next!94723) b_and!263935 (not b!3614935) (not b!3614928) (not b!3614943) (not b!3614942) (not b!3614982) (not b!3614956) (not b!3614981) b_and!263927 (not b_next!94733) b_and!263923 (not start!336634) (not b!3614954) (not b!3614972) (not b!3614967) (not b!3614944) (not b!3614976) (not b!3614973) (not b!3614932) (not b!3614979) (not b!3614947) (not bm!261425) (not b_next!94729) (not bm!261424) (not b_next!94721) (not b!3614959) (not b!3614951) (not b!3614945) b_and!263933 (not b!3614941) b_and!263929 (not b!3614937) (not b_next!94735) (not b_next!94725) (not b!3614975))
(check-sat (not b_next!94727) b_and!263925 b_and!263937 (not b_next!94731) (not b_next!94729) (not b_next!94721) b_and!263933 b_and!263929 b_and!263931 (not b_next!94723) b_and!263935 b_and!263927 (not b_next!94733) b_and!263923 (not b_next!94735) (not b_next!94725))
