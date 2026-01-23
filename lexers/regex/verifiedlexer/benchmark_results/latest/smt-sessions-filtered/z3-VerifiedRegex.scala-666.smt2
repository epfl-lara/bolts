; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24734 () Bool)

(assert start!24734)

(declare-fun b!231446 () Bool)

(declare-fun b_free!8673 () Bool)

(declare-fun b_next!8673 () Bool)

(assert (=> b!231446 (= b_free!8673 (not b_next!8673))))

(declare-fun tp!94160 () Bool)

(declare-fun b_and!17145 () Bool)

(assert (=> b!231446 (= tp!94160 b_and!17145)))

(declare-fun b_free!8675 () Bool)

(declare-fun b_next!8675 () Bool)

(assert (=> b!231446 (= b_free!8675 (not b_next!8675))))

(declare-fun tp!94159 () Bool)

(declare-fun b_and!17147 () Bool)

(assert (=> b!231446 (= tp!94159 b_and!17147)))

(declare-fun b!231433 () Bool)

(declare-fun b_free!8677 () Bool)

(declare-fun b_next!8677 () Bool)

(assert (=> b!231433 (= b_free!8677 (not b_next!8677))))

(declare-fun tp!94157 () Bool)

(declare-fun b_and!17149 () Bool)

(assert (=> b!231433 (= tp!94157 b_and!17149)))

(declare-fun b_free!8679 () Bool)

(declare-fun b_next!8679 () Bool)

(assert (=> b!231433 (= b_free!8679 (not b_next!8679))))

(declare-fun tp!94162 () Bool)

(declare-fun b_and!17151 () Bool)

(assert (=> b!231433 (= tp!94162 b_and!17151)))

(declare-fun b!231469 () Bool)

(declare-fun b_free!8681 () Bool)

(declare-fun b_next!8681 () Bool)

(assert (=> b!231469 (= b_free!8681 (not b_next!8681))))

(declare-fun tp!94166 () Bool)

(declare-fun b_and!17153 () Bool)

(assert (=> b!231469 (= tp!94166 b_and!17153)))

(declare-fun b_free!8683 () Bool)

(declare-fun b_next!8683 () Bool)

(assert (=> b!231469 (= b_free!8683 (not b_next!8683))))

(declare-fun tp!94158 () Bool)

(declare-fun b_and!17155 () Bool)

(assert (=> b!231469 (= tp!94158 b_and!17155)))

(declare-fun bs!24528 () Bool)

(declare-fun b!231436 () Bool)

(declare-fun b!231421 () Bool)

(assert (= bs!24528 (and b!231436 b!231421)))

(declare-fun lambda!7408 () Int)

(declare-fun lambda!7407 () Int)

(assert (=> bs!24528 (not (= lambda!7408 lambda!7407))))

(declare-fun b!231480 () Bool)

(declare-fun e!143279 () Bool)

(assert (=> b!231480 (= e!143279 true)))

(declare-fun b!231479 () Bool)

(declare-fun e!143278 () Bool)

(assert (=> b!231479 (= e!143278 e!143279)))

(declare-fun b!231478 () Bool)

(declare-fun e!143277 () Bool)

(assert (=> b!231478 (= e!143277 e!143278)))

(assert (=> b!231436 e!143277))

(assert (= b!231479 b!231480))

(assert (= b!231478 b!231479))

(declare-datatypes ((List!3499 0))(
  ( (Nil!3489) (Cons!3489 (h!8886 (_ BitVec 16)) (t!33589 List!3499)) )
))
(declare-datatypes ((TokenValue!677 0))(
  ( (FloatLiteralValue!1354 (text!5184 List!3499)) (TokenValueExt!676 (__x!2841 Int)) (Broken!3385 (value!22957 List!3499)) (Object!686) (End!677) (Def!677) (Underscore!677) (Match!677) (Else!677) (Error!677) (Case!677) (If!677) (Extends!677) (Abstract!677) (Class!677) (Val!677) (DelimiterValue!1354 (del!737 List!3499)) (KeywordValue!683 (value!22958 List!3499)) (CommentValue!1354 (value!22959 List!3499)) (WhitespaceValue!1354 (value!22960 List!3499)) (IndentationValue!677 (value!22961 List!3499)) (String!4464) (Int32!677) (Broken!3386 (value!22962 List!3499)) (Boolean!678) (Unit!4045) (OperatorValue!680 (op!737 List!3499)) (IdentifierValue!1354 (value!22963 List!3499)) (IdentifierValue!1355 (value!22964 List!3499)) (WhitespaceValue!1355 (value!22965 List!3499)) (True!1354) (False!1354) (Broken!3387 (value!22966 List!3499)) (Broken!3388 (value!22967 List!3499)) (True!1355) (RightBrace!677) (RightBracket!677) (Colon!677) (Null!677) (Comma!677) (LeftBracket!677) (False!1355) (LeftBrace!677) (ImaginaryLiteralValue!677 (text!5185 List!3499)) (StringLiteralValue!2031 (value!22968 List!3499)) (EOFValue!677 (value!22969 List!3499)) (IdentValue!677 (value!22970 List!3499)) (DelimiterValue!1355 (value!22971 List!3499)) (DedentValue!677 (value!22972 List!3499)) (NewLineValue!677 (value!22973 List!3499)) (IntegerValue!2031 (value!22974 (_ BitVec 32)) (text!5186 List!3499)) (IntegerValue!2032 (value!22975 Int) (text!5187 List!3499)) (Times!677) (Or!677) (Equal!677) (Minus!677) (Broken!3389 (value!22976 List!3499)) (And!677) (Div!677) (LessEqual!677) (Mod!677) (Concat!1556) (Not!677) (Plus!677) (SpaceValue!677 (value!22977 List!3499)) (IntegerValue!2033 (value!22978 Int) (text!5188 List!3499)) (StringLiteralValue!2032 (text!5189 List!3499)) (FloatLiteralValue!1355 (text!5190 List!3499)) (BytesLiteralValue!677 (value!22979 List!3499)) (CommentValue!1355 (value!22980 List!3499)) (StringLiteralValue!2033 (value!22981 List!3499)) (ErrorTokenValue!677 (msg!738 List!3499)) )
))
(declare-datatypes ((C!2680 0))(
  ( (C!2681 (val!1226 Int)) )
))
(declare-datatypes ((List!3500 0))(
  ( (Nil!3490) (Cons!3490 (h!8887 C!2680) (t!33590 List!3500)) )
))
(declare-datatypes ((IArray!2265 0))(
  ( (IArray!2266 (innerList!1190 List!3500)) )
))
(declare-datatypes ((Conc!1132 0))(
  ( (Node!1132 (left!2826 Conc!1132) (right!3156 Conc!1132) (csize!2494 Int) (cheight!1343 Int)) (Leaf!1799 (xs!3727 IArray!2265) (csize!2495 Int)) (Empty!1132) )
))
(declare-datatypes ((BalanceConc!2272 0))(
  ( (BalanceConc!2273 (c!44213 Conc!1132)) )
))
(declare-datatypes ((String!4465 0))(
  ( (String!4466 (value!22982 String)) )
))
(declare-datatypes ((TokenValueInjection!1126 0))(
  ( (TokenValueInjection!1127 (toValue!1350 Int) (toChars!1209 Int)) )
))
(declare-datatypes ((Regex!879 0))(
  ( (ElementMatch!879 (c!44214 C!2680)) (Concat!1557 (regOne!2270 Regex!879) (regTwo!2270 Regex!879)) (EmptyExpr!879) (Star!879 (reg!1208 Regex!879)) (EmptyLang!879) (Union!879 (regOne!2271 Regex!879) (regTwo!2271 Regex!879)) )
))
(declare-datatypes ((Rule!1110 0))(
  ( (Rule!1111 (regex!655 Regex!879) (tag!857 String!4465) (isSeparator!655 Bool) (transformation!655 TokenValueInjection!1126)) )
))
(declare-datatypes ((List!3501 0))(
  ( (Nil!3491) (Cons!3491 (h!8888 Rule!1110) (t!33591 List!3501)) )
))
(declare-fun rules!1920 () List!3501)

(get-info :version)

(assert (= (and b!231436 ((_ is Cons!3491) rules!1920)) b!231478))

(declare-fun order!2453 () Int)

(declare-fun order!2455 () Int)

(declare-fun dynLambda!1639 (Int Int) Int)

(declare-fun dynLambda!1640 (Int Int) Int)

(assert (=> b!231480 (< (dynLambda!1639 order!2453 (toValue!1350 (transformation!655 (h!8888 rules!1920)))) (dynLambda!1640 order!2455 lambda!7408))))

(declare-fun order!2457 () Int)

(declare-fun dynLambda!1641 (Int Int) Int)

(assert (=> b!231480 (< (dynLambda!1641 order!2457 (toChars!1209 (transformation!655 (h!8888 rules!1920)))) (dynLambda!1640 order!2455 lambda!7408))))

(assert (=> b!231436 true))

(declare-fun b!231419 () Bool)

(declare-fun e!143251 () Bool)

(assert (=> b!231419 (= e!143251 false)))

(declare-fun b!231420 () Bool)

(declare-fun e!143241 () Bool)

(assert (=> b!231420 (= e!143241 true)))

(declare-fun lt!91043 () Int)

(declare-datatypes ((Token!1054 0))(
  ( (Token!1055 (value!22983 TokenValue!677) (rule!1214 Rule!1110) (size!2794 Int) (originalCharacters!698 List!3500)) )
))
(declare-datatypes ((List!3502 0))(
  ( (Nil!3492) (Cons!3492 (h!8889 Token!1054) (t!33592 List!3502)) )
))
(declare-datatypes ((IArray!2267 0))(
  ( (IArray!2268 (innerList!1191 List!3502)) )
))
(declare-datatypes ((Conc!1133 0))(
  ( (Node!1133 (left!2827 Conc!1133) (right!3157 Conc!1133) (csize!2496 Int) (cheight!1344 Int)) (Leaf!1800 (xs!3728 IArray!2267) (csize!2497 Int)) (Empty!1133) )
))
(declare-datatypes ((BalanceConc!2274 0))(
  ( (BalanceConc!2275 (c!44215 Conc!1133)) )
))
(declare-fun lt!91002 () BalanceConc!2274)

(declare-fun size!2795 (BalanceConc!2274) Int)

(assert (=> b!231420 (= lt!91043 (size!2795 lt!91002))))

(declare-fun res!106851 () Bool)

(declare-fun e!143267 () Bool)

(assert (=> b!231421 (=> (not res!106851) (not e!143267))))

(declare-fun tokens!465 () List!3502)

(declare-fun forall!789 (List!3502 Int) Bool)

(assert (=> b!231421 (= res!106851 (forall!789 tokens!465 lambda!7407))))

(declare-fun b!231422 () Bool)

(declare-datatypes ((Unit!4046 0))(
  ( (Unit!4047) )
))
(declare-fun e!143235 () Unit!4046)

(declare-fun Unit!4048 () Unit!4046)

(assert (=> b!231422 (= e!143235 Unit!4048)))

(declare-fun tp!94164 () Bool)

(declare-fun b!231423 () Bool)

(declare-fun e!143261 () Bool)

(declare-fun e!143270 () Bool)

(declare-fun inv!4338 (String!4465) Bool)

(declare-fun inv!4341 (TokenValueInjection!1126) Bool)

(assert (=> b!231423 (= e!143270 (and tp!94164 (inv!4338 (tag!857 (rule!1214 (h!8889 tokens!465)))) (inv!4341 (transformation!655 (rule!1214 (h!8889 tokens!465)))) e!143261))))

(declare-fun b!231424 () Bool)

(declare-fun e!143252 () Bool)

(declare-fun e!143256 () Bool)

(assert (=> b!231424 (= e!143252 e!143256)))

(declare-fun res!106866 () Bool)

(assert (=> b!231424 (=> (not res!106866) (not e!143256))))

(declare-datatypes ((tuple2!3792 0))(
  ( (tuple2!3793 (_1!2112 Token!1054) (_2!2112 List!3500)) )
))
(declare-datatypes ((Option!657 0))(
  ( (None!656) (Some!656 (v!14355 tuple2!3792)) )
))
(declare-fun lt!91036 () Option!657)

(declare-fun isDefined!508 (Option!657) Bool)

(assert (=> b!231424 (= res!106866 (isDefined!508 lt!91036))))

(declare-fun lt!91016 () List!3500)

(declare-datatypes ((LexerInterface!541 0))(
  ( (LexerInterfaceExt!538 (__x!2842 Int)) (Lexer!539) )
))
(declare-fun thiss!17480 () LexerInterface!541)

(declare-fun maxPrefix!271 (LexerInterface!541 List!3501 List!3500) Option!657)

(assert (=> b!231424 (= lt!91036 (maxPrefix!271 thiss!17480 rules!1920 lt!91016))))

(declare-fun e!143238 () Bool)

(declare-fun e!143263 () Bool)

(declare-fun separatorToken!170 () Token!1054)

(declare-fun b!231425 () Bool)

(declare-fun tp!94163 () Bool)

(declare-fun inv!21 (TokenValue!677) Bool)

(assert (=> b!231425 (= e!143263 (and (inv!21 (value!22983 separatorToken!170)) e!143238 tp!94163))))

(declare-fun b!231426 () Bool)

(declare-fun res!106847 () Bool)

(declare-fun e!143255 () Bool)

(assert (=> b!231426 (=> (not res!106847) (not e!143255))))

(declare-fun rulesInvariant!507 (LexerInterface!541 List!3501) Bool)

(assert (=> b!231426 (= res!106847 (rulesInvariant!507 thiss!17480 rules!1920))))

(declare-fun b!231427 () Bool)

(declare-fun e!143243 () Bool)

(assert (=> b!231427 (= e!143267 e!143243)))

(declare-fun res!106856 () Bool)

(assert (=> b!231427 (=> (not res!106856) (not e!143243))))

(declare-fun lt!91037 () List!3500)

(assert (=> b!231427 (= res!106856 (= lt!91016 lt!91037))))

(declare-fun list!1352 (BalanceConc!2272) List!3500)

(declare-fun printWithSeparatorTokenWhenNeededRec!224 (LexerInterface!541 List!3501 BalanceConc!2274 Token!1054 Int) BalanceConc!2272)

(assert (=> b!231427 (= lt!91037 (list!1352 (printWithSeparatorTokenWhenNeededRec!224 thiss!17480 rules!1920 lt!91002 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!234 (LexerInterface!541 List!3501 List!3502 Token!1054) List!3500)

(assert (=> b!231427 (= lt!91016 (printWithSeparatorTokenWhenNeededList!234 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!231428 () Bool)

(declare-fun res!106846 () Bool)

(declare-fun e!143242 () Bool)

(assert (=> b!231428 (=> res!106846 e!143242)))

(declare-fun lt!91013 () List!3500)

(declare-fun isEmpty!2038 (BalanceConc!2274) Bool)

(declare-datatypes ((tuple2!3794 0))(
  ( (tuple2!3795 (_1!2113 BalanceConc!2274) (_2!2113 BalanceConc!2272)) )
))
(declare-fun lex!341 (LexerInterface!541 List!3501 BalanceConc!2272) tuple2!3794)

(declare-fun seqFromList!687 (List!3500) BalanceConc!2272)

(assert (=> b!231428 (= res!106846 (isEmpty!2038 (_1!2113 (lex!341 thiss!17480 rules!1920 (seqFromList!687 lt!91013)))))))

(declare-fun b!231429 () Bool)

(declare-fun res!106855 () Bool)

(assert (=> b!231429 (=> res!106855 e!143242)))

(declare-fun rulesProduceIndividualToken!290 (LexerInterface!541 List!3501 Token!1054) Bool)

(assert (=> b!231429 (= res!106855 (not (rulesProduceIndividualToken!290 thiss!17480 rules!1920 (h!8889 tokens!465))))))

(declare-fun b!231430 () Bool)

(declare-fun e!143268 () Bool)

(declare-fun lt!91010 () tuple2!3794)

(declare-fun isEmpty!2039 (BalanceConc!2272) Bool)

(assert (=> b!231430 (= e!143268 (isEmpty!2039 (_2!2113 lt!91010)))))

(declare-fun b!231431 () Bool)

(declare-fun res!106850 () Bool)

(assert (=> b!231431 (=> res!106850 e!143241)))

(declare-fun lt!91001 () List!3500)

(declare-fun filter!49 (List!3502 Int) List!3502)

(declare-datatypes ((tuple2!3796 0))(
  ( (tuple2!3797 (_1!2114 List!3502) (_2!2114 List!3500)) )
))
(declare-fun lexList!169 (LexerInterface!541 List!3501 List!3500) tuple2!3796)

(assert (=> b!231431 (= res!106850 (not (= (filter!49 (_1!2114 (lexList!169 thiss!17480 rules!1920 lt!91001)) lambda!7407) (t!33592 tokens!465))))))

(declare-fun b!231432 () Bool)

(declare-fun e!143249 () Bool)

(assert (=> b!231432 (= e!143249 e!143242)))

(declare-fun res!106858 () Bool)

(assert (=> b!231432 (=> res!106858 e!143242)))

(declare-fun lt!91027 () List!3500)

(declare-fun lt!91034 () List!3500)

(assert (=> b!231432 (= res!106858 (or (not (= lt!91034 lt!91027)) (not (= lt!91027 lt!91013)) (not (= lt!91034 lt!91013))))))

(declare-fun printList!225 (LexerInterface!541 List!3502) List!3500)

(assert (=> b!231432 (= lt!91027 (printList!225 thiss!17480 (Cons!3492 (h!8889 tokens!465) Nil!3492)))))

(declare-fun lt!91011 () BalanceConc!2272)

(assert (=> b!231432 (= lt!91034 (list!1352 lt!91011))))

(declare-fun lt!91014 () BalanceConc!2274)

(declare-fun printTailRec!235 (LexerInterface!541 BalanceConc!2274 Int BalanceConc!2272) BalanceConc!2272)

(assert (=> b!231432 (= lt!91011 (printTailRec!235 thiss!17480 lt!91014 0 (BalanceConc!2273 Empty!1132)))))

(declare-fun print!272 (LexerInterface!541 BalanceConc!2274) BalanceConc!2272)

(assert (=> b!231432 (= lt!91011 (print!272 thiss!17480 lt!91014))))

(declare-fun singletonSeq!207 (Token!1054) BalanceConc!2274)

(assert (=> b!231432 (= lt!91014 (singletonSeq!207 (h!8889 tokens!465)))))

(declare-fun e!143257 () Bool)

(assert (=> b!231433 (= e!143257 (and tp!94157 tp!94162))))

(declare-fun b!231434 () Bool)

(declare-fun e!143265 () Bool)

(assert (=> b!231434 (= e!143265 e!143249)))

(declare-fun res!106842 () Bool)

(assert (=> b!231434 (=> res!106842 e!143249)))

(declare-fun e!143254 () Bool)

(assert (=> b!231434 (= res!106842 e!143254)))

(declare-fun res!106845 () Bool)

(assert (=> b!231434 (=> (not res!106845) (not e!143254))))

(declare-fun lt!91048 () Bool)

(assert (=> b!231434 (= res!106845 (not lt!91048))))

(declare-fun lt!91019 () List!3500)

(assert (=> b!231434 (= lt!91048 (= lt!91016 lt!91019))))

(declare-fun b!231435 () Bool)

(declare-fun e!143259 () Bool)

(declare-fun lt!91035 () Token!1054)

(declare-fun lt!91018 () Rule!1110)

(assert (=> b!231435 (= e!143259 (= (rule!1214 lt!91035) lt!91018))))

(declare-fun e!143247 () Bool)

(assert (=> b!231436 (= e!143242 e!143247)))

(declare-fun res!106849 () Bool)

(assert (=> b!231436 (=> res!106849 e!143247)))

(declare-datatypes ((tuple2!3798 0))(
  ( (tuple2!3799 (_1!2115 Token!1054) (_2!2115 BalanceConc!2272)) )
))
(declare-datatypes ((Option!658 0))(
  ( (None!657) (Some!657 (v!14356 tuple2!3798)) )
))
(declare-fun isDefined!509 (Option!658) Bool)

(declare-fun maxPrefixZipperSequence!234 (LexerInterface!541 List!3501 BalanceConc!2272) Option!658)

(assert (=> b!231436 (= res!106849 (not (isDefined!509 (maxPrefixZipperSequence!234 thiss!17480 rules!1920 (seqFromList!687 (originalCharacters!698 (h!8889 tokens!465)))))))))

(declare-fun lt!91017 () Unit!4046)

(declare-fun forallContained!222 (List!3502 Int Token!1054) Unit!4046)

(assert (=> b!231436 (= lt!91017 (forallContained!222 tokens!465 lambda!7408 (h!8889 tokens!465)))))

(assert (=> b!231436 (= lt!91013 (originalCharacters!698 (h!8889 tokens!465)))))

(declare-fun b!231437 () Bool)

(declare-fun get!1116 (Option!657) tuple2!3792)

(declare-fun head!805 (List!3502) Token!1054)

(assert (=> b!231437 (= e!143256 (= (_1!2112 (get!1116 lt!91036)) (head!805 tokens!465)))))

(declare-fun b!231438 () Bool)

(declare-fun e!143262 () Bool)

(declare-fun e!143248 () Bool)

(declare-fun tp!94161 () Bool)

(assert (=> b!231438 (= e!143262 (and e!143248 tp!94161))))

(declare-fun b!231439 () Bool)

(declare-fun res!106863 () Bool)

(declare-fun e!143250 () Bool)

(assert (=> b!231439 (=> (not res!106863) (not e!143250))))

(declare-fun lt!91005 () tuple2!3794)

(declare-fun apply!638 (BalanceConc!2274 Int) Token!1054)

(assert (=> b!231439 (= res!106863 (= (apply!638 (_1!2113 lt!91005) 0) separatorToken!170))))

(declare-fun tp!94167 () Bool)

(declare-fun e!143253 () Bool)

(declare-fun b!231440 () Bool)

(assert (=> b!231440 (= e!143238 (and tp!94167 (inv!4338 (tag!857 (rule!1214 separatorToken!170))) (inv!4341 (transformation!655 (rule!1214 separatorToken!170))) e!143253))))

(declare-fun b!231441 () Bool)

(declare-fun e!143234 () Bool)

(declare-fun matchR!217 (Regex!879 List!3500) Bool)

(assert (=> b!231441 (= e!143234 (matchR!217 (regex!655 (rule!1214 (h!8889 tokens!465))) lt!91013))))

(declare-fun b!231442 () Bool)

(declare-fun res!106870 () Bool)

(assert (=> b!231442 (=> (not res!106870) (not e!143267))))

(assert (=> b!231442 (= res!106870 (isSeparator!655 (rule!1214 separatorToken!170)))))

(declare-fun b!231443 () Bool)

(declare-fun e!143239 () Unit!4046)

(declare-fun Unit!4049 () Unit!4046)

(assert (=> b!231443 (= e!143239 Unit!4049)))

(declare-fun b!231444 () Bool)

(declare-fun res!106843 () Bool)

(assert (=> b!231444 (=> (not res!106843) (not e!143234))))

(declare-fun lt!91051 () tuple2!3792)

(declare-fun isEmpty!2040 (List!3500) Bool)

(assert (=> b!231444 (= res!106843 (isEmpty!2040 (_2!2112 lt!91051)))))

(declare-fun b!231445 () Bool)

(declare-fun e!143264 () Unit!4046)

(declare-fun Unit!4050 () Unit!4046)

(assert (=> b!231445 (= e!143264 Unit!4050)))

(assert (=> b!231446 (= e!143261 (and tp!94160 tp!94159))))

(declare-fun b!231447 () Bool)

(declare-fun res!106839 () Bool)

(assert (=> b!231447 (=> (not res!106839) (not e!143267))))

(assert (=> b!231447 (= res!106839 (rulesProduceIndividualToken!290 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!231448 () Bool)

(declare-fun res!106854 () Bool)

(assert (=> b!231448 (=> (not res!106854) (not e!143267))))

(declare-fun sepAndNonSepRulesDisjointChars!244 (List!3501 List!3501) Bool)

(assert (=> b!231448 (= res!106854 (sepAndNonSepRulesDisjointChars!244 rules!1920 rules!1920))))

(declare-fun b!231449 () Bool)

(declare-fun tp!94165 () Bool)

(assert (=> b!231449 (= e!143248 (and tp!94165 (inv!4338 (tag!857 (h!8888 rules!1920))) (inv!4341 (transformation!655 (h!8888 rules!1920))) e!143257))))

(declare-fun b!231450 () Bool)

(declare-fun e!143260 () Bool)

(assert (=> b!231450 (= e!143247 e!143260)))

(declare-fun res!106860 () Bool)

(assert (=> b!231450 (=> res!106860 e!143260)))

(assert (=> b!231450 (= res!106860 (not lt!91048))))

(assert (=> b!231450 e!143234))

(declare-fun res!106868 () Bool)

(assert (=> b!231450 (=> (not res!106868) (not e!143234))))

(assert (=> b!231450 (= res!106868 (= (_1!2112 lt!91051) (h!8889 tokens!465)))))

(declare-fun lt!91046 () Option!657)

(assert (=> b!231450 (= lt!91051 (get!1116 lt!91046))))

(assert (=> b!231450 (isDefined!508 lt!91046)))

(assert (=> b!231450 (= lt!91046 (maxPrefix!271 thiss!17480 rules!1920 lt!91013))))

(declare-fun b!231451 () Bool)

(assert (=> b!231451 (= e!143243 (not e!143265))))

(declare-fun res!106852 () Bool)

(assert (=> b!231451 (=> res!106852 e!143265)))

(declare-fun lt!91032 () BalanceConc!2272)

(assert (=> b!231451 (= res!106852 (not (= lt!91001 (list!1352 lt!91032))))))

(declare-fun seqFromList!688 (List!3502) BalanceConc!2274)

(assert (=> b!231451 (= lt!91032 (printWithSeparatorTokenWhenNeededRec!224 thiss!17480 rules!1920 (seqFromList!688 (t!33592 tokens!465)) separatorToken!170 0))))

(declare-fun lt!91028 () List!3500)

(assert (=> b!231451 (= lt!91028 lt!91019)))

(declare-fun lt!91020 () List!3500)

(declare-fun ++!878 (List!3500 List!3500) List!3500)

(assert (=> b!231451 (= lt!91019 (++!878 lt!91013 lt!91020))))

(declare-fun lt!91023 () List!3500)

(assert (=> b!231451 (= lt!91028 (++!878 (++!878 lt!91013 lt!91023) lt!91001))))

(declare-fun lt!91006 () Unit!4046)

(declare-fun lemmaConcatAssociativity!356 (List!3500 List!3500 List!3500) Unit!4046)

(assert (=> b!231451 (= lt!91006 (lemmaConcatAssociativity!356 lt!91013 lt!91023 lt!91001))))

(declare-fun charsOf!310 (Token!1054) BalanceConc!2272)

(assert (=> b!231451 (= lt!91013 (list!1352 (charsOf!310 (h!8889 tokens!465))))))

(assert (=> b!231451 (= lt!91020 (++!878 lt!91023 lt!91001))))

(assert (=> b!231451 (= lt!91001 (printWithSeparatorTokenWhenNeededList!234 thiss!17480 rules!1920 (t!33592 tokens!465) separatorToken!170))))

(assert (=> b!231451 (= lt!91023 (list!1352 (charsOf!310 separatorToken!170)))))

(declare-fun b!231452 () Bool)

(declare-fun e!143233 () Bool)

(assert (=> b!231452 (= e!143233 e!143259)))

(declare-fun res!106844 () Bool)

(assert (=> b!231452 (=> (not res!106844) (not e!143259))))

(declare-fun lt!91045 () List!3500)

(assert (=> b!231452 (= res!106844 (matchR!217 (regex!655 lt!91018) lt!91045))))

(declare-datatypes ((Option!659 0))(
  ( (None!658) (Some!658 (v!14357 Rule!1110)) )
))
(declare-fun lt!91022 () Option!659)

(declare-fun get!1117 (Option!659) Rule!1110)

(assert (=> b!231452 (= lt!91018 (get!1117 lt!91022))))

(declare-fun b!231453 () Bool)

(assert (=> b!231453 (= e!143254 (not (= lt!91016 (++!878 lt!91013 lt!91001))))))

(declare-fun b!231454 () Bool)

(declare-fun Unit!4051 () Unit!4046)

(assert (=> b!231454 (= e!143239 Unit!4051)))

(declare-fun lt!91009 () C!2680)

(declare-fun lt!91012 () Unit!4046)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!54 (Regex!879 List!3500 C!2680) Unit!4046)

(assert (=> b!231454 (= lt!91012 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!54 (regex!655 (rule!1214 lt!91035)) lt!91045 lt!91009))))

(declare-fun res!106862 () Bool)

(assert (=> b!231454 (= res!106862 (not (matchR!217 (regex!655 (rule!1214 lt!91035)) lt!91045)))))

(assert (=> b!231454 (=> (not res!106862) (not e!143251))))

(assert (=> b!231454 e!143251))

(declare-fun b!231455 () Bool)

(assert (=> b!231455 (= e!143260 e!143241)))

(declare-fun res!106864 () Bool)

(assert (=> b!231455 (=> res!106864 e!143241)))

(declare-fun lt!91007 () List!3502)

(assert (=> b!231455 (= res!106864 (not (= (filter!49 lt!91007 lambda!7407) (t!33592 tokens!465))))))

(assert (=> b!231455 (= (filter!49 lt!91007 lambda!7407) (t!33592 tokens!465))))

(declare-fun list!1353 (BalanceConc!2274) List!3502)

(assert (=> b!231455 (= lt!91007 (list!1353 (_1!2113 (lex!341 thiss!17480 rules!1920 lt!91032))))))

(declare-fun lt!91021 () Unit!4046)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!40 (LexerInterface!541 List!3501 List!3502 Token!1054) Unit!4046)

(assert (=> b!231455 (= lt!91021 (theoremInvertabilityFromTokensSepTokenWhenNeeded!40 thiss!17480 rules!1920 (t!33592 tokens!465) separatorToken!170))))

(declare-fun lt!91029 () Option!657)

(assert (=> b!231455 (= lt!91029 (Some!656 (tuple2!3793 separatorToken!170 lt!91001)))))

(declare-fun lt!91050 () Unit!4046)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!46 (LexerInterface!541 List!3501 Token!1054 Rule!1110 List!3500 Rule!1110) Unit!4046)

(assert (=> b!231455 (= lt!91050 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!46 thiss!17480 rules!1920 separatorToken!170 (rule!1214 separatorToken!170) lt!91001 (rule!1214 lt!91035)))))

(declare-fun lt!91052 () Unit!4046)

(assert (=> b!231455 (= lt!91052 e!143235)))

(declare-fun c!44210 () Bool)

(declare-fun lt!91030 () C!2680)

(declare-fun contains!634 (List!3500 C!2680) Bool)

(declare-fun usedCharacters!60 (Regex!879) List!3500)

(assert (=> b!231455 (= c!44210 (contains!634 (usedCharacters!60 (regex!655 (rule!1214 separatorToken!170))) lt!91030))))

(declare-fun head!806 (List!3500) C!2680)

(assert (=> b!231455 (= lt!91030 (head!806 lt!91001))))

(declare-fun lt!91042 () Unit!4046)

(assert (=> b!231455 (= lt!91042 e!143239)))

(declare-fun c!44211 () Bool)

(assert (=> b!231455 (= c!44211 (not (contains!634 (usedCharacters!60 (regex!655 (rule!1214 lt!91035))) lt!91009)))))

(assert (=> b!231455 (= lt!91009 (head!806 lt!91045))))

(assert (=> b!231455 e!143233))

(declare-fun res!106871 () Bool)

(assert (=> b!231455 (=> (not res!106871) (not e!143233))))

(declare-fun isDefined!510 (Option!659) Bool)

(assert (=> b!231455 (= res!106871 (isDefined!510 lt!91022))))

(declare-fun getRuleFromTag!96 (LexerInterface!541 List!3501 String!4465) Option!659)

(assert (=> b!231455 (= lt!91022 (getRuleFromTag!96 thiss!17480 rules!1920 (tag!857 (rule!1214 lt!91035))))))

(declare-fun lt!91039 () Unit!4046)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!96 (LexerInterface!541 List!3501 List!3500 Token!1054) Unit!4046)

(assert (=> b!231455 (= lt!91039 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!96 thiss!17480 rules!1920 lt!91045 lt!91035))))

(assert (=> b!231455 (= lt!91045 (list!1352 (charsOf!310 lt!91035)))))

(declare-fun lt!91025 () Unit!4046)

(assert (=> b!231455 (= lt!91025 (forallContained!222 tokens!465 lambda!7408 lt!91035))))

(assert (=> b!231455 e!143268))

(declare-fun res!106869 () Bool)

(assert (=> b!231455 (=> (not res!106869) (not e!143268))))

(assert (=> b!231455 (= res!106869 (= (size!2795 (_1!2113 lt!91010)) 1))))

(declare-fun lt!91040 () BalanceConc!2272)

(assert (=> b!231455 (= lt!91010 (lex!341 thiss!17480 rules!1920 lt!91040))))

(declare-fun lt!91041 () BalanceConc!2274)

(assert (=> b!231455 (= lt!91040 (printTailRec!235 thiss!17480 lt!91041 0 (BalanceConc!2273 Empty!1132)))))

(assert (=> b!231455 (= lt!91040 (print!272 thiss!17480 lt!91041))))

(assert (=> b!231455 (= lt!91041 (singletonSeq!207 lt!91035))))

(declare-fun e!143244 () Bool)

(assert (=> b!231455 e!143244))

(declare-fun res!106861 () Bool)

(assert (=> b!231455 (=> (not res!106861) (not e!143244))))

(declare-fun lt!91008 () Option!659)

(assert (=> b!231455 (= res!106861 (isDefined!510 lt!91008))))

(assert (=> b!231455 (= lt!91008 (getRuleFromTag!96 thiss!17480 rules!1920 (tag!857 (rule!1214 separatorToken!170))))))

(declare-fun lt!91031 () Unit!4046)

(assert (=> b!231455 (= lt!91031 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!96 thiss!17480 rules!1920 lt!91023 separatorToken!170))))

(assert (=> b!231455 e!143250))

(declare-fun res!106848 () Bool)

(assert (=> b!231455 (=> (not res!106848) (not e!143250))))

(assert (=> b!231455 (= res!106848 (= (size!2795 (_1!2113 lt!91005)) 1))))

(declare-fun lt!91015 () BalanceConc!2272)

(assert (=> b!231455 (= lt!91005 (lex!341 thiss!17480 rules!1920 lt!91015))))

(declare-fun lt!91047 () BalanceConc!2274)

(assert (=> b!231455 (= lt!91015 (printTailRec!235 thiss!17480 lt!91047 0 (BalanceConc!2273 Empty!1132)))))

(assert (=> b!231455 (= lt!91015 (print!272 thiss!17480 lt!91047))))

(assert (=> b!231455 (= lt!91047 (singletonSeq!207 separatorToken!170))))

(assert (=> b!231455 (rulesProduceIndividualToken!290 thiss!17480 rules!1920 lt!91035)))

(declare-fun lt!91024 () Unit!4046)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!108 (LexerInterface!541 List!3501 List!3502 Token!1054) Unit!4046)

(assert (=> b!231455 (= lt!91024 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!108 thiss!17480 rules!1920 tokens!465 lt!91035))))

(assert (=> b!231455 (= lt!91035 (head!805 (t!33592 tokens!465)))))

(declare-fun lt!91033 () Unit!4046)

(assert (=> b!231455 (= lt!91033 e!143264)))

(declare-fun c!44212 () Bool)

(declare-fun isEmpty!2041 (List!3502) Bool)

(assert (=> b!231455 (= c!44212 (isEmpty!2041 (t!33592 tokens!465)))))

(assert (=> b!231455 (= lt!91029 (maxPrefix!271 thiss!17480 rules!1920 lt!91020))))

(declare-fun lt!91044 () tuple2!3792)

(assert (=> b!231455 (= lt!91020 (_2!2112 lt!91044))))

(declare-fun lt!91003 () Unit!4046)

(declare-fun lemmaSamePrefixThenSameSuffix!176 (List!3500 List!3500 List!3500 List!3500 List!3500) Unit!4046)

(assert (=> b!231455 (= lt!91003 (lemmaSamePrefixThenSameSuffix!176 lt!91013 lt!91020 lt!91013 (_2!2112 lt!91044) lt!91016))))

(assert (=> b!231455 (= lt!91044 (get!1116 (maxPrefix!271 thiss!17480 rules!1920 lt!91016)))))

(declare-fun isPrefix!351 (List!3500 List!3500) Bool)

(assert (=> b!231455 (isPrefix!351 lt!91013 lt!91019)))

(declare-fun lt!91038 () Unit!4046)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!246 (List!3500 List!3500) Unit!4046)

(assert (=> b!231455 (= lt!91038 (lemmaConcatTwoListThenFirstIsPrefix!246 lt!91013 lt!91020))))

(assert (=> b!231455 e!143252))

(declare-fun res!106840 () Bool)

(assert (=> b!231455 (=> res!106840 e!143252)))

(assert (=> b!231455 (= res!106840 (isEmpty!2041 tokens!465))))

(declare-fun lt!91049 () Unit!4046)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!116 (LexerInterface!541 List!3501 List!3502 Token!1054) Unit!4046)

(assert (=> b!231455 (= lt!91049 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!116 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!231456 () Bool)

(declare-fun e!143266 () Bool)

(declare-fun tp!94155 () Bool)

(assert (=> b!231456 (= e!143266 (and (inv!21 (value!22983 (h!8889 tokens!465))) e!143270 tp!94155))))

(declare-fun b!231457 () Bool)

(declare-fun e!143240 () Bool)

(declare-fun lt!91004 () Rule!1110)

(assert (=> b!231457 (= e!143240 (= (rule!1214 separatorToken!170) lt!91004))))

(declare-fun b!231458 () Bool)

(declare-fun Unit!4052 () Unit!4046)

(assert (=> b!231458 (= e!143235 Unit!4052)))

(declare-fun lt!91026 () Unit!4046)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!48 (LexerInterface!541 List!3501 List!3501 Rule!1110 Rule!1110 C!2680) Unit!4046)

(assert (=> b!231458 (= lt!91026 (lemmaSepRuleNotContainsCharContainedInANonSepRule!48 thiss!17480 rules!1920 rules!1920 (rule!1214 lt!91035) (rule!1214 separatorToken!170) lt!91030))))

(assert (=> b!231458 false))

(declare-fun b!231459 () Bool)

(declare-fun res!106853 () Bool)

(assert (=> b!231459 (=> (not res!106853) (not e!143268))))

(assert (=> b!231459 (= res!106853 (= (apply!638 (_1!2113 lt!91010) 0) lt!91035))))

(declare-fun tp!94156 () Bool)

(declare-fun e!143246 () Bool)

(declare-fun b!231460 () Bool)

(declare-fun inv!4342 (Token!1054) Bool)

(assert (=> b!231460 (= e!143246 (and (inv!4342 (h!8889 tokens!465)) e!143266 tp!94156))))

(declare-fun b!231461 () Bool)

(assert (=> b!231461 (= e!143250 (isEmpty!2039 (_2!2113 lt!91005)))))

(declare-fun b!231462 () Bool)

(declare-fun res!106857 () Bool)

(assert (=> b!231462 (=> (not res!106857) (not e!143255))))

(declare-fun isEmpty!2042 (List!3501) Bool)

(assert (=> b!231462 (= res!106857 (not (isEmpty!2042 rules!1920)))))

(declare-fun b!231463 () Bool)

(assert (=> b!231463 (= e!143255 e!143267)))

(declare-fun res!106873 () Bool)

(assert (=> b!231463 (=> (not res!106873) (not e!143267))))

(declare-fun rulesProduceEachTokenIndividually!333 (LexerInterface!541 List!3501 BalanceConc!2274) Bool)

(assert (=> b!231463 (= res!106873 (rulesProduceEachTokenIndividually!333 thiss!17480 rules!1920 lt!91002))))

(assert (=> b!231463 (= lt!91002 (seqFromList!688 tokens!465))))

(declare-fun b!231464 () Bool)

(declare-fun res!106865 () Bool)

(assert (=> b!231464 (=> res!106865 e!143241)))

(assert (=> b!231464 (= res!106865 (not (= (filter!49 (_1!2114 (lexList!169 thiss!17480 rules!1920 lt!91016)) lambda!7407) tokens!465)))))

(declare-fun b!231465 () Bool)

(declare-fun res!106872 () Bool)

(assert (=> b!231465 (=> (not res!106872) (not e!143243))))

(assert (=> b!231465 (= res!106872 (= (list!1352 (seqFromList!687 lt!91016)) lt!91037))))

(declare-fun b!231467 () Bool)

(declare-fun Unit!4053 () Unit!4046)

(assert (=> b!231467 (= e!143264 Unit!4053)))

(assert (=> b!231467 false))

(declare-fun res!106867 () Bool)

(assert (=> start!24734 (=> (not res!106867) (not e!143255))))

(assert (=> start!24734 (= res!106867 ((_ is Lexer!539) thiss!17480))))

(assert (=> start!24734 e!143255))

(assert (=> start!24734 true))

(assert (=> start!24734 e!143262))

(assert (=> start!24734 (and (inv!4342 separatorToken!170) e!143263)))

(assert (=> start!24734 e!143246))

(declare-fun b!231466 () Bool)

(assert (=> b!231466 (= e!143244 e!143240)))

(declare-fun res!106841 () Bool)

(assert (=> b!231466 (=> (not res!106841) (not e!143240))))

(assert (=> b!231466 (= res!106841 (matchR!217 (regex!655 lt!91004) lt!91023))))

(assert (=> b!231466 (= lt!91004 (get!1117 lt!91008))))

(declare-fun b!231468 () Bool)

(declare-fun res!106859 () Bool)

(assert (=> b!231468 (=> (not res!106859) (not e!143267))))

(assert (=> b!231468 (= res!106859 ((_ is Cons!3492) tokens!465))))

(assert (=> b!231469 (= e!143253 (and tp!94166 tp!94158))))

(assert (= (and start!24734 res!106867) b!231462))

(assert (= (and b!231462 res!106857) b!231426))

(assert (= (and b!231426 res!106847) b!231463))

(assert (= (and b!231463 res!106873) b!231447))

(assert (= (and b!231447 res!106839) b!231442))

(assert (= (and b!231442 res!106870) b!231421))

(assert (= (and b!231421 res!106851) b!231448))

(assert (= (and b!231448 res!106854) b!231468))

(assert (= (and b!231468 res!106859) b!231427))

(assert (= (and b!231427 res!106856) b!231465))

(assert (= (and b!231465 res!106872) b!231451))

(assert (= (and b!231451 (not res!106852)) b!231434))

(assert (= (and b!231434 res!106845) b!231453))

(assert (= (and b!231434 (not res!106842)) b!231432))

(assert (= (and b!231432 (not res!106858)) b!231429))

(assert (= (and b!231429 (not res!106855)) b!231428))

(assert (= (and b!231428 (not res!106846)) b!231436))

(assert (= (and b!231436 (not res!106849)) b!231450))

(assert (= (and b!231450 res!106868) b!231444))

(assert (= (and b!231444 res!106843) b!231441))

(assert (= (and b!231450 (not res!106860)) b!231455))

(assert (= (and b!231455 (not res!106840)) b!231424))

(assert (= (and b!231424 res!106866) b!231437))

(assert (= (and b!231455 c!44212) b!231467))

(assert (= (and b!231455 (not c!44212)) b!231445))

(assert (= (and b!231455 res!106848) b!231439))

(assert (= (and b!231439 res!106863) b!231461))

(assert (= (and b!231455 res!106861) b!231466))

(assert (= (and b!231466 res!106841) b!231457))

(assert (= (and b!231455 res!106869) b!231459))

(assert (= (and b!231459 res!106853) b!231430))

(assert (= (and b!231455 res!106871) b!231452))

(assert (= (and b!231452 res!106844) b!231435))

(assert (= (and b!231455 c!44211) b!231454))

(assert (= (and b!231455 (not c!44211)) b!231443))

(assert (= (and b!231454 res!106862) b!231419))

(assert (= (and b!231455 c!44210) b!231458))

(assert (= (and b!231455 (not c!44210)) b!231422))

(assert (= (and b!231455 (not res!106864)) b!231431))

(assert (= (and b!231431 (not res!106850)) b!231464))

(assert (= (and b!231464 (not res!106865)) b!231420))

(assert (= b!231449 b!231433))

(assert (= b!231438 b!231449))

(assert (= (and start!24734 ((_ is Cons!3491) rules!1920)) b!231438))

(assert (= b!231440 b!231469))

(assert (= b!231425 b!231440))

(assert (= start!24734 b!231425))

(assert (= b!231423 b!231446))

(assert (= b!231456 b!231423))

(assert (= b!231460 b!231456))

(assert (= (and start!24734 ((_ is Cons!3492) tokens!465)) b!231460))

(declare-fun m!273701 () Bool)

(assert (=> b!231440 m!273701))

(declare-fun m!273703 () Bool)

(assert (=> b!231440 m!273703))

(declare-fun m!273705 () Bool)

(assert (=> b!231460 m!273705))

(declare-fun m!273707 () Bool)

(assert (=> b!231432 m!273707))

(declare-fun m!273709 () Bool)

(assert (=> b!231432 m!273709))

(declare-fun m!273711 () Bool)

(assert (=> b!231432 m!273711))

(declare-fun m!273713 () Bool)

(assert (=> b!231432 m!273713))

(declare-fun m!273715 () Bool)

(assert (=> b!231432 m!273715))

(declare-fun m!273717 () Bool)

(assert (=> b!231431 m!273717))

(declare-fun m!273719 () Bool)

(assert (=> b!231431 m!273719))

(declare-fun m!273721 () Bool)

(assert (=> b!231455 m!273721))

(declare-fun m!273723 () Bool)

(assert (=> b!231455 m!273723))

(declare-fun m!273725 () Bool)

(assert (=> b!231455 m!273725))

(declare-fun m!273727 () Bool)

(assert (=> b!231455 m!273727))

(declare-fun m!273729 () Bool)

(assert (=> b!231455 m!273729))

(declare-fun m!273731 () Bool)

(assert (=> b!231455 m!273731))

(declare-fun m!273733 () Bool)

(assert (=> b!231455 m!273733))

(declare-fun m!273735 () Bool)

(assert (=> b!231455 m!273735))

(declare-fun m!273737 () Bool)

(assert (=> b!231455 m!273737))

(declare-fun m!273739 () Bool)

(assert (=> b!231455 m!273739))

(declare-fun m!273741 () Bool)

(assert (=> b!231455 m!273741))

(declare-fun m!273743 () Bool)

(assert (=> b!231455 m!273743))

(declare-fun m!273745 () Bool)

(assert (=> b!231455 m!273745))

(declare-fun m!273747 () Bool)

(assert (=> b!231455 m!273747))

(assert (=> b!231455 m!273733))

(declare-fun m!273749 () Bool)

(assert (=> b!231455 m!273749))

(declare-fun m!273751 () Bool)

(assert (=> b!231455 m!273751))

(declare-fun m!273753 () Bool)

(assert (=> b!231455 m!273753))

(declare-fun m!273755 () Bool)

(assert (=> b!231455 m!273755))

(declare-fun m!273757 () Bool)

(assert (=> b!231455 m!273757))

(declare-fun m!273759 () Bool)

(assert (=> b!231455 m!273759))

(declare-fun m!273761 () Bool)

(assert (=> b!231455 m!273761))

(declare-fun m!273763 () Bool)

(assert (=> b!231455 m!273763))

(assert (=> b!231455 m!273745))

(declare-fun m!273765 () Bool)

(assert (=> b!231455 m!273765))

(declare-fun m!273767 () Bool)

(assert (=> b!231455 m!273767))

(declare-fun m!273769 () Bool)

(assert (=> b!231455 m!273769))

(declare-fun m!273771 () Bool)

(assert (=> b!231455 m!273771))

(declare-fun m!273773 () Bool)

(assert (=> b!231455 m!273773))

(declare-fun m!273775 () Bool)

(assert (=> b!231455 m!273775))

(declare-fun m!273777 () Bool)

(assert (=> b!231455 m!273777))

(declare-fun m!273779 () Bool)

(assert (=> b!231455 m!273779))

(declare-fun m!273781 () Bool)

(assert (=> b!231455 m!273781))

(declare-fun m!273783 () Bool)

(assert (=> b!231455 m!273783))

(declare-fun m!273785 () Bool)

(assert (=> b!231455 m!273785))

(declare-fun m!273787 () Bool)

(assert (=> b!231455 m!273787))

(declare-fun m!273789 () Bool)

(assert (=> b!231455 m!273789))

(declare-fun m!273791 () Bool)

(assert (=> b!231455 m!273791))

(declare-fun m!273793 () Bool)

(assert (=> b!231455 m!273793))

(declare-fun m!273795 () Bool)

(assert (=> b!231455 m!273795))

(declare-fun m!273797 () Bool)

(assert (=> b!231455 m!273797))

(assert (=> b!231455 m!273781))

(declare-fun m!273799 () Bool)

(assert (=> b!231455 m!273799))

(declare-fun m!273801 () Bool)

(assert (=> b!231455 m!273801))

(assert (=> b!231455 m!273791))

(assert (=> b!231455 m!273777))

(declare-fun m!273803 () Bool)

(assert (=> b!231455 m!273803))

(declare-fun m!273805 () Bool)

(assert (=> b!231456 m!273805))

(declare-fun m!273807 () Bool)

(assert (=> b!231441 m!273807))

(declare-fun m!273809 () Bool)

(assert (=> b!231452 m!273809))

(declare-fun m!273811 () Bool)

(assert (=> b!231452 m!273811))

(declare-fun m!273813 () Bool)

(assert (=> b!231428 m!273813))

(assert (=> b!231428 m!273813))

(declare-fun m!273815 () Bool)

(assert (=> b!231428 m!273815))

(declare-fun m!273817 () Bool)

(assert (=> b!231428 m!273817))

(declare-fun m!273819 () Bool)

(assert (=> b!231424 m!273819))

(assert (=> b!231424 m!273745))

(declare-fun m!273821 () Bool)

(assert (=> b!231430 m!273821))

(declare-fun m!273823 () Bool)

(assert (=> b!231421 m!273823))

(declare-fun m!273825 () Bool)

(assert (=> b!231436 m!273825))

(assert (=> b!231436 m!273825))

(declare-fun m!273827 () Bool)

(assert (=> b!231436 m!273827))

(assert (=> b!231436 m!273827))

(declare-fun m!273829 () Bool)

(assert (=> b!231436 m!273829))

(declare-fun m!273831 () Bool)

(assert (=> b!231436 m!273831))

(declare-fun m!273833 () Bool)

(assert (=> b!231429 m!273833))

(declare-fun m!273835 () Bool)

(assert (=> b!231450 m!273835))

(declare-fun m!273837 () Bool)

(assert (=> b!231450 m!273837))

(declare-fun m!273839 () Bool)

(assert (=> b!231450 m!273839))

(declare-fun m!273841 () Bool)

(assert (=> b!231449 m!273841))

(declare-fun m!273843 () Bool)

(assert (=> b!231449 m!273843))

(declare-fun m!273845 () Bool)

(assert (=> b!231451 m!273845))

(declare-fun m!273847 () Bool)

(assert (=> b!231451 m!273847))

(declare-fun m!273849 () Bool)

(assert (=> b!231451 m!273849))

(declare-fun m!273851 () Bool)

(assert (=> b!231451 m!273851))

(declare-fun m!273853 () Bool)

(assert (=> b!231451 m!273853))

(declare-fun m!273855 () Bool)

(assert (=> b!231451 m!273855))

(declare-fun m!273857 () Bool)

(assert (=> b!231451 m!273857))

(assert (=> b!231451 m!273845))

(declare-fun m!273859 () Bool)

(assert (=> b!231451 m!273859))

(assert (=> b!231451 m!273855))

(declare-fun m!273861 () Bool)

(assert (=> b!231451 m!273861))

(declare-fun m!273863 () Bool)

(assert (=> b!231451 m!273863))

(assert (=> b!231451 m!273861))

(declare-fun m!273865 () Bool)

(assert (=> b!231451 m!273865))

(assert (=> b!231451 m!273853))

(declare-fun m!273867 () Bool)

(assert (=> b!231451 m!273867))

(declare-fun m!273869 () Bool)

(assert (=> b!231451 m!273869))

(declare-fun m!273871 () Bool)

(assert (=> b!231454 m!273871))

(declare-fun m!273873 () Bool)

(assert (=> b!231454 m!273873))

(declare-fun m!273875 () Bool)

(assert (=> b!231448 m!273875))

(declare-fun m!273877 () Bool)

(assert (=> b!231426 m!273877))

(declare-fun m!273879 () Bool)

(assert (=> b!231427 m!273879))

(assert (=> b!231427 m!273879))

(declare-fun m!273881 () Bool)

(assert (=> b!231427 m!273881))

(declare-fun m!273883 () Bool)

(assert (=> b!231427 m!273883))

(declare-fun m!273885 () Bool)

(assert (=> b!231462 m!273885))

(declare-fun m!273887 () Bool)

(assert (=> b!231447 m!273887))

(declare-fun m!273889 () Bool)

(assert (=> b!231423 m!273889))

(declare-fun m!273891 () Bool)

(assert (=> b!231423 m!273891))

(declare-fun m!273893 () Bool)

(assert (=> b!231465 m!273893))

(assert (=> b!231465 m!273893))

(declare-fun m!273895 () Bool)

(assert (=> b!231465 m!273895))

(declare-fun m!273897 () Bool)

(assert (=> b!231444 m!273897))

(declare-fun m!273899 () Bool)

(assert (=> b!231458 m!273899))

(declare-fun m!273901 () Bool)

(assert (=> b!231463 m!273901))

(declare-fun m!273903 () Bool)

(assert (=> b!231463 m!273903))

(declare-fun m!273905 () Bool)

(assert (=> b!231439 m!273905))

(declare-fun m!273907 () Bool)

(assert (=> b!231437 m!273907))

(declare-fun m!273909 () Bool)

(assert (=> b!231437 m!273909))

(declare-fun m!273911 () Bool)

(assert (=> b!231461 m!273911))

(declare-fun m!273913 () Bool)

(assert (=> b!231464 m!273913))

(declare-fun m!273915 () Bool)

(assert (=> b!231464 m!273915))

(declare-fun m!273917 () Bool)

(assert (=> b!231425 m!273917))

(declare-fun m!273919 () Bool)

(assert (=> b!231459 m!273919))

(declare-fun m!273921 () Bool)

(assert (=> start!24734 m!273921))

(declare-fun m!273923 () Bool)

(assert (=> b!231466 m!273923))

(declare-fun m!273925 () Bool)

(assert (=> b!231466 m!273925))

(declare-fun m!273927 () Bool)

(assert (=> b!231453 m!273927))

(declare-fun m!273929 () Bool)

(assert (=> b!231420 m!273929))

(check-sat (not b!231459) (not b!231478) (not b!231426) b_and!17155 (not b!231436) (not b!231444) (not b!231438) (not b!231437) (not b_next!8681) (not b!231455) (not b!231421) (not b!231451) (not b!231456) (not b!231449) (not b!231452) (not b!231425) b_and!17147 (not b!231461) (not b!231450) (not b_next!8675) b_and!17153 (not b!231427) (not b!231432) (not b!231463) b_and!17151 b_and!17149 (not b_next!8679) (not b!231420) (not b!231462) (not b!231460) (not b!231423) (not b!231441) (not b!231454) (not start!24734) b_and!17145 (not b!231431) (not b!231430) (not b!231466) (not b!231428) (not b!231464) (not b!231448) (not b!231439) (not b!231465) (not b!231447) (not b!231458) (not b!231453) (not b!231429) (not b!231424) (not b_next!8673) (not b_next!8683) (not b_next!8677) (not b!231440))
(check-sat b_and!17147 b_and!17155 b_and!17145 (not b_next!8681) (not b_next!8677) (not b_next!8675) b_and!17153 b_and!17151 b_and!17149 (not b_next!8679) (not b_next!8673) (not b_next!8683))
