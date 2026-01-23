; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76710 () Bool)

(assert start!76710)

(declare-fun b!854330 () Bool)

(declare-fun b_free!25897 () Bool)

(declare-fun b_next!25961 () Bool)

(assert (=> b!854330 (= b_free!25897 (not b_next!25961))))

(declare-fun tp!269372 () Bool)

(declare-fun b_and!75305 () Bool)

(assert (=> b!854330 (= tp!269372 b_and!75305)))

(declare-fun b_free!25899 () Bool)

(declare-fun b_next!25963 () Bool)

(assert (=> b!854330 (= b_free!25899 (not b_next!25963))))

(declare-fun tp!269362 () Bool)

(declare-fun b_and!75307 () Bool)

(assert (=> b!854330 (= tp!269362 b_and!75307)))

(declare-fun b!854344 () Bool)

(declare-fun b_free!25901 () Bool)

(declare-fun b_next!25965 () Bool)

(assert (=> b!854344 (= b_free!25901 (not b_next!25965))))

(declare-fun tp!269368 () Bool)

(declare-fun b_and!75309 () Bool)

(assert (=> b!854344 (= tp!269368 b_and!75309)))

(declare-fun b_free!25903 () Bool)

(declare-fun b_next!25967 () Bool)

(assert (=> b!854344 (= b_free!25903 (not b_next!25967))))

(declare-fun tp!269369 () Bool)

(declare-fun b_and!75311 () Bool)

(assert (=> b!854344 (= tp!269369 b_and!75311)))

(declare-fun b!854329 () Bool)

(declare-fun b_free!25905 () Bool)

(declare-fun b_next!25969 () Bool)

(assert (=> b!854329 (= b_free!25905 (not b_next!25969))))

(declare-fun tp!269360 () Bool)

(declare-fun b_and!75313 () Bool)

(assert (=> b!854329 (= tp!269360 b_and!75313)))

(declare-fun b_free!25907 () Bool)

(declare-fun b_next!25971 () Bool)

(assert (=> b!854329 (= b_free!25907 (not b_next!25971))))

(declare-fun tp!269366 () Bool)

(declare-fun b_and!75315 () Bool)

(assert (=> b!854329 (= tp!269366 b_and!75315)))

(declare-fun b!854328 () Bool)

(declare-fun res!390135 () Bool)

(declare-fun e!562312 () Bool)

(assert (=> b!854328 (=> (not res!390135) (not e!562312))))

(declare-datatypes ((List!9236 0))(
  ( (Nil!9220) (Cons!9220 (h!14621 (_ BitVec 16)) (t!96224 List!9236)) )
))
(declare-datatypes ((TokenValue!1796 0))(
  ( (FloatLiteralValue!3592 (text!13017 List!9236)) (TokenValueExt!1795 (__x!7323 Int)) (Broken!8980 (value!55978 List!9236)) (Object!1811) (End!1796) (Def!1796) (Underscore!1796) (Match!1796) (Else!1796) (Error!1796) (Case!1796) (If!1796) (Extends!1796) (Abstract!1796) (Class!1796) (Val!1796) (DelimiterValue!3592 (del!1856 List!9236)) (KeywordValue!1802 (value!55979 List!9236)) (CommentValue!3592 (value!55980 List!9236)) (WhitespaceValue!3592 (value!55981 List!9236)) (IndentationValue!1796 (value!55982 List!9236)) (String!10877) (Int32!1796) (Broken!8981 (value!55983 List!9236)) (Boolean!1797) (Unit!13724) (OperatorValue!1799 (op!1856 List!9236)) (IdentifierValue!3592 (value!55984 List!9236)) (IdentifierValue!3593 (value!55985 List!9236)) (WhitespaceValue!3593 (value!55986 List!9236)) (True!3592) (False!3592) (Broken!8982 (value!55987 List!9236)) (Broken!8983 (value!55988 List!9236)) (True!3593) (RightBrace!1796) (RightBracket!1796) (Colon!1796) (Null!1796) (Comma!1796) (LeftBracket!1796) (False!3593) (LeftBrace!1796) (ImaginaryLiteralValue!1796 (text!13018 List!9236)) (StringLiteralValue!5388 (value!55989 List!9236)) (EOFValue!1796 (value!55990 List!9236)) (IdentValue!1796 (value!55991 List!9236)) (DelimiterValue!3593 (value!55992 List!9236)) (DedentValue!1796 (value!55993 List!9236)) (NewLineValue!1796 (value!55994 List!9236)) (IntegerValue!5388 (value!55995 (_ BitVec 32)) (text!13019 List!9236)) (IntegerValue!5389 (value!55996 Int) (text!13020 List!9236)) (Times!1796) (Or!1796) (Equal!1796) (Minus!1796) (Broken!8984 (value!55997 List!9236)) (And!1796) (Div!1796) (LessEqual!1796) (Mod!1796) (Concat!3959) (Not!1796) (Plus!1796) (SpaceValue!1796 (value!55998 List!9236)) (IntegerValue!5390 (value!55999 Int) (text!13021 List!9236)) (StringLiteralValue!5389 (text!13022 List!9236)) (FloatLiteralValue!3593 (text!13023 List!9236)) (BytesLiteralValue!1796 (value!56000 List!9236)) (CommentValue!3593 (value!56001 List!9236)) (StringLiteralValue!5390 (value!56002 List!9236)) (ErrorTokenValue!1796 (msg!1857 List!9236)) )
))
(declare-datatypes ((C!4896 0))(
  ( (C!4897 (val!2696 Int)) )
))
(declare-datatypes ((Regex!2163 0))(
  ( (ElementMatch!2163 (c!138543 C!4896)) (Concat!3960 (regOne!4838 Regex!2163) (regTwo!4838 Regex!2163)) (EmptyExpr!2163) (Star!2163 (reg!2492 Regex!2163)) (EmptyLang!2163) (Union!2163 (regOne!4839 Regex!2163) (regTwo!4839 Regex!2163)) )
))
(declare-datatypes ((String!10878 0))(
  ( (String!10879 (value!56003 String)) )
))
(declare-datatypes ((List!9237 0))(
  ( (Nil!9221) (Cons!9221 (h!14622 C!4896) (t!96225 List!9237)) )
))
(declare-datatypes ((IArray!6115 0))(
  ( (IArray!6116 (innerList!3115 List!9237)) )
))
(declare-datatypes ((Conc!3055 0))(
  ( (Node!3055 (left!6821 Conc!3055) (right!7151 Conc!3055) (csize!6340 Int) (cheight!3266 Int)) (Leaf!4508 (xs!5744 IArray!6115) (csize!6341 Int)) (Empty!3055) )
))
(declare-datatypes ((BalanceConc!6124 0))(
  ( (BalanceConc!6125 (c!138544 Conc!3055)) )
))
(declare-datatypes ((TokenValueInjection!3292 0))(
  ( (TokenValueInjection!3293 (toValue!2779 Int) (toChars!2638 Int)) )
))
(declare-datatypes ((Rule!3260 0))(
  ( (Rule!3261 (regex!1730 Regex!2163) (tag!1992 String!10878) (isSeparator!1730 Bool) (transformation!1730 TokenValueInjection!3292)) )
))
(declare-datatypes ((Token!3126 0))(
  ( (Token!3127 (value!56004 TokenValue!1796) (rule!3153 Rule!3260) (size!7691 Int) (originalCharacters!2286 List!9237)) )
))
(declare-fun separatorToken!297 () Token!3126)

(declare-datatypes ((List!9238 0))(
  ( (Nil!9222) (Cons!9222 (h!14623 Rule!3260) (t!96226 List!9238)) )
))
(declare-fun rules!2621 () List!9238)

(declare-datatypes ((LexerInterface!1532 0))(
  ( (LexerInterfaceExt!1529 (__x!7324 Int)) (Lexer!1530) )
))
(declare-fun thiss!20117 () LexerInterface!1532)

(declare-fun rulesProduceIndividualToken!596 (LexerInterface!1532 List!9238 Token!3126) Bool)

(assert (=> b!854328 (= res!390135 (rulesProduceIndividualToken!596 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun e!562310 () Bool)

(assert (=> b!854329 (= e!562310 (and tp!269360 tp!269366))))

(declare-fun e!562321 () Bool)

(assert (=> b!854330 (= e!562321 (and tp!269372 tp!269362))))

(declare-fun b!854331 () Bool)

(declare-fun res!390139 () Bool)

(assert (=> b!854331 (=> (not res!390139) (not e!562312))))

(declare-fun isEmpty!5459 (List!9238) Bool)

(assert (=> b!854331 (= res!390139 (not (isEmpty!5459 rules!2621)))))

(declare-fun b!854332 () Bool)

(declare-fun e!562324 () Bool)

(declare-datatypes ((List!9239 0))(
  ( (Nil!9223) (Cons!9223 (h!14624 Token!3126) (t!96227 List!9239)) )
))
(declare-fun l!5107 () List!9239)

(declare-fun tp!269361 () Bool)

(declare-fun inv!11722 (String!10878) Bool)

(declare-fun inv!11725 (TokenValueInjection!3292) Bool)

(assert (=> b!854332 (= e!562324 (and tp!269361 (inv!11722 (tag!1992 (rule!3153 (h!14624 l!5107)))) (inv!11725 (transformation!1730 (rule!3153 (h!14624 l!5107)))) e!562310))))

(declare-fun b!854333 () Bool)

(declare-fun res!390137 () Bool)

(assert (=> b!854333 (=> (not res!390137) (not e!562312))))

(declare-fun rulesInvariant!1408 (LexerInterface!1532 List!9238) Bool)

(assert (=> b!854333 (= res!390137 (rulesInvariant!1408 thiss!20117 rules!2621))))

(declare-fun b!854334 () Bool)

(declare-fun res!390132 () Bool)

(assert (=> b!854334 (=> (not res!390132) (not e!562312))))

(assert (=> b!854334 (= res!390132 (isSeparator!1730 (rule!3153 separatorToken!297)))))

(declare-fun b!854335 () Bool)

(declare-fun res!390140 () Bool)

(assert (=> b!854335 (=> (not res!390140) (not e!562312))))

(declare-fun sepAndNonSepRulesDisjointChars!530 (List!9238 List!9238) Bool)

(assert (=> b!854335 (= res!390140 (sepAndNonSepRulesDisjointChars!530 rules!2621 rules!2621))))

(declare-fun b!854336 () Bool)

(declare-fun res!390138 () Bool)

(assert (=> b!854336 (=> (not res!390138) (not e!562312))))

(declare-fun rulesProduceEachTokenIndividuallyList!420 (LexerInterface!1532 List!9238 List!9239) Bool)

(assert (=> b!854336 (= res!390138 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 l!5107))))

(declare-fun e!562313 () Bool)

(declare-fun b!854337 () Bool)

(declare-fun tp!269363 () Bool)

(declare-fun e!562316 () Bool)

(declare-fun inv!11726 (Token!3126) Bool)

(assert (=> b!854337 (= e!562316 (and (inv!11726 (h!14624 l!5107)) e!562313 tp!269363))))

(declare-fun b!854338 () Bool)

(declare-fun res!390136 () Bool)

(assert (=> b!854338 (=> (not res!390136) (not e!562312))))

(declare-fun lambda!25598 () Int)

(declare-fun forall!2185 (List!9239 Int) Bool)

(assert (=> b!854338 (= res!390136 (forall!2185 l!5107 lambda!25598))))

(declare-fun b!854339 () Bool)

(declare-fun e!562323 () Bool)

(declare-fun lt!323343 () List!9239)

(declare-fun head!1482 (List!9239) Token!3126)

(assert (=> b!854339 (= e!562323 (= (head!1482 l!5107) (h!14624 lt!323343)))))

(declare-fun res!390141 () Bool)

(assert (=> start!76710 (=> (not res!390141) (not e!562312))))

(get-info :version)

(assert (=> start!76710 (= res!390141 ((_ is Lexer!1530) thiss!20117))))

(assert (=> start!76710 e!562312))

(assert (=> start!76710 true))

(declare-fun e!562317 () Bool)

(assert (=> start!76710 e!562317))

(assert (=> start!76710 e!562316))

(declare-fun e!562319 () Bool)

(assert (=> start!76710 (and (inv!11726 separatorToken!297) e!562319)))

(declare-fun tp!269365 () Bool)

(declare-fun e!562320 () Bool)

(declare-fun e!562314 () Bool)

(declare-fun b!854340 () Bool)

(assert (=> b!854340 (= e!562314 (and tp!269365 (inv!11722 (tag!1992 (h!14623 rules!2621))) (inv!11725 (transformation!1730 (h!14623 rules!2621))) e!562320))))

(declare-fun b!854341 () Bool)

(declare-fun res!390134 () Bool)

(assert (=> b!854341 (=> res!390134 e!562323)))

(declare-fun withSeparatorTokenList!62 (LexerInterface!1532 List!9239 Token!3126) List!9239)

(declare-fun tail!1042 (List!9239) List!9239)

(assert (=> b!854341 (= res!390134 (not (= (t!96227 (t!96227 lt!323343)) (withSeparatorTokenList!62 thiss!20117 (tail!1042 l!5107) separatorToken!297))))))

(declare-fun tp!269364 () Bool)

(declare-fun b!854342 () Bool)

(declare-fun inv!21 (TokenValue!1796) Bool)

(assert (=> b!854342 (= e!562313 (and (inv!21 (value!56004 (h!14624 l!5107))) e!562324 tp!269364))))

(declare-fun e!562318 () Bool)

(declare-fun b!854343 () Bool)

(declare-fun tp!269367 () Bool)

(assert (=> b!854343 (= e!562319 (and (inv!21 (value!56004 separatorToken!297)) e!562318 tp!269367))))

(assert (=> b!854344 (= e!562320 (and tp!269368 tp!269369))))

(declare-fun b!854345 () Bool)

(assert (=> b!854345 (= e!562312 (not e!562323))))

(declare-fun res!390133 () Bool)

(assert (=> b!854345 (=> res!390133 e!562323)))

(assert (=> b!854345 (= res!390133 (or (not ((_ is Cons!9223) lt!323343)) (not ((_ is Cons!9223) (t!96227 lt!323343)))))))

(assert (=> b!854345 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 lt!323343)))

(assert (=> b!854345 (= lt!323343 (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13725 0))(
  ( (Unit!13726) )
))
(declare-fun lt!323342 () Unit!13725)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!62 (LexerInterface!1532 List!9238 List!9239 Token!3126) Unit!13725)

(assert (=> b!854345 (= lt!323342 (withSeparatorTokenListPreservesRulesProduceTokens!62 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!854346 () Bool)

(declare-fun tp!269370 () Bool)

(assert (=> b!854346 (= e!562317 (and e!562314 tp!269370))))

(declare-fun b!854347 () Bool)

(declare-fun tp!269371 () Bool)

(assert (=> b!854347 (= e!562318 (and tp!269371 (inv!11722 (tag!1992 (rule!3153 separatorToken!297))) (inv!11725 (transformation!1730 (rule!3153 separatorToken!297))) e!562321))))

(assert (= (and start!76710 res!390141) b!854331))

(assert (= (and b!854331 res!390139) b!854333))

(assert (= (and b!854333 res!390137) b!854336))

(assert (= (and b!854336 res!390138) b!854328))

(assert (= (and b!854328 res!390135) b!854334))

(assert (= (and b!854334 res!390132) b!854338))

(assert (= (and b!854338 res!390136) b!854335))

(assert (= (and b!854335 res!390140) b!854345))

(assert (= (and b!854345 (not res!390133)) b!854341))

(assert (= (and b!854341 (not res!390134)) b!854339))

(assert (= b!854340 b!854344))

(assert (= b!854346 b!854340))

(assert (= (and start!76710 ((_ is Cons!9222) rules!2621)) b!854346))

(assert (= b!854332 b!854329))

(assert (= b!854342 b!854332))

(assert (= b!854337 b!854342))

(assert (= (and start!76710 ((_ is Cons!9223) l!5107)) b!854337))

(assert (= b!854347 b!854330))

(assert (= b!854343 b!854347))

(assert (= start!76710 b!854343))

(declare-fun m!1094649 () Bool)

(assert (=> b!854335 m!1094649))

(declare-fun m!1094651 () Bool)

(assert (=> b!854342 m!1094651))

(declare-fun m!1094653 () Bool)

(assert (=> b!854338 m!1094653))

(declare-fun m!1094655 () Bool)

(assert (=> b!854341 m!1094655))

(assert (=> b!854341 m!1094655))

(declare-fun m!1094657 () Bool)

(assert (=> b!854341 m!1094657))

(declare-fun m!1094659 () Bool)

(assert (=> b!854333 m!1094659))

(declare-fun m!1094661 () Bool)

(assert (=> b!854336 m!1094661))

(declare-fun m!1094663 () Bool)

(assert (=> b!854337 m!1094663))

(declare-fun m!1094665 () Bool)

(assert (=> b!854328 m!1094665))

(declare-fun m!1094667 () Bool)

(assert (=> b!854340 m!1094667))

(declare-fun m!1094669 () Bool)

(assert (=> b!854340 m!1094669))

(declare-fun m!1094671 () Bool)

(assert (=> b!854343 m!1094671))

(declare-fun m!1094673 () Bool)

(assert (=> b!854339 m!1094673))

(declare-fun m!1094675 () Bool)

(assert (=> start!76710 m!1094675))

(declare-fun m!1094677 () Bool)

(assert (=> b!854347 m!1094677))

(declare-fun m!1094679 () Bool)

(assert (=> b!854347 m!1094679))

(declare-fun m!1094681 () Bool)

(assert (=> b!854345 m!1094681))

(declare-fun m!1094683 () Bool)

(assert (=> b!854345 m!1094683))

(declare-fun m!1094685 () Bool)

(assert (=> b!854345 m!1094685))

(declare-fun m!1094687 () Bool)

(assert (=> b!854332 m!1094687))

(declare-fun m!1094689 () Bool)

(assert (=> b!854332 m!1094689))

(declare-fun m!1094691 () Bool)

(assert (=> b!854331 m!1094691))

(check-sat (not b_next!25967) (not b!854328) (not b!854343) (not b!854332) (not b!854337) (not b!854339) b_and!75313 b_and!75309 b_and!75305 (not b!854347) (not b!854345) (not b_next!25969) (not b_next!25961) (not b_next!25963) b_and!75315 (not b!854335) (not b!854340) (not b_next!25965) b_and!75311 (not b!854342) (not b!854346) (not b!854331) (not b!854338) (not start!76710) (not b!854341) b_and!75307 (not b_next!25971) (not b!854333) (not b!854336))
(check-sat (not b_next!25967) b_and!75313 b_and!75309 b_and!75305 (not b_next!25969) (not b_next!25961) (not b_next!25963) b_and!75315 (not b_next!25965) b_and!75311 b_and!75307 (not b_next!25971))
(get-model)

(declare-fun d!267029 () Bool)

(declare-fun res!390165 () Bool)

(declare-fun e!562340 () Bool)

(assert (=> d!267029 (=> (not res!390165) (not e!562340))))

(declare-fun rulesValid!607 (LexerInterface!1532 List!9238) Bool)

(assert (=> d!267029 (= res!390165 (rulesValid!607 thiss!20117 rules!2621))))

(assert (=> d!267029 (= (rulesInvariant!1408 thiss!20117 rules!2621) e!562340)))

(declare-fun b!854367 () Bool)

(declare-datatypes ((List!9241 0))(
  ( (Nil!9225) (Cons!9225 (h!14626 String!10878) (t!96275 List!9241)) )
))
(declare-fun noDuplicateTag!607 (LexerInterface!1532 List!9238 List!9241) Bool)

(assert (=> b!854367 (= e!562340 (noDuplicateTag!607 thiss!20117 rules!2621 Nil!9225))))

(assert (= (and d!267029 res!390165) b!854367))

(declare-fun m!1094713 () Bool)

(assert (=> d!267029 m!1094713))

(declare-fun m!1094715 () Bool)

(assert (=> b!854367 m!1094715))

(assert (=> b!854333 d!267029))

(declare-fun d!267033 () Bool)

(assert (=> d!267033 (= (inv!11722 (tag!1992 (rule!3153 (h!14624 l!5107)))) (= (mod (str.len (value!56003 (tag!1992 (rule!3153 (h!14624 l!5107))))) 2) 0))))

(assert (=> b!854332 d!267033))

(declare-fun d!267035 () Bool)

(declare-fun res!390168 () Bool)

(declare-fun e!562343 () Bool)

(assert (=> d!267035 (=> (not res!390168) (not e!562343))))

(declare-fun semiInverseModEq!676 (Int Int) Bool)

(assert (=> d!267035 (= res!390168 (semiInverseModEq!676 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107))))))))

(assert (=> d!267035 (= (inv!11725 (transformation!1730 (rule!3153 (h!14624 l!5107)))) e!562343)))

(declare-fun b!854370 () Bool)

(declare-fun equivClasses!643 (Int Int) Bool)

(assert (=> b!854370 (= e!562343 (equivClasses!643 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107))))))))

(assert (= (and d!267035 res!390168) b!854370))

(declare-fun m!1094717 () Bool)

(assert (=> d!267035 m!1094717))

(declare-fun m!1094719 () Bool)

(assert (=> b!854370 m!1094719))

(assert (=> b!854332 d!267035))

(declare-fun b!854381 () Bool)

(declare-fun e!562352 () Bool)

(declare-fun inv!16 (TokenValue!1796) Bool)

(assert (=> b!854381 (= e!562352 (inv!16 (value!56004 separatorToken!297)))))

(declare-fun b!854382 () Bool)

(declare-fun e!562351 () Bool)

(assert (=> b!854382 (= e!562352 e!562351)))

(declare-fun c!138550 () Bool)

(assert (=> b!854382 (= c!138550 ((_ is IntegerValue!5389) (value!56004 separatorToken!297)))))

(declare-fun b!854383 () Bool)

(declare-fun res!390171 () Bool)

(declare-fun e!562350 () Bool)

(assert (=> b!854383 (=> res!390171 e!562350)))

(assert (=> b!854383 (= res!390171 (not ((_ is IntegerValue!5390) (value!56004 separatorToken!297))))))

(assert (=> b!854383 (= e!562351 e!562350)))

(declare-fun b!854384 () Bool)

(declare-fun inv!15 (TokenValue!1796) Bool)

(assert (=> b!854384 (= e!562350 (inv!15 (value!56004 separatorToken!297)))))

(declare-fun b!854385 () Bool)

(declare-fun inv!17 (TokenValue!1796) Bool)

(assert (=> b!854385 (= e!562351 (inv!17 (value!56004 separatorToken!297)))))

(declare-fun d!267037 () Bool)

(declare-fun c!138549 () Bool)

(assert (=> d!267037 (= c!138549 ((_ is IntegerValue!5388) (value!56004 separatorToken!297)))))

(assert (=> d!267037 (= (inv!21 (value!56004 separatorToken!297)) e!562352)))

(assert (= (and d!267037 c!138549) b!854381))

(assert (= (and d!267037 (not c!138549)) b!854382))

(assert (= (and b!854382 c!138550) b!854385))

(assert (= (and b!854382 (not c!138550)) b!854383))

(assert (= (and b!854383 (not res!390171)) b!854384))

(declare-fun m!1094721 () Bool)

(assert (=> b!854381 m!1094721))

(declare-fun m!1094723 () Bool)

(assert (=> b!854384 m!1094723))

(declare-fun m!1094725 () Bool)

(assert (=> b!854385 m!1094725))

(assert (=> b!854343 d!267037))

(declare-fun b!854410 () Bool)

(declare-fun e!562369 () List!9237)

(assert (=> b!854410 (= e!562369 Nil!9221)))

(declare-fun b!854411 () Bool)

(declare-fun e!562374 () Bool)

(declare-fun printList!480 (LexerInterface!1532 List!9239) List!9237)

(declare-fun $colon$colon!93 (List!9239 Token!3126) List!9239)

(assert (=> b!854411 (= e!562374 (= (printList!480 thiss!20117 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107)))) e!562369))))

(declare-fun c!138557 () Bool)

(declare-fun lt!323366 () List!9239)

(assert (=> b!854411 (= c!138557 ((_ is Cons!9223) lt!323366))))

(assert (=> b!854411 (= lt!323366 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107))))))

(declare-fun b!854412 () Bool)

(declare-fun e!562371 () Bool)

(declare-fun e!562370 () Bool)

(assert (=> b!854412 (= e!562371 e!562370)))

(declare-fun res!390184 () Bool)

(assert (=> b!854412 (=> res!390184 e!562370)))

(assert (=> b!854412 (= res!390184 (not ((_ is Cons!9223) (tail!1042 l!5107))))))

(declare-fun b!854413 () Bool)

(declare-fun e!562373 () List!9237)

(assert (=> b!854413 (= e!562373 Nil!9221)))

(declare-fun b!854414 () Bool)

(declare-fun ++!2388 (List!9237 List!9237) List!9237)

(declare-fun list!3629 (BalanceConc!6124) List!9237)

(declare-fun charsOf!997 (Token!3126) BalanceConc!6124)

(assert (=> b!854414 (= e!562369 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323366))) (printList!480 thiss!20117 (t!96227 lt!323366))))))

(declare-fun b!854415 () Bool)

(declare-fun e!562372 () List!9239)

(assert (=> b!854415 (= e!562372 Nil!9223)))

(declare-fun d!267039 () Bool)

(declare-fun lt!323362 () List!9239)

(declare-fun printWithSeparatorTokenList!38 (LexerInterface!1532 List!9239 Token!3126) List!9237)

(assert (=> d!267039 (= (printList!480 thiss!20117 lt!323362) (printWithSeparatorTokenList!38 thiss!20117 (tail!1042 l!5107) separatorToken!297))))

(assert (=> d!267039 (= lt!323362 e!562372)))

(declare-fun c!138558 () Bool)

(assert (=> d!267039 (= c!138558 ((_ is Cons!9223) (tail!1042 l!5107)))))

(assert (=> d!267039 e!562371))

(declare-fun res!390186 () Bool)

(assert (=> d!267039 (=> (not res!390186) (not e!562371))))

(assert (=> d!267039 (= res!390186 (isSeparator!1730 (rule!3153 separatorToken!297)))))

(assert (=> d!267039 (= (withSeparatorTokenList!62 thiss!20117 (tail!1042 l!5107) separatorToken!297) lt!323362)))

(declare-fun b!854416 () Bool)

(assert (=> b!854416 (= e!562372 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107))))))

(declare-fun lt!323365 () List!9237)

(assert (=> b!854416 (= lt!323365 (list!3629 (charsOf!997 (h!14624 (tail!1042 l!5107)))))))

(declare-fun lt!323369 () List!9237)

(assert (=> b!854416 (= lt!323369 (list!3629 (charsOf!997 separatorToken!297)))))

(declare-fun lt!323364 () List!9237)

(assert (=> b!854416 (= lt!323364 (printList!480 thiss!20117 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297)))))

(declare-fun lt!323368 () Unit!13725)

(declare-fun lemmaConcatAssociativity!755 (List!9237 List!9237 List!9237) Unit!13725)

(assert (=> b!854416 (= lt!323368 (lemmaConcatAssociativity!755 lt!323365 lt!323369 lt!323364))))

(assert (=> b!854416 (= (++!2388 (++!2388 lt!323365 lt!323369) lt!323364) (++!2388 lt!323365 (++!2388 lt!323369 lt!323364)))))

(declare-fun lt!323363 () Unit!13725)

(assert (=> b!854416 (= lt!323363 lt!323368)))

(declare-fun b!854417 () Bool)

(assert (=> b!854417 (= e!562370 (= (printList!480 thiss!20117 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297)) e!562373))))

(declare-fun c!138559 () Bool)

(declare-fun lt!323367 () List!9239)

(assert (=> b!854417 (= c!138559 ((_ is Cons!9223) lt!323367))))

(assert (=> b!854417 (= lt!323367 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!854418 () Bool)

(declare-fun res!390185 () Bool)

(assert (=> b!854418 (=> (not res!390185) (not e!562371))))

(assert (=> b!854418 (= res!390185 e!562374)))

(declare-fun res!390187 () Bool)

(assert (=> b!854418 (=> res!390187 e!562374)))

(assert (=> b!854418 (= res!390187 (not ((_ is Cons!9223) (tail!1042 l!5107))))))

(declare-fun b!854419 () Bool)

(assert (=> b!854419 (= e!562373 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323367))) (printList!480 thiss!20117 (t!96227 lt!323367))))))

(assert (= (and d!267039 res!390186) b!854418))

(assert (= (and b!854418 (not res!390187)) b!854411))

(assert (= (and b!854411 c!138557) b!854414))

(assert (= (and b!854411 (not c!138557)) b!854410))

(assert (= (and b!854418 res!390185) b!854412))

(assert (= (and b!854412 (not res!390184)) b!854417))

(assert (= (and b!854417 c!138559) b!854419))

(assert (= (and b!854417 (not c!138559)) b!854413))

(assert (= (and d!267039 c!138558) b!854416))

(assert (= (and d!267039 (not c!138558)) b!854415))

(declare-fun m!1094727 () Bool)

(assert (=> b!854414 m!1094727))

(assert (=> b!854414 m!1094727))

(declare-fun m!1094729 () Bool)

(assert (=> b!854414 m!1094729))

(declare-fun m!1094731 () Bool)

(assert (=> b!854414 m!1094731))

(assert (=> b!854414 m!1094729))

(assert (=> b!854414 m!1094731))

(declare-fun m!1094733 () Bool)

(assert (=> b!854414 m!1094733))

(declare-fun m!1094735 () Bool)

(assert (=> b!854419 m!1094735))

(assert (=> b!854419 m!1094735))

(declare-fun m!1094737 () Bool)

(assert (=> b!854419 m!1094737))

(declare-fun m!1094739 () Bool)

(assert (=> b!854419 m!1094739))

(assert (=> b!854419 m!1094737))

(assert (=> b!854419 m!1094739))

(declare-fun m!1094741 () Bool)

(assert (=> b!854419 m!1094741))

(declare-fun m!1094743 () Bool)

(assert (=> b!854411 m!1094743))

(assert (=> b!854411 m!1094743))

(declare-fun m!1094745 () Bool)

(assert (=> b!854411 m!1094745))

(assert (=> b!854411 m!1094745))

(declare-fun m!1094747 () Bool)

(assert (=> b!854411 m!1094747))

(assert (=> b!854411 m!1094747))

(declare-fun m!1094749 () Bool)

(assert (=> b!854411 m!1094749))

(assert (=> b!854416 m!1094743))

(assert (=> b!854416 m!1094745))

(assert (=> b!854416 m!1094743))

(assert (=> b!854416 m!1094745))

(assert (=> b!854416 m!1094747))

(declare-fun m!1094751 () Bool)

(assert (=> b!854416 m!1094751))

(declare-fun m!1094753 () Bool)

(assert (=> b!854416 m!1094753))

(assert (=> b!854416 m!1094743))

(declare-fun m!1094755 () Bool)

(assert (=> b!854416 m!1094755))

(declare-fun m!1094757 () Bool)

(assert (=> b!854416 m!1094757))

(declare-fun m!1094759 () Bool)

(assert (=> b!854416 m!1094759))

(declare-fun m!1094761 () Bool)

(assert (=> b!854416 m!1094761))

(declare-fun m!1094763 () Bool)

(assert (=> b!854416 m!1094763))

(declare-fun m!1094765 () Bool)

(assert (=> b!854416 m!1094765))

(declare-fun m!1094767 () Bool)

(assert (=> b!854416 m!1094767))

(declare-fun m!1094769 () Bool)

(assert (=> b!854416 m!1094769))

(assert (=> b!854416 m!1094751))

(assert (=> b!854416 m!1094767))

(assert (=> b!854416 m!1094763))

(assert (=> b!854416 m!1094759))

(assert (=> b!854417 m!1094743))

(assert (=> b!854417 m!1094743))

(assert (=> b!854417 m!1094745))

(assert (=> b!854417 m!1094745))

(declare-fun m!1094771 () Bool)

(assert (=> b!854417 m!1094771))

(declare-fun m!1094773 () Bool)

(assert (=> d!267039 m!1094773))

(assert (=> d!267039 m!1094655))

(declare-fun m!1094775 () Bool)

(assert (=> d!267039 m!1094775))

(assert (=> b!854341 d!267039))

(declare-fun d!267041 () Bool)

(assert (=> d!267041 (= (tail!1042 l!5107) (t!96227 l!5107))))

(assert (=> b!854341 d!267041))

(declare-fun d!267043 () Bool)

(assert (=> d!267043 (= (isEmpty!5459 rules!2621) ((_ is Nil!9222) rules!2621))))

(assert (=> b!854331 d!267043))

(declare-fun b!854420 () Bool)

(declare-fun e!562377 () Bool)

(assert (=> b!854420 (= e!562377 (inv!16 (value!56004 (h!14624 l!5107))))))

(declare-fun b!854421 () Bool)

(declare-fun e!562376 () Bool)

(assert (=> b!854421 (= e!562377 e!562376)))

(declare-fun c!138561 () Bool)

(assert (=> b!854421 (= c!138561 ((_ is IntegerValue!5389) (value!56004 (h!14624 l!5107))))))

(declare-fun b!854422 () Bool)

(declare-fun res!390188 () Bool)

(declare-fun e!562375 () Bool)

(assert (=> b!854422 (=> res!390188 e!562375)))

(assert (=> b!854422 (= res!390188 (not ((_ is IntegerValue!5390) (value!56004 (h!14624 l!5107)))))))

(assert (=> b!854422 (= e!562376 e!562375)))

(declare-fun b!854423 () Bool)

(assert (=> b!854423 (= e!562375 (inv!15 (value!56004 (h!14624 l!5107))))))

(declare-fun b!854424 () Bool)

(assert (=> b!854424 (= e!562376 (inv!17 (value!56004 (h!14624 l!5107))))))

(declare-fun d!267045 () Bool)

(declare-fun c!138560 () Bool)

(assert (=> d!267045 (= c!138560 ((_ is IntegerValue!5388) (value!56004 (h!14624 l!5107))))))

(assert (=> d!267045 (= (inv!21 (value!56004 (h!14624 l!5107))) e!562377)))

(assert (= (and d!267045 c!138560) b!854420))

(assert (= (and d!267045 (not c!138560)) b!854421))

(assert (= (and b!854421 c!138561) b!854424))

(assert (= (and b!854421 (not c!138561)) b!854422))

(assert (= (and b!854422 (not res!390188)) b!854423))

(declare-fun m!1094777 () Bool)

(assert (=> b!854420 m!1094777))

(declare-fun m!1094779 () Bool)

(assert (=> b!854423 m!1094779))

(declare-fun m!1094781 () Bool)

(assert (=> b!854424 m!1094781))

(assert (=> b!854342 d!267045))

(declare-fun d!267047 () Bool)

(assert (=> d!267047 (= (inv!11722 (tag!1992 (h!14623 rules!2621))) (= (mod (str.len (value!56003 (tag!1992 (h!14623 rules!2621)))) 2) 0))))

(assert (=> b!854340 d!267047))

(declare-fun d!267049 () Bool)

(declare-fun res!390189 () Bool)

(declare-fun e!562378 () Bool)

(assert (=> d!267049 (=> (not res!390189) (not e!562378))))

(assert (=> d!267049 (= res!390189 (semiInverseModEq!676 (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toValue!2779 (transformation!1730 (h!14623 rules!2621)))))))

(assert (=> d!267049 (= (inv!11725 (transformation!1730 (h!14623 rules!2621))) e!562378)))

(declare-fun b!854425 () Bool)

(assert (=> b!854425 (= e!562378 (equivClasses!643 (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toValue!2779 (transformation!1730 (h!14623 rules!2621)))))))

(assert (= (and d!267049 res!390189) b!854425))

(declare-fun m!1094783 () Bool)

(assert (=> d!267049 m!1094783))

(declare-fun m!1094785 () Bool)

(assert (=> b!854425 m!1094785))

(assert (=> b!854340 d!267049))

(declare-fun d!267051 () Bool)

(declare-fun lt!323375 () Bool)

(declare-fun e!562384 () Bool)

(assert (=> d!267051 (= lt!323375 e!562384)))

(declare-fun res!390197 () Bool)

(assert (=> d!267051 (=> (not res!390197) (not e!562384))))

(declare-datatypes ((IArray!6119 0))(
  ( (IArray!6120 (innerList!3117 List!9239)) )
))
(declare-datatypes ((Conc!3057 0))(
  ( (Node!3057 (left!6827 Conc!3057) (right!7157 Conc!3057) (csize!6344 Int) (cheight!3268 Int)) (Leaf!4510 (xs!5746 IArray!6119) (csize!6345 Int)) (Empty!3057) )
))
(declare-datatypes ((BalanceConc!6128 0))(
  ( (BalanceConc!6129 (c!138586 Conc!3057)) )
))
(declare-fun list!3630 (BalanceConc!6128) List!9239)

(declare-datatypes ((tuple2!10404 0))(
  ( (tuple2!10405 (_1!6028 BalanceConc!6128) (_2!6028 BalanceConc!6124)) )
))
(declare-fun lex!624 (LexerInterface!1532 List!9238 BalanceConc!6124) tuple2!10404)

(declare-fun print!561 (LexerInterface!1532 BalanceConc!6128) BalanceConc!6124)

(declare-fun singletonSeq!547 (Token!3126) BalanceConc!6128)

(assert (=> d!267051 (= res!390197 (= (list!3630 (_1!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297))))) (list!3630 (singletonSeq!547 separatorToken!297))))))

(declare-fun e!562383 () Bool)

(assert (=> d!267051 (= lt!323375 e!562383)))

(declare-fun res!390198 () Bool)

(assert (=> d!267051 (=> (not res!390198) (not e!562383))))

(declare-fun lt!323374 () tuple2!10404)

(declare-fun size!7694 (BalanceConc!6128) Int)

(assert (=> d!267051 (= res!390198 (= (size!7694 (_1!6028 lt!323374)) 1))))

(assert (=> d!267051 (= lt!323374 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297))))))

(assert (=> d!267051 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267051 (= (rulesProduceIndividualToken!596 thiss!20117 rules!2621 separatorToken!297) lt!323375)))

(declare-fun b!854432 () Bool)

(declare-fun res!390196 () Bool)

(assert (=> b!854432 (=> (not res!390196) (not e!562383))))

(declare-fun apply!1909 (BalanceConc!6128 Int) Token!3126)

(assert (=> b!854432 (= res!390196 (= (apply!1909 (_1!6028 lt!323374) 0) separatorToken!297))))

(declare-fun b!854433 () Bool)

(declare-fun isEmpty!5462 (BalanceConc!6124) Bool)

(assert (=> b!854433 (= e!562383 (isEmpty!5462 (_2!6028 lt!323374)))))

(declare-fun b!854434 () Bool)

(assert (=> b!854434 (= e!562384 (isEmpty!5462 (_2!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297))))))))

(assert (= (and d!267051 res!390198) b!854432))

(assert (= (and b!854432 res!390196) b!854433))

(assert (= (and d!267051 res!390197) b!854434))

(declare-fun m!1094787 () Bool)

(assert (=> d!267051 m!1094787))

(declare-fun m!1094789 () Bool)

(assert (=> d!267051 m!1094789))

(assert (=> d!267051 m!1094787))

(declare-fun m!1094791 () Bool)

(assert (=> d!267051 m!1094791))

(declare-fun m!1094793 () Bool)

(assert (=> d!267051 m!1094793))

(declare-fun m!1094795 () Bool)

(assert (=> d!267051 m!1094795))

(declare-fun m!1094797 () Bool)

(assert (=> d!267051 m!1094797))

(assert (=> d!267051 m!1094691))

(assert (=> d!267051 m!1094787))

(assert (=> d!267051 m!1094795))

(declare-fun m!1094799 () Bool)

(assert (=> b!854432 m!1094799))

(declare-fun m!1094801 () Bool)

(assert (=> b!854433 m!1094801))

(assert (=> b!854434 m!1094787))

(assert (=> b!854434 m!1094787))

(assert (=> b!854434 m!1094795))

(assert (=> b!854434 m!1094795))

(assert (=> b!854434 m!1094797))

(declare-fun m!1094803 () Bool)

(assert (=> b!854434 m!1094803))

(assert (=> b!854328 d!267051))

(declare-fun d!267053 () Bool)

(assert (=> d!267053 (= (head!1482 l!5107) (h!14624 l!5107))))

(assert (=> b!854339 d!267053))

(declare-fun d!267055 () Bool)

(declare-fun res!390203 () Bool)

(declare-fun e!562387 () Bool)

(assert (=> d!267055 (=> (not res!390203) (not e!562387))))

(declare-fun isEmpty!5463 (List!9237) Bool)

(assert (=> d!267055 (= res!390203 (not (isEmpty!5463 (originalCharacters!2286 (h!14624 l!5107)))))))

(assert (=> d!267055 (= (inv!11726 (h!14624 l!5107)) e!562387)))

(declare-fun b!854439 () Bool)

(declare-fun res!390204 () Bool)

(assert (=> b!854439 (=> (not res!390204) (not e!562387))))

(declare-fun dynLambda!4319 (Int TokenValue!1796) BalanceConc!6124)

(assert (=> b!854439 (= res!390204 (= (originalCharacters!2286 (h!14624 l!5107)) (list!3629 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))))))

(declare-fun b!854440 () Bool)

(declare-fun size!7695 (List!9237) Int)

(assert (=> b!854440 (= e!562387 (= (size!7691 (h!14624 l!5107)) (size!7695 (originalCharacters!2286 (h!14624 l!5107)))))))

(assert (= (and d!267055 res!390203) b!854439))

(assert (= (and b!854439 res!390204) b!854440))

(declare-fun b_lambda!28633 () Bool)

(assert (=> (not b_lambda!28633) (not b!854439)))

(declare-fun tb!60315 () Bool)

(declare-fun t!96238 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) t!96238) tb!60315))

(declare-fun b!854445 () Bool)

(declare-fun e!562390 () Bool)

(declare-fun tp!269378 () Bool)

(declare-fun inv!11729 (Conc!3055) Bool)

(assert (=> b!854445 (= e!562390 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))) tp!269378))))

(declare-fun result!69850 () Bool)

(declare-fun inv!11730 (BalanceConc!6124) Bool)

(assert (=> tb!60315 (= result!69850 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))) e!562390))))

(assert (= tb!60315 b!854445))

(declare-fun m!1094805 () Bool)

(assert (=> b!854445 m!1094805))

(declare-fun m!1094807 () Bool)

(assert (=> tb!60315 m!1094807))

(assert (=> b!854439 t!96238))

(declare-fun b_and!75323 () Bool)

(assert (= b_and!75307 (and (=> t!96238 result!69850) b_and!75323)))

(declare-fun t!96240 () Bool)

(declare-fun tb!60317 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) t!96240) tb!60317))

(declare-fun result!69854 () Bool)

(assert (= result!69854 result!69850))

(assert (=> b!854439 t!96240))

(declare-fun b_and!75325 () Bool)

(assert (= b_and!75311 (and (=> t!96240 result!69854) b_and!75325)))

(declare-fun t!96242 () Bool)

(declare-fun tb!60319 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) t!96242) tb!60319))

(declare-fun result!69856 () Bool)

(assert (= result!69856 result!69850))

(assert (=> b!854439 t!96242))

(declare-fun b_and!75327 () Bool)

(assert (= b_and!75315 (and (=> t!96242 result!69856) b_and!75327)))

(declare-fun m!1094809 () Bool)

(assert (=> d!267055 m!1094809))

(declare-fun m!1094811 () Bool)

(assert (=> b!854439 m!1094811))

(assert (=> b!854439 m!1094811))

(declare-fun m!1094813 () Bool)

(assert (=> b!854439 m!1094813))

(declare-fun m!1094815 () Bool)

(assert (=> b!854440 m!1094815))

(assert (=> b!854337 d!267055))

(declare-fun d!267057 () Bool)

(declare-fun res!390209 () Bool)

(declare-fun e!562395 () Bool)

(assert (=> d!267057 (=> res!390209 e!562395)))

(assert (=> d!267057 (= res!390209 ((_ is Nil!9223) l!5107))))

(assert (=> d!267057 (= (forall!2185 l!5107 lambda!25598) e!562395)))

(declare-fun b!854450 () Bool)

(declare-fun e!562396 () Bool)

(assert (=> b!854450 (= e!562395 e!562396)))

(declare-fun res!390210 () Bool)

(assert (=> b!854450 (=> (not res!390210) (not e!562396))))

(declare-fun dynLambda!4320 (Int Token!3126) Bool)

(assert (=> b!854450 (= res!390210 (dynLambda!4320 lambda!25598 (h!14624 l!5107)))))

(declare-fun b!854451 () Bool)

(assert (=> b!854451 (= e!562396 (forall!2185 (t!96227 l!5107) lambda!25598))))

(assert (= (and d!267057 (not res!390209)) b!854450))

(assert (= (and b!854450 res!390210) b!854451))

(declare-fun b_lambda!28635 () Bool)

(assert (=> (not b_lambda!28635) (not b!854450)))

(declare-fun m!1094817 () Bool)

(assert (=> b!854450 m!1094817))

(declare-fun m!1094819 () Bool)

(assert (=> b!854451 m!1094819))

(assert (=> b!854338 d!267057))

(declare-fun bs!231663 () Bool)

(declare-fun d!267059 () Bool)

(assert (= bs!231663 (and d!267059 b!854338)))

(declare-fun lambda!25605 () Int)

(assert (=> bs!231663 (not (= lambda!25605 lambda!25598))))

(declare-fun b!854627 () Bool)

(declare-fun e!562524 () Bool)

(assert (=> b!854627 (= e!562524 true)))

(declare-fun b!854626 () Bool)

(declare-fun e!562523 () Bool)

(assert (=> b!854626 (= e!562523 e!562524)))

(declare-fun b!854625 () Bool)

(declare-fun e!562522 () Bool)

(assert (=> b!854625 (= e!562522 e!562523)))

(assert (=> d!267059 e!562522))

(assert (= b!854626 b!854627))

(assert (= b!854625 b!854626))

(assert (= (and d!267059 ((_ is Cons!9222) rules!2621)) b!854625))

(declare-fun order!5945 () Int)

(declare-fun order!5943 () Int)

(declare-fun dynLambda!4321 (Int Int) Int)

(declare-fun dynLambda!4322 (Int Int) Int)

(assert (=> b!854627 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25605))))

(declare-fun order!5947 () Int)

(declare-fun dynLambda!4323 (Int Int) Int)

(assert (=> b!854627 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25605))))

(assert (=> d!267059 true))

(declare-fun lt!323421 () Bool)

(assert (=> d!267059 (= lt!323421 (forall!2185 l!5107 lambda!25605))))

(declare-fun e!562515 () Bool)

(assert (=> d!267059 (= lt!323421 e!562515)))

(declare-fun res!390265 () Bool)

(assert (=> d!267059 (=> res!390265 e!562515)))

(assert (=> d!267059 (= res!390265 (not ((_ is Cons!9223) l!5107)))))

(assert (=> d!267059 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267059 (= (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 l!5107) lt!323421)))

(declare-fun b!854615 () Bool)

(declare-fun e!562514 () Bool)

(assert (=> b!854615 (= e!562515 e!562514)))

(declare-fun res!390264 () Bool)

(assert (=> b!854615 (=> (not res!390264) (not e!562514))))

(assert (=> b!854615 (= res!390264 (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 l!5107)))))

(declare-fun b!854616 () Bool)

(assert (=> b!854616 (= e!562514 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (t!96227 l!5107)))))

(assert (= (and d!267059 (not res!390265)) b!854615))

(assert (= (and b!854615 res!390264) b!854616))

(declare-fun m!1095003 () Bool)

(assert (=> d!267059 m!1095003))

(assert (=> d!267059 m!1094691))

(declare-fun m!1095005 () Bool)

(assert (=> b!854615 m!1095005))

(declare-fun m!1095007 () Bool)

(assert (=> b!854616 m!1095007))

(assert (=> b!854336 d!267059))

(declare-fun d!267097 () Bool)

(assert (=> d!267097 (= (inv!11722 (tag!1992 (rule!3153 separatorToken!297))) (= (mod (str.len (value!56003 (tag!1992 (rule!3153 separatorToken!297)))) 2) 0))))

(assert (=> b!854347 d!267097))

(declare-fun d!267099 () Bool)

(declare-fun res!390266 () Bool)

(declare-fun e!562525 () Bool)

(assert (=> d!267099 (=> (not res!390266) (not e!562525))))

(assert (=> d!267099 (= res!390266 (semiInverseModEq!676 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))))))

(assert (=> d!267099 (= (inv!11725 (transformation!1730 (rule!3153 separatorToken!297))) e!562525)))

(declare-fun b!854630 () Bool)

(assert (=> b!854630 (= e!562525 (equivClasses!643 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))))))

(assert (= (and d!267099 res!390266) b!854630))

(declare-fun m!1095009 () Bool)

(assert (=> d!267099 m!1095009))

(declare-fun m!1095011 () Bool)

(assert (=> b!854630 m!1095011))

(assert (=> b!854347 d!267099))

(declare-fun bs!231664 () Bool)

(declare-fun d!267101 () Bool)

(assert (= bs!231664 (and d!267101 b!854338)))

(declare-fun lambda!25606 () Int)

(assert (=> bs!231664 (not (= lambda!25606 lambda!25598))))

(declare-fun bs!231665 () Bool)

(assert (= bs!231665 (and d!267101 d!267059)))

(assert (=> bs!231665 (= lambda!25606 lambda!25605)))

(declare-fun b!854635 () Bool)

(declare-fun e!562530 () Bool)

(assert (=> b!854635 (= e!562530 true)))

(declare-fun b!854634 () Bool)

(declare-fun e!562529 () Bool)

(assert (=> b!854634 (= e!562529 e!562530)))

(declare-fun b!854633 () Bool)

(declare-fun e!562528 () Bool)

(assert (=> b!854633 (= e!562528 e!562529)))

(assert (=> d!267101 e!562528))

(assert (= b!854634 b!854635))

(assert (= b!854633 b!854634))

(assert (= (and d!267101 ((_ is Cons!9222) rules!2621)) b!854633))

(assert (=> b!854635 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25606))))

(assert (=> b!854635 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25606))))

(assert (=> d!267101 true))

(declare-fun lt!323422 () Bool)

(assert (=> d!267101 (= lt!323422 (forall!2185 lt!323343 lambda!25606))))

(declare-fun e!562527 () Bool)

(assert (=> d!267101 (= lt!323422 e!562527)))

(declare-fun res!390268 () Bool)

(assert (=> d!267101 (=> res!390268 e!562527)))

(assert (=> d!267101 (= res!390268 (not ((_ is Cons!9223) lt!323343)))))

(assert (=> d!267101 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267101 (= (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 lt!323343) lt!323422)))

(declare-fun b!854631 () Bool)

(declare-fun e!562526 () Bool)

(assert (=> b!854631 (= e!562527 e!562526)))

(declare-fun res!390267 () Bool)

(assert (=> b!854631 (=> (not res!390267) (not e!562526))))

(assert (=> b!854631 (= res!390267 (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 lt!323343)))))

(declare-fun b!854632 () Bool)

(assert (=> b!854632 (= e!562526 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (t!96227 lt!323343)))))

(assert (= (and d!267101 (not res!390268)) b!854631))

(assert (= (and b!854631 res!390267) b!854632))

(declare-fun m!1095013 () Bool)

(assert (=> d!267101 m!1095013))

(assert (=> d!267101 m!1094691))

(declare-fun m!1095015 () Bool)

(assert (=> b!854631 m!1095015))

(declare-fun m!1095017 () Bool)

(assert (=> b!854632 m!1095017))

(assert (=> b!854345 d!267101))

(declare-fun b!854636 () Bool)

(declare-fun e!562531 () List!9237)

(assert (=> b!854636 (= e!562531 Nil!9221)))

(declare-fun e!562536 () Bool)

(declare-fun b!854637 () Bool)

(assert (=> b!854637 (= e!562536 (= (printList!480 thiss!20117 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107))) e!562531))))

(declare-fun c!138582 () Bool)

(declare-fun lt!323427 () List!9239)

(assert (=> b!854637 (= c!138582 ((_ is Cons!9223) lt!323427))))

(assert (=> b!854637 (= lt!323427 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107)))))

(declare-fun b!854638 () Bool)

(declare-fun e!562533 () Bool)

(declare-fun e!562532 () Bool)

(assert (=> b!854638 (= e!562533 e!562532)))

(declare-fun res!390269 () Bool)

(assert (=> b!854638 (=> res!390269 e!562532)))

(assert (=> b!854638 (= res!390269 (not ((_ is Cons!9223) l!5107)))))

(declare-fun b!854639 () Bool)

(declare-fun e!562535 () List!9237)

(assert (=> b!854639 (= e!562535 Nil!9221)))

(declare-fun b!854640 () Bool)

(assert (=> b!854640 (= e!562531 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323427))) (printList!480 thiss!20117 (t!96227 lt!323427))))))

(declare-fun b!854641 () Bool)

(declare-fun e!562534 () List!9239)

(assert (=> b!854641 (= e!562534 Nil!9223)))

(declare-fun lt!323423 () List!9239)

(declare-fun d!267103 () Bool)

(assert (=> d!267103 (= (printList!480 thiss!20117 lt!323423) (printWithSeparatorTokenList!38 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!267103 (= lt!323423 e!562534)))

(declare-fun c!138583 () Bool)

(assert (=> d!267103 (= c!138583 ((_ is Cons!9223) l!5107))))

(assert (=> d!267103 e!562533))

(declare-fun res!390271 () Bool)

(assert (=> d!267103 (=> (not res!390271) (not e!562533))))

(assert (=> d!267103 (= res!390271 (isSeparator!1730 (rule!3153 separatorToken!297)))))

(assert (=> d!267103 (= (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297) lt!323423)))

(declare-fun b!854642 () Bool)

(assert (=> b!854642 (= e!562534 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107)))))

(declare-fun lt!323426 () List!9237)

(assert (=> b!854642 (= lt!323426 (list!3629 (charsOf!997 (h!14624 l!5107))))))

(declare-fun lt!323430 () List!9237)

(assert (=> b!854642 (= lt!323430 (list!3629 (charsOf!997 separatorToken!297)))))

(declare-fun lt!323425 () List!9237)

(assert (=> b!854642 (= lt!323425 (printList!480 thiss!20117 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297)))))

(declare-fun lt!323429 () Unit!13725)

(assert (=> b!854642 (= lt!323429 (lemmaConcatAssociativity!755 lt!323426 lt!323430 lt!323425))))

(assert (=> b!854642 (= (++!2388 (++!2388 lt!323426 lt!323430) lt!323425) (++!2388 lt!323426 (++!2388 lt!323430 lt!323425)))))

(declare-fun lt!323424 () Unit!13725)

(assert (=> b!854642 (= lt!323424 lt!323429)))

(declare-fun b!854643 () Bool)

(assert (=> b!854643 (= e!562532 (= (printList!480 thiss!20117 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297)) e!562535))))

(declare-fun c!138584 () Bool)

(declare-fun lt!323428 () List!9239)

(assert (=> b!854643 (= c!138584 ((_ is Cons!9223) lt!323428))))

(assert (=> b!854643 (= lt!323428 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!854644 () Bool)

(declare-fun res!390270 () Bool)

(assert (=> b!854644 (=> (not res!390270) (not e!562533))))

(assert (=> b!854644 (= res!390270 e!562536)))

(declare-fun res!390272 () Bool)

(assert (=> b!854644 (=> res!390272 e!562536)))

(assert (=> b!854644 (= res!390272 (not ((_ is Cons!9223) l!5107)))))

(declare-fun b!854645 () Bool)

(assert (=> b!854645 (= e!562535 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323428))) (printList!480 thiss!20117 (t!96227 lt!323428))))))

(assert (= (and d!267103 res!390271) b!854644))

(assert (= (and b!854644 (not res!390272)) b!854637))

(assert (= (and b!854637 c!138582) b!854640))

(assert (= (and b!854637 (not c!138582)) b!854636))

(assert (= (and b!854644 res!390270) b!854638))

(assert (= (and b!854638 (not res!390269)) b!854643))

(assert (= (and b!854643 c!138584) b!854645))

(assert (= (and b!854643 (not c!138584)) b!854639))

(assert (= (and d!267103 c!138583) b!854642))

(assert (= (and d!267103 (not c!138583)) b!854641))

(declare-fun m!1095019 () Bool)

(assert (=> b!854640 m!1095019))

(assert (=> b!854640 m!1095019))

(declare-fun m!1095021 () Bool)

(assert (=> b!854640 m!1095021))

(declare-fun m!1095023 () Bool)

(assert (=> b!854640 m!1095023))

(assert (=> b!854640 m!1095021))

(assert (=> b!854640 m!1095023))

(declare-fun m!1095025 () Bool)

(assert (=> b!854640 m!1095025))

(declare-fun m!1095027 () Bool)

(assert (=> b!854645 m!1095027))

(assert (=> b!854645 m!1095027))

(declare-fun m!1095029 () Bool)

(assert (=> b!854645 m!1095029))

(declare-fun m!1095031 () Bool)

(assert (=> b!854645 m!1095031))

(assert (=> b!854645 m!1095029))

(assert (=> b!854645 m!1095031))

(declare-fun m!1095033 () Bool)

(assert (=> b!854645 m!1095033))

(declare-fun m!1095035 () Bool)

(assert (=> b!854637 m!1095035))

(assert (=> b!854637 m!1095035))

(declare-fun m!1095037 () Bool)

(assert (=> b!854637 m!1095037))

(assert (=> b!854637 m!1095037))

(declare-fun m!1095039 () Bool)

(assert (=> b!854637 m!1095039))

(assert (=> b!854637 m!1095039))

(declare-fun m!1095041 () Bool)

(assert (=> b!854637 m!1095041))

(assert (=> b!854642 m!1095035))

(assert (=> b!854642 m!1095037))

(assert (=> b!854642 m!1095035))

(assert (=> b!854642 m!1095037))

(assert (=> b!854642 m!1095039))

(declare-fun m!1095043 () Bool)

(assert (=> b!854642 m!1095043))

(declare-fun m!1095045 () Bool)

(assert (=> b!854642 m!1095045))

(assert (=> b!854642 m!1095035))

(declare-fun m!1095047 () Bool)

(assert (=> b!854642 m!1095047))

(declare-fun m!1095049 () Bool)

(assert (=> b!854642 m!1095049))

(declare-fun m!1095051 () Bool)

(assert (=> b!854642 m!1095051))

(declare-fun m!1095053 () Bool)

(assert (=> b!854642 m!1095053))

(assert (=> b!854642 m!1094763))

(assert (=> b!854642 m!1094765))

(declare-fun m!1095055 () Bool)

(assert (=> b!854642 m!1095055))

(declare-fun m!1095057 () Bool)

(assert (=> b!854642 m!1095057))

(assert (=> b!854642 m!1095043))

(assert (=> b!854642 m!1095055))

(assert (=> b!854642 m!1094763))

(assert (=> b!854642 m!1095051))

(assert (=> b!854643 m!1095035))

(assert (=> b!854643 m!1095035))

(assert (=> b!854643 m!1095037))

(assert (=> b!854643 m!1095037))

(declare-fun m!1095059 () Bool)

(assert (=> b!854643 m!1095059))

(declare-fun m!1095061 () Bool)

(assert (=> d!267103 m!1095061))

(declare-fun m!1095063 () Bool)

(assert (=> d!267103 m!1095063))

(assert (=> b!854345 d!267103))

(declare-fun d!267105 () Bool)

(assert (=> d!267105 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!323433 () Unit!13725)

(declare-fun choose!5040 (LexerInterface!1532 List!9238 List!9239 Token!3126) Unit!13725)

(assert (=> d!267105 (= lt!323433 (choose!5040 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!267105 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267105 (= (withSeparatorTokenListPreservesRulesProduceTokens!62 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!323433)))

(declare-fun bs!231666 () Bool)

(assert (= bs!231666 d!267105))

(assert (=> bs!231666 m!1094683))

(assert (=> bs!231666 m!1094683))

(declare-fun m!1095065 () Bool)

(assert (=> bs!231666 m!1095065))

(declare-fun m!1095067 () Bool)

(assert (=> bs!231666 m!1095067))

(assert (=> bs!231666 m!1094691))

(assert (=> b!854345 d!267105))

(declare-fun d!267107 () Bool)

(declare-fun res!390273 () Bool)

(declare-fun e!562537 () Bool)

(assert (=> d!267107 (=> (not res!390273) (not e!562537))))

(assert (=> d!267107 (= res!390273 (not (isEmpty!5463 (originalCharacters!2286 separatorToken!297))))))

(assert (=> d!267107 (= (inv!11726 separatorToken!297) e!562537)))

(declare-fun b!854646 () Bool)

(declare-fun res!390274 () Bool)

(assert (=> b!854646 (=> (not res!390274) (not e!562537))))

(assert (=> b!854646 (= res!390274 (= (originalCharacters!2286 separatorToken!297) (list!3629 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))))))

(declare-fun b!854647 () Bool)

(assert (=> b!854647 (= e!562537 (= (size!7691 separatorToken!297) (size!7695 (originalCharacters!2286 separatorToken!297))))))

(assert (= (and d!267107 res!390273) b!854646))

(assert (= (and b!854646 res!390274) b!854647))

(declare-fun b_lambda!28647 () Bool)

(assert (=> (not b_lambda!28647) (not b!854646)))

(declare-fun t!96262 () Bool)

(declare-fun tb!60335 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) t!96262) tb!60335))

(declare-fun b!854648 () Bool)

(declare-fun e!562538 () Bool)

(declare-fun tp!269436 () Bool)

(assert (=> b!854648 (= e!562538 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))) tp!269436))))

(declare-fun result!69880 () Bool)

(assert (=> tb!60335 (= result!69880 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))) e!562538))))

(assert (= tb!60335 b!854648))

(declare-fun m!1095069 () Bool)

(assert (=> b!854648 m!1095069))

(declare-fun m!1095071 () Bool)

(assert (=> tb!60335 m!1095071))

(assert (=> b!854646 t!96262))

(declare-fun b_and!75343 () Bool)

(assert (= b_and!75323 (and (=> t!96262 result!69880) b_and!75343)))

(declare-fun tb!60337 () Bool)

(declare-fun t!96264 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) t!96264) tb!60337))

(declare-fun result!69882 () Bool)

(assert (= result!69882 result!69880))

(assert (=> b!854646 t!96264))

(declare-fun b_and!75345 () Bool)

(assert (= b_and!75325 (and (=> t!96264 result!69882) b_and!75345)))

(declare-fun tb!60339 () Bool)

(declare-fun t!96266 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) t!96266) tb!60339))

(declare-fun result!69884 () Bool)

(assert (= result!69884 result!69880))

(assert (=> b!854646 t!96266))

(declare-fun b_and!75347 () Bool)

(assert (= b_and!75327 (and (=> t!96266 result!69884) b_and!75347)))

(declare-fun m!1095073 () Bool)

(assert (=> d!267107 m!1095073))

(declare-fun m!1095075 () Bool)

(assert (=> b!854646 m!1095075))

(assert (=> b!854646 m!1095075))

(declare-fun m!1095077 () Bool)

(assert (=> b!854646 m!1095077))

(declare-fun m!1095079 () Bool)

(assert (=> b!854647 m!1095079))

(assert (=> start!76710 d!267107))

(declare-fun d!267109 () Bool)

(declare-fun res!390279 () Bool)

(declare-fun e!562543 () Bool)

(assert (=> d!267109 (=> res!390279 e!562543)))

(assert (=> d!267109 (= res!390279 (not ((_ is Cons!9222) rules!2621)))))

(assert (=> d!267109 (= (sepAndNonSepRulesDisjointChars!530 rules!2621 rules!2621) e!562543)))

(declare-fun b!854653 () Bool)

(declare-fun e!562544 () Bool)

(assert (=> b!854653 (= e!562543 e!562544)))

(declare-fun res!390280 () Bool)

(assert (=> b!854653 (=> (not res!390280) (not e!562544))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!243 (Rule!3260 List!9238) Bool)

(assert (=> b!854653 (= res!390280 (ruleDisjointCharsFromAllFromOtherType!243 (h!14623 rules!2621) rules!2621))))

(declare-fun b!854654 () Bool)

(assert (=> b!854654 (= e!562544 (sepAndNonSepRulesDisjointChars!530 rules!2621 (t!96226 rules!2621)))))

(assert (= (and d!267109 (not res!390279)) b!854653))

(assert (= (and b!854653 res!390280) b!854654))

(declare-fun m!1095081 () Bool)

(assert (=> b!854653 m!1095081))

(declare-fun m!1095083 () Bool)

(assert (=> b!854654 m!1095083))

(assert (=> b!854335 d!267109))

(declare-fun b!854668 () Bool)

(declare-fun b_free!25917 () Bool)

(declare-fun b_next!25981 () Bool)

(assert (=> b!854668 (= b_free!25917 (not b_next!25981))))

(declare-fun tp!269447 () Bool)

(declare-fun b_and!75349 () Bool)

(assert (=> b!854668 (= tp!269447 b_and!75349)))

(declare-fun b_free!25919 () Bool)

(declare-fun b_next!25983 () Bool)

(assert (=> b!854668 (= b_free!25919 (not b_next!25983))))

(declare-fun t!96268 () Bool)

(declare-fun tb!60341 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) t!96268) tb!60341))

(declare-fun result!69888 () Bool)

(assert (= result!69888 result!69850))

(assert (=> b!854439 t!96268))

(declare-fun t!96270 () Bool)

(declare-fun tb!60343 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) t!96270) tb!60343))

(declare-fun result!69890 () Bool)

(assert (= result!69890 result!69880))

(assert (=> b!854646 t!96270))

(declare-fun tp!269448 () Bool)

(declare-fun b_and!75351 () Bool)

(assert (=> b!854668 (= tp!269448 (and (=> t!96268 result!69888) (=> t!96270 result!69890) b_and!75351))))

(declare-fun e!562560 () Bool)

(assert (=> b!854668 (= e!562560 (and tp!269447 tp!269448))))

(declare-fun e!562558 () Bool)

(declare-fun b!854667 () Bool)

(declare-fun tp!269450 () Bool)

(assert (=> b!854667 (= e!562558 (and tp!269450 (inv!11722 (tag!1992 (rule!3153 (h!14624 (t!96227 l!5107))))) (inv!11725 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) e!562560))))

(declare-fun e!562562 () Bool)

(declare-fun e!562561 () Bool)

(declare-fun b!854665 () Bool)

(declare-fun tp!269449 () Bool)

(assert (=> b!854665 (= e!562561 (and (inv!11726 (h!14624 (t!96227 l!5107))) e!562562 tp!269449))))

(declare-fun tp!269451 () Bool)

(declare-fun b!854666 () Bool)

(assert (=> b!854666 (= e!562562 (and (inv!21 (value!56004 (h!14624 (t!96227 l!5107)))) e!562558 tp!269451))))

(assert (=> b!854337 (= tp!269363 e!562561)))

(assert (= b!854667 b!854668))

(assert (= b!854666 b!854667))

(assert (= b!854665 b!854666))

(assert (= (and b!854337 ((_ is Cons!9223) (t!96227 l!5107))) b!854665))

(declare-fun m!1095085 () Bool)

(assert (=> b!854667 m!1095085))

(declare-fun m!1095087 () Bool)

(assert (=> b!854667 m!1095087))

(declare-fun m!1095089 () Bool)

(assert (=> b!854665 m!1095089))

(declare-fun m!1095091 () Bool)

(assert (=> b!854666 m!1095091))

(declare-fun b!854681 () Bool)

(declare-fun e!562565 () Bool)

(declare-fun tp!269466 () Bool)

(assert (=> b!854681 (= e!562565 tp!269466)))

(declare-fun b!854680 () Bool)

(declare-fun tp!269465 () Bool)

(declare-fun tp!269463 () Bool)

(assert (=> b!854680 (= e!562565 (and tp!269465 tp!269463))))

(assert (=> b!854332 (= tp!269361 e!562565)))

(declare-fun b!854682 () Bool)

(declare-fun tp!269462 () Bool)

(declare-fun tp!269464 () Bool)

(assert (=> b!854682 (= e!562565 (and tp!269462 tp!269464))))

(declare-fun b!854679 () Bool)

(declare-fun tp_is_empty!3985 () Bool)

(assert (=> b!854679 (= e!562565 tp_is_empty!3985)))

(assert (= (and b!854332 ((_ is ElementMatch!2163) (regex!1730 (rule!3153 (h!14624 l!5107))))) b!854679))

(assert (= (and b!854332 ((_ is Concat!3960) (regex!1730 (rule!3153 (h!14624 l!5107))))) b!854680))

(assert (= (and b!854332 ((_ is Star!2163) (regex!1730 (rule!3153 (h!14624 l!5107))))) b!854681))

(assert (= (and b!854332 ((_ is Union!2163) (regex!1730 (rule!3153 (h!14624 l!5107))))) b!854682))

(declare-fun b!854687 () Bool)

(declare-fun e!562568 () Bool)

(declare-fun tp!269469 () Bool)

(assert (=> b!854687 (= e!562568 (and tp_is_empty!3985 tp!269469))))

(assert (=> b!854343 (= tp!269367 e!562568)))

(assert (= (and b!854343 ((_ is Cons!9221) (originalCharacters!2286 separatorToken!297))) b!854687))

(declare-fun b!854690 () Bool)

(declare-fun e!562569 () Bool)

(declare-fun tp!269474 () Bool)

(assert (=> b!854690 (= e!562569 tp!269474)))

(declare-fun b!854689 () Bool)

(declare-fun tp!269473 () Bool)

(declare-fun tp!269471 () Bool)

(assert (=> b!854689 (= e!562569 (and tp!269473 tp!269471))))

(assert (=> b!854347 (= tp!269371 e!562569)))

(declare-fun b!854691 () Bool)

(declare-fun tp!269470 () Bool)

(declare-fun tp!269472 () Bool)

(assert (=> b!854691 (= e!562569 (and tp!269470 tp!269472))))

(declare-fun b!854688 () Bool)

(assert (=> b!854688 (= e!562569 tp_is_empty!3985)))

(assert (= (and b!854347 ((_ is ElementMatch!2163) (regex!1730 (rule!3153 separatorToken!297)))) b!854688))

(assert (= (and b!854347 ((_ is Concat!3960) (regex!1730 (rule!3153 separatorToken!297)))) b!854689))

(assert (= (and b!854347 ((_ is Star!2163) (regex!1730 (rule!3153 separatorToken!297)))) b!854690))

(assert (= (and b!854347 ((_ is Union!2163) (regex!1730 (rule!3153 separatorToken!297)))) b!854691))

(declare-fun b!854692 () Bool)

(declare-fun e!562570 () Bool)

(declare-fun tp!269475 () Bool)

(assert (=> b!854692 (= e!562570 (and tp_is_empty!3985 tp!269475))))

(assert (=> b!854342 (= tp!269364 e!562570)))

(assert (= (and b!854342 ((_ is Cons!9221) (originalCharacters!2286 (h!14624 l!5107)))) b!854692))

(declare-fun b!854695 () Bool)

(declare-fun e!562571 () Bool)

(declare-fun tp!269480 () Bool)

(assert (=> b!854695 (= e!562571 tp!269480)))

(declare-fun b!854694 () Bool)

(declare-fun tp!269479 () Bool)

(declare-fun tp!269477 () Bool)

(assert (=> b!854694 (= e!562571 (and tp!269479 tp!269477))))

(assert (=> b!854340 (= tp!269365 e!562571)))

(declare-fun b!854696 () Bool)

(declare-fun tp!269476 () Bool)

(declare-fun tp!269478 () Bool)

(assert (=> b!854696 (= e!562571 (and tp!269476 tp!269478))))

(declare-fun b!854693 () Bool)

(assert (=> b!854693 (= e!562571 tp_is_empty!3985)))

(assert (= (and b!854340 ((_ is ElementMatch!2163) (regex!1730 (h!14623 rules!2621)))) b!854693))

(assert (= (and b!854340 ((_ is Concat!3960) (regex!1730 (h!14623 rules!2621)))) b!854694))

(assert (= (and b!854340 ((_ is Star!2163) (regex!1730 (h!14623 rules!2621)))) b!854695))

(assert (= (and b!854340 ((_ is Union!2163) (regex!1730 (h!14623 rules!2621)))) b!854696))

(declare-fun b!854707 () Bool)

(declare-fun b_free!25921 () Bool)

(declare-fun b_next!25985 () Bool)

(assert (=> b!854707 (= b_free!25921 (not b_next!25985))))

(declare-fun tp!269491 () Bool)

(declare-fun b_and!75353 () Bool)

(assert (=> b!854707 (= tp!269491 b_and!75353)))

(declare-fun b_free!25923 () Bool)

(declare-fun b_next!25987 () Bool)

(assert (=> b!854707 (= b_free!25923 (not b_next!25987))))

(declare-fun t!96272 () Bool)

(declare-fun tb!60345 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) t!96272) tb!60345))

(declare-fun result!69898 () Bool)

(assert (= result!69898 result!69850))

(assert (=> b!854439 t!96272))

(declare-fun tb!60347 () Bool)

(declare-fun t!96274 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) t!96274) tb!60347))

(declare-fun result!69900 () Bool)

(assert (= result!69900 result!69880))

(assert (=> b!854646 t!96274))

(declare-fun b_and!75355 () Bool)

(declare-fun tp!269490 () Bool)

(assert (=> b!854707 (= tp!269490 (and (=> t!96272 result!69898) (=> t!96274 result!69900) b_and!75355))))

(declare-fun e!562581 () Bool)

(assert (=> b!854707 (= e!562581 (and tp!269491 tp!269490))))

(declare-fun b!854706 () Bool)

(declare-fun e!562580 () Bool)

(declare-fun tp!269492 () Bool)

(assert (=> b!854706 (= e!562580 (and tp!269492 (inv!11722 (tag!1992 (h!14623 (t!96226 rules!2621)))) (inv!11725 (transformation!1730 (h!14623 (t!96226 rules!2621)))) e!562581))))

(declare-fun b!854705 () Bool)

(declare-fun e!562582 () Bool)

(declare-fun tp!269489 () Bool)

(assert (=> b!854705 (= e!562582 (and e!562580 tp!269489))))

(assert (=> b!854346 (= tp!269370 e!562582)))

(assert (= b!854706 b!854707))

(assert (= b!854705 b!854706))

(assert (= (and b!854346 ((_ is Cons!9222) (t!96226 rules!2621))) b!854705))

(declare-fun m!1095093 () Bool)

(assert (=> b!854706 m!1095093))

(declare-fun m!1095095 () Bool)

(assert (=> b!854706 m!1095095))

(declare-fun b_lambda!28649 () Bool)

(assert (= b_lambda!28647 (or (and b!854344 b_free!25903 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!854330 b_free!25899) (and b!854668 b_free!25919 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!854707 b_free!25923 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!854329 b_free!25907 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) b_lambda!28649)))

(declare-fun b_lambda!28651 () Bool)

(assert (= b_lambda!28633 (or (and b!854707 b_free!25923 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!854329 b_free!25907) (and b!854668 b_free!25919 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!854344 b_free!25903 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!854330 b_free!25899 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) b_lambda!28651)))

(declare-fun b_lambda!28653 () Bool)

(assert (= b_lambda!28635 (or b!854338 b_lambda!28653)))

(declare-fun bs!231667 () Bool)

(declare-fun d!267111 () Bool)

(assert (= bs!231667 (and d!267111 b!854338)))

(assert (=> bs!231667 (= (dynLambda!4320 lambda!25598 (h!14624 l!5107)) (not (isSeparator!1730 (rule!3153 (h!14624 l!5107)))))))

(assert (=> b!854450 d!267111))

(check-sat b_and!75309 (not b!854440) (not b!854370) (not b_next!25963) (not b!854680) (not b_next!25965) (not tb!60315) (not b!854439) (not b!854616) (not b_next!25967) (not b!854411) (not b!854646) (not b!854633) (not b!854696) (not b_next!25981) (not b!854692) (not b!854706) (not b!854416) (not b!854648) (not b!854666) (not d!267029) (not d!267039) (not d!267059) (not b_next!25983) (not b!854433) (not d!267103) (not b!854694) b_and!75353 b_and!75347 (not d!267105) (not b!854691) (not b!854642) (not b!854630) (not b!854637) b_and!75349 (not b_lambda!28653) b_and!75355 (not b!854653) tp_is_empty!3985 (not b!854367) (not b!854615) (not b!854632) b_and!75343 (not b!854414) (not b!854689) (not b!854451) (not b!854682) (not b!854425) (not b!854654) (not b_next!25971) (not b!854625) (not d!267049) (not b!854695) (not b!854417) (not d!267107) (not b!854643) (not b!854420) (not b_next!25985) (not b!854690) b_and!75313 (not b_lambda!28649) (not b!854631) (not b!854381) (not b!854645) (not d!267035) (not b!854681) b_and!75305 (not b!854419) (not d!267099) (not b!854640) (not b!854647) (not d!267051) (not b!854423) b_and!75345 (not b!854385) b_and!75351 (not b!854445) (not b!854705) (not d!267101) (not b_next!25969) (not b!854432) (not b!854384) (not b!854665) (not b!854434) (not b!854667) (not b_next!25961) (not b_next!25987) (not b!854687) (not tb!60335) (not b!854424) (not b_lambda!28651) (not d!267055))
(check-sat (not b_next!25965) (not b_next!25967) (not b_next!25981) (not b_next!25983) b_and!75349 b_and!75355 b_and!75343 (not b_next!25971) (not b_next!25985) b_and!75313 b_and!75309 b_and!75305 b_and!75345 b_and!75351 (not b_next!25969) (not b_next!25961) (not b_next!25963) (not b_next!25987) b_and!75353 b_and!75347)
(get-model)

(declare-fun lt!323482 () Bool)

(declare-fun d!267221 () Bool)

(assert (=> d!267221 (= lt!323482 (isEmpty!5463 (list!3629 (_2!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)))))))))

(declare-fun isEmpty!5464 (Conc!3055) Bool)

(assert (=> d!267221 (= lt!323482 (isEmpty!5464 (c!138544 (_2!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)))))))))

(assert (=> d!267221 (= (isEmpty!5462 (_2!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297))))) lt!323482)))

(declare-fun bs!231690 () Bool)

(assert (= bs!231690 d!267221))

(declare-fun m!1095455 () Bool)

(assert (=> bs!231690 m!1095455))

(assert (=> bs!231690 m!1095455))

(declare-fun m!1095457 () Bool)

(assert (=> bs!231690 m!1095457))

(declare-fun m!1095459 () Bool)

(assert (=> bs!231690 m!1095459))

(assert (=> b!854434 d!267221))

(declare-fun e!562699 () Bool)

(declare-fun lt!323500 () tuple2!10404)

(declare-fun b!854893 () Bool)

(declare-datatypes ((tuple2!10406 0))(
  ( (tuple2!10407 (_1!6029 List!9239) (_2!6029 List!9237)) )
))
(declare-fun lexList!393 (LexerInterface!1532 List!9238 List!9237) tuple2!10406)

(assert (=> b!854893 (= e!562699 (= (list!3629 (_2!6028 lt!323500)) (_2!6029 (lexList!393 thiss!20117 rules!2621 (list!3629 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)))))))))

(declare-fun d!267223 () Bool)

(assert (=> d!267223 e!562699))

(declare-fun res!390374 () Bool)

(assert (=> d!267223 (=> (not res!390374) (not e!562699))))

(declare-fun e!562700 () Bool)

(assert (=> d!267223 (= res!390374 e!562700)))

(declare-fun c!138631 () Bool)

(assert (=> d!267223 (= c!138631 (> (size!7694 (_1!6028 lt!323500)) 0))))

(declare-fun lexTailRecV2!300 (LexerInterface!1532 List!9238 BalanceConc!6124 BalanceConc!6124 BalanceConc!6124 BalanceConc!6128) tuple2!10404)

(assert (=> d!267223 (= lt!323500 (lexTailRecV2!300 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)) (BalanceConc!6125 Empty!3055) (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)) (BalanceConc!6129 Empty!3057)))))

(assert (=> d!267223 (= (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297))) lt!323500)))

(declare-fun b!854894 () Bool)

(declare-fun e!562698 () Bool)

(assert (=> b!854894 (= e!562700 e!562698)))

(declare-fun res!390373 () Bool)

(declare-fun size!7696 (BalanceConc!6124) Int)

(assert (=> b!854894 (= res!390373 (< (size!7696 (_2!6028 lt!323500)) (size!7696 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)))))))

(assert (=> b!854894 (=> (not res!390373) (not e!562698))))

(declare-fun b!854895 () Bool)

(assert (=> b!854895 (= e!562700 (= (_2!6028 lt!323500) (print!561 thiss!20117 (singletonSeq!547 separatorToken!297))))))

(declare-fun b!854896 () Bool)

(declare-fun isEmpty!5465 (BalanceConc!6128) Bool)

(assert (=> b!854896 (= e!562698 (not (isEmpty!5465 (_1!6028 lt!323500))))))

(declare-fun b!854897 () Bool)

(declare-fun res!390375 () Bool)

(assert (=> b!854897 (=> (not res!390375) (not e!562699))))

(assert (=> b!854897 (= res!390375 (= (list!3630 (_1!6028 lt!323500)) (_1!6029 (lexList!393 thiss!20117 rules!2621 (list!3629 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)))))))))

(assert (= (and d!267223 c!138631) b!854894))

(assert (= (and d!267223 (not c!138631)) b!854895))

(assert (= (and b!854894 res!390373) b!854896))

(assert (= (and d!267223 res!390374) b!854897))

(assert (= (and b!854897 res!390375) b!854893))

(declare-fun m!1095567 () Bool)

(assert (=> b!854894 m!1095567))

(assert (=> b!854894 m!1094795))

(declare-fun m!1095569 () Bool)

(assert (=> b!854894 m!1095569))

(declare-fun m!1095571 () Bool)

(assert (=> d!267223 m!1095571))

(assert (=> d!267223 m!1094795))

(assert (=> d!267223 m!1094795))

(declare-fun m!1095573 () Bool)

(assert (=> d!267223 m!1095573))

(declare-fun m!1095575 () Bool)

(assert (=> b!854896 m!1095575))

(declare-fun m!1095577 () Bool)

(assert (=> b!854893 m!1095577))

(assert (=> b!854893 m!1094795))

(declare-fun m!1095579 () Bool)

(assert (=> b!854893 m!1095579))

(assert (=> b!854893 m!1095579))

(declare-fun m!1095581 () Bool)

(assert (=> b!854893 m!1095581))

(declare-fun m!1095583 () Bool)

(assert (=> b!854897 m!1095583))

(assert (=> b!854897 m!1094795))

(assert (=> b!854897 m!1095579))

(assert (=> b!854897 m!1095579))

(assert (=> b!854897 m!1095581))

(assert (=> b!854434 d!267223))

(declare-fun d!267263 () Bool)

(declare-fun lt!323503 () BalanceConc!6124)

(assert (=> d!267263 (= (list!3629 lt!323503) (printList!480 thiss!20117 (list!3630 (singletonSeq!547 separatorToken!297))))))

(declare-fun printTailRec!475 (LexerInterface!1532 BalanceConc!6128 Int BalanceConc!6124) BalanceConc!6124)

(assert (=> d!267263 (= lt!323503 (printTailRec!475 thiss!20117 (singletonSeq!547 separatorToken!297) 0 (BalanceConc!6125 Empty!3055)))))

(assert (=> d!267263 (= (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)) lt!323503)))

(declare-fun bs!231704 () Bool)

(assert (= bs!231704 d!267263))

(declare-fun m!1095585 () Bool)

(assert (=> bs!231704 m!1095585))

(assert (=> bs!231704 m!1094787))

(assert (=> bs!231704 m!1094791))

(assert (=> bs!231704 m!1094791))

(declare-fun m!1095587 () Bool)

(assert (=> bs!231704 m!1095587))

(assert (=> bs!231704 m!1094787))

(declare-fun m!1095589 () Bool)

(assert (=> bs!231704 m!1095589))

(assert (=> b!854434 d!267263))

(declare-fun d!267265 () Bool)

(declare-fun e!562703 () Bool)

(assert (=> d!267265 e!562703))

(declare-fun res!390378 () Bool)

(assert (=> d!267265 (=> (not res!390378) (not e!562703))))

(declare-fun lt!323506 () BalanceConc!6128)

(assert (=> d!267265 (= res!390378 (= (list!3630 lt!323506) (Cons!9223 separatorToken!297 Nil!9223)))))

(declare-fun singleton!265 (Token!3126) BalanceConc!6128)

(assert (=> d!267265 (= lt!323506 (singleton!265 separatorToken!297))))

(assert (=> d!267265 (= (singletonSeq!547 separatorToken!297) lt!323506)))

(declare-fun b!854900 () Bool)

(declare-fun isBalanced!842 (Conc!3057) Bool)

(assert (=> b!854900 (= e!562703 (isBalanced!842 (c!138586 lt!323506)))))

(assert (= (and d!267265 res!390378) b!854900))

(declare-fun m!1095591 () Bool)

(assert (=> d!267265 m!1095591))

(declare-fun m!1095593 () Bool)

(assert (=> d!267265 m!1095593))

(declare-fun m!1095595 () Bool)

(assert (=> b!854900 m!1095595))

(assert (=> b!854434 d!267265))

(declare-fun d!267267 () Bool)

(declare-fun res!390379 () Bool)

(declare-fun e!562704 () Bool)

(assert (=> d!267267 (=> res!390379 e!562704)))

(assert (=> d!267267 (= res!390379 ((_ is Nil!9223) l!5107))))

(assert (=> d!267267 (= (forall!2185 l!5107 lambda!25605) e!562704)))

(declare-fun b!854901 () Bool)

(declare-fun e!562705 () Bool)

(assert (=> b!854901 (= e!562704 e!562705)))

(declare-fun res!390380 () Bool)

(assert (=> b!854901 (=> (not res!390380) (not e!562705))))

(assert (=> b!854901 (= res!390380 (dynLambda!4320 lambda!25605 (h!14624 l!5107)))))

(declare-fun b!854902 () Bool)

(assert (=> b!854902 (= e!562705 (forall!2185 (t!96227 l!5107) lambda!25605))))

(assert (= (and d!267267 (not res!390379)) b!854901))

(assert (= (and b!854901 res!390380) b!854902))

(declare-fun b_lambda!28671 () Bool)

(assert (=> (not b_lambda!28671) (not b!854901)))

(declare-fun m!1095597 () Bool)

(assert (=> b!854901 m!1095597))

(declare-fun m!1095599 () Bool)

(assert (=> b!854902 m!1095599))

(assert (=> d!267059 d!267267))

(assert (=> d!267059 d!267043))

(declare-fun lt!323509 () List!9237)

(declare-fun b!854914 () Bool)

(declare-fun e!562711 () Bool)

(assert (=> b!854914 (= e!562711 (or (not (= (printList!480 thiss!20117 (t!96227 lt!323428)) Nil!9221)) (= lt!323509 (list!3629 (charsOf!997 (h!14624 lt!323428))))))))

(declare-fun b!854912 () Bool)

(declare-fun e!562710 () List!9237)

(assert (=> b!854912 (= e!562710 (Cons!9221 (h!14622 (list!3629 (charsOf!997 (h!14624 lt!323428)))) (++!2388 (t!96225 (list!3629 (charsOf!997 (h!14624 lt!323428)))) (printList!480 thiss!20117 (t!96227 lt!323428)))))))

(declare-fun b!854911 () Bool)

(assert (=> b!854911 (= e!562710 (printList!480 thiss!20117 (t!96227 lt!323428)))))

(declare-fun d!267269 () Bool)

(assert (=> d!267269 e!562711))

(declare-fun res!390386 () Bool)

(assert (=> d!267269 (=> (not res!390386) (not e!562711))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1350 (List!9237) (InoxSet C!4896))

(assert (=> d!267269 (= res!390386 (= (content!1350 lt!323509) ((_ map or) (content!1350 (list!3629 (charsOf!997 (h!14624 lt!323428)))) (content!1350 (printList!480 thiss!20117 (t!96227 lt!323428))))))))

(assert (=> d!267269 (= lt!323509 e!562710)))

(declare-fun c!138634 () Bool)

(assert (=> d!267269 (= c!138634 ((_ is Nil!9221) (list!3629 (charsOf!997 (h!14624 lt!323428)))))))

(assert (=> d!267269 (= (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323428))) (printList!480 thiss!20117 (t!96227 lt!323428))) lt!323509)))

(declare-fun b!854913 () Bool)

(declare-fun res!390385 () Bool)

(assert (=> b!854913 (=> (not res!390385) (not e!562711))))

(assert (=> b!854913 (= res!390385 (= (size!7695 lt!323509) (+ (size!7695 (list!3629 (charsOf!997 (h!14624 lt!323428)))) (size!7695 (printList!480 thiss!20117 (t!96227 lt!323428))))))))

(assert (= (and d!267269 c!138634) b!854911))

(assert (= (and d!267269 (not c!138634)) b!854912))

(assert (= (and d!267269 res!390386) b!854913))

(assert (= (and b!854913 res!390385) b!854914))

(assert (=> b!854912 m!1095031))

(declare-fun m!1095601 () Bool)

(assert (=> b!854912 m!1095601))

(declare-fun m!1095603 () Bool)

(assert (=> d!267269 m!1095603))

(assert (=> d!267269 m!1095029))

(declare-fun m!1095605 () Bool)

(assert (=> d!267269 m!1095605))

(assert (=> d!267269 m!1095031))

(declare-fun m!1095607 () Bool)

(assert (=> d!267269 m!1095607))

(declare-fun m!1095609 () Bool)

(assert (=> b!854913 m!1095609))

(assert (=> b!854913 m!1095029))

(declare-fun m!1095611 () Bool)

(assert (=> b!854913 m!1095611))

(assert (=> b!854913 m!1095031))

(declare-fun m!1095613 () Bool)

(assert (=> b!854913 m!1095613))

(assert (=> b!854645 d!267269))

(declare-fun d!267271 () Bool)

(declare-fun list!3632 (Conc!3055) List!9237)

(assert (=> d!267271 (= (list!3629 (charsOf!997 (h!14624 lt!323428))) (list!3632 (c!138544 (charsOf!997 (h!14624 lt!323428)))))))

(declare-fun bs!231705 () Bool)

(assert (= bs!231705 d!267271))

(declare-fun m!1095615 () Bool)

(assert (=> bs!231705 m!1095615))

(assert (=> b!854645 d!267271))

(declare-fun d!267273 () Bool)

(declare-fun lt!323512 () BalanceConc!6124)

(assert (=> d!267273 (= (list!3629 lt!323512) (originalCharacters!2286 (h!14624 lt!323428)))))

(assert (=> d!267273 (= lt!323512 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428)))) (value!56004 (h!14624 lt!323428))))))

(assert (=> d!267273 (= (charsOf!997 (h!14624 lt!323428)) lt!323512)))

(declare-fun b_lambda!28673 () Bool)

(assert (=> (not b_lambda!28673) (not d!267273)))

(declare-fun t!96320 () Bool)

(declare-fun tb!60389 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428))))) t!96320) tb!60389))

(declare-fun b!854915 () Bool)

(declare-fun e!562712 () Bool)

(declare-fun tp!269497 () Bool)

(assert (=> b!854915 (= e!562712 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428)))) (value!56004 (h!14624 lt!323428))))) tp!269497))))

(declare-fun result!69942 () Bool)

(assert (=> tb!60389 (= result!69942 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428)))) (value!56004 (h!14624 lt!323428)))) e!562712))))

(assert (= tb!60389 b!854915))

(declare-fun m!1095617 () Bool)

(assert (=> b!854915 m!1095617))

(declare-fun m!1095619 () Bool)

(assert (=> tb!60389 m!1095619))

(assert (=> d!267273 t!96320))

(declare-fun b_and!75417 () Bool)

(assert (= b_and!75347 (and (=> t!96320 result!69942) b_and!75417)))

(declare-fun t!96322 () Bool)

(declare-fun tb!60391 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428))))) t!96322) tb!60391))

(declare-fun result!69944 () Bool)

(assert (= result!69944 result!69942))

(assert (=> d!267273 t!96322))

(declare-fun b_and!75419 () Bool)

(assert (= b_and!75355 (and (=> t!96322 result!69944) b_and!75419)))

(declare-fun tb!60393 () Bool)

(declare-fun t!96324 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428))))) t!96324) tb!60393))

(declare-fun result!69946 () Bool)

(assert (= result!69946 result!69942))

(assert (=> d!267273 t!96324))

(declare-fun b_and!75421 () Bool)

(assert (= b_and!75345 (and (=> t!96324 result!69946) b_and!75421)))

(declare-fun t!96326 () Bool)

(declare-fun tb!60395 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428))))) t!96326) tb!60395))

(declare-fun result!69948 () Bool)

(assert (= result!69948 result!69942))

(assert (=> d!267273 t!96326))

(declare-fun b_and!75423 () Bool)

(assert (= b_and!75343 (and (=> t!96326 result!69948) b_and!75423)))

(declare-fun tb!60397 () Bool)

(declare-fun t!96328 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428))))) t!96328) tb!60397))

(declare-fun result!69950 () Bool)

(assert (= result!69950 result!69942))

(assert (=> d!267273 t!96328))

(declare-fun b_and!75425 () Bool)

(assert (= b_and!75351 (and (=> t!96328 result!69950) b_and!75425)))

(declare-fun m!1095621 () Bool)

(assert (=> d!267273 m!1095621))

(declare-fun m!1095623 () Bool)

(assert (=> d!267273 m!1095623))

(assert (=> b!854645 d!267273))

(declare-fun d!267275 () Bool)

(declare-fun c!138637 () Bool)

(assert (=> d!267275 (= c!138637 ((_ is Cons!9223) (t!96227 lt!323428)))))

(declare-fun e!562715 () List!9237)

(assert (=> d!267275 (= (printList!480 thiss!20117 (t!96227 lt!323428)) e!562715)))

(declare-fun b!854920 () Bool)

(assert (=> b!854920 (= e!562715 (++!2388 (list!3629 (charsOf!997 (h!14624 (t!96227 lt!323428)))) (printList!480 thiss!20117 (t!96227 (t!96227 lt!323428)))))))

(declare-fun b!854921 () Bool)

(assert (=> b!854921 (= e!562715 Nil!9221)))

(assert (= (and d!267275 c!138637) b!854920))

(assert (= (and d!267275 (not c!138637)) b!854921))

(declare-fun m!1095625 () Bool)

(assert (=> b!854920 m!1095625))

(assert (=> b!854920 m!1095625))

(declare-fun m!1095627 () Bool)

(assert (=> b!854920 m!1095627))

(declare-fun m!1095629 () Bool)

(assert (=> b!854920 m!1095629))

(assert (=> b!854920 m!1095627))

(assert (=> b!854920 m!1095629))

(declare-fun m!1095631 () Bool)

(assert (=> b!854920 m!1095631))

(assert (=> b!854645 d!267275))

(declare-fun d!267277 () Bool)

(assert (=> d!267277 true))

(declare-fun lambda!25622 () Int)

(declare-fun order!5953 () Int)

(declare-fun dynLambda!4325 (Int Int) Int)

(assert (=> d!267277 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4325 order!5953 lambda!25622))))

(assert (=> d!267277 true))

(assert (=> d!267277 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4325 order!5953 lambda!25622))))

(declare-fun Forall!416 (Int) Bool)

(assert (=> d!267277 (= (semiInverseModEq!676 (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (Forall!416 lambda!25622))))

(declare-fun bs!231706 () Bool)

(assert (= bs!231706 d!267277))

(declare-fun m!1095633 () Bool)

(assert (=> bs!231706 m!1095633))

(assert (=> d!267049 d!267277))

(declare-fun d!267279 () Bool)

(assert (=> d!267279 (= (list!3629 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))) (list!3632 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))))))

(declare-fun bs!231707 () Bool)

(assert (= bs!231707 d!267279))

(declare-fun m!1095635 () Bool)

(assert (=> bs!231707 m!1095635))

(assert (=> b!854439 d!267279))

(declare-fun c!138638 () Bool)

(declare-fun d!267281 () Bool)

(assert (=> d!267281 (= c!138638 ((_ is Cons!9223) ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!562716 () List!9237)

(assert (=> d!267281 (= (printList!480 thiss!20117 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297)) e!562716)))

(declare-fun b!854926 () Bool)

(assert (=> b!854926 (= e!562716 (++!2388 (list!3629 (charsOf!997 (h!14624 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297)))) (printList!480 thiss!20117 (t!96227 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!854927 () Bool)

(assert (=> b!854927 (= e!562716 Nil!9221)))

(assert (= (and d!267281 c!138638) b!854926))

(assert (= (and d!267281 (not c!138638)) b!854927))

(declare-fun m!1095637 () Bool)

(assert (=> b!854926 m!1095637))

(assert (=> b!854926 m!1095637))

(declare-fun m!1095639 () Bool)

(assert (=> b!854926 m!1095639))

(declare-fun m!1095641 () Bool)

(assert (=> b!854926 m!1095641))

(assert (=> b!854926 m!1095639))

(assert (=> b!854926 m!1095641))

(declare-fun m!1095643 () Bool)

(assert (=> b!854926 m!1095643))

(assert (=> b!854643 d!267281))

(declare-fun d!267283 () Bool)

(assert (=> d!267283 (= ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (Cons!9223 separatorToken!297 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297)))))

(assert (=> b!854643 d!267283))

(declare-fun b!854928 () Bool)

(declare-fun e!562717 () List!9237)

(assert (=> b!854928 (= e!562717 Nil!9221)))

(declare-fun b!854929 () Bool)

(declare-fun e!562722 () Bool)

(assert (=> b!854929 (= e!562722 (= (printList!480 thiss!20117 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (t!96227 l!5107)))) e!562717))))

(declare-fun c!138639 () Bool)

(declare-fun lt!323517 () List!9239)

(assert (=> b!854929 (= c!138639 ((_ is Cons!9223) lt!323517))))

(assert (=> b!854929 (= lt!323517 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (t!96227 l!5107))))))

(declare-fun b!854930 () Bool)

(declare-fun e!562719 () Bool)

(declare-fun e!562718 () Bool)

(assert (=> b!854930 (= e!562719 e!562718)))

(declare-fun res!390387 () Bool)

(assert (=> b!854930 (=> res!390387 e!562718)))

(assert (=> b!854930 (= res!390387 (not ((_ is Cons!9223) (t!96227 l!5107))))))

(declare-fun b!854931 () Bool)

(declare-fun e!562721 () List!9237)

(assert (=> b!854931 (= e!562721 Nil!9221)))

(declare-fun b!854932 () Bool)

(assert (=> b!854932 (= e!562717 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323517))) (printList!480 thiss!20117 (t!96227 lt!323517))))))

(declare-fun b!854933 () Bool)

(declare-fun e!562720 () List!9239)

(assert (=> b!854933 (= e!562720 Nil!9223)))

(declare-fun d!267285 () Bool)

(declare-fun lt!323513 () List!9239)

(assert (=> d!267285 (= (printList!480 thiss!20117 lt!323513) (printWithSeparatorTokenList!38 thiss!20117 (t!96227 l!5107) separatorToken!297))))

(assert (=> d!267285 (= lt!323513 e!562720)))

(declare-fun c!138640 () Bool)

(assert (=> d!267285 (= c!138640 ((_ is Cons!9223) (t!96227 l!5107)))))

(assert (=> d!267285 e!562719))

(declare-fun res!390389 () Bool)

(assert (=> d!267285 (=> (not res!390389) (not e!562719))))

(assert (=> d!267285 (= res!390389 (isSeparator!1730 (rule!3153 separatorToken!297)))))

(assert (=> d!267285 (= (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) lt!323513)))

(declare-fun b!854934 () Bool)

(assert (=> b!854934 (= e!562720 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (t!96227 l!5107))))))

(declare-fun lt!323516 () List!9237)

(assert (=> b!854934 (= lt!323516 (list!3629 (charsOf!997 (h!14624 (t!96227 l!5107)))))))

(declare-fun lt!323520 () List!9237)

(assert (=> b!854934 (= lt!323520 (list!3629 (charsOf!997 separatorToken!297)))))

(declare-fun lt!323515 () List!9237)

(assert (=> b!854934 (= lt!323515 (printList!480 thiss!20117 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 l!5107)) separatorToken!297)))))

(declare-fun lt!323519 () Unit!13725)

(assert (=> b!854934 (= lt!323519 (lemmaConcatAssociativity!755 lt!323516 lt!323520 lt!323515))))

(assert (=> b!854934 (= (++!2388 (++!2388 lt!323516 lt!323520) lt!323515) (++!2388 lt!323516 (++!2388 lt!323520 lt!323515)))))

(declare-fun lt!323514 () Unit!13725)

(assert (=> b!854934 (= lt!323514 lt!323519)))

(declare-fun b!854935 () Bool)

(assert (=> b!854935 (= e!562718 (= (printList!480 thiss!20117 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 l!5107)) separatorToken!297) separatorToken!297)) e!562721))))

(declare-fun c!138641 () Bool)

(declare-fun lt!323518 () List!9239)

(assert (=> b!854935 (= c!138641 ((_ is Cons!9223) lt!323518))))

(assert (=> b!854935 (= lt!323518 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!854936 () Bool)

(declare-fun res!390388 () Bool)

(assert (=> b!854936 (=> (not res!390388) (not e!562719))))

(assert (=> b!854936 (= res!390388 e!562722)))

(declare-fun res!390390 () Bool)

(assert (=> b!854936 (=> res!390390 e!562722)))

(assert (=> b!854936 (= res!390390 (not ((_ is Cons!9223) (t!96227 l!5107))))))

(declare-fun b!854937 () Bool)

(assert (=> b!854937 (= e!562721 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323518))) (printList!480 thiss!20117 (t!96227 lt!323518))))))

(assert (= (and d!267285 res!390389) b!854936))

(assert (= (and b!854936 (not res!390390)) b!854929))

(assert (= (and b!854929 c!138639) b!854932))

(assert (= (and b!854929 (not c!138639)) b!854928))

(assert (= (and b!854936 res!390388) b!854930))

(assert (= (and b!854930 (not res!390387)) b!854935))

(assert (= (and b!854935 c!138641) b!854937))

(assert (= (and b!854935 (not c!138641)) b!854931))

(assert (= (and d!267285 c!138640) b!854934))

(assert (= (and d!267285 (not c!138640)) b!854933))

(declare-fun m!1095645 () Bool)

(assert (=> b!854932 m!1095645))

(assert (=> b!854932 m!1095645))

(declare-fun m!1095647 () Bool)

(assert (=> b!854932 m!1095647))

(declare-fun m!1095649 () Bool)

(assert (=> b!854932 m!1095649))

(assert (=> b!854932 m!1095647))

(assert (=> b!854932 m!1095649))

(declare-fun m!1095651 () Bool)

(assert (=> b!854932 m!1095651))

(declare-fun m!1095653 () Bool)

(assert (=> b!854937 m!1095653))

(assert (=> b!854937 m!1095653))

(declare-fun m!1095655 () Bool)

(assert (=> b!854937 m!1095655))

(declare-fun m!1095657 () Bool)

(assert (=> b!854937 m!1095657))

(assert (=> b!854937 m!1095655))

(assert (=> b!854937 m!1095657))

(declare-fun m!1095659 () Bool)

(assert (=> b!854937 m!1095659))

(declare-fun m!1095661 () Bool)

(assert (=> b!854929 m!1095661))

(assert (=> b!854929 m!1095661))

(declare-fun m!1095663 () Bool)

(assert (=> b!854929 m!1095663))

(assert (=> b!854929 m!1095663))

(declare-fun m!1095665 () Bool)

(assert (=> b!854929 m!1095665))

(assert (=> b!854929 m!1095665))

(declare-fun m!1095667 () Bool)

(assert (=> b!854929 m!1095667))

(assert (=> b!854934 m!1095661))

(assert (=> b!854934 m!1095663))

(assert (=> b!854934 m!1095661))

(assert (=> b!854934 m!1095663))

(assert (=> b!854934 m!1095665))

(declare-fun m!1095669 () Bool)

(assert (=> b!854934 m!1095669))

(declare-fun m!1095671 () Bool)

(assert (=> b!854934 m!1095671))

(assert (=> b!854934 m!1095661))

(declare-fun m!1095673 () Bool)

(assert (=> b!854934 m!1095673))

(declare-fun m!1095675 () Bool)

(assert (=> b!854934 m!1095675))

(declare-fun m!1095677 () Bool)

(assert (=> b!854934 m!1095677))

(declare-fun m!1095679 () Bool)

(assert (=> b!854934 m!1095679))

(assert (=> b!854934 m!1094763))

(assert (=> b!854934 m!1094765))

(declare-fun m!1095681 () Bool)

(assert (=> b!854934 m!1095681))

(declare-fun m!1095683 () Bool)

(assert (=> b!854934 m!1095683))

(assert (=> b!854934 m!1095669))

(assert (=> b!854934 m!1095681))

(assert (=> b!854934 m!1094763))

(assert (=> b!854934 m!1095677))

(assert (=> b!854935 m!1095661))

(assert (=> b!854935 m!1095661))

(assert (=> b!854935 m!1095663))

(assert (=> b!854935 m!1095663))

(declare-fun m!1095685 () Bool)

(assert (=> b!854935 m!1095685))

(declare-fun m!1095687 () Bool)

(assert (=> d!267285 m!1095687))

(declare-fun m!1095689 () Bool)

(assert (=> d!267285 m!1095689))

(assert (=> b!854643 d!267285))

(declare-fun d!267287 () Bool)

(assert (=> d!267287 (= ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (Cons!9223 separatorToken!297 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297)))))

(assert (=> b!854416 d!267287))

(declare-fun lt!323521 () List!9237)

(declare-fun b!854941 () Bool)

(declare-fun e!562724 () Bool)

(assert (=> b!854941 (= e!562724 (or (not (= lt!323369 Nil!9221)) (= lt!323521 lt!323365)))))

(declare-fun b!854939 () Bool)

(declare-fun e!562723 () List!9237)

(assert (=> b!854939 (= e!562723 (Cons!9221 (h!14622 lt!323365) (++!2388 (t!96225 lt!323365) lt!323369)))))

(declare-fun b!854938 () Bool)

(assert (=> b!854938 (= e!562723 lt!323369)))

(declare-fun d!267289 () Bool)

(assert (=> d!267289 e!562724))

(declare-fun res!390392 () Bool)

(assert (=> d!267289 (=> (not res!390392) (not e!562724))))

(assert (=> d!267289 (= res!390392 (= (content!1350 lt!323521) ((_ map or) (content!1350 lt!323365) (content!1350 lt!323369))))))

(assert (=> d!267289 (= lt!323521 e!562723)))

(declare-fun c!138642 () Bool)

(assert (=> d!267289 (= c!138642 ((_ is Nil!9221) lt!323365))))

(assert (=> d!267289 (= (++!2388 lt!323365 lt!323369) lt!323521)))

(declare-fun b!854940 () Bool)

(declare-fun res!390391 () Bool)

(assert (=> b!854940 (=> (not res!390391) (not e!562724))))

(assert (=> b!854940 (= res!390391 (= (size!7695 lt!323521) (+ (size!7695 lt!323365) (size!7695 lt!323369))))))

(assert (= (and d!267289 c!138642) b!854938))

(assert (= (and d!267289 (not c!138642)) b!854939))

(assert (= (and d!267289 res!390392) b!854940))

(assert (= (and b!854940 res!390391) b!854941))

(declare-fun m!1095691 () Bool)

(assert (=> b!854939 m!1095691))

(declare-fun m!1095693 () Bool)

(assert (=> d!267289 m!1095693))

(declare-fun m!1095695 () Bool)

(assert (=> d!267289 m!1095695))

(declare-fun m!1095697 () Bool)

(assert (=> d!267289 m!1095697))

(declare-fun m!1095699 () Bool)

(assert (=> b!854940 m!1095699))

(declare-fun m!1095701 () Bool)

(assert (=> b!854940 m!1095701))

(declare-fun m!1095703 () Bool)

(assert (=> b!854940 m!1095703))

(assert (=> b!854416 d!267289))

(declare-fun b!854945 () Bool)

(declare-fun e!562726 () Bool)

(declare-fun lt!323522 () List!9237)

(assert (=> b!854945 (= e!562726 (or (not (= lt!323364 Nil!9221)) (= lt!323522 lt!323369)))))

(declare-fun b!854943 () Bool)

(declare-fun e!562725 () List!9237)

(assert (=> b!854943 (= e!562725 (Cons!9221 (h!14622 lt!323369) (++!2388 (t!96225 lt!323369) lt!323364)))))

(declare-fun b!854942 () Bool)

(assert (=> b!854942 (= e!562725 lt!323364)))

(declare-fun d!267291 () Bool)

(assert (=> d!267291 e!562726))

(declare-fun res!390394 () Bool)

(assert (=> d!267291 (=> (not res!390394) (not e!562726))))

(assert (=> d!267291 (= res!390394 (= (content!1350 lt!323522) ((_ map or) (content!1350 lt!323369) (content!1350 lt!323364))))))

(assert (=> d!267291 (= lt!323522 e!562725)))

(declare-fun c!138643 () Bool)

(assert (=> d!267291 (= c!138643 ((_ is Nil!9221) lt!323369))))

(assert (=> d!267291 (= (++!2388 lt!323369 lt!323364) lt!323522)))

(declare-fun b!854944 () Bool)

(declare-fun res!390393 () Bool)

(assert (=> b!854944 (=> (not res!390393) (not e!562726))))

(assert (=> b!854944 (= res!390393 (= (size!7695 lt!323522) (+ (size!7695 lt!323369) (size!7695 lt!323364))))))

(assert (= (and d!267291 c!138643) b!854942))

(assert (= (and d!267291 (not c!138643)) b!854943))

(assert (= (and d!267291 res!390394) b!854944))

(assert (= (and b!854944 res!390393) b!854945))

(declare-fun m!1095705 () Bool)

(assert (=> b!854943 m!1095705))

(declare-fun m!1095707 () Bool)

(assert (=> d!267291 m!1095707))

(assert (=> d!267291 m!1095697))

(declare-fun m!1095709 () Bool)

(assert (=> d!267291 m!1095709))

(declare-fun m!1095711 () Bool)

(assert (=> b!854944 m!1095711))

(assert (=> b!854944 m!1095703))

(declare-fun m!1095713 () Bool)

(assert (=> b!854944 m!1095713))

(assert (=> b!854416 d!267291))

(declare-fun d!267293 () Bool)

(assert (=> d!267293 (= (++!2388 (++!2388 lt!323365 lt!323369) lt!323364) (++!2388 lt!323365 (++!2388 lt!323369 lt!323364)))))

(declare-fun lt!323525 () Unit!13725)

(declare-fun choose!5042 (List!9237 List!9237 List!9237) Unit!13725)

(assert (=> d!267293 (= lt!323525 (choose!5042 lt!323365 lt!323369 lt!323364))))

(assert (=> d!267293 (= (lemmaConcatAssociativity!755 lt!323365 lt!323369 lt!323364) lt!323525)))

(declare-fun bs!231708 () Bool)

(assert (= bs!231708 d!267293))

(assert (=> bs!231708 m!1094751))

(assert (=> bs!231708 m!1094753))

(assert (=> bs!231708 m!1094751))

(assert (=> bs!231708 m!1094759))

(declare-fun m!1095715 () Bool)

(assert (=> bs!231708 m!1095715))

(assert (=> bs!231708 m!1094759))

(assert (=> bs!231708 m!1094761))

(assert (=> b!854416 d!267293))

(declare-fun d!267295 () Bool)

(declare-fun lt!323526 () BalanceConc!6124)

(assert (=> d!267295 (= (list!3629 lt!323526) (originalCharacters!2286 (h!14624 (tail!1042 l!5107))))))

(assert (=> d!267295 (= lt!323526 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107))))) (value!56004 (h!14624 (tail!1042 l!5107)))))))

(assert (=> d!267295 (= (charsOf!997 (h!14624 (tail!1042 l!5107))) lt!323526)))

(declare-fun b_lambda!28675 () Bool)

(assert (=> (not b_lambda!28675) (not d!267295)))

(declare-fun t!96331 () Bool)

(declare-fun tb!60399 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107)))))) t!96331) tb!60399))

(declare-fun b!854946 () Bool)

(declare-fun e!562727 () Bool)

(declare-fun tp!269498 () Bool)

(assert (=> b!854946 (= e!562727 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107))))) (value!56004 (h!14624 (tail!1042 l!5107)))))) tp!269498))))

(declare-fun result!69952 () Bool)

(assert (=> tb!60399 (= result!69952 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107))))) (value!56004 (h!14624 (tail!1042 l!5107))))) e!562727))))

(assert (= tb!60399 b!854946))

(declare-fun m!1095717 () Bool)

(assert (=> b!854946 m!1095717))

(declare-fun m!1095719 () Bool)

(assert (=> tb!60399 m!1095719))

(assert (=> d!267295 t!96331))

(declare-fun b_and!75427 () Bool)

(assert (= b_and!75417 (and (=> t!96331 result!69952) b_and!75427)))

(declare-fun t!96333 () Bool)

(declare-fun tb!60401 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107)))))) t!96333) tb!60401))

(declare-fun result!69954 () Bool)

(assert (= result!69954 result!69952))

(assert (=> d!267295 t!96333))

(declare-fun b_and!75429 () Bool)

(assert (= b_and!75421 (and (=> t!96333 result!69954) b_and!75429)))

(declare-fun t!96335 () Bool)

(declare-fun tb!60403 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107)))))) t!96335) tb!60403))

(declare-fun result!69956 () Bool)

(assert (= result!69956 result!69952))

(assert (=> d!267295 t!96335))

(declare-fun b_and!75431 () Bool)

(assert (= b_and!75423 (and (=> t!96335 result!69956) b_and!75431)))

(declare-fun t!96337 () Bool)

(declare-fun tb!60405 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107)))))) t!96337) tb!60405))

(declare-fun result!69958 () Bool)

(assert (= result!69958 result!69952))

(assert (=> d!267295 t!96337))

(declare-fun b_and!75433 () Bool)

(assert (= b_and!75425 (and (=> t!96337 result!69958) b_and!75433)))

(declare-fun tb!60407 () Bool)

(declare-fun t!96339 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107)))))) t!96339) tb!60407))

(declare-fun result!69960 () Bool)

(assert (= result!69960 result!69952))

(assert (=> d!267295 t!96339))

(declare-fun b_and!75435 () Bool)

(assert (= b_and!75419 (and (=> t!96339 result!69960) b_and!75435)))

(declare-fun m!1095721 () Bool)

(assert (=> d!267295 m!1095721))

(declare-fun m!1095723 () Bool)

(assert (=> d!267295 m!1095723))

(assert (=> b!854416 d!267295))

(declare-fun lt!323527 () List!9237)

(declare-fun e!562729 () Bool)

(declare-fun b!854950 () Bool)

(assert (=> b!854950 (= e!562729 (or (not (= (++!2388 lt!323369 lt!323364) Nil!9221)) (= lt!323527 lt!323365)))))

(declare-fun e!562728 () List!9237)

(declare-fun b!854948 () Bool)

(assert (=> b!854948 (= e!562728 (Cons!9221 (h!14622 lt!323365) (++!2388 (t!96225 lt!323365) (++!2388 lt!323369 lt!323364))))))

(declare-fun b!854947 () Bool)

(assert (=> b!854947 (= e!562728 (++!2388 lt!323369 lt!323364))))

(declare-fun d!267297 () Bool)

(assert (=> d!267297 e!562729))

(declare-fun res!390396 () Bool)

(assert (=> d!267297 (=> (not res!390396) (not e!562729))))

(assert (=> d!267297 (= res!390396 (= (content!1350 lt!323527) ((_ map or) (content!1350 lt!323365) (content!1350 (++!2388 lt!323369 lt!323364)))))))

(assert (=> d!267297 (= lt!323527 e!562728)))

(declare-fun c!138644 () Bool)

(assert (=> d!267297 (= c!138644 ((_ is Nil!9221) lt!323365))))

(assert (=> d!267297 (= (++!2388 lt!323365 (++!2388 lt!323369 lt!323364)) lt!323527)))

(declare-fun b!854949 () Bool)

(declare-fun res!390395 () Bool)

(assert (=> b!854949 (=> (not res!390395) (not e!562729))))

(assert (=> b!854949 (= res!390395 (= (size!7695 lt!323527) (+ (size!7695 lt!323365) (size!7695 (++!2388 lt!323369 lt!323364)))))))

(assert (= (and d!267297 c!138644) b!854947))

(assert (= (and d!267297 (not c!138644)) b!854948))

(assert (= (and d!267297 res!390396) b!854949))

(assert (= (and b!854949 res!390395) b!854950))

(assert (=> b!854948 m!1094751))

(declare-fun m!1095725 () Bool)

(assert (=> b!854948 m!1095725))

(declare-fun m!1095727 () Bool)

(assert (=> d!267297 m!1095727))

(assert (=> d!267297 m!1095695))

(assert (=> d!267297 m!1094751))

(declare-fun m!1095729 () Bool)

(assert (=> d!267297 m!1095729))

(declare-fun m!1095731 () Bool)

(assert (=> b!854949 m!1095731))

(assert (=> b!854949 m!1095701))

(assert (=> b!854949 m!1094751))

(declare-fun m!1095733 () Bool)

(assert (=> b!854949 m!1095733))

(assert (=> b!854416 d!267297))

(declare-fun b!854951 () Bool)

(declare-fun e!562730 () List!9237)

(assert (=> b!854951 (= e!562730 Nil!9221)))

(declare-fun e!562735 () Bool)

(declare-fun b!854952 () Bool)

(assert (=> b!854952 (= e!562735 (= (printList!480 thiss!20117 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 (tail!1042 l!5107))) separatorToken!297) separatorToken!297) (h!14624 (t!96227 (tail!1042 l!5107))))) e!562730))))

(declare-fun c!138645 () Bool)

(declare-fun lt!323532 () List!9239)

(assert (=> b!854952 (= c!138645 ((_ is Cons!9223) lt!323532))))

(assert (=> b!854952 (= lt!323532 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 (tail!1042 l!5107))) separatorToken!297) separatorToken!297) (h!14624 (t!96227 (tail!1042 l!5107)))))))

(declare-fun b!854953 () Bool)

(declare-fun e!562732 () Bool)

(declare-fun e!562731 () Bool)

(assert (=> b!854953 (= e!562732 e!562731)))

(declare-fun res!390397 () Bool)

(assert (=> b!854953 (=> res!390397 e!562731)))

(assert (=> b!854953 (= res!390397 (not ((_ is Cons!9223) (t!96227 (tail!1042 l!5107)))))))

(declare-fun b!854954 () Bool)

(declare-fun e!562734 () List!9237)

(assert (=> b!854954 (= e!562734 Nil!9221)))

(declare-fun b!854955 () Bool)

(assert (=> b!854955 (= e!562730 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323532))) (printList!480 thiss!20117 (t!96227 lt!323532))))))

(declare-fun b!854956 () Bool)

(declare-fun e!562733 () List!9239)

(assert (=> b!854956 (= e!562733 Nil!9223)))

(declare-fun lt!323528 () List!9239)

(declare-fun d!267299 () Bool)

(assert (=> d!267299 (= (printList!480 thiss!20117 lt!323528) (printWithSeparatorTokenList!38 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297))))

(assert (=> d!267299 (= lt!323528 e!562733)))

(declare-fun c!138646 () Bool)

(assert (=> d!267299 (= c!138646 ((_ is Cons!9223) (t!96227 (tail!1042 l!5107))))))

(assert (=> d!267299 e!562732))

(declare-fun res!390399 () Bool)

(assert (=> d!267299 (=> (not res!390399) (not e!562732))))

(assert (=> d!267299 (= res!390399 (isSeparator!1730 (rule!3153 separatorToken!297)))))

(assert (=> d!267299 (= (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) lt!323528)))

(declare-fun b!854957 () Bool)

(assert (=> b!854957 (= e!562733 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 (tail!1042 l!5107))) separatorToken!297) separatorToken!297) (h!14624 (t!96227 (tail!1042 l!5107)))))))

(declare-fun lt!323531 () List!9237)

(assert (=> b!854957 (= lt!323531 (list!3629 (charsOf!997 (h!14624 (t!96227 (tail!1042 l!5107))))))))

(declare-fun lt!323535 () List!9237)

(assert (=> b!854957 (= lt!323535 (list!3629 (charsOf!997 separatorToken!297)))))

(declare-fun lt!323530 () List!9237)

(assert (=> b!854957 (= lt!323530 (printList!480 thiss!20117 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 (tail!1042 l!5107))) separatorToken!297)))))

(declare-fun lt!323534 () Unit!13725)

(assert (=> b!854957 (= lt!323534 (lemmaConcatAssociativity!755 lt!323531 lt!323535 lt!323530))))

(assert (=> b!854957 (= (++!2388 (++!2388 lt!323531 lt!323535) lt!323530) (++!2388 lt!323531 (++!2388 lt!323535 lt!323530)))))

(declare-fun lt!323529 () Unit!13725)

(assert (=> b!854957 (= lt!323529 lt!323534)))

(declare-fun b!854958 () Bool)

(assert (=> b!854958 (= e!562731 (= (printList!480 thiss!20117 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 (tail!1042 l!5107))) separatorToken!297) separatorToken!297)) e!562734))))

(declare-fun c!138647 () Bool)

(declare-fun lt!323533 () List!9239)

(assert (=> b!854958 (= c!138647 ((_ is Cons!9223) lt!323533))))

(assert (=> b!854958 (= lt!323533 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (t!96227 (tail!1042 l!5107))) separatorToken!297) separatorToken!297))))

(declare-fun b!854959 () Bool)

(declare-fun res!390398 () Bool)

(assert (=> b!854959 (=> (not res!390398) (not e!562732))))

(assert (=> b!854959 (= res!390398 e!562735)))

(declare-fun res!390400 () Bool)

(assert (=> b!854959 (=> res!390400 e!562735)))

(assert (=> b!854959 (= res!390400 (not ((_ is Cons!9223) (t!96227 (tail!1042 l!5107)))))))

(declare-fun b!854960 () Bool)

(assert (=> b!854960 (= e!562734 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323533))) (printList!480 thiss!20117 (t!96227 lt!323533))))))

(assert (= (and d!267299 res!390399) b!854959))

(assert (= (and b!854959 (not res!390400)) b!854952))

(assert (= (and b!854952 c!138645) b!854955))

(assert (= (and b!854952 (not c!138645)) b!854951))

(assert (= (and b!854959 res!390398) b!854953))

(assert (= (and b!854953 (not res!390397)) b!854958))

(assert (= (and b!854958 c!138647) b!854960))

(assert (= (and b!854958 (not c!138647)) b!854954))

(assert (= (and d!267299 c!138646) b!854957))

(assert (= (and d!267299 (not c!138646)) b!854956))

(declare-fun m!1095735 () Bool)

(assert (=> b!854955 m!1095735))

(assert (=> b!854955 m!1095735))

(declare-fun m!1095737 () Bool)

(assert (=> b!854955 m!1095737))

(declare-fun m!1095739 () Bool)

(assert (=> b!854955 m!1095739))

(assert (=> b!854955 m!1095737))

(assert (=> b!854955 m!1095739))

(declare-fun m!1095741 () Bool)

(assert (=> b!854955 m!1095741))

(declare-fun m!1095743 () Bool)

(assert (=> b!854960 m!1095743))

(assert (=> b!854960 m!1095743))

(declare-fun m!1095745 () Bool)

(assert (=> b!854960 m!1095745))

(declare-fun m!1095747 () Bool)

(assert (=> b!854960 m!1095747))

(assert (=> b!854960 m!1095745))

(assert (=> b!854960 m!1095747))

(declare-fun m!1095749 () Bool)

(assert (=> b!854960 m!1095749))

(declare-fun m!1095751 () Bool)

(assert (=> b!854952 m!1095751))

(assert (=> b!854952 m!1095751))

(declare-fun m!1095753 () Bool)

(assert (=> b!854952 m!1095753))

(assert (=> b!854952 m!1095753))

(declare-fun m!1095755 () Bool)

(assert (=> b!854952 m!1095755))

(assert (=> b!854952 m!1095755))

(declare-fun m!1095757 () Bool)

(assert (=> b!854952 m!1095757))

(assert (=> b!854957 m!1095751))

(assert (=> b!854957 m!1095753))

(assert (=> b!854957 m!1095751))

(assert (=> b!854957 m!1095753))

(assert (=> b!854957 m!1095755))

(declare-fun m!1095759 () Bool)

(assert (=> b!854957 m!1095759))

(declare-fun m!1095761 () Bool)

(assert (=> b!854957 m!1095761))

(assert (=> b!854957 m!1095751))

(declare-fun m!1095763 () Bool)

(assert (=> b!854957 m!1095763))

(declare-fun m!1095765 () Bool)

(assert (=> b!854957 m!1095765))

(declare-fun m!1095767 () Bool)

(assert (=> b!854957 m!1095767))

(declare-fun m!1095769 () Bool)

(assert (=> b!854957 m!1095769))

(assert (=> b!854957 m!1094763))

(assert (=> b!854957 m!1094765))

(declare-fun m!1095771 () Bool)

(assert (=> b!854957 m!1095771))

(declare-fun m!1095773 () Bool)

(assert (=> b!854957 m!1095773))

(assert (=> b!854957 m!1095759))

(assert (=> b!854957 m!1095771))

(assert (=> b!854957 m!1094763))

(assert (=> b!854957 m!1095767))

(assert (=> b!854958 m!1095751))

(assert (=> b!854958 m!1095751))

(assert (=> b!854958 m!1095753))

(assert (=> b!854958 m!1095753))

(declare-fun m!1095775 () Bool)

(assert (=> b!854958 m!1095775))

(declare-fun m!1095777 () Bool)

(assert (=> d!267299 m!1095777))

(declare-fun m!1095779 () Bool)

(assert (=> d!267299 m!1095779))

(assert (=> b!854416 d!267299))

(declare-fun d!267301 () Bool)

(assert (=> d!267301 (= (list!3629 (charsOf!997 separatorToken!297)) (list!3632 (c!138544 (charsOf!997 separatorToken!297))))))

(declare-fun bs!231709 () Bool)

(assert (= bs!231709 d!267301))

(declare-fun m!1095781 () Bool)

(assert (=> bs!231709 m!1095781))

(assert (=> b!854416 d!267301))

(declare-fun b!854964 () Bool)

(declare-fun e!562737 () Bool)

(declare-fun lt!323536 () List!9237)

(assert (=> b!854964 (= e!562737 (or (not (= lt!323364 Nil!9221)) (= lt!323536 (++!2388 lt!323365 lt!323369))))))

(declare-fun e!562736 () List!9237)

(declare-fun b!854962 () Bool)

(assert (=> b!854962 (= e!562736 (Cons!9221 (h!14622 (++!2388 lt!323365 lt!323369)) (++!2388 (t!96225 (++!2388 lt!323365 lt!323369)) lt!323364)))))

(declare-fun b!854961 () Bool)

(assert (=> b!854961 (= e!562736 lt!323364)))

(declare-fun d!267303 () Bool)

(assert (=> d!267303 e!562737))

(declare-fun res!390402 () Bool)

(assert (=> d!267303 (=> (not res!390402) (not e!562737))))

(assert (=> d!267303 (= res!390402 (= (content!1350 lt!323536) ((_ map or) (content!1350 (++!2388 lt!323365 lt!323369)) (content!1350 lt!323364))))))

(assert (=> d!267303 (= lt!323536 e!562736)))

(declare-fun c!138648 () Bool)

(assert (=> d!267303 (= c!138648 ((_ is Nil!9221) (++!2388 lt!323365 lt!323369)))))

(assert (=> d!267303 (= (++!2388 (++!2388 lt!323365 lt!323369) lt!323364) lt!323536)))

(declare-fun b!854963 () Bool)

(declare-fun res!390401 () Bool)

(assert (=> b!854963 (=> (not res!390401) (not e!562737))))

(assert (=> b!854963 (= res!390401 (= (size!7695 lt!323536) (+ (size!7695 (++!2388 lt!323365 lt!323369)) (size!7695 lt!323364))))))

(assert (= (and d!267303 c!138648) b!854961))

(assert (= (and d!267303 (not c!138648)) b!854962))

(assert (= (and d!267303 res!390402) b!854963))

(assert (= (and b!854963 res!390401) b!854964))

(declare-fun m!1095783 () Bool)

(assert (=> b!854962 m!1095783))

(declare-fun m!1095785 () Bool)

(assert (=> d!267303 m!1095785))

(assert (=> d!267303 m!1094759))

(declare-fun m!1095787 () Bool)

(assert (=> d!267303 m!1095787))

(assert (=> d!267303 m!1095709))

(declare-fun m!1095789 () Bool)

(assert (=> b!854963 m!1095789))

(assert (=> b!854963 m!1094759))

(declare-fun m!1095791 () Bool)

(assert (=> b!854963 m!1095791))

(assert (=> b!854963 m!1095713))

(assert (=> b!854416 d!267303))

(declare-fun d!267305 () Bool)

(declare-fun lt!323537 () BalanceConc!6124)

(assert (=> d!267305 (= (list!3629 lt!323537) (originalCharacters!2286 separatorToken!297))))

(assert (=> d!267305 (= lt!323537 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))))

(assert (=> d!267305 (= (charsOf!997 separatorToken!297) lt!323537)))

(declare-fun b_lambda!28677 () Bool)

(assert (=> (not b_lambda!28677) (not d!267305)))

(assert (=> d!267305 t!96262))

(declare-fun b_and!75437 () Bool)

(assert (= b_and!75431 (and (=> t!96262 result!69880) b_and!75437)))

(assert (=> d!267305 t!96266))

(declare-fun b_and!75439 () Bool)

(assert (= b_and!75427 (and (=> t!96266 result!69884) b_and!75439)))

(assert (=> d!267305 t!96270))

(declare-fun b_and!75441 () Bool)

(assert (= b_and!75433 (and (=> t!96270 result!69890) b_and!75441)))

(assert (=> d!267305 t!96264))

(declare-fun b_and!75443 () Bool)

(assert (= b_and!75429 (and (=> t!96264 result!69882) b_and!75443)))

(assert (=> d!267305 t!96274))

(declare-fun b_and!75445 () Bool)

(assert (= b_and!75435 (and (=> t!96274 result!69900) b_and!75445)))

(declare-fun m!1095793 () Bool)

(assert (=> d!267305 m!1095793))

(assert (=> d!267305 m!1095075))

(assert (=> b!854416 d!267305))

(declare-fun d!267307 () Bool)

(assert (=> d!267307 (= ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107))) (Cons!9223 (h!14624 (tail!1042 l!5107)) ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297)))))

(assert (=> b!854416 d!267307))

(declare-fun d!267309 () Bool)

(assert (=> d!267309 (= (list!3629 (charsOf!997 (h!14624 (tail!1042 l!5107)))) (list!3632 (c!138544 (charsOf!997 (h!14624 (tail!1042 l!5107))))))))

(declare-fun bs!231710 () Bool)

(assert (= bs!231710 d!267309))

(declare-fun m!1095795 () Bool)

(assert (=> bs!231710 m!1095795))

(assert (=> b!854416 d!267309))

(declare-fun d!267311 () Bool)

(declare-fun c!138649 () Bool)

(assert (=> d!267311 (= c!138649 ((_ is Cons!9223) (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297)))))

(declare-fun e!562738 () List!9237)

(assert (=> d!267311 (= (printList!480 thiss!20117 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297)) e!562738)))

(declare-fun b!854965 () Bool)

(assert (=> b!854965 (= e!562738 (++!2388 (list!3629 (charsOf!997 (h!14624 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297)))) (printList!480 thiss!20117 (t!96227 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297)))))))

(declare-fun b!854966 () Bool)

(assert (=> b!854966 (= e!562738 Nil!9221)))

(assert (= (and d!267311 c!138649) b!854965))

(assert (= (and d!267311 (not c!138649)) b!854966))

(declare-fun m!1095797 () Bool)

(assert (=> b!854965 m!1095797))

(assert (=> b!854965 m!1095797))

(declare-fun m!1095799 () Bool)

(assert (=> b!854965 m!1095799))

(declare-fun m!1095801 () Bool)

(assert (=> b!854965 m!1095801))

(assert (=> b!854965 m!1095799))

(assert (=> b!854965 m!1095801))

(declare-fun m!1095803 () Bool)

(assert (=> b!854965 m!1095803))

(assert (=> b!854416 d!267311))

(declare-fun d!267313 () Bool)

(declare-fun lt!323540 () Token!3126)

(declare-fun apply!1910 (List!9239 Int) Token!3126)

(assert (=> d!267313 (= lt!323540 (apply!1910 (list!3630 (_1!6028 lt!323374)) 0))))

(declare-fun apply!1911 (Conc!3057 Int) Token!3126)

(assert (=> d!267313 (= lt!323540 (apply!1911 (c!138586 (_1!6028 lt!323374)) 0))))

(declare-fun e!562741 () Bool)

(assert (=> d!267313 e!562741))

(declare-fun res!390405 () Bool)

(assert (=> d!267313 (=> (not res!390405) (not e!562741))))

(assert (=> d!267313 (= res!390405 (<= 0 0))))

(assert (=> d!267313 (= (apply!1909 (_1!6028 lt!323374) 0) lt!323540)))

(declare-fun b!854969 () Bool)

(assert (=> b!854969 (= e!562741 (< 0 (size!7694 (_1!6028 lt!323374))))))

(assert (= (and d!267313 res!390405) b!854969))

(declare-fun m!1095805 () Bool)

(assert (=> d!267313 m!1095805))

(assert (=> d!267313 m!1095805))

(declare-fun m!1095807 () Bool)

(assert (=> d!267313 m!1095807))

(declare-fun m!1095809 () Bool)

(assert (=> d!267313 m!1095809))

(assert (=> b!854969 m!1094789))

(assert (=> b!854432 d!267313))

(declare-fun lt!323541 () List!9237)

(declare-fun e!562743 () Bool)

(declare-fun b!854973 () Bool)

(assert (=> b!854973 (= e!562743 (or (not (= (printList!480 thiss!20117 (t!96227 lt!323366)) Nil!9221)) (= lt!323541 (list!3629 (charsOf!997 (h!14624 lt!323366))))))))

(declare-fun b!854971 () Bool)

(declare-fun e!562742 () List!9237)

(assert (=> b!854971 (= e!562742 (Cons!9221 (h!14622 (list!3629 (charsOf!997 (h!14624 lt!323366)))) (++!2388 (t!96225 (list!3629 (charsOf!997 (h!14624 lt!323366)))) (printList!480 thiss!20117 (t!96227 lt!323366)))))))

(declare-fun b!854970 () Bool)

(assert (=> b!854970 (= e!562742 (printList!480 thiss!20117 (t!96227 lt!323366)))))

(declare-fun d!267315 () Bool)

(assert (=> d!267315 e!562743))

(declare-fun res!390407 () Bool)

(assert (=> d!267315 (=> (not res!390407) (not e!562743))))

(assert (=> d!267315 (= res!390407 (= (content!1350 lt!323541) ((_ map or) (content!1350 (list!3629 (charsOf!997 (h!14624 lt!323366)))) (content!1350 (printList!480 thiss!20117 (t!96227 lt!323366))))))))

(assert (=> d!267315 (= lt!323541 e!562742)))

(declare-fun c!138650 () Bool)

(assert (=> d!267315 (= c!138650 ((_ is Nil!9221) (list!3629 (charsOf!997 (h!14624 lt!323366)))))))

(assert (=> d!267315 (= (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323366))) (printList!480 thiss!20117 (t!96227 lt!323366))) lt!323541)))

(declare-fun b!854972 () Bool)

(declare-fun res!390406 () Bool)

(assert (=> b!854972 (=> (not res!390406) (not e!562743))))

(assert (=> b!854972 (= res!390406 (= (size!7695 lt!323541) (+ (size!7695 (list!3629 (charsOf!997 (h!14624 lt!323366)))) (size!7695 (printList!480 thiss!20117 (t!96227 lt!323366))))))))

(assert (= (and d!267315 c!138650) b!854970))

(assert (= (and d!267315 (not c!138650)) b!854971))

(assert (= (and d!267315 res!390407) b!854972))

(assert (= (and b!854972 res!390406) b!854973))

(assert (=> b!854971 m!1094731))

(declare-fun m!1095811 () Bool)

(assert (=> b!854971 m!1095811))

(declare-fun m!1095813 () Bool)

(assert (=> d!267315 m!1095813))

(assert (=> d!267315 m!1094729))

(declare-fun m!1095815 () Bool)

(assert (=> d!267315 m!1095815))

(assert (=> d!267315 m!1094731))

(declare-fun m!1095817 () Bool)

(assert (=> d!267315 m!1095817))

(declare-fun m!1095819 () Bool)

(assert (=> b!854972 m!1095819))

(assert (=> b!854972 m!1094729))

(declare-fun m!1095821 () Bool)

(assert (=> b!854972 m!1095821))

(assert (=> b!854972 m!1094731))

(declare-fun m!1095823 () Bool)

(assert (=> b!854972 m!1095823))

(assert (=> b!854414 d!267315))

(declare-fun d!267317 () Bool)

(assert (=> d!267317 (= (list!3629 (charsOf!997 (h!14624 lt!323366))) (list!3632 (c!138544 (charsOf!997 (h!14624 lt!323366)))))))

(declare-fun bs!231711 () Bool)

(assert (= bs!231711 d!267317))

(declare-fun m!1095825 () Bool)

(assert (=> bs!231711 m!1095825))

(assert (=> b!854414 d!267317))

(declare-fun d!267319 () Bool)

(declare-fun lt!323542 () BalanceConc!6124)

(assert (=> d!267319 (= (list!3629 lt!323542) (originalCharacters!2286 (h!14624 lt!323366)))))

(assert (=> d!267319 (= lt!323542 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366)))) (value!56004 (h!14624 lt!323366))))))

(assert (=> d!267319 (= (charsOf!997 (h!14624 lt!323366)) lt!323542)))

(declare-fun b_lambda!28679 () Bool)

(assert (=> (not b_lambda!28679) (not d!267319)))

(declare-fun t!96341 () Bool)

(declare-fun tb!60409 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366))))) t!96341) tb!60409))

(declare-fun b!854974 () Bool)

(declare-fun e!562744 () Bool)

(declare-fun tp!269499 () Bool)

(assert (=> b!854974 (= e!562744 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366)))) (value!56004 (h!14624 lt!323366))))) tp!269499))))

(declare-fun result!69962 () Bool)

(assert (=> tb!60409 (= result!69962 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366)))) (value!56004 (h!14624 lt!323366)))) e!562744))))

(assert (= tb!60409 b!854974))

(declare-fun m!1095827 () Bool)

(assert (=> b!854974 m!1095827))

(declare-fun m!1095829 () Bool)

(assert (=> tb!60409 m!1095829))

(assert (=> d!267319 t!96341))

(declare-fun b_and!75447 () Bool)

(assert (= b_and!75439 (and (=> t!96341 result!69962) b_and!75447)))

(declare-fun t!96343 () Bool)

(declare-fun tb!60411 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366))))) t!96343) tb!60411))

(declare-fun result!69964 () Bool)

(assert (= result!69964 result!69962))

(assert (=> d!267319 t!96343))

(declare-fun b_and!75449 () Bool)

(assert (= b_and!75441 (and (=> t!96343 result!69964) b_and!75449)))

(declare-fun tb!60413 () Bool)

(declare-fun t!96345 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366))))) t!96345) tb!60413))

(declare-fun result!69966 () Bool)

(assert (= result!69966 result!69962))

(assert (=> d!267319 t!96345))

(declare-fun b_and!75451 () Bool)

(assert (= b_and!75445 (and (=> t!96345 result!69966) b_and!75451)))

(declare-fun t!96347 () Bool)

(declare-fun tb!60415 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366))))) t!96347) tb!60415))

(declare-fun result!69968 () Bool)

(assert (= result!69968 result!69962))

(assert (=> d!267319 t!96347))

(declare-fun b_and!75453 () Bool)

(assert (= b_and!75437 (and (=> t!96347 result!69968) b_and!75453)))

(declare-fun t!96349 () Bool)

(declare-fun tb!60417 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366))))) t!96349) tb!60417))

(declare-fun result!69970 () Bool)

(assert (= result!69970 result!69962))

(assert (=> d!267319 t!96349))

(declare-fun b_and!75455 () Bool)

(assert (= b_and!75443 (and (=> t!96349 result!69970) b_and!75455)))

(declare-fun m!1095831 () Bool)

(assert (=> d!267319 m!1095831))

(declare-fun m!1095833 () Bool)

(assert (=> d!267319 m!1095833))

(assert (=> b!854414 d!267319))

(declare-fun d!267321 () Bool)

(declare-fun c!138651 () Bool)

(assert (=> d!267321 (= c!138651 ((_ is Cons!9223) (t!96227 lt!323366)))))

(declare-fun e!562745 () List!9237)

(assert (=> d!267321 (= (printList!480 thiss!20117 (t!96227 lt!323366)) e!562745)))

(declare-fun b!854975 () Bool)

(assert (=> b!854975 (= e!562745 (++!2388 (list!3629 (charsOf!997 (h!14624 (t!96227 lt!323366)))) (printList!480 thiss!20117 (t!96227 (t!96227 lt!323366)))))))

(declare-fun b!854976 () Bool)

(assert (=> b!854976 (= e!562745 Nil!9221)))

(assert (= (and d!267321 c!138651) b!854975))

(assert (= (and d!267321 (not c!138651)) b!854976))

(declare-fun m!1095835 () Bool)

(assert (=> b!854975 m!1095835))

(assert (=> b!854975 m!1095835))

(declare-fun m!1095837 () Bool)

(assert (=> b!854975 m!1095837))

(declare-fun m!1095839 () Bool)

(assert (=> b!854975 m!1095839))

(assert (=> b!854975 m!1095837))

(assert (=> b!854975 m!1095839))

(declare-fun m!1095841 () Bool)

(assert (=> b!854975 m!1095841))

(assert (=> b!854414 d!267321))

(declare-fun bs!231712 () Bool)

(declare-fun d!267323 () Bool)

(assert (= bs!231712 (and d!267323 b!854338)))

(declare-fun lambda!25623 () Int)

(assert (=> bs!231712 (not (= lambda!25623 lambda!25598))))

(declare-fun bs!231713 () Bool)

(assert (= bs!231713 (and d!267323 d!267059)))

(assert (=> bs!231713 (= lambda!25623 lambda!25605)))

(declare-fun bs!231714 () Bool)

(assert (= bs!231714 (and d!267323 d!267101)))

(assert (=> bs!231714 (= lambda!25623 lambda!25606)))

(declare-fun b!854981 () Bool)

(declare-fun e!562750 () Bool)

(assert (=> b!854981 (= e!562750 true)))

(declare-fun b!854980 () Bool)

(declare-fun e!562749 () Bool)

(assert (=> b!854980 (= e!562749 e!562750)))

(declare-fun b!854979 () Bool)

(declare-fun e!562748 () Bool)

(assert (=> b!854979 (= e!562748 e!562749)))

(assert (=> d!267323 e!562748))

(assert (= b!854980 b!854981))

(assert (= b!854979 b!854980))

(assert (= (and d!267323 ((_ is Cons!9222) rules!2621)) b!854979))

(assert (=> b!854981 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25623))))

(assert (=> b!854981 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25623))))

(assert (=> d!267323 true))

(declare-fun lt!323543 () Bool)

(assert (=> d!267323 (= lt!323543 (forall!2185 (t!96227 lt!323343) lambda!25623))))

(declare-fun e!562747 () Bool)

(assert (=> d!267323 (= lt!323543 e!562747)))

(declare-fun res!390409 () Bool)

(assert (=> d!267323 (=> res!390409 e!562747)))

(assert (=> d!267323 (= res!390409 (not ((_ is Cons!9223) (t!96227 lt!323343))))))

(assert (=> d!267323 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267323 (= (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (t!96227 lt!323343)) lt!323543)))

(declare-fun b!854977 () Bool)

(declare-fun e!562746 () Bool)

(assert (=> b!854977 (= e!562747 e!562746)))

(declare-fun res!390408 () Bool)

(assert (=> b!854977 (=> (not res!390408) (not e!562746))))

(assert (=> b!854977 (= res!390408 (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 (t!96227 lt!323343))))))

(declare-fun b!854978 () Bool)

(assert (=> b!854978 (= e!562746 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (t!96227 (t!96227 lt!323343))))))

(assert (= (and d!267323 (not res!390409)) b!854977))

(assert (= (and b!854977 res!390408) b!854978))

(declare-fun m!1095843 () Bool)

(assert (=> d!267323 m!1095843))

(assert (=> d!267323 m!1094691))

(declare-fun m!1095845 () Bool)

(assert (=> b!854977 m!1095845))

(declare-fun m!1095847 () Bool)

(assert (=> b!854978 m!1095847))

(assert (=> b!854632 d!267323))

(declare-fun b!854982 () Bool)

(declare-fun e!562753 () Bool)

(assert (=> b!854982 (= e!562753 (inv!16 (value!56004 (h!14624 (t!96227 l!5107)))))))

(declare-fun b!854983 () Bool)

(declare-fun e!562752 () Bool)

(assert (=> b!854983 (= e!562753 e!562752)))

(declare-fun c!138653 () Bool)

(assert (=> b!854983 (= c!138653 ((_ is IntegerValue!5389) (value!56004 (h!14624 (t!96227 l!5107)))))))

(declare-fun b!854984 () Bool)

(declare-fun res!390410 () Bool)

(declare-fun e!562751 () Bool)

(assert (=> b!854984 (=> res!390410 e!562751)))

(assert (=> b!854984 (= res!390410 (not ((_ is IntegerValue!5390) (value!56004 (h!14624 (t!96227 l!5107))))))))

(assert (=> b!854984 (= e!562752 e!562751)))

(declare-fun b!854985 () Bool)

(assert (=> b!854985 (= e!562751 (inv!15 (value!56004 (h!14624 (t!96227 l!5107)))))))

(declare-fun b!854986 () Bool)

(assert (=> b!854986 (= e!562752 (inv!17 (value!56004 (h!14624 (t!96227 l!5107)))))))

(declare-fun d!267325 () Bool)

(declare-fun c!138652 () Bool)

(assert (=> d!267325 (= c!138652 ((_ is IntegerValue!5388) (value!56004 (h!14624 (t!96227 l!5107)))))))

(assert (=> d!267325 (= (inv!21 (value!56004 (h!14624 (t!96227 l!5107)))) e!562753)))

(assert (= (and d!267325 c!138652) b!854982))

(assert (= (and d!267325 (not c!138652)) b!854983))

(assert (= (and b!854983 c!138653) b!854986))

(assert (= (and b!854983 (not c!138653)) b!854984))

(assert (= (and b!854984 (not res!390410)) b!854985))

(declare-fun m!1095849 () Bool)

(assert (=> b!854982 m!1095849))

(declare-fun m!1095851 () Bool)

(assert (=> b!854985 m!1095851))

(declare-fun m!1095853 () Bool)

(assert (=> b!854986 m!1095853))

(assert (=> b!854666 d!267325))

(declare-fun d!267327 () Bool)

(declare-fun charsToBigInt!0 (List!9236 Int) Int)

(assert (=> d!267327 (= (inv!15 (value!56004 separatorToken!297)) (= (charsToBigInt!0 (text!13021 (value!56004 separatorToken!297)) 0) (value!55999 (value!56004 separatorToken!297))))))

(declare-fun bs!231715 () Bool)

(assert (= bs!231715 d!267327))

(declare-fun m!1095855 () Bool)

(assert (=> bs!231715 m!1095855))

(assert (=> b!854384 d!267327))

(declare-fun d!267329 () Bool)

(declare-fun res!390411 () Bool)

(declare-fun e!562754 () Bool)

(assert (=> d!267329 (=> res!390411 e!562754)))

(assert (=> d!267329 (= res!390411 ((_ is Nil!9223) (t!96227 l!5107)))))

(assert (=> d!267329 (= (forall!2185 (t!96227 l!5107) lambda!25598) e!562754)))

(declare-fun b!854987 () Bool)

(declare-fun e!562755 () Bool)

(assert (=> b!854987 (= e!562754 e!562755)))

(declare-fun res!390412 () Bool)

(assert (=> b!854987 (=> (not res!390412) (not e!562755))))

(assert (=> b!854987 (= res!390412 (dynLambda!4320 lambda!25598 (h!14624 (t!96227 l!5107))))))

(declare-fun b!854988 () Bool)

(assert (=> b!854988 (= e!562755 (forall!2185 (t!96227 (t!96227 l!5107)) lambda!25598))))

(assert (= (and d!267329 (not res!390411)) b!854987))

(assert (= (and b!854987 res!390412) b!854988))

(declare-fun b_lambda!28681 () Bool)

(assert (=> (not b_lambda!28681) (not b!854987)))

(declare-fun m!1095857 () Bool)

(assert (=> b!854987 m!1095857))

(declare-fun m!1095859 () Bool)

(assert (=> b!854988 m!1095859))

(assert (=> b!854451 d!267329))

(declare-fun d!267331 () Bool)

(declare-fun c!138656 () Bool)

(assert (=> d!267331 (= c!138656 ((_ is Node!3055) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))))))

(declare-fun e!562760 () Bool)

(assert (=> d!267331 (= (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))) e!562760)))

(declare-fun b!854995 () Bool)

(declare-fun inv!11733 (Conc!3055) Bool)

(assert (=> b!854995 (= e!562760 (inv!11733 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))))))

(declare-fun b!854996 () Bool)

(declare-fun e!562761 () Bool)

(assert (=> b!854996 (= e!562760 e!562761)))

(declare-fun res!390415 () Bool)

(assert (=> b!854996 (= res!390415 (not ((_ is Leaf!4508) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))))))))

(assert (=> b!854996 (=> res!390415 e!562761)))

(declare-fun b!854997 () Bool)

(declare-fun inv!11734 (Conc!3055) Bool)

(assert (=> b!854997 (= e!562761 (inv!11734 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))))))

(assert (= (and d!267331 c!138656) b!854995))

(assert (= (and d!267331 (not c!138656)) b!854996))

(assert (= (and b!854996 (not res!390415)) b!854997))

(declare-fun m!1095861 () Bool)

(assert (=> b!854995 m!1095861))

(declare-fun m!1095863 () Bool)

(assert (=> b!854997 m!1095863))

(assert (=> b!854648 d!267331))

(declare-fun d!267333 () Bool)

(declare-fun c!138657 () Bool)

(assert (=> d!267333 (= c!138657 ((_ is Cons!9223) ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107))))))

(declare-fun e!562762 () List!9237)

(assert (=> d!267333 (= (printList!480 thiss!20117 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107))) e!562762)))

(declare-fun b!854998 () Bool)

(assert (=> b!854998 (= e!562762 (++!2388 (list!3629 (charsOf!997 (h!14624 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107))))) (printList!480 thiss!20117 (t!96227 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107))))))))

(declare-fun b!854999 () Bool)

(assert (=> b!854999 (= e!562762 Nil!9221)))

(assert (= (and d!267333 c!138657) b!854998))

(assert (= (and d!267333 (not c!138657)) b!854999))

(declare-fun m!1095865 () Bool)

(assert (=> b!854998 m!1095865))

(assert (=> b!854998 m!1095865))

(declare-fun m!1095867 () Bool)

(assert (=> b!854998 m!1095867))

(declare-fun m!1095869 () Bool)

(assert (=> b!854998 m!1095869))

(assert (=> b!854998 m!1095867))

(assert (=> b!854998 m!1095869))

(declare-fun m!1095871 () Bool)

(assert (=> b!854998 m!1095871))

(assert (=> b!854637 d!267333))

(declare-fun d!267335 () Bool)

(assert (=> d!267335 (= ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297) (h!14624 l!5107)) (Cons!9223 (h!14624 l!5107) ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!854637 d!267335))

(assert (=> b!854637 d!267283))

(assert (=> b!854637 d!267285))

(declare-fun d!267337 () Bool)

(declare-fun charsToInt!0 (List!9236) (_ BitVec 32))

(assert (=> d!267337 (= (inv!16 (value!56004 separatorToken!297)) (= (charsToInt!0 (text!13019 (value!56004 separatorToken!297))) (value!55995 (value!56004 separatorToken!297))))))

(declare-fun bs!231716 () Bool)

(assert (= bs!231716 d!267337))

(declare-fun m!1095873 () Bool)

(assert (=> bs!231716 m!1095873))

(assert (=> b!854381 d!267337))

(declare-fun d!267339 () Bool)

(assert (=> d!267339 (= (inv!15 (value!56004 (h!14624 l!5107))) (= (charsToBigInt!0 (text!13021 (value!56004 (h!14624 l!5107))) 0) (value!55999 (value!56004 (h!14624 l!5107)))))))

(declare-fun bs!231717 () Bool)

(assert (= bs!231717 d!267339))

(declare-fun m!1095875 () Bool)

(assert (=> bs!231717 m!1095875))

(assert (=> b!854423 d!267339))

(declare-fun d!267341 () Bool)

(assert (=> d!267341 (= (inv!11722 (tag!1992 (h!14623 (t!96226 rules!2621)))) (= (mod (str.len (value!56003 (tag!1992 (h!14623 (t!96226 rules!2621))))) 2) 0))))

(assert (=> b!854706 d!267341))

(declare-fun d!267343 () Bool)

(declare-fun res!390416 () Bool)

(declare-fun e!562763 () Bool)

(assert (=> d!267343 (=> (not res!390416) (not e!562763))))

(assert (=> d!267343 (= res!390416 (semiInverseModEq!676 (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toValue!2779 (transformation!1730 (h!14623 (t!96226 rules!2621))))))))

(assert (=> d!267343 (= (inv!11725 (transformation!1730 (h!14623 (t!96226 rules!2621)))) e!562763)))

(declare-fun b!855000 () Bool)

(assert (=> b!855000 (= e!562763 (equivClasses!643 (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toValue!2779 (transformation!1730 (h!14623 (t!96226 rules!2621))))))))

(assert (= (and d!267343 res!390416) b!855000))

(declare-fun m!1095877 () Bool)

(assert (=> d!267343 m!1095877))

(declare-fun m!1095879 () Bool)

(assert (=> b!855000 m!1095879))

(assert (=> b!854706 d!267343))

(declare-fun d!267345 () Bool)

(declare-fun res!390417 () Bool)

(declare-fun e!562764 () Bool)

(assert (=> d!267345 (=> (not res!390417) (not e!562764))))

(assert (=> d!267345 (= res!390417 (not (isEmpty!5463 (originalCharacters!2286 (h!14624 (t!96227 l!5107))))))))

(assert (=> d!267345 (= (inv!11726 (h!14624 (t!96227 l!5107))) e!562764)))

(declare-fun b!855001 () Bool)

(declare-fun res!390418 () Bool)

(assert (=> b!855001 (=> (not res!390418) (not e!562764))))

(assert (=> b!855001 (= res!390418 (= (originalCharacters!2286 (h!14624 (t!96227 l!5107))) (list!3629 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (value!56004 (h!14624 (t!96227 l!5107)))))))))

(declare-fun b!855002 () Bool)

(assert (=> b!855002 (= e!562764 (= (size!7691 (h!14624 (t!96227 l!5107))) (size!7695 (originalCharacters!2286 (h!14624 (t!96227 l!5107))))))))

(assert (= (and d!267345 res!390417) b!855001))

(assert (= (and b!855001 res!390418) b!855002))

(declare-fun b_lambda!28683 () Bool)

(assert (=> (not b_lambda!28683) (not b!855001)))

(declare-fun t!96351 () Bool)

(declare-fun tb!60419 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) t!96351) tb!60419))

(declare-fun b!855003 () Bool)

(declare-fun e!562765 () Bool)

(declare-fun tp!269500 () Bool)

(assert (=> b!855003 (= e!562765 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (value!56004 (h!14624 (t!96227 l!5107)))))) tp!269500))))

(declare-fun result!69972 () Bool)

(assert (=> tb!60419 (= result!69972 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (value!56004 (h!14624 (t!96227 l!5107))))) e!562765))))

(assert (= tb!60419 b!855003))

(declare-fun m!1095881 () Bool)

(assert (=> b!855003 m!1095881))

(declare-fun m!1095883 () Bool)

(assert (=> tb!60419 m!1095883))

(assert (=> b!855001 t!96351))

(declare-fun b_and!75457 () Bool)

(assert (= b_and!75449 (and (=> t!96351 result!69972) b_and!75457)))

(declare-fun t!96353 () Bool)

(declare-fun tb!60421 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) t!96353) tb!60421))

(declare-fun result!69974 () Bool)

(assert (= result!69974 result!69972))

(assert (=> b!855001 t!96353))

(declare-fun b_and!75459 () Bool)

(assert (= b_and!75453 (and (=> t!96353 result!69974) b_and!75459)))

(declare-fun tb!60423 () Bool)

(declare-fun t!96355 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) t!96355) tb!60423))

(declare-fun result!69976 () Bool)

(assert (= result!69976 result!69972))

(assert (=> b!855001 t!96355))

(declare-fun b_and!75461 () Bool)

(assert (= b_and!75455 (and (=> t!96355 result!69976) b_and!75461)))

(declare-fun t!96357 () Bool)

(declare-fun tb!60425 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) t!96357) tb!60425))

(declare-fun result!69978 () Bool)

(assert (= result!69978 result!69972))

(assert (=> b!855001 t!96357))

(declare-fun b_and!75463 () Bool)

(assert (= b_and!75447 (and (=> t!96357 result!69978) b_and!75463)))

(declare-fun tb!60427 () Bool)

(declare-fun t!96359 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) t!96359) tb!60427))

(declare-fun result!69980 () Bool)

(assert (= result!69980 result!69972))

(assert (=> b!855001 t!96359))

(declare-fun b_and!75465 () Bool)

(assert (= b_and!75451 (and (=> t!96359 result!69980) b_and!75465)))

(declare-fun m!1095885 () Bool)

(assert (=> d!267345 m!1095885))

(declare-fun m!1095887 () Bool)

(assert (=> b!855001 m!1095887))

(assert (=> b!855001 m!1095887))

(declare-fun m!1095889 () Bool)

(assert (=> b!855001 m!1095889))

(declare-fun m!1095891 () Bool)

(assert (=> b!855002 m!1095891))

(assert (=> b!854665 d!267345))

(declare-fun d!267347 () Bool)

(declare-fun res!390419 () Bool)

(declare-fun e!562766 () Bool)

(assert (=> d!267347 (=> res!390419 e!562766)))

(assert (=> d!267347 (= res!390419 ((_ is Nil!9223) lt!323343))))

(assert (=> d!267347 (= (forall!2185 lt!323343 lambda!25606) e!562766)))

(declare-fun b!855004 () Bool)

(declare-fun e!562767 () Bool)

(assert (=> b!855004 (= e!562766 e!562767)))

(declare-fun res!390420 () Bool)

(assert (=> b!855004 (=> (not res!390420) (not e!562767))))

(assert (=> b!855004 (= res!390420 (dynLambda!4320 lambda!25606 (h!14624 lt!323343)))))

(declare-fun b!855005 () Bool)

(assert (=> b!855005 (= e!562767 (forall!2185 (t!96227 lt!323343) lambda!25606))))

(assert (= (and d!267347 (not res!390419)) b!855004))

(assert (= (and b!855004 res!390420) b!855005))

(declare-fun b_lambda!28685 () Bool)

(assert (=> (not b_lambda!28685) (not b!855004)))

(declare-fun m!1095893 () Bool)

(assert (=> b!855004 m!1095893))

(declare-fun m!1095895 () Bool)

(assert (=> b!855005 m!1095895))

(assert (=> d!267101 d!267347))

(assert (=> d!267101 d!267043))

(declare-fun d!267349 () Bool)

(declare-fun isBalanced!845 (Conc!3055) Bool)

(assert (=> d!267349 (= (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))) (isBalanced!845 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))))))

(declare-fun bs!231718 () Bool)

(assert (= bs!231718 d!267349))

(declare-fun m!1095897 () Bool)

(assert (=> bs!231718 m!1095897))

(assert (=> tb!60335 d!267349))

(declare-fun d!267351 () Bool)

(assert (=> d!267351 (= (isEmpty!5463 (originalCharacters!2286 (h!14624 l!5107))) ((_ is Nil!9221) (originalCharacters!2286 (h!14624 l!5107))))))

(assert (=> d!267055 d!267351))

(declare-fun d!267353 () Bool)

(declare-fun res!390421 () Bool)

(declare-fun e!562768 () Bool)

(assert (=> d!267353 (=> res!390421 e!562768)))

(assert (=> d!267353 (= res!390421 (not ((_ is Cons!9222) (t!96226 rules!2621))))))

(assert (=> d!267353 (= (sepAndNonSepRulesDisjointChars!530 rules!2621 (t!96226 rules!2621)) e!562768)))

(declare-fun b!855006 () Bool)

(declare-fun e!562769 () Bool)

(assert (=> b!855006 (= e!562768 e!562769)))

(declare-fun res!390422 () Bool)

(assert (=> b!855006 (=> (not res!390422) (not e!562769))))

(assert (=> b!855006 (= res!390422 (ruleDisjointCharsFromAllFromOtherType!243 (h!14623 (t!96226 rules!2621)) rules!2621))))

(declare-fun b!855007 () Bool)

(assert (=> b!855007 (= e!562769 (sepAndNonSepRulesDisjointChars!530 rules!2621 (t!96226 (t!96226 rules!2621))))))

(assert (= (and d!267353 (not res!390421)) b!855006))

(assert (= (and b!855006 res!390422) b!855007))

(declare-fun m!1095899 () Bool)

(assert (=> b!855006 m!1095899))

(declare-fun m!1095901 () Bool)

(assert (=> b!855007 m!1095901))

(assert (=> b!854654 d!267353))

(declare-fun bs!231719 () Bool)

(declare-fun d!267355 () Bool)

(assert (= bs!231719 (and d!267355 d!267277)))

(declare-fun lambda!25624 () Int)

(assert (=> bs!231719 (= (and (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (= (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toValue!2779 (transformation!1730 (h!14623 rules!2621))))) (= lambda!25624 lambda!25622))))

(assert (=> d!267355 true))

(assert (=> d!267355 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) (dynLambda!4325 order!5953 lambda!25624))))

(assert (=> d!267355 true))

(assert (=> d!267355 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107))))) (dynLambda!4325 order!5953 lambda!25624))))

(assert (=> d!267355 (= (semiInverseModEq!676 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107))))) (Forall!416 lambda!25624))))

(declare-fun bs!231720 () Bool)

(assert (= bs!231720 d!267355))

(declare-fun m!1095903 () Bool)

(assert (=> bs!231720 m!1095903))

(assert (=> d!267035 d!267355))

(declare-fun d!267357 () Bool)

(assert (=> d!267357 true))

(declare-fun lambda!25627 () Int)

(declare-fun order!5955 () Int)

(declare-fun dynLambda!4327 (Int Int) Int)

(assert (=> d!267357 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))) (dynLambda!4327 order!5955 lambda!25627))))

(declare-fun Forall2!327 (Int) Bool)

(assert (=> d!267357 (= (equivClasses!643 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))) (Forall2!327 lambda!25627))))

(declare-fun bs!231722 () Bool)

(assert (= bs!231722 d!267357))

(declare-fun m!1095905 () Bool)

(assert (=> bs!231722 m!1095905))

(assert (=> b!854630 d!267357))

(declare-fun d!267361 () Bool)

(declare-fun lt!323548 () Int)

(assert (=> d!267361 (>= lt!323548 0)))

(declare-fun e!562779 () Int)

(assert (=> d!267361 (= lt!323548 e!562779)))

(declare-fun c!138660 () Bool)

(assert (=> d!267361 (= c!138660 ((_ is Nil!9221) (originalCharacters!2286 separatorToken!297)))))

(assert (=> d!267361 (= (size!7695 (originalCharacters!2286 separatorToken!297)) lt!323548)))

(declare-fun b!855021 () Bool)

(assert (=> b!855021 (= e!562779 0)))

(declare-fun b!855022 () Bool)

(assert (=> b!855022 (= e!562779 (+ 1 (size!7695 (t!96225 (originalCharacters!2286 separatorToken!297)))))))

(assert (= (and d!267361 c!138660) b!855021))

(assert (= (and d!267361 (not c!138660)) b!855022))

(declare-fun m!1095915 () Bool)

(assert (=> b!855022 m!1095915))

(assert (=> b!854647 d!267361))

(declare-fun d!267367 () Bool)

(declare-fun lt!323550 () Bool)

(declare-fun e!562781 () Bool)

(assert (=> d!267367 (= lt!323550 e!562781)))

(declare-fun res!390428 () Bool)

(assert (=> d!267367 (=> (not res!390428) (not e!562781))))

(assert (=> d!267367 (= res!390428 (= (list!3630 (_1!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 (h!14624 l!5107)))))) (list!3630 (singletonSeq!547 (h!14624 l!5107)))))))

(declare-fun e!562780 () Bool)

(assert (=> d!267367 (= lt!323550 e!562780)))

(declare-fun res!390429 () Bool)

(assert (=> d!267367 (=> (not res!390429) (not e!562780))))

(declare-fun lt!323549 () tuple2!10404)

(assert (=> d!267367 (= res!390429 (= (size!7694 (_1!6028 lt!323549)) 1))))

(assert (=> d!267367 (= lt!323549 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 (h!14624 l!5107)))))))

(assert (=> d!267367 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267367 (= (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 l!5107)) lt!323550)))

(declare-fun b!855023 () Bool)

(declare-fun res!390427 () Bool)

(assert (=> b!855023 (=> (not res!390427) (not e!562780))))

(assert (=> b!855023 (= res!390427 (= (apply!1909 (_1!6028 lt!323549) 0) (h!14624 l!5107)))))

(declare-fun b!855024 () Bool)

(assert (=> b!855024 (= e!562780 (isEmpty!5462 (_2!6028 lt!323549)))))

(declare-fun b!855025 () Bool)

(assert (=> b!855025 (= e!562781 (isEmpty!5462 (_2!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 (h!14624 l!5107)))))))))

(assert (= (and d!267367 res!390429) b!855023))

(assert (= (and b!855023 res!390427) b!855024))

(assert (= (and d!267367 res!390428) b!855025))

(declare-fun m!1095923 () Bool)

(assert (=> d!267367 m!1095923))

(declare-fun m!1095925 () Bool)

(assert (=> d!267367 m!1095925))

(assert (=> d!267367 m!1095923))

(declare-fun m!1095927 () Bool)

(assert (=> d!267367 m!1095927))

(declare-fun m!1095929 () Bool)

(assert (=> d!267367 m!1095929))

(declare-fun m!1095931 () Bool)

(assert (=> d!267367 m!1095931))

(declare-fun m!1095933 () Bool)

(assert (=> d!267367 m!1095933))

(assert (=> d!267367 m!1094691))

(assert (=> d!267367 m!1095923))

(assert (=> d!267367 m!1095931))

(declare-fun m!1095935 () Bool)

(assert (=> b!855023 m!1095935))

(declare-fun m!1095937 () Bool)

(assert (=> b!855024 m!1095937))

(assert (=> b!855025 m!1095923))

(assert (=> b!855025 m!1095923))

(assert (=> b!855025 m!1095931))

(assert (=> b!855025 m!1095931))

(assert (=> b!855025 m!1095933))

(declare-fun m!1095939 () Bool)

(assert (=> b!855025 m!1095939))

(assert (=> b!854615 d!267367))

(declare-fun d!267371 () Bool)

(declare-fun lt!323552 () Int)

(assert (=> d!267371 (>= lt!323552 0)))

(declare-fun e!562784 () Int)

(assert (=> d!267371 (= lt!323552 e!562784)))

(declare-fun c!138662 () Bool)

(assert (=> d!267371 (= c!138662 ((_ is Nil!9221) (originalCharacters!2286 (h!14624 l!5107))))))

(assert (=> d!267371 (= (size!7695 (originalCharacters!2286 (h!14624 l!5107))) lt!323552)))

(declare-fun b!855030 () Bool)

(assert (=> b!855030 (= e!562784 0)))

(declare-fun b!855031 () Bool)

(assert (=> b!855031 (= e!562784 (+ 1 (size!7695 (t!96225 (originalCharacters!2286 (h!14624 l!5107))))))))

(assert (= (and d!267371 c!138662) b!855030))

(assert (= (and d!267371 (not c!138662)) b!855031))

(declare-fun m!1095955 () Bool)

(assert (=> b!855031 m!1095955))

(assert (=> b!854440 d!267371))

(declare-fun bs!231733 () Bool)

(declare-fun d!267375 () Bool)

(assert (= bs!231733 (and d!267375 d!267277)))

(declare-fun lambda!25630 () Int)

(assert (=> bs!231733 (= (and (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (= (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297))) (toValue!2779 (transformation!1730 (h!14623 rules!2621))))) (= lambda!25630 lambda!25622))))

(declare-fun bs!231734 () Bool)

(assert (= bs!231734 (and d!267375 d!267355)))

(assert (=> bs!231734 (= (and (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) (= (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (= lambda!25630 lambda!25624))))

(assert (=> d!267375 true))

(assert (=> d!267375 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) (dynLambda!4325 order!5953 lambda!25630))))

(assert (=> d!267375 true))

(assert (=> d!267375 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))) (dynLambda!4325 order!5953 lambda!25630))))

(assert (=> d!267375 (= (semiInverseModEq!676 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))) (Forall!416 lambda!25630))))

(declare-fun bs!231735 () Bool)

(assert (= bs!231735 d!267375))

(declare-fun m!1095963 () Bool)

(assert (=> bs!231735 m!1095963))

(assert (=> d!267099 d!267375))

(declare-fun c!138663 () Bool)

(declare-fun d!267379 () Bool)

(assert (=> d!267379 (= c!138663 ((_ is Cons!9223) ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297)))))

(declare-fun e!562786 () List!9237)

(assert (=> d!267379 (= (printList!480 thiss!20117 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297)) e!562786)))

(declare-fun b!855033 () Bool)

(assert (=> b!855033 (= e!562786 (++!2388 (list!3629 (charsOf!997 (h!14624 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297)))) (printList!480 thiss!20117 (t!96227 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297)))))))

(declare-fun b!855034 () Bool)

(assert (=> b!855034 (= e!562786 Nil!9221)))

(assert (= (and d!267379 c!138663) b!855033))

(assert (= (and d!267379 (not c!138663)) b!855034))

(declare-fun m!1095969 () Bool)

(assert (=> b!855033 m!1095969))

(assert (=> b!855033 m!1095969))

(declare-fun m!1095975 () Bool)

(assert (=> b!855033 m!1095975))

(declare-fun m!1095979 () Bool)

(assert (=> b!855033 m!1095979))

(assert (=> b!855033 m!1095975))

(assert (=> b!855033 m!1095979))

(declare-fun m!1095983 () Bool)

(assert (=> b!855033 m!1095983))

(assert (=> b!854417 d!267379))

(assert (=> b!854417 d!267287))

(assert (=> b!854417 d!267299))

(declare-fun d!267385 () Bool)

(declare-fun lt!323554 () Bool)

(assert (=> d!267385 (= lt!323554 (isEmpty!5463 (list!3629 (_2!6028 lt!323374))))))

(assert (=> d!267385 (= lt!323554 (isEmpty!5464 (c!138544 (_2!6028 lt!323374))))))

(assert (=> d!267385 (= (isEmpty!5462 (_2!6028 lt!323374)) lt!323554)))

(declare-fun bs!231736 () Bool)

(assert (= bs!231736 d!267385))

(declare-fun m!1095985 () Bool)

(assert (=> bs!231736 m!1095985))

(assert (=> bs!231736 m!1095985))

(declare-fun m!1095991 () Bool)

(assert (=> bs!231736 m!1095991))

(declare-fun m!1095993 () Bool)

(assert (=> bs!231736 m!1095993))

(assert (=> b!854433 d!267385))

(declare-fun d!267387 () Bool)

(assert (=> d!267387 (= (list!3629 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))) (list!3632 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))))))

(declare-fun bs!231737 () Bool)

(assert (= bs!231737 d!267387))

(declare-fun m!1095995 () Bool)

(assert (=> bs!231737 m!1095995))

(assert (=> b!854646 d!267387))

(declare-fun d!267391 () Bool)

(assert (=> d!267391 (= (isEmpty!5463 (originalCharacters!2286 separatorToken!297)) ((_ is Nil!9221) (originalCharacters!2286 separatorToken!297)))))

(assert (=> d!267107 d!267391))

(declare-fun e!562792 () Bool)

(declare-fun lt!323555 () List!9237)

(declare-fun b!855045 () Bool)

(assert (=> b!855045 (= e!562792 (or (not (= (printList!480 thiss!20117 (t!96227 lt!323427)) Nil!9221)) (= lt!323555 (list!3629 (charsOf!997 (h!14624 lt!323427))))))))

(declare-fun b!855043 () Bool)

(declare-fun e!562791 () List!9237)

(assert (=> b!855043 (= e!562791 (Cons!9221 (h!14622 (list!3629 (charsOf!997 (h!14624 lt!323427)))) (++!2388 (t!96225 (list!3629 (charsOf!997 (h!14624 lt!323427)))) (printList!480 thiss!20117 (t!96227 lt!323427)))))))

(declare-fun b!855042 () Bool)

(assert (=> b!855042 (= e!562791 (printList!480 thiss!20117 (t!96227 lt!323427)))))

(declare-fun d!267393 () Bool)

(assert (=> d!267393 e!562792))

(declare-fun res!390434 () Bool)

(assert (=> d!267393 (=> (not res!390434) (not e!562792))))

(assert (=> d!267393 (= res!390434 (= (content!1350 lt!323555) ((_ map or) (content!1350 (list!3629 (charsOf!997 (h!14624 lt!323427)))) (content!1350 (printList!480 thiss!20117 (t!96227 lt!323427))))))))

(assert (=> d!267393 (= lt!323555 e!562791)))

(declare-fun c!138667 () Bool)

(assert (=> d!267393 (= c!138667 ((_ is Nil!9221) (list!3629 (charsOf!997 (h!14624 lt!323427)))))))

(assert (=> d!267393 (= (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323427))) (printList!480 thiss!20117 (t!96227 lt!323427))) lt!323555)))

(declare-fun b!855044 () Bool)

(declare-fun res!390433 () Bool)

(assert (=> b!855044 (=> (not res!390433) (not e!562792))))

(assert (=> b!855044 (= res!390433 (= (size!7695 lt!323555) (+ (size!7695 (list!3629 (charsOf!997 (h!14624 lt!323427)))) (size!7695 (printList!480 thiss!20117 (t!96227 lt!323427))))))))

(assert (= (and d!267393 c!138667) b!855042))

(assert (= (and d!267393 (not c!138667)) b!855043))

(assert (= (and d!267393 res!390434) b!855044))

(assert (= (and b!855044 res!390433) b!855045))

(assert (=> b!855043 m!1095023))

(declare-fun m!1096003 () Bool)

(assert (=> b!855043 m!1096003))

(declare-fun m!1096005 () Bool)

(assert (=> d!267393 m!1096005))

(assert (=> d!267393 m!1095021))

(declare-fun m!1096007 () Bool)

(assert (=> d!267393 m!1096007))

(assert (=> d!267393 m!1095023))

(declare-fun m!1096011 () Bool)

(assert (=> d!267393 m!1096011))

(declare-fun m!1096013 () Bool)

(assert (=> b!855044 m!1096013))

(assert (=> b!855044 m!1095021))

(declare-fun m!1096015 () Bool)

(assert (=> b!855044 m!1096015))

(assert (=> b!855044 m!1095023))

(declare-fun m!1096017 () Bool)

(assert (=> b!855044 m!1096017))

(assert (=> b!854640 d!267393))

(declare-fun d!267395 () Bool)

(assert (=> d!267395 (= (list!3629 (charsOf!997 (h!14624 lt!323427))) (list!3632 (c!138544 (charsOf!997 (h!14624 lt!323427)))))))

(declare-fun bs!231738 () Bool)

(assert (= bs!231738 d!267395))

(declare-fun m!1096019 () Bool)

(assert (=> bs!231738 m!1096019))

(assert (=> b!854640 d!267395))

(declare-fun d!267399 () Bool)

(declare-fun lt!323556 () BalanceConc!6124)

(assert (=> d!267399 (= (list!3629 lt!323556) (originalCharacters!2286 (h!14624 lt!323427)))))

(assert (=> d!267399 (= lt!323556 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427)))) (value!56004 (h!14624 lt!323427))))))

(assert (=> d!267399 (= (charsOf!997 (h!14624 lt!323427)) lt!323556)))

(declare-fun b_lambda!28689 () Bool)

(assert (=> (not b_lambda!28689) (not d!267399)))

(declare-fun tb!60439 () Bool)

(declare-fun t!96371 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427))))) t!96371) tb!60439))

(declare-fun b!855049 () Bool)

(declare-fun e!562795 () Bool)

(declare-fun tp!269502 () Bool)

(assert (=> b!855049 (= e!562795 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427)))) (value!56004 (h!14624 lt!323427))))) tp!269502))))

(declare-fun result!69992 () Bool)

(assert (=> tb!60439 (= result!69992 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427)))) (value!56004 (h!14624 lt!323427)))) e!562795))))

(assert (= tb!60439 b!855049))

(declare-fun m!1096023 () Bool)

(assert (=> b!855049 m!1096023))

(declare-fun m!1096025 () Bool)

(assert (=> tb!60439 m!1096025))

(assert (=> d!267399 t!96371))

(declare-fun b_and!75477 () Bool)

(assert (= b_and!75457 (and (=> t!96371 result!69992) b_and!75477)))

(declare-fun t!96373 () Bool)

(declare-fun tb!60441 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427))))) t!96373) tb!60441))

(declare-fun result!69994 () Bool)

(assert (= result!69994 result!69992))

(assert (=> d!267399 t!96373))

(declare-fun b_and!75479 () Bool)

(assert (= b_and!75459 (and (=> t!96373 result!69994) b_and!75479)))

(declare-fun tb!60443 () Bool)

(declare-fun t!96375 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427))))) t!96375) tb!60443))

(declare-fun result!69996 () Bool)

(assert (= result!69996 result!69992))

(assert (=> d!267399 t!96375))

(declare-fun b_and!75481 () Bool)

(assert (= b_and!75463 (and (=> t!96375 result!69996) b_and!75481)))

(declare-fun t!96377 () Bool)

(declare-fun tb!60445 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427))))) t!96377) tb!60445))

(declare-fun result!69998 () Bool)

(assert (= result!69998 result!69992))

(assert (=> d!267399 t!96377))

(declare-fun b_and!75483 () Bool)

(assert (= b_and!75465 (and (=> t!96377 result!69998) b_and!75483)))

(declare-fun t!96379 () Bool)

(declare-fun tb!60447 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427))))) t!96379) tb!60447))

(declare-fun result!70000 () Bool)

(assert (= result!70000 result!69992))

(assert (=> d!267399 t!96379))

(declare-fun b_and!75485 () Bool)

(assert (= b_and!75461 (and (=> t!96379 result!70000) b_and!75485)))

(declare-fun m!1096037 () Bool)

(assert (=> d!267399 m!1096037))

(declare-fun m!1096039 () Bool)

(assert (=> d!267399 m!1096039))

(assert (=> b!854640 d!267399))

(declare-fun d!267403 () Bool)

(declare-fun c!138668 () Bool)

(assert (=> d!267403 (= c!138668 ((_ is Cons!9223) (t!96227 lt!323427)))))

(declare-fun e!562796 () List!9237)

(assert (=> d!267403 (= (printList!480 thiss!20117 (t!96227 lt!323427)) e!562796)))

(declare-fun b!855050 () Bool)

(assert (=> b!855050 (= e!562796 (++!2388 (list!3629 (charsOf!997 (h!14624 (t!96227 lt!323427)))) (printList!480 thiss!20117 (t!96227 (t!96227 lt!323427)))))))

(declare-fun b!855051 () Bool)

(assert (=> b!855051 (= e!562796 Nil!9221)))

(assert (= (and d!267403 c!138668) b!855050))

(assert (= (and d!267403 (not c!138668)) b!855051))

(declare-fun m!1096047 () Bool)

(assert (=> b!855050 m!1096047))

(assert (=> b!855050 m!1096047))

(declare-fun m!1096051 () Bool)

(assert (=> b!855050 m!1096051))

(declare-fun m!1096053 () Bool)

(assert (=> b!855050 m!1096053))

(assert (=> b!855050 m!1096051))

(assert (=> b!855050 m!1096053))

(declare-fun m!1096055 () Bool)

(assert (=> b!855050 m!1096055))

(assert (=> b!854640 d!267403))

(declare-fun d!267407 () Bool)

(declare-fun charsToBigInt!1 (List!9236) Int)

(assert (=> d!267407 (= (inv!17 (value!56004 separatorToken!297)) (= (charsToBigInt!1 (text!13020 (value!56004 separatorToken!297))) (value!55996 (value!56004 separatorToken!297))))))

(declare-fun bs!231743 () Bool)

(assert (= bs!231743 d!267407))

(declare-fun m!1096059 () Bool)

(assert (=> bs!231743 m!1096059))

(assert (=> b!854385 d!267407))

(declare-fun d!267411 () Bool)

(declare-fun c!138671 () Bool)

(assert (=> d!267411 (= c!138671 ((_ is Cons!9223) ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107)))))))

(declare-fun e!562800 () List!9237)

(assert (=> d!267411 (= (printList!480 thiss!20117 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107)))) e!562800)))

(declare-fun b!855057 () Bool)

(assert (=> b!855057 (= e!562800 (++!2388 (list!3629 (charsOf!997 (h!14624 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107)))))) (printList!480 thiss!20117 (t!96227 ($colon$colon!93 ($colon$colon!93 (withSeparatorTokenList!62 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297) separatorToken!297) (h!14624 (tail!1042 l!5107)))))))))

(declare-fun b!855058 () Bool)

(assert (=> b!855058 (= e!562800 Nil!9221)))

(assert (= (and d!267411 c!138671) b!855057))

(assert (= (and d!267411 (not c!138671)) b!855058))

(declare-fun m!1096067 () Bool)

(assert (=> b!855057 m!1096067))

(assert (=> b!855057 m!1096067))

(declare-fun m!1096073 () Bool)

(assert (=> b!855057 m!1096073))

(declare-fun m!1096077 () Bool)

(assert (=> b!855057 m!1096077))

(assert (=> b!855057 m!1096073))

(assert (=> b!855057 m!1096077))

(declare-fun m!1096081 () Bool)

(assert (=> b!855057 m!1096081))

(assert (=> b!854411 d!267411))

(assert (=> b!854411 d!267307))

(assert (=> b!854411 d!267287))

(assert (=> b!854411 d!267299))

(declare-fun d!267417 () Bool)

(assert (=> d!267417 (= (++!2388 (++!2388 lt!323426 lt!323430) lt!323425) (++!2388 lt!323426 (++!2388 lt!323430 lt!323425)))))

(declare-fun lt!323559 () Unit!13725)

(assert (=> d!267417 (= lt!323559 (choose!5042 lt!323426 lt!323430 lt!323425))))

(assert (=> d!267417 (= (lemmaConcatAssociativity!755 lt!323426 lt!323430 lt!323425) lt!323559)))

(declare-fun bs!231744 () Bool)

(assert (= bs!231744 d!267417))

(assert (=> bs!231744 m!1095043))

(assert (=> bs!231744 m!1095045))

(assert (=> bs!231744 m!1095043))

(assert (=> bs!231744 m!1095051))

(declare-fun m!1096085 () Bool)

(assert (=> bs!231744 m!1096085))

(assert (=> bs!231744 m!1095051))

(assert (=> bs!231744 m!1095053))

(assert (=> b!854642 d!267417))

(declare-fun e!562804 () Bool)

(declare-fun b!855066 () Bool)

(declare-fun lt!323560 () List!9237)

(assert (=> b!855066 (= e!562804 (or (not (= lt!323430 Nil!9221)) (= lt!323560 lt!323426)))))

(declare-fun b!855064 () Bool)

(declare-fun e!562803 () List!9237)

(assert (=> b!855064 (= e!562803 (Cons!9221 (h!14622 lt!323426) (++!2388 (t!96225 lt!323426) lt!323430)))))

(declare-fun b!855063 () Bool)

(assert (=> b!855063 (= e!562803 lt!323430)))

(declare-fun d!267419 () Bool)

(assert (=> d!267419 e!562804))

(declare-fun res!390440 () Bool)

(assert (=> d!267419 (=> (not res!390440) (not e!562804))))

(assert (=> d!267419 (= res!390440 (= (content!1350 lt!323560) ((_ map or) (content!1350 lt!323426) (content!1350 lt!323430))))))

(assert (=> d!267419 (= lt!323560 e!562803)))

(declare-fun c!138674 () Bool)

(assert (=> d!267419 (= c!138674 ((_ is Nil!9221) lt!323426))))

(assert (=> d!267419 (= (++!2388 lt!323426 lt!323430) lt!323560)))

(declare-fun b!855065 () Bool)

(declare-fun res!390439 () Bool)

(assert (=> b!855065 (=> (not res!390439) (not e!562804))))

(assert (=> b!855065 (= res!390439 (= (size!7695 lt!323560) (+ (size!7695 lt!323426) (size!7695 lt!323430))))))

(assert (= (and d!267419 c!138674) b!855063))

(assert (= (and d!267419 (not c!138674)) b!855064))

(assert (= (and d!267419 res!390440) b!855065))

(assert (= (and b!855065 res!390439) b!855066))

(declare-fun m!1096089 () Bool)

(assert (=> b!855064 m!1096089))

(declare-fun m!1096091 () Bool)

(assert (=> d!267419 m!1096091))

(declare-fun m!1096093 () Bool)

(assert (=> d!267419 m!1096093))

(declare-fun m!1096095 () Bool)

(assert (=> d!267419 m!1096095))

(declare-fun m!1096097 () Bool)

(assert (=> b!855065 m!1096097))

(declare-fun m!1096099 () Bool)

(assert (=> b!855065 m!1096099))

(declare-fun m!1096101 () Bool)

(assert (=> b!855065 m!1096101))

(assert (=> b!854642 d!267419))

(assert (=> b!854642 d!267305))

(declare-fun b!855070 () Bool)

(declare-fun lt!323561 () List!9237)

(declare-fun e!562806 () Bool)

(assert (=> b!855070 (= e!562806 (or (not (= (++!2388 lt!323430 lt!323425) Nil!9221)) (= lt!323561 lt!323426)))))

(declare-fun b!855068 () Bool)

(declare-fun e!562805 () List!9237)

(assert (=> b!855068 (= e!562805 (Cons!9221 (h!14622 lt!323426) (++!2388 (t!96225 lt!323426) (++!2388 lt!323430 lt!323425))))))

(declare-fun b!855067 () Bool)

(assert (=> b!855067 (= e!562805 (++!2388 lt!323430 lt!323425))))

(declare-fun d!267423 () Bool)

(assert (=> d!267423 e!562806))

(declare-fun res!390442 () Bool)

(assert (=> d!267423 (=> (not res!390442) (not e!562806))))

(assert (=> d!267423 (= res!390442 (= (content!1350 lt!323561) ((_ map or) (content!1350 lt!323426) (content!1350 (++!2388 lt!323430 lt!323425)))))))

(assert (=> d!267423 (= lt!323561 e!562805)))

(declare-fun c!138675 () Bool)

(assert (=> d!267423 (= c!138675 ((_ is Nil!9221) lt!323426))))

(assert (=> d!267423 (= (++!2388 lt!323426 (++!2388 lt!323430 lt!323425)) lt!323561)))

(declare-fun b!855069 () Bool)

(declare-fun res!390441 () Bool)

(assert (=> b!855069 (=> (not res!390441) (not e!562806))))

(assert (=> b!855069 (= res!390441 (= (size!7695 lt!323561) (+ (size!7695 lt!323426) (size!7695 (++!2388 lt!323430 lt!323425)))))))

(assert (= (and d!267423 c!138675) b!855067))

(assert (= (and d!267423 (not c!138675)) b!855068))

(assert (= (and d!267423 res!390442) b!855069))

(assert (= (and b!855069 res!390441) b!855070))

(assert (=> b!855068 m!1095043))

(declare-fun m!1096103 () Bool)

(assert (=> b!855068 m!1096103))

(declare-fun m!1096105 () Bool)

(assert (=> d!267423 m!1096105))

(assert (=> d!267423 m!1096093))

(assert (=> d!267423 m!1095043))

(declare-fun m!1096107 () Bool)

(assert (=> d!267423 m!1096107))

(declare-fun m!1096109 () Bool)

(assert (=> b!855069 m!1096109))

(assert (=> b!855069 m!1096099))

(assert (=> b!855069 m!1095043))

(declare-fun m!1096111 () Bool)

(assert (=> b!855069 m!1096111))

(assert (=> b!854642 d!267423))

(declare-fun b!855074 () Bool)

(declare-fun e!562808 () Bool)

(declare-fun lt!323562 () List!9237)

(assert (=> b!855074 (= e!562808 (or (not (= lt!323425 Nil!9221)) (= lt!323562 lt!323430)))))

(declare-fun b!855072 () Bool)

(declare-fun e!562807 () List!9237)

(assert (=> b!855072 (= e!562807 (Cons!9221 (h!14622 lt!323430) (++!2388 (t!96225 lt!323430) lt!323425)))))

(declare-fun b!855071 () Bool)

(assert (=> b!855071 (= e!562807 lt!323425)))

(declare-fun d!267425 () Bool)

(assert (=> d!267425 e!562808))

(declare-fun res!390444 () Bool)

(assert (=> d!267425 (=> (not res!390444) (not e!562808))))

(assert (=> d!267425 (= res!390444 (= (content!1350 lt!323562) ((_ map or) (content!1350 lt!323430) (content!1350 lt!323425))))))

(assert (=> d!267425 (= lt!323562 e!562807)))

(declare-fun c!138676 () Bool)

(assert (=> d!267425 (= c!138676 ((_ is Nil!9221) lt!323430))))

(assert (=> d!267425 (= (++!2388 lt!323430 lt!323425) lt!323562)))

(declare-fun b!855073 () Bool)

(declare-fun res!390443 () Bool)

(assert (=> b!855073 (=> (not res!390443) (not e!562808))))

(assert (=> b!855073 (= res!390443 (= (size!7695 lt!323562) (+ (size!7695 lt!323430) (size!7695 lt!323425))))))

(assert (= (and d!267425 c!138676) b!855071))

(assert (= (and d!267425 (not c!138676)) b!855072))

(assert (= (and d!267425 res!390444) b!855073))

(assert (= (and b!855073 res!390443) b!855074))

(declare-fun m!1096113 () Bool)

(assert (=> b!855072 m!1096113))

(declare-fun m!1096115 () Bool)

(assert (=> d!267425 m!1096115))

(assert (=> d!267425 m!1096095))

(declare-fun m!1096117 () Bool)

(assert (=> d!267425 m!1096117))

(declare-fun m!1096119 () Bool)

(assert (=> b!855073 m!1096119))

(assert (=> b!855073 m!1096101))

(declare-fun m!1096121 () Bool)

(assert (=> b!855073 m!1096121))

(assert (=> b!854642 d!267425))

(assert (=> b!854642 d!267301))

(declare-fun d!267427 () Bool)

(assert (=> d!267427 (= (list!3629 (charsOf!997 (h!14624 l!5107))) (list!3632 (c!138544 (charsOf!997 (h!14624 l!5107)))))))

(declare-fun bs!231745 () Bool)

(assert (= bs!231745 d!267427))

(declare-fun m!1096123 () Bool)

(assert (=> bs!231745 m!1096123))

(assert (=> b!854642 d!267427))

(declare-fun lt!323563 () List!9237)

(declare-fun b!855078 () Bool)

(declare-fun e!562810 () Bool)

(assert (=> b!855078 (= e!562810 (or (not (= lt!323425 Nil!9221)) (= lt!323563 (++!2388 lt!323426 lt!323430))))))

(declare-fun b!855076 () Bool)

(declare-fun e!562809 () List!9237)

(assert (=> b!855076 (= e!562809 (Cons!9221 (h!14622 (++!2388 lt!323426 lt!323430)) (++!2388 (t!96225 (++!2388 lt!323426 lt!323430)) lt!323425)))))

(declare-fun b!855075 () Bool)

(assert (=> b!855075 (= e!562809 lt!323425)))

(declare-fun d!267429 () Bool)

(assert (=> d!267429 e!562810))

(declare-fun res!390446 () Bool)

(assert (=> d!267429 (=> (not res!390446) (not e!562810))))

(assert (=> d!267429 (= res!390446 (= (content!1350 lt!323563) ((_ map or) (content!1350 (++!2388 lt!323426 lt!323430)) (content!1350 lt!323425))))))

(assert (=> d!267429 (= lt!323563 e!562809)))

(declare-fun c!138677 () Bool)

(assert (=> d!267429 (= c!138677 ((_ is Nil!9221) (++!2388 lt!323426 lt!323430)))))

(assert (=> d!267429 (= (++!2388 (++!2388 lt!323426 lt!323430) lt!323425) lt!323563)))

(declare-fun b!855077 () Bool)

(declare-fun res!390445 () Bool)

(assert (=> b!855077 (=> (not res!390445) (not e!562810))))

(assert (=> b!855077 (= res!390445 (= (size!7695 lt!323563) (+ (size!7695 (++!2388 lt!323426 lt!323430)) (size!7695 lt!323425))))))

(assert (= (and d!267429 c!138677) b!855075))

(assert (= (and d!267429 (not c!138677)) b!855076))

(assert (= (and d!267429 res!390446) b!855077))

(assert (= (and b!855077 res!390445) b!855078))

(declare-fun m!1096125 () Bool)

(assert (=> b!855076 m!1096125))

(declare-fun m!1096127 () Bool)

(assert (=> d!267429 m!1096127))

(assert (=> d!267429 m!1095051))

(declare-fun m!1096129 () Bool)

(assert (=> d!267429 m!1096129))

(assert (=> d!267429 m!1096117))

(declare-fun m!1096131 () Bool)

(assert (=> b!855077 m!1096131))

(assert (=> b!855077 m!1095051))

(declare-fun m!1096133 () Bool)

(assert (=> b!855077 m!1096133))

(assert (=> b!855077 m!1096121))

(assert (=> b!854642 d!267429))

(declare-fun d!267431 () Bool)

(declare-fun c!138678 () Bool)

(assert (=> d!267431 (= c!138678 ((_ is Cons!9223) (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297)))))

(declare-fun e!562811 () List!9237)

(assert (=> d!267431 (= (printList!480 thiss!20117 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297)) e!562811)))

(declare-fun b!855079 () Bool)

(assert (=> b!855079 (= e!562811 (++!2388 (list!3629 (charsOf!997 (h!14624 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297)))) (printList!480 thiss!20117 (t!96227 (withSeparatorTokenList!62 thiss!20117 (t!96227 l!5107) separatorToken!297)))))))

(declare-fun b!855080 () Bool)

(assert (=> b!855080 (= e!562811 Nil!9221)))

(assert (= (and d!267431 c!138678) b!855079))

(assert (= (and d!267431 (not c!138678)) b!855080))

(declare-fun m!1096135 () Bool)

(assert (=> b!855079 m!1096135))

(assert (=> b!855079 m!1096135))

(declare-fun m!1096137 () Bool)

(assert (=> b!855079 m!1096137))

(declare-fun m!1096139 () Bool)

(assert (=> b!855079 m!1096139))

(assert (=> b!855079 m!1096137))

(assert (=> b!855079 m!1096139))

(declare-fun m!1096141 () Bool)

(assert (=> b!855079 m!1096141))

(assert (=> b!854642 d!267431))

(assert (=> b!854642 d!267335))

(declare-fun d!267433 () Bool)

(declare-fun lt!323564 () BalanceConc!6124)

(assert (=> d!267433 (= (list!3629 lt!323564) (originalCharacters!2286 (h!14624 l!5107)))))

(assert (=> d!267433 (= lt!323564 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))))

(assert (=> d!267433 (= (charsOf!997 (h!14624 l!5107)) lt!323564)))

(declare-fun b_lambda!28691 () Bool)

(assert (=> (not b_lambda!28691) (not d!267433)))

(assert (=> d!267433 t!96240))

(declare-fun b_and!75487 () Bool)

(assert (= b_and!75485 (and (=> t!96240 result!69854) b_and!75487)))

(assert (=> d!267433 t!96272))

(declare-fun b_and!75489 () Bool)

(assert (= b_and!75483 (and (=> t!96272 result!69898) b_and!75489)))

(assert (=> d!267433 t!96238))

(declare-fun b_and!75491 () Bool)

(assert (= b_and!75479 (and (=> t!96238 result!69850) b_and!75491)))

(assert (=> d!267433 t!96242))

(declare-fun b_and!75493 () Bool)

(assert (= b_and!75481 (and (=> t!96242 result!69856) b_and!75493)))

(assert (=> d!267433 t!96268))

(declare-fun b_and!75495 () Bool)

(assert (= b_and!75477 (and (=> t!96268 result!69888) b_and!75495)))

(declare-fun m!1096143 () Bool)

(assert (=> d!267433 m!1096143))

(assert (=> d!267433 m!1094811))

(assert (=> b!854642 d!267433))

(assert (=> b!854642 d!267283))

(assert (=> b!854642 d!267285))

(declare-fun bs!231746 () Bool)

(declare-fun d!267435 () Bool)

(assert (= bs!231746 (and d!267435 d!267357)))

(declare-fun lambda!25632 () Int)

(assert (=> bs!231746 (= (= (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))) (= lambda!25632 lambda!25627))))

(assert (=> d!267435 true))

(assert (=> d!267435 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107))))) (dynLambda!4327 order!5955 lambda!25632))))

(assert (=> d!267435 (= (equivClasses!643 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107))))) (Forall2!327 lambda!25632))))

(declare-fun bs!231747 () Bool)

(assert (= bs!231747 d!267435))

(declare-fun m!1096145 () Bool)

(assert (=> bs!231747 m!1096145))

(assert (=> b!854370 d!267435))

(declare-fun d!267437 () Bool)

(declare-fun res!390455 () Bool)

(declare-fun e!562820 () Bool)

(assert (=> d!267437 (=> res!390455 e!562820)))

(assert (=> d!267437 (= res!390455 ((_ is Nil!9222) rules!2621))))

(assert (=> d!267437 (= (noDuplicateTag!607 thiss!20117 rules!2621 Nil!9225) e!562820)))

(declare-fun b!855089 () Bool)

(declare-fun e!562821 () Bool)

(assert (=> b!855089 (= e!562820 e!562821)))

(declare-fun res!390456 () Bool)

(assert (=> b!855089 (=> (not res!390456) (not e!562821))))

(declare-fun contains!1704 (List!9241 String!10878) Bool)

(assert (=> b!855089 (= res!390456 (not (contains!1704 Nil!9225 (tag!1992 (h!14623 rules!2621)))))))

(declare-fun b!855090 () Bool)

(assert (=> b!855090 (= e!562821 (noDuplicateTag!607 thiss!20117 (t!96226 rules!2621) (Cons!9225 (tag!1992 (h!14623 rules!2621)) Nil!9225)))))

(assert (= (and d!267437 (not res!390455)) b!855089))

(assert (= (and b!855089 res!390456) b!855090))

(declare-fun m!1096155 () Bool)

(assert (=> b!855089 m!1096155))

(declare-fun m!1096157 () Bool)

(assert (=> b!855090 m!1096157))

(assert (=> b!854367 d!267437))

(declare-fun d!267445 () Bool)

(declare-fun lt!323569 () Bool)

(declare-fun e!562823 () Bool)

(assert (=> d!267445 (= lt!323569 e!562823)))

(declare-fun res!390458 () Bool)

(assert (=> d!267445 (=> (not res!390458) (not e!562823))))

(assert (=> d!267445 (= res!390458 (= (list!3630 (_1!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 (h!14624 lt!323343)))))) (list!3630 (singletonSeq!547 (h!14624 lt!323343)))))))

(declare-fun e!562822 () Bool)

(assert (=> d!267445 (= lt!323569 e!562822)))

(declare-fun res!390459 () Bool)

(assert (=> d!267445 (=> (not res!390459) (not e!562822))))

(declare-fun lt!323568 () tuple2!10404)

(assert (=> d!267445 (= res!390459 (= (size!7694 (_1!6028 lt!323568)) 1))))

(assert (=> d!267445 (= lt!323568 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 (h!14624 lt!323343)))))))

(assert (=> d!267445 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267445 (= (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 lt!323343)) lt!323569)))

(declare-fun b!855091 () Bool)

(declare-fun res!390457 () Bool)

(assert (=> b!855091 (=> (not res!390457) (not e!562822))))

(assert (=> b!855091 (= res!390457 (= (apply!1909 (_1!6028 lt!323568) 0) (h!14624 lt!323343)))))

(declare-fun b!855092 () Bool)

(assert (=> b!855092 (= e!562822 (isEmpty!5462 (_2!6028 lt!323568)))))

(declare-fun b!855093 () Bool)

(assert (=> b!855093 (= e!562823 (isEmpty!5462 (_2!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 (h!14624 lt!323343)))))))))

(assert (= (and d!267445 res!390459) b!855091))

(assert (= (and b!855091 res!390457) b!855092))

(assert (= (and d!267445 res!390458) b!855093))

(declare-fun m!1096159 () Bool)

(assert (=> d!267445 m!1096159))

(declare-fun m!1096161 () Bool)

(assert (=> d!267445 m!1096161))

(assert (=> d!267445 m!1096159))

(declare-fun m!1096163 () Bool)

(assert (=> d!267445 m!1096163))

(declare-fun m!1096165 () Bool)

(assert (=> d!267445 m!1096165))

(declare-fun m!1096167 () Bool)

(assert (=> d!267445 m!1096167))

(declare-fun m!1096169 () Bool)

(assert (=> d!267445 m!1096169))

(assert (=> d!267445 m!1094691))

(assert (=> d!267445 m!1096159))

(assert (=> d!267445 m!1096167))

(declare-fun m!1096171 () Bool)

(assert (=> b!855091 m!1096171))

(declare-fun m!1096173 () Bool)

(assert (=> b!855092 m!1096173))

(assert (=> b!855093 m!1096159))

(assert (=> b!855093 m!1096159))

(assert (=> b!855093 m!1096167))

(assert (=> b!855093 m!1096167))

(assert (=> b!855093 m!1096169))

(declare-fun m!1096175 () Bool)

(assert (=> b!855093 m!1096175))

(assert (=> b!854631 d!267445))

(declare-fun d!267447 () Bool)

(assert (=> d!267447 (= (inv!11722 (tag!1992 (rule!3153 (h!14624 (t!96227 l!5107))))) (= (mod (str.len (value!56003 (tag!1992 (rule!3153 (h!14624 (t!96227 l!5107)))))) 2) 0))))

(assert (=> b!854667 d!267447))

(declare-fun d!267449 () Bool)

(declare-fun res!390460 () Bool)

(declare-fun e!562827 () Bool)

(assert (=> d!267449 (=> (not res!390460) (not e!562827))))

(assert (=> d!267449 (= res!390460 (semiInverseModEq!676 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))))))

(assert (=> d!267449 (= (inv!11725 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) e!562827)))

(declare-fun b!855100 () Bool)

(assert (=> b!855100 (= e!562827 (equivClasses!643 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))))))

(assert (= (and d!267449 res!390460) b!855100))

(declare-fun m!1096179 () Bool)

(assert (=> d!267449 m!1096179))

(declare-fun m!1096181 () Bool)

(assert (=> b!855100 m!1096181))

(assert (=> b!854667 d!267449))

(declare-fun d!267453 () Bool)

(declare-fun c!138683 () Bool)

(assert (=> d!267453 (= c!138683 ((_ is Cons!9223) lt!323423))))

(declare-fun e!562829 () List!9237)

(assert (=> d!267453 (= (printList!480 thiss!20117 lt!323423) e!562829)))

(declare-fun b!855103 () Bool)

(assert (=> b!855103 (= e!562829 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323423))) (printList!480 thiss!20117 (t!96227 lt!323423))))))

(declare-fun b!855104 () Bool)

(assert (=> b!855104 (= e!562829 Nil!9221)))

(assert (= (and d!267453 c!138683) b!855103))

(assert (= (and d!267453 (not c!138683)) b!855104))

(declare-fun m!1096185 () Bool)

(assert (=> b!855103 m!1096185))

(assert (=> b!855103 m!1096185))

(declare-fun m!1096187 () Bool)

(assert (=> b!855103 m!1096187))

(declare-fun m!1096189 () Bool)

(assert (=> b!855103 m!1096189))

(assert (=> b!855103 m!1096187))

(assert (=> b!855103 m!1096189))

(declare-fun m!1096191 () Bool)

(assert (=> b!855103 m!1096191))

(assert (=> d!267103 d!267453))

(declare-fun d!267457 () Bool)

(declare-fun c!138688 () Bool)

(assert (=> d!267457 (= c!138688 ((_ is Cons!9223) l!5107))))

(declare-fun e!562840 () List!9237)

(assert (=> d!267457 (= (printWithSeparatorTokenList!38 thiss!20117 l!5107 separatorToken!297) e!562840)))

(declare-fun b!855126 () Bool)

(assert (=> b!855126 (= e!562840 (++!2388 (++!2388 (list!3629 (charsOf!997 (h!14624 l!5107))) (list!3629 (charsOf!997 separatorToken!297))) (printWithSeparatorTokenList!38 thiss!20117 (t!96227 l!5107) separatorToken!297)))))

(declare-fun b!855127 () Bool)

(assert (=> b!855127 (= e!562840 Nil!9221)))

(assert (= (and d!267457 c!138688) b!855126))

(assert (= (and d!267457 (not c!138688)) b!855127))

(declare-fun m!1096229 () Bool)

(assert (=> b!855126 m!1096229))

(assert (=> b!855126 m!1095689))

(declare-fun m!1096231 () Bool)

(assert (=> b!855126 m!1096231))

(assert (=> b!855126 m!1095057))

(assert (=> b!855126 m!1094765))

(assert (=> b!855126 m!1096229))

(assert (=> b!855126 m!1094763))

(assert (=> b!855126 m!1094763))

(assert (=> b!855126 m!1094765))

(assert (=> b!855126 m!1095055))

(assert (=> b!855126 m!1095689))

(assert (=> b!855126 m!1095055))

(assert (=> b!855126 m!1095057))

(assert (=> d!267103 d!267457))

(declare-fun bs!231749 () Bool)

(declare-fun d!267467 () Bool)

(assert (= bs!231749 (and d!267467 b!854338)))

(declare-fun lambda!25633 () Int)

(assert (=> bs!231749 (not (= lambda!25633 lambda!25598))))

(declare-fun bs!231750 () Bool)

(assert (= bs!231750 (and d!267467 d!267059)))

(assert (=> bs!231750 (= lambda!25633 lambda!25605)))

(declare-fun bs!231751 () Bool)

(assert (= bs!231751 (and d!267467 d!267101)))

(assert (=> bs!231751 (= lambda!25633 lambda!25606)))

(declare-fun bs!231752 () Bool)

(assert (= bs!231752 (and d!267467 d!267323)))

(assert (=> bs!231752 (= lambda!25633 lambda!25623)))

(declare-fun b!855152 () Bool)

(declare-fun e!562850 () Bool)

(assert (=> b!855152 (= e!562850 true)))

(declare-fun b!855151 () Bool)

(declare-fun e!562849 () Bool)

(assert (=> b!855151 (= e!562849 e!562850)))

(declare-fun b!855150 () Bool)

(declare-fun e!562848 () Bool)

(assert (=> b!855150 (= e!562848 e!562849)))

(assert (=> d!267467 e!562848))

(assert (= b!855151 b!855152))

(assert (= b!855150 b!855151))

(assert (= (and d!267467 ((_ is Cons!9222) rules!2621)) b!855150))

(assert (=> b!855152 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25633))))

(assert (=> b!855152 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25633))))

(assert (=> d!267467 true))

(declare-fun lt!323576 () Bool)

(assert (=> d!267467 (= lt!323576 (forall!2185 (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297) lambda!25633))))

(declare-fun e!562846 () Bool)

(assert (=> d!267467 (= lt!323576 e!562846)))

(declare-fun res!390466 () Bool)

(assert (=> d!267467 (=> res!390466 e!562846)))

(assert (=> d!267467 (= res!390466 (not ((_ is Cons!9223) (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!267467 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267467 (= (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297)) lt!323576)))

(declare-fun b!855144 () Bool)

(declare-fun e!562845 () Bool)

(assert (=> b!855144 (= e!562846 e!562845)))

(declare-fun res!390465 () Bool)

(assert (=> b!855144 (=> (not res!390465) (not e!562845))))

(assert (=> b!855144 (= res!390465 (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!855145 () Bool)

(assert (=> b!855145 (= e!562845 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (t!96227 (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!267467 (not res!390466)) b!855144))

(assert (= (and b!855144 res!390465) b!855145))

(assert (=> d!267467 m!1094683))

(declare-fun m!1096233 () Bool)

(assert (=> d!267467 m!1096233))

(assert (=> d!267467 m!1094691))

(declare-fun m!1096235 () Bool)

(assert (=> b!855144 m!1096235))

(declare-fun m!1096237 () Bool)

(assert (=> b!855145 m!1096237))

(assert (=> d!267105 d!267467))

(assert (=> d!267105 d!267103))

(declare-fun d!267469 () Bool)

(assert (=> d!267469 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (withSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!267469 true))

(declare-fun _$32!348 () Unit!13725)

(assert (=> d!267469 (= (choose!5040 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!348)))

(declare-fun bs!231756 () Bool)

(assert (= bs!231756 d!267469))

(assert (=> bs!231756 m!1094683))

(assert (=> bs!231756 m!1094683))

(assert (=> bs!231756 m!1095065))

(assert (=> d!267105 d!267469))

(assert (=> d!267105 d!267043))

(declare-fun d!267477 () Bool)

(assert (=> d!267477 (= (inv!17 (value!56004 (h!14624 l!5107))) (= (charsToBigInt!1 (text!13020 (value!56004 (h!14624 l!5107)))) (value!55996 (value!56004 (h!14624 l!5107)))))))

(declare-fun bs!231757 () Bool)

(assert (= bs!231757 d!267477))

(declare-fun m!1096263 () Bool)

(assert (=> bs!231757 m!1096263))

(assert (=> b!854424 d!267477))

(assert (=> d!267051 d!267263))

(declare-fun d!267479 () Bool)

(declare-fun lt!323579 () Int)

(declare-fun size!7700 (List!9239) Int)

(assert (=> d!267479 (= lt!323579 (size!7700 (list!3630 (_1!6028 lt!323374))))))

(declare-fun size!7701 (Conc!3057) Int)

(assert (=> d!267479 (= lt!323579 (size!7701 (c!138586 (_1!6028 lt!323374))))))

(assert (=> d!267479 (= (size!7694 (_1!6028 lt!323374)) lt!323579)))

(declare-fun bs!231758 () Bool)

(assert (= bs!231758 d!267479))

(assert (=> bs!231758 m!1095805))

(assert (=> bs!231758 m!1095805))

(declare-fun m!1096265 () Bool)

(assert (=> bs!231758 m!1096265))

(declare-fun m!1096267 () Bool)

(assert (=> bs!231758 m!1096267))

(assert (=> d!267051 d!267479))

(assert (=> d!267051 d!267223))

(declare-fun d!267481 () Bool)

(declare-fun list!3634 (Conc!3057) List!9239)

(assert (=> d!267481 (= (list!3630 (_1!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297))))) (list!3634 (c!138586 (_1!6028 (lex!624 thiss!20117 rules!2621 (print!561 thiss!20117 (singletonSeq!547 separatorToken!297)))))))))

(declare-fun bs!231759 () Bool)

(assert (= bs!231759 d!267481))

(declare-fun m!1096269 () Bool)

(assert (=> bs!231759 m!1096269))

(assert (=> d!267051 d!267481))

(assert (=> d!267051 d!267043))

(declare-fun d!267483 () Bool)

(assert (=> d!267483 (= (list!3630 (singletonSeq!547 separatorToken!297)) (list!3634 (c!138586 (singletonSeq!547 separatorToken!297))))))

(declare-fun bs!231760 () Bool)

(assert (= bs!231760 d!267483))

(declare-fun m!1096271 () Bool)

(assert (=> bs!231760 m!1096271))

(assert (=> d!267051 d!267483))

(assert (=> d!267051 d!267265))

(declare-fun d!267485 () Bool)

(assert (=> d!267485 (= (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))) (isBalanced!845 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))))))

(declare-fun bs!231761 () Bool)

(assert (= bs!231761 d!267485))

(declare-fun m!1096273 () Bool)

(assert (=> bs!231761 m!1096273))

(assert (=> tb!60315 d!267485))

(declare-fun d!267487 () Bool)

(assert (=> d!267487 (= (inv!16 (value!56004 (h!14624 l!5107))) (= (charsToInt!0 (text!13019 (value!56004 (h!14624 l!5107)))) (value!55995 (value!56004 (h!14624 l!5107)))))))

(declare-fun bs!231762 () Bool)

(assert (= bs!231762 d!267487))

(declare-fun m!1096275 () Bool)

(assert (=> bs!231762 m!1096275))

(assert (=> b!854420 d!267487))

(declare-fun d!267489 () Bool)

(assert (=> d!267489 true))

(declare-fun lt!323582 () Bool)

(declare-fun rulesValidInductive!615 (LexerInterface!1532 List!9238) Bool)

(assert (=> d!267489 (= lt!323582 (rulesValidInductive!615 thiss!20117 rules!2621))))

(declare-fun lambda!25636 () Int)

(declare-fun forall!2187 (List!9238 Int) Bool)

(assert (=> d!267489 (= lt!323582 (forall!2187 rules!2621 lambda!25636))))

(assert (=> d!267489 (= (rulesValid!607 thiss!20117 rules!2621) lt!323582)))

(declare-fun bs!231763 () Bool)

(assert (= bs!231763 d!267489))

(declare-fun m!1096277 () Bool)

(assert (=> bs!231763 m!1096277))

(declare-fun m!1096279 () Bool)

(assert (=> bs!231763 m!1096279))

(assert (=> d!267029 d!267489))

(declare-fun b!855233 () Bool)

(declare-fun e!562894 () Bool)

(declare-fun call!50525 () Bool)

(assert (=> b!855233 (= e!562894 call!50525)))

(declare-fun d!267491 () Bool)

(declare-fun c!138691 () Bool)

(assert (=> d!267491 (= c!138691 (and ((_ is Cons!9222) rules!2621) (not (= (isSeparator!1730 (h!14623 rules!2621)) (isSeparator!1730 (h!14623 rules!2621))))))))

(declare-fun e!562896 () Bool)

(assert (=> d!267491 (= (ruleDisjointCharsFromAllFromOtherType!243 (h!14623 rules!2621) rules!2621) e!562896)))

(declare-fun b!855234 () Bool)

(assert (=> b!855234 (= e!562896 e!562894)))

(declare-fun res!390472 () Bool)

(declare-fun rulesUseDisjointChars!124 (Rule!3260 Rule!3260) Bool)

(assert (=> b!855234 (= res!390472 (rulesUseDisjointChars!124 (h!14623 rules!2621) (h!14623 rules!2621)))))

(assert (=> b!855234 (=> (not res!390472) (not e!562894))))

(declare-fun b!855235 () Bool)

(declare-fun e!562895 () Bool)

(assert (=> b!855235 (= e!562896 e!562895)))

(declare-fun res!390471 () Bool)

(assert (=> b!855235 (= res!390471 (not ((_ is Cons!9222) rules!2621)))))

(assert (=> b!855235 (=> res!390471 e!562895)))

(declare-fun b!855236 () Bool)

(assert (=> b!855236 (= e!562895 call!50525)))

(declare-fun bm!50520 () Bool)

(assert (=> bm!50520 (= call!50525 (ruleDisjointCharsFromAllFromOtherType!243 (h!14623 rules!2621) (t!96226 rules!2621)))))

(assert (= (and d!267491 c!138691) b!855234))

(assert (= (and d!267491 (not c!138691)) b!855235))

(assert (= (and b!855234 res!390472) b!855233))

(assert (= (and b!855235 (not res!390471)) b!855236))

(assert (= (or b!855233 b!855236) bm!50520))

(declare-fun m!1096281 () Bool)

(assert (=> b!855234 m!1096281))

(declare-fun m!1096283 () Bool)

(assert (=> bm!50520 m!1096283))

(assert (=> b!854653 d!267491))

(declare-fun d!267493 () Bool)

(declare-fun c!138692 () Bool)

(assert (=> d!267493 (= c!138692 ((_ is Cons!9223) lt!323362))))

(declare-fun e!562897 () List!9237)

(assert (=> d!267493 (= (printList!480 thiss!20117 lt!323362) e!562897)))

(declare-fun b!855237 () Bool)

(assert (=> b!855237 (= e!562897 (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323362))) (printList!480 thiss!20117 (t!96227 lt!323362))))))

(declare-fun b!855238 () Bool)

(assert (=> b!855238 (= e!562897 Nil!9221)))

(assert (= (and d!267493 c!138692) b!855237))

(assert (= (and d!267493 (not c!138692)) b!855238))

(declare-fun m!1096285 () Bool)

(assert (=> b!855237 m!1096285))

(assert (=> b!855237 m!1096285))

(declare-fun m!1096287 () Bool)

(assert (=> b!855237 m!1096287))

(declare-fun m!1096289 () Bool)

(assert (=> b!855237 m!1096289))

(assert (=> b!855237 m!1096287))

(assert (=> b!855237 m!1096289))

(declare-fun m!1096291 () Bool)

(assert (=> b!855237 m!1096291))

(assert (=> d!267039 d!267493))

(declare-fun d!267495 () Bool)

(declare-fun c!138693 () Bool)

(assert (=> d!267495 (= c!138693 ((_ is Cons!9223) (tail!1042 l!5107)))))

(declare-fun e!562898 () List!9237)

(assert (=> d!267495 (= (printWithSeparatorTokenList!38 thiss!20117 (tail!1042 l!5107) separatorToken!297) e!562898)))

(declare-fun b!855239 () Bool)

(assert (=> b!855239 (= e!562898 (++!2388 (++!2388 (list!3629 (charsOf!997 (h!14624 (tail!1042 l!5107)))) (list!3629 (charsOf!997 separatorToken!297))) (printWithSeparatorTokenList!38 thiss!20117 (t!96227 (tail!1042 l!5107)) separatorToken!297)))))

(declare-fun b!855240 () Bool)

(assert (=> b!855240 (= e!562898 Nil!9221)))

(assert (= (and d!267495 c!138693) b!855239))

(assert (= (and d!267495 (not c!138693)) b!855240))

(declare-fun m!1096293 () Bool)

(assert (=> b!855239 m!1096293))

(assert (=> b!855239 m!1095779))

(declare-fun m!1096295 () Bool)

(assert (=> b!855239 m!1096295))

(assert (=> b!855239 m!1094769))

(assert (=> b!855239 m!1094765))

(assert (=> b!855239 m!1096293))

(assert (=> b!855239 m!1094763))

(assert (=> b!855239 m!1094763))

(assert (=> b!855239 m!1094765))

(assert (=> b!855239 m!1094767))

(assert (=> b!855239 m!1095779))

(assert (=> b!855239 m!1094767))

(assert (=> b!855239 m!1094769))

(assert (=> d!267039 d!267495))

(declare-fun lt!323583 () List!9237)

(declare-fun e!562900 () Bool)

(declare-fun b!855244 () Bool)

(assert (=> b!855244 (= e!562900 (or (not (= (printList!480 thiss!20117 (t!96227 lt!323367)) Nil!9221)) (= lt!323583 (list!3629 (charsOf!997 (h!14624 lt!323367))))))))

(declare-fun b!855242 () Bool)

(declare-fun e!562899 () List!9237)

(assert (=> b!855242 (= e!562899 (Cons!9221 (h!14622 (list!3629 (charsOf!997 (h!14624 lt!323367)))) (++!2388 (t!96225 (list!3629 (charsOf!997 (h!14624 lt!323367)))) (printList!480 thiss!20117 (t!96227 lt!323367)))))))

(declare-fun b!855241 () Bool)

(assert (=> b!855241 (= e!562899 (printList!480 thiss!20117 (t!96227 lt!323367)))))

(declare-fun d!267497 () Bool)

(assert (=> d!267497 e!562900))

(declare-fun res!390474 () Bool)

(assert (=> d!267497 (=> (not res!390474) (not e!562900))))

(assert (=> d!267497 (= res!390474 (= (content!1350 lt!323583) ((_ map or) (content!1350 (list!3629 (charsOf!997 (h!14624 lt!323367)))) (content!1350 (printList!480 thiss!20117 (t!96227 lt!323367))))))))

(assert (=> d!267497 (= lt!323583 e!562899)))

(declare-fun c!138694 () Bool)

(assert (=> d!267497 (= c!138694 ((_ is Nil!9221) (list!3629 (charsOf!997 (h!14624 lt!323367)))))))

(assert (=> d!267497 (= (++!2388 (list!3629 (charsOf!997 (h!14624 lt!323367))) (printList!480 thiss!20117 (t!96227 lt!323367))) lt!323583)))

(declare-fun b!855243 () Bool)

(declare-fun res!390473 () Bool)

(assert (=> b!855243 (=> (not res!390473) (not e!562900))))

(assert (=> b!855243 (= res!390473 (= (size!7695 lt!323583) (+ (size!7695 (list!3629 (charsOf!997 (h!14624 lt!323367)))) (size!7695 (printList!480 thiss!20117 (t!96227 lt!323367))))))))

(assert (= (and d!267497 c!138694) b!855241))

(assert (= (and d!267497 (not c!138694)) b!855242))

(assert (= (and d!267497 res!390474) b!855243))

(assert (= (and b!855243 res!390473) b!855244))

(assert (=> b!855242 m!1094739))

(declare-fun m!1096297 () Bool)

(assert (=> b!855242 m!1096297))

(declare-fun m!1096299 () Bool)

(assert (=> d!267497 m!1096299))

(assert (=> d!267497 m!1094737))

(declare-fun m!1096301 () Bool)

(assert (=> d!267497 m!1096301))

(assert (=> d!267497 m!1094739))

(declare-fun m!1096303 () Bool)

(assert (=> d!267497 m!1096303))

(declare-fun m!1096305 () Bool)

(assert (=> b!855243 m!1096305))

(assert (=> b!855243 m!1094737))

(declare-fun m!1096307 () Bool)

(assert (=> b!855243 m!1096307))

(assert (=> b!855243 m!1094739))

(declare-fun m!1096309 () Bool)

(assert (=> b!855243 m!1096309))

(assert (=> b!854419 d!267497))

(declare-fun d!267499 () Bool)

(assert (=> d!267499 (= (list!3629 (charsOf!997 (h!14624 lt!323367))) (list!3632 (c!138544 (charsOf!997 (h!14624 lt!323367)))))))

(declare-fun bs!231764 () Bool)

(assert (= bs!231764 d!267499))

(declare-fun m!1096311 () Bool)

(assert (=> bs!231764 m!1096311))

(assert (=> b!854419 d!267499))

(declare-fun d!267501 () Bool)

(declare-fun lt!323584 () BalanceConc!6124)

(assert (=> d!267501 (= (list!3629 lt!323584) (originalCharacters!2286 (h!14624 lt!323367)))))

(assert (=> d!267501 (= lt!323584 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367)))) (value!56004 (h!14624 lt!323367))))))

(assert (=> d!267501 (= (charsOf!997 (h!14624 lt!323367)) lt!323584)))

(declare-fun b_lambda!28709 () Bool)

(assert (=> (not b_lambda!28709) (not d!267501)))

(declare-fun t!96423 () Bool)

(declare-fun tb!60491 () Bool)

(assert (=> (and b!854707 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367))))) t!96423) tb!60491))

(declare-fun b!855245 () Bool)

(declare-fun e!562901 () Bool)

(declare-fun tp!269613 () Bool)

(assert (=> b!855245 (= e!562901 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367)))) (value!56004 (h!14624 lt!323367))))) tp!269613))))

(declare-fun result!70046 () Bool)

(assert (=> tb!60491 (= result!70046 (and (inv!11730 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367)))) (value!56004 (h!14624 lt!323367)))) e!562901))))

(assert (= tb!60491 b!855245))

(declare-fun m!1096313 () Bool)

(assert (=> b!855245 m!1096313))

(declare-fun m!1096315 () Bool)

(assert (=> tb!60491 m!1096315))

(assert (=> d!267501 t!96423))

(declare-fun b_and!75515 () Bool)

(assert (= b_and!75489 (and (=> t!96423 result!70046) b_and!75515)))

(declare-fun tb!60493 () Bool)

(declare-fun t!96425 () Bool)

(assert (=> (and b!854330 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367))))) t!96425) tb!60493))

(declare-fun result!70048 () Bool)

(assert (= result!70048 result!70046))

(assert (=> d!267501 t!96425))

(declare-fun b_and!75517 () Bool)

(assert (= b_and!75491 (and (=> t!96425 result!70048) b_and!75517)))

(declare-fun t!96427 () Bool)

(declare-fun tb!60495 () Bool)

(assert (=> (and b!854344 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367))))) t!96427) tb!60495))

(declare-fun result!70050 () Bool)

(assert (= result!70050 result!70046))

(assert (=> d!267501 t!96427))

(declare-fun b_and!75519 () Bool)

(assert (= b_and!75487 (and (=> t!96427 result!70050) b_and!75519)))

(declare-fun tb!60497 () Bool)

(declare-fun t!96429 () Bool)

(assert (=> (and b!854329 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367))))) t!96429) tb!60497))

(declare-fun result!70052 () Bool)

(assert (= result!70052 result!70046))

(assert (=> d!267501 t!96429))

(declare-fun b_and!75521 () Bool)

(assert (= b_and!75493 (and (=> t!96429 result!70052) b_and!75521)))

(declare-fun t!96431 () Bool)

(declare-fun tb!60499 () Bool)

(assert (=> (and b!854668 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367))))) t!96431) tb!60499))

(declare-fun result!70054 () Bool)

(assert (= result!70054 result!70046))

(assert (=> d!267501 t!96431))

(declare-fun b_and!75523 () Bool)

(assert (= b_and!75495 (and (=> t!96431 result!70054) b_and!75523)))

(declare-fun m!1096317 () Bool)

(assert (=> d!267501 m!1096317))

(declare-fun m!1096319 () Bool)

(assert (=> d!267501 m!1096319))

(assert (=> b!854419 d!267501))

(declare-fun d!267503 () Bool)

(declare-fun c!138695 () Bool)

(assert (=> d!267503 (= c!138695 ((_ is Cons!9223) (t!96227 lt!323367)))))

(declare-fun e!562902 () List!9237)

(assert (=> d!267503 (= (printList!480 thiss!20117 (t!96227 lt!323367)) e!562902)))

(declare-fun b!855246 () Bool)

(assert (=> b!855246 (= e!562902 (++!2388 (list!3629 (charsOf!997 (h!14624 (t!96227 lt!323367)))) (printList!480 thiss!20117 (t!96227 (t!96227 lt!323367)))))))

(declare-fun b!855247 () Bool)

(assert (=> b!855247 (= e!562902 Nil!9221)))

(assert (= (and d!267503 c!138695) b!855246))

(assert (= (and d!267503 (not c!138695)) b!855247))

(declare-fun m!1096321 () Bool)

(assert (=> b!855246 m!1096321))

(assert (=> b!855246 m!1096321))

(declare-fun m!1096323 () Bool)

(assert (=> b!855246 m!1096323))

(declare-fun m!1096325 () Bool)

(assert (=> b!855246 m!1096325))

(assert (=> b!855246 m!1096323))

(assert (=> b!855246 m!1096325))

(declare-fun m!1096327 () Bool)

(assert (=> b!855246 m!1096327))

(assert (=> b!854419 d!267503))

(declare-fun bs!231765 () Bool)

(declare-fun d!267505 () Bool)

(assert (= bs!231765 (and d!267505 d!267059)))

(declare-fun lambda!25637 () Int)

(assert (=> bs!231765 (= lambda!25637 lambda!25605)))

(declare-fun bs!231766 () Bool)

(assert (= bs!231766 (and d!267505 b!854338)))

(assert (=> bs!231766 (not (= lambda!25637 lambda!25598))))

(declare-fun bs!231767 () Bool)

(assert (= bs!231767 (and d!267505 d!267323)))

(assert (=> bs!231767 (= lambda!25637 lambda!25623)))

(declare-fun bs!231768 () Bool)

(assert (= bs!231768 (and d!267505 d!267467)))

(assert (=> bs!231768 (= lambda!25637 lambda!25633)))

(declare-fun bs!231769 () Bool)

(assert (= bs!231769 (and d!267505 d!267101)))

(assert (=> bs!231769 (= lambda!25637 lambda!25606)))

(declare-fun b!855252 () Bool)

(declare-fun e!562907 () Bool)

(assert (=> b!855252 (= e!562907 true)))

(declare-fun b!855251 () Bool)

(declare-fun e!562906 () Bool)

(assert (=> b!855251 (= e!562906 e!562907)))

(declare-fun b!855250 () Bool)

(declare-fun e!562905 () Bool)

(assert (=> b!855250 (= e!562905 e!562906)))

(assert (=> d!267505 e!562905))

(assert (= b!855251 b!855252))

(assert (= b!855250 b!855251))

(assert (= (and d!267505 ((_ is Cons!9222) rules!2621)) b!855250))

(assert (=> b!855252 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25637))))

(assert (=> b!855252 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4322 order!5945 lambda!25637))))

(assert (=> d!267505 true))

(declare-fun lt!323585 () Bool)

(assert (=> d!267505 (= lt!323585 (forall!2185 (t!96227 l!5107) lambda!25637))))

(declare-fun e!562904 () Bool)

(assert (=> d!267505 (= lt!323585 e!562904)))

(declare-fun res!390476 () Bool)

(assert (=> d!267505 (=> res!390476 e!562904)))

(assert (=> d!267505 (= res!390476 (not ((_ is Cons!9223) (t!96227 l!5107))))))

(assert (=> d!267505 (not (isEmpty!5459 rules!2621))))

(assert (=> d!267505 (= (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (t!96227 l!5107)) lt!323585)))

(declare-fun b!855248 () Bool)

(declare-fun e!562903 () Bool)

(assert (=> b!855248 (= e!562904 e!562903)))

(declare-fun res!390475 () Bool)

(assert (=> b!855248 (=> (not res!390475) (not e!562903))))

(assert (=> b!855248 (= res!390475 (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 (t!96227 l!5107))))))

(declare-fun b!855249 () Bool)

(assert (=> b!855249 (= e!562903 (rulesProduceEachTokenIndividuallyList!420 thiss!20117 rules!2621 (t!96227 (t!96227 l!5107))))))

(assert (= (and d!267505 (not res!390476)) b!855248))

(assert (= (and b!855248 res!390475) b!855249))

(declare-fun m!1096329 () Bool)

(assert (=> d!267505 m!1096329))

(assert (=> d!267505 m!1094691))

(declare-fun m!1096331 () Bool)

(assert (=> b!855248 m!1096331))

(declare-fun m!1096333 () Bool)

(assert (=> b!855249 m!1096333))

(assert (=> b!854616 d!267505))

(declare-fun bs!231770 () Bool)

(declare-fun d!267507 () Bool)

(assert (= bs!231770 (and d!267507 d!267357)))

(declare-fun lambda!25638 () Int)

(assert (=> bs!231770 (= (= (toValue!2779 (transformation!1730 (h!14623 rules!2621))) (toValue!2779 (transformation!1730 (rule!3153 separatorToken!297)))) (= lambda!25638 lambda!25627))))

(declare-fun bs!231771 () Bool)

(assert (= bs!231771 (and d!267507 d!267435)))

(assert (=> bs!231771 (= (= (toValue!2779 (transformation!1730 (h!14623 rules!2621))) (toValue!2779 (transformation!1730 (rule!3153 (h!14624 l!5107))))) (= lambda!25638 lambda!25632))))

(assert (=> d!267507 true))

(assert (=> d!267507 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (dynLambda!4327 order!5955 lambda!25638))))

(assert (=> d!267507 (= (equivClasses!643 (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toValue!2779 (transformation!1730 (h!14623 rules!2621)))) (Forall2!327 lambda!25638))))

(declare-fun bs!231772 () Bool)

(assert (= bs!231772 d!267507))

(declare-fun m!1096335 () Bool)

(assert (=> bs!231772 m!1096335))

(assert (=> b!854425 d!267507))

(declare-fun d!267509 () Bool)

(declare-fun c!138696 () Bool)

(assert (=> d!267509 (= c!138696 ((_ is Node!3055) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))))))

(declare-fun e!562908 () Bool)

(assert (=> d!267509 (= (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))) e!562908)))

(declare-fun b!855253 () Bool)

(assert (=> b!855253 (= e!562908 (inv!11733 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))))))

(declare-fun b!855254 () Bool)

(declare-fun e!562909 () Bool)

(assert (=> b!855254 (= e!562908 e!562909)))

(declare-fun res!390477 () Bool)

(assert (=> b!855254 (= res!390477 (not ((_ is Leaf!4508) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))))))))

(assert (=> b!855254 (=> res!390477 e!562909)))

(declare-fun b!855255 () Bool)

(assert (=> b!855255 (= e!562909 (inv!11734 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))))))

(assert (= (and d!267509 c!138696) b!855253))

(assert (= (and d!267509 (not c!138696)) b!855254))

(assert (= (and b!855254 (not res!390477)) b!855255))

(declare-fun m!1096337 () Bool)

(assert (=> b!855253 m!1096337))

(declare-fun m!1096339 () Bool)

(assert (=> b!855255 m!1096339))

(assert (=> b!854445 d!267509))

(declare-fun b!855258 () Bool)

(declare-fun e!562910 () Bool)

(declare-fun tp!269618 () Bool)

(assert (=> b!855258 (= e!562910 tp!269618)))

(declare-fun b!855257 () Bool)

(declare-fun tp!269617 () Bool)

(declare-fun tp!269615 () Bool)

(assert (=> b!855257 (= e!562910 (and tp!269617 tp!269615))))

(assert (=> b!854682 (= tp!269462 e!562910)))

(declare-fun b!855259 () Bool)

(declare-fun tp!269614 () Bool)

(declare-fun tp!269616 () Bool)

(assert (=> b!855259 (= e!562910 (and tp!269614 tp!269616))))

(declare-fun b!855256 () Bool)

(assert (=> b!855256 (= e!562910 tp_is_empty!3985)))

(assert (= (and b!854682 ((_ is ElementMatch!2163) (regOne!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855256))

(assert (= (and b!854682 ((_ is Concat!3960) (regOne!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855257))

(assert (= (and b!854682 ((_ is Star!2163) (regOne!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855258))

(assert (= (and b!854682 ((_ is Union!2163) (regOne!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855259))

(declare-fun b!855262 () Bool)

(declare-fun e!562911 () Bool)

(declare-fun tp!269623 () Bool)

(assert (=> b!855262 (= e!562911 tp!269623)))

(declare-fun b!855261 () Bool)

(declare-fun tp!269622 () Bool)

(declare-fun tp!269620 () Bool)

(assert (=> b!855261 (= e!562911 (and tp!269622 tp!269620))))

(assert (=> b!854682 (= tp!269464 e!562911)))

(declare-fun b!855263 () Bool)

(declare-fun tp!269619 () Bool)

(declare-fun tp!269621 () Bool)

(assert (=> b!855263 (= e!562911 (and tp!269619 tp!269621))))

(declare-fun b!855260 () Bool)

(assert (=> b!855260 (= e!562911 tp_is_empty!3985)))

(assert (= (and b!854682 ((_ is ElementMatch!2163) (regTwo!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855260))

(assert (= (and b!854682 ((_ is Concat!3960) (regTwo!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855261))

(assert (= (and b!854682 ((_ is Star!2163) (regTwo!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855262))

(assert (= (and b!854682 ((_ is Union!2163) (regTwo!4839 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855263))

(declare-fun b!855266 () Bool)

(declare-fun e!562914 () Bool)

(assert (=> b!855266 (= e!562914 true)))

(declare-fun b!855265 () Bool)

(declare-fun e!562913 () Bool)

(assert (=> b!855265 (= e!562913 e!562914)))

(declare-fun b!855264 () Bool)

(declare-fun e!562912 () Bool)

(assert (=> b!855264 (= e!562912 e!562913)))

(assert (=> b!854625 e!562912))

(assert (= b!855265 b!855266))

(assert (= b!855264 b!855265))

(assert (= (and b!854625 ((_ is Cons!9222) (t!96226 rules!2621))) b!855264))

(assert (=> b!855266 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 (t!96226 rules!2621))))) (dynLambda!4322 order!5945 lambda!25605))))

(assert (=> b!855266 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621))))) (dynLambda!4322 order!5945 lambda!25605))))

(declare-fun b!855269 () Bool)

(declare-fun e!562915 () Bool)

(declare-fun tp!269628 () Bool)

(assert (=> b!855269 (= e!562915 tp!269628)))

(declare-fun b!855268 () Bool)

(declare-fun tp!269627 () Bool)

(declare-fun tp!269625 () Bool)

(assert (=> b!855268 (= e!562915 (and tp!269627 tp!269625))))

(assert (=> b!854689 (= tp!269473 e!562915)))

(declare-fun b!855270 () Bool)

(declare-fun tp!269624 () Bool)

(declare-fun tp!269626 () Bool)

(assert (=> b!855270 (= e!562915 (and tp!269624 tp!269626))))

(declare-fun b!855267 () Bool)

(assert (=> b!855267 (= e!562915 tp_is_empty!3985)))

(assert (= (and b!854689 ((_ is ElementMatch!2163) (regOne!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855267))

(assert (= (and b!854689 ((_ is Concat!3960) (regOne!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855268))

(assert (= (and b!854689 ((_ is Star!2163) (regOne!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855269))

(assert (= (and b!854689 ((_ is Union!2163) (regOne!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855270))

(declare-fun b!855273 () Bool)

(declare-fun e!562916 () Bool)

(declare-fun tp!269633 () Bool)

(assert (=> b!855273 (= e!562916 tp!269633)))

(declare-fun b!855272 () Bool)

(declare-fun tp!269632 () Bool)

(declare-fun tp!269630 () Bool)

(assert (=> b!855272 (= e!562916 (and tp!269632 tp!269630))))

(assert (=> b!854689 (= tp!269471 e!562916)))

(declare-fun b!855274 () Bool)

(declare-fun tp!269629 () Bool)

(declare-fun tp!269631 () Bool)

(assert (=> b!855274 (= e!562916 (and tp!269629 tp!269631))))

(declare-fun b!855271 () Bool)

(assert (=> b!855271 (= e!562916 tp_is_empty!3985)))

(assert (= (and b!854689 ((_ is ElementMatch!2163) (regTwo!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855271))

(assert (= (and b!854689 ((_ is Concat!3960) (regTwo!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855272))

(assert (= (and b!854689 ((_ is Star!2163) (regTwo!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855273))

(assert (= (and b!854689 ((_ is Union!2163) (regTwo!4838 (regex!1730 (rule!3153 separatorToken!297))))) b!855274))

(declare-fun b!855277 () Bool)

(declare-fun e!562919 () Bool)

(assert (=> b!855277 (= e!562919 true)))

(declare-fun b!855276 () Bool)

(declare-fun e!562918 () Bool)

(assert (=> b!855276 (= e!562918 e!562919)))

(declare-fun b!855275 () Bool)

(declare-fun e!562917 () Bool)

(assert (=> b!855275 (= e!562917 e!562918)))

(assert (=> b!854633 e!562917))

(assert (= b!855276 b!855277))

(assert (= b!855275 b!855276))

(assert (= (and b!854633 ((_ is Cons!9222) (t!96226 rules!2621))) b!855275))

(assert (=> b!855277 (< (dynLambda!4321 order!5943 (toValue!2779 (transformation!1730 (h!14623 (t!96226 rules!2621))))) (dynLambda!4322 order!5945 lambda!25606))))

(assert (=> b!855277 (< (dynLambda!4323 order!5947 (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621))))) (dynLambda!4322 order!5945 lambda!25606))))

(declare-fun b!855280 () Bool)

(declare-fun e!562920 () Bool)

(declare-fun tp!269638 () Bool)

(assert (=> b!855280 (= e!562920 tp!269638)))

(declare-fun b!855279 () Bool)

(declare-fun tp!269637 () Bool)

(declare-fun tp!269635 () Bool)

(assert (=> b!855279 (= e!562920 (and tp!269637 tp!269635))))

(assert (=> b!854681 (= tp!269466 e!562920)))

(declare-fun b!855281 () Bool)

(declare-fun tp!269634 () Bool)

(declare-fun tp!269636 () Bool)

(assert (=> b!855281 (= e!562920 (and tp!269634 tp!269636))))

(declare-fun b!855278 () Bool)

(assert (=> b!855278 (= e!562920 tp_is_empty!3985)))

(assert (= (and b!854681 ((_ is ElementMatch!2163) (reg!2492 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855278))

(assert (= (and b!854681 ((_ is Concat!3960) (reg!2492 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855279))

(assert (= (and b!854681 ((_ is Star!2163) (reg!2492 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855280))

(assert (= (and b!854681 ((_ is Union!2163) (reg!2492 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855281))

(declare-fun b!855284 () Bool)

(declare-fun e!562921 () Bool)

(declare-fun tp!269643 () Bool)

(assert (=> b!855284 (= e!562921 tp!269643)))

(declare-fun b!855283 () Bool)

(declare-fun tp!269642 () Bool)

(declare-fun tp!269640 () Bool)

(assert (=> b!855283 (= e!562921 (and tp!269642 tp!269640))))

(assert (=> b!854680 (= tp!269465 e!562921)))

(declare-fun b!855285 () Bool)

(declare-fun tp!269639 () Bool)

(declare-fun tp!269641 () Bool)

(assert (=> b!855285 (= e!562921 (and tp!269639 tp!269641))))

(declare-fun b!855282 () Bool)

(assert (=> b!855282 (= e!562921 tp_is_empty!3985)))

(assert (= (and b!854680 ((_ is ElementMatch!2163) (regOne!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855282))

(assert (= (and b!854680 ((_ is Concat!3960) (regOne!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855283))

(assert (= (and b!854680 ((_ is Star!2163) (regOne!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855284))

(assert (= (and b!854680 ((_ is Union!2163) (regOne!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855285))

(declare-fun b!855288 () Bool)

(declare-fun e!562922 () Bool)

(declare-fun tp!269648 () Bool)

(assert (=> b!855288 (= e!562922 tp!269648)))

(declare-fun b!855287 () Bool)

(declare-fun tp!269647 () Bool)

(declare-fun tp!269645 () Bool)

(assert (=> b!855287 (= e!562922 (and tp!269647 tp!269645))))

(assert (=> b!854680 (= tp!269463 e!562922)))

(declare-fun b!855289 () Bool)

(declare-fun tp!269644 () Bool)

(declare-fun tp!269646 () Bool)

(assert (=> b!855289 (= e!562922 (and tp!269644 tp!269646))))

(declare-fun b!855286 () Bool)

(assert (=> b!855286 (= e!562922 tp_is_empty!3985)))

(assert (= (and b!854680 ((_ is ElementMatch!2163) (regTwo!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855286))

(assert (= (and b!854680 ((_ is Concat!3960) (regTwo!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855287))

(assert (= (and b!854680 ((_ is Star!2163) (regTwo!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855288))

(assert (= (and b!854680 ((_ is Union!2163) (regTwo!4838 (regex!1730 (rule!3153 (h!14624 l!5107)))))) b!855289))

(declare-fun b!855292 () Bool)

(declare-fun e!562923 () Bool)

(declare-fun tp!269653 () Bool)

(assert (=> b!855292 (= e!562923 tp!269653)))

(declare-fun b!855291 () Bool)

(declare-fun tp!269652 () Bool)

(declare-fun tp!269650 () Bool)

(assert (=> b!855291 (= e!562923 (and tp!269652 tp!269650))))

(assert (=> b!854695 (= tp!269480 e!562923)))

(declare-fun b!855293 () Bool)

(declare-fun tp!269649 () Bool)

(declare-fun tp!269651 () Bool)

(assert (=> b!855293 (= e!562923 (and tp!269649 tp!269651))))

(declare-fun b!855290 () Bool)

(assert (=> b!855290 (= e!562923 tp_is_empty!3985)))

(assert (= (and b!854695 ((_ is ElementMatch!2163) (reg!2492 (regex!1730 (h!14623 rules!2621))))) b!855290))

(assert (= (and b!854695 ((_ is Concat!3960) (reg!2492 (regex!1730 (h!14623 rules!2621))))) b!855291))

(assert (= (and b!854695 ((_ is Star!2163) (reg!2492 (regex!1730 (h!14623 rules!2621))))) b!855292))

(assert (= (and b!854695 ((_ is Union!2163) (reg!2492 (regex!1730 (h!14623 rules!2621))))) b!855293))

(declare-fun b!855296 () Bool)

(declare-fun e!562924 () Bool)

(declare-fun tp!269658 () Bool)

(assert (=> b!855296 (= e!562924 tp!269658)))

(declare-fun b!855295 () Bool)

(declare-fun tp!269657 () Bool)

(declare-fun tp!269655 () Bool)

(assert (=> b!855295 (= e!562924 (and tp!269657 tp!269655))))

(assert (=> b!854696 (= tp!269476 e!562924)))

(declare-fun b!855297 () Bool)

(declare-fun tp!269654 () Bool)

(declare-fun tp!269656 () Bool)

(assert (=> b!855297 (= e!562924 (and tp!269654 tp!269656))))

(declare-fun b!855294 () Bool)

(assert (=> b!855294 (= e!562924 tp_is_empty!3985)))

(assert (= (and b!854696 ((_ is ElementMatch!2163) (regOne!4839 (regex!1730 (h!14623 rules!2621))))) b!855294))

(assert (= (and b!854696 ((_ is Concat!3960) (regOne!4839 (regex!1730 (h!14623 rules!2621))))) b!855295))

(assert (= (and b!854696 ((_ is Star!2163) (regOne!4839 (regex!1730 (h!14623 rules!2621))))) b!855296))

(assert (= (and b!854696 ((_ is Union!2163) (regOne!4839 (regex!1730 (h!14623 rules!2621))))) b!855297))

(declare-fun b!855300 () Bool)

(declare-fun e!562925 () Bool)

(declare-fun tp!269663 () Bool)

(assert (=> b!855300 (= e!562925 tp!269663)))

(declare-fun b!855299 () Bool)

(declare-fun tp!269662 () Bool)

(declare-fun tp!269660 () Bool)

(assert (=> b!855299 (= e!562925 (and tp!269662 tp!269660))))

(assert (=> b!854696 (= tp!269478 e!562925)))

(declare-fun b!855301 () Bool)

(declare-fun tp!269659 () Bool)

(declare-fun tp!269661 () Bool)

(assert (=> b!855301 (= e!562925 (and tp!269659 tp!269661))))

(declare-fun b!855298 () Bool)

(assert (=> b!855298 (= e!562925 tp_is_empty!3985)))

(assert (= (and b!854696 ((_ is ElementMatch!2163) (regTwo!4839 (regex!1730 (h!14623 rules!2621))))) b!855298))

(assert (= (and b!854696 ((_ is Concat!3960) (regTwo!4839 (regex!1730 (h!14623 rules!2621))))) b!855299))

(assert (= (and b!854696 ((_ is Star!2163) (regTwo!4839 (regex!1730 (h!14623 rules!2621))))) b!855300))

(assert (= (and b!854696 ((_ is Union!2163) (regTwo!4839 (regex!1730 (h!14623 rules!2621))))) b!855301))

(declare-fun b!855302 () Bool)

(declare-fun e!562926 () Bool)

(declare-fun tp!269664 () Bool)

(assert (=> b!855302 (= e!562926 (and tp_is_empty!3985 tp!269664))))

(assert (=> b!854666 (= tp!269451 e!562926)))

(assert (= (and b!854666 ((_ is Cons!9221) (originalCharacters!2286 (h!14624 (t!96227 l!5107))))) b!855302))

(declare-fun e!562932 () Bool)

(declare-fun tp!269673 () Bool)

(declare-fun b!855311 () Bool)

(declare-fun tp!269671 () Bool)

(assert (=> b!855311 (= e!562932 (and (inv!11729 (left!6821 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))))) tp!269673 (inv!11729 (right!7151 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))))) tp!269671))))

(declare-fun b!855313 () Bool)

(declare-fun e!562931 () Bool)

(declare-fun tp!269672 () Bool)

(assert (=> b!855313 (= e!562931 tp!269672)))

(declare-fun b!855312 () Bool)

(declare-fun inv!11736 (IArray!6115) Bool)

(assert (=> b!855312 (= e!562932 (and (inv!11736 (xs!5744 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))))) e!562931))))

(assert (=> b!854648 (= tp!269436 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297)))) e!562932))))

(assert (= (and b!854648 ((_ is Node!3055) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))))) b!855311))

(assert (= b!855312 b!855313))

(assert (= (and b!854648 ((_ is Leaf!4508) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (value!56004 separatorToken!297))))) b!855312))

(declare-fun m!1096341 () Bool)

(assert (=> b!855311 m!1096341))

(declare-fun m!1096343 () Bool)

(assert (=> b!855311 m!1096343))

(declare-fun m!1096345 () Bool)

(assert (=> b!855312 m!1096345))

(assert (=> b!854648 m!1095069))

(declare-fun b!855316 () Bool)

(declare-fun e!562933 () Bool)

(declare-fun tp!269678 () Bool)

(assert (=> b!855316 (= e!562933 tp!269678)))

(declare-fun b!855315 () Bool)

(declare-fun tp!269677 () Bool)

(declare-fun tp!269675 () Bool)

(assert (=> b!855315 (= e!562933 (and tp!269677 tp!269675))))

(assert (=> b!854694 (= tp!269479 e!562933)))

(declare-fun b!855317 () Bool)

(declare-fun tp!269674 () Bool)

(declare-fun tp!269676 () Bool)

(assert (=> b!855317 (= e!562933 (and tp!269674 tp!269676))))

(declare-fun b!855314 () Bool)

(assert (=> b!855314 (= e!562933 tp_is_empty!3985)))

(assert (= (and b!854694 ((_ is ElementMatch!2163) (regOne!4838 (regex!1730 (h!14623 rules!2621))))) b!855314))

(assert (= (and b!854694 ((_ is Concat!3960) (regOne!4838 (regex!1730 (h!14623 rules!2621))))) b!855315))

(assert (= (and b!854694 ((_ is Star!2163) (regOne!4838 (regex!1730 (h!14623 rules!2621))))) b!855316))

(assert (= (and b!854694 ((_ is Union!2163) (regOne!4838 (regex!1730 (h!14623 rules!2621))))) b!855317))

(declare-fun b!855320 () Bool)

(declare-fun e!562934 () Bool)

(declare-fun tp!269683 () Bool)

(assert (=> b!855320 (= e!562934 tp!269683)))

(declare-fun b!855319 () Bool)

(declare-fun tp!269682 () Bool)

(declare-fun tp!269680 () Bool)

(assert (=> b!855319 (= e!562934 (and tp!269682 tp!269680))))

(assert (=> b!854694 (= tp!269477 e!562934)))

(declare-fun b!855321 () Bool)

(declare-fun tp!269679 () Bool)

(declare-fun tp!269681 () Bool)

(assert (=> b!855321 (= e!562934 (and tp!269679 tp!269681))))

(declare-fun b!855318 () Bool)

(assert (=> b!855318 (= e!562934 tp_is_empty!3985)))

(assert (= (and b!854694 ((_ is ElementMatch!2163) (regTwo!4838 (regex!1730 (h!14623 rules!2621))))) b!855318))

(assert (= (and b!854694 ((_ is Concat!3960) (regTwo!4838 (regex!1730 (h!14623 rules!2621))))) b!855319))

(assert (= (and b!854694 ((_ is Star!2163) (regTwo!4838 (regex!1730 (h!14623 rules!2621))))) b!855320))

(assert (= (and b!854694 ((_ is Union!2163) (regTwo!4838 (regex!1730 (h!14623 rules!2621))))) b!855321))

(declare-fun b!855322 () Bool)

(declare-fun e!562935 () Bool)

(declare-fun tp!269684 () Bool)

(assert (=> b!855322 (= e!562935 (and tp_is_empty!3985 tp!269684))))

(assert (=> b!854687 (= tp!269469 e!562935)))

(assert (= (and b!854687 ((_ is Cons!9221) (t!96225 (originalCharacters!2286 separatorToken!297)))) b!855322))

(declare-fun b!855325 () Bool)

(declare-fun e!562936 () Bool)

(declare-fun tp!269689 () Bool)

(assert (=> b!855325 (= e!562936 tp!269689)))

(declare-fun b!855324 () Bool)

(declare-fun tp!269688 () Bool)

(declare-fun tp!269686 () Bool)

(assert (=> b!855324 (= e!562936 (and tp!269688 tp!269686))))

(assert (=> b!854667 (= tp!269450 e!562936)))

(declare-fun b!855326 () Bool)

(declare-fun tp!269685 () Bool)

(declare-fun tp!269687 () Bool)

(assert (=> b!855326 (= e!562936 (and tp!269685 tp!269687))))

(declare-fun b!855323 () Bool)

(assert (=> b!855323 (= e!562936 tp_is_empty!3985)))

(assert (= (and b!854667 ((_ is ElementMatch!2163) (regex!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) b!855323))

(assert (= (and b!854667 ((_ is Concat!3960) (regex!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) b!855324))

(assert (= (and b!854667 ((_ is Star!2163) (regex!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) b!855325))

(assert (= (and b!854667 ((_ is Union!2163) (regex!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) b!855326))

(declare-fun b!855329 () Bool)

(declare-fun b_free!25933 () Bool)

(declare-fun b_next!25997 () Bool)

(assert (=> b!855329 (= b_free!25933 (not b_next!25997))))

(declare-fun tp!269692 () Bool)

(declare-fun b_and!75525 () Bool)

(assert (=> b!855329 (= tp!269692 b_and!75525)))

(declare-fun b_free!25935 () Bool)

(declare-fun b_next!25999 () Bool)

(assert (=> b!855329 (= b_free!25935 (not b_next!25999))))

(declare-fun t!96433 () Bool)

(declare-fun tb!60501 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107)))))) t!96433) tb!60501))

(declare-fun result!70058 () Bool)

(assert (= result!70058 result!69952))

(assert (=> d!267295 t!96433))

(declare-fun tb!60503 () Bool)

(declare-fun t!96435 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) t!96435) tb!60503))

(declare-fun result!70060 () Bool)

(assert (= result!70060 result!69850))

(assert (=> b!854439 t!96435))

(declare-fun tb!60505 () Bool)

(declare-fun t!96437 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428))))) t!96437) tb!60505))

(declare-fun result!70062 () Bool)

(assert (= result!70062 result!69942))

(assert (=> d!267273 t!96437))

(declare-fun t!96439 () Bool)

(declare-fun tb!60507 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367))))) t!96439) tb!60507))

(declare-fun result!70064 () Bool)

(assert (= result!70064 result!70046))

(assert (=> d!267501 t!96439))

(declare-fun t!96441 () Bool)

(declare-fun tb!60509 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) t!96441) tb!60509))

(declare-fun result!70066 () Bool)

(assert (= result!70066 result!69880))

(assert (=> b!854646 t!96441))

(declare-fun tb!60511 () Bool)

(declare-fun t!96443 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366))))) t!96443) tb!60511))

(declare-fun result!70068 () Bool)

(assert (= result!70068 result!69962))

(assert (=> d!267319 t!96443))

(declare-fun tb!60513 () Bool)

(declare-fun t!96445 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) t!96445) tb!60513))

(declare-fun result!70070 () Bool)

(assert (= result!70070 result!69972))

(assert (=> b!855001 t!96445))

(assert (=> d!267433 t!96435))

(assert (=> d!267305 t!96441))

(declare-fun tb!60515 () Bool)

(declare-fun t!96447 () Bool)

(assert (=> (and b!855329 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427))))) t!96447) tb!60515))

(declare-fun result!70072 () Bool)

(assert (= result!70072 result!69992))

(assert (=> d!267399 t!96447))

(declare-fun tp!269691 () Bool)

(declare-fun b_and!75527 () Bool)

(assert (=> b!855329 (= tp!269691 (and (=> t!96435 result!70060) (=> t!96433 result!70058) (=> t!96445 result!70070) (=> t!96447 result!70072) (=> t!96437 result!70062) (=> t!96443 result!70068) (=> t!96439 result!70064) (=> t!96441 result!70066) b_and!75527))))

(declare-fun e!562938 () Bool)

(assert (=> b!855329 (= e!562938 (and tp!269692 tp!269691))))

(declare-fun tp!269693 () Bool)

(declare-fun e!562937 () Bool)

(declare-fun b!855328 () Bool)

(assert (=> b!855328 (= e!562937 (and tp!269693 (inv!11722 (tag!1992 (h!14623 (t!96226 (t!96226 rules!2621))))) (inv!11725 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) e!562938))))

(declare-fun b!855327 () Bool)

(declare-fun e!562939 () Bool)

(declare-fun tp!269690 () Bool)

(assert (=> b!855327 (= e!562939 (and e!562937 tp!269690))))

(assert (=> b!854705 (= tp!269489 e!562939)))

(assert (= b!855328 b!855329))

(assert (= b!855327 b!855328))

(assert (= (and b!854705 ((_ is Cons!9222) (t!96226 (t!96226 rules!2621)))) b!855327))

(declare-fun m!1096347 () Bool)

(assert (=> b!855328 m!1096347))

(declare-fun m!1096349 () Bool)

(assert (=> b!855328 m!1096349))

(declare-fun b!855332 () Bool)

(declare-fun e!562941 () Bool)

(declare-fun tp!269698 () Bool)

(assert (=> b!855332 (= e!562941 tp!269698)))

(declare-fun b!855331 () Bool)

(declare-fun tp!269697 () Bool)

(declare-fun tp!269695 () Bool)

(assert (=> b!855331 (= e!562941 (and tp!269697 tp!269695))))

(assert (=> b!854706 (= tp!269492 e!562941)))

(declare-fun b!855333 () Bool)

(declare-fun tp!269694 () Bool)

(declare-fun tp!269696 () Bool)

(assert (=> b!855333 (= e!562941 (and tp!269694 tp!269696))))

(declare-fun b!855330 () Bool)

(assert (=> b!855330 (= e!562941 tp_is_empty!3985)))

(assert (= (and b!854706 ((_ is ElementMatch!2163) (regex!1730 (h!14623 (t!96226 rules!2621))))) b!855330))

(assert (= (and b!854706 ((_ is Concat!3960) (regex!1730 (h!14623 (t!96226 rules!2621))))) b!855331))

(assert (= (and b!854706 ((_ is Star!2163) (regex!1730 (h!14623 (t!96226 rules!2621))))) b!855332))

(assert (= (and b!854706 ((_ is Union!2163) (regex!1730 (h!14623 (t!96226 rules!2621))))) b!855333))

(declare-fun b!855337 () Bool)

(declare-fun b_free!25937 () Bool)

(declare-fun b_next!26001 () Bool)

(assert (=> b!855337 (= b_free!25937 (not b_next!26001))))

(declare-fun tp!269699 () Bool)

(declare-fun b_and!75529 () Bool)

(assert (=> b!855337 (= tp!269699 b_and!75529)))

(declare-fun b_free!25939 () Bool)

(declare-fun b_next!26003 () Bool)

(assert (=> b!855337 (= b_free!25939 (not b_next!26003))))

(declare-fun t!96449 () Bool)

(declare-fun tb!60517 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (tail!1042 l!5107)))))) t!96449) tb!60517))

(declare-fun result!70074 () Bool)

(assert (= result!70074 result!69952))

(assert (=> d!267295 t!96449))

(declare-fun t!96451 () Bool)

(declare-fun tb!60519 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107))))) t!96451) tb!60519))

(declare-fun result!70076 () Bool)

(assert (= result!70076 result!69850))

(assert (=> b!854439 t!96451))

(declare-fun tb!60521 () Bool)

(declare-fun t!96453 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323428))))) t!96453) tb!60521))

(declare-fun result!70078 () Bool)

(assert (= result!70078 result!69942))

(assert (=> d!267273 t!96453))

(declare-fun tb!60523 () Bool)

(declare-fun t!96455 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323367))))) t!96455) tb!60523))

(declare-fun result!70080 () Bool)

(assert (= result!70080 result!70046))

(assert (=> d!267501 t!96455))

(declare-fun t!96457 () Bool)

(declare-fun tb!60525 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297)))) t!96457) tb!60525))

(declare-fun result!70082 () Bool)

(assert (= result!70082 result!69880))

(assert (=> b!854646 t!96457))

(declare-fun tb!60527 () Bool)

(declare-fun t!96459 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323366))))) t!96459) tb!60527))

(declare-fun result!70084 () Bool)

(assert (= result!70084 result!69962))

(assert (=> d!267319 t!96459))

(declare-fun t!96461 () Bool)

(declare-fun tb!60529 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107)))))) t!96461) tb!60529))

(declare-fun result!70086 () Bool)

(assert (= result!70086 result!69972))

(assert (=> b!855001 t!96461))

(assert (=> d!267433 t!96451))

(assert (=> d!267305 t!96457))

(declare-fun t!96463 () Bool)

(declare-fun tb!60531 () Bool)

(assert (=> (and b!855337 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 lt!323427))))) t!96463) tb!60531))

(declare-fun result!70088 () Bool)

(assert (= result!70088 result!69992))

(assert (=> d!267399 t!96463))

(declare-fun tp!269700 () Bool)

(declare-fun b_and!75531 () Bool)

(assert (=> b!855337 (= tp!269700 (and (=> t!96449 result!70074) (=> t!96457 result!70082) (=> t!96455 result!70080) (=> t!96463 result!70088) (=> t!96459 result!70084) (=> t!96461 result!70086) (=> t!96451 result!70076) (=> t!96453 result!70078) b_and!75531))))

(declare-fun e!562945 () Bool)

(assert (=> b!855337 (= e!562945 (and tp!269699 tp!269700))))

(declare-fun b!855336 () Bool)

(declare-fun tp!269702 () Bool)

(declare-fun e!562943 () Bool)

(assert (=> b!855336 (= e!562943 (and tp!269702 (inv!11722 (tag!1992 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (inv!11725 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) e!562945))))

(declare-fun e!562947 () Bool)

(declare-fun b!855334 () Bool)

(declare-fun tp!269701 () Bool)

(declare-fun e!562946 () Bool)

(assert (=> b!855334 (= e!562946 (and (inv!11726 (h!14624 (t!96227 (t!96227 l!5107)))) e!562947 tp!269701))))

(declare-fun tp!269703 () Bool)

(declare-fun b!855335 () Bool)

(assert (=> b!855335 (= e!562947 (and (inv!21 (value!56004 (h!14624 (t!96227 (t!96227 l!5107))))) e!562943 tp!269703))))

(assert (=> b!854665 (= tp!269449 e!562946)))

(assert (= b!855336 b!855337))

(assert (= b!855335 b!855336))

(assert (= b!855334 b!855335))

(assert (= (and b!854665 ((_ is Cons!9223) (t!96227 (t!96227 l!5107)))) b!855334))

(declare-fun m!1096351 () Bool)

(assert (=> b!855336 m!1096351))

(declare-fun m!1096353 () Bool)

(assert (=> b!855336 m!1096353))

(declare-fun m!1096355 () Bool)

(assert (=> b!855334 m!1096355))

(declare-fun m!1096357 () Bool)

(assert (=> b!855335 m!1096357))

(declare-fun b!855338 () Bool)

(declare-fun e!562948 () Bool)

(declare-fun tp!269704 () Bool)

(assert (=> b!855338 (= e!562948 (and tp_is_empty!3985 tp!269704))))

(assert (=> b!854692 (= tp!269475 e!562948)))

(assert (= (and b!854692 ((_ is Cons!9221) (t!96225 (originalCharacters!2286 (h!14624 l!5107))))) b!855338))

(declare-fun b!855341 () Bool)

(declare-fun e!562949 () Bool)

(declare-fun tp!269709 () Bool)

(assert (=> b!855341 (= e!562949 tp!269709)))

(declare-fun b!855340 () Bool)

(declare-fun tp!269708 () Bool)

(declare-fun tp!269706 () Bool)

(assert (=> b!855340 (= e!562949 (and tp!269708 tp!269706))))

(assert (=> b!854690 (= tp!269474 e!562949)))

(declare-fun b!855342 () Bool)

(declare-fun tp!269705 () Bool)

(declare-fun tp!269707 () Bool)

(assert (=> b!855342 (= e!562949 (and tp!269705 tp!269707))))

(declare-fun b!855339 () Bool)

(assert (=> b!855339 (= e!562949 tp_is_empty!3985)))

(assert (= (and b!854690 ((_ is ElementMatch!2163) (reg!2492 (regex!1730 (rule!3153 separatorToken!297))))) b!855339))

(assert (= (and b!854690 ((_ is Concat!3960) (reg!2492 (regex!1730 (rule!3153 separatorToken!297))))) b!855340))

(assert (= (and b!854690 ((_ is Star!2163) (reg!2492 (regex!1730 (rule!3153 separatorToken!297))))) b!855341))

(assert (= (and b!854690 ((_ is Union!2163) (reg!2492 (regex!1730 (rule!3153 separatorToken!297))))) b!855342))

(declare-fun b!855343 () Bool)

(declare-fun tp!269712 () Bool)

(declare-fun e!562951 () Bool)

(declare-fun tp!269710 () Bool)

(assert (=> b!855343 (= e!562951 (and (inv!11729 (left!6821 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))))) tp!269712 (inv!11729 (right!7151 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))))) tp!269710))))

(declare-fun b!855345 () Bool)

(declare-fun e!562950 () Bool)

(declare-fun tp!269711 () Bool)

(assert (=> b!855345 (= e!562950 tp!269711)))

(declare-fun b!855344 () Bool)

(assert (=> b!855344 (= e!562951 (and (inv!11736 (xs!5744 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))))) e!562950))))

(assert (=> b!854445 (= tp!269378 (and (inv!11729 (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107))))) e!562951))))

(assert (= (and b!854445 ((_ is Node!3055) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))))) b!855343))

(assert (= b!855344 b!855345))

(assert (= (and b!854445 ((_ is Leaf!4508) (c!138544 (dynLambda!4319 (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (value!56004 (h!14624 l!5107)))))) b!855344))

(declare-fun m!1096359 () Bool)

(assert (=> b!855343 m!1096359))

(declare-fun m!1096361 () Bool)

(assert (=> b!855343 m!1096361))

(declare-fun m!1096363 () Bool)

(assert (=> b!855344 m!1096363))

(assert (=> b!854445 m!1094805))

(declare-fun b!855348 () Bool)

(declare-fun e!562952 () Bool)

(declare-fun tp!269717 () Bool)

(assert (=> b!855348 (= e!562952 tp!269717)))

(declare-fun b!855347 () Bool)

(declare-fun tp!269716 () Bool)

(declare-fun tp!269714 () Bool)

(assert (=> b!855347 (= e!562952 (and tp!269716 tp!269714))))

(assert (=> b!854691 (= tp!269470 e!562952)))

(declare-fun b!855349 () Bool)

(declare-fun tp!269713 () Bool)

(declare-fun tp!269715 () Bool)

(assert (=> b!855349 (= e!562952 (and tp!269713 tp!269715))))

(declare-fun b!855346 () Bool)

(assert (=> b!855346 (= e!562952 tp_is_empty!3985)))

(assert (= (and b!854691 ((_ is ElementMatch!2163) (regOne!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855346))

(assert (= (and b!854691 ((_ is Concat!3960) (regOne!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855347))

(assert (= (and b!854691 ((_ is Star!2163) (regOne!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855348))

(assert (= (and b!854691 ((_ is Union!2163) (regOne!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855349))

(declare-fun b!855352 () Bool)

(declare-fun e!562953 () Bool)

(declare-fun tp!269722 () Bool)

(assert (=> b!855352 (= e!562953 tp!269722)))

(declare-fun b!855351 () Bool)

(declare-fun tp!269721 () Bool)

(declare-fun tp!269719 () Bool)

(assert (=> b!855351 (= e!562953 (and tp!269721 tp!269719))))

(assert (=> b!854691 (= tp!269472 e!562953)))

(declare-fun b!855353 () Bool)

(declare-fun tp!269718 () Bool)

(declare-fun tp!269720 () Bool)

(assert (=> b!855353 (= e!562953 (and tp!269718 tp!269720))))

(declare-fun b!855350 () Bool)

(assert (=> b!855350 (= e!562953 tp_is_empty!3985)))

(assert (= (and b!854691 ((_ is ElementMatch!2163) (regTwo!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855350))

(assert (= (and b!854691 ((_ is Concat!3960) (regTwo!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855351))

(assert (= (and b!854691 ((_ is Star!2163) (regTwo!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855352))

(assert (= (and b!854691 ((_ is Union!2163) (regTwo!4839 (regex!1730 (rule!3153 separatorToken!297))))) b!855353))

(declare-fun b_lambda!28711 () Bool)

(assert (= b_lambda!28677 (or (and b!854344 b_free!25903 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!854330 b_free!25899) (and b!854668 b_free!25919 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!854707 b_free!25923 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!854329 b_free!25907 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!855329 b_free!25935 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) (and b!855337 b_free!25939 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))))) b_lambda!28711)))

(declare-fun b_lambda!28713 () Bool)

(assert (= b_lambda!28691 (or (and b!855329 b_free!25935 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!854329 b_free!25907) (and b!854668 b_free!25919 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!854344 b_free!25903 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!854330 b_free!25899 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!855337 b_free!25939 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) (and b!854707 b_free!25923 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))))) b_lambda!28713)))

(declare-fun b_lambda!28715 () Bool)

(assert (= b_lambda!28681 (or b!854338 b_lambda!28715)))

(declare-fun bs!231773 () Bool)

(declare-fun d!267511 () Bool)

(assert (= bs!231773 (and d!267511 b!854338)))

(assert (=> bs!231773 (= (dynLambda!4320 lambda!25598 (h!14624 (t!96227 l!5107))) (not (isSeparator!1730 (rule!3153 (h!14624 (t!96227 l!5107))))))))

(assert (=> b!854987 d!267511))

(declare-fun b_lambda!28717 () Bool)

(assert (= b_lambda!28685 (or d!267101 b_lambda!28717)))

(declare-fun bs!231774 () Bool)

(declare-fun d!267513 () Bool)

(assert (= bs!231774 (and d!267513 d!267101)))

(assert (=> bs!231774 (= (dynLambda!4320 lambda!25606 (h!14624 lt!323343)) (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 lt!323343)))))

(assert (=> bs!231774 m!1095015))

(assert (=> b!855004 d!267513))

(declare-fun b_lambda!28719 () Bool)

(assert (= b_lambda!28683 (or (and b!854344 b_free!25903 (= (toChars!2638 (transformation!1730 (h!14623 rules!2621))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))))) (and b!855329 b_free!25935 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 (t!96226 rules!2621))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))))) (and b!854668 b_free!25919) (and b!854330 b_free!25899 (= (toChars!2638 (transformation!1730 (rule!3153 separatorToken!297))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))))) (and b!854329 b_free!25907 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 l!5107)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))))) (and b!855337 b_free!25939 (= (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 (t!96227 l!5107)))))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))))) (and b!854707 b_free!25923 (= (toChars!2638 (transformation!1730 (h!14623 (t!96226 rules!2621)))) (toChars!2638 (transformation!1730 (rule!3153 (h!14624 (t!96227 l!5107))))))) b_lambda!28719)))

(declare-fun b_lambda!28721 () Bool)

(assert (= b_lambda!28671 (or d!267059 b_lambda!28721)))

(declare-fun bs!231775 () Bool)

(declare-fun d!267515 () Bool)

(assert (= bs!231775 (and d!267515 d!267059)))

(assert (=> bs!231775 (= (dynLambda!4320 lambda!25605 (h!14624 l!5107)) (rulesProduceIndividualToken!596 thiss!20117 rules!2621 (h!14624 l!5107)))))

(assert (=> bs!231775 m!1095005))

(assert (=> b!854901 d!267515))

(check-sat (not b_next!25965) (not b!855344) (not d!267305) (not b!855033) (not d!267265) (not bs!231775) (not d!267271) (not b!854920) (not b!855261) (not b!855242) (not b!855064) (not b!855319) (not b!855257) (not b!854894) (not d!267343) (not b_next!25967) (not b!854957) (not d!267223) (not b_lambda!28709) (not b!855348) (not b!855268) (not b!855347) (not b_next!25981) (not b!854988) (not d!267499) (not b!854940) (not b!855144) (not b_lambda!28715) (not b!854897) (not d!267263) (not b!855076) (not b!854963) (not d!267291) (not b!854937) (not d!267505) (not b!854648) b_and!75515 (not b!855092) (not b!855272) (not b!855001) (not b_next!25983) (not b!855297) (not d!267489) (not bs!231774) (not b!855025) (not b!854977) (not b!854997) (not d!267297) (not b!855024) (not b!855245) (not b!855320) (not d!267487) (not d!267407) (not b!855292) (not b!854995) (not b!854974) (not b!855250) (not b!855283) (not b!854893) (not b!855079) (not b!855340) (not b!855328) b_and!75353 (not b!855145) (not b!854934) (not d!267385) (not b!855264) (not b!855049) (not b!855321) (not b!855044) (not b!854926) b_and!75517 (not d!267323) (not b!855341) (not d!267399) (not b!855313) (not b!854939) b_and!75529 (not b!855342) (not b!855322) (not d!267469) (not b!855000) (not b!855246) (not b!854943) b_and!75349 (not b_lambda!28653) (not b!855334) (not d!267423) (not b!855003) (not b!855284) (not b!855353) (not b!855031) (not d!267393) (not b!855300) (not d!267497) (not b!855050) (not b!855023) (not d!267277) (not b!854979) (not b!855312) tp_is_empty!3985 (not b!855336) (not d!267293) (not b!855327) (not b!854965) (not b!855006) (not bm!50520) (not d!267449) (not d!267501) (not b!855293) (not d!267289) (not b!855325) (not d!267367) (not d!267445) (not b!855285) (not d!267273) (not b_lambda!28713) (not b!855022) (not b!855324) (not d!267285) (not b!854985) (not b!855287) (not b!854949) (not b!855077) (not tb!60419) (not b!854935) (not d!267319) (not b_next!25971) (not b!855002) (not b!854896) (not tb!60439) (not b!855007) (not b_lambda!28711) (not b!855335) (not b!855069) (not b!855263) (not b!855253) (not b!855315) (not b_next!25985) (not d!267221) (not b!854972) (not b!855126) (not d!267349) (not b!855273) (not b!855073) (not b!855280) (not b!854955) (not d!267355) (not b!855333) (not b!854998) b_and!75313 (not b_next!25997) (not b!855065) b_and!75527 (not d!267279) (not b_lambda!28675) (not d!267301) (not b!854946) (not b_lambda!28649) (not b!855343) b_and!75309 (not b!855275) (not d!267345) (not b!855316) (not b!855270) (not b!855057) (not b!855311) (not b!854969) (not b!855332) (not b!855351) (not b_lambda!28721) (not d!267417) (not b!854971) (not b!855326) (not b!855043) (not b!855345) (not d!267337) (not b!854900) (not b!855248) (not d!267481) b_and!75305 (not d!267429) (not b!855262) (not b!855089) (not b!854912) (not d!267303) (not d!267485) (not d!267507) (not b!854932) (not b!855352) b_and!75519 b_and!75521 (not d!267357) (not b!855068) (not b_lambda!28679) (not d!267435) (not d!267299) (not b!854958) (not b!855100) (not d!267309) (not b!855237) (not b!854978) (not d!267477) (not d!267433) (not d!267387) (not b!855072) (not b!854944) (not b!855331) (not tb!60389) (not d!267327) (not b!855349) (not d!267395) (not b!855279) (not b_lambda!28689) (not d!267483) (not b!854445) (not b!855296) (not d!267339) (not b!855234) (not b!854913) (not b_next!25999) (not b!855301) (not b_next!25969) (not b_next!26001) (not b!855291) (not b!854952) (not b!855317) (not b!855302) (not d!267479) (not b!854902) (not b!855295) (not b!855289) (not b!855091) (not d!267269) (not b!855093) (not b!855249) b_and!75525 (not d!267315) (not d!267313) (not tb!60491) (not b!855338) (not b!855150) (not b_next!25961) (not b!855269) (not d!267419) (not d!267425) (not b!855281) (not b!855288) (not d!267375) (not b!855243) (not d!267427) (not b!855090) (not b!854948) (not b!855259) (not b_lambda!28717) (not tb!60399) b_and!75531 (not tb!60409) (not b_next!25963) (not d!267295) (not b!854962) (not b!855005) (not b!854982) (not d!267467) (not b!855299) (not b_lambda!28673) (not b!854915) (not d!267317) (not b!855103) (not b_next!26003) (not b!854986) (not b_next!25987) (not b!855258) (not b!854975) (not b_lambda!28651) (not b!854960) (not b!855239) (not b_lambda!28719) (not b!855255) (not b!854929) b_and!75523 (not b!855274))
(check-sat (not b_next!25965) (not b_next!25967) (not b_next!25981) b_and!75515 (not b_next!25983) b_and!75353 b_and!75349 (not b_next!25971) (not b_next!25985) b_and!75527 b_and!75309 b_and!75305 b_and!75525 (not b_next!25961) b_and!75523 b_and!75517 b_and!75529 b_and!75313 (not b_next!25997) b_and!75519 b_and!75521 (not b_next!25999) (not b_next!25969) (not b_next!26001) b_and!75531 (not b_next!25963) (not b_next!25987) (not b_next!26003))
