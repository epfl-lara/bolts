; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177286 () Bool)

(assert start!177286)

(declare-fun b!1781626 () Bool)

(declare-fun b_free!49455 () Bool)

(declare-fun b_next!50159 () Bool)

(assert (=> b!1781626 (= b_free!49455 (not b_next!50159))))

(declare-fun tp!504363 () Bool)

(declare-fun b_and!136627 () Bool)

(assert (=> b!1781626 (= tp!504363 b_and!136627)))

(declare-fun b_free!49457 () Bool)

(declare-fun b_next!50161 () Bool)

(assert (=> b!1781626 (= b_free!49457 (not b_next!50161))))

(declare-fun tp!504362 () Bool)

(declare-fun b_and!136629 () Bool)

(assert (=> b!1781626 (= tp!504362 b_and!136629)))

(declare-fun b!1781619 () Bool)

(declare-fun b_free!49459 () Bool)

(declare-fun b_next!50163 () Bool)

(assert (=> b!1781619 (= b_free!49459 (not b_next!50163))))

(declare-fun tp!504359 () Bool)

(declare-fun b_and!136631 () Bool)

(assert (=> b!1781619 (= tp!504359 b_and!136631)))

(declare-fun b_free!49461 () Bool)

(declare-fun b_next!50165 () Bool)

(assert (=> b!1781619 (= b_free!49461 (not b_next!50165))))

(declare-fun tp!504360 () Bool)

(declare-fun b_and!136633 () Bool)

(assert (=> b!1781619 (= tp!504360 b_and!136633)))

(declare-fun b!1781610 () Bool)

(declare-fun b_free!49463 () Bool)

(declare-fun b_next!50167 () Bool)

(assert (=> b!1781610 (= b_free!49463 (not b_next!50167))))

(declare-fun tp!504361 () Bool)

(declare-fun b_and!136635 () Bool)

(assert (=> b!1781610 (= tp!504361 b_and!136635)))

(declare-fun b_free!49465 () Bool)

(declare-fun b_next!50169 () Bool)

(assert (=> b!1781610 (= b_free!49465 (not b_next!50169))))

(declare-fun tp!504368 () Bool)

(declare-fun b_and!136637 () Bool)

(assert (=> b!1781610 (= tp!504368 b_and!136637)))

(declare-fun b!1781642 () Bool)

(declare-fun e!1140221 () Bool)

(assert (=> b!1781642 (= e!1140221 true)))

(declare-fun b!1781641 () Bool)

(declare-fun e!1140220 () Bool)

(assert (=> b!1781641 (= e!1140220 e!1140221)))

(declare-fun b!1781640 () Bool)

(declare-fun e!1140219 () Bool)

(assert (=> b!1781640 (= e!1140219 e!1140220)))

(declare-fun b!1781613 () Bool)

(assert (=> b!1781613 e!1140219))

(assert (= b!1781641 b!1781642))

(assert (= b!1781640 b!1781641))

(assert (= b!1781613 b!1781640))

(declare-fun order!12667 () Int)

(declare-fun order!12669 () Int)

(declare-datatypes ((List!19702 0))(
  ( (Nil!19632) (Cons!19632 (h!25033 (_ BitVec 16)) (t!166609 List!19702)) )
))
(declare-datatypes ((TokenValue!3607 0))(
  ( (FloatLiteralValue!7214 (text!25694 List!19702)) (TokenValueExt!3606 (__x!12516 Int)) (Broken!18035 (value!109881 List!19702)) (Object!3676) (End!3607) (Def!3607) (Underscore!3607) (Match!3607) (Else!3607) (Error!3607) (Case!3607) (If!3607) (Extends!3607) (Abstract!3607) (Class!3607) (Val!3607) (DelimiterValue!7214 (del!3667 List!19702)) (KeywordValue!3613 (value!109882 List!19702)) (CommentValue!7214 (value!109883 List!19702)) (WhitespaceValue!7214 (value!109884 List!19702)) (IndentationValue!3607 (value!109885 List!19702)) (String!22366) (Int32!3607) (Broken!18036 (value!109886 List!19702)) (Boolean!3608) (Unit!33930) (OperatorValue!3610 (op!3667 List!19702)) (IdentifierValue!7214 (value!109887 List!19702)) (IdentifierValue!7215 (value!109888 List!19702)) (WhitespaceValue!7215 (value!109889 List!19702)) (True!7214) (False!7214) (Broken!18037 (value!109890 List!19702)) (Broken!18038 (value!109891 List!19702)) (True!7215) (RightBrace!3607) (RightBracket!3607) (Colon!3607) (Null!3607) (Comma!3607) (LeftBracket!3607) (False!7215) (LeftBrace!3607) (ImaginaryLiteralValue!3607 (text!25695 List!19702)) (StringLiteralValue!10821 (value!109892 List!19702)) (EOFValue!3607 (value!109893 List!19702)) (IdentValue!3607 (value!109894 List!19702)) (DelimiterValue!7215 (value!109895 List!19702)) (DedentValue!3607 (value!109896 List!19702)) (NewLineValue!3607 (value!109897 List!19702)) (IntegerValue!10821 (value!109898 (_ BitVec 32)) (text!25696 List!19702)) (IntegerValue!10822 (value!109899 Int) (text!25697 List!19702)) (Times!3607) (Or!3607) (Equal!3607) (Minus!3607) (Broken!18039 (value!109900 List!19702)) (And!3607) (Div!3607) (LessEqual!3607) (Mod!3607) (Concat!8452) (Not!3607) (Plus!3607) (SpaceValue!3607 (value!109901 List!19702)) (IntegerValue!10823 (value!109902 Int) (text!25698 List!19702)) (StringLiteralValue!10822 (text!25699 List!19702)) (FloatLiteralValue!7215 (text!25700 List!19702)) (BytesLiteralValue!3607 (value!109903 List!19702)) (CommentValue!7215 (value!109904 List!19702)) (StringLiteralValue!10823 (value!109905 List!19702)) (ErrorTokenValue!3607 (msg!3668 List!19702)) )
))
(declare-datatypes ((String!22367 0))(
  ( (String!22368 (value!109906 String)) )
))
(declare-datatypes ((C!9864 0))(
  ( (C!9865 (val!5528 Int)) )
))
(declare-datatypes ((List!19703 0))(
  ( (Nil!19633) (Cons!19633 (h!25034 C!9864) (t!166610 List!19703)) )
))
(declare-datatypes ((Regex!4845 0))(
  ( (ElementMatch!4845 (c!289844 C!9864)) (Concat!8453 (regOne!10202 Regex!4845) (regTwo!10202 Regex!4845)) (EmptyExpr!4845) (Star!4845 (reg!5174 Regex!4845)) (EmptyLang!4845) (Union!4845 (regOne!10203 Regex!4845) (regTwo!10203 Regex!4845)) )
))
(declare-datatypes ((IArray!13067 0))(
  ( (IArray!13068 (innerList!6591 List!19703)) )
))
(declare-datatypes ((Conc!6531 0))(
  ( (Node!6531 (left!15735 Conc!6531) (right!16065 Conc!6531) (csize!13292 Int) (cheight!6742 Int)) (Leaf!9510 (xs!9407 IArray!13067) (csize!13293 Int)) (Empty!6531) )
))
(declare-datatypes ((BalanceConc!13006 0))(
  ( (BalanceConc!13007 (c!289845 Conc!6531)) )
))
(declare-datatypes ((TokenValueInjection!6874 0))(
  ( (TokenValueInjection!6875 (toValue!5044 Int) (toChars!4903 Int)) )
))
(declare-datatypes ((Rule!6834 0))(
  ( (Rule!6835 (regex!3517 Regex!4845) (tag!3913 String!22367) (isSeparator!3517 Bool) (transformation!3517 TokenValueInjection!6874)) )
))
(declare-datatypes ((Token!6600 0))(
  ( (Token!6601 (value!109907 TokenValue!3607) (rule!5593 Rule!6834) (size!15596 Int) (originalCharacters!4331 List!19703)) )
))
(declare-datatypes ((tuple2!19226 0))(
  ( (tuple2!19227 (_1!11015 Token!6600) (_2!11015 List!19703)) )
))
(declare-fun lt!692478 () tuple2!19226)

(declare-fun lambda!70680 () Int)

(declare-fun dynLambda!9639 (Int Int) Int)

(declare-fun dynLambda!9640 (Int Int) Int)

(assert (=> b!1781642 (< (dynLambda!9639 order!12667 (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) (dynLambda!9640 order!12669 lambda!70680))))

(declare-fun order!12671 () Int)

(declare-fun dynLambda!9641 (Int Int) Int)

(assert (=> b!1781642 (< (dynLambda!9641 order!12671 (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) (dynLambda!9640 order!12669 lambda!70680))))

(declare-fun b!1781594 () Bool)

(declare-fun e!1140195 () Bool)

(declare-fun e!1140185 () Bool)

(assert (=> b!1781594 (= e!1140195 e!1140185)))

(declare-fun res!803054 () Bool)

(assert (=> b!1781594 (=> res!803054 e!1140185)))

(declare-fun lt!692475 () Int)

(declare-fun lt!692493 () Int)

(assert (=> b!1781594 (= res!803054 (not (= lt!692475 lt!692493)))))

(declare-datatypes ((Unit!33931 0))(
  ( (Unit!33932) )
))
(declare-fun lt!692472 () Unit!33931)

(declare-fun e!1140194 () Unit!33931)

(assert (=> b!1781594 (= lt!692472 e!1140194)))

(declare-fun c!289842 () Bool)

(assert (=> b!1781594 (= c!289842 (< lt!692475 lt!692493))))

(declare-fun rule!422 () Rule!6834)

(declare-fun tp!504364 () Bool)

(declare-fun e!1140197 () Bool)

(declare-fun e!1140210 () Bool)

(declare-fun b!1781595 () Bool)

(declare-fun inv!25547 (String!22367) Bool)

(declare-fun inv!25552 (TokenValueInjection!6874) Bool)

(assert (=> b!1781595 (= e!1140210 (and tp!504364 (inv!25547 (tag!3913 rule!422)) (inv!25552 (transformation!3517 rule!422)) e!1140197))))

(declare-fun b!1781596 () Bool)

(declare-fun e!1140193 () Bool)

(declare-fun e!1140196 () Bool)

(declare-fun tp!504369 () Bool)

(assert (=> b!1781596 (= e!1140193 (and e!1140196 tp!504369))))

(declare-fun b!1781597 () Bool)

(declare-fun e!1140183 () Bool)

(declare-fun e!1140212 () Bool)

(assert (=> b!1781597 (= e!1140183 e!1140212)))

(declare-fun res!803052 () Bool)

(assert (=> b!1781597 (=> (not res!803052) (not e!1140212))))

(declare-fun lt!692483 () tuple2!19226)

(declare-fun token!523 () Token!6600)

(assert (=> b!1781597 (= res!803052 (= (_1!11015 lt!692483) token!523))))

(declare-datatypes ((Option!4056 0))(
  ( (None!4055) (Some!4055 (v!25546 tuple2!19226)) )
))
(declare-fun lt!692498 () Option!4056)

(declare-fun get!6032 (Option!4056) tuple2!19226)

(assert (=> b!1781597 (= lt!692483 (get!6032 lt!692498))))

(declare-fun b!1781598 () Bool)

(declare-fun e!1140204 () Bool)

(assert (=> b!1781598 (= e!1140204 e!1140183)))

(declare-fun res!803074 () Bool)

(assert (=> b!1781598 (=> (not res!803074) (not e!1140183))))

(declare-fun isDefined!3399 (Option!4056) Bool)

(assert (=> b!1781598 (= res!803074 (isDefined!3399 lt!692498))))

(declare-datatypes ((LexerInterface!3146 0))(
  ( (LexerInterfaceExt!3143 (__x!12517 Int)) (Lexer!3144) )
))
(declare-fun thiss!24550 () LexerInterface!3146)

(declare-datatypes ((List!19704 0))(
  ( (Nil!19634) (Cons!19634 (h!25035 Rule!6834) (t!166611 List!19704)) )
))
(declare-fun rules!3447 () List!19704)

(declare-fun lt!692467 () List!19703)

(declare-fun maxPrefix!1700 (LexerInterface!3146 List!19704 List!19703) Option!4056)

(assert (=> b!1781598 (= lt!692498 (maxPrefix!1700 thiss!24550 rules!3447 lt!692467))))

(declare-fun lt!692503 () BalanceConc!13006)

(declare-fun list!7983 (BalanceConc!13006) List!19703)

(assert (=> b!1781598 (= lt!692467 (list!7983 lt!692503))))

(declare-fun charsOf!2166 (Token!6600) BalanceConc!13006)

(assert (=> b!1781598 (= lt!692503 (charsOf!2166 token!523))))

(declare-fun b!1781599 () Bool)

(declare-fun e!1140188 () Bool)

(declare-fun e!1140209 () Bool)

(assert (=> b!1781599 (= e!1140188 e!1140209)))

(declare-fun res!803059 () Bool)

(assert (=> b!1781599 (=> res!803059 e!1140209)))

(declare-fun lt!692500 () List!19703)

(declare-fun lt!692473 () Option!4056)

(assert (=> b!1781599 (= res!803059 (or (not (= lt!692500 (_2!11015 lt!692478))) (not (= lt!692473 (Some!4055 (tuple2!19227 (_1!11015 lt!692478) lt!692500))))))))

(assert (=> b!1781599 (= (_2!11015 lt!692478) lt!692500)))

(declare-fun lt!692466 () List!19703)

(declare-fun lt!692480 () List!19703)

(declare-fun lt!692474 () Unit!33931)

(declare-fun lemmaSamePrefixThenSameSuffix!868 (List!19703 List!19703 List!19703 List!19703 List!19703) Unit!33931)

(assert (=> b!1781599 (= lt!692474 (lemmaSamePrefixThenSameSuffix!868 lt!692480 (_2!11015 lt!692478) lt!692480 lt!692500 lt!692466))))

(declare-fun getSuffix!924 (List!19703 List!19703) List!19703)

(assert (=> b!1781599 (= lt!692500 (getSuffix!924 lt!692466 lt!692480))))

(declare-fun lt!692487 () Int)

(declare-fun lt!692497 () TokenValue!3607)

(assert (=> b!1781599 (= lt!692473 (Some!4055 (tuple2!19227 (Token!6601 lt!692497 (rule!5593 (_1!11015 lt!692478)) lt!692487 lt!692480) (_2!11015 lt!692478))))))

(declare-fun maxPrefixOneRule!1069 (LexerInterface!3146 Rule!6834 List!19703) Option!4056)

(assert (=> b!1781599 (= lt!692473 (maxPrefixOneRule!1069 thiss!24550 (rule!5593 (_1!11015 lt!692478)) lt!692466))))

(declare-fun size!15597 (List!19703) Int)

(assert (=> b!1781599 (= lt!692487 (size!15597 lt!692480))))

(declare-fun apply!5317 (TokenValueInjection!6874 BalanceConc!13006) TokenValue!3607)

(declare-fun seqFromList!2486 (List!19703) BalanceConc!13006)

(assert (=> b!1781599 (= lt!692497 (apply!5317 (transformation!3517 (rule!5593 (_1!11015 lt!692478))) (seqFromList!2486 lt!692480)))))

(declare-fun lt!692505 () Unit!33931)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!447 (LexerInterface!3146 List!19704 List!19703 List!19703 List!19703 Rule!6834) Unit!33931)

(assert (=> b!1781599 (= lt!692505 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!447 thiss!24550 rules!3447 lt!692480 lt!692466 (_2!11015 lt!692478) (rule!5593 (_1!11015 lt!692478))))))

(declare-fun b!1781600 () Bool)

(declare-fun res!803060 () Bool)

(assert (=> b!1781600 (=> (not res!803060) (not e!1140204))))

(declare-fun rulesInvariant!2815 (LexerInterface!3146 List!19704) Bool)

(assert (=> b!1781600 (= res!803060 (rulesInvariant!2815 thiss!24550 rules!3447))))

(declare-fun e!1140208 () Bool)

(declare-fun tp!504367 () Bool)

(declare-fun e!1140203 () Bool)

(declare-fun b!1781601 () Bool)

(assert (=> b!1781601 (= e!1140203 (and tp!504367 (inv!25547 (tag!3913 (rule!5593 token!523))) (inv!25552 (transformation!3517 (rule!5593 token!523))) e!1140208))))

(declare-fun b!1781602 () Bool)

(declare-fun res!803064 () Bool)

(declare-fun e!1140199 () Bool)

(assert (=> b!1781602 (=> res!803064 e!1140199)))

(declare-fun getIndex!182 (List!19704 Rule!6834) Int)

(assert (=> b!1781602 (= res!803064 (>= (getIndex!182 rules!3447 (rule!5593 token!523)) (getIndex!182 rules!3447 (rule!5593 (_1!11015 lt!692478)))))))

(declare-fun res!803071 () Bool)

(assert (=> start!177286 (=> (not res!803071) (not e!1140204))))

(get-info :version)

(assert (=> start!177286 (= res!803071 ((_ is Lexer!3144) thiss!24550))))

(assert (=> start!177286 e!1140204))

(declare-fun e!1140191 () Bool)

(assert (=> start!177286 e!1140191))

(assert (=> start!177286 e!1140210))

(assert (=> start!177286 true))

(declare-fun e!1140202 () Bool)

(declare-fun inv!25553 (Token!6600) Bool)

(assert (=> start!177286 (and (inv!25553 token!523) e!1140202)))

(assert (=> start!177286 e!1140193))

(declare-fun b!1781603 () Bool)

(declare-fun contains!3549 (List!19704 Rule!6834) Bool)

(assert (=> b!1781603 (= e!1140199 (contains!3549 rules!3447 (rule!5593 token!523)))))

(declare-fun b!1781604 () Bool)

(declare-fun res!803063 () Bool)

(declare-fun e!1140207 () Bool)

(assert (=> b!1781604 (=> res!803063 e!1140207)))

(declare-fun lt!692465 () BalanceConc!13006)

(declare-fun dynLambda!9642 (Int TokenValue!3607) BalanceConc!13006)

(assert (=> b!1781604 (= res!803063 (not (= lt!692465 (dynLambda!9642 (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) (value!109907 (_1!11015 lt!692478))))))))

(declare-fun b!1781605 () Bool)

(declare-fun e!1140190 () Bool)

(declare-fun e!1140201 () Bool)

(assert (=> b!1781605 (= e!1140190 e!1140201)))

(declare-fun res!803053 () Bool)

(assert (=> b!1781605 (=> (not res!803053) (not e!1140201))))

(declare-fun lt!692469 () Rule!6834)

(declare-fun matchR!2318 (Regex!4845 List!19703) Bool)

(assert (=> b!1781605 (= res!803053 (matchR!2318 (regex!3517 lt!692469) (list!7983 (charsOf!2166 (_1!11015 lt!692478)))))))

(declare-datatypes ((Option!4057 0))(
  ( (None!4056) (Some!4056 (v!25547 Rule!6834)) )
))
(declare-fun lt!692488 () Option!4057)

(declare-fun get!6033 (Option!4057) Rule!6834)

(assert (=> b!1781605 (= lt!692469 (get!6033 lt!692488))))

(declare-fun b!1781606 () Bool)

(declare-fun res!803061 () Bool)

(assert (=> b!1781606 (=> (not res!803061) (not e!1140212))))

(assert (=> b!1781606 (= res!803061 (= (rule!5593 token!523) rule!422))))

(declare-fun b!1781607 () Bool)

(declare-fun e!1140211 () Bool)

(declare-fun e!1140187 () Bool)

(assert (=> b!1781607 (= e!1140211 e!1140187)))

(declare-fun res!803076 () Bool)

(assert (=> b!1781607 (=> res!803076 e!1140187)))

(declare-fun isPrefix!1757 (List!19703 List!19703) Bool)

(assert (=> b!1781607 (= res!803076 (not (isPrefix!1757 lt!692480 lt!692466)))))

(declare-fun ++!5341 (List!19703 List!19703) List!19703)

(assert (=> b!1781607 (isPrefix!1757 lt!692480 (++!5341 lt!692480 (_2!11015 lt!692478)))))

(declare-fun lt!692496 () Unit!33931)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1266 (List!19703 List!19703) Unit!33931)

(assert (=> b!1781607 (= lt!692496 (lemmaConcatTwoListThenFirstIsPrefix!1266 lt!692480 (_2!11015 lt!692478)))))

(assert (=> b!1781607 (= lt!692480 (list!7983 lt!692465))))

(assert (=> b!1781607 (= lt!692465 (charsOf!2166 (_1!11015 lt!692478)))))

(assert (=> b!1781607 e!1140190))

(declare-fun res!803068 () Bool)

(assert (=> b!1781607 (=> (not res!803068) (not e!1140190))))

(declare-fun isDefined!3400 (Option!4057) Bool)

(assert (=> b!1781607 (= res!803068 (isDefined!3400 lt!692488))))

(declare-fun getRuleFromTag!565 (LexerInterface!3146 List!19704 String!22367) Option!4057)

(assert (=> b!1781607 (= lt!692488 (getRuleFromTag!565 thiss!24550 rules!3447 (tag!3913 (rule!5593 (_1!11015 lt!692478)))))))

(declare-fun lt!692471 () Unit!33931)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!565 (LexerInterface!3146 List!19704 List!19703 Token!6600) Unit!33931)

(assert (=> b!1781607 (= lt!692471 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!565 thiss!24550 rules!3447 lt!692466 (_1!11015 lt!692478)))))

(declare-fun lt!692489 () Option!4056)

(assert (=> b!1781607 (= lt!692478 (get!6032 lt!692489))))

(declare-fun suffix!1421 () List!19703)

(declare-fun lt!692490 () Unit!33931)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!668 (LexerInterface!3146 List!19704 List!19703 List!19703) Unit!33931)

(assert (=> b!1781607 (= lt!692490 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!668 thiss!24550 rules!3447 lt!692467 suffix!1421))))

(assert (=> b!1781607 (= lt!692489 (maxPrefix!1700 thiss!24550 rules!3447 lt!692466))))

(assert (=> b!1781607 (isPrefix!1757 lt!692467 lt!692466)))

(declare-fun lt!692463 () Unit!33931)

(assert (=> b!1781607 (= lt!692463 (lemmaConcatTwoListThenFirstIsPrefix!1266 lt!692467 suffix!1421))))

(assert (=> b!1781607 (= lt!692466 (++!5341 lt!692467 suffix!1421))))

(declare-fun b!1781608 () Bool)

(declare-fun e!1140206 () Bool)

(assert (=> b!1781608 (= e!1140212 (not e!1140206))))

(declare-fun res!803058 () Bool)

(assert (=> b!1781608 (=> res!803058 e!1140206)))

(assert (=> b!1781608 (= res!803058 (not (matchR!2318 (regex!3517 rule!422) lt!692467)))))

(declare-fun ruleValid!1015 (LexerInterface!3146 Rule!6834) Bool)

(assert (=> b!1781608 (ruleValid!1015 thiss!24550 rule!422)))

(declare-fun lt!692484 () Unit!33931)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!538 (LexerInterface!3146 Rule!6834 List!19704) Unit!33931)

(assert (=> b!1781608 (= lt!692484 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!538 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1781609 () Bool)

(declare-fun tp_is_empty!7933 () Bool)

(declare-fun tp!504365 () Bool)

(assert (=> b!1781609 (= e!1140191 (and tp_is_empty!7933 tp!504365))))

(assert (=> b!1781610 (= e!1140208 (and tp!504361 tp!504368))))

(declare-fun b!1781611 () Bool)

(declare-fun res!803057 () Bool)

(assert (=> b!1781611 (=> res!803057 e!1140199)))

(assert (=> b!1781611 (= res!803057 (not (contains!3549 rules!3447 (rule!5593 (_1!11015 lt!692478)))))))

(declare-fun b!1781612 () Bool)

(assert (=> b!1781612 (= e!1140206 e!1140211)))

(declare-fun res!803065 () Bool)

(assert (=> b!1781612 (=> res!803065 e!1140211)))

(declare-fun lt!692495 () Regex!4845)

(declare-fun lt!692476 () List!19703)

(declare-fun prefixMatch!728 (Regex!4845 List!19703) Bool)

(assert (=> b!1781612 (= res!803065 (prefixMatch!728 lt!692495 lt!692476))))

(declare-fun head!4164 (List!19703) C!9864)

(assert (=> b!1781612 (= lt!692476 (++!5341 lt!692467 (Cons!19633 (head!4164 suffix!1421) Nil!19633)))))

(declare-fun rulesRegex!873 (LexerInterface!3146 List!19704) Regex!4845)

(assert (=> b!1781612 (= lt!692495 (rulesRegex!873 thiss!24550 rules!3447))))

(declare-fun e!1140192 () Bool)

(assert (=> b!1781613 (= e!1140187 e!1140192)))

(declare-fun res!803062 () Bool)

(assert (=> b!1781613 (=> res!803062 e!1140192)))

(declare-fun Forall!884 (Int) Bool)

(assert (=> b!1781613 (= res!803062 (not (Forall!884 lambda!70680)))))

(declare-fun lt!692491 () Unit!33931)

(declare-fun lemmaInv!716 (TokenValueInjection!6874) Unit!33931)

(assert (=> b!1781613 (= lt!692491 (lemmaInv!716 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))))))

(declare-fun b!1781614 () Bool)

(declare-fun res!803055 () Bool)

(assert (=> b!1781614 (=> res!803055 e!1140206)))

(declare-fun isEmpty!12406 (List!19703) Bool)

(assert (=> b!1781614 (= res!803055 (isEmpty!12406 suffix!1421))))

(declare-fun b!1781615 () Bool)

(declare-fun res!803070 () Bool)

(assert (=> b!1781615 (=> (not res!803070) (not e!1140204))))

(assert (=> b!1781615 (= res!803070 (contains!3549 rules!3447 rule!422))))

(declare-fun b!1781616 () Bool)

(assert (=> b!1781616 (= e!1140185 e!1140199)))

(declare-fun res!803067 () Bool)

(assert (=> b!1781616 (=> res!803067 e!1140199)))

(assert (=> b!1781616 (= res!803067 (= (rule!5593 (_1!11015 lt!692478)) (rule!5593 token!523)))))

(assert (=> b!1781616 (= suffix!1421 (_2!11015 lt!692478))))

(declare-fun lt!692492 () Unit!33931)

(assert (=> b!1781616 (= lt!692492 (lemmaSamePrefixThenSameSuffix!868 lt!692467 suffix!1421 lt!692467 (_2!11015 lt!692478) lt!692466))))

(assert (=> b!1781616 (= lt!692480 lt!692467)))

(declare-fun lt!692494 () Unit!33931)

(declare-fun lemmaIsPrefixSameLengthThenSameList!253 (List!19703 List!19703 List!19703) Unit!33931)

(assert (=> b!1781616 (= lt!692494 (lemmaIsPrefixSameLengthThenSameList!253 lt!692480 lt!692467 lt!692466))))

(declare-fun b!1781617 () Bool)

(declare-fun e!1140205 () Unit!33931)

(declare-fun Unit!33933 () Unit!33931)

(assert (=> b!1781617 (= e!1140205 Unit!33933)))

(declare-fun tp!504366 () Bool)

(declare-fun b!1781618 () Bool)

(declare-fun inv!21 (TokenValue!3607) Bool)

(assert (=> b!1781618 (= e!1140202 (and (inv!21 (value!109907 token!523)) e!1140203 tp!504366))))

(declare-fun e!1140198 () Bool)

(assert (=> b!1781619 (= e!1140198 (and tp!504359 tp!504360))))

(declare-fun b!1781620 () Bool)

(declare-fun Unit!33934 () Unit!33931)

(assert (=> b!1781620 (= e!1140194 Unit!33934)))

(declare-fun lt!692499 () Unit!33931)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!226 (LexerInterface!3146 List!19704 Rule!6834 List!19703 List!19703 List!19703 Rule!6834) Unit!33931)

(assert (=> b!1781620 (= lt!692499 (lemmaMaxPrefixOutputsMaxPrefix!226 thiss!24550 rules!3447 (rule!5593 (_1!11015 lt!692478)) lt!692480 lt!692466 lt!692467 rule!422))))

(assert (=> b!1781620 false))

(declare-fun b!1781621 () Bool)

(assert (=> b!1781621 (= e!1140192 e!1140207)))

(declare-fun res!803072 () Bool)

(assert (=> b!1781621 (=> res!803072 e!1140207)))

(declare-fun dynLambda!9643 (Int BalanceConc!13006) TokenValue!3607)

(assert (=> b!1781621 (= res!803072 (not (= (list!7983 (dynLambda!9642 (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) (dynLambda!9643 (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) lt!692465))) lt!692480)))))

(declare-fun lt!692468 () Unit!33931)

(declare-fun lemmaSemiInverse!655 (TokenValueInjection!6874 BalanceConc!13006) Unit!33931)

(assert (=> b!1781621 (= lt!692468 (lemmaSemiInverse!655 (transformation!3517 (rule!5593 (_1!11015 lt!692478))) lt!692465))))

(declare-fun b!1781622 () Bool)

(assert (=> b!1781622 (= e!1140201 (= (rule!5593 (_1!11015 lt!692478)) lt!692469))))

(declare-fun b!1781623 () Bool)

(declare-fun Unit!33935 () Unit!33931)

(assert (=> b!1781623 (= e!1140194 Unit!33935)))

(declare-fun b!1781624 () Bool)

(assert (=> b!1781624 (= e!1140207 e!1140188)))

(declare-fun res!803073 () Bool)

(assert (=> b!1781624 (=> res!803073 e!1140188)))

(declare-fun lt!692501 () TokenValue!3607)

(assert (=> b!1781624 (= res!803073 (not (= lt!692489 (Some!4055 (tuple2!19227 (Token!6601 lt!692501 (rule!5593 (_1!11015 lt!692478)) lt!692475 lt!692480) (_2!11015 lt!692478))))))))

(declare-fun size!15598 (BalanceConc!13006) Int)

(assert (=> b!1781624 (= lt!692475 (size!15598 lt!692465))))

(assert (=> b!1781624 (= lt!692501 (apply!5317 (transformation!3517 (rule!5593 (_1!11015 lt!692478))) lt!692465))))

(declare-fun lt!692502 () Unit!33931)

(declare-fun lemmaCharactersSize!575 (Token!6600) Unit!33931)

(assert (=> b!1781624 (= lt!692502 (lemmaCharactersSize!575 (_1!11015 lt!692478)))))

(declare-fun lt!692482 () Unit!33931)

(declare-fun lemmaEqSameImage!428 (TokenValueInjection!6874 BalanceConc!13006 BalanceConc!13006) Unit!33931)

(assert (=> b!1781624 (= lt!692482 (lemmaEqSameImage!428 (transformation!3517 (rule!5593 (_1!11015 lt!692478))) lt!692465 (seqFromList!2486 (originalCharacters!4331 (_1!11015 lt!692478)))))))

(declare-fun b!1781625 () Bool)

(assert (=> b!1781625 (= e!1140209 e!1140195)))

(declare-fun res!803056 () Bool)

(assert (=> b!1781625 (=> res!803056 e!1140195)))

(declare-fun lt!692481 () Bool)

(assert (=> b!1781625 (= res!803056 lt!692481)))

(declare-fun lt!692470 () Unit!33931)

(assert (=> b!1781625 (= lt!692470 e!1140205)))

(declare-fun c!289843 () Bool)

(assert (=> b!1781625 (= c!289843 lt!692481)))

(assert (=> b!1781625 (= lt!692481 (> lt!692475 lt!692493))))

(assert (=> b!1781625 (= lt!692493 (size!15598 lt!692503))))

(assert (=> b!1781625 (matchR!2318 lt!692495 lt!692467)))

(declare-fun lt!692477 () Unit!33931)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!224 (LexerInterface!3146 List!19704 List!19703 Token!6600 Rule!6834 List!19703) Unit!33931)

(assert (=> b!1781625 (= lt!692477 (lemmaMaxPrefixThenMatchesRulesRegex!224 thiss!24550 rules!3447 lt!692467 token!523 rule!422 Nil!19633))))

(assert (=> b!1781626 (= e!1140197 (and tp!504363 tp!504362))))

(declare-fun b!1781627 () Bool)

(declare-fun res!803075 () Bool)

(assert (=> b!1781627 (=> (not res!803075) (not e!1140204))))

(declare-fun isEmpty!12407 (List!19704) Bool)

(assert (=> b!1781627 (= res!803075 (not (isEmpty!12407 rules!3447)))))

(declare-fun b!1781628 () Bool)

(declare-fun Unit!33936 () Unit!33931)

(assert (=> b!1781628 (= e!1140205 Unit!33936)))

(declare-fun lt!692504 () Unit!33931)

(assert (=> b!1781628 (= lt!692504 (lemmaMaxPrefixThenMatchesRulesRegex!224 thiss!24550 rules!3447 lt!692466 (_1!11015 lt!692478) (rule!5593 (_1!11015 lt!692478)) (_2!11015 lt!692478)))))

(assert (=> b!1781628 (matchR!2318 lt!692495 lt!692480)))

(declare-fun lt!692464 () List!19703)

(assert (=> b!1781628 (= lt!692464 (getSuffix!924 lt!692466 lt!692467))))

(declare-fun lt!692486 () Unit!33931)

(assert (=> b!1781628 (= lt!692486 (lemmaSamePrefixThenSameSuffix!868 lt!692467 suffix!1421 lt!692467 lt!692464 lt!692466))))

(assert (=> b!1781628 (= suffix!1421 lt!692464)))

(declare-fun lt!692485 () Unit!33931)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!293 (List!19703 List!19703) Unit!33931)

(assert (=> b!1781628 (= lt!692485 (lemmaAddHeadSuffixToPrefixStillPrefix!293 lt!692467 lt!692466))))

(assert (=> b!1781628 (isPrefix!1757 (++!5341 lt!692467 (Cons!19633 (head!4164 lt!692464) Nil!19633)) lt!692466)))

(declare-fun lt!692479 () Unit!33931)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!165 (List!19703 List!19703 List!19703) Unit!33931)

(assert (=> b!1781628 (= lt!692479 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!165 lt!692480 lt!692476 lt!692466))))

(assert (=> b!1781628 (isPrefix!1757 lt!692476 lt!692480)))

(declare-fun lt!692506 () Unit!33931)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!156 (Regex!4845 List!19703 List!19703) Unit!33931)

(assert (=> b!1781628 (= lt!692506 (lemmaNotPrefixMatchThenCannotMatchLonger!156 lt!692495 lt!692476 lt!692480))))

(assert (=> b!1781628 false))

(declare-fun b!1781629 () Bool)

(declare-fun res!803069 () Bool)

(assert (=> b!1781629 (=> res!803069 e!1140187)))

(assert (=> b!1781629 (= res!803069 (not (matchR!2318 (regex!3517 (rule!5593 (_1!11015 lt!692478))) lt!692480)))))

(declare-fun b!1781630 () Bool)

(declare-fun res!803066 () Bool)

(assert (=> b!1781630 (=> (not res!803066) (not e!1140212))))

(assert (=> b!1781630 (= res!803066 (isEmpty!12406 (_2!11015 lt!692483)))))

(declare-fun tp!504370 () Bool)

(declare-fun b!1781631 () Bool)

(assert (=> b!1781631 (= e!1140196 (and tp!504370 (inv!25547 (tag!3913 (h!25035 rules!3447))) (inv!25552 (transformation!3517 (h!25035 rules!3447))) e!1140198))))

(assert (= (and start!177286 res!803071) b!1781627))

(assert (= (and b!1781627 res!803075) b!1781600))

(assert (= (and b!1781600 res!803060) b!1781615))

(assert (= (and b!1781615 res!803070) b!1781598))

(assert (= (and b!1781598 res!803074) b!1781597))

(assert (= (and b!1781597 res!803052) b!1781630))

(assert (= (and b!1781630 res!803066) b!1781606))

(assert (= (and b!1781606 res!803061) b!1781608))

(assert (= (and b!1781608 (not res!803058)) b!1781614))

(assert (= (and b!1781614 (not res!803055)) b!1781612))

(assert (= (and b!1781612 (not res!803065)) b!1781607))

(assert (= (and b!1781607 res!803068) b!1781605))

(assert (= (and b!1781605 res!803053) b!1781622))

(assert (= (and b!1781607 (not res!803076)) b!1781629))

(assert (= (and b!1781629 (not res!803069)) b!1781613))

(assert (= (and b!1781613 (not res!803062)) b!1781621))

(assert (= (and b!1781621 (not res!803072)) b!1781604))

(assert (= (and b!1781604 (not res!803063)) b!1781624))

(assert (= (and b!1781624 (not res!803073)) b!1781599))

(assert (= (and b!1781599 (not res!803059)) b!1781625))

(assert (= (and b!1781625 c!289843) b!1781628))

(assert (= (and b!1781625 (not c!289843)) b!1781617))

(assert (= (and b!1781625 (not res!803056)) b!1781594))

(assert (= (and b!1781594 c!289842) b!1781620))

(assert (= (and b!1781594 (not c!289842)) b!1781623))

(assert (= (and b!1781594 (not res!803054)) b!1781616))

(assert (= (and b!1781616 (not res!803067)) b!1781602))

(assert (= (and b!1781602 (not res!803064)) b!1781611))

(assert (= (and b!1781611 (not res!803057)) b!1781603))

(assert (= (and start!177286 ((_ is Cons!19633) suffix!1421)) b!1781609))

(assert (= b!1781595 b!1781626))

(assert (= start!177286 b!1781595))

(assert (= b!1781601 b!1781610))

(assert (= b!1781618 b!1781601))

(assert (= start!177286 b!1781618))

(assert (= b!1781631 b!1781619))

(assert (= b!1781596 b!1781631))

(assert (= (and start!177286 ((_ is Cons!19634) rules!3447)) b!1781596))

(declare-fun b_lambda!58339 () Bool)

(assert (=> (not b_lambda!58339) (not b!1781604)))

(declare-fun tb!108299 () Bool)

(declare-fun t!166592 () Bool)

(assert (=> (and b!1781626 (= (toChars!4903 (transformation!3517 rule!422)) (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166592) tb!108299))

(declare-fun b!1781647 () Bool)

(declare-fun e!1140224 () Bool)

(declare-fun tp!504373 () Bool)

(declare-fun inv!25554 (Conc!6531) Bool)

(assert (=> b!1781647 (= e!1140224 (and (inv!25554 (c!289845 (dynLambda!9642 (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) (value!109907 (_1!11015 lt!692478))))) tp!504373))))

(declare-fun result!130294 () Bool)

(declare-fun inv!25555 (BalanceConc!13006) Bool)

(assert (=> tb!108299 (= result!130294 (and (inv!25555 (dynLambda!9642 (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) (value!109907 (_1!11015 lt!692478)))) e!1140224))))

(assert (= tb!108299 b!1781647))

(declare-fun m!2203843 () Bool)

(assert (=> b!1781647 m!2203843))

(declare-fun m!2203845 () Bool)

(assert (=> tb!108299 m!2203845))

(assert (=> b!1781604 t!166592))

(declare-fun b_and!136639 () Bool)

(assert (= b_and!136629 (and (=> t!166592 result!130294) b_and!136639)))

(declare-fun tb!108301 () Bool)

(declare-fun t!166594 () Bool)

(assert (=> (and b!1781619 (= (toChars!4903 (transformation!3517 (h!25035 rules!3447))) (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166594) tb!108301))

(declare-fun result!130298 () Bool)

(assert (= result!130298 result!130294))

(assert (=> b!1781604 t!166594))

(declare-fun b_and!136641 () Bool)

(assert (= b_and!136633 (and (=> t!166594 result!130298) b_and!136641)))

(declare-fun t!166596 () Bool)

(declare-fun tb!108303 () Bool)

(assert (=> (and b!1781610 (= (toChars!4903 (transformation!3517 (rule!5593 token!523))) (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166596) tb!108303))

(declare-fun result!130300 () Bool)

(assert (= result!130300 result!130294))

(assert (=> b!1781604 t!166596))

(declare-fun b_and!136643 () Bool)

(assert (= b_and!136637 (and (=> t!166596 result!130300) b_and!136643)))

(declare-fun b_lambda!58341 () Bool)

(assert (=> (not b_lambda!58341) (not b!1781621)))

(declare-fun t!166598 () Bool)

(declare-fun tb!108305 () Bool)

(assert (=> (and b!1781626 (= (toChars!4903 (transformation!3517 rule!422)) (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166598) tb!108305))

(declare-fun e!1140225 () Bool)

(declare-fun tp!504374 () Bool)

(declare-fun b!1781648 () Bool)

(assert (=> b!1781648 (= e!1140225 (and (inv!25554 (c!289845 (dynLambda!9642 (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) (dynLambda!9643 (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) lt!692465)))) tp!504374))))

(declare-fun result!130302 () Bool)

(assert (=> tb!108305 (= result!130302 (and (inv!25555 (dynLambda!9642 (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) (dynLambda!9643 (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) lt!692465))) e!1140225))))

(assert (= tb!108305 b!1781648))

(declare-fun m!2203847 () Bool)

(assert (=> b!1781648 m!2203847))

(declare-fun m!2203849 () Bool)

(assert (=> tb!108305 m!2203849))

(assert (=> b!1781621 t!166598))

(declare-fun b_and!136645 () Bool)

(assert (= b_and!136639 (and (=> t!166598 result!130302) b_and!136645)))

(declare-fun tb!108307 () Bool)

(declare-fun t!166600 () Bool)

(assert (=> (and b!1781619 (= (toChars!4903 (transformation!3517 (h!25035 rules!3447))) (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166600) tb!108307))

(declare-fun result!130304 () Bool)

(assert (= result!130304 result!130302))

(assert (=> b!1781621 t!166600))

(declare-fun b_and!136647 () Bool)

(assert (= b_and!136641 (and (=> t!166600 result!130304) b_and!136647)))

(declare-fun t!166602 () Bool)

(declare-fun tb!108309 () Bool)

(assert (=> (and b!1781610 (= (toChars!4903 (transformation!3517 (rule!5593 token!523))) (toChars!4903 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166602) tb!108309))

(declare-fun result!130306 () Bool)

(assert (= result!130306 result!130302))

(assert (=> b!1781621 t!166602))

(declare-fun b_and!136649 () Bool)

(assert (= b_and!136643 (and (=> t!166602 result!130306) b_and!136649)))

(declare-fun b_lambda!58343 () Bool)

(assert (=> (not b_lambda!58343) (not b!1781621)))

(declare-fun tb!108311 () Bool)

(declare-fun t!166604 () Bool)

(assert (=> (and b!1781626 (= (toValue!5044 (transformation!3517 rule!422)) (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166604) tb!108311))

(declare-fun result!130308 () Bool)

(assert (=> tb!108311 (= result!130308 (inv!21 (dynLambda!9643 (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478)))) lt!692465)))))

(declare-fun m!2203851 () Bool)

(assert (=> tb!108311 m!2203851))

(assert (=> b!1781621 t!166604))

(declare-fun b_and!136651 () Bool)

(assert (= b_and!136627 (and (=> t!166604 result!130308) b_and!136651)))

(declare-fun tb!108313 () Bool)

(declare-fun t!166606 () Bool)

(assert (=> (and b!1781619 (= (toValue!5044 (transformation!3517 (h!25035 rules!3447))) (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166606) tb!108313))

(declare-fun result!130312 () Bool)

(assert (= result!130312 result!130308))

(assert (=> b!1781621 t!166606))

(declare-fun b_and!136653 () Bool)

(assert (= b_and!136631 (and (=> t!166606 result!130312) b_and!136653)))

(declare-fun tb!108315 () Bool)

(declare-fun t!166608 () Bool)

(assert (=> (and b!1781610 (= (toValue!5044 (transformation!3517 (rule!5593 token!523))) (toValue!5044 (transformation!3517 (rule!5593 (_1!11015 lt!692478))))) t!166608) tb!108315))

(declare-fun result!130314 () Bool)

(assert (= result!130314 result!130308))

(assert (=> b!1781621 t!166608))

(declare-fun b_and!136655 () Bool)

(assert (= b_and!136635 (and (=> t!166608 result!130314) b_and!136655)))

(declare-fun m!2203853 () Bool)

(assert (=> b!1781627 m!2203853))

(declare-fun m!2203855 () Bool)

(assert (=> b!1781620 m!2203855))

(declare-fun m!2203857 () Bool)

(assert (=> b!1781621 m!2203857))

(assert (=> b!1781621 m!2203857))

(declare-fun m!2203859 () Bool)

(assert (=> b!1781621 m!2203859))

(assert (=> b!1781621 m!2203859))

(declare-fun m!2203861 () Bool)

(assert (=> b!1781621 m!2203861))

(declare-fun m!2203863 () Bool)

(assert (=> b!1781621 m!2203863))

(declare-fun m!2203865 () Bool)

(assert (=> b!1781613 m!2203865))

(declare-fun m!2203867 () Bool)

(assert (=> b!1781613 m!2203867))

(declare-fun m!2203869 () Bool)

(assert (=> b!1781625 m!2203869))

(declare-fun m!2203871 () Bool)

(assert (=> b!1781625 m!2203871))

(declare-fun m!2203873 () Bool)

(assert (=> b!1781625 m!2203873))

(declare-fun m!2203875 () Bool)

(assert (=> b!1781629 m!2203875))

(declare-fun m!2203877 () Bool)

(assert (=> b!1781604 m!2203877))

(declare-fun m!2203879 () Bool)

(assert (=> b!1781618 m!2203879))

(declare-fun m!2203881 () Bool)

(assert (=> b!1781599 m!2203881))

(declare-fun m!2203883 () Bool)

(assert (=> b!1781599 m!2203883))

(declare-fun m!2203885 () Bool)

(assert (=> b!1781599 m!2203885))

(declare-fun m!2203887 () Bool)

(assert (=> b!1781599 m!2203887))

(declare-fun m!2203889 () Bool)

(assert (=> b!1781599 m!2203889))

(declare-fun m!2203891 () Bool)

(assert (=> b!1781599 m!2203891))

(declare-fun m!2203893 () Bool)

(assert (=> b!1781599 m!2203893))

(assert (=> b!1781599 m!2203881))

(declare-fun m!2203895 () Bool)

(assert (=> b!1781607 m!2203895))

(declare-fun m!2203897 () Bool)

(assert (=> b!1781607 m!2203897))

(declare-fun m!2203899 () Bool)

(assert (=> b!1781607 m!2203899))

(declare-fun m!2203901 () Bool)

(assert (=> b!1781607 m!2203901))

(declare-fun m!2203903 () Bool)

(assert (=> b!1781607 m!2203903))

(declare-fun m!2203905 () Bool)

(assert (=> b!1781607 m!2203905))

(declare-fun m!2203907 () Bool)

(assert (=> b!1781607 m!2203907))

(declare-fun m!2203909 () Bool)

(assert (=> b!1781607 m!2203909))

(declare-fun m!2203911 () Bool)

(assert (=> b!1781607 m!2203911))

(declare-fun m!2203913 () Bool)

(assert (=> b!1781607 m!2203913))

(declare-fun m!2203915 () Bool)

(assert (=> b!1781607 m!2203915))

(assert (=> b!1781607 m!2203901))

(declare-fun m!2203917 () Bool)

(assert (=> b!1781607 m!2203917))

(declare-fun m!2203919 () Bool)

(assert (=> b!1781607 m!2203919))

(declare-fun m!2203921 () Bool)

(assert (=> b!1781607 m!2203921))

(declare-fun m!2203923 () Bool)

(assert (=> b!1781607 m!2203923))

(declare-fun m!2203925 () Bool)

(assert (=> start!177286 m!2203925))

(declare-fun m!2203927 () Bool)

(assert (=> b!1781614 m!2203927))

(declare-fun m!2203929 () Bool)

(assert (=> b!1781597 m!2203929))

(declare-fun m!2203931 () Bool)

(assert (=> b!1781598 m!2203931))

(declare-fun m!2203933 () Bool)

(assert (=> b!1781598 m!2203933))

(declare-fun m!2203935 () Bool)

(assert (=> b!1781598 m!2203935))

(declare-fun m!2203937 () Bool)

(assert (=> b!1781598 m!2203937))

(declare-fun m!2203939 () Bool)

(assert (=> b!1781608 m!2203939))

(declare-fun m!2203941 () Bool)

(assert (=> b!1781608 m!2203941))

(declare-fun m!2203943 () Bool)

(assert (=> b!1781608 m!2203943))

(declare-fun m!2203945 () Bool)

(assert (=> b!1781595 m!2203945))

(declare-fun m!2203947 () Bool)

(assert (=> b!1781595 m!2203947))

(declare-fun m!2203949 () Bool)

(assert (=> b!1781624 m!2203949))

(declare-fun m!2203951 () Bool)

(assert (=> b!1781624 m!2203951))

(assert (=> b!1781624 m!2203949))

(declare-fun m!2203953 () Bool)

(assert (=> b!1781624 m!2203953))

(declare-fun m!2203955 () Bool)

(assert (=> b!1781624 m!2203955))

(declare-fun m!2203957 () Bool)

(assert (=> b!1781624 m!2203957))

(declare-fun m!2203959 () Bool)

(assert (=> b!1781600 m!2203959))

(declare-fun m!2203961 () Bool)

(assert (=> b!1781611 m!2203961))

(declare-fun m!2203963 () Bool)

(assert (=> b!1781612 m!2203963))

(declare-fun m!2203965 () Bool)

(assert (=> b!1781612 m!2203965))

(declare-fun m!2203967 () Bool)

(assert (=> b!1781612 m!2203967))

(declare-fun m!2203969 () Bool)

(assert (=> b!1781612 m!2203969))

(declare-fun m!2203971 () Bool)

(assert (=> b!1781630 m!2203971))

(declare-fun m!2203973 () Bool)

(assert (=> b!1781615 m!2203973))

(assert (=> b!1781605 m!2203913))

(assert (=> b!1781605 m!2203913))

(declare-fun m!2203975 () Bool)

(assert (=> b!1781605 m!2203975))

(assert (=> b!1781605 m!2203975))

(declare-fun m!2203977 () Bool)

(assert (=> b!1781605 m!2203977))

(declare-fun m!2203979 () Bool)

(assert (=> b!1781605 m!2203979))

(declare-fun m!2203981 () Bool)

(assert (=> b!1781602 m!2203981))

(declare-fun m!2203983 () Bool)

(assert (=> b!1781602 m!2203983))

(declare-fun m!2203985 () Bool)

(assert (=> b!1781628 m!2203985))

(declare-fun m!2203987 () Bool)

(assert (=> b!1781628 m!2203987))

(declare-fun m!2203989 () Bool)

(assert (=> b!1781628 m!2203989))

(declare-fun m!2203991 () Bool)

(assert (=> b!1781628 m!2203991))

(declare-fun m!2203993 () Bool)

(assert (=> b!1781628 m!2203993))

(declare-fun m!2203995 () Bool)

(assert (=> b!1781628 m!2203995))

(declare-fun m!2203997 () Bool)

(assert (=> b!1781628 m!2203997))

(declare-fun m!2203999 () Bool)

(assert (=> b!1781628 m!2203999))

(declare-fun m!2204001 () Bool)

(assert (=> b!1781628 m!2204001))

(declare-fun m!2204003 () Bool)

(assert (=> b!1781628 m!2204003))

(assert (=> b!1781628 m!2203999))

(declare-fun m!2204005 () Bool)

(assert (=> b!1781628 m!2204005))

(declare-fun m!2204007 () Bool)

(assert (=> b!1781601 m!2204007))

(declare-fun m!2204009 () Bool)

(assert (=> b!1781601 m!2204009))

(declare-fun m!2204011 () Bool)

(assert (=> b!1781616 m!2204011))

(declare-fun m!2204013 () Bool)

(assert (=> b!1781616 m!2204013))

(declare-fun m!2204015 () Bool)

(assert (=> b!1781603 m!2204015))

(declare-fun m!2204017 () Bool)

(assert (=> b!1781631 m!2204017))

(declare-fun m!2204019 () Bool)

(assert (=> b!1781631 m!2204019))

(check-sat (not b!1781602) (not start!177286) (not b!1781621) (not b_next!50167) (not b!1781628) (not b!1781616) (not b!1781595) (not b!1781609) (not b!1781627) (not b!1781647) (not b!1781607) (not b!1781598) (not b!1781620) (not b!1781611) (not b!1781624) (not tb!108299) (not b!1781631) (not tb!108311) b_and!136645 (not b_next!50159) (not b!1781630) b_and!136655 (not b!1781648) (not b_lambda!58341) (not b_next!50165) (not b_next!50161) (not b!1781615) (not b_lambda!58339) (not b_lambda!58343) b_and!136647 (not b!1781625) (not b!1781614) b_and!136651 (not b!1781618) (not b!1781599) (not b!1781608) (not b!1781597) (not b_next!50169) (not tb!108305) b_and!136649 (not b!1781596) (not b_next!50163) (not b!1781605) (not b!1781600) (not b!1781612) (not b!1781613) (not b!1781629) (not b!1781603) b_and!136653 (not b!1781601) tp_is_empty!7933)
(check-sat b_and!136645 (not b_next!50167) (not b_next!50169) b_and!136649 (not b_next!50163) b_and!136653 (not b_next!50159) b_and!136655 (not b_next!50165) (not b_next!50161) b_and!136647 b_and!136651)
