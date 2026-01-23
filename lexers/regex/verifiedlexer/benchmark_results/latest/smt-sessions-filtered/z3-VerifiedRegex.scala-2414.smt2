; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125990 () Bool)

(assert start!125990)

(declare-fun b!1387334 () Bool)

(declare-fun b_free!33707 () Bool)

(declare-fun b_next!34411 () Bool)

(assert (=> b!1387334 (= b_free!33707 (not b_next!34411))))

(declare-fun tp!396705 () Bool)

(declare-fun b_and!92939 () Bool)

(assert (=> b!1387334 (= tp!396705 b_and!92939)))

(declare-fun b_free!33709 () Bool)

(declare-fun b_next!34413 () Bool)

(assert (=> b!1387334 (= b_free!33709 (not b_next!34413))))

(declare-fun tp!396709 () Bool)

(declare-fun b_and!92941 () Bool)

(assert (=> b!1387334 (= tp!396709 b_and!92941)))

(declare-fun b!1387366 () Bool)

(declare-fun b_free!33711 () Bool)

(declare-fun b_next!34415 () Bool)

(assert (=> b!1387366 (= b_free!33711 (not b_next!34415))))

(declare-fun tp!396715 () Bool)

(declare-fun b_and!92943 () Bool)

(assert (=> b!1387366 (= tp!396715 b_and!92943)))

(declare-fun b_free!33713 () Bool)

(declare-fun b_next!34417 () Bool)

(assert (=> b!1387366 (= b_free!33713 (not b_next!34417))))

(declare-fun tp!396712 () Bool)

(declare-fun b_and!92945 () Bool)

(assert (=> b!1387366 (= tp!396712 b_and!92945)))

(declare-fun b!1387339 () Bool)

(declare-fun b_free!33715 () Bool)

(declare-fun b_next!34419 () Bool)

(assert (=> b!1387339 (= b_free!33715 (not b_next!34419))))

(declare-fun tp!396708 () Bool)

(declare-fun b_and!92947 () Bool)

(assert (=> b!1387339 (= tp!396708 b_and!92947)))

(declare-fun b_free!33717 () Bool)

(declare-fun b_next!34421 () Bool)

(assert (=> b!1387339 (= b_free!33717 (not b_next!34421))))

(declare-fun tp!396706 () Bool)

(declare-fun b_and!92949 () Bool)

(assert (=> b!1387339 (= tp!396706 b_and!92949)))

(declare-fun b!1387358 () Bool)

(assert (=> b!1387358 true))

(assert (=> b!1387358 true))

(declare-fun b!1387331 () Bool)

(assert (=> b!1387331 true))

(declare-fun b!1387347 () Bool)

(assert (=> b!1387347 true))

(declare-fun bs!337162 () Bool)

(declare-fun b!1387368 () Bool)

(assert (= bs!337162 (and b!1387368 b!1387347)))

(declare-fun lambda!59791 () Int)

(declare-fun lambda!59790 () Int)

(assert (=> bs!337162 (not (= lambda!59791 lambda!59790))))

(assert (=> b!1387368 true))

(declare-fun b!1387327 () Bool)

(declare-fun res!625968 () Bool)

(declare-fun e!886241 () Bool)

(assert (=> b!1387327 (=> res!625968 e!886241)))

(declare-datatypes ((C!7792 0))(
  ( (C!7793 (val!4456 Int)) )
))
(declare-datatypes ((List!14138 0))(
  ( (Nil!14072) (Cons!14072 (h!19473 C!7792) (t!122305 List!14138)) )
))
(declare-fun lt!461484 () List!14138)

(declare-fun lt!461487 () C!7792)

(declare-fun contains!2691 (List!14138 C!7792) Bool)

(assert (=> b!1387327 (= res!625968 (not (contains!2691 lt!461484 lt!461487)))))

(declare-fun b!1387328 () Bool)

(declare-fun e!886223 () Bool)

(assert (=> b!1387328 (= e!886223 e!886241)))

(declare-fun res!625951 () Bool)

(assert (=> b!1387328 (=> res!625951 e!886241)))

(declare-fun lt!461490 () C!7792)

(assert (=> b!1387328 (= res!625951 (not (contains!2691 lt!461484 lt!461490)))))

(declare-datatypes ((IArray!9273 0))(
  ( (IArray!9274 (innerList!4694 List!14138)) )
))
(declare-datatypes ((Conc!4634 0))(
  ( (Node!4634 (left!12026 Conc!4634) (right!12356 Conc!4634) (csize!9498 Int) (cheight!4845 Int)) (Leaf!7049 (xs!7361 IArray!9273) (csize!9499 Int)) (Empty!4634) )
))
(declare-datatypes ((BalanceConc!9208 0))(
  ( (BalanceConc!9209 (c!228358 Conc!4634)) )
))
(declare-fun lt!461504 () BalanceConc!9208)

(declare-fun apply!3527 (BalanceConc!9208 Int) C!7792)

(assert (=> b!1387328 (= lt!461490 (apply!3527 lt!461504 0))))

(declare-fun b!1387329 () Bool)

(declare-fun res!625949 () Bool)

(declare-fun e!886228 () Bool)

(assert (=> b!1387329 (=> res!625949 e!886228)))

(declare-datatypes ((List!14139 0))(
  ( (Nil!14073) (Cons!14073 (h!19474 (_ BitVec 16)) (t!122306 List!14139)) )
))
(declare-datatypes ((TokenValue!2527 0))(
  ( (FloatLiteralValue!5054 (text!18134 List!14139)) (TokenValueExt!2526 (__x!8883 Int)) (Broken!12635 (value!79061 List!14139)) (Object!2592) (End!2527) (Def!2527) (Underscore!2527) (Match!2527) (Else!2527) (Error!2527) (Case!2527) (If!2527) (Extends!2527) (Abstract!2527) (Class!2527) (Val!2527) (DelimiterValue!5054 (del!2587 List!14139)) (KeywordValue!2533 (value!79062 List!14139)) (CommentValue!5054 (value!79063 List!14139)) (WhitespaceValue!5054 (value!79064 List!14139)) (IndentationValue!2527 (value!79065 List!14139)) (String!16870) (Int32!2527) (Broken!12636 (value!79066 List!14139)) (Boolean!2528) (Unit!20330) (OperatorValue!2530 (op!2587 List!14139)) (IdentifierValue!5054 (value!79067 List!14139)) (IdentifierValue!5055 (value!79068 List!14139)) (WhitespaceValue!5055 (value!79069 List!14139)) (True!5054) (False!5054) (Broken!12637 (value!79070 List!14139)) (Broken!12638 (value!79071 List!14139)) (True!5055) (RightBrace!2527) (RightBracket!2527) (Colon!2527) (Null!2527) (Comma!2527) (LeftBracket!2527) (False!5055) (LeftBrace!2527) (ImaginaryLiteralValue!2527 (text!18135 List!14139)) (StringLiteralValue!7581 (value!79072 List!14139)) (EOFValue!2527 (value!79073 List!14139)) (IdentValue!2527 (value!79074 List!14139)) (DelimiterValue!5055 (value!79075 List!14139)) (DedentValue!2527 (value!79076 List!14139)) (NewLineValue!2527 (value!79077 List!14139)) (IntegerValue!7581 (value!79078 (_ BitVec 32)) (text!18136 List!14139)) (IntegerValue!7582 (value!79079 Int) (text!18137 List!14139)) (Times!2527) (Or!2527) (Equal!2527) (Minus!2527) (Broken!12639 (value!79080 List!14139)) (And!2527) (Div!2527) (LessEqual!2527) (Mod!2527) (Concat!6278) (Not!2527) (Plus!2527) (SpaceValue!2527 (value!79081 List!14139)) (IntegerValue!7583 (value!79082 Int) (text!18138 List!14139)) (StringLiteralValue!7582 (text!18139 List!14139)) (FloatLiteralValue!5055 (text!18140 List!14139)) (BytesLiteralValue!2527 (value!79083 List!14139)) (CommentValue!5055 (value!79084 List!14139)) (StringLiteralValue!7583 (value!79085 List!14139)) (ErrorTokenValue!2527 (msg!2588 List!14139)) )
))
(declare-datatypes ((Regex!3751 0))(
  ( (ElementMatch!3751 (c!228359 C!7792)) (Concat!6279 (regOne!8014 Regex!3751) (regTwo!8014 Regex!3751)) (EmptyExpr!3751) (Star!3751 (reg!4080 Regex!3751)) (EmptyLang!3751) (Union!3751 (regOne!8015 Regex!3751) (regTwo!8015 Regex!3751)) )
))
(declare-datatypes ((String!16871 0))(
  ( (String!16872 (value!79086 String)) )
))
(declare-datatypes ((TokenValueInjection!4714 0))(
  ( (TokenValueInjection!4715 (toValue!3724 Int) (toChars!3583 Int)) )
))
(declare-datatypes ((Rule!4674 0))(
  ( (Rule!4675 (regex!2437 Regex!3751) (tag!2699 String!16871) (isSeparator!2437 Bool) (transformation!2437 TokenValueInjection!4714)) )
))
(declare-datatypes ((Token!4536 0))(
  ( (Token!4537 (value!79087 TokenValue!2527) (rule!4198 Rule!4674) (size!11559 Int) (originalCharacters!3299 List!14138)) )
))
(declare-datatypes ((List!14140 0))(
  ( (Nil!14074) (Cons!14074 (h!19475 Token!4536) (t!122307 List!14140)) )
))
(declare-datatypes ((IArray!9275 0))(
  ( (IArray!9276 (innerList!4695 List!14140)) )
))
(declare-datatypes ((Conc!4635 0))(
  ( (Node!4635 (left!12027 Conc!4635) (right!12357 Conc!4635) (csize!9500 Int) (cheight!4846 Int)) (Leaf!7050 (xs!7362 IArray!9275) (csize!9501 Int)) (Empty!4635) )
))
(declare-datatypes ((BalanceConc!9210 0))(
  ( (BalanceConc!9211 (c!228360 Conc!4635)) )
))
(declare-datatypes ((tuple2!13674 0))(
  ( (tuple2!13675 (_1!7723 BalanceConc!9210) (_2!7723 BalanceConc!9208)) )
))
(declare-fun lt!461497 () tuple2!13674)

(declare-fun isEmpty!8514 (BalanceConc!9208) Bool)

(assert (=> b!1387329 (= res!625949 (not (isEmpty!8514 (_2!7723 lt!461497))))))

(declare-fun b!1387330 () Bool)

(declare-fun e!886238 () Bool)

(declare-fun e!886236 () Bool)

(assert (=> b!1387330 (= e!886238 e!886236)))

(declare-fun res!625954 () Bool)

(assert (=> b!1387330 (=> res!625954 e!886236)))

(declare-fun lambda!59788 () Int)

(declare-fun lt!461499 () Regex!3751)

(declare-datatypes ((List!14141 0))(
  ( (Nil!14075) (Cons!14075 (h!19476 Rule!4674) (t!122308 List!14141)) )
))
(declare-fun rules!2550 () List!14141)

(declare-datatypes ((List!14142 0))(
  ( (Nil!14076) (Cons!14076 (h!19477 Regex!3751) (t!122309 List!14142)) )
))
(declare-fun contains!2692 (List!14142 Regex!3751) Bool)

(declare-fun map!3116 (List!14141 Int) List!14142)

(assert (=> b!1387330 (= res!625954 (not (contains!2692 (map!3116 rules!2550 lambda!59788) lt!461499)))))

(declare-fun lambda!59789 () Int)

(declare-fun getWitness!406 (List!14142 Int) Regex!3751)

(assert (=> b!1387330 (= lt!461499 (getWitness!406 (map!3116 rules!2550 lambda!59788) lambda!59789))))

(assert (=> b!1387331 (= e!886241 e!886238)))

(declare-fun res!625938 () Bool)

(assert (=> b!1387331 (=> res!625938 e!886238)))

(declare-fun exists!518 (List!14142 Int) Bool)

(assert (=> b!1387331 (= res!625938 (not (exists!518 (map!3116 rules!2550 lambda!59788) lambda!59789)))))

(declare-fun lt!461502 () List!14142)

(assert (=> b!1387331 (exists!518 lt!461502 lambda!59789)))

(declare-fun lt!461485 () Regex!3751)

(declare-datatypes ((Unit!20331 0))(
  ( (Unit!20332) )
))
(declare-fun lt!461498 () Unit!20331)

(declare-fun lt!461486 () List!14138)

(declare-fun matchRGenUnionSpec!162 (Regex!3751 List!14142 List!14138) Unit!20331)

(assert (=> b!1387331 (= lt!461498 (matchRGenUnionSpec!162 lt!461485 lt!461502 lt!461486))))

(assert (=> b!1387331 (= lt!461502 (map!3116 rules!2550 lambda!59788))))

(declare-fun b!1387332 () Bool)

(declare-fun res!625939 () Bool)

(assert (=> b!1387332 (=> res!625939 e!886228)))

(declare-fun lt!461483 () List!14138)

(declare-fun t1!34 () Token!4536)

(declare-datatypes ((LexerInterface!2132 0))(
  ( (LexerInterfaceExt!2129 (__x!8884 Int)) (Lexer!2130) )
))
(declare-fun thiss!19762 () LexerInterface!2132)

(declare-datatypes ((tuple2!13676 0))(
  ( (tuple2!13677 (_1!7724 Token!4536) (_2!7724 List!14138)) )
))
(declare-datatypes ((Option!2698 0))(
  ( (None!2697) (Some!2697 (v!21564 tuple2!13676)) )
))
(declare-fun maxPrefix!1106 (LexerInterface!2132 List!14141 List!14138) Option!2698)

(assert (=> b!1387332 (= res!625939 (not (= (maxPrefix!1106 thiss!19762 rules!2550 lt!461483) (Some!2697 (tuple2!13677 t1!34 Nil!14072)))))))

(declare-fun b!1387333 () Bool)

(declare-fun e!886226 () Bool)

(declare-fun e!886232 () Bool)

(assert (=> b!1387333 (= e!886226 e!886232)))

(declare-fun res!625950 () Bool)

(assert (=> b!1387333 (=> res!625950 e!886232)))

(declare-fun lt!461501 () List!14138)

(declare-fun t2!34 () Token!4536)

(assert (=> b!1387333 (= res!625950 (not (= (maxPrefix!1106 thiss!19762 rules!2550 lt!461501) (Some!2697 (tuple2!13677 t2!34 Nil!14072)))))))

(declare-fun lt!461488 () BalanceConc!9208)

(declare-fun list!5457 (BalanceConc!9208) List!14138)

(assert (=> b!1387333 (= lt!461501 (list!5457 lt!461488))))

(declare-fun e!886235 () Bool)

(assert (=> b!1387334 (= e!886235 (and tp!396705 tp!396709))))

(declare-fun b!1387335 () Bool)

(declare-fun res!625956 () Bool)

(assert (=> b!1387335 (=> res!625956 e!886241)))

(declare-fun matchR!1742 (Regex!3751 List!14138) Bool)

(assert (=> b!1387335 (= res!625956 (not (matchR!1742 lt!461485 lt!461486)))))

(declare-fun b!1387336 () Bool)

(declare-fun res!625947 () Bool)

(assert (=> b!1387336 (=> res!625947 e!886228)))

(declare-fun lt!461495 () BalanceConc!9208)

(declare-fun lt!461489 () List!14140)

(declare-datatypes ((tuple2!13678 0))(
  ( (tuple2!13679 (_1!7725 List!14140) (_2!7725 List!14138)) )
))
(declare-fun lexList!646 (LexerInterface!2132 List!14141 List!14138) tuple2!13678)

(assert (=> b!1387336 (= res!625947 (not (= (lexList!646 thiss!19762 rules!2550 (list!5457 lt!461495)) (tuple2!13679 lt!461489 Nil!14072))))))

(declare-fun b!1387337 () Bool)

(declare-fun e!886221 () Bool)

(assert (=> b!1387337 (= e!886221 true)))

(assert (=> b!1387337 false))

(declare-fun lt!461492 () Unit!20331)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!182 (Regex!3751 List!14138 C!7792) Unit!20331)

(declare-fun head!2529 (List!14138) C!7792)

(assert (=> b!1387337 (= lt!461492 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!182 (regex!2437 (rule!4198 t1!34)) lt!461483 (head!2529 lt!461483)))))

(declare-fun e!886234 () Bool)

(declare-fun tp!396710 () Bool)

(declare-fun b!1387338 () Bool)

(declare-fun inv!18412 (String!16871) Bool)

(declare-fun inv!18415 (TokenValueInjection!4714) Bool)

(assert (=> b!1387338 (= e!886234 (and tp!396710 (inv!18412 (tag!2699 (rule!4198 t1!34))) (inv!18415 (transformation!2437 (rule!4198 t1!34))) e!886235))))

(declare-fun e!886217 () Bool)

(assert (=> b!1387339 (= e!886217 (and tp!396708 tp!396706))))

(declare-fun b!1387340 () Bool)

(declare-fun res!625958 () Bool)

(declare-fun e!886227 () Bool)

(assert (=> b!1387340 (=> (not res!625958) (not e!886227))))

(declare-fun isEmpty!8515 (List!14141) Bool)

(assert (=> b!1387340 (= res!625958 (not (isEmpty!8515 rules!2550)))))

(declare-fun b!1387341 () Bool)

(declare-fun res!625965 () Bool)

(assert (=> b!1387341 (=> res!625965 e!886228)))

(declare-fun contains!2693 (List!14141 Rule!4674) Bool)

(assert (=> b!1387341 (= res!625965 (not (contains!2693 rules!2550 (rule!4198 t1!34))))))

(declare-fun b!1387342 () Bool)

(declare-fun e!886233 () Bool)

(declare-fun e!886240 () Bool)

(assert (=> b!1387342 (= e!886233 e!886240)))

(declare-fun res!625944 () Bool)

(assert (=> b!1387342 (=> (not res!625944) (not e!886240))))

(declare-fun prefixMatch!260 (Regex!3751 List!14138) Bool)

(assert (=> b!1387342 (= res!625944 (prefixMatch!260 lt!461485 lt!461484))))

(declare-fun rulesRegex!320 (LexerInterface!2132 List!14141) Regex!3751)

(assert (=> b!1387342 (= lt!461485 (rulesRegex!320 thiss!19762 rules!2550))))

(declare-fun ++!3654 (List!14138 List!14138) List!14138)

(assert (=> b!1387342 (= lt!461484 (++!3654 lt!461483 (Cons!14072 lt!461487 Nil!14072)))))

(assert (=> b!1387342 (= lt!461487 (apply!3527 lt!461488 0))))

(assert (=> b!1387342 (= lt!461483 (list!5457 lt!461504))))

(declare-fun charsOf!1409 (Token!4536) BalanceConc!9208)

(assert (=> b!1387342 (= lt!461504 (charsOf!1409 t1!34))))

(declare-fun b!1387343 () Bool)

(declare-fun res!625969 () Bool)

(assert (=> b!1387343 (=> (not res!625969) (not e!886227))))

(declare-fun rulesProduceIndividualToken!1101 (LexerInterface!2132 List!14141 Token!4536) Bool)

(assert (=> b!1387343 (= res!625969 (rulesProduceIndividualToken!1101 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1387344 () Bool)

(declare-fun res!625957 () Bool)

(assert (=> b!1387344 (=> res!625957 e!886221)))

(declare-fun usedCharacters!248 (Regex!3751) List!14138)

(assert (=> b!1387344 (= res!625957 (contains!2691 (usedCharacters!248 (regex!2437 (rule!4198 t1!34))) lt!461490))))

(declare-fun e!886237 () Bool)

(declare-fun e!886229 () Bool)

(declare-fun tp!396707 () Bool)

(declare-fun b!1387345 () Bool)

(assert (=> b!1387345 (= e!886237 (and tp!396707 (inv!18412 (tag!2699 (rule!4198 t2!34))) (inv!18415 (transformation!2437 (rule!4198 t2!34))) e!886229))))

(declare-fun b!1387346 () Bool)

(declare-fun res!625970 () Bool)

(assert (=> b!1387346 (=> (not res!625970) (not e!886227))))

(assert (=> b!1387346 (= res!625970 (not (= (isSeparator!2437 (rule!4198 t1!34)) (isSeparator!2437 (rule!4198 t2!34)))))))

(declare-fun e!886225 () Bool)

(assert (=> b!1387347 (= e!886236 e!886225)))

(declare-fun res!625942 () Bool)

(assert (=> b!1387347 (=> res!625942 e!886225)))

(declare-fun exists!519 (List!14141 Int) Bool)

(assert (=> b!1387347 (= res!625942 (not (exists!519 rules!2550 lambda!59790)))))

(assert (=> b!1387347 (exists!519 rules!2550 lambda!59790)))

(declare-fun lt!461491 () Unit!20331)

(declare-fun lemmaMapContains!148 (List!14141 Int Regex!3751) Unit!20331)

(assert (=> b!1387347 (= lt!461491 (lemmaMapContains!148 rules!2550 lambda!59788 lt!461499))))

(declare-fun res!625971 () Bool)

(assert (=> start!125990 (=> (not res!625971) (not e!886227))))

(get-info :version)

(assert (=> start!125990 (= res!625971 ((_ is Lexer!2130) thiss!19762))))

(assert (=> start!125990 e!886227))

(assert (=> start!125990 true))

(declare-fun e!886231 () Bool)

(assert (=> start!125990 e!886231))

(declare-fun e!886242 () Bool)

(declare-fun inv!18416 (Token!4536) Bool)

(assert (=> start!125990 (and (inv!18416 t1!34) e!886242)))

(declare-fun e!886220 () Bool)

(assert (=> start!125990 (and (inv!18416 t2!34) e!886220)))

(declare-fun b!1387348 () Bool)

(declare-fun res!625964 () Bool)

(assert (=> b!1387348 (=> res!625964 e!886232)))

(assert (=> b!1387348 (= res!625964 (not (contains!2693 rules!2550 (rule!4198 t2!34))))))

(declare-fun b!1387349 () Bool)

(declare-fun e!886218 () Bool)

(declare-fun tp!396711 () Bool)

(assert (=> b!1387349 (= e!886231 (and e!886218 tp!396711))))

(declare-fun b!1387350 () Bool)

(declare-fun res!625967 () Bool)

(assert (=> b!1387350 (=> res!625967 e!886226)))

(declare-fun lt!461505 () List!14140)

(declare-fun lt!461503 () BalanceConc!9208)

(assert (=> b!1387350 (= res!625967 (not (= (lexList!646 thiss!19762 rules!2550 (list!5457 lt!461503)) (tuple2!13679 lt!461505 Nil!14072))))))

(declare-fun b!1387351 () Bool)

(declare-fun e!886230 () Bool)

(assert (=> b!1387351 (= e!886230 e!886223)))

(declare-fun res!625966 () Bool)

(assert (=> b!1387351 (=> res!625966 e!886223)))

(declare-fun getSuffix!597 (List!14138 List!14138) List!14138)

(assert (=> b!1387351 (= res!625966 (not (= lt!461486 (++!3654 lt!461484 (getSuffix!597 lt!461486 lt!461484)))))))

(declare-fun lambda!59787 () Int)

(declare-fun pickWitness!204 (Int) List!14138)

(assert (=> b!1387351 (= lt!461486 (pickWitness!204 lambda!59787))))

(declare-fun b!1387352 () Bool)

(declare-fun res!625963 () Bool)

(assert (=> b!1387352 (=> res!625963 e!886226)))

(declare-fun lt!461496 () tuple2!13674)

(assert (=> b!1387352 (= res!625963 (not (isEmpty!8514 (_2!7723 lt!461496))))))

(declare-fun b!1387353 () Bool)

(declare-fun res!625960 () Bool)

(assert (=> b!1387353 (=> res!625960 e!886221)))

(assert (=> b!1387353 (= res!625960 (not (matchR!1742 (regex!2437 (rule!4198 t2!34)) lt!461501)))))

(declare-fun tp!396713 () Bool)

(declare-fun b!1387354 () Bool)

(declare-fun inv!21 (TokenValue!2527) Bool)

(assert (=> b!1387354 (= e!886220 (and (inv!21 (value!79087 t2!34)) e!886237 tp!396713))))

(declare-fun b!1387355 () Bool)

(declare-fun res!625943 () Bool)

(assert (=> b!1387355 (=> (not res!625943) (not e!886233))))

(declare-fun sepAndNonSepRulesDisjointChars!810 (List!14141 List!14141) Bool)

(assert (=> b!1387355 (= res!625943 (sepAndNonSepRulesDisjointChars!810 rules!2550 rules!2550))))

(declare-fun tp!396714 () Bool)

(declare-fun b!1387356 () Bool)

(assert (=> b!1387356 (= e!886218 (and tp!396714 (inv!18412 (tag!2699 (h!19476 rules!2550))) (inv!18415 (transformation!2437 (h!19476 rules!2550))) e!886217))))

(declare-fun tp!396716 () Bool)

(declare-fun b!1387357 () Bool)

(assert (=> b!1387357 (= e!886242 (and (inv!21 (value!79087 t1!34)) e!886234 tp!396716))))

(assert (=> b!1387358 (= e!886240 (not e!886230))))

(declare-fun res!625940 () Bool)

(assert (=> b!1387358 (=> res!625940 e!886230)))

(declare-fun Exists!901 (Int) Bool)

(assert (=> b!1387358 (= res!625940 (not (Exists!901 lambda!59787)))))

(assert (=> b!1387358 (Exists!901 lambda!59787)))

(declare-fun lt!461500 () Unit!20331)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!219 (Regex!3751 List!14138) Unit!20331)

(assert (=> b!1387358 (= lt!461500 (lemmaPrefixMatchThenExistsStringThatMatches!219 lt!461485 lt!461484))))

(declare-fun b!1387359 () Bool)

(declare-fun res!625962 () Bool)

(assert (=> b!1387359 (=> (not res!625962) (not e!886227))))

(declare-fun rulesInvariant!2002 (LexerInterface!2132 List!14141) Bool)

(assert (=> b!1387359 (= res!625962 (rulesInvariant!2002 thiss!19762 rules!2550))))

(declare-fun b!1387360 () Bool)

(assert (=> b!1387360 (= e!886228 e!886226)))

(declare-fun res!625945 () Bool)

(assert (=> b!1387360 (=> res!625945 e!886226)))

(declare-fun list!5458 (BalanceConc!9210) List!14140)

(assert (=> b!1387360 (= res!625945 (not (= (list!5458 (_1!7723 lt!461496)) lt!461505)))))

(assert (=> b!1387360 (= lt!461505 (Cons!14074 t2!34 Nil!14074))))

(declare-fun lex!957 (LexerInterface!2132 List!14141 BalanceConc!9208) tuple2!13674)

(assert (=> b!1387360 (= lt!461496 (lex!957 thiss!19762 rules!2550 lt!461503))))

(declare-fun print!896 (LexerInterface!2132 BalanceConc!9210) BalanceConc!9208)

(declare-fun singletonSeq!1082 (Token!4536) BalanceConc!9210)

(assert (=> b!1387360 (= lt!461503 (print!896 thiss!19762 (singletonSeq!1082 t2!34)))))

(declare-fun b!1387361 () Bool)

(declare-fun res!625955 () Bool)

(assert (=> b!1387361 (=> res!625955 e!886241)))

(assert (=> b!1387361 (= res!625955 (not (contains!2691 lt!461486 lt!461487)))))

(declare-fun b!1387362 () Bool)

(declare-fun res!625952 () Bool)

(assert (=> b!1387362 (=> (not res!625952) (not e!886233))))

(declare-fun separableTokensPredicate!415 (LexerInterface!2132 Token!4536 Token!4536 List!14141) Bool)

(assert (=> b!1387362 (= res!625952 (not (separableTokensPredicate!415 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1387363 () Bool)

(assert (=> b!1387363 (= e!886227 e!886233)))

(declare-fun res!625959 () Bool)

(assert (=> b!1387363 (=> (not res!625959) (not e!886233))))

(declare-fun size!11560 (BalanceConc!9208) Int)

(assert (=> b!1387363 (= res!625959 (> (size!11560 lt!461488) 0))))

(assert (=> b!1387363 (= lt!461488 (charsOf!1409 t2!34))))

(declare-fun b!1387364 () Bool)

(declare-fun res!625948 () Bool)

(assert (=> b!1387364 (=> res!625948 e!886232)))

(declare-fun lt!461506 () Rule!4674)

(assert (=> b!1387364 (= res!625948 (not (contains!2693 rules!2550 lt!461506)))))

(declare-fun b!1387365 () Bool)

(assert (=> b!1387365 (= e!886225 e!886228)))

(declare-fun res!625961 () Bool)

(assert (=> b!1387365 (=> res!625961 e!886228)))

(assert (=> b!1387365 (= res!625961 (not (= (list!5458 (_1!7723 lt!461497)) lt!461489)))))

(assert (=> b!1387365 (= lt!461489 (Cons!14074 t1!34 Nil!14074))))

(assert (=> b!1387365 (= lt!461497 (lex!957 thiss!19762 rules!2550 lt!461495))))

(assert (=> b!1387365 (= lt!461495 (print!896 thiss!19762 (singletonSeq!1082 t1!34)))))

(declare-fun getWitness!407 (List!14141 Int) Rule!4674)

(assert (=> b!1387365 (= lt!461506 (getWitness!407 rules!2550 lambda!59790))))

(assert (=> b!1387366 (= e!886229 (and tp!396715 tp!396712))))

(declare-fun b!1387367 () Bool)

(declare-fun res!625953 () Bool)

(assert (=> b!1387367 (=> (not res!625953) (not e!886227))))

(assert (=> b!1387367 (= res!625953 (rulesProduceIndividualToken!1101 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1387368 (= e!886232 e!886221)))

(declare-fun res!625946 () Bool)

(assert (=> b!1387368 (=> res!625946 e!886221)))

(assert (=> b!1387368 (= res!625946 (not (matchR!1742 (regex!2437 (rule!4198 t1!34)) lt!461483)))))

(declare-fun lt!461482 () Unit!20331)

(declare-fun forallContained!632 (List!14141 Int Rule!4674) Unit!20331)

(assert (=> b!1387368 (= lt!461482 (forallContained!632 rules!2550 lambda!59791 (rule!4198 t2!34)))))

(declare-fun lt!461494 () Unit!20331)

(assert (=> b!1387368 (= lt!461494 (forallContained!632 rules!2550 lambda!59791 (rule!4198 t1!34)))))

(declare-fun lt!461493 () Unit!20331)

(assert (=> b!1387368 (= lt!461493 (forallContained!632 rules!2550 lambda!59791 lt!461506))))

(declare-fun b!1387369 () Bool)

(declare-fun res!625941 () Bool)

(assert (=> b!1387369 (=> res!625941 e!886241)))

(assert (=> b!1387369 (= res!625941 (not (contains!2691 lt!461486 lt!461490)))))

(assert (= (and start!125990 res!625971) b!1387340))

(assert (= (and b!1387340 res!625958) b!1387359))

(assert (= (and b!1387359 res!625962) b!1387367))

(assert (= (and b!1387367 res!625953) b!1387343))

(assert (= (and b!1387343 res!625969) b!1387346))

(assert (= (and b!1387346 res!625970) b!1387363))

(assert (= (and b!1387363 res!625959) b!1387355))

(assert (= (and b!1387355 res!625943) b!1387362))

(assert (= (and b!1387362 res!625952) b!1387342))

(assert (= (and b!1387342 res!625944) b!1387358))

(assert (= (and b!1387358 (not res!625940)) b!1387351))

(assert (= (and b!1387351 (not res!625966)) b!1387328))

(assert (= (and b!1387328 (not res!625951)) b!1387369))

(assert (= (and b!1387369 (not res!625941)) b!1387327))

(assert (= (and b!1387327 (not res!625968)) b!1387361))

(assert (= (and b!1387361 (not res!625955)) b!1387335))

(assert (= (and b!1387335 (not res!625956)) b!1387331))

(assert (= (and b!1387331 (not res!625938)) b!1387330))

(assert (= (and b!1387330 (not res!625954)) b!1387347))

(assert (= (and b!1387347 (not res!625942)) b!1387365))

(assert (= (and b!1387365 (not res!625961)) b!1387329))

(assert (= (and b!1387329 (not res!625949)) b!1387336))

(assert (= (and b!1387336 (not res!625947)) b!1387332))

(assert (= (and b!1387332 (not res!625939)) b!1387341))

(assert (= (and b!1387341 (not res!625965)) b!1387360))

(assert (= (and b!1387360 (not res!625945)) b!1387352))

(assert (= (and b!1387352 (not res!625963)) b!1387350))

(assert (= (and b!1387350 (not res!625967)) b!1387333))

(assert (= (and b!1387333 (not res!625950)) b!1387348))

(assert (= (and b!1387348 (not res!625964)) b!1387364))

(assert (= (and b!1387364 (not res!625948)) b!1387368))

(assert (= (and b!1387368 (not res!625946)) b!1387353))

(assert (= (and b!1387353 (not res!625960)) b!1387344))

(assert (= (and b!1387344 (not res!625957)) b!1387337))

(assert (= b!1387356 b!1387339))

(assert (= b!1387349 b!1387356))

(assert (= (and start!125990 ((_ is Cons!14075) rules!2550)) b!1387349))

(assert (= b!1387338 b!1387334))

(assert (= b!1387357 b!1387338))

(assert (= start!125990 b!1387357))

(assert (= b!1387345 b!1387366))

(assert (= b!1387354 b!1387345))

(assert (= start!125990 b!1387354))

(declare-fun m!1561757 () Bool)

(assert (=> b!1387355 m!1561757))

(declare-fun m!1561759 () Bool)

(assert (=> b!1387350 m!1561759))

(assert (=> b!1387350 m!1561759))

(declare-fun m!1561761 () Bool)

(assert (=> b!1387350 m!1561761))

(declare-fun m!1561763 () Bool)

(assert (=> b!1387368 m!1561763))

(declare-fun m!1561765 () Bool)

(assert (=> b!1387368 m!1561765))

(declare-fun m!1561767 () Bool)

(assert (=> b!1387368 m!1561767))

(declare-fun m!1561769 () Bool)

(assert (=> b!1387368 m!1561769))

(declare-fun m!1561771 () Bool)

(assert (=> b!1387362 m!1561771))

(declare-fun m!1561773 () Bool)

(assert (=> b!1387360 m!1561773))

(declare-fun m!1561775 () Bool)

(assert (=> b!1387360 m!1561775))

(declare-fun m!1561777 () Bool)

(assert (=> b!1387360 m!1561777))

(assert (=> b!1387360 m!1561777))

(declare-fun m!1561779 () Bool)

(assert (=> b!1387360 m!1561779))

(declare-fun m!1561781 () Bool)

(assert (=> b!1387342 m!1561781))

(declare-fun m!1561783 () Bool)

(assert (=> b!1387342 m!1561783))

(declare-fun m!1561785 () Bool)

(assert (=> b!1387342 m!1561785))

(declare-fun m!1561787 () Bool)

(assert (=> b!1387342 m!1561787))

(declare-fun m!1561789 () Bool)

(assert (=> b!1387342 m!1561789))

(declare-fun m!1561791 () Bool)

(assert (=> b!1387342 m!1561791))

(declare-fun m!1561793 () Bool)

(assert (=> b!1387365 m!1561793))

(declare-fun m!1561795 () Bool)

(assert (=> b!1387365 m!1561795))

(declare-fun m!1561797 () Bool)

(assert (=> b!1387365 m!1561797))

(assert (=> b!1387365 m!1561795))

(declare-fun m!1561799 () Bool)

(assert (=> b!1387365 m!1561799))

(declare-fun m!1561801 () Bool)

(assert (=> b!1387365 m!1561801))

(declare-fun m!1561803 () Bool)

(assert (=> b!1387333 m!1561803))

(declare-fun m!1561805 () Bool)

(assert (=> b!1387333 m!1561805))

(declare-fun m!1561807 () Bool)

(assert (=> b!1387353 m!1561807))

(declare-fun m!1561809 () Bool)

(assert (=> b!1387367 m!1561809))

(declare-fun m!1561811 () Bool)

(assert (=> b!1387335 m!1561811))

(declare-fun m!1561813 () Bool)

(assert (=> b!1387340 m!1561813))

(declare-fun m!1561815 () Bool)

(assert (=> b!1387330 m!1561815))

(assert (=> b!1387330 m!1561815))

(declare-fun m!1561817 () Bool)

(assert (=> b!1387330 m!1561817))

(assert (=> b!1387330 m!1561815))

(assert (=> b!1387330 m!1561815))

(declare-fun m!1561819 () Bool)

(assert (=> b!1387330 m!1561819))

(declare-fun m!1561821 () Bool)

(assert (=> b!1387341 m!1561821))

(declare-fun m!1561823 () Bool)

(assert (=> b!1387332 m!1561823))

(declare-fun m!1561825 () Bool)

(assert (=> b!1387361 m!1561825))

(declare-fun m!1561827 () Bool)

(assert (=> b!1387351 m!1561827))

(assert (=> b!1387351 m!1561827))

(declare-fun m!1561829 () Bool)

(assert (=> b!1387351 m!1561829))

(declare-fun m!1561831 () Bool)

(assert (=> b!1387351 m!1561831))

(declare-fun m!1561833 () Bool)

(assert (=> b!1387369 m!1561833))

(declare-fun m!1561835 () Bool)

(assert (=> b!1387364 m!1561835))

(declare-fun m!1561837 () Bool)

(assert (=> b!1387352 m!1561837))

(declare-fun m!1561839 () Bool)

(assert (=> b!1387337 m!1561839))

(assert (=> b!1387337 m!1561839))

(declare-fun m!1561841 () Bool)

(assert (=> b!1387337 m!1561841))

(declare-fun m!1561843 () Bool)

(assert (=> b!1387348 m!1561843))

(declare-fun m!1561845 () Bool)

(assert (=> b!1387345 m!1561845))

(declare-fun m!1561847 () Bool)

(assert (=> b!1387345 m!1561847))

(declare-fun m!1561849 () Bool)

(assert (=> b!1387329 m!1561849))

(declare-fun m!1561851 () Bool)

(assert (=> b!1387338 m!1561851))

(declare-fun m!1561853 () Bool)

(assert (=> b!1387338 m!1561853))

(declare-fun m!1561855 () Bool)

(assert (=> b!1387343 m!1561855))

(declare-fun m!1561857 () Bool)

(assert (=> b!1387344 m!1561857))

(assert (=> b!1387344 m!1561857))

(declare-fun m!1561859 () Bool)

(assert (=> b!1387344 m!1561859))

(declare-fun m!1561861 () Bool)

(assert (=> b!1387363 m!1561861))

(declare-fun m!1561863 () Bool)

(assert (=> b!1387363 m!1561863))

(declare-fun m!1561865 () Bool)

(assert (=> b!1387359 m!1561865))

(declare-fun m!1561867 () Bool)

(assert (=> b!1387327 m!1561867))

(declare-fun m!1561869 () Bool)

(assert (=> b!1387356 m!1561869))

(declare-fun m!1561871 () Bool)

(assert (=> b!1387356 m!1561871))

(declare-fun m!1561873 () Bool)

(assert (=> b!1387357 m!1561873))

(declare-fun m!1561875 () Bool)

(assert (=> b!1387358 m!1561875))

(assert (=> b!1387358 m!1561875))

(declare-fun m!1561877 () Bool)

(assert (=> b!1387358 m!1561877))

(declare-fun m!1561879 () Bool)

(assert (=> b!1387328 m!1561879))

(declare-fun m!1561881 () Bool)

(assert (=> b!1387328 m!1561881))

(declare-fun m!1561883 () Bool)

(assert (=> b!1387354 m!1561883))

(assert (=> b!1387331 m!1561815))

(assert (=> b!1387331 m!1561815))

(declare-fun m!1561885 () Bool)

(assert (=> b!1387331 m!1561885))

(declare-fun m!1561887 () Bool)

(assert (=> b!1387331 m!1561887))

(assert (=> b!1387331 m!1561815))

(declare-fun m!1561889 () Bool)

(assert (=> b!1387331 m!1561889))

(declare-fun m!1561891 () Bool)

(assert (=> b!1387336 m!1561891))

(assert (=> b!1387336 m!1561891))

(declare-fun m!1561893 () Bool)

(assert (=> b!1387336 m!1561893))

(declare-fun m!1561895 () Bool)

(assert (=> b!1387347 m!1561895))

(assert (=> b!1387347 m!1561895))

(declare-fun m!1561897 () Bool)

(assert (=> b!1387347 m!1561897))

(declare-fun m!1561899 () Bool)

(assert (=> start!125990 m!1561899))

(declare-fun m!1561901 () Bool)

(assert (=> start!125990 m!1561901))

(check-sat (not b!1387354) (not b!1387347) (not b!1387335) (not b!1387343) (not b!1387349) (not b!1387330) (not b!1387350) (not b!1387362) (not b!1387351) (not b!1387363) (not b!1387336) (not b!1387331) (not b!1387327) b_and!92941 b_and!92949 (not b!1387352) (not b_next!34421) (not b_next!34413) (not b!1387341) (not b!1387367) (not b!1387328) (not b!1387340) (not b_next!34417) (not b!1387333) (not b!1387345) b_and!92945 (not b!1387353) (not b!1387356) (not b!1387369) (not b!1387360) (not b!1387359) (not b!1387358) (not b!1387355) (not b!1387337) (not b!1387342) (not b!1387348) (not b_next!34415) (not b!1387338) b_and!92943 b_and!92939 (not b_next!34419) (not b!1387361) (not b!1387332) (not b!1387365) (not b!1387329) (not b!1387344) (not b!1387368) (not b_next!34411) (not start!125990) b_and!92947 (not b!1387357) (not b!1387364))
(check-sat (not b_next!34417) b_and!92945 (not b_next!34415) (not b_next!34419) (not b_next!34411) b_and!92947 b_and!92941 b_and!92949 (not b_next!34421) (not b_next!34413) b_and!92943 b_and!92939)
