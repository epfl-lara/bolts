; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30082 () Bool)

(assert start!30082)

(declare-fun b!277951 () Bool)

(declare-fun b_free!10265 () Bool)

(declare-fun b_next!10265 () Bool)

(assert (=> b!277951 (= b_free!10265 (not b_next!10265))))

(declare-fun tp!103937 () Bool)

(declare-fun b_and!22309 () Bool)

(assert (=> b!277951 (= tp!103937 b_and!22309)))

(declare-fun b_free!10267 () Bool)

(declare-fun b_next!10267 () Bool)

(assert (=> b!277951 (= b_free!10267 (not b_next!10267))))

(declare-fun tp!103946 () Bool)

(declare-fun b_and!22311 () Bool)

(assert (=> b!277951 (= tp!103946 b_and!22311)))

(declare-fun b!277938 () Bool)

(declare-fun b_free!10269 () Bool)

(declare-fun b_next!10269 () Bool)

(assert (=> b!277938 (= b_free!10269 (not b_next!10269))))

(declare-fun tp!103935 () Bool)

(declare-fun b_and!22313 () Bool)

(assert (=> b!277938 (= tp!103935 b_and!22313)))

(declare-fun b_free!10271 () Bool)

(declare-fun b_next!10271 () Bool)

(assert (=> b!277938 (= b_free!10271 (not b_next!10271))))

(declare-fun tp!103939 () Bool)

(declare-fun b_and!22315 () Bool)

(assert (=> b!277938 (= tp!103939 b_and!22315)))

(declare-fun b!277967 () Bool)

(declare-fun b_free!10273 () Bool)

(declare-fun b_next!10273 () Bool)

(assert (=> b!277967 (= b_free!10273 (not b_next!10273))))

(declare-fun tp!103941 () Bool)

(declare-fun b_and!22317 () Bool)

(assert (=> b!277967 (= tp!103941 b_and!22317)))

(declare-fun b_free!10275 () Bool)

(declare-fun b_next!10275 () Bool)

(assert (=> b!277967 (= b_free!10275 (not b_next!10275))))

(declare-fun tp!103947 () Bool)

(declare-fun b_and!22319 () Bool)

(assert (=> b!277967 (= tp!103947 b_and!22319)))

(declare-fun bs!31172 () Bool)

(declare-fun b!277931 () Bool)

(declare-fun b!277932 () Bool)

(assert (= bs!31172 (and b!277931 b!277932)))

(declare-fun lambda!9468 () Int)

(declare-fun lambda!9467 () Int)

(assert (=> bs!31172 (not (= lambda!9468 lambda!9467))))

(declare-fun b!277980 () Bool)

(declare-fun e!172896 () Bool)

(assert (=> b!277980 (= e!172896 true)))

(declare-fun b!277979 () Bool)

(declare-fun e!172895 () Bool)

(assert (=> b!277979 (= e!172895 e!172896)))

(declare-fun b!277978 () Bool)

(declare-fun e!172894 () Bool)

(assert (=> b!277978 (= e!172894 e!172895)))

(assert (=> b!277931 e!172894))

(assert (= b!277979 b!277980))

(assert (= b!277978 b!277979))

(declare-datatypes ((List!3886 0))(
  ( (Nil!3876) (Cons!3876 (h!9273 (_ BitVec 16)) (t!39184 List!3886)) )
))
(declare-datatypes ((TokenValue!763 0))(
  ( (FloatLiteralValue!1526 (text!5786 List!3886)) (TokenValueExt!762 (__x!3013 Int)) (Broken!3815 (value!25408 List!3886)) (Object!772) (End!763) (Def!763) (Underscore!763) (Match!763) (Else!763) (Error!763) (Case!763) (If!763) (Extends!763) (Abstract!763) (Class!763) (Val!763) (DelimiterValue!1526 (del!823 List!3886)) (KeywordValue!769 (value!25409 List!3886)) (CommentValue!1526 (value!25410 List!3886)) (WhitespaceValue!1526 (value!25411 List!3886)) (IndentationValue!763 (value!25412 List!3886)) (String!4894) (Int32!763) (Broken!3816 (value!25413 List!3886)) (Boolean!764) (Unit!5091) (OperatorValue!766 (op!823 List!3886)) (IdentifierValue!1526 (value!25414 List!3886)) (IdentifierValue!1527 (value!25415 List!3886)) (WhitespaceValue!1527 (value!25416 List!3886)) (True!1526) (False!1526) (Broken!3817 (value!25417 List!3886)) (Broken!3818 (value!25418 List!3886)) (True!1527) (RightBrace!763) (RightBracket!763) (Colon!763) (Null!763) (Comma!763) (LeftBracket!763) (False!1527) (LeftBrace!763) (ImaginaryLiteralValue!763 (text!5787 List!3886)) (StringLiteralValue!2289 (value!25419 List!3886)) (EOFValue!763 (value!25420 List!3886)) (IdentValue!763 (value!25421 List!3886)) (DelimiterValue!1527 (value!25422 List!3886)) (DedentValue!763 (value!25423 List!3886)) (NewLineValue!763 (value!25424 List!3886)) (IntegerValue!2289 (value!25425 (_ BitVec 32)) (text!5788 List!3886)) (IntegerValue!2290 (value!25426 Int) (text!5789 List!3886)) (Times!763) (Or!763) (Equal!763) (Minus!763) (Broken!3819 (value!25427 List!3886)) (And!763) (Div!763) (LessEqual!763) (Mod!763) (Concat!1728) (Not!763) (Plus!763) (SpaceValue!763 (value!25428 List!3886)) (IntegerValue!2291 (value!25429 Int) (text!5790 List!3886)) (StringLiteralValue!2290 (text!5791 List!3886)) (FloatLiteralValue!1527 (text!5792 List!3886)) (BytesLiteralValue!763 (value!25430 List!3886)) (CommentValue!1527 (value!25431 List!3886)) (StringLiteralValue!2291 (value!25432 List!3886)) (ErrorTokenValue!763 (msg!824 List!3886)) )
))
(declare-datatypes ((C!2852 0))(
  ( (C!2853 (val!1312 Int)) )
))
(declare-datatypes ((List!3887 0))(
  ( (Nil!3877) (Cons!3877 (h!9274 C!2852) (t!39185 List!3887)) )
))
(declare-datatypes ((IArray!2609 0))(
  ( (IArray!2610 (innerList!1362 List!3887)) )
))
(declare-datatypes ((Conc!1304 0))(
  ( (Node!1304 (left!3197 Conc!1304) (right!3527 Conc!1304) (csize!2838 Int) (cheight!1515 Int)) (Leaf!2014 (xs!3903 IArray!2609) (csize!2839 Int)) (Empty!1304) )
))
(declare-datatypes ((BalanceConc!2616 0))(
  ( (BalanceConc!2617 (c!52522 Conc!1304)) )
))
(declare-datatypes ((TokenValueInjection!1298 0))(
  ( (TokenValueInjection!1299 (toValue!1484 Int) (toChars!1343 Int)) )
))
(declare-datatypes ((String!4895 0))(
  ( (String!4896 (value!25433 String)) )
))
(declare-datatypes ((Regex!965 0))(
  ( (ElementMatch!965 (c!52523 C!2852)) (Concat!1729 (regOne!2442 Regex!965) (regTwo!2442 Regex!965)) (EmptyExpr!965) (Star!965 (reg!1294 Regex!965)) (EmptyLang!965) (Union!965 (regOne!2443 Regex!965) (regTwo!2443 Regex!965)) )
))
(declare-datatypes ((Rule!1282 0))(
  ( (Rule!1283 (regex!741 Regex!965) (tag!951 String!4895) (isSeparator!741 Bool) (transformation!741 TokenValueInjection!1298)) )
))
(declare-datatypes ((List!3888 0))(
  ( (Nil!3878) (Cons!3878 (h!9275 Rule!1282) (t!39186 List!3888)) )
))
(declare-fun rules!1920 () List!3888)

(get-info :version)

(assert (= (and b!277931 ((_ is Cons!3878) rules!1920)) b!277978))

(declare-fun order!3023 () Int)

(declare-fun order!3021 () Int)

(declare-fun dynLambda!2021 (Int Int) Int)

(declare-fun dynLambda!2022 (Int Int) Int)

(assert (=> b!277980 (< (dynLambda!2021 order!3021 (toValue!1484 (transformation!741 (h!9275 rules!1920)))) (dynLambda!2022 order!3023 lambda!9468))))

(declare-fun order!3025 () Int)

(declare-fun dynLambda!2023 (Int Int) Int)

(assert (=> b!277980 (< (dynLambda!2023 order!3025 (toChars!1343 (transformation!741 (h!9275 rules!1920)))) (dynLambda!2022 order!3023 lambda!9468))))

(assert (=> b!277931 true))

(declare-fun e!172886 () Bool)

(declare-datatypes ((Token!1226 0))(
  ( (Token!1227 (value!25434 TokenValue!763) (rule!1328 Rule!1282) (size!3098 Int) (originalCharacters!784 List!3887)) )
))
(declare-fun separatorToken!170 () Token!1226)

(declare-fun e!172872 () Bool)

(declare-fun b!277922 () Bool)

(declare-fun tp!103944 () Bool)

(declare-fun inv!21 (TokenValue!763) Bool)

(assert (=> b!277922 (= e!172872 (and (inv!21 (value!25434 separatorToken!170)) e!172886 tp!103944))))

(declare-fun b!277923 () Bool)

(declare-fun e!172882 () Bool)

(declare-datatypes ((List!3889 0))(
  ( (Nil!3879) (Cons!3879 (h!9276 Token!1226) (t!39187 List!3889)) )
))
(declare-fun tokens!465 () List!3889)

(declare-fun lt!115660 () List!3887)

(declare-fun matchR!287 (Regex!965 List!3887) Bool)

(assert (=> b!277923 (= e!172882 (matchR!287 (regex!741 (rule!1328 (h!9276 tokens!465))) lt!115660))))

(declare-fun b!277924 () Bool)

(declare-fun res!127000 () Bool)

(declare-fun e!172854 () Bool)

(assert (=> b!277924 (=> (not res!127000) (not e!172854))))

(assert (=> b!277924 (= res!127000 (isSeparator!741 (rule!1328 separatorToken!170)))))

(declare-fun b!277925 () Bool)

(declare-fun e!172860 () Bool)

(declare-fun e!172863 () Bool)

(declare-fun tp!103943 () Bool)

(assert (=> b!277925 (= e!172860 (and e!172863 tp!103943))))

(declare-fun b!277926 () Bool)

(declare-fun e!172866 () Bool)

(declare-fun e!172857 () Bool)

(assert (=> b!277926 (= e!172866 e!172857)))

(declare-fun res!127011 () Bool)

(assert (=> b!277926 (=> res!127011 e!172857)))

(declare-fun lt!115678 () List!3887)

(declare-fun lt!115665 () List!3887)

(assert (=> b!277926 (= res!127011 (or (not (= lt!115665 lt!115678)) (not (= lt!115678 lt!115660)) (not (= lt!115665 lt!115660))))))

(declare-datatypes ((LexerInterface!627 0))(
  ( (LexerInterfaceExt!624 (__x!3014 Int)) (Lexer!625) )
))
(declare-fun thiss!17480 () LexerInterface!627)

(declare-fun printList!303 (LexerInterface!627 List!3889) List!3887)

(assert (=> b!277926 (= lt!115678 (printList!303 thiss!17480 (Cons!3879 (h!9276 tokens!465) Nil!3879)))))

(declare-fun lt!115668 () BalanceConc!2616)

(declare-fun list!1601 (BalanceConc!2616) List!3887)

(assert (=> b!277926 (= lt!115665 (list!1601 lt!115668))))

(declare-datatypes ((IArray!2611 0))(
  ( (IArray!2612 (innerList!1363 List!3889)) )
))
(declare-datatypes ((Conc!1305 0))(
  ( (Node!1305 (left!3198 Conc!1305) (right!3528 Conc!1305) (csize!2840 Int) (cheight!1516 Int)) (Leaf!2015 (xs!3904 IArray!2611) (csize!2841 Int)) (Empty!1305) )
))
(declare-datatypes ((BalanceConc!2618 0))(
  ( (BalanceConc!2619 (c!52524 Conc!1305)) )
))
(declare-fun lt!115669 () BalanceConc!2618)

(declare-fun printTailRec!315 (LexerInterface!627 BalanceConc!2618 Int BalanceConc!2616) BalanceConc!2616)

(assert (=> b!277926 (= lt!115668 (printTailRec!315 thiss!17480 lt!115669 0 (BalanceConc!2617 Empty!1304)))))

(declare-fun print!352 (LexerInterface!627 BalanceConc!2618) BalanceConc!2616)

(assert (=> b!277926 (= lt!115668 (print!352 thiss!17480 lt!115669))))

(declare-fun singletonSeq!287 (Token!1226) BalanceConc!2618)

(assert (=> b!277926 (= lt!115669 (singletonSeq!287 (h!9276 tokens!465)))))

(declare-fun b!277927 () Bool)

(declare-fun res!126995 () Bool)

(assert (=> b!277927 (=> (not res!126995) (not e!172882))))

(declare-datatypes ((tuple2!4382 0))(
  ( (tuple2!4383 (_1!2407 Token!1226) (_2!2407 List!3887)) )
))
(declare-fun lt!115671 () tuple2!4382)

(declare-fun isEmpty!2514 (List!3887) Bool)

(assert (=> b!277927 (= res!126995 (isEmpty!2514 (_2!2407 lt!115671)))))

(declare-fun b!277928 () Bool)

(declare-fun res!127003 () Bool)

(declare-fun e!172864 () Bool)

(assert (=> b!277928 (=> (not res!127003) (not e!172864))))

(declare-fun rulesInvariant!593 (LexerInterface!627 List!3888) Bool)

(assert (=> b!277928 (= res!127003 (rulesInvariant!593 thiss!17480 rules!1920))))

(declare-fun b!277929 () Bool)

(declare-datatypes ((Unit!5092 0))(
  ( (Unit!5093) )
))
(declare-fun e!172868 () Unit!5092)

(declare-fun Unit!5094 () Unit!5092)

(assert (=> b!277929 (= e!172868 Unit!5094)))

(declare-fun lt!115659 () Unit!5092)

(declare-fun lt!115697 () C!2852)

(declare-fun lt!115679 () Token!1226)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!64 (LexerInterface!627 List!3888 List!3888 Rule!1282 Rule!1282 C!2852) Unit!5092)

(assert (=> b!277929 (= lt!115659 (lemmaSepRuleNotContainsCharContainedInANonSepRule!64 thiss!17480 rules!1920 rules!1920 (rule!1328 lt!115679) (rule!1328 separatorToken!170) lt!115697))))

(assert (=> b!277929 false))

(declare-fun res!126986 () Bool)

(assert (=> start!30082 (=> (not res!126986) (not e!172864))))

(assert (=> start!30082 (= res!126986 ((_ is Lexer!625) thiss!17480))))

(assert (=> start!30082 e!172864))

(assert (=> start!30082 true))

(assert (=> start!30082 e!172860))

(declare-fun inv!4799 (Token!1226) Bool)

(assert (=> start!30082 (and (inv!4799 separatorToken!170) e!172872)))

(declare-fun e!172858 () Bool)

(assert (=> start!30082 e!172858))

(declare-fun tp!103942 () Bool)

(declare-fun b!277930 () Bool)

(declare-fun e!172875 () Bool)

(declare-fun inv!4796 (String!4895) Bool)

(declare-fun inv!4800 (TokenValueInjection!1298) Bool)

(assert (=> b!277930 (= e!172863 (and tp!103942 (inv!4796 (tag!951 (h!9275 rules!1920))) (inv!4800 (transformation!741 (h!9275 rules!1920))) e!172875))))

(declare-fun e!172874 () Bool)

(assert (=> b!277931 (= e!172857 e!172874)))

(declare-fun res!126991 () Bool)

(assert (=> b!277931 (=> res!126991 e!172874)))

(declare-datatypes ((tuple2!4384 0))(
  ( (tuple2!4385 (_1!2408 Token!1226) (_2!2408 BalanceConc!2616)) )
))
(declare-datatypes ((Option!837 0))(
  ( (None!836) (Some!836 (v!14737 tuple2!4384)) )
))
(declare-fun isDefined!680 (Option!837) Bool)

(declare-fun maxPrefixZipperSequence!308 (LexerInterface!627 List!3888 BalanceConc!2616) Option!837)

(declare-fun seqFromList!849 (List!3887) BalanceConc!2616)

(assert (=> b!277931 (= res!126991 (not (isDefined!680 (maxPrefixZipperSequence!308 thiss!17480 rules!1920 (seqFromList!849 (originalCharacters!784 (h!9276 tokens!465)))))))))

(declare-fun lt!115681 () Unit!5092)

(declare-fun forallContained!296 (List!3889 Int Token!1226) Unit!5092)

(assert (=> b!277931 (= lt!115681 (forallContained!296 tokens!465 lambda!9468 (h!9276 tokens!465)))))

(assert (=> b!277931 (= lt!115660 (originalCharacters!784 (h!9276 tokens!465)))))

(declare-fun res!126993 () Bool)

(assert (=> b!277932 (=> (not res!126993) (not e!172854))))

(declare-fun forall!988 (List!3889 Int) Bool)

(assert (=> b!277932 (= res!126993 (forall!988 tokens!465 lambda!9467))))

(declare-fun b!277933 () Bool)

(declare-fun e!172865 () Bool)

(declare-datatypes ((Option!838 0))(
  ( (None!837) (Some!837 (v!14738 tuple2!4382)) )
))
(declare-fun lt!115685 () Option!838)

(declare-fun get!1297 (Option!838) tuple2!4382)

(declare-fun head!909 (List!3889) Token!1226)

(assert (=> b!277933 (= e!172865 (= (_1!2407 (get!1297 lt!115685)) (head!909 tokens!465)))))

(declare-fun b!277934 () Bool)

(declare-fun e!172869 () Unit!5092)

(declare-fun Unit!5095 () Unit!5092)

(assert (=> b!277934 (= e!172869 Unit!5095)))

(declare-fun b!277935 () Bool)

(declare-fun Unit!5096 () Unit!5092)

(assert (=> b!277935 (= e!172869 Unit!5096)))

(declare-fun lt!115676 () C!2852)

(declare-fun lt!115673 () Unit!5092)

(declare-fun lt!115695 () List!3887)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!70 (Regex!965 List!3887 C!2852) Unit!5092)

(assert (=> b!277935 (= lt!115673 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!70 (regex!741 (rule!1328 lt!115679)) lt!115695 lt!115676))))

(declare-fun res!127012 () Bool)

(assert (=> b!277935 (= res!127012 (not (matchR!287 (regex!741 (rule!1328 lt!115679)) lt!115695)))))

(declare-fun e!172867 () Bool)

(assert (=> b!277935 (=> (not res!127012) (not e!172867))))

(assert (=> b!277935 e!172867))

(declare-fun b!277936 () Bool)

(declare-fun e!172852 () Bool)

(declare-fun e!172884 () Bool)

(assert (=> b!277936 (= e!172852 e!172884)))

(declare-fun res!126996 () Bool)

(assert (=> b!277936 (=> (not res!126996) (not e!172884))))

(declare-fun lt!115677 () Rule!1282)

(declare-fun lt!115655 () List!3887)

(assert (=> b!277936 (= res!126996 (matchR!287 (regex!741 lt!115677) lt!115655))))

(declare-datatypes ((Option!839 0))(
  ( (None!838) (Some!838 (v!14739 Rule!1282)) )
))
(declare-fun lt!115674 () Option!839)

(declare-fun get!1298 (Option!839) Rule!1282)

(assert (=> b!277936 (= lt!115677 (get!1298 lt!115674))))

(declare-fun e!172878 () Bool)

(declare-fun tp!103938 () Bool)

(declare-fun e!172883 () Bool)

(declare-fun b!277937 () Bool)

(assert (=> b!277937 (= e!172878 (and (inv!21 (value!25434 (h!9276 tokens!465))) e!172883 tp!103938))))

(declare-fun e!172873 () Bool)

(assert (=> b!277938 (= e!172873 (and tp!103935 tp!103939))))

(declare-fun b!277939 () Bool)

(declare-fun e!172851 () Bool)

(assert (=> b!277939 (= e!172874 e!172851)))

(declare-fun res!126998 () Bool)

(assert (=> b!277939 (=> res!126998 e!172851)))

(declare-fun lt!115692 () Bool)

(assert (=> b!277939 (= res!126998 (not lt!115692))))

(assert (=> b!277939 e!172882))

(declare-fun res!126999 () Bool)

(assert (=> b!277939 (=> (not res!126999) (not e!172882))))

(assert (=> b!277939 (= res!126999 (= (_1!2407 lt!115671) (h!9276 tokens!465)))))

(declare-fun lt!115690 () Option!838)

(assert (=> b!277939 (= lt!115671 (get!1297 lt!115690))))

(declare-fun isDefined!681 (Option!838) Bool)

(assert (=> b!277939 (isDefined!681 lt!115690)))

(declare-fun maxPrefix!345 (LexerInterface!627 List!3888 List!3887) Option!838)

(assert (=> b!277939 (= lt!115690 (maxPrefix!345 thiss!17480 rules!1920 lt!115660))))

(declare-fun b!277940 () Bool)

(declare-fun res!127006 () Bool)

(declare-fun e!172862 () Bool)

(assert (=> b!277940 (=> (not res!127006) (not e!172862))))

(declare-datatypes ((tuple2!4386 0))(
  ( (tuple2!4387 (_1!2409 BalanceConc!2618) (_2!2409 BalanceConc!2616)) )
))
(declare-fun lt!115653 () tuple2!4386)

(declare-fun apply!804 (BalanceConc!2618 Int) Token!1226)

(assert (=> b!277940 (= res!127006 (= (apply!804 (_1!2409 lt!115653) 0) lt!115679))))

(declare-fun b!277941 () Bool)

(declare-fun res!127016 () Bool)

(assert (=> b!277941 (=> res!127016 e!172857)))

(declare-fun rulesProduceIndividualToken!376 (LexerInterface!627 List!3888 Token!1226) Bool)

(assert (=> b!277941 (= res!127016 (not (rulesProduceIndividualToken!376 thiss!17480 rules!1920 (h!9276 tokens!465))))))

(declare-fun b!277942 () Bool)

(declare-fun tp!103940 () Bool)

(declare-fun e!172855 () Bool)

(assert (=> b!277942 (= e!172883 (and tp!103940 (inv!4796 (tag!951 (rule!1328 (h!9276 tokens!465)))) (inv!4800 (transformation!741 (rule!1328 (h!9276 tokens!465)))) e!172855))))

(declare-fun b!277943 () Bool)

(declare-fun e!172853 () Bool)

(declare-fun e!172880 () Bool)

(assert (=> b!277943 (= e!172853 (not e!172880))))

(declare-fun res!126994 () Bool)

(assert (=> b!277943 (=> res!126994 e!172880)))

(declare-fun lt!115688 () List!3887)

(declare-fun printWithSeparatorTokenWhenNeededRec!302 (LexerInterface!627 List!3888 BalanceConc!2618 Token!1226 Int) BalanceConc!2616)

(declare-fun seqFromList!850 (List!3889) BalanceConc!2618)

(assert (=> b!277943 (= res!126994 (not (= lt!115688 (list!1601 (printWithSeparatorTokenWhenNeededRec!302 thiss!17480 rules!1920 (seqFromList!850 (t!39187 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!115658 () List!3887)

(declare-fun lt!115664 () List!3887)

(assert (=> b!277943 (= lt!115658 lt!115664)))

(declare-fun lt!115662 () List!3887)

(declare-fun ++!1026 (List!3887 List!3887) List!3887)

(assert (=> b!277943 (= lt!115664 (++!1026 lt!115660 lt!115662))))

(assert (=> b!277943 (= lt!115658 (++!1026 (++!1026 lt!115660 lt!115655) lt!115688))))

(declare-fun lt!115666 () Unit!5092)

(declare-fun lemmaConcatAssociativity!442 (List!3887 List!3887 List!3887) Unit!5092)

(assert (=> b!277943 (= lt!115666 (lemmaConcatAssociativity!442 lt!115660 lt!115655 lt!115688))))

(declare-fun charsOf!386 (Token!1226) BalanceConc!2616)

(assert (=> b!277943 (= lt!115660 (list!1601 (charsOf!386 (h!9276 tokens!465))))))

(assert (=> b!277943 (= lt!115662 (++!1026 lt!115655 lt!115688))))

(declare-fun printWithSeparatorTokenWhenNeededList!310 (LexerInterface!627 List!3888 List!3889 Token!1226) List!3887)

(assert (=> b!277943 (= lt!115688 (printWithSeparatorTokenWhenNeededList!310 thiss!17480 rules!1920 (t!39187 tokens!465) separatorToken!170))))

(assert (=> b!277943 (= lt!115655 (list!1601 (charsOf!386 separatorToken!170)))))

(declare-fun b!277944 () Bool)

(assert (=> b!277944 (= e!172854 e!172853)))

(declare-fun res!126989 () Bool)

(assert (=> b!277944 (=> (not res!126989) (not e!172853))))

(declare-fun lt!115694 () List!3887)

(declare-fun lt!115675 () List!3887)

(assert (=> b!277944 (= res!126989 (= lt!115694 lt!115675))))

(declare-fun lt!115661 () BalanceConc!2618)

(assert (=> b!277944 (= lt!115675 (list!1601 (printWithSeparatorTokenWhenNeededRec!302 thiss!17480 rules!1920 lt!115661 separatorToken!170 0)))))

(assert (=> b!277944 (= lt!115694 (printWithSeparatorTokenWhenNeededList!310 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!277945 () Bool)

(declare-fun e!172885 () Bool)

(assert (=> b!277945 (= e!172885 (not (= lt!115694 (++!1026 lt!115660 lt!115688))))))

(declare-fun b!277946 () Bool)

(declare-fun tp!103936 () Bool)

(assert (=> b!277946 (= e!172858 (and (inv!4799 (h!9276 tokens!465)) e!172878 tp!103936))))

(declare-fun b!277947 () Bool)

(declare-fun e!172856 () Unit!5092)

(declare-fun Unit!5097 () Unit!5092)

(assert (=> b!277947 (= e!172856 Unit!5097)))

(declare-fun b!277948 () Bool)

(declare-fun e!172887 () Bool)

(assert (=> b!277948 (= e!172887 e!172865)))

(declare-fun res!127008 () Bool)

(assert (=> b!277948 (=> (not res!127008) (not e!172865))))

(assert (=> b!277948 (= res!127008 (isDefined!681 lt!115685))))

(assert (=> b!277948 (= lt!115685 (maxPrefix!345 thiss!17480 rules!1920 lt!115694))))

(declare-fun tp!103945 () Bool)

(declare-fun b!277949 () Bool)

(assert (=> b!277949 (= e!172886 (and tp!103945 (inv!4796 (tag!951 (rule!1328 separatorToken!170))) (inv!4800 (transformation!741 (rule!1328 separatorToken!170))) e!172873))))

(declare-fun b!277950 () Bool)

(declare-fun e!172861 () Bool)

(declare-fun lt!115656 () tuple2!4386)

(declare-fun isEmpty!2515 (BalanceConc!2616) Bool)

(assert (=> b!277950 (= e!172861 (isEmpty!2515 (_2!2409 lt!115656)))))

(assert (=> b!277951 (= e!172875 (and tp!103937 tp!103946))))

(declare-fun b!277952 () Bool)

(declare-fun e!172859 () Bool)

(declare-fun e!172871 () Bool)

(assert (=> b!277952 (= e!172859 e!172871)))

(declare-fun res!127015 () Bool)

(assert (=> b!277952 (=> (not res!127015) (not e!172871))))

(declare-fun lt!115652 () Rule!1282)

(assert (=> b!277952 (= res!127015 (matchR!287 (regex!741 lt!115652) lt!115695))))

(declare-fun lt!115667 () Option!839)

(assert (=> b!277952 (= lt!115652 (get!1298 lt!115667))))

(declare-fun b!277953 () Bool)

(assert (=> b!277953 (= e!172880 e!172866)))

(declare-fun res!127009 () Bool)

(assert (=> b!277953 (=> res!127009 e!172866)))

(assert (=> b!277953 (= res!127009 e!172885)))

(declare-fun res!127001 () Bool)

(assert (=> b!277953 (=> (not res!127001) (not e!172885))))

(assert (=> b!277953 (= res!127001 (not lt!115692))))

(assert (=> b!277953 (= lt!115692 (= lt!115694 lt!115664))))

(declare-fun b!277954 () Bool)

(declare-fun res!126988 () Bool)

(assert (=> b!277954 (=> (not res!126988) (not e!172854))))

(declare-fun sepAndNonSepRulesDisjointChars!330 (List!3888 List!3888) Bool)

(assert (=> b!277954 (= res!126988 (sepAndNonSepRulesDisjointChars!330 rules!1920 rules!1920))))

(declare-fun b!277955 () Bool)

(declare-fun res!127004 () Bool)

(assert (=> b!277955 (=> (not res!127004) (not e!172861))))

(assert (=> b!277955 (= res!127004 (= (apply!804 (_1!2409 lt!115656) 0) separatorToken!170))))

(declare-fun b!277956 () Bool)

(declare-fun res!127014 () Bool)

(assert (=> b!277956 (=> res!127014 e!172857)))

(declare-fun isEmpty!2516 (BalanceConc!2618) Bool)

(declare-fun lex!419 (LexerInterface!627 List!3888 BalanceConc!2616) tuple2!4386)

(assert (=> b!277956 (= res!127014 (isEmpty!2516 (_1!2409 (lex!419 thiss!17480 rules!1920 (seqFromList!849 lt!115660)))))))

(declare-fun b!277957 () Bool)

(declare-fun res!127005 () Bool)

(assert (=> b!277957 (=> (not res!127005) (not e!172864))))

(declare-fun isEmpty!2517 (List!3888) Bool)

(assert (=> b!277957 (= res!127005 (not (isEmpty!2517 rules!1920)))))

(declare-fun b!277958 () Bool)

(assert (=> b!277958 (= e!172884 (= (rule!1328 separatorToken!170) lt!115677))))

(declare-fun b!277959 () Bool)

(declare-fun Unit!5098 () Unit!5092)

(assert (=> b!277959 (= e!172856 Unit!5098)))

(assert (=> b!277959 false))

(declare-fun b!277960 () Bool)

(declare-fun res!126987 () Bool)

(assert (=> b!277960 (=> (not res!126987) (not e!172853))))

(assert (=> b!277960 (= res!126987 (= (list!1601 (seqFromList!849 lt!115694)) lt!115675))))

(declare-fun b!277961 () Bool)

(assert (=> b!277961 (= e!172864 e!172854)))

(declare-fun res!127010 () Bool)

(assert (=> b!277961 (=> (not res!127010) (not e!172854))))

(declare-fun rulesProduceEachTokenIndividually!419 (LexerInterface!627 List!3888 BalanceConc!2618) Bool)

(assert (=> b!277961 (= res!127010 (rulesProduceEachTokenIndividually!419 thiss!17480 rules!1920 lt!115661))))

(assert (=> b!277961 (= lt!115661 (seqFromList!850 tokens!465))))

(declare-fun b!277962 () Bool)

(assert (=> b!277962 (= e!172871 (= (rule!1328 lt!115679) lt!115652))))

(declare-fun b!277963 () Bool)

(assert (=> b!277963 (= e!172851 true)))

(declare-fun lt!115687 () Unit!5092)

(assert (=> b!277963 (= lt!115687 e!172868)))

(declare-fun c!52521 () Bool)

(declare-fun contains!745 (List!3887 C!2852) Bool)

(declare-fun usedCharacters!78 (Regex!965) List!3887)

(assert (=> b!277963 (= c!52521 (contains!745 (usedCharacters!78 (regex!741 (rule!1328 separatorToken!170))) lt!115697))))

(declare-fun head!910 (List!3887) C!2852)

(assert (=> b!277963 (= lt!115697 (head!910 lt!115688))))

(declare-fun lt!115682 () Unit!5092)

(assert (=> b!277963 (= lt!115682 e!172869)))

(declare-fun c!52519 () Bool)

(assert (=> b!277963 (= c!52519 (not (contains!745 (usedCharacters!78 (regex!741 (rule!1328 lt!115679))) lt!115676)))))

(assert (=> b!277963 (= lt!115676 (head!910 lt!115695))))

(assert (=> b!277963 e!172859))

(declare-fun res!126992 () Bool)

(assert (=> b!277963 (=> (not res!126992) (not e!172859))))

(declare-fun isDefined!682 (Option!839) Bool)

(assert (=> b!277963 (= res!126992 (isDefined!682 lt!115667))))

(declare-fun getRuleFromTag!128 (LexerInterface!627 List!3888 String!4895) Option!839)

(assert (=> b!277963 (= lt!115667 (getRuleFromTag!128 thiss!17480 rules!1920 (tag!951 (rule!1328 lt!115679))))))

(declare-fun lt!115693 () Unit!5092)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!128 (LexerInterface!627 List!3888 List!3887 Token!1226) Unit!5092)

(assert (=> b!277963 (= lt!115693 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!128 thiss!17480 rules!1920 lt!115695 lt!115679))))

(assert (=> b!277963 (= lt!115695 (list!1601 (charsOf!386 lt!115679)))))

(declare-fun lt!115689 () Unit!5092)

(assert (=> b!277963 (= lt!115689 (forallContained!296 tokens!465 lambda!9468 lt!115679))))

(assert (=> b!277963 e!172862))

(declare-fun res!126985 () Bool)

(assert (=> b!277963 (=> (not res!126985) (not e!172862))))

(declare-fun size!3099 (BalanceConc!2618) Int)

(assert (=> b!277963 (= res!126985 (= (size!3099 (_1!2409 lt!115653)) 1))))

(declare-fun lt!115684 () BalanceConc!2616)

(assert (=> b!277963 (= lt!115653 (lex!419 thiss!17480 rules!1920 lt!115684))))

(declare-fun lt!115686 () BalanceConc!2618)

(assert (=> b!277963 (= lt!115684 (printTailRec!315 thiss!17480 lt!115686 0 (BalanceConc!2617 Empty!1304)))))

(assert (=> b!277963 (= lt!115684 (print!352 thiss!17480 lt!115686))))

(assert (=> b!277963 (= lt!115686 (singletonSeq!287 lt!115679))))

(assert (=> b!277963 e!172852))

(declare-fun res!126997 () Bool)

(assert (=> b!277963 (=> (not res!126997) (not e!172852))))

(assert (=> b!277963 (= res!126997 (isDefined!682 lt!115674))))

(assert (=> b!277963 (= lt!115674 (getRuleFromTag!128 thiss!17480 rules!1920 (tag!951 (rule!1328 separatorToken!170))))))

(declare-fun lt!115654 () Unit!5092)

(assert (=> b!277963 (= lt!115654 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!128 thiss!17480 rules!1920 lt!115655 separatorToken!170))))

(assert (=> b!277963 e!172861))

(declare-fun res!127007 () Bool)

(assert (=> b!277963 (=> (not res!127007) (not e!172861))))

(assert (=> b!277963 (= res!127007 (= (size!3099 (_1!2409 lt!115656)) 1))))

(declare-fun lt!115680 () BalanceConc!2616)

(assert (=> b!277963 (= lt!115656 (lex!419 thiss!17480 rules!1920 lt!115680))))

(declare-fun lt!115691 () BalanceConc!2618)

(assert (=> b!277963 (= lt!115680 (printTailRec!315 thiss!17480 lt!115691 0 (BalanceConc!2617 Empty!1304)))))

(assert (=> b!277963 (= lt!115680 (print!352 thiss!17480 lt!115691))))

(assert (=> b!277963 (= lt!115691 (singletonSeq!287 separatorToken!170))))

(assert (=> b!277963 (rulesProduceIndividualToken!376 thiss!17480 rules!1920 lt!115679)))

(declare-fun lt!115672 () Unit!5092)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!124 (LexerInterface!627 List!3888 List!3889 Token!1226) Unit!5092)

(assert (=> b!277963 (= lt!115672 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!124 thiss!17480 rules!1920 tokens!465 lt!115679))))

(assert (=> b!277963 (= lt!115679 (head!909 (t!39187 tokens!465)))))

(declare-fun lt!115683 () Unit!5092)

(assert (=> b!277963 (= lt!115683 e!172856)))

(declare-fun c!52520 () Bool)

(declare-fun isEmpty!2518 (List!3889) Bool)

(assert (=> b!277963 (= c!52520 (isEmpty!2518 (t!39187 tokens!465)))))

(declare-fun lt!115663 () Option!838)

(assert (=> b!277963 (= lt!115663 (maxPrefix!345 thiss!17480 rules!1920 lt!115662))))

(declare-fun lt!115657 () tuple2!4382)

(assert (=> b!277963 (= lt!115662 (_2!2407 lt!115657))))

(declare-fun lt!115670 () Unit!5092)

(declare-fun lemmaSamePrefixThenSameSuffix!210 (List!3887 List!3887 List!3887 List!3887 List!3887) Unit!5092)

(assert (=> b!277963 (= lt!115670 (lemmaSamePrefixThenSameSuffix!210 lt!115660 lt!115662 lt!115660 (_2!2407 lt!115657) lt!115694))))

(assert (=> b!277963 (= lt!115657 (get!1297 (maxPrefix!345 thiss!17480 rules!1920 lt!115694)))))

(declare-fun isPrefix!409 (List!3887 List!3887) Bool)

(assert (=> b!277963 (isPrefix!409 lt!115660 lt!115664)))

(declare-fun lt!115696 () Unit!5092)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!304 (List!3887 List!3887) Unit!5092)

(assert (=> b!277963 (= lt!115696 (lemmaConcatTwoListThenFirstIsPrefix!304 lt!115660 lt!115662))))

(assert (=> b!277963 e!172887))

(declare-fun res!127002 () Bool)

(assert (=> b!277963 (=> res!127002 e!172887)))

(assert (=> b!277963 (= res!127002 (isEmpty!2518 tokens!465))))

(declare-fun lt!115698 () Unit!5092)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!166 (LexerInterface!627 List!3888 List!3889 Token!1226) Unit!5092)

(assert (=> b!277963 (= lt!115698 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!166 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!277964 () Bool)

(declare-fun res!126990 () Bool)

(assert (=> b!277964 (=> (not res!126990) (not e!172854))))

(assert (=> b!277964 (= res!126990 ((_ is Cons!3879) tokens!465))))

(declare-fun b!277965 () Bool)

(assert (=> b!277965 (= e!172867 false)))

(declare-fun b!277966 () Bool)

(declare-fun res!127013 () Bool)

(assert (=> b!277966 (=> (not res!127013) (not e!172854))))

(assert (=> b!277966 (= res!127013 (rulesProduceIndividualToken!376 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!277967 (= e!172855 (and tp!103941 tp!103947))))

(declare-fun b!277968 () Bool)

(declare-fun Unit!5099 () Unit!5092)

(assert (=> b!277968 (= e!172868 Unit!5099)))

(declare-fun b!277969 () Bool)

(assert (=> b!277969 (= e!172862 (isEmpty!2515 (_2!2409 lt!115653)))))

(assert (= (and start!30082 res!126986) b!277957))

(assert (= (and b!277957 res!127005) b!277928))

(assert (= (and b!277928 res!127003) b!277961))

(assert (= (and b!277961 res!127010) b!277966))

(assert (= (and b!277966 res!127013) b!277924))

(assert (= (and b!277924 res!127000) b!277932))

(assert (= (and b!277932 res!126993) b!277954))

(assert (= (and b!277954 res!126988) b!277964))

(assert (= (and b!277964 res!126990) b!277944))

(assert (= (and b!277944 res!126989) b!277960))

(assert (= (and b!277960 res!126987) b!277943))

(assert (= (and b!277943 (not res!126994)) b!277953))

(assert (= (and b!277953 res!127001) b!277945))

(assert (= (and b!277953 (not res!127009)) b!277926))

(assert (= (and b!277926 (not res!127011)) b!277941))

(assert (= (and b!277941 (not res!127016)) b!277956))

(assert (= (and b!277956 (not res!127014)) b!277931))

(assert (= (and b!277931 (not res!126991)) b!277939))

(assert (= (and b!277939 res!126999) b!277927))

(assert (= (and b!277927 res!126995) b!277923))

(assert (= (and b!277939 (not res!126998)) b!277963))

(assert (= (and b!277963 (not res!127002)) b!277948))

(assert (= (and b!277948 res!127008) b!277933))

(assert (= (and b!277963 c!52520) b!277959))

(assert (= (and b!277963 (not c!52520)) b!277947))

(assert (= (and b!277963 res!127007) b!277955))

(assert (= (and b!277955 res!127004) b!277950))

(assert (= (and b!277963 res!126997) b!277936))

(assert (= (and b!277936 res!126996) b!277958))

(assert (= (and b!277963 res!126985) b!277940))

(assert (= (and b!277940 res!127006) b!277969))

(assert (= (and b!277963 res!126992) b!277952))

(assert (= (and b!277952 res!127015) b!277962))

(assert (= (and b!277963 c!52519) b!277935))

(assert (= (and b!277963 (not c!52519)) b!277934))

(assert (= (and b!277935 res!127012) b!277965))

(assert (= (and b!277963 c!52521) b!277929))

(assert (= (and b!277963 (not c!52521)) b!277968))

(assert (= b!277930 b!277951))

(assert (= b!277925 b!277930))

(assert (= (and start!30082 ((_ is Cons!3878) rules!1920)) b!277925))

(assert (= b!277949 b!277938))

(assert (= b!277922 b!277949))

(assert (= start!30082 b!277922))

(assert (= b!277942 b!277967))

(assert (= b!277937 b!277942))

(assert (= b!277946 b!277937))

(assert (= (and start!30082 ((_ is Cons!3879) tokens!465)) b!277946))

(declare-fun m!354841 () Bool)

(assert (=> b!277930 m!354841))

(declare-fun m!354843 () Bool)

(assert (=> b!277930 m!354843))

(declare-fun m!354845 () Bool)

(assert (=> b!277961 m!354845))

(declare-fun m!354847 () Bool)

(assert (=> b!277961 m!354847))

(declare-fun m!354849 () Bool)

(assert (=> b!277950 m!354849))

(declare-fun m!354851 () Bool)

(assert (=> b!277954 m!354851))

(declare-fun m!354853 () Bool)

(assert (=> b!277942 m!354853))

(declare-fun m!354855 () Bool)

(assert (=> b!277942 m!354855))

(declare-fun m!354857 () Bool)

(assert (=> b!277966 m!354857))

(declare-fun m!354859 () Bool)

(assert (=> b!277944 m!354859))

(assert (=> b!277944 m!354859))

(declare-fun m!354861 () Bool)

(assert (=> b!277944 m!354861))

(declare-fun m!354863 () Bool)

(assert (=> b!277944 m!354863))

(declare-fun m!354865 () Bool)

(assert (=> b!277937 m!354865))

(declare-fun m!354867 () Bool)

(assert (=> b!277941 m!354867))

(declare-fun m!354869 () Bool)

(assert (=> b!277922 m!354869))

(declare-fun m!354871 () Bool)

(assert (=> b!277956 m!354871))

(assert (=> b!277956 m!354871))

(declare-fun m!354873 () Bool)

(assert (=> b!277956 m!354873))

(declare-fun m!354875 () Bool)

(assert (=> b!277956 m!354875))

(declare-fun m!354877 () Bool)

(assert (=> b!277945 m!354877))

(declare-fun m!354879 () Bool)

(assert (=> b!277923 m!354879))

(declare-fun m!354881 () Bool)

(assert (=> b!277929 m!354881))

(declare-fun m!354883 () Bool)

(assert (=> b!277926 m!354883))

(declare-fun m!354885 () Bool)

(assert (=> b!277926 m!354885))

(declare-fun m!354887 () Bool)

(assert (=> b!277926 m!354887))

(declare-fun m!354889 () Bool)

(assert (=> b!277926 m!354889))

(declare-fun m!354891 () Bool)

(assert (=> b!277926 m!354891))

(declare-fun m!354893 () Bool)

(assert (=> b!277946 m!354893))

(declare-fun m!354895 () Bool)

(assert (=> b!277969 m!354895))

(declare-fun m!354897 () Bool)

(assert (=> b!277932 m!354897))

(declare-fun m!354899 () Bool)

(assert (=> b!277957 m!354899))

(declare-fun m!354901 () Bool)

(assert (=> b!277939 m!354901))

(declare-fun m!354903 () Bool)

(assert (=> b!277939 m!354903))

(declare-fun m!354905 () Bool)

(assert (=> b!277939 m!354905))

(declare-fun m!354907 () Bool)

(assert (=> b!277948 m!354907))

(declare-fun m!354909 () Bool)

(assert (=> b!277948 m!354909))

(declare-fun m!354911 () Bool)

(assert (=> b!277949 m!354911))

(declare-fun m!354913 () Bool)

(assert (=> b!277949 m!354913))

(declare-fun m!354915 () Bool)

(assert (=> b!277936 m!354915))

(declare-fun m!354917 () Bool)

(assert (=> b!277936 m!354917))

(declare-fun m!354919 () Bool)

(assert (=> b!277931 m!354919))

(assert (=> b!277931 m!354919))

(declare-fun m!354921 () Bool)

(assert (=> b!277931 m!354921))

(assert (=> b!277931 m!354921))

(declare-fun m!354923 () Bool)

(assert (=> b!277931 m!354923))

(declare-fun m!354925 () Bool)

(assert (=> b!277931 m!354925))

(declare-fun m!354927 () Bool)

(assert (=> b!277928 m!354927))

(declare-fun m!354929 () Bool)

(assert (=> b!277952 m!354929))

(declare-fun m!354931 () Bool)

(assert (=> b!277952 m!354931))

(declare-fun m!354933 () Bool)

(assert (=> b!277955 m!354933))

(declare-fun m!354935 () Bool)

(assert (=> b!277960 m!354935))

(assert (=> b!277960 m!354935))

(declare-fun m!354937 () Bool)

(assert (=> b!277960 m!354937))

(declare-fun m!354939 () Bool)

(assert (=> b!277935 m!354939))

(declare-fun m!354941 () Bool)

(assert (=> b!277935 m!354941))

(declare-fun m!354943 () Bool)

(assert (=> b!277963 m!354943))

(declare-fun m!354945 () Bool)

(assert (=> b!277963 m!354945))

(declare-fun m!354947 () Bool)

(assert (=> b!277963 m!354947))

(declare-fun m!354949 () Bool)

(assert (=> b!277963 m!354949))

(declare-fun m!354951 () Bool)

(assert (=> b!277963 m!354951))

(declare-fun m!354953 () Bool)

(assert (=> b!277963 m!354953))

(declare-fun m!354955 () Bool)

(assert (=> b!277963 m!354955))

(declare-fun m!354957 () Bool)

(assert (=> b!277963 m!354957))

(declare-fun m!354959 () Bool)

(assert (=> b!277963 m!354959))

(declare-fun m!354961 () Bool)

(assert (=> b!277963 m!354961))

(declare-fun m!354963 () Bool)

(assert (=> b!277963 m!354963))

(declare-fun m!354965 () Bool)

(assert (=> b!277963 m!354965))

(declare-fun m!354967 () Bool)

(assert (=> b!277963 m!354967))

(declare-fun m!354969 () Bool)

(assert (=> b!277963 m!354969))

(declare-fun m!354971 () Bool)

(assert (=> b!277963 m!354971))

(declare-fun m!354973 () Bool)

(assert (=> b!277963 m!354973))

(declare-fun m!354975 () Bool)

(assert (=> b!277963 m!354975))

(declare-fun m!354977 () Bool)

(assert (=> b!277963 m!354977))

(declare-fun m!354979 () Bool)

(assert (=> b!277963 m!354979))

(declare-fun m!354981 () Bool)

(assert (=> b!277963 m!354981))

(declare-fun m!354983 () Bool)

(assert (=> b!277963 m!354983))

(declare-fun m!354985 () Bool)

(assert (=> b!277963 m!354985))

(assert (=> b!277963 m!354909))

(declare-fun m!354987 () Bool)

(assert (=> b!277963 m!354987))

(assert (=> b!277963 m!354909))

(declare-fun m!354989 () Bool)

(assert (=> b!277963 m!354989))

(declare-fun m!354991 () Bool)

(assert (=> b!277963 m!354991))

(declare-fun m!354993 () Bool)

(assert (=> b!277963 m!354993))

(declare-fun m!354995 () Bool)

(assert (=> b!277963 m!354995))

(assert (=> b!277963 m!354965))

(declare-fun m!354997 () Bool)

(assert (=> b!277963 m!354997))

(declare-fun m!354999 () Bool)

(assert (=> b!277963 m!354999))

(assert (=> b!277963 m!354973))

(declare-fun m!355001 () Bool)

(assert (=> b!277963 m!355001))

(declare-fun m!355003 () Bool)

(assert (=> b!277963 m!355003))

(assert (=> b!277963 m!354977))

(declare-fun m!355005 () Bool)

(assert (=> b!277963 m!355005))

(declare-fun m!355007 () Bool)

(assert (=> b!277963 m!355007))

(declare-fun m!355009 () Bool)

(assert (=> b!277963 m!355009))

(declare-fun m!355011 () Bool)

(assert (=> b!277963 m!355011))

(declare-fun m!355013 () Bool)

(assert (=> b!277963 m!355013))

(declare-fun m!355015 () Bool)

(assert (=> start!30082 m!355015))

(declare-fun m!355017 () Bool)

(assert (=> b!277943 m!355017))

(declare-fun m!355019 () Bool)

(assert (=> b!277943 m!355019))

(declare-fun m!355021 () Bool)

(assert (=> b!277943 m!355021))

(assert (=> b!277943 m!355019))

(declare-fun m!355023 () Bool)

(assert (=> b!277943 m!355023))

(declare-fun m!355025 () Bool)

(assert (=> b!277943 m!355025))

(assert (=> b!277943 m!355023))

(declare-fun m!355027 () Bool)

(assert (=> b!277943 m!355027))

(declare-fun m!355029 () Bool)

(assert (=> b!277943 m!355029))

(declare-fun m!355031 () Bool)

(assert (=> b!277943 m!355031))

(declare-fun m!355033 () Bool)

(assert (=> b!277943 m!355033))

(assert (=> b!277943 m!355027))

(declare-fun m!355035 () Bool)

(assert (=> b!277943 m!355035))

(declare-fun m!355037 () Bool)

(assert (=> b!277943 m!355037))

(declare-fun m!355039 () Bool)

(assert (=> b!277943 m!355039))

(declare-fun m!355041 () Bool)

(assert (=> b!277943 m!355041))

(assert (=> b!277943 m!355033))

(assert (=> b!277943 m!355037))

(declare-fun m!355043 () Bool)

(assert (=> b!277927 m!355043))

(declare-fun m!355045 () Bool)

(assert (=> b!277940 m!355045))

(declare-fun m!355047 () Bool)

(assert (=> b!277933 m!355047))

(declare-fun m!355049 () Bool)

(assert (=> b!277933 m!355049))

(check-sat (not b!277928) (not b!277948) (not b!277943) (not b!277925) (not b!277927) (not b!277946) (not b!277961) (not start!30082) (not b!277922) (not b_next!10267) (not b!277940) b_and!22317 (not b!277944) (not b!277945) b_and!22309 (not b!277966) (not b!277957) (not b!277969) (not b_next!10265) b_and!22319 (not b!277931) (not b!277930) (not b!277939) (not b!277950) (not b!277935) b_and!22311 (not b!277923) (not b!277926) (not b!277932) (not b!277978) (not b!277942) (not b!277960) (not b!277963) (not b_next!10273) b_and!22315 (not b!277954) (not b!277941) (not b!277933) (not b!277952) (not b!277949) (not b_next!10271) (not b!277956) (not b!277955) (not b!277929) (not b!277936) b_and!22313 (not b!277937) (not b_next!10275) (not b_next!10269))
(check-sat b_and!22317 b_and!22309 b_and!22311 (not b_next!10271) b_and!22313 (not b_next!10267) (not b_next!10265) b_and!22319 (not b_next!10273) b_and!22315 (not b_next!10275) (not b_next!10269))
