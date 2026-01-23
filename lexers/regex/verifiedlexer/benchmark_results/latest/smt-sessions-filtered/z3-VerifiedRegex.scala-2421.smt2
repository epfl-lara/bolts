; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126958 () Bool)

(assert start!126958)

(declare-fun b!1394967 () Bool)

(declare-fun b_free!33915 () Bool)

(declare-fun b_next!34619 () Bool)

(assert (=> b!1394967 (= b_free!33915 (not b_next!34619))))

(declare-fun tp!397777 () Bool)

(declare-fun b_and!93403 () Bool)

(assert (=> b!1394967 (= tp!397777 b_and!93403)))

(declare-fun b_free!33917 () Bool)

(declare-fun b_next!34621 () Bool)

(assert (=> b!1394967 (= b_free!33917 (not b_next!34621))))

(declare-fun tp!397782 () Bool)

(declare-fun b_and!93405 () Bool)

(assert (=> b!1394967 (= tp!397782 b_and!93405)))

(declare-fun b!1394946 () Bool)

(declare-fun b_free!33919 () Bool)

(declare-fun b_next!34623 () Bool)

(assert (=> b!1394946 (= b_free!33919 (not b_next!34623))))

(declare-fun tp!397783 () Bool)

(declare-fun b_and!93407 () Bool)

(assert (=> b!1394946 (= tp!397783 b_and!93407)))

(declare-fun b_free!33921 () Bool)

(declare-fun b_next!34625 () Bool)

(assert (=> b!1394946 (= b_free!33921 (not b_next!34625))))

(declare-fun tp!397775 () Bool)

(declare-fun b_and!93409 () Bool)

(assert (=> b!1394946 (= tp!397775 b_and!93409)))

(declare-fun b!1394952 () Bool)

(declare-fun b_free!33923 () Bool)

(declare-fun b_next!34627 () Bool)

(assert (=> b!1394952 (= b_free!33923 (not b_next!34627))))

(declare-fun tp!397776 () Bool)

(declare-fun b_and!93411 () Bool)

(assert (=> b!1394952 (= tp!397776 b_and!93411)))

(declare-fun b_free!33925 () Bool)

(declare-fun b_next!34629 () Bool)

(assert (=> b!1394952 (= b_free!33925 (not b_next!34629))))

(declare-fun tp!397786 () Bool)

(declare-fun b_and!93413 () Bool)

(assert (=> b!1394952 (= tp!397786 b_and!93413)))

(declare-fun b!1394948 () Bool)

(assert (=> b!1394948 true))

(assert (=> b!1394948 true))

(declare-fun b!1394969 () Bool)

(assert (=> b!1394969 true))

(declare-fun b!1394963 () Bool)

(assert (=> b!1394963 true))

(declare-fun bs!337824 () Bool)

(declare-fun b!1394954 () Bool)

(assert (= bs!337824 (and b!1394954 b!1394963)))

(declare-fun lambda!60585 () Int)

(declare-fun lambda!60584 () Int)

(assert (=> bs!337824 (not (= lambda!60585 lambda!60584))))

(assert (=> b!1394954 true))

(declare-fun b!1394933 () Bool)

(declare-fun res!630038 () Bool)

(declare-fun e!890786 () Bool)

(assert (=> b!1394933 (=> res!630038 e!890786)))

(declare-datatypes ((List!14218 0))(
  ( (Nil!14152) (Cons!14152 (h!19553 (_ BitVec 16)) (t!122635 List!14218)) )
))
(declare-datatypes ((TokenValue!2541 0))(
  ( (FloatLiteralValue!5082 (text!18232 List!14218)) (TokenValueExt!2540 (__x!8911 Int)) (Broken!12705 (value!79460 List!14218)) (Object!2606) (End!2541) (Def!2541) (Underscore!2541) (Match!2541) (Else!2541) (Error!2541) (Case!2541) (If!2541) (Extends!2541) (Abstract!2541) (Class!2541) (Val!2541) (DelimiterValue!5082 (del!2601 List!14218)) (KeywordValue!2547 (value!79461 List!14218)) (CommentValue!5082 (value!79462 List!14218)) (WhitespaceValue!5082 (value!79463 List!14218)) (IndentationValue!2541 (value!79464 List!14218)) (String!16940) (Int32!2541) (Broken!12706 (value!79465 List!14218)) (Boolean!2542) (Unit!20440) (OperatorValue!2544 (op!2601 List!14218)) (IdentifierValue!5082 (value!79466 List!14218)) (IdentifierValue!5083 (value!79467 List!14218)) (WhitespaceValue!5083 (value!79468 List!14218)) (True!5082) (False!5082) (Broken!12707 (value!79469 List!14218)) (Broken!12708 (value!79470 List!14218)) (True!5083) (RightBrace!2541) (RightBracket!2541) (Colon!2541) (Null!2541) (Comma!2541) (LeftBracket!2541) (False!5083) (LeftBrace!2541) (ImaginaryLiteralValue!2541 (text!18233 List!14218)) (StringLiteralValue!7623 (value!79471 List!14218)) (EOFValue!2541 (value!79472 List!14218)) (IdentValue!2541 (value!79473 List!14218)) (DelimiterValue!5083 (value!79474 List!14218)) (DedentValue!2541 (value!79475 List!14218)) (NewLineValue!2541 (value!79476 List!14218)) (IntegerValue!7623 (value!79477 (_ BitVec 32)) (text!18234 List!14218)) (IntegerValue!7624 (value!79478 Int) (text!18235 List!14218)) (Times!2541) (Or!2541) (Equal!2541) (Minus!2541) (Broken!12709 (value!79479 List!14218)) (And!2541) (Div!2541) (LessEqual!2541) (Mod!2541) (Concat!6306) (Not!2541) (Plus!2541) (SpaceValue!2541 (value!79480 List!14218)) (IntegerValue!7625 (value!79481 Int) (text!18236 List!14218)) (StringLiteralValue!7624 (text!18237 List!14218)) (FloatLiteralValue!5083 (text!18238 List!14218)) (BytesLiteralValue!2541 (value!79482 List!14218)) (CommentValue!5083 (value!79483 List!14218)) (StringLiteralValue!7625 (value!79484 List!14218)) (ErrorTokenValue!2541 (msg!2602 List!14218)) )
))
(declare-datatypes ((C!7820 0))(
  ( (C!7821 (val!4470 Int)) )
))
(declare-datatypes ((List!14219 0))(
  ( (Nil!14153) (Cons!14153 (h!19554 C!7820) (t!122636 List!14219)) )
))
(declare-datatypes ((IArray!9329 0))(
  ( (IArray!9330 (innerList!4722 List!14219)) )
))
(declare-datatypes ((Conc!4662 0))(
  ( (Node!4662 (left!12089 Conc!4662) (right!12419 Conc!4662) (csize!9554 Int) (cheight!4873 Int)) (Leaf!7084 (xs!7389 IArray!9329) (csize!9555 Int)) (Empty!4662) )
))
(declare-datatypes ((BalanceConc!9264 0))(
  ( (BalanceConc!9265 (c!229638 Conc!4662)) )
))
(declare-datatypes ((Regex!3765 0))(
  ( (ElementMatch!3765 (c!229639 C!7820)) (Concat!6307 (regOne!8042 Regex!3765) (regTwo!8042 Regex!3765)) (EmptyExpr!3765) (Star!3765 (reg!4094 Regex!3765)) (EmptyLang!3765) (Union!3765 (regOne!8043 Regex!3765) (regTwo!8043 Regex!3765)) )
))
(declare-datatypes ((String!16941 0))(
  ( (String!16942 (value!79485 String)) )
))
(declare-datatypes ((TokenValueInjection!4742 0))(
  ( (TokenValueInjection!4743 (toValue!3742 Int) (toChars!3601 Int)) )
))
(declare-datatypes ((Rule!4702 0))(
  ( (Rule!4703 (regex!2451 Regex!3765) (tag!2713 String!16941) (isSeparator!2451 Bool) (transformation!2451 TokenValueInjection!4742)) )
))
(declare-datatypes ((List!14220 0))(
  ( (Nil!14154) (Cons!14154 (h!19555 Rule!4702) (t!122637 List!14220)) )
))
(declare-fun rules!2550 () List!14220)

(declare-datatypes ((Token!4564 0))(
  ( (Token!4565 (value!79486 TokenValue!2541) (rule!4214 Rule!4702) (size!11637 Int) (originalCharacters!3313 List!14219)) )
))
(declare-fun t2!34 () Token!4564)

(declare-fun contains!2735 (List!14220 Rule!4702) Bool)

(assert (=> b!1394933 (= res!630038 (not (contains!2735 rules!2550 (rule!4214 t2!34))))))

(declare-fun e!890804 () Bool)

(declare-fun t1!34 () Token!4564)

(declare-fun b!1394934 () Bool)

(declare-fun tp!397785 () Bool)

(declare-fun e!890789 () Bool)

(declare-fun inv!21 (TokenValue!2541) Bool)

(assert (=> b!1394934 (= e!890804 (and (inv!21 (value!79486 t1!34)) e!890789 tp!397785))))

(declare-fun b!1394935 () Bool)

(declare-fun e!890802 () Bool)

(declare-fun e!890797 () Bool)

(assert (=> b!1394935 (= e!890802 e!890797)))

(declare-fun res!630058 () Bool)

(assert (=> b!1394935 (=> res!630058 e!890797)))

(declare-fun lt!464569 () Rule!4702)

(assert (=> b!1394935 (= res!630058 (or (not (isSeparator!2451 lt!464569)) (not (isSeparator!2451 (rule!4214 t1!34)))))))

(declare-fun lt!464567 () Regex!3765)

(assert (=> b!1394935 (= (regex!2451 lt!464569) lt!464567)))

(declare-fun b!1394936 () Bool)

(declare-fun res!630055 () Bool)

(declare-fun e!890795 () Bool)

(assert (=> b!1394936 (=> (not res!630055) (not e!890795))))

(assert (=> b!1394936 (= res!630055 (not (= (isSeparator!2451 (rule!4214 t1!34)) (isSeparator!2451 (rule!4214 t2!34)))))))

(declare-fun b!1394937 () Bool)

(declare-fun e!890792 () Bool)

(declare-fun e!890803 () Bool)

(assert (=> b!1394937 (= e!890792 e!890803)))

(declare-fun res!630050 () Bool)

(assert (=> b!1394937 (=> res!630050 e!890803)))

(declare-fun lambda!60582 () Int)

(declare-datatypes ((List!14221 0))(
  ( (Nil!14155) (Cons!14155 (h!19556 Regex!3765) (t!122638 List!14221)) )
))
(declare-fun contains!2736 (List!14221 Regex!3765) Bool)

(declare-fun map!3137 (List!14220 Int) List!14221)

(assert (=> b!1394937 (= res!630050 (not (contains!2736 (map!3137 rules!2550 lambda!60582) lt!464567)))))

(declare-fun lambda!60583 () Int)

(declare-fun getWitness!434 (List!14221 Int) Regex!3765)

(assert (=> b!1394937 (= lt!464567 (getWitness!434 (map!3137 rules!2550 lambda!60582) lambda!60583))))

(declare-fun b!1394938 () Bool)

(declare-datatypes ((Unit!20441 0))(
  ( (Unit!20442) )
))
(declare-fun e!890800 () Unit!20441)

(declare-fun Unit!20443 () Unit!20441)

(assert (=> b!1394938 (= e!890800 Unit!20443)))

(declare-fun lt!464556 () Unit!20441)

(declare-fun lt!464570 () List!14219)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!196 (Regex!3765 List!14219 C!7820) Unit!20441)

(declare-fun head!2561 (List!14219) C!7820)

(assert (=> b!1394938 (= lt!464556 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!196 (regex!2451 (rule!4214 t2!34)) lt!464570 (head!2561 lt!464570)))))

(assert (=> b!1394938 false))

(declare-fun b!1394939 () Bool)

(declare-fun res!630036 () Bool)

(assert (=> b!1394939 (=> (not res!630036) (not e!890795))))

(declare-datatypes ((LexerInterface!2146 0))(
  ( (LexerInterfaceExt!2143 (__x!8912 Int)) (Lexer!2144) )
))
(declare-fun thiss!19762 () LexerInterface!2146)

(declare-fun rulesInvariant!2016 (LexerInterface!2146 List!14220) Bool)

(assert (=> b!1394939 (= res!630036 (rulesInvariant!2016 thiss!19762 rules!2550))))

(declare-fun b!1394940 () Bool)

(declare-fun res!630033 () Bool)

(declare-fun e!890781 () Bool)

(assert (=> b!1394940 (=> res!630033 e!890781)))

(declare-fun lt!464553 () List!14219)

(declare-fun lt!464559 () C!7820)

(declare-fun contains!2737 (List!14219 C!7820) Bool)

(assert (=> b!1394940 (= res!630033 (not (contains!2737 lt!464553 lt!464559)))))

(declare-fun b!1394941 () Bool)

(declare-fun e!890788 () Bool)

(declare-fun e!890791 () Bool)

(declare-fun tp!397779 () Bool)

(assert (=> b!1394941 (= e!890788 (and e!890791 tp!397779))))

(declare-fun b!1394942 () Bool)

(declare-fun e!890776 () Unit!20441)

(declare-fun Unit!20444 () Unit!20441)

(assert (=> b!1394942 (= e!890776 Unit!20444)))

(declare-fun b!1394943 () Bool)

(declare-fun e!890780 () Bool)

(declare-fun e!890782 () Bool)

(assert (=> b!1394943 (= e!890780 e!890782)))

(declare-fun res!630039 () Bool)

(assert (=> b!1394943 (=> res!630039 e!890782)))

(declare-datatypes ((List!14222 0))(
  ( (Nil!14156) (Cons!14156 (h!19557 Token!4564) (t!122639 List!14222)) )
))
(declare-datatypes ((IArray!9331 0))(
  ( (IArray!9332 (innerList!4723 List!14222)) )
))
(declare-datatypes ((Conc!4663 0))(
  ( (Node!4663 (left!12090 Conc!4663) (right!12420 Conc!4663) (csize!9556 Int) (cheight!4874 Int)) (Leaf!7085 (xs!7390 IArray!9331) (csize!9557 Int)) (Empty!4663) )
))
(declare-datatypes ((BalanceConc!9266 0))(
  ( (BalanceConc!9267 (c!229640 Conc!4663)) )
))
(declare-datatypes ((tuple2!13766 0))(
  ( (tuple2!13767 (_1!7769 BalanceConc!9266) (_2!7769 BalanceConc!9264)) )
))
(declare-fun lt!464548 () tuple2!13766)

(declare-fun lt!464549 () List!14222)

(declare-fun list!5505 (BalanceConc!9266) List!14222)

(assert (=> b!1394943 (= res!630039 (not (= (list!5505 (_1!7769 lt!464548)) lt!464549)))))

(assert (=> b!1394943 (= lt!464549 (Cons!14156 t2!34 Nil!14156))))

(declare-fun lt!464560 () BalanceConc!9264)

(declare-fun lex!971 (LexerInterface!2146 List!14220 BalanceConc!9264) tuple2!13766)

(assert (=> b!1394943 (= lt!464548 (lex!971 thiss!19762 rules!2550 lt!464560))))

(declare-fun print!910 (LexerInterface!2146 BalanceConc!9266) BalanceConc!9264)

(declare-fun singletonSeq!1104 (Token!4564) BalanceConc!9266)

(assert (=> b!1394943 (= lt!464560 (print!910 thiss!19762 (singletonSeq!1104 t2!34)))))

(declare-fun b!1394944 () Bool)

(declare-fun e!890779 () Bool)

(assert (=> b!1394944 (= e!890795 e!890779)))

(declare-fun res!630040 () Bool)

(assert (=> b!1394944 (=> (not res!630040) (not e!890779))))

(declare-fun lt!464573 () BalanceConc!9264)

(declare-fun size!11638 (BalanceConc!9264) Int)

(assert (=> b!1394944 (= res!630040 (> (size!11638 lt!464573) 0))))

(declare-fun charsOf!1423 (Token!4564) BalanceConc!9264)

(assert (=> b!1394944 (= lt!464573 (charsOf!1423 t2!34))))

(declare-fun b!1394945 () Bool)

(declare-fun res!630027 () Bool)

(assert (=> b!1394945 (=> (not res!630027) (not e!890795))))

(declare-fun isEmpty!8586 (List!14220) Bool)

(assert (=> b!1394945 (= res!630027 (not (isEmpty!8586 rules!2550)))))

(declare-fun e!890787 () Bool)

(assert (=> b!1394946 (= e!890787 (and tp!397783 tp!397775))))

(declare-fun b!1394947 () Bool)

(declare-fun res!630049 () Bool)

(assert (=> b!1394947 (=> res!630049 e!890780)))

(assert (=> b!1394947 (= res!630049 (not (contains!2735 rules!2550 (rule!4214 t1!34))))))

(declare-fun e!890774 () Bool)

(declare-fun e!890790 () Bool)

(assert (=> b!1394948 (= e!890774 (not e!890790))))

(declare-fun res!630059 () Bool)

(assert (=> b!1394948 (=> res!630059 e!890790)))

(declare-fun lambda!60581 () Int)

(declare-fun Exists!915 (Int) Bool)

(assert (=> b!1394948 (= res!630059 (not (Exists!915 lambda!60581)))))

(assert (=> b!1394948 (Exists!915 lambda!60581)))

(declare-fun lt!464551 () Unit!20441)

(declare-fun lt!464552 () Regex!3765)

(declare-fun lt!464564 () List!14219)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!233 (Regex!3765 List!14219) Unit!20441)

(assert (=> b!1394948 (= lt!464551 (lemmaPrefixMatchThenExistsStringThatMatches!233 lt!464552 lt!464564))))

(declare-fun b!1394949 () Bool)

(declare-fun res!630056 () Bool)

(assert (=> b!1394949 (=> (not res!630056) (not e!890779))))

(declare-fun sepAndNonSepRulesDisjointChars!824 (List!14220 List!14220) Bool)

(assert (=> b!1394949 (= res!630056 (sepAndNonSepRulesDisjointChars!824 rules!2550 rules!2550))))

(declare-fun b!1394950 () Bool)

(declare-fun validRegex!1643 (Regex!3765) Bool)

(assert (=> b!1394950 (= e!890797 (validRegex!1643 lt!464567))))

(declare-fun usedCharacters!262 (Regex!3765) List!14219)

(assert (=> b!1394950 (not (contains!2737 (usedCharacters!262 (regex!2451 lt!464569)) lt!464559))))

(declare-fun lt!464557 () Unit!20441)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!124 (LexerInterface!2146 List!14220 List!14220 Rule!4702 Rule!4702 C!7820) Unit!20441)

(assert (=> b!1394950 (= lt!464557 (lemmaSepRuleNotContainsCharContainedInANonSepRule!124 thiss!19762 rules!2550 rules!2550 (rule!4214 t2!34) lt!464569 lt!464559))))

(declare-fun b!1394951 () Bool)

(declare-fun e!890785 () Bool)

(declare-fun e!890777 () Bool)

(assert (=> b!1394951 (= e!890785 e!890777)))

(declare-fun res!630052 () Bool)

(assert (=> b!1394951 (=> res!630052 e!890777)))

(declare-fun lt!464571 () Bool)

(assert (=> b!1394951 (= res!630052 lt!464571)))

(declare-fun lt!464575 () Unit!20441)

(assert (=> b!1394951 (= lt!464575 e!890776)))

(declare-fun c!229636 () Bool)

(assert (=> b!1394951 (= c!229636 lt!464571)))

(declare-fun lt!464550 () C!7820)

(assert (=> b!1394951 (= lt!464571 (not (contains!2737 (usedCharacters!262 (regex!2451 (rule!4214 t1!34))) lt!464550)))))

(declare-fun e!890775 () Bool)

(assert (=> b!1394952 (= e!890775 (and tp!397776 tp!397786))))

(declare-fun b!1394953 () Bool)

(declare-fun res!630046 () Bool)

(assert (=> b!1394953 (=> res!630046 e!890781)))

(assert (=> b!1394953 (= res!630046 (not (contains!2737 lt!464553 lt!464550)))))

(assert (=> b!1394954 (= e!890786 e!890785)))

(declare-fun res!630035 () Bool)

(assert (=> b!1394954 (=> res!630035 e!890785)))

(declare-fun lt!464572 () List!14219)

(declare-fun matchR!1756 (Regex!3765 List!14219) Bool)

(assert (=> b!1394954 (= res!630035 (not (matchR!1756 (regex!2451 (rule!4214 t1!34)) lt!464572)))))

(declare-fun lt!464561 () Unit!20441)

(declare-fun forallContained!646 (List!14220 Int Rule!4702) Unit!20441)

(assert (=> b!1394954 (= lt!464561 (forallContained!646 rules!2550 lambda!60585 (rule!4214 t2!34)))))

(declare-fun lt!464555 () Unit!20441)

(assert (=> b!1394954 (= lt!464555 (forallContained!646 rules!2550 lambda!60585 (rule!4214 t1!34)))))

(declare-fun lt!464566 () Unit!20441)

(assert (=> b!1394954 (= lt!464566 (forallContained!646 rules!2550 lambda!60585 lt!464569))))

(declare-fun b!1394955 () Bool)

(declare-fun res!630032 () Bool)

(assert (=> b!1394955 (=> res!630032 e!890781)))

(assert (=> b!1394955 (= res!630032 (not (matchR!1756 lt!464552 lt!464553)))))

(declare-fun b!1394956 () Bool)

(declare-fun e!890801 () Bool)

(assert (=> b!1394956 (= e!890790 e!890801)))

(declare-fun res!630053 () Bool)

(assert (=> b!1394956 (=> res!630053 e!890801)))

(declare-fun ++!3680 (List!14219 List!14219) List!14219)

(declare-fun getSuffix!611 (List!14219 List!14219) List!14219)

(assert (=> b!1394956 (= res!630053 (not (= lt!464553 (++!3680 lt!464564 (getSuffix!611 lt!464553 lt!464564)))))))

(declare-fun pickWitness!218 (Int) List!14219)

(assert (=> b!1394956 (= lt!464553 (pickWitness!218 lambda!60581))))

(declare-fun res!630026 () Bool)

(assert (=> start!126958 (=> (not res!630026) (not e!890795))))

(get-info :version)

(assert (=> start!126958 (= res!630026 ((_ is Lexer!2144) thiss!19762))))

(assert (=> start!126958 e!890795))

(assert (=> start!126958 true))

(assert (=> start!126958 e!890788))

(declare-fun inv!18485 (Token!4564) Bool)

(assert (=> start!126958 (and (inv!18485 t1!34) e!890804)))

(declare-fun e!890784 () Bool)

(assert (=> start!126958 (and (inv!18485 t2!34) e!890784)))

(declare-fun b!1394957 () Bool)

(declare-fun res!630029 () Bool)

(assert (=> b!1394957 (=> (not res!630029) (not e!890779))))

(declare-fun separableTokensPredicate!429 (LexerInterface!2146 Token!4564 Token!4564 List!14220) Bool)

(assert (=> b!1394957 (= res!630029 (not (separableTokensPredicate!429 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1394958 () Bool)

(declare-fun Unit!20445 () Unit!20441)

(assert (=> b!1394958 (= e!890800 Unit!20445)))

(declare-fun b!1394959 () Bool)

(declare-fun res!630045 () Bool)

(assert (=> b!1394959 (=> res!630045 e!890782)))

(declare-fun isEmpty!8587 (BalanceConc!9264) Bool)

(assert (=> b!1394959 (= res!630045 (not (isEmpty!8587 (_2!7769 lt!464548))))))

(declare-fun b!1394960 () Bool)

(declare-fun res!630051 () Bool)

(assert (=> b!1394960 (=> (not res!630051) (not e!890795))))

(declare-fun rulesProduceIndividualToken!1115 (LexerInterface!2146 List!14220 Token!4564) Bool)

(assert (=> b!1394960 (= res!630051 (rulesProduceIndividualToken!1115 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1394961 () Bool)

(declare-fun res!630030 () Bool)

(assert (=> b!1394961 (=> res!630030 e!890780)))

(declare-datatypes ((tuple2!13768 0))(
  ( (tuple2!13769 (_1!7770 Token!4564) (_2!7770 List!14219)) )
))
(declare-datatypes ((Option!2714 0))(
  ( (None!2713) (Some!2713 (v!21617 tuple2!13768)) )
))
(declare-fun maxPrefix!1120 (LexerInterface!2146 List!14220 List!14219) Option!2714)

(assert (=> b!1394961 (= res!630030 (not (= (maxPrefix!1120 thiss!19762 rules!2550 lt!464572) (Some!2713 (tuple2!13769 t1!34 Nil!14153)))))))

(declare-fun tp!397780 () Bool)

(declare-fun b!1394962 () Bool)

(declare-fun inv!18482 (String!16941) Bool)

(declare-fun inv!18486 (TokenValueInjection!4742) Bool)

(assert (=> b!1394962 (= e!890789 (and tp!397780 (inv!18482 (tag!2713 (rule!4214 t1!34))) (inv!18486 (transformation!2451 (rule!4214 t1!34))) e!890775))))

(declare-fun e!890796 () Bool)

(assert (=> b!1394963 (= e!890803 e!890796)))

(declare-fun res!630061 () Bool)

(assert (=> b!1394963 (=> res!630061 e!890796)))

(declare-fun exists!546 (List!14220 Int) Bool)

(assert (=> b!1394963 (= res!630061 (not (exists!546 rules!2550 lambda!60584)))))

(assert (=> b!1394963 (exists!546 rules!2550 lambda!60584)))

(declare-fun lt!464576 () Unit!20441)

(declare-fun lemmaMapContains!162 (List!14220 Int Regex!3765) Unit!20441)

(assert (=> b!1394963 (= lt!464576 (lemmaMapContains!162 rules!2550 lambda!60582 lt!464567))))

(declare-fun b!1394964 () Bool)

(declare-fun Unit!20446 () Unit!20441)

(assert (=> b!1394964 (= e!890776 Unit!20446)))

(declare-fun lt!464568 () Unit!20441)

(assert (=> b!1394964 (= lt!464568 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!196 (regex!2451 (rule!4214 t1!34)) lt!464572 (head!2561 lt!464572)))))

(assert (=> b!1394964 false))

(declare-fun b!1394965 () Bool)

(declare-fun e!890773 () Bool)

(declare-fun tp!397784 () Bool)

(assert (=> b!1394965 (= e!890784 (and (inv!21 (value!79486 t2!34)) e!890773 tp!397784))))

(declare-fun b!1394966 () Bool)

(assert (=> b!1394966 (= e!890777 e!890802)))

(declare-fun res!630037 () Bool)

(assert (=> b!1394966 (=> res!630037 e!890802)))

(declare-fun lt!464563 () Bool)

(assert (=> b!1394966 (= res!630037 lt!464563)))

(declare-fun lt!464565 () Unit!20441)

(assert (=> b!1394966 (= lt!464565 e!890800)))

(declare-fun c!229637 () Bool)

(assert (=> b!1394966 (= c!229637 lt!464563)))

(assert (=> b!1394966 (= lt!464563 (not (contains!2737 (usedCharacters!262 (regex!2451 (rule!4214 t2!34))) lt!464559)))))

(declare-fun e!890778 () Bool)

(assert (=> b!1394967 (= e!890778 (and tp!397777 tp!397782))))

(declare-fun b!1394968 () Bool)

(declare-fun res!630047 () Bool)

(assert (=> b!1394968 (=> (not res!630047) (not e!890795))))

(assert (=> b!1394968 (= res!630047 (rulesProduceIndividualToken!1115 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1394969 (= e!890781 e!890792)))

(declare-fun res!630060 () Bool)

(assert (=> b!1394969 (=> res!630060 e!890792)))

(declare-fun exists!547 (List!14221 Int) Bool)

(assert (=> b!1394969 (= res!630060 (not (exists!547 (map!3137 rules!2550 lambda!60582) lambda!60583)))))

(declare-fun lt!464577 () List!14221)

(assert (=> b!1394969 (exists!547 lt!464577 lambda!60583)))

(declare-fun lt!464574 () Unit!20441)

(declare-fun matchRGenUnionSpec!176 (Regex!3765 List!14221 List!14219) Unit!20441)

(assert (=> b!1394969 (= lt!464574 (matchRGenUnionSpec!176 lt!464552 lt!464577 lt!464553))))

(assert (=> b!1394969 (= lt!464577 (map!3137 rules!2550 lambda!60582))))

(declare-fun b!1394970 () Bool)

(declare-fun tp!397781 () Bool)

(assert (=> b!1394970 (= e!890791 (and tp!397781 (inv!18482 (tag!2713 (h!19555 rules!2550))) (inv!18486 (transformation!2451 (h!19555 rules!2550))) e!890778))))

(declare-fun b!1394971 () Bool)

(assert (=> b!1394971 (= e!890796 e!890780)))

(declare-fun res!630054 () Bool)

(assert (=> b!1394971 (=> res!630054 e!890780)))

(declare-fun lt!464558 () tuple2!13766)

(declare-fun lt!464554 () List!14222)

(assert (=> b!1394971 (= res!630054 (not (= (list!5505 (_1!7769 lt!464558)) lt!464554)))))

(assert (=> b!1394971 (= lt!464554 (Cons!14156 t1!34 Nil!14156))))

(declare-fun lt!464578 () BalanceConc!9264)

(assert (=> b!1394971 (= lt!464558 (lex!971 thiss!19762 rules!2550 lt!464578))))

(assert (=> b!1394971 (= lt!464578 (print!910 thiss!19762 (singletonSeq!1104 t1!34)))))

(declare-fun getWitness!435 (List!14220 Int) Rule!4702)

(assert (=> b!1394971 (= lt!464569 (getWitness!435 rules!2550 lambda!60584))))

(declare-fun b!1394972 () Bool)

(declare-fun res!630034 () Bool)

(assert (=> b!1394972 (=> res!630034 e!890785)))

(assert (=> b!1394972 (= res!630034 (not (matchR!1756 (regex!2451 (rule!4214 t2!34)) lt!464570)))))

(declare-fun b!1394973 () Bool)

(assert (=> b!1394973 (= e!890801 e!890781)))

(declare-fun res!630043 () Bool)

(assert (=> b!1394973 (=> res!630043 e!890781)))

(assert (=> b!1394973 (= res!630043 (not (contains!2737 lt!464564 lt!464550)))))

(declare-fun lt!464562 () BalanceConc!9264)

(declare-fun apply!3579 (BalanceConc!9264 Int) C!7820)

(assert (=> b!1394973 (= lt!464550 (apply!3579 lt!464562 0))))

(declare-fun b!1394974 () Bool)

(assert (=> b!1394974 (= e!890782 e!890786)))

(declare-fun res!630031 () Bool)

(assert (=> b!1394974 (=> res!630031 e!890786)))

(assert (=> b!1394974 (= res!630031 (not (= (maxPrefix!1120 thiss!19762 rules!2550 lt!464570) (Some!2713 (tuple2!13769 t2!34 Nil!14153)))))))

(declare-fun list!5506 (BalanceConc!9264) List!14219)

(assert (=> b!1394974 (= lt!464570 (list!5506 lt!464573))))

(declare-fun b!1394975 () Bool)

(declare-fun res!630057 () Bool)

(assert (=> b!1394975 (=> res!630057 e!890781)))

(assert (=> b!1394975 (= res!630057 (not (contains!2737 lt!464564 lt!464559)))))

(declare-fun b!1394976 () Bool)

(declare-fun res!630041 () Bool)

(assert (=> b!1394976 (=> res!630041 e!890780)))

(assert (=> b!1394976 (= res!630041 (not (isEmpty!8587 (_2!7769 lt!464558))))))

(declare-fun b!1394977 () Bool)

(declare-fun res!630044 () Bool)

(assert (=> b!1394977 (=> res!630044 e!890786)))

(assert (=> b!1394977 (= res!630044 (not (contains!2735 rules!2550 lt!464569)))))

(declare-fun b!1394978 () Bool)

(declare-fun res!630048 () Bool)

(assert (=> b!1394978 (=> res!630048 e!890780)))

(declare-datatypes ((tuple2!13770 0))(
  ( (tuple2!13771 (_1!7771 List!14222) (_2!7771 List!14219)) )
))
(declare-fun lexList!660 (LexerInterface!2146 List!14220 List!14219) tuple2!13770)

(assert (=> b!1394978 (= res!630048 (not (= (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464578)) (tuple2!13771 lt!464554 Nil!14153))))))

(declare-fun b!1394979 () Bool)

(assert (=> b!1394979 (= e!890779 e!890774)))

(declare-fun res!630028 () Bool)

(assert (=> b!1394979 (=> (not res!630028) (not e!890774))))

(declare-fun prefixMatch!274 (Regex!3765 List!14219) Bool)

(assert (=> b!1394979 (= res!630028 (prefixMatch!274 lt!464552 lt!464564))))

(declare-fun rulesRegex!334 (LexerInterface!2146 List!14220) Regex!3765)

(assert (=> b!1394979 (= lt!464552 (rulesRegex!334 thiss!19762 rules!2550))))

(assert (=> b!1394979 (= lt!464564 (++!3680 lt!464572 (Cons!14153 lt!464559 Nil!14153)))))

(assert (=> b!1394979 (= lt!464559 (apply!3579 lt!464573 0))))

(assert (=> b!1394979 (= lt!464572 (list!5506 lt!464562))))

(assert (=> b!1394979 (= lt!464562 (charsOf!1423 t1!34))))

(declare-fun b!1394980 () Bool)

(declare-fun res!630042 () Bool)

(assert (=> b!1394980 (=> res!630042 e!890782)))

(assert (=> b!1394980 (= res!630042 (not (= (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464560)) (tuple2!13771 lt!464549 Nil!14153))))))

(declare-fun b!1394981 () Bool)

(declare-fun tp!397778 () Bool)

(assert (=> b!1394981 (= e!890773 (and tp!397778 (inv!18482 (tag!2713 (rule!4214 t2!34))) (inv!18486 (transformation!2451 (rule!4214 t2!34))) e!890787))))

(assert (= (and start!126958 res!630026) b!1394945))

(assert (= (and b!1394945 res!630027) b!1394939))

(assert (= (and b!1394939 res!630036) b!1394960))

(assert (= (and b!1394960 res!630051) b!1394968))

(assert (= (and b!1394968 res!630047) b!1394936))

(assert (= (and b!1394936 res!630055) b!1394944))

(assert (= (and b!1394944 res!630040) b!1394949))

(assert (= (and b!1394949 res!630056) b!1394957))

(assert (= (and b!1394957 res!630029) b!1394979))

(assert (= (and b!1394979 res!630028) b!1394948))

(assert (= (and b!1394948 (not res!630059)) b!1394956))

(assert (= (and b!1394956 (not res!630053)) b!1394973))

(assert (= (and b!1394973 (not res!630043)) b!1394953))

(assert (= (and b!1394953 (not res!630046)) b!1394975))

(assert (= (and b!1394975 (not res!630057)) b!1394940))

(assert (= (and b!1394940 (not res!630033)) b!1394955))

(assert (= (and b!1394955 (not res!630032)) b!1394969))

(assert (= (and b!1394969 (not res!630060)) b!1394937))

(assert (= (and b!1394937 (not res!630050)) b!1394963))

(assert (= (and b!1394963 (not res!630061)) b!1394971))

(assert (= (and b!1394971 (not res!630054)) b!1394976))

(assert (= (and b!1394976 (not res!630041)) b!1394978))

(assert (= (and b!1394978 (not res!630048)) b!1394961))

(assert (= (and b!1394961 (not res!630030)) b!1394947))

(assert (= (and b!1394947 (not res!630049)) b!1394943))

(assert (= (and b!1394943 (not res!630039)) b!1394959))

(assert (= (and b!1394959 (not res!630045)) b!1394980))

(assert (= (and b!1394980 (not res!630042)) b!1394974))

(assert (= (and b!1394974 (not res!630031)) b!1394933))

(assert (= (and b!1394933 (not res!630038)) b!1394977))

(assert (= (and b!1394977 (not res!630044)) b!1394954))

(assert (= (and b!1394954 (not res!630035)) b!1394972))

(assert (= (and b!1394972 (not res!630034)) b!1394951))

(assert (= (and b!1394951 c!229636) b!1394964))

(assert (= (and b!1394951 (not c!229636)) b!1394942))

(assert (= (and b!1394951 (not res!630052)) b!1394966))

(assert (= (and b!1394966 c!229637) b!1394938))

(assert (= (and b!1394966 (not c!229637)) b!1394958))

(assert (= (and b!1394966 (not res!630037)) b!1394935))

(assert (= (and b!1394935 (not res!630058)) b!1394950))

(assert (= b!1394970 b!1394967))

(assert (= b!1394941 b!1394970))

(assert (= (and start!126958 ((_ is Cons!14154) rules!2550)) b!1394941))

(assert (= b!1394962 b!1394952))

(assert (= b!1394934 b!1394962))

(assert (= start!126958 b!1394934))

(assert (= b!1394981 b!1394946))

(assert (= b!1394965 b!1394981))

(assert (= start!126958 b!1394965))

(declare-fun m!1571189 () Bool)

(assert (=> b!1394979 m!1571189))

(declare-fun m!1571191 () Bool)

(assert (=> b!1394979 m!1571191))

(declare-fun m!1571193 () Bool)

(assert (=> b!1394979 m!1571193))

(declare-fun m!1571195 () Bool)

(assert (=> b!1394979 m!1571195))

(declare-fun m!1571197 () Bool)

(assert (=> b!1394979 m!1571197))

(declare-fun m!1571199 () Bool)

(assert (=> b!1394979 m!1571199))

(declare-fun m!1571201 () Bool)

(assert (=> b!1394943 m!1571201))

(declare-fun m!1571203 () Bool)

(assert (=> b!1394943 m!1571203))

(declare-fun m!1571205 () Bool)

(assert (=> b!1394943 m!1571205))

(assert (=> b!1394943 m!1571205))

(declare-fun m!1571207 () Bool)

(assert (=> b!1394943 m!1571207))

(declare-fun m!1571209 () Bool)

(assert (=> b!1394950 m!1571209))

(declare-fun m!1571211 () Bool)

(assert (=> b!1394950 m!1571211))

(assert (=> b!1394950 m!1571211))

(declare-fun m!1571213 () Bool)

(assert (=> b!1394950 m!1571213))

(declare-fun m!1571215 () Bool)

(assert (=> b!1394950 m!1571215))

(declare-fun m!1571217 () Bool)

(assert (=> b!1394972 m!1571217))

(declare-fun m!1571219 () Bool)

(assert (=> b!1394948 m!1571219))

(assert (=> b!1394948 m!1571219))

(declare-fun m!1571221 () Bool)

(assert (=> b!1394948 m!1571221))

(declare-fun m!1571223 () Bool)

(assert (=> b!1394937 m!1571223))

(assert (=> b!1394937 m!1571223))

(declare-fun m!1571225 () Bool)

(assert (=> b!1394937 m!1571225))

(assert (=> b!1394937 m!1571223))

(assert (=> b!1394937 m!1571223))

(declare-fun m!1571227 () Bool)

(assert (=> b!1394937 m!1571227))

(assert (=> b!1394969 m!1571223))

(assert (=> b!1394969 m!1571223))

(declare-fun m!1571229 () Bool)

(assert (=> b!1394969 m!1571229))

(assert (=> b!1394969 m!1571223))

(declare-fun m!1571231 () Bool)

(assert (=> b!1394969 m!1571231))

(declare-fun m!1571233 () Bool)

(assert (=> b!1394969 m!1571233))

(declare-fun m!1571235 () Bool)

(assert (=> b!1394980 m!1571235))

(assert (=> b!1394980 m!1571235))

(declare-fun m!1571237 () Bool)

(assert (=> b!1394980 m!1571237))

(declare-fun m!1571239 () Bool)

(assert (=> b!1394976 m!1571239))

(declare-fun m!1571241 () Bool)

(assert (=> b!1394975 m!1571241))

(declare-fun m!1571243 () Bool)

(assert (=> b!1394963 m!1571243))

(assert (=> b!1394963 m!1571243))

(declare-fun m!1571245 () Bool)

(assert (=> b!1394963 m!1571245))

(declare-fun m!1571247 () Bool)

(assert (=> b!1394968 m!1571247))

(declare-fun m!1571249 () Bool)

(assert (=> b!1394966 m!1571249))

(assert (=> b!1394966 m!1571249))

(declare-fun m!1571251 () Bool)

(assert (=> b!1394966 m!1571251))

(declare-fun m!1571253 () Bool)

(assert (=> b!1394940 m!1571253))

(declare-fun m!1571255 () Bool)

(assert (=> b!1394933 m!1571255))

(declare-fun m!1571257 () Bool)

(assert (=> b!1394939 m!1571257))

(declare-fun m!1571259 () Bool)

(assert (=> b!1394981 m!1571259))

(declare-fun m!1571261 () Bool)

(assert (=> b!1394981 m!1571261))

(declare-fun m!1571263 () Bool)

(assert (=> b!1394978 m!1571263))

(assert (=> b!1394978 m!1571263))

(declare-fun m!1571265 () Bool)

(assert (=> b!1394978 m!1571265))

(declare-fun m!1571267 () Bool)

(assert (=> b!1394945 m!1571267))

(declare-fun m!1571269 () Bool)

(assert (=> b!1394965 m!1571269))

(declare-fun m!1571271 () Bool)

(assert (=> b!1394955 m!1571271))

(declare-fun m!1571273 () Bool)

(assert (=> b!1394973 m!1571273))

(declare-fun m!1571275 () Bool)

(assert (=> b!1394973 m!1571275))

(declare-fun m!1571277 () Bool)

(assert (=> b!1394977 m!1571277))

(declare-fun m!1571279 () Bool)

(assert (=> b!1394953 m!1571279))

(declare-fun m!1571281 () Bool)

(assert (=> b!1394961 m!1571281))

(declare-fun m!1571283 () Bool)

(assert (=> b!1394934 m!1571283))

(declare-fun m!1571285 () Bool)

(assert (=> b!1394974 m!1571285))

(declare-fun m!1571287 () Bool)

(assert (=> b!1394974 m!1571287))

(declare-fun m!1571289 () Bool)

(assert (=> b!1394957 m!1571289))

(declare-fun m!1571291 () Bool)

(assert (=> b!1394959 m!1571291))

(declare-fun m!1571293 () Bool)

(assert (=> b!1394938 m!1571293))

(assert (=> b!1394938 m!1571293))

(declare-fun m!1571295 () Bool)

(assert (=> b!1394938 m!1571295))

(declare-fun m!1571297 () Bool)

(assert (=> b!1394944 m!1571297))

(declare-fun m!1571299 () Bool)

(assert (=> b!1394944 m!1571299))

(declare-fun m!1571301 () Bool)

(assert (=> b!1394947 m!1571301))

(declare-fun m!1571303 () Bool)

(assert (=> b!1394962 m!1571303))

(declare-fun m!1571305 () Bool)

(assert (=> b!1394962 m!1571305))

(declare-fun m!1571307 () Bool)

(assert (=> b!1394970 m!1571307))

(declare-fun m!1571309 () Bool)

(assert (=> b!1394970 m!1571309))

(declare-fun m!1571311 () Bool)

(assert (=> b!1394949 m!1571311))

(declare-fun m!1571313 () Bool)

(assert (=> b!1394971 m!1571313))

(declare-fun m!1571315 () Bool)

(assert (=> b!1394971 m!1571315))

(declare-fun m!1571317 () Bool)

(assert (=> b!1394971 m!1571317))

(declare-fun m!1571319 () Bool)

(assert (=> b!1394971 m!1571319))

(assert (=> b!1394971 m!1571317))

(declare-fun m!1571321 () Bool)

(assert (=> b!1394971 m!1571321))

(declare-fun m!1571323 () Bool)

(assert (=> b!1394954 m!1571323))

(declare-fun m!1571325 () Bool)

(assert (=> b!1394954 m!1571325))

(declare-fun m!1571327 () Bool)

(assert (=> b!1394954 m!1571327))

(declare-fun m!1571329 () Bool)

(assert (=> b!1394954 m!1571329))

(declare-fun m!1571331 () Bool)

(assert (=> start!126958 m!1571331))

(declare-fun m!1571333 () Bool)

(assert (=> start!126958 m!1571333))

(declare-fun m!1571335 () Bool)

(assert (=> b!1394964 m!1571335))

(assert (=> b!1394964 m!1571335))

(declare-fun m!1571337 () Bool)

(assert (=> b!1394964 m!1571337))

(declare-fun m!1571339 () Bool)

(assert (=> b!1394960 m!1571339))

(declare-fun m!1571341 () Bool)

(assert (=> b!1394956 m!1571341))

(assert (=> b!1394956 m!1571341))

(declare-fun m!1571343 () Bool)

(assert (=> b!1394956 m!1571343))

(declare-fun m!1571345 () Bool)

(assert (=> b!1394956 m!1571345))

(declare-fun m!1571347 () Bool)

(assert (=> b!1394951 m!1571347))

(assert (=> b!1394951 m!1571347))

(declare-fun m!1571349 () Bool)

(assert (=> b!1394951 m!1571349))

(check-sat (not b_next!34621) (not b!1394974) (not b_next!34623) (not b!1394959) (not b!1394962) (not b!1394980) (not b!1394973) (not b!1394947) b_and!93403 (not b!1394963) (not b!1394965) (not b!1394978) (not b_next!34625) (not b!1394941) (not b!1394957) (not b!1394943) (not b!1394938) (not b!1394966) (not b!1394969) (not b!1394933) (not b!1394954) (not b!1394979) (not b!1394937) (not b_next!34627) (not b!1394948) (not b!1394953) b_and!93405 (not b!1394950) (not b!1394955) (not b!1394951) (not b!1394972) (not b_next!34619) (not b_next!34629) (not b!1394968) b_and!93411 (not b!1394981) (not b!1394964) (not b!1394944) (not b!1394976) (not b!1394939) (not b!1394945) (not b!1394977) (not b!1394970) (not b!1394960) b_and!93409 (not b!1394949) b_and!93413 (not b!1394956) b_and!93407 (not b!1394971) (not b!1394940) (not b!1394961) (not start!126958) (not b!1394975) (not b!1394934))
(check-sat (not b_next!34625) (not b_next!34621) (not b_next!34627) b_and!93405 (not b_next!34623) b_and!93411 b_and!93409 b_and!93403 (not b_next!34619) (not b_next!34629) b_and!93413 b_and!93407)
(get-model)

(declare-fun d!399086 () Bool)

(declare-fun lt!464581 () Int)

(declare-fun size!11640 (List!14219) Int)

(assert (=> d!399086 (= lt!464581 (size!11640 (list!5506 lt!464573)))))

(declare-fun size!11641 (Conc!4662) Int)

(assert (=> d!399086 (= lt!464581 (size!11641 (c!229638 lt!464573)))))

(assert (=> d!399086 (= (size!11638 lt!464573) lt!464581)))

(declare-fun bs!337825 () Bool)

(assert (= bs!337825 d!399086))

(assert (=> bs!337825 m!1571287))

(assert (=> bs!337825 m!1571287))

(declare-fun m!1571351 () Bool)

(assert (=> bs!337825 m!1571351))

(declare-fun m!1571353 () Bool)

(assert (=> bs!337825 m!1571353))

(assert (=> b!1394944 d!399086))

(declare-fun d!399088 () Bool)

(declare-fun lt!464584 () BalanceConc!9264)

(assert (=> d!399088 (= (list!5506 lt!464584) (originalCharacters!3313 t2!34))))

(declare-fun dynLambda!6522 (Int TokenValue!2541) BalanceConc!9264)

(assert (=> d!399088 (= lt!464584 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (value!79486 t2!34)))))

(assert (=> d!399088 (= (charsOf!1423 t2!34) lt!464584)))

(declare-fun b_lambda!43603 () Bool)

(assert (=> (not b_lambda!43603) (not d!399088)))

(declare-fun t!122641 () Bool)

(declare-fun tb!72953 () Bool)

(assert (=> (and b!1394967 (= (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toChars!3601 (transformation!2451 (rule!4214 t2!34)))) t!122641) tb!72953))

(declare-fun b!1394996 () Bool)

(declare-fun e!890807 () Bool)

(declare-fun tp!397789 () Bool)

(declare-fun inv!18487 (Conc!4662) Bool)

(assert (=> b!1394996 (= e!890807 (and (inv!18487 (c!229638 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (value!79486 t2!34)))) tp!397789))))

(declare-fun result!88654 () Bool)

(declare-fun inv!18488 (BalanceConc!9264) Bool)

(assert (=> tb!72953 (= result!88654 (and (inv!18488 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (value!79486 t2!34))) e!890807))))

(assert (= tb!72953 b!1394996))

(declare-fun m!1571355 () Bool)

(assert (=> b!1394996 m!1571355))

(declare-fun m!1571357 () Bool)

(assert (=> tb!72953 m!1571357))

(assert (=> d!399088 t!122641))

(declare-fun b_and!93415 () Bool)

(assert (= b_and!93405 (and (=> t!122641 result!88654) b_and!93415)))

(declare-fun t!122643 () Bool)

(declare-fun tb!72955 () Bool)

(assert (=> (and b!1394946 (= (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (toChars!3601 (transformation!2451 (rule!4214 t2!34)))) t!122643) tb!72955))

(declare-fun result!88658 () Bool)

(assert (= result!88658 result!88654))

(assert (=> d!399088 t!122643))

(declare-fun b_and!93417 () Bool)

(assert (= b_and!93409 (and (=> t!122643 result!88658) b_and!93417)))

(declare-fun tb!72957 () Bool)

(declare-fun t!122645 () Bool)

(assert (=> (and b!1394952 (= (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (toChars!3601 (transformation!2451 (rule!4214 t2!34)))) t!122645) tb!72957))

(declare-fun result!88660 () Bool)

(assert (= result!88660 result!88654))

(assert (=> d!399088 t!122645))

(declare-fun b_and!93419 () Bool)

(assert (= b_and!93413 (and (=> t!122645 result!88660) b_and!93419)))

(declare-fun m!1571359 () Bool)

(assert (=> d!399088 m!1571359))

(declare-fun m!1571361 () Bool)

(assert (=> d!399088 m!1571361))

(assert (=> b!1394944 d!399088))

(declare-fun d!399090 () Bool)

(declare-fun lt!464590 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2089 (List!14219) (InoxSet C!7820))

(assert (=> d!399090 (= lt!464590 (select (content!2089 (usedCharacters!262 (regex!2451 (rule!4214 t2!34)))) lt!464559))))

(declare-fun e!890818 () Bool)

(assert (=> d!399090 (= lt!464590 e!890818)))

(declare-fun res!630084 () Bool)

(assert (=> d!399090 (=> (not res!630084) (not e!890818))))

(assert (=> d!399090 (= res!630084 ((_ is Cons!14153) (usedCharacters!262 (regex!2451 (rule!4214 t2!34)))))))

(assert (=> d!399090 (= (contains!2737 (usedCharacters!262 (regex!2451 (rule!4214 t2!34))) lt!464559) lt!464590)))

(declare-fun b!1395007 () Bool)

(declare-fun e!890819 () Bool)

(assert (=> b!1395007 (= e!890818 e!890819)))

(declare-fun res!630083 () Bool)

(assert (=> b!1395007 (=> res!630083 e!890819)))

(assert (=> b!1395007 (= res!630083 (= (h!19554 (usedCharacters!262 (regex!2451 (rule!4214 t2!34)))) lt!464559))))

(declare-fun b!1395008 () Bool)

(assert (=> b!1395008 (= e!890819 (contains!2737 (t!122636 (usedCharacters!262 (regex!2451 (rule!4214 t2!34)))) lt!464559))))

(assert (= (and d!399090 res!630084) b!1395007))

(assert (= (and b!1395007 (not res!630083)) b!1395008))

(assert (=> d!399090 m!1571249))

(declare-fun m!1571369 () Bool)

(assert (=> d!399090 m!1571369))

(declare-fun m!1571371 () Bool)

(assert (=> d!399090 m!1571371))

(declare-fun m!1571373 () Bool)

(assert (=> b!1395008 m!1571373))

(assert (=> b!1394966 d!399090))

(declare-fun bm!93236 () Bool)

(declare-fun call!93244 () List!14219)

(declare-fun c!229659 () Bool)

(assert (=> bm!93236 (= call!93244 (usedCharacters!262 (ite c!229659 (regTwo!8043 (regex!2451 (rule!4214 t2!34))) (regOne!8042 (regex!2451 (rule!4214 t2!34))))))))

(declare-fun bm!93238 () Bool)

(declare-fun call!93241 () List!14219)

(declare-fun call!93243 () List!14219)

(assert (=> bm!93238 (= call!93241 call!93243)))

(declare-fun b!1395070 () Bool)

(declare-fun e!890852 () List!14219)

(declare-fun e!890855 () List!14219)

(assert (=> b!1395070 (= e!890852 e!890855)))

(declare-fun c!229661 () Bool)

(assert (=> b!1395070 (= c!229661 ((_ is ElementMatch!3765) (regex!2451 (rule!4214 t2!34))))))

(declare-fun b!1395071 () Bool)

(declare-fun e!890854 () List!14219)

(assert (=> b!1395071 (= e!890854 call!93243)))

(declare-fun b!1395072 () Bool)

(assert (=> b!1395072 (= e!890852 Nil!14153)))

(declare-fun b!1395073 () Bool)

(declare-fun e!890853 () List!14219)

(declare-fun call!93242 () List!14219)

(assert (=> b!1395073 (= e!890853 call!93242)))

(declare-fun b!1395074 () Bool)

(declare-fun c!229658 () Bool)

(assert (=> b!1395074 (= c!229658 ((_ is Star!3765) (regex!2451 (rule!4214 t2!34))))))

(assert (=> b!1395074 (= e!890855 e!890854)))

(declare-fun b!1395075 () Bool)

(assert (=> b!1395075 (= e!890854 e!890853)))

(assert (=> b!1395075 (= c!229659 ((_ is Union!3765) (regex!2451 (rule!4214 t2!34))))))

(declare-fun b!1395076 () Bool)

(assert (=> b!1395076 (= e!890855 (Cons!14153 (c!229639 (regex!2451 (rule!4214 t2!34))) Nil!14153))))

(declare-fun d!399096 () Bool)

(declare-fun c!229660 () Bool)

(assert (=> d!399096 (= c!229660 (or ((_ is EmptyExpr!3765) (regex!2451 (rule!4214 t2!34))) ((_ is EmptyLang!3765) (regex!2451 (rule!4214 t2!34)))))))

(assert (=> d!399096 (= (usedCharacters!262 (regex!2451 (rule!4214 t2!34))) e!890852)))

(declare-fun bm!93237 () Bool)

(assert (=> bm!93237 (= call!93243 (usedCharacters!262 (ite c!229658 (reg!4094 (regex!2451 (rule!4214 t2!34))) (ite c!229659 (regOne!8043 (regex!2451 (rule!4214 t2!34))) (regTwo!8042 (regex!2451 (rule!4214 t2!34)))))))))

(declare-fun b!1395077 () Bool)

(assert (=> b!1395077 (= e!890853 call!93242)))

(declare-fun bm!93239 () Bool)

(assert (=> bm!93239 (= call!93242 (++!3680 (ite c!229659 call!93241 call!93244) (ite c!229659 call!93244 call!93241)))))

(assert (= (and d!399096 c!229660) b!1395072))

(assert (= (and d!399096 (not c!229660)) b!1395070))

(assert (= (and b!1395070 c!229661) b!1395076))

(assert (= (and b!1395070 (not c!229661)) b!1395074))

(assert (= (and b!1395074 c!229658) b!1395071))

(assert (= (and b!1395074 (not c!229658)) b!1395075))

(assert (= (and b!1395075 c!229659) b!1395073))

(assert (= (and b!1395075 (not c!229659)) b!1395077))

(assert (= (or b!1395073 b!1395077) bm!93238))

(assert (= (or b!1395073 b!1395077) bm!93236))

(assert (= (or b!1395073 b!1395077) bm!93239))

(assert (= (or b!1395071 bm!93238) bm!93237))

(declare-fun m!1571395 () Bool)

(assert (=> bm!93236 m!1571395))

(declare-fun m!1571397 () Bool)

(assert (=> bm!93237 m!1571397))

(declare-fun m!1571399 () Bool)

(assert (=> bm!93239 m!1571399))

(assert (=> b!1394966 d!399096))

(declare-fun d!399102 () Bool)

(assert (=> d!399102 (= (isEmpty!8586 rules!2550) ((_ is Nil!14154) rules!2550))))

(assert (=> b!1394945 d!399102))

(declare-fun d!399104 () Bool)

(assert (=> d!399104 (not (matchR!1756 (regex!2451 (rule!4214 t1!34)) lt!464572))))

(declare-fun lt!464605 () Unit!20441)

(declare-fun choose!8578 (Regex!3765 List!14219 C!7820) Unit!20441)

(assert (=> d!399104 (= lt!464605 (choose!8578 (regex!2451 (rule!4214 t1!34)) lt!464572 (head!2561 lt!464572)))))

(assert (=> d!399104 (validRegex!1643 (regex!2451 (rule!4214 t1!34)))))

(assert (=> d!399104 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!196 (regex!2451 (rule!4214 t1!34)) lt!464572 (head!2561 lt!464572)) lt!464605)))

(declare-fun bs!337826 () Bool)

(assert (= bs!337826 d!399104))

(assert (=> bs!337826 m!1571323))

(assert (=> bs!337826 m!1571335))

(declare-fun m!1571433 () Bool)

(assert (=> bs!337826 m!1571433))

(declare-fun m!1571435 () Bool)

(assert (=> bs!337826 m!1571435))

(assert (=> b!1394964 d!399104))

(declare-fun d!399116 () Bool)

(assert (=> d!399116 (= (head!2561 lt!464572) (h!19554 lt!464572))))

(assert (=> b!1394964 d!399116))

(declare-fun d!399118 () Bool)

(declare-fun list!5508 (Conc!4663) List!14222)

(assert (=> d!399118 (= (list!5505 (_1!7769 lt!464548)) (list!5508 (c!229640 (_1!7769 lt!464548))))))

(declare-fun bs!337827 () Bool)

(assert (= bs!337827 d!399118))

(declare-fun m!1571437 () Bool)

(assert (=> bs!337827 m!1571437))

(assert (=> b!1394943 d!399118))

(declare-fun b!1395122 () Bool)

(declare-fun e!890887 () Bool)

(declare-fun lt!464614 () tuple2!13766)

(assert (=> b!1395122 (= e!890887 (= (_2!7769 lt!464614) lt!464560))))

(declare-fun b!1395123 () Bool)

(declare-fun e!890886 () Bool)

(declare-fun isEmpty!8590 (BalanceConc!9266) Bool)

(assert (=> b!1395123 (= e!890886 (not (isEmpty!8590 (_1!7769 lt!464614))))))

(declare-fun b!1395125 () Bool)

(assert (=> b!1395125 (= e!890887 e!890886)))

(declare-fun res!630148 () Bool)

(assert (=> b!1395125 (= res!630148 (< (size!11638 (_2!7769 lt!464614)) (size!11638 lt!464560)))))

(assert (=> b!1395125 (=> (not res!630148) (not e!890886))))

(declare-fun b!1395126 () Bool)

(declare-fun res!630146 () Bool)

(declare-fun e!890888 () Bool)

(assert (=> b!1395126 (=> (not res!630146) (not e!890888))))

(assert (=> b!1395126 (= res!630146 (= (list!5505 (_1!7769 lt!464614)) (_1!7771 (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464560)))))))

(declare-fun b!1395124 () Bool)

(assert (=> b!1395124 (= e!890888 (= (list!5506 (_2!7769 lt!464614)) (_2!7771 (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464560)))))))

(declare-fun d!399120 () Bool)

(assert (=> d!399120 e!890888))

(declare-fun res!630147 () Bool)

(assert (=> d!399120 (=> (not res!630147) (not e!890888))))

(assert (=> d!399120 (= res!630147 e!890887)))

(declare-fun c!229668 () Bool)

(declare-fun size!11642 (BalanceConc!9266) Int)

(assert (=> d!399120 (= c!229668 (> (size!11642 (_1!7769 lt!464614)) 0))))

(declare-fun lexTailRecV2!435 (LexerInterface!2146 List!14220 BalanceConc!9264 BalanceConc!9264 BalanceConc!9264 BalanceConc!9266) tuple2!13766)

(assert (=> d!399120 (= lt!464614 (lexTailRecV2!435 thiss!19762 rules!2550 lt!464560 (BalanceConc!9265 Empty!4662) lt!464560 (BalanceConc!9267 Empty!4663)))))

(assert (=> d!399120 (= (lex!971 thiss!19762 rules!2550 lt!464560) lt!464614)))

(assert (= (and d!399120 c!229668) b!1395125))

(assert (= (and d!399120 (not c!229668)) b!1395122))

(assert (= (and b!1395125 res!630148) b!1395123))

(assert (= (and d!399120 res!630147) b!1395126))

(assert (= (and b!1395126 res!630146) b!1395124))

(declare-fun m!1571455 () Bool)

(assert (=> d!399120 m!1571455))

(declare-fun m!1571457 () Bool)

(assert (=> d!399120 m!1571457))

(declare-fun m!1571459 () Bool)

(assert (=> b!1395126 m!1571459))

(assert (=> b!1395126 m!1571235))

(assert (=> b!1395126 m!1571235))

(assert (=> b!1395126 m!1571237))

(declare-fun m!1571461 () Bool)

(assert (=> b!1395125 m!1571461))

(declare-fun m!1571463 () Bool)

(assert (=> b!1395125 m!1571463))

(declare-fun m!1571465 () Bool)

(assert (=> b!1395124 m!1571465))

(assert (=> b!1395124 m!1571235))

(assert (=> b!1395124 m!1571235))

(assert (=> b!1395124 m!1571237))

(declare-fun m!1571467 () Bool)

(assert (=> b!1395123 m!1571467))

(assert (=> b!1394943 d!399120))

(declare-fun d!399126 () Bool)

(declare-fun lt!464617 () BalanceConc!9264)

(declare-fun printList!630 (LexerInterface!2146 List!14222) List!14219)

(assert (=> d!399126 (= (list!5506 lt!464617) (printList!630 thiss!19762 (list!5505 (singletonSeq!1104 t2!34))))))

(declare-fun printTailRec!612 (LexerInterface!2146 BalanceConc!9266 Int BalanceConc!9264) BalanceConc!9264)

(assert (=> d!399126 (= lt!464617 (printTailRec!612 thiss!19762 (singletonSeq!1104 t2!34) 0 (BalanceConc!9265 Empty!4662)))))

(assert (=> d!399126 (= (print!910 thiss!19762 (singletonSeq!1104 t2!34)) lt!464617)))

(declare-fun bs!337829 () Bool)

(assert (= bs!337829 d!399126))

(declare-fun m!1571469 () Bool)

(assert (=> bs!337829 m!1571469))

(assert (=> bs!337829 m!1571205))

(declare-fun m!1571471 () Bool)

(assert (=> bs!337829 m!1571471))

(assert (=> bs!337829 m!1571471))

(declare-fun m!1571473 () Bool)

(assert (=> bs!337829 m!1571473))

(assert (=> bs!337829 m!1571205))

(declare-fun m!1571475 () Bool)

(assert (=> bs!337829 m!1571475))

(assert (=> b!1394943 d!399126))

(declare-fun d!399128 () Bool)

(declare-fun e!890891 () Bool)

(assert (=> d!399128 e!890891))

(declare-fun res!630151 () Bool)

(assert (=> d!399128 (=> (not res!630151) (not e!890891))))

(declare-fun lt!464620 () BalanceConc!9266)

(assert (=> d!399128 (= res!630151 (= (list!5505 lt!464620) (Cons!14156 t2!34 Nil!14156)))))

(declare-fun singleton!486 (Token!4564) BalanceConc!9266)

(assert (=> d!399128 (= lt!464620 (singleton!486 t2!34))))

(assert (=> d!399128 (= (singletonSeq!1104 t2!34) lt!464620)))

(declare-fun b!1395129 () Bool)

(declare-fun isBalanced!1380 (Conc!4663) Bool)

(assert (=> b!1395129 (= e!890891 (isBalanced!1380 (c!229640 lt!464620)))))

(assert (= (and d!399128 res!630151) b!1395129))

(declare-fun m!1571477 () Bool)

(assert (=> d!399128 m!1571477))

(declare-fun m!1571479 () Bool)

(assert (=> d!399128 m!1571479))

(declare-fun m!1571481 () Bool)

(assert (=> b!1395129 m!1571481))

(assert (=> b!1394943 d!399128))

(declare-fun b!1395150 () Bool)

(declare-fun res!630160 () Bool)

(declare-fun e!890906 () Bool)

(assert (=> b!1395150 (=> res!630160 e!890906)))

(assert (=> b!1395150 (= res!630160 (not ((_ is IntegerValue!7625) (value!79486 t2!34))))))

(declare-fun e!890905 () Bool)

(assert (=> b!1395150 (= e!890905 e!890906)))

(declare-fun b!1395151 () Bool)

(declare-fun inv!17 (TokenValue!2541) Bool)

(assert (=> b!1395151 (= e!890905 (inv!17 (value!79486 t2!34)))))

(declare-fun b!1395152 () Bool)

(declare-fun e!890904 () Bool)

(declare-fun inv!16 (TokenValue!2541) Bool)

(assert (=> b!1395152 (= e!890904 (inv!16 (value!79486 t2!34)))))

(declare-fun b!1395154 () Bool)

(assert (=> b!1395154 (= e!890904 e!890905)))

(declare-fun c!229676 () Bool)

(assert (=> b!1395154 (= c!229676 ((_ is IntegerValue!7624) (value!79486 t2!34)))))

(declare-fun d!399130 () Bool)

(declare-fun c!229675 () Bool)

(assert (=> d!399130 (= c!229675 ((_ is IntegerValue!7623) (value!79486 t2!34)))))

(assert (=> d!399130 (= (inv!21 (value!79486 t2!34)) e!890904)))

(declare-fun b!1395153 () Bool)

(declare-fun inv!15 (TokenValue!2541) Bool)

(assert (=> b!1395153 (= e!890906 (inv!15 (value!79486 t2!34)))))

(assert (= (and d!399130 c!229675) b!1395152))

(assert (= (and d!399130 (not c!229675)) b!1395154))

(assert (= (and b!1395154 c!229676) b!1395151))

(assert (= (and b!1395154 (not c!229676)) b!1395150))

(assert (= (and b!1395150 (not res!630160)) b!1395153))

(declare-fun m!1571483 () Bool)

(assert (=> b!1395151 m!1571483))

(declare-fun m!1571485 () Bool)

(assert (=> b!1395152 m!1571485))

(declare-fun m!1571487 () Bool)

(assert (=> b!1395153 m!1571487))

(assert (=> b!1394965 d!399130))

(declare-fun d!399132 () Bool)

(declare-fun lt!464656 () Bool)

(declare-fun e!890956 () Bool)

(assert (=> d!399132 (= lt!464656 e!890956)))

(declare-fun res!630195 () Bool)

(assert (=> d!399132 (=> (not res!630195) (not e!890956))))

(assert (=> d!399132 (= res!630195 (= (list!5505 (_1!7769 (lex!971 thiss!19762 rules!2550 (print!910 thiss!19762 (singletonSeq!1104 t2!34))))) (list!5505 (singletonSeq!1104 t2!34))))))

(declare-fun e!890955 () Bool)

(assert (=> d!399132 (= lt!464656 e!890955)))

(declare-fun res!630193 () Bool)

(assert (=> d!399132 (=> (not res!630193) (not e!890955))))

(declare-fun lt!464655 () tuple2!13766)

(assert (=> d!399132 (= res!630193 (= (size!11642 (_1!7769 lt!464655)) 1))))

(assert (=> d!399132 (= lt!464655 (lex!971 thiss!19762 rules!2550 (print!910 thiss!19762 (singletonSeq!1104 t2!34))))))

(assert (=> d!399132 (not (isEmpty!8586 rules!2550))))

(assert (=> d!399132 (= (rulesProduceIndividualToken!1115 thiss!19762 rules!2550 t2!34) lt!464656)))

(declare-fun b!1395236 () Bool)

(declare-fun res!630194 () Bool)

(assert (=> b!1395236 (=> (not res!630194) (not e!890955))))

(declare-fun apply!3583 (BalanceConc!9266 Int) Token!4564)

(assert (=> b!1395236 (= res!630194 (= (apply!3583 (_1!7769 lt!464655) 0) t2!34))))

(declare-fun b!1395237 () Bool)

(assert (=> b!1395237 (= e!890955 (isEmpty!8587 (_2!7769 lt!464655)))))

(declare-fun b!1395238 () Bool)

(assert (=> b!1395238 (= e!890956 (isEmpty!8587 (_2!7769 (lex!971 thiss!19762 rules!2550 (print!910 thiss!19762 (singletonSeq!1104 t2!34))))))))

(assert (= (and d!399132 res!630193) b!1395236))

(assert (= (and b!1395236 res!630194) b!1395237))

(assert (= (and d!399132 res!630195) b!1395238))

(assert (=> d!399132 m!1571267))

(assert (=> d!399132 m!1571207))

(declare-fun m!1571607 () Bool)

(assert (=> d!399132 m!1571607))

(assert (=> d!399132 m!1571205))

(assert (=> d!399132 m!1571205))

(assert (=> d!399132 m!1571207))

(declare-fun m!1571609 () Bool)

(assert (=> d!399132 m!1571609))

(declare-fun m!1571611 () Bool)

(assert (=> d!399132 m!1571611))

(assert (=> d!399132 m!1571205))

(assert (=> d!399132 m!1571471))

(declare-fun m!1571613 () Bool)

(assert (=> b!1395236 m!1571613))

(declare-fun m!1571615 () Bool)

(assert (=> b!1395237 m!1571615))

(assert (=> b!1395238 m!1571205))

(assert (=> b!1395238 m!1571205))

(assert (=> b!1395238 m!1571207))

(assert (=> b!1395238 m!1571207))

(assert (=> b!1395238 m!1571607))

(declare-fun m!1571617 () Bool)

(assert (=> b!1395238 m!1571617))

(assert (=> b!1394968 d!399132))

(declare-fun d!399172 () Bool)

(declare-fun lt!464659 () Bool)

(declare-fun content!2091 (List!14220) (InoxSet Rule!4702))

(assert (=> d!399172 (= lt!464659 (select (content!2091 rules!2550) (rule!4214 t1!34)))))

(declare-fun e!890970 () Bool)

(assert (=> d!399172 (= lt!464659 e!890970)))

(declare-fun res!630203 () Bool)

(assert (=> d!399172 (=> (not res!630203) (not e!890970))))

(assert (=> d!399172 (= res!630203 ((_ is Cons!14154) rules!2550))))

(assert (=> d!399172 (= (contains!2735 rules!2550 (rule!4214 t1!34)) lt!464659)))

(declare-fun b!1395258 () Bool)

(declare-fun e!890971 () Bool)

(assert (=> b!1395258 (= e!890970 e!890971)))

(declare-fun res!630204 () Bool)

(assert (=> b!1395258 (=> res!630204 e!890971)))

(assert (=> b!1395258 (= res!630204 (= (h!19555 rules!2550) (rule!4214 t1!34)))))

(declare-fun b!1395259 () Bool)

(assert (=> b!1395259 (= e!890971 (contains!2735 (t!122637 rules!2550) (rule!4214 t1!34)))))

(assert (= (and d!399172 res!630203) b!1395258))

(assert (= (and b!1395258 (not res!630204)) b!1395259))

(declare-fun m!1571625 () Bool)

(assert (=> d!399172 m!1571625))

(declare-fun m!1571627 () Bool)

(assert (=> d!399172 m!1571627))

(declare-fun m!1571629 () Bool)

(assert (=> b!1395259 m!1571629))

(assert (=> b!1394947 d!399172))

(declare-fun bs!337844 () Bool)

(declare-fun d!399176 () Bool)

(assert (= bs!337844 (and d!399176 b!1394969)))

(declare-fun lambda!60597 () Int)

(assert (=> bs!337844 (not (= lambda!60597 lambda!60583))))

(assert (=> d!399176 true))

(declare-fun order!8671 () Int)

(declare-fun dynLambda!6526 (Int Int) Int)

(assert (=> d!399176 (< (dynLambda!6526 order!8671 lambda!60583) (dynLambda!6526 order!8671 lambda!60597))))

(declare-fun forall!3441 (List!14221 Int) Bool)

(assert (=> d!399176 (= (exists!547 lt!464577 lambda!60583) (not (forall!3441 lt!464577 lambda!60597)))))

(declare-fun bs!337845 () Bool)

(assert (= bs!337845 d!399176))

(declare-fun m!1571637 () Bool)

(assert (=> bs!337845 m!1571637))

(assert (=> b!1394969 d!399176))

(declare-fun d!399180 () Bool)

(declare-fun lt!464668 () List!14221)

(declare-fun size!11644 (List!14221) Int)

(declare-fun size!11645 (List!14220) Int)

(assert (=> d!399180 (= (size!11644 lt!464668) (size!11645 rules!2550))))

(declare-fun e!890980 () List!14221)

(assert (=> d!399180 (= lt!464668 e!890980)))

(declare-fun c!229705 () Bool)

(assert (=> d!399180 (= c!229705 ((_ is Nil!14154) rules!2550))))

(assert (=> d!399180 (= (map!3137 rules!2550 lambda!60582) lt!464668)))

(declare-fun b!1395272 () Bool)

(assert (=> b!1395272 (= e!890980 Nil!14155)))

(declare-fun b!1395273 () Bool)

(declare-fun $colon$colon!224 (List!14221 Regex!3765) List!14221)

(declare-fun dynLambda!6527 (Int Rule!4702) Regex!3765)

(assert (=> b!1395273 (= e!890980 ($colon$colon!224 (map!3137 (t!122637 rules!2550) lambda!60582) (dynLambda!6527 lambda!60582 (h!19555 rules!2550))))))

(assert (= (and d!399180 c!229705) b!1395272))

(assert (= (and d!399180 (not c!229705)) b!1395273))

(declare-fun b_lambda!43613 () Bool)

(assert (=> (not b_lambda!43613) (not b!1395273)))

(declare-fun m!1571645 () Bool)

(assert (=> d!399180 m!1571645))

(declare-fun m!1571647 () Bool)

(assert (=> d!399180 m!1571647))

(declare-fun m!1571649 () Bool)

(assert (=> b!1395273 m!1571649))

(declare-fun m!1571651 () Bool)

(assert (=> b!1395273 m!1571651))

(assert (=> b!1395273 m!1571649))

(assert (=> b!1395273 m!1571651))

(declare-fun m!1571653 () Bool)

(assert (=> b!1395273 m!1571653))

(assert (=> b!1394969 d!399180))

(declare-fun bs!337846 () Bool)

(declare-fun d!399184 () Bool)

(assert (= bs!337846 (and d!399184 b!1394969)))

(declare-fun lambda!60602 () Int)

(assert (=> bs!337846 (not (= lambda!60602 lambda!60583))))

(declare-fun bs!337847 () Bool)

(assert (= bs!337847 (and d!399184 d!399176)))

(assert (=> bs!337847 (not (= lambda!60602 lambda!60597))))

(declare-fun lambda!60603 () Int)

(assert (=> bs!337846 (= lambda!60603 lambda!60583)))

(assert (=> bs!337847 (not (= lambda!60603 lambda!60597))))

(declare-fun bs!337848 () Bool)

(assert (= bs!337848 d!399184))

(assert (=> bs!337848 (not (= lambda!60603 lambda!60602))))

(assert (=> d!399184 true))

(assert (=> d!399184 (= (matchR!1756 lt!464552 lt!464553) (exists!547 lt!464577 lambda!60603))))

(declare-fun lt!464674 () Unit!20441)

(declare-fun choose!8580 (Regex!3765 List!14221 List!14219) Unit!20441)

(assert (=> d!399184 (= lt!464674 (choose!8580 lt!464552 lt!464577 lt!464553))))

(assert (=> d!399184 (forall!3441 lt!464577 lambda!60602)))

(assert (=> d!399184 (= (matchRGenUnionSpec!176 lt!464552 lt!464577 lt!464553) lt!464674)))

(assert (=> bs!337848 m!1571271))

(declare-fun m!1571665 () Bool)

(assert (=> bs!337848 m!1571665))

(declare-fun m!1571667 () Bool)

(assert (=> bs!337848 m!1571667))

(declare-fun m!1571669 () Bool)

(assert (=> bs!337848 m!1571669))

(assert (=> b!1394969 d!399184))

(declare-fun bs!337849 () Bool)

(declare-fun d!399188 () Bool)

(assert (= bs!337849 (and d!399188 b!1394969)))

(declare-fun lambda!60604 () Int)

(assert (=> bs!337849 (not (= lambda!60604 lambda!60583))))

(declare-fun bs!337850 () Bool)

(assert (= bs!337850 (and d!399188 d!399176)))

(assert (=> bs!337850 (= lambda!60604 lambda!60597)))

(declare-fun bs!337851 () Bool)

(assert (= bs!337851 (and d!399188 d!399184)))

(assert (=> bs!337851 (not (= lambda!60604 lambda!60602))))

(assert (=> bs!337851 (not (= lambda!60604 lambda!60603))))

(assert (=> d!399188 true))

(assert (=> d!399188 (< (dynLambda!6526 order!8671 lambda!60583) (dynLambda!6526 order!8671 lambda!60604))))

(assert (=> d!399188 (= (exists!547 (map!3137 rules!2550 lambda!60582) lambda!60583) (not (forall!3441 (map!3137 rules!2550 lambda!60582) lambda!60604)))))

(declare-fun bs!337852 () Bool)

(assert (= bs!337852 d!399188))

(assert (=> bs!337852 m!1571223))

(declare-fun m!1571671 () Bool)

(assert (=> bs!337852 m!1571671))

(assert (=> b!1394969 d!399188))

(declare-fun b!1395332 () Bool)

(declare-fun lt!464686 () Unit!20441)

(declare-fun Unit!20447 () Unit!20441)

(assert (=> b!1395332 (= lt!464686 Unit!20447)))

(assert (=> b!1395332 false))

(declare-fun e!891025 () Rule!4702)

(declare-fun head!2562 (List!14220) Rule!4702)

(assert (=> b!1395332 (= e!891025 (head!2562 rules!2550))))

(declare-fun b!1395333 () Bool)

(declare-fun e!891024 () Rule!4702)

(assert (=> b!1395333 (= e!891024 e!891025)))

(declare-fun c!229723 () Bool)

(assert (=> b!1395333 (= c!229723 ((_ is Cons!14154) rules!2550))))

(declare-fun b!1395334 () Bool)

(assert (=> b!1395334 (= e!891025 (getWitness!435 (t!122637 rules!2550) lambda!60584))))

(declare-fun b!1395335 () Bool)

(declare-fun e!891022 () Bool)

(declare-fun dynLambda!6528 (Int Rule!4702) Bool)

(assert (=> b!1395335 (= e!891022 (dynLambda!6528 lambda!60584 (h!19555 rules!2550)))))

(declare-fun b!1395336 () Bool)

(assert (=> b!1395336 (= e!891024 (h!19555 rules!2550))))

(declare-fun d!399190 () Bool)

(declare-fun e!891023 () Bool)

(assert (=> d!399190 e!891023))

(declare-fun res!630235 () Bool)

(assert (=> d!399190 (=> (not res!630235) (not e!891023))))

(declare-fun lt!464687 () Rule!4702)

(assert (=> d!399190 (= res!630235 (dynLambda!6528 lambda!60584 lt!464687))))

(assert (=> d!399190 (= lt!464687 e!891024)))

(declare-fun c!229724 () Bool)

(assert (=> d!399190 (= c!229724 e!891022)))

(declare-fun res!630236 () Bool)

(assert (=> d!399190 (=> (not res!630236) (not e!891022))))

(assert (=> d!399190 (= res!630236 ((_ is Cons!14154) rules!2550))))

(assert (=> d!399190 (exists!546 rules!2550 lambda!60584)))

(assert (=> d!399190 (= (getWitness!435 rules!2550 lambda!60584) lt!464687)))

(declare-fun b!1395337 () Bool)

(assert (=> b!1395337 (= e!891023 (contains!2735 rules!2550 lt!464687))))

(assert (= (and d!399190 res!630236) b!1395335))

(assert (= (and d!399190 c!229724) b!1395336))

(assert (= (and d!399190 (not c!229724)) b!1395333))

(assert (= (and b!1395333 c!229723) b!1395334))

(assert (= (and b!1395333 (not c!229723)) b!1395332))

(assert (= (and d!399190 res!630235) b!1395337))

(declare-fun b_lambda!43621 () Bool)

(assert (=> (not b_lambda!43621) (not b!1395335)))

(declare-fun b_lambda!43623 () Bool)

(assert (=> (not b_lambda!43623) (not d!399190)))

(declare-fun m!1571687 () Bool)

(assert (=> d!399190 m!1571687))

(assert (=> d!399190 m!1571243))

(declare-fun m!1571689 () Bool)

(assert (=> b!1395337 m!1571689))

(declare-fun m!1571691 () Bool)

(assert (=> b!1395334 m!1571691))

(declare-fun m!1571693 () Bool)

(assert (=> b!1395335 m!1571693))

(declare-fun m!1571695 () Bool)

(assert (=> b!1395332 m!1571695))

(assert (=> b!1394971 d!399190))

(declare-fun d!399196 () Bool)

(declare-fun lt!464688 () BalanceConc!9264)

(assert (=> d!399196 (= (list!5506 lt!464688) (printList!630 thiss!19762 (list!5505 (singletonSeq!1104 t1!34))))))

(assert (=> d!399196 (= lt!464688 (printTailRec!612 thiss!19762 (singletonSeq!1104 t1!34) 0 (BalanceConc!9265 Empty!4662)))))

(assert (=> d!399196 (= (print!910 thiss!19762 (singletonSeq!1104 t1!34)) lt!464688)))

(declare-fun bs!337853 () Bool)

(assert (= bs!337853 d!399196))

(declare-fun m!1571697 () Bool)

(assert (=> bs!337853 m!1571697))

(assert (=> bs!337853 m!1571317))

(declare-fun m!1571699 () Bool)

(assert (=> bs!337853 m!1571699))

(assert (=> bs!337853 m!1571699))

(declare-fun m!1571701 () Bool)

(assert (=> bs!337853 m!1571701))

(assert (=> bs!337853 m!1571317))

(declare-fun m!1571703 () Bool)

(assert (=> bs!337853 m!1571703))

(assert (=> b!1394971 d!399196))

(declare-fun b!1395338 () Bool)

(declare-fun e!891027 () Bool)

(declare-fun lt!464689 () tuple2!13766)

(assert (=> b!1395338 (= e!891027 (= (_2!7769 lt!464689) lt!464578))))

(declare-fun b!1395339 () Bool)

(declare-fun e!891026 () Bool)

(assert (=> b!1395339 (= e!891026 (not (isEmpty!8590 (_1!7769 lt!464689))))))

(declare-fun b!1395341 () Bool)

(assert (=> b!1395341 (= e!891027 e!891026)))

(declare-fun res!630239 () Bool)

(assert (=> b!1395341 (= res!630239 (< (size!11638 (_2!7769 lt!464689)) (size!11638 lt!464578)))))

(assert (=> b!1395341 (=> (not res!630239) (not e!891026))))

(declare-fun b!1395342 () Bool)

(declare-fun res!630237 () Bool)

(declare-fun e!891028 () Bool)

(assert (=> b!1395342 (=> (not res!630237) (not e!891028))))

(assert (=> b!1395342 (= res!630237 (= (list!5505 (_1!7769 lt!464689)) (_1!7771 (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464578)))))))

(declare-fun b!1395340 () Bool)

(assert (=> b!1395340 (= e!891028 (= (list!5506 (_2!7769 lt!464689)) (_2!7771 (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464578)))))))

(declare-fun d!399198 () Bool)

(assert (=> d!399198 e!891028))

(declare-fun res!630238 () Bool)

(assert (=> d!399198 (=> (not res!630238) (not e!891028))))

(assert (=> d!399198 (= res!630238 e!891027)))

(declare-fun c!229725 () Bool)

(assert (=> d!399198 (= c!229725 (> (size!11642 (_1!7769 lt!464689)) 0))))

(assert (=> d!399198 (= lt!464689 (lexTailRecV2!435 thiss!19762 rules!2550 lt!464578 (BalanceConc!9265 Empty!4662) lt!464578 (BalanceConc!9267 Empty!4663)))))

(assert (=> d!399198 (= (lex!971 thiss!19762 rules!2550 lt!464578) lt!464689)))

(assert (= (and d!399198 c!229725) b!1395341))

(assert (= (and d!399198 (not c!229725)) b!1395338))

(assert (= (and b!1395341 res!630239) b!1395339))

(assert (= (and d!399198 res!630238) b!1395342))

(assert (= (and b!1395342 res!630237) b!1395340))

(declare-fun m!1571705 () Bool)

(assert (=> d!399198 m!1571705))

(declare-fun m!1571707 () Bool)

(assert (=> d!399198 m!1571707))

(declare-fun m!1571709 () Bool)

(assert (=> b!1395342 m!1571709))

(assert (=> b!1395342 m!1571263))

(assert (=> b!1395342 m!1571263))

(assert (=> b!1395342 m!1571265))

(declare-fun m!1571711 () Bool)

(assert (=> b!1395341 m!1571711))

(declare-fun m!1571715 () Bool)

(assert (=> b!1395341 m!1571715))

(declare-fun m!1571717 () Bool)

(assert (=> b!1395340 m!1571717))

(assert (=> b!1395340 m!1571263))

(assert (=> b!1395340 m!1571263))

(assert (=> b!1395340 m!1571265))

(declare-fun m!1571721 () Bool)

(assert (=> b!1395339 m!1571721))

(assert (=> b!1394971 d!399198))

(declare-fun d!399200 () Bool)

(declare-fun e!891036 () Bool)

(assert (=> d!399200 e!891036))

(declare-fun res!630245 () Bool)

(assert (=> d!399200 (=> (not res!630245) (not e!891036))))

(declare-fun lt!464690 () BalanceConc!9266)

(assert (=> d!399200 (= res!630245 (= (list!5505 lt!464690) (Cons!14156 t1!34 Nil!14156)))))

(assert (=> d!399200 (= lt!464690 (singleton!486 t1!34))))

(assert (=> d!399200 (= (singletonSeq!1104 t1!34) lt!464690)))

(declare-fun b!1395352 () Bool)

(assert (=> b!1395352 (= e!891036 (isBalanced!1380 (c!229640 lt!464690)))))

(assert (= (and d!399200 res!630245) b!1395352))

(declare-fun m!1571725 () Bool)

(assert (=> d!399200 m!1571725))

(declare-fun m!1571727 () Bool)

(assert (=> d!399200 m!1571727))

(declare-fun m!1571729 () Bool)

(assert (=> b!1395352 m!1571729))

(assert (=> b!1394971 d!399200))

(declare-fun d!399204 () Bool)

(assert (=> d!399204 (= (list!5505 (_1!7769 lt!464558)) (list!5508 (c!229640 (_1!7769 lt!464558))))))

(declare-fun bs!337854 () Bool)

(assert (= bs!337854 d!399204))

(declare-fun m!1571735 () Bool)

(assert (=> bs!337854 m!1571735))

(assert (=> b!1394971 d!399204))

(declare-fun b!1395381 () Bool)

(declare-fun e!891058 () Bool)

(declare-fun e!891063 () Bool)

(assert (=> b!1395381 (= e!891058 e!891063)))

(declare-fun c!229737 () Bool)

(assert (=> b!1395381 (= c!229737 ((_ is Star!3765) lt!464567))))

(declare-fun d!399208 () Bool)

(declare-fun res!630260 () Bool)

(assert (=> d!399208 (=> res!630260 e!891058)))

(assert (=> d!399208 (= res!630260 ((_ is ElementMatch!3765) lt!464567))))

(assert (=> d!399208 (= (validRegex!1643 lt!464567) e!891058)))

(declare-fun b!1395382 () Bool)

(declare-fun e!891060 () Bool)

(declare-fun e!891057 () Bool)

(assert (=> b!1395382 (= e!891060 e!891057)))

(declare-fun res!630262 () Bool)

(assert (=> b!1395382 (=> (not res!630262) (not e!891057))))

(declare-fun call!93278 () Bool)

(assert (=> b!1395382 (= res!630262 call!93278)))

(declare-fun bm!93272 () Bool)

(declare-fun c!229738 () Bool)

(assert (=> bm!93272 (= call!93278 (validRegex!1643 (ite c!229738 (regOne!8043 lt!464567) (regOne!8042 lt!464567))))))

(declare-fun b!1395383 () Bool)

(declare-fun e!891059 () Bool)

(assert (=> b!1395383 (= e!891063 e!891059)))

(declare-fun res!630258 () Bool)

(declare-fun nullable!1223 (Regex!3765) Bool)

(assert (=> b!1395383 (= res!630258 (not (nullable!1223 (reg!4094 lt!464567))))))

(assert (=> b!1395383 (=> (not res!630258) (not e!891059))))

(declare-fun b!1395384 () Bool)

(declare-fun e!891062 () Bool)

(declare-fun call!93279 () Bool)

(assert (=> b!1395384 (= e!891062 call!93279)))

(declare-fun bm!93273 () Bool)

(declare-fun call!93277 () Bool)

(assert (=> bm!93273 (= call!93279 call!93277)))

(declare-fun b!1395385 () Bool)

(declare-fun res!630261 () Bool)

(assert (=> b!1395385 (=> (not res!630261) (not e!891062))))

(assert (=> b!1395385 (= res!630261 call!93278)))

(declare-fun e!891061 () Bool)

(assert (=> b!1395385 (= e!891061 e!891062)))

(declare-fun bm!93274 () Bool)

(assert (=> bm!93274 (= call!93277 (validRegex!1643 (ite c!229737 (reg!4094 lt!464567) (ite c!229738 (regTwo!8043 lt!464567) (regTwo!8042 lt!464567)))))))

(declare-fun b!1395386 () Bool)

(declare-fun res!630259 () Bool)

(assert (=> b!1395386 (=> res!630259 e!891060)))

(assert (=> b!1395386 (= res!630259 (not ((_ is Concat!6307) lt!464567)))))

(assert (=> b!1395386 (= e!891061 e!891060)))

(declare-fun b!1395387 () Bool)

(assert (=> b!1395387 (= e!891057 call!93279)))

(declare-fun b!1395388 () Bool)

(assert (=> b!1395388 (= e!891059 call!93277)))

(declare-fun b!1395389 () Bool)

(assert (=> b!1395389 (= e!891063 e!891061)))

(assert (=> b!1395389 (= c!229738 ((_ is Union!3765) lt!464567))))

(assert (= (and d!399208 (not res!630260)) b!1395381))

(assert (= (and b!1395381 c!229737) b!1395383))

(assert (= (and b!1395381 (not c!229737)) b!1395389))

(assert (= (and b!1395383 res!630258) b!1395388))

(assert (= (and b!1395389 c!229738) b!1395385))

(assert (= (and b!1395389 (not c!229738)) b!1395386))

(assert (= (and b!1395385 res!630261) b!1395384))

(assert (= (and b!1395386 (not res!630259)) b!1395382))

(assert (= (and b!1395382 res!630262) b!1395387))

(assert (= (or b!1395385 b!1395382) bm!93272))

(assert (= (or b!1395384 b!1395387) bm!93273))

(assert (= (or b!1395388 bm!93273) bm!93274))

(declare-fun m!1571747 () Bool)

(assert (=> bm!93272 m!1571747))

(declare-fun m!1571749 () Bool)

(assert (=> b!1395383 m!1571749))

(declare-fun m!1571751 () Bool)

(assert (=> bm!93274 m!1571751))

(assert (=> b!1394950 d!399208))

(declare-fun d!399216 () Bool)

(declare-fun lt!464695 () Bool)

(assert (=> d!399216 (= lt!464695 (select (content!2089 (usedCharacters!262 (regex!2451 lt!464569))) lt!464559))))

(declare-fun e!891064 () Bool)

(assert (=> d!399216 (= lt!464695 e!891064)))

(declare-fun res!630264 () Bool)

(assert (=> d!399216 (=> (not res!630264) (not e!891064))))

(assert (=> d!399216 (= res!630264 ((_ is Cons!14153) (usedCharacters!262 (regex!2451 lt!464569))))))

(assert (=> d!399216 (= (contains!2737 (usedCharacters!262 (regex!2451 lt!464569)) lt!464559) lt!464695)))

(declare-fun b!1395390 () Bool)

(declare-fun e!891065 () Bool)

(assert (=> b!1395390 (= e!891064 e!891065)))

(declare-fun res!630263 () Bool)

(assert (=> b!1395390 (=> res!630263 e!891065)))

(assert (=> b!1395390 (= res!630263 (= (h!19554 (usedCharacters!262 (regex!2451 lt!464569))) lt!464559))))

(declare-fun b!1395391 () Bool)

(assert (=> b!1395391 (= e!891065 (contains!2737 (t!122636 (usedCharacters!262 (regex!2451 lt!464569))) lt!464559))))

(assert (= (and d!399216 res!630264) b!1395390))

(assert (= (and b!1395390 (not res!630263)) b!1395391))

(assert (=> d!399216 m!1571211))

(declare-fun m!1571753 () Bool)

(assert (=> d!399216 m!1571753))

(declare-fun m!1571755 () Bool)

(assert (=> d!399216 m!1571755))

(declare-fun m!1571757 () Bool)

(assert (=> b!1395391 m!1571757))

(assert (=> b!1394950 d!399216))

(declare-fun bm!93275 () Bool)

(declare-fun call!93283 () List!14219)

(declare-fun c!229740 () Bool)

(assert (=> bm!93275 (= call!93283 (usedCharacters!262 (ite c!229740 (regTwo!8043 (regex!2451 lt!464569)) (regOne!8042 (regex!2451 lt!464569)))))))

(declare-fun bm!93277 () Bool)

(declare-fun call!93280 () List!14219)

(declare-fun call!93282 () List!14219)

(assert (=> bm!93277 (= call!93280 call!93282)))

(declare-fun b!1395394 () Bool)

(declare-fun e!891068 () List!14219)

(declare-fun e!891071 () List!14219)

(assert (=> b!1395394 (= e!891068 e!891071)))

(declare-fun c!229742 () Bool)

(assert (=> b!1395394 (= c!229742 ((_ is ElementMatch!3765) (regex!2451 lt!464569)))))

(declare-fun b!1395395 () Bool)

(declare-fun e!891070 () List!14219)

(assert (=> b!1395395 (= e!891070 call!93282)))

(declare-fun b!1395396 () Bool)

(assert (=> b!1395396 (= e!891068 Nil!14153)))

(declare-fun b!1395397 () Bool)

(declare-fun e!891069 () List!14219)

(declare-fun call!93281 () List!14219)

(assert (=> b!1395397 (= e!891069 call!93281)))

(declare-fun b!1395398 () Bool)

(declare-fun c!229739 () Bool)

(assert (=> b!1395398 (= c!229739 ((_ is Star!3765) (regex!2451 lt!464569)))))

(assert (=> b!1395398 (= e!891071 e!891070)))

(declare-fun b!1395399 () Bool)

(assert (=> b!1395399 (= e!891070 e!891069)))

(assert (=> b!1395399 (= c!229740 ((_ is Union!3765) (regex!2451 lt!464569)))))

(declare-fun b!1395400 () Bool)

(assert (=> b!1395400 (= e!891071 (Cons!14153 (c!229639 (regex!2451 lt!464569)) Nil!14153))))

(declare-fun d!399218 () Bool)

(declare-fun c!229741 () Bool)

(assert (=> d!399218 (= c!229741 (or ((_ is EmptyExpr!3765) (regex!2451 lt!464569)) ((_ is EmptyLang!3765) (regex!2451 lt!464569))))))

(assert (=> d!399218 (= (usedCharacters!262 (regex!2451 lt!464569)) e!891068)))

(declare-fun bm!93276 () Bool)

(assert (=> bm!93276 (= call!93282 (usedCharacters!262 (ite c!229739 (reg!4094 (regex!2451 lt!464569)) (ite c!229740 (regOne!8043 (regex!2451 lt!464569)) (regTwo!8042 (regex!2451 lt!464569))))))))

(declare-fun b!1395401 () Bool)

(assert (=> b!1395401 (= e!891069 call!93281)))

(declare-fun bm!93278 () Bool)

(assert (=> bm!93278 (= call!93281 (++!3680 (ite c!229740 call!93280 call!93283) (ite c!229740 call!93283 call!93280)))))

(assert (= (and d!399218 c!229741) b!1395396))

(assert (= (and d!399218 (not c!229741)) b!1395394))

(assert (= (and b!1395394 c!229742) b!1395400))

(assert (= (and b!1395394 (not c!229742)) b!1395398))

(assert (= (and b!1395398 c!229739) b!1395395))

(assert (= (and b!1395398 (not c!229739)) b!1395399))

(assert (= (and b!1395399 c!229740) b!1395397))

(assert (= (and b!1395399 (not c!229740)) b!1395401))

(assert (= (or b!1395397 b!1395401) bm!93277))

(assert (= (or b!1395397 b!1395401) bm!93275))

(assert (= (or b!1395397 b!1395401) bm!93278))

(assert (= (or b!1395395 bm!93277) bm!93276))

(declare-fun m!1571759 () Bool)

(assert (=> bm!93275 m!1571759))

(declare-fun m!1571761 () Bool)

(assert (=> bm!93276 m!1571761))

(declare-fun m!1571763 () Bool)

(assert (=> bm!93278 m!1571763))

(assert (=> b!1394950 d!399218))

(declare-fun d!399220 () Bool)

(assert (=> d!399220 (not (contains!2737 (usedCharacters!262 (regex!2451 lt!464569)) lt!464559))))

(declare-fun lt!464698 () Unit!20441)

(declare-fun choose!8581 (LexerInterface!2146 List!14220 List!14220 Rule!4702 Rule!4702 C!7820) Unit!20441)

(assert (=> d!399220 (= lt!464698 (choose!8581 thiss!19762 rules!2550 rules!2550 (rule!4214 t2!34) lt!464569 lt!464559))))

(assert (=> d!399220 (rulesInvariant!2016 thiss!19762 rules!2550)))

(assert (=> d!399220 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!124 thiss!19762 rules!2550 rules!2550 (rule!4214 t2!34) lt!464569 lt!464559) lt!464698)))

(declare-fun bs!337858 () Bool)

(assert (= bs!337858 d!399220))

(assert (=> bs!337858 m!1571211))

(assert (=> bs!337858 m!1571211))

(assert (=> bs!337858 m!1571213))

(declare-fun m!1571771 () Bool)

(assert (=> bs!337858 m!1571771))

(assert (=> bs!337858 m!1571257))

(assert (=> b!1394950 d!399220))

(declare-fun d!399226 () Bool)

(declare-fun choose!8582 (Int) Bool)

(assert (=> d!399226 (= (Exists!915 lambda!60581) (choose!8582 lambda!60581))))

(declare-fun bs!337859 () Bool)

(assert (= bs!337859 d!399226))

(declare-fun m!1571773 () Bool)

(assert (=> bs!337859 m!1571773))

(assert (=> b!1394948 d!399226))

(declare-fun bs!337863 () Bool)

(declare-fun d!399228 () Bool)

(assert (= bs!337863 (and d!399228 b!1394948)))

(declare-fun lambda!60616 () Int)

(assert (=> bs!337863 (= lambda!60616 lambda!60581)))

(assert (=> d!399228 true))

(assert (=> d!399228 true))

(assert (=> d!399228 (Exists!915 lambda!60616)))

(declare-fun lt!464704 () Unit!20441)

(declare-fun choose!8583 (Regex!3765 List!14219) Unit!20441)

(assert (=> d!399228 (= lt!464704 (choose!8583 lt!464552 lt!464564))))

(assert (=> d!399228 (validRegex!1643 lt!464552)))

(assert (=> d!399228 (= (lemmaPrefixMatchThenExistsStringThatMatches!233 lt!464552 lt!464564) lt!464704)))

(declare-fun bs!337865 () Bool)

(assert (= bs!337865 d!399228))

(declare-fun m!1571781 () Bool)

(assert (=> bs!337865 m!1571781))

(declare-fun m!1571783 () Bool)

(assert (=> bs!337865 m!1571783))

(declare-fun m!1571785 () Bool)

(assert (=> bs!337865 m!1571785))

(assert (=> b!1394948 d!399228))

(declare-fun d!399232 () Bool)

(assert (=> d!399232 (= (inv!18482 (tag!2713 (h!19555 rules!2550))) (= (mod (str.len (value!79485 (tag!2713 (h!19555 rules!2550)))) 2) 0))))

(assert (=> b!1394970 d!399232))

(declare-fun d!399236 () Bool)

(declare-fun res!630274 () Bool)

(declare-fun e!891079 () Bool)

(assert (=> d!399236 (=> (not res!630274) (not e!891079))))

(declare-fun semiInverseModEq!951 (Int Int) Bool)

(assert (=> d!399236 (= res!630274 (semiInverseModEq!951 (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toValue!3742 (transformation!2451 (h!19555 rules!2550)))))))

(assert (=> d!399236 (= (inv!18486 (transformation!2451 (h!19555 rules!2550))) e!891079)))

(declare-fun b!1395411 () Bool)

(declare-fun equivClasses!910 (Int Int) Bool)

(assert (=> b!1395411 (= e!891079 (equivClasses!910 (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toValue!3742 (transformation!2451 (h!19555 rules!2550)))))))

(assert (= (and d!399236 res!630274) b!1395411))

(declare-fun m!1571789 () Bool)

(assert (=> d!399236 m!1571789))

(declare-fun m!1571791 () Bool)

(assert (=> b!1395411 m!1571791))

(assert (=> b!1394970 d!399236))

(declare-fun d!399240 () Bool)

(declare-fun res!630279 () Bool)

(declare-fun e!891084 () Bool)

(assert (=> d!399240 (=> res!630279 e!891084)))

(assert (=> d!399240 (= res!630279 (not ((_ is Cons!14154) rules!2550)))))

(assert (=> d!399240 (= (sepAndNonSepRulesDisjointChars!824 rules!2550 rules!2550) e!891084)))

(declare-fun b!1395416 () Bool)

(declare-fun e!891085 () Bool)

(assert (=> b!1395416 (= e!891084 e!891085)))

(declare-fun res!630280 () Bool)

(assert (=> b!1395416 (=> (not res!630280) (not e!891085))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!394 (Rule!4702 List!14220) Bool)

(assert (=> b!1395416 (= res!630280 (ruleDisjointCharsFromAllFromOtherType!394 (h!19555 rules!2550) rules!2550))))

(declare-fun b!1395417 () Bool)

(assert (=> b!1395417 (= e!891085 (sepAndNonSepRulesDisjointChars!824 rules!2550 (t!122637 rules!2550)))))

(assert (= (and d!399240 (not res!630279)) b!1395416))

(assert (= (and b!1395416 res!630280) b!1395417))

(declare-fun m!1571793 () Bool)

(assert (=> b!1395416 m!1571793))

(declare-fun m!1571795 () Bool)

(assert (=> b!1395417 m!1571795))

(assert (=> b!1394949 d!399240))

(declare-fun call!93289 () Option!2714)

(declare-fun bm!93284 () Bool)

(declare-fun maxPrefixOneRule!634 (LexerInterface!2146 Rule!4702 List!14219) Option!2714)

(assert (=> bm!93284 (= call!93289 (maxPrefixOneRule!634 thiss!19762 (h!19555 rules!2550) lt!464570))))

(declare-fun b!1395469 () Bool)

(declare-fun res!630327 () Bool)

(declare-fun e!891106 () Bool)

(assert (=> b!1395469 (=> (not res!630327) (not e!891106))))

(declare-fun lt!464737 () Option!2714)

(declare-fun get!4387 (Option!2714) tuple2!13768)

(assert (=> b!1395469 (= res!630327 (= (++!3680 (list!5506 (charsOf!1423 (_1!7770 (get!4387 lt!464737)))) (_2!7770 (get!4387 lt!464737))) lt!464570))))

(declare-fun b!1395470 () Bool)

(declare-fun res!630324 () Bool)

(assert (=> b!1395470 (=> (not res!630324) (not e!891106))))

(assert (=> b!1395470 (= res!630324 (= (list!5506 (charsOf!1423 (_1!7770 (get!4387 lt!464737)))) (originalCharacters!3313 (_1!7770 (get!4387 lt!464737)))))))

(declare-fun b!1395471 () Bool)

(declare-fun e!891107 () Option!2714)

(declare-fun lt!464735 () Option!2714)

(declare-fun lt!464733 () Option!2714)

(assert (=> b!1395471 (= e!891107 (ite (and ((_ is None!2713) lt!464735) ((_ is None!2713) lt!464733)) None!2713 (ite ((_ is None!2713) lt!464733) lt!464735 (ite ((_ is None!2713) lt!464735) lt!464733 (ite (>= (size!11637 (_1!7770 (v!21617 lt!464735))) (size!11637 (_1!7770 (v!21617 lt!464733)))) lt!464735 lt!464733)))))))

(assert (=> b!1395471 (= lt!464735 call!93289)))

(assert (=> b!1395471 (= lt!464733 (maxPrefix!1120 thiss!19762 (t!122637 rules!2550) lt!464570))))

(declare-fun b!1395472 () Bool)

(declare-fun res!630328 () Bool)

(assert (=> b!1395472 (=> (not res!630328) (not e!891106))))

(declare-fun apply!3584 (TokenValueInjection!4742 BalanceConc!9264) TokenValue!2541)

(declare-fun seqFromList!1652 (List!14219) BalanceConc!9264)

(assert (=> b!1395472 (= res!630328 (= (value!79486 (_1!7770 (get!4387 lt!464737))) (apply!3584 (transformation!2451 (rule!4214 (_1!7770 (get!4387 lt!464737)))) (seqFromList!1652 (originalCharacters!3313 (_1!7770 (get!4387 lt!464737)))))))))

(declare-fun d!399242 () Bool)

(declare-fun e!891108 () Bool)

(assert (=> d!399242 e!891108))

(declare-fun res!630323 () Bool)

(assert (=> d!399242 (=> res!630323 e!891108)))

(declare-fun isEmpty!8592 (Option!2714) Bool)

(assert (=> d!399242 (= res!630323 (isEmpty!8592 lt!464737))))

(assert (=> d!399242 (= lt!464737 e!891107)))

(declare-fun c!229749 () Bool)

(assert (=> d!399242 (= c!229749 (and ((_ is Cons!14154) rules!2550) ((_ is Nil!14154) (t!122637 rules!2550))))))

(declare-fun lt!464734 () Unit!20441)

(declare-fun lt!464736 () Unit!20441)

(assert (=> d!399242 (= lt!464734 lt!464736)))

(declare-fun isPrefix!1149 (List!14219 List!14219) Bool)

(assert (=> d!399242 (isPrefix!1149 lt!464570 lt!464570)))

(declare-fun lemmaIsPrefixRefl!808 (List!14219 List!14219) Unit!20441)

(assert (=> d!399242 (= lt!464736 (lemmaIsPrefixRefl!808 lt!464570 lt!464570))))

(declare-fun rulesValidInductive!791 (LexerInterface!2146 List!14220) Bool)

(assert (=> d!399242 (rulesValidInductive!791 thiss!19762 rules!2550)))

(assert (=> d!399242 (= (maxPrefix!1120 thiss!19762 rules!2550 lt!464570) lt!464737)))

(declare-fun b!1395473 () Bool)

(assert (=> b!1395473 (= e!891107 call!93289)))

(declare-fun b!1395474 () Bool)

(declare-fun res!630325 () Bool)

(assert (=> b!1395474 (=> (not res!630325) (not e!891106))))

(assert (=> b!1395474 (= res!630325 (< (size!11640 (_2!7770 (get!4387 lt!464737))) (size!11640 lt!464570)))))

(declare-fun b!1395475 () Bool)

(assert (=> b!1395475 (= e!891106 (contains!2735 rules!2550 (rule!4214 (_1!7770 (get!4387 lt!464737)))))))

(declare-fun b!1395476 () Bool)

(declare-fun res!630326 () Bool)

(assert (=> b!1395476 (=> (not res!630326) (not e!891106))))

(assert (=> b!1395476 (= res!630326 (matchR!1756 (regex!2451 (rule!4214 (_1!7770 (get!4387 lt!464737)))) (list!5506 (charsOf!1423 (_1!7770 (get!4387 lt!464737))))))))

(declare-fun b!1395477 () Bool)

(assert (=> b!1395477 (= e!891108 e!891106)))

(declare-fun res!630322 () Bool)

(assert (=> b!1395477 (=> (not res!630322) (not e!891106))))

(declare-fun isDefined!2236 (Option!2714) Bool)

(assert (=> b!1395477 (= res!630322 (isDefined!2236 lt!464737))))

(assert (= (and d!399242 c!229749) b!1395473))

(assert (= (and d!399242 (not c!229749)) b!1395471))

(assert (= (or b!1395473 b!1395471) bm!93284))

(assert (= (and d!399242 (not res!630323)) b!1395477))

(assert (= (and b!1395477 res!630322) b!1395470))

(assert (= (and b!1395470 res!630324) b!1395474))

(assert (= (and b!1395474 res!630325) b!1395469))

(assert (= (and b!1395469 res!630327) b!1395472))

(assert (= (and b!1395472 res!630328) b!1395476))

(assert (= (and b!1395476 res!630326) b!1395475))

(declare-fun m!1571853 () Bool)

(assert (=> b!1395477 m!1571853))

(declare-fun m!1571855 () Bool)

(assert (=> b!1395471 m!1571855))

(declare-fun m!1571857 () Bool)

(assert (=> b!1395469 m!1571857))

(declare-fun m!1571859 () Bool)

(assert (=> b!1395469 m!1571859))

(assert (=> b!1395469 m!1571859))

(declare-fun m!1571861 () Bool)

(assert (=> b!1395469 m!1571861))

(assert (=> b!1395469 m!1571861))

(declare-fun m!1571863 () Bool)

(assert (=> b!1395469 m!1571863))

(declare-fun m!1571865 () Bool)

(assert (=> bm!93284 m!1571865))

(assert (=> b!1395472 m!1571857))

(declare-fun m!1571867 () Bool)

(assert (=> b!1395472 m!1571867))

(assert (=> b!1395472 m!1571867))

(declare-fun m!1571869 () Bool)

(assert (=> b!1395472 m!1571869))

(assert (=> b!1395476 m!1571857))

(assert (=> b!1395476 m!1571859))

(assert (=> b!1395476 m!1571859))

(assert (=> b!1395476 m!1571861))

(assert (=> b!1395476 m!1571861))

(declare-fun m!1571871 () Bool)

(assert (=> b!1395476 m!1571871))

(assert (=> b!1395474 m!1571857))

(declare-fun m!1571873 () Bool)

(assert (=> b!1395474 m!1571873))

(declare-fun m!1571875 () Bool)

(assert (=> b!1395474 m!1571875))

(declare-fun m!1571877 () Bool)

(assert (=> d!399242 m!1571877))

(declare-fun m!1571879 () Bool)

(assert (=> d!399242 m!1571879))

(declare-fun m!1571881 () Bool)

(assert (=> d!399242 m!1571881))

(declare-fun m!1571883 () Bool)

(assert (=> d!399242 m!1571883))

(assert (=> b!1395470 m!1571857))

(assert (=> b!1395470 m!1571859))

(assert (=> b!1395470 m!1571859))

(assert (=> b!1395470 m!1571861))

(assert (=> b!1395475 m!1571857))

(declare-fun m!1571885 () Bool)

(assert (=> b!1395475 m!1571885))

(assert (=> b!1394974 d!399242))

(declare-fun d!399256 () Bool)

(declare-fun list!5510 (Conc!4662) List!14219)

(assert (=> d!399256 (= (list!5506 lt!464573) (list!5510 (c!229638 lt!464573)))))

(declare-fun bs!337870 () Bool)

(assert (= bs!337870 d!399256))

(declare-fun m!1571887 () Bool)

(assert (=> bs!337870 m!1571887))

(assert (=> b!1394974 d!399256))

(declare-fun d!399258 () Bool)

(declare-fun lt!464738 () Bool)

(assert (=> d!399258 (= lt!464738 (select (content!2089 lt!464553) lt!464550))))

(declare-fun e!891109 () Bool)

(assert (=> d!399258 (= lt!464738 e!891109)))

(declare-fun res!630330 () Bool)

(assert (=> d!399258 (=> (not res!630330) (not e!891109))))

(assert (=> d!399258 (= res!630330 ((_ is Cons!14153) lt!464553))))

(assert (=> d!399258 (= (contains!2737 lt!464553 lt!464550) lt!464738)))

(declare-fun b!1395478 () Bool)

(declare-fun e!891110 () Bool)

(assert (=> b!1395478 (= e!891109 e!891110)))

(declare-fun res!630329 () Bool)

(assert (=> b!1395478 (=> res!630329 e!891110)))

(assert (=> b!1395478 (= res!630329 (= (h!19554 lt!464553) lt!464550))))

(declare-fun b!1395479 () Bool)

(assert (=> b!1395479 (= e!891110 (contains!2737 (t!122636 lt!464553) lt!464550))))

(assert (= (and d!399258 res!630330) b!1395478))

(assert (= (and b!1395478 (not res!630329)) b!1395479))

(declare-fun m!1571889 () Bool)

(assert (=> d!399258 m!1571889))

(declare-fun m!1571891 () Bool)

(assert (=> d!399258 m!1571891))

(declare-fun m!1571893 () Bool)

(assert (=> b!1395479 m!1571893))

(assert (=> b!1394953 d!399258))

(declare-fun b!1395518 () Bool)

(declare-fun res!630353 () Bool)

(declare-fun e!891137 () Bool)

(assert (=> b!1395518 (=> (not res!630353) (not e!891137))))

(declare-fun call!93292 () Bool)

(assert (=> b!1395518 (= res!630353 (not call!93292))))

(declare-fun b!1395519 () Bool)

(declare-fun res!630356 () Bool)

(assert (=> b!1395519 (=> (not res!630356) (not e!891137))))

(declare-fun isEmpty!8594 (List!14219) Bool)

(declare-fun tail!2028 (List!14219) List!14219)

(assert (=> b!1395519 (= res!630356 (isEmpty!8594 (tail!2028 lt!464570)))))

(declare-fun b!1395520 () Bool)

(declare-fun e!891136 () Bool)

(declare-fun lt!464747 () Bool)

(assert (=> b!1395520 (= e!891136 (= lt!464747 call!93292))))

(declare-fun b!1395521 () Bool)

(declare-fun e!891131 () Bool)

(declare-fun derivativeStep!981 (Regex!3765 C!7820) Regex!3765)

(assert (=> b!1395521 (= e!891131 (matchR!1756 (derivativeStep!981 (regex!2451 (rule!4214 t2!34)) (head!2561 lt!464570)) (tail!2028 lt!464570)))))

(declare-fun b!1395522 () Bool)

(declare-fun e!891132 () Bool)

(assert (=> b!1395522 (= e!891132 (not lt!464747))))

(declare-fun b!1395523 () Bool)

(assert (=> b!1395523 (= e!891137 (= (head!2561 lt!464570) (c!229639 (regex!2451 (rule!4214 t2!34)))))))

(declare-fun d!399260 () Bool)

(assert (=> d!399260 e!891136))

(declare-fun c!229761 () Bool)

(assert (=> d!399260 (= c!229761 ((_ is EmptyExpr!3765) (regex!2451 (rule!4214 t2!34))))))

(assert (=> d!399260 (= lt!464747 e!891131)))

(declare-fun c!229760 () Bool)

(assert (=> d!399260 (= c!229760 (isEmpty!8594 lt!464570))))

(assert (=> d!399260 (validRegex!1643 (regex!2451 (rule!4214 t2!34)))))

(assert (=> d!399260 (= (matchR!1756 (regex!2451 (rule!4214 t2!34)) lt!464570) lt!464747)))

(declare-fun b!1395524 () Bool)

(declare-fun e!891134 () Bool)

(assert (=> b!1395524 (= e!891134 (not (= (head!2561 lt!464570) (c!229639 (regex!2451 (rule!4214 t2!34))))))))

(declare-fun bm!93287 () Bool)

(assert (=> bm!93287 (= call!93292 (isEmpty!8594 lt!464570))))

(declare-fun b!1395525 () Bool)

(declare-fun res!630351 () Bool)

(declare-fun e!891133 () Bool)

(assert (=> b!1395525 (=> res!630351 e!891133)))

(assert (=> b!1395525 (= res!630351 (not ((_ is ElementMatch!3765) (regex!2451 (rule!4214 t2!34)))))))

(assert (=> b!1395525 (= e!891132 e!891133)))

(declare-fun b!1395526 () Bool)

(assert (=> b!1395526 (= e!891136 e!891132)))

(declare-fun c!229762 () Bool)

(assert (=> b!1395526 (= c!229762 ((_ is EmptyLang!3765) (regex!2451 (rule!4214 t2!34))))))

(declare-fun b!1395527 () Bool)

(declare-fun res!630355 () Bool)

(assert (=> b!1395527 (=> res!630355 e!891134)))

(assert (=> b!1395527 (= res!630355 (not (isEmpty!8594 (tail!2028 lt!464570))))))

(declare-fun b!1395528 () Bool)

(assert (=> b!1395528 (= e!891131 (nullable!1223 (regex!2451 (rule!4214 t2!34))))))

(declare-fun b!1395529 () Bool)

(declare-fun e!891135 () Bool)

(assert (=> b!1395529 (= e!891135 e!891134)))

(declare-fun res!630349 () Bool)

(assert (=> b!1395529 (=> res!630349 e!891134)))

(assert (=> b!1395529 (= res!630349 call!93292)))

(declare-fun b!1395530 () Bool)

(declare-fun res!630350 () Bool)

(assert (=> b!1395530 (=> res!630350 e!891133)))

(assert (=> b!1395530 (= res!630350 e!891137)))

(declare-fun res!630352 () Bool)

(assert (=> b!1395530 (=> (not res!630352) (not e!891137))))

(assert (=> b!1395530 (= res!630352 lt!464747)))

(declare-fun b!1395531 () Bool)

(assert (=> b!1395531 (= e!891133 e!891135)))

(declare-fun res!630354 () Bool)

(assert (=> b!1395531 (=> (not res!630354) (not e!891135))))

(assert (=> b!1395531 (= res!630354 (not lt!464747))))

(assert (= (and d!399260 c!229760) b!1395528))

(assert (= (and d!399260 (not c!229760)) b!1395521))

(assert (= (and d!399260 c!229761) b!1395520))

(assert (= (and d!399260 (not c!229761)) b!1395526))

(assert (= (and b!1395526 c!229762) b!1395522))

(assert (= (and b!1395526 (not c!229762)) b!1395525))

(assert (= (and b!1395525 (not res!630351)) b!1395530))

(assert (= (and b!1395530 res!630352) b!1395518))

(assert (= (and b!1395518 res!630353) b!1395519))

(assert (= (and b!1395519 res!630356) b!1395523))

(assert (= (and b!1395530 (not res!630350)) b!1395531))

(assert (= (and b!1395531 res!630354) b!1395529))

(assert (= (and b!1395529 (not res!630349)) b!1395527))

(assert (= (and b!1395527 (not res!630355)) b!1395524))

(assert (= (or b!1395520 b!1395518 b!1395529) bm!93287))

(declare-fun m!1571895 () Bool)

(assert (=> b!1395519 m!1571895))

(assert (=> b!1395519 m!1571895))

(declare-fun m!1571897 () Bool)

(assert (=> b!1395519 m!1571897))

(declare-fun m!1571899 () Bool)

(assert (=> d!399260 m!1571899))

(declare-fun m!1571901 () Bool)

(assert (=> d!399260 m!1571901))

(assert (=> b!1395524 m!1571293))

(assert (=> b!1395527 m!1571895))

(assert (=> b!1395527 m!1571895))

(assert (=> b!1395527 m!1571897))

(assert (=> bm!93287 m!1571899))

(declare-fun m!1571903 () Bool)

(assert (=> b!1395528 m!1571903))

(assert (=> b!1395523 m!1571293))

(assert (=> b!1395521 m!1571293))

(assert (=> b!1395521 m!1571293))

(declare-fun m!1571905 () Bool)

(assert (=> b!1395521 m!1571905))

(assert (=> b!1395521 m!1571895))

(assert (=> b!1395521 m!1571905))

(assert (=> b!1395521 m!1571895))

(declare-fun m!1571907 () Bool)

(assert (=> b!1395521 m!1571907))

(assert (=> b!1394972 d!399260))

(declare-fun d!399262 () Bool)

(declare-fun lt!464748 () Bool)

(assert (=> d!399262 (= lt!464748 (select (content!2089 (usedCharacters!262 (regex!2451 (rule!4214 t1!34)))) lt!464550))))

(declare-fun e!891138 () Bool)

(assert (=> d!399262 (= lt!464748 e!891138)))

(declare-fun res!630358 () Bool)

(assert (=> d!399262 (=> (not res!630358) (not e!891138))))

(assert (=> d!399262 (= res!630358 ((_ is Cons!14153) (usedCharacters!262 (regex!2451 (rule!4214 t1!34)))))))

(assert (=> d!399262 (= (contains!2737 (usedCharacters!262 (regex!2451 (rule!4214 t1!34))) lt!464550) lt!464748)))

(declare-fun b!1395532 () Bool)

(declare-fun e!891139 () Bool)

(assert (=> b!1395532 (= e!891138 e!891139)))

(declare-fun res!630357 () Bool)

(assert (=> b!1395532 (=> res!630357 e!891139)))

(assert (=> b!1395532 (= res!630357 (= (h!19554 (usedCharacters!262 (regex!2451 (rule!4214 t1!34)))) lt!464550))))

(declare-fun b!1395533 () Bool)

(assert (=> b!1395533 (= e!891139 (contains!2737 (t!122636 (usedCharacters!262 (regex!2451 (rule!4214 t1!34)))) lt!464550))))

(assert (= (and d!399262 res!630358) b!1395532))

(assert (= (and b!1395532 (not res!630357)) b!1395533))

(assert (=> d!399262 m!1571347))

(declare-fun m!1571909 () Bool)

(assert (=> d!399262 m!1571909))

(declare-fun m!1571911 () Bool)

(assert (=> d!399262 m!1571911))

(declare-fun m!1571913 () Bool)

(assert (=> b!1395533 m!1571913))

(assert (=> b!1394951 d!399262))

(declare-fun bm!93288 () Bool)

(declare-fun call!93296 () List!14219)

(declare-fun c!229766 () Bool)

(assert (=> bm!93288 (= call!93296 (usedCharacters!262 (ite c!229766 (regTwo!8043 (regex!2451 (rule!4214 t1!34))) (regOne!8042 (regex!2451 (rule!4214 t1!34))))))))

(declare-fun bm!93290 () Bool)

(declare-fun call!93293 () List!14219)

(declare-fun call!93295 () List!14219)

(assert (=> bm!93290 (= call!93293 call!93295)))

(declare-fun b!1395539 () Bool)

(declare-fun e!891143 () List!14219)

(declare-fun e!891146 () List!14219)

(assert (=> b!1395539 (= e!891143 e!891146)))

(declare-fun c!229768 () Bool)

(assert (=> b!1395539 (= c!229768 ((_ is ElementMatch!3765) (regex!2451 (rule!4214 t1!34))))))

(declare-fun b!1395540 () Bool)

(declare-fun e!891145 () List!14219)

(assert (=> b!1395540 (= e!891145 call!93295)))

(declare-fun b!1395541 () Bool)

(assert (=> b!1395541 (= e!891143 Nil!14153)))

(declare-fun b!1395542 () Bool)

(declare-fun e!891144 () List!14219)

(declare-fun call!93294 () List!14219)

(assert (=> b!1395542 (= e!891144 call!93294)))

(declare-fun b!1395543 () Bool)

(declare-fun c!229765 () Bool)

(assert (=> b!1395543 (= c!229765 ((_ is Star!3765) (regex!2451 (rule!4214 t1!34))))))

(assert (=> b!1395543 (= e!891146 e!891145)))

(declare-fun b!1395544 () Bool)

(assert (=> b!1395544 (= e!891145 e!891144)))

(assert (=> b!1395544 (= c!229766 ((_ is Union!3765) (regex!2451 (rule!4214 t1!34))))))

(declare-fun b!1395545 () Bool)

(assert (=> b!1395545 (= e!891146 (Cons!14153 (c!229639 (regex!2451 (rule!4214 t1!34))) Nil!14153))))

(declare-fun d!399264 () Bool)

(declare-fun c!229767 () Bool)

(assert (=> d!399264 (= c!229767 (or ((_ is EmptyExpr!3765) (regex!2451 (rule!4214 t1!34))) ((_ is EmptyLang!3765) (regex!2451 (rule!4214 t1!34)))))))

(assert (=> d!399264 (= (usedCharacters!262 (regex!2451 (rule!4214 t1!34))) e!891143)))

(declare-fun bm!93289 () Bool)

(assert (=> bm!93289 (= call!93295 (usedCharacters!262 (ite c!229765 (reg!4094 (regex!2451 (rule!4214 t1!34))) (ite c!229766 (regOne!8043 (regex!2451 (rule!4214 t1!34))) (regTwo!8042 (regex!2451 (rule!4214 t1!34)))))))))

(declare-fun b!1395546 () Bool)

(assert (=> b!1395546 (= e!891144 call!93294)))

(declare-fun bm!93291 () Bool)

(assert (=> bm!93291 (= call!93294 (++!3680 (ite c!229766 call!93293 call!93296) (ite c!229766 call!93296 call!93293)))))

(assert (= (and d!399264 c!229767) b!1395541))

(assert (= (and d!399264 (not c!229767)) b!1395539))

(assert (= (and b!1395539 c!229768) b!1395545))

(assert (= (and b!1395539 (not c!229768)) b!1395543))

(assert (= (and b!1395543 c!229765) b!1395540))

(assert (= (and b!1395543 (not c!229765)) b!1395544))

(assert (= (and b!1395544 c!229766) b!1395542))

(assert (= (and b!1395544 (not c!229766)) b!1395546))

(assert (= (or b!1395542 b!1395546) bm!93290))

(assert (= (or b!1395542 b!1395546) bm!93288))

(assert (= (or b!1395542 b!1395546) bm!93291))

(assert (= (or b!1395540 bm!93290) bm!93289))

(declare-fun m!1571927 () Bool)

(assert (=> bm!93288 m!1571927))

(declare-fun m!1571931 () Bool)

(assert (=> bm!93289 m!1571931))

(declare-fun m!1571933 () Bool)

(assert (=> bm!93291 m!1571933))

(assert (=> b!1394951 d!399264))

(declare-fun d!399270 () Bool)

(declare-fun lt!464752 () Bool)

(assert (=> d!399270 (= lt!464752 (select (content!2089 lt!464564) lt!464550))))

(declare-fun e!891147 () Bool)

(assert (=> d!399270 (= lt!464752 e!891147)))

(declare-fun res!630361 () Bool)

(assert (=> d!399270 (=> (not res!630361) (not e!891147))))

(assert (=> d!399270 (= res!630361 ((_ is Cons!14153) lt!464564))))

(assert (=> d!399270 (= (contains!2737 lt!464564 lt!464550) lt!464752)))

(declare-fun b!1395547 () Bool)

(declare-fun e!891148 () Bool)

(assert (=> b!1395547 (= e!891147 e!891148)))

(declare-fun res!630360 () Bool)

(assert (=> b!1395547 (=> res!630360 e!891148)))

(assert (=> b!1395547 (= res!630360 (= (h!19554 lt!464564) lt!464550))))

(declare-fun b!1395548 () Bool)

(assert (=> b!1395548 (= e!891148 (contains!2737 (t!122636 lt!464564) lt!464550))))

(assert (= (and d!399270 res!630361) b!1395547))

(assert (= (and b!1395547 (not res!630360)) b!1395548))

(declare-fun m!1571935 () Bool)

(assert (=> d!399270 m!1571935))

(declare-fun m!1571937 () Bool)

(assert (=> d!399270 m!1571937))

(declare-fun m!1571939 () Bool)

(assert (=> b!1395548 m!1571939))

(assert (=> b!1394973 d!399270))

(declare-fun d!399272 () Bool)

(declare-fun lt!464759 () C!7820)

(declare-fun apply!3586 (List!14219 Int) C!7820)

(assert (=> d!399272 (= lt!464759 (apply!3586 (list!5506 lt!464562) 0))))

(declare-fun apply!3587 (Conc!4662 Int) C!7820)

(assert (=> d!399272 (= lt!464759 (apply!3587 (c!229638 lt!464562) 0))))

(declare-fun e!891154 () Bool)

(assert (=> d!399272 e!891154))

(declare-fun res!630368 () Bool)

(assert (=> d!399272 (=> (not res!630368) (not e!891154))))

(assert (=> d!399272 (= res!630368 (<= 0 0))))

(assert (=> d!399272 (= (apply!3579 lt!464562 0) lt!464759)))

(declare-fun b!1395556 () Bool)

(assert (=> b!1395556 (= e!891154 (< 0 (size!11638 lt!464562)))))

(assert (= (and d!399272 res!630368) b!1395556))

(assert (=> d!399272 m!1571199))

(assert (=> d!399272 m!1571199))

(declare-fun m!1571953 () Bool)

(assert (=> d!399272 m!1571953))

(declare-fun m!1571955 () Bool)

(assert (=> d!399272 m!1571955))

(declare-fun m!1571957 () Bool)

(assert (=> b!1395556 m!1571957))

(assert (=> b!1394973 d!399272))

(declare-fun d!399278 () Bool)

(declare-fun lt!464764 () Bool)

(assert (=> d!399278 (= lt!464764 (isEmpty!8594 (list!5506 (_2!7769 lt!464558))))))

(declare-fun isEmpty!8596 (Conc!4662) Bool)

(assert (=> d!399278 (= lt!464764 (isEmpty!8596 (c!229638 (_2!7769 lt!464558))))))

(assert (=> d!399278 (= (isEmpty!8587 (_2!7769 lt!464558)) lt!464764)))

(declare-fun bs!337873 () Bool)

(assert (= bs!337873 d!399278))

(declare-fun m!1571975 () Bool)

(assert (=> bs!337873 m!1571975))

(assert (=> bs!337873 m!1571975))

(declare-fun m!1571977 () Bool)

(assert (=> bs!337873 m!1571977))

(declare-fun m!1571979 () Bool)

(assert (=> bs!337873 m!1571979))

(assert (=> b!1394976 d!399278))

(declare-fun b!1395567 () Bool)

(declare-fun res!630381 () Bool)

(declare-fun e!891167 () Bool)

(assert (=> b!1395567 (=> (not res!630381) (not e!891167))))

(declare-fun call!93297 () Bool)

(assert (=> b!1395567 (= res!630381 (not call!93297))))

(declare-fun b!1395568 () Bool)

(declare-fun res!630384 () Bool)

(assert (=> b!1395568 (=> (not res!630384) (not e!891167))))

(assert (=> b!1395568 (= res!630384 (isEmpty!8594 (tail!2028 lt!464553)))))

(declare-fun b!1395569 () Bool)

(declare-fun e!891166 () Bool)

(declare-fun lt!464765 () Bool)

(assert (=> b!1395569 (= e!891166 (= lt!464765 call!93297))))

(declare-fun b!1395570 () Bool)

(declare-fun e!891161 () Bool)

(assert (=> b!1395570 (= e!891161 (matchR!1756 (derivativeStep!981 lt!464552 (head!2561 lt!464553)) (tail!2028 lt!464553)))))

(declare-fun b!1395571 () Bool)

(declare-fun e!891162 () Bool)

(assert (=> b!1395571 (= e!891162 (not lt!464765))))

(declare-fun b!1395572 () Bool)

(assert (=> b!1395572 (= e!891167 (= (head!2561 lt!464553) (c!229639 lt!464552)))))

(declare-fun d!399286 () Bool)

(assert (=> d!399286 e!891166))

(declare-fun c!229771 () Bool)

(assert (=> d!399286 (= c!229771 ((_ is EmptyExpr!3765) lt!464552))))

(assert (=> d!399286 (= lt!464765 e!891161)))

(declare-fun c!229770 () Bool)

(assert (=> d!399286 (= c!229770 (isEmpty!8594 lt!464553))))

(assert (=> d!399286 (validRegex!1643 lt!464552)))

(assert (=> d!399286 (= (matchR!1756 lt!464552 lt!464553) lt!464765)))

(declare-fun b!1395573 () Bool)

(declare-fun e!891164 () Bool)

(assert (=> b!1395573 (= e!891164 (not (= (head!2561 lt!464553) (c!229639 lt!464552))))))

(declare-fun bm!93292 () Bool)

(assert (=> bm!93292 (= call!93297 (isEmpty!8594 lt!464553))))

(declare-fun b!1395574 () Bool)

(declare-fun res!630379 () Bool)

(declare-fun e!891163 () Bool)

(assert (=> b!1395574 (=> res!630379 e!891163)))

(assert (=> b!1395574 (= res!630379 (not ((_ is ElementMatch!3765) lt!464552)))))

(assert (=> b!1395574 (= e!891162 e!891163)))

(declare-fun b!1395575 () Bool)

(assert (=> b!1395575 (= e!891166 e!891162)))

(declare-fun c!229772 () Bool)

(assert (=> b!1395575 (= c!229772 ((_ is EmptyLang!3765) lt!464552))))

(declare-fun b!1395576 () Bool)

(declare-fun res!630383 () Bool)

(assert (=> b!1395576 (=> res!630383 e!891164)))

(assert (=> b!1395576 (= res!630383 (not (isEmpty!8594 (tail!2028 lt!464553))))))

(declare-fun b!1395577 () Bool)

(assert (=> b!1395577 (= e!891161 (nullable!1223 lt!464552))))

(declare-fun b!1395578 () Bool)

(declare-fun e!891165 () Bool)

(assert (=> b!1395578 (= e!891165 e!891164)))

(declare-fun res!630377 () Bool)

(assert (=> b!1395578 (=> res!630377 e!891164)))

(assert (=> b!1395578 (= res!630377 call!93297)))

(declare-fun b!1395579 () Bool)

(declare-fun res!630378 () Bool)

(assert (=> b!1395579 (=> res!630378 e!891163)))

(assert (=> b!1395579 (= res!630378 e!891167)))

(declare-fun res!630380 () Bool)

(assert (=> b!1395579 (=> (not res!630380) (not e!891167))))

(assert (=> b!1395579 (= res!630380 lt!464765)))

(declare-fun b!1395580 () Bool)

(assert (=> b!1395580 (= e!891163 e!891165)))

(declare-fun res!630382 () Bool)

(assert (=> b!1395580 (=> (not res!630382) (not e!891165))))

(assert (=> b!1395580 (= res!630382 (not lt!464765))))

(assert (= (and d!399286 c!229770) b!1395577))

(assert (= (and d!399286 (not c!229770)) b!1395570))

(assert (= (and d!399286 c!229771) b!1395569))

(assert (= (and d!399286 (not c!229771)) b!1395575))

(assert (= (and b!1395575 c!229772) b!1395571))

(assert (= (and b!1395575 (not c!229772)) b!1395574))

(assert (= (and b!1395574 (not res!630379)) b!1395579))

(assert (= (and b!1395579 res!630380) b!1395567))

(assert (= (and b!1395567 res!630381) b!1395568))

(assert (= (and b!1395568 res!630384) b!1395572))

(assert (= (and b!1395579 (not res!630378)) b!1395580))

(assert (= (and b!1395580 res!630382) b!1395578))

(assert (= (and b!1395578 (not res!630377)) b!1395576))

(assert (= (and b!1395576 (not res!630383)) b!1395573))

(assert (= (or b!1395569 b!1395567 b!1395578) bm!93292))

(declare-fun m!1571993 () Bool)

(assert (=> b!1395568 m!1571993))

(assert (=> b!1395568 m!1571993))

(declare-fun m!1571995 () Bool)

(assert (=> b!1395568 m!1571995))

(declare-fun m!1571997 () Bool)

(assert (=> d!399286 m!1571997))

(assert (=> d!399286 m!1571785))

(declare-fun m!1571999 () Bool)

(assert (=> b!1395573 m!1571999))

(assert (=> b!1395576 m!1571993))

(assert (=> b!1395576 m!1571993))

(assert (=> b!1395576 m!1571995))

(assert (=> bm!93292 m!1571997))

(declare-fun m!1572001 () Bool)

(assert (=> b!1395577 m!1572001))

(assert (=> b!1395572 m!1571999))

(assert (=> b!1395570 m!1571999))

(assert (=> b!1395570 m!1571999))

(declare-fun m!1572003 () Bool)

(assert (=> b!1395570 m!1572003))

(assert (=> b!1395570 m!1571993))

(assert (=> b!1395570 m!1572003))

(assert (=> b!1395570 m!1571993))

(declare-fun m!1572005 () Bool)

(assert (=> b!1395570 m!1572005))

(assert (=> b!1394955 d!399286))

(declare-fun b!1395581 () Bool)

(declare-fun res!630385 () Bool)

(declare-fun e!891170 () Bool)

(assert (=> b!1395581 (=> res!630385 e!891170)))

(assert (=> b!1395581 (= res!630385 (not ((_ is IntegerValue!7625) (value!79486 t1!34))))))

(declare-fun e!891169 () Bool)

(assert (=> b!1395581 (= e!891169 e!891170)))

(declare-fun b!1395582 () Bool)

(assert (=> b!1395582 (= e!891169 (inv!17 (value!79486 t1!34)))))

(declare-fun b!1395583 () Bool)

(declare-fun e!891168 () Bool)

(assert (=> b!1395583 (= e!891168 (inv!16 (value!79486 t1!34)))))

(declare-fun b!1395585 () Bool)

(assert (=> b!1395585 (= e!891168 e!891169)))

(declare-fun c!229774 () Bool)

(assert (=> b!1395585 (= c!229774 ((_ is IntegerValue!7624) (value!79486 t1!34)))))

(declare-fun d!399290 () Bool)

(declare-fun c!229773 () Bool)

(assert (=> d!399290 (= c!229773 ((_ is IntegerValue!7623) (value!79486 t1!34)))))

(assert (=> d!399290 (= (inv!21 (value!79486 t1!34)) e!891168)))

(declare-fun b!1395584 () Bool)

(assert (=> b!1395584 (= e!891170 (inv!15 (value!79486 t1!34)))))

(assert (= (and d!399290 c!229773) b!1395583))

(assert (= (and d!399290 (not c!229773)) b!1395585))

(assert (= (and b!1395585 c!229774) b!1395582))

(assert (= (and b!1395585 (not c!229774)) b!1395581))

(assert (= (and b!1395581 (not res!630385)) b!1395584))

(declare-fun m!1572007 () Bool)

(assert (=> b!1395582 m!1572007))

(declare-fun m!1572009 () Bool)

(assert (=> b!1395583 m!1572009))

(declare-fun m!1572011 () Bool)

(assert (=> b!1395584 m!1572011))

(assert (=> b!1394934 d!399290))

(declare-fun d!399292 () Bool)

(declare-fun lt!464766 () Bool)

(assert (=> d!399292 (= lt!464766 (select (content!2091 rules!2550) lt!464569))))

(declare-fun e!891171 () Bool)

(assert (=> d!399292 (= lt!464766 e!891171)))

(declare-fun res!630386 () Bool)

(assert (=> d!399292 (=> (not res!630386) (not e!891171))))

(assert (=> d!399292 (= res!630386 ((_ is Cons!14154) rules!2550))))

(assert (=> d!399292 (= (contains!2735 rules!2550 lt!464569) lt!464766)))

(declare-fun b!1395586 () Bool)

(declare-fun e!891172 () Bool)

(assert (=> b!1395586 (= e!891171 e!891172)))

(declare-fun res!630387 () Bool)

(assert (=> b!1395586 (=> res!630387 e!891172)))

(assert (=> b!1395586 (= res!630387 (= (h!19555 rules!2550) lt!464569))))

(declare-fun b!1395587 () Bool)

(assert (=> b!1395587 (= e!891172 (contains!2735 (t!122637 rules!2550) lt!464569))))

(assert (= (and d!399292 res!630386) b!1395586))

(assert (= (and b!1395586 (not res!630387)) b!1395587))

(assert (=> d!399292 m!1571625))

(declare-fun m!1572013 () Bool)

(assert (=> d!399292 m!1572013))

(declare-fun m!1572015 () Bool)

(assert (=> b!1395587 m!1572015))

(assert (=> b!1394977 d!399292))

(declare-fun d!399294 () Bool)

(declare-fun lt!464767 () Bool)

(assert (=> d!399294 (= lt!464767 (select (content!2089 lt!464564) lt!464559))))

(declare-fun e!891173 () Bool)

(assert (=> d!399294 (= lt!464767 e!891173)))

(declare-fun res!630389 () Bool)

(assert (=> d!399294 (=> (not res!630389) (not e!891173))))

(assert (=> d!399294 (= res!630389 ((_ is Cons!14153) lt!464564))))

(assert (=> d!399294 (= (contains!2737 lt!464564 lt!464559) lt!464767)))

(declare-fun b!1395588 () Bool)

(declare-fun e!891174 () Bool)

(assert (=> b!1395588 (= e!891173 e!891174)))

(declare-fun res!630388 () Bool)

(assert (=> b!1395588 (=> res!630388 e!891174)))

(assert (=> b!1395588 (= res!630388 (= (h!19554 lt!464564) lt!464559))))

(declare-fun b!1395589 () Bool)

(assert (=> b!1395589 (= e!891174 (contains!2737 (t!122636 lt!464564) lt!464559))))

(assert (= (and d!399294 res!630389) b!1395588))

(assert (= (and b!1395588 (not res!630388)) b!1395589))

(assert (=> d!399294 m!1571935))

(declare-fun m!1572017 () Bool)

(assert (=> d!399294 m!1572017))

(declare-fun m!1572019 () Bool)

(assert (=> b!1395589 m!1572019))

(assert (=> b!1394975 d!399294))

(declare-fun b!1395594 () Bool)

(declare-fun res!630394 () Bool)

(declare-fun e!891183 () Bool)

(assert (=> b!1395594 (=> (not res!630394) (not e!891183))))

(declare-fun call!93298 () Bool)

(assert (=> b!1395594 (= res!630394 (not call!93298))))

(declare-fun b!1395595 () Bool)

(declare-fun res!630397 () Bool)

(assert (=> b!1395595 (=> (not res!630397) (not e!891183))))

(assert (=> b!1395595 (= res!630397 (isEmpty!8594 (tail!2028 lt!464572)))))

(declare-fun b!1395596 () Bool)

(declare-fun e!891182 () Bool)

(declare-fun lt!464770 () Bool)

(assert (=> b!1395596 (= e!891182 (= lt!464770 call!93298))))

(declare-fun b!1395597 () Bool)

(declare-fun e!891175 () Bool)

(assert (=> b!1395597 (= e!891175 (matchR!1756 (derivativeStep!981 (regex!2451 (rule!4214 t1!34)) (head!2561 lt!464572)) (tail!2028 lt!464572)))))

(declare-fun b!1395598 () Bool)

(declare-fun e!891176 () Bool)

(assert (=> b!1395598 (= e!891176 (not lt!464770))))

(declare-fun b!1395599 () Bool)

(assert (=> b!1395599 (= e!891183 (= (head!2561 lt!464572) (c!229639 (regex!2451 (rule!4214 t1!34)))))))

(declare-fun d!399296 () Bool)

(assert (=> d!399296 e!891182))

(declare-fun c!229777 () Bool)

(assert (=> d!399296 (= c!229777 ((_ is EmptyExpr!3765) (regex!2451 (rule!4214 t1!34))))))

(assert (=> d!399296 (= lt!464770 e!891175)))

(declare-fun c!229775 () Bool)

(assert (=> d!399296 (= c!229775 (isEmpty!8594 lt!464572))))

(assert (=> d!399296 (validRegex!1643 (regex!2451 (rule!4214 t1!34)))))

(assert (=> d!399296 (= (matchR!1756 (regex!2451 (rule!4214 t1!34)) lt!464572) lt!464770)))

(declare-fun b!1395600 () Bool)

(declare-fun e!891180 () Bool)

(assert (=> b!1395600 (= e!891180 (not (= (head!2561 lt!464572) (c!229639 (regex!2451 (rule!4214 t1!34))))))))

(declare-fun bm!93293 () Bool)

(assert (=> bm!93293 (= call!93298 (isEmpty!8594 lt!464572))))

(declare-fun b!1395601 () Bool)

(declare-fun res!630392 () Bool)

(declare-fun e!891179 () Bool)

(assert (=> b!1395601 (=> res!630392 e!891179)))

(assert (=> b!1395601 (= res!630392 (not ((_ is ElementMatch!3765) (regex!2451 (rule!4214 t1!34)))))))

(assert (=> b!1395601 (= e!891176 e!891179)))

(declare-fun b!1395602 () Bool)

(assert (=> b!1395602 (= e!891182 e!891176)))

(declare-fun c!229779 () Bool)

(assert (=> b!1395602 (= c!229779 ((_ is EmptyLang!3765) (regex!2451 (rule!4214 t1!34))))))

(declare-fun b!1395603 () Bool)

(declare-fun res!630396 () Bool)

(assert (=> b!1395603 (=> res!630396 e!891180)))

(assert (=> b!1395603 (= res!630396 (not (isEmpty!8594 (tail!2028 lt!464572))))))

(declare-fun b!1395604 () Bool)

(assert (=> b!1395604 (= e!891175 (nullable!1223 (regex!2451 (rule!4214 t1!34))))))

(declare-fun b!1395605 () Bool)

(declare-fun e!891181 () Bool)

(assert (=> b!1395605 (= e!891181 e!891180)))

(declare-fun res!630390 () Bool)

(assert (=> b!1395605 (=> res!630390 e!891180)))

(assert (=> b!1395605 (= res!630390 call!93298)))

(declare-fun b!1395606 () Bool)

(declare-fun res!630391 () Bool)

(assert (=> b!1395606 (=> res!630391 e!891179)))

(assert (=> b!1395606 (= res!630391 e!891183)))

(declare-fun res!630393 () Bool)

(assert (=> b!1395606 (=> (not res!630393) (not e!891183))))

(assert (=> b!1395606 (= res!630393 lt!464770)))

(declare-fun b!1395607 () Bool)

(assert (=> b!1395607 (= e!891179 e!891181)))

(declare-fun res!630395 () Bool)

(assert (=> b!1395607 (=> (not res!630395) (not e!891181))))

(assert (=> b!1395607 (= res!630395 (not lt!464770))))

(assert (= (and d!399296 c!229775) b!1395604))

(assert (= (and d!399296 (not c!229775)) b!1395597))

(assert (= (and d!399296 c!229777) b!1395596))

(assert (= (and d!399296 (not c!229777)) b!1395602))

(assert (= (and b!1395602 c!229779) b!1395598))

(assert (= (and b!1395602 (not c!229779)) b!1395601))

(assert (= (and b!1395601 (not res!630392)) b!1395606))

(assert (= (and b!1395606 res!630393) b!1395594))

(assert (= (and b!1395594 res!630394) b!1395595))

(assert (= (and b!1395595 res!630397) b!1395599))

(assert (= (and b!1395606 (not res!630391)) b!1395607))

(assert (= (and b!1395607 res!630395) b!1395605))

(assert (= (and b!1395605 (not res!630390)) b!1395603))

(assert (= (and b!1395603 (not res!630396)) b!1395600))

(assert (= (or b!1395596 b!1395594 b!1395605) bm!93293))

(declare-fun m!1572021 () Bool)

(assert (=> b!1395595 m!1572021))

(assert (=> b!1395595 m!1572021))

(declare-fun m!1572023 () Bool)

(assert (=> b!1395595 m!1572023))

(declare-fun m!1572025 () Bool)

(assert (=> d!399296 m!1572025))

(assert (=> d!399296 m!1571435))

(assert (=> b!1395600 m!1571335))

(assert (=> b!1395603 m!1572021))

(assert (=> b!1395603 m!1572021))

(assert (=> b!1395603 m!1572023))

(assert (=> bm!93293 m!1572025))

(declare-fun m!1572027 () Bool)

(assert (=> b!1395604 m!1572027))

(assert (=> b!1395599 m!1571335))

(assert (=> b!1395597 m!1571335))

(assert (=> b!1395597 m!1571335))

(declare-fun m!1572029 () Bool)

(assert (=> b!1395597 m!1572029))

(assert (=> b!1395597 m!1572021))

(assert (=> b!1395597 m!1572029))

(assert (=> b!1395597 m!1572021))

(declare-fun m!1572031 () Bool)

(assert (=> b!1395597 m!1572031))

(assert (=> b!1394954 d!399296))

(declare-fun d!399298 () Bool)

(assert (=> d!399298 (dynLambda!6528 lambda!60585 (rule!4214 t2!34))))

(declare-fun lt!464778 () Unit!20441)

(declare-fun choose!8589 (List!14220 Int Rule!4702) Unit!20441)

(assert (=> d!399298 (= lt!464778 (choose!8589 rules!2550 lambda!60585 (rule!4214 t2!34)))))

(declare-fun e!891187 () Bool)

(assert (=> d!399298 e!891187))

(declare-fun res!630400 () Bool)

(assert (=> d!399298 (=> (not res!630400) (not e!891187))))

(declare-fun forall!3443 (List!14220 Int) Bool)

(assert (=> d!399298 (= res!630400 (forall!3443 rules!2550 lambda!60585))))

(assert (=> d!399298 (= (forallContained!646 rules!2550 lambda!60585 (rule!4214 t2!34)) lt!464778)))

(declare-fun b!1395612 () Bool)

(assert (=> b!1395612 (= e!891187 (contains!2735 rules!2550 (rule!4214 t2!34)))))

(assert (= (and d!399298 res!630400) b!1395612))

(declare-fun b_lambda!43633 () Bool)

(assert (=> (not b_lambda!43633) (not d!399298)))

(declare-fun m!1572047 () Bool)

(assert (=> d!399298 m!1572047))

(declare-fun m!1572049 () Bool)

(assert (=> d!399298 m!1572049))

(declare-fun m!1572051 () Bool)

(assert (=> d!399298 m!1572051))

(assert (=> b!1395612 m!1571255))

(assert (=> b!1394954 d!399298))

(declare-fun d!399308 () Bool)

(assert (=> d!399308 (dynLambda!6528 lambda!60585 (rule!4214 t1!34))))

(declare-fun lt!464779 () Unit!20441)

(assert (=> d!399308 (= lt!464779 (choose!8589 rules!2550 lambda!60585 (rule!4214 t1!34)))))

(declare-fun e!891188 () Bool)

(assert (=> d!399308 e!891188))

(declare-fun res!630401 () Bool)

(assert (=> d!399308 (=> (not res!630401) (not e!891188))))

(assert (=> d!399308 (= res!630401 (forall!3443 rules!2550 lambda!60585))))

(assert (=> d!399308 (= (forallContained!646 rules!2550 lambda!60585 (rule!4214 t1!34)) lt!464779)))

(declare-fun b!1395613 () Bool)

(assert (=> b!1395613 (= e!891188 (contains!2735 rules!2550 (rule!4214 t1!34)))))

(assert (= (and d!399308 res!630401) b!1395613))

(declare-fun b_lambda!43635 () Bool)

(assert (=> (not b_lambda!43635) (not d!399308)))

(declare-fun m!1572055 () Bool)

(assert (=> d!399308 m!1572055))

(declare-fun m!1572057 () Bool)

(assert (=> d!399308 m!1572057))

(assert (=> d!399308 m!1572051))

(assert (=> b!1395613 m!1571301))

(assert (=> b!1394954 d!399308))

(declare-fun d!399312 () Bool)

(assert (=> d!399312 (dynLambda!6528 lambda!60585 lt!464569)))

(declare-fun lt!464780 () Unit!20441)

(assert (=> d!399312 (= lt!464780 (choose!8589 rules!2550 lambda!60585 lt!464569))))

(declare-fun e!891189 () Bool)

(assert (=> d!399312 e!891189))

(declare-fun res!630402 () Bool)

(assert (=> d!399312 (=> (not res!630402) (not e!891189))))

(assert (=> d!399312 (= res!630402 (forall!3443 rules!2550 lambda!60585))))

(assert (=> d!399312 (= (forallContained!646 rules!2550 lambda!60585 lt!464569) lt!464780)))

(declare-fun b!1395614 () Bool)

(assert (=> b!1395614 (= e!891189 (contains!2735 rules!2550 lt!464569))))

(assert (= (and d!399312 res!630402) b!1395614))

(declare-fun b_lambda!43637 () Bool)

(assert (=> (not b_lambda!43637) (not d!399312)))

(declare-fun m!1572059 () Bool)

(assert (=> d!399312 m!1572059))

(declare-fun m!1572061 () Bool)

(assert (=> d!399312 m!1572061))

(assert (=> d!399312 m!1572051))

(assert (=> b!1395614 m!1571277))

(assert (=> b!1394954 d!399312))

(declare-fun d!399314 () Bool)

(declare-fun lt!464781 () Bool)

(assert (=> d!399314 (= lt!464781 (select (content!2091 rules!2550) (rule!4214 t2!34)))))

(declare-fun e!891190 () Bool)

(assert (=> d!399314 (= lt!464781 e!891190)))

(declare-fun res!630403 () Bool)

(assert (=> d!399314 (=> (not res!630403) (not e!891190))))

(assert (=> d!399314 (= res!630403 ((_ is Cons!14154) rules!2550))))

(assert (=> d!399314 (= (contains!2735 rules!2550 (rule!4214 t2!34)) lt!464781)))

(declare-fun b!1395615 () Bool)

(declare-fun e!891191 () Bool)

(assert (=> b!1395615 (= e!891190 e!891191)))

(declare-fun res!630404 () Bool)

(assert (=> b!1395615 (=> res!630404 e!891191)))

(assert (=> b!1395615 (= res!630404 (= (h!19555 rules!2550) (rule!4214 t2!34)))))

(declare-fun b!1395616 () Bool)

(assert (=> b!1395616 (= e!891191 (contains!2735 (t!122637 rules!2550) (rule!4214 t2!34)))))

(assert (= (and d!399314 res!630403) b!1395615))

(assert (= (and b!1395615 (not res!630404)) b!1395616))

(assert (=> d!399314 m!1571625))

(declare-fun m!1572063 () Bool)

(assert (=> d!399314 m!1572063))

(declare-fun m!1572065 () Bool)

(assert (=> b!1395616 m!1572065))

(assert (=> b!1394933 d!399314))

(declare-fun d!399316 () Bool)

(declare-fun c!229783 () Bool)

(assert (=> d!399316 (= c!229783 (isEmpty!8594 lt!464564))))

(declare-fun e!891196 () Bool)

(assert (=> d!399316 (= (prefixMatch!274 lt!464552 lt!464564) e!891196)))

(declare-fun b!1395623 () Bool)

(declare-fun lostCause!357 (Regex!3765) Bool)

(assert (=> b!1395623 (= e!891196 (not (lostCause!357 lt!464552)))))

(declare-fun b!1395624 () Bool)

(assert (=> b!1395624 (= e!891196 (prefixMatch!274 (derivativeStep!981 lt!464552 (head!2561 lt!464564)) (tail!2028 lt!464564)))))

(assert (= (and d!399316 c!229783) b!1395623))

(assert (= (and d!399316 (not c!229783)) b!1395624))

(declare-fun m!1572067 () Bool)

(assert (=> d!399316 m!1572067))

(declare-fun m!1572069 () Bool)

(assert (=> b!1395623 m!1572069))

(declare-fun m!1572071 () Bool)

(assert (=> b!1395624 m!1572071))

(assert (=> b!1395624 m!1572071))

(declare-fun m!1572073 () Bool)

(assert (=> b!1395624 m!1572073))

(declare-fun m!1572075 () Bool)

(assert (=> b!1395624 m!1572075))

(assert (=> b!1395624 m!1572073))

(assert (=> b!1395624 m!1572075))

(declare-fun m!1572077 () Bool)

(assert (=> b!1395624 m!1572077))

(assert (=> b!1394979 d!399316))

(declare-fun d!399318 () Bool)

(declare-fun lt!464785 () C!7820)

(assert (=> d!399318 (= lt!464785 (apply!3586 (list!5506 lt!464573) 0))))

(assert (=> d!399318 (= lt!464785 (apply!3587 (c!229638 lt!464573) 0))))

(declare-fun e!891197 () Bool)

(assert (=> d!399318 e!891197))

(declare-fun res!630407 () Bool)

(assert (=> d!399318 (=> (not res!630407) (not e!891197))))

(assert (=> d!399318 (= res!630407 (<= 0 0))))

(assert (=> d!399318 (= (apply!3579 lt!464573 0) lt!464785)))

(declare-fun b!1395625 () Bool)

(assert (=> b!1395625 (= e!891197 (< 0 (size!11638 lt!464573)))))

(assert (= (and d!399318 res!630407) b!1395625))

(assert (=> d!399318 m!1571287))

(assert (=> d!399318 m!1571287))

(declare-fun m!1572083 () Bool)

(assert (=> d!399318 m!1572083))

(declare-fun m!1572087 () Bool)

(assert (=> d!399318 m!1572087))

(assert (=> b!1395625 m!1571297))

(assert (=> b!1394979 d!399318))

(declare-fun lt!464798 () List!14219)

(declare-fun b!1395654 () Bool)

(declare-fun e!891212 () Bool)

(assert (=> b!1395654 (= e!891212 (or (not (= (Cons!14153 lt!464559 Nil!14153) Nil!14153)) (= lt!464798 lt!464572)))))

(declare-fun d!399322 () Bool)

(assert (=> d!399322 e!891212))

(declare-fun res!630423 () Bool)

(assert (=> d!399322 (=> (not res!630423) (not e!891212))))

(assert (=> d!399322 (= res!630423 (= (content!2089 lt!464798) ((_ map or) (content!2089 lt!464572) (content!2089 (Cons!14153 lt!464559 Nil!14153)))))))

(declare-fun e!891211 () List!14219)

(assert (=> d!399322 (= lt!464798 e!891211)))

(declare-fun c!229789 () Bool)

(assert (=> d!399322 (= c!229789 ((_ is Nil!14153) lt!464572))))

(assert (=> d!399322 (= (++!3680 lt!464572 (Cons!14153 lt!464559 Nil!14153)) lt!464798)))

(declare-fun b!1395651 () Bool)

(assert (=> b!1395651 (= e!891211 (Cons!14153 lt!464559 Nil!14153))))

(declare-fun b!1395653 () Bool)

(declare-fun res!630424 () Bool)

(assert (=> b!1395653 (=> (not res!630424) (not e!891212))))

(assert (=> b!1395653 (= res!630424 (= (size!11640 lt!464798) (+ (size!11640 lt!464572) (size!11640 (Cons!14153 lt!464559 Nil!14153)))))))

(declare-fun b!1395652 () Bool)

(assert (=> b!1395652 (= e!891211 (Cons!14153 (h!19554 lt!464572) (++!3680 (t!122636 lt!464572) (Cons!14153 lt!464559 Nil!14153))))))

(assert (= (and d!399322 c!229789) b!1395651))

(assert (= (and d!399322 (not c!229789)) b!1395652))

(assert (= (and d!399322 res!630423) b!1395653))

(assert (= (and b!1395653 res!630424) b!1395654))

(declare-fun m!1572153 () Bool)

(assert (=> d!399322 m!1572153))

(declare-fun m!1572155 () Bool)

(assert (=> d!399322 m!1572155))

(declare-fun m!1572157 () Bool)

(assert (=> d!399322 m!1572157))

(declare-fun m!1572159 () Bool)

(assert (=> b!1395653 m!1572159))

(declare-fun m!1572161 () Bool)

(assert (=> b!1395653 m!1572161))

(declare-fun m!1572163 () Bool)

(assert (=> b!1395653 m!1572163))

(declare-fun m!1572165 () Bool)

(assert (=> b!1395652 m!1572165))

(assert (=> b!1394979 d!399322))

(declare-fun d!399340 () Bool)

(assert (=> d!399340 (= (list!5506 lt!464562) (list!5510 (c!229638 lt!464562)))))

(declare-fun bs!337881 () Bool)

(assert (= bs!337881 d!399340))

(declare-fun m!1572167 () Bool)

(assert (=> bs!337881 m!1572167))

(assert (=> b!1394979 d!399340))

(declare-fun d!399342 () Bool)

(declare-fun lt!464800 () BalanceConc!9264)

(assert (=> d!399342 (= (list!5506 lt!464800) (originalCharacters!3313 t1!34))))

(assert (=> d!399342 (= lt!464800 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (value!79486 t1!34)))))

(assert (=> d!399342 (= (charsOf!1423 t1!34) lt!464800)))

(declare-fun b_lambda!43639 () Bool)

(assert (=> (not b_lambda!43639) (not d!399342)))

(declare-fun t!122663 () Bool)

(declare-fun tb!72971 () Bool)

(assert (=> (and b!1394967 (= (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toChars!3601 (transformation!2451 (rule!4214 t1!34)))) t!122663) tb!72971))

(declare-fun b!1395674 () Bool)

(declare-fun e!891223 () Bool)

(declare-fun tp!397794 () Bool)

(assert (=> b!1395674 (= e!891223 (and (inv!18487 (c!229638 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (value!79486 t1!34)))) tp!397794))))

(declare-fun result!88676 () Bool)

(assert (=> tb!72971 (= result!88676 (and (inv!18488 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (value!79486 t1!34))) e!891223))))

(assert (= tb!72971 b!1395674))

(declare-fun m!1572169 () Bool)

(assert (=> b!1395674 m!1572169))

(declare-fun m!1572171 () Bool)

(assert (=> tb!72971 m!1572171))

(assert (=> d!399342 t!122663))

(declare-fun b_and!93445 () Bool)

(assert (= b_and!93415 (and (=> t!122663 result!88676) b_and!93445)))

(declare-fun tb!72973 () Bool)

(declare-fun t!122665 () Bool)

(assert (=> (and b!1394946 (= (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (toChars!3601 (transformation!2451 (rule!4214 t1!34)))) t!122665) tb!72973))

(declare-fun result!88678 () Bool)

(assert (= result!88678 result!88676))

(assert (=> d!399342 t!122665))

(declare-fun b_and!93447 () Bool)

(assert (= b_and!93417 (and (=> t!122665 result!88678) b_and!93447)))

(declare-fun t!122667 () Bool)

(declare-fun tb!72975 () Bool)

(assert (=> (and b!1394952 (= (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (toChars!3601 (transformation!2451 (rule!4214 t1!34)))) t!122667) tb!72975))

(declare-fun result!88680 () Bool)

(assert (= result!88680 result!88676))

(assert (=> d!399342 t!122667))

(declare-fun b_and!93449 () Bool)

(assert (= b_and!93419 (and (=> t!122667 result!88680) b_and!93449)))

(declare-fun m!1572177 () Bool)

(assert (=> d!399342 m!1572177))

(declare-fun m!1572179 () Bool)

(assert (=> d!399342 m!1572179))

(assert (=> b!1394979 d!399342))

(declare-fun bs!337884 () Bool)

(declare-fun d!399344 () Bool)

(assert (= bs!337884 (and d!399344 b!1394969)))

(declare-fun lambda!60623 () Int)

(assert (=> bs!337884 (= lambda!60623 lambda!60582)))

(declare-fun lt!464806 () Unit!20441)

(declare-fun lemma!151 (List!14220 LexerInterface!2146 List!14220) Unit!20441)

(assert (=> d!399344 (= lt!464806 (lemma!151 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!159 (List!14221) Regex!3765)

(assert (=> d!399344 (= (rulesRegex!334 thiss!19762 rules!2550) (generalisedUnion!159 (map!3137 rules!2550 lambda!60623)))))

(declare-fun bs!337885 () Bool)

(assert (= bs!337885 d!399344))

(declare-fun m!1572217 () Bool)

(assert (=> bs!337885 m!1572217))

(declare-fun m!1572219 () Bool)

(assert (=> bs!337885 m!1572219))

(assert (=> bs!337885 m!1572219))

(declare-fun m!1572221 () Bool)

(assert (=> bs!337885 m!1572221))

(assert (=> b!1394979 d!399344))

(declare-fun d!399356 () Bool)

(declare-fun lt!464813 () Bool)

(declare-fun content!2093 (List!14221) (InoxSet Regex!3765))

(assert (=> d!399356 (= lt!464813 (select (content!2093 (map!3137 rules!2550 lambda!60582)) lt!464567))))

(declare-fun e!891241 () Bool)

(assert (=> d!399356 (= lt!464813 e!891241)))

(declare-fun res!630447 () Bool)

(assert (=> d!399356 (=> (not res!630447) (not e!891241))))

(assert (=> d!399356 (= res!630447 ((_ is Cons!14155) (map!3137 rules!2550 lambda!60582)))))

(assert (=> d!399356 (= (contains!2736 (map!3137 rules!2550 lambda!60582) lt!464567) lt!464813)))

(declare-fun b!1395697 () Bool)

(declare-fun e!891240 () Bool)

(assert (=> b!1395697 (= e!891241 e!891240)))

(declare-fun res!630446 () Bool)

(assert (=> b!1395697 (=> res!630446 e!891240)))

(assert (=> b!1395697 (= res!630446 (= (h!19556 (map!3137 rules!2550 lambda!60582)) lt!464567))))

(declare-fun b!1395698 () Bool)

(assert (=> b!1395698 (= e!891240 (contains!2736 (t!122638 (map!3137 rules!2550 lambda!60582)) lt!464567))))

(assert (= (and d!399356 res!630447) b!1395697))

(assert (= (and b!1395697 (not res!630446)) b!1395698))

(assert (=> d!399356 m!1571223))

(declare-fun m!1572223 () Bool)

(assert (=> d!399356 m!1572223))

(declare-fun m!1572225 () Bool)

(assert (=> d!399356 m!1572225))

(declare-fun m!1572227 () Bool)

(assert (=> b!1395698 m!1572227))

(assert (=> b!1394937 d!399356))

(assert (=> b!1394937 d!399180))

(declare-fun b!1395759 () Bool)

(declare-fun e!891274 () Regex!3765)

(assert (=> b!1395759 (= e!891274 (h!19556 (map!3137 rules!2550 lambda!60582)))))

(declare-fun b!1395761 () Bool)

(declare-fun e!891272 () Regex!3765)

(assert (=> b!1395761 (= e!891272 (getWitness!434 (t!122638 (map!3137 rules!2550 lambda!60582)) lambda!60583))))

(declare-fun b!1395762 () Bool)

(declare-fun e!891271 () Bool)

(declare-fun dynLambda!6533 (Int Regex!3765) Bool)

(assert (=> b!1395762 (= e!891271 (dynLambda!6533 lambda!60583 (h!19556 (map!3137 rules!2550 lambda!60582))))))

(declare-fun d!399358 () Bool)

(declare-fun e!891273 () Bool)

(assert (=> d!399358 e!891273))

(declare-fun res!630456 () Bool)

(assert (=> d!399358 (=> (not res!630456) (not e!891273))))

(declare-fun lt!464822 () Regex!3765)

(assert (=> d!399358 (= res!630456 (dynLambda!6533 lambda!60583 lt!464822))))

(assert (=> d!399358 (= lt!464822 e!891274)))

(declare-fun c!229811 () Bool)

(assert (=> d!399358 (= c!229811 e!891271)))

(declare-fun res!630457 () Bool)

(assert (=> d!399358 (=> (not res!630457) (not e!891271))))

(assert (=> d!399358 (= res!630457 ((_ is Cons!14155) (map!3137 rules!2550 lambda!60582)))))

(assert (=> d!399358 (exists!547 (map!3137 rules!2550 lambda!60582) lambda!60583)))

(assert (=> d!399358 (= (getWitness!434 (map!3137 rules!2550 lambda!60582) lambda!60583) lt!464822)))

(declare-fun b!1395760 () Bool)

(declare-fun lt!464821 () Unit!20441)

(declare-fun Unit!20449 () Unit!20441)

(assert (=> b!1395760 (= lt!464821 Unit!20449)))

(assert (=> b!1395760 false))

(declare-fun head!2564 (List!14221) Regex!3765)

(assert (=> b!1395760 (= e!891272 (head!2564 (map!3137 rules!2550 lambda!60582)))))

(declare-fun b!1395763 () Bool)

(assert (=> b!1395763 (= e!891274 e!891272)))

(declare-fun c!229810 () Bool)

(assert (=> b!1395763 (= c!229810 ((_ is Cons!14155) (map!3137 rules!2550 lambda!60582)))))

(declare-fun b!1395764 () Bool)

(assert (=> b!1395764 (= e!891273 (contains!2736 (map!3137 rules!2550 lambda!60582) lt!464822))))

(assert (= (and d!399358 res!630457) b!1395762))

(assert (= (and d!399358 c!229811) b!1395759))

(assert (= (and d!399358 (not c!229811)) b!1395763))

(assert (= (and b!1395763 c!229810) b!1395761))

(assert (= (and b!1395763 (not c!229810)) b!1395760))

(assert (= (and d!399358 res!630456) b!1395764))

(declare-fun b_lambda!43645 () Bool)

(assert (=> (not b_lambda!43645) (not b!1395762)))

(declare-fun b_lambda!43647 () Bool)

(assert (=> (not b_lambda!43647) (not d!399358)))

(declare-fun m!1572251 () Bool)

(assert (=> b!1395761 m!1572251))

(assert (=> b!1395760 m!1571223))

(declare-fun m!1572253 () Bool)

(assert (=> b!1395760 m!1572253))

(assert (=> b!1395764 m!1571223))

(declare-fun m!1572255 () Bool)

(assert (=> b!1395764 m!1572255))

(declare-fun m!1572257 () Bool)

(assert (=> b!1395762 m!1572257))

(declare-fun m!1572259 () Bool)

(assert (=> d!399358 m!1572259))

(assert (=> d!399358 m!1571223))

(assert (=> d!399358 m!1571229))

(assert (=> b!1394937 d!399358))

(declare-fun b!1395772 () Bool)

(declare-fun lt!464823 () List!14219)

(declare-fun e!891282 () Bool)

(assert (=> b!1395772 (= e!891282 (or (not (= (getSuffix!611 lt!464553 lt!464564) Nil!14153)) (= lt!464823 lt!464564)))))

(declare-fun d!399364 () Bool)

(assert (=> d!399364 e!891282))

(declare-fun res!630458 () Bool)

(assert (=> d!399364 (=> (not res!630458) (not e!891282))))

(assert (=> d!399364 (= res!630458 (= (content!2089 lt!464823) ((_ map or) (content!2089 lt!464564) (content!2089 (getSuffix!611 lt!464553 lt!464564)))))))

(declare-fun e!891281 () List!14219)

(assert (=> d!399364 (= lt!464823 e!891281)))

(declare-fun c!229812 () Bool)

(assert (=> d!399364 (= c!229812 ((_ is Nil!14153) lt!464564))))

(assert (=> d!399364 (= (++!3680 lt!464564 (getSuffix!611 lt!464553 lt!464564)) lt!464823)))

(declare-fun b!1395769 () Bool)

(assert (=> b!1395769 (= e!891281 (getSuffix!611 lt!464553 lt!464564))))

(declare-fun b!1395771 () Bool)

(declare-fun res!630459 () Bool)

(assert (=> b!1395771 (=> (not res!630459) (not e!891282))))

(assert (=> b!1395771 (= res!630459 (= (size!11640 lt!464823) (+ (size!11640 lt!464564) (size!11640 (getSuffix!611 lt!464553 lt!464564)))))))

(declare-fun b!1395770 () Bool)

(assert (=> b!1395770 (= e!891281 (Cons!14153 (h!19554 lt!464564) (++!3680 (t!122636 lt!464564) (getSuffix!611 lt!464553 lt!464564))))))

(assert (= (and d!399364 c!229812) b!1395769))

(assert (= (and d!399364 (not c!229812)) b!1395770))

(assert (= (and d!399364 res!630458) b!1395771))

(assert (= (and b!1395771 res!630459) b!1395772))

(declare-fun m!1572261 () Bool)

(assert (=> d!399364 m!1572261))

(assert (=> d!399364 m!1571935))

(assert (=> d!399364 m!1571341))

(declare-fun m!1572263 () Bool)

(assert (=> d!399364 m!1572263))

(declare-fun m!1572265 () Bool)

(assert (=> b!1395771 m!1572265))

(declare-fun m!1572267 () Bool)

(assert (=> b!1395771 m!1572267))

(assert (=> b!1395771 m!1571341))

(declare-fun m!1572269 () Bool)

(assert (=> b!1395771 m!1572269))

(assert (=> b!1395770 m!1571341))

(declare-fun m!1572271 () Bool)

(assert (=> b!1395770 m!1572271))

(assert (=> b!1394956 d!399364))

(declare-fun d!399366 () Bool)

(declare-fun lt!464826 () List!14219)

(assert (=> d!399366 (= (++!3680 lt!464564 lt!464826) lt!464553)))

(declare-fun e!891292 () List!14219)

(assert (=> d!399366 (= lt!464826 e!891292)))

(declare-fun c!229815 () Bool)

(assert (=> d!399366 (= c!229815 ((_ is Cons!14153) lt!464564))))

(assert (=> d!399366 (>= (size!11640 lt!464553) (size!11640 lt!464564))))

(assert (=> d!399366 (= (getSuffix!611 lt!464553 lt!464564) lt!464826)))

(declare-fun b!1395783 () Bool)

(assert (=> b!1395783 (= e!891292 (getSuffix!611 (tail!2028 lt!464553) (t!122636 lt!464564)))))

(declare-fun b!1395784 () Bool)

(assert (=> b!1395784 (= e!891292 lt!464553)))

(assert (= (and d!399366 c!229815) b!1395783))

(assert (= (and d!399366 (not c!229815)) b!1395784))

(declare-fun m!1572295 () Bool)

(assert (=> d!399366 m!1572295))

(declare-fun m!1572297 () Bool)

(assert (=> d!399366 m!1572297))

(assert (=> d!399366 m!1572267))

(assert (=> b!1395783 m!1571993))

(assert (=> b!1395783 m!1571993))

(declare-fun m!1572299 () Bool)

(assert (=> b!1395783 m!1572299))

(assert (=> b!1394956 d!399366))

(declare-fun d!399386 () Bool)

(declare-fun lt!464829 () List!14219)

(declare-fun dynLambda!6534 (Int List!14219) Bool)

(assert (=> d!399386 (dynLambda!6534 lambda!60581 lt!464829)))

(declare-fun choose!8590 (Int) List!14219)

(assert (=> d!399386 (= lt!464829 (choose!8590 lambda!60581))))

(assert (=> d!399386 (Exists!915 lambda!60581)))

(assert (=> d!399386 (= (pickWitness!218 lambda!60581) lt!464829)))

(declare-fun b_lambda!43675 () Bool)

(assert (=> (not b_lambda!43675) (not d!399386)))

(declare-fun bs!337895 () Bool)

(assert (= bs!337895 d!399386))

(declare-fun m!1572301 () Bool)

(assert (=> bs!337895 m!1572301))

(declare-fun m!1572303 () Bool)

(assert (=> bs!337895 m!1572303))

(assert (=> bs!337895 m!1571219))

(assert (=> b!1394956 d!399386))

(declare-fun d!399388 () Bool)

(declare-fun res!630467 () Bool)

(declare-fun e!891295 () Bool)

(assert (=> d!399388 (=> (not res!630467) (not e!891295))))

(assert (=> d!399388 (= res!630467 (not (isEmpty!8594 (originalCharacters!3313 t1!34))))))

(assert (=> d!399388 (= (inv!18485 t1!34) e!891295)))

(declare-fun b!1395789 () Bool)

(declare-fun res!630468 () Bool)

(assert (=> b!1395789 (=> (not res!630468) (not e!891295))))

(assert (=> b!1395789 (= res!630468 (= (originalCharacters!3313 t1!34) (list!5506 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (value!79486 t1!34)))))))

(declare-fun b!1395790 () Bool)

(assert (=> b!1395790 (= e!891295 (= (size!11637 t1!34) (size!11640 (originalCharacters!3313 t1!34))))))

(assert (= (and d!399388 res!630467) b!1395789))

(assert (= (and b!1395789 res!630468) b!1395790))

(declare-fun b_lambda!43677 () Bool)

(assert (=> (not b_lambda!43677) (not b!1395789)))

(assert (=> b!1395789 t!122663))

(declare-fun b_and!93455 () Bool)

(assert (= b_and!93445 (and (=> t!122663 result!88676) b_and!93455)))

(assert (=> b!1395789 t!122665))

(declare-fun b_and!93457 () Bool)

(assert (= b_and!93447 (and (=> t!122665 result!88678) b_and!93457)))

(assert (=> b!1395789 t!122667))

(declare-fun b_and!93459 () Bool)

(assert (= b_and!93449 (and (=> t!122667 result!88680) b_and!93459)))

(declare-fun m!1572305 () Bool)

(assert (=> d!399388 m!1572305))

(assert (=> b!1395789 m!1572179))

(assert (=> b!1395789 m!1572179))

(declare-fun m!1572307 () Bool)

(assert (=> b!1395789 m!1572307))

(declare-fun m!1572309 () Bool)

(assert (=> b!1395790 m!1572309))

(assert (=> start!126958 d!399388))

(declare-fun d!399390 () Bool)

(declare-fun res!630469 () Bool)

(declare-fun e!891296 () Bool)

(assert (=> d!399390 (=> (not res!630469) (not e!891296))))

(assert (=> d!399390 (= res!630469 (not (isEmpty!8594 (originalCharacters!3313 t2!34))))))

(assert (=> d!399390 (= (inv!18485 t2!34) e!891296)))

(declare-fun b!1395791 () Bool)

(declare-fun res!630470 () Bool)

(assert (=> b!1395791 (=> (not res!630470) (not e!891296))))

(assert (=> b!1395791 (= res!630470 (= (originalCharacters!3313 t2!34) (list!5506 (dynLambda!6522 (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (value!79486 t2!34)))))))

(declare-fun b!1395792 () Bool)

(assert (=> b!1395792 (= e!891296 (= (size!11637 t2!34) (size!11640 (originalCharacters!3313 t2!34))))))

(assert (= (and d!399390 res!630469) b!1395791))

(assert (= (and b!1395791 res!630470) b!1395792))

(declare-fun b_lambda!43679 () Bool)

(assert (=> (not b_lambda!43679) (not b!1395791)))

(assert (=> b!1395791 t!122641))

(declare-fun b_and!93461 () Bool)

(assert (= b_and!93455 (and (=> t!122641 result!88654) b_and!93461)))

(assert (=> b!1395791 t!122643))

(declare-fun b_and!93463 () Bool)

(assert (= b_and!93457 (and (=> t!122643 result!88658) b_and!93463)))

(assert (=> b!1395791 t!122645))

(declare-fun b_and!93465 () Bool)

(assert (= b_and!93459 (and (=> t!122645 result!88660) b_and!93465)))

(declare-fun m!1572311 () Bool)

(assert (=> d!399390 m!1572311))

(assert (=> b!1395791 m!1571361))

(assert (=> b!1395791 m!1571361))

(declare-fun m!1572313 () Bool)

(assert (=> b!1395791 m!1572313))

(declare-fun m!1572315 () Bool)

(assert (=> b!1395792 m!1572315))

(assert (=> start!126958 d!399390))

(declare-fun d!399392 () Bool)

(declare-fun e!891305 () Bool)

(assert (=> d!399392 e!891305))

(declare-fun c!229820 () Bool)

(declare-fun lt!464836 () tuple2!13770)

(declare-fun size!11650 (List!14222) Int)

(assert (=> d!399392 (= c!229820 (> (size!11650 (_1!7771 lt!464836)) 0))))

(declare-fun e!891303 () tuple2!13770)

(assert (=> d!399392 (= lt!464836 e!891303)))

(declare-fun c!229821 () Bool)

(declare-fun lt!464837 () Option!2714)

(assert (=> d!399392 (= c!229821 ((_ is Some!2713) lt!464837))))

(assert (=> d!399392 (= lt!464837 (maxPrefix!1120 thiss!19762 rules!2550 (list!5506 lt!464578)))))

(assert (=> d!399392 (= (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464578)) lt!464836)))

(declare-fun b!1395803 () Bool)

(declare-fun e!891304 () Bool)

(assert (=> b!1395803 (= e!891305 e!891304)))

(declare-fun res!630473 () Bool)

(assert (=> b!1395803 (= res!630473 (< (size!11640 (_2!7771 lt!464836)) (size!11640 (list!5506 lt!464578))))))

(assert (=> b!1395803 (=> (not res!630473) (not e!891304))))

(declare-fun b!1395804 () Bool)

(assert (=> b!1395804 (= e!891303 (tuple2!13771 Nil!14156 (list!5506 lt!464578)))))

(declare-fun b!1395805 () Bool)

(assert (=> b!1395805 (= e!891305 (= (_2!7771 lt!464836) (list!5506 lt!464578)))))

(declare-fun b!1395806 () Bool)

(declare-fun isEmpty!8597 (List!14222) Bool)

(assert (=> b!1395806 (= e!891304 (not (isEmpty!8597 (_1!7771 lt!464836))))))

(declare-fun b!1395807 () Bool)

(declare-fun lt!464838 () tuple2!13770)

(assert (=> b!1395807 (= e!891303 (tuple2!13771 (Cons!14156 (_1!7770 (v!21617 lt!464837)) (_1!7771 lt!464838)) (_2!7771 lt!464838)))))

(assert (=> b!1395807 (= lt!464838 (lexList!660 thiss!19762 rules!2550 (_2!7770 (v!21617 lt!464837))))))

(assert (= (and d!399392 c!229821) b!1395807))

(assert (= (and d!399392 (not c!229821)) b!1395804))

(assert (= (and d!399392 c!229820) b!1395803))

(assert (= (and d!399392 (not c!229820)) b!1395805))

(assert (= (and b!1395803 res!630473) b!1395806))

(declare-fun m!1572317 () Bool)

(assert (=> d!399392 m!1572317))

(assert (=> d!399392 m!1571263))

(declare-fun m!1572319 () Bool)

(assert (=> d!399392 m!1572319))

(declare-fun m!1572321 () Bool)

(assert (=> b!1395803 m!1572321))

(assert (=> b!1395803 m!1571263))

(declare-fun m!1572323 () Bool)

(assert (=> b!1395803 m!1572323))

(declare-fun m!1572325 () Bool)

(assert (=> b!1395806 m!1572325))

(declare-fun m!1572327 () Bool)

(assert (=> b!1395807 m!1572327))

(assert (=> b!1394978 d!399392))

(declare-fun d!399394 () Bool)

(assert (=> d!399394 (= (list!5506 lt!464578) (list!5510 (c!229638 lt!464578)))))

(declare-fun bs!337896 () Bool)

(assert (= bs!337896 d!399394))

(declare-fun m!1572329 () Bool)

(assert (=> bs!337896 m!1572329))

(assert (=> b!1394978 d!399394))

(declare-fun d!399396 () Bool)

(declare-fun prefixMatchZipperSequence!294 (Regex!3765 BalanceConc!9264) Bool)

(declare-fun ++!3682 (BalanceConc!9264 BalanceConc!9264) BalanceConc!9264)

(declare-fun singletonSeq!1106 (C!7820) BalanceConc!9264)

(assert (=> d!399396 (= (separableTokensPredicate!429 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!294 (rulesRegex!334 thiss!19762 rules!2550) (++!3682 (charsOf!1423 t1!34) (singletonSeq!1106 (apply!3579 (charsOf!1423 t2!34) 0))))))))

(declare-fun bs!337897 () Bool)

(assert (= bs!337897 d!399396))

(assert (=> bs!337897 m!1571195))

(declare-fun m!1572331 () Bool)

(assert (=> bs!337897 m!1572331))

(declare-fun m!1572333 () Bool)

(assert (=> bs!337897 m!1572333))

(assert (=> bs!337897 m!1571195))

(assert (=> bs!337897 m!1571197))

(declare-fun m!1572335 () Bool)

(assert (=> bs!337897 m!1572335))

(assert (=> bs!337897 m!1572331))

(assert (=> bs!337897 m!1571299))

(declare-fun m!1572337 () Bool)

(assert (=> bs!337897 m!1572337))

(assert (=> bs!337897 m!1572335))

(assert (=> bs!337897 m!1571197))

(assert (=> bs!337897 m!1571299))

(assert (=> bs!337897 m!1572337))

(assert (=> b!1394957 d!399396))

(declare-fun d!399398 () Bool)

(declare-fun lt!464840 () Bool)

(declare-fun e!891307 () Bool)

(assert (=> d!399398 (= lt!464840 e!891307)))

(declare-fun res!630476 () Bool)

(assert (=> d!399398 (=> (not res!630476) (not e!891307))))

(assert (=> d!399398 (= res!630476 (= (list!5505 (_1!7769 (lex!971 thiss!19762 rules!2550 (print!910 thiss!19762 (singletonSeq!1104 t1!34))))) (list!5505 (singletonSeq!1104 t1!34))))))

(declare-fun e!891306 () Bool)

(assert (=> d!399398 (= lt!464840 e!891306)))

(declare-fun res!630474 () Bool)

(assert (=> d!399398 (=> (not res!630474) (not e!891306))))

(declare-fun lt!464839 () tuple2!13766)

(assert (=> d!399398 (= res!630474 (= (size!11642 (_1!7769 lt!464839)) 1))))

(assert (=> d!399398 (= lt!464839 (lex!971 thiss!19762 rules!2550 (print!910 thiss!19762 (singletonSeq!1104 t1!34))))))

(assert (=> d!399398 (not (isEmpty!8586 rules!2550))))

(assert (=> d!399398 (= (rulesProduceIndividualToken!1115 thiss!19762 rules!2550 t1!34) lt!464840)))

(declare-fun b!1395808 () Bool)

(declare-fun res!630475 () Bool)

(assert (=> b!1395808 (=> (not res!630475) (not e!891306))))

(assert (=> b!1395808 (= res!630475 (= (apply!3583 (_1!7769 lt!464839) 0) t1!34))))

(declare-fun b!1395809 () Bool)

(assert (=> b!1395809 (= e!891306 (isEmpty!8587 (_2!7769 lt!464839)))))

(declare-fun b!1395810 () Bool)

(assert (=> b!1395810 (= e!891307 (isEmpty!8587 (_2!7769 (lex!971 thiss!19762 rules!2550 (print!910 thiss!19762 (singletonSeq!1104 t1!34))))))))

(assert (= (and d!399398 res!630474) b!1395808))

(assert (= (and b!1395808 res!630475) b!1395809))

(assert (= (and d!399398 res!630476) b!1395810))

(assert (=> d!399398 m!1571267))

(assert (=> d!399398 m!1571319))

(declare-fun m!1572339 () Bool)

(assert (=> d!399398 m!1572339))

(assert (=> d!399398 m!1571317))

(assert (=> d!399398 m!1571317))

(assert (=> d!399398 m!1571319))

(declare-fun m!1572341 () Bool)

(assert (=> d!399398 m!1572341))

(declare-fun m!1572343 () Bool)

(assert (=> d!399398 m!1572343))

(assert (=> d!399398 m!1571317))

(assert (=> d!399398 m!1571699))

(declare-fun m!1572345 () Bool)

(assert (=> b!1395808 m!1572345))

(declare-fun m!1572347 () Bool)

(assert (=> b!1395809 m!1572347))

(assert (=> b!1395810 m!1571317))

(assert (=> b!1395810 m!1571317))

(assert (=> b!1395810 m!1571319))

(assert (=> b!1395810 m!1571319))

(assert (=> b!1395810 m!1572339))

(declare-fun m!1572349 () Bool)

(assert (=> b!1395810 m!1572349))

(assert (=> b!1394960 d!399398))

(declare-fun d!399400 () Bool)

(declare-fun res!630479 () Bool)

(declare-fun e!891310 () Bool)

(assert (=> d!399400 (=> (not res!630479) (not e!891310))))

(declare-fun rulesValid!921 (LexerInterface!2146 List!14220) Bool)

(assert (=> d!399400 (= res!630479 (rulesValid!921 thiss!19762 rules!2550))))

(assert (=> d!399400 (= (rulesInvariant!2016 thiss!19762 rules!2550) e!891310)))

(declare-fun b!1395813 () Bool)

(declare-datatypes ((List!14224 0))(
  ( (Nil!14158) (Cons!14158 (h!19559 String!16941) (t!122677 List!14224)) )
))
(declare-fun noDuplicateTag!921 (LexerInterface!2146 List!14220 List!14224) Bool)

(assert (=> b!1395813 (= e!891310 (noDuplicateTag!921 thiss!19762 rules!2550 Nil!14158))))

(assert (= (and d!399400 res!630479) b!1395813))

(declare-fun m!1572351 () Bool)

(assert (=> d!399400 m!1572351))

(declare-fun m!1572353 () Bool)

(assert (=> b!1395813 m!1572353))

(assert (=> b!1394939 d!399400))

(declare-fun call!93305 () Option!2714)

(declare-fun bm!93300 () Bool)

(assert (=> bm!93300 (= call!93305 (maxPrefixOneRule!634 thiss!19762 (h!19555 rules!2550) lt!464572))))

(declare-fun b!1395814 () Bool)

(declare-fun res!630485 () Bool)

(declare-fun e!891311 () Bool)

(assert (=> b!1395814 (=> (not res!630485) (not e!891311))))

(declare-fun lt!464845 () Option!2714)

(assert (=> b!1395814 (= res!630485 (= (++!3680 (list!5506 (charsOf!1423 (_1!7770 (get!4387 lt!464845)))) (_2!7770 (get!4387 lt!464845))) lt!464572))))

(declare-fun b!1395815 () Bool)

(declare-fun res!630482 () Bool)

(assert (=> b!1395815 (=> (not res!630482) (not e!891311))))

(assert (=> b!1395815 (= res!630482 (= (list!5506 (charsOf!1423 (_1!7770 (get!4387 lt!464845)))) (originalCharacters!3313 (_1!7770 (get!4387 lt!464845)))))))

(declare-fun b!1395816 () Bool)

(declare-fun e!891312 () Option!2714)

(declare-fun lt!464843 () Option!2714)

(declare-fun lt!464841 () Option!2714)

(assert (=> b!1395816 (= e!891312 (ite (and ((_ is None!2713) lt!464843) ((_ is None!2713) lt!464841)) None!2713 (ite ((_ is None!2713) lt!464841) lt!464843 (ite ((_ is None!2713) lt!464843) lt!464841 (ite (>= (size!11637 (_1!7770 (v!21617 lt!464843))) (size!11637 (_1!7770 (v!21617 lt!464841)))) lt!464843 lt!464841)))))))

(assert (=> b!1395816 (= lt!464843 call!93305)))

(assert (=> b!1395816 (= lt!464841 (maxPrefix!1120 thiss!19762 (t!122637 rules!2550) lt!464572))))

(declare-fun b!1395817 () Bool)

(declare-fun res!630486 () Bool)

(assert (=> b!1395817 (=> (not res!630486) (not e!891311))))

(assert (=> b!1395817 (= res!630486 (= (value!79486 (_1!7770 (get!4387 lt!464845))) (apply!3584 (transformation!2451 (rule!4214 (_1!7770 (get!4387 lt!464845)))) (seqFromList!1652 (originalCharacters!3313 (_1!7770 (get!4387 lt!464845)))))))))

(declare-fun d!399402 () Bool)

(declare-fun e!891313 () Bool)

(assert (=> d!399402 e!891313))

(declare-fun res!630481 () Bool)

(assert (=> d!399402 (=> res!630481 e!891313)))

(assert (=> d!399402 (= res!630481 (isEmpty!8592 lt!464845))))

(assert (=> d!399402 (= lt!464845 e!891312)))

(declare-fun c!229822 () Bool)

(assert (=> d!399402 (= c!229822 (and ((_ is Cons!14154) rules!2550) ((_ is Nil!14154) (t!122637 rules!2550))))))

(declare-fun lt!464842 () Unit!20441)

(declare-fun lt!464844 () Unit!20441)

(assert (=> d!399402 (= lt!464842 lt!464844)))

(assert (=> d!399402 (isPrefix!1149 lt!464572 lt!464572)))

(assert (=> d!399402 (= lt!464844 (lemmaIsPrefixRefl!808 lt!464572 lt!464572))))

(assert (=> d!399402 (rulesValidInductive!791 thiss!19762 rules!2550)))

(assert (=> d!399402 (= (maxPrefix!1120 thiss!19762 rules!2550 lt!464572) lt!464845)))

(declare-fun b!1395818 () Bool)

(assert (=> b!1395818 (= e!891312 call!93305)))

(declare-fun b!1395819 () Bool)

(declare-fun res!630483 () Bool)

(assert (=> b!1395819 (=> (not res!630483) (not e!891311))))

(assert (=> b!1395819 (= res!630483 (< (size!11640 (_2!7770 (get!4387 lt!464845))) (size!11640 lt!464572)))))

(declare-fun b!1395820 () Bool)

(assert (=> b!1395820 (= e!891311 (contains!2735 rules!2550 (rule!4214 (_1!7770 (get!4387 lt!464845)))))))

(declare-fun b!1395821 () Bool)

(declare-fun res!630484 () Bool)

(assert (=> b!1395821 (=> (not res!630484) (not e!891311))))

(assert (=> b!1395821 (= res!630484 (matchR!1756 (regex!2451 (rule!4214 (_1!7770 (get!4387 lt!464845)))) (list!5506 (charsOf!1423 (_1!7770 (get!4387 lt!464845))))))))

(declare-fun b!1395822 () Bool)

(assert (=> b!1395822 (= e!891313 e!891311)))

(declare-fun res!630480 () Bool)

(assert (=> b!1395822 (=> (not res!630480) (not e!891311))))

(assert (=> b!1395822 (= res!630480 (isDefined!2236 lt!464845))))

(assert (= (and d!399402 c!229822) b!1395818))

(assert (= (and d!399402 (not c!229822)) b!1395816))

(assert (= (or b!1395818 b!1395816) bm!93300))

(assert (= (and d!399402 (not res!630481)) b!1395822))

(assert (= (and b!1395822 res!630480) b!1395815))

(assert (= (and b!1395815 res!630482) b!1395819))

(assert (= (and b!1395819 res!630483) b!1395814))

(assert (= (and b!1395814 res!630485) b!1395817))

(assert (= (and b!1395817 res!630486) b!1395821))

(assert (= (and b!1395821 res!630484) b!1395820))

(declare-fun m!1572355 () Bool)

(assert (=> b!1395822 m!1572355))

(declare-fun m!1572357 () Bool)

(assert (=> b!1395816 m!1572357))

(declare-fun m!1572359 () Bool)

(assert (=> b!1395814 m!1572359))

(declare-fun m!1572361 () Bool)

(assert (=> b!1395814 m!1572361))

(assert (=> b!1395814 m!1572361))

(declare-fun m!1572363 () Bool)

(assert (=> b!1395814 m!1572363))

(assert (=> b!1395814 m!1572363))

(declare-fun m!1572365 () Bool)

(assert (=> b!1395814 m!1572365))

(declare-fun m!1572367 () Bool)

(assert (=> bm!93300 m!1572367))

(assert (=> b!1395817 m!1572359))

(declare-fun m!1572369 () Bool)

(assert (=> b!1395817 m!1572369))

(assert (=> b!1395817 m!1572369))

(declare-fun m!1572371 () Bool)

(assert (=> b!1395817 m!1572371))

(assert (=> b!1395821 m!1572359))

(assert (=> b!1395821 m!1572361))

(assert (=> b!1395821 m!1572361))

(assert (=> b!1395821 m!1572363))

(assert (=> b!1395821 m!1572363))

(declare-fun m!1572373 () Bool)

(assert (=> b!1395821 m!1572373))

(assert (=> b!1395819 m!1572359))

(declare-fun m!1572375 () Bool)

(assert (=> b!1395819 m!1572375))

(assert (=> b!1395819 m!1572161))

(declare-fun m!1572377 () Bool)

(assert (=> d!399402 m!1572377))

(declare-fun m!1572379 () Bool)

(assert (=> d!399402 m!1572379))

(declare-fun m!1572381 () Bool)

(assert (=> d!399402 m!1572381))

(assert (=> d!399402 m!1571883))

(assert (=> b!1395815 m!1572359))

(assert (=> b!1395815 m!1572361))

(assert (=> b!1395815 m!1572361))

(assert (=> b!1395815 m!1572363))

(assert (=> b!1395820 m!1572359))

(declare-fun m!1572383 () Bool)

(assert (=> b!1395820 m!1572383))

(assert (=> b!1394961 d!399402))

(declare-fun d!399404 () Bool)

(declare-fun e!891316 () Bool)

(assert (=> d!399404 e!891316))

(declare-fun c!229823 () Bool)

(declare-fun lt!464846 () tuple2!13770)

(assert (=> d!399404 (= c!229823 (> (size!11650 (_1!7771 lt!464846)) 0))))

(declare-fun e!891314 () tuple2!13770)

(assert (=> d!399404 (= lt!464846 e!891314)))

(declare-fun c!229824 () Bool)

(declare-fun lt!464847 () Option!2714)

(assert (=> d!399404 (= c!229824 ((_ is Some!2713) lt!464847))))

(assert (=> d!399404 (= lt!464847 (maxPrefix!1120 thiss!19762 rules!2550 (list!5506 lt!464560)))))

(assert (=> d!399404 (= (lexList!660 thiss!19762 rules!2550 (list!5506 lt!464560)) lt!464846)))

(declare-fun b!1395823 () Bool)

(declare-fun e!891315 () Bool)

(assert (=> b!1395823 (= e!891316 e!891315)))

(declare-fun res!630487 () Bool)

(assert (=> b!1395823 (= res!630487 (< (size!11640 (_2!7771 lt!464846)) (size!11640 (list!5506 lt!464560))))))

(assert (=> b!1395823 (=> (not res!630487) (not e!891315))))

(declare-fun b!1395824 () Bool)

(assert (=> b!1395824 (= e!891314 (tuple2!13771 Nil!14156 (list!5506 lt!464560)))))

(declare-fun b!1395825 () Bool)

(assert (=> b!1395825 (= e!891316 (= (_2!7771 lt!464846) (list!5506 lt!464560)))))

(declare-fun b!1395826 () Bool)

(assert (=> b!1395826 (= e!891315 (not (isEmpty!8597 (_1!7771 lt!464846))))))

(declare-fun b!1395827 () Bool)

(declare-fun lt!464848 () tuple2!13770)

(assert (=> b!1395827 (= e!891314 (tuple2!13771 (Cons!14156 (_1!7770 (v!21617 lt!464847)) (_1!7771 lt!464848)) (_2!7771 lt!464848)))))

(assert (=> b!1395827 (= lt!464848 (lexList!660 thiss!19762 rules!2550 (_2!7770 (v!21617 lt!464847))))))

(assert (= (and d!399404 c!229824) b!1395827))

(assert (= (and d!399404 (not c!229824)) b!1395824))

(assert (= (and d!399404 c!229823) b!1395823))

(assert (= (and d!399404 (not c!229823)) b!1395825))

(assert (= (and b!1395823 res!630487) b!1395826))

(declare-fun m!1572385 () Bool)

(assert (=> d!399404 m!1572385))

(assert (=> d!399404 m!1571235))

(declare-fun m!1572387 () Bool)

(assert (=> d!399404 m!1572387))

(declare-fun m!1572389 () Bool)

(assert (=> b!1395823 m!1572389))

(assert (=> b!1395823 m!1571235))

(declare-fun m!1572391 () Bool)

(assert (=> b!1395823 m!1572391))

(declare-fun m!1572393 () Bool)

(assert (=> b!1395826 m!1572393))

(declare-fun m!1572395 () Bool)

(assert (=> b!1395827 m!1572395))

(assert (=> b!1394980 d!399404))

(declare-fun d!399406 () Bool)

(assert (=> d!399406 (= (list!5506 lt!464560) (list!5510 (c!229638 lt!464560)))))

(declare-fun bs!337898 () Bool)

(assert (= bs!337898 d!399406))

(declare-fun m!1572397 () Bool)

(assert (=> bs!337898 m!1572397))

(assert (=> b!1394980 d!399406))

(declare-fun d!399408 () Bool)

(declare-fun lt!464849 () Bool)

(assert (=> d!399408 (= lt!464849 (isEmpty!8594 (list!5506 (_2!7769 lt!464548))))))

(assert (=> d!399408 (= lt!464849 (isEmpty!8596 (c!229638 (_2!7769 lt!464548))))))

(assert (=> d!399408 (= (isEmpty!8587 (_2!7769 lt!464548)) lt!464849)))

(declare-fun bs!337899 () Bool)

(assert (= bs!337899 d!399408))

(declare-fun m!1572399 () Bool)

(assert (=> bs!337899 m!1572399))

(assert (=> bs!337899 m!1572399))

(declare-fun m!1572401 () Bool)

(assert (=> bs!337899 m!1572401))

(declare-fun m!1572403 () Bool)

(assert (=> bs!337899 m!1572403))

(assert (=> b!1394959 d!399408))

(declare-fun d!399410 () Bool)

(assert (=> d!399410 (not (matchR!1756 (regex!2451 (rule!4214 t2!34)) lt!464570))))

(declare-fun lt!464850 () Unit!20441)

(assert (=> d!399410 (= lt!464850 (choose!8578 (regex!2451 (rule!4214 t2!34)) lt!464570 (head!2561 lt!464570)))))

(assert (=> d!399410 (validRegex!1643 (regex!2451 (rule!4214 t2!34)))))

(assert (=> d!399410 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!196 (regex!2451 (rule!4214 t2!34)) lt!464570 (head!2561 lt!464570)) lt!464850)))

(declare-fun bs!337900 () Bool)

(assert (= bs!337900 d!399410))

(assert (=> bs!337900 m!1571217))

(assert (=> bs!337900 m!1571293))

(declare-fun m!1572405 () Bool)

(assert (=> bs!337900 m!1572405))

(assert (=> bs!337900 m!1571901))

(assert (=> b!1394938 d!399410))

(declare-fun d!399412 () Bool)

(assert (=> d!399412 (= (head!2561 lt!464570) (h!19554 lt!464570))))

(assert (=> b!1394938 d!399412))

(declare-fun d!399414 () Bool)

(assert (=> d!399414 (= (inv!18482 (tag!2713 (rule!4214 t2!34))) (= (mod (str.len (value!79485 (tag!2713 (rule!4214 t2!34)))) 2) 0))))

(assert (=> b!1394981 d!399414))

(declare-fun d!399416 () Bool)

(declare-fun res!630488 () Bool)

(declare-fun e!891317 () Bool)

(assert (=> d!399416 (=> (not res!630488) (not e!891317))))

(assert (=> d!399416 (= res!630488 (semiInverseModEq!951 (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (toValue!3742 (transformation!2451 (rule!4214 t2!34)))))))

(assert (=> d!399416 (= (inv!18486 (transformation!2451 (rule!4214 t2!34))) e!891317)))

(declare-fun b!1395828 () Bool)

(assert (=> b!1395828 (= e!891317 (equivClasses!910 (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (toValue!3742 (transformation!2451 (rule!4214 t2!34)))))))

(assert (= (and d!399416 res!630488) b!1395828))

(declare-fun m!1572407 () Bool)

(assert (=> d!399416 m!1572407))

(declare-fun m!1572409 () Bool)

(assert (=> b!1395828 m!1572409))

(assert (=> b!1394981 d!399416))

(declare-fun bs!337901 () Bool)

(declare-fun d!399418 () Bool)

(assert (= bs!337901 (and d!399418 b!1394963)))

(declare-fun lambda!60626 () Int)

(assert (=> bs!337901 (not (= lambda!60626 lambda!60584))))

(declare-fun bs!337902 () Bool)

(assert (= bs!337902 (and d!399418 b!1394954)))

(assert (=> bs!337902 (not (= lambda!60626 lambda!60585))))

(assert (=> d!399418 true))

(declare-fun order!8675 () Int)

(declare-fun dynLambda!6535 (Int Int) Int)

(assert (=> d!399418 (< (dynLambda!6535 order!8675 lambda!60584) (dynLambda!6535 order!8675 lambda!60626))))

(assert (=> d!399418 (= (exists!546 rules!2550 lambda!60584) (not (forall!3443 rules!2550 lambda!60626)))))

(declare-fun bs!337903 () Bool)

(assert (= bs!337903 d!399418))

(declare-fun m!1572411 () Bool)

(assert (=> bs!337903 m!1572411))

(assert (=> b!1394963 d!399418))

(declare-fun bs!337904 () Bool)

(declare-fun d!399420 () Bool)

(assert (= bs!337904 (and d!399420 b!1394963)))

(declare-fun lambda!60629 () Int)

(assert (=> bs!337904 (not (= lambda!60629 lambda!60584))))

(declare-fun bs!337905 () Bool)

(assert (= bs!337905 (and d!399420 b!1394954)))

(assert (=> bs!337905 (not (= lambda!60629 lambda!60585))))

(declare-fun bs!337906 () Bool)

(assert (= bs!337906 (and d!399420 d!399418)))

(assert (=> bs!337906 (not (= lambda!60629 lambda!60626))))

(assert (=> d!399420 true))

(assert (=> d!399420 true))

(declare-fun order!8677 () Int)

(declare-fun dynLambda!6536 (Int Int) Int)

(assert (=> d!399420 (< (dynLambda!6536 order!8677 lambda!60582) (dynLambda!6535 order!8675 lambda!60629))))

(assert (=> d!399420 (exists!546 rules!2550 lambda!60629)))

(declare-fun lt!464853 () Unit!20441)

(declare-fun choose!8591 (List!14220 Int Regex!3765) Unit!20441)

(assert (=> d!399420 (= lt!464853 (choose!8591 rules!2550 lambda!60582 lt!464567))))

(assert (=> d!399420 (contains!2736 (map!3137 rules!2550 lambda!60582) lt!464567)))

(assert (=> d!399420 (= (lemmaMapContains!162 rules!2550 lambda!60582 lt!464567) lt!464853)))

(declare-fun bs!337907 () Bool)

(assert (= bs!337907 d!399420))

(declare-fun m!1572413 () Bool)

(assert (=> bs!337907 m!1572413))

(declare-fun m!1572415 () Bool)

(assert (=> bs!337907 m!1572415))

(assert (=> bs!337907 m!1571223))

(assert (=> bs!337907 m!1571223))

(assert (=> bs!337907 m!1571225))

(assert (=> b!1394963 d!399420))

(declare-fun d!399422 () Bool)

(declare-fun lt!464854 () Bool)

(assert (=> d!399422 (= lt!464854 (select (content!2089 lt!464553) lt!464559))))

(declare-fun e!891318 () Bool)

(assert (=> d!399422 (= lt!464854 e!891318)))

(declare-fun res!630490 () Bool)

(assert (=> d!399422 (=> (not res!630490) (not e!891318))))

(assert (=> d!399422 (= res!630490 ((_ is Cons!14153) lt!464553))))

(assert (=> d!399422 (= (contains!2737 lt!464553 lt!464559) lt!464854)))

(declare-fun b!1395835 () Bool)

(declare-fun e!891319 () Bool)

(assert (=> b!1395835 (= e!891318 e!891319)))

(declare-fun res!630489 () Bool)

(assert (=> b!1395835 (=> res!630489 e!891319)))

(assert (=> b!1395835 (= res!630489 (= (h!19554 lt!464553) lt!464559))))

(declare-fun b!1395836 () Bool)

(assert (=> b!1395836 (= e!891319 (contains!2737 (t!122636 lt!464553) lt!464559))))

(assert (= (and d!399422 res!630490) b!1395835))

(assert (= (and b!1395835 (not res!630489)) b!1395836))

(assert (=> d!399422 m!1571889))

(declare-fun m!1572417 () Bool)

(assert (=> d!399422 m!1572417))

(declare-fun m!1572419 () Bool)

(assert (=> b!1395836 m!1572419))

(assert (=> b!1394940 d!399422))

(declare-fun d!399424 () Bool)

(assert (=> d!399424 (= (inv!18482 (tag!2713 (rule!4214 t1!34))) (= (mod (str.len (value!79485 (tag!2713 (rule!4214 t1!34)))) 2) 0))))

(assert (=> b!1394962 d!399424))

(declare-fun d!399426 () Bool)

(declare-fun res!630491 () Bool)

(declare-fun e!891320 () Bool)

(assert (=> d!399426 (=> (not res!630491) (not e!891320))))

(assert (=> d!399426 (= res!630491 (semiInverseModEq!951 (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (toValue!3742 (transformation!2451 (rule!4214 t1!34)))))))

(assert (=> d!399426 (= (inv!18486 (transformation!2451 (rule!4214 t1!34))) e!891320)))

(declare-fun b!1395837 () Bool)

(assert (=> b!1395837 (= e!891320 (equivClasses!910 (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (toValue!3742 (transformation!2451 (rule!4214 t1!34)))))))

(assert (= (and d!399426 res!630491) b!1395837))

(declare-fun m!1572421 () Bool)

(assert (=> d!399426 m!1572421))

(declare-fun m!1572423 () Bool)

(assert (=> b!1395837 m!1572423))

(assert (=> b!1394962 d!399426))

(declare-fun b!1395842 () Bool)

(declare-fun e!891323 () Bool)

(declare-fun tp_is_empty!6795 () Bool)

(declare-fun tp!397838 () Bool)

(assert (=> b!1395842 (= e!891323 (and tp_is_empty!6795 tp!397838))))

(assert (=> b!1394934 (= tp!397785 e!891323)))

(assert (= (and b!1394934 ((_ is Cons!14153) (originalCharacters!3313 t1!34))) b!1395842))

(declare-fun b!1395853 () Bool)

(declare-fun e!891326 () Bool)

(assert (=> b!1395853 (= e!891326 tp_is_empty!6795)))

(declare-fun b!1395856 () Bool)

(declare-fun tp!397849 () Bool)

(declare-fun tp!397850 () Bool)

(assert (=> b!1395856 (= e!891326 (and tp!397849 tp!397850))))

(declare-fun b!1395855 () Bool)

(declare-fun tp!397853 () Bool)

(assert (=> b!1395855 (= e!891326 tp!397853)))

(declare-fun b!1395854 () Bool)

(declare-fun tp!397851 () Bool)

(declare-fun tp!397852 () Bool)

(assert (=> b!1395854 (= e!891326 (and tp!397851 tp!397852))))

(assert (=> b!1394970 (= tp!397781 e!891326)))

(assert (= (and b!1394970 ((_ is ElementMatch!3765) (regex!2451 (h!19555 rules!2550)))) b!1395853))

(assert (= (and b!1394970 ((_ is Concat!6307) (regex!2451 (h!19555 rules!2550)))) b!1395854))

(assert (= (and b!1394970 ((_ is Star!3765) (regex!2451 (h!19555 rules!2550)))) b!1395855))

(assert (= (and b!1394970 ((_ is Union!3765) (regex!2451 (h!19555 rules!2550)))) b!1395856))

(declare-fun b!1395857 () Bool)

(declare-fun e!891327 () Bool)

(declare-fun tp!397854 () Bool)

(assert (=> b!1395857 (= e!891327 (and tp_is_empty!6795 tp!397854))))

(assert (=> b!1394965 (= tp!397784 e!891327)))

(assert (= (and b!1394965 ((_ is Cons!14153) (originalCharacters!3313 t2!34))) b!1395857))

(declare-fun b!1395858 () Bool)

(declare-fun e!891328 () Bool)

(assert (=> b!1395858 (= e!891328 tp_is_empty!6795)))

(declare-fun b!1395861 () Bool)

(declare-fun tp!397855 () Bool)

(declare-fun tp!397856 () Bool)

(assert (=> b!1395861 (= e!891328 (and tp!397855 tp!397856))))

(declare-fun b!1395860 () Bool)

(declare-fun tp!397859 () Bool)

(assert (=> b!1395860 (= e!891328 tp!397859)))

(declare-fun b!1395859 () Bool)

(declare-fun tp!397857 () Bool)

(declare-fun tp!397858 () Bool)

(assert (=> b!1395859 (= e!891328 (and tp!397857 tp!397858))))

(assert (=> b!1394981 (= tp!397778 e!891328)))

(assert (= (and b!1394981 ((_ is ElementMatch!3765) (regex!2451 (rule!4214 t2!34)))) b!1395858))

(assert (= (and b!1394981 ((_ is Concat!6307) (regex!2451 (rule!4214 t2!34)))) b!1395859))

(assert (= (and b!1394981 ((_ is Star!3765) (regex!2451 (rule!4214 t2!34)))) b!1395860))

(assert (= (and b!1394981 ((_ is Union!3765) (regex!2451 (rule!4214 t2!34)))) b!1395861))

(declare-fun b!1395862 () Bool)

(declare-fun e!891329 () Bool)

(assert (=> b!1395862 (= e!891329 tp_is_empty!6795)))

(declare-fun b!1395865 () Bool)

(declare-fun tp!397860 () Bool)

(declare-fun tp!397861 () Bool)

(assert (=> b!1395865 (= e!891329 (and tp!397860 tp!397861))))

(declare-fun b!1395864 () Bool)

(declare-fun tp!397864 () Bool)

(assert (=> b!1395864 (= e!891329 tp!397864)))

(declare-fun b!1395863 () Bool)

(declare-fun tp!397862 () Bool)

(declare-fun tp!397863 () Bool)

(assert (=> b!1395863 (= e!891329 (and tp!397862 tp!397863))))

(assert (=> b!1394962 (= tp!397780 e!891329)))

(assert (= (and b!1394962 ((_ is ElementMatch!3765) (regex!2451 (rule!4214 t1!34)))) b!1395862))

(assert (= (and b!1394962 ((_ is Concat!6307) (regex!2451 (rule!4214 t1!34)))) b!1395863))

(assert (= (and b!1394962 ((_ is Star!3765) (regex!2451 (rule!4214 t1!34)))) b!1395864))

(assert (= (and b!1394962 ((_ is Union!3765) (regex!2451 (rule!4214 t1!34)))) b!1395865))

(declare-fun b!1395876 () Bool)

(declare-fun b_free!33931 () Bool)

(declare-fun b_next!34635 () Bool)

(assert (=> b!1395876 (= b_free!33931 (not b_next!34635))))

(declare-fun tp!397874 () Bool)

(declare-fun b_and!93467 () Bool)

(assert (=> b!1395876 (= tp!397874 b_and!93467)))

(declare-fun b_free!33933 () Bool)

(declare-fun b_next!34637 () Bool)

(assert (=> b!1395876 (= b_free!33933 (not b_next!34637))))

(declare-fun tb!72981 () Bool)

(declare-fun t!122673 () Bool)

(assert (=> (and b!1395876 (= (toChars!3601 (transformation!2451 (h!19555 (t!122637 rules!2550)))) (toChars!3601 (transformation!2451 (rule!4214 t2!34)))) t!122673) tb!72981))

(declare-fun result!88698 () Bool)

(assert (= result!88698 result!88654))

(assert (=> d!399088 t!122673))

(declare-fun tb!72983 () Bool)

(declare-fun t!122675 () Bool)

(assert (=> (and b!1395876 (= (toChars!3601 (transformation!2451 (h!19555 (t!122637 rules!2550)))) (toChars!3601 (transformation!2451 (rule!4214 t1!34)))) t!122675) tb!72983))

(declare-fun result!88700 () Bool)

(assert (= result!88700 result!88676))

(assert (=> d!399342 t!122675))

(assert (=> b!1395789 t!122675))

(assert (=> b!1395791 t!122673))

(declare-fun b_and!93469 () Bool)

(declare-fun tp!397875 () Bool)

(assert (=> b!1395876 (= tp!397875 (and (=> t!122673 result!88698) (=> t!122675 result!88700) b_and!93469))))

(declare-fun e!891339 () Bool)

(assert (=> b!1395876 (= e!891339 (and tp!397874 tp!397875))))

(declare-fun tp!397873 () Bool)

(declare-fun e!891338 () Bool)

(declare-fun b!1395875 () Bool)

(assert (=> b!1395875 (= e!891338 (and tp!397873 (inv!18482 (tag!2713 (h!19555 (t!122637 rules!2550)))) (inv!18486 (transformation!2451 (h!19555 (t!122637 rules!2550)))) e!891339))))

(declare-fun b!1395874 () Bool)

(declare-fun e!891340 () Bool)

(declare-fun tp!397876 () Bool)

(assert (=> b!1395874 (= e!891340 (and e!891338 tp!397876))))

(assert (=> b!1394941 (= tp!397779 e!891340)))

(assert (= b!1395875 b!1395876))

(assert (= b!1395874 b!1395875))

(assert (= (and b!1394941 ((_ is Cons!14154) (t!122637 rules!2550))) b!1395874))

(declare-fun m!1572425 () Bool)

(assert (=> b!1395875 m!1572425))

(declare-fun m!1572427 () Bool)

(assert (=> b!1395875 m!1572427))

(declare-fun b_lambda!43681 () Bool)

(assert (= b_lambda!43647 (or b!1394969 b_lambda!43681)))

(declare-fun bs!337908 () Bool)

(declare-fun d!399428 () Bool)

(assert (= bs!337908 (and d!399428 b!1394969)))

(declare-fun res!630492 () Bool)

(declare-fun e!891342 () Bool)

(assert (=> bs!337908 (=> (not res!630492) (not e!891342))))

(assert (=> bs!337908 (= res!630492 (validRegex!1643 lt!464822))))

(assert (=> bs!337908 (= (dynLambda!6533 lambda!60583 lt!464822) e!891342)))

(declare-fun b!1395877 () Bool)

(assert (=> b!1395877 (= e!891342 (matchR!1756 lt!464822 lt!464553))))

(assert (= (and bs!337908 res!630492) b!1395877))

(declare-fun m!1572429 () Bool)

(assert (=> bs!337908 m!1572429))

(declare-fun m!1572431 () Bool)

(assert (=> b!1395877 m!1572431))

(assert (=> d!399358 d!399428))

(declare-fun b_lambda!43683 () Bool)

(assert (= b_lambda!43621 (or b!1394963 b_lambda!43683)))

(declare-fun bs!337909 () Bool)

(declare-fun d!399430 () Bool)

(assert (= bs!337909 (and d!399430 b!1394963)))

(assert (=> bs!337909 (= (dynLambda!6528 lambda!60584 (h!19555 rules!2550)) (= (regex!2451 (h!19555 rules!2550)) lt!464567))))

(assert (=> b!1395335 d!399430))

(declare-fun b_lambda!43685 () Bool)

(assert (= b_lambda!43637 (or b!1394954 b_lambda!43685)))

(declare-fun bs!337910 () Bool)

(declare-fun d!399432 () Bool)

(assert (= bs!337910 (and d!399432 b!1394954)))

(declare-fun ruleValid!610 (LexerInterface!2146 Rule!4702) Bool)

(assert (=> bs!337910 (= (dynLambda!6528 lambda!60585 lt!464569) (ruleValid!610 thiss!19762 lt!464569))))

(declare-fun m!1572433 () Bool)

(assert (=> bs!337910 m!1572433))

(assert (=> d!399312 d!399432))

(declare-fun b_lambda!43687 () Bool)

(assert (= b_lambda!43645 (or b!1394969 b_lambda!43687)))

(declare-fun bs!337911 () Bool)

(declare-fun d!399434 () Bool)

(assert (= bs!337911 (and d!399434 b!1394969)))

(declare-fun res!630493 () Bool)

(declare-fun e!891343 () Bool)

(assert (=> bs!337911 (=> (not res!630493) (not e!891343))))

(assert (=> bs!337911 (= res!630493 (validRegex!1643 (h!19556 (map!3137 rules!2550 lambda!60582))))))

(assert (=> bs!337911 (= (dynLambda!6533 lambda!60583 (h!19556 (map!3137 rules!2550 lambda!60582))) e!891343)))

(declare-fun b!1395878 () Bool)

(assert (=> b!1395878 (= e!891343 (matchR!1756 (h!19556 (map!3137 rules!2550 lambda!60582)) lt!464553))))

(assert (= (and bs!337911 res!630493) b!1395878))

(declare-fun m!1572435 () Bool)

(assert (=> bs!337911 m!1572435))

(declare-fun m!1572437 () Bool)

(assert (=> b!1395878 m!1572437))

(assert (=> b!1395762 d!399434))

(declare-fun b_lambda!43689 () Bool)

(assert (= b_lambda!43613 (or b!1394969 b_lambda!43689)))

(declare-fun bs!337912 () Bool)

(declare-fun d!399436 () Bool)

(assert (= bs!337912 (and d!399436 b!1394969)))

(assert (=> bs!337912 (= (dynLambda!6527 lambda!60582 (h!19555 rules!2550)) (regex!2451 (h!19555 rules!2550)))))

(assert (=> b!1395273 d!399436))

(declare-fun b_lambda!43691 () Bool)

(assert (= b_lambda!43623 (or b!1394963 b_lambda!43691)))

(declare-fun bs!337913 () Bool)

(declare-fun d!399438 () Bool)

(assert (= bs!337913 (and d!399438 b!1394963)))

(assert (=> bs!337913 (= (dynLambda!6528 lambda!60584 lt!464687) (= (regex!2451 lt!464687) lt!464567))))

(assert (=> d!399190 d!399438))

(declare-fun b_lambda!43693 () Bool)

(assert (= b_lambda!43633 (or b!1394954 b_lambda!43693)))

(declare-fun bs!337914 () Bool)

(declare-fun d!399440 () Bool)

(assert (= bs!337914 (and d!399440 b!1394954)))

(assert (=> bs!337914 (= (dynLambda!6528 lambda!60585 (rule!4214 t2!34)) (ruleValid!610 thiss!19762 (rule!4214 t2!34)))))

(declare-fun m!1572439 () Bool)

(assert (=> bs!337914 m!1572439))

(assert (=> d!399298 d!399440))

(declare-fun b_lambda!43695 () Bool)

(assert (= b_lambda!43679 (or (and b!1394967 b_free!33917 (= (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toChars!3601 (transformation!2451 (rule!4214 t2!34))))) (and b!1394946 b_free!33921) (and b!1394952 b_free!33925 (= (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (toChars!3601 (transformation!2451 (rule!4214 t2!34))))) (and b!1395876 b_free!33933 (= (toChars!3601 (transformation!2451 (h!19555 (t!122637 rules!2550)))) (toChars!3601 (transformation!2451 (rule!4214 t2!34))))) b_lambda!43695)))

(declare-fun b_lambda!43697 () Bool)

(assert (= b_lambda!43635 (or b!1394954 b_lambda!43697)))

(declare-fun bs!337915 () Bool)

(declare-fun d!399442 () Bool)

(assert (= bs!337915 (and d!399442 b!1394954)))

(assert (=> bs!337915 (= (dynLambda!6528 lambda!60585 (rule!4214 t1!34)) (ruleValid!610 thiss!19762 (rule!4214 t1!34)))))

(declare-fun m!1572441 () Bool)

(assert (=> bs!337915 m!1572441))

(assert (=> d!399308 d!399442))

(declare-fun b_lambda!43699 () Bool)

(assert (= b_lambda!43603 (or (and b!1394967 b_free!33917 (= (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toChars!3601 (transformation!2451 (rule!4214 t2!34))))) (and b!1394946 b_free!33921) (and b!1394952 b_free!33925 (= (toChars!3601 (transformation!2451 (rule!4214 t1!34))) (toChars!3601 (transformation!2451 (rule!4214 t2!34))))) (and b!1395876 b_free!33933 (= (toChars!3601 (transformation!2451 (h!19555 (t!122637 rules!2550)))) (toChars!3601 (transformation!2451 (rule!4214 t2!34))))) b_lambda!43699)))

(declare-fun b_lambda!43701 () Bool)

(assert (= b_lambda!43675 (or b!1394948 b_lambda!43701)))

(declare-fun bs!337916 () Bool)

(declare-fun d!399444 () Bool)

(assert (= bs!337916 (and d!399444 b!1394948)))

(declare-fun res!630494 () Bool)

(declare-fun e!891344 () Bool)

(assert (=> bs!337916 (=> (not res!630494) (not e!891344))))

(assert (=> bs!337916 (= res!630494 (matchR!1756 lt!464552 lt!464829))))

(assert (=> bs!337916 (= (dynLambda!6534 lambda!60581 lt!464829) e!891344)))

(declare-fun b!1395879 () Bool)

(assert (=> b!1395879 (= e!891344 (isPrefix!1149 lt!464564 lt!464829))))

(assert (= (and bs!337916 res!630494) b!1395879))

(declare-fun m!1572443 () Bool)

(assert (=> bs!337916 m!1572443))

(declare-fun m!1572445 () Bool)

(assert (=> b!1395879 m!1572445))

(assert (=> d!399386 d!399444))

(declare-fun b_lambda!43703 () Bool)

(assert (= b_lambda!43639 (or (and b!1394967 b_free!33917 (= (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toChars!3601 (transformation!2451 (rule!4214 t1!34))))) (and b!1394946 b_free!33921 (= (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (toChars!3601 (transformation!2451 (rule!4214 t1!34))))) (and b!1394952 b_free!33925) (and b!1395876 b_free!33933 (= (toChars!3601 (transformation!2451 (h!19555 (t!122637 rules!2550)))) (toChars!3601 (transformation!2451 (rule!4214 t1!34))))) b_lambda!43703)))

(declare-fun b_lambda!43705 () Bool)

(assert (= b_lambda!43677 (or (and b!1394967 b_free!33917 (= (toChars!3601 (transformation!2451 (h!19555 rules!2550))) (toChars!3601 (transformation!2451 (rule!4214 t1!34))))) (and b!1394946 b_free!33921 (= (toChars!3601 (transformation!2451 (rule!4214 t2!34))) (toChars!3601 (transformation!2451 (rule!4214 t1!34))))) (and b!1394952 b_free!33925) (and b!1395876 b_free!33933 (= (toChars!3601 (transformation!2451 (h!19555 (t!122637 rules!2550)))) (toChars!3601 (transformation!2451 (rule!4214 t1!34))))) b_lambda!43705)))

(check-sat (not d!399408) (not bs!337911) (not b_next!34625) (not b!1395471) (not bm!93287) (not d!399392) (not b!1395625) (not bs!337916) (not b_lambda!43705) (not bm!93278) (not b!1395789) (not b!1395770) (not b!1395616) (not b!1395342) (not b_lambda!43691) (not d!399188) (not d!399272) (not b!1395556) (not b!1395124) (not d!399220) (not b!1395595) (not b!1395791) (not bs!337915) (not b!1395125) (not d!399296) (not b_lambda!43689) (not d!399172) (not d!399312) (not b!1395474) (not b!1395821) (not b!1395822) (not b!1395698) (not b!1395854) (not b!1395341) b_and!93467 (not b_lambda!43685) (not b!1395577) (not b!1395863) (not bm!93275) (not d!399420) (not b!1395476) (not b!1395528) (not b!1395273) (not b!1395411) (not b!1395417) (not b!1395792) (not b!1395477) (not b!1395391) (not bs!337914) (not b!1395584) (not b!1395809) (not b!1395587) (not d!399418) (not d!399410) (not d!399270) (not b_next!34621) (not b!1395828) (not b!1395340) (not bm!93272) (not b_next!34627) (not d!399364) (not d!399344) (not b!1395864) (not b!1395807) (not bm!93288) (not b!1395568) (not b!1395874) (not b_next!34635) (not d!399118) (not d!399404) (not b!1395614) (not d!399196) (not d!399398) (not d!399184) b_and!93469 (not b!1395238) (not bm!93292) (not d!399204) (not b!1395123) (not b!1395524) (not b!1395236) (not b_lambda!43687) (not b!1395237) (not b_next!34619) (not b_next!34629) (not b!1395603) (not d!399200) (not d!399294) (not b_lambda!43695) (not b!1394996) (not d!399314) (not b_lambda!43693) (not d!399388) (not b_lambda!43683) (not b!1395624) (not b_lambda!43681) (not b!1395472) (not b!1395820) (not d!399396) (not d!399298) (not bm!93289) (not b!1395861) (not d!399226) (not b_next!34623) (not d!399422) (not tb!72971) (not b!1395823) (not bm!93291) (not b!1395583) (not b_lambda!43703) (not d!399262) (not b!1395475) (not b!1395352) b_and!93463 (not b!1395813) (not b!1395523) (not b!1395803) (not d!399086) (not d!399242) (not d!399394) (not b!1395790) b_and!93411 (not d!399286) (not b!1395859) (not d!399176) (not d!399190) (not b!1395613) tp_is_empty!6795 (not b!1395576) (not b!1395816) (not d!399236) (not b!1395877) (not b!1395808) (not b!1395334) (not bm!93276) (not b!1395548) (not d!399386) (not b!1395653) (not b!1395865) (not b!1395652) (not d!399228) (not b!1395339) b_and!93465 (not b!1395819) (not b!1395259) (not d!399322) (not d!399260) (not b!1395479) (not b!1395761) (not d!399366) (not b!1395827) (not b!1395599) (not b!1395817) (not d!399256) (not b_lambda!43701) (not b!1395764) (not b!1395826) (not b!1395860) (not b!1395527) (not d!399406) (not b!1395008) (not b!1395875) (not b!1395470) (not b!1395842) (not d!399128) (not b!1395151) (not b!1395814) (not bm!93236) (not b_lambda!43697) (not b!1395469) (not b!1395153) (not d!399120) (not d!399198) (not b!1395878) b_and!93407 (not d!399402) (not b_next!34637) (not d!399088) (not b!1395857) (not b!1395589) (not bm!93274) (not b!1395856) (not d!399258) (not b_lambda!43699) (not d!399090) (not b!1395604) (not tb!72953) (not b!1395600) (not b!1395855) (not b!1395572) (not d!399316) (not d!399292) (not b!1395612) (not d!399390) (not b!1395416) (not b!1395837) (not d!399340) (not bs!337908) (not b!1395806) (not d!399400) (not d!399358) b_and!93403 (not b!1395810) (not b!1395337) (not b!1395783) (not b!1395126) (not b!1395519) (not bs!337910) (not d!399180) (not d!399342) (not b!1395815) (not d!399308) (not b!1395760) (not b!1395623) (not b!1395582) (not d!399132) (not d!399416) b_and!93461 (not d!399426) (not b!1395129) (not d!399216) (not bm!93239) (not bm!93284) (not b!1395771) (not b!1395573) (not b!1395521) (not d!399318) (not b!1395836) (not bm!93300) (not b!1395533) (not bm!93237) (not b!1395597) (not b!1395879) (not b!1395674) (not b!1395570) (not b!1395332) (not d!399104) (not d!399356) (not bm!93293) (not d!399126) (not b!1395152) (not b!1395383) (not d!399278))
(check-sat (not b_next!34625) b_and!93467 (not b_next!34621) (not b_next!34627) (not b_next!34635) b_and!93469 (not b_next!34623) b_and!93463 b_and!93411 b_and!93465 b_and!93403 b_and!93461 (not b_next!34619) (not b_next!34629) b_and!93407 (not b_next!34637))
