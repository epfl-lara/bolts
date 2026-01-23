; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172830 () Bool)

(assert start!172830)

(declare-fun b!1752378 () Bool)

(declare-fun b_free!48391 () Bool)

(declare-fun b_next!49095 () Bool)

(assert (=> b!1752378 (= b_free!48391 (not b_next!49095))))

(declare-fun tp!498445 () Bool)

(declare-fun b_and!131215 () Bool)

(assert (=> b!1752378 (= tp!498445 b_and!131215)))

(declare-fun b_free!48393 () Bool)

(declare-fun b_next!49097 () Bool)

(assert (=> b!1752378 (= b_free!48393 (not b_next!49097))))

(declare-fun tp!498447 () Bool)

(declare-fun b_and!131217 () Bool)

(assert (=> b!1752378 (= tp!498447 b_and!131217)))

(declare-fun b!1752373 () Bool)

(declare-fun b_free!48395 () Bool)

(declare-fun b_next!49099 () Bool)

(assert (=> b!1752373 (= b_free!48395 (not b_next!49099))))

(declare-fun tp!498451 () Bool)

(declare-fun b_and!131219 () Bool)

(assert (=> b!1752373 (= tp!498451 b_and!131219)))

(declare-fun b_free!48397 () Bool)

(declare-fun b_next!49101 () Bool)

(assert (=> b!1752373 (= b_free!48397 (not b_next!49101))))

(declare-fun tp!498456 () Bool)

(declare-fun b_and!131221 () Bool)

(assert (=> b!1752373 (= tp!498456 b_and!131221)))

(declare-fun b!1752383 () Bool)

(declare-fun b_free!48399 () Bool)

(declare-fun b_next!49103 () Bool)

(assert (=> b!1752383 (= b_free!48399 (not b_next!49103))))

(declare-fun tp!498450 () Bool)

(declare-fun b_and!131223 () Bool)

(assert (=> b!1752383 (= tp!498450 b_and!131223)))

(declare-fun b_free!48401 () Bool)

(declare-fun b_next!49105 () Bool)

(assert (=> b!1752383 (= b_free!48401 (not b_next!49105))))

(declare-fun tp!498453 () Bool)

(declare-fun b_and!131225 () Bool)

(assert (=> b!1752383 (= tp!498453 b_and!131225)))

(declare-fun b!1752406 () Bool)

(declare-fun e!1121729 () Bool)

(assert (=> b!1752406 (= e!1121729 true)))

(declare-fun b!1752405 () Bool)

(declare-fun e!1121728 () Bool)

(assert (=> b!1752405 (= e!1121728 e!1121729)))

(declare-fun b!1752404 () Bool)

(declare-fun e!1121727 () Bool)

(assert (=> b!1752404 (= e!1121727 e!1121728)))

(declare-fun b!1752379 () Bool)

(assert (=> b!1752379 e!1121727))

(assert (= b!1752405 b!1752406))

(assert (= b!1752404 b!1752405))

(assert (= b!1752379 b!1752404))

(declare-fun lambda!69896 () Int)

(declare-fun order!12147 () Int)

(declare-datatypes ((List!19355 0))(
  ( (Nil!19285) (Cons!19285 (h!24686 (_ BitVec 16)) (t!163096 List!19355)) )
))
(declare-datatypes ((TokenValue!3535 0))(
  ( (FloatLiteralValue!7070 (text!25190 List!19355)) (TokenValueExt!3534 (__x!12372 Int)) (Broken!17675 (value!107829 List!19355)) (Object!3604) (End!3535) (Def!3535) (Underscore!3535) (Match!3535) (Else!3535) (Error!3535) (Case!3535) (If!3535) (Extends!3535) (Abstract!3535) (Class!3535) (Val!3535) (DelimiterValue!7070 (del!3595 List!19355)) (KeywordValue!3541 (value!107830 List!19355)) (CommentValue!7070 (value!107831 List!19355)) (WhitespaceValue!7070 (value!107832 List!19355)) (IndentationValue!3535 (value!107833 List!19355)) (String!22006) (Int32!3535) (Broken!17676 (value!107834 List!19355)) (Boolean!3536) (Unit!33440) (OperatorValue!3538 (op!3595 List!19355)) (IdentifierValue!7070 (value!107835 List!19355)) (IdentifierValue!7071 (value!107836 List!19355)) (WhitespaceValue!7071 (value!107837 List!19355)) (True!7070) (False!7070) (Broken!17677 (value!107838 List!19355)) (Broken!17678 (value!107839 List!19355)) (True!7071) (RightBrace!3535) (RightBracket!3535) (Colon!3535) (Null!3535) (Comma!3535) (LeftBracket!3535) (False!7071) (LeftBrace!3535) (ImaginaryLiteralValue!3535 (text!25191 List!19355)) (StringLiteralValue!10605 (value!107840 List!19355)) (EOFValue!3535 (value!107841 List!19355)) (IdentValue!3535 (value!107842 List!19355)) (DelimiterValue!7071 (value!107843 List!19355)) (DedentValue!3535 (value!107844 List!19355)) (NewLineValue!3535 (value!107845 List!19355)) (IntegerValue!10605 (value!107846 (_ BitVec 32)) (text!25192 List!19355)) (IntegerValue!10606 (value!107847 Int) (text!25193 List!19355)) (Times!3535) (Or!3535) (Equal!3535) (Minus!3535) (Broken!17679 (value!107848 List!19355)) (And!3535) (Div!3535) (LessEqual!3535) (Mod!3535) (Concat!8308) (Not!3535) (Plus!3535) (SpaceValue!3535 (value!107849 List!19355)) (IntegerValue!10607 (value!107850 Int) (text!25194 List!19355)) (StringLiteralValue!10606 (text!25195 List!19355)) (FloatLiteralValue!7071 (text!25196 List!19355)) (BytesLiteralValue!3535 (value!107851 List!19355)) (CommentValue!7071 (value!107852 List!19355)) (StringLiteralValue!10607 (value!107853 List!19355)) (ErrorTokenValue!3535 (msg!3596 List!19355)) )
))
(declare-datatypes ((C!9720 0))(
  ( (C!9721 (val!5456 Int)) )
))
(declare-datatypes ((List!19356 0))(
  ( (Nil!19286) (Cons!19286 (h!24687 C!9720) (t!163097 List!19356)) )
))
(declare-datatypes ((Regex!4773 0))(
  ( (ElementMatch!4773 (c!285664 C!9720)) (Concat!8309 (regOne!10058 Regex!4773) (regTwo!10058 Regex!4773)) (EmptyExpr!4773) (Star!4773 (reg!5102 Regex!4773)) (EmptyLang!4773) (Union!4773 (regOne!10059 Regex!4773) (regTwo!10059 Regex!4773)) )
))
(declare-datatypes ((String!22007 0))(
  ( (String!22008 (value!107854 String)) )
))
(declare-datatypes ((IArray!12835 0))(
  ( (IArray!12836 (innerList!6475 List!19356)) )
))
(declare-datatypes ((Conc!6415 0))(
  ( (Node!6415 (left!15439 Conc!6415) (right!15769 Conc!6415) (csize!13060 Int) (cheight!6626 Int)) (Leaf!9358 (xs!9291 IArray!12835) (csize!13061 Int)) (Empty!6415) )
))
(declare-datatypes ((BalanceConc!12774 0))(
  ( (BalanceConc!12775 (c!285665 Conc!6415)) )
))
(declare-datatypes ((TokenValueInjection!6730 0))(
  ( (TokenValueInjection!6731 (toValue!4960 Int) (toChars!4819 Int)) )
))
(declare-datatypes ((Rule!6690 0))(
  ( (Rule!6691 (regex!3445 Regex!4773) (tag!3797 String!22007) (isSeparator!3445 Bool) (transformation!3445 TokenValueInjection!6730)) )
))
(declare-datatypes ((Token!6456 0))(
  ( (Token!6457 (value!107855 TokenValue!3535) (rule!5457 Rule!6690) (size!15320 Int) (originalCharacters!4259 List!19356)) )
))
(declare-datatypes ((tuple2!18910 0))(
  ( (tuple2!18911 (_1!10857 Token!6456) (_2!10857 List!19356)) )
))
(declare-fun lt!677046 () tuple2!18910)

(declare-fun order!12149 () Int)

(declare-fun dynLambda!9219 (Int Int) Int)

(declare-fun dynLambda!9220 (Int Int) Int)

(assert (=> b!1752406 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9220 order!12149 lambda!69896))))

(declare-fun order!12151 () Int)

(declare-fun dynLambda!9221 (Int Int) Int)

(assert (=> b!1752406 (< (dynLambda!9221 order!12151 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9220 order!12149 lambda!69896))))

(declare-fun b!1752369 () Bool)

(declare-fun e!1121713 () Bool)

(declare-fun lt!677059 () Rule!6690)

(assert (=> b!1752369 (= e!1121713 (= (rule!5457 (_1!10857 lt!677046)) lt!677059))))

(declare-fun b!1752370 () Bool)

(declare-fun e!1121704 () Bool)

(declare-fun e!1121708 () Bool)

(assert (=> b!1752370 (= e!1121704 e!1121708)))

(declare-fun res!788306 () Bool)

(assert (=> b!1752370 (=> res!788306 e!1121708)))

(declare-fun lt!677045 () BalanceConc!12774)

(declare-fun lt!677049 () List!19356)

(declare-fun list!7811 (BalanceConc!12774) List!19356)

(declare-fun dynLambda!9222 (Int TokenValue!3535) BalanceConc!12774)

(declare-fun dynLambda!9223 (Int BalanceConc!12774) TokenValue!3535)

(assert (=> b!1752370 (= res!788306 (not (= (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) lt!677049)))))

(declare-datatypes ((Unit!33441 0))(
  ( (Unit!33442) )
))
(declare-fun lt!677050 () Unit!33441)

(declare-fun lemmaSemiInverse!583 (TokenValueInjection!6730 BalanceConc!12774) Unit!33441)

(assert (=> b!1752370 (= lt!677050 (lemmaSemiInverse!583 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045))))

(declare-fun b!1752371 () Bool)

(declare-fun e!1121706 () Bool)

(declare-fun e!1121707 () Bool)

(declare-fun tp!498452 () Bool)

(assert (=> b!1752371 (= e!1121706 (and e!1121707 tp!498452))))

(declare-fun b!1752372 () Bool)

(declare-fun res!788294 () Bool)

(declare-fun e!1121715 () Bool)

(assert (=> b!1752372 (=> res!788294 e!1121715)))

(declare-fun suffix!1421 () List!19356)

(declare-datatypes ((LexerInterface!3074 0))(
  ( (LexerInterfaceExt!3071 (__x!12373 Int)) (Lexer!3072) )
))
(declare-fun thiss!24550 () LexerInterface!3074)

(declare-datatypes ((List!19357 0))(
  ( (Nil!19287) (Cons!19287 (h!24688 Rule!6690) (t!163098 List!19357)) )
))
(declare-fun rules!3447 () List!19357)

(declare-fun lt!677061 () List!19356)

(declare-fun prefixMatch!656 (Regex!4773 List!19356) Bool)

(declare-fun rulesRegex!801 (LexerInterface!3074 List!19357) Regex!4773)

(declare-fun ++!5269 (List!19356 List!19356) List!19356)

(declare-fun head!4042 (List!19356) C!9720)

(assert (=> b!1752372 (= res!788294 (prefixMatch!656 (rulesRegex!801 thiss!24550 rules!3447) (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))

(declare-fun b!1752374 () Bool)

(declare-fun e!1121717 () Bool)

(declare-fun e!1121700 () Bool)

(assert (=> b!1752374 (= e!1121717 e!1121700)))

(declare-fun res!788304 () Bool)

(assert (=> b!1752374 (=> (not res!788304) (not e!1121700))))

(declare-datatypes ((Option!3912 0))(
  ( (None!3911) (Some!3911 (v!25358 tuple2!18910)) )
))
(declare-fun lt!677051 () Option!3912)

(declare-fun isDefined!3255 (Option!3912) Bool)

(assert (=> b!1752374 (= res!788304 (isDefined!3255 lt!677051))))

(declare-fun maxPrefix!1628 (LexerInterface!3074 List!19357 List!19356) Option!3912)

(assert (=> b!1752374 (= lt!677051 (maxPrefix!1628 thiss!24550 rules!3447 lt!677061))))

(declare-fun token!523 () Token!6456)

(declare-fun charsOf!2094 (Token!6456) BalanceConc!12774)

(assert (=> b!1752374 (= lt!677061 (list!7811 (charsOf!2094 token!523)))))

(declare-fun b!1752375 () Bool)

(declare-fun res!788307 () Bool)

(declare-fun e!1121719 () Bool)

(assert (=> b!1752375 (=> (not res!788307) (not e!1121719))))

(declare-fun rule!422 () Rule!6690)

(assert (=> b!1752375 (= res!788307 (= (rule!5457 token!523) rule!422))))

(declare-fun b!1752376 () Bool)

(declare-fun res!788293 () Bool)

(assert (=> b!1752376 (=> (not res!788293) (not e!1121719))))

(declare-fun lt!677044 () tuple2!18910)

(declare-fun isEmpty!12156 (List!19356) Bool)

(assert (=> b!1752376 (= res!788293 (isEmpty!12156 (_2!10857 lt!677044)))))

(declare-fun b!1752377 () Bool)

(declare-fun e!1121710 () Bool)

(assert (=> b!1752377 (= e!1121710 e!1121713)))

(declare-fun res!788310 () Bool)

(assert (=> b!1752377 (=> (not res!788310) (not e!1121713))))

(declare-fun matchR!2246 (Regex!4773 List!19356) Bool)

(assert (=> b!1752377 (= res!788310 (matchR!2246 (regex!3445 lt!677059) (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(declare-datatypes ((Option!3913 0))(
  ( (None!3912) (Some!3912 (v!25359 Rule!6690)) )
))
(declare-fun lt!677062 () Option!3913)

(declare-fun get!5852 (Option!3913) Rule!6690)

(assert (=> b!1752377 (= lt!677059 (get!5852 lt!677062))))

(declare-fun e!1121718 () Bool)

(assert (=> b!1752378 (= e!1121718 (and tp!498445 tp!498447))))

(declare-fun e!1121711 () Bool)

(assert (=> b!1752379 (= e!1121711 e!1121704)))

(declare-fun res!788300 () Bool)

(assert (=> b!1752379 (=> res!788300 e!1121704)))

(declare-fun Forall!812 (Int) Bool)

(assert (=> b!1752379 (= res!788300 (not (Forall!812 lambda!69896)))))

(declare-fun lt!677055 () Unit!33441)

(declare-fun lemmaInv!644 (TokenValueInjection!6730) Unit!33441)

(assert (=> b!1752379 (= lt!677055 (lemmaInv!644 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun b!1752380 () Bool)

(assert (=> b!1752380 (= e!1121700 e!1121719)))

(declare-fun res!788303 () Bool)

(assert (=> b!1752380 (=> (not res!788303) (not e!1121719))))

(assert (=> b!1752380 (= res!788303 (= (_1!10857 lt!677044) token!523))))

(declare-fun get!5853 (Option!3912) tuple2!18910)

(assert (=> b!1752380 (= lt!677044 (get!5853 lt!677051))))

(declare-fun b!1752381 () Bool)

(declare-fun res!788298 () Bool)

(assert (=> b!1752381 (=> (not res!788298) (not e!1121717))))

(declare-fun isEmpty!12157 (List!19357) Bool)

(assert (=> b!1752381 (= res!788298 (not (isEmpty!12157 rules!3447)))))

(declare-fun b!1752382 () Bool)

(declare-fun tp!498446 () Bool)

(declare-fun e!1121714 () Bool)

(declare-fun e!1121712 () Bool)

(declare-fun inv!25023 (String!22007) Bool)

(declare-fun inv!25028 (TokenValueInjection!6730) Bool)

(assert (=> b!1752382 (= e!1121714 (and tp!498446 (inv!25023 (tag!3797 rule!422)) (inv!25028 (transformation!3445 rule!422)) e!1121712))))

(declare-fun e!1121703 () Bool)

(assert (=> b!1752383 (= e!1121703 (and tp!498450 tp!498453))))

(declare-fun b!1752384 () Bool)

(declare-fun res!788297 () Bool)

(assert (=> b!1752384 (=> (not res!788297) (not e!1121717))))

(declare-fun contains!3471 (List!19357 Rule!6690) Bool)

(assert (=> b!1752384 (= res!788297 (contains!3471 rules!3447 rule!422))))

(declare-fun b!1752385 () Bool)

(declare-fun tp!498449 () Bool)

(assert (=> b!1752385 (= e!1121707 (and tp!498449 (inv!25023 (tag!3797 (h!24688 rules!3447))) (inv!25028 (transformation!3445 (h!24688 rules!3447))) e!1121703))))

(declare-fun b!1752386 () Bool)

(declare-fun res!788295 () Bool)

(assert (=> b!1752386 (=> res!788295 e!1121711)))

(assert (=> b!1752386 (= res!788295 (not (matchR!2246 (regex!3445 (rule!5457 (_1!10857 lt!677046))) lt!677049)))))

(declare-fun b!1752387 () Bool)

(declare-fun res!788305 () Bool)

(assert (=> b!1752387 (=> (not res!788305) (not e!1121717))))

(declare-fun rulesInvariant!2743 (LexerInterface!3074 List!19357) Bool)

(assert (=> b!1752387 (= res!788305 (rulesInvariant!2743 thiss!24550 rules!3447))))

(declare-fun res!788308 () Bool)

(assert (=> start!172830 (=> (not res!788308) (not e!1121717))))

(get-info :version)

(assert (=> start!172830 (= res!788308 ((_ is Lexer!3072) thiss!24550))))

(assert (=> start!172830 e!1121717))

(declare-fun e!1121716 () Bool)

(assert (=> start!172830 e!1121716))

(assert (=> start!172830 e!1121714))

(assert (=> start!172830 true))

(declare-fun e!1121720 () Bool)

(declare-fun inv!25029 (Token!6456) Bool)

(assert (=> start!172830 (and (inv!25029 token!523) e!1121720)))

(assert (=> start!172830 e!1121706))

(assert (=> b!1752373 (= e!1121712 (and tp!498451 tp!498456))))

(declare-fun b!1752388 () Bool)

(declare-fun res!788309 () Bool)

(assert (=> b!1752388 (=> res!788309 e!1121708)))

(assert (=> b!1752388 (= res!788309 (not (= lt!677045 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))

(declare-fun b!1752389 () Bool)

(assert (=> b!1752389 (= e!1121719 (not e!1121715))))

(declare-fun res!788301 () Bool)

(assert (=> b!1752389 (=> res!788301 e!1121715)))

(assert (=> b!1752389 (= res!788301 (not (matchR!2246 (regex!3445 rule!422) lt!677061)))))

(declare-fun ruleValid!943 (LexerInterface!3074 Rule!6690) Bool)

(assert (=> b!1752389 (ruleValid!943 thiss!24550 rule!422)))

(declare-fun lt!677060 () Unit!33441)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!466 (LexerInterface!3074 Rule!6690 List!19357) Unit!33441)

(assert (=> b!1752389 (= lt!677060 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!466 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1752390 () Bool)

(declare-fun e!1121699 () Bool)

(declare-fun tp!498448 () Bool)

(assert (=> b!1752390 (= e!1121699 (and tp!498448 (inv!25023 (tag!3797 (rule!5457 token!523))) (inv!25028 (transformation!3445 (rule!5457 token!523))) e!1121718))))

(declare-fun b!1752391 () Bool)

(declare-fun tp_is_empty!7789 () Bool)

(declare-fun tp!498454 () Bool)

(assert (=> b!1752391 (= e!1121716 (and tp_is_empty!7789 tp!498454))))

(declare-fun b!1752392 () Bool)

(assert (=> b!1752392 (= e!1121715 e!1121711)))

(declare-fun res!788299 () Bool)

(assert (=> b!1752392 (=> res!788299 e!1121711)))

(declare-fun lt!677054 () List!19356)

(declare-fun isPrefix!1685 (List!19356 List!19356) Bool)

(assert (=> b!1752392 (= res!788299 (not (isPrefix!1685 lt!677049 lt!677054)))))

(assert (=> b!1752392 (isPrefix!1685 lt!677049 (++!5269 lt!677049 (_2!10857 lt!677046)))))

(declare-fun lt!677058 () Unit!33441)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1194 (List!19356 List!19356) Unit!33441)

(assert (=> b!1752392 (= lt!677058 (lemmaConcatTwoListThenFirstIsPrefix!1194 lt!677049 (_2!10857 lt!677046)))))

(assert (=> b!1752392 (= lt!677049 (list!7811 lt!677045))))

(assert (=> b!1752392 (= lt!677045 (charsOf!2094 (_1!10857 lt!677046)))))

(assert (=> b!1752392 e!1121710))

(declare-fun res!788302 () Bool)

(assert (=> b!1752392 (=> (not res!788302) (not e!1121710))))

(declare-fun isDefined!3256 (Option!3913) Bool)

(assert (=> b!1752392 (= res!788302 (isDefined!3256 lt!677062))))

(declare-fun getRuleFromTag!493 (LexerInterface!3074 List!19357 String!22007) Option!3913)

(assert (=> b!1752392 (= lt!677062 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun lt!677056 () Unit!33441)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!493 (LexerInterface!3074 List!19357 List!19356 Token!6456) Unit!33441)

(assert (=> b!1752392 (= lt!677056 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!493 thiss!24550 rules!3447 lt!677054 (_1!10857 lt!677046)))))

(declare-fun lt!677052 () Option!3912)

(assert (=> b!1752392 (= lt!677046 (get!5853 lt!677052))))

(declare-fun lt!677047 () Unit!33441)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!596 (LexerInterface!3074 List!19357 List!19356 List!19356) Unit!33441)

(assert (=> b!1752392 (= lt!677047 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!596 thiss!24550 rules!3447 lt!677061 suffix!1421))))

(assert (=> b!1752392 (= lt!677052 (maxPrefix!1628 thiss!24550 rules!3447 lt!677054))))

(assert (=> b!1752392 (isPrefix!1685 lt!677061 lt!677054)))

(declare-fun lt!677053 () Unit!33441)

(assert (=> b!1752392 (= lt!677053 (lemmaConcatTwoListThenFirstIsPrefix!1194 lt!677061 suffix!1421))))

(assert (=> b!1752392 (= lt!677054 (++!5269 lt!677061 suffix!1421))))

(declare-fun b!1752393 () Bool)

(declare-fun apply!5245 (TokenValueInjection!6730 BalanceConc!12774) TokenValue!3535)

(declare-fun size!15321 (BalanceConc!12774) Int)

(assert (=> b!1752393 (= e!1121708 (inv!25029 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))

(declare-fun lt!677057 () Unit!33441)

(declare-fun lemmaCharactersSize!503 (Token!6456) Unit!33441)

(assert (=> b!1752393 (= lt!677057 (lemmaCharactersSize!503 (_1!10857 lt!677046)))))

(declare-fun lt!677048 () Unit!33441)

(declare-fun lemmaEqSameImage!356 (TokenValueInjection!6730 BalanceConc!12774 BalanceConc!12774) Unit!33441)

(declare-fun seqFromList!2414 (List!19356) BalanceConc!12774)

(assert (=> b!1752393 (= lt!677048 (lemmaEqSameImage!356 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))))))

(declare-fun b!1752394 () Bool)

(declare-fun res!788296 () Bool)

(assert (=> b!1752394 (=> res!788296 e!1121715)))

(assert (=> b!1752394 (= res!788296 (isEmpty!12156 suffix!1421))))

(declare-fun b!1752395 () Bool)

(declare-fun tp!498455 () Bool)

(declare-fun inv!21 (TokenValue!3535) Bool)

(assert (=> b!1752395 (= e!1121720 (and (inv!21 (value!107855 token!523)) e!1121699 tp!498455))))

(assert (= (and start!172830 res!788308) b!1752381))

(assert (= (and b!1752381 res!788298) b!1752387))

(assert (= (and b!1752387 res!788305) b!1752384))

(assert (= (and b!1752384 res!788297) b!1752374))

(assert (= (and b!1752374 res!788304) b!1752380))

(assert (= (and b!1752380 res!788303) b!1752376))

(assert (= (and b!1752376 res!788293) b!1752375))

(assert (= (and b!1752375 res!788307) b!1752389))

(assert (= (and b!1752389 (not res!788301)) b!1752394))

(assert (= (and b!1752394 (not res!788296)) b!1752372))

(assert (= (and b!1752372 (not res!788294)) b!1752392))

(assert (= (and b!1752392 res!788302) b!1752377))

(assert (= (and b!1752377 res!788310) b!1752369))

(assert (= (and b!1752392 (not res!788299)) b!1752386))

(assert (= (and b!1752386 (not res!788295)) b!1752379))

(assert (= (and b!1752379 (not res!788300)) b!1752370))

(assert (= (and b!1752370 (not res!788306)) b!1752388))

(assert (= (and b!1752388 (not res!788309)) b!1752393))

(assert (= (and start!172830 ((_ is Cons!19286) suffix!1421)) b!1752391))

(assert (= b!1752382 b!1752373))

(assert (= start!172830 b!1752382))

(assert (= b!1752390 b!1752378))

(assert (= b!1752395 b!1752390))

(assert (= start!172830 b!1752395))

(assert (= b!1752385 b!1752383))

(assert (= b!1752371 b!1752385))

(assert (= (and start!172830 ((_ is Cons!19287) rules!3447)) b!1752371))

(declare-fun b_lambda!56359 () Bool)

(assert (=> (not b_lambda!56359) (not b!1752370)))

(declare-fun t!163079 () Bool)

(declare-fun tb!105151 () Bool)

(assert (=> (and b!1752378 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163079) tb!105151))

(declare-fun tp!498459 () Bool)

(declare-fun e!1121732 () Bool)

(declare-fun b!1752411 () Bool)

(declare-fun inv!25030 (Conc!6415) Bool)

(assert (=> b!1752411 (= e!1121732 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) tp!498459))))

(declare-fun result!126506 () Bool)

(declare-fun inv!25031 (BalanceConc!12774) Bool)

(assert (=> tb!105151 (= result!126506 (and (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) e!1121732))))

(assert (= tb!105151 b!1752411))

(declare-fun m!2166113 () Bool)

(assert (=> b!1752411 m!2166113))

(declare-fun m!2166115 () Bool)

(assert (=> tb!105151 m!2166115))

(assert (=> b!1752370 t!163079))

(declare-fun b_and!131227 () Bool)

(assert (= b_and!131217 (and (=> t!163079 result!126506) b_and!131227)))

(declare-fun t!163081 () Bool)

(declare-fun tb!105153 () Bool)

(assert (=> (and b!1752373 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163081) tb!105153))

(declare-fun result!126510 () Bool)

(assert (= result!126510 result!126506))

(assert (=> b!1752370 t!163081))

(declare-fun b_and!131229 () Bool)

(assert (= b_and!131221 (and (=> t!163081 result!126510) b_and!131229)))

(declare-fun tb!105155 () Bool)

(declare-fun t!163083 () Bool)

(assert (=> (and b!1752383 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163083) tb!105155))

(declare-fun result!126512 () Bool)

(assert (= result!126512 result!126506))

(assert (=> b!1752370 t!163083))

(declare-fun b_and!131231 () Bool)

(assert (= b_and!131225 (and (=> t!163083 result!126512) b_and!131231)))

(declare-fun b_lambda!56361 () Bool)

(assert (=> (not b_lambda!56361) (not b!1752370)))

(declare-fun tb!105157 () Bool)

(declare-fun t!163085 () Bool)

(assert (=> (and b!1752378 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163085) tb!105157))

(declare-fun result!126514 () Bool)

(assert (=> tb!105157 (= result!126514 (inv!21 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))

(declare-fun m!2166117 () Bool)

(assert (=> tb!105157 m!2166117))

(assert (=> b!1752370 t!163085))

(declare-fun b_and!131233 () Bool)

(assert (= b_and!131215 (and (=> t!163085 result!126514) b_and!131233)))

(declare-fun t!163087 () Bool)

(declare-fun tb!105159 () Bool)

(assert (=> (and b!1752373 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163087) tb!105159))

(declare-fun result!126518 () Bool)

(assert (= result!126518 result!126514))

(assert (=> b!1752370 t!163087))

(declare-fun b_and!131235 () Bool)

(assert (= b_and!131219 (and (=> t!163087 result!126518) b_and!131235)))

(declare-fun t!163089 () Bool)

(declare-fun tb!105161 () Bool)

(assert (=> (and b!1752383 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163089) tb!105161))

(declare-fun result!126520 () Bool)

(assert (= result!126520 result!126514))

(assert (=> b!1752370 t!163089))

(declare-fun b_and!131237 () Bool)

(assert (= b_and!131223 (and (=> t!163089 result!126520) b_and!131237)))

(declare-fun b_lambda!56363 () Bool)

(assert (=> (not b_lambda!56363) (not b!1752388)))

(declare-fun tb!105163 () Bool)

(declare-fun t!163091 () Bool)

(assert (=> (and b!1752378 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163091) tb!105163))

(declare-fun b!1752414 () Bool)

(declare-fun e!1121736 () Bool)

(declare-fun tp!498460 () Bool)

(assert (=> b!1752414 (= e!1121736 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) tp!498460))))

(declare-fun result!126522 () Bool)

(assert (=> tb!105163 (= result!126522 (and (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))) e!1121736))))

(assert (= tb!105163 b!1752414))

(declare-fun m!2166119 () Bool)

(assert (=> b!1752414 m!2166119))

(declare-fun m!2166121 () Bool)

(assert (=> tb!105163 m!2166121))

(assert (=> b!1752388 t!163091))

(declare-fun b_and!131239 () Bool)

(assert (= b_and!131227 (and (=> t!163091 result!126522) b_and!131239)))

(declare-fun tb!105165 () Bool)

(declare-fun t!163093 () Bool)

(assert (=> (and b!1752373 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163093) tb!105165))

(declare-fun result!126524 () Bool)

(assert (= result!126524 result!126522))

(assert (=> b!1752388 t!163093))

(declare-fun b_and!131241 () Bool)

(assert (= b_and!131229 (and (=> t!163093 result!126524) b_and!131241)))

(declare-fun tb!105167 () Bool)

(declare-fun t!163095 () Bool)

(assert (=> (and b!1752383 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163095) tb!105167))

(declare-fun result!126526 () Bool)

(assert (= result!126526 result!126522))

(assert (=> b!1752388 t!163095))

(declare-fun b_and!131243 () Bool)

(assert (= b_and!131231 (and (=> t!163095 result!126526) b_and!131243)))

(declare-fun m!2166123 () Bool)

(assert (=> b!1752377 m!2166123))

(assert (=> b!1752377 m!2166123))

(declare-fun m!2166125 () Bool)

(assert (=> b!1752377 m!2166125))

(assert (=> b!1752377 m!2166125))

(declare-fun m!2166127 () Bool)

(assert (=> b!1752377 m!2166127))

(declare-fun m!2166129 () Bool)

(assert (=> b!1752377 m!2166129))

(declare-fun m!2166131 () Bool)

(assert (=> b!1752380 m!2166131))

(declare-fun m!2166133 () Bool)

(assert (=> b!1752382 m!2166133))

(declare-fun m!2166135 () Bool)

(assert (=> b!1752382 m!2166135))

(declare-fun m!2166137 () Bool)

(assert (=> b!1752374 m!2166137))

(declare-fun m!2166139 () Bool)

(assert (=> b!1752374 m!2166139))

(declare-fun m!2166141 () Bool)

(assert (=> b!1752374 m!2166141))

(assert (=> b!1752374 m!2166141))

(declare-fun m!2166143 () Bool)

(assert (=> b!1752374 m!2166143))

(declare-fun m!2166145 () Bool)

(assert (=> b!1752390 m!2166145))

(declare-fun m!2166147 () Bool)

(assert (=> b!1752390 m!2166147))

(declare-fun m!2166149 () Bool)

(assert (=> b!1752379 m!2166149))

(declare-fun m!2166151 () Bool)

(assert (=> b!1752379 m!2166151))

(declare-fun m!2166153 () Bool)

(assert (=> b!1752386 m!2166153))

(declare-fun m!2166155 () Bool)

(assert (=> b!1752392 m!2166155))

(declare-fun m!2166157 () Bool)

(assert (=> b!1752392 m!2166157))

(declare-fun m!2166159 () Bool)

(assert (=> b!1752392 m!2166159))

(declare-fun m!2166161 () Bool)

(assert (=> b!1752392 m!2166161))

(declare-fun m!2166163 () Bool)

(assert (=> b!1752392 m!2166163))

(declare-fun m!2166165 () Bool)

(assert (=> b!1752392 m!2166165))

(assert (=> b!1752392 m!2166123))

(declare-fun m!2166167 () Bool)

(assert (=> b!1752392 m!2166167))

(declare-fun m!2166169 () Bool)

(assert (=> b!1752392 m!2166169))

(declare-fun m!2166171 () Bool)

(assert (=> b!1752392 m!2166171))

(declare-fun m!2166173 () Bool)

(assert (=> b!1752392 m!2166173))

(declare-fun m!2166175 () Bool)

(assert (=> b!1752392 m!2166175))

(declare-fun m!2166177 () Bool)

(assert (=> b!1752392 m!2166177))

(declare-fun m!2166179 () Bool)

(assert (=> b!1752392 m!2166179))

(assert (=> b!1752392 m!2166159))

(declare-fun m!2166181 () Bool)

(assert (=> b!1752392 m!2166181))

(declare-fun m!2166183 () Bool)

(assert (=> b!1752389 m!2166183))

(declare-fun m!2166185 () Bool)

(assert (=> b!1752389 m!2166185))

(declare-fun m!2166187 () Bool)

(assert (=> b!1752389 m!2166187))

(declare-fun m!2166189 () Bool)

(assert (=> b!1752370 m!2166189))

(assert (=> b!1752370 m!2166189))

(declare-fun m!2166191 () Bool)

(assert (=> b!1752370 m!2166191))

(assert (=> b!1752370 m!2166191))

(declare-fun m!2166193 () Bool)

(assert (=> b!1752370 m!2166193))

(declare-fun m!2166195 () Bool)

(assert (=> b!1752370 m!2166195))

(declare-fun m!2166197 () Bool)

(assert (=> b!1752385 m!2166197))

(declare-fun m!2166199 () Bool)

(assert (=> b!1752385 m!2166199))

(declare-fun m!2166201 () Bool)

(assert (=> start!172830 m!2166201))

(declare-fun m!2166203 () Bool)

(assert (=> b!1752388 m!2166203))

(declare-fun m!2166205 () Bool)

(assert (=> b!1752387 m!2166205))

(declare-fun m!2166207 () Bool)

(assert (=> b!1752372 m!2166207))

(declare-fun m!2166209 () Bool)

(assert (=> b!1752372 m!2166209))

(declare-fun m!2166211 () Bool)

(assert (=> b!1752372 m!2166211))

(assert (=> b!1752372 m!2166207))

(assert (=> b!1752372 m!2166211))

(declare-fun m!2166213 () Bool)

(assert (=> b!1752372 m!2166213))

(declare-fun m!2166215 () Bool)

(assert (=> b!1752376 m!2166215))

(declare-fun m!2166217 () Bool)

(assert (=> b!1752394 m!2166217))

(declare-fun m!2166219 () Bool)

(assert (=> b!1752381 m!2166219))

(declare-fun m!2166221 () Bool)

(assert (=> b!1752384 m!2166221))

(declare-fun m!2166223 () Bool)

(assert (=> b!1752393 m!2166223))

(declare-fun m!2166225 () Bool)

(assert (=> b!1752393 m!2166225))

(declare-fun m!2166227 () Bool)

(assert (=> b!1752393 m!2166227))

(declare-fun m!2166229 () Bool)

(assert (=> b!1752393 m!2166229))

(declare-fun m!2166231 () Bool)

(assert (=> b!1752393 m!2166231))

(declare-fun m!2166233 () Bool)

(assert (=> b!1752393 m!2166233))

(assert (=> b!1752393 m!2166225))

(declare-fun m!2166235 () Bool)

(assert (=> b!1752395 m!2166235))

(check-sat (not b_lambda!56359) (not b!1752382) (not b!1752394) (not b!1752385) (not b!1752391) (not b!1752372) (not b!1752380) (not b_next!49101) (not b!1752370) (not tb!105151) (not b_lambda!56361) (not b!1752376) (not tb!105157) (not b!1752392) (not tb!105163) (not b_next!49099) (not start!172830) b_and!131241 (not b!1752381) (not b!1752393) tp_is_empty!7789 (not b!1752377) (not b!1752389) b_and!131233 (not b!1752374) (not b!1752395) (not b!1752414) (not b!1752390) (not b!1752411) (not b_lambda!56363) (not b_next!49095) (not b!1752387) b_and!131243 (not b!1752386) (not b!1752371) b_and!131239 (not b!1752384) (not b_next!49105) (not b_next!49103) b_and!131235 (not b!1752379) b_and!131237 (not b_next!49097))
(check-sat (not b_next!49099) b_and!131241 b_and!131233 (not b_next!49095) b_and!131243 b_and!131239 (not b_next!49101) b_and!131235 (not b_next!49105) (not b_next!49103) b_and!131237 (not b_next!49097))
(get-model)

(declare-fun d!535069 () Bool)

(declare-fun c!285668 () Bool)

(assert (=> d!535069 (= c!285668 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))

(declare-fun e!1121750 () Bool)

(assert (=> d!535069 (= (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) e!1121750)))

(declare-fun b!1752430 () Bool)

(declare-fun inv!25034 (Conc!6415) Bool)

(assert (=> b!1752430 (= e!1121750 (inv!25034 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))

(declare-fun b!1752431 () Bool)

(declare-fun e!1121751 () Bool)

(assert (=> b!1752431 (= e!1121750 e!1121751)))

(declare-fun res!788322 () Bool)

(assert (=> b!1752431 (= res!788322 (not ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(assert (=> b!1752431 (=> res!788322 e!1121751)))

(declare-fun b!1752432 () Bool)

(declare-fun inv!25035 (Conc!6415) Bool)

(assert (=> b!1752432 (= e!1121751 (inv!25035 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))

(assert (= (and d!535069 c!285668) b!1752430))

(assert (= (and d!535069 (not c!285668)) b!1752431))

(assert (= (and b!1752431 (not res!788322)) b!1752432))

(declare-fun m!2166247 () Bool)

(assert (=> b!1752430 m!2166247))

(declare-fun m!2166249 () Bool)

(assert (=> b!1752432 m!2166249))

(assert (=> b!1752411 d!535069))

(declare-fun b!1752482 () Bool)

(declare-fun e!1121783 () Bool)

(declare-fun lt!677071 () Bool)

(declare-fun call!110405 () Bool)

(assert (=> b!1752482 (= e!1121783 (= lt!677071 call!110405))))

(declare-fun d!535081 () Bool)

(assert (=> d!535081 e!1121783))

(declare-fun c!285678 () Bool)

(assert (=> d!535081 (= c!285678 ((_ is EmptyExpr!4773) (regex!3445 rule!422)))))

(declare-fun e!1121785 () Bool)

(assert (=> d!535081 (= lt!677071 e!1121785)))

(declare-fun c!285680 () Bool)

(assert (=> d!535081 (= c!285680 (isEmpty!12156 lt!677061))))

(declare-fun validRegex!1920 (Regex!4773) Bool)

(assert (=> d!535081 (validRegex!1920 (regex!3445 rule!422))))

(assert (=> d!535081 (= (matchR!2246 (regex!3445 rule!422) lt!677061) lt!677071)))

(declare-fun b!1752483 () Bool)

(declare-fun res!788356 () Bool)

(declare-fun e!1121786 () Bool)

(assert (=> b!1752483 (=> (not res!788356) (not e!1121786))))

(declare-fun tail!2617 (List!19356) List!19356)

(assert (=> b!1752483 (= res!788356 (isEmpty!12156 (tail!2617 lt!677061)))))

(declare-fun b!1752484 () Bool)

(declare-fun e!1121782 () Bool)

(assert (=> b!1752484 (= e!1121783 e!1121782)))

(declare-fun c!285679 () Bool)

(assert (=> b!1752484 (= c!285679 ((_ is EmptyLang!4773) (regex!3445 rule!422)))))

(declare-fun b!1752485 () Bool)

(declare-fun res!788355 () Bool)

(declare-fun e!1121784 () Bool)

(assert (=> b!1752485 (=> res!788355 e!1121784)))

(assert (=> b!1752485 (= res!788355 e!1121786)))

(declare-fun res!788359 () Bool)

(assert (=> b!1752485 (=> (not res!788359) (not e!1121786))))

(assert (=> b!1752485 (= res!788359 lt!677071)))

(declare-fun b!1752486 () Bool)

(declare-fun e!1121787 () Bool)

(assert (=> b!1752486 (= e!1121784 e!1121787)))

(declare-fun res!788361 () Bool)

(assert (=> b!1752486 (=> (not res!788361) (not e!1121787))))

(assert (=> b!1752486 (= res!788361 (not lt!677071))))

(declare-fun b!1752487 () Bool)

(assert (=> b!1752487 (= e!1121782 (not lt!677071))))

(declare-fun b!1752488 () Bool)

(declare-fun res!788358 () Bool)

(declare-fun e!1121781 () Bool)

(assert (=> b!1752488 (=> res!788358 e!1121781)))

(assert (=> b!1752488 (= res!788358 (not (isEmpty!12156 (tail!2617 lt!677061))))))

(declare-fun b!1752489 () Bool)

(assert (=> b!1752489 (= e!1121786 (= (head!4042 lt!677061) (c!285664 (regex!3445 rule!422))))))

(declare-fun b!1752490 () Bool)

(declare-fun derivativeStep!1215 (Regex!4773 C!9720) Regex!4773)

(assert (=> b!1752490 (= e!1121785 (matchR!2246 (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061)) (tail!2617 lt!677061)))))

(declare-fun b!1752491 () Bool)

(assert (=> b!1752491 (= e!1121787 e!1121781)))

(declare-fun res!788354 () Bool)

(assert (=> b!1752491 (=> res!788354 e!1121781)))

(assert (=> b!1752491 (= res!788354 call!110405)))

(declare-fun b!1752492 () Bool)

(declare-fun nullable!1446 (Regex!4773) Bool)

(assert (=> b!1752492 (= e!1121785 (nullable!1446 (regex!3445 rule!422)))))

(declare-fun b!1752493 () Bool)

(declare-fun res!788360 () Bool)

(assert (=> b!1752493 (=> res!788360 e!1121784)))

(assert (=> b!1752493 (= res!788360 (not ((_ is ElementMatch!4773) (regex!3445 rule!422))))))

(assert (=> b!1752493 (= e!1121782 e!1121784)))

(declare-fun bm!110400 () Bool)

(assert (=> bm!110400 (= call!110405 (isEmpty!12156 lt!677061))))

(declare-fun b!1752494 () Bool)

(declare-fun res!788357 () Bool)

(assert (=> b!1752494 (=> (not res!788357) (not e!1121786))))

(assert (=> b!1752494 (= res!788357 (not call!110405))))

(declare-fun b!1752495 () Bool)

(assert (=> b!1752495 (= e!1121781 (not (= (head!4042 lt!677061) (c!285664 (regex!3445 rule!422)))))))

(assert (= (and d!535081 c!285680) b!1752492))

(assert (= (and d!535081 (not c!285680)) b!1752490))

(assert (= (and d!535081 c!285678) b!1752482))

(assert (= (and d!535081 (not c!285678)) b!1752484))

(assert (= (and b!1752484 c!285679) b!1752487))

(assert (= (and b!1752484 (not c!285679)) b!1752493))

(assert (= (and b!1752493 (not res!788360)) b!1752485))

(assert (= (and b!1752485 res!788359) b!1752494))

(assert (= (and b!1752494 res!788357) b!1752483))

(assert (= (and b!1752483 res!788356) b!1752489))

(assert (= (and b!1752485 (not res!788355)) b!1752486))

(assert (= (and b!1752486 res!788361) b!1752491))

(assert (= (and b!1752491 (not res!788354)) b!1752488))

(assert (= (and b!1752488 (not res!788358)) b!1752495))

(assert (= (or b!1752482 b!1752491 b!1752494) bm!110400))

(declare-fun m!2166273 () Bool)

(assert (=> d!535081 m!2166273))

(declare-fun m!2166275 () Bool)

(assert (=> d!535081 m!2166275))

(declare-fun m!2166277 () Bool)

(assert (=> b!1752492 m!2166277))

(declare-fun m!2166279 () Bool)

(assert (=> b!1752489 m!2166279))

(assert (=> b!1752495 m!2166279))

(assert (=> bm!110400 m!2166273))

(assert (=> b!1752490 m!2166279))

(assert (=> b!1752490 m!2166279))

(declare-fun m!2166281 () Bool)

(assert (=> b!1752490 m!2166281))

(declare-fun m!2166283 () Bool)

(assert (=> b!1752490 m!2166283))

(assert (=> b!1752490 m!2166281))

(assert (=> b!1752490 m!2166283))

(declare-fun m!2166285 () Bool)

(assert (=> b!1752490 m!2166285))

(assert (=> b!1752483 m!2166283))

(assert (=> b!1752483 m!2166283))

(declare-fun m!2166287 () Bool)

(assert (=> b!1752483 m!2166287))

(assert (=> b!1752488 m!2166283))

(assert (=> b!1752488 m!2166283))

(assert (=> b!1752488 m!2166287))

(assert (=> b!1752389 d!535081))

(declare-fun d!535091 () Bool)

(declare-fun res!788366 () Bool)

(declare-fun e!1121790 () Bool)

(assert (=> d!535091 (=> (not res!788366) (not e!1121790))))

(assert (=> d!535091 (= res!788366 (validRegex!1920 (regex!3445 rule!422)))))

(assert (=> d!535091 (= (ruleValid!943 thiss!24550 rule!422) e!1121790)))

(declare-fun b!1752500 () Bool)

(declare-fun res!788367 () Bool)

(assert (=> b!1752500 (=> (not res!788367) (not e!1121790))))

(assert (=> b!1752500 (= res!788367 (not (nullable!1446 (regex!3445 rule!422))))))

(declare-fun b!1752501 () Bool)

(assert (=> b!1752501 (= e!1121790 (not (= (tag!3797 rule!422) (String!22008 ""))))))

(assert (= (and d!535091 res!788366) b!1752500))

(assert (= (and b!1752500 res!788367) b!1752501))

(assert (=> d!535091 m!2166275))

(assert (=> b!1752500 m!2166277))

(assert (=> b!1752389 d!535091))

(declare-fun d!535093 () Bool)

(assert (=> d!535093 (ruleValid!943 thiss!24550 rule!422)))

(declare-fun lt!677084 () Unit!33441)

(declare-fun choose!10820 (LexerInterface!3074 Rule!6690 List!19357) Unit!33441)

(assert (=> d!535093 (= lt!677084 (choose!10820 thiss!24550 rule!422 rules!3447))))

(assert (=> d!535093 (contains!3471 rules!3447 rule!422)))

(assert (=> d!535093 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!466 thiss!24550 rule!422 rules!3447) lt!677084)))

(declare-fun bs!403570 () Bool)

(assert (= bs!403570 d!535093))

(assert (=> bs!403570 m!2166185))

(declare-fun m!2166289 () Bool)

(assert (=> bs!403570 m!2166289))

(assert (=> bs!403570 m!2166221))

(assert (=> b!1752389 d!535093))

(declare-fun d!535095 () Bool)

(declare-fun isBalanced!2000 (Conc!6415) Bool)

(assert (=> d!535095 (= (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))) (isBalanced!2000 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))

(declare-fun bs!403571 () Bool)

(assert (= bs!403571 d!535095))

(declare-fun m!2166291 () Bool)

(assert (=> bs!403571 m!2166291))

(assert (=> tb!105163 d!535095))

(declare-fun d!535097 () Bool)

(declare-fun res!788391 () Bool)

(declare-fun e!1121802 () Bool)

(assert (=> d!535097 (=> (not res!788391) (not e!1121802))))

(declare-fun rulesValid!1287 (LexerInterface!3074 List!19357) Bool)

(assert (=> d!535097 (= res!788391 (rulesValid!1287 thiss!24550 rules!3447))))

(assert (=> d!535097 (= (rulesInvariant!2743 thiss!24550 rules!3447) e!1121802)))

(declare-fun b!1752531 () Bool)

(declare-datatypes ((List!19358 0))(
  ( (Nil!19288) (Cons!19288 (h!24689 String!22007) (t!163159 List!19358)) )
))
(declare-fun noDuplicateTag!1287 (LexerInterface!3074 List!19357 List!19358) Bool)

(assert (=> b!1752531 (= e!1121802 (noDuplicateTag!1287 thiss!24550 rules!3447 Nil!19288))))

(assert (= (and d!535097 res!788391) b!1752531))

(declare-fun m!2166325 () Bool)

(assert (=> d!535097 m!2166325))

(declare-fun m!2166327 () Bool)

(assert (=> b!1752531 m!2166327))

(assert (=> b!1752387 d!535097))

(declare-fun b!1752532 () Bool)

(declare-fun e!1121805 () Bool)

(declare-fun lt!677092 () Bool)

(declare-fun call!110409 () Bool)

(assert (=> b!1752532 (= e!1121805 (= lt!677092 call!110409))))

(declare-fun d!535101 () Bool)

(assert (=> d!535101 e!1121805))

(declare-fun c!285684 () Bool)

(assert (=> d!535101 (= c!285684 ((_ is EmptyExpr!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun e!1121807 () Bool)

(assert (=> d!535101 (= lt!677092 e!1121807)))

(declare-fun c!285686 () Bool)

(assert (=> d!535101 (= c!285686 (isEmpty!12156 lt!677049))))

(assert (=> d!535101 (validRegex!1920 (regex!3445 (rule!5457 (_1!10857 lt!677046))))))

(assert (=> d!535101 (= (matchR!2246 (regex!3445 (rule!5457 (_1!10857 lt!677046))) lt!677049) lt!677092)))

(declare-fun b!1752533 () Bool)

(declare-fun res!788394 () Bool)

(declare-fun e!1121808 () Bool)

(assert (=> b!1752533 (=> (not res!788394) (not e!1121808))))

(assert (=> b!1752533 (= res!788394 (isEmpty!12156 (tail!2617 lt!677049)))))

(declare-fun b!1752534 () Bool)

(declare-fun e!1121804 () Bool)

(assert (=> b!1752534 (= e!1121805 e!1121804)))

(declare-fun c!285685 () Bool)

(assert (=> b!1752534 (= c!285685 ((_ is EmptyLang!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun b!1752535 () Bool)

(declare-fun res!788393 () Bool)

(declare-fun e!1121806 () Bool)

(assert (=> b!1752535 (=> res!788393 e!1121806)))

(assert (=> b!1752535 (= res!788393 e!1121808)))

(declare-fun res!788397 () Bool)

(assert (=> b!1752535 (=> (not res!788397) (not e!1121808))))

(assert (=> b!1752535 (= res!788397 lt!677092)))

(declare-fun b!1752536 () Bool)

(declare-fun e!1121809 () Bool)

(assert (=> b!1752536 (= e!1121806 e!1121809)))

(declare-fun res!788399 () Bool)

(assert (=> b!1752536 (=> (not res!788399) (not e!1121809))))

(assert (=> b!1752536 (= res!788399 (not lt!677092))))

(declare-fun b!1752537 () Bool)

(assert (=> b!1752537 (= e!1121804 (not lt!677092))))

(declare-fun b!1752538 () Bool)

(declare-fun res!788396 () Bool)

(declare-fun e!1121803 () Bool)

(assert (=> b!1752538 (=> res!788396 e!1121803)))

(assert (=> b!1752538 (= res!788396 (not (isEmpty!12156 (tail!2617 lt!677049))))))

(declare-fun b!1752539 () Bool)

(assert (=> b!1752539 (= e!1121808 (= (head!4042 lt!677049) (c!285664 (regex!3445 (rule!5457 (_1!10857 lt!677046))))))))

(declare-fun b!1752540 () Bool)

(assert (=> b!1752540 (= e!1121807 (matchR!2246 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049)) (tail!2617 lt!677049)))))

(declare-fun b!1752541 () Bool)

(assert (=> b!1752541 (= e!1121809 e!1121803)))

(declare-fun res!788392 () Bool)

(assert (=> b!1752541 (=> res!788392 e!1121803)))

(assert (=> b!1752541 (= res!788392 call!110409)))

(declare-fun b!1752542 () Bool)

(assert (=> b!1752542 (= e!1121807 (nullable!1446 (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun b!1752543 () Bool)

(declare-fun res!788398 () Bool)

(assert (=> b!1752543 (=> res!788398 e!1121806)))

(assert (=> b!1752543 (= res!788398 (not ((_ is ElementMatch!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> b!1752543 (= e!1121804 e!1121806)))

(declare-fun bm!110404 () Bool)

(assert (=> bm!110404 (= call!110409 (isEmpty!12156 lt!677049))))

(declare-fun b!1752544 () Bool)

(declare-fun res!788395 () Bool)

(assert (=> b!1752544 (=> (not res!788395) (not e!1121808))))

(assert (=> b!1752544 (= res!788395 (not call!110409))))

(declare-fun b!1752545 () Bool)

(assert (=> b!1752545 (= e!1121803 (not (= (head!4042 lt!677049) (c!285664 (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))))

(assert (= (and d!535101 c!285686) b!1752542))

(assert (= (and d!535101 (not c!285686)) b!1752540))

(assert (= (and d!535101 c!285684) b!1752532))

(assert (= (and d!535101 (not c!285684)) b!1752534))

(assert (= (and b!1752534 c!285685) b!1752537))

(assert (= (and b!1752534 (not c!285685)) b!1752543))

(assert (= (and b!1752543 (not res!788398)) b!1752535))

(assert (= (and b!1752535 res!788397) b!1752544))

(assert (= (and b!1752544 res!788395) b!1752533))

(assert (= (and b!1752533 res!788394) b!1752539))

(assert (= (and b!1752535 (not res!788393)) b!1752536))

(assert (= (and b!1752536 res!788399) b!1752541))

(assert (= (and b!1752541 (not res!788392)) b!1752538))

(assert (= (and b!1752538 (not res!788396)) b!1752545))

(assert (= (or b!1752532 b!1752541 b!1752544) bm!110404))

(declare-fun m!2166339 () Bool)

(assert (=> d!535101 m!2166339))

(declare-fun m!2166341 () Bool)

(assert (=> d!535101 m!2166341))

(declare-fun m!2166343 () Bool)

(assert (=> b!1752542 m!2166343))

(declare-fun m!2166345 () Bool)

(assert (=> b!1752539 m!2166345))

(assert (=> b!1752545 m!2166345))

(assert (=> bm!110404 m!2166339))

(assert (=> b!1752540 m!2166345))

(assert (=> b!1752540 m!2166345))

(declare-fun m!2166347 () Bool)

(assert (=> b!1752540 m!2166347))

(declare-fun m!2166349 () Bool)

(assert (=> b!1752540 m!2166349))

(assert (=> b!1752540 m!2166347))

(assert (=> b!1752540 m!2166349))

(declare-fun m!2166351 () Bool)

(assert (=> b!1752540 m!2166351))

(assert (=> b!1752533 m!2166349))

(assert (=> b!1752533 m!2166349))

(declare-fun m!2166353 () Bool)

(assert (=> b!1752533 m!2166353))

(assert (=> b!1752538 m!2166349))

(assert (=> b!1752538 m!2166349))

(assert (=> b!1752538 m!2166353))

(assert (=> b!1752386 d!535101))

(declare-fun d!535107 () Bool)

(declare-fun res!788408 () Bool)

(declare-fun e!1121815 () Bool)

(assert (=> d!535107 (=> (not res!788408) (not e!1121815))))

(assert (=> d!535107 (= res!788408 (not (isEmpty!12156 (originalCharacters!4259 token!523))))))

(assert (=> d!535107 (= (inv!25029 token!523) e!1121815)))

(declare-fun b!1752554 () Bool)

(declare-fun res!788409 () Bool)

(assert (=> b!1752554 (=> (not res!788409) (not e!1121815))))

(assert (=> b!1752554 (= res!788409 (= (originalCharacters!4259 token!523) (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))))))

(declare-fun b!1752555 () Bool)

(declare-fun size!15323 (List!19356) Int)

(assert (=> b!1752555 (= e!1121815 (= (size!15320 token!523) (size!15323 (originalCharacters!4259 token!523))))))

(assert (= (and d!535107 res!788408) b!1752554))

(assert (= (and b!1752554 res!788409) b!1752555))

(declare-fun b_lambda!56365 () Bool)

(assert (=> (not b_lambda!56365) (not b!1752554)))

(declare-fun t!163100 () Bool)

(declare-fun tb!105169 () Bool)

(assert (=> (and b!1752378 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 token!523)))) t!163100) tb!105169))

(declare-fun b!1752564 () Bool)

(declare-fun e!1121820 () Bool)

(declare-fun tp!498461 () Bool)

(assert (=> b!1752564 (= e!1121820 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))) tp!498461))))

(declare-fun result!126528 () Bool)

(assert (=> tb!105169 (= result!126528 (and (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))) e!1121820))))

(assert (= tb!105169 b!1752564))

(declare-fun m!2166355 () Bool)

(assert (=> b!1752564 m!2166355))

(declare-fun m!2166357 () Bool)

(assert (=> tb!105169 m!2166357))

(assert (=> b!1752554 t!163100))

(declare-fun b_and!131245 () Bool)

(assert (= b_and!131239 (and (=> t!163100 result!126528) b_and!131245)))

(declare-fun t!163102 () Bool)

(declare-fun tb!105171 () Bool)

(assert (=> (and b!1752373 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 token!523)))) t!163102) tb!105171))

(declare-fun result!126530 () Bool)

(assert (= result!126530 result!126528))

(assert (=> b!1752554 t!163102))

(declare-fun b_and!131247 () Bool)

(assert (= b_and!131241 (and (=> t!163102 result!126530) b_and!131247)))

(declare-fun tb!105173 () Bool)

(declare-fun t!163104 () Bool)

(assert (=> (and b!1752383 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 token!523)))) t!163104) tb!105173))

(declare-fun result!126532 () Bool)

(assert (= result!126532 result!126528))

(assert (=> b!1752554 t!163104))

(declare-fun b_and!131249 () Bool)

(assert (= b_and!131243 (and (=> t!163104 result!126532) b_and!131249)))

(declare-fun m!2166359 () Bool)

(assert (=> d!535107 m!2166359))

(declare-fun m!2166361 () Bool)

(assert (=> b!1752554 m!2166361))

(assert (=> b!1752554 m!2166361))

(declare-fun m!2166363 () Bool)

(assert (=> b!1752554 m!2166363))

(declare-fun m!2166365 () Bool)

(assert (=> b!1752555 m!2166365))

(assert (=> start!172830 d!535107))

(declare-fun d!535109 () Bool)

(assert (=> d!535109 (= (inv!25023 (tag!3797 (h!24688 rules!3447))) (= (mod (str.len (value!107854 (tag!3797 (h!24688 rules!3447)))) 2) 0))))

(assert (=> b!1752385 d!535109))

(declare-fun d!535111 () Bool)

(declare-fun res!788422 () Bool)

(declare-fun e!1121834 () Bool)

(assert (=> d!535111 (=> (not res!788422) (not e!1121834))))

(declare-fun semiInverseModEq!1362 (Int Int) Bool)

(assert (=> d!535111 (= res!788422 (semiInverseModEq!1362 (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (h!24688 rules!3447)))))))

(assert (=> d!535111 (= (inv!25028 (transformation!3445 (h!24688 rules!3447))) e!1121834)))

(declare-fun b!1752581 () Bool)

(declare-fun equivClasses!1303 (Int Int) Bool)

(assert (=> b!1752581 (= e!1121834 (equivClasses!1303 (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (h!24688 rules!3447)))))))

(assert (= (and d!535111 res!788422) b!1752581))

(declare-fun m!2166391 () Bool)

(assert (=> d!535111 m!2166391))

(declare-fun m!2166393 () Bool)

(assert (=> b!1752581 m!2166393))

(assert (=> b!1752385 d!535111))

(declare-fun d!535123 () Bool)

(assert (=> d!535123 (= (isEmpty!12156 suffix!1421) ((_ is Nil!19286) suffix!1421))))

(assert (=> b!1752394 d!535123))

(declare-fun d!535125 () Bool)

(declare-fun c!285693 () Bool)

(assert (=> d!535125 (= c!285693 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))

(declare-fun e!1121835 () Bool)

(assert (=> d!535125 (= (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) e!1121835)))

(declare-fun b!1752582 () Bool)

(assert (=> b!1752582 (= e!1121835 (inv!25034 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))

(declare-fun b!1752583 () Bool)

(declare-fun e!1121836 () Bool)

(assert (=> b!1752583 (= e!1121835 e!1121836)))

(declare-fun res!788423 () Bool)

(assert (=> b!1752583 (= res!788423 (not ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(assert (=> b!1752583 (=> res!788423 e!1121836)))

(declare-fun b!1752584 () Bool)

(assert (=> b!1752584 (= e!1121836 (inv!25035 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))

(assert (= (and d!535125 c!285693) b!1752582))

(assert (= (and d!535125 (not c!285693)) b!1752583))

(assert (= (and b!1752583 (not res!788423)) b!1752584))

(declare-fun m!2166395 () Bool)

(assert (=> b!1752582 m!2166395))

(declare-fun m!2166397 () Bool)

(assert (=> b!1752584 m!2166397))

(assert (=> b!1752414 d!535125))

(declare-fun d!535127 () Bool)

(assert (=> d!535127 (= (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) (isBalanced!2000 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))

(declare-fun bs!403574 () Bool)

(assert (= bs!403574 d!535127))

(declare-fun m!2166399 () Bool)

(assert (=> bs!403574 m!2166399))

(assert (=> tb!105151 d!535127))

(declare-fun d!535129 () Bool)

(declare-fun lt!677110 () Int)

(assert (=> d!535129 (= lt!677110 (size!15323 (list!7811 lt!677045)))))

(declare-fun size!15324 (Conc!6415) Int)

(assert (=> d!535129 (= lt!677110 (size!15324 (c!285665 lt!677045)))))

(assert (=> d!535129 (= (size!15321 lt!677045) lt!677110)))

(declare-fun bs!403575 () Bool)

(assert (= bs!403575 d!535129))

(assert (=> bs!403575 m!2166171))

(assert (=> bs!403575 m!2166171))

(declare-fun m!2166401 () Bool)

(assert (=> bs!403575 m!2166401))

(declare-fun m!2166403 () Bool)

(assert (=> bs!403575 m!2166403))

(assert (=> b!1752393 d!535129))

(declare-fun d!535131 () Bool)

(assert (=> d!535131 (= (size!15320 (_1!10857 lt!677046)) (size!15323 (originalCharacters!4259 (_1!10857 lt!677046))))))

(declare-fun Unit!33445 () Unit!33441)

(assert (=> d!535131 (= (lemmaCharactersSize!503 (_1!10857 lt!677046)) Unit!33445)))

(declare-fun bs!403576 () Bool)

(assert (= bs!403576 d!535131))

(declare-fun m!2166405 () Bool)

(assert (=> bs!403576 m!2166405))

(assert (=> b!1752393 d!535131))

(declare-fun d!535133 () Bool)

(declare-fun res!788424 () Bool)

(declare-fun e!1121837 () Bool)

(assert (=> d!535133 (=> (not res!788424) (not e!1121837))))

(assert (=> d!535133 (= res!788424 (not (isEmpty!12156 (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))))

(assert (=> d!535133 (= (inv!25029 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)) e!1121837)))

(declare-fun b!1752585 () Bool)

(declare-fun res!788425 () Bool)

(assert (=> b!1752585 (=> (not res!788425) (not e!1121837))))

(assert (=> b!1752585 (= res!788425 (= (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)) (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))))

(declare-fun b!1752586 () Bool)

(assert (=> b!1752586 (= e!1121837 (= (size!15320 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)) (size!15323 (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))))

(assert (= (and d!535133 res!788424) b!1752585))

(assert (= (and b!1752585 res!788425) b!1752586))

(declare-fun b_lambda!56369 () Bool)

(assert (=> (not b_lambda!56369) (not b!1752585)))

(declare-fun tb!105175 () Bool)

(declare-fun t!163106 () Bool)

(assert (=> (and b!1752378 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) t!163106) tb!105175))

(declare-fun b!1752587 () Bool)

(declare-fun e!1121838 () Bool)

(declare-fun tp!498462 () Bool)

(assert (=> b!1752587 (= e!1121838 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) tp!498462))))

(declare-fun result!126534 () Bool)

(assert (=> tb!105175 (= result!126534 (and (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) e!1121838))))

(assert (= tb!105175 b!1752587))

(declare-fun m!2166407 () Bool)

(assert (=> b!1752587 m!2166407))

(declare-fun m!2166409 () Bool)

(assert (=> tb!105175 m!2166409))

(assert (=> b!1752585 t!163106))

(declare-fun b_and!131257 () Bool)

(assert (= b_and!131245 (and (=> t!163106 result!126534) b_and!131257)))

(declare-fun tb!105177 () Bool)

(declare-fun t!163108 () Bool)

(assert (=> (and b!1752373 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) t!163108) tb!105177))

(declare-fun result!126536 () Bool)

(assert (= result!126536 result!126534))

(assert (=> b!1752585 t!163108))

(declare-fun b_and!131259 () Bool)

(assert (= b_and!131247 (and (=> t!163108 result!126536) b_and!131259)))

(declare-fun t!163110 () Bool)

(declare-fun tb!105179 () Bool)

(assert (=> (and b!1752383 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) t!163110) tb!105179))

(declare-fun result!126538 () Bool)

(assert (= result!126538 result!126534))

(assert (=> b!1752585 t!163110))

(declare-fun b_and!131261 () Bool)

(assert (= b_and!131249 (and (=> t!163110 result!126538) b_and!131261)))

(declare-fun m!2166411 () Bool)

(assert (=> d!535133 m!2166411))

(declare-fun m!2166413 () Bool)

(assert (=> b!1752585 m!2166413))

(assert (=> b!1752585 m!2166413))

(declare-fun m!2166415 () Bool)

(assert (=> b!1752585 m!2166415))

(declare-fun m!2166417 () Bool)

(assert (=> b!1752586 m!2166417))

(assert (=> b!1752393 d!535133))

(declare-fun b!1752594 () Bool)

(declare-fun e!1121843 () Bool)

(assert (=> b!1752594 (= e!1121843 true)))

(declare-fun d!535135 () Bool)

(assert (=> d!535135 e!1121843))

(assert (= d!535135 b!1752594))

(declare-fun order!12153 () Int)

(declare-fun lambda!69899 () Int)

(declare-fun dynLambda!9224 (Int Int) Int)

(assert (=> b!1752594 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9224 order!12153 lambda!69899))))

(assert (=> b!1752594 (< (dynLambda!9221 order!12151 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9224 order!12153 lambda!69899))))

(assert (=> d!535135 (= (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))))))

(declare-fun lt!677113 () Unit!33441)

(declare-fun Forall2of!108 (Int BalanceConc!12774 BalanceConc!12774) Unit!33441)

(assert (=> d!535135 (= lt!677113 (Forall2of!108 lambda!69899 lt!677045 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))))))

(assert (=> d!535135 (= (list!7811 lt!677045) (list!7811 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))))))

(assert (=> d!535135 (= (lemmaEqSameImage!356 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))) lt!677113)))

(declare-fun b_lambda!56371 () Bool)

(assert (=> (not b_lambda!56371) (not d!535135)))

(assert (=> d!535135 t!163085))

(declare-fun b_and!131263 () Bool)

(assert (= b_and!131233 (and (=> t!163085 result!126514) b_and!131263)))

(assert (=> d!535135 t!163087))

(declare-fun b_and!131265 () Bool)

(assert (= b_and!131235 (and (=> t!163087 result!126518) b_and!131265)))

(assert (=> d!535135 t!163089))

(declare-fun b_and!131267 () Bool)

(assert (= b_and!131237 (and (=> t!163089 result!126520) b_and!131267)))

(declare-fun b_lambda!56373 () Bool)

(assert (=> (not b_lambda!56373) (not d!535135)))

(declare-fun tb!105181 () Bool)

(declare-fun t!163112 () Bool)

(assert (=> (and b!1752378 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163112) tb!105181))

(declare-fun result!126540 () Bool)

(assert (=> tb!105181 (= result!126540 (inv!21 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(declare-fun m!2166419 () Bool)

(assert (=> tb!105181 m!2166419))

(assert (=> d!535135 t!163112))

(declare-fun b_and!131269 () Bool)

(assert (= b_and!131263 (and (=> t!163112 result!126540) b_and!131269)))

(declare-fun t!163114 () Bool)

(declare-fun tb!105183 () Bool)

(assert (=> (and b!1752373 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163114) tb!105183))

(declare-fun result!126542 () Bool)

(assert (= result!126542 result!126540))

(assert (=> d!535135 t!163114))

(declare-fun b_and!131271 () Bool)

(assert (= b_and!131265 (and (=> t!163114 result!126542) b_and!131271)))

(declare-fun t!163116 () Bool)

(declare-fun tb!105185 () Bool)

(assert (=> (and b!1752383 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163116) tb!105185))

(declare-fun result!126544 () Bool)

(assert (= result!126544 result!126540))

(assert (=> d!535135 t!163116))

(declare-fun b_and!131273 () Bool)

(assert (= b_and!131267 (and (=> t!163116 result!126544) b_and!131273)))

(assert (=> d!535135 m!2166171))

(assert (=> d!535135 m!2166225))

(declare-fun m!2166421 () Bool)

(assert (=> d!535135 m!2166421))

(assert (=> d!535135 m!2166189))

(assert (=> d!535135 m!2166225))

(declare-fun m!2166423 () Bool)

(assert (=> d!535135 m!2166423))

(assert (=> d!535135 m!2166225))

(declare-fun m!2166425 () Bool)

(assert (=> d!535135 m!2166425))

(assert (=> b!1752393 d!535135))

(declare-fun d!535137 () Bool)

(declare-fun fromListB!1095 (List!19356) BalanceConc!12774)

(assert (=> d!535137 (= (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))) (fromListB!1095 (originalCharacters!4259 (_1!10857 lt!677046))))))

(declare-fun bs!403577 () Bool)

(assert (= bs!403577 d!535137))

(declare-fun m!2166427 () Bool)

(assert (=> bs!403577 m!2166427))

(assert (=> b!1752393 d!535137))

(declare-fun d!535139 () Bool)

(assert (=> d!535139 (= (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))

(declare-fun b_lambda!56375 () Bool)

(assert (=> (not b_lambda!56375) (not d!535139)))

(assert (=> d!535139 t!163085))

(declare-fun b_and!131275 () Bool)

(assert (= b_and!131269 (and (=> t!163085 result!126514) b_and!131275)))

(assert (=> d!535139 t!163087))

(declare-fun b_and!131277 () Bool)

(assert (= b_and!131271 (and (=> t!163087 result!126518) b_and!131277)))

(assert (=> d!535139 t!163089))

(declare-fun b_and!131279 () Bool)

(assert (= b_and!131273 (and (=> t!163089 result!126520) b_and!131279)))

(assert (=> d!535139 m!2166189))

(assert (=> b!1752393 d!535139))

(declare-fun d!535141 () Bool)

(declare-fun c!285696 () Bool)

(assert (=> d!535141 (= c!285696 (isEmpty!12156 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))

(declare-fun e!1121847 () Bool)

(assert (=> d!535141 (= (prefixMatch!656 (rulesRegex!801 thiss!24550 rules!3447) (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))) e!1121847)))

(declare-fun b!1752599 () Bool)

(declare-fun lostCause!557 (Regex!4773) Bool)

(assert (=> b!1752599 (= e!1121847 (not (lostCause!557 (rulesRegex!801 thiss!24550 rules!3447))))))

(declare-fun b!1752600 () Bool)

(assert (=> b!1752600 (= e!1121847 (prefixMatch!656 (derivativeStep!1215 (rulesRegex!801 thiss!24550 rules!3447) (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))) (tail!2617 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(assert (= (and d!535141 c!285696) b!1752599))

(assert (= (and d!535141 (not c!285696)) b!1752600))

(assert (=> d!535141 m!2166211))

(declare-fun m!2166429 () Bool)

(assert (=> d!535141 m!2166429))

(assert (=> b!1752599 m!2166207))

(declare-fun m!2166431 () Bool)

(assert (=> b!1752599 m!2166431))

(assert (=> b!1752600 m!2166211))

(declare-fun m!2166433 () Bool)

(assert (=> b!1752600 m!2166433))

(assert (=> b!1752600 m!2166207))

(assert (=> b!1752600 m!2166433))

(declare-fun m!2166435 () Bool)

(assert (=> b!1752600 m!2166435))

(assert (=> b!1752600 m!2166211))

(declare-fun m!2166437 () Bool)

(assert (=> b!1752600 m!2166437))

(assert (=> b!1752600 m!2166435))

(assert (=> b!1752600 m!2166437))

(declare-fun m!2166439 () Bool)

(assert (=> b!1752600 m!2166439))

(assert (=> b!1752372 d!535141))

(declare-fun d!535143 () Bool)

(declare-fun lt!677116 () Unit!33441)

(declare-fun lemma!370 (List!19357 LexerInterface!3074 List!19357) Unit!33441)

(assert (=> d!535143 (= lt!677116 (lemma!370 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69902 () Int)

(declare-datatypes ((List!19360 0))(
  ( (Nil!19290) (Cons!19290 (h!24691 Regex!4773) (t!163161 List!19360)) )
))
(declare-fun generalisedUnion!378 (List!19360) Regex!4773)

(declare-fun map!3972 (List!19357 Int) List!19360)

(assert (=> d!535143 (= (rulesRegex!801 thiss!24550 rules!3447) (generalisedUnion!378 (map!3972 rules!3447 lambda!69902)))))

(declare-fun bs!403578 () Bool)

(assert (= bs!403578 d!535143))

(declare-fun m!2166441 () Bool)

(assert (=> bs!403578 m!2166441))

(declare-fun m!2166443 () Bool)

(assert (=> bs!403578 m!2166443))

(assert (=> bs!403578 m!2166443))

(declare-fun m!2166445 () Bool)

(assert (=> bs!403578 m!2166445))

(assert (=> b!1752372 d!535143))

(declare-fun d!535145 () Bool)

(declare-fun e!1121853 () Bool)

(assert (=> d!535145 e!1121853))

(declare-fun res!788433 () Bool)

(assert (=> d!535145 (=> (not res!788433) (not e!1121853))))

(declare-fun lt!677119 () List!19356)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2771 (List!19356) (InoxSet C!9720))

(assert (=> d!535145 (= res!788433 (= (content!2771 lt!677119) ((_ map or) (content!2771 lt!677061) (content!2771 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(declare-fun e!1121852 () List!19356)

(assert (=> d!535145 (= lt!677119 e!1121852)))

(declare-fun c!285699 () Bool)

(assert (=> d!535145 (= c!285699 ((_ is Nil!19286) lt!677061))))

(assert (=> d!535145 (= (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)) lt!677119)))

(declare-fun b!1752610 () Bool)

(assert (=> b!1752610 (= e!1121852 (Cons!19286 (h!24687 lt!677061) (++!5269 (t!163097 lt!677061) (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))

(declare-fun b!1752609 () Bool)

(assert (=> b!1752609 (= e!1121852 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))

(declare-fun b!1752612 () Bool)

(assert (=> b!1752612 (= e!1121853 (or (not (= (Cons!19286 (head!4042 suffix!1421) Nil!19286) Nil!19286)) (= lt!677119 lt!677061)))))

(declare-fun b!1752611 () Bool)

(declare-fun res!788432 () Bool)

(assert (=> b!1752611 (=> (not res!788432) (not e!1121853))))

(assert (=> b!1752611 (= res!788432 (= (size!15323 lt!677119) (+ (size!15323 lt!677061) (size!15323 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(assert (= (and d!535145 c!285699) b!1752609))

(assert (= (and d!535145 (not c!285699)) b!1752610))

(assert (= (and d!535145 res!788433) b!1752611))

(assert (= (and b!1752611 res!788432) b!1752612))

(declare-fun m!2166447 () Bool)

(assert (=> d!535145 m!2166447))

(declare-fun m!2166449 () Bool)

(assert (=> d!535145 m!2166449))

(declare-fun m!2166451 () Bool)

(assert (=> d!535145 m!2166451))

(declare-fun m!2166453 () Bool)

(assert (=> b!1752610 m!2166453))

(declare-fun m!2166455 () Bool)

(assert (=> b!1752611 m!2166455))

(declare-fun m!2166457 () Bool)

(assert (=> b!1752611 m!2166457))

(declare-fun m!2166459 () Bool)

(assert (=> b!1752611 m!2166459))

(assert (=> b!1752372 d!535145))

(declare-fun d!535147 () Bool)

(assert (=> d!535147 (= (head!4042 suffix!1421) (h!24687 suffix!1421))))

(assert (=> b!1752372 d!535147))

(declare-fun d!535149 () Bool)

(declare-fun list!7814 (Conc!6415) List!19356)

(assert (=> d!535149 (= (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) (list!7814 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))

(declare-fun bs!403579 () Bool)

(assert (= bs!403579 d!535149))

(declare-fun m!2166461 () Bool)

(assert (=> bs!403579 m!2166461))

(assert (=> b!1752370 d!535149))

(declare-fun bs!403580 () Bool)

(declare-fun d!535151 () Bool)

(assert (= bs!403580 (and d!535151 b!1752379)))

(declare-fun lambda!69905 () Int)

(assert (=> bs!403580 (= lambda!69905 lambda!69896)))

(declare-fun b!1752617 () Bool)

(declare-fun e!1121856 () Bool)

(assert (=> b!1752617 (= e!1121856 true)))

(assert (=> d!535151 e!1121856))

(assert (= d!535151 b!1752617))

(assert (=> b!1752617 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9220 order!12149 lambda!69905))))

(assert (=> b!1752617 (< (dynLambda!9221 order!12151 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9220 order!12149 lambda!69905))))

(assert (=> d!535151 (= (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) (list!7811 lt!677045))))

(declare-fun lt!677122 () Unit!33441)

(declare-fun ForallOf!299 (Int BalanceConc!12774) Unit!33441)

(assert (=> d!535151 (= lt!677122 (ForallOf!299 lambda!69905 lt!677045))))

(assert (=> d!535151 (= (lemmaSemiInverse!583 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) lt!677122)))

(declare-fun b_lambda!56377 () Bool)

(assert (=> (not b_lambda!56377) (not d!535151)))

(assert (=> d!535151 t!163079))

(declare-fun b_and!131281 () Bool)

(assert (= b_and!131257 (and (=> t!163079 result!126506) b_and!131281)))

(assert (=> d!535151 t!163081))

(declare-fun b_and!131283 () Bool)

(assert (= b_and!131259 (and (=> t!163081 result!126510) b_and!131283)))

(assert (=> d!535151 t!163083))

(declare-fun b_and!131285 () Bool)

(assert (= b_and!131261 (and (=> t!163083 result!126512) b_and!131285)))

(declare-fun b_lambda!56379 () Bool)

(assert (=> (not b_lambda!56379) (not d!535151)))

(assert (=> d!535151 t!163085))

(declare-fun b_and!131287 () Bool)

(assert (= b_and!131275 (and (=> t!163085 result!126514) b_and!131287)))

(assert (=> d!535151 t!163087))

(declare-fun b_and!131289 () Bool)

(assert (= b_and!131277 (and (=> t!163087 result!126518) b_and!131289)))

(assert (=> d!535151 t!163089))

(declare-fun b_and!131291 () Bool)

(assert (= b_and!131279 (and (=> t!163089 result!126520) b_and!131291)))

(assert (=> d!535151 m!2166189))

(assert (=> d!535151 m!2166191))

(assert (=> d!535151 m!2166171))

(declare-fun m!2166463 () Bool)

(assert (=> d!535151 m!2166463))

(assert (=> d!535151 m!2166191))

(assert (=> d!535151 m!2166193))

(assert (=> d!535151 m!2166189))

(assert (=> b!1752370 d!535151))

(declare-fun d!535153 () Bool)

(declare-fun e!1121858 () Bool)

(assert (=> d!535153 e!1121858))

(declare-fun res!788435 () Bool)

(assert (=> d!535153 (=> (not res!788435) (not e!1121858))))

(declare-fun lt!677123 () List!19356)

(assert (=> d!535153 (= res!788435 (= (content!2771 lt!677123) ((_ map or) (content!2771 lt!677049) (content!2771 (_2!10857 lt!677046)))))))

(declare-fun e!1121857 () List!19356)

(assert (=> d!535153 (= lt!677123 e!1121857)))

(declare-fun c!285701 () Bool)

(assert (=> d!535153 (= c!285701 ((_ is Nil!19286) lt!677049))))

(assert (=> d!535153 (= (++!5269 lt!677049 (_2!10857 lt!677046)) lt!677123)))

(declare-fun b!1752619 () Bool)

(assert (=> b!1752619 (= e!1121857 (Cons!19286 (h!24687 lt!677049) (++!5269 (t!163097 lt!677049) (_2!10857 lt!677046))))))

(declare-fun b!1752618 () Bool)

(assert (=> b!1752618 (= e!1121857 (_2!10857 lt!677046))))

(declare-fun b!1752621 () Bool)

(assert (=> b!1752621 (= e!1121858 (or (not (= (_2!10857 lt!677046) Nil!19286)) (= lt!677123 lt!677049)))))

(declare-fun b!1752620 () Bool)

(declare-fun res!788434 () Bool)

(assert (=> b!1752620 (=> (not res!788434) (not e!1121858))))

(assert (=> b!1752620 (= res!788434 (= (size!15323 lt!677123) (+ (size!15323 lt!677049) (size!15323 (_2!10857 lt!677046)))))))

(assert (= (and d!535153 c!285701) b!1752618))

(assert (= (and d!535153 (not c!285701)) b!1752619))

(assert (= (and d!535153 res!788435) b!1752620))

(assert (= (and b!1752620 res!788434) b!1752621))

(declare-fun m!2166465 () Bool)

(assert (=> d!535153 m!2166465))

(declare-fun m!2166467 () Bool)

(assert (=> d!535153 m!2166467))

(declare-fun m!2166469 () Bool)

(assert (=> d!535153 m!2166469))

(declare-fun m!2166471 () Bool)

(assert (=> b!1752619 m!2166471))

(declare-fun m!2166473 () Bool)

(assert (=> b!1752620 m!2166473))

(declare-fun m!2166475 () Bool)

(assert (=> b!1752620 m!2166475))

(declare-fun m!2166477 () Bool)

(assert (=> b!1752620 m!2166477))

(assert (=> b!1752392 d!535153))

(declare-fun d!535155 () Bool)

(declare-fun e!1121861 () Bool)

(assert (=> d!535155 e!1121861))

(declare-fun res!788440 () Bool)

(assert (=> d!535155 (=> (not res!788440) (not e!1121861))))

(assert (=> d!535155 (= res!788440 (isDefined!3256 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))

(declare-fun lt!677126 () Unit!33441)

(declare-fun choose!10823 (LexerInterface!3074 List!19357 List!19356 Token!6456) Unit!33441)

(assert (=> d!535155 (= lt!677126 (choose!10823 thiss!24550 rules!3447 lt!677054 (_1!10857 lt!677046)))))

(assert (=> d!535155 (rulesInvariant!2743 thiss!24550 rules!3447)))

(assert (=> d!535155 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!493 thiss!24550 rules!3447 lt!677054 (_1!10857 lt!677046)) lt!677126)))

(declare-fun b!1752626 () Bool)

(declare-fun res!788441 () Bool)

(assert (=> b!1752626 (=> (not res!788441) (not e!1121861))))

(assert (=> b!1752626 (= res!788441 (matchR!2246 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))) (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(declare-fun b!1752627 () Bool)

(assert (=> b!1752627 (= e!1121861 (= (rule!5457 (_1!10857 lt!677046)) (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))

(assert (= (and d!535155 res!788440) b!1752626))

(assert (= (and b!1752626 res!788441) b!1752627))

(assert (=> d!535155 m!2166181))

(assert (=> d!535155 m!2166181))

(declare-fun m!2166479 () Bool)

(assert (=> d!535155 m!2166479))

(declare-fun m!2166481 () Bool)

(assert (=> d!535155 m!2166481))

(assert (=> d!535155 m!2166205))

(assert (=> b!1752626 m!2166181))

(assert (=> b!1752626 m!2166123))

(assert (=> b!1752626 m!2166123))

(assert (=> b!1752626 m!2166125))

(assert (=> b!1752626 m!2166181))

(declare-fun m!2166483 () Bool)

(assert (=> b!1752626 m!2166483))

(assert (=> b!1752626 m!2166125))

(declare-fun m!2166485 () Bool)

(assert (=> b!1752626 m!2166485))

(assert (=> b!1752627 m!2166181))

(assert (=> b!1752627 m!2166181))

(assert (=> b!1752627 m!2166483))

(assert (=> b!1752392 d!535155))

(declare-fun d!535157 () Bool)

(assert (=> d!535157 (isPrefix!1685 lt!677049 (++!5269 lt!677049 (_2!10857 lt!677046)))))

(declare-fun lt!677129 () Unit!33441)

(declare-fun choose!10824 (List!19356 List!19356) Unit!33441)

(assert (=> d!535157 (= lt!677129 (choose!10824 lt!677049 (_2!10857 lt!677046)))))

(assert (=> d!535157 (= (lemmaConcatTwoListThenFirstIsPrefix!1194 lt!677049 (_2!10857 lt!677046)) lt!677129)))

(declare-fun bs!403581 () Bool)

(assert (= bs!403581 d!535157))

(assert (=> bs!403581 m!2166159))

(assert (=> bs!403581 m!2166159))

(assert (=> bs!403581 m!2166161))

(declare-fun m!2166487 () Bool)

(assert (=> bs!403581 m!2166487))

(assert (=> b!1752392 d!535157))

(declare-fun d!535159 () Bool)

(declare-fun lt!677132 () BalanceConc!12774)

(assert (=> d!535159 (= (list!7811 lt!677132) (originalCharacters!4259 (_1!10857 lt!677046)))))

(assert (=> d!535159 (= lt!677132 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))

(assert (=> d!535159 (= (charsOf!2094 (_1!10857 lt!677046)) lt!677132)))

(declare-fun b_lambda!56381 () Bool)

(assert (=> (not b_lambda!56381) (not d!535159)))

(assert (=> d!535159 t!163091))

(declare-fun b_and!131293 () Bool)

(assert (= b_and!131281 (and (=> t!163091 result!126522) b_and!131293)))

(assert (=> d!535159 t!163093))

(declare-fun b_and!131295 () Bool)

(assert (= b_and!131283 (and (=> t!163093 result!126524) b_and!131295)))

(assert (=> d!535159 t!163095))

(declare-fun b_and!131297 () Bool)

(assert (= b_and!131285 (and (=> t!163095 result!126526) b_and!131297)))

(declare-fun m!2166489 () Bool)

(assert (=> d!535159 m!2166489))

(assert (=> d!535159 m!2166203))

(assert (=> b!1752392 d!535159))

(declare-fun d!535161 () Bool)

(declare-fun isEmpty!12160 (Option!3913) Bool)

(assert (=> d!535161 (= (isDefined!3256 lt!677062) (not (isEmpty!12160 lt!677062)))))

(declare-fun bs!403582 () Bool)

(assert (= bs!403582 d!535161))

(declare-fun m!2166491 () Bool)

(assert (=> bs!403582 m!2166491))

(assert (=> b!1752392 d!535161))

(declare-fun d!535163 () Bool)

(assert (=> d!535163 (= (list!7811 lt!677045) (list!7814 (c!285665 lt!677045)))))

(declare-fun bs!403583 () Bool)

(assert (= bs!403583 d!535163))

(declare-fun m!2166493 () Bool)

(assert (=> bs!403583 m!2166493))

(assert (=> b!1752392 d!535163))

(declare-fun d!535165 () Bool)

(assert (=> d!535165 (isPrefix!1685 lt!677061 (++!5269 lt!677061 suffix!1421))))

(declare-fun lt!677133 () Unit!33441)

(assert (=> d!535165 (= lt!677133 (choose!10824 lt!677061 suffix!1421))))

(assert (=> d!535165 (= (lemmaConcatTwoListThenFirstIsPrefix!1194 lt!677061 suffix!1421) lt!677133)))

(declare-fun bs!403584 () Bool)

(assert (= bs!403584 d!535165))

(assert (=> bs!403584 m!2166179))

(assert (=> bs!403584 m!2166179))

(declare-fun m!2166495 () Bool)

(assert (=> bs!403584 m!2166495))

(declare-fun m!2166497 () Bool)

(assert (=> bs!403584 m!2166497))

(assert (=> b!1752392 d!535165))

(declare-fun b!1752636 () Bool)

(declare-fun e!1121868 () Bool)

(declare-fun e!1121869 () Bool)

(assert (=> b!1752636 (= e!1121868 e!1121869)))

(declare-fun res!788452 () Bool)

(assert (=> b!1752636 (=> (not res!788452) (not e!1121869))))

(assert (=> b!1752636 (= res!788452 (not ((_ is Nil!19286) (++!5269 lt!677049 (_2!10857 lt!677046)))))))

(declare-fun b!1752638 () Bool)

(assert (=> b!1752638 (= e!1121869 (isPrefix!1685 (tail!2617 lt!677049) (tail!2617 (++!5269 lt!677049 (_2!10857 lt!677046)))))))

(declare-fun b!1752639 () Bool)

(declare-fun e!1121870 () Bool)

(assert (=> b!1752639 (= e!1121870 (>= (size!15323 (++!5269 lt!677049 (_2!10857 lt!677046))) (size!15323 lt!677049)))))

(declare-fun d!535167 () Bool)

(assert (=> d!535167 e!1121870))

(declare-fun res!788450 () Bool)

(assert (=> d!535167 (=> res!788450 e!1121870)))

(declare-fun lt!677136 () Bool)

(assert (=> d!535167 (= res!788450 (not lt!677136))))

(assert (=> d!535167 (= lt!677136 e!1121868)))

(declare-fun res!788451 () Bool)

(assert (=> d!535167 (=> res!788451 e!1121868)))

(assert (=> d!535167 (= res!788451 ((_ is Nil!19286) lt!677049))))

(assert (=> d!535167 (= (isPrefix!1685 lt!677049 (++!5269 lt!677049 (_2!10857 lt!677046))) lt!677136)))

(declare-fun b!1752637 () Bool)

(declare-fun res!788453 () Bool)

(assert (=> b!1752637 (=> (not res!788453) (not e!1121869))))

(assert (=> b!1752637 (= res!788453 (= (head!4042 lt!677049) (head!4042 (++!5269 lt!677049 (_2!10857 lt!677046)))))))

(assert (= (and d!535167 (not res!788451)) b!1752636))

(assert (= (and b!1752636 res!788452) b!1752637))

(assert (= (and b!1752637 res!788453) b!1752638))

(assert (= (and d!535167 (not res!788450)) b!1752639))

(assert (=> b!1752638 m!2166349))

(assert (=> b!1752638 m!2166159))

(declare-fun m!2166499 () Bool)

(assert (=> b!1752638 m!2166499))

(assert (=> b!1752638 m!2166349))

(assert (=> b!1752638 m!2166499))

(declare-fun m!2166501 () Bool)

(assert (=> b!1752638 m!2166501))

(assert (=> b!1752639 m!2166159))

(declare-fun m!2166503 () Bool)

(assert (=> b!1752639 m!2166503))

(assert (=> b!1752639 m!2166475))

(assert (=> b!1752637 m!2166345))

(assert (=> b!1752637 m!2166159))

(declare-fun m!2166505 () Bool)

(assert (=> b!1752637 m!2166505))

(assert (=> b!1752392 d!535167))

(declare-fun b!1752652 () Bool)

(declare-fun e!1121882 () Option!3913)

(assert (=> b!1752652 (= e!1121882 (Some!3912 (h!24688 rules!3447)))))

(declare-fun d!535169 () Bool)

(declare-fun e!1121879 () Bool)

(assert (=> d!535169 e!1121879))

(declare-fun res!788458 () Bool)

(assert (=> d!535169 (=> res!788458 e!1121879)))

(declare-fun lt!677144 () Option!3913)

(assert (=> d!535169 (= res!788458 (isEmpty!12160 lt!677144))))

(assert (=> d!535169 (= lt!677144 e!1121882)))

(declare-fun c!285706 () Bool)

(assert (=> d!535169 (= c!285706 (and ((_ is Cons!19287) rules!3447) (= (tag!3797 (h!24688 rules!3447)) (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> d!535169 (rulesInvariant!2743 thiss!24550 rules!3447)))

(assert (=> d!535169 (= (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))) lt!677144)))

(declare-fun b!1752653 () Bool)

(declare-fun e!1121881 () Bool)

(assert (=> b!1752653 (= e!1121881 (= (tag!3797 (get!5852 lt!677144)) (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun b!1752654 () Bool)

(declare-fun e!1121880 () Option!3913)

(assert (=> b!1752654 (= e!1121882 e!1121880)))

(declare-fun c!285707 () Bool)

(assert (=> b!1752654 (= c!285707 (and ((_ is Cons!19287) rules!3447) (not (= (tag!3797 (h!24688 rules!3447)) (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))

(declare-fun b!1752655 () Bool)

(assert (=> b!1752655 (= e!1121880 None!3912)))

(declare-fun b!1752656 () Bool)

(assert (=> b!1752656 (= e!1121879 e!1121881)))

(declare-fun res!788459 () Bool)

(assert (=> b!1752656 (=> (not res!788459) (not e!1121881))))

(assert (=> b!1752656 (= res!788459 (contains!3471 rules!3447 (get!5852 lt!677144)))))

(declare-fun b!1752657 () Bool)

(declare-fun lt!677145 () Unit!33441)

(declare-fun lt!677143 () Unit!33441)

(assert (=> b!1752657 (= lt!677145 lt!677143)))

(assert (=> b!1752657 (rulesInvariant!2743 thiss!24550 (t!163098 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!176 (LexerInterface!3074 Rule!6690 List!19357) Unit!33441)

(assert (=> b!1752657 (= lt!677143 (lemmaInvariantOnRulesThenOnTail!176 thiss!24550 (h!24688 rules!3447) (t!163098 rules!3447)))))

(assert (=> b!1752657 (= e!1121880 (getRuleFromTag!493 thiss!24550 (t!163098 rules!3447) (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))

(assert (= (and d!535169 c!285706) b!1752652))

(assert (= (and d!535169 (not c!285706)) b!1752654))

(assert (= (and b!1752654 c!285707) b!1752657))

(assert (= (and b!1752654 (not c!285707)) b!1752655))

(assert (= (and d!535169 (not res!788458)) b!1752656))

(assert (= (and b!1752656 res!788459) b!1752653))

(declare-fun m!2166507 () Bool)

(assert (=> d!535169 m!2166507))

(assert (=> d!535169 m!2166205))

(declare-fun m!2166509 () Bool)

(assert (=> b!1752653 m!2166509))

(assert (=> b!1752656 m!2166509))

(assert (=> b!1752656 m!2166509))

(declare-fun m!2166511 () Bool)

(assert (=> b!1752656 m!2166511))

(declare-fun m!2166513 () Bool)

(assert (=> b!1752657 m!2166513))

(declare-fun m!2166515 () Bool)

(assert (=> b!1752657 m!2166515))

(declare-fun m!2166517 () Bool)

(assert (=> b!1752657 m!2166517))

(assert (=> b!1752392 d!535169))

(declare-fun b!1752658 () Bool)

(declare-fun e!1121883 () Bool)

(declare-fun e!1121884 () Bool)

(assert (=> b!1752658 (= e!1121883 e!1121884)))

(declare-fun res!788462 () Bool)

(assert (=> b!1752658 (=> (not res!788462) (not e!1121884))))

(assert (=> b!1752658 (= res!788462 (not ((_ is Nil!19286) lt!677054)))))

(declare-fun b!1752660 () Bool)

(assert (=> b!1752660 (= e!1121884 (isPrefix!1685 (tail!2617 lt!677049) (tail!2617 lt!677054)))))

(declare-fun b!1752661 () Bool)

(declare-fun e!1121885 () Bool)

(assert (=> b!1752661 (= e!1121885 (>= (size!15323 lt!677054) (size!15323 lt!677049)))))

(declare-fun d!535171 () Bool)

(assert (=> d!535171 e!1121885))

(declare-fun res!788460 () Bool)

(assert (=> d!535171 (=> res!788460 e!1121885)))

(declare-fun lt!677146 () Bool)

(assert (=> d!535171 (= res!788460 (not lt!677146))))

(assert (=> d!535171 (= lt!677146 e!1121883)))

(declare-fun res!788461 () Bool)

(assert (=> d!535171 (=> res!788461 e!1121883)))

(assert (=> d!535171 (= res!788461 ((_ is Nil!19286) lt!677049))))

(assert (=> d!535171 (= (isPrefix!1685 lt!677049 lt!677054) lt!677146)))

(declare-fun b!1752659 () Bool)

(declare-fun res!788463 () Bool)

(assert (=> b!1752659 (=> (not res!788463) (not e!1121884))))

(assert (=> b!1752659 (= res!788463 (= (head!4042 lt!677049) (head!4042 lt!677054)))))

(assert (= (and d!535171 (not res!788461)) b!1752658))

(assert (= (and b!1752658 res!788462) b!1752659))

(assert (= (and b!1752659 res!788463) b!1752660))

(assert (= (and d!535171 (not res!788460)) b!1752661))

(assert (=> b!1752660 m!2166349))

(declare-fun m!2166519 () Bool)

(assert (=> b!1752660 m!2166519))

(assert (=> b!1752660 m!2166349))

(assert (=> b!1752660 m!2166519))

(declare-fun m!2166521 () Bool)

(assert (=> b!1752660 m!2166521))

(declare-fun m!2166523 () Bool)

(assert (=> b!1752661 m!2166523))

(assert (=> b!1752661 m!2166475))

(assert (=> b!1752659 m!2166345))

(declare-fun m!2166525 () Bool)

(assert (=> b!1752659 m!2166525))

(assert (=> b!1752392 d!535171))

(declare-fun bm!110407 () Bool)

(declare-fun call!110412 () Option!3912)

(declare-fun maxPrefixOneRule!999 (LexerInterface!3074 Rule!6690 List!19356) Option!3912)

(assert (=> bm!110407 (= call!110412 (maxPrefixOneRule!999 thiss!24550 (h!24688 rules!3447) lt!677054))))

(declare-fun b!1752704 () Bool)

(declare-fun res!788493 () Bool)

(declare-fun e!1121906 () Bool)

(assert (=> b!1752704 (=> (not res!788493) (not e!1121906))))

(declare-fun lt!677213 () Option!3912)

(assert (=> b!1752704 (= res!788493 (matchR!2246 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))))))

(declare-fun b!1752705 () Bool)

(declare-fun res!788496 () Bool)

(assert (=> b!1752705 (=> (not res!788496) (not e!1121906))))

(assert (=> b!1752705 (= res!788496 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))) (_2!10857 (get!5853 lt!677213))) lt!677054))))

(declare-fun b!1752706 () Bool)

(declare-fun res!788495 () Bool)

(assert (=> b!1752706 (=> (not res!788495) (not e!1121906))))

(assert (=> b!1752706 (= res!788495 (< (size!15323 (_2!10857 (get!5853 lt!677213))) (size!15323 lt!677054)))))

(declare-fun b!1752707 () Bool)

(declare-fun e!1121904 () Option!3912)

(declare-fun lt!677215 () Option!3912)

(declare-fun lt!677216 () Option!3912)

(assert (=> b!1752707 (= e!1121904 (ite (and ((_ is None!3911) lt!677215) ((_ is None!3911) lt!677216)) None!3911 (ite ((_ is None!3911) lt!677216) lt!677215 (ite ((_ is None!3911) lt!677215) lt!677216 (ite (>= (size!15320 (_1!10857 (v!25358 lt!677215))) (size!15320 (_1!10857 (v!25358 lt!677216)))) lt!677215 lt!677216)))))))

(assert (=> b!1752707 (= lt!677215 call!110412)))

(assert (=> b!1752707 (= lt!677216 (maxPrefix!1628 thiss!24550 (t!163098 rules!3447) lt!677054))))

(declare-fun b!1752709 () Bool)

(declare-fun res!788492 () Bool)

(assert (=> b!1752709 (=> (not res!788492) (not e!1121906))))

(assert (=> b!1752709 (= res!788492 (= (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))) (originalCharacters!4259 (_1!10857 (get!5853 lt!677213)))))))

(declare-fun b!1752710 () Bool)

(assert (=> b!1752710 (= e!1121904 call!110412)))

(declare-fun b!1752708 () Bool)

(declare-fun e!1121905 () Bool)

(assert (=> b!1752708 (= e!1121905 e!1121906)))

(declare-fun res!788494 () Bool)

(assert (=> b!1752708 (=> (not res!788494) (not e!1121906))))

(assert (=> b!1752708 (= res!788494 (isDefined!3255 lt!677213))))

(declare-fun d!535173 () Bool)

(assert (=> d!535173 e!1121905))

(declare-fun res!788490 () Bool)

(assert (=> d!535173 (=> res!788490 e!1121905)))

(declare-fun isEmpty!12161 (Option!3912) Bool)

(assert (=> d!535173 (= res!788490 (isEmpty!12161 lt!677213))))

(assert (=> d!535173 (= lt!677213 e!1121904)))

(declare-fun c!285716 () Bool)

(assert (=> d!535173 (= c!285716 (and ((_ is Cons!19287) rules!3447) ((_ is Nil!19287) (t!163098 rules!3447))))))

(declare-fun lt!677214 () Unit!33441)

(declare-fun lt!677212 () Unit!33441)

(assert (=> d!535173 (= lt!677214 lt!677212)))

(assert (=> d!535173 (isPrefix!1685 lt!677054 lt!677054)))

(declare-fun lemmaIsPrefixRefl!1114 (List!19356 List!19356) Unit!33441)

(assert (=> d!535173 (= lt!677212 (lemmaIsPrefixRefl!1114 lt!677054 lt!677054))))

(declare-fun rulesValidInductive!1152 (LexerInterface!3074 List!19357) Bool)

(assert (=> d!535173 (rulesValidInductive!1152 thiss!24550 rules!3447)))

(assert (=> d!535173 (= (maxPrefix!1628 thiss!24550 rules!3447 lt!677054) lt!677213)))

(declare-fun b!1752711 () Bool)

(assert (=> b!1752711 (= e!1121906 (contains!3471 rules!3447 (rule!5457 (_1!10857 (get!5853 lt!677213)))))))

(declare-fun b!1752712 () Bool)

(declare-fun res!788491 () Bool)

(assert (=> b!1752712 (=> (not res!788491) (not e!1121906))))

(assert (=> b!1752712 (= res!788491 (= (value!107855 (_1!10857 (get!5853 lt!677213))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677213)))))))))

(assert (= (and d!535173 c!285716) b!1752710))

(assert (= (and d!535173 (not c!285716)) b!1752707))

(assert (= (or b!1752710 b!1752707) bm!110407))

(assert (= (and d!535173 (not res!788490)) b!1752708))

(assert (= (and b!1752708 res!788494) b!1752709))

(assert (= (and b!1752709 res!788492) b!1752706))

(assert (= (and b!1752706 res!788495) b!1752705))

(assert (= (and b!1752705 res!788496) b!1752712))

(assert (= (and b!1752712 res!788491) b!1752704))

(assert (= (and b!1752704 res!788493) b!1752711))

(declare-fun m!2166593 () Bool)

(assert (=> b!1752708 m!2166593))

(declare-fun m!2166595 () Bool)

(assert (=> b!1752706 m!2166595))

(declare-fun m!2166597 () Bool)

(assert (=> b!1752706 m!2166597))

(assert (=> b!1752706 m!2166523))

(assert (=> b!1752704 m!2166595))

(declare-fun m!2166599 () Bool)

(assert (=> b!1752704 m!2166599))

(assert (=> b!1752704 m!2166599))

(declare-fun m!2166601 () Bool)

(assert (=> b!1752704 m!2166601))

(assert (=> b!1752704 m!2166601))

(declare-fun m!2166603 () Bool)

(assert (=> b!1752704 m!2166603))

(declare-fun m!2166605 () Bool)

(assert (=> bm!110407 m!2166605))

(assert (=> b!1752705 m!2166595))

(assert (=> b!1752705 m!2166599))

(assert (=> b!1752705 m!2166599))

(assert (=> b!1752705 m!2166601))

(assert (=> b!1752705 m!2166601))

(declare-fun m!2166607 () Bool)

(assert (=> b!1752705 m!2166607))

(assert (=> b!1752712 m!2166595))

(declare-fun m!2166609 () Bool)

(assert (=> b!1752712 m!2166609))

(assert (=> b!1752712 m!2166609))

(declare-fun m!2166611 () Bool)

(assert (=> b!1752712 m!2166611))

(declare-fun m!2166613 () Bool)

(assert (=> d!535173 m!2166613))

(declare-fun m!2166615 () Bool)

(assert (=> d!535173 m!2166615))

(declare-fun m!2166617 () Bool)

(assert (=> d!535173 m!2166617))

(declare-fun m!2166619 () Bool)

(assert (=> d!535173 m!2166619))

(assert (=> b!1752709 m!2166595))

(assert (=> b!1752709 m!2166599))

(assert (=> b!1752709 m!2166599))

(assert (=> b!1752709 m!2166601))

(assert (=> b!1752711 m!2166595))

(declare-fun m!2166621 () Bool)

(assert (=> b!1752711 m!2166621))

(declare-fun m!2166623 () Bool)

(assert (=> b!1752707 m!2166623))

(assert (=> b!1752392 d!535173))

(declare-fun d!535181 () Bool)

(assert (=> d!535181 (= (get!5853 lt!677052) (v!25358 lt!677052))))

(assert (=> b!1752392 d!535181))

(declare-fun d!535183 () Bool)

(declare-fun e!1121911 () Bool)

(assert (=> d!535183 e!1121911))

(declare-fun res!788504 () Bool)

(assert (=> d!535183 (=> (not res!788504) (not e!1121911))))

(declare-fun lt!677220 () List!19356)

(assert (=> d!535183 (= res!788504 (= (content!2771 lt!677220) ((_ map or) (content!2771 lt!677061) (content!2771 suffix!1421))))))

(declare-fun e!1121910 () List!19356)

(assert (=> d!535183 (= lt!677220 e!1121910)))

(declare-fun c!285717 () Bool)

(assert (=> d!535183 (= c!285717 ((_ is Nil!19286) lt!677061))))

(assert (=> d!535183 (= (++!5269 lt!677061 suffix!1421) lt!677220)))

(declare-fun b!1752720 () Bool)

(assert (=> b!1752720 (= e!1121910 (Cons!19286 (h!24687 lt!677061) (++!5269 (t!163097 lt!677061) suffix!1421)))))

(declare-fun b!1752719 () Bool)

(assert (=> b!1752719 (= e!1121910 suffix!1421)))

(declare-fun b!1752722 () Bool)

(assert (=> b!1752722 (= e!1121911 (or (not (= suffix!1421 Nil!19286)) (= lt!677220 lt!677061)))))

(declare-fun b!1752721 () Bool)

(declare-fun res!788503 () Bool)

(assert (=> b!1752721 (=> (not res!788503) (not e!1121911))))

(assert (=> b!1752721 (= res!788503 (= (size!15323 lt!677220) (+ (size!15323 lt!677061) (size!15323 suffix!1421))))))

(assert (= (and d!535183 c!285717) b!1752719))

(assert (= (and d!535183 (not c!285717)) b!1752720))

(assert (= (and d!535183 res!788504) b!1752721))

(assert (= (and b!1752721 res!788503) b!1752722))

(declare-fun m!2166633 () Bool)

(assert (=> d!535183 m!2166633))

(assert (=> d!535183 m!2166449))

(declare-fun m!2166635 () Bool)

(assert (=> d!535183 m!2166635))

(declare-fun m!2166637 () Bool)

(assert (=> b!1752720 m!2166637))

(declare-fun m!2166639 () Bool)

(assert (=> b!1752721 m!2166639))

(assert (=> b!1752721 m!2166457))

(declare-fun m!2166641 () Bool)

(assert (=> b!1752721 m!2166641))

(assert (=> b!1752392 d!535183))

(declare-fun b!1752727 () Bool)

(declare-fun e!1121914 () Bool)

(declare-fun e!1121915 () Bool)

(assert (=> b!1752727 (= e!1121914 e!1121915)))

(declare-fun res!788509 () Bool)

(assert (=> b!1752727 (=> (not res!788509) (not e!1121915))))

(assert (=> b!1752727 (= res!788509 (not ((_ is Nil!19286) lt!677054)))))

(declare-fun b!1752729 () Bool)

(assert (=> b!1752729 (= e!1121915 (isPrefix!1685 (tail!2617 lt!677061) (tail!2617 lt!677054)))))

(declare-fun b!1752730 () Bool)

(declare-fun e!1121916 () Bool)

(assert (=> b!1752730 (= e!1121916 (>= (size!15323 lt!677054) (size!15323 lt!677061)))))

(declare-fun d!535187 () Bool)

(assert (=> d!535187 e!1121916))

(declare-fun res!788507 () Bool)

(assert (=> d!535187 (=> res!788507 e!1121916)))

(declare-fun lt!677222 () Bool)

(assert (=> d!535187 (= res!788507 (not lt!677222))))

(assert (=> d!535187 (= lt!677222 e!1121914)))

(declare-fun res!788508 () Bool)

(assert (=> d!535187 (=> res!788508 e!1121914)))

(assert (=> d!535187 (= res!788508 ((_ is Nil!19286) lt!677061))))

(assert (=> d!535187 (= (isPrefix!1685 lt!677061 lt!677054) lt!677222)))

(declare-fun b!1752728 () Bool)

(declare-fun res!788510 () Bool)

(assert (=> b!1752728 (=> (not res!788510) (not e!1121915))))

(assert (=> b!1752728 (= res!788510 (= (head!4042 lt!677061) (head!4042 lt!677054)))))

(assert (= (and d!535187 (not res!788508)) b!1752727))

(assert (= (and b!1752727 res!788509) b!1752728))

(assert (= (and b!1752728 res!788510) b!1752729))

(assert (= (and d!535187 (not res!788507)) b!1752730))

(assert (=> b!1752729 m!2166283))

(assert (=> b!1752729 m!2166519))

(assert (=> b!1752729 m!2166283))

(assert (=> b!1752729 m!2166519))

(declare-fun m!2166655 () Bool)

(assert (=> b!1752729 m!2166655))

(assert (=> b!1752730 m!2166523))

(assert (=> b!1752730 m!2166457))

(assert (=> b!1752728 m!2166279))

(assert (=> b!1752728 m!2166525))

(assert (=> b!1752392 d!535187))

(declare-fun e!1122034 () Bool)

(declare-fun lt!677286 () Token!6456)

(declare-fun b!1752941 () Bool)

(assert (=> b!1752941 (= e!1122034 (= (rule!5457 lt!677286) (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))))))

(declare-fun b!1752940 () Bool)

(declare-fun res!788594 () Bool)

(assert (=> b!1752940 (=> (not res!788594) (not e!1122034))))

(assert (=> b!1752940 (= res!788594 (matchR!2246 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))) (list!7811 (charsOf!2094 lt!677286))))))

(declare-fun b!1752943 () Bool)

(declare-fun e!1122033 () Unit!33441)

(declare-fun Unit!33447 () Unit!33441)

(assert (=> b!1752943 (= e!1122033 Unit!33447)))

(declare-fun d!535191 () Bool)

(assert (=> d!535191 (isDefined!3255 (maxPrefix!1628 thiss!24550 rules!3447 (++!5269 lt!677061 suffix!1421)))))

(declare-fun lt!677300 () Unit!33441)

(assert (=> d!535191 (= lt!677300 e!1122033)))

(declare-fun c!285751 () Bool)

(assert (=> d!535191 (= c!285751 (isEmpty!12161 (maxPrefix!1628 thiss!24550 rules!3447 (++!5269 lt!677061 suffix!1421))))))

(declare-fun lt!677297 () Unit!33441)

(declare-fun lt!677290 () Unit!33441)

(assert (=> d!535191 (= lt!677297 lt!677290)))

(assert (=> d!535191 e!1122034))

(declare-fun res!788593 () Bool)

(assert (=> d!535191 (=> (not res!788593) (not e!1122034))))

(assert (=> d!535191 (= res!788593 (isDefined!3256 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))))))

(assert (=> d!535191 (= lt!677290 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!493 thiss!24550 rules!3447 lt!677061 lt!677286))))

(declare-fun lt!677292 () Unit!33441)

(declare-fun lt!677298 () Unit!33441)

(assert (=> d!535191 (= lt!677292 lt!677298)))

(declare-fun lt!677293 () List!19356)

(assert (=> d!535191 (isPrefix!1685 lt!677293 (++!5269 lt!677061 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!297 (List!19356 List!19356 List!19356) Unit!33441)

(assert (=> d!535191 (= lt!677298 (lemmaPrefixStaysPrefixWhenAddingToSuffix!297 lt!677293 lt!677061 suffix!1421))))

(assert (=> d!535191 (= lt!677293 (list!7811 (charsOf!2094 lt!677286)))))

(declare-fun lt!677294 () Unit!33441)

(declare-fun lt!677295 () Unit!33441)

(assert (=> d!535191 (= lt!677294 lt!677295)))

(declare-fun lt!677289 () List!19356)

(declare-fun lt!677291 () List!19356)

(assert (=> d!535191 (isPrefix!1685 lt!677289 (++!5269 lt!677289 lt!677291))))

(assert (=> d!535191 (= lt!677295 (lemmaConcatTwoListThenFirstIsPrefix!1194 lt!677289 lt!677291))))

(assert (=> d!535191 (= lt!677291 (_2!10857 (get!5853 (maxPrefix!1628 thiss!24550 rules!3447 lt!677061))))))

(assert (=> d!535191 (= lt!677289 (list!7811 (charsOf!2094 lt!677286)))))

(declare-datatypes ((List!19361 0))(
  ( (Nil!19291) (Cons!19291 (h!24692 Token!6456) (t!163162 List!19361)) )
))
(declare-fun head!4044 (List!19361) Token!6456)

(declare-datatypes ((IArray!12839 0))(
  ( (IArray!12840 (innerList!6477 List!19361)) )
))
(declare-datatypes ((Conc!6417 0))(
  ( (Node!6417 (left!15441 Conc!6417) (right!15771 Conc!6417) (csize!13064 Int) (cheight!6628 Int)) (Leaf!9360 (xs!9293 IArray!12839) (csize!13065 Int)) (Empty!6417) )
))
(declare-datatypes ((BalanceConc!12778 0))(
  ( (BalanceConc!12779 (c!285765 Conc!6417)) )
))
(declare-fun list!7815 (BalanceConc!12778) List!19361)

(declare-datatypes ((tuple2!18914 0))(
  ( (tuple2!18915 (_1!10859 BalanceConc!12778) (_2!10859 BalanceConc!12774)) )
))
(declare-fun lex!1436 (LexerInterface!3074 List!19357 BalanceConc!12774) tuple2!18914)

(assert (=> d!535191 (= lt!677286 (head!4044 (list!7815 (_1!10859 (lex!1436 thiss!24550 rules!3447 (seqFromList!2414 lt!677061))))))))

(assert (=> d!535191 (not (isEmpty!12157 rules!3447))))

(assert (=> d!535191 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!596 thiss!24550 rules!3447 lt!677061 suffix!1421) lt!677300)))

(declare-fun b!1752942 () Bool)

(declare-fun Unit!33448 () Unit!33441)

(assert (=> b!1752942 (= e!1122033 Unit!33448)))

(declare-fun lt!677287 () List!19356)

(assert (=> b!1752942 (= lt!677287 (++!5269 lt!677061 suffix!1421))))

(declare-fun lt!677296 () Unit!33441)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!305 (LexerInterface!3074 Rule!6690 List!19357 List!19356) Unit!33441)

(assert (=> b!1752942 (= lt!677296 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!305 thiss!24550 (rule!5457 lt!677286) rules!3447 lt!677287))))

(assert (=> b!1752942 (isEmpty!12161 (maxPrefixOneRule!999 thiss!24550 (rule!5457 lt!677286) lt!677287))))

(declare-fun lt!677288 () Unit!33441)

(assert (=> b!1752942 (= lt!677288 lt!677296)))

(declare-fun lt!677285 () List!19356)

(assert (=> b!1752942 (= lt!677285 (list!7811 (charsOf!2094 lt!677286)))))

(declare-fun lt!677284 () Unit!33441)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!301 (LexerInterface!3074 Rule!6690 List!19356 List!19356) Unit!33441)

(assert (=> b!1752942 (= lt!677284 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!301 thiss!24550 (rule!5457 lt!677286) lt!677285 (++!5269 lt!677061 suffix!1421)))))

(assert (=> b!1752942 (not (matchR!2246 (regex!3445 (rule!5457 lt!677286)) lt!677285))))

(declare-fun lt!677299 () Unit!33441)

(assert (=> b!1752942 (= lt!677299 lt!677284)))

(assert (=> b!1752942 false))

(assert (= (and d!535191 res!788593) b!1752940))

(assert (= (and b!1752940 res!788594) b!1752941))

(assert (= (and d!535191 c!285751) b!1752942))

(assert (= (and d!535191 (not c!285751)) b!1752943))

(declare-fun m!2166861 () Bool)

(assert (=> b!1752941 m!2166861))

(assert (=> b!1752941 m!2166861))

(declare-fun m!2166863 () Bool)

(assert (=> b!1752941 m!2166863))

(declare-fun m!2166865 () Bool)

(assert (=> b!1752940 m!2166865))

(declare-fun m!2166867 () Bool)

(assert (=> b!1752940 m!2166867))

(assert (=> b!1752940 m!2166861))

(assert (=> b!1752940 m!2166865))

(assert (=> b!1752940 m!2166867))

(declare-fun m!2166869 () Bool)

(assert (=> b!1752940 m!2166869))

(assert (=> b!1752940 m!2166861))

(assert (=> b!1752940 m!2166863))

(assert (=> d!535191 m!2166861))

(declare-fun m!2166871 () Bool)

(assert (=> d!535191 m!2166871))

(assert (=> d!535191 m!2166219))

(assert (=> d!535191 m!2166139))

(declare-fun m!2166873 () Bool)

(assert (=> d!535191 m!2166873))

(assert (=> d!535191 m!2166865))

(assert (=> d!535191 m!2166867))

(assert (=> d!535191 m!2166179))

(assert (=> d!535191 m!2166861))

(declare-fun m!2166875 () Bool)

(assert (=> d!535191 m!2166875))

(declare-fun m!2166877 () Bool)

(assert (=> d!535191 m!2166877))

(declare-fun m!2166879 () Bool)

(assert (=> d!535191 m!2166879))

(declare-fun m!2166881 () Bool)

(assert (=> d!535191 m!2166881))

(declare-fun m!2166883 () Bool)

(assert (=> d!535191 m!2166883))

(assert (=> d!535191 m!2166875))

(declare-fun m!2166885 () Bool)

(assert (=> d!535191 m!2166885))

(declare-fun m!2166887 () Bool)

(assert (=> d!535191 m!2166887))

(assert (=> d!535191 m!2166179))

(assert (=> d!535191 m!2166879))

(assert (=> d!535191 m!2166865))

(assert (=> d!535191 m!2166139))

(declare-fun m!2166889 () Bool)

(assert (=> d!535191 m!2166889))

(assert (=> d!535191 m!2166179))

(declare-fun m!2166891 () Bool)

(assert (=> d!535191 m!2166891))

(assert (=> d!535191 m!2166879))

(declare-fun m!2166893 () Bool)

(assert (=> d!535191 m!2166893))

(assert (=> d!535191 m!2166877))

(declare-fun m!2166895 () Bool)

(assert (=> d!535191 m!2166895))

(assert (=> d!535191 m!2166889))

(declare-fun m!2166897 () Bool)

(assert (=> d!535191 m!2166897))

(declare-fun m!2166899 () Bool)

(assert (=> d!535191 m!2166899))

(assert (=> b!1752942 m!2166865))

(assert (=> b!1752942 m!2166867))

(assert (=> b!1752942 m!2166179))

(declare-fun m!2166901 () Bool)

(assert (=> b!1752942 m!2166901))

(declare-fun m!2166903 () Bool)

(assert (=> b!1752942 m!2166903))

(declare-fun m!2166905 () Bool)

(assert (=> b!1752942 m!2166905))

(assert (=> b!1752942 m!2166865))

(assert (=> b!1752942 m!2166905))

(declare-fun m!2166907 () Bool)

(assert (=> b!1752942 m!2166907))

(assert (=> b!1752942 m!2166179))

(declare-fun m!2166909 () Bool)

(assert (=> b!1752942 m!2166909))

(assert (=> b!1752392 d!535191))

(declare-fun d!535263 () Bool)

(assert (=> d!535263 (= (inv!25023 (tag!3797 (rule!5457 token!523))) (= (mod (str.len (value!107854 (tag!3797 (rule!5457 token!523)))) 2) 0))))

(assert (=> b!1752390 d!535263))

(declare-fun d!535265 () Bool)

(declare-fun res!788595 () Bool)

(declare-fun e!1122035 () Bool)

(assert (=> d!535265 (=> (not res!788595) (not e!1122035))))

(assert (=> d!535265 (= res!788595 (semiInverseModEq!1362 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 token!523)))))))

(assert (=> d!535265 (= (inv!25028 (transformation!3445 (rule!5457 token!523))) e!1122035)))

(declare-fun b!1752944 () Bool)

(assert (=> b!1752944 (= e!1122035 (equivClasses!1303 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 token!523)))))))

(assert (= (and d!535265 res!788595) b!1752944))

(declare-fun m!2166911 () Bool)

(assert (=> d!535265 m!2166911))

(declare-fun m!2166913 () Bool)

(assert (=> b!1752944 m!2166913))

(assert (=> b!1752390 d!535265))

(declare-fun b!1752945 () Bool)

(declare-fun e!1122038 () Bool)

(declare-fun lt!677301 () Bool)

(declare-fun call!110419 () Bool)

(assert (=> b!1752945 (= e!1122038 (= lt!677301 call!110419))))

(declare-fun d!535267 () Bool)

(assert (=> d!535267 e!1122038))

(declare-fun c!285752 () Bool)

(assert (=> d!535267 (= c!285752 ((_ is EmptyExpr!4773) (regex!3445 lt!677059)))))

(declare-fun e!1122040 () Bool)

(assert (=> d!535267 (= lt!677301 e!1122040)))

(declare-fun c!285754 () Bool)

(assert (=> d!535267 (= c!285754 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(assert (=> d!535267 (validRegex!1920 (regex!3445 lt!677059))))

(assert (=> d!535267 (= (matchR!2246 (regex!3445 lt!677059) (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) lt!677301)))

(declare-fun b!1752946 () Bool)

(declare-fun res!788598 () Bool)

(declare-fun e!1122041 () Bool)

(assert (=> b!1752946 (=> (not res!788598) (not e!1122041))))

(assert (=> b!1752946 (= res!788598 (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun b!1752947 () Bool)

(declare-fun e!1122037 () Bool)

(assert (=> b!1752947 (= e!1122038 e!1122037)))

(declare-fun c!285753 () Bool)

(assert (=> b!1752947 (= c!285753 ((_ is EmptyLang!4773) (regex!3445 lt!677059)))))

(declare-fun b!1752948 () Bool)

(declare-fun res!788597 () Bool)

(declare-fun e!1122039 () Bool)

(assert (=> b!1752948 (=> res!788597 e!1122039)))

(assert (=> b!1752948 (= res!788597 e!1122041)))

(declare-fun res!788601 () Bool)

(assert (=> b!1752948 (=> (not res!788601) (not e!1122041))))

(assert (=> b!1752948 (= res!788601 lt!677301)))

(declare-fun b!1752949 () Bool)

(declare-fun e!1122042 () Bool)

(assert (=> b!1752949 (= e!1122039 e!1122042)))

(declare-fun res!788603 () Bool)

(assert (=> b!1752949 (=> (not res!788603) (not e!1122042))))

(assert (=> b!1752949 (= res!788603 (not lt!677301))))

(declare-fun b!1752950 () Bool)

(assert (=> b!1752950 (= e!1122037 (not lt!677301))))

(declare-fun b!1752951 () Bool)

(declare-fun res!788600 () Bool)

(declare-fun e!1122036 () Bool)

(assert (=> b!1752951 (=> res!788600 e!1122036)))

(assert (=> b!1752951 (= res!788600 (not (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun b!1752952 () Bool)

(assert (=> b!1752952 (= e!1122041 (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) (c!285664 (regex!3445 lt!677059))))))

(declare-fun b!1752953 () Bool)

(assert (=> b!1752953 (= e!1122040 (matchR!2246 (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun b!1752954 () Bool)

(assert (=> b!1752954 (= e!1122042 e!1122036)))

(declare-fun res!788596 () Bool)

(assert (=> b!1752954 (=> res!788596 e!1122036)))

(assert (=> b!1752954 (= res!788596 call!110419)))

(declare-fun b!1752955 () Bool)

(assert (=> b!1752955 (= e!1122040 (nullable!1446 (regex!3445 lt!677059)))))

(declare-fun b!1752956 () Bool)

(declare-fun res!788602 () Bool)

(assert (=> b!1752956 (=> res!788602 e!1122039)))

(assert (=> b!1752956 (= res!788602 (not ((_ is ElementMatch!4773) (regex!3445 lt!677059))))))

(assert (=> b!1752956 (= e!1122037 e!1122039)))

(declare-fun bm!110414 () Bool)

(assert (=> bm!110414 (= call!110419 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(declare-fun b!1752957 () Bool)

(declare-fun res!788599 () Bool)

(assert (=> b!1752957 (=> (not res!788599) (not e!1122041))))

(assert (=> b!1752957 (= res!788599 (not call!110419))))

(declare-fun b!1752958 () Bool)

(assert (=> b!1752958 (= e!1122036 (not (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) (c!285664 (regex!3445 lt!677059)))))))

(assert (= (and d!535267 c!285754) b!1752955))

(assert (= (and d!535267 (not c!285754)) b!1752953))

(assert (= (and d!535267 c!285752) b!1752945))

(assert (= (and d!535267 (not c!285752)) b!1752947))

(assert (= (and b!1752947 c!285753) b!1752950))

(assert (= (and b!1752947 (not c!285753)) b!1752956))

(assert (= (and b!1752956 (not res!788602)) b!1752948))

(assert (= (and b!1752948 res!788601) b!1752957))

(assert (= (and b!1752957 res!788599) b!1752946))

(assert (= (and b!1752946 res!788598) b!1752952))

(assert (= (and b!1752948 (not res!788597)) b!1752949))

(assert (= (and b!1752949 res!788603) b!1752954))

(assert (= (and b!1752954 (not res!788596)) b!1752951))

(assert (= (and b!1752951 (not res!788600)) b!1752958))

(assert (= (or b!1752945 b!1752954 b!1752957) bm!110414))

(assert (=> d!535267 m!2166125))

(declare-fun m!2166915 () Bool)

(assert (=> d!535267 m!2166915))

(declare-fun m!2166917 () Bool)

(assert (=> d!535267 m!2166917))

(declare-fun m!2166919 () Bool)

(assert (=> b!1752955 m!2166919))

(assert (=> b!1752952 m!2166125))

(declare-fun m!2166921 () Bool)

(assert (=> b!1752952 m!2166921))

(assert (=> b!1752958 m!2166125))

(assert (=> b!1752958 m!2166921))

(assert (=> bm!110414 m!2166125))

(assert (=> bm!110414 m!2166915))

(assert (=> b!1752953 m!2166125))

(assert (=> b!1752953 m!2166921))

(assert (=> b!1752953 m!2166921))

(declare-fun m!2166923 () Bool)

(assert (=> b!1752953 m!2166923))

(assert (=> b!1752953 m!2166125))

(declare-fun m!2166925 () Bool)

(assert (=> b!1752953 m!2166925))

(assert (=> b!1752953 m!2166923))

(assert (=> b!1752953 m!2166925))

(declare-fun m!2166927 () Bool)

(assert (=> b!1752953 m!2166927))

(assert (=> b!1752946 m!2166125))

(assert (=> b!1752946 m!2166925))

(assert (=> b!1752946 m!2166925))

(declare-fun m!2166929 () Bool)

(assert (=> b!1752946 m!2166929))

(assert (=> b!1752951 m!2166125))

(assert (=> b!1752951 m!2166925))

(assert (=> b!1752951 m!2166925))

(assert (=> b!1752951 m!2166929))

(assert (=> b!1752377 d!535267))

(declare-fun d!535269 () Bool)

(assert (=> d!535269 (= (list!7811 (charsOf!2094 (_1!10857 lt!677046))) (list!7814 (c!285665 (charsOf!2094 (_1!10857 lt!677046)))))))

(declare-fun bs!403598 () Bool)

(assert (= bs!403598 d!535269))

(declare-fun m!2166931 () Bool)

(assert (=> bs!403598 m!2166931))

(assert (=> b!1752377 d!535269))

(assert (=> b!1752377 d!535159))

(declare-fun d!535271 () Bool)

(assert (=> d!535271 (= (get!5852 lt!677062) (v!25359 lt!677062))))

(assert (=> b!1752377 d!535271))

(declare-fun d!535273 () Bool)

(assert (=> d!535273 (= (isEmpty!12156 (_2!10857 lt!677044)) ((_ is Nil!19286) (_2!10857 lt!677044)))))

(assert (=> b!1752376 d!535273))

(declare-fun b!1752969 () Bool)

(declare-fun e!1122051 () Bool)

(declare-fun inv!15 (TokenValue!3535) Bool)

(assert (=> b!1752969 (= e!1122051 (inv!15 (value!107855 token!523)))))

(declare-fun b!1752970 () Bool)

(declare-fun e!1122049 () Bool)

(declare-fun inv!16 (TokenValue!3535) Bool)

(assert (=> b!1752970 (= e!1122049 (inv!16 (value!107855 token!523)))))

(declare-fun b!1752971 () Bool)

(declare-fun res!788606 () Bool)

(assert (=> b!1752971 (=> res!788606 e!1122051)))

(assert (=> b!1752971 (= res!788606 (not ((_ is IntegerValue!10607) (value!107855 token!523))))))

(declare-fun e!1122050 () Bool)

(assert (=> b!1752971 (= e!1122050 e!1122051)))

(declare-fun d!535275 () Bool)

(declare-fun c!285760 () Bool)

(assert (=> d!535275 (= c!285760 ((_ is IntegerValue!10605) (value!107855 token!523)))))

(assert (=> d!535275 (= (inv!21 (value!107855 token!523)) e!1122049)))

(declare-fun b!1752972 () Bool)

(assert (=> b!1752972 (= e!1122049 e!1122050)))

(declare-fun c!285759 () Bool)

(assert (=> b!1752972 (= c!285759 ((_ is IntegerValue!10606) (value!107855 token!523)))))

(declare-fun b!1752973 () Bool)

(declare-fun inv!17 (TokenValue!3535) Bool)

(assert (=> b!1752973 (= e!1122050 (inv!17 (value!107855 token!523)))))

(assert (= (and d!535275 c!285760) b!1752970))

(assert (= (and d!535275 (not c!285760)) b!1752972))

(assert (= (and b!1752972 c!285759) b!1752973))

(assert (= (and b!1752972 (not c!285759)) b!1752971))

(assert (= (and b!1752971 (not res!788606)) b!1752969))

(declare-fun m!2166933 () Bool)

(assert (=> b!1752969 m!2166933))

(declare-fun m!2166935 () Bool)

(assert (=> b!1752970 m!2166935))

(declare-fun m!2166937 () Bool)

(assert (=> b!1752973 m!2166937))

(assert (=> b!1752395 d!535275))

(declare-fun b!1752974 () Bool)

(declare-fun e!1122054 () Bool)

(assert (=> b!1752974 (= e!1122054 (inv!15 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))

(declare-fun b!1752975 () Bool)

(declare-fun e!1122052 () Bool)

(assert (=> b!1752975 (= e!1122052 (inv!16 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))

(declare-fun b!1752976 () Bool)

(declare-fun res!788607 () Bool)

(assert (=> b!1752976 (=> res!788607 e!1122054)))

(assert (=> b!1752976 (= res!788607 (not ((_ is IntegerValue!10607) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))

(declare-fun e!1122053 () Bool)

(assert (=> b!1752976 (= e!1122053 e!1122054)))

(declare-fun d!535277 () Bool)

(declare-fun c!285762 () Bool)

(assert (=> d!535277 (= c!285762 ((_ is IntegerValue!10605) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))

(assert (=> d!535277 (= (inv!21 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)) e!1122052)))

(declare-fun b!1752977 () Bool)

(assert (=> b!1752977 (= e!1122052 e!1122053)))

(declare-fun c!285761 () Bool)

(assert (=> b!1752977 (= c!285761 ((_ is IntegerValue!10606) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))

(declare-fun b!1752978 () Bool)

(assert (=> b!1752978 (= e!1122053 (inv!17 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))

(assert (= (and d!535277 c!285762) b!1752975))

(assert (= (and d!535277 (not c!285762)) b!1752977))

(assert (= (and b!1752977 c!285761) b!1752978))

(assert (= (and b!1752977 (not c!285761)) b!1752976))

(assert (= (and b!1752976 (not res!788607)) b!1752974))

(declare-fun m!2166939 () Bool)

(assert (=> b!1752974 m!2166939))

(declare-fun m!2166941 () Bool)

(assert (=> b!1752975 m!2166941))

(declare-fun m!2166943 () Bool)

(assert (=> b!1752978 m!2166943))

(assert (=> tb!105157 d!535277))

(declare-fun d!535279 () Bool)

(assert (=> d!535279 (= (isDefined!3255 lt!677051) (not (isEmpty!12161 lt!677051)))))

(declare-fun bs!403599 () Bool)

(assert (= bs!403599 d!535279))

(declare-fun m!2166945 () Bool)

(assert (=> bs!403599 m!2166945))

(assert (=> b!1752374 d!535279))

(declare-fun bm!110415 () Bool)

(declare-fun call!110420 () Option!3912)

(assert (=> bm!110415 (= call!110420 (maxPrefixOneRule!999 thiss!24550 (h!24688 rules!3447) lt!677061))))

(declare-fun b!1752979 () Bool)

(declare-fun res!788611 () Bool)

(declare-fun e!1122057 () Bool)

(assert (=> b!1752979 (=> (not res!788611) (not e!1122057))))

(declare-fun lt!677303 () Option!3912)

(assert (=> b!1752979 (= res!788611 (matchR!2246 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))))))

(declare-fun b!1752980 () Bool)

(declare-fun res!788614 () Bool)

(assert (=> b!1752980 (=> (not res!788614) (not e!1122057))))

(assert (=> b!1752980 (= res!788614 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))) (_2!10857 (get!5853 lt!677303))) lt!677061))))

(declare-fun b!1752981 () Bool)

(declare-fun res!788613 () Bool)

(assert (=> b!1752981 (=> (not res!788613) (not e!1122057))))

(assert (=> b!1752981 (= res!788613 (< (size!15323 (_2!10857 (get!5853 lt!677303))) (size!15323 lt!677061)))))

(declare-fun b!1752982 () Bool)

(declare-fun e!1122055 () Option!3912)

(declare-fun lt!677305 () Option!3912)

(declare-fun lt!677306 () Option!3912)

(assert (=> b!1752982 (= e!1122055 (ite (and ((_ is None!3911) lt!677305) ((_ is None!3911) lt!677306)) None!3911 (ite ((_ is None!3911) lt!677306) lt!677305 (ite ((_ is None!3911) lt!677305) lt!677306 (ite (>= (size!15320 (_1!10857 (v!25358 lt!677305))) (size!15320 (_1!10857 (v!25358 lt!677306)))) lt!677305 lt!677306)))))))

(assert (=> b!1752982 (= lt!677305 call!110420)))

(assert (=> b!1752982 (= lt!677306 (maxPrefix!1628 thiss!24550 (t!163098 rules!3447) lt!677061))))

(declare-fun b!1752984 () Bool)

(declare-fun res!788610 () Bool)

(assert (=> b!1752984 (=> (not res!788610) (not e!1122057))))

(assert (=> b!1752984 (= res!788610 (= (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))) (originalCharacters!4259 (_1!10857 (get!5853 lt!677303)))))))

(declare-fun b!1752985 () Bool)

(assert (=> b!1752985 (= e!1122055 call!110420)))

(declare-fun b!1752983 () Bool)

(declare-fun e!1122056 () Bool)

(assert (=> b!1752983 (= e!1122056 e!1122057)))

(declare-fun res!788612 () Bool)

(assert (=> b!1752983 (=> (not res!788612) (not e!1122057))))

(assert (=> b!1752983 (= res!788612 (isDefined!3255 lt!677303))))

(declare-fun d!535281 () Bool)

(assert (=> d!535281 e!1122056))

(declare-fun res!788608 () Bool)

(assert (=> d!535281 (=> res!788608 e!1122056)))

(assert (=> d!535281 (= res!788608 (isEmpty!12161 lt!677303))))

(assert (=> d!535281 (= lt!677303 e!1122055)))

(declare-fun c!285763 () Bool)

(assert (=> d!535281 (= c!285763 (and ((_ is Cons!19287) rules!3447) ((_ is Nil!19287) (t!163098 rules!3447))))))

(declare-fun lt!677304 () Unit!33441)

(declare-fun lt!677302 () Unit!33441)

(assert (=> d!535281 (= lt!677304 lt!677302)))

(assert (=> d!535281 (isPrefix!1685 lt!677061 lt!677061)))

(assert (=> d!535281 (= lt!677302 (lemmaIsPrefixRefl!1114 lt!677061 lt!677061))))

(assert (=> d!535281 (rulesValidInductive!1152 thiss!24550 rules!3447)))

(assert (=> d!535281 (= (maxPrefix!1628 thiss!24550 rules!3447 lt!677061) lt!677303)))

(declare-fun b!1752986 () Bool)

(assert (=> b!1752986 (= e!1122057 (contains!3471 rules!3447 (rule!5457 (_1!10857 (get!5853 lt!677303)))))))

(declare-fun b!1752987 () Bool)

(declare-fun res!788609 () Bool)

(assert (=> b!1752987 (=> (not res!788609) (not e!1122057))))

(assert (=> b!1752987 (= res!788609 (= (value!107855 (_1!10857 (get!5853 lt!677303))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677303)))))))))

(assert (= (and d!535281 c!285763) b!1752985))

(assert (= (and d!535281 (not c!285763)) b!1752982))

(assert (= (or b!1752985 b!1752982) bm!110415))

(assert (= (and d!535281 (not res!788608)) b!1752983))

(assert (= (and b!1752983 res!788612) b!1752984))

(assert (= (and b!1752984 res!788610) b!1752981))

(assert (= (and b!1752981 res!788613) b!1752980))

(assert (= (and b!1752980 res!788614) b!1752987))

(assert (= (and b!1752987 res!788609) b!1752979))

(assert (= (and b!1752979 res!788611) b!1752986))

(declare-fun m!2166947 () Bool)

(assert (=> b!1752983 m!2166947))

(declare-fun m!2166949 () Bool)

(assert (=> b!1752981 m!2166949))

(declare-fun m!2166951 () Bool)

(assert (=> b!1752981 m!2166951))

(assert (=> b!1752981 m!2166457))

(assert (=> b!1752979 m!2166949))

(declare-fun m!2166953 () Bool)

(assert (=> b!1752979 m!2166953))

(assert (=> b!1752979 m!2166953))

(declare-fun m!2166955 () Bool)

(assert (=> b!1752979 m!2166955))

(assert (=> b!1752979 m!2166955))

(declare-fun m!2166957 () Bool)

(assert (=> b!1752979 m!2166957))

(declare-fun m!2166959 () Bool)

(assert (=> bm!110415 m!2166959))

(assert (=> b!1752980 m!2166949))

(assert (=> b!1752980 m!2166953))

(assert (=> b!1752980 m!2166953))

(assert (=> b!1752980 m!2166955))

(assert (=> b!1752980 m!2166955))

(declare-fun m!2166961 () Bool)

(assert (=> b!1752980 m!2166961))

(assert (=> b!1752987 m!2166949))

(declare-fun m!2166963 () Bool)

(assert (=> b!1752987 m!2166963))

(assert (=> b!1752987 m!2166963))

(declare-fun m!2166965 () Bool)

(assert (=> b!1752987 m!2166965))

(declare-fun m!2166967 () Bool)

(assert (=> d!535281 m!2166967))

(declare-fun m!2166969 () Bool)

(assert (=> d!535281 m!2166969))

(declare-fun m!2166971 () Bool)

(assert (=> d!535281 m!2166971))

(assert (=> d!535281 m!2166619))

(assert (=> b!1752984 m!2166949))

(assert (=> b!1752984 m!2166953))

(assert (=> b!1752984 m!2166953))

(assert (=> b!1752984 m!2166955))

(assert (=> b!1752986 m!2166949))

(declare-fun m!2166973 () Bool)

(assert (=> b!1752986 m!2166973))

(declare-fun m!2166975 () Bool)

(assert (=> b!1752982 m!2166975))

(assert (=> b!1752374 d!535281))

(declare-fun d!535283 () Bool)

(assert (=> d!535283 (= (list!7811 (charsOf!2094 token!523)) (list!7814 (c!285665 (charsOf!2094 token!523))))))

(declare-fun bs!403600 () Bool)

(assert (= bs!403600 d!535283))

(declare-fun m!2166977 () Bool)

(assert (=> bs!403600 m!2166977))

(assert (=> b!1752374 d!535283))

(declare-fun d!535285 () Bool)

(declare-fun lt!677307 () BalanceConc!12774)

(assert (=> d!535285 (= (list!7811 lt!677307) (originalCharacters!4259 token!523))))

(assert (=> d!535285 (= lt!677307 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))))

(assert (=> d!535285 (= (charsOf!2094 token!523) lt!677307)))

(declare-fun b_lambda!56409 () Bool)

(assert (=> (not b_lambda!56409) (not d!535285)))

(assert (=> d!535285 t!163100))

(declare-fun b_and!131351 () Bool)

(assert (= b_and!131293 (and (=> t!163100 result!126528) b_and!131351)))

(assert (=> d!535285 t!163102))

(declare-fun b_and!131353 () Bool)

(assert (= b_and!131295 (and (=> t!163102 result!126530) b_and!131353)))

(assert (=> d!535285 t!163104))

(declare-fun b_and!131355 () Bool)

(assert (= b_and!131297 (and (=> t!163104 result!126532) b_and!131355)))

(declare-fun m!2166979 () Bool)

(assert (=> d!535285 m!2166979))

(assert (=> d!535285 m!2166361))

(assert (=> b!1752374 d!535285))

(declare-fun d!535287 () Bool)

(declare-fun lt!677310 () Bool)

(declare-fun content!2772 (List!19357) (InoxSet Rule!6690))

(assert (=> d!535287 (= lt!677310 (select (content!2772 rules!3447) rule!422))))

(declare-fun e!1122063 () Bool)

(assert (=> d!535287 (= lt!677310 e!1122063)))

(declare-fun res!788619 () Bool)

(assert (=> d!535287 (=> (not res!788619) (not e!1122063))))

(assert (=> d!535287 (= res!788619 ((_ is Cons!19287) rules!3447))))

(assert (=> d!535287 (= (contains!3471 rules!3447 rule!422) lt!677310)))

(declare-fun b!1752992 () Bool)

(declare-fun e!1122062 () Bool)

(assert (=> b!1752992 (= e!1122063 e!1122062)))

(declare-fun res!788620 () Bool)

(assert (=> b!1752992 (=> res!788620 e!1122062)))

(assert (=> b!1752992 (= res!788620 (= (h!24688 rules!3447) rule!422))))

(declare-fun b!1752993 () Bool)

(assert (=> b!1752993 (= e!1122062 (contains!3471 (t!163098 rules!3447) rule!422))))

(assert (= (and d!535287 res!788619) b!1752992))

(assert (= (and b!1752992 (not res!788620)) b!1752993))

(declare-fun m!2166981 () Bool)

(assert (=> d!535287 m!2166981))

(declare-fun m!2166983 () Bool)

(assert (=> d!535287 m!2166983))

(declare-fun m!2166985 () Bool)

(assert (=> b!1752993 m!2166985))

(assert (=> b!1752384 d!535287))

(declare-fun d!535289 () Bool)

(assert (=> d!535289 (= (inv!25023 (tag!3797 rule!422)) (= (mod (str.len (value!107854 (tag!3797 rule!422))) 2) 0))))

(assert (=> b!1752382 d!535289))

(declare-fun d!535291 () Bool)

(declare-fun res!788621 () Bool)

(declare-fun e!1122064 () Bool)

(assert (=> d!535291 (=> (not res!788621) (not e!1122064))))

(assert (=> d!535291 (= res!788621 (semiInverseModEq!1362 (toChars!4819 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 rule!422))))))

(assert (=> d!535291 (= (inv!25028 (transformation!3445 rule!422)) e!1122064)))

(declare-fun b!1752994 () Bool)

(assert (=> b!1752994 (= e!1122064 (equivClasses!1303 (toChars!4819 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 rule!422))))))

(assert (= (and d!535291 res!788621) b!1752994))

(declare-fun m!2166987 () Bool)

(assert (=> d!535291 m!2166987))

(declare-fun m!2166989 () Bool)

(assert (=> b!1752994 m!2166989))

(assert (=> b!1752382 d!535291))

(declare-fun d!535293 () Bool)

(assert (=> d!535293 (= (isEmpty!12157 rules!3447) ((_ is Nil!19287) rules!3447))))

(assert (=> b!1752381 d!535293))

(declare-fun d!535295 () Bool)

(declare-fun choose!10826 (Int) Bool)

(assert (=> d!535295 (= (Forall!812 lambda!69896) (choose!10826 lambda!69896))))

(declare-fun bs!403601 () Bool)

(assert (= bs!403601 d!535295))

(declare-fun m!2166991 () Bool)

(assert (=> bs!403601 m!2166991))

(assert (=> b!1752379 d!535295))

(declare-fun d!535297 () Bool)

(declare-fun e!1122067 () Bool)

(assert (=> d!535297 e!1122067))

(declare-fun res!788624 () Bool)

(assert (=> d!535297 (=> (not res!788624) (not e!1122067))))

(assert (=> d!535297 (= res!788624 (semiInverseModEq!1362 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))))))

(declare-fun Unit!33450 () Unit!33441)

(assert (=> d!535297 (= (lemmaInv!644 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) Unit!33450)))

(declare-fun b!1752997 () Bool)

(assert (=> b!1752997 (= e!1122067 (equivClasses!1303 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))))))

(assert (= (and d!535297 res!788624) b!1752997))

(declare-fun m!2166993 () Bool)

(assert (=> d!535297 m!2166993))

(declare-fun m!2166995 () Bool)

(assert (=> b!1752997 m!2166995))

(assert (=> b!1752379 d!535297))

(declare-fun d!535299 () Bool)

(assert (=> d!535299 (= (get!5853 lt!677051) (v!25358 lt!677051))))

(assert (=> b!1752380 d!535299))

(declare-fun tp!498524 () Bool)

(declare-fun b!1753006 () Bool)

(declare-fun tp!498526 () Bool)

(declare-fun e!1122073 () Bool)

(assert (=> b!1753006 (= e!1122073 (and (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) tp!498524 (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) tp!498526))))

(declare-fun b!1753008 () Bool)

(declare-fun e!1122072 () Bool)

(declare-fun tp!498525 () Bool)

(assert (=> b!1753008 (= e!1122072 tp!498525)))

(declare-fun b!1753007 () Bool)

(declare-fun inv!25037 (IArray!12835) Bool)

(assert (=> b!1753007 (= e!1122073 (and (inv!25037 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) e!1122072))))

(assert (=> b!1752411 (= tp!498459 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) e!1122073))))

(assert (= (and b!1752411 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) b!1753006))

(assert (= b!1753007 b!1753008))

(assert (= (and b!1752411 ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) b!1753007))

(declare-fun m!2166997 () Bool)

(assert (=> b!1753006 m!2166997))

(declare-fun m!2166999 () Bool)

(assert (=> b!1753006 m!2166999))

(declare-fun m!2167001 () Bool)

(assert (=> b!1753007 m!2167001))

(assert (=> b!1752411 m!2166113))

(declare-fun tp!498529 () Bool)

(declare-fun e!1122075 () Bool)

(declare-fun b!1753009 () Bool)

(declare-fun tp!498527 () Bool)

(assert (=> b!1753009 (= e!1122075 (and (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) tp!498527 (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) tp!498529))))

(declare-fun b!1753011 () Bool)

(declare-fun e!1122074 () Bool)

(declare-fun tp!498528 () Bool)

(assert (=> b!1753011 (= e!1122074 tp!498528)))

(declare-fun b!1753010 () Bool)

(assert (=> b!1753010 (= e!1122075 (and (inv!25037 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) e!1122074))))

(assert (=> b!1752414 (= tp!498460 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) e!1122075))))

(assert (= (and b!1752414 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) b!1753009))

(assert (= b!1753010 b!1753011))

(assert (= (and b!1752414 ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) b!1753010))

(declare-fun m!2167003 () Bool)

(assert (=> b!1753009 m!2167003))

(declare-fun m!2167005 () Bool)

(assert (=> b!1753009 m!2167005))

(declare-fun m!2167007 () Bool)

(assert (=> b!1753010 m!2167007))

(assert (=> b!1752414 m!2166119))

(declare-fun b!1753022 () Bool)

(declare-fun b_free!48407 () Bool)

(declare-fun b_next!49111 () Bool)

(assert (=> b!1753022 (= b_free!48407 (not b_next!49111))))

(declare-fun tb!105217 () Bool)

(declare-fun t!163148 () Bool)

(assert (=> (and b!1753022 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163148) tb!105217))

(declare-fun result!126588 () Bool)

(assert (= result!126588 result!126514))

(assert (=> d!535139 t!163148))

(assert (=> b!1752370 t!163148))

(declare-fun t!163150 () Bool)

(declare-fun tb!105219 () Bool)

(assert (=> (and b!1753022 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163150) tb!105219))

(declare-fun result!126590 () Bool)

(assert (= result!126590 result!126540))

(assert (=> d!535135 t!163150))

(assert (=> d!535151 t!163148))

(assert (=> d!535135 t!163148))

(declare-fun b_and!131357 () Bool)

(declare-fun tp!498539 () Bool)

(assert (=> b!1753022 (= tp!498539 (and (=> t!163148 result!126588) (=> t!163150 result!126590) b_and!131357))))

(declare-fun b_free!48409 () Bool)

(declare-fun b_next!49113 () Bool)

(assert (=> b!1753022 (= b_free!48409 (not b_next!49113))))

(declare-fun tb!105221 () Bool)

(declare-fun t!163152 () Bool)

(assert (=> (and b!1753022 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163152) tb!105221))

(declare-fun result!126592 () Bool)

(assert (= result!126592 result!126522))

(assert (=> d!535159 t!163152))

(declare-fun t!163154 () Bool)

(declare-fun tb!105223 () Bool)

(assert (=> (and b!1753022 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) t!163154) tb!105223))

(declare-fun result!126594 () Bool)

(assert (= result!126594 result!126534))

(assert (=> b!1752585 t!163154))

(declare-fun t!163156 () Bool)

(declare-fun tb!105225 () Bool)

(assert (=> (and b!1753022 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163156) tb!105225))

(declare-fun result!126596 () Bool)

(assert (= result!126596 result!126506))

(assert (=> d!535151 t!163156))

(assert (=> b!1752370 t!163156))

(assert (=> b!1752388 t!163152))

(declare-fun t!163158 () Bool)

(declare-fun tb!105227 () Bool)

(assert (=> (and b!1753022 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 token!523)))) t!163158) tb!105227))

(declare-fun result!126598 () Bool)

(assert (= result!126598 result!126528))

(assert (=> d!535285 t!163158))

(assert (=> b!1752554 t!163158))

(declare-fun b_and!131359 () Bool)

(declare-fun tp!498541 () Bool)

(assert (=> b!1753022 (= tp!498541 (and (=> t!163156 result!126596) (=> t!163152 result!126592) (=> t!163154 result!126594) (=> t!163158 result!126598) b_and!131359))))

(declare-fun e!1122084 () Bool)

(assert (=> b!1753022 (= e!1122084 (and tp!498539 tp!498541))))

(declare-fun tp!498538 () Bool)

(declare-fun e!1122086 () Bool)

(declare-fun b!1753021 () Bool)

(assert (=> b!1753021 (= e!1122086 (and tp!498538 (inv!25023 (tag!3797 (h!24688 (t!163098 rules!3447)))) (inv!25028 (transformation!3445 (h!24688 (t!163098 rules!3447)))) e!1122084))))

(declare-fun b!1753020 () Bool)

(declare-fun e!1122087 () Bool)

(declare-fun tp!498540 () Bool)

(assert (=> b!1753020 (= e!1122087 (and e!1122086 tp!498540))))

(assert (=> b!1752371 (= tp!498452 e!1122087)))

(assert (= b!1753021 b!1753022))

(assert (= b!1753020 b!1753021))

(assert (= (and b!1752371 ((_ is Cons!19287) (t!163098 rules!3447))) b!1753020))

(declare-fun m!2167009 () Bool)

(assert (=> b!1753021 m!2167009))

(declare-fun m!2167011 () Bool)

(assert (=> b!1753021 m!2167011))

(declare-fun e!1122090 () Bool)

(assert (=> b!1752382 (= tp!498446 e!1122090)))

(declare-fun b!1753036 () Bool)

(declare-fun tp!498554 () Bool)

(declare-fun tp!498552 () Bool)

(assert (=> b!1753036 (= e!1122090 (and tp!498554 tp!498552))))

(declare-fun b!1753035 () Bool)

(declare-fun tp!498553 () Bool)

(assert (=> b!1753035 (= e!1122090 tp!498553)))

(declare-fun b!1753034 () Bool)

(declare-fun tp!498556 () Bool)

(declare-fun tp!498555 () Bool)

(assert (=> b!1753034 (= e!1122090 (and tp!498556 tp!498555))))

(declare-fun b!1753033 () Bool)

(assert (=> b!1753033 (= e!1122090 tp_is_empty!7789)))

(assert (= (and b!1752382 ((_ is ElementMatch!4773) (regex!3445 rule!422))) b!1753033))

(assert (= (and b!1752382 ((_ is Concat!8309) (regex!3445 rule!422))) b!1753034))

(assert (= (and b!1752382 ((_ is Star!4773) (regex!3445 rule!422))) b!1753035))

(assert (= (and b!1752382 ((_ is Union!4773) (regex!3445 rule!422))) b!1753036))

(declare-fun b!1753041 () Bool)

(declare-fun e!1122093 () Bool)

(declare-fun tp!498559 () Bool)

(assert (=> b!1753041 (= e!1122093 (and tp_is_empty!7789 tp!498559))))

(assert (=> b!1752391 (= tp!498454 e!1122093)))

(assert (= (and b!1752391 ((_ is Cons!19286) (t!163097 suffix!1421))) b!1753041))

(declare-fun b!1753042 () Bool)

(declare-fun e!1122094 () Bool)

(declare-fun tp!498560 () Bool)

(assert (=> b!1753042 (= e!1122094 (and tp_is_empty!7789 tp!498560))))

(assert (=> b!1752395 (= tp!498455 e!1122094)))

(assert (= (and b!1752395 ((_ is Cons!19286) (originalCharacters!4259 token!523))) b!1753042))

(declare-fun e!1122095 () Bool)

(assert (=> b!1752390 (= tp!498448 e!1122095)))

(declare-fun b!1753046 () Bool)

(declare-fun tp!498563 () Bool)

(declare-fun tp!498561 () Bool)

(assert (=> b!1753046 (= e!1122095 (and tp!498563 tp!498561))))

(declare-fun b!1753045 () Bool)

(declare-fun tp!498562 () Bool)

(assert (=> b!1753045 (= e!1122095 tp!498562)))

(declare-fun b!1753044 () Bool)

(declare-fun tp!498565 () Bool)

(declare-fun tp!498564 () Bool)

(assert (=> b!1753044 (= e!1122095 (and tp!498565 tp!498564))))

(declare-fun b!1753043 () Bool)

(assert (=> b!1753043 (= e!1122095 tp_is_empty!7789)))

(assert (= (and b!1752390 ((_ is ElementMatch!4773) (regex!3445 (rule!5457 token!523)))) b!1753043))

(assert (= (and b!1752390 ((_ is Concat!8309) (regex!3445 (rule!5457 token!523)))) b!1753044))

(assert (= (and b!1752390 ((_ is Star!4773) (regex!3445 (rule!5457 token!523)))) b!1753045))

(assert (= (and b!1752390 ((_ is Union!4773) (regex!3445 (rule!5457 token!523)))) b!1753046))

(declare-fun e!1122096 () Bool)

(assert (=> b!1752385 (= tp!498449 e!1122096)))

(declare-fun b!1753050 () Bool)

(declare-fun tp!498568 () Bool)

(declare-fun tp!498566 () Bool)

(assert (=> b!1753050 (= e!1122096 (and tp!498568 tp!498566))))

(declare-fun b!1753049 () Bool)

(declare-fun tp!498567 () Bool)

(assert (=> b!1753049 (= e!1122096 tp!498567)))

(declare-fun b!1753048 () Bool)

(declare-fun tp!498570 () Bool)

(declare-fun tp!498569 () Bool)

(assert (=> b!1753048 (= e!1122096 (and tp!498570 tp!498569))))

(declare-fun b!1753047 () Bool)

(assert (=> b!1753047 (= e!1122096 tp_is_empty!7789)))

(assert (= (and b!1752385 ((_ is ElementMatch!4773) (regex!3445 (h!24688 rules!3447)))) b!1753047))

(assert (= (and b!1752385 ((_ is Concat!8309) (regex!3445 (h!24688 rules!3447)))) b!1753048))

(assert (= (and b!1752385 ((_ is Star!4773) (regex!3445 (h!24688 rules!3447)))) b!1753049))

(assert (= (and b!1752385 ((_ is Union!4773) (regex!3445 (h!24688 rules!3447)))) b!1753050))

(declare-fun b_lambda!56411 () Bool)

(assert (= b_lambda!56365 (or (and b!1752378 b_free!48393) (and b!1752373 b_free!48397 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 token!523))))) (and b!1752383 b_free!48401 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 token!523))))) (and b!1753022 b_free!48409 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 token!523))))) b_lambda!56411)))

(declare-fun b_lambda!56413 () Bool)

(assert (= b_lambda!56359 (or (and b!1752378 b_free!48393 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752373 b_free!48397 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48401 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48409 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56413)))

(declare-fun b_lambda!56415 () Bool)

(assert (= b_lambda!56361 (or (and b!1752378 b_free!48391 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752373 b_free!48395 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48399 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48407 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56415)))

(declare-fun b_lambda!56417 () Bool)

(assert (= b_lambda!56409 (or (and b!1752378 b_free!48393) (and b!1752373 b_free!48397 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 token!523))))) (and b!1752383 b_free!48401 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 token!523))))) (and b!1753022 b_free!48409 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 token!523))))) b_lambda!56417)))

(declare-fun b_lambda!56419 () Bool)

(assert (= b_lambda!56363 (or (and b!1752378 b_free!48393 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752373 b_free!48397 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48401 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48409 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56419)))

(check-sat (not tb!105181) (not b!1752542) (not b!1752975) (not b_lambda!56373) (not b!1752540) (not b_next!49111) (not b!1752610) b_and!131289 (not b_next!49113) (not b!1752940) (not d!535279) (not b!1752942) (not b!1752993) (not b!1752490) (not b!1752955) (not d!535097) (not d!535269) (not b_next!49099) (not d!535265) (not b!1752983) (not b!1752545) (not b!1753034) (not b!1752489) (not b!1753045) (not d!535287) (not b!1753006) (not b!1753049) (not b!1752980) (not b!1752941) b_and!131359 b_and!131291 (not b!1752430) (not b!1752969) (not b!1752986) (not bm!110400) (not b!1752432) b_and!131351 (not d!535267) (not b_lambda!56377) (not b!1752951) (not b!1752554) (not b!1752483) (not d!535137) (not b_lambda!56375) (not bm!110407) (not b_lambda!56379) (not b!1753020) (not b!1752729) tp_is_empty!7789 (not b!1752626) (not b!1753011) (not d!535081) (not b_lambda!56371) (not b!1752958) (not d!535165) (not d!535111) (not b!1753041) (not b!1752620) (not b!1752627) (not b!1752712) (not b!1752659) b_and!131357 (not b!1752555) (not tb!105169) (not b!1752704) (not b!1752997) (not b!1753021) (not b!1752619) (not b!1753008) (not b!1752639) (not d!535173) (not b!1753048) (not d!535141) (not b!1752581) (not d!535101) (not d!535285) b_and!131353 (not d!535145) (not b!1752599) (not b!1752707) (not b!1752414) (not d!535283) (not b!1752708) (not b!1752952) (not b!1752585) (not d!535127) (not b!1752974) (not b!1752661) (not d!535129) (not b!1753044) (not d!535091) (not bm!110414) (not b!1752973) (not b!1752987) (not b!1752411) (not b!1752981) (not b!1752944) (not b_lambda!56419) (not b!1752531) (not d!535291) (not b!1752979) (not b!1752637) (not b_next!49095) (not d!535135) (not d!535169) (not d!535093) (not b!1752492) (not b!1752984) (not d!535151) (not b!1752720) (not d!535191) (not b!1752711) (not b_lambda!56417) (not d!535297) (not b!1752586) b_and!131287 (not d!535295) (not d!535161) (not b!1752638) (not b!1752538) (not b_lambda!56369) (not b!1752657) (not d!535153) (not b!1752584) (not b!1753007) (not d!535107) (not b_next!49105) (not b_next!49103) (not b!1752600) (not b!1752611) (not b!1753010) (not b!1752582) (not b!1752653) (not b_next!49101) (not b!1752533) (not b!1752495) (not d!535281) (not b!1752539) (not bm!110415) (not b!1752709) (not b!1752500) (not b_lambda!56411) b_and!131355 (not b!1752656) (not d!535133) (not b!1752488) (not b!1752970) (not tb!105175) (not d!535095) (not b_lambda!56381) (not b!1752978) (not b_lambda!56413) (not d!535155) (not b!1752721) (not b!1752953) (not d!535159) (not bm!110404) (not b!1752728) (not d!535131) (not b!1752660) (not b!1753046) (not b_lambda!56415) (not b!1752564) (not d!535183) (not d!535157) (not b!1753036) (not b_next!49097) (not b!1753009) (not b!1752946) (not b!1753050) (not b!1752587) (not b!1752994) (not d!535143) (not d!535149) (not b!1753035) (not b!1753042) (not b!1752705) (not b!1752730) (not b!1752706) (not b!1752982) (not d!535163))
(check-sat (not b_next!49113) (not b_next!49099) b_and!131351 b_and!131357 b_and!131353 (not b_next!49095) b_and!131287 (not b_next!49101) b_and!131355 (not b_next!49097) (not b_next!49111) b_and!131289 b_and!131359 b_and!131291 (not b_next!49105) (not b_next!49103))
(get-model)

(assert (=> b!1752411 d!535069))

(declare-fun d!535439 () Bool)

(assert (=> d!535439 (= (get!5853 lt!677303) (v!25358 lt!677303))))

(assert (=> b!1752987 d!535439))

(declare-fun d!535441 () Bool)

(assert (=> d!535441 (= (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677303))))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677303))))))))

(declare-fun b_lambda!56431 () Bool)

(assert (=> (not b_lambda!56431) (not d!535441)))

(declare-fun t!163191 () Bool)

(declare-fun tb!105253 () Bool)

(assert (=> (and b!1752378 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163191) tb!105253))

(declare-fun result!126628 () Bool)

(assert (=> tb!105253 (= result!126628 (inv!21 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677303)))))))))

(declare-fun m!2167283 () Bool)

(assert (=> tb!105253 m!2167283))

(assert (=> d!535441 t!163191))

(declare-fun b_and!131385 () Bool)

(assert (= b_and!131287 (and (=> t!163191 result!126628) b_and!131385)))

(declare-fun t!163193 () Bool)

(declare-fun tb!105255 () Bool)

(assert (=> (and b!1752373 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163193) tb!105255))

(declare-fun result!126630 () Bool)

(assert (= result!126630 result!126628))

(assert (=> d!535441 t!163193))

(declare-fun b_and!131387 () Bool)

(assert (= b_and!131289 (and (=> t!163193 result!126630) b_and!131387)))

(declare-fun tb!105257 () Bool)

(declare-fun t!163195 () Bool)

(assert (=> (and b!1752383 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163195) tb!105257))

(declare-fun result!126632 () Bool)

(assert (= result!126632 result!126628))

(assert (=> d!535441 t!163195))

(declare-fun b_and!131389 () Bool)

(assert (= b_and!131291 (and (=> t!163195 result!126632) b_and!131389)))

(declare-fun tb!105259 () Bool)

(declare-fun t!163197 () Bool)

(assert (=> (and b!1753022 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163197) tb!105259))

(declare-fun result!126634 () Bool)

(assert (= result!126634 result!126628))

(assert (=> d!535441 t!163197))

(declare-fun b_and!131391 () Bool)

(assert (= b_and!131357 (and (=> t!163197 result!126634) b_and!131391)))

(assert (=> d!535441 m!2166963))

(declare-fun m!2167287 () Bool)

(assert (=> d!535441 m!2167287))

(assert (=> b!1752987 d!535441))

(declare-fun d!535451 () Bool)

(assert (=> d!535451 (= (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677303)))) (fromListB!1095 (originalCharacters!4259 (_1!10857 (get!5853 lt!677303)))))))

(declare-fun bs!403631 () Bool)

(assert (= bs!403631 d!535451))

(declare-fun m!2167289 () Bool)

(assert (=> bs!403631 m!2167289))

(assert (=> b!1752987 d!535451))

(declare-fun d!535453 () Bool)

(declare-fun res!788717 () Bool)

(declare-fun e!1122246 () Bool)

(assert (=> d!535453 (=> (not res!788717) (not e!1122246))))

(assert (=> d!535453 (= res!788717 (rulesValid!1287 thiss!24550 (t!163098 rules!3447)))))

(assert (=> d!535453 (= (rulesInvariant!2743 thiss!24550 (t!163098 rules!3447)) e!1122246)))

(declare-fun b!1753322 () Bool)

(assert (=> b!1753322 (= e!1122246 (noDuplicateTag!1287 thiss!24550 (t!163098 rules!3447) Nil!19288))))

(assert (= (and d!535453 res!788717) b!1753322))

(declare-fun m!2167291 () Bool)

(assert (=> d!535453 m!2167291))

(declare-fun m!2167293 () Bool)

(assert (=> b!1753322 m!2167293))

(assert (=> b!1752657 d!535453))

(declare-fun d!535455 () Bool)

(assert (=> d!535455 (rulesInvariant!2743 thiss!24550 (t!163098 rules!3447))))

(declare-fun lt!677357 () Unit!33441)

(declare-fun choose!10828 (LexerInterface!3074 Rule!6690 List!19357) Unit!33441)

(assert (=> d!535455 (= lt!677357 (choose!10828 thiss!24550 (h!24688 rules!3447) (t!163098 rules!3447)))))

(assert (=> d!535455 (rulesInvariant!2743 thiss!24550 (Cons!19287 (h!24688 rules!3447) (t!163098 rules!3447)))))

(assert (=> d!535455 (= (lemmaInvariantOnRulesThenOnTail!176 thiss!24550 (h!24688 rules!3447) (t!163098 rules!3447)) lt!677357)))

(declare-fun bs!403632 () Bool)

(assert (= bs!403632 d!535455))

(assert (=> bs!403632 m!2166513))

(declare-fun m!2167295 () Bool)

(assert (=> bs!403632 m!2167295))

(declare-fun m!2167297 () Bool)

(assert (=> bs!403632 m!2167297))

(assert (=> b!1752657 d!535455))

(declare-fun b!1753335 () Bool)

(declare-fun e!1122254 () Option!3913)

(assert (=> b!1753335 (= e!1122254 (Some!3912 (h!24688 (t!163098 rules!3447))))))

(declare-fun d!535457 () Bool)

(declare-fun e!1122251 () Bool)

(assert (=> d!535457 e!1122251))

(declare-fun res!788730 () Bool)

(assert (=> d!535457 (=> res!788730 e!1122251)))

(declare-fun lt!677359 () Option!3913)

(assert (=> d!535457 (= res!788730 (isEmpty!12160 lt!677359))))

(assert (=> d!535457 (= lt!677359 e!1122254)))

(declare-fun c!285852 () Bool)

(assert (=> d!535457 (= c!285852 (and ((_ is Cons!19287) (t!163098 rules!3447)) (= (tag!3797 (h!24688 (t!163098 rules!3447))) (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> d!535457 (rulesInvariant!2743 thiss!24550 (t!163098 rules!3447))))

(assert (=> d!535457 (= (getRuleFromTag!493 thiss!24550 (t!163098 rules!3447) (tag!3797 (rule!5457 (_1!10857 lt!677046)))) lt!677359)))

(declare-fun b!1753336 () Bool)

(declare-fun e!1122253 () Bool)

(assert (=> b!1753336 (= e!1122253 (= (tag!3797 (get!5852 lt!677359)) (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun b!1753337 () Bool)

(declare-fun e!1122252 () Option!3913)

(assert (=> b!1753337 (= e!1122254 e!1122252)))

(declare-fun c!285853 () Bool)

(assert (=> b!1753337 (= c!285853 (and ((_ is Cons!19287) (t!163098 rules!3447)) (not (= (tag!3797 (h!24688 (t!163098 rules!3447))) (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))

(declare-fun b!1753338 () Bool)

(assert (=> b!1753338 (= e!1122252 None!3912)))

(declare-fun b!1753339 () Bool)

(assert (=> b!1753339 (= e!1122251 e!1122253)))

(declare-fun res!788731 () Bool)

(assert (=> b!1753339 (=> (not res!788731) (not e!1122253))))

(assert (=> b!1753339 (= res!788731 (contains!3471 (t!163098 rules!3447) (get!5852 lt!677359)))))

(declare-fun b!1753340 () Bool)

(declare-fun lt!677360 () Unit!33441)

(declare-fun lt!677358 () Unit!33441)

(assert (=> b!1753340 (= lt!677360 lt!677358)))

(assert (=> b!1753340 (rulesInvariant!2743 thiss!24550 (t!163098 (t!163098 rules!3447)))))

(assert (=> b!1753340 (= lt!677358 (lemmaInvariantOnRulesThenOnTail!176 thiss!24550 (h!24688 (t!163098 rules!3447)) (t!163098 (t!163098 rules!3447))))))

(assert (=> b!1753340 (= e!1122252 (getRuleFromTag!493 thiss!24550 (t!163098 (t!163098 rules!3447)) (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))

(assert (= (and d!535457 c!285852) b!1753335))

(assert (= (and d!535457 (not c!285852)) b!1753337))

(assert (= (and b!1753337 c!285853) b!1753340))

(assert (= (and b!1753337 (not c!285853)) b!1753338))

(assert (= (and d!535457 (not res!788730)) b!1753339))

(assert (= (and b!1753339 res!788731) b!1753336))

(declare-fun m!2167299 () Bool)

(assert (=> d!535457 m!2167299))

(assert (=> d!535457 m!2166513))

(declare-fun m!2167301 () Bool)

(assert (=> b!1753336 m!2167301))

(assert (=> b!1753339 m!2167301))

(assert (=> b!1753339 m!2167301))

(declare-fun m!2167303 () Bool)

(assert (=> b!1753339 m!2167303))

(declare-fun m!2167305 () Bool)

(assert (=> b!1753340 m!2167305))

(declare-fun m!2167307 () Bool)

(assert (=> b!1753340 m!2167307))

(declare-fun m!2167309 () Bool)

(assert (=> b!1753340 m!2167309))

(assert (=> b!1752657 d!535457))

(declare-fun d!535459 () Bool)

(declare-fun charsToInt!0 (List!19355) (_ BitVec 32))

(assert (=> d!535459 (= (inv!16 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)) (= (charsToInt!0 (text!25192 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) (value!107846 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))

(declare-fun bs!403633 () Bool)

(assert (= bs!403633 d!535459))

(declare-fun m!2167327 () Bool)

(assert (=> bs!403633 m!2167327))

(assert (=> b!1752975 d!535459))

(declare-fun d!535467 () Bool)

(assert (=> d!535467 (= (get!5852 lt!677144) (v!25359 lt!677144))))

(assert (=> b!1752653 d!535467))

(declare-fun b!1753355 () Bool)

(declare-fun e!1122261 () Bool)

(declare-fun e!1122262 () Bool)

(assert (=> b!1753355 (= e!1122261 e!1122262)))

(declare-fun res!788742 () Bool)

(assert (=> b!1753355 (=> (not res!788742) (not e!1122262))))

(assert (=> b!1753355 (= res!788742 (not ((_ is Nil!19286) (tail!2617 (++!5269 lt!677049 (_2!10857 lt!677046))))))))

(declare-fun b!1753357 () Bool)

(assert (=> b!1753357 (= e!1122262 (isPrefix!1685 (tail!2617 (tail!2617 lt!677049)) (tail!2617 (tail!2617 (++!5269 lt!677049 (_2!10857 lt!677046))))))))

(declare-fun b!1753358 () Bool)

(declare-fun e!1122263 () Bool)

(assert (=> b!1753358 (= e!1122263 (>= (size!15323 (tail!2617 (++!5269 lt!677049 (_2!10857 lt!677046)))) (size!15323 (tail!2617 lt!677049))))))

(declare-fun d!535469 () Bool)

(assert (=> d!535469 e!1122263))

(declare-fun res!788740 () Bool)

(assert (=> d!535469 (=> res!788740 e!1122263)))

(declare-fun lt!677364 () Bool)

(assert (=> d!535469 (= res!788740 (not lt!677364))))

(assert (=> d!535469 (= lt!677364 e!1122261)))

(declare-fun res!788741 () Bool)

(assert (=> d!535469 (=> res!788741 e!1122261)))

(assert (=> d!535469 (= res!788741 ((_ is Nil!19286) (tail!2617 lt!677049)))))

(assert (=> d!535469 (= (isPrefix!1685 (tail!2617 lt!677049) (tail!2617 (++!5269 lt!677049 (_2!10857 lt!677046)))) lt!677364)))

(declare-fun b!1753356 () Bool)

(declare-fun res!788743 () Bool)

(assert (=> b!1753356 (=> (not res!788743) (not e!1122262))))

(assert (=> b!1753356 (= res!788743 (= (head!4042 (tail!2617 lt!677049)) (head!4042 (tail!2617 (++!5269 lt!677049 (_2!10857 lt!677046))))))))

(assert (= (and d!535469 (not res!788741)) b!1753355))

(assert (= (and b!1753355 res!788742) b!1753356))

(assert (= (and b!1753356 res!788743) b!1753357))

(assert (= (and d!535469 (not res!788740)) b!1753358))

(assert (=> b!1753357 m!2166349))

(declare-fun m!2167341 () Bool)

(assert (=> b!1753357 m!2167341))

(assert (=> b!1753357 m!2166499))

(declare-fun m!2167343 () Bool)

(assert (=> b!1753357 m!2167343))

(assert (=> b!1753357 m!2167341))

(assert (=> b!1753357 m!2167343))

(declare-fun m!2167345 () Bool)

(assert (=> b!1753357 m!2167345))

(assert (=> b!1753358 m!2166499))

(declare-fun m!2167347 () Bool)

(assert (=> b!1753358 m!2167347))

(assert (=> b!1753358 m!2166349))

(declare-fun m!2167349 () Bool)

(assert (=> b!1753358 m!2167349))

(assert (=> b!1753356 m!2166349))

(declare-fun m!2167351 () Bool)

(assert (=> b!1753356 m!2167351))

(assert (=> b!1753356 m!2166499))

(declare-fun m!2167353 () Bool)

(assert (=> b!1753356 m!2167353))

(assert (=> b!1752638 d!535469))

(declare-fun d!535473 () Bool)

(assert (=> d!535473 (= (tail!2617 lt!677049) (t!163097 lt!677049))))

(assert (=> b!1752638 d!535473))

(declare-fun d!535475 () Bool)

(assert (=> d!535475 (= (tail!2617 (++!5269 lt!677049 (_2!10857 lt!677046))) (t!163097 (++!5269 lt!677049 (_2!10857 lt!677046))))))

(assert (=> b!1752638 d!535475))

(declare-fun bs!403634 () Bool)

(declare-fun d!535477 () Bool)

(assert (= bs!403634 (and d!535477 d!535135)))

(declare-fun lambda!69934 () Int)

(assert (=> bs!403634 (= (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= lambda!69934 lambda!69899))))

(assert (=> d!535477 true))

(assert (=> d!535477 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (rule!5457 token!523)))) (dynLambda!9224 order!12153 lambda!69934))))

(declare-fun Forall2!559 (Int) Bool)

(assert (=> d!535477 (= (equivClasses!1303 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 token!523)))) (Forall2!559 lambda!69934))))

(declare-fun bs!403635 () Bool)

(assert (= bs!403635 d!535477))

(declare-fun m!2167385 () Bool)

(assert (=> bs!403635 m!2167385))

(assert (=> b!1752944 d!535477))

(declare-fun b!1753374 () Bool)

(declare-fun e!1122270 () Bool)

(declare-fun e!1122271 () Bool)

(assert (=> b!1753374 (= e!1122270 e!1122271)))

(declare-fun res!788755 () Bool)

(assert (=> b!1753374 (=> (not res!788755) (not e!1122271))))

(assert (=> b!1753374 (= res!788755 (not ((_ is Nil!19286) (tail!2617 lt!677054))))))

(declare-fun b!1753376 () Bool)

(assert (=> b!1753376 (= e!1122271 (isPrefix!1685 (tail!2617 (tail!2617 lt!677049)) (tail!2617 (tail!2617 lt!677054))))))

(declare-fun b!1753377 () Bool)

(declare-fun e!1122272 () Bool)

(assert (=> b!1753377 (= e!1122272 (>= (size!15323 (tail!2617 lt!677054)) (size!15323 (tail!2617 lt!677049))))))

(declare-fun d!535487 () Bool)

(assert (=> d!535487 e!1122272))

(declare-fun res!788753 () Bool)

(assert (=> d!535487 (=> res!788753 e!1122272)))

(declare-fun lt!677371 () Bool)

(assert (=> d!535487 (= res!788753 (not lt!677371))))

(assert (=> d!535487 (= lt!677371 e!1122270)))

(declare-fun res!788754 () Bool)

(assert (=> d!535487 (=> res!788754 e!1122270)))

(assert (=> d!535487 (= res!788754 ((_ is Nil!19286) (tail!2617 lt!677049)))))

(assert (=> d!535487 (= (isPrefix!1685 (tail!2617 lt!677049) (tail!2617 lt!677054)) lt!677371)))

(declare-fun b!1753375 () Bool)

(declare-fun res!788756 () Bool)

(assert (=> b!1753375 (=> (not res!788756) (not e!1122271))))

(assert (=> b!1753375 (= res!788756 (= (head!4042 (tail!2617 lt!677049)) (head!4042 (tail!2617 lt!677054))))))

(assert (= (and d!535487 (not res!788754)) b!1753374))

(assert (= (and b!1753374 res!788755) b!1753375))

(assert (= (and b!1753375 res!788756) b!1753376))

(assert (= (and d!535487 (not res!788753)) b!1753377))

(assert (=> b!1753376 m!2166349))

(assert (=> b!1753376 m!2167341))

(assert (=> b!1753376 m!2166519))

(declare-fun m!2167387 () Bool)

(assert (=> b!1753376 m!2167387))

(assert (=> b!1753376 m!2167341))

(assert (=> b!1753376 m!2167387))

(declare-fun m!2167389 () Bool)

(assert (=> b!1753376 m!2167389))

(assert (=> b!1753377 m!2166519))

(declare-fun m!2167391 () Bool)

(assert (=> b!1753377 m!2167391))

(assert (=> b!1753377 m!2166349))

(assert (=> b!1753377 m!2167349))

(assert (=> b!1753375 m!2166349))

(assert (=> b!1753375 m!2167351))

(assert (=> b!1753375 m!2166519))

(declare-fun m!2167393 () Bool)

(assert (=> b!1753375 m!2167393))

(assert (=> b!1752660 d!535487))

(assert (=> b!1752660 d!535473))

(declare-fun d!535489 () Bool)

(assert (=> d!535489 (= (tail!2617 lt!677054) (t!163097 lt!677054))))

(assert (=> b!1752660 d!535489))

(declare-fun d!535491 () Bool)

(assert (=> d!535491 (= (head!4042 lt!677049) (h!24687 lt!677049))))

(assert (=> b!1752539 d!535491))

(declare-fun d!535493 () Bool)

(assert (=> d!535493 (= (isEmpty!12156 lt!677061) ((_ is Nil!19286) lt!677061))))

(assert (=> bm!110400 d!535493))

(declare-fun d!535495 () Bool)

(declare-fun c!285859 () Bool)

(assert (=> d!535495 (= c!285859 ((_ is Node!6415) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(declare-fun e!1122273 () Bool)

(assert (=> d!535495 (= (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) e!1122273)))

(declare-fun b!1753378 () Bool)

(assert (=> b!1753378 (= e!1122273 (inv!25034 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(declare-fun b!1753379 () Bool)

(declare-fun e!1122274 () Bool)

(assert (=> b!1753379 (= e!1122273 e!1122274)))

(declare-fun res!788757 () Bool)

(assert (=> b!1753379 (= res!788757 (not ((_ is Leaf!9358) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))))

(assert (=> b!1753379 (=> res!788757 e!1122274)))

(declare-fun b!1753380 () Bool)

(assert (=> b!1753380 (= e!1122274 (inv!25035 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(assert (= (and d!535495 c!285859) b!1753378))

(assert (= (and d!535495 (not c!285859)) b!1753379))

(assert (= (and b!1753379 (not res!788757)) b!1753380))

(declare-fun m!2167395 () Bool)

(assert (=> b!1753378 m!2167395))

(declare-fun m!2167397 () Bool)

(assert (=> b!1753380 m!2167397))

(assert (=> b!1753006 d!535495))

(declare-fun d!535497 () Bool)

(declare-fun c!285860 () Bool)

(assert (=> d!535497 (= c!285860 ((_ is Node!6415) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(declare-fun e!1122275 () Bool)

(assert (=> d!535497 (= (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) e!1122275)))

(declare-fun b!1753381 () Bool)

(assert (=> b!1753381 (= e!1122275 (inv!25034 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(declare-fun b!1753382 () Bool)

(declare-fun e!1122276 () Bool)

(assert (=> b!1753382 (= e!1122275 e!1122276)))

(declare-fun res!788758 () Bool)

(assert (=> b!1753382 (= res!788758 (not ((_ is Leaf!9358) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))))

(assert (=> b!1753382 (=> res!788758 e!1122276)))

(declare-fun b!1753383 () Bool)

(assert (=> b!1753383 (= e!1122276 (inv!25035 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(assert (= (and d!535497 c!285860) b!1753381))

(assert (= (and d!535497 (not c!285860)) b!1753382))

(assert (= (and b!1753382 (not res!788758)) b!1753383))

(declare-fun m!2167399 () Bool)

(assert (=> b!1753381 m!2167399))

(declare-fun m!2167401 () Bool)

(assert (=> b!1753383 m!2167401))

(assert (=> b!1753006 d!535497))

(declare-fun d!535499 () Bool)

(declare-fun lt!677374 () Int)

(assert (=> d!535499 (>= lt!677374 0)))

(declare-fun e!1122279 () Int)

(assert (=> d!535499 (= lt!677374 e!1122279)))

(declare-fun c!285863 () Bool)

(assert (=> d!535499 (= c!285863 ((_ is Nil!19286) lt!677119))))

(assert (=> d!535499 (= (size!15323 lt!677119) lt!677374)))

(declare-fun b!1753388 () Bool)

(assert (=> b!1753388 (= e!1122279 0)))

(declare-fun b!1753389 () Bool)

(assert (=> b!1753389 (= e!1122279 (+ 1 (size!15323 (t!163097 lt!677119))))))

(assert (= (and d!535499 c!285863) b!1753388))

(assert (= (and d!535499 (not c!285863)) b!1753389))

(declare-fun m!2167403 () Bool)

(assert (=> b!1753389 m!2167403))

(assert (=> b!1752611 d!535499))

(declare-fun d!535501 () Bool)

(declare-fun lt!677375 () Int)

(assert (=> d!535501 (>= lt!677375 0)))

(declare-fun e!1122280 () Int)

(assert (=> d!535501 (= lt!677375 e!1122280)))

(declare-fun c!285864 () Bool)

(assert (=> d!535501 (= c!285864 ((_ is Nil!19286) lt!677061))))

(assert (=> d!535501 (= (size!15323 lt!677061) lt!677375)))

(declare-fun b!1753390 () Bool)

(assert (=> b!1753390 (= e!1122280 0)))

(declare-fun b!1753391 () Bool)

(assert (=> b!1753391 (= e!1122280 (+ 1 (size!15323 (t!163097 lt!677061))))))

(assert (= (and d!535501 c!285864) b!1753390))

(assert (= (and d!535501 (not c!285864)) b!1753391))

(declare-fun m!2167405 () Bool)

(assert (=> b!1753391 m!2167405))

(assert (=> b!1752611 d!535501))

(declare-fun d!535503 () Bool)

(declare-fun lt!677376 () Int)

(assert (=> d!535503 (>= lt!677376 0)))

(declare-fun e!1122281 () Int)

(assert (=> d!535503 (= lt!677376 e!1122281)))

(declare-fun c!285865 () Bool)

(assert (=> d!535503 (= c!285865 ((_ is Nil!19286) (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))

(assert (=> d!535503 (= (size!15323 (Cons!19286 (head!4042 suffix!1421) Nil!19286)) lt!677376)))

(declare-fun b!1753392 () Bool)

(assert (=> b!1753392 (= e!1122281 0)))

(declare-fun b!1753393 () Bool)

(assert (=> b!1753393 (= e!1122281 (+ 1 (size!15323 (t!163097 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(assert (= (and d!535503 c!285865) b!1753392))

(assert (= (and d!535503 (not c!285865)) b!1753393))

(declare-fun m!2167407 () Bool)

(assert (=> b!1753393 m!2167407))

(assert (=> b!1752611 d!535503))

(assert (=> d!535191 d!535281))

(declare-fun d!535505 () Bool)

(declare-fun list!7817 (Conc!6417) List!19361)

(assert (=> d!535505 (= (list!7815 (_1!10859 (lex!1436 thiss!24550 rules!3447 (seqFromList!2414 lt!677061)))) (list!7817 (c!285765 (_1!10859 (lex!1436 thiss!24550 rules!3447 (seqFromList!2414 lt!677061))))))))

(declare-fun bs!403636 () Bool)

(assert (= bs!403636 d!535505))

(declare-fun m!2167409 () Bool)

(assert (=> bs!403636 m!2167409))

(assert (=> d!535191 d!535505))

(declare-fun d!535507 () Bool)

(assert (=> d!535507 (isPrefix!1685 lt!677293 (++!5269 lt!677061 suffix!1421))))

(declare-fun lt!677379 () Unit!33441)

(declare-fun choose!10829 (List!19356 List!19356 List!19356) Unit!33441)

(assert (=> d!535507 (= lt!677379 (choose!10829 lt!677293 lt!677061 suffix!1421))))

(assert (=> d!535507 (isPrefix!1685 lt!677293 lt!677061)))

(assert (=> d!535507 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!297 lt!677293 lt!677061 suffix!1421) lt!677379)))

(declare-fun bs!403637 () Bool)

(assert (= bs!403637 d!535507))

(assert (=> bs!403637 m!2166179))

(assert (=> bs!403637 m!2166179))

(assert (=> bs!403637 m!2166891))

(declare-fun m!2167411 () Bool)

(assert (=> bs!403637 m!2167411))

(declare-fun m!2167413 () Bool)

(assert (=> bs!403637 m!2167413))

(assert (=> d!535191 d!535507))

(declare-fun d!535509 () Bool)

(assert (=> d!535509 (= (list!7811 (charsOf!2094 lt!677286)) (list!7814 (c!285665 (charsOf!2094 lt!677286))))))

(declare-fun bs!403638 () Bool)

(assert (= bs!403638 d!535509))

(declare-fun m!2167415 () Bool)

(assert (=> bs!403638 m!2167415))

(assert (=> d!535191 d!535509))

(declare-fun d!535511 () Bool)

(assert (=> d!535511 (isPrefix!1685 lt!677289 (++!5269 lt!677289 lt!677291))))

(declare-fun lt!677380 () Unit!33441)

(assert (=> d!535511 (= lt!677380 (choose!10824 lt!677289 lt!677291))))

(assert (=> d!535511 (= (lemmaConcatTwoListThenFirstIsPrefix!1194 lt!677289 lt!677291) lt!677380)))

(declare-fun bs!403639 () Bool)

(assert (= bs!403639 d!535511))

(assert (=> bs!403639 m!2166877))

(assert (=> bs!403639 m!2166877))

(assert (=> bs!403639 m!2166895))

(declare-fun m!2167417 () Bool)

(assert (=> bs!403639 m!2167417))

(assert (=> d!535191 d!535511))

(declare-fun d!535513 () Bool)

(assert (=> d!535513 (= (isEmpty!12161 (maxPrefix!1628 thiss!24550 rules!3447 (++!5269 lt!677061 suffix!1421))) (not ((_ is Some!3911) (maxPrefix!1628 thiss!24550 rules!3447 (++!5269 lt!677061 suffix!1421)))))))

(assert (=> d!535191 d!535513))

(declare-fun d!535515 () Bool)

(declare-fun e!1122283 () Bool)

(assert (=> d!535515 e!1122283))

(declare-fun res!788760 () Bool)

(assert (=> d!535515 (=> (not res!788760) (not e!1122283))))

(declare-fun lt!677381 () List!19356)

(assert (=> d!535515 (= res!788760 (= (content!2771 lt!677381) ((_ map or) (content!2771 lt!677289) (content!2771 lt!677291))))))

(declare-fun e!1122282 () List!19356)

(assert (=> d!535515 (= lt!677381 e!1122282)))

(declare-fun c!285866 () Bool)

(assert (=> d!535515 (= c!285866 ((_ is Nil!19286) lt!677289))))

(assert (=> d!535515 (= (++!5269 lt!677289 lt!677291) lt!677381)))

(declare-fun b!1753395 () Bool)

(assert (=> b!1753395 (= e!1122282 (Cons!19286 (h!24687 lt!677289) (++!5269 (t!163097 lt!677289) lt!677291)))))

(declare-fun b!1753394 () Bool)

(assert (=> b!1753394 (= e!1122282 lt!677291)))

(declare-fun b!1753397 () Bool)

(assert (=> b!1753397 (= e!1122283 (or (not (= lt!677291 Nil!19286)) (= lt!677381 lt!677289)))))

(declare-fun b!1753396 () Bool)

(declare-fun res!788759 () Bool)

(assert (=> b!1753396 (=> (not res!788759) (not e!1122283))))

(assert (=> b!1753396 (= res!788759 (= (size!15323 lt!677381) (+ (size!15323 lt!677289) (size!15323 lt!677291))))))

(assert (= (and d!535515 c!285866) b!1753394))

(assert (= (and d!535515 (not c!285866)) b!1753395))

(assert (= (and d!535515 res!788760) b!1753396))

(assert (= (and b!1753396 res!788759) b!1753397))

(declare-fun m!2167419 () Bool)

(assert (=> d!535515 m!2167419))

(declare-fun m!2167421 () Bool)

(assert (=> d!535515 m!2167421))

(declare-fun m!2167423 () Bool)

(assert (=> d!535515 m!2167423))

(declare-fun m!2167425 () Bool)

(assert (=> b!1753395 m!2167425))

(declare-fun m!2167427 () Bool)

(assert (=> b!1753396 m!2167427))

(declare-fun m!2167429 () Bool)

(assert (=> b!1753396 m!2167429))

(declare-fun m!2167431 () Bool)

(assert (=> b!1753396 m!2167431))

(assert (=> d!535191 d!535515))

(declare-fun call!110452 () Option!3912)

(declare-fun bm!110447 () Bool)

(assert (=> bm!110447 (= call!110452 (maxPrefixOneRule!999 thiss!24550 (h!24688 rules!3447) (++!5269 lt!677061 suffix!1421)))))

(declare-fun b!1753398 () Bool)

(declare-fun res!788764 () Bool)

(declare-fun e!1122286 () Bool)

(assert (=> b!1753398 (=> (not res!788764) (not e!1122286))))

(declare-fun lt!677383 () Option!3912)

(assert (=> b!1753398 (= res!788764 (matchR!2246 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677383)))) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677383))))))))

(declare-fun b!1753399 () Bool)

(declare-fun res!788767 () Bool)

(assert (=> b!1753399 (=> (not res!788767) (not e!1122286))))

(assert (=> b!1753399 (= res!788767 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677383)))) (_2!10857 (get!5853 lt!677383))) (++!5269 lt!677061 suffix!1421)))))

(declare-fun b!1753400 () Bool)

(declare-fun res!788766 () Bool)

(assert (=> b!1753400 (=> (not res!788766) (not e!1122286))))

(assert (=> b!1753400 (= res!788766 (< (size!15323 (_2!10857 (get!5853 lt!677383))) (size!15323 (++!5269 lt!677061 suffix!1421))))))

(declare-fun b!1753401 () Bool)

(declare-fun e!1122284 () Option!3912)

(declare-fun lt!677385 () Option!3912)

(declare-fun lt!677386 () Option!3912)

(assert (=> b!1753401 (= e!1122284 (ite (and ((_ is None!3911) lt!677385) ((_ is None!3911) lt!677386)) None!3911 (ite ((_ is None!3911) lt!677386) lt!677385 (ite ((_ is None!3911) lt!677385) lt!677386 (ite (>= (size!15320 (_1!10857 (v!25358 lt!677385))) (size!15320 (_1!10857 (v!25358 lt!677386)))) lt!677385 lt!677386)))))))

(assert (=> b!1753401 (= lt!677385 call!110452)))

(assert (=> b!1753401 (= lt!677386 (maxPrefix!1628 thiss!24550 (t!163098 rules!3447) (++!5269 lt!677061 suffix!1421)))))

(declare-fun b!1753403 () Bool)

(declare-fun res!788763 () Bool)

(assert (=> b!1753403 (=> (not res!788763) (not e!1122286))))

(assert (=> b!1753403 (= res!788763 (= (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677383)))) (originalCharacters!4259 (_1!10857 (get!5853 lt!677383)))))))

(declare-fun b!1753404 () Bool)

(assert (=> b!1753404 (= e!1122284 call!110452)))

(declare-fun b!1753402 () Bool)

(declare-fun e!1122285 () Bool)

(assert (=> b!1753402 (= e!1122285 e!1122286)))

(declare-fun res!788765 () Bool)

(assert (=> b!1753402 (=> (not res!788765) (not e!1122286))))

(assert (=> b!1753402 (= res!788765 (isDefined!3255 lt!677383))))

(declare-fun d!535517 () Bool)

(assert (=> d!535517 e!1122285))

(declare-fun res!788761 () Bool)

(assert (=> d!535517 (=> res!788761 e!1122285)))

(assert (=> d!535517 (= res!788761 (isEmpty!12161 lt!677383))))

(assert (=> d!535517 (= lt!677383 e!1122284)))

(declare-fun c!285867 () Bool)

(assert (=> d!535517 (= c!285867 (and ((_ is Cons!19287) rules!3447) ((_ is Nil!19287) (t!163098 rules!3447))))))

(declare-fun lt!677384 () Unit!33441)

(declare-fun lt!677382 () Unit!33441)

(assert (=> d!535517 (= lt!677384 lt!677382)))

(assert (=> d!535517 (isPrefix!1685 (++!5269 lt!677061 suffix!1421) (++!5269 lt!677061 suffix!1421))))

(assert (=> d!535517 (= lt!677382 (lemmaIsPrefixRefl!1114 (++!5269 lt!677061 suffix!1421) (++!5269 lt!677061 suffix!1421)))))

(assert (=> d!535517 (rulesValidInductive!1152 thiss!24550 rules!3447)))

(assert (=> d!535517 (= (maxPrefix!1628 thiss!24550 rules!3447 (++!5269 lt!677061 suffix!1421)) lt!677383)))

(declare-fun b!1753405 () Bool)

(assert (=> b!1753405 (= e!1122286 (contains!3471 rules!3447 (rule!5457 (_1!10857 (get!5853 lt!677383)))))))

(declare-fun b!1753406 () Bool)

(declare-fun res!788762 () Bool)

(assert (=> b!1753406 (=> (not res!788762) (not e!1122286))))

(assert (=> b!1753406 (= res!788762 (= (value!107855 (_1!10857 (get!5853 lt!677383))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677383)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677383)))))))))

(assert (= (and d!535517 c!285867) b!1753404))

(assert (= (and d!535517 (not c!285867)) b!1753401))

(assert (= (or b!1753404 b!1753401) bm!110447))

(assert (= (and d!535517 (not res!788761)) b!1753402))

(assert (= (and b!1753402 res!788765) b!1753403))

(assert (= (and b!1753403 res!788763) b!1753400))

(assert (= (and b!1753400 res!788766) b!1753399))

(assert (= (and b!1753399 res!788767) b!1753406))

(assert (= (and b!1753406 res!788762) b!1753398))

(assert (= (and b!1753398 res!788764) b!1753405))

(declare-fun m!2167433 () Bool)

(assert (=> b!1753402 m!2167433))

(declare-fun m!2167435 () Bool)

(assert (=> b!1753400 m!2167435))

(declare-fun m!2167437 () Bool)

(assert (=> b!1753400 m!2167437))

(assert (=> b!1753400 m!2166179))

(declare-fun m!2167439 () Bool)

(assert (=> b!1753400 m!2167439))

(assert (=> b!1753398 m!2167435))

(declare-fun m!2167441 () Bool)

(assert (=> b!1753398 m!2167441))

(assert (=> b!1753398 m!2167441))

(declare-fun m!2167443 () Bool)

(assert (=> b!1753398 m!2167443))

(assert (=> b!1753398 m!2167443))

(declare-fun m!2167445 () Bool)

(assert (=> b!1753398 m!2167445))

(assert (=> bm!110447 m!2166179))

(declare-fun m!2167447 () Bool)

(assert (=> bm!110447 m!2167447))

(assert (=> b!1753399 m!2167435))

(assert (=> b!1753399 m!2167441))

(assert (=> b!1753399 m!2167441))

(assert (=> b!1753399 m!2167443))

(assert (=> b!1753399 m!2167443))

(declare-fun m!2167449 () Bool)

(assert (=> b!1753399 m!2167449))

(assert (=> b!1753406 m!2167435))

(declare-fun m!2167451 () Bool)

(assert (=> b!1753406 m!2167451))

(assert (=> b!1753406 m!2167451))

(declare-fun m!2167453 () Bool)

(assert (=> b!1753406 m!2167453))

(declare-fun m!2167455 () Bool)

(assert (=> d!535517 m!2167455))

(assert (=> d!535517 m!2166179))

(assert (=> d!535517 m!2166179))

(declare-fun m!2167457 () Bool)

(assert (=> d!535517 m!2167457))

(assert (=> d!535517 m!2166179))

(assert (=> d!535517 m!2166179))

(declare-fun m!2167459 () Bool)

(assert (=> d!535517 m!2167459))

(assert (=> d!535517 m!2166619))

(assert (=> b!1753403 m!2167435))

(assert (=> b!1753403 m!2167441))

(assert (=> b!1753403 m!2167441))

(assert (=> b!1753403 m!2167443))

(assert (=> b!1753405 m!2167435))

(declare-fun m!2167461 () Bool)

(assert (=> b!1753405 m!2167461))

(assert (=> b!1753401 m!2166179))

(declare-fun m!2167463 () Bool)

(assert (=> b!1753401 m!2167463))

(assert (=> d!535191 d!535517))

(assert (=> d!535191 d!535183))

(assert (=> d!535191 d!535293))

(declare-fun b!1753531 () Bool)

(declare-fun e!1122359 () Bool)

(declare-fun lt!677430 () tuple2!18914)

(declare-fun isEmpty!12162 (BalanceConc!12778) Bool)

(assert (=> b!1753531 (= e!1122359 (not (isEmpty!12162 (_1!10859 lt!677430))))))

(declare-fun b!1753532 () Bool)

(declare-fun res!788846 () Bool)

(declare-fun e!1122358 () Bool)

(assert (=> b!1753532 (=> (not res!788846) (not e!1122358))))

(declare-datatypes ((tuple2!18916 0))(
  ( (tuple2!18917 (_1!10860 List!19361) (_2!10860 List!19356)) )
))
(declare-fun lexList!922 (LexerInterface!3074 List!19357 List!19356) tuple2!18916)

(assert (=> b!1753532 (= res!788846 (= (list!7815 (_1!10859 lt!677430)) (_1!10860 (lexList!922 thiss!24550 rules!3447 (list!7811 (seqFromList!2414 lt!677061))))))))

(declare-fun d!535519 () Bool)

(assert (=> d!535519 e!1122358))

(declare-fun res!788845 () Bool)

(assert (=> d!535519 (=> (not res!788845) (not e!1122358))))

(declare-fun e!1122360 () Bool)

(assert (=> d!535519 (= res!788845 e!1122360)))

(declare-fun c!285891 () Bool)

(declare-fun size!15326 (BalanceConc!12778) Int)

(assert (=> d!535519 (= c!285891 (> (size!15326 (_1!10859 lt!677430)) 0))))

(declare-fun lexTailRecV2!645 (LexerInterface!3074 List!19357 BalanceConc!12774 BalanceConc!12774 BalanceConc!12774 BalanceConc!12778) tuple2!18914)

(assert (=> d!535519 (= lt!677430 (lexTailRecV2!645 thiss!24550 rules!3447 (seqFromList!2414 lt!677061) (BalanceConc!12775 Empty!6415) (seqFromList!2414 lt!677061) (BalanceConc!12779 Empty!6417)))))

(assert (=> d!535519 (= (lex!1436 thiss!24550 rules!3447 (seqFromList!2414 lt!677061)) lt!677430)))

(declare-fun b!1753533 () Bool)

(assert (=> b!1753533 (= e!1122360 e!1122359)))

(declare-fun res!788844 () Bool)

(assert (=> b!1753533 (= res!788844 (< (size!15321 (_2!10859 lt!677430)) (size!15321 (seqFromList!2414 lt!677061))))))

(assert (=> b!1753533 (=> (not res!788844) (not e!1122359))))

(declare-fun b!1753534 () Bool)

(assert (=> b!1753534 (= e!1122358 (= (list!7811 (_2!10859 lt!677430)) (_2!10860 (lexList!922 thiss!24550 rules!3447 (list!7811 (seqFromList!2414 lt!677061))))))))

(declare-fun b!1753535 () Bool)

(assert (=> b!1753535 (= e!1122360 (= (_2!10859 lt!677430) (seqFromList!2414 lt!677061)))))

(assert (= (and d!535519 c!285891) b!1753533))

(assert (= (and d!535519 (not c!285891)) b!1753535))

(assert (= (and b!1753533 res!788844) b!1753531))

(assert (= (and d!535519 res!788845) b!1753532))

(assert (= (and b!1753532 res!788846) b!1753534))

(declare-fun m!2167685 () Bool)

(assert (=> b!1753532 m!2167685))

(assert (=> b!1753532 m!2166875))

(declare-fun m!2167687 () Bool)

(assert (=> b!1753532 m!2167687))

(assert (=> b!1753532 m!2167687))

(declare-fun m!2167689 () Bool)

(assert (=> b!1753532 m!2167689))

(declare-fun m!2167691 () Bool)

(assert (=> b!1753531 m!2167691))

(declare-fun m!2167693 () Bool)

(assert (=> d!535519 m!2167693))

(assert (=> d!535519 m!2166875))

(assert (=> d!535519 m!2166875))

(declare-fun m!2167695 () Bool)

(assert (=> d!535519 m!2167695))

(declare-fun m!2167697 () Bool)

(assert (=> b!1753533 m!2167697))

(assert (=> b!1753533 m!2166875))

(declare-fun m!2167699 () Bool)

(assert (=> b!1753533 m!2167699))

(declare-fun m!2167701 () Bool)

(assert (=> b!1753534 m!2167701))

(assert (=> b!1753534 m!2166875))

(assert (=> b!1753534 m!2167687))

(assert (=> b!1753534 m!2167687))

(assert (=> b!1753534 m!2167689))

(assert (=> d!535191 d!535519))

(declare-fun b!1753536 () Bool)

(declare-fun e!1122361 () Bool)

(declare-fun e!1122362 () Bool)

(assert (=> b!1753536 (= e!1122361 e!1122362)))

(declare-fun res!788849 () Bool)

(assert (=> b!1753536 (=> (not res!788849) (not e!1122362))))

(assert (=> b!1753536 (= res!788849 (not ((_ is Nil!19286) (++!5269 lt!677289 lt!677291))))))

(declare-fun b!1753538 () Bool)

(assert (=> b!1753538 (= e!1122362 (isPrefix!1685 (tail!2617 lt!677289) (tail!2617 (++!5269 lt!677289 lt!677291))))))

(declare-fun b!1753539 () Bool)

(declare-fun e!1122363 () Bool)

(assert (=> b!1753539 (= e!1122363 (>= (size!15323 (++!5269 lt!677289 lt!677291)) (size!15323 lt!677289)))))

(declare-fun d!535599 () Bool)

(assert (=> d!535599 e!1122363))

(declare-fun res!788847 () Bool)

(assert (=> d!535599 (=> res!788847 e!1122363)))

(declare-fun lt!677431 () Bool)

(assert (=> d!535599 (= res!788847 (not lt!677431))))

(assert (=> d!535599 (= lt!677431 e!1122361)))

(declare-fun res!788848 () Bool)

(assert (=> d!535599 (=> res!788848 e!1122361)))

(assert (=> d!535599 (= res!788848 ((_ is Nil!19286) lt!677289))))

(assert (=> d!535599 (= (isPrefix!1685 lt!677289 (++!5269 lt!677289 lt!677291)) lt!677431)))

(declare-fun b!1753537 () Bool)

(declare-fun res!788850 () Bool)

(assert (=> b!1753537 (=> (not res!788850) (not e!1122362))))

(assert (=> b!1753537 (= res!788850 (= (head!4042 lt!677289) (head!4042 (++!5269 lt!677289 lt!677291))))))

(assert (= (and d!535599 (not res!788848)) b!1753536))

(assert (= (and b!1753536 res!788849) b!1753537))

(assert (= (and b!1753537 res!788850) b!1753538))

(assert (= (and d!535599 (not res!788847)) b!1753539))

(declare-fun m!2167703 () Bool)

(assert (=> b!1753538 m!2167703))

(assert (=> b!1753538 m!2166877))

(declare-fun m!2167705 () Bool)

(assert (=> b!1753538 m!2167705))

(assert (=> b!1753538 m!2167703))

(assert (=> b!1753538 m!2167705))

(declare-fun m!2167707 () Bool)

(assert (=> b!1753538 m!2167707))

(assert (=> b!1753539 m!2166877))

(declare-fun m!2167709 () Bool)

(assert (=> b!1753539 m!2167709))

(assert (=> b!1753539 m!2167429))

(declare-fun m!2167711 () Bool)

(assert (=> b!1753537 m!2167711))

(assert (=> b!1753537 m!2166877))

(declare-fun m!2167713 () Bool)

(assert (=> b!1753537 m!2167713))

(assert (=> d!535191 d!535599))

(declare-fun d!535601 () Bool)

(declare-fun lt!677432 () BalanceConc!12774)

(assert (=> d!535601 (= (list!7811 lt!677432) (originalCharacters!4259 lt!677286))))

(assert (=> d!535601 (= lt!677432 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 lt!677286))) (value!107855 lt!677286)))))

(assert (=> d!535601 (= (charsOf!2094 lt!677286) lt!677432)))

(declare-fun b_lambda!56433 () Bool)

(assert (=> (not b_lambda!56433) (not d!535601)))

(declare-fun tb!105261 () Bool)

(declare-fun t!163200 () Bool)

(assert (=> (and b!1752378 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 lt!677286)))) t!163200) tb!105261))

(declare-fun b!1753540 () Bool)

(declare-fun e!1122364 () Bool)

(declare-fun tp!498574 () Bool)

(assert (=> b!1753540 (= e!1122364 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 lt!677286))) (value!107855 lt!677286)))) tp!498574))))

(declare-fun result!126636 () Bool)

(assert (=> tb!105261 (= result!126636 (and (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 lt!677286))) (value!107855 lt!677286))) e!1122364))))

(assert (= tb!105261 b!1753540))

(declare-fun m!2167715 () Bool)

(assert (=> b!1753540 m!2167715))

(declare-fun m!2167717 () Bool)

(assert (=> tb!105261 m!2167717))

(assert (=> d!535601 t!163200))

(declare-fun b_and!131393 () Bool)

(assert (= b_and!131351 (and (=> t!163200 result!126636) b_and!131393)))

(declare-fun tb!105263 () Bool)

(declare-fun t!163202 () Bool)

(assert (=> (and b!1752373 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 lt!677286)))) t!163202) tb!105263))

(declare-fun result!126638 () Bool)

(assert (= result!126638 result!126636))

(assert (=> d!535601 t!163202))

(declare-fun b_and!131395 () Bool)

(assert (= b_and!131353 (and (=> t!163202 result!126638) b_and!131395)))

(declare-fun t!163204 () Bool)

(declare-fun tb!105265 () Bool)

(assert (=> (and b!1752383 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 lt!677286)))) t!163204) tb!105265))

(declare-fun result!126640 () Bool)

(assert (= result!126640 result!126636))

(assert (=> d!535601 t!163204))

(declare-fun b_and!131397 () Bool)

(assert (= b_and!131355 (and (=> t!163204 result!126640) b_and!131397)))

(declare-fun t!163206 () Bool)

(declare-fun tb!105267 () Bool)

(assert (=> (and b!1753022 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 lt!677286)))) t!163206) tb!105267))

(declare-fun result!126642 () Bool)

(assert (= result!126642 result!126636))

(assert (=> d!535601 t!163206))

(declare-fun b_and!131399 () Bool)

(assert (= b_and!131359 (and (=> t!163206 result!126642) b_and!131399)))

(declare-fun m!2167719 () Bool)

(assert (=> d!535601 m!2167719))

(declare-fun m!2167721 () Bool)

(assert (=> d!535601 m!2167721))

(assert (=> d!535191 d!535601))

(declare-fun b!1753541 () Bool)

(declare-fun e!1122365 () Bool)

(declare-fun e!1122366 () Bool)

(assert (=> b!1753541 (= e!1122365 e!1122366)))

(declare-fun res!788853 () Bool)

(assert (=> b!1753541 (=> (not res!788853) (not e!1122366))))

(assert (=> b!1753541 (= res!788853 (not ((_ is Nil!19286) (++!5269 lt!677061 suffix!1421))))))

(declare-fun b!1753543 () Bool)

(assert (=> b!1753543 (= e!1122366 (isPrefix!1685 (tail!2617 lt!677293) (tail!2617 (++!5269 lt!677061 suffix!1421))))))

(declare-fun b!1753544 () Bool)

(declare-fun e!1122367 () Bool)

(assert (=> b!1753544 (= e!1122367 (>= (size!15323 (++!5269 lt!677061 suffix!1421)) (size!15323 lt!677293)))))

(declare-fun d!535603 () Bool)

(assert (=> d!535603 e!1122367))

(declare-fun res!788851 () Bool)

(assert (=> d!535603 (=> res!788851 e!1122367)))

(declare-fun lt!677433 () Bool)

(assert (=> d!535603 (= res!788851 (not lt!677433))))

(assert (=> d!535603 (= lt!677433 e!1122365)))

(declare-fun res!788852 () Bool)

(assert (=> d!535603 (=> res!788852 e!1122365)))

(assert (=> d!535603 (= res!788852 ((_ is Nil!19286) lt!677293))))

(assert (=> d!535603 (= (isPrefix!1685 lt!677293 (++!5269 lt!677061 suffix!1421)) lt!677433)))

(declare-fun b!1753542 () Bool)

(declare-fun res!788854 () Bool)

(assert (=> b!1753542 (=> (not res!788854) (not e!1122366))))

(assert (=> b!1753542 (= res!788854 (= (head!4042 lt!677293) (head!4042 (++!5269 lt!677061 suffix!1421))))))

(assert (= (and d!535603 (not res!788852)) b!1753541))

(assert (= (and b!1753541 res!788853) b!1753542))

(assert (= (and b!1753542 res!788854) b!1753543))

(assert (= (and d!535603 (not res!788851)) b!1753544))

(declare-fun m!2167723 () Bool)

(assert (=> b!1753543 m!2167723))

(assert (=> b!1753543 m!2166179))

(declare-fun m!2167725 () Bool)

(assert (=> b!1753543 m!2167725))

(assert (=> b!1753543 m!2167723))

(assert (=> b!1753543 m!2167725))

(declare-fun m!2167727 () Bool)

(assert (=> b!1753543 m!2167727))

(assert (=> b!1753544 m!2166179))

(assert (=> b!1753544 m!2167439))

(declare-fun m!2167729 () Bool)

(assert (=> b!1753544 m!2167729))

(declare-fun m!2167731 () Bool)

(assert (=> b!1753542 m!2167731))

(assert (=> b!1753542 m!2166179))

(declare-fun m!2167733 () Bool)

(assert (=> b!1753542 m!2167733))

(assert (=> d!535191 d!535603))

(declare-fun d!535605 () Bool)

(declare-fun e!1122368 () Bool)

(assert (=> d!535605 e!1122368))

(declare-fun res!788855 () Bool)

(assert (=> d!535605 (=> (not res!788855) (not e!1122368))))

(assert (=> d!535605 (= res!788855 (isDefined!3256 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))))))

(declare-fun lt!677434 () Unit!33441)

(assert (=> d!535605 (= lt!677434 (choose!10823 thiss!24550 rules!3447 lt!677061 lt!677286))))

(assert (=> d!535605 (rulesInvariant!2743 thiss!24550 rules!3447)))

(assert (=> d!535605 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!493 thiss!24550 rules!3447 lt!677061 lt!677286) lt!677434)))

(declare-fun b!1753545 () Bool)

(declare-fun res!788856 () Bool)

(assert (=> b!1753545 (=> (not res!788856) (not e!1122368))))

(assert (=> b!1753545 (= res!788856 (matchR!2246 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))) (list!7811 (charsOf!2094 lt!677286))))))

(declare-fun b!1753546 () Bool)

(assert (=> b!1753546 (= e!1122368 (= (rule!5457 lt!677286) (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))))))

(assert (= (and d!535605 res!788855) b!1753545))

(assert (= (and b!1753545 res!788856) b!1753546))

(assert (=> d!535605 m!2166861))

(assert (=> d!535605 m!2166861))

(assert (=> d!535605 m!2166871))

(declare-fun m!2167735 () Bool)

(assert (=> d!535605 m!2167735))

(assert (=> d!535605 m!2166205))

(assert (=> b!1753545 m!2166861))

(assert (=> b!1753545 m!2166865))

(assert (=> b!1753545 m!2166865))

(assert (=> b!1753545 m!2166867))

(assert (=> b!1753545 m!2166861))

(assert (=> b!1753545 m!2166863))

(assert (=> b!1753545 m!2166867))

(assert (=> b!1753545 m!2166869))

(assert (=> b!1753546 m!2166861))

(assert (=> b!1753546 m!2166861))

(assert (=> b!1753546 m!2166863))

(assert (=> d!535191 d!535605))

(declare-fun d!535607 () Bool)

(assert (=> d!535607 (= (get!5853 (maxPrefix!1628 thiss!24550 rules!3447 lt!677061)) (v!25358 (maxPrefix!1628 thiss!24550 rules!3447 lt!677061)))))

(assert (=> d!535191 d!535607))

(declare-fun d!535609 () Bool)

(assert (=> d!535609 (= (head!4044 (list!7815 (_1!10859 (lex!1436 thiss!24550 rules!3447 (seqFromList!2414 lt!677061))))) (h!24692 (list!7815 (_1!10859 (lex!1436 thiss!24550 rules!3447 (seqFromList!2414 lt!677061))))))))

(assert (=> d!535191 d!535609))

(declare-fun b!1753547 () Bool)

(declare-fun e!1122372 () Option!3913)

(assert (=> b!1753547 (= e!1122372 (Some!3912 (h!24688 rules!3447)))))

(declare-fun d!535611 () Bool)

(declare-fun e!1122369 () Bool)

(assert (=> d!535611 e!1122369))

(declare-fun res!788857 () Bool)

(assert (=> d!535611 (=> res!788857 e!1122369)))

(declare-fun lt!677436 () Option!3913)

(assert (=> d!535611 (= res!788857 (isEmpty!12160 lt!677436))))

(assert (=> d!535611 (= lt!677436 e!1122372)))

(declare-fun c!285892 () Bool)

(assert (=> d!535611 (= c!285892 (and ((_ is Cons!19287) rules!3447) (= (tag!3797 (h!24688 rules!3447)) (tag!3797 (rule!5457 lt!677286)))))))

(assert (=> d!535611 (rulesInvariant!2743 thiss!24550 rules!3447)))

(assert (=> d!535611 (= (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))) lt!677436)))

(declare-fun b!1753548 () Bool)

(declare-fun e!1122371 () Bool)

(assert (=> b!1753548 (= e!1122371 (= (tag!3797 (get!5852 lt!677436)) (tag!3797 (rule!5457 lt!677286))))))

(declare-fun b!1753549 () Bool)

(declare-fun e!1122370 () Option!3913)

(assert (=> b!1753549 (= e!1122372 e!1122370)))

(declare-fun c!285893 () Bool)

(assert (=> b!1753549 (= c!285893 (and ((_ is Cons!19287) rules!3447) (not (= (tag!3797 (h!24688 rules!3447)) (tag!3797 (rule!5457 lt!677286))))))))

(declare-fun b!1753550 () Bool)

(assert (=> b!1753550 (= e!1122370 None!3912)))

(declare-fun b!1753551 () Bool)

(assert (=> b!1753551 (= e!1122369 e!1122371)))

(declare-fun res!788858 () Bool)

(assert (=> b!1753551 (=> (not res!788858) (not e!1122371))))

(assert (=> b!1753551 (= res!788858 (contains!3471 rules!3447 (get!5852 lt!677436)))))

(declare-fun b!1753552 () Bool)

(declare-fun lt!677437 () Unit!33441)

(declare-fun lt!677435 () Unit!33441)

(assert (=> b!1753552 (= lt!677437 lt!677435)))

(assert (=> b!1753552 (rulesInvariant!2743 thiss!24550 (t!163098 rules!3447))))

(assert (=> b!1753552 (= lt!677435 (lemmaInvariantOnRulesThenOnTail!176 thiss!24550 (h!24688 rules!3447) (t!163098 rules!3447)))))

(assert (=> b!1753552 (= e!1122370 (getRuleFromTag!493 thiss!24550 (t!163098 rules!3447) (tag!3797 (rule!5457 lt!677286))))))

(assert (= (and d!535611 c!285892) b!1753547))

(assert (= (and d!535611 (not c!285892)) b!1753549))

(assert (= (and b!1753549 c!285893) b!1753552))

(assert (= (and b!1753549 (not c!285893)) b!1753550))

(assert (= (and d!535611 (not res!788857)) b!1753551))

(assert (= (and b!1753551 res!788858) b!1753548))

(declare-fun m!2167737 () Bool)

(assert (=> d!535611 m!2167737))

(assert (=> d!535611 m!2166205))

(declare-fun m!2167739 () Bool)

(assert (=> b!1753548 m!2167739))

(assert (=> b!1753551 m!2167739))

(assert (=> b!1753551 m!2167739))

(declare-fun m!2167741 () Bool)

(assert (=> b!1753551 m!2167741))

(assert (=> b!1753552 m!2166513))

(assert (=> b!1753552 m!2166515))

(declare-fun m!2167743 () Bool)

(assert (=> b!1753552 m!2167743))

(assert (=> d!535191 d!535611))

(declare-fun d!535613 () Bool)

(assert (=> d!535613 (= (seqFromList!2414 lt!677061) (fromListB!1095 lt!677061))))

(declare-fun bs!403653 () Bool)

(assert (= bs!403653 d!535613))

(declare-fun m!2167745 () Bool)

(assert (=> bs!403653 m!2167745))

(assert (=> d!535191 d!535613))

(declare-fun d!535615 () Bool)

(assert (=> d!535615 (= (isDefined!3255 (maxPrefix!1628 thiss!24550 rules!3447 (++!5269 lt!677061 suffix!1421))) (not (isEmpty!12161 (maxPrefix!1628 thiss!24550 rules!3447 (++!5269 lt!677061 suffix!1421)))))))

(declare-fun bs!403654 () Bool)

(assert (= bs!403654 d!535615))

(assert (=> bs!403654 m!2166879))

(assert (=> bs!403654 m!2166881))

(assert (=> d!535191 d!535615))

(declare-fun d!535617 () Bool)

(assert (=> d!535617 (= (isDefined!3256 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))) (not (isEmpty!12160 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))))))

(declare-fun bs!403655 () Bool)

(assert (= bs!403655 d!535617))

(assert (=> bs!403655 m!2166861))

(declare-fun m!2167747 () Bool)

(assert (=> bs!403655 m!2167747))

(assert (=> d!535191 d!535617))

(declare-fun b!1753553 () Bool)

(declare-fun e!1122375 () Bool)

(declare-fun lt!677438 () Bool)

(declare-fun call!110457 () Bool)

(assert (=> b!1753553 (= e!1122375 (= lt!677438 call!110457))))

(declare-fun d!535619 () Bool)

(assert (=> d!535619 e!1122375))

(declare-fun c!285894 () Bool)

(assert (=> d!535619 (= c!285894 ((_ is EmptyExpr!4773) (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061))))))

(declare-fun e!1122377 () Bool)

(assert (=> d!535619 (= lt!677438 e!1122377)))

(declare-fun c!285896 () Bool)

(assert (=> d!535619 (= c!285896 (isEmpty!12156 (tail!2617 lt!677061)))))

(assert (=> d!535619 (validRegex!1920 (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061)))))

(assert (=> d!535619 (= (matchR!2246 (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061)) (tail!2617 lt!677061)) lt!677438)))

(declare-fun b!1753554 () Bool)

(declare-fun res!788861 () Bool)

(declare-fun e!1122378 () Bool)

(assert (=> b!1753554 (=> (not res!788861) (not e!1122378))))

(assert (=> b!1753554 (= res!788861 (isEmpty!12156 (tail!2617 (tail!2617 lt!677061))))))

(declare-fun b!1753555 () Bool)

(declare-fun e!1122374 () Bool)

(assert (=> b!1753555 (= e!1122375 e!1122374)))

(declare-fun c!285895 () Bool)

(assert (=> b!1753555 (= c!285895 ((_ is EmptyLang!4773) (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061))))))

(declare-fun b!1753556 () Bool)

(declare-fun res!788860 () Bool)

(declare-fun e!1122376 () Bool)

(assert (=> b!1753556 (=> res!788860 e!1122376)))

(assert (=> b!1753556 (= res!788860 e!1122378)))

(declare-fun res!788864 () Bool)

(assert (=> b!1753556 (=> (not res!788864) (not e!1122378))))

(assert (=> b!1753556 (= res!788864 lt!677438)))

(declare-fun b!1753557 () Bool)

(declare-fun e!1122379 () Bool)

(assert (=> b!1753557 (= e!1122376 e!1122379)))

(declare-fun res!788866 () Bool)

(assert (=> b!1753557 (=> (not res!788866) (not e!1122379))))

(assert (=> b!1753557 (= res!788866 (not lt!677438))))

(declare-fun b!1753558 () Bool)

(assert (=> b!1753558 (= e!1122374 (not lt!677438))))

(declare-fun b!1753559 () Bool)

(declare-fun res!788863 () Bool)

(declare-fun e!1122373 () Bool)

(assert (=> b!1753559 (=> res!788863 e!1122373)))

(assert (=> b!1753559 (= res!788863 (not (isEmpty!12156 (tail!2617 (tail!2617 lt!677061)))))))

(declare-fun b!1753560 () Bool)

(assert (=> b!1753560 (= e!1122378 (= (head!4042 (tail!2617 lt!677061)) (c!285664 (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061)))))))

(declare-fun b!1753561 () Bool)

(assert (=> b!1753561 (= e!1122377 (matchR!2246 (derivativeStep!1215 (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061)) (head!4042 (tail!2617 lt!677061))) (tail!2617 (tail!2617 lt!677061))))))

(declare-fun b!1753562 () Bool)

(assert (=> b!1753562 (= e!1122379 e!1122373)))

(declare-fun res!788859 () Bool)

(assert (=> b!1753562 (=> res!788859 e!1122373)))

(assert (=> b!1753562 (= res!788859 call!110457)))

(declare-fun b!1753563 () Bool)

(assert (=> b!1753563 (= e!1122377 (nullable!1446 (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061))))))

(declare-fun b!1753564 () Bool)

(declare-fun res!788865 () Bool)

(assert (=> b!1753564 (=> res!788865 e!1122376)))

(assert (=> b!1753564 (= res!788865 (not ((_ is ElementMatch!4773) (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061)))))))

(assert (=> b!1753564 (= e!1122374 e!1122376)))

(declare-fun bm!110452 () Bool)

(assert (=> bm!110452 (= call!110457 (isEmpty!12156 (tail!2617 lt!677061)))))

(declare-fun b!1753565 () Bool)

(declare-fun res!788862 () Bool)

(assert (=> b!1753565 (=> (not res!788862) (not e!1122378))))

(assert (=> b!1753565 (= res!788862 (not call!110457))))

(declare-fun b!1753566 () Bool)

(assert (=> b!1753566 (= e!1122373 (not (= (head!4042 (tail!2617 lt!677061)) (c!285664 (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061))))))))

(assert (= (and d!535619 c!285896) b!1753563))

(assert (= (and d!535619 (not c!285896)) b!1753561))

(assert (= (and d!535619 c!285894) b!1753553))

(assert (= (and d!535619 (not c!285894)) b!1753555))

(assert (= (and b!1753555 c!285895) b!1753558))

(assert (= (and b!1753555 (not c!285895)) b!1753564))

(assert (= (and b!1753564 (not res!788865)) b!1753556))

(assert (= (and b!1753556 res!788864) b!1753565))

(assert (= (and b!1753565 res!788862) b!1753554))

(assert (= (and b!1753554 res!788861) b!1753560))

(assert (= (and b!1753556 (not res!788860)) b!1753557))

(assert (= (and b!1753557 res!788866) b!1753562))

(assert (= (and b!1753562 (not res!788859)) b!1753559))

(assert (= (and b!1753559 (not res!788863)) b!1753566))

(assert (= (or b!1753553 b!1753562 b!1753565) bm!110452))

(assert (=> d!535619 m!2166283))

(assert (=> d!535619 m!2166287))

(assert (=> d!535619 m!2166281))

(declare-fun m!2167749 () Bool)

(assert (=> d!535619 m!2167749))

(assert (=> b!1753563 m!2166281))

(declare-fun m!2167751 () Bool)

(assert (=> b!1753563 m!2167751))

(assert (=> b!1753560 m!2166283))

(declare-fun m!2167753 () Bool)

(assert (=> b!1753560 m!2167753))

(assert (=> b!1753566 m!2166283))

(assert (=> b!1753566 m!2167753))

(assert (=> bm!110452 m!2166283))

(assert (=> bm!110452 m!2166287))

(assert (=> b!1753561 m!2166283))

(assert (=> b!1753561 m!2167753))

(assert (=> b!1753561 m!2166281))

(assert (=> b!1753561 m!2167753))

(declare-fun m!2167755 () Bool)

(assert (=> b!1753561 m!2167755))

(assert (=> b!1753561 m!2166283))

(declare-fun m!2167757 () Bool)

(assert (=> b!1753561 m!2167757))

(assert (=> b!1753561 m!2167755))

(assert (=> b!1753561 m!2167757))

(declare-fun m!2167759 () Bool)

(assert (=> b!1753561 m!2167759))

(assert (=> b!1753554 m!2166283))

(assert (=> b!1753554 m!2167757))

(assert (=> b!1753554 m!2167757))

(declare-fun m!2167761 () Bool)

(assert (=> b!1753554 m!2167761))

(assert (=> b!1753559 m!2166283))

(assert (=> b!1753559 m!2167757))

(assert (=> b!1753559 m!2167757))

(assert (=> b!1753559 m!2167761))

(assert (=> b!1752490 d!535619))

(declare-fun b!1753587 () Bool)

(declare-fun e!1122390 () Regex!4773)

(assert (=> b!1753587 (= e!1122390 (ite (= (head!4042 lt!677061) (c!285664 (regex!3445 rule!422))) EmptyExpr!4773 EmptyLang!4773))))

(declare-fun b!1753588 () Bool)

(declare-fun e!1122394 () Regex!4773)

(assert (=> b!1753588 (= e!1122394 e!1122390)))

(declare-fun c!285909 () Bool)

(assert (=> b!1753588 (= c!285909 ((_ is ElementMatch!4773) (regex!3445 rule!422)))))

(declare-fun bm!110461 () Bool)

(declare-fun call!110466 () Regex!4773)

(declare-fun call!110467 () Regex!4773)

(assert (=> bm!110461 (= call!110466 call!110467)))

(declare-fun b!1753589 () Bool)

(declare-fun e!1122391 () Regex!4773)

(declare-fun call!110468 () Regex!4773)

(declare-fun call!110469 () Regex!4773)

(assert (=> b!1753589 (= e!1122391 (Union!4773 call!110468 call!110469))))

(declare-fun bm!110462 () Bool)

(declare-fun c!285911 () Bool)

(assert (=> bm!110462 (= call!110468 (derivativeStep!1215 (ite c!285911 (regOne!10059 (regex!3445 rule!422)) (regOne!10058 (regex!3445 rule!422))) (head!4042 lt!677061)))))

(declare-fun b!1753590 () Bool)

(declare-fun e!1122393 () Regex!4773)

(assert (=> b!1753590 (= e!1122393 (Concat!8309 call!110467 (regex!3445 rule!422)))))

(declare-fun b!1753591 () Bool)

(assert (=> b!1753591 (= e!1122394 EmptyLang!4773)))

(declare-fun b!1753592 () Bool)

(declare-fun e!1122392 () Regex!4773)

(assert (=> b!1753592 (= e!1122392 (Union!4773 (Concat!8309 call!110466 (regTwo!10058 (regex!3445 rule!422))) EmptyLang!4773))))

(declare-fun b!1753593 () Bool)

(assert (=> b!1753593 (= e!1122392 (Union!4773 (Concat!8309 call!110468 (regTwo!10058 (regex!3445 rule!422))) call!110466))))

(declare-fun b!1753594 () Bool)

(declare-fun c!285908 () Bool)

(assert (=> b!1753594 (= c!285908 (nullable!1446 (regOne!10058 (regex!3445 rule!422))))))

(assert (=> b!1753594 (= e!1122393 e!1122392)))

(declare-fun b!1753595 () Bool)

(assert (=> b!1753595 (= c!285911 ((_ is Union!4773) (regex!3445 rule!422)))))

(assert (=> b!1753595 (= e!1122390 e!1122391)))

(declare-fun d!535621 () Bool)

(declare-fun lt!677441 () Regex!4773)

(assert (=> d!535621 (validRegex!1920 lt!677441)))

(assert (=> d!535621 (= lt!677441 e!1122394)))

(declare-fun c!285907 () Bool)

(assert (=> d!535621 (= c!285907 (or ((_ is EmptyExpr!4773) (regex!3445 rule!422)) ((_ is EmptyLang!4773) (regex!3445 rule!422))))))

(assert (=> d!535621 (validRegex!1920 (regex!3445 rule!422))))

(assert (=> d!535621 (= (derivativeStep!1215 (regex!3445 rule!422) (head!4042 lt!677061)) lt!677441)))

(declare-fun b!1753596 () Bool)

(assert (=> b!1753596 (= e!1122391 e!1122393)))

(declare-fun c!285910 () Bool)

(assert (=> b!1753596 (= c!285910 ((_ is Star!4773) (regex!3445 rule!422)))))

(declare-fun bm!110463 () Bool)

(assert (=> bm!110463 (= call!110469 (derivativeStep!1215 (ite c!285911 (regTwo!10059 (regex!3445 rule!422)) (ite c!285910 (reg!5102 (regex!3445 rule!422)) (ite c!285908 (regTwo!10058 (regex!3445 rule!422)) (regOne!10058 (regex!3445 rule!422))))) (head!4042 lt!677061)))))

(declare-fun bm!110464 () Bool)

(assert (=> bm!110464 (= call!110467 call!110469)))

(assert (= (and d!535621 c!285907) b!1753591))

(assert (= (and d!535621 (not c!285907)) b!1753588))

(assert (= (and b!1753588 c!285909) b!1753587))

(assert (= (and b!1753588 (not c!285909)) b!1753595))

(assert (= (and b!1753595 c!285911) b!1753589))

(assert (= (and b!1753595 (not c!285911)) b!1753596))

(assert (= (and b!1753596 c!285910) b!1753590))

(assert (= (and b!1753596 (not c!285910)) b!1753594))

(assert (= (and b!1753594 c!285908) b!1753593))

(assert (= (and b!1753594 (not c!285908)) b!1753592))

(assert (= (or b!1753593 b!1753592) bm!110461))

(assert (= (or b!1753590 bm!110461) bm!110464))

(assert (= (or b!1753589 bm!110464) bm!110463))

(assert (= (or b!1753589 b!1753593) bm!110462))

(assert (=> bm!110462 m!2166279))

(declare-fun m!2167763 () Bool)

(assert (=> bm!110462 m!2167763))

(declare-fun m!2167765 () Bool)

(assert (=> b!1753594 m!2167765))

(declare-fun m!2167767 () Bool)

(assert (=> d!535621 m!2167767))

(assert (=> d!535621 m!2166275))

(assert (=> bm!110463 m!2166279))

(declare-fun m!2167769 () Bool)

(assert (=> bm!110463 m!2167769))

(assert (=> b!1752490 d!535621))

(declare-fun d!535623 () Bool)

(assert (=> d!535623 (= (head!4042 lt!677061) (h!24687 lt!677061))))

(assert (=> b!1752490 d!535623))

(declare-fun d!535625 () Bool)

(assert (=> d!535625 (= (tail!2617 lt!677061) (t!163097 lt!677061))))

(assert (=> b!1752490 d!535625))

(declare-fun d!535627 () Bool)

(declare-fun nullableFct!331 (Regex!4773) Bool)

(assert (=> d!535627 (= (nullable!1446 (regex!3445 rule!422)) (nullableFct!331 (regex!3445 rule!422)))))

(declare-fun bs!403656 () Bool)

(assert (= bs!403656 d!535627))

(declare-fun m!2167771 () Bool)

(assert (=> bs!403656 m!2167771))

(assert (=> b!1752500 d!535627))

(declare-fun d!535629 () Bool)

(assert (=> d!535629 (= (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (isBalanced!2000 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))))

(declare-fun bs!403657 () Bool)

(assert (= bs!403657 d!535629))

(declare-fun m!2167773 () Bool)

(assert (=> bs!403657 m!2167773))

(assert (=> tb!105175 d!535629))

(assert (=> b!1752626 d!535159))

(assert (=> b!1752626 d!535269))

(assert (=> b!1752626 d!535169))

(declare-fun d!535631 () Bool)

(assert (=> d!535631 (= (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))) (v!25359 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> b!1752626 d!535631))

(declare-fun b!1753597 () Bool)

(declare-fun e!1122397 () Bool)

(declare-fun lt!677442 () Bool)

(declare-fun call!110470 () Bool)

(assert (=> b!1753597 (= e!1122397 (= lt!677442 call!110470))))

(declare-fun d!535633 () Bool)

(assert (=> d!535633 e!1122397))

(declare-fun c!285912 () Bool)

(assert (=> d!535633 (= c!285912 ((_ is EmptyExpr!4773) (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))))

(declare-fun e!1122399 () Bool)

(assert (=> d!535633 (= lt!677442 e!1122399)))

(declare-fun c!285914 () Bool)

(assert (=> d!535633 (= c!285914 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(assert (=> d!535633 (validRegex!1920 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))

(assert (=> d!535633 (= (matchR!2246 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))) (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) lt!677442)))

(declare-fun b!1753598 () Bool)

(declare-fun res!788869 () Bool)

(declare-fun e!1122400 () Bool)

(assert (=> b!1753598 (=> (not res!788869) (not e!1122400))))

(assert (=> b!1753598 (= res!788869 (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun b!1753599 () Bool)

(declare-fun e!1122396 () Bool)

(assert (=> b!1753599 (= e!1122397 e!1122396)))

(declare-fun c!285913 () Bool)

(assert (=> b!1753599 (= c!285913 ((_ is EmptyLang!4773) (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))))

(declare-fun b!1753600 () Bool)

(declare-fun res!788868 () Bool)

(declare-fun e!1122398 () Bool)

(assert (=> b!1753600 (=> res!788868 e!1122398)))

(assert (=> b!1753600 (= res!788868 e!1122400)))

(declare-fun res!788872 () Bool)

(assert (=> b!1753600 (=> (not res!788872) (not e!1122400))))

(assert (=> b!1753600 (= res!788872 lt!677442)))

(declare-fun b!1753601 () Bool)

(declare-fun e!1122401 () Bool)

(assert (=> b!1753601 (= e!1122398 e!1122401)))

(declare-fun res!788874 () Bool)

(assert (=> b!1753601 (=> (not res!788874) (not e!1122401))))

(assert (=> b!1753601 (= res!788874 (not lt!677442))))

(declare-fun b!1753602 () Bool)

(assert (=> b!1753602 (= e!1122396 (not lt!677442))))

(declare-fun b!1753603 () Bool)

(declare-fun res!788871 () Bool)

(declare-fun e!1122395 () Bool)

(assert (=> b!1753603 (=> res!788871 e!1122395)))

(assert (=> b!1753603 (= res!788871 (not (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun b!1753604 () Bool)

(assert (=> b!1753604 (= e!1122400 (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) (c!285664 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))))

(declare-fun b!1753605 () Bool)

(assert (=> b!1753605 (= e!1122399 (matchR!2246 (derivativeStep!1215 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun b!1753606 () Bool)

(assert (=> b!1753606 (= e!1122401 e!1122395)))

(declare-fun res!788867 () Bool)

(assert (=> b!1753606 (=> res!788867 e!1122395)))

(assert (=> b!1753606 (= res!788867 call!110470)))

(declare-fun b!1753607 () Bool)

(assert (=> b!1753607 (= e!1122399 (nullable!1446 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))))

(declare-fun b!1753608 () Bool)

(declare-fun res!788873 () Bool)

(assert (=> b!1753608 (=> res!788873 e!1122398)))

(assert (=> b!1753608 (= res!788873 (not ((_ is ElementMatch!4773) (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))))

(assert (=> b!1753608 (= e!1122396 e!1122398)))

(declare-fun bm!110465 () Bool)

(assert (=> bm!110465 (= call!110470 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(declare-fun b!1753609 () Bool)

(declare-fun res!788870 () Bool)

(assert (=> b!1753609 (=> (not res!788870) (not e!1122400))))

(assert (=> b!1753609 (= res!788870 (not call!110470))))

(declare-fun b!1753610 () Bool)

(assert (=> b!1753610 (= e!1122395 (not (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) (c!285664 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))))))

(assert (= (and d!535633 c!285914) b!1753607))

(assert (= (and d!535633 (not c!285914)) b!1753605))

(assert (= (and d!535633 c!285912) b!1753597))

(assert (= (and d!535633 (not c!285912)) b!1753599))

(assert (= (and b!1753599 c!285913) b!1753602))

(assert (= (and b!1753599 (not c!285913)) b!1753608))

(assert (= (and b!1753608 (not res!788873)) b!1753600))

(assert (= (and b!1753600 res!788872) b!1753609))

(assert (= (and b!1753609 res!788870) b!1753598))

(assert (= (and b!1753598 res!788869) b!1753604))

(assert (= (and b!1753600 (not res!788868)) b!1753601))

(assert (= (and b!1753601 res!788874) b!1753606))

(assert (= (and b!1753606 (not res!788867)) b!1753603))

(assert (= (and b!1753603 (not res!788871)) b!1753610))

(assert (= (or b!1753597 b!1753606 b!1753609) bm!110465))

(assert (=> d!535633 m!2166125))

(assert (=> d!535633 m!2166915))

(declare-fun m!2167775 () Bool)

(assert (=> d!535633 m!2167775))

(declare-fun m!2167777 () Bool)

(assert (=> b!1753607 m!2167777))

(assert (=> b!1753604 m!2166125))

(assert (=> b!1753604 m!2166921))

(assert (=> b!1753610 m!2166125))

(assert (=> b!1753610 m!2166921))

(assert (=> bm!110465 m!2166125))

(assert (=> bm!110465 m!2166915))

(assert (=> b!1753605 m!2166125))

(assert (=> b!1753605 m!2166921))

(assert (=> b!1753605 m!2166921))

(declare-fun m!2167779 () Bool)

(assert (=> b!1753605 m!2167779))

(assert (=> b!1753605 m!2166125))

(assert (=> b!1753605 m!2166925))

(assert (=> b!1753605 m!2167779))

(assert (=> b!1753605 m!2166925))

(declare-fun m!2167781 () Bool)

(assert (=> b!1753605 m!2167781))

(assert (=> b!1753598 m!2166125))

(assert (=> b!1753598 m!2166925))

(assert (=> b!1753598 m!2166925))

(assert (=> b!1753598 m!2166929))

(assert (=> b!1753603 m!2166125))

(assert (=> b!1753603 m!2166925))

(assert (=> b!1753603 m!2166925))

(assert (=> b!1753603 m!2166929))

(assert (=> b!1752626 d!535633))

(declare-fun d!535635 () Bool)

(assert (=> d!535635 (= (isEmpty!12156 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))) ((_ is Nil!19286) (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))

(assert (=> d!535141 d!535635))

(assert (=> b!1752942 d!535601))

(declare-fun d!535637 () Bool)

(assert (=> d!535637 (= (isEmpty!12161 (maxPrefixOneRule!999 thiss!24550 (rule!5457 lt!677286) lt!677287)) (not ((_ is Some!3911) (maxPrefixOneRule!999 thiss!24550 (rule!5457 lt!677286) lt!677287))))))

(assert (=> b!1752942 d!535637))

(declare-fun d!535639 () Bool)

(assert (=> d!535639 (not (matchR!2246 (regex!3445 (rule!5457 lt!677286)) lt!677285))))

(declare-fun lt!677445 () Unit!33441)

(declare-fun choose!10830 (LexerInterface!3074 Rule!6690 List!19356 List!19356) Unit!33441)

(assert (=> d!535639 (= lt!677445 (choose!10830 thiss!24550 (rule!5457 lt!677286) lt!677285 (++!5269 lt!677061 suffix!1421)))))

(assert (=> d!535639 (isPrefix!1685 lt!677285 (++!5269 lt!677061 suffix!1421))))

(assert (=> d!535639 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!301 thiss!24550 (rule!5457 lt!677286) lt!677285 (++!5269 lt!677061 suffix!1421)) lt!677445)))

(declare-fun bs!403658 () Bool)

(assert (= bs!403658 d!535639))

(assert (=> bs!403658 m!2166903))

(assert (=> bs!403658 m!2166179))

(declare-fun m!2167783 () Bool)

(assert (=> bs!403658 m!2167783))

(assert (=> bs!403658 m!2166179))

(declare-fun m!2167785 () Bool)

(assert (=> bs!403658 m!2167785))

(assert (=> b!1752942 d!535639))

(declare-fun d!535641 () Bool)

(assert (=> d!535641 (isEmpty!12161 (maxPrefixOneRule!999 thiss!24550 (rule!5457 lt!677286) lt!677287))))

(declare-fun lt!677448 () Unit!33441)

(declare-fun choose!10831 (LexerInterface!3074 Rule!6690 List!19357 List!19356) Unit!33441)

(assert (=> d!535641 (= lt!677448 (choose!10831 thiss!24550 (rule!5457 lt!677286) rules!3447 lt!677287))))

(assert (=> d!535641 (not (isEmpty!12157 rules!3447))))

(assert (=> d!535641 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!305 thiss!24550 (rule!5457 lt!677286) rules!3447 lt!677287) lt!677448)))

(declare-fun bs!403659 () Bool)

(assert (= bs!403659 d!535641))

(assert (=> bs!403659 m!2166905))

(assert (=> bs!403659 m!2166905))

(assert (=> bs!403659 m!2166907))

(declare-fun m!2167787 () Bool)

(assert (=> bs!403659 m!2167787))

(assert (=> bs!403659 m!2166219))

(assert (=> b!1752942 d!535641))

(assert (=> b!1752942 d!535183))

(declare-fun b!1753709 () Bool)

(declare-fun res!788941 () Bool)

(declare-fun e!1122457 () Bool)

(assert (=> b!1753709 (=> (not res!788941) (not e!1122457))))

(declare-fun lt!677467 () Option!3912)

(assert (=> b!1753709 (= res!788941 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677467)))) (_2!10857 (get!5853 lt!677467))) lt!677287))))

(declare-fun b!1753710 () Bool)

(declare-fun e!1122458 () Bool)

(declare-datatypes ((tuple2!18920 0))(
  ( (tuple2!18921 (_1!10862 List!19356) (_2!10862 List!19356)) )
))
(declare-fun findLongestMatchInner!433 (Regex!4773 List!19356 Int List!19356 List!19356 Int) tuple2!18920)

(assert (=> b!1753710 (= e!1122458 (matchR!2246 (regex!3445 (rule!5457 lt!677286)) (_1!10862 (findLongestMatchInner!433 (regex!3445 (rule!5457 lt!677286)) Nil!19286 (size!15323 Nil!19286) lt!677287 lt!677287 (size!15323 lt!677287)))))))

(declare-fun b!1753711 () Bool)

(declare-fun res!788937 () Bool)

(assert (=> b!1753711 (=> (not res!788937) (not e!1122457))))

(assert (=> b!1753711 (= res!788937 (< (size!15323 (_2!10857 (get!5853 lt!677467))) (size!15323 lt!677287)))))

(declare-fun b!1753712 () Bool)

(declare-fun e!1122456 () Bool)

(assert (=> b!1753712 (= e!1122456 e!1122457)))

(declare-fun res!788940 () Bool)

(assert (=> b!1753712 (=> (not res!788940) (not e!1122457))))

(assert (=> b!1753712 (= res!788940 (matchR!2246 (regex!3445 (rule!5457 lt!677286)) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677467))))))))

(declare-fun b!1753713 () Bool)

(assert (=> b!1753713 (= e!1122457 (= (size!15320 (_1!10857 (get!5853 lt!677467))) (size!15323 (originalCharacters!4259 (_1!10857 (get!5853 lt!677467))))))))

(declare-fun d!535643 () Bool)

(assert (=> d!535643 e!1122456))

(declare-fun res!788939 () Bool)

(assert (=> d!535643 (=> res!788939 e!1122456)))

(assert (=> d!535643 (= res!788939 (isEmpty!12161 lt!677467))))

(declare-fun e!1122455 () Option!3912)

(assert (=> d!535643 (= lt!677467 e!1122455)))

(declare-fun c!285934 () Bool)

(declare-fun lt!677470 () tuple2!18920)

(assert (=> d!535643 (= c!285934 (isEmpty!12156 (_1!10862 lt!677470)))))

(declare-fun findLongestMatch!360 (Regex!4773 List!19356) tuple2!18920)

(assert (=> d!535643 (= lt!677470 (findLongestMatch!360 (regex!3445 (rule!5457 lt!677286)) lt!677287))))

(assert (=> d!535643 (ruleValid!943 thiss!24550 (rule!5457 lt!677286))))

(assert (=> d!535643 (= (maxPrefixOneRule!999 thiss!24550 (rule!5457 lt!677286) lt!677287) lt!677467)))

(declare-fun b!1753714 () Bool)

(declare-fun res!788938 () Bool)

(assert (=> b!1753714 (=> (not res!788938) (not e!1122457))))

(assert (=> b!1753714 (= res!788938 (= (value!107855 (_1!10857 (get!5853 lt!677467))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677467)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677467)))))))))

(declare-fun b!1753715 () Bool)

(assert (=> b!1753715 (= e!1122455 None!3911)))

(declare-fun b!1753716 () Bool)

(assert (=> b!1753716 (= e!1122455 (Some!3911 (tuple2!18911 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 lt!677286)) (seqFromList!2414 (_1!10862 lt!677470))) (rule!5457 lt!677286) (size!15321 (seqFromList!2414 (_1!10862 lt!677470))) (_1!10862 lt!677470)) (_2!10862 lt!677470))))))

(declare-fun lt!677468 () Unit!33441)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!417 (Regex!4773 List!19356) Unit!33441)

(assert (=> b!1753716 (= lt!677468 (longestMatchIsAcceptedByMatchOrIsEmpty!417 (regex!3445 (rule!5457 lt!677286)) lt!677287))))

(declare-fun res!788936 () Bool)

(assert (=> b!1753716 (= res!788936 (isEmpty!12156 (_1!10862 (findLongestMatchInner!433 (regex!3445 (rule!5457 lt!677286)) Nil!19286 (size!15323 Nil!19286) lt!677287 lt!677287 (size!15323 lt!677287)))))))

(assert (=> b!1753716 (=> res!788936 e!1122458)))

(assert (=> b!1753716 e!1122458))

(declare-fun lt!677469 () Unit!33441)

(assert (=> b!1753716 (= lt!677469 lt!677468)))

(declare-fun lt!677471 () Unit!33441)

(assert (=> b!1753716 (= lt!677471 (lemmaSemiInverse!583 (transformation!3445 (rule!5457 lt!677286)) (seqFromList!2414 (_1!10862 lt!677470))))))

(declare-fun b!1753717 () Bool)

(declare-fun res!788935 () Bool)

(assert (=> b!1753717 (=> (not res!788935) (not e!1122457))))

(assert (=> b!1753717 (= res!788935 (= (rule!5457 (_1!10857 (get!5853 lt!677467))) (rule!5457 lt!677286)))))

(assert (= (and d!535643 c!285934) b!1753715))

(assert (= (and d!535643 (not c!285934)) b!1753716))

(assert (= (and b!1753716 (not res!788936)) b!1753710))

(assert (= (and d!535643 (not res!788939)) b!1753712))

(assert (= (and b!1753712 res!788940) b!1753709))

(assert (= (and b!1753709 res!788941) b!1753711))

(assert (= (and b!1753711 res!788937) b!1753717))

(assert (= (and b!1753717 res!788935) b!1753714))

(assert (= (and b!1753714 res!788938) b!1753713))

(declare-fun m!2167895 () Bool)

(assert (=> b!1753717 m!2167895))

(declare-fun m!2167897 () Bool)

(assert (=> b!1753716 m!2167897))

(declare-fun m!2167899 () Bool)

(assert (=> b!1753716 m!2167899))

(assert (=> b!1753716 m!2167897))

(declare-fun m!2167901 () Bool)

(assert (=> b!1753716 m!2167901))

(declare-fun m!2167903 () Bool)

(assert (=> b!1753716 m!2167903))

(declare-fun m!2167905 () Bool)

(assert (=> b!1753716 m!2167905))

(declare-fun m!2167907 () Bool)

(assert (=> b!1753716 m!2167907))

(assert (=> b!1753716 m!2167905))

(declare-fun m!2167909 () Bool)

(assert (=> b!1753716 m!2167909))

(assert (=> b!1753716 m!2167901))

(assert (=> b!1753716 m!2167905))

(declare-fun m!2167915 () Bool)

(assert (=> b!1753716 m!2167915))

(assert (=> b!1753716 m!2167905))

(declare-fun m!2167919 () Bool)

(assert (=> b!1753716 m!2167919))

(assert (=> b!1753710 m!2167897))

(assert (=> b!1753710 m!2167901))

(assert (=> b!1753710 m!2167897))

(assert (=> b!1753710 m!2167901))

(assert (=> b!1753710 m!2167903))

(declare-fun m!2167925 () Bool)

(assert (=> b!1753710 m!2167925))

(assert (=> b!1753713 m!2167895))

(declare-fun m!2167927 () Bool)

(assert (=> b!1753713 m!2167927))

(assert (=> b!1753709 m!2167895))

(declare-fun m!2167929 () Bool)

(assert (=> b!1753709 m!2167929))

(assert (=> b!1753709 m!2167929))

(declare-fun m!2167931 () Bool)

(assert (=> b!1753709 m!2167931))

(assert (=> b!1753709 m!2167931))

(declare-fun m!2167933 () Bool)

(assert (=> b!1753709 m!2167933))

(declare-fun m!2167935 () Bool)

(assert (=> d!535643 m!2167935))

(declare-fun m!2167937 () Bool)

(assert (=> d!535643 m!2167937))

(declare-fun m!2167939 () Bool)

(assert (=> d!535643 m!2167939))

(declare-fun m!2167941 () Bool)

(assert (=> d!535643 m!2167941))

(assert (=> b!1753712 m!2167895))

(assert (=> b!1753712 m!2167929))

(assert (=> b!1753712 m!2167929))

(assert (=> b!1753712 m!2167931))

(assert (=> b!1753712 m!2167931))

(declare-fun m!2167943 () Bool)

(assert (=> b!1753712 m!2167943))

(assert (=> b!1753711 m!2167895))

(declare-fun m!2167945 () Bool)

(assert (=> b!1753711 m!2167945))

(assert (=> b!1753711 m!2167901))

(assert (=> b!1753714 m!2167895))

(declare-fun m!2167947 () Bool)

(assert (=> b!1753714 m!2167947))

(assert (=> b!1753714 m!2167947))

(declare-fun m!2167949 () Bool)

(assert (=> b!1753714 m!2167949))

(assert (=> b!1752942 d!535643))

(declare-fun b!1753730 () Bool)

(declare-fun e!1122467 () Bool)

(declare-fun lt!677473 () Bool)

(declare-fun call!110481 () Bool)

(assert (=> b!1753730 (= e!1122467 (= lt!677473 call!110481))))

(declare-fun d!535703 () Bool)

(assert (=> d!535703 e!1122467))

(declare-fun c!285941 () Bool)

(assert (=> d!535703 (= c!285941 ((_ is EmptyExpr!4773) (regex!3445 (rule!5457 lt!677286))))))

(declare-fun e!1122469 () Bool)

(assert (=> d!535703 (= lt!677473 e!1122469)))

(declare-fun c!285943 () Bool)

(assert (=> d!535703 (= c!285943 (isEmpty!12156 lt!677285))))

(assert (=> d!535703 (validRegex!1920 (regex!3445 (rule!5457 lt!677286)))))

(assert (=> d!535703 (= (matchR!2246 (regex!3445 (rule!5457 lt!677286)) lt!677285) lt!677473)))

(declare-fun b!1753731 () Bool)

(declare-fun res!788944 () Bool)

(declare-fun e!1122470 () Bool)

(assert (=> b!1753731 (=> (not res!788944) (not e!1122470))))

(assert (=> b!1753731 (= res!788944 (isEmpty!12156 (tail!2617 lt!677285)))))

(declare-fun b!1753732 () Bool)

(declare-fun e!1122466 () Bool)

(assert (=> b!1753732 (= e!1122467 e!1122466)))

(declare-fun c!285942 () Bool)

(assert (=> b!1753732 (= c!285942 ((_ is EmptyLang!4773) (regex!3445 (rule!5457 lt!677286))))))

(declare-fun b!1753733 () Bool)

(declare-fun res!788943 () Bool)

(declare-fun e!1122468 () Bool)

(assert (=> b!1753733 (=> res!788943 e!1122468)))

(assert (=> b!1753733 (= res!788943 e!1122470)))

(declare-fun res!788947 () Bool)

(assert (=> b!1753733 (=> (not res!788947) (not e!1122470))))

(assert (=> b!1753733 (= res!788947 lt!677473)))

(declare-fun b!1753734 () Bool)

(declare-fun e!1122471 () Bool)

(assert (=> b!1753734 (= e!1122468 e!1122471)))

(declare-fun res!788949 () Bool)

(assert (=> b!1753734 (=> (not res!788949) (not e!1122471))))

(assert (=> b!1753734 (= res!788949 (not lt!677473))))

(declare-fun b!1753735 () Bool)

(assert (=> b!1753735 (= e!1122466 (not lt!677473))))

(declare-fun b!1753736 () Bool)

(declare-fun res!788946 () Bool)

(declare-fun e!1122465 () Bool)

(assert (=> b!1753736 (=> res!788946 e!1122465)))

(assert (=> b!1753736 (= res!788946 (not (isEmpty!12156 (tail!2617 lt!677285))))))

(declare-fun b!1753737 () Bool)

(assert (=> b!1753737 (= e!1122470 (= (head!4042 lt!677285) (c!285664 (regex!3445 (rule!5457 lt!677286)))))))

(declare-fun b!1753738 () Bool)

(assert (=> b!1753738 (= e!1122469 (matchR!2246 (derivativeStep!1215 (regex!3445 (rule!5457 lt!677286)) (head!4042 lt!677285)) (tail!2617 lt!677285)))))

(declare-fun b!1753739 () Bool)

(assert (=> b!1753739 (= e!1122471 e!1122465)))

(declare-fun res!788942 () Bool)

(assert (=> b!1753739 (=> res!788942 e!1122465)))

(assert (=> b!1753739 (= res!788942 call!110481)))

(declare-fun b!1753740 () Bool)

(assert (=> b!1753740 (= e!1122469 (nullable!1446 (regex!3445 (rule!5457 lt!677286))))))

(declare-fun b!1753741 () Bool)

(declare-fun res!788948 () Bool)

(assert (=> b!1753741 (=> res!788948 e!1122468)))

(assert (=> b!1753741 (= res!788948 (not ((_ is ElementMatch!4773) (regex!3445 (rule!5457 lt!677286)))))))

(assert (=> b!1753741 (= e!1122466 e!1122468)))

(declare-fun bm!110476 () Bool)

(assert (=> bm!110476 (= call!110481 (isEmpty!12156 lt!677285))))

(declare-fun b!1753742 () Bool)

(declare-fun res!788945 () Bool)

(assert (=> b!1753742 (=> (not res!788945) (not e!1122470))))

(assert (=> b!1753742 (= res!788945 (not call!110481))))

(declare-fun b!1753743 () Bool)

(assert (=> b!1753743 (= e!1122465 (not (= (head!4042 lt!677285) (c!285664 (regex!3445 (rule!5457 lt!677286))))))))

(assert (= (and d!535703 c!285943) b!1753740))

(assert (= (and d!535703 (not c!285943)) b!1753738))

(assert (= (and d!535703 c!285941) b!1753730))

(assert (= (and d!535703 (not c!285941)) b!1753732))

(assert (= (and b!1753732 c!285942) b!1753735))

(assert (= (and b!1753732 (not c!285942)) b!1753741))

(assert (= (and b!1753741 (not res!788948)) b!1753733))

(assert (= (and b!1753733 res!788947) b!1753742))

(assert (= (and b!1753742 res!788945) b!1753731))

(assert (= (and b!1753731 res!788944) b!1753737))

(assert (= (and b!1753733 (not res!788943)) b!1753734))

(assert (= (and b!1753734 res!788949) b!1753739))

(assert (= (and b!1753739 (not res!788942)) b!1753736))

(assert (= (and b!1753736 (not res!788946)) b!1753743))

(assert (= (or b!1753730 b!1753739 b!1753742) bm!110476))

(declare-fun m!2167951 () Bool)

(assert (=> d!535703 m!2167951))

(declare-fun m!2167953 () Bool)

(assert (=> d!535703 m!2167953))

(declare-fun m!2167955 () Bool)

(assert (=> b!1753740 m!2167955))

(declare-fun m!2167957 () Bool)

(assert (=> b!1753737 m!2167957))

(assert (=> b!1753743 m!2167957))

(assert (=> bm!110476 m!2167951))

(assert (=> b!1753738 m!2167957))

(assert (=> b!1753738 m!2167957))

(declare-fun m!2167959 () Bool)

(assert (=> b!1753738 m!2167959))

(declare-fun m!2167961 () Bool)

(assert (=> b!1753738 m!2167961))

(assert (=> b!1753738 m!2167959))

(assert (=> b!1753738 m!2167961))

(declare-fun m!2167963 () Bool)

(assert (=> b!1753738 m!2167963))

(assert (=> b!1753731 m!2167961))

(assert (=> b!1753731 m!2167961))

(declare-fun m!2167965 () Bool)

(assert (=> b!1753731 m!2167965))

(assert (=> b!1753736 m!2167961))

(assert (=> b!1753736 m!2167961))

(assert (=> b!1753736 m!2167965))

(assert (=> b!1752942 d!535703))

(assert (=> b!1752942 d!535509))

(declare-fun d!535705 () Bool)

(assert (=> d!535705 (= (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) ((_ is Nil!19286) (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(assert (=> b!1752951 d!535705))

(declare-fun d!535707 () Bool)

(assert (=> d!535707 (= (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) (t!163097 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(assert (=> b!1752951 d!535707))

(declare-fun b!1753753 () Bool)

(declare-fun e!1122476 () List!19356)

(declare-fun e!1122477 () List!19356)

(assert (=> b!1753753 (= e!1122476 e!1122477)))

(declare-fun c!285949 () Bool)

(assert (=> b!1753753 (= c!285949 ((_ is Leaf!9358) (c!285665 (charsOf!2094 token!523))))))

(declare-fun b!1753754 () Bool)

(declare-fun list!7818 (IArray!12835) List!19356)

(assert (=> b!1753754 (= e!1122477 (list!7818 (xs!9291 (c!285665 (charsOf!2094 token!523)))))))

(declare-fun b!1753752 () Bool)

(assert (=> b!1753752 (= e!1122476 Nil!19286)))

(declare-fun b!1753755 () Bool)

(assert (=> b!1753755 (= e!1122477 (++!5269 (list!7814 (left!15439 (c!285665 (charsOf!2094 token!523)))) (list!7814 (right!15769 (c!285665 (charsOf!2094 token!523))))))))

(declare-fun d!535709 () Bool)

(declare-fun c!285948 () Bool)

(assert (=> d!535709 (= c!285948 ((_ is Empty!6415) (c!285665 (charsOf!2094 token!523))))))

(assert (=> d!535709 (= (list!7814 (c!285665 (charsOf!2094 token!523))) e!1122476)))

(assert (= (and d!535709 c!285948) b!1753752))

(assert (= (and d!535709 (not c!285948)) b!1753753))

(assert (= (and b!1753753 c!285949) b!1753754))

(assert (= (and b!1753753 (not c!285949)) b!1753755))

(declare-fun m!2167967 () Bool)

(assert (=> b!1753754 m!2167967))

(declare-fun m!2167969 () Bool)

(assert (=> b!1753755 m!2167969))

(declare-fun m!2167971 () Bool)

(assert (=> b!1753755 m!2167971))

(assert (=> b!1753755 m!2167969))

(assert (=> b!1753755 m!2167971))

(declare-fun m!2167973 () Bool)

(assert (=> b!1753755 m!2167973))

(assert (=> d!535283 d!535709))

(declare-fun d!535711 () Bool)

(declare-fun lt!677474 () Int)

(assert (=> d!535711 (>= lt!677474 0)))

(declare-fun e!1122478 () Int)

(assert (=> d!535711 (= lt!677474 e!1122478)))

(declare-fun c!285950 () Bool)

(assert (=> d!535711 (= c!285950 ((_ is Nil!19286) lt!677220))))

(assert (=> d!535711 (= (size!15323 lt!677220) lt!677474)))

(declare-fun b!1753756 () Bool)

(assert (=> b!1753756 (= e!1122478 0)))

(declare-fun b!1753757 () Bool)

(assert (=> b!1753757 (= e!1122478 (+ 1 (size!15323 (t!163097 lt!677220))))))

(assert (= (and d!535711 c!285950) b!1753756))

(assert (= (and d!535711 (not c!285950)) b!1753757))

(declare-fun m!2167975 () Bool)

(assert (=> b!1753757 m!2167975))

(assert (=> b!1752721 d!535711))

(assert (=> b!1752721 d!535501))

(declare-fun d!535713 () Bool)

(declare-fun lt!677475 () Int)

(assert (=> d!535713 (>= lt!677475 0)))

(declare-fun e!1122479 () Int)

(assert (=> d!535713 (= lt!677475 e!1122479)))

(declare-fun c!285951 () Bool)

(assert (=> d!535713 (= c!285951 ((_ is Nil!19286) suffix!1421))))

(assert (=> d!535713 (= (size!15323 suffix!1421) lt!677475)))

(declare-fun b!1753758 () Bool)

(assert (=> b!1753758 (= e!1122479 0)))

(declare-fun b!1753759 () Bool)

(assert (=> b!1753759 (= e!1122479 (+ 1 (size!15323 (t!163097 suffix!1421))))))

(assert (= (and d!535713 c!285951) b!1753758))

(assert (= (and d!535713 (not c!285951)) b!1753759))

(declare-fun m!2167977 () Bool)

(assert (=> b!1753759 m!2167977))

(assert (=> b!1752721 d!535713))

(declare-fun d!535715 () Bool)

(declare-fun c!285952 () Bool)

(assert (=> d!535715 (= c!285952 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))))))

(declare-fun e!1122480 () Bool)

(assert (=> d!535715 (= (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))) e!1122480)))

(declare-fun b!1753760 () Bool)

(assert (=> b!1753760 (= e!1122480 (inv!25034 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))))))

(declare-fun b!1753761 () Bool)

(declare-fun e!1122481 () Bool)

(assert (=> b!1753761 (= e!1122480 e!1122481)))

(declare-fun res!788950 () Bool)

(assert (=> b!1753761 (= res!788950 (not ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))))))))

(assert (=> b!1753761 (=> res!788950 e!1122481)))

(declare-fun b!1753762 () Bool)

(assert (=> b!1753762 (= e!1122481 (inv!25035 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))))))

(assert (= (and d!535715 c!285952) b!1753760))

(assert (= (and d!535715 (not c!285952)) b!1753761))

(assert (= (and b!1753761 (not res!788950)) b!1753762))

(declare-fun m!2167979 () Bool)

(assert (=> b!1753760 m!2167979))

(declare-fun m!2167981 () Bool)

(assert (=> b!1753762 m!2167981))

(assert (=> b!1752564 d!535715))

(declare-fun b!1753763 () Bool)

(declare-fun e!1122484 () Bool)

(declare-fun lt!677476 () Bool)

(declare-fun call!110482 () Bool)

(assert (=> b!1753763 (= e!1122484 (= lt!677476 call!110482))))

(declare-fun d!535717 () Bool)

(assert (=> d!535717 e!1122484))

(declare-fun c!285953 () Bool)

(assert (=> d!535717 (= c!285953 ((_ is EmptyExpr!4773) (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))))))

(declare-fun e!1122486 () Bool)

(assert (=> d!535717 (= lt!677476 e!1122486)))

(declare-fun c!285955 () Bool)

(assert (=> d!535717 (= c!285955 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))))))

(assert (=> d!535717 (validRegex!1920 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))))

(assert (=> d!535717 (= (matchR!2246 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))) lt!677476)))

(declare-fun b!1753764 () Bool)

(declare-fun res!788953 () Bool)

(declare-fun e!1122487 () Bool)

(assert (=> b!1753764 (=> (not res!788953) (not e!1122487))))

(assert (=> b!1753764 (= res!788953 (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))))))))

(declare-fun b!1753765 () Bool)

(declare-fun e!1122483 () Bool)

(assert (=> b!1753765 (= e!1122484 e!1122483)))

(declare-fun c!285954 () Bool)

(assert (=> b!1753765 (= c!285954 ((_ is EmptyLang!4773) (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))))))

(declare-fun b!1753766 () Bool)

(declare-fun res!788952 () Bool)

(declare-fun e!1122485 () Bool)

(assert (=> b!1753766 (=> res!788952 e!1122485)))

(assert (=> b!1753766 (= res!788952 e!1122487)))

(declare-fun res!788956 () Bool)

(assert (=> b!1753766 (=> (not res!788956) (not e!1122487))))

(assert (=> b!1753766 (= res!788956 lt!677476)))

(declare-fun b!1753767 () Bool)

(declare-fun e!1122488 () Bool)

(assert (=> b!1753767 (= e!1122485 e!1122488)))

(declare-fun res!788958 () Bool)

(assert (=> b!1753767 (=> (not res!788958) (not e!1122488))))

(assert (=> b!1753767 (= res!788958 (not lt!677476))))

(declare-fun b!1753768 () Bool)

(assert (=> b!1753768 (= e!1122483 (not lt!677476))))

(declare-fun b!1753769 () Bool)

(declare-fun res!788955 () Bool)

(declare-fun e!1122482 () Bool)

(assert (=> b!1753769 (=> res!788955 e!1122482)))

(assert (=> b!1753769 (= res!788955 (not (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))))))))

(declare-fun b!1753770 () Bool)

(assert (=> b!1753770 (= e!1122487 (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))) (c!285664 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))))))

(declare-fun b!1753771 () Bool)

(assert (=> b!1753771 (= e!1122486 (matchR!2246 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))) (head!4042 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))))) (tail!2617 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))))))))

(declare-fun b!1753772 () Bool)

(assert (=> b!1753772 (= e!1122488 e!1122482)))

(declare-fun res!788951 () Bool)

(assert (=> b!1753772 (=> res!788951 e!1122482)))

(assert (=> b!1753772 (= res!788951 call!110482)))

(declare-fun b!1753773 () Bool)

(assert (=> b!1753773 (= e!1122486 (nullable!1446 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))))))

(declare-fun b!1753774 () Bool)

(declare-fun res!788957 () Bool)

(assert (=> b!1753774 (=> res!788957 e!1122485)))

(assert (=> b!1753774 (= res!788957 (not ((_ is ElementMatch!4773) (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))))))

(assert (=> b!1753774 (= e!1122483 e!1122485)))

(declare-fun bm!110477 () Bool)

(assert (=> bm!110477 (= call!110482 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))))))

(declare-fun b!1753775 () Bool)

(declare-fun res!788954 () Bool)

(assert (=> b!1753775 (=> (not res!788954) (not e!1122487))))

(assert (=> b!1753775 (= res!788954 (not call!110482))))

(declare-fun b!1753776 () Bool)

(assert (=> b!1753776 (= e!1122482 (not (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))) (c!285664 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))))))))

(assert (= (and d!535717 c!285955) b!1753773))

(assert (= (and d!535717 (not c!285955)) b!1753771))

(assert (= (and d!535717 c!285953) b!1753763))

(assert (= (and d!535717 (not c!285953)) b!1753765))

(assert (= (and b!1753765 c!285954) b!1753768))

(assert (= (and b!1753765 (not c!285954)) b!1753774))

(assert (= (and b!1753774 (not res!788957)) b!1753766))

(assert (= (and b!1753766 res!788956) b!1753775))

(assert (= (and b!1753775 res!788954) b!1753764))

(assert (= (and b!1753764 res!788953) b!1753770))

(assert (= (and b!1753766 (not res!788952)) b!1753767))

(assert (= (and b!1753767 res!788958) b!1753772))

(assert (= (and b!1753772 (not res!788951)) b!1753769))

(assert (= (and b!1753769 (not res!788955)) b!1753776))

(assert (= (or b!1753763 b!1753772 b!1753775) bm!110477))

(assert (=> d!535717 m!2166601))

(declare-fun m!2167983 () Bool)

(assert (=> d!535717 m!2167983))

(declare-fun m!2167985 () Bool)

(assert (=> d!535717 m!2167985))

(declare-fun m!2167987 () Bool)

(assert (=> b!1753773 m!2167987))

(assert (=> b!1753770 m!2166601))

(declare-fun m!2167989 () Bool)

(assert (=> b!1753770 m!2167989))

(assert (=> b!1753776 m!2166601))

(assert (=> b!1753776 m!2167989))

(assert (=> bm!110477 m!2166601))

(assert (=> bm!110477 m!2167983))

(assert (=> b!1753771 m!2166601))

(assert (=> b!1753771 m!2167989))

(assert (=> b!1753771 m!2167989))

(declare-fun m!2167991 () Bool)

(assert (=> b!1753771 m!2167991))

(assert (=> b!1753771 m!2166601))

(declare-fun m!2167993 () Bool)

(assert (=> b!1753771 m!2167993))

(assert (=> b!1753771 m!2167991))

(assert (=> b!1753771 m!2167993))

(declare-fun m!2167995 () Bool)

(assert (=> b!1753771 m!2167995))

(assert (=> b!1753764 m!2166601))

(assert (=> b!1753764 m!2167993))

(assert (=> b!1753764 m!2167993))

(declare-fun m!2167997 () Bool)

(assert (=> b!1753764 m!2167997))

(assert (=> b!1753769 m!2166601))

(assert (=> b!1753769 m!2167993))

(assert (=> b!1753769 m!2167993))

(assert (=> b!1753769 m!2167997))

(assert (=> b!1752704 d!535717))

(declare-fun d!535719 () Bool)

(assert (=> d!535719 (= (get!5853 lt!677213) (v!25358 lt!677213))))

(assert (=> b!1752704 d!535719))

(declare-fun d!535721 () Bool)

(assert (=> d!535721 (= (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))) (list!7814 (c!285665 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))))))

(declare-fun bs!403669 () Bool)

(assert (= bs!403669 d!535721))

(declare-fun m!2167999 () Bool)

(assert (=> bs!403669 m!2167999))

(assert (=> b!1752704 d!535721))

(declare-fun d!535723 () Bool)

(declare-fun lt!677477 () BalanceConc!12774)

(assert (=> d!535723 (= (list!7811 lt!677477) (originalCharacters!4259 (_1!10857 (get!5853 lt!677213))))))

(assert (=> d!535723 (= lt!677477 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))) (value!107855 (_1!10857 (get!5853 lt!677213)))))))

(assert (=> d!535723 (= (charsOf!2094 (_1!10857 (get!5853 lt!677213))) lt!677477)))

(declare-fun b_lambda!56437 () Bool)

(assert (=> (not b_lambda!56437) (not d!535723)))

(declare-fun tb!105277 () Bool)

(declare-fun t!163217 () Bool)

(assert (=> (and b!1752378 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163217) tb!105277))

(declare-fun b!1753777 () Bool)

(declare-fun e!1122489 () Bool)

(declare-fun tp!498575 () Bool)

(assert (=> b!1753777 (= e!1122489 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))) (value!107855 (_1!10857 (get!5853 lt!677213)))))) tp!498575))))

(declare-fun result!126652 () Bool)

(assert (=> tb!105277 (= result!126652 (and (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))) (value!107855 (_1!10857 (get!5853 lt!677213))))) e!1122489))))

(assert (= tb!105277 b!1753777))

(declare-fun m!2168001 () Bool)

(assert (=> b!1753777 m!2168001))

(declare-fun m!2168003 () Bool)

(assert (=> tb!105277 m!2168003))

(assert (=> d!535723 t!163217))

(declare-fun b_and!131409 () Bool)

(assert (= b_and!131393 (and (=> t!163217 result!126652) b_and!131409)))

(declare-fun tb!105279 () Bool)

(declare-fun t!163219 () Bool)

(assert (=> (and b!1752373 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163219) tb!105279))

(declare-fun result!126654 () Bool)

(assert (= result!126654 result!126652))

(assert (=> d!535723 t!163219))

(declare-fun b_and!131411 () Bool)

(assert (= b_and!131395 (and (=> t!163219 result!126654) b_and!131411)))

(declare-fun t!163221 () Bool)

(declare-fun tb!105281 () Bool)

(assert (=> (and b!1752383 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163221) tb!105281))

(declare-fun result!126656 () Bool)

(assert (= result!126656 result!126652))

(assert (=> d!535723 t!163221))

(declare-fun b_and!131413 () Bool)

(assert (= b_and!131397 (and (=> t!163221 result!126656) b_and!131413)))

(declare-fun t!163223 () Bool)

(declare-fun tb!105283 () Bool)

(assert (=> (and b!1753022 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163223) tb!105283))

(declare-fun result!126658 () Bool)

(assert (= result!126658 result!126652))

(assert (=> d!535723 t!163223))

(declare-fun b_and!131415 () Bool)

(assert (= b_and!131399 (and (=> t!163223 result!126658) b_and!131415)))

(declare-fun m!2168005 () Bool)

(assert (=> d!535723 m!2168005))

(declare-fun m!2168007 () Bool)

(assert (=> d!535723 m!2168007))

(assert (=> b!1752704 d!535723))

(declare-fun d!535725 () Bool)

(assert (=> d!535725 (= (isEmpty!12156 lt!677049) ((_ is Nil!19286) lt!677049))))

(assert (=> d!535101 d!535725))

(declare-fun b!1753819 () Bool)

(declare-fun e!1122521 () Bool)

(declare-fun call!110491 () Bool)

(assert (=> b!1753819 (= e!1122521 call!110491)))

(declare-fun b!1753820 () Bool)

(declare-fun e!1122516 () Bool)

(declare-fun e!1122519 () Bool)

(assert (=> b!1753820 (= e!1122516 e!1122519)))

(declare-fun c!285965 () Bool)

(assert (=> b!1753820 (= c!285965 ((_ is Union!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun b!1753821 () Bool)

(declare-fun e!1122518 () Bool)

(declare-fun call!110490 () Bool)

(assert (=> b!1753821 (= e!1122518 call!110490)))

(declare-fun call!110492 () Bool)

(declare-fun c!285964 () Bool)

(declare-fun bm!110485 () Bool)

(assert (=> bm!110485 (= call!110492 (validRegex!1920 (ite c!285964 (reg!5102 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (ite c!285965 (regOne!10059 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (regTwo!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046))))))))))

(declare-fun b!1753822 () Bool)

(declare-fun e!1122520 () Bool)

(assert (=> b!1753822 (= e!1122520 call!110492)))

(declare-fun b!1753823 () Bool)

(declare-fun res!788984 () Bool)

(assert (=> b!1753823 (=> (not res!788984) (not e!1122518))))

(assert (=> b!1753823 (= res!788984 call!110491)))

(assert (=> b!1753823 (= e!1122519 e!1122518)))

(declare-fun bm!110486 () Bool)

(assert (=> bm!110486 (= call!110490 (validRegex!1920 (ite c!285965 (regTwo!10059 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (regOne!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))))

(declare-fun b!1753824 () Bool)

(assert (=> b!1753824 (= e!1122516 e!1122520)))

(declare-fun res!788988 () Bool)

(assert (=> b!1753824 (= res!788988 (not (nullable!1446 (reg!5102 (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))))

(assert (=> b!1753824 (=> (not res!788988) (not e!1122520))))

(declare-fun d!535727 () Bool)

(declare-fun res!788986 () Bool)

(declare-fun e!1122515 () Bool)

(assert (=> d!535727 (=> res!788986 e!1122515)))

(assert (=> d!535727 (= res!788986 ((_ is ElementMatch!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(assert (=> d!535727 (= (validRegex!1920 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) e!1122515)))

(declare-fun bm!110487 () Bool)

(assert (=> bm!110487 (= call!110491 call!110492)))

(declare-fun b!1753825 () Bool)

(declare-fun e!1122517 () Bool)

(assert (=> b!1753825 (= e!1122517 e!1122521)))

(declare-fun res!788985 () Bool)

(assert (=> b!1753825 (=> (not res!788985) (not e!1122521))))

(assert (=> b!1753825 (= res!788985 call!110490)))

(declare-fun b!1753826 () Bool)

(declare-fun res!788987 () Bool)

(assert (=> b!1753826 (=> res!788987 e!1122517)))

(assert (=> b!1753826 (= res!788987 (not ((_ is Concat!8309) (regex!3445 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> b!1753826 (= e!1122519 e!1122517)))

(declare-fun b!1753827 () Bool)

(assert (=> b!1753827 (= e!1122515 e!1122516)))

(assert (=> b!1753827 (= c!285964 ((_ is Star!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(assert (= (and d!535727 (not res!788986)) b!1753827))

(assert (= (and b!1753827 c!285964) b!1753824))

(assert (= (and b!1753827 (not c!285964)) b!1753820))

(assert (= (and b!1753824 res!788988) b!1753822))

(assert (= (and b!1753820 c!285965) b!1753823))

(assert (= (and b!1753820 (not c!285965)) b!1753826))

(assert (= (and b!1753823 res!788984) b!1753821))

(assert (= (and b!1753826 (not res!788987)) b!1753825))

(assert (= (and b!1753825 res!788985) b!1753819))

(assert (= (or b!1753823 b!1753819) bm!110487))

(assert (= (or b!1753821 b!1753825) bm!110486))

(assert (= (or b!1753822 bm!110487) bm!110485))

(declare-fun m!2168031 () Bool)

(assert (=> bm!110485 m!2168031))

(declare-fun m!2168033 () Bool)

(assert (=> bm!110486 m!2168033))

(declare-fun m!2168035 () Bool)

(assert (=> b!1753824 m!2168035))

(assert (=> d!535101 d!535727))

(declare-fun b!1753828 () Bool)

(declare-fun e!1122522 () Bool)

(declare-fun e!1122523 () Bool)

(assert (=> b!1753828 (= e!1122522 e!1122523)))

(declare-fun res!788991 () Bool)

(assert (=> b!1753828 (=> (not res!788991) (not e!1122523))))

(assert (=> b!1753828 (= res!788991 (not ((_ is Nil!19286) (++!5269 lt!677061 suffix!1421))))))

(declare-fun b!1753830 () Bool)

(assert (=> b!1753830 (= e!1122523 (isPrefix!1685 (tail!2617 lt!677061) (tail!2617 (++!5269 lt!677061 suffix!1421))))))

(declare-fun b!1753831 () Bool)

(declare-fun e!1122524 () Bool)

(assert (=> b!1753831 (= e!1122524 (>= (size!15323 (++!5269 lt!677061 suffix!1421)) (size!15323 lt!677061)))))

(declare-fun d!535737 () Bool)

(assert (=> d!535737 e!1122524))

(declare-fun res!788989 () Bool)

(assert (=> d!535737 (=> res!788989 e!1122524)))

(declare-fun lt!677490 () Bool)

(assert (=> d!535737 (= res!788989 (not lt!677490))))

(assert (=> d!535737 (= lt!677490 e!1122522)))

(declare-fun res!788990 () Bool)

(assert (=> d!535737 (=> res!788990 e!1122522)))

(assert (=> d!535737 (= res!788990 ((_ is Nil!19286) lt!677061))))

(assert (=> d!535737 (= (isPrefix!1685 lt!677061 (++!5269 lt!677061 suffix!1421)) lt!677490)))

(declare-fun b!1753829 () Bool)

(declare-fun res!788992 () Bool)

(assert (=> b!1753829 (=> (not res!788992) (not e!1122523))))

(assert (=> b!1753829 (= res!788992 (= (head!4042 lt!677061) (head!4042 (++!5269 lt!677061 suffix!1421))))))

(assert (= (and d!535737 (not res!788990)) b!1753828))

(assert (= (and b!1753828 res!788991) b!1753829))

(assert (= (and b!1753829 res!788992) b!1753830))

(assert (= (and d!535737 (not res!788989)) b!1753831))

(assert (=> b!1753830 m!2166283))

(assert (=> b!1753830 m!2166179))

(assert (=> b!1753830 m!2167725))

(assert (=> b!1753830 m!2166283))

(assert (=> b!1753830 m!2167725))

(declare-fun m!2168037 () Bool)

(assert (=> b!1753830 m!2168037))

(assert (=> b!1753831 m!2166179))

(assert (=> b!1753831 m!2167439))

(assert (=> b!1753831 m!2166457))

(assert (=> b!1753829 m!2166279))

(assert (=> b!1753829 m!2166179))

(assert (=> b!1753829 m!2167733))

(assert (=> d!535165 d!535737))

(assert (=> d!535165 d!535183))

(declare-fun d!535739 () Bool)

(assert (=> d!535739 (isPrefix!1685 lt!677061 (++!5269 lt!677061 suffix!1421))))

(assert (=> d!535739 true))

(declare-fun _$46!1208 () Unit!33441)

(assert (=> d!535739 (= (choose!10824 lt!677061 suffix!1421) _$46!1208)))

(declare-fun bs!403672 () Bool)

(assert (= bs!403672 d!535739))

(assert (=> bs!403672 m!2166179))

(assert (=> bs!403672 m!2166179))

(assert (=> bs!403672 m!2166495))

(assert (=> d!535165 d!535739))

(declare-fun d!535741 () Bool)

(declare-fun dynLambda!9228 (Int BalanceConc!12774 BalanceConc!12774) Bool)

(assert (=> d!535741 (dynLambda!9228 lambda!69899 lt!677045 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))

(declare-fun lt!677493 () Unit!33441)

(declare-fun choose!10834 (Int BalanceConc!12774 BalanceConc!12774) Unit!33441)

(assert (=> d!535741 (= lt!677493 (choose!10834 lambda!69899 lt!677045 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))))))

(assert (=> d!535741 (Forall2!559 lambda!69899)))

(assert (=> d!535741 (= (Forall2of!108 lambda!69899 lt!677045 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))) lt!677493)))

(declare-fun b_lambda!56439 () Bool)

(assert (=> (not b_lambda!56439) (not d!535741)))

(declare-fun bs!403673 () Bool)

(assert (= bs!403673 d!535741))

(assert (=> bs!403673 m!2166225))

(declare-fun m!2168099 () Bool)

(assert (=> bs!403673 m!2168099))

(assert (=> bs!403673 m!2166225))

(declare-fun m!2168101 () Bool)

(assert (=> bs!403673 m!2168101))

(declare-fun m!2168103 () Bool)

(assert (=> bs!403673 m!2168103))

(assert (=> d!535135 d!535741))

(assert (=> d!535135 d!535163))

(declare-fun d!535755 () Bool)

(assert (=> d!535755 (= (list!7811 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))) (list!7814 (c!285665 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(declare-fun bs!403674 () Bool)

(assert (= bs!403674 d!535755))

(declare-fun m!2168109 () Bool)

(assert (=> bs!403674 m!2168109))

(assert (=> d!535135 d!535755))

(declare-fun call!110493 () Option!3912)

(declare-fun bm!110488 () Bool)

(assert (=> bm!110488 (= call!110493 (maxPrefixOneRule!999 thiss!24550 (h!24688 (t!163098 rules!3447)) lt!677061))))

(declare-fun b!1753849 () Bool)

(declare-fun res!789004 () Bool)

(declare-fun e!1122535 () Bool)

(assert (=> b!1753849 (=> (not res!789004) (not e!1122535))))

(declare-fun lt!677495 () Option!3912)

(assert (=> b!1753849 (= res!789004 (matchR!2246 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677495)))) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677495))))))))

(declare-fun b!1753850 () Bool)

(declare-fun res!789007 () Bool)

(assert (=> b!1753850 (=> (not res!789007) (not e!1122535))))

(assert (=> b!1753850 (= res!789007 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677495)))) (_2!10857 (get!5853 lt!677495))) lt!677061))))

(declare-fun b!1753851 () Bool)

(declare-fun res!789006 () Bool)

(assert (=> b!1753851 (=> (not res!789006) (not e!1122535))))

(assert (=> b!1753851 (= res!789006 (< (size!15323 (_2!10857 (get!5853 lt!677495))) (size!15323 lt!677061)))))

(declare-fun b!1753852 () Bool)

(declare-fun e!1122533 () Option!3912)

(declare-fun lt!677497 () Option!3912)

(declare-fun lt!677498 () Option!3912)

(assert (=> b!1753852 (= e!1122533 (ite (and ((_ is None!3911) lt!677497) ((_ is None!3911) lt!677498)) None!3911 (ite ((_ is None!3911) lt!677498) lt!677497 (ite ((_ is None!3911) lt!677497) lt!677498 (ite (>= (size!15320 (_1!10857 (v!25358 lt!677497))) (size!15320 (_1!10857 (v!25358 lt!677498)))) lt!677497 lt!677498)))))))

(assert (=> b!1753852 (= lt!677497 call!110493)))

(assert (=> b!1753852 (= lt!677498 (maxPrefix!1628 thiss!24550 (t!163098 (t!163098 rules!3447)) lt!677061))))

(declare-fun b!1753854 () Bool)

(declare-fun res!789003 () Bool)

(assert (=> b!1753854 (=> (not res!789003) (not e!1122535))))

(assert (=> b!1753854 (= res!789003 (= (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677495)))) (originalCharacters!4259 (_1!10857 (get!5853 lt!677495)))))))

(declare-fun b!1753855 () Bool)

(assert (=> b!1753855 (= e!1122533 call!110493)))

(declare-fun b!1753853 () Bool)

(declare-fun e!1122534 () Bool)

(assert (=> b!1753853 (= e!1122534 e!1122535)))

(declare-fun res!789005 () Bool)

(assert (=> b!1753853 (=> (not res!789005) (not e!1122535))))

(assert (=> b!1753853 (= res!789005 (isDefined!3255 lt!677495))))

(declare-fun d!535757 () Bool)

(assert (=> d!535757 e!1122534))

(declare-fun res!789001 () Bool)

(assert (=> d!535757 (=> res!789001 e!1122534)))

(assert (=> d!535757 (= res!789001 (isEmpty!12161 lt!677495))))

(assert (=> d!535757 (= lt!677495 e!1122533)))

(declare-fun c!285970 () Bool)

(assert (=> d!535757 (= c!285970 (and ((_ is Cons!19287) (t!163098 rules!3447)) ((_ is Nil!19287) (t!163098 (t!163098 rules!3447)))))))

(declare-fun lt!677496 () Unit!33441)

(declare-fun lt!677494 () Unit!33441)

(assert (=> d!535757 (= lt!677496 lt!677494)))

(assert (=> d!535757 (isPrefix!1685 lt!677061 lt!677061)))

(assert (=> d!535757 (= lt!677494 (lemmaIsPrefixRefl!1114 lt!677061 lt!677061))))

(assert (=> d!535757 (rulesValidInductive!1152 thiss!24550 (t!163098 rules!3447))))

(assert (=> d!535757 (= (maxPrefix!1628 thiss!24550 (t!163098 rules!3447) lt!677061) lt!677495)))

(declare-fun b!1753856 () Bool)

(assert (=> b!1753856 (= e!1122535 (contains!3471 (t!163098 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677495)))))))

(declare-fun b!1753857 () Bool)

(declare-fun res!789002 () Bool)

(assert (=> b!1753857 (=> (not res!789002) (not e!1122535))))

(assert (=> b!1753857 (= res!789002 (= (value!107855 (_1!10857 (get!5853 lt!677495))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677495)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677495)))))))))

(assert (= (and d!535757 c!285970) b!1753855))

(assert (= (and d!535757 (not c!285970)) b!1753852))

(assert (= (or b!1753855 b!1753852) bm!110488))

(assert (= (and d!535757 (not res!789001)) b!1753853))

(assert (= (and b!1753853 res!789005) b!1753854))

(assert (= (and b!1753854 res!789003) b!1753851))

(assert (= (and b!1753851 res!789006) b!1753850))

(assert (= (and b!1753850 res!789007) b!1753857))

(assert (= (and b!1753857 res!789002) b!1753849))

(assert (= (and b!1753849 res!789004) b!1753856))

(declare-fun m!2168127 () Bool)

(assert (=> b!1753853 m!2168127))

(declare-fun m!2168129 () Bool)

(assert (=> b!1753851 m!2168129))

(declare-fun m!2168131 () Bool)

(assert (=> b!1753851 m!2168131))

(assert (=> b!1753851 m!2166457))

(assert (=> b!1753849 m!2168129))

(declare-fun m!2168133 () Bool)

(assert (=> b!1753849 m!2168133))

(assert (=> b!1753849 m!2168133))

(declare-fun m!2168135 () Bool)

(assert (=> b!1753849 m!2168135))

(assert (=> b!1753849 m!2168135))

(declare-fun m!2168137 () Bool)

(assert (=> b!1753849 m!2168137))

(declare-fun m!2168139 () Bool)

(assert (=> bm!110488 m!2168139))

(assert (=> b!1753850 m!2168129))

(assert (=> b!1753850 m!2168133))

(assert (=> b!1753850 m!2168133))

(assert (=> b!1753850 m!2168135))

(assert (=> b!1753850 m!2168135))

(declare-fun m!2168141 () Bool)

(assert (=> b!1753850 m!2168141))

(assert (=> b!1753857 m!2168129))

(declare-fun m!2168143 () Bool)

(assert (=> b!1753857 m!2168143))

(assert (=> b!1753857 m!2168143))

(declare-fun m!2168145 () Bool)

(assert (=> b!1753857 m!2168145))

(declare-fun m!2168147 () Bool)

(assert (=> d!535757 m!2168147))

(assert (=> d!535757 m!2166969))

(assert (=> d!535757 m!2166971))

(declare-fun m!2168149 () Bool)

(assert (=> d!535757 m!2168149))

(assert (=> b!1753854 m!2168129))

(assert (=> b!1753854 m!2168133))

(assert (=> b!1753854 m!2168133))

(assert (=> b!1753854 m!2168135))

(assert (=> b!1753856 m!2168129))

(declare-fun m!2168151 () Bool)

(assert (=> b!1753856 m!2168151))

(declare-fun m!2168153 () Bool)

(assert (=> b!1753852 m!2168153))

(assert (=> b!1752982 d!535757))

(assert (=> b!1752712 d!535719))

(declare-fun d!535763 () Bool)

(assert (=> d!535763 (= (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677213))))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677213))))))))

(declare-fun b_lambda!56441 () Bool)

(assert (=> (not b_lambda!56441) (not d!535763)))

(declare-fun tb!105285 () Bool)

(declare-fun t!163225 () Bool)

(assert (=> (and b!1752378 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163225) tb!105285))

(declare-fun result!126660 () Bool)

(assert (=> tb!105285 (= result!126660 (inv!21 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213))))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677213)))))))))

(declare-fun m!2168155 () Bool)

(assert (=> tb!105285 m!2168155))

(assert (=> d!535763 t!163225))

(declare-fun b_and!131417 () Bool)

(assert (= b_and!131385 (and (=> t!163225 result!126660) b_and!131417)))

(declare-fun t!163227 () Bool)

(declare-fun tb!105287 () Bool)

(assert (=> (and b!1752373 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163227) tb!105287))

(declare-fun result!126662 () Bool)

(assert (= result!126662 result!126660))

(assert (=> d!535763 t!163227))

(declare-fun b_and!131419 () Bool)

(assert (= b_and!131387 (and (=> t!163227 result!126662) b_and!131419)))

(declare-fun t!163229 () Bool)

(declare-fun tb!105289 () Bool)

(assert (=> (and b!1752383 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163229) tb!105289))

(declare-fun result!126664 () Bool)

(assert (= result!126664 result!126660))

(assert (=> d!535763 t!163229))

(declare-fun b_and!131421 () Bool)

(assert (= b_and!131389 (and (=> t!163229 result!126664) b_and!131421)))

(declare-fun tb!105291 () Bool)

(declare-fun t!163231 () Bool)

(assert (=> (and b!1753022 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163231) tb!105291))

(declare-fun result!126666 () Bool)

(assert (= result!126666 result!126660))

(assert (=> d!535763 t!163231))

(declare-fun b_and!131423 () Bool)

(assert (= b_and!131391 (and (=> t!163231 result!126666) b_and!131423)))

(assert (=> d!535763 m!2166609))

(declare-fun m!2168163 () Bool)

(assert (=> d!535763 m!2168163))

(assert (=> b!1752712 d!535763))

(declare-fun d!535767 () Bool)

(assert (=> d!535767 (= (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677213)))) (fromListB!1095 (originalCharacters!4259 (_1!10857 (get!5853 lt!677213)))))))

(declare-fun bs!403675 () Bool)

(assert (= bs!403675 d!535767))

(declare-fun m!2168165 () Bool)

(assert (=> bs!403675 m!2168165))

(assert (=> b!1752712 d!535767))

(declare-fun d!535769 () Bool)

(declare-fun charsToBigInt!0 (List!19355 Int) Int)

(assert (=> d!535769 (= (inv!15 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)) (= (charsToBigInt!0 (text!25194 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)) 0) (value!107850 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))

(declare-fun bs!403677 () Bool)

(assert (= bs!403677 d!535769))

(declare-fun m!2168173 () Bool)

(assert (=> bs!403677 m!2168173))

(assert (=> b!1752974 d!535769))

(declare-fun d!535779 () Bool)

(assert (=> d!535779 (= (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))) (isBalanced!2000 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))))))

(declare-fun bs!403678 () Bool)

(assert (= bs!403678 d!535779))

(declare-fun m!2168177 () Bool)

(assert (=> bs!403678 m!2168177))

(assert (=> tb!105169 d!535779))

(declare-fun b!1753878 () Bool)

(declare-fun res!789026 () Bool)

(declare-fun e!1122550 () Bool)

(assert (=> b!1753878 (=> (not res!789026) (not e!1122550))))

(declare-fun lt!677510 () Option!3912)

(assert (=> b!1753878 (= res!789026 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677510)))) (_2!10857 (get!5853 lt!677510))) lt!677061))))

(declare-fun b!1753879 () Bool)

(declare-fun e!1122551 () Bool)

(assert (=> b!1753879 (= e!1122551 (matchR!2246 (regex!3445 (h!24688 rules!3447)) (_1!10862 (findLongestMatchInner!433 (regex!3445 (h!24688 rules!3447)) Nil!19286 (size!15323 Nil!19286) lt!677061 lt!677061 (size!15323 lt!677061)))))))

(declare-fun b!1753880 () Bool)

(declare-fun res!789022 () Bool)

(assert (=> b!1753880 (=> (not res!789022) (not e!1122550))))

(assert (=> b!1753880 (= res!789022 (< (size!15323 (_2!10857 (get!5853 lt!677510))) (size!15323 lt!677061)))))

(declare-fun b!1753881 () Bool)

(declare-fun e!1122549 () Bool)

(assert (=> b!1753881 (= e!1122549 e!1122550)))

(declare-fun res!789025 () Bool)

(assert (=> b!1753881 (=> (not res!789025) (not e!1122550))))

(assert (=> b!1753881 (= res!789025 (matchR!2246 (regex!3445 (h!24688 rules!3447)) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677510))))))))

(declare-fun b!1753882 () Bool)

(assert (=> b!1753882 (= e!1122550 (= (size!15320 (_1!10857 (get!5853 lt!677510))) (size!15323 (originalCharacters!4259 (_1!10857 (get!5853 lt!677510))))))))

(declare-fun d!535781 () Bool)

(assert (=> d!535781 e!1122549))

(declare-fun res!789024 () Bool)

(assert (=> d!535781 (=> res!789024 e!1122549)))

(assert (=> d!535781 (= res!789024 (isEmpty!12161 lt!677510))))

(declare-fun e!1122548 () Option!3912)

(assert (=> d!535781 (= lt!677510 e!1122548)))

(declare-fun c!285976 () Bool)

(declare-fun lt!677513 () tuple2!18920)

(assert (=> d!535781 (= c!285976 (isEmpty!12156 (_1!10862 lt!677513)))))

(assert (=> d!535781 (= lt!677513 (findLongestMatch!360 (regex!3445 (h!24688 rules!3447)) lt!677061))))

(assert (=> d!535781 (ruleValid!943 thiss!24550 (h!24688 rules!3447))))

(assert (=> d!535781 (= (maxPrefixOneRule!999 thiss!24550 (h!24688 rules!3447) lt!677061) lt!677510)))

(declare-fun b!1753883 () Bool)

(declare-fun res!789023 () Bool)

(assert (=> b!1753883 (=> (not res!789023) (not e!1122550))))

(assert (=> b!1753883 (= res!789023 (= (value!107855 (_1!10857 (get!5853 lt!677510))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677510)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677510)))))))))

(declare-fun b!1753884 () Bool)

(assert (=> b!1753884 (= e!1122548 None!3911)))

(declare-fun b!1753885 () Bool)

(assert (=> b!1753885 (= e!1122548 (Some!3911 (tuple2!18911 (Token!6457 (apply!5245 (transformation!3445 (h!24688 rules!3447)) (seqFromList!2414 (_1!10862 lt!677513))) (h!24688 rules!3447) (size!15321 (seqFromList!2414 (_1!10862 lt!677513))) (_1!10862 lt!677513)) (_2!10862 lt!677513))))))

(declare-fun lt!677511 () Unit!33441)

(assert (=> b!1753885 (= lt!677511 (longestMatchIsAcceptedByMatchOrIsEmpty!417 (regex!3445 (h!24688 rules!3447)) lt!677061))))

(declare-fun res!789021 () Bool)

(assert (=> b!1753885 (= res!789021 (isEmpty!12156 (_1!10862 (findLongestMatchInner!433 (regex!3445 (h!24688 rules!3447)) Nil!19286 (size!15323 Nil!19286) lt!677061 lt!677061 (size!15323 lt!677061)))))))

(assert (=> b!1753885 (=> res!789021 e!1122551)))

(assert (=> b!1753885 e!1122551))

(declare-fun lt!677512 () Unit!33441)

(assert (=> b!1753885 (= lt!677512 lt!677511)))

(declare-fun lt!677514 () Unit!33441)

(assert (=> b!1753885 (= lt!677514 (lemmaSemiInverse!583 (transformation!3445 (h!24688 rules!3447)) (seqFromList!2414 (_1!10862 lt!677513))))))

(declare-fun b!1753886 () Bool)

(declare-fun res!789020 () Bool)

(assert (=> b!1753886 (=> (not res!789020) (not e!1122550))))

(assert (=> b!1753886 (= res!789020 (= (rule!5457 (_1!10857 (get!5853 lt!677510))) (h!24688 rules!3447)))))

(assert (= (and d!535781 c!285976) b!1753884))

(assert (= (and d!535781 (not c!285976)) b!1753885))

(assert (= (and b!1753885 (not res!789021)) b!1753879))

(assert (= (and d!535781 (not res!789024)) b!1753881))

(assert (= (and b!1753881 res!789025) b!1753878))

(assert (= (and b!1753878 res!789026) b!1753880))

(assert (= (and b!1753880 res!789022) b!1753886))

(assert (= (and b!1753886 res!789020) b!1753883))

(assert (= (and b!1753883 res!789023) b!1753882))

(declare-fun m!2168221 () Bool)

(assert (=> b!1753886 m!2168221))

(assert (=> b!1753885 m!2167897))

(declare-fun m!2168223 () Bool)

(assert (=> b!1753885 m!2168223))

(assert (=> b!1753885 m!2167897))

(assert (=> b!1753885 m!2166457))

(declare-fun m!2168225 () Bool)

(assert (=> b!1753885 m!2168225))

(declare-fun m!2168227 () Bool)

(assert (=> b!1753885 m!2168227))

(declare-fun m!2168229 () Bool)

(assert (=> b!1753885 m!2168229))

(assert (=> b!1753885 m!2168227))

(declare-fun m!2168231 () Bool)

(assert (=> b!1753885 m!2168231))

(assert (=> b!1753885 m!2166457))

(assert (=> b!1753885 m!2168227))

(declare-fun m!2168233 () Bool)

(assert (=> b!1753885 m!2168233))

(assert (=> b!1753885 m!2168227))

(declare-fun m!2168235 () Bool)

(assert (=> b!1753885 m!2168235))

(assert (=> b!1753879 m!2167897))

(assert (=> b!1753879 m!2166457))

(assert (=> b!1753879 m!2167897))

(assert (=> b!1753879 m!2166457))

(assert (=> b!1753879 m!2168225))

(declare-fun m!2168237 () Bool)

(assert (=> b!1753879 m!2168237))

(assert (=> b!1753882 m!2168221))

(declare-fun m!2168239 () Bool)

(assert (=> b!1753882 m!2168239))

(assert (=> b!1753878 m!2168221))

(declare-fun m!2168241 () Bool)

(assert (=> b!1753878 m!2168241))

(assert (=> b!1753878 m!2168241))

(declare-fun m!2168243 () Bool)

(assert (=> b!1753878 m!2168243))

(assert (=> b!1753878 m!2168243))

(declare-fun m!2168245 () Bool)

(assert (=> b!1753878 m!2168245))

(declare-fun m!2168247 () Bool)

(assert (=> d!535781 m!2168247))

(declare-fun m!2168249 () Bool)

(assert (=> d!535781 m!2168249))

(declare-fun m!2168251 () Bool)

(assert (=> d!535781 m!2168251))

(declare-fun m!2168253 () Bool)

(assert (=> d!535781 m!2168253))

(assert (=> b!1753881 m!2168221))

(assert (=> b!1753881 m!2168241))

(assert (=> b!1753881 m!2168241))

(assert (=> b!1753881 m!2168243))

(assert (=> b!1753881 m!2168243))

(declare-fun m!2168255 () Bool)

(assert (=> b!1753881 m!2168255))

(assert (=> b!1753880 m!2168221))

(declare-fun m!2168257 () Bool)

(assert (=> b!1753880 m!2168257))

(assert (=> b!1753880 m!2166457))

(assert (=> b!1753883 m!2168221))

(declare-fun m!2168259 () Bool)

(assert (=> b!1753883 m!2168259))

(assert (=> b!1753883 m!2168259))

(declare-fun m!2168261 () Bool)

(assert (=> b!1753883 m!2168261))

(assert (=> bm!110415 d!535781))

(declare-fun b!1753913 () Bool)

(declare-fun res!789051 () Bool)

(declare-fun e!1122568 () Bool)

(assert (=> b!1753913 (=> (not res!789051) (not e!1122568))))

(declare-fun isEmpty!12166 (Conc!6415) Bool)

(assert (=> b!1753913 (= res!789051 (not (isEmpty!12166 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))))

(declare-fun b!1753914 () Bool)

(declare-fun res!789052 () Bool)

(assert (=> b!1753914 (=> (not res!789052) (not e!1122568))))

(assert (=> b!1753914 (= res!789052 (isBalanced!2000 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(declare-fun d!535789 () Bool)

(declare-fun res!789053 () Bool)

(declare-fun e!1122569 () Bool)

(assert (=> d!535789 (=> res!789053 e!1122569)))

(assert (=> d!535789 (= res!789053 (not ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(assert (=> d!535789 (= (isBalanced!2000 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) e!1122569)))

(declare-fun b!1753915 () Bool)

(assert (=> b!1753915 (= e!1122568 (not (isEmpty!12166 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))))

(declare-fun b!1753916 () Bool)

(declare-fun res!789054 () Bool)

(assert (=> b!1753916 (=> (not res!789054) (not e!1122568))))

(assert (=> b!1753916 (= res!789054 (isBalanced!2000 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(declare-fun b!1753917 () Bool)

(assert (=> b!1753917 (= e!1122569 e!1122568)))

(declare-fun res!789056 () Bool)

(assert (=> b!1753917 (=> (not res!789056) (not e!1122568))))

(declare-fun height!1005 (Conc!6415) Int)

(assert (=> b!1753917 (= res!789056 (<= (- 1) (- (height!1005 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) (height!1005 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))))

(declare-fun b!1753918 () Bool)

(declare-fun res!789055 () Bool)

(assert (=> b!1753918 (=> (not res!789055) (not e!1122568))))

(assert (=> b!1753918 (= res!789055 (<= (- (height!1005 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) (height!1005 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) 1))))

(assert (= (and d!535789 (not res!789053)) b!1753917))

(assert (= (and b!1753917 res!789056) b!1753918))

(assert (= (and b!1753918 res!789055) b!1753914))

(assert (= (and b!1753914 res!789052) b!1753916))

(assert (= (and b!1753916 res!789054) b!1753913))

(assert (= (and b!1753913 res!789051) b!1753915))

(declare-fun m!2168277 () Bool)

(assert (=> b!1753914 m!2168277))

(declare-fun m!2168279 () Bool)

(assert (=> b!1753916 m!2168279))

(declare-fun m!2168281 () Bool)

(assert (=> b!1753913 m!2168281))

(declare-fun m!2168283 () Bool)

(assert (=> b!1753917 m!2168283))

(declare-fun m!2168285 () Bool)

(assert (=> b!1753917 m!2168285))

(declare-fun m!2168287 () Bool)

(assert (=> b!1753915 m!2168287))

(assert (=> b!1753918 m!2168283))

(assert (=> b!1753918 m!2168285))

(assert (=> d!535095 d!535789))

(declare-fun d!535803 () Bool)

(assert (=> d!535803 (= (isDefined!3255 lt!677213) (not (isEmpty!12161 lt!677213)))))

(declare-fun bs!403688 () Bool)

(assert (= bs!403688 d!535803))

(assert (=> bs!403688 m!2166613))

(assert (=> b!1752708 d!535803))

(declare-fun d!535807 () Bool)

(assert (=> d!535807 true))

(assert (=> d!535807 true))

(declare-fun res!789059 () Bool)

(assert (=> d!535807 (= (choose!10826 lambda!69896) res!789059)))

(assert (=> d!535295 d!535807))

(declare-fun d!535811 () Bool)

(declare-fun lt!677522 () Int)

(assert (=> d!535811 (>= lt!677522 0)))

(declare-fun e!1122570 () Int)

(assert (=> d!535811 (= lt!677522 e!1122570)))

(declare-fun c!285978 () Bool)

(assert (=> d!535811 (= c!285978 ((_ is Nil!19286) (originalCharacters!4259 token!523)))))

(assert (=> d!535811 (= (size!15323 (originalCharacters!4259 token!523)) lt!677522)))

(declare-fun b!1753919 () Bool)

(assert (=> b!1753919 (= e!1122570 0)))

(declare-fun b!1753920 () Bool)

(assert (=> b!1753920 (= e!1122570 (+ 1 (size!15323 (t!163097 (originalCharacters!4259 token!523)))))))

(assert (= (and d!535811 c!285978) b!1753919))

(assert (= (and d!535811 (not c!285978)) b!1753920))

(declare-fun m!2168293 () Bool)

(assert (=> b!1753920 m!2168293))

(assert (=> b!1752555 d!535811))

(declare-fun d!535813 () Bool)

(assert (=> d!535813 (= (nullable!1446 (regex!3445 lt!677059)) (nullableFct!331 (regex!3445 lt!677059)))))

(declare-fun bs!403695 () Bool)

(assert (= bs!403695 d!535813))

(declare-fun m!2168295 () Bool)

(assert (=> bs!403695 m!2168295))

(assert (=> b!1752955 d!535813))

(declare-fun bs!403699 () Bool)

(declare-fun d!535815 () Bool)

(assert (= bs!403699 (and d!535815 d!535135)))

(declare-fun lambda!69942 () Int)

(assert (=> bs!403699 (= lambda!69942 lambda!69899)))

(declare-fun bs!403700 () Bool)

(assert (= bs!403700 (and d!535815 d!535477)))

(assert (=> bs!403700 (= (= (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (toValue!4960 (transformation!3445 (rule!5457 token!523)))) (= lambda!69942 lambda!69934))))

(assert (=> d!535815 true))

(assert (=> d!535815 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9224 order!12153 lambda!69942))))

(assert (=> d!535815 (= (equivClasses!1303 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (Forall2!559 lambda!69942))))

(declare-fun bs!403701 () Bool)

(assert (= bs!403701 d!535815))

(declare-fun m!2168299 () Bool)

(assert (=> bs!403701 m!2168299))

(assert (=> b!1752997 d!535815))

(declare-fun d!535819 () Bool)

(declare-fun lt!677528 () Bool)

(assert (=> d!535819 (= lt!677528 (select (content!2772 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677303)))))))

(declare-fun e!1122575 () Bool)

(assert (=> d!535819 (= lt!677528 e!1122575)))

(declare-fun res!789067 () Bool)

(assert (=> d!535819 (=> (not res!789067) (not e!1122575))))

(assert (=> d!535819 (= res!789067 ((_ is Cons!19287) rules!3447))))

(assert (=> d!535819 (= (contains!3471 rules!3447 (rule!5457 (_1!10857 (get!5853 lt!677303)))) lt!677528)))

(declare-fun b!1753930 () Bool)

(declare-fun e!1122574 () Bool)

(assert (=> b!1753930 (= e!1122575 e!1122574)))

(declare-fun res!789068 () Bool)

(assert (=> b!1753930 (=> res!789068 e!1122574)))

(assert (=> b!1753930 (= res!789068 (= (h!24688 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677303)))))))

(declare-fun b!1753931 () Bool)

(assert (=> b!1753931 (= e!1122574 (contains!3471 (t!163098 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677303)))))))

(assert (= (and d!535819 res!789067) b!1753930))

(assert (= (and b!1753930 (not res!789068)) b!1753931))

(assert (=> d!535819 m!2166981))

(declare-fun m!2168301 () Bool)

(assert (=> d!535819 m!2168301))

(declare-fun m!2168303 () Bool)

(assert (=> b!1753931 m!2168303))

(assert (=> b!1752986 d!535819))

(assert (=> b!1752986 d!535439))

(declare-fun d!535821 () Bool)

(assert (=> d!535821 true))

(declare-fun lt!677531 () Bool)

(assert (=> d!535821 (= lt!677531 (rulesValidInductive!1152 thiss!24550 rules!3447))))

(declare-fun lambda!69945 () Int)

(declare-fun forall!4272 (List!19357 Int) Bool)

(assert (=> d!535821 (= lt!677531 (forall!4272 rules!3447 lambda!69945))))

(assert (=> d!535821 (= (rulesValid!1287 thiss!24550 rules!3447) lt!677531)))

(declare-fun bs!403702 () Bool)

(assert (= bs!403702 d!535821))

(assert (=> bs!403702 m!2166619))

(declare-fun m!2168331 () Bool)

(assert (=> bs!403702 m!2168331))

(assert (=> d!535097 d!535821))

(declare-fun d!535825 () Bool)

(declare-fun charsToBigInt!1 (List!19355) Int)

(assert (=> d!535825 (= (inv!17 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)) (= (charsToBigInt!1 (text!25193 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) (value!107847 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))

(declare-fun bs!403704 () Bool)

(assert (= bs!403704 d!535825))

(declare-fun m!2168337 () Bool)

(assert (=> bs!403704 m!2168337))

(assert (=> b!1752978 d!535825))

(assert (=> b!1752489 d!535623))

(declare-fun d!535829 () Bool)

(declare-fun res!789079 () Bool)

(declare-fun e!1122588 () Bool)

(assert (=> d!535829 (=> (not res!789079) (not e!1122588))))

(assert (=> d!535829 (= res!789079 (<= (size!15323 (list!7818 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) 512))))

(assert (=> d!535829 (= (inv!25035 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) e!1122588)))

(declare-fun b!1753952 () Bool)

(declare-fun res!789080 () Bool)

(assert (=> b!1753952 (=> (not res!789080) (not e!1122588))))

(assert (=> b!1753952 (= res!789080 (= (csize!13061 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) (size!15323 (list!7818 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))))

(declare-fun b!1753953 () Bool)

(assert (=> b!1753953 (= e!1122588 (and (> (csize!13061 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) 0) (<= (csize!13061 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) 512)))))

(assert (= (and d!535829 res!789079) b!1753952))

(assert (= (and b!1753952 res!789080) b!1753953))

(declare-fun m!2168355 () Bool)

(assert (=> d!535829 m!2168355))

(assert (=> d!535829 m!2168355))

(declare-fun m!2168357 () Bool)

(assert (=> d!535829 m!2168357))

(assert (=> b!1753952 m!2168355))

(assert (=> b!1753952 m!2168355))

(assert (=> b!1753952 m!2168357))

(assert (=> b!1752584 d!535829))

(declare-fun d!535837 () Bool)

(declare-fun lt!677532 () Bool)

(assert (=> d!535837 (= lt!677532 (select (content!2772 rules!3447) (get!5852 lt!677144)))))

(declare-fun e!1122590 () Bool)

(assert (=> d!535837 (= lt!677532 e!1122590)))

(declare-fun res!789081 () Bool)

(assert (=> d!535837 (=> (not res!789081) (not e!1122590))))

(assert (=> d!535837 (= res!789081 ((_ is Cons!19287) rules!3447))))

(assert (=> d!535837 (= (contains!3471 rules!3447 (get!5852 lt!677144)) lt!677532)))

(declare-fun b!1753954 () Bool)

(declare-fun e!1122589 () Bool)

(assert (=> b!1753954 (= e!1122590 e!1122589)))

(declare-fun res!789082 () Bool)

(assert (=> b!1753954 (=> res!789082 e!1122589)))

(assert (=> b!1753954 (= res!789082 (= (h!24688 rules!3447) (get!5852 lt!677144)))))

(declare-fun b!1753955 () Bool)

(assert (=> b!1753955 (= e!1122589 (contains!3471 (t!163098 rules!3447) (get!5852 lt!677144)))))

(assert (= (and d!535837 res!789081) b!1753954))

(assert (= (and b!1753954 (not res!789082)) b!1753955))

(assert (=> d!535837 m!2166981))

(assert (=> d!535837 m!2166509))

(declare-fun m!2168359 () Bool)

(assert (=> d!535837 m!2168359))

(assert (=> b!1753955 m!2166509))

(declare-fun m!2168361 () Bool)

(assert (=> b!1753955 m!2168361))

(assert (=> b!1752656 d!535837))

(assert (=> b!1752656 d!535467))

(declare-fun bs!403707 () Bool)

(declare-fun d!535839 () Bool)

(assert (= bs!403707 (and d!535839 b!1752379)))

(declare-fun lambda!69948 () Int)

(assert (=> bs!403707 (= lambda!69948 lambda!69896)))

(declare-fun bs!403708 () Bool)

(assert (= bs!403708 (and d!535839 d!535151)))

(assert (=> bs!403708 (= lambda!69948 lambda!69905)))

(assert (=> d!535839 true))

(assert (=> d!535839 (< (dynLambda!9221 order!12151 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9220 order!12149 lambda!69948))))

(assert (=> d!535839 true))

(assert (=> d!535839 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (dynLambda!9220 order!12149 lambda!69948))))

(assert (=> d!535839 (= (semiInverseModEq!1362 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (Forall!812 lambda!69948))))

(declare-fun bs!403709 () Bool)

(assert (= bs!403709 d!535839))

(declare-fun m!2168381 () Bool)

(assert (=> bs!403709 m!2168381))

(assert (=> d!535297 d!535839))

(assert (=> b!1752637 d!535491))

(declare-fun d!535847 () Bool)

(assert (=> d!535847 (= (head!4042 (++!5269 lt!677049 (_2!10857 lt!677046))) (h!24687 (++!5269 lt!677049 (_2!10857 lt!677046))))))

(assert (=> b!1752637 d!535847))

(declare-fun d!535849 () Bool)

(assert (=> d!535849 (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) (h!24687 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(assert (=> b!1752958 d!535849))

(declare-fun d!535851 () Bool)

(declare-fun c!285988 () Bool)

(assert (=> d!535851 (= c!285988 ((_ is Nil!19286) lt!677220))))

(declare-fun e!1122598 () (InoxSet C!9720))

(assert (=> d!535851 (= (content!2771 lt!677220) e!1122598)))

(declare-fun b!1753970 () Bool)

(assert (=> b!1753970 (= e!1122598 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1753971 () Bool)

(assert (=> b!1753971 (= e!1122598 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 lt!677220) true) (content!2771 (t!163097 lt!677220))))))

(assert (= (and d!535851 c!285988) b!1753970))

(assert (= (and d!535851 (not c!285988)) b!1753971))

(declare-fun m!2168393 () Bool)

(assert (=> b!1753971 m!2168393))

(declare-fun m!2168397 () Bool)

(assert (=> b!1753971 m!2168397))

(assert (=> d!535183 d!535851))

(declare-fun d!535859 () Bool)

(declare-fun c!285989 () Bool)

(assert (=> d!535859 (= c!285989 ((_ is Nil!19286) lt!677061))))

(declare-fun e!1122599 () (InoxSet C!9720))

(assert (=> d!535859 (= (content!2771 lt!677061) e!1122599)))

(declare-fun b!1753972 () Bool)

(assert (=> b!1753972 (= e!1122599 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1753973 () Bool)

(assert (=> b!1753973 (= e!1122599 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 lt!677061) true) (content!2771 (t!163097 lt!677061))))))

(assert (= (and d!535859 c!285989) b!1753972))

(assert (= (and d!535859 (not c!285989)) b!1753973))

(declare-fun m!2168401 () Bool)

(assert (=> b!1753973 m!2168401))

(declare-fun m!2168403 () Bool)

(assert (=> b!1753973 m!2168403))

(assert (=> d!535183 d!535859))

(declare-fun d!535863 () Bool)

(declare-fun c!285990 () Bool)

(assert (=> d!535863 (= c!285990 ((_ is Nil!19286) suffix!1421))))

(declare-fun e!1122600 () (InoxSet C!9720))

(assert (=> d!535863 (= (content!2771 suffix!1421) e!1122600)))

(declare-fun b!1753974 () Bool)

(assert (=> b!1753974 (= e!1122600 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1753975 () Bool)

(assert (=> b!1753975 (= e!1122600 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 suffix!1421) true) (content!2771 (t!163097 suffix!1421))))))

(assert (= (and d!535863 c!285990) b!1753974))

(assert (= (and d!535863 (not c!285990)) b!1753975))

(declare-fun m!2168405 () Bool)

(assert (=> b!1753975 m!2168405))

(declare-fun m!2168407 () Bool)

(assert (=> b!1753975 m!2168407))

(assert (=> d!535183 d!535863))

(declare-fun d!535865 () Bool)

(declare-fun c!285991 () Bool)

(assert (=> d!535865 (= c!285991 (isEmpty!12156 (tail!2617 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(declare-fun e!1122601 () Bool)

(assert (=> d!535865 (= (prefixMatch!656 (derivativeStep!1215 (rulesRegex!801 thiss!24550 rules!3447) (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))) (tail!2617 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))) e!1122601)))

(declare-fun b!1753976 () Bool)

(assert (=> b!1753976 (= e!1122601 (not (lostCause!557 (derivativeStep!1215 (rulesRegex!801 thiss!24550 rules!3447) (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))))

(declare-fun b!1753977 () Bool)

(assert (=> b!1753977 (= e!1122601 (prefixMatch!656 (derivativeStep!1215 (derivativeStep!1215 (rulesRegex!801 thiss!24550 rules!3447) (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))) (head!4042 (tail!2617 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))) (tail!2617 (tail!2617 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))))

(assert (= (and d!535865 c!285991) b!1753976))

(assert (= (and d!535865 (not c!285991)) b!1753977))

(assert (=> d!535865 m!2166437))

(declare-fun m!2168409 () Bool)

(assert (=> d!535865 m!2168409))

(assert (=> b!1753976 m!2166435))

(declare-fun m!2168411 () Bool)

(assert (=> b!1753976 m!2168411))

(assert (=> b!1753977 m!2166437))

(declare-fun m!2168413 () Bool)

(assert (=> b!1753977 m!2168413))

(assert (=> b!1753977 m!2166435))

(assert (=> b!1753977 m!2168413))

(declare-fun m!2168415 () Bool)

(assert (=> b!1753977 m!2168415))

(assert (=> b!1753977 m!2166437))

(declare-fun m!2168417 () Bool)

(assert (=> b!1753977 m!2168417))

(assert (=> b!1753977 m!2168415))

(assert (=> b!1753977 m!2168417))

(declare-fun m!2168419 () Bool)

(assert (=> b!1753977 m!2168419))

(assert (=> b!1752600 d!535865))

(declare-fun b!1753978 () Bool)

(declare-fun e!1122602 () Regex!4773)

(assert (=> b!1753978 (= e!1122602 (ite (= (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))) (c!285664 (rulesRegex!801 thiss!24550 rules!3447))) EmptyExpr!4773 EmptyLang!4773))))

(declare-fun b!1753979 () Bool)

(declare-fun e!1122606 () Regex!4773)

(assert (=> b!1753979 (= e!1122606 e!1122602)))

(declare-fun c!285994 () Bool)

(assert (=> b!1753979 (= c!285994 ((_ is ElementMatch!4773) (rulesRegex!801 thiss!24550 rules!3447)))))

(declare-fun bm!110493 () Bool)

(declare-fun call!110498 () Regex!4773)

(declare-fun call!110499 () Regex!4773)

(assert (=> bm!110493 (= call!110498 call!110499)))

(declare-fun b!1753980 () Bool)

(declare-fun e!1122603 () Regex!4773)

(declare-fun call!110500 () Regex!4773)

(declare-fun call!110501 () Regex!4773)

(assert (=> b!1753980 (= e!1122603 (Union!4773 call!110500 call!110501))))

(declare-fun c!285996 () Bool)

(declare-fun bm!110494 () Bool)

(assert (=> bm!110494 (= call!110500 (derivativeStep!1215 (ite c!285996 (regOne!10059 (rulesRegex!801 thiss!24550 rules!3447)) (regOne!10058 (rulesRegex!801 thiss!24550 rules!3447))) (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(declare-fun b!1753981 () Bool)

(declare-fun e!1122605 () Regex!4773)

(assert (=> b!1753981 (= e!1122605 (Concat!8309 call!110499 (rulesRegex!801 thiss!24550 rules!3447)))))

(declare-fun b!1753982 () Bool)

(assert (=> b!1753982 (= e!1122606 EmptyLang!4773)))

(declare-fun b!1753983 () Bool)

(declare-fun e!1122604 () Regex!4773)

(assert (=> b!1753983 (= e!1122604 (Union!4773 (Concat!8309 call!110498 (regTwo!10058 (rulesRegex!801 thiss!24550 rules!3447))) EmptyLang!4773))))

(declare-fun b!1753984 () Bool)

(assert (=> b!1753984 (= e!1122604 (Union!4773 (Concat!8309 call!110500 (regTwo!10058 (rulesRegex!801 thiss!24550 rules!3447))) call!110498))))

(declare-fun b!1753985 () Bool)

(declare-fun c!285993 () Bool)

(assert (=> b!1753985 (= c!285993 (nullable!1446 (regOne!10058 (rulesRegex!801 thiss!24550 rules!3447))))))

(assert (=> b!1753985 (= e!1122605 e!1122604)))

(declare-fun b!1753986 () Bool)

(assert (=> b!1753986 (= c!285996 ((_ is Union!4773) (rulesRegex!801 thiss!24550 rules!3447)))))

(assert (=> b!1753986 (= e!1122602 e!1122603)))

(declare-fun d!535867 () Bool)

(declare-fun lt!677544 () Regex!4773)

(assert (=> d!535867 (validRegex!1920 lt!677544)))

(assert (=> d!535867 (= lt!677544 e!1122606)))

(declare-fun c!285992 () Bool)

(assert (=> d!535867 (= c!285992 (or ((_ is EmptyExpr!4773) (rulesRegex!801 thiss!24550 rules!3447)) ((_ is EmptyLang!4773) (rulesRegex!801 thiss!24550 rules!3447))))))

(assert (=> d!535867 (validRegex!1920 (rulesRegex!801 thiss!24550 rules!3447))))

(assert (=> d!535867 (= (derivativeStep!1215 (rulesRegex!801 thiss!24550 rules!3447) (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))) lt!677544)))

(declare-fun b!1753987 () Bool)

(assert (=> b!1753987 (= e!1122603 e!1122605)))

(declare-fun c!285995 () Bool)

(assert (=> b!1753987 (= c!285995 ((_ is Star!4773) (rulesRegex!801 thiss!24550 rules!3447)))))

(declare-fun bm!110495 () Bool)

(assert (=> bm!110495 (= call!110501 (derivativeStep!1215 (ite c!285996 (regTwo!10059 (rulesRegex!801 thiss!24550 rules!3447)) (ite c!285995 (reg!5102 (rulesRegex!801 thiss!24550 rules!3447)) (ite c!285993 (regTwo!10058 (rulesRegex!801 thiss!24550 rules!3447)) (regOne!10058 (rulesRegex!801 thiss!24550 rules!3447))))) (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(declare-fun bm!110496 () Bool)

(assert (=> bm!110496 (= call!110499 call!110501)))

(assert (= (and d!535867 c!285992) b!1753982))

(assert (= (and d!535867 (not c!285992)) b!1753979))

(assert (= (and b!1753979 c!285994) b!1753978))

(assert (= (and b!1753979 (not c!285994)) b!1753986))

(assert (= (and b!1753986 c!285996) b!1753980))

(assert (= (and b!1753986 (not c!285996)) b!1753987))

(assert (= (and b!1753987 c!285995) b!1753981))

(assert (= (and b!1753987 (not c!285995)) b!1753985))

(assert (= (and b!1753985 c!285993) b!1753984))

(assert (= (and b!1753985 (not c!285993)) b!1753983))

(assert (= (or b!1753984 b!1753983) bm!110493))

(assert (= (or b!1753981 bm!110493) bm!110496))

(assert (= (or b!1753980 bm!110496) bm!110495))

(assert (= (or b!1753980 b!1753984) bm!110494))

(assert (=> bm!110494 m!2166433))

(declare-fun m!2168421 () Bool)

(assert (=> bm!110494 m!2168421))

(declare-fun m!2168423 () Bool)

(assert (=> b!1753985 m!2168423))

(declare-fun m!2168425 () Bool)

(assert (=> d!535867 m!2168425))

(assert (=> d!535867 m!2166207))

(declare-fun m!2168427 () Bool)

(assert (=> d!535867 m!2168427))

(assert (=> bm!110495 m!2166433))

(declare-fun m!2168429 () Bool)

(assert (=> bm!110495 m!2168429))

(assert (=> b!1752600 d!535867))

(declare-fun d!535869 () Bool)

(assert (=> d!535869 (= (head!4042 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))) (h!24687 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))

(assert (=> b!1752600 d!535869))

(declare-fun d!535871 () Bool)

(assert (=> d!535871 (= (tail!2617 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))) (t!163097 (++!5269 lt!677061 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))

(assert (=> b!1752600 d!535871))

(declare-fun b!1753988 () Bool)

(declare-fun e!1122613 () Bool)

(declare-fun call!110503 () Bool)

(assert (=> b!1753988 (= e!1122613 call!110503)))

(declare-fun b!1753989 () Bool)

(declare-fun e!1122608 () Bool)

(declare-fun e!1122611 () Bool)

(assert (=> b!1753989 (= e!1122608 e!1122611)))

(declare-fun c!285998 () Bool)

(assert (=> b!1753989 (= c!285998 ((_ is Union!4773) (regex!3445 rule!422)))))

(declare-fun b!1753990 () Bool)

(declare-fun e!1122610 () Bool)

(declare-fun call!110502 () Bool)

(assert (=> b!1753990 (= e!1122610 call!110502)))

(declare-fun c!285997 () Bool)

(declare-fun bm!110497 () Bool)

(declare-fun call!110504 () Bool)

(assert (=> bm!110497 (= call!110504 (validRegex!1920 (ite c!285997 (reg!5102 (regex!3445 rule!422)) (ite c!285998 (regOne!10059 (regex!3445 rule!422)) (regTwo!10058 (regex!3445 rule!422))))))))

(declare-fun b!1753991 () Bool)

(declare-fun e!1122612 () Bool)

(assert (=> b!1753991 (= e!1122612 call!110504)))

(declare-fun b!1753992 () Bool)

(declare-fun res!789085 () Bool)

(assert (=> b!1753992 (=> (not res!789085) (not e!1122610))))

(assert (=> b!1753992 (= res!789085 call!110503)))

(assert (=> b!1753992 (= e!1122611 e!1122610)))

(declare-fun bm!110498 () Bool)

(assert (=> bm!110498 (= call!110502 (validRegex!1920 (ite c!285998 (regTwo!10059 (regex!3445 rule!422)) (regOne!10058 (regex!3445 rule!422)))))))

(declare-fun b!1753993 () Bool)

(assert (=> b!1753993 (= e!1122608 e!1122612)))

(declare-fun res!789089 () Bool)

(assert (=> b!1753993 (= res!789089 (not (nullable!1446 (reg!5102 (regex!3445 rule!422)))))))

(assert (=> b!1753993 (=> (not res!789089) (not e!1122612))))

(declare-fun d!535873 () Bool)

(declare-fun res!789087 () Bool)

(declare-fun e!1122607 () Bool)

(assert (=> d!535873 (=> res!789087 e!1122607)))

(assert (=> d!535873 (= res!789087 ((_ is ElementMatch!4773) (regex!3445 rule!422)))))

(assert (=> d!535873 (= (validRegex!1920 (regex!3445 rule!422)) e!1122607)))

(declare-fun bm!110499 () Bool)

(assert (=> bm!110499 (= call!110503 call!110504)))

(declare-fun b!1753994 () Bool)

(declare-fun e!1122609 () Bool)

(assert (=> b!1753994 (= e!1122609 e!1122613)))

(declare-fun res!789086 () Bool)

(assert (=> b!1753994 (=> (not res!789086) (not e!1122613))))

(assert (=> b!1753994 (= res!789086 call!110502)))

(declare-fun b!1753995 () Bool)

(declare-fun res!789088 () Bool)

(assert (=> b!1753995 (=> res!789088 e!1122609)))

(assert (=> b!1753995 (= res!789088 (not ((_ is Concat!8309) (regex!3445 rule!422))))))

(assert (=> b!1753995 (= e!1122611 e!1122609)))

(declare-fun b!1753996 () Bool)

(assert (=> b!1753996 (= e!1122607 e!1122608)))

(assert (=> b!1753996 (= c!285997 ((_ is Star!4773) (regex!3445 rule!422)))))

(assert (= (and d!535873 (not res!789087)) b!1753996))

(assert (= (and b!1753996 c!285997) b!1753993))

(assert (= (and b!1753996 (not c!285997)) b!1753989))

(assert (= (and b!1753993 res!789089) b!1753991))

(assert (= (and b!1753989 c!285998) b!1753992))

(assert (= (and b!1753989 (not c!285998)) b!1753995))

(assert (= (and b!1753992 res!789085) b!1753990))

(assert (= (and b!1753995 (not res!789088)) b!1753994))

(assert (= (and b!1753994 res!789086) b!1753988))

(assert (= (or b!1753992 b!1753988) bm!110499))

(assert (= (or b!1753990 b!1753994) bm!110498))

(assert (= (or b!1753991 bm!110499) bm!110497))

(declare-fun m!2168433 () Bool)

(assert (=> bm!110497 m!2168433))

(declare-fun m!2168435 () Bool)

(assert (=> bm!110498 m!2168435))

(declare-fun m!2168437 () Bool)

(assert (=> b!1753993 m!2168437))

(assert (=> d!535091 d!535873))

(declare-fun d!535875 () Bool)

(declare-fun e!1122616 () Bool)

(assert (=> d!535875 e!1122616))

(declare-fun res!789091 () Bool)

(assert (=> d!535875 (=> (not res!789091) (not e!1122616))))

(declare-fun lt!677546 () List!19356)

(assert (=> d!535875 (= res!789091 (= (content!2771 lt!677546) ((_ map or) (content!2771 (t!163097 lt!677061)) (content!2771 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(declare-fun e!1122615 () List!19356)

(assert (=> d!535875 (= lt!677546 e!1122615)))

(declare-fun c!285999 () Bool)

(assert (=> d!535875 (= c!285999 ((_ is Nil!19286) (t!163097 lt!677061)))))

(assert (=> d!535875 (= (++!5269 (t!163097 lt!677061) (Cons!19286 (head!4042 suffix!1421) Nil!19286)) lt!677546)))

(declare-fun b!1753999 () Bool)

(assert (=> b!1753999 (= e!1122615 (Cons!19286 (h!24687 (t!163097 lt!677061)) (++!5269 (t!163097 (t!163097 lt!677061)) (Cons!19286 (head!4042 suffix!1421) Nil!19286))))))

(declare-fun b!1753998 () Bool)

(assert (=> b!1753998 (= e!1122615 (Cons!19286 (head!4042 suffix!1421) Nil!19286))))

(declare-fun b!1754001 () Bool)

(assert (=> b!1754001 (= e!1122616 (or (not (= (Cons!19286 (head!4042 suffix!1421) Nil!19286) Nil!19286)) (= lt!677546 (t!163097 lt!677061))))))

(declare-fun b!1754000 () Bool)

(declare-fun res!789090 () Bool)

(assert (=> b!1754000 (=> (not res!789090) (not e!1122616))))

(assert (=> b!1754000 (= res!789090 (= (size!15323 lt!677546) (+ (size!15323 (t!163097 lt!677061)) (size!15323 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(assert (= (and d!535875 c!285999) b!1753998))

(assert (= (and d!535875 (not c!285999)) b!1753999))

(assert (= (and d!535875 res!789091) b!1754000))

(assert (= (and b!1754000 res!789090) b!1754001))

(declare-fun m!2168439 () Bool)

(assert (=> d!535875 m!2168439))

(assert (=> d!535875 m!2168403))

(assert (=> d!535875 m!2166451))

(declare-fun m!2168441 () Bool)

(assert (=> b!1753999 m!2168441))

(declare-fun m!2168443 () Bool)

(assert (=> b!1754000 m!2168443))

(assert (=> b!1754000 m!2167405))

(assert (=> b!1754000 m!2166459))

(assert (=> b!1752610 d!535875))

(assert (=> b!1752414 d!535125))

(assert (=> d!535093 d!535091))

(declare-fun d!535877 () Bool)

(assert (=> d!535877 (ruleValid!943 thiss!24550 rule!422)))

(assert (=> d!535877 true))

(declare-fun _$65!939 () Unit!33441)

(assert (=> d!535877 (= (choose!10820 thiss!24550 rule!422 rules!3447) _$65!939)))

(declare-fun bs!403715 () Bool)

(assert (= bs!403715 d!535877))

(assert (=> bs!403715 m!2166185))

(assert (=> d!535093 d!535877))

(assert (=> d!535093 d!535287))

(assert (=> b!1752946 d!535705))

(assert (=> b!1752946 d!535707))

(declare-fun d!535879 () Bool)

(declare-fun e!1122627 () Bool)

(assert (=> d!535879 e!1122627))

(declare-fun res!789093 () Bool)

(assert (=> d!535879 (=> (not res!789093) (not e!1122627))))

(declare-fun lt!677547 () List!19356)

(assert (=> d!535879 (= res!789093 (= (content!2771 lt!677547) ((_ map or) (content!2771 (t!163097 lt!677061)) (content!2771 suffix!1421))))))

(declare-fun e!1122626 () List!19356)

(assert (=> d!535879 (= lt!677547 e!1122626)))

(declare-fun c!286000 () Bool)

(assert (=> d!535879 (= c!286000 ((_ is Nil!19286) (t!163097 lt!677061)))))

(assert (=> d!535879 (= (++!5269 (t!163097 lt!677061) suffix!1421) lt!677547)))

(declare-fun b!1754029 () Bool)

(assert (=> b!1754029 (= e!1122626 (Cons!19286 (h!24687 (t!163097 lt!677061)) (++!5269 (t!163097 (t!163097 lt!677061)) suffix!1421)))))

(declare-fun b!1754028 () Bool)

(assert (=> b!1754028 (= e!1122626 suffix!1421)))

(declare-fun b!1754031 () Bool)

(assert (=> b!1754031 (= e!1122627 (or (not (= suffix!1421 Nil!19286)) (= lt!677547 (t!163097 lt!677061))))))

(declare-fun b!1754030 () Bool)

(declare-fun res!789092 () Bool)

(assert (=> b!1754030 (=> (not res!789092) (not e!1122627))))

(assert (=> b!1754030 (= res!789092 (= (size!15323 lt!677547) (+ (size!15323 (t!163097 lt!677061)) (size!15323 suffix!1421))))))

(assert (= (and d!535879 c!286000) b!1754028))

(assert (= (and d!535879 (not c!286000)) b!1754029))

(assert (= (and d!535879 res!789093) b!1754030))

(assert (= (and b!1754030 res!789092) b!1754031))

(declare-fun m!2168461 () Bool)

(assert (=> d!535879 m!2168461))

(assert (=> d!535879 m!2168403))

(assert (=> d!535879 m!2166635))

(declare-fun m!2168465 () Bool)

(assert (=> b!1754029 m!2168465))

(declare-fun m!2168467 () Bool)

(assert (=> b!1754030 m!2168467))

(assert (=> b!1754030 m!2167405))

(assert (=> b!1754030 m!2166641))

(assert (=> b!1752720 d!535879))

(declare-fun d!535881 () Bool)

(declare-fun res!789094 () Bool)

(declare-fun e!1122632 () Bool)

(assert (=> d!535881 (=> (not res!789094) (not e!1122632))))

(assert (=> d!535881 (= res!789094 (<= (size!15323 (list!7818 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) 512))))

(assert (=> d!535881 (= (inv!25035 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) e!1122632)))

(declare-fun b!1754037 () Bool)

(declare-fun res!789095 () Bool)

(assert (=> b!1754037 (=> (not res!789095) (not e!1122632))))

(assert (=> b!1754037 (= res!789095 (= (csize!13061 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) (size!15323 (list!7818 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))))

(declare-fun b!1754038 () Bool)

(assert (=> b!1754038 (= e!1122632 (and (> (csize!13061 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) 0) (<= (csize!13061 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) 512)))))

(assert (= (and d!535881 res!789094) b!1754037))

(assert (= (and b!1754037 res!789095) b!1754038))

(declare-fun m!2168469 () Bool)

(assert (=> d!535881 m!2168469))

(assert (=> d!535881 m!2168469))

(declare-fun m!2168471 () Bool)

(assert (=> d!535881 m!2168471))

(assert (=> b!1754037 m!2168469))

(assert (=> b!1754037 m!2168469))

(assert (=> b!1754037 m!2168471))

(assert (=> b!1752432 d!535881))

(declare-fun d!535883 () Bool)

(declare-fun lt!677548 () Int)

(assert (=> d!535883 (>= lt!677548 0)))

(declare-fun e!1122636 () Int)

(assert (=> d!535883 (= lt!677548 e!1122636)))

(declare-fun c!286001 () Bool)

(assert (=> d!535883 (= c!286001 ((_ is Nil!19286) lt!677054))))

(assert (=> d!535883 (= (size!15323 lt!677054) lt!677548)))

(declare-fun b!1754051 () Bool)

(assert (=> b!1754051 (= e!1122636 0)))

(declare-fun b!1754052 () Bool)

(assert (=> b!1754052 (= e!1122636 (+ 1 (size!15323 (t!163097 lt!677054))))))

(assert (= (and d!535883 c!286001) b!1754051))

(assert (= (and d!535883 (not c!286001)) b!1754052))

(declare-fun m!2168473 () Bool)

(assert (=> b!1754052 m!2168473))

(assert (=> b!1752730 d!535883))

(assert (=> b!1752730 d!535501))

(declare-fun d!535885 () Bool)

(assert (=> d!535885 (= (isEmpty!12156 (tail!2617 lt!677049)) ((_ is Nil!19286) (tail!2617 lt!677049)))))

(assert (=> b!1752538 d!535885))

(assert (=> b!1752538 d!535473))

(declare-fun d!535887 () Bool)

(declare-fun e!1122657 () Bool)

(assert (=> d!535887 e!1122657))

(declare-fun res!789098 () Bool)

(assert (=> d!535887 (=> (not res!789098) (not e!1122657))))

(declare-fun lt!677551 () BalanceConc!12774)

(assert (=> d!535887 (= res!789098 (= (list!7811 lt!677551) (originalCharacters!4259 (_1!10857 lt!677046))))))

(declare-fun fromList!441 (List!19356) Conc!6415)

(assert (=> d!535887 (= lt!677551 (BalanceConc!12775 (fromList!441 (originalCharacters!4259 (_1!10857 lt!677046)))))))

(assert (=> d!535887 (= (fromListB!1095 (originalCharacters!4259 (_1!10857 lt!677046))) lt!677551)))

(declare-fun b!1754099 () Bool)

(assert (=> b!1754099 (= e!1122657 (isBalanced!2000 (fromList!441 (originalCharacters!4259 (_1!10857 lt!677046)))))))

(assert (= (and d!535887 res!789098) b!1754099))

(declare-fun m!2168493 () Bool)

(assert (=> d!535887 m!2168493))

(declare-fun m!2168495 () Bool)

(assert (=> d!535887 m!2168495))

(assert (=> b!1754099 m!2168495))

(assert (=> b!1754099 m!2168495))

(declare-fun m!2168497 () Bool)

(assert (=> b!1754099 m!2168497))

(assert (=> d!535137 d!535887))

(declare-fun d!535889 () Bool)

(assert (=> d!535889 (= (isEmpty!12160 lt!677062) (not ((_ is Some!3912) lt!677062)))))

(assert (=> d!535161 d!535889))

(declare-fun d!535891 () Bool)

(assert (=> d!535891 (= (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))) (v!25359 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))))))

(assert (=> b!1752941 d!535891))

(assert (=> b!1752941 d!535611))

(assert (=> b!1752659 d!535491))

(declare-fun d!535893 () Bool)

(assert (=> d!535893 (= (head!4042 lt!677054) (h!24687 lt!677054))))

(assert (=> b!1752659 d!535893))

(declare-fun b!1754101 () Bool)

(declare-fun e!1122658 () List!19356)

(declare-fun e!1122659 () List!19356)

(assert (=> b!1754101 (= e!1122658 e!1122659)))

(declare-fun c!286004 () Bool)

(assert (=> b!1754101 (= c!286004 ((_ is Leaf!9358) (c!285665 lt!677045)))))

(declare-fun b!1754102 () Bool)

(assert (=> b!1754102 (= e!1122659 (list!7818 (xs!9291 (c!285665 lt!677045))))))

(declare-fun b!1754100 () Bool)

(assert (=> b!1754100 (= e!1122658 Nil!19286)))

(declare-fun b!1754103 () Bool)

(assert (=> b!1754103 (= e!1122659 (++!5269 (list!7814 (left!15439 (c!285665 lt!677045))) (list!7814 (right!15769 (c!285665 lt!677045)))))))

(declare-fun d!535895 () Bool)

(declare-fun c!286003 () Bool)

(assert (=> d!535895 (= c!286003 ((_ is Empty!6415) (c!285665 lt!677045)))))

(assert (=> d!535895 (= (list!7814 (c!285665 lt!677045)) e!1122658)))

(assert (= (and d!535895 c!286003) b!1754100))

(assert (= (and d!535895 (not c!286003)) b!1754101))

(assert (= (and b!1754101 c!286004) b!1754102))

(assert (= (and b!1754101 (not c!286004)) b!1754103))

(declare-fun m!2168499 () Bool)

(assert (=> b!1754102 m!2168499))

(declare-fun m!2168501 () Bool)

(assert (=> b!1754103 m!2168501))

(declare-fun m!2168503 () Bool)

(assert (=> b!1754103 m!2168503))

(assert (=> b!1754103 m!2168501))

(assert (=> b!1754103 m!2168503))

(declare-fun m!2168505 () Bool)

(assert (=> b!1754103 m!2168505))

(assert (=> d!535163 d!535895))

(declare-fun d!535897 () Bool)

(assert (=> d!535897 (= (nullable!1446 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (nullableFct!331 (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun bs!403716 () Bool)

(assert (= bs!403716 d!535897))

(declare-fun m!2168507 () Bool)

(assert (=> bs!403716 m!2168507))

(assert (=> b!1752542 d!535897))

(declare-fun bm!110500 () Bool)

(declare-fun call!110505 () Option!3912)

(assert (=> bm!110500 (= call!110505 (maxPrefixOneRule!999 thiss!24550 (h!24688 (t!163098 rules!3447)) lt!677054))))

(declare-fun b!1754104 () Bool)

(declare-fun res!789102 () Bool)

(declare-fun e!1122662 () Bool)

(assert (=> b!1754104 (=> (not res!789102) (not e!1122662))))

(declare-fun lt!677553 () Option!3912)

(assert (=> b!1754104 (= res!789102 (matchR!2246 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677553)))) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677553))))))))

(declare-fun b!1754105 () Bool)

(declare-fun res!789105 () Bool)

(assert (=> b!1754105 (=> (not res!789105) (not e!1122662))))

(assert (=> b!1754105 (= res!789105 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677553)))) (_2!10857 (get!5853 lt!677553))) lt!677054))))

(declare-fun b!1754106 () Bool)

(declare-fun res!789104 () Bool)

(assert (=> b!1754106 (=> (not res!789104) (not e!1122662))))

(assert (=> b!1754106 (= res!789104 (< (size!15323 (_2!10857 (get!5853 lt!677553))) (size!15323 lt!677054)))))

(declare-fun b!1754107 () Bool)

(declare-fun e!1122660 () Option!3912)

(declare-fun lt!677555 () Option!3912)

(declare-fun lt!677556 () Option!3912)

(assert (=> b!1754107 (= e!1122660 (ite (and ((_ is None!3911) lt!677555) ((_ is None!3911) lt!677556)) None!3911 (ite ((_ is None!3911) lt!677556) lt!677555 (ite ((_ is None!3911) lt!677555) lt!677556 (ite (>= (size!15320 (_1!10857 (v!25358 lt!677555))) (size!15320 (_1!10857 (v!25358 lt!677556)))) lt!677555 lt!677556)))))))

(assert (=> b!1754107 (= lt!677555 call!110505)))

(assert (=> b!1754107 (= lt!677556 (maxPrefix!1628 thiss!24550 (t!163098 (t!163098 rules!3447)) lt!677054))))

(declare-fun b!1754109 () Bool)

(declare-fun res!789101 () Bool)

(assert (=> b!1754109 (=> (not res!789101) (not e!1122662))))

(assert (=> b!1754109 (= res!789101 (= (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677553)))) (originalCharacters!4259 (_1!10857 (get!5853 lt!677553)))))))

(declare-fun b!1754110 () Bool)

(assert (=> b!1754110 (= e!1122660 call!110505)))

(declare-fun b!1754108 () Bool)

(declare-fun e!1122661 () Bool)

(assert (=> b!1754108 (= e!1122661 e!1122662)))

(declare-fun res!789103 () Bool)

(assert (=> b!1754108 (=> (not res!789103) (not e!1122662))))

(assert (=> b!1754108 (= res!789103 (isDefined!3255 lt!677553))))

(declare-fun d!535899 () Bool)

(assert (=> d!535899 e!1122661))

(declare-fun res!789099 () Bool)

(assert (=> d!535899 (=> res!789099 e!1122661)))

(assert (=> d!535899 (= res!789099 (isEmpty!12161 lt!677553))))

(assert (=> d!535899 (= lt!677553 e!1122660)))

(declare-fun c!286005 () Bool)

(assert (=> d!535899 (= c!286005 (and ((_ is Cons!19287) (t!163098 rules!3447)) ((_ is Nil!19287) (t!163098 (t!163098 rules!3447)))))))

(declare-fun lt!677554 () Unit!33441)

(declare-fun lt!677552 () Unit!33441)

(assert (=> d!535899 (= lt!677554 lt!677552)))

(assert (=> d!535899 (isPrefix!1685 lt!677054 lt!677054)))

(assert (=> d!535899 (= lt!677552 (lemmaIsPrefixRefl!1114 lt!677054 lt!677054))))

(assert (=> d!535899 (rulesValidInductive!1152 thiss!24550 (t!163098 rules!3447))))

(assert (=> d!535899 (= (maxPrefix!1628 thiss!24550 (t!163098 rules!3447) lt!677054) lt!677553)))

(declare-fun b!1754111 () Bool)

(assert (=> b!1754111 (= e!1122662 (contains!3471 (t!163098 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677553)))))))

(declare-fun b!1754112 () Bool)

(declare-fun res!789100 () Bool)

(assert (=> b!1754112 (=> (not res!789100) (not e!1122662))))

(assert (=> b!1754112 (= res!789100 (= (value!107855 (_1!10857 (get!5853 lt!677553))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677553)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677553)))))))))

(assert (= (and d!535899 c!286005) b!1754110))

(assert (= (and d!535899 (not c!286005)) b!1754107))

(assert (= (or b!1754110 b!1754107) bm!110500))

(assert (= (and d!535899 (not res!789099)) b!1754108))

(assert (= (and b!1754108 res!789103) b!1754109))

(assert (= (and b!1754109 res!789101) b!1754106))

(assert (= (and b!1754106 res!789104) b!1754105))

(assert (= (and b!1754105 res!789105) b!1754112))

(assert (= (and b!1754112 res!789100) b!1754104))

(assert (= (and b!1754104 res!789102) b!1754111))

(declare-fun m!2168513 () Bool)

(assert (=> b!1754108 m!2168513))

(declare-fun m!2168515 () Bool)

(assert (=> b!1754106 m!2168515))

(declare-fun m!2168517 () Bool)

(assert (=> b!1754106 m!2168517))

(assert (=> b!1754106 m!2166523))

(assert (=> b!1754104 m!2168515))

(declare-fun m!2168519 () Bool)

(assert (=> b!1754104 m!2168519))

(assert (=> b!1754104 m!2168519))

(declare-fun m!2168521 () Bool)

(assert (=> b!1754104 m!2168521))

(assert (=> b!1754104 m!2168521))

(declare-fun m!2168523 () Bool)

(assert (=> b!1754104 m!2168523))

(declare-fun m!2168525 () Bool)

(assert (=> bm!110500 m!2168525))

(assert (=> b!1754105 m!2168515))

(assert (=> b!1754105 m!2168519))

(assert (=> b!1754105 m!2168519))

(assert (=> b!1754105 m!2168521))

(assert (=> b!1754105 m!2168521))

(declare-fun m!2168527 () Bool)

(assert (=> b!1754105 m!2168527))

(assert (=> b!1754112 m!2168515))

(declare-fun m!2168529 () Bool)

(assert (=> b!1754112 m!2168529))

(assert (=> b!1754112 m!2168529))

(declare-fun m!2168531 () Bool)

(assert (=> b!1754112 m!2168531))

(declare-fun m!2168533 () Bool)

(assert (=> d!535899 m!2168533))

(assert (=> d!535899 m!2166615))

(assert (=> d!535899 m!2166617))

(assert (=> d!535899 m!2168149))

(assert (=> b!1754109 m!2168515))

(assert (=> b!1754109 m!2168519))

(assert (=> b!1754109 m!2168519))

(assert (=> b!1754109 m!2168521))

(assert (=> b!1754111 m!2168515))

(declare-fun m!2168535 () Bool)

(assert (=> b!1754111 m!2168535))

(declare-fun m!2168537 () Bool)

(assert (=> b!1754107 m!2168537))

(assert (=> b!1752707 d!535899))

(declare-fun b!1754115 () Bool)

(declare-fun res!789113 () Bool)

(declare-fun e!1122667 () Bool)

(assert (=> b!1754115 (=> (not res!789113) (not e!1122667))))

(declare-fun lt!677557 () Option!3912)

(assert (=> b!1754115 (= res!789113 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677557)))) (_2!10857 (get!5853 lt!677557))) lt!677054))))

(declare-fun b!1754116 () Bool)

(declare-fun e!1122668 () Bool)

(assert (=> b!1754116 (= e!1122668 (matchR!2246 (regex!3445 (h!24688 rules!3447)) (_1!10862 (findLongestMatchInner!433 (regex!3445 (h!24688 rules!3447)) Nil!19286 (size!15323 Nil!19286) lt!677054 lt!677054 (size!15323 lt!677054)))))))

(declare-fun b!1754117 () Bool)

(declare-fun res!789109 () Bool)

(assert (=> b!1754117 (=> (not res!789109) (not e!1122667))))

(assert (=> b!1754117 (= res!789109 (< (size!15323 (_2!10857 (get!5853 lt!677557))) (size!15323 lt!677054)))))

(declare-fun b!1754118 () Bool)

(declare-fun e!1122666 () Bool)

(assert (=> b!1754118 (= e!1122666 e!1122667)))

(declare-fun res!789112 () Bool)

(assert (=> b!1754118 (=> (not res!789112) (not e!1122667))))

(assert (=> b!1754118 (= res!789112 (matchR!2246 (regex!3445 (h!24688 rules!3447)) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677557))))))))

(declare-fun b!1754119 () Bool)

(assert (=> b!1754119 (= e!1122667 (= (size!15320 (_1!10857 (get!5853 lt!677557))) (size!15323 (originalCharacters!4259 (_1!10857 (get!5853 lt!677557))))))))

(declare-fun d!535905 () Bool)

(assert (=> d!535905 e!1122666))

(declare-fun res!789111 () Bool)

(assert (=> d!535905 (=> res!789111 e!1122666)))

(assert (=> d!535905 (= res!789111 (isEmpty!12161 lt!677557))))

(declare-fun e!1122665 () Option!3912)

(assert (=> d!535905 (= lt!677557 e!1122665)))

(declare-fun c!286006 () Bool)

(declare-fun lt!677560 () tuple2!18920)

(assert (=> d!535905 (= c!286006 (isEmpty!12156 (_1!10862 lt!677560)))))

(assert (=> d!535905 (= lt!677560 (findLongestMatch!360 (regex!3445 (h!24688 rules!3447)) lt!677054))))

(assert (=> d!535905 (ruleValid!943 thiss!24550 (h!24688 rules!3447))))

(assert (=> d!535905 (= (maxPrefixOneRule!999 thiss!24550 (h!24688 rules!3447) lt!677054) lt!677557)))

(declare-fun b!1754120 () Bool)

(declare-fun res!789110 () Bool)

(assert (=> b!1754120 (=> (not res!789110) (not e!1122667))))

(assert (=> b!1754120 (= res!789110 (= (value!107855 (_1!10857 (get!5853 lt!677557))) (apply!5245 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677557)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 (get!5853 lt!677557)))))))))

(declare-fun b!1754121 () Bool)

(assert (=> b!1754121 (= e!1122665 None!3911)))

(declare-fun b!1754122 () Bool)

(assert (=> b!1754122 (= e!1122665 (Some!3911 (tuple2!18911 (Token!6457 (apply!5245 (transformation!3445 (h!24688 rules!3447)) (seqFromList!2414 (_1!10862 lt!677560))) (h!24688 rules!3447) (size!15321 (seqFromList!2414 (_1!10862 lt!677560))) (_1!10862 lt!677560)) (_2!10862 lt!677560))))))

(declare-fun lt!677558 () Unit!33441)

(assert (=> b!1754122 (= lt!677558 (longestMatchIsAcceptedByMatchOrIsEmpty!417 (regex!3445 (h!24688 rules!3447)) lt!677054))))

(declare-fun res!789108 () Bool)

(assert (=> b!1754122 (= res!789108 (isEmpty!12156 (_1!10862 (findLongestMatchInner!433 (regex!3445 (h!24688 rules!3447)) Nil!19286 (size!15323 Nil!19286) lt!677054 lt!677054 (size!15323 lt!677054)))))))

(assert (=> b!1754122 (=> res!789108 e!1122668)))

(assert (=> b!1754122 e!1122668))

(declare-fun lt!677559 () Unit!33441)

(assert (=> b!1754122 (= lt!677559 lt!677558)))

(declare-fun lt!677561 () Unit!33441)

(assert (=> b!1754122 (= lt!677561 (lemmaSemiInverse!583 (transformation!3445 (h!24688 rules!3447)) (seqFromList!2414 (_1!10862 lt!677560))))))

(declare-fun b!1754123 () Bool)

(declare-fun res!789106 () Bool)

(assert (=> b!1754123 (=> (not res!789106) (not e!1122667))))

(assert (=> b!1754123 (= res!789106 (= (rule!5457 (_1!10857 (get!5853 lt!677557))) (h!24688 rules!3447)))))

(assert (= (and d!535905 c!286006) b!1754121))

(assert (= (and d!535905 (not c!286006)) b!1754122))

(assert (= (and b!1754122 (not res!789108)) b!1754116))

(assert (= (and d!535905 (not res!789111)) b!1754118))

(assert (= (and b!1754118 res!789112) b!1754115))

(assert (= (and b!1754115 res!789113) b!1754117))

(assert (= (and b!1754117 res!789109) b!1754123))

(assert (= (and b!1754123 res!789106) b!1754120))

(assert (= (and b!1754120 res!789110) b!1754119))

(declare-fun m!2168539 () Bool)

(assert (=> b!1754123 m!2168539))

(assert (=> b!1754122 m!2167897))

(declare-fun m!2168541 () Bool)

(assert (=> b!1754122 m!2168541))

(assert (=> b!1754122 m!2167897))

(assert (=> b!1754122 m!2166523))

(declare-fun m!2168543 () Bool)

(assert (=> b!1754122 m!2168543))

(declare-fun m!2168545 () Bool)

(assert (=> b!1754122 m!2168545))

(declare-fun m!2168547 () Bool)

(assert (=> b!1754122 m!2168547))

(assert (=> b!1754122 m!2168545))

(declare-fun m!2168549 () Bool)

(assert (=> b!1754122 m!2168549))

(assert (=> b!1754122 m!2166523))

(assert (=> b!1754122 m!2168545))

(declare-fun m!2168551 () Bool)

(assert (=> b!1754122 m!2168551))

(assert (=> b!1754122 m!2168545))

(declare-fun m!2168553 () Bool)

(assert (=> b!1754122 m!2168553))

(assert (=> b!1754116 m!2167897))

(assert (=> b!1754116 m!2166523))

(assert (=> b!1754116 m!2167897))

(assert (=> b!1754116 m!2166523))

(assert (=> b!1754116 m!2168543))

(declare-fun m!2168555 () Bool)

(assert (=> b!1754116 m!2168555))

(assert (=> b!1754119 m!2168539))

(declare-fun m!2168557 () Bool)

(assert (=> b!1754119 m!2168557))

(assert (=> b!1754115 m!2168539))

(declare-fun m!2168559 () Bool)

(assert (=> b!1754115 m!2168559))

(assert (=> b!1754115 m!2168559))

(declare-fun m!2168561 () Bool)

(assert (=> b!1754115 m!2168561))

(assert (=> b!1754115 m!2168561))

(declare-fun m!2168563 () Bool)

(assert (=> b!1754115 m!2168563))

(declare-fun m!2168565 () Bool)

(assert (=> d!535905 m!2168565))

(declare-fun m!2168567 () Bool)

(assert (=> d!535905 m!2168567))

(declare-fun m!2168569 () Bool)

(assert (=> d!535905 m!2168569))

(assert (=> d!535905 m!2168253))

(assert (=> b!1754118 m!2168539))

(assert (=> b!1754118 m!2168559))

(assert (=> b!1754118 m!2168559))

(assert (=> b!1754118 m!2168561))

(assert (=> b!1754118 m!2168561))

(declare-fun m!2168571 () Bool)

(assert (=> b!1754118 m!2168571))

(assert (=> b!1754117 m!2168539))

(declare-fun m!2168573 () Bool)

(assert (=> b!1754117 m!2168573))

(assert (=> b!1754117 m!2166523))

(assert (=> b!1754120 m!2168539))

(declare-fun m!2168575 () Bool)

(assert (=> b!1754120 m!2168575))

(assert (=> b!1754120 m!2168575))

(declare-fun m!2168577 () Bool)

(assert (=> b!1754120 m!2168577))

(assert (=> bm!110407 d!535905))

(declare-fun d!535909 () Bool)

(assert (=> d!535909 (= (isEmpty!12161 lt!677051) (not ((_ is Some!3911) lt!677051)))))

(assert (=> d!535279 d!535909))

(declare-fun d!535911 () Bool)

(assert (=> d!535911 (= (isEmpty!12160 lt!677144) (not ((_ is Some!3912) lt!677144)))))

(assert (=> d!535169 d!535911))

(assert (=> d!535169 d!535097))

(declare-fun d!535913 () Bool)

(declare-fun lt!677562 () Bool)

(assert (=> d!535913 (= lt!677562 (select (content!2772 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677213)))))))

(declare-fun e!1122670 () Bool)

(assert (=> d!535913 (= lt!677562 e!1122670)))

(declare-fun res!789114 () Bool)

(assert (=> d!535913 (=> (not res!789114) (not e!1122670))))

(assert (=> d!535913 (= res!789114 ((_ is Cons!19287) rules!3447))))

(assert (=> d!535913 (= (contains!3471 rules!3447 (rule!5457 (_1!10857 (get!5853 lt!677213)))) lt!677562)))

(declare-fun b!1754124 () Bool)

(declare-fun e!1122669 () Bool)

(assert (=> b!1754124 (= e!1122670 e!1122669)))

(declare-fun res!789115 () Bool)

(assert (=> b!1754124 (=> res!789115 e!1122669)))

(assert (=> b!1754124 (= res!789115 (= (h!24688 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677213)))))))

(declare-fun b!1754125 () Bool)

(assert (=> b!1754125 (= e!1122669 (contains!3471 (t!163098 rules!3447) (rule!5457 (_1!10857 (get!5853 lt!677213)))))))

(assert (= (and d!535913 res!789114) b!1754124))

(assert (= (and b!1754124 (not res!789115)) b!1754125))

(assert (=> d!535913 m!2166981))

(declare-fun m!2168579 () Bool)

(assert (=> d!535913 m!2168579))

(declare-fun m!2168581 () Bool)

(assert (=> b!1754125 m!2168581))

(assert (=> b!1752711 d!535913))

(assert (=> b!1752711 d!535719))

(declare-fun d!535915 () Bool)

(declare-fun lt!677563 () Int)

(assert (=> d!535915 (>= lt!677563 0)))

(declare-fun e!1122671 () Int)

(assert (=> d!535915 (= lt!677563 e!1122671)))

(declare-fun c!286007 () Bool)

(assert (=> d!535915 (= c!286007 ((_ is Nil!19286) (_2!10857 (get!5853 lt!677303))))))

(assert (=> d!535915 (= (size!15323 (_2!10857 (get!5853 lt!677303))) lt!677563)))

(declare-fun b!1754126 () Bool)

(assert (=> b!1754126 (= e!1122671 0)))

(declare-fun b!1754127 () Bool)

(assert (=> b!1754127 (= e!1122671 (+ 1 (size!15323 (t!163097 (_2!10857 (get!5853 lt!677303))))))))

(assert (= (and d!535915 c!286007) b!1754126))

(assert (= (and d!535915 (not c!286007)) b!1754127))

(declare-fun m!2168583 () Bool)

(assert (=> b!1754127 m!2168583))

(assert (=> b!1752981 d!535915))

(assert (=> b!1752981 d!535439))

(assert (=> b!1752981 d!535501))

(declare-fun d!535917 () Bool)

(assert (=> d!535917 (= (isEmpty!12161 lt!677213) (not ((_ is Some!3911) lt!677213)))))

(assert (=> d!535173 d!535917))

(declare-fun b!1754128 () Bool)

(declare-fun e!1122672 () Bool)

(declare-fun e!1122673 () Bool)

(assert (=> b!1754128 (= e!1122672 e!1122673)))

(declare-fun res!789118 () Bool)

(assert (=> b!1754128 (=> (not res!789118) (not e!1122673))))

(assert (=> b!1754128 (= res!789118 (not ((_ is Nil!19286) lt!677054)))))

(declare-fun b!1754130 () Bool)

(assert (=> b!1754130 (= e!1122673 (isPrefix!1685 (tail!2617 lt!677054) (tail!2617 lt!677054)))))

(declare-fun b!1754131 () Bool)

(declare-fun e!1122674 () Bool)

(assert (=> b!1754131 (= e!1122674 (>= (size!15323 lt!677054) (size!15323 lt!677054)))))

(declare-fun d!535919 () Bool)

(assert (=> d!535919 e!1122674))

(declare-fun res!789116 () Bool)

(assert (=> d!535919 (=> res!789116 e!1122674)))

(declare-fun lt!677564 () Bool)

(assert (=> d!535919 (= res!789116 (not lt!677564))))

(assert (=> d!535919 (= lt!677564 e!1122672)))

(declare-fun res!789117 () Bool)

(assert (=> d!535919 (=> res!789117 e!1122672)))

(assert (=> d!535919 (= res!789117 ((_ is Nil!19286) lt!677054))))

(assert (=> d!535919 (= (isPrefix!1685 lt!677054 lt!677054) lt!677564)))

(declare-fun b!1754129 () Bool)

(declare-fun res!789119 () Bool)

(assert (=> b!1754129 (=> (not res!789119) (not e!1122673))))

(assert (=> b!1754129 (= res!789119 (= (head!4042 lt!677054) (head!4042 lt!677054)))))

(assert (= (and d!535919 (not res!789117)) b!1754128))

(assert (= (and b!1754128 res!789118) b!1754129))

(assert (= (and b!1754129 res!789119) b!1754130))

(assert (= (and d!535919 (not res!789116)) b!1754131))

(assert (=> b!1754130 m!2166519))

(assert (=> b!1754130 m!2166519))

(assert (=> b!1754130 m!2166519))

(assert (=> b!1754130 m!2166519))

(declare-fun m!2168585 () Bool)

(assert (=> b!1754130 m!2168585))

(assert (=> b!1754131 m!2166523))

(assert (=> b!1754131 m!2166523))

(assert (=> b!1754129 m!2166525))

(assert (=> b!1754129 m!2166525))

(assert (=> d!535173 d!535919))

(declare-fun d!535921 () Bool)

(assert (=> d!535921 (isPrefix!1685 lt!677054 lt!677054)))

(declare-fun lt!677567 () Unit!33441)

(declare-fun choose!10837 (List!19356 List!19356) Unit!33441)

(assert (=> d!535921 (= lt!677567 (choose!10837 lt!677054 lt!677054))))

(assert (=> d!535921 (= (lemmaIsPrefixRefl!1114 lt!677054 lt!677054) lt!677567)))

(declare-fun bs!403720 () Bool)

(assert (= bs!403720 d!535921))

(assert (=> bs!403720 m!2166615))

(declare-fun m!2168587 () Bool)

(assert (=> bs!403720 m!2168587))

(assert (=> d!535173 d!535921))

(declare-fun bs!403721 () Bool)

(declare-fun d!535923 () Bool)

(assert (= bs!403721 (and d!535923 d!535821)))

(declare-fun lambda!69954 () Int)

(assert (=> bs!403721 (= lambda!69954 lambda!69945)))

(assert (=> d!535923 true))

(declare-fun lt!677570 () Bool)

(assert (=> d!535923 (= lt!677570 (forall!4272 rules!3447 lambda!69954))))

(declare-fun e!1122679 () Bool)

(assert (=> d!535923 (= lt!677570 e!1122679)))

(declare-fun res!789125 () Bool)

(assert (=> d!535923 (=> res!789125 e!1122679)))

(assert (=> d!535923 (= res!789125 (not ((_ is Cons!19287) rules!3447)))))

(assert (=> d!535923 (= (rulesValidInductive!1152 thiss!24550 rules!3447) lt!677570)))

(declare-fun b!1754136 () Bool)

(declare-fun e!1122680 () Bool)

(assert (=> b!1754136 (= e!1122679 e!1122680)))

(declare-fun res!789124 () Bool)

(assert (=> b!1754136 (=> (not res!789124) (not e!1122680))))

(assert (=> b!1754136 (= res!789124 (ruleValid!943 thiss!24550 (h!24688 rules!3447)))))

(declare-fun b!1754137 () Bool)

(assert (=> b!1754137 (= e!1122680 (rulesValidInductive!1152 thiss!24550 (t!163098 rules!3447)))))

(assert (= (and d!535923 (not res!789125)) b!1754136))

(assert (= (and b!1754136 res!789124) b!1754137))

(declare-fun m!2168589 () Bool)

(assert (=> d!535923 m!2168589))

(assert (=> b!1754136 m!2168253))

(assert (=> b!1754137 m!2168149))

(assert (=> d!535173 d!535923))

(declare-fun bs!403722 () Bool)

(declare-fun d!535925 () Bool)

(assert (= bs!403722 (and d!535925 b!1752379)))

(declare-fun lambda!69955 () Int)

(assert (=> bs!403722 (= (and (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69955 lambda!69896))))

(declare-fun bs!403723 () Bool)

(assert (= bs!403723 (and d!535925 d!535151)))

(assert (=> bs!403723 (= (and (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69955 lambda!69905))))

(declare-fun bs!403724 () Bool)

(assert (= bs!403724 (and d!535925 d!535839)))

(assert (=> bs!403724 (= (and (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69955 lambda!69948))))

(assert (=> d!535925 true))

(assert (=> d!535925 (< (dynLambda!9221 order!12151 (toChars!4819 (transformation!3445 (h!24688 rules!3447)))) (dynLambda!9220 order!12149 lambda!69955))))

(assert (=> d!535925 true))

(assert (=> d!535925 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (h!24688 rules!3447)))) (dynLambda!9220 order!12149 lambda!69955))))

(assert (=> d!535925 (= (semiInverseModEq!1362 (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (h!24688 rules!3447)))) (Forall!812 lambda!69955))))

(declare-fun bs!403725 () Bool)

(assert (= bs!403725 d!535925))

(declare-fun m!2168591 () Bool)

(assert (=> bs!403725 m!2168591))

(assert (=> d!535111 d!535925))

(assert (=> d!535157 d!535167))

(assert (=> d!535157 d!535153))

(declare-fun d!535927 () Bool)

(assert (=> d!535927 (isPrefix!1685 lt!677049 (++!5269 lt!677049 (_2!10857 lt!677046)))))

(assert (=> d!535927 true))

(declare-fun _$46!1209 () Unit!33441)

(assert (=> d!535927 (= (choose!10824 lt!677049 (_2!10857 lt!677046)) _$46!1209)))

(declare-fun bs!403726 () Bool)

(assert (= bs!403726 d!535927))

(assert (=> bs!403726 m!2166159))

(assert (=> bs!403726 m!2166159))

(assert (=> bs!403726 m!2166161))

(assert (=> d!535157 d!535927))

(declare-fun d!535929 () Bool)

(assert (=> d!535929 (= (isEmpty!12161 lt!677303) (not ((_ is Some!3911) lt!677303)))))

(assert (=> d!535281 d!535929))

(declare-fun b!1754138 () Bool)

(declare-fun e!1122681 () Bool)

(declare-fun e!1122682 () Bool)

(assert (=> b!1754138 (= e!1122681 e!1122682)))

(declare-fun res!789128 () Bool)

(assert (=> b!1754138 (=> (not res!789128) (not e!1122682))))

(assert (=> b!1754138 (= res!789128 (not ((_ is Nil!19286) lt!677061)))))

(declare-fun b!1754140 () Bool)

(assert (=> b!1754140 (= e!1122682 (isPrefix!1685 (tail!2617 lt!677061) (tail!2617 lt!677061)))))

(declare-fun b!1754141 () Bool)

(declare-fun e!1122683 () Bool)

(assert (=> b!1754141 (= e!1122683 (>= (size!15323 lt!677061) (size!15323 lt!677061)))))

(declare-fun d!535931 () Bool)

(assert (=> d!535931 e!1122683))

(declare-fun res!789126 () Bool)

(assert (=> d!535931 (=> res!789126 e!1122683)))

(declare-fun lt!677571 () Bool)

(assert (=> d!535931 (= res!789126 (not lt!677571))))

(assert (=> d!535931 (= lt!677571 e!1122681)))

(declare-fun res!789127 () Bool)

(assert (=> d!535931 (=> res!789127 e!1122681)))

(assert (=> d!535931 (= res!789127 ((_ is Nil!19286) lt!677061))))

(assert (=> d!535931 (= (isPrefix!1685 lt!677061 lt!677061) lt!677571)))

(declare-fun b!1754139 () Bool)

(declare-fun res!789129 () Bool)

(assert (=> b!1754139 (=> (not res!789129) (not e!1122682))))

(assert (=> b!1754139 (= res!789129 (= (head!4042 lt!677061) (head!4042 lt!677061)))))

(assert (= (and d!535931 (not res!789127)) b!1754138))

(assert (= (and b!1754138 res!789128) b!1754139))

(assert (= (and b!1754139 res!789129) b!1754140))

(assert (= (and d!535931 (not res!789126)) b!1754141))

(assert (=> b!1754140 m!2166283))

(assert (=> b!1754140 m!2166283))

(assert (=> b!1754140 m!2166283))

(assert (=> b!1754140 m!2166283))

(declare-fun m!2168593 () Bool)

(assert (=> b!1754140 m!2168593))

(assert (=> b!1754141 m!2166457))

(assert (=> b!1754141 m!2166457))

(assert (=> b!1754139 m!2166279))

(assert (=> b!1754139 m!2166279))

(assert (=> d!535281 d!535931))

(declare-fun d!535933 () Bool)

(assert (=> d!535933 (isPrefix!1685 lt!677061 lt!677061)))

(declare-fun lt!677572 () Unit!33441)

(assert (=> d!535933 (= lt!677572 (choose!10837 lt!677061 lt!677061))))

(assert (=> d!535933 (= (lemmaIsPrefixRefl!1114 lt!677061 lt!677061) lt!677572)))

(declare-fun bs!403727 () Bool)

(assert (= bs!403727 d!535933))

(assert (=> bs!403727 m!2166969))

(declare-fun m!2168595 () Bool)

(assert (=> bs!403727 m!2168595))

(assert (=> d!535281 d!535933))

(assert (=> d!535281 d!535923))

(declare-fun d!535935 () Bool)

(assert (=> d!535935 (= (isEmpty!12156 (originalCharacters!4259 token!523)) ((_ is Nil!19286) (originalCharacters!4259 token!523)))))

(assert (=> d!535107 d!535935))

(declare-fun d!535937 () Bool)

(declare-fun lt!677573 () Int)

(assert (=> d!535937 (>= lt!677573 0)))

(declare-fun e!1122684 () Int)

(assert (=> d!535937 (= lt!677573 e!1122684)))

(declare-fun c!286008 () Bool)

(assert (=> d!535937 (= c!286008 ((_ is Nil!19286) (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))

(assert (=> d!535937 (= (size!15323 (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))) lt!677573)))

(declare-fun b!1754142 () Bool)

(assert (=> b!1754142 (= e!1122684 0)))

(declare-fun b!1754143 () Bool)

(assert (=> b!1754143 (= e!1122684 (+ 1 (size!15323 (t!163097 (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))))

(assert (= (and d!535937 c!286008) b!1754142))

(assert (= (and d!535937 (not c!286008)) b!1754143))

(declare-fun m!2168597 () Bool)

(assert (=> b!1754143 m!2168597))

(assert (=> b!1752586 d!535937))

(declare-fun d!535939 () Bool)

(assert (=> d!535939 (= (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))) (list!7814 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))))))

(declare-fun bs!403728 () Bool)

(assert (= bs!403728 d!535939))

(declare-fun m!2168599 () Bool)

(assert (=> bs!403728 m!2168599))

(assert (=> b!1752554 d!535939))

(assert (=> b!1752545 d!535491))

(declare-fun d!535941 () Bool)

(assert (=> d!535941 (= (inv!16 (value!107855 token!523)) (= (charsToInt!0 (text!25192 (value!107855 token!523))) (value!107846 (value!107855 token!523))))))

(declare-fun bs!403729 () Bool)

(assert (= bs!403729 d!535941))

(declare-fun m!2168601 () Bool)

(assert (=> bs!403729 m!2168601))

(assert (=> b!1752970 d!535941))

(declare-fun d!535943 () Bool)

(assert (=> d!535943 (= (inv!25037 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) (<= (size!15323 (innerList!6475 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) 2147483647))))

(declare-fun bs!403730 () Bool)

(assert (= bs!403730 d!535943))

(declare-fun m!2168603 () Bool)

(assert (=> bs!403730 m!2168603))

(assert (=> b!1753010 d!535943))

(declare-fun bs!403731 () Bool)

(declare-fun d!535945 () Bool)

(assert (= bs!403731 (and d!535945 b!1752379)))

(declare-fun lambda!69956 () Int)

(assert (=> bs!403731 (= (and (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69956 lambda!69896))))

(declare-fun bs!403732 () Bool)

(assert (= bs!403732 (and d!535945 d!535151)))

(assert (=> bs!403732 (= (and (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69956 lambda!69905))))

(declare-fun bs!403733 () Bool)

(assert (= bs!403733 (and d!535945 d!535839)))

(assert (=> bs!403733 (= (and (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69956 lambda!69948))))

(declare-fun bs!403734 () Bool)

(assert (= bs!403734 (and d!535945 d!535925)))

(assert (=> bs!403734 (= (and (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (h!24688 rules!3447)))) (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (h!24688 rules!3447))))) (= lambda!69956 lambda!69955))))

(assert (=> d!535945 true))

(assert (=> d!535945 (< (dynLambda!9221 order!12151 (toChars!4819 (transformation!3445 rule!422))) (dynLambda!9220 order!12149 lambda!69956))))

(assert (=> d!535945 true))

(assert (=> d!535945 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 rule!422))) (dynLambda!9220 order!12149 lambda!69956))))

(assert (=> d!535945 (= (semiInverseModEq!1362 (toChars!4819 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 rule!422))) (Forall!812 lambda!69956))))

(declare-fun bs!403735 () Bool)

(assert (= bs!403735 d!535945))

(declare-fun m!2168605 () Bool)

(assert (=> bs!403735 m!2168605))

(assert (=> d!535291 d!535945))

(assert (=> b!1752533 d!535885))

(assert (=> b!1752533 d!535473))

(declare-fun d!535947 () Bool)

(assert (=> d!535947 (= (isEmpty!12156 (tail!2617 lt!677061)) ((_ is Nil!19286) (tail!2617 lt!677061)))))

(assert (=> b!1752488 d!535947))

(assert (=> b!1752488 d!535625))

(declare-fun d!535949 () Bool)

(declare-fun lostCauseFct!186 (Regex!4773) Bool)

(assert (=> d!535949 (= (lostCause!557 (rulesRegex!801 thiss!24550 rules!3447)) (lostCauseFct!186 (rulesRegex!801 thiss!24550 rules!3447)))))

(declare-fun bs!403736 () Bool)

(assert (= bs!403736 d!535949))

(assert (=> bs!403736 m!2166207))

(declare-fun m!2168607 () Bool)

(assert (=> bs!403736 m!2168607))

(assert (=> b!1752599 d!535949))

(declare-fun d!535951 () Bool)

(assert (=> d!535951 (= (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) ((_ is Nil!19286) (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(assert (=> d!535267 d!535951))

(declare-fun b!1754144 () Bool)

(declare-fun e!1122691 () Bool)

(declare-fun call!110507 () Bool)

(assert (=> b!1754144 (= e!1122691 call!110507)))

(declare-fun b!1754145 () Bool)

(declare-fun e!1122686 () Bool)

(declare-fun e!1122689 () Bool)

(assert (=> b!1754145 (= e!1122686 e!1122689)))

(declare-fun c!286010 () Bool)

(assert (=> b!1754145 (= c!286010 ((_ is Union!4773) (regex!3445 lt!677059)))))

(declare-fun b!1754146 () Bool)

(declare-fun e!1122688 () Bool)

(declare-fun call!110506 () Bool)

(assert (=> b!1754146 (= e!1122688 call!110506)))

(declare-fun c!286009 () Bool)

(declare-fun bm!110501 () Bool)

(declare-fun call!110508 () Bool)

(assert (=> bm!110501 (= call!110508 (validRegex!1920 (ite c!286009 (reg!5102 (regex!3445 lt!677059)) (ite c!286010 (regOne!10059 (regex!3445 lt!677059)) (regTwo!10058 (regex!3445 lt!677059))))))))

(declare-fun b!1754147 () Bool)

(declare-fun e!1122690 () Bool)

(assert (=> b!1754147 (= e!1122690 call!110508)))

(declare-fun b!1754148 () Bool)

(declare-fun res!789130 () Bool)

(assert (=> b!1754148 (=> (not res!789130) (not e!1122688))))

(assert (=> b!1754148 (= res!789130 call!110507)))

(assert (=> b!1754148 (= e!1122689 e!1122688)))

(declare-fun bm!110502 () Bool)

(assert (=> bm!110502 (= call!110506 (validRegex!1920 (ite c!286010 (regTwo!10059 (regex!3445 lt!677059)) (regOne!10058 (regex!3445 lt!677059)))))))

(declare-fun b!1754149 () Bool)

(assert (=> b!1754149 (= e!1122686 e!1122690)))

(declare-fun res!789134 () Bool)

(assert (=> b!1754149 (= res!789134 (not (nullable!1446 (reg!5102 (regex!3445 lt!677059)))))))

(assert (=> b!1754149 (=> (not res!789134) (not e!1122690))))

(declare-fun d!535953 () Bool)

(declare-fun res!789132 () Bool)

(declare-fun e!1122685 () Bool)

(assert (=> d!535953 (=> res!789132 e!1122685)))

(assert (=> d!535953 (= res!789132 ((_ is ElementMatch!4773) (regex!3445 lt!677059)))))

(assert (=> d!535953 (= (validRegex!1920 (regex!3445 lt!677059)) e!1122685)))

(declare-fun bm!110503 () Bool)

(assert (=> bm!110503 (= call!110507 call!110508)))

(declare-fun b!1754150 () Bool)

(declare-fun e!1122687 () Bool)

(assert (=> b!1754150 (= e!1122687 e!1122691)))

(declare-fun res!789131 () Bool)

(assert (=> b!1754150 (=> (not res!789131) (not e!1122691))))

(assert (=> b!1754150 (= res!789131 call!110506)))

(declare-fun b!1754151 () Bool)

(declare-fun res!789133 () Bool)

(assert (=> b!1754151 (=> res!789133 e!1122687)))

(assert (=> b!1754151 (= res!789133 (not ((_ is Concat!8309) (regex!3445 lt!677059))))))

(assert (=> b!1754151 (= e!1122689 e!1122687)))

(declare-fun b!1754152 () Bool)

(assert (=> b!1754152 (= e!1122685 e!1122686)))

(assert (=> b!1754152 (= c!286009 ((_ is Star!4773) (regex!3445 lt!677059)))))

(assert (= (and d!535953 (not res!789132)) b!1754152))

(assert (= (and b!1754152 c!286009) b!1754149))

(assert (= (and b!1754152 (not c!286009)) b!1754145))

(assert (= (and b!1754149 res!789134) b!1754147))

(assert (= (and b!1754145 c!286010) b!1754148))

(assert (= (and b!1754145 (not c!286010)) b!1754151))

(assert (= (and b!1754148 res!789130) b!1754146))

(assert (= (and b!1754151 (not res!789133)) b!1754150))

(assert (= (and b!1754150 res!789131) b!1754144))

(assert (= (or b!1754148 b!1754144) bm!110503))

(assert (= (or b!1754146 b!1754150) bm!110502))

(assert (= (or b!1754147 bm!110503) bm!110501))

(declare-fun m!2168609 () Bool)

(assert (=> bm!110501 m!2168609))

(declare-fun m!2168611 () Bool)

(assert (=> bm!110502 m!2168611))

(declare-fun m!2168613 () Bool)

(assert (=> b!1754149 m!2168613))

(assert (=> d!535267 d!535953))

(assert (=> b!1752492 d!535627))

(declare-fun b!1754153 () Bool)

(declare-fun e!1122692 () Bool)

(declare-fun e!1122693 () Bool)

(assert (=> b!1754153 (= e!1122692 e!1122693)))

(declare-fun res!789137 () Bool)

(assert (=> b!1754153 (=> (not res!789137) (not e!1122693))))

(assert (=> b!1754153 (= res!789137 (not ((_ is Nil!19286) (tail!2617 lt!677054))))))

(declare-fun b!1754155 () Bool)

(assert (=> b!1754155 (= e!1122693 (isPrefix!1685 (tail!2617 (tail!2617 lt!677061)) (tail!2617 (tail!2617 lt!677054))))))

(declare-fun b!1754156 () Bool)

(declare-fun e!1122694 () Bool)

(assert (=> b!1754156 (= e!1122694 (>= (size!15323 (tail!2617 lt!677054)) (size!15323 (tail!2617 lt!677061))))))

(declare-fun d!535955 () Bool)

(assert (=> d!535955 e!1122694))

(declare-fun res!789135 () Bool)

(assert (=> d!535955 (=> res!789135 e!1122694)))

(declare-fun lt!677574 () Bool)

(assert (=> d!535955 (= res!789135 (not lt!677574))))

(assert (=> d!535955 (= lt!677574 e!1122692)))

(declare-fun res!789136 () Bool)

(assert (=> d!535955 (=> res!789136 e!1122692)))

(assert (=> d!535955 (= res!789136 ((_ is Nil!19286) (tail!2617 lt!677061)))))

(assert (=> d!535955 (= (isPrefix!1685 (tail!2617 lt!677061) (tail!2617 lt!677054)) lt!677574)))

(declare-fun b!1754154 () Bool)

(declare-fun res!789138 () Bool)

(assert (=> b!1754154 (=> (not res!789138) (not e!1122693))))

(assert (=> b!1754154 (= res!789138 (= (head!4042 (tail!2617 lt!677061)) (head!4042 (tail!2617 lt!677054))))))

(assert (= (and d!535955 (not res!789136)) b!1754153))

(assert (= (and b!1754153 res!789137) b!1754154))

(assert (= (and b!1754154 res!789138) b!1754155))

(assert (= (and d!535955 (not res!789135)) b!1754156))

(assert (=> b!1754155 m!2166283))

(assert (=> b!1754155 m!2167757))

(assert (=> b!1754155 m!2166519))

(assert (=> b!1754155 m!2167387))

(assert (=> b!1754155 m!2167757))

(assert (=> b!1754155 m!2167387))

(declare-fun m!2168615 () Bool)

(assert (=> b!1754155 m!2168615))

(assert (=> b!1754156 m!2166519))

(assert (=> b!1754156 m!2167391))

(assert (=> b!1754156 m!2166283))

(declare-fun m!2168617 () Bool)

(assert (=> b!1754156 m!2168617))

(assert (=> b!1754154 m!2166283))

(assert (=> b!1754154 m!2167753))

(assert (=> b!1754154 m!2166519))

(assert (=> b!1754154 m!2167393))

(assert (=> b!1752729 d!535955))

(assert (=> b!1752729 d!535625))

(assert (=> b!1752729 d!535489))

(declare-fun d!535957 () Bool)

(declare-fun lt!677575 () Int)

(assert (=> d!535957 (>= lt!677575 0)))

(declare-fun e!1122695 () Int)

(assert (=> d!535957 (= lt!677575 e!1122695)))

(declare-fun c!286011 () Bool)

(assert (=> d!535957 (= c!286011 ((_ is Nil!19286) lt!677123))))

(assert (=> d!535957 (= (size!15323 lt!677123) lt!677575)))

(declare-fun b!1754157 () Bool)

(assert (=> b!1754157 (= e!1122695 0)))

(declare-fun b!1754158 () Bool)

(assert (=> b!1754158 (= e!1122695 (+ 1 (size!15323 (t!163097 lt!677123))))))

(assert (= (and d!535957 c!286011) b!1754157))

(assert (= (and d!535957 (not c!286011)) b!1754158))

(declare-fun m!2168619 () Bool)

(assert (=> b!1754158 m!2168619))

(assert (=> b!1752620 d!535957))

(declare-fun d!535959 () Bool)

(declare-fun lt!677576 () Int)

(assert (=> d!535959 (>= lt!677576 0)))

(declare-fun e!1122696 () Int)

(assert (=> d!535959 (= lt!677576 e!1122696)))

(declare-fun c!286012 () Bool)

(assert (=> d!535959 (= c!286012 ((_ is Nil!19286) lt!677049))))

(assert (=> d!535959 (= (size!15323 lt!677049) lt!677576)))

(declare-fun b!1754159 () Bool)

(assert (=> b!1754159 (= e!1122696 0)))

(declare-fun b!1754160 () Bool)

(assert (=> b!1754160 (= e!1122696 (+ 1 (size!15323 (t!163097 lt!677049))))))

(assert (= (and d!535959 c!286012) b!1754159))

(assert (= (and d!535959 (not c!286012)) b!1754160))

(declare-fun m!2168621 () Bool)

(assert (=> b!1754160 m!2168621))

(assert (=> b!1752620 d!535959))

(declare-fun d!535961 () Bool)

(declare-fun lt!677577 () Int)

(assert (=> d!535961 (>= lt!677577 0)))

(declare-fun e!1122697 () Int)

(assert (=> d!535961 (= lt!677577 e!1122697)))

(declare-fun c!286013 () Bool)

(assert (=> d!535961 (= c!286013 ((_ is Nil!19286) (_2!10857 lt!677046)))))

(assert (=> d!535961 (= (size!15323 (_2!10857 lt!677046)) lt!677577)))

(declare-fun b!1754161 () Bool)

(assert (=> b!1754161 (= e!1122697 0)))

(declare-fun b!1754162 () Bool)

(assert (=> b!1754162 (= e!1122697 (+ 1 (size!15323 (t!163097 (_2!10857 lt!677046)))))))

(assert (= (and d!535961 c!286013) b!1754161))

(assert (= (and d!535961 (not c!286013)) b!1754162))

(declare-fun m!2168623 () Bool)

(assert (=> b!1754162 m!2168623))

(assert (=> b!1752620 d!535961))

(declare-fun d!535963 () Bool)

(assert (=> d!535963 (= (list!7811 lt!677132) (list!7814 (c!285665 lt!677132)))))

(declare-fun bs!403737 () Bool)

(assert (= bs!403737 d!535963))

(declare-fun m!2168625 () Bool)

(assert (=> bs!403737 m!2168625))

(assert (=> d!535159 d!535963))

(declare-fun d!535965 () Bool)

(assert (=> d!535965 (= (isDefined!3256 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))) (not (isEmpty!12160 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))

(declare-fun bs!403738 () Bool)

(assert (= bs!403738 d!535965))

(assert (=> bs!403738 m!2166181))

(declare-fun m!2168627 () Bool)

(assert (=> bs!403738 m!2168627))

(assert (=> d!535155 d!535965))

(assert (=> d!535155 d!535169))

(declare-fun d!535967 () Bool)

(declare-fun e!1122700 () Bool)

(assert (=> d!535967 e!1122700))

(declare-fun res!789143 () Bool)

(assert (=> d!535967 (=> (not res!789143) (not e!1122700))))

(assert (=> d!535967 (= res!789143 (isDefined!3256 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> d!535967 true))

(declare-fun _$52!1112 () Unit!33441)

(assert (=> d!535967 (= (choose!10823 thiss!24550 rules!3447 lt!677054 (_1!10857 lt!677046)) _$52!1112)))

(declare-fun b!1754167 () Bool)

(declare-fun res!789144 () Bool)

(assert (=> b!1754167 (=> (not res!789144) (not e!1122700))))

(assert (=> b!1754167 (= res!789144 (matchR!2246 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))) (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))

(declare-fun b!1754168 () Bool)

(assert (=> b!1754168 (= e!1122700 (= (rule!5457 (_1!10857 lt!677046)) (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 (_1!10857 lt!677046)))))))))

(assert (= (and d!535967 res!789143) b!1754167))

(assert (= (and b!1754167 res!789144) b!1754168))

(assert (=> d!535967 m!2166181))

(assert (=> d!535967 m!2166181))

(assert (=> d!535967 m!2166479))

(assert (=> b!1754167 m!2166181))

(assert (=> b!1754167 m!2166125))

(assert (=> b!1754167 m!2166485))

(assert (=> b!1754167 m!2166123))

(assert (=> b!1754167 m!2166123))

(assert (=> b!1754167 m!2166125))

(assert (=> b!1754167 m!2166181))

(assert (=> b!1754167 m!2166483))

(assert (=> b!1754168 m!2166181))

(assert (=> b!1754168 m!2166181))

(assert (=> b!1754168 m!2166483))

(assert (=> d!535155 d!535967))

(assert (=> d!535155 d!535097))

(assert (=> b!1752940 d!535891))

(assert (=> b!1752940 d!535601))

(assert (=> b!1752940 d!535509))

(declare-fun b!1754169 () Bool)

(declare-fun e!1122703 () Bool)

(declare-fun lt!677578 () Bool)

(declare-fun call!110509 () Bool)

(assert (=> b!1754169 (= e!1122703 (= lt!677578 call!110509))))

(declare-fun d!535969 () Bool)

(assert (=> d!535969 e!1122703))

(declare-fun c!286014 () Bool)

(assert (=> d!535969 (= c!286014 ((_ is EmptyExpr!4773) (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))))))))

(declare-fun e!1122705 () Bool)

(assert (=> d!535969 (= lt!677578 e!1122705)))

(declare-fun c!286016 () Bool)

(assert (=> d!535969 (= c!286016 (isEmpty!12156 (list!7811 (charsOf!2094 lt!677286))))))

(assert (=> d!535969 (validRegex!1920 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))))))

(assert (=> d!535969 (= (matchR!2246 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))) (list!7811 (charsOf!2094 lt!677286))) lt!677578)))

(declare-fun b!1754170 () Bool)

(declare-fun res!789147 () Bool)

(declare-fun e!1122706 () Bool)

(assert (=> b!1754170 (=> (not res!789147) (not e!1122706))))

(assert (=> b!1754170 (= res!789147 (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 lt!677286)))))))

(declare-fun b!1754171 () Bool)

(declare-fun e!1122702 () Bool)

(assert (=> b!1754171 (= e!1122703 e!1122702)))

(declare-fun c!286015 () Bool)

(assert (=> b!1754171 (= c!286015 ((_ is EmptyLang!4773) (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))))))))

(declare-fun b!1754172 () Bool)

(declare-fun res!789146 () Bool)

(declare-fun e!1122704 () Bool)

(assert (=> b!1754172 (=> res!789146 e!1122704)))

(assert (=> b!1754172 (= res!789146 e!1122706)))

(declare-fun res!789150 () Bool)

(assert (=> b!1754172 (=> (not res!789150) (not e!1122706))))

(assert (=> b!1754172 (= res!789150 lt!677578)))

(declare-fun b!1754173 () Bool)

(declare-fun e!1122707 () Bool)

(assert (=> b!1754173 (= e!1122704 e!1122707)))

(declare-fun res!789152 () Bool)

(assert (=> b!1754173 (=> (not res!789152) (not e!1122707))))

(assert (=> b!1754173 (= res!789152 (not lt!677578))))

(declare-fun b!1754174 () Bool)

(assert (=> b!1754174 (= e!1122702 (not lt!677578))))

(declare-fun b!1754175 () Bool)

(declare-fun res!789149 () Bool)

(declare-fun e!1122701 () Bool)

(assert (=> b!1754175 (=> res!789149 e!1122701)))

(assert (=> b!1754175 (= res!789149 (not (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 lt!677286))))))))

(declare-fun b!1754176 () Bool)

(assert (=> b!1754176 (= e!1122706 (= (head!4042 (list!7811 (charsOf!2094 lt!677286))) (c!285664 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))))))))

(declare-fun b!1754177 () Bool)

(assert (=> b!1754177 (= e!1122705 (matchR!2246 (derivativeStep!1215 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))) (head!4042 (list!7811 (charsOf!2094 lt!677286)))) (tail!2617 (list!7811 (charsOf!2094 lt!677286)))))))

(declare-fun b!1754178 () Bool)

(assert (=> b!1754178 (= e!1122707 e!1122701)))

(declare-fun res!789145 () Bool)

(assert (=> b!1754178 (=> res!789145 e!1122701)))

(assert (=> b!1754178 (= res!789145 call!110509)))

(declare-fun b!1754179 () Bool)

(assert (=> b!1754179 (= e!1122705 (nullable!1446 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))))))))

(declare-fun b!1754180 () Bool)

(declare-fun res!789151 () Bool)

(assert (=> b!1754180 (=> res!789151 e!1122704)))

(assert (=> b!1754180 (= res!789151 (not ((_ is ElementMatch!4773) (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286))))))))))

(assert (=> b!1754180 (= e!1122702 e!1122704)))

(declare-fun bm!110504 () Bool)

(assert (=> bm!110504 (= call!110509 (isEmpty!12156 (list!7811 (charsOf!2094 lt!677286))))))

(declare-fun b!1754181 () Bool)

(declare-fun res!789148 () Bool)

(assert (=> b!1754181 (=> (not res!789148) (not e!1122706))))

(assert (=> b!1754181 (= res!789148 (not call!110509))))

(declare-fun b!1754182 () Bool)

(assert (=> b!1754182 (= e!1122701 (not (= (head!4042 (list!7811 (charsOf!2094 lt!677286))) (c!285664 (regex!3445 (get!5852 (getRuleFromTag!493 thiss!24550 rules!3447 (tag!3797 (rule!5457 lt!677286)))))))))))

(assert (= (and d!535969 c!286016) b!1754179))

(assert (= (and d!535969 (not c!286016)) b!1754177))

(assert (= (and d!535969 c!286014) b!1754169))

(assert (= (and d!535969 (not c!286014)) b!1754171))

(assert (= (and b!1754171 c!286015) b!1754174))

(assert (= (and b!1754171 (not c!286015)) b!1754180))

(assert (= (and b!1754180 (not res!789151)) b!1754172))

(assert (= (and b!1754172 res!789150) b!1754181))

(assert (= (and b!1754181 res!789148) b!1754170))

(assert (= (and b!1754170 res!789147) b!1754176))

(assert (= (and b!1754172 (not res!789146)) b!1754173))

(assert (= (and b!1754173 res!789152) b!1754178))

(assert (= (and b!1754178 (not res!789145)) b!1754175))

(assert (= (and b!1754175 (not res!789149)) b!1754182))

(assert (= (or b!1754169 b!1754178 b!1754181) bm!110504))

(assert (=> d!535969 m!2166867))

(declare-fun m!2168629 () Bool)

(assert (=> d!535969 m!2168629))

(declare-fun m!2168631 () Bool)

(assert (=> d!535969 m!2168631))

(declare-fun m!2168633 () Bool)

(assert (=> b!1754179 m!2168633))

(assert (=> b!1754176 m!2166867))

(declare-fun m!2168635 () Bool)

(assert (=> b!1754176 m!2168635))

(assert (=> b!1754182 m!2166867))

(assert (=> b!1754182 m!2168635))

(assert (=> bm!110504 m!2166867))

(assert (=> bm!110504 m!2168629))

(assert (=> b!1754177 m!2166867))

(assert (=> b!1754177 m!2168635))

(assert (=> b!1754177 m!2168635))

(declare-fun m!2168637 () Bool)

(assert (=> b!1754177 m!2168637))

(assert (=> b!1754177 m!2166867))

(declare-fun m!2168639 () Bool)

(assert (=> b!1754177 m!2168639))

(assert (=> b!1754177 m!2168637))

(assert (=> b!1754177 m!2168639))

(declare-fun m!2168641 () Bool)

(assert (=> b!1754177 m!2168641))

(assert (=> b!1754170 m!2166867))

(assert (=> b!1754170 m!2168639))

(assert (=> b!1754170 m!2168639))

(declare-fun m!2168643 () Bool)

(assert (=> b!1754170 m!2168643))

(assert (=> b!1754175 m!2166867))

(assert (=> b!1754175 m!2168639))

(assert (=> b!1754175 m!2168639))

(assert (=> b!1754175 m!2168643))

(assert (=> b!1752940 d!535969))

(assert (=> b!1752940 d!535611))

(declare-fun d!535971 () Bool)

(declare-fun lt!677579 () Int)

(assert (=> d!535971 (>= lt!677579 0)))

(declare-fun e!1122708 () Int)

(assert (=> d!535971 (= lt!677579 e!1122708)))

(declare-fun c!286017 () Bool)

(assert (=> d!535971 (= c!286017 ((_ is Nil!19286) (originalCharacters!4259 (_1!10857 lt!677046))))))

(assert (=> d!535971 (= (size!15323 (originalCharacters!4259 (_1!10857 lt!677046))) lt!677579)))

(declare-fun b!1754183 () Bool)

(assert (=> b!1754183 (= e!1122708 0)))

(declare-fun b!1754184 () Bool)

(assert (=> b!1754184 (= e!1122708 (+ 1 (size!15323 (t!163097 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(assert (= (and d!535971 c!286017) b!1754183))

(assert (= (and d!535971 (not c!286017)) b!1754184))

(declare-fun m!2168645 () Bool)

(assert (=> b!1754184 m!2168645))

(assert (=> d!535131 d!535971))

(declare-fun d!535973 () Bool)

(declare-fun lt!677580 () Int)

(assert (=> d!535973 (>= lt!677580 0)))

(declare-fun e!1122709 () Int)

(assert (=> d!535973 (= lt!677580 e!1122709)))

(declare-fun c!286018 () Bool)

(assert (=> d!535973 (= c!286018 ((_ is Nil!19286) (_2!10857 (get!5853 lt!677213))))))

(assert (=> d!535973 (= (size!15323 (_2!10857 (get!5853 lt!677213))) lt!677580)))

(declare-fun b!1754185 () Bool)

(assert (=> b!1754185 (= e!1122709 0)))

(declare-fun b!1754186 () Bool)

(assert (=> b!1754186 (= e!1122709 (+ 1 (size!15323 (t!163097 (_2!10857 (get!5853 lt!677213))))))))

(assert (= (and d!535973 c!286018) b!1754185))

(assert (= (and d!535973 (not c!286018)) b!1754186))

(declare-fun m!2168647 () Bool)

(assert (=> b!1754186 m!2168647))

(assert (=> b!1752706 d!535973))

(assert (=> b!1752706 d!535719))

(assert (=> b!1752706 d!535883))

(declare-fun d!535975 () Bool)

(assert (=> d!535975 (= (isEmpty!12156 (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))) ((_ is Nil!19286) (originalCharacters!4259 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))

(assert (=> d!535133 d!535975))

(declare-fun d!535977 () Bool)

(declare-fun res!789157 () Bool)

(declare-fun e!1122714 () Bool)

(assert (=> d!535977 (=> res!789157 e!1122714)))

(assert (=> d!535977 (= res!789157 ((_ is Nil!19287) rules!3447))))

(assert (=> d!535977 (= (noDuplicateTag!1287 thiss!24550 rules!3447 Nil!19288) e!1122714)))

(declare-fun b!1754191 () Bool)

(declare-fun e!1122715 () Bool)

(assert (=> b!1754191 (= e!1122714 e!1122715)))

(declare-fun res!789158 () Bool)

(assert (=> b!1754191 (=> (not res!789158) (not e!1122715))))

(declare-fun contains!3473 (List!19358 String!22007) Bool)

(assert (=> b!1754191 (= res!789158 (not (contains!3473 Nil!19288 (tag!3797 (h!24688 rules!3447)))))))

(declare-fun b!1754192 () Bool)

(assert (=> b!1754192 (= e!1122715 (noDuplicateTag!1287 thiss!24550 (t!163098 rules!3447) (Cons!19288 (tag!3797 (h!24688 rules!3447)) Nil!19288)))))

(assert (= (and d!535977 (not res!789157)) b!1754191))

(assert (= (and b!1754191 res!789158) b!1754192))

(declare-fun m!2168649 () Bool)

(assert (=> b!1754191 m!2168649))

(declare-fun m!2168651 () Bool)

(assert (=> b!1754192 m!2168651))

(assert (=> b!1752531 d!535977))

(assert (=> b!1752495 d!535623))

(declare-fun d!535979 () Bool)

(assert (=> d!535979 (= (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (list!7814 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))))

(declare-fun bs!403739 () Bool)

(assert (= bs!403739 d!535979))

(declare-fun m!2168653 () Bool)

(assert (=> bs!403739 m!2168653))

(assert (=> b!1752585 d!535979))

(declare-fun b!1754194 () Bool)

(declare-fun e!1122716 () List!19356)

(declare-fun e!1122717 () List!19356)

(assert (=> b!1754194 (= e!1122716 e!1122717)))

(declare-fun c!286020 () Bool)

(assert (=> b!1754194 (= c!286020 ((_ is Leaf!9358) (c!285665 (charsOf!2094 (_1!10857 lt!677046)))))))

(declare-fun b!1754195 () Bool)

(assert (=> b!1754195 (= e!1122717 (list!7818 (xs!9291 (c!285665 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun b!1754193 () Bool)

(assert (=> b!1754193 (= e!1122716 Nil!19286)))

(declare-fun b!1754196 () Bool)

(assert (=> b!1754196 (= e!1122717 (++!5269 (list!7814 (left!15439 (c!285665 (charsOf!2094 (_1!10857 lt!677046))))) (list!7814 (right!15769 (c!285665 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun d!535981 () Bool)

(declare-fun c!286019 () Bool)

(assert (=> d!535981 (= c!286019 ((_ is Empty!6415) (c!285665 (charsOf!2094 (_1!10857 lt!677046)))))))

(assert (=> d!535981 (= (list!7814 (c!285665 (charsOf!2094 (_1!10857 lt!677046)))) e!1122716)))

(assert (= (and d!535981 c!286019) b!1754193))

(assert (= (and d!535981 (not c!286019)) b!1754194))

(assert (= (and b!1754194 c!286020) b!1754195))

(assert (= (and b!1754194 (not c!286020)) b!1754196))

(declare-fun m!2168655 () Bool)

(assert (=> b!1754195 m!2168655))

(declare-fun m!2168657 () Bool)

(assert (=> b!1754196 m!2168657))

(declare-fun m!2168659 () Bool)

(assert (=> b!1754196 m!2168659))

(assert (=> b!1754196 m!2168657))

(assert (=> b!1754196 m!2168659))

(declare-fun m!2168661 () Bool)

(assert (=> b!1754196 m!2168661))

(assert (=> d!535269 d!535981))

(assert (=> bm!110414 d!535951))

(assert (=> b!1752483 d!535947))

(assert (=> b!1752483 d!535625))

(declare-fun bs!403740 () Bool)

(declare-fun d!535983 () Bool)

(assert (= bs!403740 (and d!535983 d!535925)))

(declare-fun lambda!69957 () Int)

(assert (=> bs!403740 (= (and (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (h!24688 rules!3447)))) (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (h!24688 rules!3447))))) (= lambda!69957 lambda!69955))))

(declare-fun bs!403741 () Bool)

(assert (= bs!403741 (and d!535983 d!535839)))

(assert (=> bs!403741 (= (and (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69957 lambda!69948))))

(declare-fun bs!403742 () Bool)

(assert (= bs!403742 (and d!535983 b!1752379)))

(assert (=> bs!403742 (= (and (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69957 lambda!69896))))

(declare-fun bs!403743 () Bool)

(assert (= bs!403743 (and d!535983 d!535945)))

(assert (=> bs!403743 (= (and (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 rule!422))) (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 rule!422)))) (= lambda!69957 lambda!69956))))

(declare-fun bs!403744 () Bool)

(assert (= bs!403744 (and d!535983 d!535151)))

(assert (=> bs!403744 (= (and (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (= lambda!69957 lambda!69905))))

(assert (=> d!535983 true))

(assert (=> d!535983 (< (dynLambda!9221 order!12151 (toChars!4819 (transformation!3445 (rule!5457 token!523)))) (dynLambda!9220 order!12149 lambda!69957))))

(assert (=> d!535983 true))

(assert (=> d!535983 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (rule!5457 token!523)))) (dynLambda!9220 order!12149 lambda!69957))))

(assert (=> d!535983 (= (semiInverseModEq!1362 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 token!523)))) (Forall!812 lambda!69957))))

(declare-fun bs!403745 () Bool)

(assert (= bs!403745 d!535983))

(declare-fun m!2168663 () Bool)

(assert (=> bs!403745 m!2168663))

(assert (=> d!535265 d!535983))

(declare-fun b!1754197 () Bool)

(declare-fun e!1122720 () Bool)

(declare-fun lt!677581 () Bool)

(declare-fun call!110510 () Bool)

(assert (=> b!1754197 (= e!1122720 (= lt!677581 call!110510))))

(declare-fun d!535985 () Bool)

(assert (=> d!535985 e!1122720))

(declare-fun c!286021 () Bool)

(assert (=> d!535985 (= c!286021 ((_ is EmptyExpr!4773) (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun e!1122722 () Bool)

(assert (=> d!535985 (= lt!677581 e!1122722)))

(declare-fun c!286023 () Bool)

(assert (=> d!535985 (= c!286023 (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(assert (=> d!535985 (validRegex!1920 (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(assert (=> d!535985 (= (matchR!2246 (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) lt!677581)))

(declare-fun b!1754198 () Bool)

(declare-fun res!789161 () Bool)

(declare-fun e!1122723 () Bool)

(assert (=> b!1754198 (=> (not res!789161) (not e!1122723))))

(assert (=> b!1754198 (= res!789161 (isEmpty!12156 (tail!2617 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun b!1754199 () Bool)

(declare-fun e!1122719 () Bool)

(assert (=> b!1754199 (= e!1122720 e!1122719)))

(declare-fun c!286022 () Bool)

(assert (=> b!1754199 (= c!286022 ((_ is EmptyLang!4773) (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun b!1754200 () Bool)

(declare-fun res!789160 () Bool)

(declare-fun e!1122721 () Bool)

(assert (=> b!1754200 (=> res!789160 e!1122721)))

(assert (=> b!1754200 (= res!789160 e!1122723)))

(declare-fun res!789164 () Bool)

(assert (=> b!1754200 (=> (not res!789164) (not e!1122723))))

(assert (=> b!1754200 (= res!789164 lt!677581)))

(declare-fun b!1754201 () Bool)

(declare-fun e!1122724 () Bool)

(assert (=> b!1754201 (= e!1122721 e!1122724)))

(declare-fun res!789166 () Bool)

(assert (=> b!1754201 (=> (not res!789166) (not e!1122724))))

(assert (=> b!1754201 (= res!789166 (not lt!677581))))

(declare-fun b!1754202 () Bool)

(assert (=> b!1754202 (= e!1122719 (not lt!677581))))

(declare-fun b!1754203 () Bool)

(declare-fun res!789163 () Bool)

(declare-fun e!1122718 () Bool)

(assert (=> b!1754203 (=> res!789163 e!1122718)))

(assert (=> b!1754203 (= res!789163 (not (isEmpty!12156 (tail!2617 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))))

(declare-fun b!1754204 () Bool)

(assert (=> b!1754204 (= e!1122723 (= (head!4042 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) (c!285664 (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))))

(declare-fun b!1754205 () Bool)

(assert (=> b!1754205 (= e!1122722 (matchR!2246 (derivativeStep!1215 (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) (head!4042 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))) (tail!2617 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun b!1754206 () Bool)

(assert (=> b!1754206 (= e!1122724 e!1122718)))

(declare-fun res!789159 () Bool)

(assert (=> b!1754206 (=> res!789159 e!1122718)))

(assert (=> b!1754206 (= res!789159 call!110510)))

(declare-fun b!1754207 () Bool)

(assert (=> b!1754207 (= e!1122722 (nullable!1446 (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))

(declare-fun b!1754208 () Bool)

(declare-fun res!789165 () Bool)

(assert (=> b!1754208 (=> res!789165 e!1122721)))

(assert (=> b!1754208 (= res!789165 (not ((_ is ElementMatch!4773) (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))))

(assert (=> b!1754208 (= e!1122719 e!1122721)))

(declare-fun bm!110505 () Bool)

(assert (=> bm!110505 (= call!110510 (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun b!1754209 () Bool)

(declare-fun res!789162 () Bool)

(assert (=> b!1754209 (=> (not res!789162) (not e!1122723))))

(assert (=> b!1754209 (= res!789162 (not call!110510))))

(declare-fun b!1754210 () Bool)

(assert (=> b!1754210 (= e!1122718 (not (= (head!4042 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) (c!285664 (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))))))))))

(assert (= (and d!535985 c!286023) b!1754207))

(assert (= (and d!535985 (not c!286023)) b!1754205))

(assert (= (and d!535985 c!286021) b!1754197))

(assert (= (and d!535985 (not c!286021)) b!1754199))

(assert (= (and b!1754199 c!286022) b!1754202))

(assert (= (and b!1754199 (not c!286022)) b!1754208))

(assert (= (and b!1754208 (not res!789165)) b!1754200))

(assert (= (and b!1754200 res!789164) b!1754209))

(assert (= (and b!1754209 res!789162) b!1754198))

(assert (= (and b!1754198 res!789161) b!1754204))

(assert (= (and b!1754200 (not res!789160)) b!1754201))

(assert (= (and b!1754201 res!789166) b!1754206))

(assert (= (and b!1754206 (not res!789159)) b!1754203))

(assert (= (and b!1754203 (not res!789163)) b!1754210))

(assert (= (or b!1754197 b!1754206 b!1754209) bm!110505))

(assert (=> d!535985 m!2166925))

(assert (=> d!535985 m!2166929))

(assert (=> d!535985 m!2166923))

(declare-fun m!2168665 () Bool)

(assert (=> d!535985 m!2168665))

(assert (=> b!1754207 m!2166923))

(declare-fun m!2168667 () Bool)

(assert (=> b!1754207 m!2168667))

(assert (=> b!1754204 m!2166925))

(declare-fun m!2168669 () Bool)

(assert (=> b!1754204 m!2168669))

(assert (=> b!1754210 m!2166925))

(assert (=> b!1754210 m!2168669))

(assert (=> bm!110505 m!2166925))

(assert (=> bm!110505 m!2166929))

(assert (=> b!1754205 m!2166925))

(assert (=> b!1754205 m!2168669))

(assert (=> b!1754205 m!2166923))

(assert (=> b!1754205 m!2168669))

(declare-fun m!2168671 () Bool)

(assert (=> b!1754205 m!2168671))

(assert (=> b!1754205 m!2166925))

(declare-fun m!2168673 () Bool)

(assert (=> b!1754205 m!2168673))

(assert (=> b!1754205 m!2168671))

(assert (=> b!1754205 m!2168673))

(declare-fun m!2168675 () Bool)

(assert (=> b!1754205 m!2168675))

(assert (=> b!1754198 m!2166925))

(assert (=> b!1754198 m!2168673))

(assert (=> b!1754198 m!2168673))

(declare-fun m!2168677 () Bool)

(assert (=> b!1754198 m!2168677))

(assert (=> b!1754203 m!2166925))

(assert (=> b!1754203 m!2168673))

(assert (=> b!1754203 m!2168673))

(assert (=> b!1754203 m!2168677))

(assert (=> b!1752953 d!535985))

(declare-fun b!1754211 () Bool)

(declare-fun e!1122725 () Regex!4773)

(assert (=> b!1754211 (= e!1122725 (ite (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046)))) (c!285664 (regex!3445 lt!677059))) EmptyExpr!4773 EmptyLang!4773))))

(declare-fun b!1754212 () Bool)

(declare-fun e!1122729 () Regex!4773)

(assert (=> b!1754212 (= e!1122729 e!1122725)))

(declare-fun c!286026 () Bool)

(assert (=> b!1754212 (= c!286026 ((_ is ElementMatch!4773) (regex!3445 lt!677059)))))

(declare-fun bm!110506 () Bool)

(declare-fun call!110511 () Regex!4773)

(declare-fun call!110512 () Regex!4773)

(assert (=> bm!110506 (= call!110511 call!110512)))

(declare-fun b!1754213 () Bool)

(declare-fun e!1122726 () Regex!4773)

(declare-fun call!110513 () Regex!4773)

(declare-fun call!110514 () Regex!4773)

(assert (=> b!1754213 (= e!1122726 (Union!4773 call!110513 call!110514))))

(declare-fun bm!110507 () Bool)

(declare-fun c!286028 () Bool)

(assert (=> bm!110507 (= call!110513 (derivativeStep!1215 (ite c!286028 (regOne!10059 (regex!3445 lt!677059)) (regOne!10058 (regex!3445 lt!677059))) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun b!1754214 () Bool)

(declare-fun e!1122728 () Regex!4773)

(assert (=> b!1754214 (= e!1122728 (Concat!8309 call!110512 (regex!3445 lt!677059)))))

(declare-fun b!1754215 () Bool)

(assert (=> b!1754215 (= e!1122729 EmptyLang!4773)))

(declare-fun b!1754216 () Bool)

(declare-fun e!1122727 () Regex!4773)

(assert (=> b!1754216 (= e!1122727 (Union!4773 (Concat!8309 call!110511 (regTwo!10058 (regex!3445 lt!677059))) EmptyLang!4773))))

(declare-fun b!1754217 () Bool)

(assert (=> b!1754217 (= e!1122727 (Union!4773 (Concat!8309 call!110513 (regTwo!10058 (regex!3445 lt!677059))) call!110511))))

(declare-fun b!1754218 () Bool)

(declare-fun c!286025 () Bool)

(assert (=> b!1754218 (= c!286025 (nullable!1446 (regOne!10058 (regex!3445 lt!677059))))))

(assert (=> b!1754218 (= e!1122728 e!1122727)))

(declare-fun b!1754219 () Bool)

(assert (=> b!1754219 (= c!286028 ((_ is Union!4773) (regex!3445 lt!677059)))))

(assert (=> b!1754219 (= e!1122725 e!1122726)))

(declare-fun d!535987 () Bool)

(declare-fun lt!677582 () Regex!4773)

(assert (=> d!535987 (validRegex!1920 lt!677582)))

(assert (=> d!535987 (= lt!677582 e!1122729)))

(declare-fun c!286024 () Bool)

(assert (=> d!535987 (= c!286024 (or ((_ is EmptyExpr!4773) (regex!3445 lt!677059)) ((_ is EmptyLang!4773) (regex!3445 lt!677059))))))

(assert (=> d!535987 (validRegex!1920 (regex!3445 lt!677059))))

(assert (=> d!535987 (= (derivativeStep!1215 (regex!3445 lt!677059) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))) lt!677582)))

(declare-fun b!1754220 () Bool)

(assert (=> b!1754220 (= e!1122726 e!1122728)))

(declare-fun c!286027 () Bool)

(assert (=> b!1754220 (= c!286027 ((_ is Star!4773) (regex!3445 lt!677059)))))

(declare-fun bm!110508 () Bool)

(assert (=> bm!110508 (= call!110514 (derivativeStep!1215 (ite c!286028 (regTwo!10059 (regex!3445 lt!677059)) (ite c!286027 (reg!5102 (regex!3445 lt!677059)) (ite c!286025 (regTwo!10058 (regex!3445 lt!677059)) (regOne!10058 (regex!3445 lt!677059))))) (head!4042 (list!7811 (charsOf!2094 (_1!10857 lt!677046))))))))

(declare-fun bm!110509 () Bool)

(assert (=> bm!110509 (= call!110512 call!110514)))

(assert (= (and d!535987 c!286024) b!1754215))

(assert (= (and d!535987 (not c!286024)) b!1754212))

(assert (= (and b!1754212 c!286026) b!1754211))

(assert (= (and b!1754212 (not c!286026)) b!1754219))

(assert (= (and b!1754219 c!286028) b!1754213))

(assert (= (and b!1754219 (not c!286028)) b!1754220))

(assert (= (and b!1754220 c!286027) b!1754214))

(assert (= (and b!1754220 (not c!286027)) b!1754218))

(assert (= (and b!1754218 c!286025) b!1754217))

(assert (= (and b!1754218 (not c!286025)) b!1754216))

(assert (= (or b!1754217 b!1754216) bm!110506))

(assert (= (or b!1754214 bm!110506) bm!110509))

(assert (= (or b!1754213 bm!110509) bm!110508))

(assert (= (or b!1754213 b!1754217) bm!110507))

(assert (=> bm!110507 m!2166921))

(declare-fun m!2168679 () Bool)

(assert (=> bm!110507 m!2168679))

(declare-fun m!2168681 () Bool)

(assert (=> b!1754218 m!2168681))

(declare-fun m!2168683 () Bool)

(assert (=> d!535987 m!2168683))

(assert (=> d!535987 m!2166917))

(assert (=> bm!110508 m!2166921))

(declare-fun m!2168685 () Bool)

(assert (=> bm!110508 m!2168685))

(assert (=> b!1752953 d!535987))

(assert (=> b!1752953 d!535849))

(assert (=> b!1752953 d!535707))

(declare-fun d!535989 () Bool)

(declare-fun lt!677583 () Int)

(assert (=> d!535989 (>= lt!677583 0)))

(declare-fun e!1122730 () Int)

(assert (=> d!535989 (= lt!677583 e!1122730)))

(declare-fun c!286029 () Bool)

(assert (=> d!535989 (= c!286029 ((_ is Nil!19286) (list!7811 lt!677045)))))

(assert (=> d!535989 (= (size!15323 (list!7811 lt!677045)) lt!677583)))

(declare-fun b!1754221 () Bool)

(assert (=> b!1754221 (= e!1122730 0)))

(declare-fun b!1754222 () Bool)

(assert (=> b!1754222 (= e!1122730 (+ 1 (size!15323 (t!163097 (list!7811 lt!677045)))))))

(assert (= (and d!535989 c!286029) b!1754221))

(assert (= (and d!535989 (not c!286029)) b!1754222))

(declare-fun m!2168687 () Bool)

(assert (=> b!1754222 m!2168687))

(assert (=> d!535129 d!535989))

(assert (=> d!535129 d!535163))

(declare-fun d!535991 () Bool)

(declare-fun lt!677586 () Int)

(assert (=> d!535991 (= lt!677586 (size!15323 (list!7814 (c!285665 lt!677045))))))

(assert (=> d!535991 (= lt!677586 (ite ((_ is Empty!6415) (c!285665 lt!677045)) 0 (ite ((_ is Leaf!9358) (c!285665 lt!677045)) (csize!13061 (c!285665 lt!677045)) (csize!13060 (c!285665 lt!677045)))))))

(assert (=> d!535991 (= (size!15324 (c!285665 lt!677045)) lt!677586)))

(declare-fun bs!403746 () Bool)

(assert (= bs!403746 d!535991))

(assert (=> bs!403746 m!2166493))

(assert (=> bs!403746 m!2166493))

(declare-fun m!2168689 () Bool)

(assert (=> bs!403746 m!2168689))

(assert (=> d!535129 d!535991))

(declare-fun b!1754223 () Bool)

(declare-fun e!1122733 () Bool)

(assert (=> b!1754223 (= e!1122733 (inv!15 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(declare-fun b!1754224 () Bool)

(declare-fun e!1122731 () Bool)

(assert (=> b!1754224 (= e!1122731 (inv!16 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(declare-fun b!1754225 () Bool)

(declare-fun res!789167 () Bool)

(assert (=> b!1754225 (=> res!789167 e!1122733)))

(assert (=> b!1754225 (= res!789167 (not ((_ is IntegerValue!10607) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))))))))

(declare-fun e!1122732 () Bool)

(assert (=> b!1754225 (= e!1122732 e!1122733)))

(declare-fun d!535993 () Bool)

(declare-fun c!286031 () Bool)

(assert (=> d!535993 (= c!286031 ((_ is IntegerValue!10605) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(assert (=> d!535993 (= (inv!21 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))) e!1122731)))

(declare-fun b!1754226 () Bool)

(assert (=> b!1754226 (= e!1122731 e!1122732)))

(declare-fun c!286030 () Bool)

(assert (=> b!1754226 (= c!286030 ((_ is IntegerValue!10606) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(declare-fun b!1754227 () Bool)

(assert (=> b!1754227 (= e!1122732 (inv!17 (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(assert (= (and d!535993 c!286031) b!1754224))

(assert (= (and d!535993 (not c!286031)) b!1754226))

(assert (= (and b!1754226 c!286030) b!1754227))

(assert (= (and b!1754226 (not c!286030)) b!1754225))

(assert (= (and b!1754225 (not res!789167)) b!1754223))

(declare-fun m!2168691 () Bool)

(assert (=> b!1754223 m!2168691))

(declare-fun m!2168693 () Bool)

(assert (=> b!1754224 m!2168693))

(declare-fun m!2168695 () Bool)

(assert (=> b!1754227 m!2168695))

(assert (=> tb!105181 d!535993))

(declare-fun d!535995 () Bool)

(declare-fun e!1122735 () Bool)

(assert (=> d!535995 e!1122735))

(declare-fun res!789169 () Bool)

(assert (=> d!535995 (=> (not res!789169) (not e!1122735))))

(declare-fun lt!677587 () List!19356)

(assert (=> d!535995 (= res!789169 (= (content!2771 lt!677587) ((_ map or) (content!2771 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))) (content!2771 (_2!10857 (get!5853 lt!677303))))))))

(declare-fun e!1122734 () List!19356)

(assert (=> d!535995 (= lt!677587 e!1122734)))

(declare-fun c!286032 () Bool)

(assert (=> d!535995 (= c!286032 ((_ is Nil!19286) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))))))

(assert (=> d!535995 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))) (_2!10857 (get!5853 lt!677303))) lt!677587)))

(declare-fun b!1754229 () Bool)

(assert (=> b!1754229 (= e!1122734 (Cons!19286 (h!24687 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))) (++!5269 (t!163097 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))) (_2!10857 (get!5853 lt!677303)))))))

(declare-fun b!1754228 () Bool)

(assert (=> b!1754228 (= e!1122734 (_2!10857 (get!5853 lt!677303)))))

(declare-fun b!1754231 () Bool)

(assert (=> b!1754231 (= e!1122735 (or (not (= (_2!10857 (get!5853 lt!677303)) Nil!19286)) (= lt!677587 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))))))))

(declare-fun b!1754230 () Bool)

(declare-fun res!789168 () Bool)

(assert (=> b!1754230 (=> (not res!789168) (not e!1122735))))

(assert (=> b!1754230 (= res!789168 (= (size!15323 lt!677587) (+ (size!15323 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))) (size!15323 (_2!10857 (get!5853 lt!677303))))))))

(assert (= (and d!535995 c!286032) b!1754228))

(assert (= (and d!535995 (not c!286032)) b!1754229))

(assert (= (and d!535995 res!789169) b!1754230))

(assert (= (and b!1754230 res!789168) b!1754231))

(declare-fun m!2168697 () Bool)

(assert (=> d!535995 m!2168697))

(assert (=> d!535995 m!2166955))

(declare-fun m!2168699 () Bool)

(assert (=> d!535995 m!2168699))

(declare-fun m!2168701 () Bool)

(assert (=> d!535995 m!2168701))

(declare-fun m!2168703 () Bool)

(assert (=> b!1754229 m!2168703))

(declare-fun m!2168705 () Bool)

(assert (=> b!1754230 m!2168705))

(assert (=> b!1754230 m!2166955))

(declare-fun m!2168707 () Bool)

(assert (=> b!1754230 m!2168707))

(assert (=> b!1754230 m!2166951))

(assert (=> b!1752980 d!535995))

(declare-fun d!535997 () Bool)

(assert (=> d!535997 (= (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))) (list!7814 (c!285665 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))))))

(declare-fun bs!403747 () Bool)

(assert (= bs!403747 d!535997))

(declare-fun m!2168709 () Bool)

(assert (=> bs!403747 m!2168709))

(assert (=> b!1752980 d!535997))

(declare-fun d!535999 () Bool)

(declare-fun lt!677588 () BalanceConc!12774)

(assert (=> d!535999 (= (list!7811 lt!677588) (originalCharacters!4259 (_1!10857 (get!5853 lt!677303))))))

(assert (=> d!535999 (= lt!677588 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))) (value!107855 (_1!10857 (get!5853 lt!677303)))))))

(assert (=> d!535999 (= (charsOf!2094 (_1!10857 (get!5853 lt!677303))) lt!677588)))

(declare-fun b_lambda!56475 () Bool)

(assert (=> (not b_lambda!56475) (not d!535999)))

(declare-fun tb!105323 () Bool)

(declare-fun t!163266 () Bool)

(assert (=> (and b!1752378 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163266) tb!105323))

(declare-fun b!1754232 () Bool)

(declare-fun e!1122736 () Bool)

(declare-fun tp!498682 () Bool)

(assert (=> b!1754232 (= e!1122736 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))) (value!107855 (_1!10857 (get!5853 lt!677303)))))) tp!498682))))

(declare-fun result!126698 () Bool)

(assert (=> tb!105323 (= result!126698 (and (inv!25031 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))) (value!107855 (_1!10857 (get!5853 lt!677303))))) e!1122736))))

(assert (= tb!105323 b!1754232))

(declare-fun m!2168711 () Bool)

(assert (=> b!1754232 m!2168711))

(declare-fun m!2168713 () Bool)

(assert (=> tb!105323 m!2168713))

(assert (=> d!535999 t!163266))

(declare-fun b_and!131477 () Bool)

(assert (= b_and!131409 (and (=> t!163266 result!126698) b_and!131477)))

(declare-fun tb!105325 () Bool)

(declare-fun t!163268 () Bool)

(assert (=> (and b!1752373 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163268) tb!105325))

(declare-fun result!126700 () Bool)

(assert (= result!126700 result!126698))

(assert (=> d!535999 t!163268))

(declare-fun b_and!131479 () Bool)

(assert (= b_and!131411 (and (=> t!163268 result!126700) b_and!131479)))

(declare-fun tb!105327 () Bool)

(declare-fun t!163270 () Bool)

(assert (=> (and b!1752383 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163270) tb!105327))

(declare-fun result!126702 () Bool)

(assert (= result!126702 result!126698))

(assert (=> d!535999 t!163270))

(declare-fun b_and!131481 () Bool)

(assert (= b_and!131413 (and (=> t!163270 result!126702) b_and!131481)))

(declare-fun tb!105329 () Bool)

(declare-fun t!163272 () Bool)

(assert (=> (and b!1753022 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163272) tb!105329))

(declare-fun result!126704 () Bool)

(assert (= result!126704 result!126698))

(assert (=> d!535999 t!163272))

(declare-fun b_and!131483 () Bool)

(assert (= b_and!131415 (and (=> t!163272 result!126704) b_and!131483)))

(declare-fun m!2168715 () Bool)

(assert (=> d!535999 m!2168715))

(declare-fun m!2168717 () Bool)

(assert (=> d!535999 m!2168717))

(assert (=> b!1752980 d!535999))

(assert (=> b!1752980 d!535439))

(declare-fun bs!403748 () Bool)

(declare-fun d!536001 () Bool)

(assert (= bs!403748 (and d!536001 d!535135)))

(declare-fun lambda!69958 () Int)

(assert (=> bs!403748 (= (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= lambda!69958 lambda!69899))))

(declare-fun bs!403749 () Bool)

(assert (= bs!403749 (and d!536001 d!535477)))

(assert (=> bs!403749 (= (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 token!523)))) (= lambda!69958 lambda!69934))))

(declare-fun bs!403750 () Bool)

(assert (= bs!403750 (and d!536001 d!535815)))

(assert (=> bs!403750 (= (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= lambda!69958 lambda!69942))))

(assert (=> d!536001 true))

(assert (=> d!536001 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 (h!24688 rules!3447)))) (dynLambda!9224 order!12153 lambda!69958))))

(assert (=> d!536001 (= (equivClasses!1303 (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (h!24688 rules!3447)))) (Forall2!559 lambda!69958))))

(declare-fun bs!403751 () Bool)

(assert (= bs!403751 d!536001))

(declare-fun m!2168719 () Bool)

(assert (=> bs!403751 m!2168719))

(assert (=> b!1752581 d!536001))

(declare-fun d!536003 () Bool)

(declare-fun res!789176 () Bool)

(declare-fun e!1122739 () Bool)

(assert (=> d!536003 (=> (not res!789176) (not e!1122739))))

(assert (=> d!536003 (= res!789176 (= (csize!13060 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) (+ (size!15324 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) (size!15324 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))))

(assert (=> d!536003 (= (inv!25034 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) e!1122739)))

(declare-fun b!1754239 () Bool)

(declare-fun res!789177 () Bool)

(assert (=> b!1754239 (=> (not res!789177) (not e!1122739))))

(assert (=> b!1754239 (= res!789177 (and (not (= (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) Empty!6415)) (not (= (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) Empty!6415))))))

(declare-fun b!1754240 () Bool)

(declare-fun res!789178 () Bool)

(assert (=> b!1754240 (=> (not res!789178) (not e!1122739))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1754240 (= res!789178 (= (cheight!6626 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))) (+ (max!0 (height!1005 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) (height!1005 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) 1)))))

(declare-fun b!1754241 () Bool)

(assert (=> b!1754241 (= e!1122739 (<= 0 (cheight!6626 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(assert (= (and d!536003 res!789176) b!1754239))

(assert (= (and b!1754239 res!789177) b!1754240))

(assert (= (and b!1754240 res!789178) b!1754241))

(declare-fun m!2168721 () Bool)

(assert (=> d!536003 m!2168721))

(declare-fun m!2168723 () Bool)

(assert (=> d!536003 m!2168723))

(assert (=> b!1754240 m!2168283))

(assert (=> b!1754240 m!2168285))

(assert (=> b!1754240 m!2168283))

(assert (=> b!1754240 m!2168285))

(declare-fun m!2168725 () Bool)

(assert (=> b!1754240 m!2168725))

(assert (=> b!1752582 d!536003))

(declare-fun d!536005 () Bool)

(declare-fun lt!677589 () Int)

(assert (=> d!536005 (>= lt!677589 0)))

(declare-fun e!1122740 () Int)

(assert (=> d!536005 (= lt!677589 e!1122740)))

(declare-fun c!286033 () Bool)

(assert (=> d!536005 (= c!286033 ((_ is Nil!19286) (++!5269 lt!677049 (_2!10857 lt!677046))))))

(assert (=> d!536005 (= (size!15323 (++!5269 lt!677049 (_2!10857 lt!677046))) lt!677589)))

(declare-fun b!1754242 () Bool)

(assert (=> b!1754242 (= e!1122740 0)))

(declare-fun b!1754243 () Bool)

(assert (=> b!1754243 (= e!1122740 (+ 1 (size!15323 (t!163097 (++!5269 lt!677049 (_2!10857 lt!677046))))))))

(assert (= (and d!536005 c!286033) b!1754242))

(assert (= (and d!536005 (not c!286033)) b!1754243))

(declare-fun m!2168727 () Bool)

(assert (=> b!1754243 m!2168727))

(assert (=> b!1752639 d!536005))

(assert (=> b!1752639 d!535959))

(assert (=> b!1752984 d!535997))

(assert (=> b!1752984 d!535999))

(assert (=> b!1752984 d!535439))

(declare-fun d!536007 () Bool)

(assert (=> d!536007 (= (inv!15 (value!107855 token!523)) (= (charsToBigInt!0 (text!25194 (value!107855 token!523)) 0) (value!107850 (value!107855 token!523))))))

(declare-fun bs!403752 () Bool)

(assert (= bs!403752 d!536007))

(declare-fun m!2168729 () Bool)

(assert (=> bs!403752 m!2168729))

(assert (=> b!1752969 d!536007))

(declare-fun d!536009 () Bool)

(declare-fun c!286034 () Bool)

(assert (=> d!536009 (= c!286034 ((_ is Node!6415) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(declare-fun e!1122741 () Bool)

(assert (=> d!536009 (= (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) e!1122741)))

(declare-fun b!1754244 () Bool)

(assert (=> b!1754244 (= e!1122741 (inv!25034 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(declare-fun b!1754245 () Bool)

(declare-fun e!1122742 () Bool)

(assert (=> b!1754245 (= e!1122741 e!1122742)))

(declare-fun res!789179 () Bool)

(assert (=> b!1754245 (= res!789179 (not ((_ is Leaf!9358) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))))

(assert (=> b!1754245 (=> res!789179 e!1122742)))

(declare-fun b!1754246 () Bool)

(assert (=> b!1754246 (= e!1122742 (inv!25035 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(assert (= (and d!536009 c!286034) b!1754244))

(assert (= (and d!536009 (not c!286034)) b!1754245))

(assert (= (and b!1754245 (not res!789179)) b!1754246))

(declare-fun m!2168731 () Bool)

(assert (=> b!1754244 m!2168731))

(declare-fun m!2168733 () Bool)

(assert (=> b!1754246 m!2168733))

(assert (=> b!1753009 d!536009))

(declare-fun d!536011 () Bool)

(declare-fun c!286035 () Bool)

(assert (=> d!536011 (= c!286035 ((_ is Node!6415) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(declare-fun e!1122743 () Bool)

(assert (=> d!536011 (= (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) e!1122743)))

(declare-fun b!1754247 () Bool)

(assert (=> b!1754247 (= e!1122743 (inv!25034 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(declare-fun b!1754248 () Bool)

(declare-fun e!1122744 () Bool)

(assert (=> b!1754248 (= e!1122743 e!1122744)))

(declare-fun res!789180 () Bool)

(assert (=> b!1754248 (= res!789180 (not ((_ is Leaf!9358) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))))))

(assert (=> b!1754248 (=> res!789180 e!1122744)))

(declare-fun b!1754249 () Bool)

(assert (=> b!1754249 (= e!1122744 (inv!25035 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))))

(assert (= (and d!536011 c!286035) b!1754247))

(assert (= (and d!536011 (not c!286035)) b!1754248))

(assert (= (and b!1754248 (not res!789180)) b!1754249))

(declare-fun m!2168735 () Bool)

(assert (=> b!1754247 m!2168735))

(declare-fun m!2168737 () Bool)

(assert (=> b!1754249 m!2168737))

(assert (=> b!1753009 d!536011))

(declare-fun d!536013 () Bool)

(declare-fun c!286036 () Bool)

(assert (=> d!536013 (= c!286036 ((_ is Nil!19286) lt!677123))))

(declare-fun e!1122745 () (InoxSet C!9720))

(assert (=> d!536013 (= (content!2771 lt!677123) e!1122745)))

(declare-fun b!1754250 () Bool)

(assert (=> b!1754250 (= e!1122745 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1754251 () Bool)

(assert (=> b!1754251 (= e!1122745 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 lt!677123) true) (content!2771 (t!163097 lt!677123))))))

(assert (= (and d!536013 c!286036) b!1754250))

(assert (= (and d!536013 (not c!286036)) b!1754251))

(declare-fun m!2168739 () Bool)

(assert (=> b!1754251 m!2168739))

(declare-fun m!2168741 () Bool)

(assert (=> b!1754251 m!2168741))

(assert (=> d!535153 d!536013))

(declare-fun d!536015 () Bool)

(declare-fun c!286037 () Bool)

(assert (=> d!536015 (= c!286037 ((_ is Nil!19286) lt!677049))))

(declare-fun e!1122746 () (InoxSet C!9720))

(assert (=> d!536015 (= (content!2771 lt!677049) e!1122746)))

(declare-fun b!1754252 () Bool)

(assert (=> b!1754252 (= e!1122746 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1754253 () Bool)

(assert (=> b!1754253 (= e!1122746 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 lt!677049) true) (content!2771 (t!163097 lt!677049))))))

(assert (= (and d!536015 c!286037) b!1754252))

(assert (= (and d!536015 (not c!286037)) b!1754253))

(declare-fun m!2168743 () Bool)

(assert (=> b!1754253 m!2168743))

(declare-fun m!2168745 () Bool)

(assert (=> b!1754253 m!2168745))

(assert (=> d!535153 d!536015))

(declare-fun d!536017 () Bool)

(declare-fun c!286038 () Bool)

(assert (=> d!536017 (= c!286038 ((_ is Nil!19286) (_2!10857 lt!677046)))))

(declare-fun e!1122747 () (InoxSet C!9720))

(assert (=> d!536017 (= (content!2771 (_2!10857 lt!677046)) e!1122747)))

(declare-fun b!1754254 () Bool)

(assert (=> b!1754254 (= e!1122747 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1754255 () Bool)

(assert (=> b!1754255 (= e!1122747 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 (_2!10857 lt!677046)) true) (content!2771 (t!163097 (_2!10857 lt!677046)))))))

(assert (= (and d!536017 c!286038) b!1754254))

(assert (= (and d!536017 (not c!286038)) b!1754255))

(declare-fun m!2168747 () Bool)

(assert (=> b!1754255 m!2168747))

(declare-fun m!2168749 () Bool)

(assert (=> b!1754255 m!2168749))

(assert (=> d!535153 d!536017))

(assert (=> b!1752627 d!535631))

(assert (=> b!1752627 d!535169))

(declare-fun c!286039 () Bool)

(declare-fun d!536019 () Bool)

(assert (=> d!536019 (= c!286039 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))))

(declare-fun e!1122748 () Bool)

(assert (=> d!536019 (= (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) e!1122748)))

(declare-fun b!1754256 () Bool)

(assert (=> b!1754256 (= e!1122748 (inv!25034 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))))

(declare-fun b!1754257 () Bool)

(declare-fun e!1122749 () Bool)

(assert (=> b!1754257 (= e!1122748 e!1122749)))

(declare-fun res!789181 () Bool)

(assert (=> b!1754257 (= res!789181 (not ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))))))

(assert (=> b!1754257 (=> res!789181 e!1122749)))

(declare-fun b!1754258 () Bool)

(assert (=> b!1754258 (= e!1122749 (inv!25035 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))))))

(assert (= (and d!536019 c!286039) b!1754256))

(assert (= (and d!536019 (not c!286039)) b!1754257))

(assert (= (and b!1754257 (not res!789181)) b!1754258))

(declare-fun m!2168751 () Bool)

(assert (=> b!1754256 m!2168751))

(declare-fun m!2168753 () Bool)

(assert (=> b!1754258 m!2168753))

(assert (=> b!1752587 d!536019))

(declare-fun b!1754260 () Bool)

(declare-fun e!1122750 () List!19356)

(declare-fun e!1122751 () List!19356)

(assert (=> b!1754260 (= e!1122750 e!1122751)))

(declare-fun c!286041 () Bool)

(assert (=> b!1754260 (= c!286041 ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))

(declare-fun b!1754261 () Bool)

(assert (=> b!1754261 (= e!1122751 (list!7818 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(declare-fun b!1754259 () Bool)

(assert (=> b!1754259 (= e!1122750 Nil!19286)))

(declare-fun b!1754262 () Bool)

(assert (=> b!1754262 (= e!1122751 (++!5269 (list!7814 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) (list!7814 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))))

(declare-fun d!536021 () Bool)

(declare-fun c!286040 () Bool)

(assert (=> d!536021 (= c!286040 ((_ is Empty!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))

(assert (=> d!536021 (= (list!7814 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) e!1122750)))

(assert (= (and d!536021 c!286040) b!1754259))

(assert (= (and d!536021 (not c!286040)) b!1754260))

(assert (= (and b!1754260 c!286041) b!1754261))

(assert (= (and b!1754260 (not c!286041)) b!1754262))

(assert (=> b!1754261 m!2168469))

(declare-fun m!2168755 () Bool)

(assert (=> b!1754262 m!2168755))

(declare-fun m!2168757 () Bool)

(assert (=> b!1754262 m!2168757))

(assert (=> b!1754262 m!2168755))

(assert (=> b!1754262 m!2168757))

(declare-fun m!2168759 () Bool)

(assert (=> b!1754262 m!2168759))

(assert (=> d!535149 d!536021))

(declare-fun d!536023 () Bool)

(assert (=> d!536023 (= (inv!25037 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) (<= (size!15323 (innerList!6475 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) 2147483647))))

(declare-fun bs!403753 () Bool)

(assert (= bs!403753 d!536023))

(declare-fun m!2168761 () Bool)

(assert (=> bs!403753 m!2168761))

(assert (=> b!1753007 d!536023))

(declare-fun d!536025 () Bool)

(declare-fun e!1122753 () Bool)

(assert (=> d!536025 e!1122753))

(declare-fun res!789183 () Bool)

(assert (=> d!536025 (=> (not res!789183) (not e!1122753))))

(declare-fun lt!677590 () List!19356)

(assert (=> d!536025 (= res!789183 (= (content!2771 lt!677590) ((_ map or) (content!2771 (t!163097 lt!677049)) (content!2771 (_2!10857 lt!677046)))))))

(declare-fun e!1122752 () List!19356)

(assert (=> d!536025 (= lt!677590 e!1122752)))

(declare-fun c!286042 () Bool)

(assert (=> d!536025 (= c!286042 ((_ is Nil!19286) (t!163097 lt!677049)))))

(assert (=> d!536025 (= (++!5269 (t!163097 lt!677049) (_2!10857 lt!677046)) lt!677590)))

(declare-fun b!1754264 () Bool)

(assert (=> b!1754264 (= e!1122752 (Cons!19286 (h!24687 (t!163097 lt!677049)) (++!5269 (t!163097 (t!163097 lt!677049)) (_2!10857 lt!677046))))))

(declare-fun b!1754263 () Bool)

(assert (=> b!1754263 (= e!1122752 (_2!10857 lt!677046))))

(declare-fun b!1754266 () Bool)

(assert (=> b!1754266 (= e!1122753 (or (not (= (_2!10857 lt!677046) Nil!19286)) (= lt!677590 (t!163097 lt!677049))))))

(declare-fun b!1754265 () Bool)

(declare-fun res!789182 () Bool)

(assert (=> b!1754265 (=> (not res!789182) (not e!1122753))))

(assert (=> b!1754265 (= res!789182 (= (size!15323 lt!677590) (+ (size!15323 (t!163097 lt!677049)) (size!15323 (_2!10857 lt!677046)))))))

(assert (= (and d!536025 c!286042) b!1754263))

(assert (= (and d!536025 (not c!286042)) b!1754264))

(assert (= (and d!536025 res!789183) b!1754265))

(assert (= (and b!1754265 res!789182) b!1754266))

(declare-fun m!2168763 () Bool)

(assert (=> d!536025 m!2168763))

(assert (=> d!536025 m!2168745))

(assert (=> d!536025 m!2166469))

(declare-fun m!2168765 () Bool)

(assert (=> b!1754264 m!2168765))

(declare-fun m!2168767 () Bool)

(assert (=> b!1754265 m!2168767))

(assert (=> b!1754265 m!2168621))

(assert (=> b!1754265 m!2166477))

(assert (=> b!1752619 d!536025))

(assert (=> b!1752661 d!535883))

(assert (=> b!1752661 d!535959))

(declare-fun d!536027 () Bool)

(assert (=> d!536027 (= (inv!17 (value!107855 token!523)) (= (charsToBigInt!1 (text!25193 (value!107855 token!523))) (value!107847 (value!107855 token!523))))))

(declare-fun bs!403754 () Bool)

(assert (= bs!403754 d!536027))

(declare-fun m!2168769 () Bool)

(assert (=> bs!403754 m!2168769))

(assert (=> b!1752973 d!536027))

(declare-fun d!536029 () Bool)

(assert (=> d!536029 (= (inv!25023 (tag!3797 (h!24688 (t!163098 rules!3447)))) (= (mod (str.len (value!107854 (tag!3797 (h!24688 (t!163098 rules!3447))))) 2) 0))))

(assert (=> b!1753021 d!536029))

(declare-fun d!536031 () Bool)

(declare-fun res!789184 () Bool)

(declare-fun e!1122754 () Bool)

(assert (=> d!536031 (=> (not res!789184) (not e!1122754))))

(assert (=> d!536031 (= res!789184 (semiInverseModEq!1362 (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447))))))))

(assert (=> d!536031 (= (inv!25028 (transformation!3445 (h!24688 (t!163098 rules!3447)))) e!1122754)))

(declare-fun b!1754267 () Bool)

(assert (=> b!1754267 (= e!1122754 (equivClasses!1303 (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447))))))))

(assert (= (and d!536031 res!789184) b!1754267))

(declare-fun m!2168771 () Bool)

(assert (=> d!536031 m!2168771))

(declare-fun m!2168773 () Bool)

(assert (=> b!1754267 m!2168773))

(assert (=> b!1753021 d!536031))

(assert (=> b!1752728 d!535623))

(assert (=> b!1752728 d!535893))

(declare-fun d!536033 () Bool)

(declare-fun res!789185 () Bool)

(declare-fun e!1122755 () Bool)

(assert (=> d!536033 (=> (not res!789185) (not e!1122755))))

(assert (=> d!536033 (= res!789185 (= (csize!13060 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) (+ (size!15324 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) (size!15324 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))))

(assert (=> d!536033 (= (inv!25034 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) e!1122755)))

(declare-fun b!1754268 () Bool)

(declare-fun res!789186 () Bool)

(assert (=> b!1754268 (=> (not res!789186) (not e!1122755))))

(assert (=> b!1754268 (= res!789186 (and (not (= (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) Empty!6415)) (not (= (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) Empty!6415))))))

(declare-fun b!1754269 () Bool)

(declare-fun res!789187 () Bool)

(assert (=> b!1754269 (=> (not res!789187) (not e!1122755))))

(assert (=> b!1754269 (= res!789187 (= (cheight!6626 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) (+ (max!0 (height!1005 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) (height!1005 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) 1)))))

(declare-fun b!1754270 () Bool)

(assert (=> b!1754270 (= e!1122755 (<= 0 (cheight!6626 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(assert (= (and d!536033 res!789185) b!1754268))

(assert (= (and b!1754268 res!789186) b!1754269))

(assert (= (and b!1754269 res!789187) b!1754270))

(declare-fun m!2168775 () Bool)

(assert (=> d!536033 m!2168775))

(declare-fun m!2168777 () Bool)

(assert (=> d!536033 m!2168777))

(declare-fun m!2168779 () Bool)

(assert (=> b!1754269 m!2168779))

(declare-fun m!2168781 () Bool)

(assert (=> b!1754269 m!2168781))

(assert (=> b!1754269 m!2168779))

(assert (=> b!1754269 m!2168781))

(declare-fun m!2168783 () Bool)

(assert (=> b!1754269 m!2168783))

(assert (=> b!1752430 d!536033))

(declare-fun bs!403755 () Bool)

(declare-fun d!536035 () Bool)

(assert (= bs!403755 (and d!536035 d!535135)))

(declare-fun lambda!69959 () Int)

(assert (=> bs!403755 (= (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= lambda!69959 lambda!69899))))

(declare-fun bs!403756 () Bool)

(assert (= bs!403756 (and d!536035 d!535477)))

(assert (=> bs!403756 (= (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 token!523)))) (= lambda!69959 lambda!69934))))

(declare-fun bs!403757 () Bool)

(assert (= bs!403757 (and d!536035 d!535815)))

(assert (=> bs!403757 (= (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) (= lambda!69959 lambda!69942))))

(declare-fun bs!403758 () Bool)

(assert (= bs!403758 (and d!536035 d!536001)))

(assert (=> bs!403758 (= (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (h!24688 rules!3447)))) (= lambda!69959 lambda!69958))))

(assert (=> d!536035 true))

(assert (=> d!536035 (< (dynLambda!9219 order!12147 (toValue!4960 (transformation!3445 rule!422))) (dynLambda!9224 order!12153 lambda!69959))))

(assert (=> d!536035 (= (equivClasses!1303 (toChars!4819 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 rule!422))) (Forall2!559 lambda!69959))))

(declare-fun bs!403759 () Bool)

(assert (= bs!403759 d!536035))

(declare-fun m!2168785 () Bool)

(assert (=> bs!403759 m!2168785))

(assert (=> b!1752994 d!536035))

(declare-fun d!536037 () Bool)

(declare-fun e!1122757 () Bool)

(assert (=> d!536037 e!1122757))

(declare-fun res!789189 () Bool)

(assert (=> d!536037 (=> (not res!789189) (not e!1122757))))

(declare-fun lt!677591 () List!19356)

(assert (=> d!536037 (= res!789189 (= (content!2771 lt!677591) ((_ map or) (content!2771 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))) (content!2771 (_2!10857 (get!5853 lt!677213))))))))

(declare-fun e!1122756 () List!19356)

(assert (=> d!536037 (= lt!677591 e!1122756)))

(declare-fun c!286043 () Bool)

(assert (=> d!536037 (= c!286043 ((_ is Nil!19286) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))))))

(assert (=> d!536037 (= (++!5269 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))) (_2!10857 (get!5853 lt!677213))) lt!677591)))

(declare-fun b!1754272 () Bool)

(assert (=> b!1754272 (= e!1122756 (Cons!19286 (h!24687 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))) (++!5269 (t!163097 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))) (_2!10857 (get!5853 lt!677213)))))))

(declare-fun b!1754271 () Bool)

(assert (=> b!1754271 (= e!1122756 (_2!10857 (get!5853 lt!677213)))))

(declare-fun b!1754274 () Bool)

(assert (=> b!1754274 (= e!1122757 (or (not (= (_2!10857 (get!5853 lt!677213)) Nil!19286)) (= lt!677591 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213)))))))))

(declare-fun b!1754273 () Bool)

(declare-fun res!789188 () Bool)

(assert (=> b!1754273 (=> (not res!789188) (not e!1122757))))

(assert (=> b!1754273 (= res!789188 (= (size!15323 lt!677591) (+ (size!15323 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677213))))) (size!15323 (_2!10857 (get!5853 lt!677213))))))))

(assert (= (and d!536037 c!286043) b!1754271))

(assert (= (and d!536037 (not c!286043)) b!1754272))

(assert (= (and d!536037 res!789189) b!1754273))

(assert (= (and b!1754273 res!789188) b!1754274))

(declare-fun m!2168787 () Bool)

(assert (=> d!536037 m!2168787))

(assert (=> d!536037 m!2166601))

(declare-fun m!2168789 () Bool)

(assert (=> d!536037 m!2168789))

(declare-fun m!2168791 () Bool)

(assert (=> d!536037 m!2168791))

(declare-fun m!2168793 () Bool)

(assert (=> b!1754272 m!2168793))

(declare-fun m!2168795 () Bool)

(assert (=> b!1754273 m!2168795))

(assert (=> b!1754273 m!2166601))

(declare-fun m!2168797 () Bool)

(assert (=> b!1754273 m!2168797))

(assert (=> b!1754273 m!2166597))

(assert (=> b!1752705 d!536037))

(assert (=> b!1752705 d!535721))

(assert (=> b!1752705 d!535723))

(assert (=> b!1752705 d!535719))

(declare-fun bs!403760 () Bool)

(declare-fun d!536039 () Bool)

(assert (= bs!403760 (and d!536039 d!535143)))

(declare-fun lambda!69964 () Int)

(assert (=> bs!403760 (= lambda!69964 lambda!69902)))

(declare-fun lambda!69965 () Int)

(declare-fun forall!4273 (List!19360 Int) Bool)

(assert (=> d!536039 (forall!4273 (map!3972 rules!3447 lambda!69964) lambda!69965)))

(declare-fun lt!677596 () Unit!33441)

(declare-fun e!1122760 () Unit!33441)

(assert (=> d!536039 (= lt!677596 e!1122760)))

(declare-fun c!286046 () Bool)

(assert (=> d!536039 (= c!286046 ((_ is Nil!19287) rules!3447))))

(assert (=> d!536039 (rulesValidInductive!1152 thiss!24550 rules!3447)))

(assert (=> d!536039 (= (lemma!370 rules!3447 thiss!24550 rules!3447) lt!677596)))

(declare-fun b!1754279 () Bool)

(declare-fun Unit!33453 () Unit!33441)

(assert (=> b!1754279 (= e!1122760 Unit!33453)))

(declare-fun b!1754280 () Bool)

(declare-fun Unit!33454 () Unit!33441)

(assert (=> b!1754280 (= e!1122760 Unit!33454)))

(declare-fun lt!677597 () Unit!33441)

(assert (=> b!1754280 (= lt!677597 (lemma!370 rules!3447 thiss!24550 (t!163098 rules!3447)))))

(assert (= (and d!536039 c!286046) b!1754279))

(assert (= (and d!536039 (not c!286046)) b!1754280))

(declare-fun m!2168799 () Bool)

(assert (=> d!536039 m!2168799))

(assert (=> d!536039 m!2168799))

(declare-fun m!2168801 () Bool)

(assert (=> d!536039 m!2168801))

(assert (=> d!536039 m!2166619))

(declare-fun m!2168803 () Bool)

(assert (=> b!1754280 m!2168803))

(assert (=> d!535143 d!536039))

(declare-fun bs!403761 () Bool)

(declare-fun d!536041 () Bool)

(assert (= bs!403761 (and d!536041 d!536039)))

(declare-fun lambda!69968 () Int)

(assert (=> bs!403761 (= lambda!69968 lambda!69965)))

(declare-fun b!1754301 () Bool)

(declare-fun e!1122778 () Bool)

(declare-fun lt!677600 () Regex!4773)

(declare-fun isUnion!101 (Regex!4773) Bool)

(assert (=> b!1754301 (= e!1122778 (isUnion!101 lt!677600))))

(declare-fun b!1754302 () Bool)

(declare-fun e!1122776 () Bool)

(declare-fun isEmptyLang!101 (Regex!4773) Bool)

(assert (=> b!1754302 (= e!1122776 (isEmptyLang!101 lt!677600))))

(declare-fun e!1122773 () Bool)

(assert (=> d!536041 e!1122773))

(declare-fun res!789194 () Bool)

(assert (=> d!536041 (=> (not res!789194) (not e!1122773))))

(assert (=> d!536041 (= res!789194 (validRegex!1920 lt!677600))))

(declare-fun e!1122775 () Regex!4773)

(assert (=> d!536041 (= lt!677600 e!1122775)))

(declare-fun c!286056 () Bool)

(declare-fun e!1122777 () Bool)

(assert (=> d!536041 (= c!286056 e!1122777)))

(declare-fun res!789195 () Bool)

(assert (=> d!536041 (=> (not res!789195) (not e!1122777))))

(assert (=> d!536041 (= res!789195 ((_ is Cons!19290) (map!3972 rules!3447 lambda!69902)))))

(assert (=> d!536041 (forall!4273 (map!3972 rules!3447 lambda!69902) lambda!69968)))

(assert (=> d!536041 (= (generalisedUnion!378 (map!3972 rules!3447 lambda!69902)) lt!677600)))

(declare-fun b!1754303 () Bool)

(declare-fun e!1122774 () Regex!4773)

(assert (=> b!1754303 (= e!1122774 EmptyLang!4773)))

(declare-fun b!1754304 () Bool)

(declare-fun isEmpty!12167 (List!19360) Bool)

(assert (=> b!1754304 (= e!1122777 (isEmpty!12167 (t!163161 (map!3972 rules!3447 lambda!69902))))))

(declare-fun b!1754305 () Bool)

(declare-fun head!4046 (List!19360) Regex!4773)

(assert (=> b!1754305 (= e!1122778 (= lt!677600 (head!4046 (map!3972 rules!3447 lambda!69902))))))

(declare-fun b!1754306 () Bool)

(assert (=> b!1754306 (= e!1122775 e!1122774)))

(declare-fun c!286057 () Bool)

(assert (=> b!1754306 (= c!286057 ((_ is Cons!19290) (map!3972 rules!3447 lambda!69902)))))

(declare-fun b!1754307 () Bool)

(assert (=> b!1754307 (= e!1122773 e!1122776)))

(declare-fun c!286055 () Bool)

(assert (=> b!1754307 (= c!286055 (isEmpty!12167 (map!3972 rules!3447 lambda!69902)))))

(declare-fun b!1754308 () Bool)

(assert (=> b!1754308 (= e!1122776 e!1122778)))

(declare-fun c!286058 () Bool)

(declare-fun tail!2619 (List!19360) List!19360)

(assert (=> b!1754308 (= c!286058 (isEmpty!12167 (tail!2619 (map!3972 rules!3447 lambda!69902))))))

(declare-fun b!1754309 () Bool)

(assert (=> b!1754309 (= e!1122774 (Union!4773 (h!24691 (map!3972 rules!3447 lambda!69902)) (generalisedUnion!378 (t!163161 (map!3972 rules!3447 lambda!69902)))))))

(declare-fun b!1754310 () Bool)

(assert (=> b!1754310 (= e!1122775 (h!24691 (map!3972 rules!3447 lambda!69902)))))

(assert (= (and d!536041 res!789195) b!1754304))

(assert (= (and d!536041 c!286056) b!1754310))

(assert (= (and d!536041 (not c!286056)) b!1754306))

(assert (= (and b!1754306 c!286057) b!1754309))

(assert (= (and b!1754306 (not c!286057)) b!1754303))

(assert (= (and d!536041 res!789194) b!1754307))

(assert (= (and b!1754307 c!286055) b!1754302))

(assert (= (and b!1754307 (not c!286055)) b!1754308))

(assert (= (and b!1754308 c!286058) b!1754305))

(assert (= (and b!1754308 (not c!286058)) b!1754301))

(declare-fun m!2168805 () Bool)

(assert (=> b!1754309 m!2168805))

(assert (=> b!1754305 m!2166443))

(declare-fun m!2168807 () Bool)

(assert (=> b!1754305 m!2168807))

(assert (=> b!1754307 m!2166443))

(declare-fun m!2168809 () Bool)

(assert (=> b!1754307 m!2168809))

(declare-fun m!2168811 () Bool)

(assert (=> b!1754301 m!2168811))

(declare-fun m!2168813 () Bool)

(assert (=> d!536041 m!2168813))

(assert (=> d!536041 m!2166443))

(declare-fun m!2168815 () Bool)

(assert (=> d!536041 m!2168815))

(declare-fun m!2168817 () Bool)

(assert (=> b!1754302 m!2168817))

(declare-fun m!2168819 () Bool)

(assert (=> b!1754304 m!2168819))

(assert (=> b!1754308 m!2166443))

(declare-fun m!2168821 () Bool)

(assert (=> b!1754308 m!2168821))

(assert (=> b!1754308 m!2168821))

(declare-fun m!2168823 () Bool)

(assert (=> b!1754308 m!2168823))

(assert (=> d!535143 d!536041))

(declare-fun d!536043 () Bool)

(declare-fun lt!677603 () List!19360)

(declare-fun size!15330 (List!19360) Int)

(declare-fun size!15331 (List!19357) Int)

(assert (=> d!536043 (= (size!15330 lt!677603) (size!15331 rules!3447))))

(declare-fun e!1122781 () List!19360)

(assert (=> d!536043 (= lt!677603 e!1122781)))

(declare-fun c!286061 () Bool)

(assert (=> d!536043 (= c!286061 ((_ is Nil!19287) rules!3447))))

(assert (=> d!536043 (= (map!3972 rules!3447 lambda!69902) lt!677603)))

(declare-fun b!1754315 () Bool)

(assert (=> b!1754315 (= e!1122781 Nil!19290)))

(declare-fun b!1754316 () Bool)

(declare-fun $colon$colon!432 (List!19360 Regex!4773) List!19360)

(declare-fun dynLambda!9230 (Int Rule!6690) Regex!4773)

(assert (=> b!1754316 (= e!1122781 ($colon$colon!432 (map!3972 (t!163098 rules!3447) lambda!69902) (dynLambda!9230 lambda!69902 (h!24688 rules!3447))))))

(assert (= (and d!536043 c!286061) b!1754315))

(assert (= (and d!536043 (not c!286061)) b!1754316))

(declare-fun b_lambda!56477 () Bool)

(assert (=> (not b_lambda!56477) (not b!1754316)))

(declare-fun m!2168825 () Bool)

(assert (=> d!536043 m!2168825))

(declare-fun m!2168827 () Bool)

(assert (=> d!536043 m!2168827))

(declare-fun m!2168829 () Bool)

(assert (=> b!1754316 m!2168829))

(declare-fun m!2168831 () Bool)

(assert (=> b!1754316 m!2168831))

(assert (=> b!1754316 m!2168829))

(assert (=> b!1754316 m!2168831))

(declare-fun m!2168833 () Bool)

(assert (=> b!1754316 m!2168833))

(assert (=> d!535143 d!536043))

(assert (=> b!1752952 d!535849))

(assert (=> bm!110404 d!535725))

(declare-fun d!536045 () Bool)

(declare-fun lt!677604 () Bool)

(assert (=> d!536045 (= lt!677604 (select (content!2772 (t!163098 rules!3447)) rule!422))))

(declare-fun e!1122783 () Bool)

(assert (=> d!536045 (= lt!677604 e!1122783)))

(declare-fun res!789196 () Bool)

(assert (=> d!536045 (=> (not res!789196) (not e!1122783))))

(assert (=> d!536045 (= res!789196 ((_ is Cons!19287) (t!163098 rules!3447)))))

(assert (=> d!536045 (= (contains!3471 (t!163098 rules!3447) rule!422) lt!677604)))

(declare-fun b!1754317 () Bool)

(declare-fun e!1122782 () Bool)

(assert (=> b!1754317 (= e!1122783 e!1122782)))

(declare-fun res!789197 () Bool)

(assert (=> b!1754317 (=> res!789197 e!1122782)))

(assert (=> b!1754317 (= res!789197 (= (h!24688 (t!163098 rules!3447)) rule!422))))

(declare-fun b!1754318 () Bool)

(assert (=> b!1754318 (= e!1122782 (contains!3471 (t!163098 (t!163098 rules!3447)) rule!422))))

(assert (= (and d!536045 res!789196) b!1754317))

(assert (= (and b!1754317 (not res!789197)) b!1754318))

(declare-fun m!2168835 () Bool)

(assert (=> d!536045 m!2168835))

(declare-fun m!2168837 () Bool)

(assert (=> d!536045 m!2168837))

(declare-fun m!2168839 () Bool)

(assert (=> b!1754318 m!2168839))

(assert (=> b!1752993 d!536045))

(assert (=> d!535081 d!535493))

(assert (=> d!535081 d!535873))

(declare-fun b!1754319 () Bool)

(declare-fun e!1122786 () Bool)

(declare-fun lt!677605 () Bool)

(declare-fun call!110515 () Bool)

(assert (=> b!1754319 (= e!1122786 (= lt!677605 call!110515))))

(declare-fun d!536047 () Bool)

(assert (=> d!536047 e!1122786))

(declare-fun c!286062 () Bool)

(assert (=> d!536047 (= c!286062 ((_ is EmptyExpr!4773) (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049))))))

(declare-fun e!1122788 () Bool)

(assert (=> d!536047 (= lt!677605 e!1122788)))

(declare-fun c!286064 () Bool)

(assert (=> d!536047 (= c!286064 (isEmpty!12156 (tail!2617 lt!677049)))))

(assert (=> d!536047 (validRegex!1920 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049)))))

(assert (=> d!536047 (= (matchR!2246 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049)) (tail!2617 lt!677049)) lt!677605)))

(declare-fun b!1754320 () Bool)

(declare-fun res!789200 () Bool)

(declare-fun e!1122789 () Bool)

(assert (=> b!1754320 (=> (not res!789200) (not e!1122789))))

(assert (=> b!1754320 (= res!789200 (isEmpty!12156 (tail!2617 (tail!2617 lt!677049))))))

(declare-fun b!1754321 () Bool)

(declare-fun e!1122785 () Bool)

(assert (=> b!1754321 (= e!1122786 e!1122785)))

(declare-fun c!286063 () Bool)

(assert (=> b!1754321 (= c!286063 ((_ is EmptyLang!4773) (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049))))))

(declare-fun b!1754322 () Bool)

(declare-fun res!789199 () Bool)

(declare-fun e!1122787 () Bool)

(assert (=> b!1754322 (=> res!789199 e!1122787)))

(assert (=> b!1754322 (= res!789199 e!1122789)))

(declare-fun res!789203 () Bool)

(assert (=> b!1754322 (=> (not res!789203) (not e!1122789))))

(assert (=> b!1754322 (= res!789203 lt!677605)))

(declare-fun b!1754323 () Bool)

(declare-fun e!1122790 () Bool)

(assert (=> b!1754323 (= e!1122787 e!1122790)))

(declare-fun res!789205 () Bool)

(assert (=> b!1754323 (=> (not res!789205) (not e!1122790))))

(assert (=> b!1754323 (= res!789205 (not lt!677605))))

(declare-fun b!1754324 () Bool)

(assert (=> b!1754324 (= e!1122785 (not lt!677605))))

(declare-fun b!1754325 () Bool)

(declare-fun res!789202 () Bool)

(declare-fun e!1122784 () Bool)

(assert (=> b!1754325 (=> res!789202 e!1122784)))

(assert (=> b!1754325 (= res!789202 (not (isEmpty!12156 (tail!2617 (tail!2617 lt!677049)))))))

(declare-fun b!1754326 () Bool)

(assert (=> b!1754326 (= e!1122789 (= (head!4042 (tail!2617 lt!677049)) (c!285664 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049)))))))

(declare-fun b!1754327 () Bool)

(assert (=> b!1754327 (= e!1122788 (matchR!2246 (derivativeStep!1215 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049)) (head!4042 (tail!2617 lt!677049))) (tail!2617 (tail!2617 lt!677049))))))

(declare-fun b!1754328 () Bool)

(assert (=> b!1754328 (= e!1122790 e!1122784)))

(declare-fun res!789198 () Bool)

(assert (=> b!1754328 (=> res!789198 e!1122784)))

(assert (=> b!1754328 (= res!789198 call!110515)))

(declare-fun b!1754329 () Bool)

(assert (=> b!1754329 (= e!1122788 (nullable!1446 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049))))))

(declare-fun b!1754330 () Bool)

(declare-fun res!789204 () Bool)

(assert (=> b!1754330 (=> res!789204 e!1122787)))

(assert (=> b!1754330 (= res!789204 (not ((_ is ElementMatch!4773) (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049)))))))

(assert (=> b!1754330 (= e!1122785 e!1122787)))

(declare-fun bm!110510 () Bool)

(assert (=> bm!110510 (= call!110515 (isEmpty!12156 (tail!2617 lt!677049)))))

(declare-fun b!1754331 () Bool)

(declare-fun res!789201 () Bool)

(assert (=> b!1754331 (=> (not res!789201) (not e!1122789))))

(assert (=> b!1754331 (= res!789201 (not call!110515))))

(declare-fun b!1754332 () Bool)

(assert (=> b!1754332 (= e!1122784 (not (= (head!4042 (tail!2617 lt!677049)) (c!285664 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049))))))))

(assert (= (and d!536047 c!286064) b!1754329))

(assert (= (and d!536047 (not c!286064)) b!1754327))

(assert (= (and d!536047 c!286062) b!1754319))

(assert (= (and d!536047 (not c!286062)) b!1754321))

(assert (= (and b!1754321 c!286063) b!1754324))

(assert (= (and b!1754321 (not c!286063)) b!1754330))

(assert (= (and b!1754330 (not res!789204)) b!1754322))

(assert (= (and b!1754322 res!789203) b!1754331))

(assert (= (and b!1754331 res!789201) b!1754320))

(assert (= (and b!1754320 res!789200) b!1754326))

(assert (= (and b!1754322 (not res!789199)) b!1754323))

(assert (= (and b!1754323 res!789205) b!1754328))

(assert (= (and b!1754328 (not res!789198)) b!1754325))

(assert (= (and b!1754325 (not res!789202)) b!1754332))

(assert (= (or b!1754319 b!1754328 b!1754331) bm!110510))

(assert (=> d!536047 m!2166349))

(assert (=> d!536047 m!2166353))

(assert (=> d!536047 m!2166347))

(declare-fun m!2168841 () Bool)

(assert (=> d!536047 m!2168841))

(assert (=> b!1754329 m!2166347))

(declare-fun m!2168843 () Bool)

(assert (=> b!1754329 m!2168843))

(assert (=> b!1754326 m!2166349))

(assert (=> b!1754326 m!2167351))

(assert (=> b!1754332 m!2166349))

(assert (=> b!1754332 m!2167351))

(assert (=> bm!110510 m!2166349))

(assert (=> bm!110510 m!2166353))

(assert (=> b!1754327 m!2166349))

(assert (=> b!1754327 m!2167351))

(assert (=> b!1754327 m!2166347))

(assert (=> b!1754327 m!2167351))

(declare-fun m!2168845 () Bool)

(assert (=> b!1754327 m!2168845))

(assert (=> b!1754327 m!2166349))

(assert (=> b!1754327 m!2167341))

(assert (=> b!1754327 m!2168845))

(assert (=> b!1754327 m!2167341))

(declare-fun m!2168847 () Bool)

(assert (=> b!1754327 m!2168847))

(assert (=> b!1754320 m!2166349))

(assert (=> b!1754320 m!2167341))

(assert (=> b!1754320 m!2167341))

(declare-fun m!2168849 () Bool)

(assert (=> b!1754320 m!2168849))

(assert (=> b!1754325 m!2166349))

(assert (=> b!1754325 m!2167341))

(assert (=> b!1754325 m!2167341))

(assert (=> b!1754325 m!2168849))

(assert (=> b!1752540 d!536047))

(declare-fun b!1754333 () Bool)

(declare-fun e!1122791 () Regex!4773)

(assert (=> b!1754333 (= e!1122791 (ite (= (head!4042 lt!677049) (c!285664 (regex!3445 (rule!5457 (_1!10857 lt!677046))))) EmptyExpr!4773 EmptyLang!4773))))

(declare-fun b!1754334 () Bool)

(declare-fun e!1122795 () Regex!4773)

(assert (=> b!1754334 (= e!1122795 e!1122791)))

(declare-fun c!286067 () Bool)

(assert (=> b!1754334 (= c!286067 ((_ is ElementMatch!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun bm!110511 () Bool)

(declare-fun call!110516 () Regex!4773)

(declare-fun call!110517 () Regex!4773)

(assert (=> bm!110511 (= call!110516 call!110517)))

(declare-fun b!1754335 () Bool)

(declare-fun e!1122792 () Regex!4773)

(declare-fun call!110518 () Regex!4773)

(declare-fun call!110519 () Regex!4773)

(assert (=> b!1754335 (= e!1122792 (Union!4773 call!110518 call!110519))))

(declare-fun c!286069 () Bool)

(declare-fun bm!110512 () Bool)

(assert (=> bm!110512 (= call!110518 (derivativeStep!1215 (ite c!286069 (regOne!10059 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (regOne!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046))))) (head!4042 lt!677049)))))

(declare-fun b!1754336 () Bool)

(declare-fun e!1122794 () Regex!4773)

(assert (=> b!1754336 (= e!1122794 (Concat!8309 call!110517 (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun b!1754337 () Bool)

(assert (=> b!1754337 (= e!1122795 EmptyLang!4773)))

(declare-fun b!1754338 () Bool)

(declare-fun e!1122793 () Regex!4773)

(assert (=> b!1754338 (= e!1122793 (Union!4773 (Concat!8309 call!110516 (regTwo!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046))))) EmptyLang!4773))))

(declare-fun b!1754339 () Bool)

(assert (=> b!1754339 (= e!1122793 (Union!4773 (Concat!8309 call!110518 (regTwo!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046))))) call!110516))))

(declare-fun b!1754340 () Bool)

(declare-fun c!286066 () Bool)

(assert (=> b!1754340 (= c!286066 (nullable!1446 (regOne!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> b!1754340 (= e!1122794 e!1122793)))

(declare-fun b!1754341 () Bool)

(assert (=> b!1754341 (= c!286069 ((_ is Union!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(assert (=> b!1754341 (= e!1122791 e!1122792)))

(declare-fun d!536049 () Bool)

(declare-fun lt!677606 () Regex!4773)

(assert (=> d!536049 (validRegex!1920 lt!677606)))

(assert (=> d!536049 (= lt!677606 e!1122795)))

(declare-fun c!286065 () Bool)

(assert (=> d!536049 (= c!286065 (or ((_ is EmptyExpr!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))) ((_ is EmptyLang!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046))))))))

(assert (=> d!536049 (validRegex!1920 (regex!3445 (rule!5457 (_1!10857 lt!677046))))))

(assert (=> d!536049 (= (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 lt!677046))) (head!4042 lt!677049)) lt!677606)))

(declare-fun b!1754342 () Bool)

(assert (=> b!1754342 (= e!1122792 e!1122794)))

(declare-fun c!286068 () Bool)

(assert (=> b!1754342 (= c!286068 ((_ is Star!4773) (regex!3445 (rule!5457 (_1!10857 lt!677046)))))))

(declare-fun bm!110513 () Bool)

(assert (=> bm!110513 (= call!110519 (derivativeStep!1215 (ite c!286069 (regTwo!10059 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (ite c!286068 (reg!5102 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (ite c!286066 (regTwo!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046)))) (regOne!10058 (regex!3445 (rule!5457 (_1!10857 lt!677046))))))) (head!4042 lt!677049)))))

(declare-fun bm!110514 () Bool)

(assert (=> bm!110514 (= call!110517 call!110519)))

(assert (= (and d!536049 c!286065) b!1754337))

(assert (= (and d!536049 (not c!286065)) b!1754334))

(assert (= (and b!1754334 c!286067) b!1754333))

(assert (= (and b!1754334 (not c!286067)) b!1754341))

(assert (= (and b!1754341 c!286069) b!1754335))

(assert (= (and b!1754341 (not c!286069)) b!1754342))

(assert (= (and b!1754342 c!286068) b!1754336))

(assert (= (and b!1754342 (not c!286068)) b!1754340))

(assert (= (and b!1754340 c!286066) b!1754339))

(assert (= (and b!1754340 (not c!286066)) b!1754338))

(assert (= (or b!1754339 b!1754338) bm!110511))

(assert (= (or b!1754336 bm!110511) bm!110514))

(assert (= (or b!1754335 bm!110514) bm!110513))

(assert (= (or b!1754335 b!1754339) bm!110512))

(assert (=> bm!110512 m!2166345))

(declare-fun m!2168851 () Bool)

(assert (=> bm!110512 m!2168851))

(declare-fun m!2168853 () Bool)

(assert (=> b!1754340 m!2168853))

(declare-fun m!2168855 () Bool)

(assert (=> d!536049 m!2168855))

(assert (=> d!536049 m!2166341))

(assert (=> bm!110513 m!2166345))

(declare-fun m!2168857 () Bool)

(assert (=> bm!110513 m!2168857))

(assert (=> b!1752540 d!536049))

(assert (=> b!1752540 d!535491))

(assert (=> b!1752540 d!535473))

(declare-fun b!1754343 () Bool)

(declare-fun res!789206 () Bool)

(declare-fun e!1122796 () Bool)

(assert (=> b!1754343 (=> (not res!789206) (not e!1122796))))

(assert (=> b!1754343 (= res!789206 (not (isEmpty!12166 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))))

(declare-fun b!1754344 () Bool)

(declare-fun res!789207 () Bool)

(assert (=> b!1754344 (=> (not res!789207) (not e!1122796))))

(assert (=> b!1754344 (= res!789207 (isBalanced!2000 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(declare-fun d!536051 () Bool)

(declare-fun res!789208 () Bool)

(declare-fun e!1122797 () Bool)

(assert (=> d!536051 (=> res!789208 e!1122797)))

(assert (=> d!536051 (= res!789208 (not ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(assert (=> d!536051 (= (isBalanced!2000 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))) e!1122797)))

(declare-fun b!1754345 () Bool)

(assert (=> b!1754345 (= e!1122796 (not (isEmpty!12166 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))))))

(declare-fun b!1754346 () Bool)

(declare-fun res!789209 () Bool)

(assert (=> b!1754346 (=> (not res!789209) (not e!1122796))))

(assert (=> b!1754346 (= res!789209 (isBalanced!2000 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))

(declare-fun b!1754347 () Bool)

(assert (=> b!1754347 (= e!1122797 e!1122796)))

(declare-fun res!789211 () Bool)

(assert (=> b!1754347 (=> (not res!789211) (not e!1122796))))

(assert (=> b!1754347 (= res!789211 (<= (- 1) (- (height!1005 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) (height!1005 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))))))

(declare-fun b!1754348 () Bool)

(declare-fun res!789210 () Bool)

(assert (=> b!1754348 (=> (not res!789210) (not e!1122796))))

(assert (=> b!1754348 (= res!789210 (<= (- (height!1005 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) (height!1005 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) 1))))

(assert (= (and d!536051 (not res!789208)) b!1754347))

(assert (= (and b!1754347 res!789211) b!1754348))

(assert (= (and b!1754348 res!789210) b!1754344))

(assert (= (and b!1754344 res!789207) b!1754346))

(assert (= (and b!1754346 res!789209) b!1754343))

(assert (= (and b!1754343 res!789206) b!1754345))

(declare-fun m!2168859 () Bool)

(assert (=> b!1754344 m!2168859))

(declare-fun m!2168861 () Bool)

(assert (=> b!1754346 m!2168861))

(declare-fun m!2168863 () Bool)

(assert (=> b!1754343 m!2168863))

(assert (=> b!1754347 m!2168779))

(assert (=> b!1754347 m!2168781))

(declare-fun m!2168865 () Bool)

(assert (=> b!1754345 m!2168865))

(assert (=> b!1754348 m!2168779))

(assert (=> b!1754348 m!2168781))

(assert (=> d!535127 d!536051))

(declare-fun d!536053 () Bool)

(declare-fun c!286072 () Bool)

(assert (=> d!536053 (= c!286072 ((_ is Nil!19287) rules!3447))))

(declare-fun e!1122800 () (InoxSet Rule!6690))

(assert (=> d!536053 (= (content!2772 rules!3447) e!1122800)))

(declare-fun b!1754353 () Bool)

(assert (=> b!1754353 (= e!1122800 ((as const (Array Rule!6690 Bool)) false))))

(declare-fun b!1754354 () Bool)

(assert (=> b!1754354 (= e!1122800 ((_ map or) (store ((as const (Array Rule!6690 Bool)) false) (h!24688 rules!3447) true) (content!2772 (t!163098 rules!3447))))))

(assert (= (and d!536053 c!286072) b!1754353))

(assert (= (and d!536053 (not c!286072)) b!1754354))

(declare-fun m!2168867 () Bool)

(assert (=> b!1754354 m!2168867))

(assert (=> b!1754354 m!2168835))

(assert (=> d!535287 d!536053))

(declare-fun d!536055 () Bool)

(declare-fun c!286073 () Bool)

(assert (=> d!536055 (= c!286073 ((_ is Nil!19286) lt!677119))))

(declare-fun e!1122801 () (InoxSet C!9720))

(assert (=> d!536055 (= (content!2771 lt!677119) e!1122801)))

(declare-fun b!1754355 () Bool)

(assert (=> b!1754355 (= e!1122801 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1754356 () Bool)

(assert (=> b!1754356 (= e!1122801 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 lt!677119) true) (content!2771 (t!163097 lt!677119))))))

(assert (= (and d!536055 c!286073) b!1754355))

(assert (= (and d!536055 (not c!286073)) b!1754356))

(declare-fun m!2168869 () Bool)

(assert (=> b!1754356 m!2168869))

(declare-fun m!2168871 () Bool)

(assert (=> b!1754356 m!2168871))

(assert (=> d!535145 d!536055))

(assert (=> d!535145 d!535859))

(declare-fun d!536057 () Bool)

(declare-fun c!286074 () Bool)

(assert (=> d!536057 (= c!286074 ((_ is Nil!19286) (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))

(declare-fun e!1122802 () (InoxSet C!9720))

(assert (=> d!536057 (= (content!2771 (Cons!19286 (head!4042 suffix!1421) Nil!19286)) e!1122802)))

(declare-fun b!1754357 () Bool)

(assert (=> b!1754357 (= e!1122802 ((as const (Array C!9720 Bool)) false))))

(declare-fun b!1754358 () Bool)

(assert (=> b!1754358 (= e!1122802 ((_ map or) (store ((as const (Array C!9720 Bool)) false) (h!24687 (Cons!19286 (head!4042 suffix!1421) Nil!19286)) true) (content!2771 (t!163097 (Cons!19286 (head!4042 suffix!1421) Nil!19286)))))))

(assert (= (and d!536057 c!286074) b!1754357))

(assert (= (and d!536057 (not c!286074)) b!1754358))

(declare-fun m!2168873 () Bool)

(assert (=> b!1754358 m!2168873))

(declare-fun m!2168875 () Bool)

(assert (=> b!1754358 m!2168875))

(assert (=> d!535145 d!536057))

(declare-fun d!536059 () Bool)

(assert (=> d!536059 (= (list!7811 lt!677307) (list!7814 (c!285665 lt!677307)))))

(declare-fun bs!403762 () Bool)

(assert (= bs!403762 d!536059))

(declare-fun m!2168877 () Bool)

(assert (=> bs!403762 m!2168877))

(assert (=> d!535285 d!536059))

(declare-fun d!536061 () Bool)

(assert (=> d!536061 (= (isDefined!3255 lt!677303) (not (isEmpty!12161 lt!677303)))))

(declare-fun bs!403763 () Bool)

(assert (= bs!403763 d!536061))

(assert (=> bs!403763 m!2166967))

(assert (=> b!1752983 d!536061))

(declare-fun b!1754359 () Bool)

(declare-fun e!1122805 () Bool)

(declare-fun lt!677607 () Bool)

(declare-fun call!110520 () Bool)

(assert (=> b!1754359 (= e!1122805 (= lt!677607 call!110520))))

(declare-fun d!536063 () Bool)

(assert (=> d!536063 e!1122805))

(declare-fun c!286075 () Bool)

(assert (=> d!536063 (= c!286075 ((_ is EmptyExpr!4773) (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))))))

(declare-fun e!1122807 () Bool)

(assert (=> d!536063 (= lt!677607 e!1122807)))

(declare-fun c!286077 () Bool)

(assert (=> d!536063 (= c!286077 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))))))

(assert (=> d!536063 (validRegex!1920 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))))

(assert (=> d!536063 (= (matchR!2246 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))) (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))) lt!677607)))

(declare-fun b!1754360 () Bool)

(declare-fun res!789214 () Bool)

(declare-fun e!1122808 () Bool)

(assert (=> b!1754360 (=> (not res!789214) (not e!1122808))))

(assert (=> b!1754360 (= res!789214 (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))))))))

(declare-fun b!1754361 () Bool)

(declare-fun e!1122804 () Bool)

(assert (=> b!1754361 (= e!1122805 e!1122804)))

(declare-fun c!286076 () Bool)

(assert (=> b!1754361 (= c!286076 ((_ is EmptyLang!4773) (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))))))

(declare-fun b!1754362 () Bool)

(declare-fun res!789213 () Bool)

(declare-fun e!1122806 () Bool)

(assert (=> b!1754362 (=> res!789213 e!1122806)))

(assert (=> b!1754362 (= res!789213 e!1122808)))

(declare-fun res!789217 () Bool)

(assert (=> b!1754362 (=> (not res!789217) (not e!1122808))))

(assert (=> b!1754362 (= res!789217 lt!677607)))

(declare-fun b!1754363 () Bool)

(declare-fun e!1122809 () Bool)

(assert (=> b!1754363 (= e!1122806 e!1122809)))

(declare-fun res!789219 () Bool)

(assert (=> b!1754363 (=> (not res!789219) (not e!1122809))))

(assert (=> b!1754363 (= res!789219 (not lt!677607))))

(declare-fun b!1754364 () Bool)

(assert (=> b!1754364 (= e!1122804 (not lt!677607))))

(declare-fun b!1754365 () Bool)

(declare-fun res!789216 () Bool)

(declare-fun e!1122803 () Bool)

(assert (=> b!1754365 (=> res!789216 e!1122803)))

(assert (=> b!1754365 (= res!789216 (not (isEmpty!12156 (tail!2617 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))))))))

(declare-fun b!1754366 () Bool)

(assert (=> b!1754366 (= e!1122808 (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))) (c!285664 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))))))

(declare-fun b!1754367 () Bool)

(assert (=> b!1754367 (= e!1122807 (matchR!2246 (derivativeStep!1215 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))) (head!4042 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))))) (tail!2617 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303)))))))))

(declare-fun b!1754368 () Bool)

(assert (=> b!1754368 (= e!1122809 e!1122803)))

(declare-fun res!789212 () Bool)

(assert (=> b!1754368 (=> res!789212 e!1122803)))

(assert (=> b!1754368 (= res!789212 call!110520)))

(declare-fun b!1754369 () Bool)

(assert (=> b!1754369 (= e!1122807 (nullable!1446 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))))))

(declare-fun b!1754370 () Bool)

(declare-fun res!789218 () Bool)

(assert (=> b!1754370 (=> res!789218 e!1122806)))

(assert (=> b!1754370 (= res!789218 (not ((_ is ElementMatch!4773) (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))))))

(assert (=> b!1754370 (= e!1122804 e!1122806)))

(declare-fun bm!110515 () Bool)

(assert (=> bm!110515 (= call!110520 (isEmpty!12156 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))))))

(declare-fun b!1754371 () Bool)

(declare-fun res!789215 () Bool)

(assert (=> b!1754371 (=> (not res!789215) (not e!1122808))))

(assert (=> b!1754371 (= res!789215 (not call!110520))))

(declare-fun b!1754372 () Bool)

(assert (=> b!1754372 (= e!1122803 (not (= (head!4042 (list!7811 (charsOf!2094 (_1!10857 (get!5853 lt!677303))))) (c!285664 (regex!3445 (rule!5457 (_1!10857 (get!5853 lt!677303))))))))))

(assert (= (and d!536063 c!286077) b!1754369))

(assert (= (and d!536063 (not c!286077)) b!1754367))

(assert (= (and d!536063 c!286075) b!1754359))

(assert (= (and d!536063 (not c!286075)) b!1754361))

(assert (= (and b!1754361 c!286076) b!1754364))

(assert (= (and b!1754361 (not c!286076)) b!1754370))

(assert (= (and b!1754370 (not res!789218)) b!1754362))

(assert (= (and b!1754362 res!789217) b!1754371))

(assert (= (and b!1754371 res!789215) b!1754360))

(assert (= (and b!1754360 res!789214) b!1754366))

(assert (= (and b!1754362 (not res!789213)) b!1754363))

(assert (= (and b!1754363 res!789219) b!1754368))

(assert (= (and b!1754368 (not res!789212)) b!1754365))

(assert (= (and b!1754365 (not res!789216)) b!1754372))

(assert (= (or b!1754359 b!1754368 b!1754371) bm!110515))

(assert (=> d!536063 m!2166955))

(declare-fun m!2168879 () Bool)

(assert (=> d!536063 m!2168879))

(declare-fun m!2168881 () Bool)

(assert (=> d!536063 m!2168881))

(declare-fun m!2168883 () Bool)

(assert (=> b!1754369 m!2168883))

(assert (=> b!1754366 m!2166955))

(declare-fun m!2168885 () Bool)

(assert (=> b!1754366 m!2168885))

(assert (=> b!1754372 m!2166955))

(assert (=> b!1754372 m!2168885))

(assert (=> bm!110515 m!2166955))

(assert (=> bm!110515 m!2168879))

(assert (=> b!1754367 m!2166955))

(assert (=> b!1754367 m!2168885))

(assert (=> b!1754367 m!2168885))

(declare-fun m!2168887 () Bool)

(assert (=> b!1754367 m!2168887))

(assert (=> b!1754367 m!2166955))

(declare-fun m!2168889 () Bool)

(assert (=> b!1754367 m!2168889))

(assert (=> b!1754367 m!2168887))

(assert (=> b!1754367 m!2168889))

(declare-fun m!2168891 () Bool)

(assert (=> b!1754367 m!2168891))

(assert (=> b!1754360 m!2166955))

(assert (=> b!1754360 m!2168889))

(assert (=> b!1754360 m!2168889))

(declare-fun m!2168893 () Bool)

(assert (=> b!1754360 m!2168893))

(assert (=> b!1754365 m!2166955))

(assert (=> b!1754365 m!2168889))

(assert (=> b!1754365 m!2168889))

(assert (=> b!1754365 m!2168893))

(assert (=> b!1752979 d!536063))

(assert (=> b!1752979 d!535439))

(assert (=> b!1752979 d!535997))

(assert (=> b!1752979 d!535999))

(assert (=> d!535151 d!535149))

(assert (=> d!535151 d!535163))

(declare-fun d!536065 () Bool)

(declare-fun dynLambda!9231 (Int BalanceConc!12774) Bool)

(assert (=> d!536065 (dynLambda!9231 lambda!69905 lt!677045)))

(declare-fun lt!677610 () Unit!33441)

(declare-fun choose!10840 (Int BalanceConc!12774) Unit!33441)

(assert (=> d!536065 (= lt!677610 (choose!10840 lambda!69905 lt!677045))))

(assert (=> d!536065 (Forall!812 lambda!69905)))

(assert (=> d!536065 (= (ForallOf!299 lambda!69905 lt!677045) lt!677610)))

(declare-fun b_lambda!56479 () Bool)

(assert (=> (not b_lambda!56479) (not d!536065)))

(declare-fun bs!403764 () Bool)

(assert (= bs!403764 d!536065))

(declare-fun m!2168895 () Bool)

(assert (=> bs!403764 m!2168895))

(declare-fun m!2168897 () Bool)

(assert (=> bs!403764 m!2168897))

(declare-fun m!2168899 () Bool)

(assert (=> bs!403764 m!2168899))

(assert (=> d!535151 d!536065))

(assert (=> b!1752709 d!535721))

(assert (=> b!1752709 d!535723))

(assert (=> b!1752709 d!535719))

(declare-fun b!1754373 () Bool)

(declare-fun e!1122810 () Bool)

(declare-fun tp!498683 () Bool)

(assert (=> b!1754373 (= e!1122810 (and tp_is_empty!7789 tp!498683))))

(assert (=> b!1753041 (= tp!498559 e!1122810)))

(assert (= (and b!1753041 ((_ is Cons!19286) (t!163097 (t!163097 suffix!1421)))) b!1754373))

(declare-fun e!1122811 () Bool)

(assert (=> b!1753044 (= tp!498565 e!1122811)))

(declare-fun b!1754377 () Bool)

(declare-fun tp!498686 () Bool)

(declare-fun tp!498684 () Bool)

(assert (=> b!1754377 (= e!1122811 (and tp!498686 tp!498684))))

(declare-fun b!1754376 () Bool)

(declare-fun tp!498685 () Bool)

(assert (=> b!1754376 (= e!1122811 tp!498685)))

(declare-fun b!1754375 () Bool)

(declare-fun tp!498688 () Bool)

(declare-fun tp!498687 () Bool)

(assert (=> b!1754375 (= e!1122811 (and tp!498688 tp!498687))))

(declare-fun b!1754374 () Bool)

(assert (=> b!1754374 (= e!1122811 tp_is_empty!7789)))

(assert (= (and b!1753044 ((_ is ElementMatch!4773) (regOne!10058 (regex!3445 (rule!5457 token!523))))) b!1754374))

(assert (= (and b!1753044 ((_ is Concat!8309) (regOne!10058 (regex!3445 (rule!5457 token!523))))) b!1754375))

(assert (= (and b!1753044 ((_ is Star!4773) (regOne!10058 (regex!3445 (rule!5457 token!523))))) b!1754376))

(assert (= (and b!1753044 ((_ is Union!4773) (regOne!10058 (regex!3445 (rule!5457 token!523))))) b!1754377))

(declare-fun e!1122812 () Bool)

(assert (=> b!1753044 (= tp!498564 e!1122812)))

(declare-fun b!1754381 () Bool)

(declare-fun tp!498691 () Bool)

(declare-fun tp!498689 () Bool)

(assert (=> b!1754381 (= e!1122812 (and tp!498691 tp!498689))))

(declare-fun b!1754380 () Bool)

(declare-fun tp!498690 () Bool)

(assert (=> b!1754380 (= e!1122812 tp!498690)))

(declare-fun b!1754379 () Bool)

(declare-fun tp!498693 () Bool)

(declare-fun tp!498692 () Bool)

(assert (=> b!1754379 (= e!1122812 (and tp!498693 tp!498692))))

(declare-fun b!1754378 () Bool)

(assert (=> b!1754378 (= e!1122812 tp_is_empty!7789)))

(assert (= (and b!1753044 ((_ is ElementMatch!4773) (regTwo!10058 (regex!3445 (rule!5457 token!523))))) b!1754378))

(assert (= (and b!1753044 ((_ is Concat!8309) (regTwo!10058 (regex!3445 (rule!5457 token!523))))) b!1754379))

(assert (= (and b!1753044 ((_ is Star!4773) (regTwo!10058 (regex!3445 (rule!5457 token!523))))) b!1754380))

(assert (= (and b!1753044 ((_ is Union!4773) (regTwo!10058 (regex!3445 (rule!5457 token!523))))) b!1754381))

(declare-fun e!1122813 () Bool)

(assert (=> b!1753049 (= tp!498567 e!1122813)))

(declare-fun b!1754385 () Bool)

(declare-fun tp!498696 () Bool)

(declare-fun tp!498694 () Bool)

(assert (=> b!1754385 (= e!1122813 (and tp!498696 tp!498694))))

(declare-fun b!1754384 () Bool)

(declare-fun tp!498695 () Bool)

(assert (=> b!1754384 (= e!1122813 tp!498695)))

(declare-fun b!1754383 () Bool)

(declare-fun tp!498698 () Bool)

(declare-fun tp!498697 () Bool)

(assert (=> b!1754383 (= e!1122813 (and tp!498698 tp!498697))))

(declare-fun b!1754382 () Bool)

(assert (=> b!1754382 (= e!1122813 tp_is_empty!7789)))

(assert (= (and b!1753049 ((_ is ElementMatch!4773) (reg!5102 (regex!3445 (h!24688 rules!3447))))) b!1754382))

(assert (= (and b!1753049 ((_ is Concat!8309) (reg!5102 (regex!3445 (h!24688 rules!3447))))) b!1754383))

(assert (= (and b!1753049 ((_ is Star!4773) (reg!5102 (regex!3445 (h!24688 rules!3447))))) b!1754384))

(assert (= (and b!1753049 ((_ is Union!4773) (reg!5102 (regex!3445 (h!24688 rules!3447))))) b!1754385))

(declare-fun b!1754386 () Bool)

(declare-fun e!1122814 () Bool)

(declare-fun tp!498699 () Bool)

(assert (=> b!1754386 (= e!1122814 (and tp_is_empty!7789 tp!498699))))

(assert (=> b!1753011 (= tp!498528 e!1122814)))

(assert (= (and b!1753011 ((_ is Cons!19286) (innerList!6475 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))))) b!1754386))

(declare-fun e!1122815 () Bool)

(assert (=> b!1753045 (= tp!498562 e!1122815)))

(declare-fun b!1754390 () Bool)

(declare-fun tp!498702 () Bool)

(declare-fun tp!498700 () Bool)

(assert (=> b!1754390 (= e!1122815 (and tp!498702 tp!498700))))

(declare-fun b!1754389 () Bool)

(declare-fun tp!498701 () Bool)

(assert (=> b!1754389 (= e!1122815 tp!498701)))

(declare-fun b!1754388 () Bool)

(declare-fun tp!498704 () Bool)

(declare-fun tp!498703 () Bool)

(assert (=> b!1754388 (= e!1122815 (and tp!498704 tp!498703))))

(declare-fun b!1754387 () Bool)

(assert (=> b!1754387 (= e!1122815 tp_is_empty!7789)))

(assert (= (and b!1753045 ((_ is ElementMatch!4773) (reg!5102 (regex!3445 (rule!5457 token!523))))) b!1754387))

(assert (= (and b!1753045 ((_ is Concat!8309) (reg!5102 (regex!3445 (rule!5457 token!523))))) b!1754388))

(assert (= (and b!1753045 ((_ is Star!4773) (reg!5102 (regex!3445 (rule!5457 token!523))))) b!1754389))

(assert (= (and b!1753045 ((_ is Union!4773) (reg!5102 (regex!3445 (rule!5457 token!523))))) b!1754390))

(declare-fun b!1754393 () Bool)

(declare-fun b_free!48415 () Bool)

(declare-fun b_next!49119 () Bool)

(assert (=> b!1754393 (= b_free!48415 (not b_next!49119))))

(declare-fun tb!105331 () Bool)

(declare-fun t!163274 () Bool)

(assert (=> (and b!1754393 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163274) tb!105331))

(declare-fun result!126706 () Bool)

(assert (= result!126706 result!126514))

(assert (=> d!535139 t!163274))

(assert (=> b!1752370 t!163274))

(declare-fun tb!105333 () Bool)

(declare-fun t!163276 () Bool)

(assert (=> (and b!1754393 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163276) tb!105333))

(declare-fun result!126708 () Bool)

(assert (= result!126708 result!126660))

(assert (=> d!535763 t!163276))

(assert (=> d!535151 t!163274))

(assert (=> d!535135 t!163274))

(declare-fun t!163278 () Bool)

(declare-fun tb!105335 () Bool)

(assert (=> (and b!1754393 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163278) tb!105335))

(declare-fun result!126710 () Bool)

(assert (= result!126710 result!126628))

(assert (=> d!535441 t!163278))

(declare-fun tb!105337 () Bool)

(declare-fun t!163280 () Bool)

(assert (=> (and b!1754393 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163280) tb!105337))

(declare-fun result!126712 () Bool)

(assert (= result!126712 result!126540))

(assert (=> d!535135 t!163280))

(declare-fun b_and!131485 () Bool)

(declare-fun tp!498706 () Bool)

(assert (=> b!1754393 (= tp!498706 (and (=> t!163278 result!126710) (=> t!163280 result!126712) (=> t!163276 result!126708) (=> t!163274 result!126706) b_and!131485))))

(declare-fun b_free!48417 () Bool)

(declare-fun b_next!49121 () Bool)

(assert (=> b!1754393 (= b_free!48417 (not b_next!49121))))

(declare-fun t!163282 () Bool)

(declare-fun tb!105339 () Bool)

(assert (=> (and b!1754393 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163282) tb!105339))

(declare-fun result!126714 () Bool)

(assert (= result!126714 result!126522))

(assert (=> d!535159 t!163282))

(declare-fun t!163284 () Bool)

(declare-fun tb!105341 () Bool)

(assert (=> (and b!1754393 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677213)))))) t!163284) tb!105341))

(declare-fun result!126716 () Bool)

(assert (= result!126716 result!126652))

(assert (=> d!535723 t!163284))

(declare-fun tb!105343 () Bool)

(declare-fun t!163286 () Bool)

(assert (=> (and b!1754393 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046))))) t!163286) tb!105343))

(declare-fun result!126718 () Bool)

(assert (= result!126718 result!126506))

(assert (=> b!1752370 t!163286))

(assert (=> b!1752388 t!163282))

(declare-fun t!163288 () Bool)

(declare-fun tb!105345 () Bool)

(assert (=> (and b!1754393 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) t!163288) tb!105345))

(declare-fun result!126720 () Bool)

(assert (= result!126720 result!126534))

(assert (=> b!1752585 t!163288))

(declare-fun t!163290 () Bool)

(declare-fun tb!105347 () Bool)

(assert (=> (and b!1754393 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 lt!677286)))) t!163290) tb!105347))

(declare-fun result!126722 () Bool)

(assert (= result!126722 result!126636))

(assert (=> d!535601 t!163290))

(assert (=> d!535151 t!163286))

(declare-fun tb!105349 () Bool)

(declare-fun t!163292 () Bool)

(assert (=> (and b!1754393 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 (get!5853 lt!677303)))))) t!163292) tb!105349))

(declare-fun result!126724 () Bool)

(assert (= result!126724 result!126698))

(assert (=> d!535999 t!163292))

(declare-fun tb!105351 () Bool)

(declare-fun t!163294 () Bool)

(assert (=> (and b!1754393 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 token!523)))) t!163294) tb!105351))

(declare-fun result!126726 () Bool)

(assert (= result!126726 result!126528))

(assert (=> d!535285 t!163294))

(assert (=> b!1752554 t!163294))

(declare-fun tp!498708 () Bool)

(declare-fun b_and!131487 () Bool)

(assert (=> b!1754393 (= tp!498708 (and (=> t!163294 result!126726) (=> t!163292 result!126724) (=> t!163288 result!126720) (=> t!163284 result!126716) (=> t!163290 result!126722) (=> t!163282 result!126714) (=> t!163286 result!126718) b_and!131487))))

(declare-fun e!1122816 () Bool)

(assert (=> b!1754393 (= e!1122816 (and tp!498706 tp!498708))))

(declare-fun b!1754392 () Bool)

(declare-fun tp!498705 () Bool)

(declare-fun e!1122818 () Bool)

(assert (=> b!1754392 (= e!1122818 (and tp!498705 (inv!25023 (tag!3797 (h!24688 (t!163098 (t!163098 rules!3447))))) (inv!25028 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) e!1122816))))

(declare-fun b!1754391 () Bool)

(declare-fun e!1122819 () Bool)

(declare-fun tp!498707 () Bool)

(assert (=> b!1754391 (= e!1122819 (and e!1122818 tp!498707))))

(assert (=> b!1753020 (= tp!498540 e!1122819)))

(assert (= b!1754392 b!1754393))

(assert (= b!1754391 b!1754392))

(assert (= (and b!1753020 ((_ is Cons!19287) (t!163098 (t!163098 rules!3447)))) b!1754391))

(declare-fun m!2168901 () Bool)

(assert (=> b!1754392 m!2168901))

(declare-fun m!2168903 () Bool)

(assert (=> b!1754392 m!2168903))

(declare-fun e!1122820 () Bool)

(assert (=> b!1753050 (= tp!498568 e!1122820)))

(declare-fun b!1754397 () Bool)

(declare-fun tp!498711 () Bool)

(declare-fun tp!498709 () Bool)

(assert (=> b!1754397 (= e!1122820 (and tp!498711 tp!498709))))

(declare-fun b!1754396 () Bool)

(declare-fun tp!498710 () Bool)

(assert (=> b!1754396 (= e!1122820 tp!498710)))

(declare-fun b!1754395 () Bool)

(declare-fun tp!498713 () Bool)

(declare-fun tp!498712 () Bool)

(assert (=> b!1754395 (= e!1122820 (and tp!498713 tp!498712))))

(declare-fun b!1754394 () Bool)

(assert (=> b!1754394 (= e!1122820 tp_is_empty!7789)))

(assert (= (and b!1753050 ((_ is ElementMatch!4773) (regOne!10059 (regex!3445 (h!24688 rules!3447))))) b!1754394))

(assert (= (and b!1753050 ((_ is Concat!8309) (regOne!10059 (regex!3445 (h!24688 rules!3447))))) b!1754395))

(assert (= (and b!1753050 ((_ is Star!4773) (regOne!10059 (regex!3445 (h!24688 rules!3447))))) b!1754396))

(assert (= (and b!1753050 ((_ is Union!4773) (regOne!10059 (regex!3445 (h!24688 rules!3447))))) b!1754397))

(declare-fun e!1122821 () Bool)

(assert (=> b!1753050 (= tp!498566 e!1122821)))

(declare-fun b!1754401 () Bool)

(declare-fun tp!498716 () Bool)

(declare-fun tp!498714 () Bool)

(assert (=> b!1754401 (= e!1122821 (and tp!498716 tp!498714))))

(declare-fun b!1754400 () Bool)

(declare-fun tp!498715 () Bool)

(assert (=> b!1754400 (= e!1122821 tp!498715)))

(declare-fun b!1754399 () Bool)

(declare-fun tp!498718 () Bool)

(declare-fun tp!498717 () Bool)

(assert (=> b!1754399 (= e!1122821 (and tp!498718 tp!498717))))

(declare-fun b!1754398 () Bool)

(assert (=> b!1754398 (= e!1122821 tp_is_empty!7789)))

(assert (= (and b!1753050 ((_ is ElementMatch!4773) (regTwo!10059 (regex!3445 (h!24688 rules!3447))))) b!1754398))

(assert (= (and b!1753050 ((_ is Concat!8309) (regTwo!10059 (regex!3445 (h!24688 rules!3447))))) b!1754399))

(assert (= (and b!1753050 ((_ is Star!4773) (regTwo!10059 (regex!3445 (h!24688 rules!3447))))) b!1754400))

(assert (= (and b!1753050 ((_ is Union!4773) (regTwo!10059 (regex!3445 (h!24688 rules!3447))))) b!1754401))

(declare-fun e!1122822 () Bool)

(assert (=> b!1753046 (= tp!498563 e!1122822)))

(declare-fun b!1754405 () Bool)

(declare-fun tp!498721 () Bool)

(declare-fun tp!498719 () Bool)

(assert (=> b!1754405 (= e!1122822 (and tp!498721 tp!498719))))

(declare-fun b!1754404 () Bool)

(declare-fun tp!498720 () Bool)

(assert (=> b!1754404 (= e!1122822 tp!498720)))

(declare-fun b!1754403 () Bool)

(declare-fun tp!498723 () Bool)

(declare-fun tp!498722 () Bool)

(assert (=> b!1754403 (= e!1122822 (and tp!498723 tp!498722))))

(declare-fun b!1754402 () Bool)

(assert (=> b!1754402 (= e!1122822 tp_is_empty!7789)))

(assert (= (and b!1753046 ((_ is ElementMatch!4773) (regOne!10059 (regex!3445 (rule!5457 token!523))))) b!1754402))

(assert (= (and b!1753046 ((_ is Concat!8309) (regOne!10059 (regex!3445 (rule!5457 token!523))))) b!1754403))

(assert (= (and b!1753046 ((_ is Star!4773) (regOne!10059 (regex!3445 (rule!5457 token!523))))) b!1754404))

(assert (= (and b!1753046 ((_ is Union!4773) (regOne!10059 (regex!3445 (rule!5457 token!523))))) b!1754405))

(declare-fun e!1122823 () Bool)

(assert (=> b!1753046 (= tp!498561 e!1122823)))

(declare-fun b!1754409 () Bool)

(declare-fun tp!498726 () Bool)

(declare-fun tp!498724 () Bool)

(assert (=> b!1754409 (= e!1122823 (and tp!498726 tp!498724))))

(declare-fun b!1754408 () Bool)

(declare-fun tp!498725 () Bool)

(assert (=> b!1754408 (= e!1122823 tp!498725)))

(declare-fun b!1754407 () Bool)

(declare-fun tp!498728 () Bool)

(declare-fun tp!498727 () Bool)

(assert (=> b!1754407 (= e!1122823 (and tp!498728 tp!498727))))

(declare-fun b!1754406 () Bool)

(assert (=> b!1754406 (= e!1122823 tp_is_empty!7789)))

(assert (= (and b!1753046 ((_ is ElementMatch!4773) (regTwo!10059 (regex!3445 (rule!5457 token!523))))) b!1754406))

(assert (= (and b!1753046 ((_ is Concat!8309) (regTwo!10059 (regex!3445 (rule!5457 token!523))))) b!1754407))

(assert (= (and b!1753046 ((_ is Star!4773) (regTwo!10059 (regex!3445 (rule!5457 token!523))))) b!1754408))

(assert (= (and b!1753046 ((_ is Union!4773) (regTwo!10059 (regex!3445 (rule!5457 token!523))))) b!1754409))

(declare-fun b!1754410 () Bool)

(declare-fun e!1122824 () Bool)

(declare-fun tp!498729 () Bool)

(assert (=> b!1754410 (= e!1122824 (and tp_is_empty!7789 tp!498729))))

(assert (=> b!1753008 (= tp!498525 e!1122824)))

(assert (= (and b!1753008 ((_ is Cons!19286) (innerList!6475 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))))) b!1754410))

(declare-fun e!1122826 () Bool)

(declare-fun tp!498732 () Bool)

(declare-fun tp!498730 () Bool)

(declare-fun b!1754411 () Bool)

(assert (=> b!1754411 (= e!1122826 (and (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))))) tp!498730 (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))))) tp!498732))))

(declare-fun b!1754413 () Bool)

(declare-fun e!1122825 () Bool)

(declare-fun tp!498731 () Bool)

(assert (=> b!1754413 (= e!1122825 tp!498731)))

(declare-fun b!1754412 () Bool)

(assert (=> b!1754412 (= e!1122826 (and (inv!25037 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))))) e!1122825))))

(assert (=> b!1752564 (= tp!498461 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523)))) e!1122826))))

(assert (= (and b!1752564 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))))) b!1754411))

(assert (= b!1754412 b!1754413))

(assert (= (and b!1752564 ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 token!523))) (value!107855 token!523))))) b!1754412))

(declare-fun m!2168905 () Bool)

(assert (=> b!1754411 m!2168905))

(declare-fun m!2168907 () Bool)

(assert (=> b!1754411 m!2168907))

(declare-fun m!2168909 () Bool)

(assert (=> b!1754412 m!2168909))

(assert (=> b!1752564 m!2166355))

(declare-fun e!1122828 () Bool)

(declare-fun tp!498733 () Bool)

(declare-fun b!1754414 () Bool)

(declare-fun tp!498735 () Bool)

(assert (=> b!1754414 (= e!1122828 (and (inv!25030 (left!15439 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) tp!498733 (inv!25030 (right!15769 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) tp!498735))))

(declare-fun b!1754416 () Bool)

(declare-fun e!1122827 () Bool)

(declare-fun tp!498734 () Bool)

(assert (=> b!1754416 (= e!1122827 tp!498734)))

(declare-fun b!1754415 () Bool)

(assert (=> b!1754415 (= e!1122828 (and (inv!25037 (xs!9291 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) e!1122827))))

(assert (=> b!1753009 (= tp!498527 (and (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) e!1122828))))

(assert (= (and b!1753009 ((_ is Node!6415) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) b!1754414))

(assert (= b!1754415 b!1754416))

(assert (= (and b!1753009 ((_ is Leaf!9358) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) b!1754415))

(declare-fun m!2168911 () Bool)

(assert (=> b!1754414 m!2168911))

(declare-fun m!2168913 () Bool)

(assert (=> b!1754414 m!2168913))

(declare-fun m!2168915 () Bool)

(assert (=> b!1754415 m!2168915))

(assert (=> b!1753009 m!2167003))

(declare-fun e!1122830 () Bool)

(declare-fun tp!498738 () Bool)

(declare-fun b!1754417 () Bool)

(declare-fun tp!498736 () Bool)

(assert (=> b!1754417 (= e!1122830 (and (inv!25030 (left!15439 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) tp!498736 (inv!25030 (right!15769 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) tp!498738))))

(declare-fun b!1754419 () Bool)

(declare-fun e!1122829 () Bool)

(declare-fun tp!498737 () Bool)

(assert (=> b!1754419 (= e!1122829 tp!498737)))

(declare-fun b!1754418 () Bool)

(assert (=> b!1754418 (= e!1122830 (and (inv!25037 (xs!9291 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) e!1122829))))

(assert (=> b!1753009 (= tp!498529 (and (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046)))))) e!1122830))))

(assert (= (and b!1753009 ((_ is Node!6415) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) b!1754417))

(assert (= b!1754418 b!1754419))

(assert (= (and b!1753009 ((_ is Leaf!9358) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (value!107855 (_1!10857 lt!677046))))))) b!1754418))

(declare-fun m!2168917 () Bool)

(assert (=> b!1754417 m!2168917))

(declare-fun m!2168919 () Bool)

(assert (=> b!1754417 m!2168919))

(declare-fun m!2168921 () Bool)

(assert (=> b!1754418 m!2168921))

(assert (=> b!1753009 m!2167005))

(declare-fun e!1122831 () Bool)

(assert (=> b!1753048 (= tp!498570 e!1122831)))

(declare-fun b!1754423 () Bool)

(declare-fun tp!498741 () Bool)

(declare-fun tp!498739 () Bool)

(assert (=> b!1754423 (= e!1122831 (and tp!498741 tp!498739))))

(declare-fun b!1754422 () Bool)

(declare-fun tp!498740 () Bool)

(assert (=> b!1754422 (= e!1122831 tp!498740)))

(declare-fun b!1754421 () Bool)

(declare-fun tp!498743 () Bool)

(declare-fun tp!498742 () Bool)

(assert (=> b!1754421 (= e!1122831 (and tp!498743 tp!498742))))

(declare-fun b!1754420 () Bool)

(assert (=> b!1754420 (= e!1122831 tp_is_empty!7789)))

(assert (= (and b!1753048 ((_ is ElementMatch!4773) (regOne!10058 (regex!3445 (h!24688 rules!3447))))) b!1754420))

(assert (= (and b!1753048 ((_ is Concat!8309) (regOne!10058 (regex!3445 (h!24688 rules!3447))))) b!1754421))

(assert (= (and b!1753048 ((_ is Star!4773) (regOne!10058 (regex!3445 (h!24688 rules!3447))))) b!1754422))

(assert (= (and b!1753048 ((_ is Union!4773) (regOne!10058 (regex!3445 (h!24688 rules!3447))))) b!1754423))

(declare-fun e!1122832 () Bool)

(assert (=> b!1753048 (= tp!498569 e!1122832)))

(declare-fun b!1754427 () Bool)

(declare-fun tp!498746 () Bool)

(declare-fun tp!498744 () Bool)

(assert (=> b!1754427 (= e!1122832 (and tp!498746 tp!498744))))

(declare-fun b!1754426 () Bool)

(declare-fun tp!498745 () Bool)

(assert (=> b!1754426 (= e!1122832 tp!498745)))

(declare-fun b!1754425 () Bool)

(declare-fun tp!498748 () Bool)

(declare-fun tp!498747 () Bool)

(assert (=> b!1754425 (= e!1122832 (and tp!498748 tp!498747))))

(declare-fun b!1754424 () Bool)

(assert (=> b!1754424 (= e!1122832 tp_is_empty!7789)))

(assert (= (and b!1753048 ((_ is ElementMatch!4773) (regTwo!10058 (regex!3445 (h!24688 rules!3447))))) b!1754424))

(assert (= (and b!1753048 ((_ is Concat!8309) (regTwo!10058 (regex!3445 (h!24688 rules!3447))))) b!1754425))

(assert (= (and b!1753048 ((_ is Star!4773) (regTwo!10058 (regex!3445 (h!24688 rules!3447))))) b!1754426))

(assert (= (and b!1753048 ((_ is Union!4773) (regTwo!10058 (regex!3445 (h!24688 rules!3447))))) b!1754427))

(declare-fun e!1122833 () Bool)

(assert (=> b!1753035 (= tp!498553 e!1122833)))

(declare-fun b!1754431 () Bool)

(declare-fun tp!498751 () Bool)

(declare-fun tp!498749 () Bool)

(assert (=> b!1754431 (= e!1122833 (and tp!498751 tp!498749))))

(declare-fun b!1754430 () Bool)

(declare-fun tp!498750 () Bool)

(assert (=> b!1754430 (= e!1122833 tp!498750)))

(declare-fun b!1754429 () Bool)

(declare-fun tp!498753 () Bool)

(declare-fun tp!498752 () Bool)

(assert (=> b!1754429 (= e!1122833 (and tp!498753 tp!498752))))

(declare-fun b!1754428 () Bool)

(assert (=> b!1754428 (= e!1122833 tp_is_empty!7789)))

(assert (= (and b!1753035 ((_ is ElementMatch!4773) (reg!5102 (regex!3445 rule!422)))) b!1754428))

(assert (= (and b!1753035 ((_ is Concat!8309) (reg!5102 (regex!3445 rule!422)))) b!1754429))

(assert (= (and b!1753035 ((_ is Star!4773) (reg!5102 (regex!3445 rule!422)))) b!1754430))

(assert (= (and b!1753035 ((_ is Union!4773) (reg!5102 (regex!3445 rule!422)))) b!1754431))

(declare-fun e!1122834 () Bool)

(assert (=> b!1753036 (= tp!498554 e!1122834)))

(declare-fun b!1754435 () Bool)

(declare-fun tp!498756 () Bool)

(declare-fun tp!498754 () Bool)

(assert (=> b!1754435 (= e!1122834 (and tp!498756 tp!498754))))

(declare-fun b!1754434 () Bool)

(declare-fun tp!498755 () Bool)

(assert (=> b!1754434 (= e!1122834 tp!498755)))

(declare-fun b!1754433 () Bool)

(declare-fun tp!498758 () Bool)

(declare-fun tp!498757 () Bool)

(assert (=> b!1754433 (= e!1122834 (and tp!498758 tp!498757))))

(declare-fun b!1754432 () Bool)

(assert (=> b!1754432 (= e!1122834 tp_is_empty!7789)))

(assert (= (and b!1753036 ((_ is ElementMatch!4773) (regOne!10059 (regex!3445 rule!422)))) b!1754432))

(assert (= (and b!1753036 ((_ is Concat!8309) (regOne!10059 (regex!3445 rule!422)))) b!1754433))

(assert (= (and b!1753036 ((_ is Star!4773) (regOne!10059 (regex!3445 rule!422)))) b!1754434))

(assert (= (and b!1753036 ((_ is Union!4773) (regOne!10059 (regex!3445 rule!422)))) b!1754435))

(declare-fun e!1122835 () Bool)

(assert (=> b!1753036 (= tp!498552 e!1122835)))

(declare-fun b!1754439 () Bool)

(declare-fun tp!498761 () Bool)

(declare-fun tp!498759 () Bool)

(assert (=> b!1754439 (= e!1122835 (and tp!498761 tp!498759))))

(declare-fun b!1754438 () Bool)

(declare-fun tp!498760 () Bool)

(assert (=> b!1754438 (= e!1122835 tp!498760)))

(declare-fun b!1754437 () Bool)

(declare-fun tp!498763 () Bool)

(declare-fun tp!498762 () Bool)

(assert (=> b!1754437 (= e!1122835 (and tp!498763 tp!498762))))

(declare-fun b!1754436 () Bool)

(assert (=> b!1754436 (= e!1122835 tp_is_empty!7789)))

(assert (= (and b!1753036 ((_ is ElementMatch!4773) (regTwo!10059 (regex!3445 rule!422)))) b!1754436))

(assert (= (and b!1753036 ((_ is Concat!8309) (regTwo!10059 (regex!3445 rule!422)))) b!1754437))

(assert (= (and b!1753036 ((_ is Star!4773) (regTwo!10059 (regex!3445 rule!422)))) b!1754438))

(assert (= (and b!1753036 ((_ is Union!4773) (regTwo!10059 (regex!3445 rule!422)))) b!1754439))

(declare-fun e!1122837 () Bool)

(declare-fun b!1754440 () Bool)

(declare-fun tp!498764 () Bool)

(declare-fun tp!498766 () Bool)

(assert (=> b!1754440 (= e!1122837 (and (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) tp!498764 (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) tp!498766))))

(declare-fun b!1754442 () Bool)

(declare-fun e!1122836 () Bool)

(declare-fun tp!498765 () Bool)

(assert (=> b!1754442 (= e!1122836 tp!498765)))

(declare-fun b!1754441 () Bool)

(assert (=> b!1754441 (= e!1122837 (and (inv!25037 (xs!9291 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) e!1122836))))

(assert (=> b!1752587 (= tp!498462 (and (inv!25030 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049))))) e!1122837))))

(assert (= (and b!1752587 ((_ is Node!6415) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) b!1754440))

(assert (= b!1754441 b!1754442))

(assert (= (and b!1752587 ((_ is Leaf!9358) (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))) (value!107855 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) b!1754441))

(declare-fun m!2168923 () Bool)

(assert (=> b!1754440 m!2168923))

(declare-fun m!2168925 () Bool)

(assert (=> b!1754440 m!2168925))

(declare-fun m!2168927 () Bool)

(assert (=> b!1754441 m!2168927))

(assert (=> b!1752587 m!2166407))

(declare-fun b!1754443 () Bool)

(declare-fun e!1122839 () Bool)

(declare-fun tp!498769 () Bool)

(declare-fun tp!498767 () Bool)

(assert (=> b!1754443 (= e!1122839 (and (inv!25030 (left!15439 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) tp!498767 (inv!25030 (right!15769 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) tp!498769))))

(declare-fun b!1754445 () Bool)

(declare-fun e!1122838 () Bool)

(declare-fun tp!498768 () Bool)

(assert (=> b!1754445 (= e!1122838 tp!498768)))

(declare-fun b!1754444 () Bool)

(assert (=> b!1754444 (= e!1122839 (and (inv!25037 (xs!9291 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) e!1122838))))

(assert (=> b!1753006 (= tp!498524 (and (inv!25030 (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) e!1122839))))

(assert (= (and b!1753006 ((_ is Node!6415) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) b!1754443))

(assert (= b!1754444 b!1754445))

(assert (= (and b!1753006 ((_ is Leaf!9358) (left!15439 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) b!1754444))

(declare-fun m!2168929 () Bool)

(assert (=> b!1754443 m!2168929))

(declare-fun m!2168931 () Bool)

(assert (=> b!1754443 m!2168931))

(declare-fun m!2168933 () Bool)

(assert (=> b!1754444 m!2168933))

(assert (=> b!1753006 m!2166997))

(declare-fun b!1754446 () Bool)

(declare-fun tp!498770 () Bool)

(declare-fun e!1122841 () Bool)

(declare-fun tp!498772 () Bool)

(assert (=> b!1754446 (= e!1122841 (and (inv!25030 (left!15439 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) tp!498770 (inv!25030 (right!15769 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) tp!498772))))

(declare-fun b!1754448 () Bool)

(declare-fun e!1122840 () Bool)

(declare-fun tp!498771 () Bool)

(assert (=> b!1754448 (= e!1122840 tp!498771)))

(declare-fun b!1754447 () Bool)

(assert (=> b!1754447 (= e!1122841 (and (inv!25037 (xs!9291 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) e!1122840))))

(assert (=> b!1753006 (= tp!498526 (and (inv!25030 (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))))) e!1122841))))

(assert (= (and b!1753006 ((_ is Node!6415) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) b!1754446))

(assert (= b!1754447 b!1754448))

(assert (= (and b!1753006 ((_ is Leaf!9358) (right!15769 (c!285665 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045)))))) b!1754447))

(declare-fun m!2168935 () Bool)

(assert (=> b!1754446 m!2168935))

(declare-fun m!2168937 () Bool)

(assert (=> b!1754446 m!2168937))

(declare-fun m!2168939 () Bool)

(assert (=> b!1754447 m!2168939))

(assert (=> b!1753006 m!2166999))

(declare-fun e!1122842 () Bool)

(assert (=> b!1753021 (= tp!498538 e!1122842)))

(declare-fun b!1754452 () Bool)

(declare-fun tp!498775 () Bool)

(declare-fun tp!498773 () Bool)

(assert (=> b!1754452 (= e!1122842 (and tp!498775 tp!498773))))

(declare-fun b!1754451 () Bool)

(declare-fun tp!498774 () Bool)

(assert (=> b!1754451 (= e!1122842 tp!498774)))

(declare-fun b!1754450 () Bool)

(declare-fun tp!498777 () Bool)

(declare-fun tp!498776 () Bool)

(assert (=> b!1754450 (= e!1122842 (and tp!498777 tp!498776))))

(declare-fun b!1754449 () Bool)

(assert (=> b!1754449 (= e!1122842 tp_is_empty!7789)))

(assert (= (and b!1753021 ((_ is ElementMatch!4773) (regex!3445 (h!24688 (t!163098 rules!3447))))) b!1754449))

(assert (= (and b!1753021 ((_ is Concat!8309) (regex!3445 (h!24688 (t!163098 rules!3447))))) b!1754450))

(assert (= (and b!1753021 ((_ is Star!4773) (regex!3445 (h!24688 (t!163098 rules!3447))))) b!1754451))

(assert (= (and b!1753021 ((_ is Union!4773) (regex!3445 (h!24688 (t!163098 rules!3447))))) b!1754452))

(declare-fun b!1754453 () Bool)

(declare-fun e!1122843 () Bool)

(declare-fun tp!498778 () Bool)

(assert (=> b!1754453 (= e!1122843 (and tp_is_empty!7789 tp!498778))))

(assert (=> b!1753042 (= tp!498560 e!1122843)))

(assert (= (and b!1753042 ((_ is Cons!19286) (t!163097 (originalCharacters!4259 token!523)))) b!1754453))

(declare-fun e!1122844 () Bool)

(assert (=> b!1753034 (= tp!498556 e!1122844)))

(declare-fun b!1754457 () Bool)

(declare-fun tp!498781 () Bool)

(declare-fun tp!498779 () Bool)

(assert (=> b!1754457 (= e!1122844 (and tp!498781 tp!498779))))

(declare-fun b!1754456 () Bool)

(declare-fun tp!498780 () Bool)

(assert (=> b!1754456 (= e!1122844 tp!498780)))

(declare-fun b!1754455 () Bool)

(declare-fun tp!498783 () Bool)

(declare-fun tp!498782 () Bool)

(assert (=> b!1754455 (= e!1122844 (and tp!498783 tp!498782))))

(declare-fun b!1754454 () Bool)

(assert (=> b!1754454 (= e!1122844 tp_is_empty!7789)))

(assert (= (and b!1753034 ((_ is ElementMatch!4773) (regOne!10058 (regex!3445 rule!422)))) b!1754454))

(assert (= (and b!1753034 ((_ is Concat!8309) (regOne!10058 (regex!3445 rule!422)))) b!1754455))

(assert (= (and b!1753034 ((_ is Star!4773) (regOne!10058 (regex!3445 rule!422)))) b!1754456))

(assert (= (and b!1753034 ((_ is Union!4773) (regOne!10058 (regex!3445 rule!422)))) b!1754457))

(declare-fun e!1122845 () Bool)

(assert (=> b!1753034 (= tp!498555 e!1122845)))

(declare-fun b!1754461 () Bool)

(declare-fun tp!498786 () Bool)

(declare-fun tp!498784 () Bool)

(assert (=> b!1754461 (= e!1122845 (and tp!498786 tp!498784))))

(declare-fun b!1754460 () Bool)

(declare-fun tp!498785 () Bool)

(assert (=> b!1754460 (= e!1122845 tp!498785)))

(declare-fun b!1754459 () Bool)

(declare-fun tp!498788 () Bool)

(declare-fun tp!498787 () Bool)

(assert (=> b!1754459 (= e!1122845 (and tp!498788 tp!498787))))

(declare-fun b!1754458 () Bool)

(assert (=> b!1754458 (= e!1122845 tp_is_empty!7789)))

(assert (= (and b!1753034 ((_ is ElementMatch!4773) (regTwo!10058 (regex!3445 rule!422)))) b!1754458))

(assert (= (and b!1753034 ((_ is Concat!8309) (regTwo!10058 (regex!3445 rule!422)))) b!1754459))

(assert (= (and b!1753034 ((_ is Star!4773) (regTwo!10058 (regex!3445 rule!422)))) b!1754460))

(assert (= (and b!1753034 ((_ is Union!4773) (regTwo!10058 (regex!3445 rule!422)))) b!1754461))

(declare-fun b_lambda!56481 () Bool)

(assert (= b_lambda!56369 (or (and b!1752383 b_free!48401 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) (and b!1752378 b_free!48393 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) (and b!1754393 b_free!48417 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) (and b!1753022 b_free!48409 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) (and b!1752373 b_free!48397 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (Token!6457 (apply!5245 (transformation!3445 (rule!5457 (_1!10857 lt!677046))) lt!677045) (rule!5457 (_1!10857 lt!677046)) (size!15321 lt!677045) lt!677049)))))) b_lambda!56481)))

(declare-fun b_lambda!56483 () Bool)

(assert (= b_lambda!56375 (or (and b!1752373 b_free!48395 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1754393 b_free!48415 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752378 b_free!48391 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48399 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48407 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56483)))

(declare-fun b_lambda!56485 () Bool)

(assert (= b_lambda!56373 (or (and b!1752373 b_free!48395 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1754393 b_free!48415 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752378 b_free!48391 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48399 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48407 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56485)))

(declare-fun b_lambda!56487 () Bool)

(assert (= b_lambda!56371 (or (and b!1752373 b_free!48395 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1754393 b_free!48415 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752378 b_free!48391 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48399 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48407 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56487)))

(declare-fun b_lambda!56489 () Bool)

(assert (= b_lambda!56377 (or (and b!1752373 b_free!48397 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1754393 b_free!48417 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48409 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48401 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752378 b_free!48393 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56489)))

(declare-fun b_lambda!56491 () Bool)

(assert (= b_lambda!56477 (or d!535143 b_lambda!56491)))

(declare-fun bs!403765 () Bool)

(declare-fun d!536067 () Bool)

(assert (= bs!403765 (and d!536067 d!535143)))

(assert (=> bs!403765 (= (dynLambda!9230 lambda!69902 (h!24688 rules!3447)) (regex!3445 (h!24688 rules!3447)))))

(assert (=> b!1754316 d!536067))

(declare-fun b_lambda!56493 () Bool)

(assert (= b_lambda!56479 (or d!535151 b_lambda!56493)))

(declare-fun bs!403766 () Bool)

(declare-fun d!536069 () Bool)

(assert (= bs!403766 (and d!536069 d!535151)))

(assert (=> bs!403766 (= (dynLambda!9231 lambda!69905 lt!677045) (= (list!7811 (dynLambda!9222 (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045))) (list!7811 lt!677045)))))

(declare-fun b_lambda!56501 () Bool)

(assert (=> (not b_lambda!56501) (not bs!403766)))

(assert (=> bs!403766 t!163083))

(declare-fun b_and!131489 () Bool)

(assert (= b_and!131481 (and (=> t!163083 result!126512) b_and!131489)))

(assert (=> bs!403766 t!163286))

(declare-fun b_and!131491 () Bool)

(assert (= b_and!131487 (and (=> t!163286 result!126718) b_and!131491)))

(assert (=> bs!403766 t!163079))

(declare-fun b_and!131493 () Bool)

(assert (= b_and!131477 (and (=> t!163079 result!126506) b_and!131493)))

(assert (=> bs!403766 t!163156))

(declare-fun b_and!131495 () Bool)

(assert (= b_and!131483 (and (=> t!163156 result!126596) b_and!131495)))

(assert (=> bs!403766 t!163081))

(declare-fun b_and!131497 () Bool)

(assert (= b_and!131479 (and (=> t!163081 result!126510) b_and!131497)))

(declare-fun b_lambda!56503 () Bool)

(assert (=> (not b_lambda!56503) (not bs!403766)))

(assert (=> bs!403766 t!163274))

(declare-fun b_and!131499 () Bool)

(assert (= b_and!131485 (and (=> t!163274 result!126706) b_and!131499)))

(assert (=> bs!403766 t!163087))

(declare-fun b_and!131501 () Bool)

(assert (= b_and!131419 (and (=> t!163087 result!126518) b_and!131501)))

(assert (=> bs!403766 t!163085))

(declare-fun b_and!131503 () Bool)

(assert (= b_and!131417 (and (=> t!163085 result!126514) b_and!131503)))

(assert (=> bs!403766 t!163089))

(declare-fun b_and!131505 () Bool)

(assert (= b_and!131421 (and (=> t!163089 result!126520) b_and!131505)))

(assert (=> bs!403766 t!163148))

(declare-fun b_and!131507 () Bool)

(assert (= b_and!131423 (and (=> t!163148 result!126588) b_and!131507)))

(assert (=> bs!403766 m!2166171))

(assert (=> bs!403766 m!2166191))

(assert (=> bs!403766 m!2166193))

(assert (=> bs!403766 m!2166189))

(assert (=> bs!403766 m!2166189))

(assert (=> bs!403766 m!2166191))

(assert (=> d!536065 d!536069))

(declare-fun b_lambda!56495 () Bool)

(assert (= b_lambda!56379 (or (and b!1752373 b_free!48395 (= (toValue!4960 (transformation!3445 rule!422)) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1754393 b_free!48415 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752378 b_free!48391 (= (toValue!4960 (transformation!3445 (rule!5457 token!523))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48399 (= (toValue!4960 (transformation!3445 (h!24688 rules!3447))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48407 (= (toValue!4960 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56495)))

(declare-fun b_lambda!56497 () Bool)

(assert (= b_lambda!56439 (or d!535135 b_lambda!56497)))

(declare-fun bs!403767 () Bool)

(declare-fun d!536071 () Bool)

(assert (= bs!403767 (and d!536071 d!535135)))

(declare-fun res!789220 () Bool)

(declare-fun e!1122846 () Bool)

(assert (=> bs!403767 (=> res!789220 e!1122846)))

(assert (=> bs!403767 (= res!789220 (not (= (list!7811 lt!677045) (list!7811 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))))))))

(assert (=> bs!403767 (= (dynLambda!9228 lambda!69899 lt!677045 (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046)))) e!1122846)))

(declare-fun b!1754462 () Bool)

(assert (=> b!1754462 (= e!1122846 (= (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) lt!677045) (dynLambda!9223 (toValue!4960 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))) (seqFromList!2414 (originalCharacters!4259 (_1!10857 lt!677046))))))))

(assert (= (and bs!403767 (not res!789220)) b!1754462))

(declare-fun b_lambda!56505 () Bool)

(assert (=> (not b_lambda!56505) (not b!1754462)))

(assert (=> b!1754462 t!163085))

(declare-fun b_and!131509 () Bool)

(assert (= b_and!131503 (and (=> t!163085 result!126514) b_and!131509)))

(assert (=> b!1754462 t!163089))

(declare-fun b_and!131511 () Bool)

(assert (= b_and!131505 (and (=> t!163089 result!126520) b_and!131511)))

(assert (=> b!1754462 t!163274))

(declare-fun b_and!131513 () Bool)

(assert (= b_and!131499 (and (=> t!163274 result!126706) b_and!131513)))

(assert (=> b!1754462 t!163087))

(declare-fun b_and!131515 () Bool)

(assert (= b_and!131501 (and (=> t!163087 result!126518) b_and!131515)))

(assert (=> b!1754462 t!163148))

(declare-fun b_and!131517 () Bool)

(assert (= b_and!131507 (and (=> t!163148 result!126588) b_and!131517)))

(declare-fun b_lambda!56507 () Bool)

(assert (=> (not b_lambda!56507) (not b!1754462)))

(assert (=> b!1754462 t!163112))

(declare-fun b_and!131519 () Bool)

(assert (= b_and!131509 (and (=> t!163112 result!126540) b_and!131519)))

(assert (=> b!1754462 t!163280))

(declare-fun b_and!131521 () Bool)

(assert (= b_and!131513 (and (=> t!163280 result!126712) b_and!131521)))

(assert (=> b!1754462 t!163150))

(declare-fun b_and!131523 () Bool)

(assert (= b_and!131517 (and (=> t!163150 result!126590) b_and!131523)))

(assert (=> b!1754462 t!163116))

(declare-fun b_and!131525 () Bool)

(assert (= b_and!131511 (and (=> t!163116 result!126544) b_and!131525)))

(assert (=> b!1754462 t!163114))

(declare-fun b_and!131527 () Bool)

(assert (= b_and!131515 (and (=> t!163114 result!126542) b_and!131527)))

(assert (=> bs!403767 m!2166171))

(assert (=> bs!403767 m!2166225))

(assert (=> bs!403767 m!2166425))

(assert (=> b!1754462 m!2166189))

(assert (=> b!1754462 m!2166225))

(assert (=> b!1754462 m!2166421))

(assert (=> d!535741 d!536071))

(declare-fun b_lambda!56499 () Bool)

(assert (= b_lambda!56381 (or (and b!1752373 b_free!48397 (= (toChars!4819 (transformation!3445 rule!422)) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1754393 b_free!48417 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 (t!163098 rules!3447))))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1753022 b_free!48409 (= (toChars!4819 (transformation!3445 (h!24688 (t!163098 rules!3447)))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752383 b_free!48401 (= (toChars!4819 (transformation!3445 (h!24688 rules!3447))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) (and b!1752378 b_free!48393 (= (toChars!4819 (transformation!3445 (rule!5457 token!523))) (toChars!4819 (transformation!3445 (rule!5457 (_1!10857 lt!677046)))))) b_lambda!56499)))

(check-sat (not d!535457) (not b!1753380) (not b!1753393) (not b!1754107) (not b_lambda!56431) (not d!535643) (not bs!403767) (not b!1753545) (not b_lambda!56491) b_and!131521 (not b!1754318) (not d!535741) (not b!1753913) (not d!535517) (not b_next!49111) (not b_next!49113) (not b!1754106) (not b!1754301) (not b!1754162) (not b!1754149) (not b!1753399) (not d!535921) (not d!535815) (not b!1754192) (not b!1754167) (not b!1754451) (not bm!110452) (not b!1753976) (not b!1753532) (not bm!110498) (not b!1753773) (not b!1753546) (not d!535945) (not b!1753607) (not b!1754155) (not bs!403766) (not b!1753769) (not b!1754388) (not b!1753713) (not b!1754125) (not b!1753759) (not d!535455) (not b!1754327) (not b_next!49099) b_and!131523 (not bm!110495) (not b!1754391) (not b!1753566) (not b!1754230) (not b!1753914) (not b!1754381) (not b!1754223) (not d!535897) (not d!535619) (not d!535779) (not b!1753395) (not b!1754421) (not b!1753824) (not b!1754430) (not b!1753006) (not b!1754224) (not b!1753830) (not b!1754435) (not b!1754251) (not b!1754412) (not b!1754360) (not b!1754429) (not d!535999) (not d!535963) (not b!1753383) (not d!535519) (not b!1754218) (not b!1754177) (not bm!110497) (not d!535617) (not b!1754131) (not b!1753886) (not d!535755) (not b!1754102) (not b!1753762) (not b!1754182) (not b!1754191) (not b!1754000) (not b!1754383) (not b_lambda!56499) (not d!535723) (not d!536063) (not b!1753931) (not b!1753831) (not d!535621) (not b!1754426) (not b!1753534) (not b_lambda!56507) (not b!1754325) (not d!535821) (not b!1754442) b_and!131489 (not b!1754380) (not b!1754434) (not b!1753851) (not b!1754390) (not d!536045) (not b!1754309) (not b!1754204) (not b!1753396) (not b!1754395) (not b!1754373) (not d!535941) (not bm!110465) (not b!1753403) (not d!535987) (not b!1753552) (not b!1754160) (not b_lambda!56483) tp_is_empty!7789 (not b!1754422) (not b!1754175) (not b!1754256) (not b!1753854) (not b!1753736) (not d!536033) (not b!1754411) (not b!1753377) (not d!535459) (not b!1754437) (not b!1753770) (not b!1753604) (not b!1753917) (not d!535819) (not b_lambda!56437) (not b!1754316) (not b!1754304) (not b!1754143) (not b!1754345) (not b!1754222) (not b!1753879) (not d!535969) (not b!1753405) (not d!535923) (not b!1754123) (not b!1753378) (not b!1754119) (not b!1753391) (not bm!110502) (not b!1754326) (not b!1753916) (not b!1754439) (not b!1754445) b_and!131525 (not b_lambda!56495) (not bm!110500) (not d!536043) (not b!1754366) (not d!535839) (not b!1754408) (not b!1754127) (not b!1753401) (not d!535985) (not tb!105277) (not d!535639) (not d!535507) (not b_lambda!56501) (not b!1754255) (not b!1753594) (not b!1754397) (not b!1753955) (not d!536035) (not bm!110513) (not d!535781) (not b!1754210) (not d!535913) (not b!1754205) (not b!1753829) (not b!1753755) (not d!535627) (not b!1754140) (not b!1753406) (not b!1754377) (not b!1754320) (not bm!110507) (not b!1753973) (not b_lambda!56487) (not b!1753714) (not b!1754265) (not b!1754441) (not tb!105253) (not b!1754122) (not b!1754170) (not b!1753918) (not b!1754396) (not bm!110447) (not b!1754129) (not b!1754423) (not b!1754399) (not bm!110463) (not d!536047) (not d!535769) (not b!1754198) (not d!535995) (not b!1753560) (not b!1753971) (not d!535997) (not d!536003) (not b!1753543) (not b!1754158) (not b!1754240) (not tb!105261) b_and!131491 (not b_lambda!56481) (not b!1754433) (not b!1754184) (not b!1754207) (not b!1754418) (not b!1753542) (not b!1754404) (not b!1754262) (not b!1753760) (not b!1753743) (not b!1754227) (not d!535965) (not b!1754372) (not b!1754272) (not b!1754385) (not b!1754104) (not d!535939) (not d!535967) (not b!1754103) (not b!1754379) (not b!1754346) (not b_lambda!56419) (not d!535629) (not b!1753381) b_and!131519 (not b_next!49095) (not d!536025) (not b!1754120) (not b!1754416) (not b!1754414) (not b!1753538) (not b!1754443) (not d!535803) (not d!535453) (not bm!110494) (not d!535887) (not b!1754232) (not b_lambda!56505) (not b!1753603) (not b!1754417) (not b!1754348) (not bm!110515) (not b!1754244) (not b!1753389) (not d!535879) (not b!1754118) (not b!1754438) (not d!535825) (not d!535611) (not b!1754448) (not d!536027) (not b!1754431) (not b!1753952) (not b!1753757) (not b!1754347) (not b!1754156) (not b!1754111) (not b!1753740) (not b!1754247) (not b!1753533) (not d!535899) (not b!1754229) (not b!1754253) (not bm!110488) (not b!1753559) (not b!1754108) (not d!535983) (not tb!105285) (not b!1754116) (not b!1753850) (not d!535739) (not d!535767) (not d!536059) (not b!1754413) (not b!1754105) (not b!1754195) (not b_lambda!56417) (not b!1754365) (not b!1754389) (not b!1753356) (not b!1753554) (not b_lambda!56497) (not d!535721) (not b!1754401) (not b!1754099) (not b!1753551) (not b!1754258) (not b!1754280) (not d!535877) (not b!1754356) b_and!131527 (not d!536039) (not b!1753358) (not b!1753531) (not b!1754344) (not b!1754340) (not b_lambda!56441) (not d!535613) (not b!1754030) (not d!536041) (not b!1753764) (not d!535813) (not b!1754249) (not b!1754179) (not b!1754440) (not b!1753561) (not b_next!49103) (not d!535615) (not b!1753920) (not b_next!49119) (not bm!110486) (not b!1754168) (not b!1754447) (not d!535451) (not b!1754405) (not b!1753548) (not d!535511) (not b!1754154) (not b!1753977) (not b_next!49105) (not b!1754196) (not b!1753402) (not bm!110462) (not b!1754369) (not b_next!49101) (not bm!110512) (not d!535505) (not bm!110505) (not d!536065) (not b!1753610) (not b!1754419) (not b!1753776) (not b!1754457) (not b!1753852) (not b!1754243) (not b!1754029) (not b!1754141) (not b!1754460) (not d!536061) (not b!1753857) (not b!1754308) (not b!1754130) (not b!1753398) (not b_lambda!56411) (not b!1754358) (not b!1754261) (not b!1753598) (not b!1754112) (not b!1753881) (not d!535881) (not b!1753754) (not b!1754307) (not b!1754409) (not b!1753771) (not b!1754410) (not b!1754376) (not b!1754305) (not b_lambda!56485) (not d!535477) (not bm!110476) (not d!535601) (not b_lambda!56413) (not b!1754392) (not b!1754176) (not b!1754052) (not d!535943) (not b!1753777) (not b!1754329) (not b!1754444) (not b!1753322) (not d!535515) (not d!536007) (not b!1754343) (not b!1754403) (not b!1754354) (not d!536031) (not d!535927) (not b!1754446) (not b!1753716) (not b!1753731) (not b!1753878) (not b!1754415) (not b!1753985) (not b!1754375) (not b!1753539) (not d!535925) (not d!535905) (not d!535979) (not bm!110477) (not d!535865) (not b_next!49121) (not d!535867) (not b!1753375) (not d!535717) (not d!535837) (not b_lambda!56475) (not b!1754137) (not d!535703) (not bm!110510) (not d!535875) (not b!1752564) (not b_lambda!56489) (not b!1753710) (not b!1754384) (not b!1753856) (not b!1754267) (not b!1754115) (not d!535633) (not b_next!49097) (not b!1754407) b_and!131497 (not b!1753563) (not bm!110504) (not bm!110485) (not b!1753975) (not b_lambda!56415) (not b!1753339) (not b!1754400) (not b!1754332) (not b!1754186) (not b!1753880) (not b!1754459) (not b!1754461) (not d!535829) (not b_lambda!56503) (not b!1754452) (not b!1754203) (not b!1754455) (not b!1753849) b_and!131495 (not b!1753009) (not bm!110508) (not b!1753605) (not b!1754109) (not b_lambda!56433) b_and!131493 (not b!1753340) (not d!535641) (not b!1754456) (not b!1753711) (not b!1754302) (not bm!110501) (not d!535757) (not b!1753357) (not b_lambda!56493) (not b!1753709) (not b!1753999) (not d!536049) (not b!1753376) (not b!1753993) (not b!1754269) (not b!1752587) (not b!1753717) (not d!535509) (not b!1754136) (not b!1754386) (not b!1753738) (not b!1754425) (not b!1754264) (not b!1754450) (not b!1754037) (not b!1754246) (not d!536023) (not b!1753544) (not d!535605) (not b!1754273) (not b!1754117) (not d!535949) (not b!1753737) (not b!1754139) (not d!535933) (not b!1753915) (not d!536037) (not b!1753540) (not b!1753537) (not b!1753712) (not b!1753882) (not b!1753853) (not b!1754427) (not b!1753400) (not b!1754453) (not b!1753885) (not b!1754367) (not d!535991) (not tb!105323) (not b!1753883) (not d!536001) (not b!1753336))
(check-sat (not b_next!49113) b_and!131489 b_and!131525 b_and!131491 b_and!131527 (not b_next!49101) (not b_next!49121) (not b_next!49111) b_and!131521 (not b_next!49099) b_and!131523 b_and!131519 (not b_next!49095) (not b_next!49105) (not b_next!49103) (not b_next!49119) b_and!131497 (not b_next!49097) b_and!131495 b_and!131493)
