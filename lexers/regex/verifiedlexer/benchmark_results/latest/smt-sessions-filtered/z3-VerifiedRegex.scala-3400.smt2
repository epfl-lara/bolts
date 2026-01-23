; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192228 () Bool)

(assert start!192228)

(declare-fun b!1917379 () Bool)

(declare-fun b_free!54409 () Bool)

(declare-fun b_next!55113 () Bool)

(assert (=> b!1917379 (= b_free!54409 (not b_next!55113))))

(declare-fun tp!547230 () Bool)

(declare-fun b_and!149615 () Bool)

(assert (=> b!1917379 (= tp!547230 b_and!149615)))

(declare-fun b_free!54411 () Bool)

(declare-fun b_next!55115 () Bool)

(assert (=> b!1917379 (= b_free!54411 (not b_next!55115))))

(declare-fun tp!547227 () Bool)

(declare-fun b_and!149617 () Bool)

(assert (=> b!1917379 (= tp!547227 b_and!149617)))

(declare-fun b!1917375 () Bool)

(declare-fun b_free!54413 () Bool)

(declare-fun b_next!55117 () Bool)

(assert (=> b!1917375 (= b_free!54413 (not b_next!55117))))

(declare-fun tp!547222 () Bool)

(declare-fun b_and!149619 () Bool)

(assert (=> b!1917375 (= tp!547222 b_and!149619)))

(declare-fun b_free!54415 () Bool)

(declare-fun b_next!55119 () Bool)

(assert (=> b!1917375 (= b_free!54415 (not b_next!55119))))

(declare-fun tp!547229 () Bool)

(declare-fun b_and!149621 () Bool)

(assert (=> b!1917375 (= tp!547229 b_and!149621)))

(declare-fun b!1917385 () Bool)

(declare-fun b_free!54417 () Bool)

(declare-fun b_next!55121 () Bool)

(assert (=> b!1917385 (= b_free!54417 (not b_next!55121))))

(declare-fun tp!547224 () Bool)

(declare-fun b_and!149623 () Bool)

(assert (=> b!1917385 (= tp!547224 b_and!149623)))

(declare-fun b_free!54419 () Bool)

(declare-fun b_next!55123 () Bool)

(assert (=> b!1917385 (= b_free!54419 (not b_next!55123))))

(declare-fun tp!547226 () Bool)

(declare-fun b_and!149625 () Bool)

(assert (=> b!1917385 (= tp!547226 b_and!149625)))

(declare-fun b!1917372 () Bool)

(declare-fun res!857106 () Bool)

(declare-fun e!1225069 () Bool)

(assert (=> b!1917372 (=> (not res!857106) (not e!1225069))))

(declare-datatypes ((List!21772 0))(
  ( (Nil!21690) (Cons!21690 (h!27091 (_ BitVec 16)) (t!178565 List!21772)) )
))
(declare-datatypes ((TokenValue!4012 0))(
  ( (FloatLiteralValue!8024 (text!28529 List!21772)) (TokenValueExt!4011 (__x!13522 Int)) (Broken!20060 (value!122031 List!21772)) (Object!4093) (End!4012) (Def!4012) (Underscore!4012) (Match!4012) (Else!4012) (Error!4012) (Case!4012) (If!4012) (Extends!4012) (Abstract!4012) (Class!4012) (Val!4012) (DelimiterValue!8024 (del!4072 List!21772)) (KeywordValue!4018 (value!122032 List!21772)) (CommentValue!8024 (value!122033 List!21772)) (WhitespaceValue!8024 (value!122034 List!21772)) (IndentationValue!4012 (value!122035 List!21772)) (String!25177) (Int32!4012) (Broken!20061 (value!122036 List!21772)) (Boolean!4013) (Unit!36087) (OperatorValue!4015 (op!4072 List!21772)) (IdentifierValue!8024 (value!122037 List!21772)) (IdentifierValue!8025 (value!122038 List!21772)) (WhitespaceValue!8025 (value!122039 List!21772)) (True!8024) (False!8024) (Broken!20062 (value!122040 List!21772)) (Broken!20063 (value!122041 List!21772)) (True!8025) (RightBrace!4012) (RightBracket!4012) (Colon!4012) (Null!4012) (Comma!4012) (LeftBracket!4012) (False!8025) (LeftBrace!4012) (ImaginaryLiteralValue!4012 (text!28530 List!21772)) (StringLiteralValue!12036 (value!122042 List!21772)) (EOFValue!4012 (value!122043 List!21772)) (IdentValue!4012 (value!122044 List!21772)) (DelimiterValue!8025 (value!122045 List!21772)) (DedentValue!4012 (value!122046 List!21772)) (NewLineValue!4012 (value!122047 List!21772)) (IntegerValue!12036 (value!122048 (_ BitVec 32)) (text!28531 List!21772)) (IntegerValue!12037 (value!122049 Int) (text!28532 List!21772)) (Times!4012) (Or!4012) (Equal!4012) (Minus!4012) (Broken!20064 (value!122050 List!21772)) (And!4012) (Div!4012) (LessEqual!4012) (Mod!4012) (Concat!9313) (Not!4012) (Plus!4012) (SpaceValue!4012 (value!122051 List!21772)) (IntegerValue!12038 (value!122052 Int) (text!28533 List!21772)) (StringLiteralValue!12037 (text!28534 List!21772)) (FloatLiteralValue!8025 (text!28535 List!21772)) (BytesLiteralValue!4012 (value!122053 List!21772)) (CommentValue!8025 (value!122054 List!21772)) (StringLiteralValue!12038 (value!122055 List!21772)) (ErrorTokenValue!4012 (msg!4073 List!21772)) )
))
(declare-datatypes ((C!10748 0))(
  ( (C!10749 (val!6326 Int)) )
))
(declare-datatypes ((Regex!5301 0))(
  ( (ElementMatch!5301 (c!312048 C!10748)) (Concat!9314 (regOne!11114 Regex!5301) (regTwo!11114 Regex!5301)) (EmptyExpr!5301) (Star!5301 (reg!5630 Regex!5301)) (EmptyLang!5301) (Union!5301 (regOne!11115 Regex!5301) (regTwo!11115 Regex!5301)) )
))
(declare-datatypes ((String!25178 0))(
  ( (String!25179 (value!122056 String)) )
))
(declare-datatypes ((List!21773 0))(
  ( (Nil!21691) (Cons!21691 (h!27092 C!10748) (t!178566 List!21773)) )
))
(declare-datatypes ((IArray!14493 0))(
  ( (IArray!14494 (innerList!7304 List!21773)) )
))
(declare-datatypes ((Conc!7244 0))(
  ( (Node!7244 (left!17316 Conc!7244) (right!17646 Conc!7244) (csize!14718 Int) (cheight!7455 Int)) (Leaf!10645 (xs!10138 IArray!14493) (csize!14719 Int)) (Empty!7244) )
))
(declare-datatypes ((BalanceConc!14304 0))(
  ( (BalanceConc!14305 (c!312049 Conc!7244)) )
))
(declare-datatypes ((TokenValueInjection!7608 0))(
  ( (TokenValueInjection!7609 (toValue!5505 Int) (toChars!5364 Int)) )
))
(declare-datatypes ((Rule!7552 0))(
  ( (Rule!7553 (regex!3876 Regex!5301) (tag!4316 String!25178) (isSeparator!3876 Bool) (transformation!3876 TokenValueInjection!7608)) )
))
(declare-datatypes ((Token!7304 0))(
  ( (Token!7305 (value!122057 TokenValue!4012) (rule!6079 Rule!7552) (size!17022 Int) (originalCharacters!4683 List!21773)) )
))
(declare-datatypes ((List!21774 0))(
  ( (Nil!21692) (Cons!21692 (h!27093 Token!7304) (t!178567 List!21774)) )
))
(declare-fun tokens!598 () List!21774)

(get-info :version)

(assert (=> b!1917372 (= res!857106 ((_ is Cons!21692) tokens!598))))

(declare-fun b!1917373 () Bool)

(declare-fun res!857109 () Bool)

(assert (=> b!1917373 (=> (not res!857109) (not e!1225069))))

(declare-fun lambda!74827 () Int)

(declare-fun forall!4572 (List!21774 Int) Bool)

(assert (=> b!1917373 (= res!857109 (forall!4572 tokens!598 lambda!74827))))

(declare-fun b!1917374 () Bool)

(declare-fun res!857104 () Bool)

(assert (=> b!1917374 (=> (not res!857104) (not e!1225069))))

(declare-datatypes ((LexerInterface!3489 0))(
  ( (LexerInterfaceExt!3486 (__x!13523 Int)) (Lexer!3487) )
))
(declare-fun thiss!23328 () LexerInterface!3489)

(declare-datatypes ((List!21775 0))(
  ( (Nil!21693) (Cons!21693 (h!27094 Rule!7552) (t!178568 List!21775)) )
))
(declare-fun rules!3198 () List!21775)

(declare-fun rulesProduceEachTokenIndividuallyList!1220 (LexerInterface!3489 List!21775 List!21774) Bool)

(assert (=> b!1917374 (= res!857104 (rulesProduceEachTokenIndividuallyList!1220 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1225058 () Bool)

(assert (=> b!1917375 (= e!1225058 (and tp!547222 tp!547229))))

(declare-fun b!1917376 () Bool)

(declare-fun res!857096 () Bool)

(declare-fun e!1225059 () Bool)

(assert (=> b!1917376 (=> res!857096 e!1225059)))

(declare-fun rulesProduceIndividualToken!1661 (LexerInterface!3489 List!21775 Token!7304) Bool)

(assert (=> b!1917376 (= res!857096 (not (rulesProduceIndividualToken!1661 thiss!23328 rules!3198 (h!27093 tokens!598))))))

(declare-fun b!1917377 () Bool)

(declare-fun e!1225071 () Bool)

(assert (=> b!1917377 (= e!1225071 e!1225059)))

(declare-fun res!857103 () Bool)

(assert (=> b!1917377 (=> res!857103 e!1225059)))

(declare-fun lt!735077 () List!21773)

(declare-fun lt!735069 () List!21773)

(declare-fun lt!735067 () List!21773)

(assert (=> b!1917377 (= res!857103 (or (not (= lt!735077 lt!735067)) (not (= lt!735067 lt!735069)) (not (= lt!735077 lt!735069))))))

(declare-fun printList!1068 (LexerInterface!3489 List!21774) List!21773)

(assert (=> b!1917377 (= lt!735067 (printList!1068 thiss!23328 (Cons!21692 (h!27093 tokens!598) Nil!21692)))))

(declare-fun lt!735076 () BalanceConc!14304)

(declare-fun list!8808 (BalanceConc!14304) List!21773)

(assert (=> b!1917377 (= lt!735077 (list!8808 lt!735076))))

(declare-datatypes ((IArray!14495 0))(
  ( (IArray!14496 (innerList!7305 List!21774)) )
))
(declare-datatypes ((Conc!7245 0))(
  ( (Node!7245 (left!17317 Conc!7245) (right!17647 Conc!7245) (csize!14720 Int) (cheight!7456 Int)) (Leaf!10646 (xs!10139 IArray!14495) (csize!14721 Int)) (Empty!7245) )
))
(declare-datatypes ((BalanceConc!14306 0))(
  ( (BalanceConc!14307 (c!312050 Conc!7245)) )
))
(declare-fun lt!735070 () BalanceConc!14306)

(declare-fun printTailRec!1004 (LexerInterface!3489 BalanceConc!14306 Int BalanceConc!14304) BalanceConc!14304)

(assert (=> b!1917377 (= lt!735076 (printTailRec!1004 thiss!23328 lt!735070 0 (BalanceConc!14305 Empty!7244)))))

(declare-fun print!1497 (LexerInterface!3489 BalanceConc!14306) BalanceConc!14304)

(assert (=> b!1917377 (= lt!735076 (print!1497 thiss!23328 lt!735070))))

(declare-fun singletonSeq!1899 (Token!7304) BalanceConc!14306)

(assert (=> b!1917377 (= lt!735070 (singletonSeq!1899 (h!27093 tokens!598)))))

(declare-fun e!1225050 () Bool)

(declare-fun b!1917378 () Bool)

(declare-fun e!1225062 () Bool)

(declare-fun tp!547225 () Bool)

(declare-fun inv!28784 (Token!7304) Bool)

(assert (=> b!1917378 (= e!1225050 (and (inv!28784 (h!27093 tokens!598)) e!1225062 tp!547225))))

(declare-fun e!1225053 () Bool)

(assert (=> b!1917379 (= e!1225053 (and tp!547230 tp!547227))))

(declare-fun b!1917380 () Bool)

(declare-fun e!1225051 () Bool)

(declare-fun tp!547223 () Bool)

(declare-fun inv!28781 (String!25178) Bool)

(declare-fun inv!28785 (TokenValueInjection!7608) Bool)

(assert (=> b!1917380 (= e!1225051 (and tp!547223 (inv!28781 (tag!4316 (rule!6079 (h!27093 tokens!598)))) (inv!28785 (transformation!3876 (rule!6079 (h!27093 tokens!598)))) e!1225053))))

(declare-fun b!1917381 () Bool)

(declare-fun res!857107 () Bool)

(assert (=> b!1917381 (=> (not res!857107) (not e!1225069))))

(declare-fun separatorToken!354 () Token!7304)

(assert (=> b!1917381 (= res!857107 (isSeparator!3876 (rule!6079 separatorToken!354)))))

(declare-fun b!1917382 () Bool)

(declare-fun e!1225063 () Bool)

(declare-fun e!1225052 () Bool)

(assert (=> b!1917382 (= e!1225063 e!1225052)))

(declare-fun res!857108 () Bool)

(assert (=> b!1917382 (=> (not res!857108) (not e!1225052))))

(declare-fun lt!735061 () Rule!7552)

(declare-fun matchR!2587 (Regex!5301 List!21773) Bool)

(assert (=> b!1917382 (= res!857108 (matchR!2587 (regex!3876 lt!735061) lt!735069))))

(declare-datatypes ((Option!4457 0))(
  ( (None!4456) (Some!4456 (v!26529 Rule!7552)) )
))
(declare-fun lt!735065 () Option!4457)

(declare-fun get!6802 (Option!4457) Rule!7552)

(assert (=> b!1917382 (= lt!735061 (get!6802 lt!735065))))

(declare-fun b!1917383 () Bool)

(declare-fun e!1225070 () Bool)

(declare-fun lt!735062 () Rule!7552)

(assert (=> b!1917383 (= e!1225070 (= (rule!6079 separatorToken!354) lt!735062))))

(declare-fun b!1917384 () Bool)

(assert (=> b!1917384 (= e!1225052 (= (rule!6079 (h!27093 tokens!598)) lt!735061))))

(declare-fun e!1225060 () Bool)

(assert (=> b!1917385 (= e!1225060 (and tp!547224 tp!547226))))

(declare-fun b!1917386 () Bool)

(assert (=> b!1917386 (= e!1225069 (not e!1225071))))

(declare-fun res!857100 () Bool)

(assert (=> b!1917386 (=> res!857100 e!1225071)))

(declare-datatypes ((tuple2!20408 0))(
  ( (tuple2!20409 (_1!11673 Token!7304) (_2!11673 List!21773)) )
))
(declare-datatypes ((Option!4458 0))(
  ( (None!4457) (Some!4457 (v!26530 tuple2!20408)) )
))
(declare-fun lt!735063 () Option!4458)

(declare-fun lt!735066 () Bool)

(assert (=> b!1917386 (= res!857100 (or (and (not lt!735066) (= (_1!11673 (v!26530 lt!735063)) (h!27093 tokens!598))) (and (not lt!735066) (not (= (_1!11673 (v!26530 lt!735063)) (h!27093 tokens!598)))) (not ((_ is None!4457) lt!735063))))))

(assert (=> b!1917386 (= lt!735066 (not ((_ is Some!4457) lt!735063)))))

(declare-fun maxPrefix!1935 (LexerInterface!3489 List!21775 List!21773) Option!4458)

(declare-fun ++!5831 (List!21773 List!21773) List!21773)

(declare-fun printWithSeparatorTokenWhenNeededList!532 (LexerInterface!3489 List!21775 List!21774 Token!7304) List!21773)

(assert (=> b!1917386 (= lt!735063 (maxPrefix!1935 thiss!23328 rules!3198 (++!5831 lt!735069 (printWithSeparatorTokenWhenNeededList!532 thiss!23328 rules!3198 (t!178567 tokens!598) separatorToken!354))))))

(assert (=> b!1917386 e!1225063))

(declare-fun res!857101 () Bool)

(assert (=> b!1917386 (=> (not res!857101) (not e!1225063))))

(declare-fun isDefined!3755 (Option!4457) Bool)

(assert (=> b!1917386 (= res!857101 (isDefined!3755 lt!735065))))

(declare-fun getRuleFromTag!719 (LexerInterface!3489 List!21775 String!25178) Option!4457)

(assert (=> b!1917386 (= lt!735065 (getRuleFromTag!719 thiss!23328 rules!3198 (tag!4316 (rule!6079 (h!27093 tokens!598)))))))

(declare-datatypes ((Unit!36088 0))(
  ( (Unit!36089) )
))
(declare-fun lt!735068 () Unit!36088)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!719 (LexerInterface!3489 List!21775 List!21773 Token!7304) Unit!36088)

(assert (=> b!1917386 (= lt!735068 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!719 thiss!23328 rules!3198 lt!735069 (h!27093 tokens!598)))))

(declare-fun e!1225072 () Bool)

(assert (=> b!1917386 e!1225072))

(declare-fun res!857097 () Bool)

(assert (=> b!1917386 (=> (not res!857097) (not e!1225072))))

(declare-fun lt!735075 () Option!4458)

(declare-fun isDefined!3756 (Option!4458) Bool)

(assert (=> b!1917386 (= res!857097 (isDefined!3756 lt!735075))))

(assert (=> b!1917386 (= lt!735075 (maxPrefix!1935 thiss!23328 rules!3198 lt!735069))))

(declare-fun lt!735078 () BalanceConc!14304)

(assert (=> b!1917386 (= lt!735069 (list!8808 lt!735078))))

(declare-fun e!1225066 () Bool)

(assert (=> b!1917386 e!1225066))

(declare-fun res!857105 () Bool)

(assert (=> b!1917386 (=> (not res!857105) (not e!1225066))))

(declare-fun lt!735074 () Option!4457)

(assert (=> b!1917386 (= res!857105 (isDefined!3755 lt!735074))))

(assert (=> b!1917386 (= lt!735074 (getRuleFromTag!719 thiss!23328 rules!3198 (tag!4316 (rule!6079 separatorToken!354))))))

(declare-fun lt!735071 () Unit!36088)

(declare-fun lt!735073 () List!21773)

(assert (=> b!1917386 (= lt!735071 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!719 thiss!23328 rules!3198 lt!735073 separatorToken!354))))

(declare-fun charsOf!2432 (Token!7304) BalanceConc!14304)

(assert (=> b!1917386 (= lt!735073 (list!8808 (charsOf!2432 separatorToken!354)))))

(declare-fun lt!735072 () Unit!36088)

(declare-fun lemmaEqSameImage!584 (TokenValueInjection!7608 BalanceConc!14304 BalanceConc!14304) Unit!36088)

(declare-fun seqFromList!2748 (List!21773) BalanceConc!14304)

(assert (=> b!1917386 (= lt!735072 (lemmaEqSameImage!584 (transformation!3876 (rule!6079 (h!27093 tokens!598))) lt!735078 (seqFromList!2748 (originalCharacters!4683 (h!27093 tokens!598)))))))

(declare-fun lt!735060 () Unit!36088)

(declare-fun lemmaSemiInverse!855 (TokenValueInjection!7608 BalanceConc!14304) Unit!36088)

(assert (=> b!1917386 (= lt!735060 (lemmaSemiInverse!855 (transformation!3876 (rule!6079 (h!27093 tokens!598))) lt!735078))))

(assert (=> b!1917386 (= lt!735078 (charsOf!2432 (h!27093 tokens!598)))))

(declare-fun b!1917387 () Bool)

(declare-fun res!857098 () Bool)

(assert (=> b!1917387 (=> (not res!857098) (not e!1225069))))

(declare-fun isEmpty!13360 (List!21775) Bool)

(assert (=> b!1917387 (= res!857098 (not (isEmpty!13360 rules!3198)))))

(declare-fun b!1917388 () Bool)

(assert (=> b!1917388 (= e!1225059 true)))

(declare-fun lt!735064 () BalanceConc!14304)

(assert (=> b!1917388 (= lt!735064 (seqFromList!2748 lt!735069))))

(declare-fun b!1917389 () Bool)

(declare-fun get!6803 (Option!4458) tuple2!20408)

(assert (=> b!1917389 (= e!1225072 (= (_1!11673 (get!6803 lt!735075)) (h!27093 tokens!598)))))

(declare-fun b!1917390 () Bool)

(declare-fun res!857111 () Bool)

(assert (=> b!1917390 (=> (not res!857111) (not e!1225069))))

(declare-fun rulesInvariant!3096 (LexerInterface!3489 List!21775) Bool)

(assert (=> b!1917390 (= res!857111 (rulesInvariant!3096 thiss!23328 rules!3198))))

(declare-fun b!1917391 () Bool)

(declare-fun res!857102 () Bool)

(assert (=> b!1917391 (=> (not res!857102) (not e!1225069))))

(assert (=> b!1917391 (= res!857102 (rulesProduceIndividualToken!1661 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1917392 () Bool)

(assert (=> b!1917392 (= e!1225066 e!1225070)))

(declare-fun res!857110 () Bool)

(assert (=> b!1917392 (=> (not res!857110) (not e!1225070))))

(assert (=> b!1917392 (= res!857110 (matchR!2587 (regex!3876 lt!735062) lt!735073))))

(assert (=> b!1917392 (= lt!735062 (get!6802 lt!735074))))

(declare-fun tp!547219 () Bool)

(declare-fun e!1225057 () Bool)

(declare-fun b!1917393 () Bool)

(assert (=> b!1917393 (= e!1225057 (and tp!547219 (inv!28781 (tag!4316 (h!27094 rules!3198))) (inv!28785 (transformation!3876 (h!27094 rules!3198))) e!1225060))))

(declare-fun tp!547221 () Bool)

(declare-fun e!1225061 () Bool)

(declare-fun b!1917394 () Bool)

(declare-fun e!1225065 () Bool)

(declare-fun inv!21 (TokenValue!4012) Bool)

(assert (=> b!1917394 (= e!1225065 (and (inv!21 (value!122057 separatorToken!354)) e!1225061 tp!547221))))

(declare-fun b!1917395 () Bool)

(declare-fun tp!547220 () Bool)

(assert (=> b!1917395 (= e!1225061 (and tp!547220 (inv!28781 (tag!4316 (rule!6079 separatorToken!354))) (inv!28785 (transformation!3876 (rule!6079 separatorToken!354))) e!1225058))))

(declare-fun tp!547228 () Bool)

(declare-fun b!1917396 () Bool)

(assert (=> b!1917396 (= e!1225062 (and (inv!21 (value!122057 (h!27093 tokens!598))) e!1225051 tp!547228))))

(declare-fun b!1917397 () Bool)

(declare-fun e!1225054 () Bool)

(declare-fun tp!547218 () Bool)

(assert (=> b!1917397 (= e!1225054 (and e!1225057 tp!547218))))

(declare-fun res!857099 () Bool)

(assert (=> start!192228 (=> (not res!857099) (not e!1225069))))

(assert (=> start!192228 (= res!857099 ((_ is Lexer!3487) thiss!23328))))

(assert (=> start!192228 e!1225069))

(assert (=> start!192228 true))

(assert (=> start!192228 e!1225054))

(assert (=> start!192228 e!1225050))

(assert (=> start!192228 (and (inv!28784 separatorToken!354) e!1225065)))

(declare-fun b!1917398 () Bool)

(declare-fun res!857112 () Bool)

(assert (=> b!1917398 (=> (not res!857112) (not e!1225069))))

(declare-fun sepAndNonSepRulesDisjointChars!974 (List!21775 List!21775) Bool)

(assert (=> b!1917398 (= res!857112 (sepAndNonSepRulesDisjointChars!974 rules!3198 rules!3198))))

(assert (= (and start!192228 res!857099) b!1917387))

(assert (= (and b!1917387 res!857098) b!1917390))

(assert (= (and b!1917390 res!857111) b!1917374))

(assert (= (and b!1917374 res!857104) b!1917391))

(assert (= (and b!1917391 res!857102) b!1917381))

(assert (= (and b!1917381 res!857107) b!1917373))

(assert (= (and b!1917373 res!857109) b!1917398))

(assert (= (and b!1917398 res!857112) b!1917372))

(assert (= (and b!1917372 res!857106) b!1917386))

(assert (= (and b!1917386 res!857105) b!1917392))

(assert (= (and b!1917392 res!857110) b!1917383))

(assert (= (and b!1917386 res!857097) b!1917389))

(assert (= (and b!1917386 res!857101) b!1917382))

(assert (= (and b!1917382 res!857108) b!1917384))

(assert (= (and b!1917386 (not res!857100)) b!1917377))

(assert (= (and b!1917377 (not res!857103)) b!1917376))

(assert (= (and b!1917376 (not res!857096)) b!1917388))

(assert (= b!1917393 b!1917385))

(assert (= b!1917397 b!1917393))

(assert (= (and start!192228 ((_ is Cons!21693) rules!3198)) b!1917397))

(assert (= b!1917380 b!1917379))

(assert (= b!1917396 b!1917380))

(assert (= b!1917378 b!1917396))

(assert (= (and start!192228 ((_ is Cons!21692) tokens!598)) b!1917378))

(assert (= b!1917395 b!1917375))

(assert (= b!1917394 b!1917395))

(assert (= start!192228 b!1917394))

(declare-fun m!2352659 () Bool)

(assert (=> b!1917391 m!2352659))

(declare-fun m!2352661 () Bool)

(assert (=> b!1917386 m!2352661))

(declare-fun m!2352663 () Bool)

(assert (=> b!1917386 m!2352663))

(declare-fun m!2352665 () Bool)

(assert (=> b!1917386 m!2352665))

(declare-fun m!2352667 () Bool)

(assert (=> b!1917386 m!2352667))

(declare-fun m!2352669 () Bool)

(assert (=> b!1917386 m!2352669))

(declare-fun m!2352671 () Bool)

(assert (=> b!1917386 m!2352671))

(declare-fun m!2352673 () Bool)

(assert (=> b!1917386 m!2352673))

(declare-fun m!2352675 () Bool)

(assert (=> b!1917386 m!2352675))

(declare-fun m!2352677 () Bool)

(assert (=> b!1917386 m!2352677))

(declare-fun m!2352679 () Bool)

(assert (=> b!1917386 m!2352679))

(declare-fun m!2352681 () Bool)

(assert (=> b!1917386 m!2352681))

(assert (=> b!1917386 m!2352661))

(declare-fun m!2352683 () Bool)

(assert (=> b!1917386 m!2352683))

(declare-fun m!2352685 () Bool)

(assert (=> b!1917386 m!2352685))

(assert (=> b!1917386 m!2352677))

(assert (=> b!1917386 m!2352665))

(declare-fun m!2352687 () Bool)

(assert (=> b!1917386 m!2352687))

(assert (=> b!1917386 m!2352679))

(declare-fun m!2352689 () Bool)

(assert (=> b!1917386 m!2352689))

(declare-fun m!2352691 () Bool)

(assert (=> b!1917386 m!2352691))

(declare-fun m!2352693 () Bool)

(assert (=> b!1917386 m!2352693))

(declare-fun m!2352695 () Bool)

(assert (=> b!1917386 m!2352695))

(declare-fun m!2352697 () Bool)

(assert (=> b!1917380 m!2352697))

(declare-fun m!2352699 () Bool)

(assert (=> b!1917380 m!2352699))

(declare-fun m!2352701 () Bool)

(assert (=> b!1917398 m!2352701))

(declare-fun m!2352703 () Bool)

(assert (=> b!1917392 m!2352703))

(declare-fun m!2352705 () Bool)

(assert (=> b!1917392 m!2352705))

(declare-fun m!2352707 () Bool)

(assert (=> b!1917396 m!2352707))

(declare-fun m!2352709 () Bool)

(assert (=> b!1917389 m!2352709))

(declare-fun m!2352711 () Bool)

(assert (=> b!1917393 m!2352711))

(declare-fun m!2352713 () Bool)

(assert (=> b!1917393 m!2352713))

(declare-fun m!2352715 () Bool)

(assert (=> b!1917394 m!2352715))

(declare-fun m!2352717 () Bool)

(assert (=> b!1917377 m!2352717))

(declare-fun m!2352719 () Bool)

(assert (=> b!1917377 m!2352719))

(declare-fun m!2352721 () Bool)

(assert (=> b!1917377 m!2352721))

(declare-fun m!2352723 () Bool)

(assert (=> b!1917377 m!2352723))

(declare-fun m!2352725 () Bool)

(assert (=> b!1917377 m!2352725))

(declare-fun m!2352727 () Bool)

(assert (=> b!1917373 m!2352727))

(declare-fun m!2352729 () Bool)

(assert (=> b!1917388 m!2352729))

(declare-fun m!2352731 () Bool)

(assert (=> b!1917378 m!2352731))

(declare-fun m!2352733 () Bool)

(assert (=> b!1917395 m!2352733))

(declare-fun m!2352735 () Bool)

(assert (=> b!1917395 m!2352735))

(declare-fun m!2352737 () Bool)

(assert (=> b!1917390 m!2352737))

(declare-fun m!2352739 () Bool)

(assert (=> b!1917374 m!2352739))

(declare-fun m!2352741 () Bool)

(assert (=> b!1917387 m!2352741))

(declare-fun m!2352743 () Bool)

(assert (=> start!192228 m!2352743))

(declare-fun m!2352745 () Bool)

(assert (=> b!1917382 m!2352745))

(declare-fun m!2352747 () Bool)

(assert (=> b!1917382 m!2352747))

(declare-fun m!2352749 () Bool)

(assert (=> b!1917376 m!2352749))

(check-sat (not b!1917392) b_and!149623 (not b_next!55117) (not b!1917397) (not b!1917389) (not b!1917395) (not b!1917391) b_and!149615 (not b_next!55119) (not b!1917396) b_and!149625 (not b!1917377) (not b!1917388) b_and!149617 (not b!1917382) (not b!1917386) b_and!149621 (not start!192228) (not b_next!55123) (not b!1917373) (not b!1917376) (not b!1917390) (not b!1917398) (not b!1917394) (not b!1917393) (not b!1917378) (not b_next!55121) (not b!1917374) (not b!1917380) (not b!1917387) b_and!149619 (not b_next!55113) (not b_next!55115))
(check-sat b_and!149625 b_and!149617 b_and!149623 (not b_next!55117) b_and!149621 (not b_next!55123) b_and!149615 (not b_next!55119) (not b_next!55121) b_and!149619 (not b_next!55113) (not b_next!55115))
