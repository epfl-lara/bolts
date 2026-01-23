; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192266 () Bool)

(assert start!192266)

(declare-fun b!1918886 () Bool)

(declare-fun b_free!54637 () Bool)

(declare-fun b_next!55341 () Bool)

(assert (=> b!1918886 (= b_free!54637 (not b_next!55341))))

(declare-fun tp!547965 () Bool)

(declare-fun b_and!149843 () Bool)

(assert (=> b!1918886 (= tp!547965 b_and!149843)))

(declare-fun b_free!54639 () Bool)

(declare-fun b_next!55343 () Bool)

(assert (=> b!1918886 (= b_free!54639 (not b_next!55343))))

(declare-fun tp!547960 () Bool)

(declare-fun b_and!149845 () Bool)

(assert (=> b!1918886 (= tp!547960 b_and!149845)))

(declare-fun b!1918871 () Bool)

(declare-fun b_free!54641 () Bool)

(declare-fun b_next!55345 () Bool)

(assert (=> b!1918871 (= b_free!54641 (not b_next!55345))))

(declare-fun tp!547959 () Bool)

(declare-fun b_and!149847 () Bool)

(assert (=> b!1918871 (= tp!547959 b_and!149847)))

(declare-fun b_free!54643 () Bool)

(declare-fun b_next!55347 () Bool)

(assert (=> b!1918871 (= b_free!54643 (not b_next!55347))))

(declare-fun tp!547961 () Bool)

(declare-fun b_and!149849 () Bool)

(assert (=> b!1918871 (= tp!547961 b_and!149849)))

(declare-fun b!1918869 () Bool)

(declare-fun b_free!54645 () Bool)

(declare-fun b_next!55349 () Bool)

(assert (=> b!1918869 (= b_free!54645 (not b_next!55349))))

(declare-fun tp!547967 () Bool)

(declare-fun b_and!149851 () Bool)

(assert (=> b!1918869 (= tp!547967 b_and!149851)))

(declare-fun b_free!54647 () Bool)

(declare-fun b_next!55351 () Bool)

(assert (=> b!1918869 (= b_free!54647 (not b_next!55351))))

(declare-fun tp!547968 () Bool)

(declare-fun b_and!149853 () Bool)

(assert (=> b!1918869 (= tp!547968 b_and!149853)))

(declare-fun e!1226323 () Bool)

(assert (=> b!1918869 (= e!1226323 (and tp!547967 tp!547968))))

(declare-fun tp!547962 () Bool)

(declare-fun e!1226312 () Bool)

(declare-fun b!1918870 () Bool)

(declare-fun e!1226317 () Bool)

(declare-datatypes ((List!21848 0))(
  ( (Nil!21766) (Cons!21766 (h!27167 (_ BitVec 16)) (t!178641 List!21848)) )
))
(declare-datatypes ((TokenValue!4031 0))(
  ( (FloatLiteralValue!8062 (text!28662 List!21848)) (TokenValueExt!4030 (__x!13560 Int)) (Broken!20155 (value!122574 List!21848)) (Object!4112) (End!4031) (Def!4031) (Underscore!4031) (Match!4031) (Else!4031) (Error!4031) (Case!4031) (If!4031) (Extends!4031) (Abstract!4031) (Class!4031) (Val!4031) (DelimiterValue!8062 (del!4091 List!21848)) (KeywordValue!4037 (value!122575 List!21848)) (CommentValue!8062 (value!122576 List!21848)) (WhitespaceValue!8062 (value!122577 List!21848)) (IndentationValue!4031 (value!122578 List!21848)) (String!25274) (Int32!4031) (Broken!20156 (value!122579 List!21848)) (Boolean!4032) (Unit!36144) (OperatorValue!4034 (op!4091 List!21848)) (IdentifierValue!8062 (value!122580 List!21848)) (IdentifierValue!8063 (value!122581 List!21848)) (WhitespaceValue!8063 (value!122582 List!21848)) (True!8062) (False!8062) (Broken!20157 (value!122583 List!21848)) (Broken!20158 (value!122584 List!21848)) (True!8063) (RightBrace!4031) (RightBracket!4031) (Colon!4031) (Null!4031) (Comma!4031) (LeftBracket!4031) (False!8063) (LeftBrace!4031) (ImaginaryLiteralValue!4031 (text!28663 List!21848)) (StringLiteralValue!12093 (value!122585 List!21848)) (EOFValue!4031 (value!122586 List!21848)) (IdentValue!4031 (value!122587 List!21848)) (DelimiterValue!8063 (value!122588 List!21848)) (DedentValue!4031 (value!122589 List!21848)) (NewLineValue!4031 (value!122590 List!21848)) (IntegerValue!12093 (value!122591 (_ BitVec 32)) (text!28664 List!21848)) (IntegerValue!12094 (value!122592 Int) (text!28665 List!21848)) (Times!4031) (Or!4031) (Equal!4031) (Minus!4031) (Broken!20159 (value!122593 List!21848)) (And!4031) (Div!4031) (LessEqual!4031) (Mod!4031) (Concat!9351) (Not!4031) (Plus!4031) (SpaceValue!4031 (value!122594 List!21848)) (IntegerValue!12095 (value!122595 Int) (text!28666 List!21848)) (StringLiteralValue!12094 (text!28667 List!21848)) (FloatLiteralValue!8063 (text!28668 List!21848)) (BytesLiteralValue!4031 (value!122596 List!21848)) (CommentValue!8063 (value!122597 List!21848)) (StringLiteralValue!12095 (value!122598 List!21848)) (ErrorTokenValue!4031 (msg!4092 List!21848)) )
))
(declare-datatypes ((C!10786 0))(
  ( (C!10787 (val!6345 Int)) )
))
(declare-datatypes ((List!21849 0))(
  ( (Nil!21767) (Cons!21767 (h!27168 C!10786) (t!178642 List!21849)) )
))
(declare-datatypes ((Regex!5320 0))(
  ( (ElementMatch!5320 (c!312110 C!10786)) (Concat!9352 (regOne!11152 Regex!5320) (regTwo!11152 Regex!5320)) (EmptyExpr!5320) (Star!5320 (reg!5649 Regex!5320)) (EmptyLang!5320) (Union!5320 (regOne!11153 Regex!5320) (regTwo!11153 Regex!5320)) )
))
(declare-datatypes ((String!25275 0))(
  ( (String!25276 (value!122599 String)) )
))
(declare-datatypes ((IArray!14541 0))(
  ( (IArray!14542 (innerList!7328 List!21849)) )
))
(declare-datatypes ((Conc!7268 0))(
  ( (Node!7268 (left!17350 Conc!7268) (right!17680 Conc!7268) (csize!14766 Int) (cheight!7479 Int)) (Leaf!10679 (xs!10162 IArray!14541) (csize!14767 Int)) (Empty!7268) )
))
(declare-datatypes ((BalanceConc!14352 0))(
  ( (BalanceConc!14353 (c!312111 Conc!7268)) )
))
(declare-datatypes ((TokenValueInjection!7646 0))(
  ( (TokenValueInjection!7647 (toValue!5524 Int) (toChars!5383 Int)) )
))
(declare-datatypes ((Rule!7590 0))(
  ( (Rule!7591 (regex!3895 Regex!5320) (tag!4335 String!25275) (isSeparator!3895 Bool) (transformation!3895 TokenValueInjection!7646)) )
))
(declare-datatypes ((Token!7342 0))(
  ( (Token!7343 (value!122600 TokenValue!4031) (rule!6098 Rule!7590) (size!17041 Int) (originalCharacters!4702 List!21849)) )
))
(declare-datatypes ((List!21850 0))(
  ( (Nil!21768) (Cons!21768 (h!27169 Token!7342) (t!178643 List!21850)) )
))
(declare-fun tokens!598 () List!21850)

(declare-fun inv!21 (TokenValue!4031) Bool)

(assert (=> b!1918870 (= e!1226312 (and (inv!21 (value!122600 (h!27169 tokens!598))) e!1226317 tp!547962))))

(declare-fun e!1226318 () Bool)

(assert (=> b!1918871 (= e!1226318 (and tp!547959 tp!547961))))

(declare-fun b!1918872 () Bool)

(declare-fun e!1226327 () Bool)

(declare-fun e!1226320 () Bool)

(assert (=> b!1918872 (= e!1226327 e!1226320)))

(declare-fun res!858035 () Bool)

(assert (=> b!1918872 (=> (not res!858035) (not e!1226320))))

(declare-fun lt!735958 () Rule!7590)

(declare-fun lt!735960 () List!21849)

(declare-fun matchR!2606 (Regex!5320 List!21849) Bool)

(assert (=> b!1918872 (= res!858035 (matchR!2606 (regex!3895 lt!735958) lt!735960))))

(declare-datatypes ((Option!4495 0))(
  ( (None!4494) (Some!4494 (v!26567 Rule!7590)) )
))
(declare-fun lt!735965 () Option!4495)

(declare-fun get!6850 (Option!4495) Rule!7590)

(assert (=> b!1918872 (= lt!735958 (get!6850 lt!735965))))

(declare-fun b!1918873 () Bool)

(declare-fun res!858030 () Bool)

(declare-fun e!1226332 () Bool)

(assert (=> b!1918873 (=> res!858030 e!1226332)))

(declare-fun separatorToken!354 () Token!7342)

(declare-datatypes ((LexerInterface!3508 0))(
  ( (LexerInterfaceExt!3505 (__x!13561 Int)) (Lexer!3506) )
))
(declare-fun thiss!23328 () LexerInterface!3508)

(declare-datatypes ((List!21851 0))(
  ( (Nil!21769) (Cons!21769 (h!27170 Rule!7590) (t!178644 List!21851)) )
))
(declare-fun rules!3198 () List!21851)

(declare-datatypes ((tuple2!20454 0))(
  ( (tuple2!20455 (_1!11696 Token!7342) (_2!11696 List!21849)) )
))
(declare-datatypes ((Option!4496 0))(
  ( (None!4495) (Some!4495 (v!26568 tuple2!20454)) )
))
(declare-fun isDefined!3793 (Option!4496) Bool)

(declare-fun maxPrefix!1954 (LexerInterface!3508 List!21851 List!21849) Option!4496)

(declare-fun printWithSeparatorTokenWhenNeededList!551 (LexerInterface!3508 List!21851 List!21850 Token!7342) List!21849)

(assert (=> b!1918873 (= res!858030 (not (isDefined!3793 (maxPrefix!1954 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!551 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1918874 () Bool)

(declare-fun res!858033 () Bool)

(declare-fun e!1226313 () Bool)

(assert (=> b!1918874 (=> (not res!858033) (not e!1226313))))

(assert (=> b!1918874 (= res!858033 (is-Cons!21768 tokens!598))))

(declare-fun b!1918875 () Bool)

(declare-fun e!1226322 () Bool)

(declare-fun e!1226314 () Bool)

(declare-fun tp!547971 () Bool)

(assert (=> b!1918875 (= e!1226322 (and e!1226314 tp!547971))))

(declare-fun b!1918876 () Bool)

(declare-fun res!858036 () Bool)

(assert (=> b!1918876 (=> (not res!858036) (not e!1226313))))

(declare-fun rulesInvariant!3115 (LexerInterface!3508 List!21851) Bool)

(assert (=> b!1918876 (= res!858036 (rulesInvariant!3115 thiss!23328 rules!3198))))

(declare-fun b!1918877 () Bool)

(declare-fun res!858029 () Bool)

(assert (=> b!1918877 (=> (not res!858029) (not e!1226313))))

(declare-fun isEmpty!13395 (List!21851) Bool)

(assert (=> b!1918877 (= res!858029 (not (isEmpty!13395 rules!3198)))))

(declare-fun b!1918878 () Bool)

(assert (=> b!1918878 (= e!1226320 (= (rule!6098 separatorToken!354) lt!735958))))

(declare-fun b!1918879 () Bool)

(declare-fun e!1226316 () Bool)

(declare-fun lt!735959 () Option!4496)

(declare-fun get!6851 (Option!4496) tuple2!20454)

(assert (=> b!1918879 (= e!1226316 (= (_1!11696 (get!6851 lt!735959)) (h!27169 tokens!598)))))

(declare-fun res!858027 () Bool)

(assert (=> start!192266 (=> (not res!858027) (not e!1226313))))

(assert (=> start!192266 (= res!858027 (is-Lexer!3506 thiss!23328))))

(assert (=> start!192266 e!1226313))

(assert (=> start!192266 true))

(assert (=> start!192266 e!1226322))

(declare-fun e!1226311 () Bool)

(assert (=> start!192266 e!1226311))

(declare-fun e!1226326 () Bool)

(declare-fun inv!28852 (Token!7342) Bool)

(assert (=> start!192266 (and (inv!28852 separatorToken!354) e!1226326)))

(declare-fun b!1918880 () Bool)

(assert (=> b!1918880 (= e!1226332 true)))

(declare-fun b!1918881 () Bool)

(declare-fun e!1226321 () Bool)

(declare-fun tp!547963 () Bool)

(assert (=> b!1918881 (= e!1226326 (and (inv!21 (value!122600 separatorToken!354)) e!1226321 tp!547963))))

(declare-fun tp!547970 () Bool)

(declare-fun b!1918882 () Bool)

(declare-fun inv!28849 (String!25275) Bool)

(declare-fun inv!28853 (TokenValueInjection!7646) Bool)

(assert (=> b!1918882 (= e!1226321 (and tp!547970 (inv!28849 (tag!4335 (rule!6098 separatorToken!354))) (inv!28853 (transformation!3895 (rule!6098 separatorToken!354))) e!1226323))))

(declare-fun b!1918883 () Bool)

(assert (=> b!1918883 (= e!1226313 (not e!1226332))))

(declare-fun res!858031 () Bool)

(assert (=> b!1918883 (=> res!858031 e!1226332)))

(declare-fun lt!735962 () Bool)

(declare-fun lt!735961 () Option!4496)

(assert (=> b!1918883 (= res!858031 (or (and (not lt!735962) (= (_1!11696 (v!26568 lt!735961)) (h!27169 tokens!598))) (and (not lt!735962) (not (= (_1!11696 (v!26568 lt!735961)) (h!27169 tokens!598)))) (is-None!4495 lt!735961)))))

(assert (=> b!1918883 (= lt!735962 (not (is-Some!4495 lt!735961)))))

(declare-fun lt!735953 () List!21849)

(declare-fun ++!5850 (List!21849 List!21849) List!21849)

(assert (=> b!1918883 (= lt!735961 (maxPrefix!1954 thiss!23328 rules!3198 (++!5850 lt!735953 (printWithSeparatorTokenWhenNeededList!551 thiss!23328 rules!3198 (t!178643 tokens!598) separatorToken!354))))))

(declare-fun e!1226319 () Bool)

(assert (=> b!1918883 e!1226319))

(declare-fun res!858032 () Bool)

(assert (=> b!1918883 (=> (not res!858032) (not e!1226319))))

(declare-fun lt!735964 () Option!4495)

(declare-fun isDefined!3794 (Option!4495) Bool)

(assert (=> b!1918883 (= res!858032 (isDefined!3794 lt!735964))))

(declare-fun getRuleFromTag!738 (LexerInterface!3508 List!21851 String!25275) Option!4495)

(assert (=> b!1918883 (= lt!735964 (getRuleFromTag!738 thiss!23328 rules!3198 (tag!4335 (rule!6098 (h!27169 tokens!598)))))))

(declare-datatypes ((Unit!36145 0))(
  ( (Unit!36146) )
))
(declare-fun lt!735963 () Unit!36145)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!738 (LexerInterface!3508 List!21851 List!21849 Token!7342) Unit!36145)

(assert (=> b!1918883 (= lt!735963 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!738 thiss!23328 rules!3198 lt!735953 (h!27169 tokens!598)))))

(assert (=> b!1918883 e!1226316))

(declare-fun res!858034 () Bool)

(assert (=> b!1918883 (=> (not res!858034) (not e!1226316))))

(assert (=> b!1918883 (= res!858034 (isDefined!3793 lt!735959))))

(assert (=> b!1918883 (= lt!735959 (maxPrefix!1954 thiss!23328 rules!3198 lt!735953))))

(declare-fun lt!735955 () BalanceConc!14352)

(declare-fun list!8827 (BalanceConc!14352) List!21849)

(assert (=> b!1918883 (= lt!735953 (list!8827 lt!735955))))

(assert (=> b!1918883 e!1226327))

(declare-fun res!858028 () Bool)

(assert (=> b!1918883 (=> (not res!858028) (not e!1226327))))

(assert (=> b!1918883 (= res!858028 (isDefined!3794 lt!735965))))

(assert (=> b!1918883 (= lt!735965 (getRuleFromTag!738 thiss!23328 rules!3198 (tag!4335 (rule!6098 separatorToken!354))))))

(declare-fun lt!735957 () Unit!36145)

(assert (=> b!1918883 (= lt!735957 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!738 thiss!23328 rules!3198 lt!735960 separatorToken!354))))

(declare-fun charsOf!2451 (Token!7342) BalanceConc!14352)

(assert (=> b!1918883 (= lt!735960 (list!8827 (charsOf!2451 separatorToken!354)))))

(declare-fun lt!735956 () Unit!36145)

(declare-fun lemmaEqSameImage!603 (TokenValueInjection!7646 BalanceConc!14352 BalanceConc!14352) Unit!36145)

(declare-fun seqFromList!2767 (List!21849) BalanceConc!14352)

(assert (=> b!1918883 (= lt!735956 (lemmaEqSameImage!603 (transformation!3895 (rule!6098 (h!27169 tokens!598))) lt!735955 (seqFromList!2767 (originalCharacters!4702 (h!27169 tokens!598)))))))

(declare-fun lt!735966 () Unit!36145)

(declare-fun lemmaSemiInverse!874 (TokenValueInjection!7646 BalanceConc!14352) Unit!36145)

(assert (=> b!1918883 (= lt!735966 (lemmaSemiInverse!874 (transformation!3895 (rule!6098 (h!27169 tokens!598))) lt!735955))))

(assert (=> b!1918883 (= lt!735955 (charsOf!2451 (h!27169 tokens!598)))))

(declare-fun b!1918884 () Bool)

(declare-fun res!858024 () Bool)

(assert (=> b!1918884 (=> (not res!858024) (not e!1226313))))

(declare-fun rulesProduceIndividualToken!1680 (LexerInterface!3508 List!21851 Token!7342) Bool)

(assert (=> b!1918884 (= res!858024 (rulesProduceIndividualToken!1680 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1918885 () Bool)

(declare-fun res!858038 () Bool)

(assert (=> b!1918885 (=> (not res!858038) (not e!1226313))))

(declare-fun lambda!74892 () Int)

(declare-fun forall!4591 (List!21850 Int) Bool)

(assert (=> b!1918885 (= res!858038 (forall!4591 tokens!598 lambda!74892))))

(declare-fun e!1226324 () Bool)

(assert (=> b!1918886 (= e!1226324 (and tp!547965 tp!547960))))

(declare-fun b!1918887 () Bool)

(declare-fun e!1226325 () Bool)

(assert (=> b!1918887 (= e!1226319 e!1226325)))

(declare-fun res!858026 () Bool)

(assert (=> b!1918887 (=> (not res!858026) (not e!1226325))))

(declare-fun lt!735954 () Rule!7590)

(assert (=> b!1918887 (= res!858026 (matchR!2606 (regex!3895 lt!735954) lt!735953))))

(assert (=> b!1918887 (= lt!735954 (get!6850 lt!735964))))

(declare-fun b!1918888 () Bool)

(assert (=> b!1918888 (= e!1226325 (= (rule!6098 (h!27169 tokens!598)) lt!735954))))

(declare-fun b!1918889 () Bool)

(declare-fun res!858039 () Bool)

(assert (=> b!1918889 (=> (not res!858039) (not e!1226313))))

(declare-fun rulesProduceEachTokenIndividuallyList!1239 (LexerInterface!3508 List!21851 List!21850) Bool)

(assert (=> b!1918889 (= res!858039 (rulesProduceEachTokenIndividuallyList!1239 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1918890 () Bool)

(declare-fun res!858023 () Bool)

(assert (=> b!1918890 (=> (not res!858023) (not e!1226313))))

(assert (=> b!1918890 (= res!858023 (isSeparator!3895 (rule!6098 separatorToken!354)))))

(declare-fun tp!547964 () Bool)

(declare-fun b!1918891 () Bool)

(assert (=> b!1918891 (= e!1226317 (and tp!547964 (inv!28849 (tag!4335 (rule!6098 (h!27169 tokens!598)))) (inv!28853 (transformation!3895 (rule!6098 (h!27169 tokens!598)))) e!1226324))))

(declare-fun b!1918892 () Bool)

(declare-fun tp!547969 () Bool)

(assert (=> b!1918892 (= e!1226314 (and tp!547969 (inv!28849 (tag!4335 (h!27170 rules!3198))) (inv!28853 (transformation!3895 (h!27170 rules!3198))) e!1226318))))

(declare-fun b!1918893 () Bool)

(declare-fun res!858025 () Bool)

(assert (=> b!1918893 (=> (not res!858025) (not e!1226313))))

(declare-fun sepAndNonSepRulesDisjointChars!993 (List!21851 List!21851) Bool)

(assert (=> b!1918893 (= res!858025 (sepAndNonSepRulesDisjointChars!993 rules!3198 rules!3198))))

(declare-fun b!1918894 () Bool)

(declare-fun res!858037 () Bool)

(assert (=> b!1918894 (=> res!858037 e!1226332)))

(declare-fun isEmpty!13396 (List!21850) Bool)

(assert (=> b!1918894 (= res!858037 (isEmpty!13396 tokens!598))))

(declare-fun b!1918895 () Bool)

(declare-fun tp!547966 () Bool)

(assert (=> b!1918895 (= e!1226311 (and (inv!28852 (h!27169 tokens!598)) e!1226312 tp!547966))))

(assert (= (and start!192266 res!858027) b!1918877))

(assert (= (and b!1918877 res!858029) b!1918876))

(assert (= (and b!1918876 res!858036) b!1918889))

(assert (= (and b!1918889 res!858039) b!1918884))

(assert (= (and b!1918884 res!858024) b!1918890))

(assert (= (and b!1918890 res!858023) b!1918885))

(assert (= (and b!1918885 res!858038) b!1918893))

(assert (= (and b!1918893 res!858025) b!1918874))

(assert (= (and b!1918874 res!858033) b!1918883))

(assert (= (and b!1918883 res!858028) b!1918872))

(assert (= (and b!1918872 res!858035) b!1918878))

(assert (= (and b!1918883 res!858034) b!1918879))

(assert (= (and b!1918883 res!858032) b!1918887))

(assert (= (and b!1918887 res!858026) b!1918888))

(assert (= (and b!1918883 (not res!858031)) b!1918894))

(assert (= (and b!1918894 (not res!858037)) b!1918873))

(assert (= (and b!1918873 (not res!858030)) b!1918880))

(assert (= b!1918892 b!1918871))

(assert (= b!1918875 b!1918892))

(assert (= (and start!192266 (is-Cons!21769 rules!3198)) b!1918875))

(assert (= b!1918891 b!1918886))

(assert (= b!1918870 b!1918891))

(assert (= b!1918895 b!1918870))

(assert (= (and start!192266 (is-Cons!21768 tokens!598)) b!1918895))

(assert (= b!1918882 b!1918869))

(assert (= b!1918881 b!1918882))

(assert (= start!192266 b!1918881))

(declare-fun m!2354295 () Bool)

(assert (=> b!1918893 m!2354295))

(declare-fun m!2354297 () Bool)

(assert (=> b!1918877 m!2354297))

(declare-fun m!2354299 () Bool)

(assert (=> b!1918894 m!2354299))

(declare-fun m!2354301 () Bool)

(assert (=> b!1918870 m!2354301))

(declare-fun m!2354303 () Bool)

(assert (=> b!1918892 m!2354303))

(declare-fun m!2354305 () Bool)

(assert (=> b!1918892 m!2354305))

(declare-fun m!2354307 () Bool)

(assert (=> b!1918887 m!2354307))

(declare-fun m!2354309 () Bool)

(assert (=> b!1918887 m!2354309))

(declare-fun m!2354311 () Bool)

(assert (=> start!192266 m!2354311))

(declare-fun m!2354313 () Bool)

(assert (=> b!1918889 m!2354313))

(declare-fun m!2354315 () Bool)

(assert (=> b!1918879 m!2354315))

(declare-fun m!2354317 () Bool)

(assert (=> b!1918872 m!2354317))

(declare-fun m!2354319 () Bool)

(assert (=> b!1918872 m!2354319))

(declare-fun m!2354321 () Bool)

(assert (=> b!1918885 m!2354321))

(declare-fun m!2354323 () Bool)

(assert (=> b!1918891 m!2354323))

(declare-fun m!2354325 () Bool)

(assert (=> b!1918891 m!2354325))

(declare-fun m!2354327 () Bool)

(assert (=> b!1918881 m!2354327))

(declare-fun m!2354329 () Bool)

(assert (=> b!1918882 m!2354329))

(declare-fun m!2354331 () Bool)

(assert (=> b!1918882 m!2354331))

(declare-fun m!2354333 () Bool)

(assert (=> b!1918895 m!2354333))

(declare-fun m!2354335 () Bool)

(assert (=> b!1918873 m!2354335))

(assert (=> b!1918873 m!2354335))

(declare-fun m!2354337 () Bool)

(assert (=> b!1918873 m!2354337))

(assert (=> b!1918873 m!2354337))

(declare-fun m!2354339 () Bool)

(assert (=> b!1918873 m!2354339))

(declare-fun m!2354341 () Bool)

(assert (=> b!1918884 m!2354341))

(declare-fun m!2354343 () Bool)

(assert (=> b!1918883 m!2354343))

(declare-fun m!2354345 () Bool)

(assert (=> b!1918883 m!2354345))

(assert (=> b!1918883 m!2354343))

(declare-fun m!2354347 () Bool)

(assert (=> b!1918883 m!2354347))

(declare-fun m!2354349 () Bool)

(assert (=> b!1918883 m!2354349))

(declare-fun m!2354351 () Bool)

(assert (=> b!1918883 m!2354351))

(declare-fun m!2354353 () Bool)

(assert (=> b!1918883 m!2354353))

(assert (=> b!1918883 m!2354351))

(declare-fun m!2354355 () Bool)

(assert (=> b!1918883 m!2354355))

(declare-fun m!2354357 () Bool)

(assert (=> b!1918883 m!2354357))

(assert (=> b!1918883 m!2354349))

(declare-fun m!2354359 () Bool)

(assert (=> b!1918883 m!2354359))

(declare-fun m!2354361 () Bool)

(assert (=> b!1918883 m!2354361))

(declare-fun m!2354363 () Bool)

(assert (=> b!1918883 m!2354363))

(assert (=> b!1918883 m!2354359))

(declare-fun m!2354365 () Bool)

(assert (=> b!1918883 m!2354365))

(declare-fun m!2354367 () Bool)

(assert (=> b!1918883 m!2354367))

(declare-fun m!2354369 () Bool)

(assert (=> b!1918883 m!2354369))

(declare-fun m!2354371 () Bool)

(assert (=> b!1918883 m!2354371))

(declare-fun m!2354373 () Bool)

(assert (=> b!1918883 m!2354373))

(declare-fun m!2354375 () Bool)

(assert (=> b!1918883 m!2354375))

(declare-fun m!2354377 () Bool)

(assert (=> b!1918883 m!2354377))

(declare-fun m!2354379 () Bool)

(assert (=> b!1918876 m!2354379))

(push 1)

(assert (not b_next!55351))

(assert (not b_next!55343))

(assert (not b!1918884))

(assert b_and!149843)

(assert (not b!1918894))

(assert (not b!1918877))

(assert b_and!149851)

(assert (not b!1918873))

(assert (not b_next!55345))

(assert (not b_next!55341))

(assert b_and!149845)

(assert (not b!1918882))

(assert (not b!1918893))

(assert (not b!1918891))

(assert (not b!1918879))

(assert b_and!149847)

(assert (not b!1918883))

(assert b_and!149853)

(assert (not b!1918892))

(assert (not b!1918870))

(assert (not b!1918887))

(assert (not b!1918885))

(assert (not b!1918895))

(assert (not b!1918876))

(assert (not b_next!55349))

(assert (not b_next!55347))

(assert (not b!1918889))

(assert b_and!149849)

(assert (not start!192266))

(assert (not b!1918881))

(assert (not b!1918872))

(assert (not b!1918875))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!55351))

(assert (not b_next!55343))

(assert b_and!149847)

(assert b_and!149853)

(assert b_and!149843)

(assert b_and!149849)

(assert b_and!149851)

(assert (not b_next!55345))

(assert (not b_next!55341))

(assert b_and!149845)

(assert (not b_next!55349))

(assert (not b_next!55347))

(check-sat)

(pop 1)

