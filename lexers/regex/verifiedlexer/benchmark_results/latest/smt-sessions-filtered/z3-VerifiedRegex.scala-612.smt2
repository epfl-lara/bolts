; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19506 () Bool)

(assert start!19506)

(declare-fun b!180429 () Bool)

(declare-fun b_free!6993 () Bool)

(declare-fun b_next!6993 () Bool)

(assert (=> b!180429 (= b_free!6993 (not b_next!6993))))

(declare-fun tp!86260 () Bool)

(declare-fun b_and!12309 () Bool)

(assert (=> b!180429 (= tp!86260 b_and!12309)))

(declare-fun b_free!6995 () Bool)

(declare-fun b_next!6995 () Bool)

(assert (=> b!180429 (= b_free!6995 (not b_next!6995))))

(declare-fun tp!86264 () Bool)

(declare-fun b_and!12311 () Bool)

(assert (=> b!180429 (= tp!86264 b_and!12311)))

(declare-fun b!180418 () Bool)

(declare-fun b_free!6997 () Bool)

(declare-fun b_next!6997 () Bool)

(assert (=> b!180418 (= b_free!6997 (not b_next!6997))))

(declare-fun tp!86262 () Bool)

(declare-fun b_and!12313 () Bool)

(assert (=> b!180418 (= tp!86262 b_and!12313)))

(declare-fun b_free!6999 () Bool)

(declare-fun b_next!6999 () Bool)

(assert (=> b!180418 (= b_free!6999 (not b_next!6999))))

(declare-fun tp!86256 () Bool)

(declare-fun b_and!12315 () Bool)

(assert (=> b!180418 (= tp!86256 b_and!12315)))

(declare-fun b!180402 () Bool)

(declare-fun b_free!7001 () Bool)

(declare-fun b_next!7001 () Bool)

(assert (=> b!180402 (= b_free!7001 (not b_next!7001))))

(declare-fun tp!86258 () Bool)

(declare-fun b_and!12317 () Bool)

(assert (=> b!180402 (= tp!86258 b_and!12317)))

(declare-fun b_free!7003 () Bool)

(declare-fun b_next!7003 () Bool)

(assert (=> b!180402 (= b_free!7003 (not b_next!7003))))

(declare-fun tp!86255 () Bool)

(declare-fun b_and!12319 () Bool)

(assert (=> b!180402 (= tp!86255 b_and!12319)))

(declare-fun bs!17958 () Bool)

(declare-fun b!180404 () Bool)

(declare-fun b!180422 () Bool)

(assert (= bs!17958 (and b!180404 b!180422)))

(declare-fun lambda!5324 () Int)

(declare-fun lambda!5323 () Int)

(assert (=> bs!17958 (not (= lambda!5324 lambda!5323))))

(declare-fun b!180440 () Bool)

(declare-fun e!109869 () Bool)

(assert (=> b!180440 (= e!109869 true)))

(declare-fun b!180439 () Bool)

(declare-fun e!109868 () Bool)

(assert (=> b!180439 (= e!109868 e!109869)))

(declare-fun b!180438 () Bool)

(declare-fun e!109867 () Bool)

(assert (=> b!180438 (= e!109867 e!109868)))

(assert (=> b!180404 e!109867))

(assert (= b!180439 b!180440))

(assert (= b!180438 b!180439))

(declare-datatypes ((List!3031 0))(
  ( (Nil!3021) (Cons!3021 (h!8418 (_ BitVec 16)) (t!28241 List!3031)) )
))
(declare-datatypes ((TokenValue!569 0))(
  ( (FloatLiteralValue!1138 (text!4428 List!3031)) (TokenValueExt!568 (__x!2625 Int)) (Broken!2845 (value!19879 List!3031)) (Object!578) (End!569) (Def!569) (Underscore!569) (Match!569) (Else!569) (Error!569) (Case!569) (If!569) (Extends!569) (Abstract!569) (Class!569) (Val!569) (DelimiterValue!1138 (del!629 List!3031)) (KeywordValue!575 (value!19880 List!3031)) (CommentValue!1138 (value!19881 List!3031)) (WhitespaceValue!1138 (value!19882 List!3031)) (IndentationValue!569 (value!19883 List!3031)) (String!3924) (Int32!569) (Broken!2846 (value!19884 List!3031)) (Boolean!570) (Unit!2763) (OperatorValue!572 (op!629 List!3031)) (IdentifierValue!1138 (value!19885 List!3031)) (IdentifierValue!1139 (value!19886 List!3031)) (WhitespaceValue!1139 (value!19887 List!3031)) (True!1138) (False!1138) (Broken!2847 (value!19888 List!3031)) (Broken!2848 (value!19889 List!3031)) (True!1139) (RightBrace!569) (RightBracket!569) (Colon!569) (Null!569) (Comma!569) (LeftBracket!569) (False!1139) (LeftBrace!569) (ImaginaryLiteralValue!569 (text!4429 List!3031)) (StringLiteralValue!1707 (value!19890 List!3031)) (EOFValue!569 (value!19891 List!3031)) (IdentValue!569 (value!19892 List!3031)) (DelimiterValue!1139 (value!19893 List!3031)) (DedentValue!569 (value!19894 List!3031)) (NewLineValue!569 (value!19895 List!3031)) (IntegerValue!1707 (value!19896 (_ BitVec 32)) (text!4430 List!3031)) (IntegerValue!1708 (value!19897 Int) (text!4431 List!3031)) (Times!569) (Or!569) (Equal!569) (Minus!569) (Broken!2849 (value!19898 List!3031)) (And!569) (Div!569) (LessEqual!569) (Mod!569) (Concat!1340) (Not!569) (Plus!569) (SpaceValue!569 (value!19899 List!3031)) (IntegerValue!1709 (value!19900 Int) (text!4432 List!3031)) (StringLiteralValue!1708 (text!4433 List!3031)) (FloatLiteralValue!1139 (text!4434 List!3031)) (BytesLiteralValue!569 (value!19901 List!3031)) (CommentValue!1139 (value!19902 List!3031)) (StringLiteralValue!1709 (value!19903 List!3031)) (ErrorTokenValue!569 (msg!630 List!3031)) )
))
(declare-datatypes ((C!2464 0))(
  ( (C!2465 (val!1118 Int)) )
))
(declare-datatypes ((List!3032 0))(
  ( (Nil!3022) (Cons!3022 (h!8419 C!2464) (t!28242 List!3032)) )
))
(declare-datatypes ((IArray!1833 0))(
  ( (IArray!1834 (innerList!974 List!3032)) )
))
(declare-datatypes ((Conc!916 0))(
  ( (Node!916 (left!2340 Conc!916) (right!2670 Conc!916) (csize!2062 Int) (cheight!1127 Int)) (Leaf!1529 (xs!3511 IArray!1833) (csize!2063 Int)) (Empty!916) )
))
(declare-datatypes ((BalanceConc!1840 0))(
  ( (BalanceConc!1841 (c!35309 Conc!916)) )
))
(declare-datatypes ((TokenValueInjection!910 0))(
  ( (TokenValueInjection!911 (toValue!1218 Int) (toChars!1077 Int)) )
))
(declare-datatypes ((Regex!771 0))(
  ( (ElementMatch!771 (c!35310 C!2464)) (Concat!1341 (regOne!2054 Regex!771) (regTwo!2054 Regex!771)) (EmptyExpr!771) (Star!771 (reg!1100 Regex!771)) (EmptyLang!771) (Union!771 (regOne!2055 Regex!771) (regTwo!2055 Regex!771)) )
))
(declare-datatypes ((String!3925 0))(
  ( (String!3926 (value!19904 String)) )
))
(declare-datatypes ((Rule!894 0))(
  ( (Rule!895 (regex!547 Regex!771) (tag!725 String!3925) (isSeparator!547 Bool) (transformation!547 TokenValueInjection!910)) )
))
(declare-datatypes ((List!3033 0))(
  ( (Nil!3023) (Cons!3023 (h!8420 Rule!894) (t!28243 List!3033)) )
))
(declare-fun rules!1920 () List!3033)

(get-info :version)

(assert (= (and b!180404 ((_ is Cons!3023) rules!1920)) b!180438))

(declare-fun order!1757 () Int)

(declare-fun order!1759 () Int)

(declare-fun dynLambda!1207 (Int Int) Int)

(declare-fun dynLambda!1208 (Int Int) Int)

(assert (=> b!180440 (< (dynLambda!1207 order!1757 (toValue!1218 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5324))))

(declare-fun order!1761 () Int)

(declare-fun dynLambda!1209 (Int Int) Int)

(assert (=> b!180440 (< (dynLambda!1209 order!1761 (toChars!1077 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5324))))

(assert (=> b!180404 true))

(declare-fun lt!59273 () List!3032)

(declare-fun e!109843 () Bool)

(declare-fun lt!59260 () List!3032)

(declare-fun lt!59259 () List!3032)

(declare-fun b!180397 () Bool)

(declare-fun ++!710 (List!3032 List!3032) List!3032)

(assert (=> b!180397 (= e!109843 (not (= lt!59259 (++!710 lt!59260 lt!59273))))))

(declare-fun b!180399 () Bool)

(declare-fun e!109846 () Bool)

(declare-fun e!109840 () Bool)

(assert (=> b!180399 (= e!109846 e!109840)))

(declare-fun res!81733 () Bool)

(assert (=> b!180399 (=> (not res!81733) (not e!109840))))

(declare-datatypes ((LexerInterface!433 0))(
  ( (LexerInterfaceExt!430 (__x!2626 Int)) (Lexer!431) )
))
(declare-fun thiss!17480 () LexerInterface!433)

(declare-datatypes ((Token!838 0))(
  ( (Token!839 (value!19905 TokenValue!569) (rule!1062 Rule!894) (size!2471 Int) (originalCharacters!590 List!3032)) )
))
(declare-datatypes ((List!3034 0))(
  ( (Nil!3024) (Cons!3024 (h!8421 Token!838) (t!28244 List!3034)) )
))
(declare-datatypes ((IArray!1835 0))(
  ( (IArray!1836 (innerList!975 List!3034)) )
))
(declare-datatypes ((Conc!917 0))(
  ( (Node!917 (left!2341 Conc!917) (right!2671 Conc!917) (csize!2064 Int) (cheight!1128 Int)) (Leaf!1530 (xs!3512 IArray!1835) (csize!2065 Int)) (Empty!917) )
))
(declare-datatypes ((BalanceConc!1842 0))(
  ( (BalanceConc!1843 (c!35311 Conc!917)) )
))
(declare-fun lt!59274 () BalanceConc!1842)

(declare-fun rulesProduceEachTokenIndividually!225 (LexerInterface!433 List!3033 BalanceConc!1842) Bool)

(assert (=> b!180399 (= res!81733 (rulesProduceEachTokenIndividually!225 thiss!17480 rules!1920 lt!59274))))

(declare-fun tokens!465 () List!3034)

(declare-fun seqFromList!471 (List!3034) BalanceConc!1842)

(assert (=> b!180399 (= lt!59274 (seqFromList!471 tokens!465))))

(declare-fun b!180400 () Bool)

(declare-fun e!109858 () Bool)

(declare-fun e!109842 () Bool)

(declare-fun tp!86257 () Bool)

(assert (=> b!180400 (= e!109858 (and e!109842 tp!86257))))

(declare-fun b!180401 () Bool)

(declare-fun e!109838 () Bool)

(declare-fun e!109848 () Bool)

(assert (=> b!180401 (= e!109838 e!109848)))

(declare-fun res!81732 () Bool)

(assert (=> b!180401 (=> res!81732 e!109848)))

(declare-fun lt!59269 () List!3032)

(declare-fun lt!59262 () List!3032)

(assert (=> b!180401 (= res!81732 (or (not (= lt!59262 lt!59269)) (not (= lt!59269 lt!59260)) (not (= lt!59262 lt!59260))))))

(declare-fun printList!117 (LexerInterface!433 List!3034) List!3032)

(assert (=> b!180401 (= lt!59269 (printList!117 thiss!17480 (Cons!3024 (h!8421 tokens!465) Nil!3024)))))

(declare-fun lt!59267 () BalanceConc!1840)

(declare-fun list!1109 (BalanceConc!1840) List!3032)

(assert (=> b!180401 (= lt!59262 (list!1109 lt!59267))))

(declare-fun lt!59263 () BalanceConc!1842)

(declare-fun printTailRec!127 (LexerInterface!433 BalanceConc!1842 Int BalanceConc!1840) BalanceConc!1840)

(assert (=> b!180401 (= lt!59267 (printTailRec!127 thiss!17480 lt!59263 0 (BalanceConc!1841 Empty!916)))))

(declare-fun print!164 (LexerInterface!433 BalanceConc!1842) BalanceConc!1840)

(assert (=> b!180401 (= lt!59267 (print!164 thiss!17480 lt!59263))))

(declare-fun singletonSeq!99 (Token!838) BalanceConc!1842)

(assert (=> b!180401 (= lt!59263 (singletonSeq!99 (h!8421 tokens!465)))))

(declare-fun e!109845 () Bool)

(assert (=> b!180402 (= e!109845 (and tp!86258 tp!86255))))

(declare-fun tp!86259 () Bool)

(declare-fun e!109859 () Bool)

(declare-fun e!109852 () Bool)

(declare-fun b!180403 () Bool)

(declare-fun inv!3852 (String!3925) Bool)

(declare-fun inv!3855 (TokenValueInjection!910) Bool)

(assert (=> b!180403 (= e!109852 (and tp!86259 (inv!3852 (tag!725 (rule!1062 (h!8421 tokens!465)))) (inv!3855 (transformation!547 (rule!1062 (h!8421 tokens!465)))) e!109859))))

(declare-fun res!81736 () Bool)

(assert (=> start!19506 (=> (not res!81736) (not e!109846))))

(assert (=> start!19506 (= res!81736 ((_ is Lexer!431) thiss!17480))))

(assert (=> start!19506 e!109846))

(assert (=> start!19506 true))

(assert (=> start!19506 e!109858))

(declare-fun separatorToken!170 () Token!838)

(declare-fun e!109837 () Bool)

(declare-fun inv!3856 (Token!838) Bool)

(assert (=> start!19506 (and (inv!3856 separatorToken!170) e!109837)))

(declare-fun e!109844 () Bool)

(assert (=> start!19506 e!109844))

(declare-fun b!180398 () Bool)

(declare-fun res!81737 () Bool)

(assert (=> b!180398 (=> (not res!81737) (not e!109840))))

(declare-fun rulesProduceIndividualToken!182 (LexerInterface!433 List!3033 Token!838) Bool)

(assert (=> b!180398 (= res!81737 (rulesProduceIndividualToken!182 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!109849 () Bool)

(assert (=> b!180404 (= e!109848 e!109849)))

(declare-fun res!81730 () Bool)

(assert (=> b!180404 (=> res!81730 e!109849)))

(declare-datatypes ((tuple2!3002 0))(
  ( (tuple2!3003 (_1!1717 Token!838) (_2!1717 BalanceConc!1840)) )
))
(declare-datatypes ((Option!372 0))(
  ( (None!371) (Some!371 (v!13846 tuple2!3002)) )
))
(declare-fun isDefined!223 (Option!372) Bool)

(declare-fun maxPrefixZipperSequence!126 (LexerInterface!433 List!3033 BalanceConc!1840) Option!372)

(declare-fun seqFromList!472 (List!3032) BalanceConc!1840)

(assert (=> b!180404 (= res!81730 (not (isDefined!223 (maxPrefixZipperSequence!126 thiss!17480 rules!1920 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))))

(declare-datatypes ((Unit!2764 0))(
  ( (Unit!2765) )
))
(declare-fun lt!59266 () Unit!2764)

(declare-fun forallContained!114 (List!3034 Int Token!838) Unit!2764)

(assert (=> b!180404 (= lt!59266 (forallContained!114 tokens!465 lambda!5324 (h!8421 tokens!465)))))

(assert (=> b!180404 (= lt!59260 (originalCharacters!590 (h!8421 tokens!465)))))

(declare-fun tp!86266 () Bool)

(declare-fun b!180405 () Bool)

(declare-fun e!109856 () Bool)

(assert (=> b!180405 (= e!109856 (and tp!86266 (inv!3852 (tag!725 (rule!1062 separatorToken!170))) (inv!3855 (transformation!547 (rule!1062 separatorToken!170))) e!109845))))

(declare-fun b!180406 () Bool)

(declare-fun e!109854 () Bool)

(assert (=> b!180406 (= e!109840 e!109854)))

(declare-fun res!81725 () Bool)

(assert (=> b!180406 (=> (not res!81725) (not e!109854))))

(declare-fun lt!59270 () List!3032)

(assert (=> b!180406 (= res!81725 (= lt!59259 lt!59270))))

(declare-fun printWithSeparatorTokenWhenNeededRec!116 (LexerInterface!433 List!3033 BalanceConc!1842 Token!838 Int) BalanceConc!1840)

(assert (=> b!180406 (= lt!59270 (list!1109 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 lt!59274 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!126 (LexerInterface!433 List!3033 List!3034 Token!838) List!3032)

(assert (=> b!180406 (= lt!59259 (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!180407 () Bool)

(declare-fun res!81722 () Bool)

(assert (=> b!180407 (=> res!81722 e!109848)))

(assert (=> b!180407 (= res!81722 (not (rulesProduceIndividualToken!182 thiss!17480 rules!1920 (h!8421 tokens!465))))))

(declare-fun b!180408 () Bool)

(declare-fun res!81729 () Bool)

(assert (=> b!180408 (=> (not res!81729) (not e!109846))))

(declare-fun rulesInvariant!399 (LexerInterface!433 List!3033) Bool)

(assert (=> b!180408 (= res!81729 (rulesInvariant!399 thiss!17480 rules!1920))))

(declare-fun b!180409 () Bool)

(declare-fun res!81738 () Bool)

(assert (=> b!180409 (=> (not res!81738) (not e!109846))))

(declare-fun isEmpty!1367 (List!3033) Bool)

(assert (=> b!180409 (= res!81738 (not (isEmpty!1367 rules!1920)))))

(declare-fun b!180410 () Bool)

(declare-fun e!109836 () Bool)

(declare-fun tp!86263 () Bool)

(assert (=> b!180410 (= e!109844 (and (inv!3856 (h!8421 tokens!465)) e!109836 tp!86263))))

(declare-fun b!180411 () Bool)

(declare-fun res!81724 () Bool)

(assert (=> b!180411 (=> (not res!81724) (not e!109854))))

(assert (=> b!180411 (= res!81724 (= (list!1109 (seqFromList!472 lt!59259)) lt!59270))))

(declare-fun tp!86265 () Bool)

(declare-fun b!180412 () Bool)

(declare-fun e!109850 () Bool)

(assert (=> b!180412 (= e!109842 (and tp!86265 (inv!3852 (tag!725 (h!8420 rules!1920))) (inv!3855 (transformation!547 (h!8420 rules!1920))) e!109850))))

(declare-fun b!180413 () Bool)

(declare-fun res!81735 () Bool)

(assert (=> b!180413 (=> (not res!81735) (not e!109840))))

(assert (=> b!180413 (= res!81735 (isSeparator!547 (rule!1062 separatorToken!170)))))

(declare-fun e!109857 () Bool)

(declare-fun b!180414 () Bool)

(declare-datatypes ((tuple2!3004 0))(
  ( (tuple2!3005 (_1!1718 Token!838) (_2!1718 List!3032)) )
))
(declare-datatypes ((Option!373 0))(
  ( (None!372) (Some!372 (v!13847 tuple2!3004)) )
))
(declare-fun isDefined!224 (Option!373) Bool)

(declare-fun maxPrefix!163 (LexerInterface!433 List!3033 List!3032) Option!373)

(assert (=> b!180414 (= e!109857 (isDefined!224 (maxPrefix!163 thiss!17480 rules!1920 lt!59259)))))

(declare-fun lt!59272 () List!3032)

(declare-fun isPrefix!243 (List!3032 List!3032) Bool)

(assert (=> b!180414 (isPrefix!243 lt!59260 lt!59272)))

(declare-fun lt!59257 () Unit!2764)

(declare-fun lt!59264 () List!3032)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!138 (List!3032 List!3032) Unit!2764)

(assert (=> b!180414 (= lt!59257 (lemmaConcatTwoListThenFirstIsPrefix!138 lt!59260 lt!59264))))

(declare-fun e!109853 () Bool)

(assert (=> b!180414 e!109853))

(declare-fun res!81728 () Bool)

(assert (=> b!180414 (=> res!81728 e!109853)))

(declare-fun isEmpty!1368 (List!3034) Bool)

(assert (=> b!180414 (= res!81728 (isEmpty!1368 tokens!465))))

(declare-fun lt!59255 () Unit!2764)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!8 (LexerInterface!433 List!3033 List!3034 Token!838) Unit!2764)

(assert (=> b!180414 (= lt!59255 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!8 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!180415 () Bool)

(declare-fun res!81720 () Bool)

(assert (=> b!180415 (=> (not res!81720) (not e!109840))))

(assert (=> b!180415 (= res!81720 ((_ is Cons!3024) tokens!465))))

(declare-fun b!180416 () Bool)

(declare-fun e!109834 () Bool)

(declare-fun matchR!109 (Regex!771 List!3032) Bool)

(assert (=> b!180416 (= e!109834 (matchR!109 (regex!547 (rule!1062 (h!8421 tokens!465))) lt!59260))))

(declare-fun b!180417 () Bool)

(declare-fun res!81719 () Bool)

(assert (=> b!180417 (=> res!81719 e!109848)))

(declare-fun isEmpty!1369 (BalanceConc!1842) Bool)

(declare-datatypes ((tuple2!3006 0))(
  ( (tuple2!3007 (_1!1719 BalanceConc!1842) (_2!1719 BalanceConc!1840)) )
))
(declare-fun lex!233 (LexerInterface!433 List!3033 BalanceConc!1840) tuple2!3006)

(assert (=> b!180417 (= res!81719 (isEmpty!1369 (_1!1719 (lex!233 thiss!17480 rules!1920 (seqFromList!472 lt!59260)))))))

(assert (=> b!180418 (= e!109859 (and tp!86262 tp!86256))))

(declare-fun b!180419 () Bool)

(declare-fun res!81734 () Bool)

(assert (=> b!180419 (=> (not res!81734) (not e!109840))))

(declare-fun sepAndNonSepRulesDisjointChars!136 (List!3033 List!3033) Bool)

(assert (=> b!180419 (= res!81734 (sepAndNonSepRulesDisjointChars!136 rules!1920 rules!1920))))

(declare-fun b!180420 () Bool)

(declare-fun e!109855 () Bool)

(declare-fun lt!59268 () Option!373)

(declare-fun get!849 (Option!373) tuple2!3004)

(declare-fun head!624 (List!3034) Token!838)

(assert (=> b!180420 (= e!109855 (= (_1!1718 (get!849 lt!59268)) (head!624 tokens!465)))))

(declare-fun b!180421 () Bool)

(declare-fun tp!86261 () Bool)

(declare-fun inv!21 (TokenValue!569) Bool)

(assert (=> b!180421 (= e!109837 (and (inv!21 (value!19905 separatorToken!170)) e!109856 tp!86261))))

(declare-fun res!81731 () Bool)

(assert (=> b!180422 (=> (not res!81731) (not e!109840))))

(declare-fun forall!615 (List!3034 Int) Bool)

(assert (=> b!180422 (= res!81731 (forall!615 tokens!465 lambda!5323))))

(declare-fun b!180423 () Bool)

(assert (=> b!180423 (= e!109853 e!109855)))

(declare-fun res!81740 () Bool)

(assert (=> b!180423 (=> (not res!81740) (not e!109855))))

(assert (=> b!180423 (= res!81740 (isDefined!224 lt!59268))))

(assert (=> b!180423 (= lt!59268 (maxPrefix!163 thiss!17480 rules!1920 lt!59259))))

(declare-fun b!180424 () Bool)

(declare-fun e!109839 () Bool)

(assert (=> b!180424 (= e!109854 (not e!109839))))

(declare-fun res!81721 () Bool)

(assert (=> b!180424 (=> res!81721 e!109839)))

(assert (=> b!180424 (= res!81721 (not (= lt!59273 (list!1109 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 (seqFromList!471 (t!28244 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!59258 () List!3032)

(assert (=> b!180424 (= lt!59258 lt!59272)))

(assert (=> b!180424 (= lt!59272 (++!710 lt!59260 lt!59264))))

(declare-fun lt!59271 () List!3032)

(assert (=> b!180424 (= lt!59258 (++!710 (++!710 lt!59260 lt!59271) lt!59273))))

(declare-fun lt!59254 () Unit!2764)

(declare-fun lemmaConcatAssociativity!236 (List!3032 List!3032 List!3032) Unit!2764)

(assert (=> b!180424 (= lt!59254 (lemmaConcatAssociativity!236 lt!59260 lt!59271 lt!59273))))

(declare-fun charsOf!202 (Token!838) BalanceConc!1840)

(assert (=> b!180424 (= lt!59260 (list!1109 (charsOf!202 (h!8421 tokens!465))))))

(assert (=> b!180424 (= lt!59264 (++!710 lt!59271 lt!59273))))

(assert (=> b!180424 (= lt!59273 (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 (t!28244 tokens!465) separatorToken!170))))

(assert (=> b!180424 (= lt!59271 (list!1109 (charsOf!202 separatorToken!170)))))

(declare-fun b!180425 () Bool)

(assert (=> b!180425 (= e!109839 e!109838)))

(declare-fun res!81723 () Bool)

(assert (=> b!180425 (=> res!81723 e!109838)))

(assert (=> b!180425 (= res!81723 e!109843)))

(declare-fun res!81726 () Bool)

(assert (=> b!180425 (=> (not res!81726) (not e!109843))))

(declare-fun lt!59265 () Bool)

(assert (=> b!180425 (= res!81726 (not lt!59265))))

(assert (=> b!180425 (= lt!59265 (= lt!59259 lt!59272))))

(declare-fun tp!86267 () Bool)

(declare-fun b!180426 () Bool)

(assert (=> b!180426 (= e!109836 (and (inv!21 (value!19905 (h!8421 tokens!465))) e!109852 tp!86267))))

(declare-fun b!180427 () Bool)

(assert (=> b!180427 (= e!109849 e!109857)))

(declare-fun res!81727 () Bool)

(assert (=> b!180427 (=> res!81727 e!109857)))

(assert (=> b!180427 (= res!81727 (not lt!59265))))

(assert (=> b!180427 e!109834))

(declare-fun res!81739 () Bool)

(assert (=> b!180427 (=> (not res!81739) (not e!109834))))

(declare-fun lt!59261 () tuple2!3004)

(assert (=> b!180427 (= res!81739 (= (_1!1718 lt!59261) (h!8421 tokens!465)))))

(declare-fun lt!59256 () Option!373)

(assert (=> b!180427 (= lt!59261 (get!849 lt!59256))))

(assert (=> b!180427 (isDefined!224 lt!59256)))

(assert (=> b!180427 (= lt!59256 (maxPrefix!163 thiss!17480 rules!1920 lt!59260))))

(declare-fun b!180428 () Bool)

(declare-fun res!81741 () Bool)

(assert (=> b!180428 (=> (not res!81741) (not e!109834))))

(declare-fun isEmpty!1370 (List!3032) Bool)

(assert (=> b!180428 (= res!81741 (isEmpty!1370 (_2!1718 lt!59261)))))

(assert (=> b!180429 (= e!109850 (and tp!86260 tp!86264))))

(assert (= (and start!19506 res!81736) b!180409))

(assert (= (and b!180409 res!81738) b!180408))

(assert (= (and b!180408 res!81729) b!180399))

(assert (= (and b!180399 res!81733) b!180398))

(assert (= (and b!180398 res!81737) b!180413))

(assert (= (and b!180413 res!81735) b!180422))

(assert (= (and b!180422 res!81731) b!180419))

(assert (= (and b!180419 res!81734) b!180415))

(assert (= (and b!180415 res!81720) b!180406))

(assert (= (and b!180406 res!81725) b!180411))

(assert (= (and b!180411 res!81724) b!180424))

(assert (= (and b!180424 (not res!81721)) b!180425))

(assert (= (and b!180425 res!81726) b!180397))

(assert (= (and b!180425 (not res!81723)) b!180401))

(assert (= (and b!180401 (not res!81732)) b!180407))

(assert (= (and b!180407 (not res!81722)) b!180417))

(assert (= (and b!180417 (not res!81719)) b!180404))

(assert (= (and b!180404 (not res!81730)) b!180427))

(assert (= (and b!180427 res!81739) b!180428))

(assert (= (and b!180428 res!81741) b!180416))

(assert (= (and b!180427 (not res!81727)) b!180414))

(assert (= (and b!180414 (not res!81728)) b!180423))

(assert (= (and b!180423 res!81740) b!180420))

(assert (= b!180412 b!180429))

(assert (= b!180400 b!180412))

(assert (= (and start!19506 ((_ is Cons!3023) rules!1920)) b!180400))

(assert (= b!180405 b!180402))

(assert (= b!180421 b!180405))

(assert (= start!19506 b!180421))

(assert (= b!180403 b!180418))

(assert (= b!180426 b!180403))

(assert (= b!180410 b!180426))

(assert (= (and start!19506 ((_ is Cons!3024) tokens!465)) b!180410))

(declare-fun m!182689 () Bool)

(assert (=> b!180404 m!182689))

(assert (=> b!180404 m!182689))

(declare-fun m!182691 () Bool)

(assert (=> b!180404 m!182691))

(assert (=> b!180404 m!182691))

(declare-fun m!182693 () Bool)

(assert (=> b!180404 m!182693))

(declare-fun m!182695 () Bool)

(assert (=> b!180404 m!182695))

(declare-fun m!182697 () Bool)

(assert (=> b!180411 m!182697))

(assert (=> b!180411 m!182697))

(declare-fun m!182699 () Bool)

(assert (=> b!180411 m!182699))

(declare-fun m!182701 () Bool)

(assert (=> b!180423 m!182701))

(declare-fun m!182703 () Bool)

(assert (=> b!180423 m!182703))

(declare-fun m!182705 () Bool)

(assert (=> b!180409 m!182705))

(declare-fun m!182707 () Bool)

(assert (=> b!180405 m!182707))

(declare-fun m!182709 () Bool)

(assert (=> b!180405 m!182709))

(declare-fun m!182711 () Bool)

(assert (=> b!180401 m!182711))

(declare-fun m!182713 () Bool)

(assert (=> b!180401 m!182713))

(declare-fun m!182715 () Bool)

(assert (=> b!180401 m!182715))

(declare-fun m!182717 () Bool)

(assert (=> b!180401 m!182717))

(declare-fun m!182719 () Bool)

(assert (=> b!180401 m!182719))

(declare-fun m!182721 () Bool)

(assert (=> b!180399 m!182721))

(declare-fun m!182723 () Bool)

(assert (=> b!180399 m!182723))

(declare-fun m!182725 () Bool)

(assert (=> b!180414 m!182725))

(assert (=> b!180414 m!182703))

(declare-fun m!182727 () Bool)

(assert (=> b!180414 m!182727))

(declare-fun m!182729 () Bool)

(assert (=> b!180414 m!182729))

(declare-fun m!182731 () Bool)

(assert (=> b!180414 m!182731))

(assert (=> b!180414 m!182703))

(declare-fun m!182733 () Bool)

(assert (=> b!180414 m!182733))

(declare-fun m!182735 () Bool)

(assert (=> b!180397 m!182735))

(declare-fun m!182737 () Bool)

(assert (=> b!180407 m!182737))

(declare-fun m!182739 () Bool)

(assert (=> b!180417 m!182739))

(assert (=> b!180417 m!182739))

(declare-fun m!182741 () Bool)

(assert (=> b!180417 m!182741))

(declare-fun m!182743 () Bool)

(assert (=> b!180417 m!182743))

(declare-fun m!182745 () Bool)

(assert (=> b!180398 m!182745))

(declare-fun m!182747 () Bool)

(assert (=> b!180412 m!182747))

(declare-fun m!182749 () Bool)

(assert (=> b!180412 m!182749))

(declare-fun m!182751 () Bool)

(assert (=> b!180427 m!182751))

(declare-fun m!182753 () Bool)

(assert (=> b!180427 m!182753))

(declare-fun m!182755 () Bool)

(assert (=> b!180427 m!182755))

(declare-fun m!182757 () Bool)

(assert (=> b!180416 m!182757))

(declare-fun m!182759 () Bool)

(assert (=> b!180426 m!182759))

(declare-fun m!182761 () Bool)

(assert (=> b!180422 m!182761))

(declare-fun m!182763 () Bool)

(assert (=> b!180424 m!182763))

(declare-fun m!182765 () Bool)

(assert (=> b!180424 m!182765))

(declare-fun m!182767 () Bool)

(assert (=> b!180424 m!182767))

(declare-fun m!182769 () Bool)

(assert (=> b!180424 m!182769))

(assert (=> b!180424 m!182765))

(declare-fun m!182771 () Bool)

(assert (=> b!180424 m!182771))

(assert (=> b!180424 m!182769))

(declare-fun m!182773 () Bool)

(assert (=> b!180424 m!182773))

(assert (=> b!180424 m!182763))

(declare-fun m!182775 () Bool)

(assert (=> b!180424 m!182775))

(declare-fun m!182777 () Bool)

(assert (=> b!180424 m!182777))

(declare-fun m!182779 () Bool)

(assert (=> b!180424 m!182779))

(declare-fun m!182781 () Bool)

(assert (=> b!180424 m!182781))

(declare-fun m!182783 () Bool)

(assert (=> b!180424 m!182783))

(assert (=> b!180424 m!182777))

(declare-fun m!182785 () Bool)

(assert (=> b!180424 m!182785))

(assert (=> b!180424 m!182775))

(declare-fun m!182787 () Bool)

(assert (=> b!180424 m!182787))

(declare-fun m!182789 () Bool)

(assert (=> start!19506 m!182789))

(declare-fun m!182791 () Bool)

(assert (=> b!180428 m!182791))

(declare-fun m!182793 () Bool)

(assert (=> b!180406 m!182793))

(assert (=> b!180406 m!182793))

(declare-fun m!182795 () Bool)

(assert (=> b!180406 m!182795))

(declare-fun m!182797 () Bool)

(assert (=> b!180406 m!182797))

(declare-fun m!182799 () Bool)

(assert (=> b!180410 m!182799))

(declare-fun m!182801 () Bool)

(assert (=> b!180408 m!182801))

(declare-fun m!182803 () Bool)

(assert (=> b!180419 m!182803))

(declare-fun m!182805 () Bool)

(assert (=> b!180420 m!182805))

(declare-fun m!182807 () Bool)

(assert (=> b!180420 m!182807))

(declare-fun m!182809 () Bool)

(assert (=> b!180421 m!182809))

(declare-fun m!182811 () Bool)

(assert (=> b!180403 m!182811))

(declare-fun m!182813 () Bool)

(assert (=> b!180403 m!182813))

(check-sat b_and!12317 (not b_next!7001) (not b!180408) (not b!180414) (not b!180426) (not b!180404) b_and!12315 (not b!180428) (not b!180438) (not b!180410) (not b_next!6999) (not b!180398) b_and!12319 b_and!12311 (not b!180427) (not b_next!6993) (not b!180412) (not b!180401) (not b!180416) (not b_next!7003) (not b!180405) (not b!180407) (not b_next!6997) (not b!180397) (not b!180419) (not b!180399) (not b!180411) (not b!180422) (not b!180406) b_and!12309 (not b!180400) (not b!180421) (not b!180424) (not b!180409) (not b!180403) (not b!180420) (not b_next!6995) (not b!180423) b_and!12313 (not start!19506) (not b!180417))
(check-sat b_and!12317 b_and!12319 b_and!12311 (not b_next!6993) (not b_next!7001) (not b_next!7003) (not b_next!6997) b_and!12309 b_and!12315 (not b_next!6995) (not b_next!6999) b_and!12313)
(get-model)

(declare-fun d!45753 () Bool)

(declare-fun res!81814 () Bool)

(declare-fun e!109928 () Bool)

(assert (=> d!45753 (=> (not res!81814) (not e!109928))))

(assert (=> d!45753 (= res!81814 (not (isEmpty!1370 (originalCharacters!590 (h!8421 tokens!465)))))))

(assert (=> d!45753 (= (inv!3856 (h!8421 tokens!465)) e!109928)))

(declare-fun b!180536 () Bool)

(declare-fun res!81815 () Bool)

(assert (=> b!180536 (=> (not res!81815) (not e!109928))))

(declare-fun dynLambda!1212 (Int TokenValue!569) BalanceConc!1840)

(assert (=> b!180536 (= res!81815 (= (originalCharacters!590 (h!8421 tokens!465)) (list!1109 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (value!19905 (h!8421 tokens!465))))))))

(declare-fun b!180537 () Bool)

(declare-fun size!2475 (List!3032) Int)

(assert (=> b!180537 (= e!109928 (= (size!2471 (h!8421 tokens!465)) (size!2475 (originalCharacters!590 (h!8421 tokens!465)))))))

(assert (= (and d!45753 res!81814) b!180536))

(assert (= (and b!180536 res!81815) b!180537))

(declare-fun b_lambda!4317 () Bool)

(assert (=> (not b_lambda!4317) (not b!180536)))

(declare-fun tb!7549 () Bool)

(declare-fun t!28258 () Bool)

(assert (=> (and b!180429 (= (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465))))) t!28258) tb!7549))

(declare-fun b!180542 () Bool)

(declare-fun e!109931 () Bool)

(declare-fun tp!86274 () Bool)

(declare-fun inv!3859 (Conc!916) Bool)

(assert (=> b!180542 (= e!109931 (and (inv!3859 (c!35309 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (value!19905 (h!8421 tokens!465))))) tp!86274))))

(declare-fun result!10350 () Bool)

(declare-fun inv!3860 (BalanceConc!1840) Bool)

(assert (=> tb!7549 (= result!10350 (and (inv!3860 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (value!19905 (h!8421 tokens!465)))) e!109931))))

(assert (= tb!7549 b!180542))

(declare-fun m!182913 () Bool)

(assert (=> b!180542 m!182913))

(declare-fun m!182915 () Bool)

(assert (=> tb!7549 m!182915))

(assert (=> b!180536 t!28258))

(declare-fun b_and!12333 () Bool)

(assert (= b_and!12311 (and (=> t!28258 result!10350) b_and!12333)))

(declare-fun t!28260 () Bool)

(declare-fun tb!7551 () Bool)

(assert (=> (and b!180418 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465))))) t!28260) tb!7551))

(declare-fun result!10354 () Bool)

(assert (= result!10354 result!10350))

(assert (=> b!180536 t!28260))

(declare-fun b_and!12335 () Bool)

(assert (= b_and!12315 (and (=> t!28260 result!10354) b_and!12335)))

(declare-fun t!28262 () Bool)

(declare-fun tb!7553 () Bool)

(assert (=> (and b!180402 (= (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465))))) t!28262) tb!7553))

(declare-fun result!10356 () Bool)

(assert (= result!10356 result!10350))

(assert (=> b!180536 t!28262))

(declare-fun b_and!12337 () Bool)

(assert (= b_and!12319 (and (=> t!28262 result!10356) b_and!12337)))

(declare-fun m!182917 () Bool)

(assert (=> d!45753 m!182917))

(declare-fun m!182919 () Bool)

(assert (=> b!180536 m!182919))

(assert (=> b!180536 m!182919))

(declare-fun m!182921 () Bool)

(assert (=> b!180536 m!182921))

(declare-fun m!182923 () Bool)

(assert (=> b!180537 m!182923))

(assert (=> b!180410 d!45753))

(declare-fun d!45767 () Bool)

(assert (=> d!45767 (= (inv!3852 (tag!725 (h!8420 rules!1920))) (= (mod (str.len (value!19904 (tag!725 (h!8420 rules!1920)))) 2) 0))))

(assert (=> b!180412 d!45767))

(declare-fun d!45769 () Bool)

(declare-fun res!81818 () Bool)

(declare-fun e!109934 () Bool)

(assert (=> d!45769 (=> (not res!81818) (not e!109934))))

(declare-fun semiInverseModEq!189 (Int Int) Bool)

(assert (=> d!45769 (= res!81818 (semiInverseModEq!189 (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toValue!1218 (transformation!547 (h!8420 rules!1920)))))))

(assert (=> d!45769 (= (inv!3855 (transformation!547 (h!8420 rules!1920))) e!109934)))

(declare-fun b!180545 () Bool)

(declare-fun equivClasses!172 (Int Int) Bool)

(assert (=> b!180545 (= e!109934 (equivClasses!172 (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toValue!1218 (transformation!547 (h!8420 rules!1920)))))))

(assert (= (and d!45769 res!81818) b!180545))

(declare-fun m!182925 () Bool)

(assert (=> d!45769 m!182925))

(declare-fun m!182927 () Bool)

(assert (=> b!180545 m!182927))

(assert (=> b!180412 d!45769))

(declare-fun d!45771 () Bool)

(declare-fun list!1112 (Conc!916) List!3032)

(assert (=> d!45771 (= (list!1109 (seqFromList!472 lt!59259)) (list!1112 (c!35309 (seqFromList!472 lt!59259))))))

(declare-fun bs!17964 () Bool)

(assert (= bs!17964 d!45771))

(declare-fun m!182929 () Bool)

(assert (=> bs!17964 m!182929))

(assert (=> b!180411 d!45771))

(declare-fun d!45773 () Bool)

(declare-fun fromListB!184 (List!3032) BalanceConc!1840)

(assert (=> d!45773 (= (seqFromList!472 lt!59259) (fromListB!184 lt!59259))))

(declare-fun bs!17965 () Bool)

(assert (= bs!17965 d!45773))

(declare-fun m!182931 () Bool)

(assert (=> bs!17965 m!182931))

(assert (=> b!180411 d!45773))

(declare-fun d!45775 () Bool)

(declare-fun e!109956 () Bool)

(assert (=> d!45775 e!109956))

(declare-fun res!81832 () Bool)

(assert (=> d!45775 (=> res!81832 e!109956)))

(assert (=> d!45775 (= res!81832 (isEmpty!1368 tokens!465))))

(declare-fun lt!59322 () Unit!2764)

(declare-fun choose!1873 (LexerInterface!433 List!3033 List!3034 Token!838) Unit!2764)

(assert (=> d!45775 (= lt!59322 (choose!1873 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!45775 (not (isEmpty!1367 rules!1920))))

(assert (=> d!45775 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!8 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!59322)))

(declare-fun b!180581 () Bool)

(declare-fun e!109957 () Bool)

(assert (=> b!180581 (= e!109956 e!109957)))

(declare-fun res!81833 () Bool)

(assert (=> b!180581 (=> (not res!81833) (not e!109957))))

(assert (=> b!180581 (= res!81833 (isDefined!224 (maxPrefix!163 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!180582 () Bool)

(assert (=> b!180582 (= e!109957 (= (_1!1718 (get!849 (maxPrefix!163 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!624 tokens!465)))))

(assert (= (and d!45775 (not res!81832)) b!180581))

(assert (= (and b!180581 res!81833) b!180582))

(assert (=> d!45775 m!182725))

(declare-fun m!182957 () Bool)

(assert (=> d!45775 m!182957))

(assert (=> d!45775 m!182705))

(assert (=> b!180581 m!182797))

(assert (=> b!180581 m!182797))

(declare-fun m!182959 () Bool)

(assert (=> b!180581 m!182959))

(assert (=> b!180581 m!182959))

(declare-fun m!182961 () Bool)

(assert (=> b!180581 m!182961))

(assert (=> b!180582 m!182797))

(assert (=> b!180582 m!182797))

(assert (=> b!180582 m!182959))

(assert (=> b!180582 m!182959))

(declare-fun m!182963 () Bool)

(assert (=> b!180582 m!182963))

(assert (=> b!180582 m!182807))

(assert (=> b!180414 d!45775))

(declare-fun d!45785 () Bool)

(declare-fun isEmpty!1373 (Option!373) Bool)

(assert (=> d!45785 (= (isDefined!224 (maxPrefix!163 thiss!17480 rules!1920 lt!59259)) (not (isEmpty!1373 (maxPrefix!163 thiss!17480 rules!1920 lt!59259))))))

(declare-fun bs!17969 () Bool)

(assert (= bs!17969 d!45785))

(assert (=> bs!17969 m!182703))

(declare-fun m!182965 () Bool)

(assert (=> bs!17969 m!182965))

(assert (=> b!180414 d!45785))

(declare-fun b!180632 () Bool)

(declare-fun e!109981 () Bool)

(declare-fun lt!59352 () Option!373)

(declare-fun contains!488 (List!3033 Rule!894) Bool)

(assert (=> b!180632 (= e!109981 (contains!488 rules!1920 (rule!1062 (_1!1718 (get!849 lt!59352)))))))

(declare-fun b!180633 () Bool)

(declare-fun res!81861 () Bool)

(assert (=> b!180633 (=> (not res!81861) (not e!109981))))

(declare-fun apply!449 (TokenValueInjection!910 BalanceConc!1840) TokenValue!569)

(assert (=> b!180633 (= res!81861 (= (value!19905 (_1!1718 (get!849 lt!59352))) (apply!449 (transformation!547 (rule!1062 (_1!1718 (get!849 lt!59352)))) (seqFromList!472 (originalCharacters!590 (_1!1718 (get!849 lt!59352)))))))))

(declare-fun b!180634 () Bool)

(declare-fun e!109982 () Option!373)

(declare-fun call!8144 () Option!373)

(assert (=> b!180634 (= e!109982 call!8144)))

(declare-fun b!180635 () Bool)

(declare-fun res!81859 () Bool)

(assert (=> b!180635 (=> (not res!81859) (not e!109981))))

(assert (=> b!180635 (= res!81859 (< (size!2475 (_2!1718 (get!849 lt!59352))) (size!2475 lt!59259)))))

(declare-fun b!180636 () Bool)

(declare-fun res!81864 () Bool)

(assert (=> b!180636 (=> (not res!81864) (not e!109981))))

(assert (=> b!180636 (= res!81864 (= (list!1109 (charsOf!202 (_1!1718 (get!849 lt!59352)))) (originalCharacters!590 (_1!1718 (get!849 lt!59352)))))))

(declare-fun b!180638 () Bool)

(declare-fun lt!59350 () Option!373)

(declare-fun lt!59351 () Option!373)

(assert (=> b!180638 (= e!109982 (ite (and ((_ is None!372) lt!59350) ((_ is None!372) lt!59351)) None!372 (ite ((_ is None!372) lt!59351) lt!59350 (ite ((_ is None!372) lt!59350) lt!59351 (ite (>= (size!2471 (_1!1718 (v!13847 lt!59350))) (size!2471 (_1!1718 (v!13847 lt!59351)))) lt!59350 lt!59351)))))))

(assert (=> b!180638 (= lt!59350 call!8144)))

(assert (=> b!180638 (= lt!59351 (maxPrefix!163 thiss!17480 (t!28243 rules!1920) lt!59259))))

(declare-fun bm!8139 () Bool)

(declare-fun maxPrefixOneRule!81 (LexerInterface!433 Rule!894 List!3032) Option!373)

(assert (=> bm!8139 (= call!8144 (maxPrefixOneRule!81 thiss!17480 (h!8420 rules!1920) lt!59259))))

(declare-fun b!180639 () Bool)

(declare-fun res!81862 () Bool)

(assert (=> b!180639 (=> (not res!81862) (not e!109981))))

(assert (=> b!180639 (= res!81862 (matchR!109 (regex!547 (rule!1062 (_1!1718 (get!849 lt!59352)))) (list!1109 (charsOf!202 (_1!1718 (get!849 lt!59352))))))))

(declare-fun b!180640 () Bool)

(declare-fun e!109983 () Bool)

(assert (=> b!180640 (= e!109983 e!109981)))

(declare-fun res!81860 () Bool)

(assert (=> b!180640 (=> (not res!81860) (not e!109981))))

(assert (=> b!180640 (= res!81860 (isDefined!224 lt!59352))))

(declare-fun b!180637 () Bool)

(declare-fun res!81858 () Bool)

(assert (=> b!180637 (=> (not res!81858) (not e!109981))))

(assert (=> b!180637 (= res!81858 (= (++!710 (list!1109 (charsOf!202 (_1!1718 (get!849 lt!59352)))) (_2!1718 (get!849 lt!59352))) lt!59259))))

(declare-fun d!45787 () Bool)

(assert (=> d!45787 e!109983))

(declare-fun res!81863 () Bool)

(assert (=> d!45787 (=> res!81863 e!109983)))

(assert (=> d!45787 (= res!81863 (isEmpty!1373 lt!59352))))

(assert (=> d!45787 (= lt!59352 e!109982)))

(declare-fun c!35346 () Bool)

(assert (=> d!45787 (= c!35346 (and ((_ is Cons!3023) rules!1920) ((_ is Nil!3023) (t!28243 rules!1920))))))

(declare-fun lt!59354 () Unit!2764)

(declare-fun lt!59353 () Unit!2764)

(assert (=> d!45787 (= lt!59354 lt!59353)))

(assert (=> d!45787 (isPrefix!243 lt!59259 lt!59259)))

(declare-fun lemmaIsPrefixRefl!147 (List!3032 List!3032) Unit!2764)

(assert (=> d!45787 (= lt!59353 (lemmaIsPrefixRefl!147 lt!59259 lt!59259))))

(declare-fun rulesValidInductive!134 (LexerInterface!433 List!3033) Bool)

(assert (=> d!45787 (rulesValidInductive!134 thiss!17480 rules!1920)))

(assert (=> d!45787 (= (maxPrefix!163 thiss!17480 rules!1920 lt!59259) lt!59352)))

(assert (= (and d!45787 c!35346) b!180634))

(assert (= (and d!45787 (not c!35346)) b!180638))

(assert (= (or b!180634 b!180638) bm!8139))

(assert (= (and d!45787 (not res!81863)) b!180640))

(assert (= (and b!180640 res!81860) b!180636))

(assert (= (and b!180636 res!81864) b!180635))

(assert (= (and b!180635 res!81859) b!180637))

(assert (= (and b!180637 res!81858) b!180633))

(assert (= (and b!180633 res!81861) b!180639))

(assert (= (and b!180639 res!81862) b!180632))

(declare-fun m!183043 () Bool)

(assert (=> b!180632 m!183043))

(declare-fun m!183045 () Bool)

(assert (=> b!180632 m!183045))

(assert (=> b!180639 m!183043))

(declare-fun m!183047 () Bool)

(assert (=> b!180639 m!183047))

(assert (=> b!180639 m!183047))

(declare-fun m!183049 () Bool)

(assert (=> b!180639 m!183049))

(assert (=> b!180639 m!183049))

(declare-fun m!183051 () Bool)

(assert (=> b!180639 m!183051))

(assert (=> b!180636 m!183043))

(assert (=> b!180636 m!183047))

(assert (=> b!180636 m!183047))

(assert (=> b!180636 m!183049))

(declare-fun m!183053 () Bool)

(assert (=> b!180638 m!183053))

(declare-fun m!183055 () Bool)

(assert (=> b!180640 m!183055))

(assert (=> b!180637 m!183043))

(assert (=> b!180637 m!183047))

(assert (=> b!180637 m!183047))

(assert (=> b!180637 m!183049))

(assert (=> b!180637 m!183049))

(declare-fun m!183057 () Bool)

(assert (=> b!180637 m!183057))

(assert (=> b!180635 m!183043))

(declare-fun m!183059 () Bool)

(assert (=> b!180635 m!183059))

(declare-fun m!183061 () Bool)

(assert (=> b!180635 m!183061))

(declare-fun m!183063 () Bool)

(assert (=> bm!8139 m!183063))

(assert (=> b!180633 m!183043))

(declare-fun m!183065 () Bool)

(assert (=> b!180633 m!183065))

(assert (=> b!180633 m!183065))

(declare-fun m!183067 () Bool)

(assert (=> b!180633 m!183067))

(declare-fun m!183069 () Bool)

(assert (=> d!45787 m!183069))

(declare-fun m!183071 () Bool)

(assert (=> d!45787 m!183071))

(declare-fun m!183073 () Bool)

(assert (=> d!45787 m!183073))

(declare-fun m!183075 () Bool)

(assert (=> d!45787 m!183075))

(assert (=> b!180414 d!45787))

(declare-fun d!45805 () Bool)

(assert (=> d!45805 (= (isEmpty!1368 tokens!465) ((_ is Nil!3024) tokens!465))))

(assert (=> b!180414 d!45805))

(declare-fun b!180652 () Bool)

(declare-fun e!109991 () Bool)

(assert (=> b!180652 (= e!109991 (>= (size!2475 lt!59272) (size!2475 lt!59260)))))

(declare-fun b!180649 () Bool)

(declare-fun e!109992 () Bool)

(declare-fun e!109990 () Bool)

(assert (=> b!180649 (= e!109992 e!109990)))

(declare-fun res!81873 () Bool)

(assert (=> b!180649 (=> (not res!81873) (not e!109990))))

(assert (=> b!180649 (= res!81873 (not ((_ is Nil!3022) lt!59272)))))

(declare-fun b!180650 () Bool)

(declare-fun res!81874 () Bool)

(assert (=> b!180650 (=> (not res!81874) (not e!109990))))

(declare-fun head!626 (List!3032) C!2464)

(assert (=> b!180650 (= res!81874 (= (head!626 lt!59260) (head!626 lt!59272)))))

(declare-fun d!45807 () Bool)

(assert (=> d!45807 e!109991))

(declare-fun res!81876 () Bool)

(assert (=> d!45807 (=> res!81876 e!109991)))

(declare-fun lt!59357 () Bool)

(assert (=> d!45807 (= res!81876 (not lt!59357))))

(assert (=> d!45807 (= lt!59357 e!109992)))

(declare-fun res!81875 () Bool)

(assert (=> d!45807 (=> res!81875 e!109992)))

(assert (=> d!45807 (= res!81875 ((_ is Nil!3022) lt!59260))))

(assert (=> d!45807 (= (isPrefix!243 lt!59260 lt!59272) lt!59357)))

(declare-fun b!180651 () Bool)

(declare-fun tail!361 (List!3032) List!3032)

(assert (=> b!180651 (= e!109990 (isPrefix!243 (tail!361 lt!59260) (tail!361 lt!59272)))))

(assert (= (and d!45807 (not res!81875)) b!180649))

(assert (= (and b!180649 res!81873) b!180650))

(assert (= (and b!180650 res!81874) b!180651))

(assert (= (and d!45807 (not res!81876)) b!180652))

(declare-fun m!183077 () Bool)

(assert (=> b!180652 m!183077))

(declare-fun m!183079 () Bool)

(assert (=> b!180652 m!183079))

(declare-fun m!183081 () Bool)

(assert (=> b!180650 m!183081))

(declare-fun m!183083 () Bool)

(assert (=> b!180650 m!183083))

(declare-fun m!183085 () Bool)

(assert (=> b!180651 m!183085))

(declare-fun m!183087 () Bool)

(assert (=> b!180651 m!183087))

(assert (=> b!180651 m!183085))

(assert (=> b!180651 m!183087))

(declare-fun m!183089 () Bool)

(assert (=> b!180651 m!183089))

(assert (=> b!180414 d!45807))

(declare-fun d!45809 () Bool)

(assert (=> d!45809 (isPrefix!243 lt!59260 (++!710 lt!59260 lt!59264))))

(declare-fun lt!59360 () Unit!2764)

(declare-fun choose!1874 (List!3032 List!3032) Unit!2764)

(assert (=> d!45809 (= lt!59360 (choose!1874 lt!59260 lt!59264))))

(assert (=> d!45809 (= (lemmaConcatTwoListThenFirstIsPrefix!138 lt!59260 lt!59264) lt!59360)))

(declare-fun bs!17975 () Bool)

(assert (= bs!17975 d!45809))

(assert (=> bs!17975 m!182781))

(assert (=> bs!17975 m!182781))

(declare-fun m!183091 () Bool)

(assert (=> bs!17975 m!183091))

(declare-fun m!183093 () Bool)

(assert (=> bs!17975 m!183093))

(assert (=> b!180414 d!45809))

(declare-fun b!180681 () Bool)

(declare-fun e!110009 () Bool)

(declare-fun e!110013 () Bool)

(assert (=> b!180681 (= e!110009 e!110013)))

(declare-fun res!81898 () Bool)

(assert (=> b!180681 (=> res!81898 e!110013)))

(declare-fun call!8147 () Bool)

(assert (=> b!180681 (= res!81898 call!8147)))

(declare-fun b!180682 () Bool)

(declare-fun res!81899 () Bool)

(assert (=> b!180682 (=> res!81899 e!110013)))

(assert (=> b!180682 (= res!81899 (not (isEmpty!1370 (tail!361 lt!59260))))))

(declare-fun b!180683 () Bool)

(declare-fun e!110012 () Bool)

(assert (=> b!180683 (= e!110012 e!110009)))

(declare-fun res!81893 () Bool)

(assert (=> b!180683 (=> (not res!81893) (not e!110009))))

(declare-fun lt!59363 () Bool)

(assert (=> b!180683 (= res!81893 (not lt!59363))))

(declare-fun b!180684 () Bool)

(declare-fun e!110008 () Bool)

(assert (=> b!180684 (= e!110008 (= lt!59363 call!8147))))

(declare-fun b!180685 () Bool)

(declare-fun e!110010 () Bool)

(assert (=> b!180685 (= e!110010 (not lt!59363))))

(declare-fun b!180686 () Bool)

(declare-fun res!81900 () Bool)

(assert (=> b!180686 (=> res!81900 e!110012)))

(assert (=> b!180686 (= res!81900 (not ((_ is ElementMatch!771) (regex!547 (rule!1062 (h!8421 tokens!465))))))))

(assert (=> b!180686 (= e!110010 e!110012)))

(declare-fun b!180687 () Bool)

(assert (=> b!180687 (= e!110013 (not (= (head!626 lt!59260) (c!35310 (regex!547 (rule!1062 (h!8421 tokens!465)))))))))

(declare-fun b!180688 () Bool)

(assert (=> b!180688 (= e!110008 e!110010)))

(declare-fun c!35353 () Bool)

(assert (=> b!180688 (= c!35353 ((_ is EmptyLang!771) (regex!547 (rule!1062 (h!8421 tokens!465)))))))

(declare-fun d!45811 () Bool)

(assert (=> d!45811 e!110008))

(declare-fun c!35354 () Bool)

(assert (=> d!45811 (= c!35354 ((_ is EmptyExpr!771) (regex!547 (rule!1062 (h!8421 tokens!465)))))))

(declare-fun e!110007 () Bool)

(assert (=> d!45811 (= lt!59363 e!110007)))

(declare-fun c!35355 () Bool)

(assert (=> d!45811 (= c!35355 (isEmpty!1370 lt!59260))))

(declare-fun validRegex!189 (Regex!771) Bool)

(assert (=> d!45811 (validRegex!189 (regex!547 (rule!1062 (h!8421 tokens!465))))))

(assert (=> d!45811 (= (matchR!109 (regex!547 (rule!1062 (h!8421 tokens!465))) lt!59260) lt!59363)))

(declare-fun b!180689 () Bool)

(declare-fun derivativeStep!82 (Regex!771 C!2464) Regex!771)

(assert (=> b!180689 (= e!110007 (matchR!109 (derivativeStep!82 (regex!547 (rule!1062 (h!8421 tokens!465))) (head!626 lt!59260)) (tail!361 lt!59260)))))

(declare-fun b!180690 () Bool)

(declare-fun res!81895 () Bool)

(assert (=> b!180690 (=> res!81895 e!110012)))

(declare-fun e!110011 () Bool)

(assert (=> b!180690 (= res!81895 e!110011)))

(declare-fun res!81894 () Bool)

(assert (=> b!180690 (=> (not res!81894) (not e!110011))))

(assert (=> b!180690 (= res!81894 lt!59363)))

(declare-fun b!180691 () Bool)

(declare-fun res!81896 () Bool)

(assert (=> b!180691 (=> (not res!81896) (not e!110011))))

(assert (=> b!180691 (= res!81896 (isEmpty!1370 (tail!361 lt!59260)))))

(declare-fun b!180692 () Bool)

(declare-fun res!81897 () Bool)

(assert (=> b!180692 (=> (not res!81897) (not e!110011))))

(assert (=> b!180692 (= res!81897 (not call!8147))))

(declare-fun b!180693 () Bool)

(assert (=> b!180693 (= e!110011 (= (head!626 lt!59260) (c!35310 (regex!547 (rule!1062 (h!8421 tokens!465))))))))

(declare-fun b!180694 () Bool)

(declare-fun nullable!116 (Regex!771) Bool)

(assert (=> b!180694 (= e!110007 (nullable!116 (regex!547 (rule!1062 (h!8421 tokens!465)))))))

(declare-fun bm!8142 () Bool)

(assert (=> bm!8142 (= call!8147 (isEmpty!1370 lt!59260))))

(assert (= (and d!45811 c!35355) b!180694))

(assert (= (and d!45811 (not c!35355)) b!180689))

(assert (= (and d!45811 c!35354) b!180684))

(assert (= (and d!45811 (not c!35354)) b!180688))

(assert (= (and b!180688 c!35353) b!180685))

(assert (= (and b!180688 (not c!35353)) b!180686))

(assert (= (and b!180686 (not res!81900)) b!180690))

(assert (= (and b!180690 res!81894) b!180692))

(assert (= (and b!180692 res!81897) b!180691))

(assert (= (and b!180691 res!81896) b!180693))

(assert (= (and b!180690 (not res!81895)) b!180683))

(assert (= (and b!180683 res!81893) b!180681))

(assert (= (and b!180681 (not res!81898)) b!180682))

(assert (= (and b!180682 (not res!81899)) b!180687))

(assert (= (or b!180684 b!180681 b!180692) bm!8142))

(assert (=> b!180691 m!183085))

(assert (=> b!180691 m!183085))

(declare-fun m!183095 () Bool)

(assert (=> b!180691 m!183095))

(declare-fun m!183097 () Bool)

(assert (=> bm!8142 m!183097))

(assert (=> b!180689 m!183081))

(assert (=> b!180689 m!183081))

(declare-fun m!183099 () Bool)

(assert (=> b!180689 m!183099))

(assert (=> b!180689 m!183085))

(assert (=> b!180689 m!183099))

(assert (=> b!180689 m!183085))

(declare-fun m!183101 () Bool)

(assert (=> b!180689 m!183101))

(assert (=> b!180682 m!183085))

(assert (=> b!180682 m!183085))

(assert (=> b!180682 m!183095))

(assert (=> b!180687 m!183081))

(assert (=> d!45811 m!183097))

(declare-fun m!183103 () Bool)

(assert (=> d!45811 m!183103))

(declare-fun m!183105 () Bool)

(assert (=> b!180694 m!183105))

(assert (=> b!180693 m!183081))

(assert (=> b!180416 d!45811))

(declare-fun lt!59366 () Bool)

(declare-fun d!45813 () Bool)

(declare-fun list!1113 (BalanceConc!1842) List!3034)

(assert (=> d!45813 (= lt!59366 (isEmpty!1368 (list!1113 (_1!1719 (lex!233 thiss!17480 rules!1920 (seqFromList!472 lt!59260))))))))

(declare-fun isEmpty!1376 (Conc!917) Bool)

(assert (=> d!45813 (= lt!59366 (isEmpty!1376 (c!35311 (_1!1719 (lex!233 thiss!17480 rules!1920 (seqFromList!472 lt!59260))))))))

(assert (=> d!45813 (= (isEmpty!1369 (_1!1719 (lex!233 thiss!17480 rules!1920 (seqFromList!472 lt!59260)))) lt!59366)))

(declare-fun bs!17976 () Bool)

(assert (= bs!17976 d!45813))

(declare-fun m!183107 () Bool)

(assert (=> bs!17976 m!183107))

(assert (=> bs!17976 m!183107))

(declare-fun m!183109 () Bool)

(assert (=> bs!17976 m!183109))

(declare-fun m!183111 () Bool)

(assert (=> bs!17976 m!183111))

(assert (=> b!180417 d!45813))

(declare-fun d!45815 () Bool)

(declare-fun e!110025 () Bool)

(assert (=> d!45815 e!110025))

(declare-fun res!81909 () Bool)

(assert (=> d!45815 (=> (not res!81909) (not e!110025))))

(declare-fun e!110024 () Bool)

(assert (=> d!45815 (= res!81909 e!110024)))

(declare-fun c!35360 () Bool)

(declare-fun lt!59387 () tuple2!3006)

(declare-fun size!2476 (BalanceConc!1842) Int)

(assert (=> d!45815 (= c!35360 (> (size!2476 (_1!1719 lt!59387)) 0))))

(declare-fun lexTailRecV2!110 (LexerInterface!433 List!3033 BalanceConc!1840 BalanceConc!1840 BalanceConc!1840 BalanceConc!1842) tuple2!3006)

(assert (=> d!45815 (= lt!59387 (lexTailRecV2!110 thiss!17480 rules!1920 (seqFromList!472 lt!59260) (BalanceConc!1841 Empty!916) (seqFromList!472 lt!59260) (BalanceConc!1843 Empty!917)))))

(assert (=> d!45815 (= (lex!233 thiss!17480 rules!1920 (seqFromList!472 lt!59260)) lt!59387)))

(declare-fun b!180711 () Bool)

(declare-fun e!110026 () Bool)

(assert (=> b!180711 (= e!110026 (not (isEmpty!1369 (_1!1719 lt!59387))))))

(declare-fun b!180712 () Bool)

(assert (=> b!180712 (= e!110024 e!110026)))

(declare-fun res!81910 () Bool)

(declare-fun size!2477 (BalanceConc!1840) Int)

(assert (=> b!180712 (= res!81910 (< (size!2477 (_2!1719 lt!59387)) (size!2477 (seqFromList!472 lt!59260))))))

(assert (=> b!180712 (=> (not res!81910) (not e!110026))))

(declare-fun b!180713 () Bool)

(declare-fun res!81911 () Bool)

(assert (=> b!180713 (=> (not res!81911) (not e!110025))))

(declare-datatypes ((tuple2!3010 0))(
  ( (tuple2!3011 (_1!1721 List!3034) (_2!1721 List!3032)) )
))
(declare-fun lexList!123 (LexerInterface!433 List!3033 List!3032) tuple2!3010)

(assert (=> b!180713 (= res!81911 (= (list!1113 (_1!1719 lt!59387)) (_1!1721 (lexList!123 thiss!17480 rules!1920 (list!1109 (seqFromList!472 lt!59260))))))))

(declare-fun b!180714 () Bool)

(assert (=> b!180714 (= e!110024 (= (_2!1719 lt!59387) (seqFromList!472 lt!59260)))))

(declare-fun b!180715 () Bool)

(assert (=> b!180715 (= e!110025 (= (list!1109 (_2!1719 lt!59387)) (_2!1721 (lexList!123 thiss!17480 rules!1920 (list!1109 (seqFromList!472 lt!59260))))))))

(assert (= (and d!45815 c!35360) b!180712))

(assert (= (and d!45815 (not c!35360)) b!180714))

(assert (= (and b!180712 res!81910) b!180711))

(assert (= (and d!45815 res!81909) b!180713))

(assert (= (and b!180713 res!81911) b!180715))

(declare-fun m!183113 () Bool)

(assert (=> b!180715 m!183113))

(assert (=> b!180715 m!182739))

(declare-fun m!183115 () Bool)

(assert (=> b!180715 m!183115))

(assert (=> b!180715 m!183115))

(declare-fun m!183117 () Bool)

(assert (=> b!180715 m!183117))

(declare-fun m!183119 () Bool)

(assert (=> b!180711 m!183119))

(declare-fun m!183121 () Bool)

(assert (=> b!180712 m!183121))

(assert (=> b!180712 m!182739))

(declare-fun m!183123 () Bool)

(assert (=> b!180712 m!183123))

(declare-fun m!183125 () Bool)

(assert (=> b!180713 m!183125))

(assert (=> b!180713 m!182739))

(assert (=> b!180713 m!183115))

(assert (=> b!180713 m!183115))

(assert (=> b!180713 m!183117))

(declare-fun m!183127 () Bool)

(assert (=> d!45815 m!183127))

(assert (=> d!45815 m!182739))

(assert (=> d!45815 m!182739))

(declare-fun m!183129 () Bool)

(assert (=> d!45815 m!183129))

(assert (=> b!180417 d!45815))

(declare-fun d!45817 () Bool)

(assert (=> d!45817 (= (seqFromList!472 lt!59260) (fromListB!184 lt!59260))))

(declare-fun bs!17977 () Bool)

(assert (= bs!17977 d!45817))

(declare-fun m!183131 () Bool)

(assert (=> bs!17977 m!183131))

(assert (=> b!180417 d!45817))

(declare-fun b!180738 () Bool)

(declare-fun res!81921 () Bool)

(declare-fun e!110039 () Bool)

(assert (=> b!180738 (=> (not res!81921) (not e!110039))))

(declare-fun lt!59400 () List!3032)

(assert (=> b!180738 (= res!81921 (= (size!2475 lt!59400) (+ (size!2475 lt!59260) (size!2475 lt!59273))))))

(declare-fun d!45819 () Bool)

(assert (=> d!45819 e!110039))

(declare-fun res!81920 () Bool)

(assert (=> d!45819 (=> (not res!81920) (not e!110039))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!417 (List!3032) (InoxSet C!2464))

(assert (=> d!45819 (= res!81920 (= (content!417 lt!59400) ((_ map or) (content!417 lt!59260) (content!417 lt!59273))))))

(declare-fun e!110040 () List!3032)

(assert (=> d!45819 (= lt!59400 e!110040)))

(declare-fun c!35367 () Bool)

(assert (=> d!45819 (= c!35367 ((_ is Nil!3022) lt!59260))))

(assert (=> d!45819 (= (++!710 lt!59260 lt!59273) lt!59400)))

(declare-fun b!180736 () Bool)

(assert (=> b!180736 (= e!110040 lt!59273)))

(declare-fun b!180737 () Bool)

(assert (=> b!180737 (= e!110040 (Cons!3022 (h!8419 lt!59260) (++!710 (t!28242 lt!59260) lt!59273)))))

(declare-fun b!180739 () Bool)

(assert (=> b!180739 (= e!110039 (or (not (= lt!59273 Nil!3022)) (= lt!59400 lt!59260)))))

(assert (= (and d!45819 c!35367) b!180736))

(assert (= (and d!45819 (not c!35367)) b!180737))

(assert (= (and d!45819 res!81920) b!180738))

(assert (= (and b!180738 res!81921) b!180739))

(declare-fun m!183133 () Bool)

(assert (=> b!180738 m!183133))

(assert (=> b!180738 m!183079))

(declare-fun m!183135 () Bool)

(assert (=> b!180738 m!183135))

(declare-fun m!183137 () Bool)

(assert (=> d!45819 m!183137))

(declare-fun m!183139 () Bool)

(assert (=> d!45819 m!183139))

(declare-fun m!183141 () Bool)

(assert (=> d!45819 m!183141))

(declare-fun m!183143 () Bool)

(assert (=> b!180737 m!183143))

(assert (=> b!180397 d!45819))

(declare-fun d!45821 () Bool)

(assert (=> d!45821 (= (get!849 lt!59268) (v!13847 lt!59268))))

(assert (=> b!180420 d!45821))

(declare-fun d!45823 () Bool)

(assert (=> d!45823 (= (head!624 tokens!465) (h!8421 tokens!465))))

(assert (=> b!180420 d!45823))

(declare-fun d!45825 () Bool)

(declare-fun res!81926 () Bool)

(declare-fun e!110045 () Bool)

(assert (=> d!45825 (=> res!81926 e!110045)))

(assert (=> d!45825 (= res!81926 (not ((_ is Cons!3023) rules!1920)))))

(assert (=> d!45825 (= (sepAndNonSepRulesDisjointChars!136 rules!1920 rules!1920) e!110045)))

(declare-fun b!180744 () Bool)

(declare-fun e!110046 () Bool)

(assert (=> b!180744 (= e!110045 e!110046)))

(declare-fun res!81927 () Bool)

(assert (=> b!180744 (=> (not res!81927) (not e!110046))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!47 (Rule!894 List!3033) Bool)

(assert (=> b!180744 (= res!81927 (ruleDisjointCharsFromAllFromOtherType!47 (h!8420 rules!1920) rules!1920))))

(declare-fun b!180745 () Bool)

(assert (=> b!180745 (= e!110046 (sepAndNonSepRulesDisjointChars!136 rules!1920 (t!28243 rules!1920)))))

(assert (= (and d!45825 (not res!81926)) b!180744))

(assert (= (and b!180744 res!81927) b!180745))

(declare-fun m!183145 () Bool)

(assert (=> b!180744 m!183145))

(declare-fun m!183147 () Bool)

(assert (=> b!180745 m!183147))

(assert (=> b!180419 d!45825))

(declare-fun d!45827 () Bool)

(declare-fun lt!59436 () Bool)

(declare-fun e!110080 () Bool)

(assert (=> d!45827 (= lt!59436 e!110080)))

(declare-fun res!81964 () Bool)

(assert (=> d!45827 (=> (not res!81964) (not e!110080))))

(assert (=> d!45827 (= res!81964 (= (list!1113 (_1!1719 (lex!233 thiss!17480 rules!1920 (print!164 thiss!17480 (singletonSeq!99 separatorToken!170))))) (list!1113 (singletonSeq!99 separatorToken!170))))))

(declare-fun e!110081 () Bool)

(assert (=> d!45827 (= lt!59436 e!110081)))

(declare-fun res!81965 () Bool)

(assert (=> d!45827 (=> (not res!81965) (not e!110081))))

(declare-fun lt!59437 () tuple2!3006)

(assert (=> d!45827 (= res!81965 (= (size!2476 (_1!1719 lt!59437)) 1))))

(assert (=> d!45827 (= lt!59437 (lex!233 thiss!17480 rules!1920 (print!164 thiss!17480 (singletonSeq!99 separatorToken!170))))))

(assert (=> d!45827 (not (isEmpty!1367 rules!1920))))

(assert (=> d!45827 (= (rulesProduceIndividualToken!182 thiss!17480 rules!1920 separatorToken!170) lt!59436)))

(declare-fun b!180810 () Bool)

(declare-fun res!81963 () Bool)

(assert (=> b!180810 (=> (not res!81963) (not e!110081))))

(declare-fun apply!451 (BalanceConc!1842 Int) Token!838)

(assert (=> b!180810 (= res!81963 (= (apply!451 (_1!1719 lt!59437) 0) separatorToken!170))))

(declare-fun b!180811 () Bool)

(declare-fun isEmpty!1377 (BalanceConc!1840) Bool)

(assert (=> b!180811 (= e!110081 (isEmpty!1377 (_2!1719 lt!59437)))))

(declare-fun b!180812 () Bool)

(assert (=> b!180812 (= e!110080 (isEmpty!1377 (_2!1719 (lex!233 thiss!17480 rules!1920 (print!164 thiss!17480 (singletonSeq!99 separatorToken!170))))))))

(assert (= (and d!45827 res!81965) b!180810))

(assert (= (and b!180810 res!81963) b!180811))

(assert (= (and d!45827 res!81964) b!180812))

(declare-fun m!183255 () Bool)

(assert (=> d!45827 m!183255))

(declare-fun m!183257 () Bool)

(assert (=> d!45827 m!183257))

(declare-fun m!183259 () Bool)

(assert (=> d!45827 m!183259))

(declare-fun m!183261 () Bool)

(assert (=> d!45827 m!183261))

(declare-fun m!183263 () Bool)

(assert (=> d!45827 m!183263))

(assert (=> d!45827 m!182705))

(assert (=> d!45827 m!183261))

(assert (=> d!45827 m!183257))

(assert (=> d!45827 m!183261))

(declare-fun m!183265 () Bool)

(assert (=> d!45827 m!183265))

(declare-fun m!183267 () Bool)

(assert (=> b!180810 m!183267))

(declare-fun m!183269 () Bool)

(assert (=> b!180811 m!183269))

(assert (=> b!180812 m!183261))

(assert (=> b!180812 m!183261))

(assert (=> b!180812 m!183257))

(assert (=> b!180812 m!183257))

(assert (=> b!180812 m!183259))

(declare-fun m!183271 () Bool)

(assert (=> b!180812 m!183271))

(assert (=> b!180398 d!45827))

(declare-fun b!180823 () Bool)

(declare-fun e!110089 () Bool)

(declare-fun inv!16 (TokenValue!569) Bool)

(assert (=> b!180823 (= e!110089 (inv!16 (value!19905 separatorToken!170)))))

(declare-fun d!45843 () Bool)

(declare-fun c!35385 () Bool)

(assert (=> d!45843 (= c!35385 ((_ is IntegerValue!1707) (value!19905 separatorToken!170)))))

(assert (=> d!45843 (= (inv!21 (value!19905 separatorToken!170)) e!110089)))

(declare-fun b!180824 () Bool)

(declare-fun res!81968 () Bool)

(declare-fun e!110088 () Bool)

(assert (=> b!180824 (=> res!81968 e!110088)))

(assert (=> b!180824 (= res!81968 (not ((_ is IntegerValue!1709) (value!19905 separatorToken!170))))))

(declare-fun e!110090 () Bool)

(assert (=> b!180824 (= e!110090 e!110088)))

(declare-fun b!180825 () Bool)

(declare-fun inv!17 (TokenValue!569) Bool)

(assert (=> b!180825 (= e!110090 (inv!17 (value!19905 separatorToken!170)))))

(declare-fun b!180826 () Bool)

(declare-fun inv!15 (TokenValue!569) Bool)

(assert (=> b!180826 (= e!110088 (inv!15 (value!19905 separatorToken!170)))))

(declare-fun b!180827 () Bool)

(assert (=> b!180827 (= e!110089 e!110090)))

(declare-fun c!35386 () Bool)

(assert (=> b!180827 (= c!35386 ((_ is IntegerValue!1708) (value!19905 separatorToken!170)))))

(assert (= (and d!45843 c!35385) b!180823))

(assert (= (and d!45843 (not c!35385)) b!180827))

(assert (= (and b!180827 c!35386) b!180825))

(assert (= (and b!180827 (not c!35386)) b!180824))

(assert (= (and b!180824 (not res!81968)) b!180826))

(declare-fun m!183273 () Bool)

(assert (=> b!180823 m!183273))

(declare-fun m!183275 () Bool)

(assert (=> b!180825 m!183275))

(declare-fun m!183277 () Bool)

(assert (=> b!180826 m!183277))

(assert (=> b!180421 d!45843))

(declare-fun bs!17986 () Bool)

(declare-fun d!45845 () Bool)

(assert (= bs!17986 (and d!45845 b!180422)))

(declare-fun lambda!5338 () Int)

(assert (=> bs!17986 (not (= lambda!5338 lambda!5323))))

(declare-fun bs!17987 () Bool)

(assert (= bs!17987 (and d!45845 b!180404)))

(assert (=> bs!17987 (= lambda!5338 lambda!5324)))

(declare-fun b!180842 () Bool)

(declare-fun e!110102 () Bool)

(assert (=> b!180842 (= e!110102 true)))

(declare-fun b!180841 () Bool)

(declare-fun e!110101 () Bool)

(assert (=> b!180841 (= e!110101 e!110102)))

(declare-fun b!180840 () Bool)

(declare-fun e!110100 () Bool)

(assert (=> b!180840 (= e!110100 e!110101)))

(assert (=> d!45845 e!110100))

(assert (= b!180841 b!180842))

(assert (= b!180840 b!180841))

(assert (= (and d!45845 ((_ is Cons!3023) rules!1920)) b!180840))

(assert (=> b!180842 (< (dynLambda!1207 order!1757 (toValue!1218 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5338))))

(assert (=> b!180842 (< (dynLambda!1209 order!1761 (toChars!1077 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5338))))

(assert (=> d!45845 true))

(declare-fun e!110099 () Bool)

(assert (=> d!45845 e!110099))

(declare-fun res!81980 () Bool)

(assert (=> d!45845 (=> (not res!81980) (not e!110099))))

(declare-fun lt!59446 () Bool)

(assert (=> d!45845 (= res!81980 (= lt!59446 (forall!615 (list!1113 lt!59274) lambda!5338)))))

(declare-fun forall!617 (BalanceConc!1842 Int) Bool)

(assert (=> d!45845 (= lt!59446 (forall!617 lt!59274 lambda!5338))))

(assert (=> d!45845 (not (isEmpty!1367 rules!1920))))

(assert (=> d!45845 (= (rulesProduceEachTokenIndividually!225 thiss!17480 rules!1920 lt!59274) lt!59446)))

(declare-fun b!180839 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!131 (LexerInterface!433 List!3033 List!3034) Bool)

(assert (=> b!180839 (= e!110099 (= lt!59446 (rulesProduceEachTokenIndividuallyList!131 thiss!17480 rules!1920 (list!1113 lt!59274))))))

(assert (= (and d!45845 res!81980) b!180839))

(declare-fun m!183297 () Bool)

(assert (=> d!45845 m!183297))

(assert (=> d!45845 m!183297))

(declare-fun m!183299 () Bool)

(assert (=> d!45845 m!183299))

(declare-fun m!183301 () Bool)

(assert (=> d!45845 m!183301))

(assert (=> d!45845 m!182705))

(assert (=> b!180839 m!183297))

(assert (=> b!180839 m!183297))

(declare-fun m!183303 () Bool)

(assert (=> b!180839 m!183303))

(assert (=> b!180399 d!45845))

(declare-fun d!45849 () Bool)

(declare-fun fromListB!185 (List!3034) BalanceConc!1842)

(assert (=> d!45849 (= (seqFromList!471 tokens!465) (fromListB!185 tokens!465))))

(declare-fun bs!17988 () Bool)

(assert (= bs!17988 d!45849))

(declare-fun m!183305 () Bool)

(assert (=> bs!17988 m!183305))

(assert (=> b!180399 d!45849))

(declare-fun d!45851 () Bool)

(declare-fun lt!59449 () BalanceConc!1840)

(assert (=> d!45851 (= (list!1109 lt!59449) (printList!117 thiss!17480 (list!1113 lt!59263)))))

(assert (=> d!45851 (= lt!59449 (printTailRec!127 thiss!17480 lt!59263 0 (BalanceConc!1841 Empty!916)))))

(assert (=> d!45851 (= (print!164 thiss!17480 lt!59263) lt!59449)))

(declare-fun bs!17989 () Bool)

(assert (= bs!17989 d!45851))

(declare-fun m!183307 () Bool)

(assert (=> bs!17989 m!183307))

(declare-fun m!183309 () Bool)

(assert (=> bs!17989 m!183309))

(assert (=> bs!17989 m!183309))

(declare-fun m!183311 () Bool)

(assert (=> bs!17989 m!183311))

(assert (=> bs!17989 m!182713))

(assert (=> b!180401 d!45851))

(declare-fun d!45853 () Bool)

(assert (=> d!45853 (= (list!1109 lt!59267) (list!1112 (c!35309 lt!59267)))))

(declare-fun bs!17990 () Bool)

(assert (= bs!17990 d!45853))

(declare-fun m!183313 () Bool)

(assert (=> bs!17990 m!183313))

(assert (=> b!180401 d!45853))

(declare-fun d!45855 () Bool)

(declare-fun lt!59469 () BalanceConc!1840)

(declare-fun printListTailRec!66 (LexerInterface!433 List!3034 List!3032) List!3032)

(declare-fun dropList!98 (BalanceConc!1842 Int) List!3034)

(assert (=> d!45855 (= (list!1109 lt!59469) (printListTailRec!66 thiss!17480 (dropList!98 lt!59263 0) (list!1109 (BalanceConc!1841 Empty!916))))))

(declare-fun e!110107 () BalanceConc!1840)

(assert (=> d!45855 (= lt!59469 e!110107)))

(declare-fun c!35389 () Bool)

(assert (=> d!45855 (= c!35389 (>= 0 (size!2476 lt!59263)))))

(declare-fun e!110108 () Bool)

(assert (=> d!45855 e!110108))

(declare-fun res!81983 () Bool)

(assert (=> d!45855 (=> (not res!81983) (not e!110108))))

(assert (=> d!45855 (= res!81983 (>= 0 0))))

(assert (=> d!45855 (= (printTailRec!127 thiss!17480 lt!59263 0 (BalanceConc!1841 Empty!916)) lt!59469)))

(declare-fun b!180849 () Bool)

(assert (=> b!180849 (= e!110108 (<= 0 (size!2476 lt!59263)))))

(declare-fun b!180850 () Bool)

(assert (=> b!180850 (= e!110107 (BalanceConc!1841 Empty!916))))

(declare-fun b!180851 () Bool)

(declare-fun ++!712 (BalanceConc!1840 BalanceConc!1840) BalanceConc!1840)

(assert (=> b!180851 (= e!110107 (printTailRec!127 thiss!17480 lt!59263 (+ 0 1) (++!712 (BalanceConc!1841 Empty!916) (charsOf!202 (apply!451 lt!59263 0)))))))

(declare-fun lt!59465 () List!3034)

(assert (=> b!180851 (= lt!59465 (list!1113 lt!59263))))

(declare-fun lt!59466 () Unit!2764)

(declare-fun lemmaDropApply!138 (List!3034 Int) Unit!2764)

(assert (=> b!180851 (= lt!59466 (lemmaDropApply!138 lt!59465 0))))

(declare-fun drop!151 (List!3034 Int) List!3034)

(declare-fun apply!452 (List!3034 Int) Token!838)

(assert (=> b!180851 (= (head!624 (drop!151 lt!59465 0)) (apply!452 lt!59465 0))))

(declare-fun lt!59468 () Unit!2764)

(assert (=> b!180851 (= lt!59468 lt!59466)))

(declare-fun lt!59467 () List!3034)

(assert (=> b!180851 (= lt!59467 (list!1113 lt!59263))))

(declare-fun lt!59470 () Unit!2764)

(declare-fun lemmaDropTail!130 (List!3034 Int) Unit!2764)

(assert (=> b!180851 (= lt!59470 (lemmaDropTail!130 lt!59467 0))))

(declare-fun tail!362 (List!3034) List!3034)

(assert (=> b!180851 (= (tail!362 (drop!151 lt!59467 0)) (drop!151 lt!59467 (+ 0 1)))))

(declare-fun lt!59464 () Unit!2764)

(assert (=> b!180851 (= lt!59464 lt!59470)))

(assert (= (and d!45855 res!81983) b!180849))

(assert (= (and d!45855 c!35389) b!180850))

(assert (= (and d!45855 (not c!35389)) b!180851))

(declare-fun m!183315 () Bool)

(assert (=> d!45855 m!183315))

(declare-fun m!183317 () Bool)

(assert (=> d!45855 m!183317))

(declare-fun m!183319 () Bool)

(assert (=> d!45855 m!183319))

(assert (=> d!45855 m!183317))

(declare-fun m!183321 () Bool)

(assert (=> d!45855 m!183321))

(declare-fun m!183323 () Bool)

(assert (=> d!45855 m!183323))

(assert (=> d!45855 m!183319))

(assert (=> b!180849 m!183323))

(declare-fun m!183325 () Bool)

(assert (=> b!180851 m!183325))

(declare-fun m!183327 () Bool)

(assert (=> b!180851 m!183327))

(assert (=> b!180851 m!183309))

(declare-fun m!183329 () Bool)

(assert (=> b!180851 m!183329))

(declare-fun m!183331 () Bool)

(assert (=> b!180851 m!183331))

(declare-fun m!183333 () Bool)

(assert (=> b!180851 m!183333))

(assert (=> b!180851 m!183329))

(declare-fun m!183335 () Bool)

(assert (=> b!180851 m!183335))

(declare-fun m!183337 () Bool)

(assert (=> b!180851 m!183337))

(declare-fun m!183339 () Bool)

(assert (=> b!180851 m!183339))

(declare-fun m!183341 () Bool)

(assert (=> b!180851 m!183341))

(declare-fun m!183343 () Bool)

(assert (=> b!180851 m!183343))

(assert (=> b!180851 m!183339))

(declare-fun m!183345 () Bool)

(assert (=> b!180851 m!183345))

(assert (=> b!180851 m!183343))

(assert (=> b!180851 m!183337))

(assert (=> b!180851 m!183331))

(declare-fun m!183347 () Bool)

(assert (=> b!180851 m!183347))

(assert (=> b!180401 d!45855))

(declare-fun d!45857 () Bool)

(declare-fun e!110113 () Bool)

(assert (=> d!45857 e!110113))

(declare-fun res!81988 () Bool)

(assert (=> d!45857 (=> (not res!81988) (not e!110113))))

(declare-fun lt!59475 () BalanceConc!1842)

(assert (=> d!45857 (= res!81988 (= (list!1113 lt!59475) (Cons!3024 (h!8421 tokens!465) Nil!3024)))))

(declare-fun singleton!47 (Token!838) BalanceConc!1842)

(assert (=> d!45857 (= lt!59475 (singleton!47 (h!8421 tokens!465)))))

(assert (=> d!45857 (= (singletonSeq!99 (h!8421 tokens!465)) lt!59475)))

(declare-fun b!180854 () Bool)

(declare-fun isBalanced!252 (Conc!917) Bool)

(assert (=> b!180854 (= e!110113 (isBalanced!252 (c!35311 lt!59475)))))

(assert (= (and d!45857 res!81988) b!180854))

(declare-fun m!183349 () Bool)

(assert (=> d!45857 m!183349))

(declare-fun m!183351 () Bool)

(assert (=> d!45857 m!183351))

(declare-fun m!183353 () Bool)

(assert (=> b!180854 m!183353))

(assert (=> b!180401 d!45857))

(declare-fun d!45859 () Bool)

(declare-fun c!35392 () Bool)

(assert (=> d!45859 (= c!35392 ((_ is Cons!3024) (Cons!3024 (h!8421 tokens!465) Nil!3024)))))

(declare-fun e!110116 () List!3032)

(assert (=> d!45859 (= (printList!117 thiss!17480 (Cons!3024 (h!8421 tokens!465) Nil!3024)) e!110116)))

(declare-fun b!180861 () Bool)

(assert (=> b!180861 (= e!110116 (++!710 (list!1109 (charsOf!202 (h!8421 (Cons!3024 (h!8421 tokens!465) Nil!3024)))) (printList!117 thiss!17480 (t!28244 (Cons!3024 (h!8421 tokens!465) Nil!3024)))))))

(declare-fun b!180862 () Bool)

(assert (=> b!180862 (= e!110116 Nil!3022)))

(assert (= (and d!45859 c!35392) b!180861))

(assert (= (and d!45859 (not c!35392)) b!180862))

(declare-fun m!183355 () Bool)

(assert (=> b!180861 m!183355))

(assert (=> b!180861 m!183355))

(declare-fun m!183357 () Bool)

(assert (=> b!180861 m!183357))

(declare-fun m!183359 () Bool)

(assert (=> b!180861 m!183359))

(assert (=> b!180861 m!183357))

(assert (=> b!180861 m!183359))

(declare-fun m!183361 () Bool)

(assert (=> b!180861 m!183361))

(assert (=> b!180401 d!45859))

(declare-fun d!45861 () Bool)

(declare-fun res!81994 () Bool)

(declare-fun e!110125 () Bool)

(assert (=> d!45861 (=> res!81994 e!110125)))

(assert (=> d!45861 (= res!81994 ((_ is Nil!3024) tokens!465))))

(assert (=> d!45861 (= (forall!615 tokens!465 lambda!5323) e!110125)))

(declare-fun b!180871 () Bool)

(declare-fun e!110126 () Bool)

(assert (=> b!180871 (= e!110125 e!110126)))

(declare-fun res!81995 () Bool)

(assert (=> b!180871 (=> (not res!81995) (not e!110126))))

(declare-fun dynLambda!1213 (Int Token!838) Bool)

(assert (=> b!180871 (= res!81995 (dynLambda!1213 lambda!5323 (h!8421 tokens!465)))))

(declare-fun b!180872 () Bool)

(assert (=> b!180872 (= e!110126 (forall!615 (t!28244 tokens!465) lambda!5323))))

(assert (= (and d!45861 (not res!81994)) b!180871))

(assert (= (and b!180871 res!81995) b!180872))

(declare-fun b_lambda!4323 () Bool)

(assert (=> (not b_lambda!4323) (not b!180871)))

(declare-fun m!183375 () Bool)

(assert (=> b!180871 m!183375))

(declare-fun m!183377 () Bool)

(assert (=> b!180872 m!183377))

(assert (=> b!180422 d!45861))

(declare-fun d!45869 () Bool)

(declare-fun res!82003 () Bool)

(declare-fun e!110130 () Bool)

(assert (=> d!45869 (=> (not res!82003) (not e!110130))))

(assert (=> d!45869 (= res!82003 (not (isEmpty!1370 (originalCharacters!590 separatorToken!170))))))

(assert (=> d!45869 (= (inv!3856 separatorToken!170) e!110130)))

(declare-fun b!180882 () Bool)

(declare-fun res!82004 () Bool)

(assert (=> b!180882 (=> (not res!82004) (not e!110130))))

(assert (=> b!180882 (= res!82004 (= (originalCharacters!590 separatorToken!170) (list!1109 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (value!19905 separatorToken!170)))))))

(declare-fun b!180883 () Bool)

(assert (=> b!180883 (= e!110130 (= (size!2471 separatorToken!170) (size!2475 (originalCharacters!590 separatorToken!170))))))

(assert (= (and d!45869 res!82003) b!180882))

(assert (= (and b!180882 res!82004) b!180883))

(declare-fun b_lambda!4325 () Bool)

(assert (=> (not b_lambda!4325) (not b!180882)))

(declare-fun tb!7555 () Bool)

(declare-fun t!28281 () Bool)

(assert (=> (and b!180429 (= (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170)))) t!28281) tb!7555))

(declare-fun b!180884 () Bool)

(declare-fun e!110131 () Bool)

(declare-fun tp!86275 () Bool)

(assert (=> b!180884 (= e!110131 (and (inv!3859 (c!35309 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (value!19905 separatorToken!170)))) tp!86275))))

(declare-fun result!10358 () Bool)

(assert (=> tb!7555 (= result!10358 (and (inv!3860 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (value!19905 separatorToken!170))) e!110131))))

(assert (= tb!7555 b!180884))

(declare-fun m!183379 () Bool)

(assert (=> b!180884 m!183379))

(declare-fun m!183381 () Bool)

(assert (=> tb!7555 m!183381))

(assert (=> b!180882 t!28281))

(declare-fun b_and!12351 () Bool)

(assert (= b_and!12333 (and (=> t!28281 result!10358) b_and!12351)))

(declare-fun t!28283 () Bool)

(declare-fun tb!7557 () Bool)

(assert (=> (and b!180418 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170)))) t!28283) tb!7557))

(declare-fun result!10360 () Bool)

(assert (= result!10360 result!10358))

(assert (=> b!180882 t!28283))

(declare-fun b_and!12353 () Bool)

(assert (= b_and!12335 (and (=> t!28283 result!10360) b_and!12353)))

(declare-fun t!28285 () Bool)

(declare-fun tb!7559 () Bool)

(assert (=> (and b!180402 (= (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170)))) t!28285) tb!7559))

(declare-fun result!10362 () Bool)

(assert (= result!10362 result!10358))

(assert (=> b!180882 t!28285))

(declare-fun b_and!12355 () Bool)

(assert (= b_and!12337 (and (=> t!28285 result!10362) b_and!12355)))

(declare-fun m!183383 () Bool)

(assert (=> d!45869 m!183383))

(declare-fun m!183385 () Bool)

(assert (=> b!180882 m!183385))

(assert (=> b!180882 m!183385))

(declare-fun m!183387 () Bool)

(assert (=> b!180882 m!183387))

(declare-fun m!183389 () Bool)

(assert (=> b!180883 m!183389))

(assert (=> start!19506 d!45869))

(declare-fun d!45871 () Bool)

(assert (=> d!45871 (= (seqFromList!471 (t!28244 tokens!465)) (fromListB!185 (t!28244 tokens!465)))))

(declare-fun bs!17998 () Bool)

(assert (= bs!17998 d!45871))

(declare-fun m!183393 () Bool)

(assert (=> bs!17998 m!183393))

(assert (=> b!180424 d!45871))

(declare-fun d!45873 () Bool)

(assert (=> d!45873 (= (list!1109 (charsOf!202 separatorToken!170)) (list!1112 (c!35309 (charsOf!202 separatorToken!170))))))

(declare-fun bs!17999 () Bool)

(assert (= bs!17999 d!45873))

(declare-fun m!183399 () Bool)

(assert (=> bs!17999 m!183399))

(assert (=> b!180424 d!45873))

(declare-fun d!45875 () Bool)

(assert (=> d!45875 (= (list!1109 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 (seqFromList!471 (t!28244 tokens!465)) separatorToken!170 0)) (list!1112 (c!35309 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 (seqFromList!471 (t!28244 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!18000 () Bool)

(assert (= bs!18000 d!45875))

(declare-fun m!183403 () Bool)

(assert (=> bs!18000 m!183403))

(assert (=> b!180424 d!45875))

(declare-fun b!180887 () Bool)

(declare-fun res!82006 () Bool)

(declare-fun e!110132 () Bool)

(assert (=> b!180887 (=> (not res!82006) (not e!110132))))

(declare-fun lt!59482 () List!3032)

(assert (=> b!180887 (= res!82006 (= (size!2475 lt!59482) (+ (size!2475 lt!59260) (size!2475 lt!59271))))))

(declare-fun d!45877 () Bool)

(assert (=> d!45877 e!110132))

(declare-fun res!82005 () Bool)

(assert (=> d!45877 (=> (not res!82005) (not e!110132))))

(assert (=> d!45877 (= res!82005 (= (content!417 lt!59482) ((_ map or) (content!417 lt!59260) (content!417 lt!59271))))))

(declare-fun e!110133 () List!3032)

(assert (=> d!45877 (= lt!59482 e!110133)))

(declare-fun c!35394 () Bool)

(assert (=> d!45877 (= c!35394 ((_ is Nil!3022) lt!59260))))

(assert (=> d!45877 (= (++!710 lt!59260 lt!59271) lt!59482)))

(declare-fun b!180885 () Bool)

(assert (=> b!180885 (= e!110133 lt!59271)))

(declare-fun b!180886 () Bool)

(assert (=> b!180886 (= e!110133 (Cons!3022 (h!8419 lt!59260) (++!710 (t!28242 lt!59260) lt!59271)))))

(declare-fun b!180888 () Bool)

(assert (=> b!180888 (= e!110132 (or (not (= lt!59271 Nil!3022)) (= lt!59482 lt!59260)))))

(assert (= (and d!45877 c!35394) b!180885))

(assert (= (and d!45877 (not c!35394)) b!180886))

(assert (= (and d!45877 res!82005) b!180887))

(assert (= (and b!180887 res!82006) b!180888))

(declare-fun m!183415 () Bool)

(assert (=> b!180887 m!183415))

(assert (=> b!180887 m!183079))

(declare-fun m!183417 () Bool)

(assert (=> b!180887 m!183417))

(declare-fun m!183419 () Bool)

(assert (=> d!45877 m!183419))

(assert (=> d!45877 m!183139))

(declare-fun m!183421 () Bool)

(assert (=> d!45877 m!183421))

(declare-fun m!183425 () Bool)

(assert (=> b!180886 m!183425))

(assert (=> b!180424 d!45877))

(declare-fun b!180891 () Bool)

(declare-fun res!82008 () Bool)

(declare-fun e!110134 () Bool)

(assert (=> b!180891 (=> (not res!82008) (not e!110134))))

(declare-fun lt!59483 () List!3032)

(assert (=> b!180891 (= res!82008 (= (size!2475 lt!59483) (+ (size!2475 lt!59271) (size!2475 lt!59273))))))

(declare-fun d!45879 () Bool)

(assert (=> d!45879 e!110134))

(declare-fun res!82007 () Bool)

(assert (=> d!45879 (=> (not res!82007) (not e!110134))))

(assert (=> d!45879 (= res!82007 (= (content!417 lt!59483) ((_ map or) (content!417 lt!59271) (content!417 lt!59273))))))

(declare-fun e!110135 () List!3032)

(assert (=> d!45879 (= lt!59483 e!110135)))

(declare-fun c!35395 () Bool)

(assert (=> d!45879 (= c!35395 ((_ is Nil!3022) lt!59271))))

(assert (=> d!45879 (= (++!710 lt!59271 lt!59273) lt!59483)))

(declare-fun b!180889 () Bool)

(assert (=> b!180889 (= e!110135 lt!59273)))

(declare-fun b!180890 () Bool)

(assert (=> b!180890 (= e!110135 (Cons!3022 (h!8419 lt!59271) (++!710 (t!28242 lt!59271) lt!59273)))))

(declare-fun b!180892 () Bool)

(assert (=> b!180892 (= e!110134 (or (not (= lt!59273 Nil!3022)) (= lt!59483 lt!59271)))))

(assert (= (and d!45879 c!35395) b!180889))

(assert (= (and d!45879 (not c!35395)) b!180890))

(assert (= (and d!45879 res!82007) b!180891))

(assert (= (and b!180891 res!82008) b!180892))

(declare-fun m!183439 () Bool)

(assert (=> b!180891 m!183439))

(assert (=> b!180891 m!183417))

(assert (=> b!180891 m!183135))

(declare-fun m!183441 () Bool)

(assert (=> d!45879 m!183441))

(assert (=> d!45879 m!183421))

(assert (=> d!45879 m!183141))

(declare-fun m!183443 () Bool)

(assert (=> b!180890 m!183443))

(assert (=> b!180424 d!45879))

(declare-fun bs!18005 () Bool)

(declare-fun b!180945 () Bool)

(assert (= bs!18005 (and b!180945 b!180422)))

(declare-fun lambda!5346 () Int)

(assert (=> bs!18005 (not (= lambda!5346 lambda!5323))))

(declare-fun bs!18006 () Bool)

(assert (= bs!18006 (and b!180945 b!180404)))

(assert (=> bs!18006 (= lambda!5346 lambda!5324)))

(declare-fun bs!18007 () Bool)

(assert (= bs!18007 (and b!180945 d!45845)))

(assert (=> bs!18007 (= lambda!5346 lambda!5338)))

(declare-fun b!180953 () Bool)

(declare-fun e!110174 () Bool)

(assert (=> b!180953 (= e!110174 true)))

(declare-fun b!180952 () Bool)

(declare-fun e!110173 () Bool)

(assert (=> b!180952 (= e!110173 e!110174)))

(declare-fun b!180951 () Bool)

(declare-fun e!110172 () Bool)

(assert (=> b!180951 (= e!110172 e!110173)))

(assert (=> b!180945 e!110172))

(assert (= b!180952 b!180953))

(assert (= b!180951 b!180952))

(assert (= (and b!180945 ((_ is Cons!3023) rules!1920)) b!180951))

(assert (=> b!180953 (< (dynLambda!1207 order!1757 (toValue!1218 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5346))))

(assert (=> b!180953 (< (dynLambda!1209 order!1761 (toChars!1077 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5346))))

(assert (=> b!180945 true))

(declare-fun b!180943 () Bool)

(declare-fun e!110168 () List!3032)

(assert (=> b!180943 (= e!110168 Nil!3022)))

(assert (=> b!180943 (= (print!164 thiss!17480 (singletonSeq!99 (h!8421 (t!28244 tokens!465)))) (printTailRec!127 thiss!17480 (singletonSeq!99 (h!8421 (t!28244 tokens!465))) 0 (BalanceConc!1841 Empty!916)))))

(declare-fun lt!59530 () Unit!2764)

(declare-fun Unit!2770 () Unit!2764)

(assert (=> b!180943 (= lt!59530 Unit!2770)))

(declare-fun call!8180 () List!3032)

(declare-fun lt!59529 () Unit!2764)

(declare-fun lt!59532 () List!3032)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!46 (LexerInterface!433 List!3033 List!3032 List!3032) Unit!2764)

(assert (=> b!180943 (= lt!59529 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!46 thiss!17480 rules!1920 call!8180 lt!59532))))

(assert (=> b!180943 false))

(declare-fun lt!59528 () Unit!2764)

(declare-fun Unit!2773 () Unit!2764)

(assert (=> b!180943 (= lt!59528 Unit!2773)))

(declare-fun b!180944 () Bool)

(declare-fun e!110171 () List!3032)

(declare-fun call!8177 () List!3032)

(assert (=> b!180944 (= e!110171 call!8177)))

(declare-fun e!110170 () List!3032)

(assert (=> b!180945 (= e!110170 e!110171)))

(declare-fun lt!59527 () Unit!2764)

(assert (=> b!180945 (= lt!59527 (forallContained!114 (t!28244 tokens!465) lambda!5346 (h!8421 (t!28244 tokens!465))))))

(assert (=> b!180945 (= lt!59532 (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 (t!28244 (t!28244 tokens!465)) separatorToken!170))))

(declare-fun lt!59531 () Option!373)

(assert (=> b!180945 (= lt!59531 (maxPrefix!163 thiss!17480 rules!1920 (++!710 (list!1109 (charsOf!202 (h!8421 (t!28244 tokens!465)))) lt!59532)))))

(declare-fun c!35413 () Bool)

(assert (=> b!180945 (= c!35413 (and ((_ is Some!372) lt!59531) (= (_1!1718 (v!13847 lt!59531)) (h!8421 (t!28244 tokens!465)))))))

(declare-fun call!8179 () List!3032)

(declare-fun call!8178 () BalanceConc!1840)

(declare-fun bm!8172 () Bool)

(declare-fun call!8181 () BalanceConc!1840)

(assert (=> bm!8172 (= call!8179 (list!1109 (ite c!35413 call!8178 call!8181)))))

(declare-fun bm!8173 () Bool)

(assert (=> bm!8173 (= call!8177 (++!710 call!8179 (ite c!35413 lt!59532 call!8180)))))

(declare-fun bm!8174 () Bool)

(declare-fun e!110169 () BalanceConc!1840)

(assert (=> bm!8174 (= call!8180 (list!1109 e!110169))))

(declare-fun c!35416 () Bool)

(declare-fun c!35414 () Bool)

(assert (=> bm!8174 (= c!35416 c!35414)))

(declare-fun bm!8175 () Bool)

(assert (=> bm!8175 (= call!8181 call!8178)))

(declare-fun b!180947 () Bool)

(assert (=> b!180947 (= e!110170 Nil!3022)))

(declare-fun bm!8176 () Bool)

(assert (=> bm!8176 (= call!8178 (charsOf!202 (h!8421 (t!28244 tokens!465))))))

(declare-fun b!180948 () Bool)

(assert (=> b!180948 (= e!110168 (++!710 call!8177 lt!59532))))

(declare-fun b!180949 () Bool)

(assert (=> b!180949 (= c!35414 (and ((_ is Some!372) lt!59531) (not (= (_1!1718 (v!13847 lt!59531)) (h!8421 (t!28244 tokens!465))))))))

(assert (=> b!180949 (= e!110171 e!110168)))

(declare-fun b!180950 () Bool)

(assert (=> b!180950 (= e!110169 call!8181)))

(declare-fun d!45883 () Bool)

(declare-fun c!35415 () Bool)

(assert (=> d!45883 (= c!35415 ((_ is Cons!3024) (t!28244 tokens!465)))))

(assert (=> d!45883 (= (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 (t!28244 tokens!465) separatorToken!170) e!110170)))

(declare-fun b!180946 () Bool)

(assert (=> b!180946 (= e!110169 (charsOf!202 separatorToken!170))))

(assert (= (and d!45883 c!35415) b!180945))

(assert (= (and d!45883 (not c!35415)) b!180947))

(assert (= (and b!180945 c!35413) b!180944))

(assert (= (and b!180945 (not c!35413)) b!180949))

(assert (= (and b!180949 c!35414) b!180948))

(assert (= (and b!180949 (not c!35414)) b!180943))

(assert (= (or b!180948 b!180943) bm!8175))

(assert (= (or b!180948 b!180943) bm!8174))

(assert (= (and bm!8174 c!35416) b!180946))

(assert (= (and bm!8174 (not c!35416)) b!180950))

(assert (= (or b!180944 bm!8175) bm!8176))

(assert (= (or b!180944 b!180948) bm!8172))

(assert (= (or b!180944 b!180948) bm!8173))

(declare-fun m!183527 () Bool)

(assert (=> b!180943 m!183527))

(assert (=> b!180943 m!183527))

(declare-fun m!183529 () Bool)

(assert (=> b!180943 m!183529))

(assert (=> b!180943 m!183527))

(declare-fun m!183531 () Bool)

(assert (=> b!180943 m!183531))

(declare-fun m!183533 () Bool)

(assert (=> b!180943 m!183533))

(declare-fun m!183535 () Bool)

(assert (=> bm!8173 m!183535))

(assert (=> b!180946 m!182765))

(declare-fun m!183537 () Bool)

(assert (=> b!180945 m!183537))

(declare-fun m!183539 () Bool)

(assert (=> b!180945 m!183539))

(declare-fun m!183541 () Bool)

(assert (=> b!180945 m!183541))

(declare-fun m!183543 () Bool)

(assert (=> b!180945 m!183543))

(assert (=> b!180945 m!183537))

(declare-fun m!183545 () Bool)

(assert (=> b!180945 m!183545))

(assert (=> b!180945 m!183543))

(assert (=> b!180945 m!183545))

(declare-fun m!183547 () Bool)

(assert (=> b!180945 m!183547))

(assert (=> bm!8176 m!183545))

(declare-fun m!183549 () Bool)

(assert (=> bm!8174 m!183549))

(declare-fun m!183551 () Bool)

(assert (=> bm!8172 m!183551))

(declare-fun m!183553 () Bool)

(assert (=> b!180948 m!183553))

(assert (=> b!180424 d!45883))

(declare-fun bs!18032 () Bool)

(declare-fun d!45915 () Bool)

(assert (= bs!18032 (and d!45915 b!180422)))

(declare-fun lambda!5354 () Int)

(assert (=> bs!18032 (= lambda!5354 lambda!5323)))

(declare-fun bs!18033 () Bool)

(assert (= bs!18033 (and d!45915 b!180404)))

(assert (=> bs!18033 (not (= lambda!5354 lambda!5324))))

(declare-fun bs!18034 () Bool)

(assert (= bs!18034 (and d!45915 d!45845)))

(assert (=> bs!18034 (not (= lambda!5354 lambda!5338))))

(declare-fun bs!18035 () Bool)

(assert (= bs!18035 (and d!45915 b!180945)))

(assert (=> bs!18035 (not (= lambda!5354 lambda!5346))))

(declare-fun bs!18036 () Bool)

(declare-fun b!181084 () Bool)

(assert (= bs!18036 (and b!181084 d!45915)))

(declare-fun lambda!5355 () Int)

(assert (=> bs!18036 (not (= lambda!5355 lambda!5354))))

(declare-fun bs!18037 () Bool)

(assert (= bs!18037 (and b!181084 b!180422)))

(assert (=> bs!18037 (not (= lambda!5355 lambda!5323))))

(declare-fun bs!18038 () Bool)

(assert (= bs!18038 (and b!181084 d!45845)))

(assert (=> bs!18038 (= lambda!5355 lambda!5338)))

(declare-fun bs!18039 () Bool)

(assert (= bs!18039 (and b!181084 b!180404)))

(assert (=> bs!18039 (= lambda!5355 lambda!5324)))

(declare-fun bs!18040 () Bool)

(assert (= bs!18040 (and b!181084 b!180945)))

(assert (=> bs!18040 (= lambda!5355 lambda!5346)))

(declare-fun b!181096 () Bool)

(declare-fun e!110280 () Bool)

(assert (=> b!181096 (= e!110280 true)))

(declare-fun b!181095 () Bool)

(declare-fun e!110279 () Bool)

(assert (=> b!181095 (= e!110279 e!110280)))

(declare-fun b!181094 () Bool)

(declare-fun e!110278 () Bool)

(assert (=> b!181094 (= e!110278 e!110279)))

(assert (=> b!181084 e!110278))

(assert (= b!181095 b!181096))

(assert (= b!181094 b!181095))

(assert (= (and b!181084 ((_ is Cons!3023) rules!1920)) b!181094))

(assert (=> b!181096 (< (dynLambda!1207 order!1757 (toValue!1218 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5355))))

(assert (=> b!181096 (< (dynLambda!1209 order!1761 (toChars!1077 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5355))))

(assert (=> b!181084 true))

(declare-fun bm!8197 () Bool)

(declare-fun call!8202 () Token!838)

(declare-fun call!8205 () Token!838)

(assert (=> bm!8197 (= call!8202 call!8205)))

(declare-fun call!8203 () BalanceConc!1840)

(declare-fun c!35432 () Bool)

(declare-fun c!35435 () Bool)

(declare-fun bm!8198 () Bool)

(assert (=> bm!8198 (= call!8203 (charsOf!202 (ite c!35432 call!8205 (ite c!35435 separatorToken!170 call!8202))))))

(declare-fun bm!8199 () Bool)

(declare-fun c!35434 () Bool)

(assert (=> bm!8199 (= c!35434 c!35432)))

(declare-fun lt!59602 () BalanceConc!1840)

(declare-fun e!110277 () BalanceConc!1840)

(declare-fun call!8204 () BalanceConc!1840)

(declare-fun call!8206 () BalanceConc!1840)

(assert (=> bm!8199 (= call!8206 (++!712 e!110277 (ite c!35432 lt!59602 call!8204)))))

(declare-fun b!181083 () Bool)

(declare-fun e!110272 () Bool)

(declare-fun lt!59589 () Option!372)

(assert (=> b!181083 (= e!110272 (= (_1!1717 (v!13846 lt!59589)) (apply!451 (seqFromList!471 (t!28244 tokens!465)) 0)))))

(declare-fun e!110273 () BalanceConc!1840)

(declare-fun e!110274 () BalanceConc!1840)

(assert (=> b!181084 (= e!110273 e!110274)))

(declare-fun lt!59598 () List!3034)

(assert (=> b!181084 (= lt!59598 (list!1113 (seqFromList!471 (t!28244 tokens!465))))))

(declare-fun lt!59600 () Unit!2764)

(assert (=> b!181084 (= lt!59600 (lemmaDropApply!138 lt!59598 0))))

(assert (=> b!181084 (= (head!624 (drop!151 lt!59598 0)) (apply!452 lt!59598 0))))

(declare-fun lt!59597 () Unit!2764)

(assert (=> b!181084 (= lt!59597 lt!59600)))

(declare-fun lt!59595 () List!3034)

(assert (=> b!181084 (= lt!59595 (list!1113 (seqFromList!471 (t!28244 tokens!465))))))

(declare-fun lt!59593 () Unit!2764)

(assert (=> b!181084 (= lt!59593 (lemmaDropTail!130 lt!59595 0))))

(assert (=> b!181084 (= (tail!362 (drop!151 lt!59595 0)) (drop!151 lt!59595 (+ 0 1)))))

(declare-fun lt!59596 () Unit!2764)

(assert (=> b!181084 (= lt!59596 lt!59593)))

(declare-fun lt!59599 () Unit!2764)

(assert (=> b!181084 (= lt!59599 (forallContained!114 (list!1113 (seqFromList!471 (t!28244 tokens!465))) lambda!5355 (apply!451 (seqFromList!471 (t!28244 tokens!465)) 0)))))

(assert (=> b!181084 (= lt!59602 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 (seqFromList!471 (t!28244 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!181084 (= lt!59589 (maxPrefixZipperSequence!126 thiss!17480 rules!1920 (++!712 (charsOf!202 (apply!451 (seqFromList!471 (t!28244 tokens!465)) 0)) lt!59602)))))

(declare-fun res!82064 () Bool)

(assert (=> b!181084 (= res!82064 ((_ is Some!371) lt!59589))))

(assert (=> b!181084 (=> (not res!82064) (not e!110272))))

(assert (=> b!181084 (= c!35432 e!110272)))

(declare-fun lt!59592 () BalanceConc!1840)

(assert (=> d!45915 (= (list!1109 lt!59592) (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 (dropList!98 (seqFromList!471 (t!28244 tokens!465)) 0) separatorToken!170))))

(assert (=> d!45915 (= lt!59592 e!110273)))

(declare-fun c!35433 () Bool)

(assert (=> d!45915 (= c!35433 (>= 0 (size!2476 (seqFromList!471 (t!28244 tokens!465)))))))

(declare-fun lt!59591 () Unit!2764)

(declare-fun lemmaContentSubsetPreservesForall!42 (List!3034 List!3034 Int) Unit!2764)

(assert (=> d!45915 (= lt!59591 (lemmaContentSubsetPreservesForall!42 (list!1113 (seqFromList!471 (t!28244 tokens!465))) (dropList!98 (seqFromList!471 (t!28244 tokens!465)) 0) lambda!5354))))

(declare-fun e!110271 () Bool)

(assert (=> d!45915 e!110271))

(declare-fun res!82063 () Bool)

(assert (=> d!45915 (=> (not res!82063) (not e!110271))))

(assert (=> d!45915 (= res!82063 (>= 0 0))))

(assert (=> d!45915 (= (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 (seqFromList!471 (t!28244 tokens!465)) separatorToken!170 0) lt!59592)))

(declare-fun b!181085 () Bool)

(declare-fun e!110276 () BalanceConc!1840)

(assert (=> b!181085 (= e!110276 (BalanceConc!1841 Empty!916))))

(assert (=> b!181085 (= (print!164 thiss!17480 (singletonSeq!99 call!8202)) (printTailRec!127 thiss!17480 (singletonSeq!99 call!8202) 0 (BalanceConc!1841 Empty!916)))))

(declare-fun lt!59590 () Unit!2764)

(declare-fun Unit!2774 () Unit!2764)

(assert (=> b!181085 (= lt!59590 Unit!2774)))

(declare-fun lt!59594 () Unit!2764)

(assert (=> b!181085 (= lt!59594 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!46 thiss!17480 rules!1920 (list!1109 call!8204) (list!1109 lt!59602)))))

(assert (=> b!181085 false))

(declare-fun lt!59601 () Unit!2764)

(declare-fun Unit!2775 () Unit!2764)

(assert (=> b!181085 (= lt!59601 Unit!2775)))

(declare-fun b!181086 () Bool)

(assert (=> b!181086 (= e!110271 (<= 0 (size!2476 (seqFromList!471 (t!28244 tokens!465)))))))

(declare-fun b!181087 () Bool)

(assert (=> b!181087 (= e!110273 (BalanceConc!1841 Empty!916))))

(declare-fun bm!8200 () Bool)

(assert (=> bm!8200 (= call!8205 (apply!451 (seqFromList!471 (t!28244 tokens!465)) 0))))

(declare-fun b!181088 () Bool)

(assert (=> b!181088 (= e!110277 call!8203)))

(declare-fun bm!8201 () Bool)

(assert (=> bm!8201 (= call!8204 call!8203)))

(declare-fun b!181089 () Bool)

(assert (=> b!181089 (= e!110276 (++!712 call!8206 lt!59602))))

(declare-fun b!181090 () Bool)

(assert (=> b!181090 (= e!110277 (charsOf!202 call!8202))))

(declare-fun b!181091 () Bool)

(declare-fun e!110275 () Bool)

(assert (=> b!181091 (= e!110275 (not (= (_1!1717 (v!13846 lt!59589)) call!8205)))))

(declare-fun b!181092 () Bool)

(assert (=> b!181092 (= c!35435 e!110275)))

(declare-fun res!82062 () Bool)

(assert (=> b!181092 (=> (not res!82062) (not e!110275))))

(assert (=> b!181092 (= res!82062 ((_ is Some!371) lt!59589))))

(assert (=> b!181092 (= e!110274 e!110276)))

(declare-fun b!181093 () Bool)

(assert (=> b!181093 (= e!110274 call!8206)))

(assert (= (and d!45915 res!82063) b!181086))

(assert (= (and d!45915 c!35433) b!181087))

(assert (= (and d!45915 (not c!35433)) b!181084))

(assert (= (and b!181084 res!82064) b!181083))

(assert (= (and b!181084 c!35432) b!181093))

(assert (= (and b!181084 (not c!35432)) b!181092))

(assert (= (and b!181092 res!82062) b!181091))

(assert (= (and b!181092 c!35435) b!181089))

(assert (= (and b!181092 (not c!35435)) b!181085))

(assert (= (or b!181089 b!181085) bm!8197))

(assert (= (or b!181089 b!181085) bm!8201))

(assert (= (or b!181093 bm!8197 b!181091) bm!8200))

(assert (= (or b!181093 bm!8201) bm!8198))

(assert (= (or b!181093 b!181089) bm!8199))

(assert (= (and bm!8199 c!35434) b!181088))

(assert (= (and bm!8199 (not c!35434)) b!181090))

(declare-fun m!183685 () Bool)

(assert (=> bm!8198 m!183685))

(declare-fun m!183687 () Bool)

(assert (=> b!181084 m!183687))

(declare-fun m!183689 () Bool)

(assert (=> b!181084 m!183689))

(declare-fun m!183691 () Bool)

(assert (=> b!181084 m!183691))

(declare-fun m!183693 () Bool)

(assert (=> b!181084 m!183693))

(assert (=> b!181084 m!182763))

(declare-fun m!183695 () Bool)

(assert (=> b!181084 m!183695))

(declare-fun m!183697 () Bool)

(assert (=> b!181084 m!183697))

(declare-fun m!183699 () Bool)

(assert (=> b!181084 m!183699))

(declare-fun m!183701 () Bool)

(assert (=> b!181084 m!183701))

(assert (=> b!181084 m!183695))

(declare-fun m!183703 () Bool)

(assert (=> b!181084 m!183703))

(assert (=> b!181084 m!182763))

(assert (=> b!181084 m!183701))

(declare-fun m!183705 () Bool)

(assert (=> b!181084 m!183705))

(declare-fun m!183707 () Bool)

(assert (=> b!181084 m!183707))

(declare-fun m!183709 () Bool)

(assert (=> b!181084 m!183709))

(assert (=> b!181084 m!183691))

(assert (=> b!181084 m!183689))

(declare-fun m!183711 () Bool)

(assert (=> b!181084 m!183711))

(assert (=> b!181084 m!183709))

(declare-fun m!183713 () Bool)

(assert (=> b!181084 m!183713))

(assert (=> b!181084 m!183695))

(assert (=> b!181084 m!183707))

(assert (=> b!181084 m!182763))

(declare-fun m!183715 () Bool)

(assert (=> b!181084 m!183715))

(declare-fun m!183717 () Bool)

(assert (=> bm!8199 m!183717))

(declare-fun m!183719 () Bool)

(assert (=> d!45915 m!183719))

(assert (=> d!45915 m!183701))

(declare-fun m!183721 () Bool)

(assert (=> d!45915 m!183721))

(declare-fun m!183723 () Bool)

(assert (=> d!45915 m!183723))

(assert (=> d!45915 m!183721))

(declare-fun m!183725 () Bool)

(assert (=> d!45915 m!183725))

(assert (=> d!45915 m!182763))

(assert (=> d!45915 m!183701))

(assert (=> d!45915 m!182763))

(assert (=> d!45915 m!183721))

(assert (=> d!45915 m!182763))

(declare-fun m!183727 () Bool)

(assert (=> d!45915 m!183727))

(declare-fun m!183729 () Bool)

(assert (=> b!181085 m!183729))

(declare-fun m!183731 () Bool)

(assert (=> b!181085 m!183731))

(declare-fun m!183733 () Bool)

(assert (=> b!181085 m!183733))

(declare-fun m!183735 () Bool)

(assert (=> b!181085 m!183735))

(assert (=> b!181085 m!183729))

(declare-fun m!183737 () Bool)

(assert (=> b!181085 m!183737))

(assert (=> b!181085 m!183729))

(declare-fun m!183739 () Bool)

(assert (=> b!181085 m!183739))

(assert (=> b!181085 m!183733))

(assert (=> b!181085 m!183731))

(assert (=> b!181086 m!182763))

(assert (=> b!181086 m!183727))

(assert (=> bm!8200 m!182763))

(assert (=> bm!8200 m!183695))

(assert (=> b!181083 m!182763))

(assert (=> b!181083 m!183695))

(declare-fun m!183741 () Bool)

(assert (=> b!181089 m!183741))

(declare-fun m!183743 () Bool)

(assert (=> b!181090 m!183743))

(assert (=> b!180424 d!45915))

(declare-fun d!45941 () Bool)

(declare-fun lt!59605 () BalanceConc!1840)

(assert (=> d!45941 (= (list!1109 lt!59605) (originalCharacters!590 separatorToken!170))))

(assert (=> d!45941 (= lt!59605 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (value!19905 separatorToken!170)))))

(assert (=> d!45941 (= (charsOf!202 separatorToken!170) lt!59605)))

(declare-fun b_lambda!4341 () Bool)

(assert (=> (not b_lambda!4341) (not d!45941)))

(assert (=> d!45941 t!28281))

(declare-fun b_and!12365 () Bool)

(assert (= b_and!12351 (and (=> t!28281 result!10358) b_and!12365)))

(assert (=> d!45941 t!28283))

(declare-fun b_and!12367 () Bool)

(assert (= b_and!12353 (and (=> t!28283 result!10360) b_and!12367)))

(assert (=> d!45941 t!28285))

(declare-fun b_and!12369 () Bool)

(assert (= b_and!12355 (and (=> t!28285 result!10362) b_and!12369)))

(declare-fun m!183745 () Bool)

(assert (=> d!45941 m!183745))

(assert (=> d!45941 m!183385))

(assert (=> b!180424 d!45941))

(declare-fun b!181099 () Bool)

(declare-fun res!82066 () Bool)

(declare-fun e!110281 () Bool)

(assert (=> b!181099 (=> (not res!82066) (not e!110281))))

(declare-fun lt!59606 () List!3032)

(assert (=> b!181099 (= res!82066 (= (size!2475 lt!59606) (+ (size!2475 lt!59260) (size!2475 lt!59264))))))

(declare-fun d!45943 () Bool)

(assert (=> d!45943 e!110281))

(declare-fun res!82065 () Bool)

(assert (=> d!45943 (=> (not res!82065) (not e!110281))))

(assert (=> d!45943 (= res!82065 (= (content!417 lt!59606) ((_ map or) (content!417 lt!59260) (content!417 lt!59264))))))

(declare-fun e!110282 () List!3032)

(assert (=> d!45943 (= lt!59606 e!110282)))

(declare-fun c!35436 () Bool)

(assert (=> d!45943 (= c!35436 ((_ is Nil!3022) lt!59260))))

(assert (=> d!45943 (= (++!710 lt!59260 lt!59264) lt!59606)))

(declare-fun b!181097 () Bool)

(assert (=> b!181097 (= e!110282 lt!59264)))

(declare-fun b!181098 () Bool)

(assert (=> b!181098 (= e!110282 (Cons!3022 (h!8419 lt!59260) (++!710 (t!28242 lt!59260) lt!59264)))))

(declare-fun b!181100 () Bool)

(assert (=> b!181100 (= e!110281 (or (not (= lt!59264 Nil!3022)) (= lt!59606 lt!59260)))))

(assert (= (and d!45943 c!35436) b!181097))

(assert (= (and d!45943 (not c!35436)) b!181098))

(assert (= (and d!45943 res!82065) b!181099))

(assert (= (and b!181099 res!82066) b!181100))

(declare-fun m!183747 () Bool)

(assert (=> b!181099 m!183747))

(assert (=> b!181099 m!183079))

(declare-fun m!183749 () Bool)

(assert (=> b!181099 m!183749))

(declare-fun m!183751 () Bool)

(assert (=> d!45943 m!183751))

(assert (=> d!45943 m!183139))

(declare-fun m!183753 () Bool)

(assert (=> d!45943 m!183753))

(declare-fun m!183755 () Bool)

(assert (=> b!181098 m!183755))

(assert (=> b!180424 d!45943))

(declare-fun d!45945 () Bool)

(assert (=> d!45945 (= (list!1109 (charsOf!202 (h!8421 tokens!465))) (list!1112 (c!35309 (charsOf!202 (h!8421 tokens!465)))))))

(declare-fun bs!18041 () Bool)

(assert (= bs!18041 d!45945))

(declare-fun m!183757 () Bool)

(assert (=> bs!18041 m!183757))

(assert (=> b!180424 d!45945))

(declare-fun d!45947 () Bool)

(declare-fun lt!59607 () BalanceConc!1840)

(assert (=> d!45947 (= (list!1109 lt!59607) (originalCharacters!590 (h!8421 tokens!465)))))

(assert (=> d!45947 (= lt!59607 (dynLambda!1212 (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (value!19905 (h!8421 tokens!465))))))

(assert (=> d!45947 (= (charsOf!202 (h!8421 tokens!465)) lt!59607)))

(declare-fun b_lambda!4343 () Bool)

(assert (=> (not b_lambda!4343) (not d!45947)))

(assert (=> d!45947 t!28258))

(declare-fun b_and!12371 () Bool)

(assert (= b_and!12365 (and (=> t!28258 result!10350) b_and!12371)))

(assert (=> d!45947 t!28260))

(declare-fun b_and!12373 () Bool)

(assert (= b_and!12367 (and (=> t!28260 result!10354) b_and!12373)))

(assert (=> d!45947 t!28262))

(declare-fun b_and!12375 () Bool)

(assert (= b_and!12369 (and (=> t!28262 result!10356) b_and!12375)))

(declare-fun m!183759 () Bool)

(assert (=> d!45947 m!183759))

(assert (=> d!45947 m!182919))

(assert (=> b!180424 d!45947))

(declare-fun d!45949 () Bool)

(assert (=> d!45949 (= (++!710 (++!710 lt!59260 lt!59271) lt!59273) (++!710 lt!59260 (++!710 lt!59271 lt!59273)))))

(declare-fun lt!59610 () Unit!2764)

(declare-fun choose!1877 (List!3032 List!3032 List!3032) Unit!2764)

(assert (=> d!45949 (= lt!59610 (choose!1877 lt!59260 lt!59271 lt!59273))))

(assert (=> d!45949 (= (lemmaConcatAssociativity!236 lt!59260 lt!59271 lt!59273) lt!59610)))

(declare-fun bs!18042 () Bool)

(assert (= bs!18042 d!45949))

(assert (=> bs!18042 m!182779))

(assert (=> bs!18042 m!182769))

(declare-fun m!183761 () Bool)

(assert (=> bs!18042 m!183761))

(assert (=> bs!18042 m!182779))

(declare-fun m!183763 () Bool)

(assert (=> bs!18042 m!183763))

(assert (=> bs!18042 m!182769))

(assert (=> bs!18042 m!182773))

(assert (=> b!180424 d!45949))

(declare-fun b!181103 () Bool)

(declare-fun res!82068 () Bool)

(declare-fun e!110283 () Bool)

(assert (=> b!181103 (=> (not res!82068) (not e!110283))))

(declare-fun lt!59611 () List!3032)

(assert (=> b!181103 (= res!82068 (= (size!2475 lt!59611) (+ (size!2475 (++!710 lt!59260 lt!59271)) (size!2475 lt!59273))))))

(declare-fun d!45951 () Bool)

(assert (=> d!45951 e!110283))

(declare-fun res!82067 () Bool)

(assert (=> d!45951 (=> (not res!82067) (not e!110283))))

(assert (=> d!45951 (= res!82067 (= (content!417 lt!59611) ((_ map or) (content!417 (++!710 lt!59260 lt!59271)) (content!417 lt!59273))))))

(declare-fun e!110284 () List!3032)

(assert (=> d!45951 (= lt!59611 e!110284)))

(declare-fun c!35437 () Bool)

(assert (=> d!45951 (= c!35437 ((_ is Nil!3022) (++!710 lt!59260 lt!59271)))))

(assert (=> d!45951 (= (++!710 (++!710 lt!59260 lt!59271) lt!59273) lt!59611)))

(declare-fun b!181101 () Bool)

(assert (=> b!181101 (= e!110284 lt!59273)))

(declare-fun b!181102 () Bool)

(assert (=> b!181102 (= e!110284 (Cons!3022 (h!8419 (++!710 lt!59260 lt!59271)) (++!710 (t!28242 (++!710 lt!59260 lt!59271)) lt!59273)))))

(declare-fun b!181104 () Bool)

(assert (=> b!181104 (= e!110283 (or (not (= lt!59273 Nil!3022)) (= lt!59611 (++!710 lt!59260 lt!59271))))))

(assert (= (and d!45951 c!35437) b!181101))

(assert (= (and d!45951 (not c!35437)) b!181102))

(assert (= (and d!45951 res!82067) b!181103))

(assert (= (and b!181103 res!82068) b!181104))

(declare-fun m!183765 () Bool)

(assert (=> b!181103 m!183765))

(assert (=> b!181103 m!182769))

(declare-fun m!183767 () Bool)

(assert (=> b!181103 m!183767))

(assert (=> b!181103 m!183135))

(declare-fun m!183769 () Bool)

(assert (=> d!45951 m!183769))

(assert (=> d!45951 m!182769))

(declare-fun m!183771 () Bool)

(assert (=> d!45951 m!183771))

(assert (=> d!45951 m!183141))

(declare-fun m!183773 () Bool)

(assert (=> b!181102 m!183773))

(assert (=> b!180424 d!45951))

(declare-fun d!45953 () Bool)

(assert (=> d!45953 (= (isDefined!224 lt!59268) (not (isEmpty!1373 lt!59268)))))

(declare-fun bs!18043 () Bool)

(assert (= bs!18043 d!45953))

(declare-fun m!183775 () Bool)

(assert (=> bs!18043 m!183775))

(assert (=> b!180423 d!45953))

(assert (=> b!180423 d!45787))

(declare-fun d!45955 () Bool)

(declare-fun isEmpty!1378 (Option!372) Bool)

(assert (=> d!45955 (= (isDefined!223 (maxPrefixZipperSequence!126 thiss!17480 rules!1920 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465))))) (not (isEmpty!1378 (maxPrefixZipperSequence!126 thiss!17480 rules!1920 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))))

(declare-fun bs!18044 () Bool)

(assert (= bs!18044 d!45955))

(assert (=> bs!18044 m!182691))

(declare-fun m!183777 () Bool)

(assert (=> bs!18044 m!183777))

(assert (=> b!180404 d!45955))

(declare-fun b!181121 () Bool)

(declare-fun e!110297 () Bool)

(declare-fun e!110299 () Bool)

(assert (=> b!181121 (= e!110297 e!110299)))

(declare-fun res!82083 () Bool)

(assert (=> b!181121 (=> (not res!82083) (not e!110299))))

(declare-fun lt!59632 () Option!372)

(declare-fun get!851 (Option!372) tuple2!3002)

(declare-fun maxPrefixZipper!51 (LexerInterface!433 List!3033 List!3032) Option!373)

(assert (=> b!181121 (= res!82083 (= (_1!1717 (get!851 lt!59632)) (_1!1718 (get!849 (maxPrefixZipper!51 thiss!17480 rules!1920 (list!1109 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))))))

(declare-fun b!181122 () Bool)

(declare-fun e!110298 () Bool)

(assert (=> b!181122 (= e!110298 (= (list!1109 (_2!1717 (get!851 lt!59632))) (_2!1718 (get!849 (maxPrefix!163 thiss!17480 rules!1920 (list!1109 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))))))

(declare-fun b!181123 () Bool)

(declare-fun e!110300 () Bool)

(declare-fun e!110302 () Bool)

(assert (=> b!181123 (= e!110300 e!110302)))

(declare-fun res!82085 () Bool)

(assert (=> b!181123 (=> res!82085 e!110302)))

(assert (=> b!181123 (= res!82085 (not (isDefined!223 lt!59632)))))

(declare-fun b!181124 () Bool)

(declare-fun e!110301 () Option!372)

(declare-fun lt!59627 () Option!372)

(declare-fun lt!59629 () Option!372)

(assert (=> b!181124 (= e!110301 (ite (and ((_ is None!371) lt!59627) ((_ is None!371) lt!59629)) None!371 (ite ((_ is None!371) lt!59629) lt!59627 (ite ((_ is None!371) lt!59627) lt!59629 (ite (>= (size!2471 (_1!1717 (v!13846 lt!59627))) (size!2471 (_1!1717 (v!13846 lt!59629)))) lt!59627 lt!59629)))))))

(declare-fun call!8209 () Option!372)

(assert (=> b!181124 (= lt!59627 call!8209)))

(assert (=> b!181124 (= lt!59629 (maxPrefixZipperSequence!126 thiss!17480 (t!28243 rules!1920) (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))

(declare-fun bm!8204 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!52 (LexerInterface!433 Rule!894 BalanceConc!1840) Option!372)

(assert (=> bm!8204 (= call!8209 (maxPrefixOneRuleZipperSequence!52 thiss!17480 (h!8420 rules!1920) (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))

(declare-fun b!181126 () Bool)

(assert (=> b!181126 (= e!110301 call!8209)))

(declare-fun b!181127 () Bool)

(declare-fun res!82086 () Bool)

(assert (=> b!181127 (=> (not res!82086) (not e!110300))))

(assert (=> b!181127 (= res!82086 e!110297)))

(declare-fun res!82084 () Bool)

(assert (=> b!181127 (=> res!82084 e!110297)))

(assert (=> b!181127 (= res!82084 (not (isDefined!223 lt!59632)))))

(declare-fun b!181128 () Bool)

(assert (=> b!181128 (= e!110299 (= (list!1109 (_2!1717 (get!851 lt!59632))) (_2!1718 (get!849 (maxPrefixZipper!51 thiss!17480 rules!1920 (list!1109 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))))))

(declare-fun b!181125 () Bool)

(assert (=> b!181125 (= e!110302 e!110298)))

(declare-fun res!82081 () Bool)

(assert (=> b!181125 (=> (not res!82081) (not e!110298))))

(assert (=> b!181125 (= res!82081 (= (_1!1717 (get!851 lt!59632)) (_1!1718 (get!849 (maxPrefix!163 thiss!17480 rules!1920 (list!1109 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))))))

(declare-fun d!45957 () Bool)

(assert (=> d!45957 e!110300))

(declare-fun res!82082 () Bool)

(assert (=> d!45957 (=> (not res!82082) (not e!110300))))

(assert (=> d!45957 (= res!82082 (= (isDefined!223 lt!59632) (isDefined!224 (maxPrefixZipper!51 thiss!17480 rules!1920 (list!1109 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465))))))))))

(assert (=> d!45957 (= lt!59632 e!110301)))

(declare-fun c!35440 () Bool)

(assert (=> d!45957 (= c!35440 (and ((_ is Cons!3023) rules!1920) ((_ is Nil!3023) (t!28243 rules!1920))))))

(declare-fun lt!59631 () Unit!2764)

(declare-fun lt!59628 () Unit!2764)

(assert (=> d!45957 (= lt!59631 lt!59628)))

(declare-fun lt!59626 () List!3032)

(declare-fun lt!59630 () List!3032)

(assert (=> d!45957 (isPrefix!243 lt!59626 lt!59630)))

(assert (=> d!45957 (= lt!59628 (lemmaIsPrefixRefl!147 lt!59626 lt!59630))))

(assert (=> d!45957 (= lt!59630 (list!1109 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))

(assert (=> d!45957 (= lt!59626 (list!1109 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))))))

(assert (=> d!45957 (rulesValidInductive!134 thiss!17480 rules!1920)))

(assert (=> d!45957 (= (maxPrefixZipperSequence!126 thiss!17480 rules!1920 (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465)))) lt!59632)))

(assert (= (and d!45957 c!35440) b!181126))

(assert (= (and d!45957 (not c!35440)) b!181124))

(assert (= (or b!181126 b!181124) bm!8204))

(assert (= (and d!45957 res!82082) b!181127))

(assert (= (and b!181127 (not res!82084)) b!181121))

(assert (= (and b!181121 res!82083) b!181128))

(assert (= (and b!181127 res!82086) b!181123))

(assert (= (and b!181123 (not res!82085)) b!181125))

(assert (= (and b!181125 res!82081) b!181122))

(declare-fun m!183779 () Bool)

(assert (=> b!181122 m!183779))

(declare-fun m!183781 () Bool)

(assert (=> b!181122 m!183781))

(assert (=> b!181122 m!182689))

(declare-fun m!183783 () Bool)

(assert (=> b!181122 m!183783))

(declare-fun m!183785 () Bool)

(assert (=> b!181122 m!183785))

(assert (=> b!181122 m!183783))

(assert (=> b!181122 m!183779))

(declare-fun m!183787 () Bool)

(assert (=> b!181122 m!183787))

(assert (=> b!181124 m!182689))

(declare-fun m!183789 () Bool)

(assert (=> b!181124 m!183789))

(assert (=> b!181125 m!183787))

(assert (=> b!181125 m!182689))

(assert (=> b!181125 m!183783))

(assert (=> b!181125 m!183783))

(assert (=> b!181125 m!183779))

(assert (=> b!181125 m!183779))

(assert (=> b!181125 m!183781))

(assert (=> d!45957 m!183783))

(declare-fun m!183791 () Bool)

(assert (=> d!45957 m!183791))

(declare-fun m!183793 () Bool)

(assert (=> d!45957 m!183793))

(assert (=> d!45957 m!183075))

(declare-fun m!183795 () Bool)

(assert (=> d!45957 m!183795))

(assert (=> d!45957 m!183791))

(declare-fun m!183797 () Bool)

(assert (=> d!45957 m!183797))

(declare-fun m!183799 () Bool)

(assert (=> d!45957 m!183799))

(assert (=> d!45957 m!182689))

(assert (=> d!45957 m!183783))

(assert (=> bm!8204 m!182689))

(declare-fun m!183801 () Bool)

(assert (=> bm!8204 m!183801))

(assert (=> b!181123 m!183799))

(assert (=> b!181121 m!183787))

(assert (=> b!181121 m!182689))

(assert (=> b!181121 m!183783))

(assert (=> b!181121 m!183783))

(assert (=> b!181121 m!183791))

(assert (=> b!181121 m!183791))

(declare-fun m!183803 () Bool)

(assert (=> b!181121 m!183803))

(assert (=> b!181128 m!183783))

(assert (=> b!181128 m!183791))

(assert (=> b!181128 m!183791))

(assert (=> b!181128 m!183803))

(assert (=> b!181128 m!182689))

(assert (=> b!181128 m!183783))

(assert (=> b!181128 m!183785))

(assert (=> b!181128 m!183787))

(assert (=> b!181127 m!183799))

(assert (=> b!180404 d!45957))

(declare-fun d!45959 () Bool)

(assert (=> d!45959 (= (seqFromList!472 (originalCharacters!590 (h!8421 tokens!465))) (fromListB!184 (originalCharacters!590 (h!8421 tokens!465))))))

(declare-fun bs!18045 () Bool)

(assert (= bs!18045 d!45959))

(declare-fun m!183805 () Bool)

(assert (=> bs!18045 m!183805))

(assert (=> b!180404 d!45959))

(declare-fun d!45961 () Bool)

(assert (=> d!45961 (dynLambda!1213 lambda!5324 (h!8421 tokens!465))))

(declare-fun lt!59635 () Unit!2764)

(declare-fun choose!1878 (List!3034 Int Token!838) Unit!2764)

(assert (=> d!45961 (= lt!59635 (choose!1878 tokens!465 lambda!5324 (h!8421 tokens!465)))))

(declare-fun e!110305 () Bool)

(assert (=> d!45961 e!110305))

(declare-fun res!82089 () Bool)

(assert (=> d!45961 (=> (not res!82089) (not e!110305))))

(assert (=> d!45961 (= res!82089 (forall!615 tokens!465 lambda!5324))))

(assert (=> d!45961 (= (forallContained!114 tokens!465 lambda!5324 (h!8421 tokens!465)) lt!59635)))

(declare-fun b!181131 () Bool)

(declare-fun contains!490 (List!3034 Token!838) Bool)

(assert (=> b!181131 (= e!110305 (contains!490 tokens!465 (h!8421 tokens!465)))))

(assert (= (and d!45961 res!82089) b!181131))

(declare-fun b_lambda!4345 () Bool)

(assert (=> (not b_lambda!4345) (not d!45961)))

(declare-fun m!183807 () Bool)

(assert (=> d!45961 m!183807))

(declare-fun m!183809 () Bool)

(assert (=> d!45961 m!183809))

(declare-fun m!183811 () Bool)

(assert (=> d!45961 m!183811))

(declare-fun m!183813 () Bool)

(assert (=> b!181131 m!183813))

(assert (=> b!180404 d!45961))

(declare-fun d!45963 () Bool)

(assert (=> d!45963 (= (inv!3852 (tag!725 (rule!1062 (h!8421 tokens!465)))) (= (mod (str.len (value!19904 (tag!725 (rule!1062 (h!8421 tokens!465))))) 2) 0))))

(assert (=> b!180403 d!45963))

(declare-fun d!45965 () Bool)

(declare-fun res!82090 () Bool)

(declare-fun e!110306 () Bool)

(assert (=> d!45965 (=> (not res!82090) (not e!110306))))

(assert (=> d!45965 (= res!82090 (semiInverseModEq!189 (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (toValue!1218 (transformation!547 (rule!1062 (h!8421 tokens!465))))))))

(assert (=> d!45965 (= (inv!3855 (transformation!547 (rule!1062 (h!8421 tokens!465)))) e!110306)))

(declare-fun b!181132 () Bool)

(assert (=> b!181132 (= e!110306 (equivClasses!172 (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (toValue!1218 (transformation!547 (rule!1062 (h!8421 tokens!465))))))))

(assert (= (and d!45965 res!82090) b!181132))

(declare-fun m!183815 () Bool)

(assert (=> d!45965 m!183815))

(declare-fun m!183817 () Bool)

(assert (=> b!181132 m!183817))

(assert (=> b!180403 d!45965))

(declare-fun d!45967 () Bool)

(assert (=> d!45967 (= (inv!3852 (tag!725 (rule!1062 separatorToken!170))) (= (mod (str.len (value!19904 (tag!725 (rule!1062 separatorToken!170)))) 2) 0))))

(assert (=> b!180405 d!45967))

(declare-fun d!45969 () Bool)

(declare-fun res!82091 () Bool)

(declare-fun e!110307 () Bool)

(assert (=> d!45969 (=> (not res!82091) (not e!110307))))

(assert (=> d!45969 (= res!82091 (semiInverseModEq!189 (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (toValue!1218 (transformation!547 (rule!1062 separatorToken!170)))))))

(assert (=> d!45969 (= (inv!3855 (transformation!547 (rule!1062 separatorToken!170))) e!110307)))

(declare-fun b!181133 () Bool)

(assert (=> b!181133 (= e!110307 (equivClasses!172 (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (toValue!1218 (transformation!547 (rule!1062 separatorToken!170)))))))

(assert (= (and d!45969 res!82091) b!181133))

(declare-fun m!183819 () Bool)

(assert (=> d!45969 m!183819))

(declare-fun m!183821 () Bool)

(assert (=> b!181133 m!183821))

(assert (=> b!180405 d!45969))

(declare-fun b!181134 () Bool)

(declare-fun e!110309 () Bool)

(assert (=> b!181134 (= e!110309 (inv!16 (value!19905 (h!8421 tokens!465))))))

(declare-fun d!45971 () Bool)

(declare-fun c!35441 () Bool)

(assert (=> d!45971 (= c!35441 ((_ is IntegerValue!1707) (value!19905 (h!8421 tokens!465))))))

(assert (=> d!45971 (= (inv!21 (value!19905 (h!8421 tokens!465))) e!110309)))

(declare-fun b!181135 () Bool)

(declare-fun res!82092 () Bool)

(declare-fun e!110308 () Bool)

(assert (=> b!181135 (=> res!82092 e!110308)))

(assert (=> b!181135 (= res!82092 (not ((_ is IntegerValue!1709) (value!19905 (h!8421 tokens!465)))))))

(declare-fun e!110310 () Bool)

(assert (=> b!181135 (= e!110310 e!110308)))

(declare-fun b!181136 () Bool)

(assert (=> b!181136 (= e!110310 (inv!17 (value!19905 (h!8421 tokens!465))))))

(declare-fun b!181137 () Bool)

(assert (=> b!181137 (= e!110308 (inv!15 (value!19905 (h!8421 tokens!465))))))

(declare-fun b!181138 () Bool)

(assert (=> b!181138 (= e!110309 e!110310)))

(declare-fun c!35442 () Bool)

(assert (=> b!181138 (= c!35442 ((_ is IntegerValue!1708) (value!19905 (h!8421 tokens!465))))))

(assert (= (and d!45971 c!35441) b!181134))

(assert (= (and d!45971 (not c!35441)) b!181138))

(assert (= (and b!181138 c!35442) b!181136))

(assert (= (and b!181138 (not c!35442)) b!181135))

(assert (= (and b!181135 (not res!82092)) b!181137))

(declare-fun m!183823 () Bool)

(assert (=> b!181134 m!183823))

(declare-fun m!183825 () Bool)

(assert (=> b!181136 m!183825))

(declare-fun m!183827 () Bool)

(assert (=> b!181137 m!183827))

(assert (=> b!180426 d!45971))

(declare-fun d!45973 () Bool)

(assert (=> d!45973 (= (isEmpty!1370 (_2!1718 lt!59261)) ((_ is Nil!3022) (_2!1718 lt!59261)))))

(assert (=> b!180428 d!45973))

(declare-fun d!45975 () Bool)

(assert (=> d!45975 (= (get!849 lt!59256) (v!13847 lt!59256))))

(assert (=> b!180427 d!45975))

(declare-fun d!45977 () Bool)

(assert (=> d!45977 (= (isDefined!224 lt!59256) (not (isEmpty!1373 lt!59256)))))

(declare-fun bs!18046 () Bool)

(assert (= bs!18046 d!45977))

(declare-fun m!183829 () Bool)

(assert (=> bs!18046 m!183829))

(assert (=> b!180427 d!45977))

(declare-fun b!181139 () Bool)

(declare-fun e!110311 () Bool)

(declare-fun lt!59638 () Option!373)

(assert (=> b!181139 (= e!110311 (contains!488 rules!1920 (rule!1062 (_1!1718 (get!849 lt!59638)))))))

(declare-fun b!181140 () Bool)

(declare-fun res!82096 () Bool)

(assert (=> b!181140 (=> (not res!82096) (not e!110311))))

(assert (=> b!181140 (= res!82096 (= (value!19905 (_1!1718 (get!849 lt!59638))) (apply!449 (transformation!547 (rule!1062 (_1!1718 (get!849 lt!59638)))) (seqFromList!472 (originalCharacters!590 (_1!1718 (get!849 lt!59638)))))))))

(declare-fun b!181141 () Bool)

(declare-fun e!110312 () Option!373)

(declare-fun call!8210 () Option!373)

(assert (=> b!181141 (= e!110312 call!8210)))

(declare-fun b!181142 () Bool)

(declare-fun res!82094 () Bool)

(assert (=> b!181142 (=> (not res!82094) (not e!110311))))

(assert (=> b!181142 (= res!82094 (< (size!2475 (_2!1718 (get!849 lt!59638))) (size!2475 lt!59260)))))

(declare-fun b!181143 () Bool)

(declare-fun res!82099 () Bool)

(assert (=> b!181143 (=> (not res!82099) (not e!110311))))

(assert (=> b!181143 (= res!82099 (= (list!1109 (charsOf!202 (_1!1718 (get!849 lt!59638)))) (originalCharacters!590 (_1!1718 (get!849 lt!59638)))))))

(declare-fun b!181145 () Bool)

(declare-fun lt!59636 () Option!373)

(declare-fun lt!59637 () Option!373)

(assert (=> b!181145 (= e!110312 (ite (and ((_ is None!372) lt!59636) ((_ is None!372) lt!59637)) None!372 (ite ((_ is None!372) lt!59637) lt!59636 (ite ((_ is None!372) lt!59636) lt!59637 (ite (>= (size!2471 (_1!1718 (v!13847 lt!59636))) (size!2471 (_1!1718 (v!13847 lt!59637)))) lt!59636 lt!59637)))))))

(assert (=> b!181145 (= lt!59636 call!8210)))

(assert (=> b!181145 (= lt!59637 (maxPrefix!163 thiss!17480 (t!28243 rules!1920) lt!59260))))

(declare-fun bm!8205 () Bool)

(assert (=> bm!8205 (= call!8210 (maxPrefixOneRule!81 thiss!17480 (h!8420 rules!1920) lt!59260))))

(declare-fun b!181146 () Bool)

(declare-fun res!82097 () Bool)

(assert (=> b!181146 (=> (not res!82097) (not e!110311))))

(assert (=> b!181146 (= res!82097 (matchR!109 (regex!547 (rule!1062 (_1!1718 (get!849 lt!59638)))) (list!1109 (charsOf!202 (_1!1718 (get!849 lt!59638))))))))

(declare-fun b!181147 () Bool)

(declare-fun e!110313 () Bool)

(assert (=> b!181147 (= e!110313 e!110311)))

(declare-fun res!82095 () Bool)

(assert (=> b!181147 (=> (not res!82095) (not e!110311))))

(assert (=> b!181147 (= res!82095 (isDefined!224 lt!59638))))

(declare-fun b!181144 () Bool)

(declare-fun res!82093 () Bool)

(assert (=> b!181144 (=> (not res!82093) (not e!110311))))

(assert (=> b!181144 (= res!82093 (= (++!710 (list!1109 (charsOf!202 (_1!1718 (get!849 lt!59638)))) (_2!1718 (get!849 lt!59638))) lt!59260))))

(declare-fun d!45979 () Bool)

(assert (=> d!45979 e!110313))

(declare-fun res!82098 () Bool)

(assert (=> d!45979 (=> res!82098 e!110313)))

(assert (=> d!45979 (= res!82098 (isEmpty!1373 lt!59638))))

(assert (=> d!45979 (= lt!59638 e!110312)))

(declare-fun c!35443 () Bool)

(assert (=> d!45979 (= c!35443 (and ((_ is Cons!3023) rules!1920) ((_ is Nil!3023) (t!28243 rules!1920))))))

(declare-fun lt!59640 () Unit!2764)

(declare-fun lt!59639 () Unit!2764)

(assert (=> d!45979 (= lt!59640 lt!59639)))

(assert (=> d!45979 (isPrefix!243 lt!59260 lt!59260)))

(assert (=> d!45979 (= lt!59639 (lemmaIsPrefixRefl!147 lt!59260 lt!59260))))

(assert (=> d!45979 (rulesValidInductive!134 thiss!17480 rules!1920)))

(assert (=> d!45979 (= (maxPrefix!163 thiss!17480 rules!1920 lt!59260) lt!59638)))

(assert (= (and d!45979 c!35443) b!181141))

(assert (= (and d!45979 (not c!35443)) b!181145))

(assert (= (or b!181141 b!181145) bm!8205))

(assert (= (and d!45979 (not res!82098)) b!181147))

(assert (= (and b!181147 res!82095) b!181143))

(assert (= (and b!181143 res!82099) b!181142))

(assert (= (and b!181142 res!82094) b!181144))

(assert (= (and b!181144 res!82093) b!181140))

(assert (= (and b!181140 res!82096) b!181146))

(assert (= (and b!181146 res!82097) b!181139))

(declare-fun m!183831 () Bool)

(assert (=> b!181139 m!183831))

(declare-fun m!183833 () Bool)

(assert (=> b!181139 m!183833))

(assert (=> b!181146 m!183831))

(declare-fun m!183835 () Bool)

(assert (=> b!181146 m!183835))

(assert (=> b!181146 m!183835))

(declare-fun m!183837 () Bool)

(assert (=> b!181146 m!183837))

(assert (=> b!181146 m!183837))

(declare-fun m!183839 () Bool)

(assert (=> b!181146 m!183839))

(assert (=> b!181143 m!183831))

(assert (=> b!181143 m!183835))

(assert (=> b!181143 m!183835))

(assert (=> b!181143 m!183837))

(declare-fun m!183841 () Bool)

(assert (=> b!181145 m!183841))

(declare-fun m!183843 () Bool)

(assert (=> b!181147 m!183843))

(assert (=> b!181144 m!183831))

(assert (=> b!181144 m!183835))

(assert (=> b!181144 m!183835))

(assert (=> b!181144 m!183837))

(assert (=> b!181144 m!183837))

(declare-fun m!183845 () Bool)

(assert (=> b!181144 m!183845))

(assert (=> b!181142 m!183831))

(declare-fun m!183847 () Bool)

(assert (=> b!181142 m!183847))

(assert (=> b!181142 m!183079))

(declare-fun m!183849 () Bool)

(assert (=> bm!8205 m!183849))

(assert (=> b!181140 m!183831))

(declare-fun m!183851 () Bool)

(assert (=> b!181140 m!183851))

(assert (=> b!181140 m!183851))

(declare-fun m!183853 () Bool)

(assert (=> b!181140 m!183853))

(declare-fun m!183855 () Bool)

(assert (=> d!45979 m!183855))

(declare-fun m!183857 () Bool)

(assert (=> d!45979 m!183857))

(declare-fun m!183859 () Bool)

(assert (=> d!45979 m!183859))

(assert (=> d!45979 m!183075))

(assert (=> b!180427 d!45979))

(declare-fun d!45981 () Bool)

(assert (=> d!45981 (= (list!1109 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 lt!59274 separatorToken!170 0)) (list!1112 (c!35309 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 lt!59274 separatorToken!170 0))))))

(declare-fun bs!18047 () Bool)

(assert (= bs!18047 d!45981))

(declare-fun m!183861 () Bool)

(assert (=> bs!18047 m!183861))

(assert (=> b!180406 d!45981))

(declare-fun bs!18048 () Bool)

(declare-fun d!45983 () Bool)

(assert (= bs!18048 (and d!45983 d!45915)))

(declare-fun lambda!5356 () Int)

(assert (=> bs!18048 (= lambda!5356 lambda!5354)))

(declare-fun bs!18049 () Bool)

(assert (= bs!18049 (and d!45983 b!180422)))

(assert (=> bs!18049 (= lambda!5356 lambda!5323)))

(declare-fun bs!18050 () Bool)

(assert (= bs!18050 (and d!45983 d!45845)))

(assert (=> bs!18050 (not (= lambda!5356 lambda!5338))))

(declare-fun bs!18051 () Bool)

(assert (= bs!18051 (and d!45983 b!181084)))

(assert (=> bs!18051 (not (= lambda!5356 lambda!5355))))

(declare-fun bs!18052 () Bool)

(assert (= bs!18052 (and d!45983 b!180404)))

(assert (=> bs!18052 (not (= lambda!5356 lambda!5324))))

(declare-fun bs!18053 () Bool)

(assert (= bs!18053 (and d!45983 b!180945)))

(assert (=> bs!18053 (not (= lambda!5356 lambda!5346))))

(declare-fun bs!18054 () Bool)

(declare-fun b!181149 () Bool)

(assert (= bs!18054 (and b!181149 d!45915)))

(declare-fun lambda!5357 () Int)

(assert (=> bs!18054 (not (= lambda!5357 lambda!5354))))

(declare-fun bs!18055 () Bool)

(assert (= bs!18055 (and b!181149 b!180422)))

(assert (=> bs!18055 (not (= lambda!5357 lambda!5323))))

(declare-fun bs!18056 () Bool)

(assert (= bs!18056 (and b!181149 d!45983)))

(assert (=> bs!18056 (not (= lambda!5357 lambda!5356))))

(declare-fun bs!18057 () Bool)

(assert (= bs!18057 (and b!181149 d!45845)))

(assert (=> bs!18057 (= lambda!5357 lambda!5338)))

(declare-fun bs!18058 () Bool)

(assert (= bs!18058 (and b!181149 b!181084)))

(assert (=> bs!18058 (= lambda!5357 lambda!5355)))

(declare-fun bs!18059 () Bool)

(assert (= bs!18059 (and b!181149 b!180404)))

(assert (=> bs!18059 (= lambda!5357 lambda!5324)))

(declare-fun bs!18060 () Bool)

(assert (= bs!18060 (and b!181149 b!180945)))

(assert (=> bs!18060 (= lambda!5357 lambda!5346)))

(declare-fun b!181161 () Bool)

(declare-fun e!110323 () Bool)

(assert (=> b!181161 (= e!110323 true)))

(declare-fun b!181160 () Bool)

(declare-fun e!110322 () Bool)

(assert (=> b!181160 (= e!110322 e!110323)))

(declare-fun b!181159 () Bool)

(declare-fun e!110321 () Bool)

(assert (=> b!181159 (= e!110321 e!110322)))

(assert (=> b!181149 e!110321))

(assert (= b!181160 b!181161))

(assert (= b!181159 b!181160))

(assert (= (and b!181149 ((_ is Cons!3023) rules!1920)) b!181159))

(assert (=> b!181161 (< (dynLambda!1207 order!1757 (toValue!1218 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5357))))

(assert (=> b!181161 (< (dynLambda!1209 order!1761 (toChars!1077 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5357))))

(assert (=> b!181149 true))

(declare-fun bm!8206 () Bool)

(declare-fun call!8211 () Token!838)

(declare-fun call!8214 () Token!838)

(assert (=> bm!8206 (= call!8211 call!8214)))

(declare-fun call!8212 () BalanceConc!1840)

(declare-fun bm!8207 () Bool)

(declare-fun c!35444 () Bool)

(declare-fun c!35447 () Bool)

(assert (=> bm!8207 (= call!8212 (charsOf!202 (ite c!35444 call!8214 (ite c!35447 separatorToken!170 call!8211))))))

(declare-fun bm!8208 () Bool)

(declare-fun c!35446 () Bool)

(assert (=> bm!8208 (= c!35446 c!35444)))

(declare-fun call!8213 () BalanceConc!1840)

(declare-fun lt!59654 () BalanceConc!1840)

(declare-fun e!110320 () BalanceConc!1840)

(declare-fun call!8215 () BalanceConc!1840)

(assert (=> bm!8208 (= call!8215 (++!712 e!110320 (ite c!35444 lt!59654 call!8213)))))

(declare-fun b!181148 () Bool)

(declare-fun e!110315 () Bool)

(declare-fun lt!59641 () Option!372)

(assert (=> b!181148 (= e!110315 (= (_1!1717 (v!13846 lt!59641)) (apply!451 lt!59274 0)))))

(declare-fun e!110316 () BalanceConc!1840)

(declare-fun e!110317 () BalanceConc!1840)

(assert (=> b!181149 (= e!110316 e!110317)))

(declare-fun lt!59650 () List!3034)

(assert (=> b!181149 (= lt!59650 (list!1113 lt!59274))))

(declare-fun lt!59652 () Unit!2764)

(assert (=> b!181149 (= lt!59652 (lemmaDropApply!138 lt!59650 0))))

(assert (=> b!181149 (= (head!624 (drop!151 lt!59650 0)) (apply!452 lt!59650 0))))

(declare-fun lt!59649 () Unit!2764)

(assert (=> b!181149 (= lt!59649 lt!59652)))

(declare-fun lt!59647 () List!3034)

(assert (=> b!181149 (= lt!59647 (list!1113 lt!59274))))

(declare-fun lt!59645 () Unit!2764)

(assert (=> b!181149 (= lt!59645 (lemmaDropTail!130 lt!59647 0))))

(assert (=> b!181149 (= (tail!362 (drop!151 lt!59647 0)) (drop!151 lt!59647 (+ 0 1)))))

(declare-fun lt!59648 () Unit!2764)

(assert (=> b!181149 (= lt!59648 lt!59645)))

(declare-fun lt!59651 () Unit!2764)

(assert (=> b!181149 (= lt!59651 (forallContained!114 (list!1113 lt!59274) lambda!5357 (apply!451 lt!59274 0)))))

(assert (=> b!181149 (= lt!59654 (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 lt!59274 separatorToken!170 (+ 0 1)))))

(assert (=> b!181149 (= lt!59641 (maxPrefixZipperSequence!126 thiss!17480 rules!1920 (++!712 (charsOf!202 (apply!451 lt!59274 0)) lt!59654)))))

(declare-fun res!82102 () Bool)

(assert (=> b!181149 (= res!82102 ((_ is Some!371) lt!59641))))

(assert (=> b!181149 (=> (not res!82102) (not e!110315))))

(assert (=> b!181149 (= c!35444 e!110315)))

(declare-fun lt!59644 () BalanceConc!1840)

(assert (=> d!45983 (= (list!1109 lt!59644) (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 (dropList!98 lt!59274 0) separatorToken!170))))

(assert (=> d!45983 (= lt!59644 e!110316)))

(declare-fun c!35445 () Bool)

(assert (=> d!45983 (= c!35445 (>= 0 (size!2476 lt!59274)))))

(declare-fun lt!59643 () Unit!2764)

(assert (=> d!45983 (= lt!59643 (lemmaContentSubsetPreservesForall!42 (list!1113 lt!59274) (dropList!98 lt!59274 0) lambda!5356))))

(declare-fun e!110314 () Bool)

(assert (=> d!45983 e!110314))

(declare-fun res!82101 () Bool)

(assert (=> d!45983 (=> (not res!82101) (not e!110314))))

(assert (=> d!45983 (= res!82101 (>= 0 0))))

(assert (=> d!45983 (= (printWithSeparatorTokenWhenNeededRec!116 thiss!17480 rules!1920 lt!59274 separatorToken!170 0) lt!59644)))

(declare-fun b!181150 () Bool)

(declare-fun e!110319 () BalanceConc!1840)

(assert (=> b!181150 (= e!110319 (BalanceConc!1841 Empty!916))))

(assert (=> b!181150 (= (print!164 thiss!17480 (singletonSeq!99 call!8211)) (printTailRec!127 thiss!17480 (singletonSeq!99 call!8211) 0 (BalanceConc!1841 Empty!916)))))

(declare-fun lt!59642 () Unit!2764)

(declare-fun Unit!2778 () Unit!2764)

(assert (=> b!181150 (= lt!59642 Unit!2778)))

(declare-fun lt!59646 () Unit!2764)

(assert (=> b!181150 (= lt!59646 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!46 thiss!17480 rules!1920 (list!1109 call!8213) (list!1109 lt!59654)))))

(assert (=> b!181150 false))

(declare-fun lt!59653 () Unit!2764)

(declare-fun Unit!2779 () Unit!2764)

(assert (=> b!181150 (= lt!59653 Unit!2779)))

(declare-fun b!181151 () Bool)

(assert (=> b!181151 (= e!110314 (<= 0 (size!2476 lt!59274)))))

(declare-fun b!181152 () Bool)

(assert (=> b!181152 (= e!110316 (BalanceConc!1841 Empty!916))))

(declare-fun bm!8209 () Bool)

(assert (=> bm!8209 (= call!8214 (apply!451 lt!59274 0))))

(declare-fun b!181153 () Bool)

(assert (=> b!181153 (= e!110320 call!8212)))

(declare-fun bm!8210 () Bool)

(assert (=> bm!8210 (= call!8213 call!8212)))

(declare-fun b!181154 () Bool)

(assert (=> b!181154 (= e!110319 (++!712 call!8215 lt!59654))))

(declare-fun b!181155 () Bool)

(assert (=> b!181155 (= e!110320 (charsOf!202 call!8211))))

(declare-fun b!181156 () Bool)

(declare-fun e!110318 () Bool)

(assert (=> b!181156 (= e!110318 (not (= (_1!1717 (v!13846 lt!59641)) call!8214)))))

(declare-fun b!181157 () Bool)

(assert (=> b!181157 (= c!35447 e!110318)))

(declare-fun res!82100 () Bool)

(assert (=> b!181157 (=> (not res!82100) (not e!110318))))

(assert (=> b!181157 (= res!82100 ((_ is Some!371) lt!59641))))

(assert (=> b!181157 (= e!110317 e!110319)))

(declare-fun b!181158 () Bool)

(assert (=> b!181158 (= e!110317 call!8215)))

(assert (= (and d!45983 res!82101) b!181151))

(assert (= (and d!45983 c!35445) b!181152))

(assert (= (and d!45983 (not c!35445)) b!181149))

(assert (= (and b!181149 res!82102) b!181148))

(assert (= (and b!181149 c!35444) b!181158))

(assert (= (and b!181149 (not c!35444)) b!181157))

(assert (= (and b!181157 res!82100) b!181156))

(assert (= (and b!181157 c!35447) b!181154))

(assert (= (and b!181157 (not c!35447)) b!181150))

(assert (= (or b!181154 b!181150) bm!8206))

(assert (= (or b!181154 b!181150) bm!8210))

(assert (= (or b!181158 bm!8206 b!181156) bm!8209))

(assert (= (or b!181158 bm!8210) bm!8207))

(assert (= (or b!181158 b!181154) bm!8208))

(assert (= (and bm!8208 c!35446) b!181153))

(assert (= (and bm!8208 (not c!35446)) b!181155))

(declare-fun m!183863 () Bool)

(assert (=> bm!8207 m!183863))

(declare-fun m!183865 () Bool)

(assert (=> b!181149 m!183865))

(declare-fun m!183867 () Bool)

(assert (=> b!181149 m!183867))

(declare-fun m!183869 () Bool)

(assert (=> b!181149 m!183869))

(declare-fun m!183871 () Bool)

(assert (=> b!181149 m!183871))

(declare-fun m!183873 () Bool)

(assert (=> b!181149 m!183873))

(declare-fun m!183875 () Bool)

(assert (=> b!181149 m!183875))

(declare-fun m!183877 () Bool)

(assert (=> b!181149 m!183877))

(assert (=> b!181149 m!183297))

(assert (=> b!181149 m!183873))

(declare-fun m!183879 () Bool)

(assert (=> b!181149 m!183879))

(assert (=> b!181149 m!183297))

(declare-fun m!183881 () Bool)

(assert (=> b!181149 m!183881))

(declare-fun m!183883 () Bool)

(assert (=> b!181149 m!183883))

(declare-fun m!183885 () Bool)

(assert (=> b!181149 m!183885))

(assert (=> b!181149 m!183869))

(assert (=> b!181149 m!183867))

(declare-fun m!183887 () Bool)

(assert (=> b!181149 m!183887))

(assert (=> b!181149 m!183885))

(declare-fun m!183889 () Bool)

(assert (=> b!181149 m!183889))

(assert (=> b!181149 m!183873))

(assert (=> b!181149 m!183883))

(declare-fun m!183891 () Bool)

(assert (=> b!181149 m!183891))

(declare-fun m!183893 () Bool)

(assert (=> bm!8208 m!183893))

(declare-fun m!183895 () Bool)

(assert (=> d!45983 m!183895))

(assert (=> d!45983 m!183297))

(declare-fun m!183897 () Bool)

(assert (=> d!45983 m!183897))

(declare-fun m!183899 () Bool)

(assert (=> d!45983 m!183899))

(assert (=> d!45983 m!183897))

(declare-fun m!183901 () Bool)

(assert (=> d!45983 m!183901))

(assert (=> d!45983 m!183297))

(assert (=> d!45983 m!183897))

(declare-fun m!183903 () Bool)

(assert (=> d!45983 m!183903))

(declare-fun m!183905 () Bool)

(assert (=> b!181150 m!183905))

(declare-fun m!183907 () Bool)

(assert (=> b!181150 m!183907))

(declare-fun m!183909 () Bool)

(assert (=> b!181150 m!183909))

(declare-fun m!183911 () Bool)

(assert (=> b!181150 m!183911))

(assert (=> b!181150 m!183905))

(declare-fun m!183913 () Bool)

(assert (=> b!181150 m!183913))

(assert (=> b!181150 m!183905))

(declare-fun m!183915 () Bool)

(assert (=> b!181150 m!183915))

(assert (=> b!181150 m!183909))

(assert (=> b!181150 m!183907))

(assert (=> b!181151 m!183903))

(assert (=> bm!8209 m!183873))

(assert (=> b!181148 m!183873))

(declare-fun m!183917 () Bool)

(assert (=> b!181154 m!183917))

(declare-fun m!183919 () Bool)

(assert (=> b!181155 m!183919))

(assert (=> b!180406 d!45983))

(declare-fun bs!18061 () Bool)

(declare-fun b!181164 () Bool)

(assert (= bs!18061 (and b!181164 d!45915)))

(declare-fun lambda!5358 () Int)

(assert (=> bs!18061 (not (= lambda!5358 lambda!5354))))

(declare-fun bs!18062 () Bool)

(assert (= bs!18062 (and b!181164 b!181149)))

(assert (=> bs!18062 (= lambda!5358 lambda!5357)))

(declare-fun bs!18063 () Bool)

(assert (= bs!18063 (and b!181164 b!180422)))

(assert (=> bs!18063 (not (= lambda!5358 lambda!5323))))

(declare-fun bs!18064 () Bool)

(assert (= bs!18064 (and b!181164 d!45983)))

(assert (=> bs!18064 (not (= lambda!5358 lambda!5356))))

(declare-fun bs!18065 () Bool)

(assert (= bs!18065 (and b!181164 d!45845)))

(assert (=> bs!18065 (= lambda!5358 lambda!5338)))

(declare-fun bs!18066 () Bool)

(assert (= bs!18066 (and b!181164 b!181084)))

(assert (=> bs!18066 (= lambda!5358 lambda!5355)))

(declare-fun bs!18067 () Bool)

(assert (= bs!18067 (and b!181164 b!180404)))

(assert (=> bs!18067 (= lambda!5358 lambda!5324)))

(declare-fun bs!18068 () Bool)

(assert (= bs!18068 (and b!181164 b!180945)))

(assert (=> bs!18068 (= lambda!5358 lambda!5346)))

(declare-fun b!181172 () Bool)

(declare-fun e!110330 () Bool)

(assert (=> b!181172 (= e!110330 true)))

(declare-fun b!181171 () Bool)

(declare-fun e!110329 () Bool)

(assert (=> b!181171 (= e!110329 e!110330)))

(declare-fun b!181170 () Bool)

(declare-fun e!110328 () Bool)

(assert (=> b!181170 (= e!110328 e!110329)))

(assert (=> b!181164 e!110328))

(assert (= b!181171 b!181172))

(assert (= b!181170 b!181171))

(assert (= (and b!181164 ((_ is Cons!3023) rules!1920)) b!181170))

(assert (=> b!181172 (< (dynLambda!1207 order!1757 (toValue!1218 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5358))))

(assert (=> b!181172 (< (dynLambda!1209 order!1761 (toChars!1077 (transformation!547 (h!8420 rules!1920)))) (dynLambda!1208 order!1759 lambda!5358))))

(assert (=> b!181164 true))

(declare-fun b!181162 () Bool)

(declare-fun e!110324 () List!3032)

(assert (=> b!181162 (= e!110324 Nil!3022)))

(assert (=> b!181162 (= (print!164 thiss!17480 (singletonSeq!99 (h!8421 tokens!465))) (printTailRec!127 thiss!17480 (singletonSeq!99 (h!8421 tokens!465)) 0 (BalanceConc!1841 Empty!916)))))

(declare-fun lt!59658 () Unit!2764)

(declare-fun Unit!2780 () Unit!2764)

(assert (=> b!181162 (= lt!59658 Unit!2780)))

(declare-fun call!8219 () List!3032)

(declare-fun lt!59657 () Unit!2764)

(declare-fun lt!59660 () List!3032)

(assert (=> b!181162 (= lt!59657 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!46 thiss!17480 rules!1920 call!8219 lt!59660))))

(assert (=> b!181162 false))

(declare-fun lt!59656 () Unit!2764)

(declare-fun Unit!2781 () Unit!2764)

(assert (=> b!181162 (= lt!59656 Unit!2781)))

(declare-fun b!181163 () Bool)

(declare-fun e!110327 () List!3032)

(declare-fun call!8216 () List!3032)

(assert (=> b!181163 (= e!110327 call!8216)))

(declare-fun e!110326 () List!3032)

(assert (=> b!181164 (= e!110326 e!110327)))

(declare-fun lt!59655 () Unit!2764)

(assert (=> b!181164 (= lt!59655 (forallContained!114 tokens!465 lambda!5358 (h!8421 tokens!465)))))

(assert (=> b!181164 (= lt!59660 (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 (t!28244 tokens!465) separatorToken!170))))

(declare-fun lt!59659 () Option!373)

(assert (=> b!181164 (= lt!59659 (maxPrefix!163 thiss!17480 rules!1920 (++!710 (list!1109 (charsOf!202 (h!8421 tokens!465))) lt!59660)))))

(declare-fun c!35448 () Bool)

(assert (=> b!181164 (= c!35448 (and ((_ is Some!372) lt!59659) (= (_1!1718 (v!13847 lt!59659)) (h!8421 tokens!465))))))

(declare-fun call!8220 () BalanceConc!1840)

(declare-fun bm!8211 () Bool)

(declare-fun call!8217 () BalanceConc!1840)

(declare-fun call!8218 () List!3032)

(assert (=> bm!8211 (= call!8218 (list!1109 (ite c!35448 call!8217 call!8220)))))

(declare-fun bm!8212 () Bool)

(assert (=> bm!8212 (= call!8216 (++!710 call!8218 (ite c!35448 lt!59660 call!8219)))))

(declare-fun bm!8213 () Bool)

(declare-fun e!110325 () BalanceConc!1840)

(assert (=> bm!8213 (= call!8219 (list!1109 e!110325))))

(declare-fun c!35451 () Bool)

(declare-fun c!35449 () Bool)

(assert (=> bm!8213 (= c!35451 c!35449)))

(declare-fun bm!8214 () Bool)

(assert (=> bm!8214 (= call!8220 call!8217)))

(declare-fun b!181166 () Bool)

(assert (=> b!181166 (= e!110326 Nil!3022)))

(declare-fun bm!8215 () Bool)

(assert (=> bm!8215 (= call!8217 (charsOf!202 (h!8421 tokens!465)))))

(declare-fun b!181167 () Bool)

(assert (=> b!181167 (= e!110324 (++!710 call!8216 lt!59660))))

(declare-fun b!181168 () Bool)

(assert (=> b!181168 (= c!35449 (and ((_ is Some!372) lt!59659) (not (= (_1!1718 (v!13847 lt!59659)) (h!8421 tokens!465)))))))

(assert (=> b!181168 (= e!110327 e!110324)))

(declare-fun b!181169 () Bool)

(assert (=> b!181169 (= e!110325 call!8220)))

(declare-fun d!45985 () Bool)

(declare-fun c!35450 () Bool)

(assert (=> d!45985 (= c!35450 ((_ is Cons!3024) tokens!465))))

(assert (=> d!45985 (= (printWithSeparatorTokenWhenNeededList!126 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!110326)))

(declare-fun b!181165 () Bool)

(assert (=> b!181165 (= e!110325 (charsOf!202 separatorToken!170))))

(assert (= (and d!45985 c!35450) b!181164))

(assert (= (and d!45985 (not c!35450)) b!181166))

(assert (= (and b!181164 c!35448) b!181163))

(assert (= (and b!181164 (not c!35448)) b!181168))

(assert (= (and b!181168 c!35449) b!181167))

(assert (= (and b!181168 (not c!35449)) b!181162))

(assert (= (or b!181167 b!181162) bm!8214))

(assert (= (or b!181167 b!181162) bm!8213))

(assert (= (and bm!8213 c!35451) b!181165))

(assert (= (and bm!8213 (not c!35451)) b!181169))

(assert (= (or b!181163 bm!8214) bm!8215))

(assert (= (or b!181163 b!181167) bm!8211))

(assert (= (or b!181163 b!181167) bm!8212))

(assert (=> b!181162 m!182719))

(assert (=> b!181162 m!182719))

(declare-fun m!183921 () Bool)

(assert (=> b!181162 m!183921))

(assert (=> b!181162 m!182719))

(declare-fun m!183923 () Bool)

(assert (=> b!181162 m!183923))

(declare-fun m!183925 () Bool)

(assert (=> b!181162 m!183925))

(declare-fun m!183927 () Bool)

(assert (=> bm!8212 m!183927))

(assert (=> b!181165 m!182765))

(declare-fun m!183929 () Bool)

(assert (=> b!181164 m!183929))

(declare-fun m!183931 () Bool)

(assert (=> b!181164 m!183931))

(assert (=> b!181164 m!182783))

(assert (=> b!181164 m!182785))

(assert (=> b!181164 m!183929))

(assert (=> b!181164 m!182777))

(assert (=> b!181164 m!182785))

(assert (=> b!181164 m!182777))

(declare-fun m!183933 () Bool)

(assert (=> b!181164 m!183933))

(assert (=> bm!8215 m!182777))

(declare-fun m!183935 () Bool)

(assert (=> bm!8213 m!183935))

(declare-fun m!183937 () Bool)

(assert (=> bm!8211 m!183937))

(declare-fun m!183939 () Bool)

(assert (=> b!181167 m!183939))

(assert (=> b!180406 d!45985))

(declare-fun d!45987 () Bool)

(declare-fun res!82105 () Bool)

(declare-fun e!110333 () Bool)

(assert (=> d!45987 (=> (not res!82105) (not e!110333))))

(declare-fun rulesValid!155 (LexerInterface!433 List!3033) Bool)

(assert (=> d!45987 (= res!82105 (rulesValid!155 thiss!17480 rules!1920))))

(assert (=> d!45987 (= (rulesInvariant!399 thiss!17480 rules!1920) e!110333)))

(declare-fun b!181175 () Bool)

(declare-datatypes ((List!3036 0))(
  ( (Nil!3026) (Cons!3026 (h!8423 String!3925) (t!28310 List!3036)) )
))
(declare-fun noDuplicateTag!155 (LexerInterface!433 List!3033 List!3036) Bool)

(assert (=> b!181175 (= e!110333 (noDuplicateTag!155 thiss!17480 rules!1920 Nil!3026))))

(assert (= (and d!45987 res!82105) b!181175))

(declare-fun m!183941 () Bool)

(assert (=> d!45987 m!183941))

(declare-fun m!183943 () Bool)

(assert (=> b!181175 m!183943))

(assert (=> b!180408 d!45987))

(declare-fun d!45989 () Bool)

(declare-fun lt!59661 () Bool)

(declare-fun e!110334 () Bool)

(assert (=> d!45989 (= lt!59661 e!110334)))

(declare-fun res!82107 () Bool)

(assert (=> d!45989 (=> (not res!82107) (not e!110334))))

(assert (=> d!45989 (= res!82107 (= (list!1113 (_1!1719 (lex!233 thiss!17480 rules!1920 (print!164 thiss!17480 (singletonSeq!99 (h!8421 tokens!465)))))) (list!1113 (singletonSeq!99 (h!8421 tokens!465)))))))

(declare-fun e!110335 () Bool)

(assert (=> d!45989 (= lt!59661 e!110335)))

(declare-fun res!82108 () Bool)

(assert (=> d!45989 (=> (not res!82108) (not e!110335))))

(declare-fun lt!59662 () tuple2!3006)

(assert (=> d!45989 (= res!82108 (= (size!2476 (_1!1719 lt!59662)) 1))))

(assert (=> d!45989 (= lt!59662 (lex!233 thiss!17480 rules!1920 (print!164 thiss!17480 (singletonSeq!99 (h!8421 tokens!465)))))))

(assert (=> d!45989 (not (isEmpty!1367 rules!1920))))

(assert (=> d!45989 (= (rulesProduceIndividualToken!182 thiss!17480 rules!1920 (h!8421 tokens!465)) lt!59661)))

(declare-fun b!181176 () Bool)

(declare-fun res!82106 () Bool)

(assert (=> b!181176 (=> (not res!82106) (not e!110335))))

(assert (=> b!181176 (= res!82106 (= (apply!451 (_1!1719 lt!59662) 0) (h!8421 tokens!465)))))

(declare-fun b!181177 () Bool)

(assert (=> b!181177 (= e!110335 (isEmpty!1377 (_2!1719 lt!59662)))))

(declare-fun b!181178 () Bool)

(assert (=> b!181178 (= e!110334 (isEmpty!1377 (_2!1719 (lex!233 thiss!17480 rules!1920 (print!164 thiss!17480 (singletonSeq!99 (h!8421 tokens!465)))))))))

(assert (= (and d!45989 res!82108) b!181176))

(assert (= (and b!181176 res!82106) b!181177))

(assert (= (and d!45989 res!82107) b!181178))

(declare-fun m!183945 () Bool)

(assert (=> d!45989 m!183945))

(assert (=> d!45989 m!183921))

(declare-fun m!183947 () Bool)

(assert (=> d!45989 m!183947))

(assert (=> d!45989 m!182719))

(declare-fun m!183949 () Bool)

(assert (=> d!45989 m!183949))

(assert (=> d!45989 m!182705))

(assert (=> d!45989 m!182719))

(assert (=> d!45989 m!183921))

(assert (=> d!45989 m!182719))

(declare-fun m!183951 () Bool)

(assert (=> d!45989 m!183951))

(declare-fun m!183953 () Bool)

(assert (=> b!181176 m!183953))

(declare-fun m!183955 () Bool)

(assert (=> b!181177 m!183955))

(assert (=> b!181178 m!182719))

(assert (=> b!181178 m!182719))

(assert (=> b!181178 m!183921))

(assert (=> b!181178 m!183921))

(assert (=> b!181178 m!183947))

(declare-fun m!183957 () Bool)

(assert (=> b!181178 m!183957))

(assert (=> b!180407 d!45989))

(declare-fun d!45991 () Bool)

(assert (=> d!45991 (= (isEmpty!1367 rules!1920) ((_ is Nil!3023) rules!1920))))

(assert (=> b!180409 d!45991))

(declare-fun b!181183 () Bool)

(declare-fun e!110338 () Bool)

(declare-fun tp_is_empty!1675 () Bool)

(declare-fun tp!86334 () Bool)

(assert (=> b!181183 (= e!110338 (and tp_is_empty!1675 tp!86334))))

(assert (=> b!180421 (= tp!86261 e!110338)))

(assert (= (and b!180421 ((_ is Cons!3022) (originalCharacters!590 separatorToken!170))) b!181183))

(declare-fun b!181194 () Bool)

(declare-fun b_free!7013 () Bool)

(declare-fun b_next!7013 () Bool)

(assert (=> b!181194 (= b_free!7013 (not b_next!7013))))

(declare-fun tp!86343 () Bool)

(declare-fun b_and!12377 () Bool)

(assert (=> b!181194 (= tp!86343 b_and!12377)))

(declare-fun b_free!7015 () Bool)

(declare-fun b_next!7015 () Bool)

(assert (=> b!181194 (= b_free!7015 (not b_next!7015))))

(declare-fun t!28303 () Bool)

(declare-fun tb!7569 () Bool)

(assert (=> (and b!181194 (= (toChars!1077 (transformation!547 (h!8420 (t!28243 rules!1920)))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465))))) t!28303) tb!7569))

(declare-fun result!10384 () Bool)

(assert (= result!10384 result!10350))

(assert (=> b!180536 t!28303))

(declare-fun t!28305 () Bool)

(declare-fun tb!7571 () Bool)

(assert (=> (and b!181194 (= (toChars!1077 (transformation!547 (h!8420 (t!28243 rules!1920)))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170)))) t!28305) tb!7571))

(declare-fun result!10386 () Bool)

(assert (= result!10386 result!10358))

(assert (=> b!180882 t!28305))

(assert (=> d!45941 t!28305))

(assert (=> d!45947 t!28303))

(declare-fun tp!86346 () Bool)

(declare-fun b_and!12379 () Bool)

(assert (=> b!181194 (= tp!86346 (and (=> t!28303 result!10384) (=> t!28305 result!10386) b_and!12379))))

(declare-fun e!110349 () Bool)

(assert (=> b!181194 (= e!110349 (and tp!86343 tp!86346))))

(declare-fun b!181193 () Bool)

(declare-fun e!110350 () Bool)

(declare-fun tp!86345 () Bool)

(assert (=> b!181193 (= e!110350 (and tp!86345 (inv!3852 (tag!725 (h!8420 (t!28243 rules!1920)))) (inv!3855 (transformation!547 (h!8420 (t!28243 rules!1920)))) e!110349))))

(declare-fun b!181192 () Bool)

(declare-fun e!110347 () Bool)

(declare-fun tp!86344 () Bool)

(assert (=> b!181192 (= e!110347 (and e!110350 tp!86344))))

(assert (=> b!180400 (= tp!86257 e!110347)))

(assert (= b!181193 b!181194))

(assert (= b!181192 b!181193))

(assert (= (and b!180400 ((_ is Cons!3023) (t!28243 rules!1920))) b!181192))

(declare-fun m!183959 () Bool)

(assert (=> b!181193 m!183959))

(declare-fun m!183961 () Bool)

(assert (=> b!181193 m!183961))

(declare-fun b!181208 () Bool)

(declare-fun b_free!7017 () Bool)

(declare-fun b_next!7017 () Bool)

(assert (=> b!181208 (= b_free!7017 (not b_next!7017))))

(declare-fun tp!86359 () Bool)

(declare-fun b_and!12381 () Bool)

(assert (=> b!181208 (= tp!86359 b_and!12381)))

(declare-fun b_free!7019 () Bool)

(declare-fun b_next!7019 () Bool)

(assert (=> b!181208 (= b_free!7019 (not b_next!7019))))

(declare-fun t!28307 () Bool)

(declare-fun tb!7573 () Bool)

(assert (=> (and b!181208 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 (t!28244 tokens!465))))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465))))) t!28307) tb!7573))

(declare-fun result!10390 () Bool)

(assert (= result!10390 result!10350))

(assert (=> b!180536 t!28307))

(declare-fun t!28309 () Bool)

(declare-fun tb!7575 () Bool)

(assert (=> (and b!181208 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 (t!28244 tokens!465))))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170)))) t!28309) tb!7575))

(declare-fun result!10392 () Bool)

(assert (= result!10392 result!10358))

(assert (=> b!180882 t!28309))

(assert (=> d!45941 t!28309))

(assert (=> d!45947 t!28307))

(declare-fun tp!86360 () Bool)

(declare-fun b_and!12383 () Bool)

(assert (=> b!181208 (= tp!86360 (and (=> t!28307 result!10390) (=> t!28309 result!10392) b_and!12383))))

(declare-fun e!110368 () Bool)

(assert (=> b!181208 (= e!110368 (and tp!86359 tp!86360))))

(declare-fun tp!86357 () Bool)

(declare-fun b!181207 () Bool)

(declare-fun e!110363 () Bool)

(assert (=> b!181207 (= e!110363 (and tp!86357 (inv!3852 (tag!725 (rule!1062 (h!8421 (t!28244 tokens!465))))) (inv!3855 (transformation!547 (rule!1062 (h!8421 (t!28244 tokens!465))))) e!110368))))

(declare-fun tp!86358 () Bool)

(declare-fun e!110366 () Bool)

(declare-fun b!181206 () Bool)

(assert (=> b!181206 (= e!110366 (and (inv!21 (value!19905 (h!8421 (t!28244 tokens!465)))) e!110363 tp!86358))))

(declare-fun b!181205 () Bool)

(declare-fun tp!86361 () Bool)

(declare-fun e!110364 () Bool)

(assert (=> b!181205 (= e!110364 (and (inv!3856 (h!8421 (t!28244 tokens!465))) e!110366 tp!86361))))

(assert (=> b!180410 (= tp!86263 e!110364)))

(assert (= b!181207 b!181208))

(assert (= b!181206 b!181207))

(assert (= b!181205 b!181206))

(assert (= (and b!180410 ((_ is Cons!3024) (t!28244 tokens!465))) b!181205))

(declare-fun m!183963 () Bool)

(assert (=> b!181207 m!183963))

(declare-fun m!183965 () Bool)

(assert (=> b!181207 m!183965))

(declare-fun m!183967 () Bool)

(assert (=> b!181206 m!183967))

(declare-fun m!183969 () Bool)

(assert (=> b!181205 m!183969))

(declare-fun b!181221 () Bool)

(declare-fun e!110371 () Bool)

(declare-fun tp!86372 () Bool)

(assert (=> b!181221 (= e!110371 tp!86372)))

(declare-fun b!181219 () Bool)

(assert (=> b!181219 (= e!110371 tp_is_empty!1675)))

(declare-fun b!181222 () Bool)

(declare-fun tp!86374 () Bool)

(declare-fun tp!86376 () Bool)

(assert (=> b!181222 (= e!110371 (and tp!86374 tp!86376))))

(assert (=> b!180412 (= tp!86265 e!110371)))

(declare-fun b!181220 () Bool)

(declare-fun tp!86375 () Bool)

(declare-fun tp!86373 () Bool)

(assert (=> b!181220 (= e!110371 (and tp!86375 tp!86373))))

(assert (= (and b!180412 ((_ is ElementMatch!771) (regex!547 (h!8420 rules!1920)))) b!181219))

(assert (= (and b!180412 ((_ is Concat!1341) (regex!547 (h!8420 rules!1920)))) b!181220))

(assert (= (and b!180412 ((_ is Star!771) (regex!547 (h!8420 rules!1920)))) b!181221))

(assert (= (and b!180412 ((_ is Union!771) (regex!547 (h!8420 rules!1920)))) b!181222))

(declare-fun b!181225 () Bool)

(declare-fun e!110372 () Bool)

(declare-fun tp!86377 () Bool)

(assert (=> b!181225 (= e!110372 tp!86377)))

(declare-fun b!181223 () Bool)

(assert (=> b!181223 (= e!110372 tp_is_empty!1675)))

(declare-fun b!181226 () Bool)

(declare-fun tp!86379 () Bool)

(declare-fun tp!86381 () Bool)

(assert (=> b!181226 (= e!110372 (and tp!86379 tp!86381))))

(assert (=> b!180403 (= tp!86259 e!110372)))

(declare-fun b!181224 () Bool)

(declare-fun tp!86380 () Bool)

(declare-fun tp!86378 () Bool)

(assert (=> b!181224 (= e!110372 (and tp!86380 tp!86378))))

(assert (= (and b!180403 ((_ is ElementMatch!771) (regex!547 (rule!1062 (h!8421 tokens!465))))) b!181223))

(assert (= (and b!180403 ((_ is Concat!1341) (regex!547 (rule!1062 (h!8421 tokens!465))))) b!181224))

(assert (= (and b!180403 ((_ is Star!771) (regex!547 (rule!1062 (h!8421 tokens!465))))) b!181225))

(assert (= (and b!180403 ((_ is Union!771) (regex!547 (rule!1062 (h!8421 tokens!465))))) b!181226))

(declare-fun b!181229 () Bool)

(declare-fun e!110373 () Bool)

(declare-fun tp!86382 () Bool)

(assert (=> b!181229 (= e!110373 tp!86382)))

(declare-fun b!181227 () Bool)

(assert (=> b!181227 (= e!110373 tp_is_empty!1675)))

(declare-fun b!181230 () Bool)

(declare-fun tp!86384 () Bool)

(declare-fun tp!86386 () Bool)

(assert (=> b!181230 (= e!110373 (and tp!86384 tp!86386))))

(assert (=> b!180405 (= tp!86266 e!110373)))

(declare-fun b!181228 () Bool)

(declare-fun tp!86385 () Bool)

(declare-fun tp!86383 () Bool)

(assert (=> b!181228 (= e!110373 (and tp!86385 tp!86383))))

(assert (= (and b!180405 ((_ is ElementMatch!771) (regex!547 (rule!1062 separatorToken!170)))) b!181227))

(assert (= (and b!180405 ((_ is Concat!1341) (regex!547 (rule!1062 separatorToken!170)))) b!181228))

(assert (= (and b!180405 ((_ is Star!771) (regex!547 (rule!1062 separatorToken!170)))) b!181229))

(assert (= (and b!180405 ((_ is Union!771) (regex!547 (rule!1062 separatorToken!170)))) b!181230))

(declare-fun b!181231 () Bool)

(declare-fun e!110374 () Bool)

(declare-fun tp!86387 () Bool)

(assert (=> b!181231 (= e!110374 (and tp_is_empty!1675 tp!86387))))

(assert (=> b!180426 (= tp!86267 e!110374)))

(assert (= (and b!180426 ((_ is Cons!3022) (originalCharacters!590 (h!8421 tokens!465)))) b!181231))

(declare-fun b!181234 () Bool)

(declare-fun e!110377 () Bool)

(assert (=> b!181234 (= e!110377 true)))

(declare-fun b!181233 () Bool)

(declare-fun e!110376 () Bool)

(assert (=> b!181233 (= e!110376 e!110377)))

(declare-fun b!181232 () Bool)

(declare-fun e!110375 () Bool)

(assert (=> b!181232 (= e!110375 e!110376)))

(assert (=> b!180438 e!110375))

(assert (= b!181233 b!181234))

(assert (= b!181232 b!181233))

(assert (= (and b!180438 ((_ is Cons!3023) (t!28243 rules!1920))) b!181232))

(assert (=> b!181234 (< (dynLambda!1207 order!1757 (toValue!1218 (transformation!547 (h!8420 (t!28243 rules!1920))))) (dynLambda!1208 order!1759 lambda!5324))))

(assert (=> b!181234 (< (dynLambda!1209 order!1761 (toChars!1077 (transformation!547 (h!8420 (t!28243 rules!1920))))) (dynLambda!1208 order!1759 lambda!5324))))

(declare-fun b_lambda!4347 () Bool)

(assert (= b_lambda!4317 (or (and b!181208 b_free!7019 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 (t!28244 tokens!465))))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) (and b!180418 b_free!6999) (and b!180429 b_free!6995 (= (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) (and b!181194 b_free!7015 (= (toChars!1077 (transformation!547 (h!8420 (t!28243 rules!1920)))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) (and b!180402 b_free!7003 (= (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) b_lambda!4347)))

(declare-fun b_lambda!4349 () Bool)

(assert (= b_lambda!4343 (or (and b!181208 b_free!7019 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 (t!28244 tokens!465))))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) (and b!180418 b_free!6999) (and b!180429 b_free!6995 (= (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) (and b!181194 b_free!7015 (= (toChars!1077 (transformation!547 (h!8420 (t!28243 rules!1920)))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) (and b!180402 b_free!7003 (= (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))) (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))))) b_lambda!4349)))

(declare-fun b_lambda!4351 () Bool)

(assert (= b_lambda!4345 (or b!180404 b_lambda!4351)))

(declare-fun bs!18069 () Bool)

(declare-fun d!45993 () Bool)

(assert (= bs!18069 (and d!45993 b!180404)))

(assert (=> bs!18069 (= (dynLambda!1213 lambda!5324 (h!8421 tokens!465)) (rulesProduceIndividualToken!182 thiss!17480 rules!1920 (h!8421 tokens!465)))))

(assert (=> bs!18069 m!182737))

(assert (=> d!45961 d!45993))

(declare-fun b_lambda!4353 () Bool)

(assert (= b_lambda!4325 (or (and b!180418 b_free!6999 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) (and b!180402 b_free!7003) (and b!181194 b_free!7015 (= (toChars!1077 (transformation!547 (h!8420 (t!28243 rules!1920)))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) (and b!181208 b_free!7019 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 (t!28244 tokens!465))))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) (and b!180429 b_free!6995 (= (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) b_lambda!4353)))

(declare-fun b_lambda!4355 () Bool)

(assert (= b_lambda!4341 (or (and b!180418 b_free!6999 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 tokens!465)))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) (and b!180402 b_free!7003) (and b!181194 b_free!7015 (= (toChars!1077 (transformation!547 (h!8420 (t!28243 rules!1920)))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) (and b!181208 b_free!7019 (= (toChars!1077 (transformation!547 (rule!1062 (h!8421 (t!28244 tokens!465))))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) (and b!180429 b_free!6995 (= (toChars!1077 (transformation!547 (h!8420 rules!1920))) (toChars!1077 (transformation!547 (rule!1062 separatorToken!170))))) b_lambda!4355)))

(declare-fun b_lambda!4357 () Bool)

(assert (= b_lambda!4323 (or b!180422 b_lambda!4357)))

(declare-fun bs!18070 () Bool)

(declare-fun d!45995 () Bool)

(assert (= bs!18070 (and d!45995 b!180422)))

(assert (=> bs!18070 (= (dynLambda!1213 lambda!5323 (h!8421 tokens!465)) (not (isSeparator!547 (rule!1062 (h!8421 tokens!465)))))))

(assert (=> b!180871 d!45995))

(check-sat (not tb!7555) (not d!45957) (not b_lambda!4349) (not b!180694) (not b!180581) (not b!180839) b_and!12317 (not b!180744) (not d!45953) (not bs!18069) (not b!180582) (not b!181150) (not b!180891) (not b!181231) (not b!181206) (not d!45773) (not b!181137) (not b!181084) (not b!180635) (not b!180712) (not d!45809) (not b!181131) (not d!45955) (not b!181170) (not b!180946) (not b_next!7013) (not b!180826) b_and!12371 (not d!45987) (not b!181205) (not b!180650) (not b!181224) (not b!180825) (not b!181099) (not d!45819) b_and!12383 (not d!45827) (not b!180737) (not b!181103) (not b!181086) (not b_lambda!4351) (not d!45813) (not b!181140) (not b!180640) (not b_next!6993) (not b!181085) (not d!45817) (not d!45769) (not d!45869) (not b!181164) (not bm!8212) (not bm!8204) (not b!181122) (not b!181225) (not d!45753) (not b!180883) (not b!181229) (not b!181146) (not b_next!7001) (not b!181221) (not b!180810) (not b!180886) (not b!181142) (not b_lambda!4347) (not bm!8208) (not b!181127) (not b!181121) (not tb!7549) b_and!12381 (not b!181123) (not b!180861) (not d!45941) (not b_next!7003) (not b!180715) (not b!181144) (not b_next!6997) (not b!181183) b_and!12375 (not b!180811) (not d!45947) (not b!180651) (not b!181125) (not b!181167) (not b!180738) (not bm!8211) (not b!180636) (not bm!8174) (not b!180840) (not b!181177) (not b!180632) (not b!181154) (not b!181151) (not d!45787) (not bm!8142) (not b!181147) (not b!180945) (not d!45857) (not b!181132) (not b_next!7017) (not b!180882) (not bm!8215) (not d!45977) (not b!181149) (not b!181226) (not b!180633) (not b!181102) (not b!180637) (not b_next!7019) (not b_lambda!4357) (not d!45871) (not b!181176) (not b!180854) (not bm!8213) (not d!45775) (not b!181145) (not b!181159) (not b!181090) (not b_next!7015) (not b!180851) (not d!45771) (not b!181089) (not d!45983) (not b!181155) (not d!45815) (not b!181230) (not bm!8172) b_and!12309 (not b!181124) (not b!180638) (not b!181133) (not b!181098) (not d!45943) (not b!180890) (not b!180948) (not b!180951) (not b!180537) (not b!180687) (not bm!8209) (not b!181139) (not b!180745) (not b!181232) (not b!180711) (not b!181083) tp_is_empty!1675 (not b!180689) (not b!180682) (not b!181178) (not b!181207) (not b_lambda!4355) (not d!45969) (not b!180652) (not d!45811) (not bm!8198) (not b!180823) (not b_lambda!4353) (not d!45851) (not d!45855) (not b!180545) (not b!180542) (not b!181143) (not d!45915) (not d!45945) (not b!181094) (not d!45961) (not d!45979) (not b!181134) (not d!45785) (not b!181162) (not d!45879) (not b!181228) (not bm!8199) (not b!181222) (not b!180639) (not b!181148) (not bm!8176) (not b!181192) (not b!181165) (not b!181193) (not d!45989) (not bm!8139) (not d!45853) (not d!45845) (not b!181175) (not b!180812) (not b!180713) (not d!45875) (not d!45877) (not bm!8173) b_and!12379 (not d!45959) (not d!45949) (not b_next!6995) (not b!181136) (not b!180884) (not d!45849) (not b!180943) (not b!180872) (not b!181128) (not b!181220) (not b!180693) (not d!45951) (not b!180691) (not bm!8205) (not d!45873) (not b_next!6999) b_and!12373 b_and!12377 (not b!180887) (not b!180849) (not d!45981) (not bm!8207) (not d!45965) b_and!12313 (not bm!8200) (not b!180536))
(check-sat b_and!12317 b_and!12383 (not b_next!6993) (not b_next!7001) (not b_next!7017) (not b_next!7019) (not b_next!7015) b_and!12309 b_and!12379 (not b_next!6995) b_and!12377 b_and!12313 (not b_next!7013) b_and!12371 b_and!12381 (not b_next!7003) (not b_next!6997) b_and!12375 (not b_next!6999) b_and!12373)
