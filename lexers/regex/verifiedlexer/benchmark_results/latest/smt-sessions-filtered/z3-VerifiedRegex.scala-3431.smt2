; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!193636 () Bool)

(assert start!193636)

(declare-fun b!1930322 () Bool)

(declare-fun b_free!55313 () Bool)

(declare-fun b_next!56017 () Bool)

(assert (=> b!1930322 (= b_free!55313 (not b_next!56017))))

(declare-fun tp!551087 () Bool)

(declare-fun b_and!151655 () Bool)

(assert (=> b!1930322 (= tp!551087 b_and!151655)))

(declare-fun b_free!55315 () Bool)

(declare-fun b_next!56019 () Bool)

(assert (=> b!1930322 (= b_free!55315 (not b_next!56019))))

(declare-fun tp!551088 () Bool)

(declare-fun b_and!151657 () Bool)

(assert (=> b!1930322 (= tp!551088 b_and!151657)))

(declare-fun b!1930332 () Bool)

(declare-fun b_free!55317 () Bool)

(declare-fun b_next!56021 () Bool)

(assert (=> b!1930332 (= b_free!55317 (not b_next!56021))))

(declare-fun tp!551086 () Bool)

(declare-fun b_and!151659 () Bool)

(assert (=> b!1930332 (= tp!551086 b_and!151659)))

(declare-fun b_free!55319 () Bool)

(declare-fun b_next!56023 () Bool)

(assert (=> b!1930332 (= b_free!55319 (not b_next!56023))))

(declare-fun tp!551089 () Bool)

(declare-fun b_and!151661 () Bool)

(assert (=> b!1930332 (= tp!551089 b_and!151661)))

(declare-fun b!1930324 () Bool)

(declare-fun b_free!55321 () Bool)

(declare-fun b_next!56025 () Bool)

(assert (=> b!1930324 (= b_free!55321 (not b_next!56025))))

(declare-fun tp!551082 () Bool)

(declare-fun b_and!151663 () Bool)

(assert (=> b!1930324 (= tp!551082 b_and!151663)))

(declare-fun b_free!55323 () Bool)

(declare-fun b_next!56027 () Bool)

(assert (=> b!1930324 (= b_free!55323 (not b_next!56027))))

(declare-fun tp!551090 () Bool)

(declare-fun b_and!151665 () Bool)

(assert (=> b!1930324 (= tp!551090 b_and!151665)))

(declare-fun b!1930318 () Bool)

(declare-fun e!1233875 () Bool)

(declare-fun e!1233861 () Bool)

(assert (=> b!1930318 (= e!1233875 e!1233861)))

(declare-fun res!863080 () Bool)

(assert (=> b!1930318 (=> (not res!863080) (not e!1233861))))

(declare-datatypes ((List!22036 0))(
  ( (Nil!21954) (Cons!21954 (h!27355 (_ BitVec 16)) (t!180081 List!22036)) )
))
(declare-datatypes ((TokenValue!4074 0))(
  ( (FloatLiteralValue!8148 (text!28963 List!22036)) (TokenValueExt!4073 (__x!13646 Int)) (Broken!20370 (value!123798 List!22036)) (Object!4155) (End!4074) (Def!4074) (Underscore!4074) (Match!4074) (Else!4074) (Error!4074) (Case!4074) (If!4074) (Extends!4074) (Abstract!4074) (Class!4074) (Val!4074) (DelimiterValue!8148 (del!4134 List!22036)) (KeywordValue!4080 (value!123799 List!22036)) (CommentValue!8148 (value!123800 List!22036)) (WhitespaceValue!8148 (value!123801 List!22036)) (IndentationValue!4074 (value!123802 List!22036)) (String!25487) (Int32!4074) (Broken!20371 (value!123803 List!22036)) (Boolean!4075) (Unit!36311) (OperatorValue!4077 (op!4134 List!22036)) (IdentifierValue!8148 (value!123804 List!22036)) (IdentifierValue!8149 (value!123805 List!22036)) (WhitespaceValue!8149 (value!123806 List!22036)) (True!8148) (False!8148) (Broken!20372 (value!123807 List!22036)) (Broken!20373 (value!123808 List!22036)) (True!8149) (RightBrace!4074) (RightBracket!4074) (Colon!4074) (Null!4074) (Comma!4074) (LeftBracket!4074) (False!8149) (LeftBrace!4074) (ImaginaryLiteralValue!4074 (text!28964 List!22036)) (StringLiteralValue!12222 (value!123809 List!22036)) (EOFValue!4074 (value!123810 List!22036)) (IdentValue!4074 (value!123811 List!22036)) (DelimiterValue!8149 (value!123812 List!22036)) (DedentValue!4074 (value!123813 List!22036)) (NewLineValue!4074 (value!123814 List!22036)) (IntegerValue!12222 (value!123815 (_ BitVec 32)) (text!28965 List!22036)) (IntegerValue!12223 (value!123816 Int) (text!28966 List!22036)) (Times!4074) (Or!4074) (Equal!4074) (Minus!4074) (Broken!20374 (value!123817 List!22036)) (And!4074) (Div!4074) (LessEqual!4074) (Mod!4074) (Concat!9437) (Not!4074) (Plus!4074) (SpaceValue!4074 (value!123818 List!22036)) (IntegerValue!12224 (value!123819 Int) (text!28967 List!22036)) (StringLiteralValue!12223 (text!28968 List!22036)) (FloatLiteralValue!8149 (text!28969 List!22036)) (BytesLiteralValue!4074 (value!123820 List!22036)) (CommentValue!8149 (value!123821 List!22036)) (StringLiteralValue!12224 (value!123822 List!22036)) (ErrorTokenValue!4074 (msg!4135 List!22036)) )
))
(declare-datatypes ((C!10872 0))(
  ( (C!10873 (val!6388 Int)) )
))
(declare-datatypes ((List!22037 0))(
  ( (Nil!21955) (Cons!21955 (h!27356 C!10872) (t!180082 List!22037)) )
))
(declare-datatypes ((String!25488 0))(
  ( (String!25489 (value!123823 String)) )
))
(declare-datatypes ((IArray!14665 0))(
  ( (IArray!14666 (innerList!7390 List!22037)) )
))
(declare-datatypes ((Conc!7330 0))(
  ( (Node!7330 (left!17465 Conc!7330) (right!17795 Conc!7330) (csize!14890 Int) (cheight!7541 Int)) (Leaf!10762 (xs!10224 IArray!14665) (csize!14891 Int)) (Empty!7330) )
))
(declare-datatypes ((BalanceConc!14476 0))(
  ( (BalanceConc!14477 (c!313974 Conc!7330)) )
))
(declare-datatypes ((TokenValueInjection!7732 0))(
  ( (TokenValueInjection!7733 (toValue!5575 Int) (toChars!5434 Int)) )
))
(declare-datatypes ((Regex!5363 0))(
  ( (ElementMatch!5363 (c!313975 C!10872)) (Concat!9438 (regOne!11238 Regex!5363) (regTwo!11238 Regex!5363)) (EmptyExpr!5363) (Star!5363 (reg!5692 Regex!5363)) (EmptyLang!5363) (Union!5363 (regOne!11239 Regex!5363) (regTwo!11239 Regex!5363)) )
))
(declare-datatypes ((Rule!7676 0))(
  ( (Rule!7677 (regex!3938 Regex!5363) (tag!4388 String!25488) (isSeparator!3938 Bool) (transformation!3938 TokenValueInjection!7732)) )
))
(declare-fun lt!739937 () Rule!7676)

(declare-fun lt!739936 () List!22037)

(declare-fun matchR!2631 (Regex!5363 List!22037) Bool)

(assert (=> b!1930318 (= res!863080 (matchR!2631 (regex!3938 lt!739937) lt!739936))))

(declare-datatypes ((Option!4553 0))(
  ( (None!4552) (Some!4552 (v!26657 Rule!7676)) )
))
(declare-fun lt!739938 () Option!4553)

(declare-fun get!6917 (Option!4553) Rule!7676)

(assert (=> b!1930318 (= lt!739937 (get!6917 lt!739938))))

(declare-fun b!1930319 () Bool)

(declare-fun res!863077 () Bool)

(declare-fun e!1233863 () Bool)

(assert (=> b!1930319 (=> (not res!863077) (not e!1233863))))

(declare-datatypes ((List!22038 0))(
  ( (Nil!21956) (Cons!21956 (h!27357 Rule!7676) (t!180083 List!22038)) )
))
(declare-fun rules!3198 () List!22038)

(declare-fun sepAndNonSepRulesDisjointChars!1036 (List!22038 List!22038) Bool)

(assert (=> b!1930319 (= res!863077 (sepAndNonSepRulesDisjointChars!1036 rules!3198 rules!3198))))

(declare-fun e!1233862 () Bool)

(declare-fun b!1930320 () Bool)

(declare-fun e!1233866 () Bool)

(declare-datatypes ((Token!7428 0))(
  ( (Token!7429 (value!123824 TokenValue!4074) (rule!6145 Rule!7676) (size!17128 Int) (originalCharacters!4745 List!22037)) )
))
(declare-datatypes ((List!22039 0))(
  ( (Nil!21957) (Cons!21957 (h!27358 Token!7428) (t!180084 List!22039)) )
))
(declare-fun tokens!598 () List!22039)

(declare-fun tp!551079 () Bool)

(declare-fun inv!29042 (Token!7428) Bool)

(assert (=> b!1930320 (= e!1233862 (and (inv!29042 (h!27358 tokens!598)) e!1233866 tp!551079))))

(declare-fun b!1930321 () Bool)

(declare-fun e!1233865 () Bool)

(declare-fun separatorToken!354 () Token!7428)

(declare-fun lt!739932 () Rule!7676)

(assert (=> b!1930321 (= e!1233865 (= (rule!6145 separatorToken!354) lt!739932))))

(declare-fun e!1233882 () Bool)

(assert (=> b!1930322 (= e!1233882 (and tp!551087 tp!551088))))

(declare-fun b!1930323 () Bool)

(declare-fun e!1233880 () Bool)

(declare-fun e!1233867 () Bool)

(declare-fun tp!551085 () Bool)

(assert (=> b!1930323 (= e!1233880 (and e!1233867 tp!551085))))

(declare-fun e!1233870 () Bool)

(assert (=> b!1930324 (= e!1233870 (and tp!551082 tp!551090))))

(declare-fun b!1930325 () Bool)

(declare-fun res!863075 () Bool)

(assert (=> b!1930325 (=> (not res!863075) (not e!1233863))))

(declare-datatypes ((LexerInterface!3551 0))(
  ( (LexerInterfaceExt!3548 (__x!13647 Int)) (Lexer!3549) )
))
(declare-fun thiss!23328 () LexerInterface!3551)

(declare-fun rulesInvariant!3158 (LexerInterface!3551 List!22038) Bool)

(assert (=> b!1930325 (= res!863075 (rulesInvariant!3158 thiss!23328 rules!3198))))

(declare-fun b!1930326 () Bool)

(declare-fun e!1233871 () Bool)

(assert (=> b!1930326 (= e!1233863 (not e!1233871))))

(declare-fun res!863084 () Bool)

(assert (=> b!1930326 (=> res!863084 e!1233871)))

(declare-fun lt!739944 () Bool)

(declare-datatypes ((tuple2!20574 0))(
  ( (tuple2!20575 (_1!11756 Token!7428) (_2!11756 List!22037)) )
))
(declare-datatypes ((Option!4554 0))(
  ( (None!4553) (Some!4553 (v!26658 tuple2!20574)) )
))
(declare-fun lt!739934 () Option!4554)

(get-info :version)

(assert (=> b!1930326 (= res!863084 (or (and (not lt!739944) (= (_1!11756 (v!26658 lt!739934)) (h!27358 tokens!598))) (and (not lt!739944) (not (= (_1!11756 (v!26658 lt!739934)) (h!27358 tokens!598)))) (not ((_ is None!4553) lt!739934))))))

(assert (=> b!1930326 (= lt!739944 (not ((_ is Some!4553) lt!739934)))))

(declare-fun maxPrefix!1989 (LexerInterface!3551 List!22038 List!22037) Option!4554)

(declare-fun ++!5893 (List!22037 List!22037) List!22037)

(declare-fun printWithSeparatorTokenWhenNeededList!590 (LexerInterface!3551 List!22038 List!22039 Token!7428) List!22037)

(assert (=> b!1930326 (= lt!739934 (maxPrefix!1989 thiss!23328 rules!3198 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(assert (=> b!1930326 e!1233875))

(declare-fun res!863078 () Bool)

(assert (=> b!1930326 (=> (not res!863078) (not e!1233875))))

(declare-fun isDefined!3845 (Option!4553) Bool)

(assert (=> b!1930326 (= res!863078 (isDefined!3845 lt!739938))))

(declare-fun getRuleFromTag!759 (LexerInterface!3551 List!22038 String!25488) Option!4553)

(assert (=> b!1930326 (= lt!739938 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))))

(declare-datatypes ((Unit!36312 0))(
  ( (Unit!36313) )
))
(declare-fun lt!739927 () Unit!36312)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!759 (LexerInterface!3551 List!22038 List!22037 Token!7428) Unit!36312)

(assert (=> b!1930326 (= lt!739927 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!759 thiss!23328 rules!3198 lt!739936 (h!27358 tokens!598)))))

(declare-fun e!1233869 () Bool)

(assert (=> b!1930326 e!1233869))

(declare-fun res!863073 () Bool)

(assert (=> b!1930326 (=> (not res!863073) (not e!1233869))))

(declare-fun lt!739933 () Option!4554)

(declare-fun isDefined!3846 (Option!4554) Bool)

(assert (=> b!1930326 (= res!863073 (isDefined!3846 lt!739933))))

(assert (=> b!1930326 (= lt!739933 (maxPrefix!1989 thiss!23328 rules!3198 lt!739936))))

(declare-fun lt!739931 () BalanceConc!14476)

(declare-fun list!8887 (BalanceConc!14476) List!22037)

(assert (=> b!1930326 (= lt!739936 (list!8887 lt!739931))))

(declare-fun e!1233879 () Bool)

(assert (=> b!1930326 e!1233879))

(declare-fun res!863070 () Bool)

(assert (=> b!1930326 (=> (not res!863070) (not e!1233879))))

(declare-fun lt!739940 () Option!4553)

(assert (=> b!1930326 (= res!863070 (isDefined!3845 lt!739940))))

(assert (=> b!1930326 (= lt!739940 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))))

(declare-fun lt!739929 () Unit!36312)

(declare-fun lt!739943 () List!22037)

(assert (=> b!1930326 (= lt!739929 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!759 thiss!23328 rules!3198 lt!739943 separatorToken!354))))

(declare-fun charsOf!2478 (Token!7428) BalanceConc!14476)

(assert (=> b!1930326 (= lt!739943 (list!8887 (charsOf!2478 separatorToken!354)))))

(declare-fun lt!739928 () Unit!36312)

(declare-fun lemmaEqSameImage!624 (TokenValueInjection!7732 BalanceConc!14476 BalanceConc!14476) Unit!36312)

(declare-fun seqFromList!2792 (List!22037) BalanceConc!14476)

(assert (=> b!1930326 (= lt!739928 (lemmaEqSameImage!624 (transformation!3938 (rule!6145 (h!27358 tokens!598))) lt!739931 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))))))

(declare-fun lt!739942 () Unit!36312)

(declare-fun lemmaSemiInverse!895 (TokenValueInjection!7732 BalanceConc!14476) Unit!36312)

(assert (=> b!1930326 (= lt!739942 (lemmaSemiInverse!895 (transformation!3938 (rule!6145 (h!27358 tokens!598))) lt!739931))))

(assert (=> b!1930326 (= lt!739931 (charsOf!2478 (h!27358 tokens!598)))))

(declare-fun b!1930327 () Bool)

(declare-fun res!863076 () Bool)

(assert (=> b!1930327 (=> (not res!863076) (not e!1233863))))

(declare-fun rulesProduceEachTokenIndividuallyList!1282 (LexerInterface!3551 List!22038 List!22039) Bool)

(assert (=> b!1930327 (= res!863076 (rulesProduceEachTokenIndividuallyList!1282 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1930328 () Bool)

(declare-fun tp!551084 () Bool)

(declare-fun inv!29039 (String!25488) Bool)

(declare-fun inv!29043 (TokenValueInjection!7732) Bool)

(assert (=> b!1930328 (= e!1233867 (and tp!551084 (inv!29039 (tag!4388 (h!27357 rules!3198))) (inv!29043 (transformation!3938 (h!27357 rules!3198))) e!1233870))))

(declare-fun tp!551083 () Bool)

(declare-fun b!1930329 () Bool)

(declare-fun e!1233881 () Bool)

(declare-fun inv!21 (TokenValue!4074) Bool)

(assert (=> b!1930329 (= e!1233866 (and (inv!21 (value!123824 (h!27358 tokens!598))) e!1233881 tp!551083))))

(declare-fun res!863083 () Bool)

(assert (=> start!193636 (=> (not res!863083) (not e!1233863))))

(assert (=> start!193636 (= res!863083 ((_ is Lexer!3549) thiss!23328))))

(assert (=> start!193636 e!1233863))

(assert (=> start!193636 true))

(assert (=> start!193636 e!1233880))

(assert (=> start!193636 e!1233862))

(declare-fun e!1233873 () Bool)

(assert (=> start!193636 (and (inv!29042 separatorToken!354) e!1233873)))

(declare-fun b!1930330 () Bool)

(declare-fun res!863074 () Bool)

(assert (=> b!1930330 (=> (not res!863074) (not e!1233863))))

(declare-fun isEmpty!13534 (List!22038) Bool)

(assert (=> b!1930330 (= res!863074 (not (isEmpty!13534 rules!3198)))))

(declare-fun e!1233874 () Bool)

(declare-fun b!1930331 () Bool)

(declare-fun tp!551078 () Bool)

(assert (=> b!1930331 (= e!1233881 (and tp!551078 (inv!29039 (tag!4388 (rule!6145 (h!27358 tokens!598)))) (inv!29043 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) e!1233874))))

(assert (=> b!1930332 (= e!1233874 (and tp!551086 tp!551089))))

(declare-fun b!1930333 () Bool)

(assert (=> b!1930333 (= e!1233879 e!1233865)))

(declare-fun res!863079 () Bool)

(assert (=> b!1930333 (=> (not res!863079) (not e!1233865))))

(assert (=> b!1930333 (= res!863079 (matchR!2631 (regex!3938 lt!739932) lt!739943))))

(assert (=> b!1930333 (= lt!739932 (get!6917 lt!739940))))

(declare-fun e!1233872 () Bool)

(declare-fun tp!551081 () Bool)

(declare-fun b!1930334 () Bool)

(assert (=> b!1930334 (= e!1233872 (and tp!551081 (inv!29039 (tag!4388 (rule!6145 separatorToken!354))) (inv!29043 (transformation!3938 (rule!6145 separatorToken!354))) e!1233882))))

(declare-fun b!1930335 () Bool)

(declare-fun res!863072 () Bool)

(assert (=> b!1930335 (=> (not res!863072) (not e!1233863))))

(assert (=> b!1930335 (= res!863072 ((_ is Cons!21957) tokens!598))))

(declare-fun b!1930336 () Bool)

(declare-fun get!6918 (Option!4554) tuple2!20574)

(assert (=> b!1930336 (= e!1233869 (= (_1!11756 (get!6918 lt!739933)) (h!27358 tokens!598)))))

(declare-fun lt!739935 () List!22037)

(declare-fun lt!739930 () List!22037)

(declare-fun b!1930337 () Bool)

(assert (=> b!1930337 (= e!1233871 (or (not (= lt!739935 lt!739930)) (= lt!739930 lt!739936)))))

(declare-fun printList!1086 (LexerInterface!3551 List!22039) List!22037)

(assert (=> b!1930337 (= lt!739930 (printList!1086 thiss!23328 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))

(declare-fun lt!739939 () BalanceConc!14476)

(assert (=> b!1930337 (= lt!739935 (list!8887 lt!739939))))

(declare-datatypes ((IArray!14667 0))(
  ( (IArray!14668 (innerList!7391 List!22039)) )
))
(declare-datatypes ((Conc!7331 0))(
  ( (Node!7331 (left!17466 Conc!7331) (right!17796 Conc!7331) (csize!14892 Int) (cheight!7542 Int)) (Leaf!10763 (xs!10225 IArray!14667) (csize!14893 Int)) (Empty!7331) )
))
(declare-datatypes ((BalanceConc!14478 0))(
  ( (BalanceConc!14479 (c!313976 Conc!7331)) )
))
(declare-fun lt!739941 () BalanceConc!14478)

(declare-fun printTailRec!1027 (LexerInterface!3551 BalanceConc!14478 Int BalanceConc!14476) BalanceConc!14476)

(assert (=> b!1930337 (= lt!739939 (printTailRec!1027 thiss!23328 lt!739941 0 (BalanceConc!14477 Empty!7330)))))

(declare-fun print!1521 (LexerInterface!3551 BalanceConc!14478) BalanceConc!14476)

(assert (=> b!1930337 (= lt!739939 (print!1521 thiss!23328 lt!739941))))

(declare-fun singletonSeq!1922 (Token!7428) BalanceConc!14478)

(assert (=> b!1930337 (= lt!739941 (singletonSeq!1922 (h!27358 tokens!598)))))

(declare-fun b!1930338 () Bool)

(declare-fun res!863081 () Bool)

(assert (=> b!1930338 (=> (not res!863081) (not e!1233863))))

(declare-fun rulesProduceIndividualToken!1723 (LexerInterface!3551 List!22038 Token!7428) Bool)

(assert (=> b!1930338 (= res!863081 (rulesProduceIndividualToken!1723 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1930339 () Bool)

(declare-fun res!863082 () Bool)

(assert (=> b!1930339 (=> (not res!863082) (not e!1233863))))

(declare-fun lambda!75269 () Int)

(declare-fun forall!4642 (List!22039 Int) Bool)

(assert (=> b!1930339 (= res!863082 (forall!4642 tokens!598 lambda!75269))))

(declare-fun b!1930340 () Bool)

(declare-fun res!863071 () Bool)

(assert (=> b!1930340 (=> (not res!863071) (not e!1233863))))

(assert (=> b!1930340 (= res!863071 (isSeparator!3938 (rule!6145 separatorToken!354)))))

(declare-fun b!1930341 () Bool)

(assert (=> b!1930341 (= e!1233861 (= (rule!6145 (h!27358 tokens!598)) lt!739937))))

(declare-fun b!1930342 () Bool)

(declare-fun tp!551080 () Bool)

(assert (=> b!1930342 (= e!1233873 (and (inv!21 (value!123824 separatorToken!354)) e!1233872 tp!551080))))

(assert (= (and start!193636 res!863083) b!1930330))

(assert (= (and b!1930330 res!863074) b!1930325))

(assert (= (and b!1930325 res!863075) b!1930327))

(assert (= (and b!1930327 res!863076) b!1930338))

(assert (= (and b!1930338 res!863081) b!1930340))

(assert (= (and b!1930340 res!863071) b!1930339))

(assert (= (and b!1930339 res!863082) b!1930319))

(assert (= (and b!1930319 res!863077) b!1930335))

(assert (= (and b!1930335 res!863072) b!1930326))

(assert (= (and b!1930326 res!863070) b!1930333))

(assert (= (and b!1930333 res!863079) b!1930321))

(assert (= (and b!1930326 res!863073) b!1930336))

(assert (= (and b!1930326 res!863078) b!1930318))

(assert (= (and b!1930318 res!863080) b!1930341))

(assert (= (and b!1930326 (not res!863084)) b!1930337))

(assert (= b!1930328 b!1930324))

(assert (= b!1930323 b!1930328))

(assert (= (and start!193636 ((_ is Cons!21956) rules!3198)) b!1930323))

(assert (= b!1930331 b!1930332))

(assert (= b!1930329 b!1930331))

(assert (= b!1930320 b!1930329))

(assert (= (and start!193636 ((_ is Cons!21957) tokens!598)) b!1930320))

(assert (= b!1930334 b!1930322))

(assert (= b!1930342 b!1930334))

(assert (= start!193636 b!1930342))

(declare-fun m!2367873 () Bool)

(assert (=> b!1930319 m!2367873))

(declare-fun m!2367875 () Bool)

(assert (=> b!1930333 m!2367875))

(declare-fun m!2367877 () Bool)

(assert (=> b!1930333 m!2367877))

(declare-fun m!2367879 () Bool)

(assert (=> b!1930318 m!2367879))

(declare-fun m!2367881 () Bool)

(assert (=> b!1930318 m!2367881))

(declare-fun m!2367883 () Bool)

(assert (=> b!1930327 m!2367883))

(declare-fun m!2367885 () Bool)

(assert (=> b!1930326 m!2367885))

(declare-fun m!2367887 () Bool)

(assert (=> b!1930326 m!2367887))

(declare-fun m!2367889 () Bool)

(assert (=> b!1930326 m!2367889))

(declare-fun m!2367891 () Bool)

(assert (=> b!1930326 m!2367891))

(assert (=> b!1930326 m!2367889))

(declare-fun m!2367893 () Bool)

(assert (=> b!1930326 m!2367893))

(declare-fun m!2367895 () Bool)

(assert (=> b!1930326 m!2367895))

(declare-fun m!2367897 () Bool)

(assert (=> b!1930326 m!2367897))

(declare-fun m!2367899 () Bool)

(assert (=> b!1930326 m!2367899))

(declare-fun m!2367901 () Bool)

(assert (=> b!1930326 m!2367901))

(declare-fun m!2367903 () Bool)

(assert (=> b!1930326 m!2367903))

(declare-fun m!2367905 () Bool)

(assert (=> b!1930326 m!2367905))

(declare-fun m!2367907 () Bool)

(assert (=> b!1930326 m!2367907))

(declare-fun m!2367909 () Bool)

(assert (=> b!1930326 m!2367909))

(declare-fun m!2367911 () Bool)

(assert (=> b!1930326 m!2367911))

(declare-fun m!2367913 () Bool)

(assert (=> b!1930326 m!2367913))

(declare-fun m!2367915 () Bool)

(assert (=> b!1930326 m!2367915))

(assert (=> b!1930326 m!2367899))

(declare-fun m!2367917 () Bool)

(assert (=> b!1930326 m!2367917))

(assert (=> b!1930326 m!2367915))

(assert (=> b!1930326 m!2367903))

(declare-fun m!2367919 () Bool)

(assert (=> b!1930326 m!2367919))

(declare-fun m!2367921 () Bool)

(assert (=> b!1930330 m!2367921))

(declare-fun m!2367923 () Bool)

(assert (=> b!1930320 m!2367923))

(declare-fun m!2367925 () Bool)

(assert (=> b!1930342 m!2367925))

(declare-fun m!2367927 () Bool)

(assert (=> b!1930331 m!2367927))

(declare-fun m!2367929 () Bool)

(assert (=> b!1930331 m!2367929))

(declare-fun m!2367931 () Bool)

(assert (=> b!1930334 m!2367931))

(declare-fun m!2367933 () Bool)

(assert (=> b!1930334 m!2367933))

(declare-fun m!2367935 () Bool)

(assert (=> b!1930337 m!2367935))

(declare-fun m!2367937 () Bool)

(assert (=> b!1930337 m!2367937))

(declare-fun m!2367939 () Bool)

(assert (=> b!1930337 m!2367939))

(declare-fun m!2367941 () Bool)

(assert (=> b!1930337 m!2367941))

(declare-fun m!2367943 () Bool)

(assert (=> b!1930337 m!2367943))

(declare-fun m!2367945 () Bool)

(assert (=> b!1930325 m!2367945))

(declare-fun m!2367947 () Bool)

(assert (=> b!1930328 m!2367947))

(declare-fun m!2367949 () Bool)

(assert (=> b!1930328 m!2367949))

(declare-fun m!2367951 () Bool)

(assert (=> start!193636 m!2367951))

(declare-fun m!2367953 () Bool)

(assert (=> b!1930336 m!2367953))

(declare-fun m!2367955 () Bool)

(assert (=> b!1930338 m!2367955))

(declare-fun m!2367957 () Bool)

(assert (=> b!1930339 m!2367957))

(declare-fun m!2367959 () Bool)

(assert (=> b!1930329 m!2367959))

(check-sat (not b!1930325) (not b!1930331) (not b_next!56025) (not b_next!56019) (not b!1930319) (not b!1930336) (not b!1930338) (not b!1930333) (not b!1930329) b_and!151665 (not b_next!56017) (not b!1930330) (not b!1930337) (not b_next!56027) (not b!1930342) (not b_next!56021) (not start!193636) (not b!1930320) b_and!151655 b_and!151659 b_and!151663 (not b!1930318) b_and!151661 (not b!1930334) (not b!1930323) b_and!151657 (not b!1930326) (not b!1930327) (not b_next!56023) (not b!1930328) (not b!1930339))
(check-sat (not b_next!56021) (not b_next!56025) (not b_next!56019) b_and!151663 b_and!151661 b_and!151657 (not b_next!56023) b_and!151665 (not b_next!56017) (not b_next!56027) b_and!151655 b_and!151659)
(get-model)

(declare-fun d!588558 () Bool)

(declare-fun list!8889 (Conc!7330) List!22037)

(assert (=> d!588558 (= (list!8887 lt!739939) (list!8889 (c!313974 lt!739939)))))

(declare-fun bs!414922 () Bool)

(assert (= bs!414922 d!588558))

(declare-fun m!2367971 () Bool)

(assert (=> bs!414922 m!2367971))

(assert (=> b!1930337 d!588558))

(declare-fun d!588560 () Bool)

(declare-fun c!313979 () Bool)

(assert (=> d!588560 (= c!313979 ((_ is Cons!21957) (Cons!21957 (h!27358 tokens!598) Nil!21957)))))

(declare-fun e!1233891 () List!22037)

(assert (=> d!588560 (= (printList!1086 thiss!23328 (Cons!21957 (h!27358 tokens!598) Nil!21957)) e!1233891)))

(declare-fun b!1930353 () Bool)

(assert (=> b!1930353 (= e!1233891 (++!5893 (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))) (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))))

(declare-fun b!1930354 () Bool)

(assert (=> b!1930354 (= e!1233891 Nil!21955)))

(assert (= (and d!588560 c!313979) b!1930353))

(assert (= (and d!588560 (not c!313979)) b!1930354))

(declare-fun m!2367973 () Bool)

(assert (=> b!1930353 m!2367973))

(assert (=> b!1930353 m!2367973))

(declare-fun m!2367975 () Bool)

(assert (=> b!1930353 m!2367975))

(declare-fun m!2367977 () Bool)

(assert (=> b!1930353 m!2367977))

(assert (=> b!1930353 m!2367975))

(assert (=> b!1930353 m!2367977))

(declare-fun m!2367979 () Bool)

(assert (=> b!1930353 m!2367979))

(assert (=> b!1930337 d!588560))

(declare-fun d!588562 () Bool)

(declare-fun lt!739949 () BalanceConc!14476)

(declare-fun list!8890 (BalanceConc!14478) List!22039)

(assert (=> d!588562 (= (list!8887 lt!739949) (printList!1086 thiss!23328 (list!8890 lt!739941)))))

(assert (=> d!588562 (= lt!739949 (printTailRec!1027 thiss!23328 lt!739941 0 (BalanceConc!14477 Empty!7330)))))

(assert (=> d!588562 (= (print!1521 thiss!23328 lt!739941) lt!739949)))

(declare-fun bs!414923 () Bool)

(assert (= bs!414923 d!588562))

(declare-fun m!2367981 () Bool)

(assert (=> bs!414923 m!2367981))

(declare-fun m!2367983 () Bool)

(assert (=> bs!414923 m!2367983))

(assert (=> bs!414923 m!2367983))

(declare-fun m!2367985 () Bool)

(assert (=> bs!414923 m!2367985))

(assert (=> bs!414923 m!2367941))

(assert (=> b!1930337 d!588562))

(declare-fun d!588564 () Bool)

(declare-fun lt!739966 () BalanceConc!14476)

(declare-fun printListTailRec!456 (LexerInterface!3551 List!22039 List!22037) List!22037)

(declare-fun dropList!787 (BalanceConc!14478 Int) List!22039)

(assert (=> d!588564 (= (list!8887 lt!739966) (printListTailRec!456 thiss!23328 (dropList!787 lt!739941 0) (list!8887 (BalanceConc!14477 Empty!7330))))))

(declare-fun e!1233896 () BalanceConc!14476)

(assert (=> d!588564 (= lt!739966 e!1233896)))

(declare-fun c!313982 () Bool)

(declare-fun size!17130 (BalanceConc!14478) Int)

(assert (=> d!588564 (= c!313982 (>= 0 (size!17130 lt!739941)))))

(declare-fun e!1233897 () Bool)

(assert (=> d!588564 e!1233897))

(declare-fun res!863103 () Bool)

(assert (=> d!588564 (=> (not res!863103) (not e!1233897))))

(assert (=> d!588564 (= res!863103 (>= 0 0))))

(assert (=> d!588564 (= (printTailRec!1027 thiss!23328 lt!739941 0 (BalanceConc!14477 Empty!7330)) lt!739966)))

(declare-fun b!1930361 () Bool)

(assert (=> b!1930361 (= e!1233897 (<= 0 (size!17130 lt!739941)))))

(declare-fun b!1930362 () Bool)

(assert (=> b!1930362 (= e!1233896 (BalanceConc!14477 Empty!7330))))

(declare-fun b!1930363 () Bool)

(declare-fun ++!5894 (BalanceConc!14476 BalanceConc!14476) BalanceConc!14476)

(declare-fun apply!5707 (BalanceConc!14478 Int) Token!7428)

(assert (=> b!1930363 (= e!1233896 (printTailRec!1027 thiss!23328 lt!739941 (+ 0 1) (++!5894 (BalanceConc!14477 Empty!7330) (charsOf!2478 (apply!5707 lt!739941 0)))))))

(declare-fun lt!739967 () List!22039)

(assert (=> b!1930363 (= lt!739967 (list!8890 lt!739941))))

(declare-fun lt!739969 () Unit!36312)

(declare-fun lemmaDropApply!711 (List!22039 Int) Unit!36312)

(assert (=> b!1930363 (= lt!739969 (lemmaDropApply!711 lt!739967 0))))

(declare-fun head!4501 (List!22039) Token!7428)

(declare-fun drop!1078 (List!22039 Int) List!22039)

(declare-fun apply!5708 (List!22039 Int) Token!7428)

(assert (=> b!1930363 (= (head!4501 (drop!1078 lt!739967 0)) (apply!5708 lt!739967 0))))

(declare-fun lt!739968 () Unit!36312)

(assert (=> b!1930363 (= lt!739968 lt!739969)))

(declare-fun lt!739970 () List!22039)

(assert (=> b!1930363 (= lt!739970 (list!8890 lt!739941))))

(declare-fun lt!739965 () Unit!36312)

(declare-fun lemmaDropTail!687 (List!22039 Int) Unit!36312)

(assert (=> b!1930363 (= lt!739965 (lemmaDropTail!687 lt!739970 0))))

(declare-fun tail!2987 (List!22039) List!22039)

(assert (=> b!1930363 (= (tail!2987 (drop!1078 lt!739970 0)) (drop!1078 lt!739970 (+ 0 1)))))

(declare-fun lt!739964 () Unit!36312)

(assert (=> b!1930363 (= lt!739964 lt!739965)))

(assert (= (and d!588564 res!863103) b!1930361))

(assert (= (and d!588564 c!313982) b!1930362))

(assert (= (and d!588564 (not c!313982)) b!1930363))

(declare-fun m!2367987 () Bool)

(assert (=> d!588564 m!2367987))

(declare-fun m!2367989 () Bool)

(assert (=> d!588564 m!2367989))

(declare-fun m!2367991 () Bool)

(assert (=> d!588564 m!2367991))

(declare-fun m!2367993 () Bool)

(assert (=> d!588564 m!2367993))

(assert (=> d!588564 m!2367989))

(assert (=> d!588564 m!2367987))

(declare-fun m!2367995 () Bool)

(assert (=> d!588564 m!2367995))

(assert (=> b!1930361 m!2367991))

(declare-fun m!2367997 () Bool)

(assert (=> b!1930363 m!2367997))

(declare-fun m!2367999 () Bool)

(assert (=> b!1930363 m!2367999))

(declare-fun m!2368001 () Bool)

(assert (=> b!1930363 m!2368001))

(declare-fun m!2368003 () Bool)

(assert (=> b!1930363 m!2368003))

(declare-fun m!2368005 () Bool)

(assert (=> b!1930363 m!2368005))

(declare-fun m!2368007 () Bool)

(assert (=> b!1930363 m!2368007))

(assert (=> b!1930363 m!2368003))

(declare-fun m!2368009 () Bool)

(assert (=> b!1930363 m!2368009))

(declare-fun m!2368011 () Bool)

(assert (=> b!1930363 m!2368011))

(declare-fun m!2368013 () Bool)

(assert (=> b!1930363 m!2368013))

(assert (=> b!1930363 m!2368001))

(declare-fun m!2368015 () Bool)

(assert (=> b!1930363 m!2368015))

(declare-fun m!2368017 () Bool)

(assert (=> b!1930363 m!2368017))

(assert (=> b!1930363 m!2367983))

(declare-fun m!2368019 () Bool)

(assert (=> b!1930363 m!2368019))

(assert (=> b!1930363 m!2368011))

(assert (=> b!1930363 m!2368015))

(assert (=> b!1930363 m!2368005))

(assert (=> b!1930337 d!588564))

(declare-fun d!588566 () Bool)

(declare-fun e!1233900 () Bool)

(assert (=> d!588566 e!1233900))

(declare-fun res!863106 () Bool)

(assert (=> d!588566 (=> (not res!863106) (not e!1233900))))

(declare-fun lt!739973 () BalanceConc!14478)

(assert (=> d!588566 (= res!863106 (= (list!8890 lt!739973) (Cons!21957 (h!27358 tokens!598) Nil!21957)))))

(declare-fun singleton!851 (Token!7428) BalanceConc!14478)

(assert (=> d!588566 (= lt!739973 (singleton!851 (h!27358 tokens!598)))))

(assert (=> d!588566 (= (singletonSeq!1922 (h!27358 tokens!598)) lt!739973)))

(declare-fun b!1930366 () Bool)

(declare-fun isBalanced!2264 (Conc!7331) Bool)

(assert (=> b!1930366 (= e!1233900 (isBalanced!2264 (c!313976 lt!739973)))))

(assert (= (and d!588566 res!863106) b!1930366))

(declare-fun m!2368021 () Bool)

(assert (=> d!588566 m!2368021))

(declare-fun m!2368023 () Bool)

(assert (=> d!588566 m!2368023))

(declare-fun m!2368025 () Bool)

(assert (=> b!1930366 m!2368025))

(assert (=> b!1930337 d!588566))

(declare-fun d!588568 () Bool)

(declare-fun isEmpty!13537 (Option!4554) Bool)

(assert (=> d!588568 (= (isDefined!3846 lt!739933) (not (isEmpty!13537 lt!739933)))))

(declare-fun bs!414924 () Bool)

(assert (= bs!414924 d!588568))

(declare-fun m!2368027 () Bool)

(assert (=> bs!414924 m!2368027))

(assert (=> b!1930326 d!588568))

(declare-fun b!1930390 () Bool)

(declare-fun e!1233918 () Bool)

(assert (=> b!1930390 (= e!1233918 true)))

(declare-fun d!588570 () Bool)

(assert (=> d!588570 e!1233918))

(assert (= d!588570 b!1930390))

(declare-fun order!13805 () Int)

(declare-fun order!13807 () Int)

(declare-fun lambda!75278 () Int)

(declare-fun dynLambda!10660 (Int Int) Int)

(declare-fun dynLambda!10661 (Int Int) Int)

(assert (=> b!1930390 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (dynLambda!10661 order!13807 lambda!75278))))

(declare-fun order!13809 () Int)

(declare-fun dynLambda!10662 (Int Int) Int)

(assert (=> b!1930390 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (dynLambda!10661 order!13807 lambda!75278))))

(declare-fun dynLambda!10663 (Int TokenValue!4074) BalanceConc!14476)

(declare-fun dynLambda!10664 (Int BalanceConc!14476) TokenValue!4074)

(assert (=> d!588570 (= (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))) (list!8887 lt!739931))))

(declare-fun lt!739980 () Unit!36312)

(declare-fun ForallOf!409 (Int BalanceConc!14476) Unit!36312)

(assert (=> d!588570 (= lt!739980 (ForallOf!409 lambda!75278 lt!739931))))

(assert (=> d!588570 (= (lemmaSemiInverse!895 (transformation!3938 (rule!6145 (h!27358 tokens!598))) lt!739931) lt!739980)))

(declare-fun b_lambda!64065 () Bool)

(assert (=> (not b_lambda!64065) (not d!588570)))

(declare-fun t!180105 () Bool)

(declare-fun tb!118439 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180105) tb!118439))

(declare-fun e!1233921 () Bool)

(declare-fun b!1930395 () Bool)

(declare-fun tp!551096 () Bool)

(declare-fun inv!29046 (Conc!7330) Bool)

(assert (=> b!1930395 (= e!1233921 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))) tp!551096))))

(declare-fun result!143062 () Bool)

(declare-fun inv!29047 (BalanceConc!14476) Bool)

(assert (=> tb!118439 (= result!143062 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))) e!1233921))))

(assert (= tb!118439 b!1930395))

(declare-fun m!2368055 () Bool)

(assert (=> b!1930395 m!2368055))

(declare-fun m!2368057 () Bool)

(assert (=> tb!118439 m!2368057))

(assert (=> d!588570 t!180105))

(declare-fun b_and!151691 () Bool)

(assert (= b_and!151657 (and (=> t!180105 result!143062) b_and!151691)))

(declare-fun t!180107 () Bool)

(declare-fun tb!118441 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180107) tb!118441))

(declare-fun result!143066 () Bool)

(assert (= result!143066 result!143062))

(assert (=> d!588570 t!180107))

(declare-fun b_and!151693 () Bool)

(assert (= b_and!151661 (and (=> t!180107 result!143066) b_and!151693)))

(declare-fun t!180109 () Bool)

(declare-fun tb!118443 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180109) tb!118443))

(declare-fun result!143068 () Bool)

(assert (= result!143068 result!143062))

(assert (=> d!588570 t!180109))

(declare-fun b_and!151695 () Bool)

(assert (= b_and!151665 (and (=> t!180109 result!143068) b_and!151695)))

(declare-fun b_lambda!64067 () Bool)

(assert (=> (not b_lambda!64067) (not d!588570)))

(declare-fun tb!118445 () Bool)

(declare-fun t!180111 () Bool)

(assert (=> (and b!1930322 (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180111) tb!118445))

(declare-fun result!143070 () Bool)

(assert (=> tb!118445 (= result!143070 (inv!21 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))

(declare-fun m!2368059 () Bool)

(assert (=> tb!118445 m!2368059))

(assert (=> d!588570 t!180111))

(declare-fun b_and!151697 () Bool)

(assert (= b_and!151655 (and (=> t!180111 result!143070) b_and!151697)))

(declare-fun t!180113 () Bool)

(declare-fun tb!118447 () Bool)

(assert (=> (and b!1930332 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180113) tb!118447))

(declare-fun result!143074 () Bool)

(assert (= result!143074 result!143070))

(assert (=> d!588570 t!180113))

(declare-fun b_and!151699 () Bool)

(assert (= b_and!151659 (and (=> t!180113 result!143074) b_and!151699)))

(declare-fun tb!118449 () Bool)

(declare-fun t!180115 () Bool)

(assert (=> (and b!1930324 (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180115) tb!118449))

(declare-fun result!143076 () Bool)

(assert (= result!143076 result!143070))

(assert (=> d!588570 t!180115))

(declare-fun b_and!151701 () Bool)

(assert (= b_and!151663 (and (=> t!180115 result!143076) b_and!151701)))

(declare-fun m!2368061 () Bool)

(assert (=> d!588570 m!2368061))

(declare-fun m!2368063 () Bool)

(assert (=> d!588570 m!2368063))

(declare-fun m!2368065 () Bool)

(assert (=> d!588570 m!2368065))

(declare-fun m!2368067 () Bool)

(assert (=> d!588570 m!2368067))

(assert (=> d!588570 m!2368061))

(assert (=> d!588570 m!2368065))

(assert (=> d!588570 m!2367913))

(assert (=> b!1930326 d!588570))

(declare-fun d!588580 () Bool)

(declare-fun isEmpty!13538 (Option!4553) Bool)

(assert (=> d!588580 (= (isDefined!3845 lt!739940) (not (isEmpty!13538 lt!739940)))))

(declare-fun bs!414927 () Bool)

(assert (= bs!414927 d!588580))

(declare-fun m!2368069 () Bool)

(assert (=> bs!414927 m!2368069))

(assert (=> b!1930326 d!588580))

(declare-fun d!588582 () Bool)

(declare-fun e!1233933 () Bool)

(assert (=> d!588582 e!1233933))

(declare-fun res!863113 () Bool)

(assert (=> d!588582 (=> (not res!863113) (not e!1233933))))

(assert (=> d!588582 (= res!863113 (isDefined!3845 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))))))

(declare-fun lt!739995 () Unit!36312)

(declare-fun choose!11992 (LexerInterface!3551 List!22038 List!22037 Token!7428) Unit!36312)

(assert (=> d!588582 (= lt!739995 (choose!11992 thiss!23328 rules!3198 lt!739943 separatorToken!354))))

(assert (=> d!588582 (rulesInvariant!3158 thiss!23328 rules!3198)))

(assert (=> d!588582 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!759 thiss!23328 rules!3198 lt!739943 separatorToken!354) lt!739995)))

(declare-fun b!1930414 () Bool)

(declare-fun res!863114 () Bool)

(assert (=> b!1930414 (=> (not res!863114) (not e!1233933))))

(assert (=> b!1930414 (= res!863114 (matchR!2631 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))) (list!8887 (charsOf!2478 separatorToken!354))))))

(declare-fun b!1930415 () Bool)

(assert (=> b!1930415 (= e!1233933 (= (rule!6145 separatorToken!354) (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))))))

(assert (= (and d!588582 res!863113) b!1930414))

(assert (= (and b!1930414 res!863114) b!1930415))

(assert (=> d!588582 m!2367895))

(assert (=> d!588582 m!2367895))

(declare-fun m!2368071 () Bool)

(assert (=> d!588582 m!2368071))

(declare-fun m!2368073 () Bool)

(assert (=> d!588582 m!2368073))

(assert (=> d!588582 m!2367945))

(assert (=> b!1930414 m!2367903))

(assert (=> b!1930414 m!2367903))

(assert (=> b!1930414 m!2367905))

(assert (=> b!1930414 m!2367895))

(declare-fun m!2368075 () Bool)

(assert (=> b!1930414 m!2368075))

(assert (=> b!1930414 m!2367905))

(declare-fun m!2368077 () Bool)

(assert (=> b!1930414 m!2368077))

(assert (=> b!1930414 m!2367895))

(assert (=> b!1930415 m!2367895))

(assert (=> b!1930415 m!2367895))

(assert (=> b!1930415 m!2368075))

(assert (=> b!1930326 d!588582))

(declare-fun d!588584 () Bool)

(declare-fun e!1233941 () Bool)

(assert (=> d!588584 e!1233941))

(declare-fun res!863120 () Bool)

(assert (=> d!588584 (=> (not res!863120) (not e!1233941))))

(declare-fun lt!739998 () List!22037)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3179 (List!22037) (InoxSet C!10872))

(assert (=> d!588584 (= res!863120 (= (content!3179 lt!739998) ((_ map or) (content!3179 lt!739936) (content!3179 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun e!1233940 () List!22037)

(assert (=> d!588584 (= lt!739998 e!1233940)))

(declare-fun c!313995 () Bool)

(assert (=> d!588584 (= c!313995 ((_ is Nil!21955) lt!739936))))

(assert (=> d!588584 (= (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) lt!739998)))

(declare-fun b!1930431 () Bool)

(assert (=> b!1930431 (= e!1233941 (or (not (= (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354) Nil!21955)) (= lt!739998 lt!739936)))))

(declare-fun b!1930429 () Bool)

(assert (=> b!1930429 (= e!1233940 (Cons!21955 (h!27356 lt!739936) (++!5893 (t!180082 lt!739936) (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1930430 () Bool)

(declare-fun res!863119 () Bool)

(assert (=> b!1930430 (=> (not res!863119) (not e!1233941))))

(declare-fun size!17131 (List!22037) Int)

(assert (=> b!1930430 (= res!863119 (= (size!17131 lt!739998) (+ (size!17131 lt!739936) (size!17131 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun b!1930428 () Bool)

(assert (=> b!1930428 (= e!1233940 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))

(assert (= (and d!588584 c!313995) b!1930428))

(assert (= (and d!588584 (not c!313995)) b!1930429))

(assert (= (and d!588584 res!863120) b!1930430))

(assert (= (and b!1930430 res!863119) b!1930431))

(declare-fun m!2368079 () Bool)

(assert (=> d!588584 m!2368079))

(declare-fun m!2368081 () Bool)

(assert (=> d!588584 m!2368081))

(assert (=> d!588584 m!2367915))

(declare-fun m!2368083 () Bool)

(assert (=> d!588584 m!2368083))

(assert (=> b!1930429 m!2367915))

(declare-fun m!2368085 () Bool)

(assert (=> b!1930429 m!2368085))

(declare-fun m!2368087 () Bool)

(assert (=> b!1930430 m!2368087))

(declare-fun m!2368089 () Bool)

(assert (=> b!1930430 m!2368089))

(assert (=> b!1930430 m!2367915))

(declare-fun m!2368091 () Bool)

(assert (=> b!1930430 m!2368091))

(assert (=> b!1930326 d!588584))

(declare-fun call!118752 () Option!4554)

(declare-fun bm!118747 () Bool)

(declare-fun maxPrefixOneRule!1227 (LexerInterface!3551 Rule!7676 List!22037) Option!4554)

(assert (=> bm!118747 (= call!118752 (maxPrefixOneRule!1227 thiss!23328 (h!27357 rules!3198) lt!739936))))

(declare-fun b!1930484 () Bool)

(declare-fun res!863142 () Bool)

(declare-fun e!1233968 () Bool)

(assert (=> b!1930484 (=> (not res!863142) (not e!1233968))))

(declare-fun lt!740027 () Option!4554)

(assert (=> b!1930484 (= res!863142 (matchR!2631 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))))))

(declare-fun b!1930485 () Bool)

(declare-fun contains!3975 (List!22038 Rule!7676) Bool)

(assert (=> b!1930485 (= e!1233968 (contains!3975 rules!3198 (rule!6145 (_1!11756 (get!6918 lt!740027)))))))

(declare-fun b!1930486 () Bool)

(declare-fun e!1233969 () Option!4554)

(assert (=> b!1930486 (= e!1233969 call!118752)))

(declare-fun b!1930487 () Bool)

(declare-fun res!863141 () Bool)

(assert (=> b!1930487 (=> (not res!863141) (not e!1233968))))

(declare-fun apply!5709 (TokenValueInjection!7732 BalanceConc!14476) TokenValue!4074)

(assert (=> b!1930487 (= res!863141 (= (value!123824 (_1!11756 (get!6918 lt!740027))) (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740027)))))))))

(declare-fun b!1930488 () Bool)

(declare-fun lt!740029 () Option!4554)

(declare-fun lt!740028 () Option!4554)

(assert (=> b!1930488 (= e!1233969 (ite (and ((_ is None!4553) lt!740029) ((_ is None!4553) lt!740028)) None!4553 (ite ((_ is None!4553) lt!740028) lt!740029 (ite ((_ is None!4553) lt!740029) lt!740028 (ite (>= (size!17128 (_1!11756 (v!26658 lt!740029))) (size!17128 (_1!11756 (v!26658 lt!740028)))) lt!740029 lt!740028)))))))

(assert (=> b!1930488 (= lt!740029 call!118752)))

(assert (=> b!1930488 (= lt!740028 (maxPrefix!1989 thiss!23328 (t!180083 rules!3198) lt!739936))))

(declare-fun b!1930489 () Bool)

(declare-fun res!863149 () Bool)

(assert (=> b!1930489 (=> (not res!863149) (not e!1233968))))

(assert (=> b!1930489 (= res!863149 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))) (_2!11756 (get!6918 lt!740027))) lt!739936))))

(declare-fun b!1930490 () Bool)

(declare-fun res!863146 () Bool)

(assert (=> b!1930490 (=> (not res!863146) (not e!1233968))))

(assert (=> b!1930490 (= res!863146 (= (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))) (originalCharacters!4745 (_1!11756 (get!6918 lt!740027)))))))

(declare-fun b!1930491 () Bool)

(declare-fun res!863147 () Bool)

(assert (=> b!1930491 (=> (not res!863147) (not e!1233968))))

(assert (=> b!1930491 (= res!863147 (< (size!17131 (_2!11756 (get!6918 lt!740027))) (size!17131 lt!739936)))))

(declare-fun d!588586 () Bool)

(declare-fun e!1233967 () Bool)

(assert (=> d!588586 e!1233967))

(declare-fun res!863145 () Bool)

(assert (=> d!588586 (=> res!863145 e!1233967)))

(assert (=> d!588586 (= res!863145 (isEmpty!13537 lt!740027))))

(assert (=> d!588586 (= lt!740027 e!1233969)))

(declare-fun c!314004 () Bool)

(assert (=> d!588586 (= c!314004 (and ((_ is Cons!21956) rules!3198) ((_ is Nil!21956) (t!180083 rules!3198))))))

(declare-fun lt!740025 () Unit!36312)

(declare-fun lt!740026 () Unit!36312)

(assert (=> d!588586 (= lt!740025 lt!740026)))

(declare-fun isPrefix!1945 (List!22037 List!22037) Bool)

(assert (=> d!588586 (isPrefix!1945 lt!739936 lt!739936)))

(declare-fun lemmaIsPrefixRefl!1263 (List!22037 List!22037) Unit!36312)

(assert (=> d!588586 (= lt!740026 (lemmaIsPrefixRefl!1263 lt!739936 lt!739936))))

(declare-fun rulesValidInductive!1344 (LexerInterface!3551 List!22038) Bool)

(assert (=> d!588586 (rulesValidInductive!1344 thiss!23328 rules!3198)))

(assert (=> d!588586 (= (maxPrefix!1989 thiss!23328 rules!3198 lt!739936) lt!740027)))

(declare-fun b!1930483 () Bool)

(assert (=> b!1930483 (= e!1233967 e!1233968)))

(declare-fun res!863148 () Bool)

(assert (=> b!1930483 (=> (not res!863148) (not e!1233968))))

(assert (=> b!1930483 (= res!863148 (isDefined!3846 lt!740027))))

(assert (= (and d!588586 c!314004) b!1930486))

(assert (= (and d!588586 (not c!314004)) b!1930488))

(assert (= (or b!1930486 b!1930488) bm!118747))

(assert (= (and d!588586 (not res!863145)) b!1930483))

(assert (= (and b!1930483 res!863148) b!1930490))

(assert (= (and b!1930490 res!863146) b!1930491))

(assert (= (and b!1930491 res!863147) b!1930489))

(assert (= (and b!1930489 res!863149) b!1930487))

(assert (= (and b!1930487 res!863141) b!1930484))

(assert (= (and b!1930484 res!863142) b!1930485))

(declare-fun m!2368125 () Bool)

(assert (=> b!1930483 m!2368125))

(declare-fun m!2368127 () Bool)

(assert (=> b!1930489 m!2368127))

(declare-fun m!2368129 () Bool)

(assert (=> b!1930489 m!2368129))

(assert (=> b!1930489 m!2368129))

(declare-fun m!2368131 () Bool)

(assert (=> b!1930489 m!2368131))

(assert (=> b!1930489 m!2368131))

(declare-fun m!2368133 () Bool)

(assert (=> b!1930489 m!2368133))

(declare-fun m!2368135 () Bool)

(assert (=> bm!118747 m!2368135))

(assert (=> b!1930485 m!2368127))

(declare-fun m!2368137 () Bool)

(assert (=> b!1930485 m!2368137))

(assert (=> b!1930490 m!2368127))

(assert (=> b!1930490 m!2368129))

(assert (=> b!1930490 m!2368129))

(assert (=> b!1930490 m!2368131))

(declare-fun m!2368139 () Bool)

(assert (=> d!588586 m!2368139))

(declare-fun m!2368141 () Bool)

(assert (=> d!588586 m!2368141))

(declare-fun m!2368143 () Bool)

(assert (=> d!588586 m!2368143))

(declare-fun m!2368145 () Bool)

(assert (=> d!588586 m!2368145))

(declare-fun m!2368147 () Bool)

(assert (=> b!1930488 m!2368147))

(assert (=> b!1930484 m!2368127))

(assert (=> b!1930484 m!2368129))

(assert (=> b!1930484 m!2368129))

(assert (=> b!1930484 m!2368131))

(assert (=> b!1930484 m!2368131))

(declare-fun m!2368149 () Bool)

(assert (=> b!1930484 m!2368149))

(assert (=> b!1930487 m!2368127))

(declare-fun m!2368151 () Bool)

(assert (=> b!1930487 m!2368151))

(assert (=> b!1930487 m!2368151))

(declare-fun m!2368153 () Bool)

(assert (=> b!1930487 m!2368153))

(assert (=> b!1930491 m!2368127))

(declare-fun m!2368155 () Bool)

(assert (=> b!1930491 m!2368155))

(assert (=> b!1930491 m!2368089))

(assert (=> b!1930326 d!588586))

(declare-fun b!1930519 () Bool)

(declare-fun e!1233983 () Option!4553)

(declare-fun e!1233982 () Option!4553)

(assert (=> b!1930519 (= e!1233983 e!1233982)))

(declare-fun c!314011 () Bool)

(assert (=> b!1930519 (= c!314011 (and ((_ is Cons!21956) rules!3198) (not (= (tag!4388 (h!27357 rules!3198)) (tag!4388 (rule!6145 separatorToken!354))))))))

(declare-fun d!588594 () Bool)

(declare-fun e!1233981 () Bool)

(assert (=> d!588594 e!1233981))

(declare-fun res!863168 () Bool)

(assert (=> d!588594 (=> res!863168 e!1233981)))

(declare-fun lt!740042 () Option!4553)

(assert (=> d!588594 (= res!863168 (isEmpty!13538 lt!740042))))

(assert (=> d!588594 (= lt!740042 e!1233983)))

(declare-fun c!314010 () Bool)

(assert (=> d!588594 (= c!314010 (and ((_ is Cons!21956) rules!3198) (= (tag!4388 (h!27357 rules!3198)) (tag!4388 (rule!6145 separatorToken!354)))))))

(assert (=> d!588594 (rulesInvariant!3158 thiss!23328 rules!3198)))

(assert (=> d!588594 (= (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))) lt!740042)))

(declare-fun b!1930520 () Bool)

(declare-fun lt!740043 () Unit!36312)

(declare-fun lt!740041 () Unit!36312)

(assert (=> b!1930520 (= lt!740043 lt!740041)))

(assert (=> b!1930520 (rulesInvariant!3158 thiss!23328 (t!180083 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!274 (LexerInterface!3551 Rule!7676 List!22038) Unit!36312)

(assert (=> b!1930520 (= lt!740041 (lemmaInvariantOnRulesThenOnTail!274 thiss!23328 (h!27357 rules!3198) (t!180083 rules!3198)))))

(assert (=> b!1930520 (= e!1233982 (getRuleFromTag!759 thiss!23328 (t!180083 rules!3198) (tag!4388 (rule!6145 separatorToken!354))))))

(declare-fun b!1930521 () Bool)

(declare-fun e!1233984 () Bool)

(assert (=> b!1930521 (= e!1233984 (= (tag!4388 (get!6917 lt!740042)) (tag!4388 (rule!6145 separatorToken!354))))))

(declare-fun b!1930522 () Bool)

(assert (=> b!1930522 (= e!1233982 None!4552)))

(declare-fun b!1930523 () Bool)

(assert (=> b!1930523 (= e!1233981 e!1233984)))

(declare-fun res!863167 () Bool)

(assert (=> b!1930523 (=> (not res!863167) (not e!1233984))))

(assert (=> b!1930523 (= res!863167 (contains!3975 rules!3198 (get!6917 lt!740042)))))

(declare-fun b!1930524 () Bool)

(assert (=> b!1930524 (= e!1233983 (Some!4552 (h!27357 rules!3198)))))

(assert (= (and d!588594 c!314010) b!1930524))

(assert (= (and d!588594 (not c!314010)) b!1930519))

(assert (= (and b!1930519 c!314011) b!1930520))

(assert (= (and b!1930519 (not c!314011)) b!1930522))

(assert (= (and d!588594 (not res!863168)) b!1930523))

(assert (= (and b!1930523 res!863167) b!1930521))

(declare-fun m!2368191 () Bool)

(assert (=> d!588594 m!2368191))

(assert (=> d!588594 m!2367945))

(declare-fun m!2368193 () Bool)

(assert (=> b!1930520 m!2368193))

(declare-fun m!2368195 () Bool)

(assert (=> b!1930520 m!2368195))

(declare-fun m!2368197 () Bool)

(assert (=> b!1930520 m!2368197))

(declare-fun m!2368199 () Bool)

(assert (=> b!1930521 m!2368199))

(assert (=> b!1930523 m!2368199))

(assert (=> b!1930523 m!2368199))

(declare-fun m!2368201 () Bool)

(assert (=> b!1930523 m!2368201))

(assert (=> b!1930326 d!588594))

(declare-fun b!1930525 () Bool)

(declare-fun e!1233987 () Option!4553)

(declare-fun e!1233986 () Option!4553)

(assert (=> b!1930525 (= e!1233987 e!1233986)))

(declare-fun c!314013 () Bool)

(assert (=> b!1930525 (= c!314013 (and ((_ is Cons!21956) rules!3198) (not (= (tag!4388 (h!27357 rules!3198)) (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))

(declare-fun d!588598 () Bool)

(declare-fun e!1233985 () Bool)

(assert (=> d!588598 e!1233985))

(declare-fun res!863170 () Bool)

(assert (=> d!588598 (=> res!863170 e!1233985)))

(declare-fun lt!740045 () Option!4553)

(assert (=> d!588598 (= res!863170 (isEmpty!13538 lt!740045))))

(assert (=> d!588598 (= lt!740045 e!1233987)))

(declare-fun c!314012 () Bool)

(assert (=> d!588598 (= c!314012 (and ((_ is Cons!21956) rules!3198) (= (tag!4388 (h!27357 rules!3198)) (tag!4388 (rule!6145 (h!27358 tokens!598))))))))

(assert (=> d!588598 (rulesInvariant!3158 thiss!23328 rules!3198)))

(assert (=> d!588598 (= (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))) lt!740045)))

(declare-fun b!1930526 () Bool)

(declare-fun lt!740046 () Unit!36312)

(declare-fun lt!740044 () Unit!36312)

(assert (=> b!1930526 (= lt!740046 lt!740044)))

(assert (=> b!1930526 (rulesInvariant!3158 thiss!23328 (t!180083 rules!3198))))

(assert (=> b!1930526 (= lt!740044 (lemmaInvariantOnRulesThenOnTail!274 thiss!23328 (h!27357 rules!3198) (t!180083 rules!3198)))))

(assert (=> b!1930526 (= e!1233986 (getRuleFromTag!759 thiss!23328 (t!180083 rules!3198) (tag!4388 (rule!6145 (h!27358 tokens!598)))))))

(declare-fun b!1930527 () Bool)

(declare-fun e!1233988 () Bool)

(assert (=> b!1930527 (= e!1233988 (= (tag!4388 (get!6917 lt!740045)) (tag!4388 (rule!6145 (h!27358 tokens!598)))))))

(declare-fun b!1930528 () Bool)

(assert (=> b!1930528 (= e!1233986 None!4552)))

(declare-fun b!1930529 () Bool)

(assert (=> b!1930529 (= e!1233985 e!1233988)))

(declare-fun res!863169 () Bool)

(assert (=> b!1930529 (=> (not res!863169) (not e!1233988))))

(assert (=> b!1930529 (= res!863169 (contains!3975 rules!3198 (get!6917 lt!740045)))))

(declare-fun b!1930530 () Bool)

(assert (=> b!1930530 (= e!1233987 (Some!4552 (h!27357 rules!3198)))))

(assert (= (and d!588598 c!314012) b!1930530))

(assert (= (and d!588598 (not c!314012)) b!1930525))

(assert (= (and b!1930525 c!314013) b!1930526))

(assert (= (and b!1930525 (not c!314013)) b!1930528))

(assert (= (and d!588598 (not res!863170)) b!1930529))

(assert (= (and b!1930529 res!863169) b!1930527))

(declare-fun m!2368203 () Bool)

(assert (=> d!588598 m!2368203))

(assert (=> d!588598 m!2367945))

(assert (=> b!1930526 m!2368193))

(assert (=> b!1930526 m!2368195))

(declare-fun m!2368205 () Bool)

(assert (=> b!1930526 m!2368205))

(declare-fun m!2368207 () Bool)

(assert (=> b!1930527 m!2368207))

(assert (=> b!1930529 m!2368207))

(assert (=> b!1930529 m!2368207))

(declare-fun m!2368209 () Bool)

(assert (=> b!1930529 m!2368209))

(assert (=> b!1930326 d!588598))

(declare-fun d!588600 () Bool)

(assert (=> d!588600 (= (isDefined!3845 lt!739938) (not (isEmpty!13538 lt!739938)))))

(declare-fun bs!414931 () Bool)

(assert (= bs!414931 d!588600))

(declare-fun m!2368211 () Bool)

(assert (=> bs!414931 m!2368211))

(assert (=> b!1930326 d!588600))

(declare-fun bs!414933 () Bool)

(declare-fun b!1930652 () Bool)

(assert (= bs!414933 (and b!1930652 b!1930339)))

(declare-fun lambda!75284 () Int)

(assert (=> bs!414933 (not (= lambda!75284 lambda!75269))))

(declare-fun b!1930663 () Bool)

(declare-fun e!1234062 () Bool)

(assert (=> b!1930663 (= e!1234062 true)))

(declare-fun b!1930662 () Bool)

(declare-fun e!1234061 () Bool)

(assert (=> b!1930662 (= e!1234061 e!1234062)))

(declare-fun b!1930661 () Bool)

(declare-fun e!1234060 () Bool)

(assert (=> b!1930661 (= e!1234060 e!1234061)))

(assert (=> b!1930652 e!1234060))

(assert (= b!1930662 b!1930663))

(assert (= b!1930661 b!1930662))

(assert (= (and b!1930652 ((_ is Cons!21956) rules!3198)) b!1930661))

(declare-fun order!13813 () Int)

(declare-fun dynLambda!10665 (Int Int) Int)

(assert (=> b!1930663 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75284))))

(assert (=> b!1930663 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75284))))

(assert (=> b!1930652 true))

(declare-fun d!588602 () Bool)

(declare-fun c!314046 () Bool)

(assert (=> d!588602 (= c!314046 ((_ is Cons!21957) (t!180084 tokens!598)))))

(declare-fun e!1234053 () List!22037)

(assert (=> d!588602 (= (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354) e!1234053)))

(declare-fun b!1930645 () Bool)

(declare-fun e!1234050 () List!22037)

(declare-fun call!118768 () List!22037)

(declare-fun lt!740092 () List!22037)

(assert (=> b!1930645 (= e!1234050 (++!5893 call!118768 lt!740092))))

(declare-fun bm!118763 () Bool)

(declare-fun call!118772 () List!22037)

(declare-fun call!118769 () List!22037)

(assert (=> bm!118763 (= call!118772 call!118769)))

(declare-fun bm!118764 () Bool)

(declare-fun call!118771 () BalanceConc!14476)

(declare-fun call!118770 () BalanceConc!14476)

(assert (=> bm!118764 (= call!118771 call!118770)))

(declare-fun b!1930646 () Bool)

(declare-fun e!1234052 () List!22037)

(assert (=> b!1930646 (= e!1234052 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))))))

(declare-fun b!1930647 () Bool)

(declare-fun c!314045 () Bool)

(declare-fun lt!740090 () Option!4554)

(assert (=> b!1930647 (= c!314045 (and ((_ is Some!4553) lt!740090) (not (= (_1!11756 (v!26658 lt!740090)) (h!27358 (t!180084 tokens!598))))))))

(declare-fun e!1234051 () List!22037)

(assert (=> b!1930647 (= e!1234051 e!1234050)))

(declare-fun b!1930648 () Bool)

(assert (=> b!1930648 (= e!1234053 Nil!21955)))

(declare-fun bm!118765 () Bool)

(declare-fun c!314043 () Bool)

(assert (=> bm!118765 (= call!118770 (charsOf!2478 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598))))))))

(declare-fun b!1930649 () Bool)

(assert (=> b!1930649 (= e!1234052 call!118769)))

(declare-fun b!1930650 () Bool)

(assert (=> b!1930650 (= e!1234051 call!118768)))

(declare-fun b!1930651 () Bool)

(assert (=> b!1930651 (= e!1234050 Nil!21955)))

(assert (=> b!1930651 (= (print!1521 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 tokens!598)))) (printTailRec!1027 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))) 0 (BalanceConc!14477 Empty!7330)))))

(declare-fun lt!740094 () Unit!36312)

(declare-fun Unit!36316 () Unit!36312)

(assert (=> b!1930651 (= lt!740094 Unit!36316)))

(declare-fun lt!740091 () Unit!36312)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!747 (LexerInterface!3551 List!22038 List!22037 List!22037) Unit!36312)

(assert (=> b!1930651 (= lt!740091 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!747 thiss!23328 rules!3198 call!118772 lt!740092))))

(assert (=> b!1930651 false))

(declare-fun lt!740095 () Unit!36312)

(declare-fun Unit!36317 () Unit!36312)

(assert (=> b!1930651 (= lt!740095 Unit!36317)))

(assert (=> b!1930652 (= e!1234053 e!1234051)))

(declare-fun lt!740093 () Unit!36312)

(declare-fun forallContained!716 (List!22039 Int Token!7428) Unit!36312)

(assert (=> b!1930652 (= lt!740093 (forallContained!716 (t!180084 tokens!598) lambda!75284 (h!27358 (t!180084 tokens!598))))))

(assert (=> b!1930652 (= lt!740092 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 (t!180084 tokens!598)) separatorToken!354))))

(assert (=> b!1930652 (= lt!740090 (maxPrefix!1989 thiss!23328 rules!3198 (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092)))))

(assert (=> b!1930652 (= c!314043 (and ((_ is Some!4553) lt!740090) (= (_1!11756 (v!26658 lt!740090)) (h!27358 (t!180084 tokens!598)))))))

(declare-fun bm!118766 () Bool)

(declare-fun c!314044 () Bool)

(assert (=> bm!118766 (= c!314044 c!314043)))

(assert (=> bm!118766 (= call!118768 (++!5893 e!1234052 (ite c!314043 lt!740092 call!118772)))))

(declare-fun bm!118767 () Bool)

(assert (=> bm!118767 (= call!118769 (list!8887 (ite c!314043 call!118770 call!118771)))))

(assert (= (and d!588602 c!314046) b!1930652))

(assert (= (and d!588602 (not c!314046)) b!1930648))

(assert (= (and b!1930652 c!314043) b!1930650))

(assert (= (and b!1930652 (not c!314043)) b!1930647))

(assert (= (and b!1930647 c!314045) b!1930645))

(assert (= (and b!1930647 (not c!314045)) b!1930651))

(assert (= (or b!1930645 b!1930651) bm!118764))

(assert (= (or b!1930645 b!1930651) bm!118763))

(assert (= (or b!1930650 bm!118764) bm!118765))

(assert (= (or b!1930650 bm!118763) bm!118767))

(assert (= (or b!1930650 b!1930645) bm!118766))

(assert (= (and bm!118766 c!314044) b!1930649))

(assert (= (and bm!118766 (not c!314044)) b!1930646))

(declare-fun m!2368333 () Bool)

(assert (=> b!1930646 m!2368333))

(assert (=> b!1930646 m!2368333))

(declare-fun m!2368335 () Bool)

(assert (=> b!1930646 m!2368335))

(declare-fun m!2368337 () Bool)

(assert (=> bm!118766 m!2368337))

(declare-fun m!2368339 () Bool)

(assert (=> bm!118765 m!2368339))

(assert (=> b!1930652 m!2368335))

(declare-fun m!2368341 () Bool)

(assert (=> b!1930652 m!2368341))

(assert (=> b!1930652 m!2368341))

(declare-fun m!2368343 () Bool)

(assert (=> b!1930652 m!2368343))

(declare-fun m!2368345 () Bool)

(assert (=> b!1930652 m!2368345))

(assert (=> b!1930652 m!2368333))

(assert (=> b!1930652 m!2368335))

(assert (=> b!1930652 m!2368333))

(declare-fun m!2368347 () Bool)

(assert (=> b!1930652 m!2368347))

(declare-fun m!2368349 () Bool)

(assert (=> b!1930651 m!2368349))

(assert (=> b!1930651 m!2368349))

(declare-fun m!2368351 () Bool)

(assert (=> b!1930651 m!2368351))

(assert (=> b!1930651 m!2368349))

(declare-fun m!2368353 () Bool)

(assert (=> b!1930651 m!2368353))

(declare-fun m!2368355 () Bool)

(assert (=> b!1930651 m!2368355))

(declare-fun m!2368357 () Bool)

(assert (=> b!1930645 m!2368357))

(declare-fun m!2368359 () Bool)

(assert (=> bm!118767 m!2368359))

(assert (=> b!1930326 d!588602))

(declare-fun d!588630 () Bool)

(assert (=> d!588630 (= (list!8887 lt!739931) (list!8889 (c!313974 lt!739931)))))

(declare-fun bs!414934 () Bool)

(assert (= bs!414934 d!588630))

(declare-fun m!2368361 () Bool)

(assert (=> bs!414934 m!2368361))

(assert (=> b!1930326 d!588630))

(declare-fun bm!118768 () Bool)

(declare-fun call!118773 () Option!4554)

(assert (=> bm!118768 (= call!118773 (maxPrefixOneRule!1227 thiss!23328 (h!27357 rules!3198) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1930667 () Bool)

(declare-fun res!863226 () Bool)

(declare-fun e!1234064 () Bool)

(assert (=> b!1930667 (=> (not res!863226) (not e!1234064))))

(declare-fun lt!740098 () Option!4554)

(assert (=> b!1930667 (= res!863226 (matchR!2631 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))))))

(declare-fun b!1930668 () Bool)

(assert (=> b!1930668 (= e!1234064 (contains!3975 rules!3198 (rule!6145 (_1!11756 (get!6918 lt!740098)))))))

(declare-fun b!1930669 () Bool)

(declare-fun e!1234065 () Option!4554)

(assert (=> b!1930669 (= e!1234065 call!118773)))

(declare-fun b!1930670 () Bool)

(declare-fun res!863225 () Bool)

(assert (=> b!1930670 (=> (not res!863225) (not e!1234064))))

(assert (=> b!1930670 (= res!863225 (= (value!123824 (_1!11756 (get!6918 lt!740098))) (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740098)))))))))

(declare-fun b!1930671 () Bool)

(declare-fun lt!740100 () Option!4554)

(declare-fun lt!740099 () Option!4554)

(assert (=> b!1930671 (= e!1234065 (ite (and ((_ is None!4553) lt!740100) ((_ is None!4553) lt!740099)) None!4553 (ite ((_ is None!4553) lt!740099) lt!740100 (ite ((_ is None!4553) lt!740100) lt!740099 (ite (>= (size!17128 (_1!11756 (v!26658 lt!740100))) (size!17128 (_1!11756 (v!26658 lt!740099)))) lt!740100 lt!740099)))))))

(assert (=> b!1930671 (= lt!740100 call!118773)))

(assert (=> b!1930671 (= lt!740099 (maxPrefix!1989 thiss!23328 (t!180083 rules!3198) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1930672 () Bool)

(declare-fun res!863231 () Bool)

(assert (=> b!1930672 (=> (not res!863231) (not e!1234064))))

(assert (=> b!1930672 (= res!863231 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))) (_2!11756 (get!6918 lt!740098))) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1930673 () Bool)

(declare-fun res!863228 () Bool)

(assert (=> b!1930673 (=> (not res!863228) (not e!1234064))))

(assert (=> b!1930673 (= res!863228 (= (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))) (originalCharacters!4745 (_1!11756 (get!6918 lt!740098)))))))

(declare-fun b!1930674 () Bool)

(declare-fun res!863229 () Bool)

(assert (=> b!1930674 (=> (not res!863229) (not e!1234064))))

(assert (=> b!1930674 (= res!863229 (< (size!17131 (_2!11756 (get!6918 lt!740098))) (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun d!588632 () Bool)

(declare-fun e!1234063 () Bool)

(assert (=> d!588632 e!1234063))

(declare-fun res!863227 () Bool)

(assert (=> d!588632 (=> res!863227 e!1234063)))

(assert (=> d!588632 (= res!863227 (isEmpty!13537 lt!740098))))

(assert (=> d!588632 (= lt!740098 e!1234065)))

(declare-fun c!314047 () Bool)

(assert (=> d!588632 (= c!314047 (and ((_ is Cons!21956) rules!3198) ((_ is Nil!21956) (t!180083 rules!3198))))))

(declare-fun lt!740096 () Unit!36312)

(declare-fun lt!740097 () Unit!36312)

(assert (=> d!588632 (= lt!740096 lt!740097)))

(assert (=> d!588632 (isPrefix!1945 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))

(assert (=> d!588632 (= lt!740097 (lemmaIsPrefixRefl!1263 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(assert (=> d!588632 (rulesValidInductive!1344 thiss!23328 rules!3198)))

(assert (=> d!588632 (= (maxPrefix!1989 thiss!23328 rules!3198 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) lt!740098)))

(declare-fun b!1930666 () Bool)

(assert (=> b!1930666 (= e!1234063 e!1234064)))

(declare-fun res!863230 () Bool)

(assert (=> b!1930666 (=> (not res!863230) (not e!1234064))))

(assert (=> b!1930666 (= res!863230 (isDefined!3846 lt!740098))))

(assert (= (and d!588632 c!314047) b!1930669))

(assert (= (and d!588632 (not c!314047)) b!1930671))

(assert (= (or b!1930669 b!1930671) bm!118768))

(assert (= (and d!588632 (not res!863227)) b!1930666))

(assert (= (and b!1930666 res!863230) b!1930673))

(assert (= (and b!1930673 res!863228) b!1930674))

(assert (= (and b!1930674 res!863229) b!1930672))

(assert (= (and b!1930672 res!863231) b!1930670))

(assert (= (and b!1930670 res!863225) b!1930667))

(assert (= (and b!1930667 res!863226) b!1930668))

(declare-fun m!2368363 () Bool)

(assert (=> b!1930666 m!2368363))

(declare-fun m!2368365 () Bool)

(assert (=> b!1930672 m!2368365))

(declare-fun m!2368367 () Bool)

(assert (=> b!1930672 m!2368367))

(assert (=> b!1930672 m!2368367))

(declare-fun m!2368369 () Bool)

(assert (=> b!1930672 m!2368369))

(assert (=> b!1930672 m!2368369))

(declare-fun m!2368371 () Bool)

(assert (=> b!1930672 m!2368371))

(assert (=> bm!118768 m!2367899))

(declare-fun m!2368373 () Bool)

(assert (=> bm!118768 m!2368373))

(assert (=> b!1930668 m!2368365))

(declare-fun m!2368375 () Bool)

(assert (=> b!1930668 m!2368375))

(assert (=> b!1930673 m!2368365))

(assert (=> b!1930673 m!2368367))

(assert (=> b!1930673 m!2368367))

(assert (=> b!1930673 m!2368369))

(declare-fun m!2368377 () Bool)

(assert (=> d!588632 m!2368377))

(assert (=> d!588632 m!2367899))

(assert (=> d!588632 m!2367899))

(declare-fun m!2368379 () Bool)

(assert (=> d!588632 m!2368379))

(assert (=> d!588632 m!2367899))

(assert (=> d!588632 m!2367899))

(declare-fun m!2368381 () Bool)

(assert (=> d!588632 m!2368381))

(assert (=> d!588632 m!2368145))

(assert (=> b!1930671 m!2367899))

(declare-fun m!2368383 () Bool)

(assert (=> b!1930671 m!2368383))

(assert (=> b!1930667 m!2368365))

(assert (=> b!1930667 m!2368367))

(assert (=> b!1930667 m!2368367))

(assert (=> b!1930667 m!2368369))

(assert (=> b!1930667 m!2368369))

(declare-fun m!2368385 () Bool)

(assert (=> b!1930667 m!2368385))

(assert (=> b!1930670 m!2368365))

(declare-fun m!2368387 () Bool)

(assert (=> b!1930670 m!2368387))

(assert (=> b!1930670 m!2368387))

(declare-fun m!2368389 () Bool)

(assert (=> b!1930670 m!2368389))

(assert (=> b!1930674 m!2368365))

(declare-fun m!2368391 () Bool)

(assert (=> b!1930674 m!2368391))

(assert (=> b!1930674 m!2367899))

(declare-fun m!2368393 () Bool)

(assert (=> b!1930674 m!2368393))

(assert (=> b!1930326 d!588632))

(declare-fun d!588634 () Bool)

(assert (=> d!588634 (= (list!8887 (charsOf!2478 separatorToken!354)) (list!8889 (c!313974 (charsOf!2478 separatorToken!354))))))

(declare-fun bs!414935 () Bool)

(assert (= bs!414935 d!588634))

(declare-fun m!2368395 () Bool)

(assert (=> bs!414935 m!2368395))

(assert (=> b!1930326 d!588634))

(declare-fun d!588636 () Bool)

(declare-fun lt!740103 () BalanceConc!14476)

(assert (=> d!588636 (= (list!8887 lt!740103) (originalCharacters!4745 (h!27358 tokens!598)))))

(assert (=> d!588636 (= lt!740103 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))))

(assert (=> d!588636 (= (charsOf!2478 (h!27358 tokens!598)) lt!740103)))

(declare-fun b_lambda!64073 () Bool)

(assert (=> (not b_lambda!64073) (not d!588636)))

(declare-fun t!180133 () Bool)

(declare-fun tb!118463 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180133) tb!118463))

(declare-fun b!1930675 () Bool)

(declare-fun e!1234066 () Bool)

(declare-fun tp!551099 () Bool)

(assert (=> b!1930675 (= e!1234066 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))) tp!551099))))

(declare-fun result!143090 () Bool)

(assert (=> tb!118463 (= result!143090 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))) e!1234066))))

(assert (= tb!118463 b!1930675))

(declare-fun m!2368397 () Bool)

(assert (=> b!1930675 m!2368397))

(declare-fun m!2368399 () Bool)

(assert (=> tb!118463 m!2368399))

(assert (=> d!588636 t!180133))

(declare-fun b_and!151715 () Bool)

(assert (= b_and!151691 (and (=> t!180133 result!143090) b_and!151715)))

(declare-fun t!180135 () Bool)

(declare-fun tb!118465 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180135) tb!118465))

(declare-fun result!143092 () Bool)

(assert (= result!143092 result!143090))

(assert (=> d!588636 t!180135))

(declare-fun b_and!151717 () Bool)

(assert (= b_and!151693 (and (=> t!180135 result!143092) b_and!151717)))

(declare-fun t!180137 () Bool)

(declare-fun tb!118467 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180137) tb!118467))

(declare-fun result!143094 () Bool)

(assert (= result!143094 result!143090))

(assert (=> d!588636 t!180137))

(declare-fun b_and!151719 () Bool)

(assert (= b_and!151695 (and (=> t!180137 result!143094) b_and!151719)))

(declare-fun m!2368401 () Bool)

(assert (=> d!588636 m!2368401))

(declare-fun m!2368403 () Bool)

(assert (=> d!588636 m!2368403))

(assert (=> b!1930326 d!588636))

(declare-fun d!588638 () Bool)

(declare-fun fromListB!1242 (List!22037) BalanceConc!14476)

(assert (=> d!588638 (= (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))) (fromListB!1242 (originalCharacters!4745 (h!27358 tokens!598))))))

(declare-fun bs!414936 () Bool)

(assert (= bs!414936 d!588638))

(declare-fun m!2368405 () Bool)

(assert (=> bs!414936 m!2368405))

(assert (=> b!1930326 d!588638))

(declare-fun b!1930691 () Bool)

(declare-fun e!1234080 () Bool)

(assert (=> b!1930691 (= e!1234080 true)))

(declare-fun d!588640 () Bool)

(assert (=> d!588640 e!1234080))

(assert (= d!588640 b!1930691))

(declare-fun lambda!75289 () Int)

(declare-fun order!13815 () Int)

(declare-fun dynLambda!10666 (Int Int) Int)

(assert (=> b!1930691 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (dynLambda!10666 order!13815 lambda!75289))))

(assert (=> b!1930691 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (dynLambda!10666 order!13815 lambda!75289))))

(assert (=> d!588640 (= (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))))))

(declare-fun lt!740108 () Unit!36312)

(declare-fun Forall2of!205 (Int BalanceConc!14476 BalanceConc!14476) Unit!36312)

(assert (=> d!588640 (= lt!740108 (Forall2of!205 lambda!75289 lt!739931 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))))))

(assert (=> d!588640 (= (list!8887 lt!739931) (list!8887 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))))))

(assert (=> d!588640 (= (lemmaEqSameImage!624 (transformation!3938 (rule!6145 (h!27358 tokens!598))) lt!739931 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))) lt!740108)))

(declare-fun b_lambda!64075 () Bool)

(assert (=> (not b_lambda!64075) (not d!588640)))

(assert (=> d!588640 t!180111))

(declare-fun b_and!151721 () Bool)

(assert (= b_and!151697 (and (=> t!180111 result!143070) b_and!151721)))

(assert (=> d!588640 t!180113))

(declare-fun b_and!151723 () Bool)

(assert (= b_and!151699 (and (=> t!180113 result!143074) b_and!151723)))

(assert (=> d!588640 t!180115))

(declare-fun b_and!151725 () Bool)

(assert (= b_and!151701 (and (=> t!180115 result!143076) b_and!151725)))

(declare-fun b_lambda!64077 () Bool)

(assert (=> (not b_lambda!64077) (not d!588640)))

(declare-fun tb!118469 () Bool)

(declare-fun t!180141 () Bool)

(assert (=> (and b!1930322 (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180141) tb!118469))

(declare-fun result!143096 () Bool)

(assert (=> tb!118469 (= result!143096 (inv!21 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(declare-fun m!2368407 () Bool)

(assert (=> tb!118469 m!2368407))

(assert (=> d!588640 t!180141))

(declare-fun b_and!151727 () Bool)

(assert (= b_and!151721 (and (=> t!180141 result!143096) b_and!151727)))

(declare-fun t!180143 () Bool)

(declare-fun tb!118471 () Bool)

(assert (=> (and b!1930332 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180143) tb!118471))

(declare-fun result!143098 () Bool)

(assert (= result!143098 result!143096))

(assert (=> d!588640 t!180143))

(declare-fun b_and!151729 () Bool)

(assert (= b_and!151723 (and (=> t!180143 result!143098) b_and!151729)))

(declare-fun t!180145 () Bool)

(declare-fun tb!118473 () Bool)

(assert (=> (and b!1930324 (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180145) tb!118473))

(declare-fun result!143100 () Bool)

(assert (= result!143100 result!143096))

(assert (=> d!588640 t!180145))

(declare-fun b_and!151731 () Bool)

(assert (= b_and!151725 (and (=> t!180145 result!143100) b_and!151731)))

(assert (=> d!588640 m!2367889))

(declare-fun m!2368415 () Bool)

(assert (=> d!588640 m!2368415))

(assert (=> d!588640 m!2367889))

(declare-fun m!2368417 () Bool)

(assert (=> d!588640 m!2368417))

(assert (=> d!588640 m!2367913))

(assert (=> d!588640 m!2368061))

(assert (=> d!588640 m!2367889))

(declare-fun m!2368421 () Bool)

(assert (=> d!588640 m!2368421))

(assert (=> b!1930326 d!588640))

(declare-fun d!588646 () Bool)

(declare-fun lt!740110 () BalanceConc!14476)

(assert (=> d!588646 (= (list!8887 lt!740110) (originalCharacters!4745 separatorToken!354))))

(assert (=> d!588646 (= lt!740110 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))))

(assert (=> d!588646 (= (charsOf!2478 separatorToken!354) lt!740110)))

(declare-fun b_lambda!64079 () Bool)

(assert (=> (not b_lambda!64079) (not d!588646)))

(declare-fun t!180147 () Bool)

(declare-fun tb!118475 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) t!180147) tb!118475))

(declare-fun b!1930693 () Bool)

(declare-fun e!1234083 () Bool)

(declare-fun tp!551100 () Bool)

(assert (=> b!1930693 (= e!1234083 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))) tp!551100))))

(declare-fun result!143102 () Bool)

(assert (=> tb!118475 (= result!143102 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))) e!1234083))))

(assert (= tb!118475 b!1930693))

(declare-fun m!2368425 () Bool)

(assert (=> b!1930693 m!2368425))

(declare-fun m!2368427 () Bool)

(assert (=> tb!118475 m!2368427))

(assert (=> d!588646 t!180147))

(declare-fun b_and!151733 () Bool)

(assert (= b_and!151715 (and (=> t!180147 result!143102) b_and!151733)))

(declare-fun tb!118477 () Bool)

(declare-fun t!180149 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) t!180149) tb!118477))

(declare-fun result!143104 () Bool)

(assert (= result!143104 result!143102))

(assert (=> d!588646 t!180149))

(declare-fun b_and!151735 () Bool)

(assert (= b_and!151717 (and (=> t!180149 result!143104) b_and!151735)))

(declare-fun tb!118479 () Bool)

(declare-fun t!180151 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) t!180151) tb!118479))

(declare-fun result!143106 () Bool)

(assert (= result!143106 result!143102))

(assert (=> d!588646 t!180151))

(declare-fun b_and!151737 () Bool)

(assert (= b_and!151719 (and (=> t!180151 result!143106) b_and!151737)))

(declare-fun m!2368429 () Bool)

(assert (=> d!588646 m!2368429))

(declare-fun m!2368431 () Bool)

(assert (=> d!588646 m!2368431))

(assert (=> b!1930326 d!588646))

(declare-fun d!588650 () Bool)

(declare-fun e!1234084 () Bool)

(assert (=> d!588650 e!1234084))

(declare-fun res!863241 () Bool)

(assert (=> d!588650 (=> (not res!863241) (not e!1234084))))

(assert (=> d!588650 (= res!863241 (isDefined!3845 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))))))

(declare-fun lt!740111 () Unit!36312)

(assert (=> d!588650 (= lt!740111 (choose!11992 thiss!23328 rules!3198 lt!739936 (h!27358 tokens!598)))))

(assert (=> d!588650 (rulesInvariant!3158 thiss!23328 rules!3198)))

(assert (=> d!588650 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!759 thiss!23328 rules!3198 lt!739936 (h!27358 tokens!598)) lt!740111)))

(declare-fun b!1930694 () Bool)

(declare-fun res!863242 () Bool)

(assert (=> b!1930694 (=> (not res!863242) (not e!1234084))))

(assert (=> b!1930694 (= res!863242 (matchR!2631 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))) (list!8887 (charsOf!2478 (h!27358 tokens!598)))))))

(declare-fun b!1930695 () Bool)

(assert (=> b!1930695 (= e!1234084 (= (rule!6145 (h!27358 tokens!598)) (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))

(assert (= (and d!588650 res!863241) b!1930694))

(assert (= (and b!1930694 res!863242) b!1930695))

(assert (=> d!588650 m!2367907))

(assert (=> d!588650 m!2367907))

(declare-fun m!2368433 () Bool)

(assert (=> d!588650 m!2368433))

(declare-fun m!2368435 () Bool)

(assert (=> d!588650 m!2368435))

(assert (=> d!588650 m!2367945))

(assert (=> b!1930694 m!2367897))

(assert (=> b!1930694 m!2367897))

(declare-fun m!2368437 () Bool)

(assert (=> b!1930694 m!2368437))

(assert (=> b!1930694 m!2367907))

(declare-fun m!2368439 () Bool)

(assert (=> b!1930694 m!2368439))

(assert (=> b!1930694 m!2368437))

(declare-fun m!2368441 () Bool)

(assert (=> b!1930694 m!2368441))

(assert (=> b!1930694 m!2367907))

(assert (=> b!1930695 m!2367907))

(assert (=> b!1930695 m!2367907))

(assert (=> b!1930695 m!2368439))

(assert (=> b!1930326 d!588650))

(declare-fun d!588652 () Bool)

(assert (=> d!588652 (= (get!6918 lt!739933) (v!26658 lt!739933))))

(assert (=> b!1930336 d!588652))

(declare-fun d!588654 () Bool)

(declare-fun res!863245 () Bool)

(declare-fun e!1234087 () Bool)

(assert (=> d!588654 (=> (not res!863245) (not e!1234087))))

(declare-fun rulesValid!1456 (LexerInterface!3551 List!22038) Bool)

(assert (=> d!588654 (= res!863245 (rulesValid!1456 thiss!23328 rules!3198))))

(assert (=> d!588654 (= (rulesInvariant!3158 thiss!23328 rules!3198) e!1234087)))

(declare-fun b!1930698 () Bool)

(declare-datatypes ((List!22041 0))(
  ( (Nil!21959) (Cons!21959 (h!27360 String!25488) (t!180198 List!22041)) )
))
(declare-fun noDuplicateTag!1454 (LexerInterface!3551 List!22038 List!22041) Bool)

(assert (=> b!1930698 (= e!1234087 (noDuplicateTag!1454 thiss!23328 rules!3198 Nil!21959))))

(assert (= (and d!588654 res!863245) b!1930698))

(declare-fun m!2368443 () Bool)

(assert (=> d!588654 m!2368443))

(declare-fun m!2368445 () Bool)

(assert (=> b!1930698 m!2368445))

(assert (=> b!1930325 d!588654))

(declare-fun d!588656 () Bool)

(assert (=> d!588656 (= (inv!29039 (tag!4388 (rule!6145 separatorToken!354))) (= (mod (str.len (value!123823 (tag!4388 (rule!6145 separatorToken!354)))) 2) 0))))

(assert (=> b!1930334 d!588656))

(declare-fun d!588658 () Bool)

(declare-fun res!863248 () Bool)

(declare-fun e!1234090 () Bool)

(assert (=> d!588658 (=> (not res!863248) (not e!1234090))))

(declare-fun semiInverseModEq!1569 (Int Int) Bool)

(assert (=> d!588658 (= res!863248 (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))))))

(assert (=> d!588658 (= (inv!29043 (transformation!3938 (rule!6145 separatorToken!354))) e!1234090)))

(declare-fun b!1930701 () Bool)

(declare-fun equivClasses!1496 (Int Int) Bool)

(assert (=> b!1930701 (= e!1234090 (equivClasses!1496 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))))))

(assert (= (and d!588658 res!863248) b!1930701))

(declare-fun m!2368447 () Bool)

(assert (=> d!588658 m!2368447))

(declare-fun m!2368449 () Bool)

(assert (=> b!1930701 m!2368449))

(assert (=> b!1930334 d!588658))

(declare-fun b!1930730 () Bool)

(declare-fun e!1234105 () Bool)

(declare-fun lt!740114 () Bool)

(declare-fun call!118776 () Bool)

(assert (=> b!1930730 (= e!1234105 (= lt!740114 call!118776))))

(declare-fun bm!118771 () Bool)

(declare-fun isEmpty!13541 (List!22037) Bool)

(assert (=> bm!118771 (= call!118776 (isEmpty!13541 lt!739943))))

(declare-fun b!1930731 () Bool)

(declare-fun e!1234108 () Bool)

(declare-fun head!4504 (List!22037) C!10872)

(assert (=> b!1930731 (= e!1234108 (= (head!4504 lt!739943) (c!313975 (regex!3938 lt!739932))))))

(declare-fun b!1930732 () Bool)

(declare-fun e!1234109 () Bool)

(assert (=> b!1930732 (= e!1234109 (not lt!740114))))

(declare-fun b!1930733 () Bool)

(declare-fun e!1234107 () Bool)

(assert (=> b!1930733 (= e!1234107 (not (= (head!4504 lt!739943) (c!313975 (regex!3938 lt!739932)))))))

(declare-fun b!1930734 () Bool)

(declare-fun res!863271 () Bool)

(declare-fun e!1234111 () Bool)

(assert (=> b!1930734 (=> res!863271 e!1234111)))

(assert (=> b!1930734 (= res!863271 (not ((_ is ElementMatch!5363) (regex!3938 lt!739932))))))

(assert (=> b!1930734 (= e!1234109 e!1234111)))

(declare-fun d!588660 () Bool)

(assert (=> d!588660 e!1234105))

(declare-fun c!314055 () Bool)

(assert (=> d!588660 (= c!314055 ((_ is EmptyExpr!5363) (regex!3938 lt!739932)))))

(declare-fun e!1234110 () Bool)

(assert (=> d!588660 (= lt!740114 e!1234110)))

(declare-fun c!314056 () Bool)

(assert (=> d!588660 (= c!314056 (isEmpty!13541 lt!739943))))

(declare-fun validRegex!2139 (Regex!5363) Bool)

(assert (=> d!588660 (validRegex!2139 (regex!3938 lt!739932))))

(assert (=> d!588660 (= (matchR!2631 (regex!3938 lt!739932) lt!739943) lt!740114)))

(declare-fun b!1930735 () Bool)

(declare-fun derivativeStep!1372 (Regex!5363 C!10872) Regex!5363)

(declare-fun tail!2990 (List!22037) List!22037)

(assert (=> b!1930735 (= e!1234110 (matchR!2631 (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943)) (tail!2990 lt!739943)))))

(declare-fun b!1930736 () Bool)

(declare-fun res!863267 () Bool)

(assert (=> b!1930736 (=> (not res!863267) (not e!1234108))))

(assert (=> b!1930736 (= res!863267 (not call!118776))))

(declare-fun b!1930737 () Bool)

(declare-fun e!1234106 () Bool)

(assert (=> b!1930737 (= e!1234111 e!1234106)))

(declare-fun res!863268 () Bool)

(assert (=> b!1930737 (=> (not res!863268) (not e!1234106))))

(assert (=> b!1930737 (= res!863268 (not lt!740114))))

(declare-fun b!1930738 () Bool)

(assert (=> b!1930738 (= e!1234106 e!1234107)))

(declare-fun res!863269 () Bool)

(assert (=> b!1930738 (=> res!863269 e!1234107)))

(assert (=> b!1930738 (= res!863269 call!118776)))

(declare-fun b!1930739 () Bool)

(declare-fun res!863270 () Bool)

(assert (=> b!1930739 (=> res!863270 e!1234111)))

(assert (=> b!1930739 (= res!863270 e!1234108)))

(declare-fun res!863272 () Bool)

(assert (=> b!1930739 (=> (not res!863272) (not e!1234108))))

(assert (=> b!1930739 (= res!863272 lt!740114)))

(declare-fun b!1930740 () Bool)

(declare-fun res!863266 () Bool)

(assert (=> b!1930740 (=> res!863266 e!1234107)))

(assert (=> b!1930740 (= res!863266 (not (isEmpty!13541 (tail!2990 lt!739943))))))

(declare-fun b!1930741 () Bool)

(declare-fun res!863265 () Bool)

(assert (=> b!1930741 (=> (not res!863265) (not e!1234108))))

(assert (=> b!1930741 (= res!863265 (isEmpty!13541 (tail!2990 lt!739943)))))

(declare-fun b!1930742 () Bool)

(declare-fun nullable!1613 (Regex!5363) Bool)

(assert (=> b!1930742 (= e!1234110 (nullable!1613 (regex!3938 lt!739932)))))

(declare-fun b!1930743 () Bool)

(assert (=> b!1930743 (= e!1234105 e!1234109)))

(declare-fun c!314054 () Bool)

(assert (=> b!1930743 (= c!314054 ((_ is EmptyLang!5363) (regex!3938 lt!739932)))))

(assert (= (and d!588660 c!314056) b!1930742))

(assert (= (and d!588660 (not c!314056)) b!1930735))

(assert (= (and d!588660 c!314055) b!1930730))

(assert (= (and d!588660 (not c!314055)) b!1930743))

(assert (= (and b!1930743 c!314054) b!1930732))

(assert (= (and b!1930743 (not c!314054)) b!1930734))

(assert (= (and b!1930734 (not res!863271)) b!1930739))

(assert (= (and b!1930739 res!863272) b!1930736))

(assert (= (and b!1930736 res!863267) b!1930741))

(assert (= (and b!1930741 res!863265) b!1930731))

(assert (= (and b!1930739 (not res!863270)) b!1930737))

(assert (= (and b!1930737 res!863268) b!1930738))

(assert (= (and b!1930738 (not res!863269)) b!1930740))

(assert (= (and b!1930740 (not res!863266)) b!1930733))

(assert (= (or b!1930730 b!1930736 b!1930738) bm!118771))

(declare-fun m!2368451 () Bool)

(assert (=> b!1930733 m!2368451))

(declare-fun m!2368453 () Bool)

(assert (=> bm!118771 m!2368453))

(assert (=> b!1930731 m!2368451))

(assert (=> d!588660 m!2368453))

(declare-fun m!2368455 () Bool)

(assert (=> d!588660 m!2368455))

(declare-fun m!2368457 () Bool)

(assert (=> b!1930740 m!2368457))

(assert (=> b!1930740 m!2368457))

(declare-fun m!2368459 () Bool)

(assert (=> b!1930740 m!2368459))

(declare-fun m!2368461 () Bool)

(assert (=> b!1930742 m!2368461))

(assert (=> b!1930735 m!2368451))

(assert (=> b!1930735 m!2368451))

(declare-fun m!2368463 () Bool)

(assert (=> b!1930735 m!2368463))

(assert (=> b!1930735 m!2368457))

(assert (=> b!1930735 m!2368463))

(assert (=> b!1930735 m!2368457))

(declare-fun m!2368465 () Bool)

(assert (=> b!1930735 m!2368465))

(assert (=> b!1930741 m!2368457))

(assert (=> b!1930741 m!2368457))

(assert (=> b!1930741 m!2368459))

(assert (=> b!1930333 d!588660))

(declare-fun d!588662 () Bool)

(assert (=> d!588662 (= (get!6917 lt!739940) (v!26657 lt!739940))))

(assert (=> b!1930333 d!588662))

(declare-fun b!1930754 () Bool)

(declare-fun e!1234119 () Bool)

(declare-fun e!1234120 () Bool)

(assert (=> b!1930754 (= e!1234119 e!1234120)))

(declare-fun c!314061 () Bool)

(assert (=> b!1930754 (= c!314061 ((_ is IntegerValue!12223) (value!123824 separatorToken!354)))))

(declare-fun b!1930755 () Bool)

(declare-fun res!863275 () Bool)

(declare-fun e!1234118 () Bool)

(assert (=> b!1930755 (=> res!863275 e!1234118)))

(assert (=> b!1930755 (= res!863275 (not ((_ is IntegerValue!12224) (value!123824 separatorToken!354))))))

(assert (=> b!1930755 (= e!1234120 e!1234118)))

(declare-fun b!1930756 () Bool)

(declare-fun inv!17 (TokenValue!4074) Bool)

(assert (=> b!1930756 (= e!1234120 (inv!17 (value!123824 separatorToken!354)))))

(declare-fun d!588664 () Bool)

(declare-fun c!314062 () Bool)

(assert (=> d!588664 (= c!314062 ((_ is IntegerValue!12222) (value!123824 separatorToken!354)))))

(assert (=> d!588664 (= (inv!21 (value!123824 separatorToken!354)) e!1234119)))

(declare-fun b!1930757 () Bool)

(declare-fun inv!16 (TokenValue!4074) Bool)

(assert (=> b!1930757 (= e!1234119 (inv!16 (value!123824 separatorToken!354)))))

(declare-fun b!1930758 () Bool)

(declare-fun inv!15 (TokenValue!4074) Bool)

(assert (=> b!1930758 (= e!1234118 (inv!15 (value!123824 separatorToken!354)))))

(assert (= (and d!588664 c!314062) b!1930757))

(assert (= (and d!588664 (not c!314062)) b!1930754))

(assert (= (and b!1930754 c!314061) b!1930756))

(assert (= (and b!1930754 (not c!314061)) b!1930755))

(assert (= (and b!1930755 (not res!863275)) b!1930758))

(declare-fun m!2368467 () Bool)

(assert (=> b!1930756 m!2368467))

(declare-fun m!2368469 () Bool)

(assert (=> b!1930757 m!2368469))

(declare-fun m!2368471 () Bool)

(assert (=> b!1930758 m!2368471))

(assert (=> b!1930342 d!588664))

(declare-fun d!588666 () Bool)

(assert (=> d!588666 (= (inv!29039 (tag!4388 (rule!6145 (h!27358 tokens!598)))) (= (mod (str.len (value!123823 (tag!4388 (rule!6145 (h!27358 tokens!598))))) 2) 0))))

(assert (=> b!1930331 d!588666))

(declare-fun d!588668 () Bool)

(declare-fun res!863276 () Bool)

(declare-fun e!1234121 () Bool)

(assert (=> d!588668 (=> (not res!863276) (not e!1234121))))

(assert (=> d!588668 (= res!863276 (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))))))

(assert (=> d!588668 (= (inv!29043 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) e!1234121)))

(declare-fun b!1930759 () Bool)

(assert (=> b!1930759 (= e!1234121 (equivClasses!1496 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))))))

(assert (= (and d!588668 res!863276) b!1930759))

(declare-fun m!2368473 () Bool)

(assert (=> d!588668 m!2368473))

(declare-fun m!2368475 () Bool)

(assert (=> b!1930759 m!2368475))

(assert (=> b!1930331 d!588668))

(declare-fun d!588670 () Bool)

(declare-fun res!863281 () Bool)

(declare-fun e!1234124 () Bool)

(assert (=> d!588670 (=> (not res!863281) (not e!1234124))))

(assert (=> d!588670 (= res!863281 (not (isEmpty!13541 (originalCharacters!4745 (h!27358 tokens!598)))))))

(assert (=> d!588670 (= (inv!29042 (h!27358 tokens!598)) e!1234124)))

(declare-fun b!1930764 () Bool)

(declare-fun res!863282 () Bool)

(assert (=> b!1930764 (=> (not res!863282) (not e!1234124))))

(assert (=> b!1930764 (= res!863282 (= (originalCharacters!4745 (h!27358 tokens!598)) (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))))))

(declare-fun b!1930765 () Bool)

(assert (=> b!1930765 (= e!1234124 (= (size!17128 (h!27358 tokens!598)) (size!17131 (originalCharacters!4745 (h!27358 tokens!598)))))))

(assert (= (and d!588670 res!863281) b!1930764))

(assert (= (and b!1930764 res!863282) b!1930765))

(declare-fun b_lambda!64081 () Bool)

(assert (=> (not b_lambda!64081) (not b!1930764)))

(assert (=> b!1930764 t!180133))

(declare-fun b_and!151739 () Bool)

(assert (= b_and!151733 (and (=> t!180133 result!143090) b_and!151739)))

(assert (=> b!1930764 t!180135))

(declare-fun b_and!151741 () Bool)

(assert (= b_and!151735 (and (=> t!180135 result!143092) b_and!151741)))

(assert (=> b!1930764 t!180137))

(declare-fun b_and!151743 () Bool)

(assert (= b_and!151737 (and (=> t!180137 result!143094) b_and!151743)))

(declare-fun m!2368477 () Bool)

(assert (=> d!588670 m!2368477))

(assert (=> b!1930764 m!2368403))

(assert (=> b!1930764 m!2368403))

(declare-fun m!2368479 () Bool)

(assert (=> b!1930764 m!2368479))

(declare-fun m!2368481 () Bool)

(assert (=> b!1930765 m!2368481))

(assert (=> b!1930320 d!588670))

(declare-fun d!588672 () Bool)

(assert (=> d!588672 (= (isEmpty!13534 rules!3198) ((_ is Nil!21956) rules!3198))))

(assert (=> b!1930330 d!588672))

(declare-fun d!588674 () Bool)

(declare-fun res!863287 () Bool)

(declare-fun e!1234129 () Bool)

(assert (=> d!588674 (=> res!863287 e!1234129)))

(assert (=> d!588674 (= res!863287 (not ((_ is Cons!21956) rules!3198)))))

(assert (=> d!588674 (= (sepAndNonSepRulesDisjointChars!1036 rules!3198 rules!3198) e!1234129)))

(declare-fun b!1930770 () Bool)

(declare-fun e!1234130 () Bool)

(assert (=> b!1930770 (= e!1234129 e!1234130)))

(declare-fun res!863288 () Bool)

(assert (=> b!1930770 (=> (not res!863288) (not e!1234130))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!453 (Rule!7676 List!22038) Bool)

(assert (=> b!1930770 (= res!863288 (ruleDisjointCharsFromAllFromOtherType!453 (h!27357 rules!3198) rules!3198))))

(declare-fun b!1930771 () Bool)

(assert (=> b!1930771 (= e!1234130 (sepAndNonSepRulesDisjointChars!1036 rules!3198 (t!180083 rules!3198)))))

(assert (= (and d!588674 (not res!863287)) b!1930770))

(assert (= (and b!1930770 res!863288) b!1930771))

(declare-fun m!2368483 () Bool)

(assert (=> b!1930770 m!2368483))

(declare-fun m!2368485 () Bool)

(assert (=> b!1930771 m!2368485))

(assert (=> b!1930319 d!588674))

(declare-fun d!588676 () Bool)

(declare-fun res!863289 () Bool)

(declare-fun e!1234131 () Bool)

(assert (=> d!588676 (=> (not res!863289) (not e!1234131))))

(assert (=> d!588676 (= res!863289 (not (isEmpty!13541 (originalCharacters!4745 separatorToken!354))))))

(assert (=> d!588676 (= (inv!29042 separatorToken!354) e!1234131)))

(declare-fun b!1930772 () Bool)

(declare-fun res!863290 () Bool)

(assert (=> b!1930772 (=> (not res!863290) (not e!1234131))))

(assert (=> b!1930772 (= res!863290 (= (originalCharacters!4745 separatorToken!354) (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))))))

(declare-fun b!1930773 () Bool)

(assert (=> b!1930773 (= e!1234131 (= (size!17128 separatorToken!354) (size!17131 (originalCharacters!4745 separatorToken!354))))))

(assert (= (and d!588676 res!863289) b!1930772))

(assert (= (and b!1930772 res!863290) b!1930773))

(declare-fun b_lambda!64083 () Bool)

(assert (=> (not b_lambda!64083) (not b!1930772)))

(assert (=> b!1930772 t!180147))

(declare-fun b_and!151745 () Bool)

(assert (= b_and!151739 (and (=> t!180147 result!143102) b_and!151745)))

(assert (=> b!1930772 t!180149))

(declare-fun b_and!151747 () Bool)

(assert (= b_and!151741 (and (=> t!180149 result!143104) b_and!151747)))

(assert (=> b!1930772 t!180151))

(declare-fun b_and!151749 () Bool)

(assert (= b_and!151743 (and (=> t!180151 result!143106) b_and!151749)))

(declare-fun m!2368487 () Bool)

(assert (=> d!588676 m!2368487))

(assert (=> b!1930772 m!2368431))

(assert (=> b!1930772 m!2368431))

(declare-fun m!2368489 () Bool)

(assert (=> b!1930772 m!2368489))

(declare-fun m!2368491 () Bool)

(assert (=> b!1930773 m!2368491))

(assert (=> start!193636 d!588676))

(declare-fun b!1930774 () Bool)

(declare-fun e!1234133 () Bool)

(declare-fun e!1234134 () Bool)

(assert (=> b!1930774 (= e!1234133 e!1234134)))

(declare-fun c!314063 () Bool)

(assert (=> b!1930774 (= c!314063 ((_ is IntegerValue!12223) (value!123824 (h!27358 tokens!598))))))

(declare-fun b!1930775 () Bool)

(declare-fun res!863291 () Bool)

(declare-fun e!1234132 () Bool)

(assert (=> b!1930775 (=> res!863291 e!1234132)))

(assert (=> b!1930775 (= res!863291 (not ((_ is IntegerValue!12224) (value!123824 (h!27358 tokens!598)))))))

(assert (=> b!1930775 (= e!1234134 e!1234132)))

(declare-fun b!1930776 () Bool)

(assert (=> b!1930776 (= e!1234134 (inv!17 (value!123824 (h!27358 tokens!598))))))

(declare-fun d!588678 () Bool)

(declare-fun c!314064 () Bool)

(assert (=> d!588678 (= c!314064 ((_ is IntegerValue!12222) (value!123824 (h!27358 tokens!598))))))

(assert (=> d!588678 (= (inv!21 (value!123824 (h!27358 tokens!598))) e!1234133)))

(declare-fun b!1930777 () Bool)

(assert (=> b!1930777 (= e!1234133 (inv!16 (value!123824 (h!27358 tokens!598))))))

(declare-fun b!1930778 () Bool)

(assert (=> b!1930778 (= e!1234132 (inv!15 (value!123824 (h!27358 tokens!598))))))

(assert (= (and d!588678 c!314064) b!1930777))

(assert (= (and d!588678 (not c!314064)) b!1930774))

(assert (= (and b!1930774 c!314063) b!1930776))

(assert (= (and b!1930774 (not c!314063)) b!1930775))

(assert (= (and b!1930775 (not res!863291)) b!1930778))

(declare-fun m!2368493 () Bool)

(assert (=> b!1930776 m!2368493))

(declare-fun m!2368495 () Bool)

(assert (=> b!1930777 m!2368495))

(declare-fun m!2368497 () Bool)

(assert (=> b!1930778 m!2368497))

(assert (=> b!1930329 d!588678))

(declare-fun b!1930779 () Bool)

(declare-fun e!1234135 () Bool)

(declare-fun lt!740115 () Bool)

(declare-fun call!118777 () Bool)

(assert (=> b!1930779 (= e!1234135 (= lt!740115 call!118777))))

(declare-fun bm!118772 () Bool)

(assert (=> bm!118772 (= call!118777 (isEmpty!13541 lt!739936))))

(declare-fun b!1930780 () Bool)

(declare-fun e!1234138 () Bool)

(assert (=> b!1930780 (= e!1234138 (= (head!4504 lt!739936) (c!313975 (regex!3938 lt!739937))))))

(declare-fun b!1930781 () Bool)

(declare-fun e!1234139 () Bool)

(assert (=> b!1930781 (= e!1234139 (not lt!740115))))

(declare-fun b!1930782 () Bool)

(declare-fun e!1234137 () Bool)

(assert (=> b!1930782 (= e!1234137 (not (= (head!4504 lt!739936) (c!313975 (regex!3938 lt!739937)))))))

(declare-fun b!1930783 () Bool)

(declare-fun res!863298 () Bool)

(declare-fun e!1234141 () Bool)

(assert (=> b!1930783 (=> res!863298 e!1234141)))

(assert (=> b!1930783 (= res!863298 (not ((_ is ElementMatch!5363) (regex!3938 lt!739937))))))

(assert (=> b!1930783 (= e!1234139 e!1234141)))

(declare-fun d!588680 () Bool)

(assert (=> d!588680 e!1234135))

(declare-fun c!314066 () Bool)

(assert (=> d!588680 (= c!314066 ((_ is EmptyExpr!5363) (regex!3938 lt!739937)))))

(declare-fun e!1234140 () Bool)

(assert (=> d!588680 (= lt!740115 e!1234140)))

(declare-fun c!314067 () Bool)

(assert (=> d!588680 (= c!314067 (isEmpty!13541 lt!739936))))

(assert (=> d!588680 (validRegex!2139 (regex!3938 lt!739937))))

(assert (=> d!588680 (= (matchR!2631 (regex!3938 lt!739937) lt!739936) lt!740115)))

(declare-fun b!1930784 () Bool)

(assert (=> b!1930784 (= e!1234140 (matchR!2631 (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936)) (tail!2990 lt!739936)))))

(declare-fun b!1930785 () Bool)

(declare-fun res!863294 () Bool)

(assert (=> b!1930785 (=> (not res!863294) (not e!1234138))))

(assert (=> b!1930785 (= res!863294 (not call!118777))))

(declare-fun b!1930786 () Bool)

(declare-fun e!1234136 () Bool)

(assert (=> b!1930786 (= e!1234141 e!1234136)))

(declare-fun res!863295 () Bool)

(assert (=> b!1930786 (=> (not res!863295) (not e!1234136))))

(assert (=> b!1930786 (= res!863295 (not lt!740115))))

(declare-fun b!1930787 () Bool)

(assert (=> b!1930787 (= e!1234136 e!1234137)))

(declare-fun res!863296 () Bool)

(assert (=> b!1930787 (=> res!863296 e!1234137)))

(assert (=> b!1930787 (= res!863296 call!118777)))

(declare-fun b!1930788 () Bool)

(declare-fun res!863297 () Bool)

(assert (=> b!1930788 (=> res!863297 e!1234141)))

(assert (=> b!1930788 (= res!863297 e!1234138)))

(declare-fun res!863299 () Bool)

(assert (=> b!1930788 (=> (not res!863299) (not e!1234138))))

(assert (=> b!1930788 (= res!863299 lt!740115)))

(declare-fun b!1930789 () Bool)

(declare-fun res!863293 () Bool)

(assert (=> b!1930789 (=> res!863293 e!1234137)))

(assert (=> b!1930789 (= res!863293 (not (isEmpty!13541 (tail!2990 lt!739936))))))

(declare-fun b!1930790 () Bool)

(declare-fun res!863292 () Bool)

(assert (=> b!1930790 (=> (not res!863292) (not e!1234138))))

(assert (=> b!1930790 (= res!863292 (isEmpty!13541 (tail!2990 lt!739936)))))

(declare-fun b!1930791 () Bool)

(assert (=> b!1930791 (= e!1234140 (nullable!1613 (regex!3938 lt!739937)))))

(declare-fun b!1930792 () Bool)

(assert (=> b!1930792 (= e!1234135 e!1234139)))

(declare-fun c!314065 () Bool)

(assert (=> b!1930792 (= c!314065 ((_ is EmptyLang!5363) (regex!3938 lt!739937)))))

(assert (= (and d!588680 c!314067) b!1930791))

(assert (= (and d!588680 (not c!314067)) b!1930784))

(assert (= (and d!588680 c!314066) b!1930779))

(assert (= (and d!588680 (not c!314066)) b!1930792))

(assert (= (and b!1930792 c!314065) b!1930781))

(assert (= (and b!1930792 (not c!314065)) b!1930783))

(assert (= (and b!1930783 (not res!863298)) b!1930788))

(assert (= (and b!1930788 res!863299) b!1930785))

(assert (= (and b!1930785 res!863294) b!1930790))

(assert (= (and b!1930790 res!863292) b!1930780))

(assert (= (and b!1930788 (not res!863297)) b!1930786))

(assert (= (and b!1930786 res!863295) b!1930787))

(assert (= (and b!1930787 (not res!863296)) b!1930789))

(assert (= (and b!1930789 (not res!863293)) b!1930782))

(assert (= (or b!1930779 b!1930785 b!1930787) bm!118772))

(declare-fun m!2368499 () Bool)

(assert (=> b!1930782 m!2368499))

(declare-fun m!2368501 () Bool)

(assert (=> bm!118772 m!2368501))

(assert (=> b!1930780 m!2368499))

(assert (=> d!588680 m!2368501))

(declare-fun m!2368503 () Bool)

(assert (=> d!588680 m!2368503))

(declare-fun m!2368505 () Bool)

(assert (=> b!1930789 m!2368505))

(assert (=> b!1930789 m!2368505))

(declare-fun m!2368507 () Bool)

(assert (=> b!1930789 m!2368507))

(declare-fun m!2368509 () Bool)

(assert (=> b!1930791 m!2368509))

(assert (=> b!1930784 m!2368499))

(assert (=> b!1930784 m!2368499))

(declare-fun m!2368511 () Bool)

(assert (=> b!1930784 m!2368511))

(assert (=> b!1930784 m!2368505))

(assert (=> b!1930784 m!2368511))

(assert (=> b!1930784 m!2368505))

(declare-fun m!2368513 () Bool)

(assert (=> b!1930784 m!2368513))

(assert (=> b!1930790 m!2368505))

(assert (=> b!1930790 m!2368505))

(assert (=> b!1930790 m!2368507))

(assert (=> b!1930318 d!588680))

(declare-fun d!588682 () Bool)

(assert (=> d!588682 (= (get!6917 lt!739938) (v!26657 lt!739938))))

(assert (=> b!1930318 d!588682))

(declare-fun d!588684 () Bool)

(declare-fun res!863304 () Bool)

(declare-fun e!1234146 () Bool)

(assert (=> d!588684 (=> res!863304 e!1234146)))

(assert (=> d!588684 (= res!863304 ((_ is Nil!21957) tokens!598))))

(assert (=> d!588684 (= (forall!4642 tokens!598 lambda!75269) e!1234146)))

(declare-fun b!1930797 () Bool)

(declare-fun e!1234147 () Bool)

(assert (=> b!1930797 (= e!1234146 e!1234147)))

(declare-fun res!863305 () Bool)

(assert (=> b!1930797 (=> (not res!863305) (not e!1234147))))

(declare-fun dynLambda!10668 (Int Token!7428) Bool)

(assert (=> b!1930797 (= res!863305 (dynLambda!10668 lambda!75269 (h!27358 tokens!598)))))

(declare-fun b!1930798 () Bool)

(assert (=> b!1930798 (= e!1234147 (forall!4642 (t!180084 tokens!598) lambda!75269))))

(assert (= (and d!588684 (not res!863304)) b!1930797))

(assert (= (and b!1930797 res!863305) b!1930798))

(declare-fun b_lambda!64085 () Bool)

(assert (=> (not b_lambda!64085) (not b!1930797)))

(declare-fun m!2368515 () Bool)

(assert (=> b!1930797 m!2368515))

(declare-fun m!2368517 () Bool)

(assert (=> b!1930798 m!2368517))

(assert (=> b!1930339 d!588684))

(declare-fun d!588686 () Bool)

(assert (=> d!588686 (= (inv!29039 (tag!4388 (h!27357 rules!3198))) (= (mod (str.len (value!123823 (tag!4388 (h!27357 rules!3198)))) 2) 0))))

(assert (=> b!1930328 d!588686))

(declare-fun d!588688 () Bool)

(declare-fun res!863306 () Bool)

(declare-fun e!1234148 () Bool)

(assert (=> d!588688 (=> (not res!863306) (not e!1234148))))

(assert (=> d!588688 (= res!863306 (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (h!27357 rules!3198)))))))

(assert (=> d!588688 (= (inv!29043 (transformation!3938 (h!27357 rules!3198))) e!1234148)))

(declare-fun b!1930799 () Bool)

(assert (=> b!1930799 (= e!1234148 (equivClasses!1496 (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (h!27357 rules!3198)))))))

(assert (= (and d!588688 res!863306) b!1930799))

(declare-fun m!2368519 () Bool)

(assert (=> d!588688 m!2368519))

(declare-fun m!2368521 () Bool)

(assert (=> b!1930799 m!2368521))

(assert (=> b!1930328 d!588688))

(declare-fun d!588690 () Bool)

(declare-fun lt!740132 () Bool)

(declare-fun e!1234169 () Bool)

(assert (=> d!588690 (= lt!740132 e!1234169)))

(declare-fun res!863331 () Bool)

(assert (=> d!588690 (=> (not res!863331) (not e!1234169))))

(declare-datatypes ((tuple2!20578 0))(
  ( (tuple2!20579 (_1!11758 BalanceConc!14478) (_2!11758 BalanceConc!14476)) )
))
(declare-fun lex!1577 (LexerInterface!3551 List!22038 BalanceConc!14476) tuple2!20578)

(assert (=> d!588690 (= res!863331 (= (list!8890 (_1!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354))))) (list!8890 (singletonSeq!1922 separatorToken!354))))))

(declare-fun e!1234168 () Bool)

(assert (=> d!588690 (= lt!740132 e!1234168)))

(declare-fun res!863333 () Bool)

(assert (=> d!588690 (=> (not res!863333) (not e!1234168))))

(declare-fun lt!740133 () tuple2!20578)

(assert (=> d!588690 (= res!863333 (= (size!17130 (_1!11758 lt!740133)) 1))))

(assert (=> d!588690 (= lt!740133 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354))))))

(assert (=> d!588690 (not (isEmpty!13534 rules!3198))))

(assert (=> d!588690 (= (rulesProduceIndividualToken!1723 thiss!23328 rules!3198 separatorToken!354) lt!740132)))

(declare-fun b!1930830 () Bool)

(declare-fun res!863332 () Bool)

(assert (=> b!1930830 (=> (not res!863332) (not e!1234168))))

(assert (=> b!1930830 (= res!863332 (= (apply!5707 (_1!11758 lt!740133) 0) separatorToken!354))))

(declare-fun b!1930831 () Bool)

(declare-fun isEmpty!13542 (BalanceConc!14476) Bool)

(assert (=> b!1930831 (= e!1234168 (isEmpty!13542 (_2!11758 lt!740133)))))

(declare-fun b!1930832 () Bool)

(assert (=> b!1930832 (= e!1234169 (isEmpty!13542 (_2!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354))))))))

(assert (= (and d!588690 res!863333) b!1930830))

(assert (= (and b!1930830 res!863332) b!1930831))

(assert (= (and d!588690 res!863331) b!1930832))

(declare-fun m!2368569 () Bool)

(assert (=> d!588690 m!2368569))

(declare-fun m!2368571 () Bool)

(assert (=> d!588690 m!2368571))

(declare-fun m!2368573 () Bool)

(assert (=> d!588690 m!2368573))

(assert (=> d!588690 m!2368569))

(assert (=> d!588690 m!2367921))

(declare-fun m!2368575 () Bool)

(assert (=> d!588690 m!2368575))

(assert (=> d!588690 m!2368571))

(declare-fun m!2368577 () Bool)

(assert (=> d!588690 m!2368577))

(assert (=> d!588690 m!2368569))

(declare-fun m!2368579 () Bool)

(assert (=> d!588690 m!2368579))

(declare-fun m!2368581 () Bool)

(assert (=> b!1930830 m!2368581))

(declare-fun m!2368583 () Bool)

(assert (=> b!1930831 m!2368583))

(assert (=> b!1930832 m!2368569))

(assert (=> b!1930832 m!2368569))

(assert (=> b!1930832 m!2368571))

(assert (=> b!1930832 m!2368571))

(assert (=> b!1930832 m!2368577))

(declare-fun m!2368585 () Bool)

(assert (=> b!1930832 m!2368585))

(assert (=> b!1930338 d!588690))

(declare-fun bs!414942 () Bool)

(declare-fun d!588704 () Bool)

(assert (= bs!414942 (and d!588704 b!1930339)))

(declare-fun lambda!75293 () Int)

(assert (=> bs!414942 (not (= lambda!75293 lambda!75269))))

(declare-fun bs!414943 () Bool)

(assert (= bs!414943 (and d!588704 b!1930652)))

(assert (=> bs!414943 (= lambda!75293 lambda!75284)))

(declare-fun b!1930951 () Bool)

(declare-fun e!1234255 () Bool)

(assert (=> b!1930951 (= e!1234255 true)))

(declare-fun b!1930950 () Bool)

(declare-fun e!1234254 () Bool)

(assert (=> b!1930950 (= e!1234254 e!1234255)))

(declare-fun b!1930949 () Bool)

(declare-fun e!1234253 () Bool)

(assert (=> b!1930949 (= e!1234253 e!1234254)))

(assert (=> d!588704 e!1234253))

(assert (= b!1930950 b!1930951))

(assert (= b!1930949 b!1930950))

(assert (= (and d!588704 ((_ is Cons!21956) rules!3198)) b!1930949))

(assert (=> b!1930951 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75293))))

(assert (=> b!1930951 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75293))))

(assert (=> d!588704 true))

(declare-fun lt!740158 () Bool)

(assert (=> d!588704 (= lt!740158 (forall!4642 tokens!598 lambda!75293))))

(declare-fun e!1234252 () Bool)

(assert (=> d!588704 (= lt!740158 e!1234252)))

(declare-fun res!863368 () Bool)

(assert (=> d!588704 (=> res!863368 e!1234252)))

(assert (=> d!588704 (= res!863368 (not ((_ is Cons!21957) tokens!598)))))

(assert (=> d!588704 (not (isEmpty!13534 rules!3198))))

(assert (=> d!588704 (= (rulesProduceEachTokenIndividuallyList!1282 thiss!23328 rules!3198 tokens!598) lt!740158)))

(declare-fun b!1930947 () Bool)

(declare-fun e!1234251 () Bool)

(assert (=> b!1930947 (= e!1234252 e!1234251)))

(declare-fun res!863367 () Bool)

(assert (=> b!1930947 (=> (not res!863367) (not e!1234251))))

(assert (=> b!1930947 (= res!863367 (rulesProduceIndividualToken!1723 thiss!23328 rules!3198 (h!27358 tokens!598)))))

(declare-fun b!1930948 () Bool)

(assert (=> b!1930948 (= e!1234251 (rulesProduceEachTokenIndividuallyList!1282 thiss!23328 rules!3198 (t!180084 tokens!598)))))

(assert (= (and d!588704 (not res!863368)) b!1930947))

(assert (= (and b!1930947 res!863367) b!1930948))

(declare-fun m!2368675 () Bool)

(assert (=> d!588704 m!2368675))

(assert (=> d!588704 m!2367921))

(declare-fun m!2368677 () Bool)

(assert (=> b!1930947 m!2368677))

(declare-fun m!2368679 () Bool)

(assert (=> b!1930948 m!2368679))

(assert (=> b!1930327 d!588704))

(declare-fun b!1930965 () Bool)

(declare-fun e!1234258 () Bool)

(declare-fun tp!551168 () Bool)

(declare-fun tp!551170 () Bool)

(assert (=> b!1930965 (= e!1234258 (and tp!551168 tp!551170))))

(declare-fun b!1930963 () Bool)

(declare-fun tp!551169 () Bool)

(declare-fun tp!551167 () Bool)

(assert (=> b!1930963 (= e!1234258 (and tp!551169 tp!551167))))

(declare-fun b!1930964 () Bool)

(declare-fun tp!551171 () Bool)

(assert (=> b!1930964 (= e!1234258 tp!551171)))

(assert (=> b!1930334 (= tp!551081 e!1234258)))

(declare-fun b!1930962 () Bool)

(declare-fun tp_is_empty!9145 () Bool)

(assert (=> b!1930962 (= e!1234258 tp_is_empty!9145)))

(assert (= (and b!1930334 ((_ is ElementMatch!5363) (regex!3938 (rule!6145 separatorToken!354)))) b!1930962))

(assert (= (and b!1930334 ((_ is Concat!9438) (regex!3938 (rule!6145 separatorToken!354)))) b!1930963))

(assert (= (and b!1930334 ((_ is Star!5363) (regex!3938 (rule!6145 separatorToken!354)))) b!1930964))

(assert (= (and b!1930334 ((_ is Union!5363) (regex!3938 (rule!6145 separatorToken!354)))) b!1930965))

(declare-fun b!1930976 () Bool)

(declare-fun b_free!55333 () Bool)

(declare-fun b_next!56037 () Bool)

(assert (=> b!1930976 (= b_free!55333 (not b_next!56037))))

(declare-fun tb!118501 () Bool)

(declare-fun t!180179 () Bool)

(assert (=> (and b!1930976 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180179) tb!118501))

(declare-fun result!143140 () Bool)

(assert (= result!143140 result!143070))

(assert (=> d!588570 t!180179))

(assert (=> d!588640 t!180179))

(declare-fun tb!118503 () Bool)

(declare-fun t!180181 () Bool)

(assert (=> (and b!1930976 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180181) tb!118503))

(declare-fun result!143142 () Bool)

(assert (= result!143142 result!143096))

(assert (=> d!588640 t!180181))

(declare-fun tp!551180 () Bool)

(declare-fun b_and!151771 () Bool)

(assert (=> b!1930976 (= tp!551180 (and (=> t!180179 result!143140) (=> t!180181 result!143142) b_and!151771))))

(declare-fun b_free!55335 () Bool)

(declare-fun b_next!56039 () Bool)

(assert (=> b!1930976 (= b_free!55335 (not b_next!56039))))

(declare-fun tb!118505 () Bool)

(declare-fun t!180183 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180183) tb!118505))

(declare-fun result!143144 () Bool)

(assert (= result!143144 result!143090))

(assert (=> b!1930764 t!180183))

(declare-fun tb!118507 () Bool)

(declare-fun t!180185 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) t!180185) tb!118507))

(declare-fun result!143146 () Bool)

(assert (= result!143146 result!143102))

(assert (=> b!1930772 t!180185))

(assert (=> d!588636 t!180183))

(declare-fun t!180187 () Bool)

(declare-fun tb!118509 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180187) tb!118509))

(declare-fun result!143148 () Bool)

(assert (= result!143148 result!143062))

(assert (=> d!588570 t!180187))

(assert (=> d!588646 t!180185))

(declare-fun tp!551182 () Bool)

(declare-fun b_and!151773 () Bool)

(assert (=> b!1930976 (= tp!551182 (and (=> t!180187 result!143148) (=> t!180185 result!143146) (=> t!180183 result!143144) b_and!151773))))

(declare-fun e!1234267 () Bool)

(assert (=> b!1930976 (= e!1234267 (and tp!551180 tp!551182))))

(declare-fun b!1930975 () Bool)

(declare-fun e!1234270 () Bool)

(declare-fun tp!551183 () Bool)

(assert (=> b!1930975 (= e!1234270 (and tp!551183 (inv!29039 (tag!4388 (h!27357 (t!180083 rules!3198)))) (inv!29043 (transformation!3938 (h!27357 (t!180083 rules!3198)))) e!1234267))))

(declare-fun b!1930974 () Bool)

(declare-fun e!1234268 () Bool)

(declare-fun tp!551181 () Bool)

(assert (=> b!1930974 (= e!1234268 (and e!1234270 tp!551181))))

(assert (=> b!1930323 (= tp!551085 e!1234268)))

(assert (= b!1930975 b!1930976))

(assert (= b!1930974 b!1930975))

(assert (= (and b!1930323 ((_ is Cons!21956) (t!180083 rules!3198))) b!1930974))

(declare-fun m!2368681 () Bool)

(assert (=> b!1930975 m!2368681))

(declare-fun m!2368683 () Bool)

(assert (=> b!1930975 m!2368683))

(declare-fun b!1930981 () Bool)

(declare-fun e!1234273 () Bool)

(declare-fun tp!551186 () Bool)

(assert (=> b!1930981 (= e!1234273 (and tp_is_empty!9145 tp!551186))))

(assert (=> b!1930342 (= tp!551080 e!1234273)))

(assert (= (and b!1930342 ((_ is Cons!21955) (originalCharacters!4745 separatorToken!354))) b!1930981))

(declare-fun b!1930985 () Bool)

(declare-fun e!1234274 () Bool)

(declare-fun tp!551188 () Bool)

(declare-fun tp!551190 () Bool)

(assert (=> b!1930985 (= e!1234274 (and tp!551188 tp!551190))))

(declare-fun b!1930983 () Bool)

(declare-fun tp!551189 () Bool)

(declare-fun tp!551187 () Bool)

(assert (=> b!1930983 (= e!1234274 (and tp!551189 tp!551187))))

(declare-fun b!1930984 () Bool)

(declare-fun tp!551191 () Bool)

(assert (=> b!1930984 (= e!1234274 tp!551191)))

(assert (=> b!1930331 (= tp!551078 e!1234274)))

(declare-fun b!1930982 () Bool)

(assert (=> b!1930982 (= e!1234274 tp_is_empty!9145)))

(assert (= (and b!1930331 ((_ is ElementMatch!5363) (regex!3938 (rule!6145 (h!27358 tokens!598))))) b!1930982))

(assert (= (and b!1930331 ((_ is Concat!9438) (regex!3938 (rule!6145 (h!27358 tokens!598))))) b!1930983))

(assert (= (and b!1930331 ((_ is Star!5363) (regex!3938 (rule!6145 (h!27358 tokens!598))))) b!1930984))

(assert (= (and b!1930331 ((_ is Union!5363) (regex!3938 (rule!6145 (h!27358 tokens!598))))) b!1930985))

(declare-fun b!1930999 () Bool)

(declare-fun b_free!55337 () Bool)

(declare-fun b_next!56041 () Bool)

(assert (=> b!1930999 (= b_free!55337 (not b_next!56041))))

(declare-fun t!180189 () Bool)

(declare-fun tb!118511 () Bool)

(assert (=> (and b!1930999 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180189) tb!118511))

(declare-fun result!143154 () Bool)

(assert (= result!143154 result!143070))

(assert (=> d!588570 t!180189))

(assert (=> d!588640 t!180189))

(declare-fun t!180191 () Bool)

(declare-fun tb!118513 () Bool)

(assert (=> (and b!1930999 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180191) tb!118513))

(declare-fun result!143156 () Bool)

(assert (= result!143156 result!143096))

(assert (=> d!588640 t!180191))

(declare-fun b_and!151775 () Bool)

(declare-fun tp!551204 () Bool)

(assert (=> b!1930999 (= tp!551204 (and (=> t!180189 result!143154) (=> t!180191 result!143156) b_and!151775))))

(declare-fun b_free!55339 () Bool)

(declare-fun b_next!56043 () Bool)

(assert (=> b!1930999 (= b_free!55339 (not b_next!56043))))

(declare-fun t!180193 () Bool)

(declare-fun tb!118515 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180193) tb!118515))

(declare-fun result!143158 () Bool)

(assert (= result!143158 result!143090))

(assert (=> b!1930764 t!180193))

(declare-fun t!180195 () Bool)

(declare-fun tb!118517 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) t!180195) tb!118517))

(declare-fun result!143160 () Bool)

(assert (= result!143160 result!143102))

(assert (=> b!1930772 t!180195))

(assert (=> d!588636 t!180193))

(declare-fun t!180197 () Bool)

(declare-fun tb!118519 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180197) tb!118519))

(declare-fun result!143162 () Bool)

(assert (= result!143162 result!143062))

(assert (=> d!588570 t!180197))

(assert (=> d!588646 t!180195))

(declare-fun tp!551202 () Bool)

(declare-fun b_and!151777 () Bool)

(assert (=> b!1930999 (= tp!551202 (and (=> t!180193 result!143158) (=> t!180197 result!143162) (=> t!180195 result!143160) b_and!151777))))

(declare-fun b!1930997 () Bool)

(declare-fun e!1234291 () Bool)

(declare-fun e!1234289 () Bool)

(declare-fun tp!551206 () Bool)

(assert (=> b!1930997 (= e!1234291 (and (inv!21 (value!123824 (h!27358 (t!180084 tokens!598)))) e!1234289 tp!551206))))

(declare-fun tp!551205 () Bool)

(declare-fun b!1930998 () Bool)

(declare-fun e!1234292 () Bool)

(assert (=> b!1930998 (= e!1234289 (and tp!551205 (inv!29039 (tag!4388 (rule!6145 (h!27358 (t!180084 tokens!598))))) (inv!29043 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) e!1234292))))

(declare-fun e!1234288 () Bool)

(declare-fun tp!551203 () Bool)

(declare-fun b!1930996 () Bool)

(assert (=> b!1930996 (= e!1234288 (and (inv!29042 (h!27358 (t!180084 tokens!598))) e!1234291 tp!551203))))

(assert (=> b!1930320 (= tp!551079 e!1234288)))

(assert (=> b!1930999 (= e!1234292 (and tp!551204 tp!551202))))

(assert (= b!1930998 b!1930999))

(assert (= b!1930997 b!1930998))

(assert (= b!1930996 b!1930997))

(assert (= (and b!1930320 ((_ is Cons!21957) (t!180084 tokens!598))) b!1930996))

(declare-fun m!2368685 () Bool)

(assert (=> b!1930997 m!2368685))

(declare-fun m!2368687 () Bool)

(assert (=> b!1930998 m!2368687))

(declare-fun m!2368689 () Bool)

(assert (=> b!1930998 m!2368689))

(declare-fun m!2368691 () Bool)

(assert (=> b!1930996 m!2368691))

(declare-fun b!1931000 () Bool)

(declare-fun e!1234293 () Bool)

(declare-fun tp!551207 () Bool)

(assert (=> b!1931000 (= e!1234293 (and tp_is_empty!9145 tp!551207))))

(assert (=> b!1930329 (= tp!551083 e!1234293)))

(assert (= (and b!1930329 ((_ is Cons!21955) (originalCharacters!4745 (h!27358 tokens!598)))) b!1931000))

(declare-fun b!1931004 () Bool)

(declare-fun e!1234294 () Bool)

(declare-fun tp!551209 () Bool)

(declare-fun tp!551211 () Bool)

(assert (=> b!1931004 (= e!1234294 (and tp!551209 tp!551211))))

(declare-fun b!1931002 () Bool)

(declare-fun tp!551210 () Bool)

(declare-fun tp!551208 () Bool)

(assert (=> b!1931002 (= e!1234294 (and tp!551210 tp!551208))))

(declare-fun b!1931003 () Bool)

(declare-fun tp!551212 () Bool)

(assert (=> b!1931003 (= e!1234294 tp!551212)))

(assert (=> b!1930328 (= tp!551084 e!1234294)))

(declare-fun b!1931001 () Bool)

(assert (=> b!1931001 (= e!1234294 tp_is_empty!9145)))

(assert (= (and b!1930328 ((_ is ElementMatch!5363) (regex!3938 (h!27357 rules!3198)))) b!1931001))

(assert (= (and b!1930328 ((_ is Concat!9438) (regex!3938 (h!27357 rules!3198)))) b!1931002))

(assert (= (and b!1930328 ((_ is Star!5363) (regex!3938 (h!27357 rules!3198)))) b!1931003))

(assert (= (and b!1930328 ((_ is Union!5363) (regex!3938 (h!27357 rules!3198)))) b!1931004))

(declare-fun b_lambda!64111 () Bool)

(assert (= b_lambda!64085 (or b!1930339 b_lambda!64111)))

(declare-fun bs!414944 () Bool)

(declare-fun d!588726 () Bool)

(assert (= bs!414944 (and d!588726 b!1930339)))

(assert (=> bs!414944 (= (dynLambda!10668 lambda!75269 (h!27358 tokens!598)) (not (isSeparator!3938 (rule!6145 (h!27358 tokens!598)))))))

(assert (=> b!1930797 d!588726))

(declare-fun b_lambda!64113 () Bool)

(assert (= b_lambda!64083 (or (and b!1930324 b_free!55323 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) (and b!1930332 b_free!55319 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) (and b!1930999 b_free!55339 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) (and b!1930322 b_free!55315) (and b!1930976 b_free!55335 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) b_lambda!64113)))

(declare-fun b_lambda!64115 () Bool)

(assert (= b_lambda!64065 (or (and b!1930999 b_free!55339 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930976 b_free!55335 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930332 b_free!55319) (and b!1930324 b_free!55323 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930322 b_free!55315 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) b_lambda!64115)))

(declare-fun b_lambda!64117 () Bool)

(assert (= b_lambda!64073 (or (and b!1930999 b_free!55339 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930976 b_free!55335 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930332 b_free!55319) (and b!1930324 b_free!55323 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930322 b_free!55315 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) b_lambda!64117)))

(declare-fun b_lambda!64119 () Bool)

(assert (= b_lambda!64077 (or (and b!1930324 b_free!55321 (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930332 b_free!55317) (and b!1930999 b_free!55337 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930322 b_free!55313 (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930976 b_free!55333 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) b_lambda!64119)))

(declare-fun b_lambda!64121 () Bool)

(assert (= b_lambda!64079 (or (and b!1930324 b_free!55323 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) (and b!1930332 b_free!55319 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) (and b!1930999 b_free!55339 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) (and b!1930322 b_free!55315) (and b!1930976 b_free!55335 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))))) b_lambda!64121)))

(declare-fun b_lambda!64123 () Bool)

(assert (= b_lambda!64067 (or (and b!1930324 b_free!55321 (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930332 b_free!55317) (and b!1930999 b_free!55337 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930322 b_free!55313 (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930976 b_free!55333 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) b_lambda!64123)))

(declare-fun b_lambda!64125 () Bool)

(assert (= b_lambda!64075 (or (and b!1930324 b_free!55321 (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930332 b_free!55317) (and b!1930999 b_free!55337 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930322 b_free!55313 (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930976 b_free!55333 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) b_lambda!64125)))

(declare-fun b_lambda!64127 () Bool)

(assert (= b_lambda!64081 (or (and b!1930999 b_free!55339 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930976 b_free!55335 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930332 b_free!55319) (and b!1930324 b_free!55323 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (and b!1930322 b_free!55315 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) b_lambda!64127)))

(check-sat (not b!1930353) (not b!1930773) (not b_lambda!64121) (not b_lambda!64113) (not d!588562) (not b!1930523) (not b!1930789) (not d!588654) (not b!1930521) (not b!1930756) (not b!1930701) (not b!1930694) (not b_next!56021) (not b!1930983) (not b!1930997) (not bm!118766) (not b!1930488) (not d!588568) (not b!1930733) (not d!588640) b_and!151731 (not b!1930429) (not b!1930489) (not d!588600) (not b!1930529) (not b!1930799) (not b!1930698) (not d!588638) (not b!1930646) (not b!1930652) (not b!1930784) (not b!1930670) (not bm!118768) (not b!1930759) (not b!1930526) (not d!588584) (not b!1930671) tp_is_empty!9145 (not b_next!56025) (not b!1930770) (not tb!118445) (not b_next!56041) (not b!1930772) (not b_lambda!64125) (not d!588650) (not d!588660) (not b!1930735) b_and!151747 (not b!1930984) (not bm!118772) (not b!1930430) (not b_next!56037) (not b!1930415) (not d!588598) (not b!1931002) (not d!588586) b_and!151729 (not d!588630) (not d!588594) (not d!588658) (not b!1930695) (not b!1930791) (not b!1930661) (not b!1930414) b_and!151727 b_and!151745 (not b_next!56019) (not d!588670) (not b!1930668) (not b!1930998) (not d!588646) (not b!1930798) (not d!588690) (not tb!118475) (not b!1930963) (not d!588636) (not b!1931004) (not b!1930667) (not b!1930948) b_and!151777 (not b!1930740) (not b!1930964) (not b!1931003) (not b!1930776) (not d!588558) (not b!1930674) (not d!588634) (not b!1930651) (not b!1930675) (not d!588580) (not d!588582) (not b!1930395) (not tb!118439) (not bm!118765) (not b!1930491) (not b!1930765) (not d!588680) (not b!1930975) (not b!1930741) (not b!1930484) (not b!1930520) (not b!1930758) (not b!1930778) (not b_next!56039) b_and!151771 (not b!1930366) (not d!588570) (not d!588704) (not d!588566) (not b!1930996) (not b_lambda!64119) (not b!1930527) (not b!1930363) (not b_lambda!64111) (not b!1930981) (not b!1930790) (not b_next!56023) (not b!1930487) (not b!1930490) b_and!151775 (not b_next!56043) (not b!1930947) (not b!1930965) (not b!1930831) (not b!1930832) b_and!151773 (not bm!118771) (not b!1930771) (not d!588564) (not b!1930645) (not b!1930731) (not b!1930757) (not b!1930672) (not d!588632) (not b!1930361) (not d!588668) (not b_lambda!64127) (not b!1930780) (not b!1930985) (not b!1930742) (not b!1930666) (not bm!118767) (not b_next!56017) (not b!1931000) (not d!588676) (not b!1930485) (not b!1930777) (not b!1930782) (not bm!118747) (not b_lambda!64115) (not b!1930673) (not b!1930483) (not b_lambda!64123) b_and!151749 (not tb!118469) (not b!1930974) (not b_lambda!64117) (not b!1930764) (not b!1930830) (not tb!118463) (not b!1930693) (not b_next!56027) (not d!588688) (not b!1930949))
(check-sat (not b_next!56021) b_and!151731 (not b_next!56025) (not b_next!56037) b_and!151729 (not b_next!56019) b_and!151777 (not b_next!56023) b_and!151773 (not b_next!56017) b_and!151749 (not b_next!56027) (not b_next!56041) b_and!151747 b_and!151727 b_and!151745 (not b_next!56039) b_and!151771 b_and!151775 (not b_next!56043))
(get-model)

(declare-fun d!588878 () Bool)

(assert (=> d!588878 (= (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))) (list!8889 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))))))

(declare-fun bs!414974 () Bool)

(assert (= bs!414974 d!588878))

(declare-fun m!2369035 () Bool)

(assert (=> bs!414974 m!2369035))

(assert (=> b!1930764 d!588878))

(declare-fun d!588880 () Bool)

(assert (=> d!588880 (= (list!8887 lt!739966) (list!8889 (c!313974 lt!739966)))))

(declare-fun bs!414975 () Bool)

(assert (= bs!414975 d!588880))

(declare-fun m!2369041 () Bool)

(assert (=> bs!414975 m!2369041))

(assert (=> d!588564 d!588880))

(declare-fun d!588882 () Bool)

(declare-fun list!8893 (Conc!7331) List!22039)

(assert (=> d!588882 (= (dropList!787 lt!739941 0) (drop!1078 (list!8893 (c!313976 lt!739941)) 0))))

(declare-fun bs!414977 () Bool)

(assert (= bs!414977 d!588882))

(declare-fun m!2369083 () Bool)

(assert (=> bs!414977 m!2369083))

(assert (=> bs!414977 m!2369083))

(declare-fun m!2369085 () Bool)

(assert (=> bs!414977 m!2369085))

(assert (=> d!588564 d!588882))

(declare-fun d!588888 () Bool)

(declare-fun lt!740250 () List!22037)

(assert (=> d!588888 (= lt!740250 (++!5893 (list!8887 (BalanceConc!14477 Empty!7330)) (printList!1086 thiss!23328 (dropList!787 lt!739941 0))))))

(declare-fun e!1234457 () List!22037)

(assert (=> d!588888 (= lt!740250 e!1234457)))

(declare-fun c!314139 () Bool)

(assert (=> d!588888 (= c!314139 ((_ is Cons!21957) (dropList!787 lt!739941 0)))))

(assert (=> d!588888 (= (printListTailRec!456 thiss!23328 (dropList!787 lt!739941 0) (list!8887 (BalanceConc!14477 Empty!7330))) lt!740250)))

(declare-fun b!1931266 () Bool)

(assert (=> b!1931266 (= e!1234457 (printListTailRec!456 thiss!23328 (t!180084 (dropList!787 lt!739941 0)) (++!5893 (list!8887 (BalanceConc!14477 Empty!7330)) (list!8887 (charsOf!2478 (h!27358 (dropList!787 lt!739941 0)))))))))

(declare-fun lt!740249 () List!22037)

(assert (=> b!1931266 (= lt!740249 (list!8887 (charsOf!2478 (h!27358 (dropList!787 lt!739941 0)))))))

(declare-fun lt!740251 () List!22037)

(assert (=> b!1931266 (= lt!740251 (printList!1086 thiss!23328 (t!180084 (dropList!787 lt!739941 0))))))

(declare-fun lt!740252 () Unit!36312)

(declare-fun lemmaConcatAssociativity!1196 (List!22037 List!22037 List!22037) Unit!36312)

(assert (=> b!1931266 (= lt!740252 (lemmaConcatAssociativity!1196 (list!8887 (BalanceConc!14477 Empty!7330)) lt!740249 lt!740251))))

(assert (=> b!1931266 (= (++!5893 (++!5893 (list!8887 (BalanceConc!14477 Empty!7330)) lt!740249) lt!740251) (++!5893 (list!8887 (BalanceConc!14477 Empty!7330)) (++!5893 lt!740249 lt!740251)))))

(declare-fun lt!740248 () Unit!36312)

(assert (=> b!1931266 (= lt!740248 lt!740252)))

(declare-fun b!1931267 () Bool)

(assert (=> b!1931267 (= e!1234457 (list!8887 (BalanceConc!14477 Empty!7330)))))

(assert (= (and d!588888 c!314139) b!1931266))

(assert (= (and d!588888 (not c!314139)) b!1931267))

(assert (=> d!588888 m!2367989))

(declare-fun m!2369101 () Bool)

(assert (=> d!588888 m!2369101))

(assert (=> d!588888 m!2367987))

(assert (=> d!588888 m!2369101))

(declare-fun m!2369103 () Bool)

(assert (=> d!588888 m!2369103))

(declare-fun m!2369105 () Bool)

(assert (=> b!1931266 m!2369105))

(declare-fun m!2369107 () Bool)

(assert (=> b!1931266 m!2369107))

(assert (=> b!1931266 m!2367987))

(declare-fun m!2369109 () Bool)

(assert (=> b!1931266 m!2369109))

(declare-fun m!2369111 () Bool)

(assert (=> b!1931266 m!2369111))

(declare-fun m!2369113 () Bool)

(assert (=> b!1931266 m!2369113))

(assert (=> b!1931266 m!2369109))

(assert (=> b!1931266 m!2367987))

(declare-fun m!2369115 () Bool)

(assert (=> b!1931266 m!2369115))

(declare-fun m!2369117 () Bool)

(assert (=> b!1931266 m!2369117))

(assert (=> b!1931266 m!2369115))

(assert (=> b!1931266 m!2369113))

(assert (=> b!1931266 m!2367987))

(assert (=> b!1931266 m!2369105))

(assert (=> b!1931266 m!2369111))

(declare-fun m!2369119 () Bool)

(assert (=> b!1931266 m!2369119))

(declare-fun m!2369121 () Bool)

(assert (=> b!1931266 m!2369121))

(assert (=> b!1931266 m!2367987))

(declare-fun m!2369123 () Bool)

(assert (=> b!1931266 m!2369123))

(assert (=> d!588564 d!588888))

(declare-fun d!588898 () Bool)

(assert (=> d!588898 (= (list!8887 (BalanceConc!14477 Empty!7330)) (list!8889 (c!313974 (BalanceConc!14477 Empty!7330))))))

(declare-fun bs!414983 () Bool)

(assert (= bs!414983 d!588898))

(declare-fun m!2369127 () Bool)

(assert (=> bs!414983 m!2369127))

(assert (=> d!588564 d!588898))

(declare-fun d!588902 () Bool)

(declare-fun lt!740257 () Int)

(declare-fun size!17133 (List!22039) Int)

(assert (=> d!588902 (= lt!740257 (size!17133 (list!8890 lt!739941)))))

(declare-fun size!17134 (Conc!7331) Int)

(assert (=> d!588902 (= lt!740257 (size!17134 (c!313976 lt!739941)))))

(assert (=> d!588902 (= (size!17130 lt!739941) lt!740257)))

(declare-fun bs!414984 () Bool)

(assert (= bs!414984 d!588902))

(assert (=> bs!414984 m!2367983))

(assert (=> bs!414984 m!2367983))

(declare-fun m!2369129 () Bool)

(assert (=> bs!414984 m!2369129))

(declare-fun m!2369131 () Bool)

(assert (=> bs!414984 m!2369131))

(assert (=> d!588564 d!588902))

(declare-fun d!588904 () Bool)

(assert (=> d!588904 (= (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))) (list!8889 (c!313974 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))))))

(declare-fun bs!414986 () Bool)

(assert (= bs!414986 d!588904))

(declare-fun m!2369133 () Bool)

(assert (=> bs!414986 m!2369133))

(assert (=> b!1930673 d!588904))

(declare-fun d!588906 () Bool)

(declare-fun lt!740259 () BalanceConc!14476)

(assert (=> d!588906 (= (list!8887 lt!740259) (originalCharacters!4745 (_1!11756 (get!6918 lt!740098))))))

(assert (=> d!588906 (= lt!740259 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))) (value!123824 (_1!11756 (get!6918 lt!740098)))))))

(assert (=> d!588906 (= (charsOf!2478 (_1!11756 (get!6918 lt!740098))) lt!740259)))

(declare-fun b_lambda!64143 () Bool)

(assert (=> (not b_lambda!64143) (not d!588906)))

(declare-fun t!180252 () Bool)

(declare-fun tb!118571 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180252) tb!118571))

(declare-fun b!1931268 () Bool)

(declare-fun e!1234458 () Bool)

(declare-fun tp!551216 () Bool)

(assert (=> b!1931268 (= e!1234458 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))) (value!123824 (_1!11756 (get!6918 lt!740098)))))) tp!551216))))

(declare-fun result!143214 () Bool)

(assert (=> tb!118571 (= result!143214 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))) (value!123824 (_1!11756 (get!6918 lt!740098))))) e!1234458))))

(assert (= tb!118571 b!1931268))

(declare-fun m!2369137 () Bool)

(assert (=> b!1931268 m!2369137))

(declare-fun m!2369139 () Bool)

(assert (=> tb!118571 m!2369139))

(assert (=> d!588906 t!180252))

(declare-fun b_and!151829 () Bool)

(assert (= b_and!151773 (and (=> t!180252 result!143214) b_and!151829)))

(declare-fun tb!118573 () Bool)

(declare-fun t!180254 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180254) tb!118573))

(declare-fun result!143216 () Bool)

(assert (= result!143216 result!143214))

(assert (=> d!588906 t!180254))

(declare-fun b_and!151831 () Bool)

(assert (= b_and!151749 (and (=> t!180254 result!143216) b_and!151831)))

(declare-fun t!180256 () Bool)

(declare-fun tb!118575 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180256) tb!118575))

(declare-fun result!143218 () Bool)

(assert (= result!143218 result!143214))

(assert (=> d!588906 t!180256))

(declare-fun b_and!151833 () Bool)

(assert (= b_and!151777 (and (=> t!180256 result!143218) b_and!151833)))

(declare-fun t!180258 () Bool)

(declare-fun tb!118577 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180258) tb!118577))

(declare-fun result!143220 () Bool)

(assert (= result!143220 result!143214))

(assert (=> d!588906 t!180258))

(declare-fun b_and!151835 () Bool)

(assert (= b_and!151747 (and (=> t!180258 result!143220) b_and!151835)))

(declare-fun tb!118579 () Bool)

(declare-fun t!180260 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180260) tb!118579))

(declare-fun result!143222 () Bool)

(assert (= result!143222 result!143214))

(assert (=> d!588906 t!180260))

(declare-fun b_and!151837 () Bool)

(assert (= b_and!151745 (and (=> t!180260 result!143222) b_and!151837)))

(declare-fun m!2369141 () Bool)

(assert (=> d!588906 m!2369141))

(declare-fun m!2369143 () Bool)

(assert (=> d!588906 m!2369143))

(assert (=> b!1930673 d!588906))

(declare-fun d!588910 () Bool)

(assert (=> d!588910 (= (get!6918 lt!740098) (v!26658 lt!740098))))

(assert (=> b!1930673 d!588910))

(declare-fun b!1931269 () Bool)

(declare-fun e!1234459 () Bool)

(declare-fun lt!740260 () Bool)

(declare-fun call!118800 () Bool)

(assert (=> b!1931269 (= e!1234459 (= lt!740260 call!118800))))

(declare-fun bm!118795 () Bool)

(assert (=> bm!118795 (= call!118800 (isEmpty!13541 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))))))

(declare-fun b!1931270 () Bool)

(declare-fun e!1234462 () Bool)

(assert (=> b!1931270 (= e!1234462 (= (head!4504 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))) (c!313975 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))))))

(declare-fun b!1931271 () Bool)

(declare-fun e!1234463 () Bool)

(assert (=> b!1931271 (= e!1234463 (not lt!740260))))

(declare-fun b!1931272 () Bool)

(declare-fun e!1234461 () Bool)

(assert (=> b!1931272 (= e!1234461 (not (= (head!4504 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))) (c!313975 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))))))))

(declare-fun b!1931273 () Bool)

(declare-fun res!863515 () Bool)

(declare-fun e!1234465 () Bool)

(assert (=> b!1931273 (=> res!863515 e!1234465)))

(assert (=> b!1931273 (= res!863515 (not ((_ is ElementMatch!5363) (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))))))

(assert (=> b!1931273 (= e!1234463 e!1234465)))

(declare-fun d!588912 () Bool)

(assert (=> d!588912 e!1234459))

(declare-fun c!314141 () Bool)

(assert (=> d!588912 (= c!314141 ((_ is EmptyExpr!5363) (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))))))

(declare-fun e!1234464 () Bool)

(assert (=> d!588912 (= lt!740260 e!1234464)))

(declare-fun c!314142 () Bool)

(assert (=> d!588912 (= c!314142 (isEmpty!13541 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))))))

(assert (=> d!588912 (validRegex!2139 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))))

(assert (=> d!588912 (= (matchR!2631 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))) lt!740260)))

(declare-fun b!1931274 () Bool)

(assert (=> b!1931274 (= e!1234464 (matchR!2631 (derivativeStep!1372 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))) (head!4504 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))))) (tail!2990 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))))))))

(declare-fun b!1931275 () Bool)

(declare-fun res!863511 () Bool)

(assert (=> b!1931275 (=> (not res!863511) (not e!1234462))))

(assert (=> b!1931275 (= res!863511 (not call!118800))))

(declare-fun b!1931276 () Bool)

(declare-fun e!1234460 () Bool)

(assert (=> b!1931276 (= e!1234465 e!1234460)))

(declare-fun res!863512 () Bool)

(assert (=> b!1931276 (=> (not res!863512) (not e!1234460))))

(assert (=> b!1931276 (= res!863512 (not lt!740260))))

(declare-fun b!1931277 () Bool)

(assert (=> b!1931277 (= e!1234460 e!1234461)))

(declare-fun res!863513 () Bool)

(assert (=> b!1931277 (=> res!863513 e!1234461)))

(assert (=> b!1931277 (= res!863513 call!118800)))

(declare-fun b!1931278 () Bool)

(declare-fun res!863514 () Bool)

(assert (=> b!1931278 (=> res!863514 e!1234465)))

(assert (=> b!1931278 (= res!863514 e!1234462)))

(declare-fun res!863516 () Bool)

(assert (=> b!1931278 (=> (not res!863516) (not e!1234462))))

(assert (=> b!1931278 (= res!863516 lt!740260)))

(declare-fun b!1931279 () Bool)

(declare-fun res!863510 () Bool)

(assert (=> b!1931279 (=> res!863510 e!1234461)))

(assert (=> b!1931279 (= res!863510 (not (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))))))))

(declare-fun b!1931280 () Bool)

(declare-fun res!863509 () Bool)

(assert (=> b!1931280 (=> (not res!863509) (not e!1234462))))

(assert (=> b!1931280 (= res!863509 (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))))))))

(declare-fun b!1931281 () Bool)

(assert (=> b!1931281 (= e!1234464 (nullable!1613 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))))))

(declare-fun b!1931282 () Bool)

(assert (=> b!1931282 (= e!1234459 e!1234463)))

(declare-fun c!314140 () Bool)

(assert (=> b!1931282 (= c!314140 ((_ is EmptyLang!5363) (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))))))

(assert (= (and d!588912 c!314142) b!1931281))

(assert (= (and d!588912 (not c!314142)) b!1931274))

(assert (= (and d!588912 c!314141) b!1931269))

(assert (= (and d!588912 (not c!314141)) b!1931282))

(assert (= (and b!1931282 c!314140) b!1931271))

(assert (= (and b!1931282 (not c!314140)) b!1931273))

(assert (= (and b!1931273 (not res!863515)) b!1931278))

(assert (= (and b!1931278 res!863516) b!1931275))

(assert (= (and b!1931275 res!863511) b!1931280))

(assert (= (and b!1931280 res!863509) b!1931270))

(assert (= (and b!1931278 (not res!863514)) b!1931276))

(assert (= (and b!1931276 res!863512) b!1931277))

(assert (= (and b!1931277 (not res!863513)) b!1931279))

(assert (= (and b!1931279 (not res!863510)) b!1931272))

(assert (= (or b!1931269 b!1931275 b!1931277) bm!118795))

(assert (=> b!1931272 m!2368131))

(declare-fun m!2369145 () Bool)

(assert (=> b!1931272 m!2369145))

(assert (=> bm!118795 m!2368131))

(declare-fun m!2369147 () Bool)

(assert (=> bm!118795 m!2369147))

(assert (=> b!1931270 m!2368131))

(assert (=> b!1931270 m!2369145))

(assert (=> d!588912 m!2368131))

(assert (=> d!588912 m!2369147))

(declare-fun m!2369149 () Bool)

(assert (=> d!588912 m!2369149))

(assert (=> b!1931279 m!2368131))

(declare-fun m!2369151 () Bool)

(assert (=> b!1931279 m!2369151))

(assert (=> b!1931279 m!2369151))

(declare-fun m!2369153 () Bool)

(assert (=> b!1931279 m!2369153))

(declare-fun m!2369155 () Bool)

(assert (=> b!1931281 m!2369155))

(assert (=> b!1931274 m!2368131))

(assert (=> b!1931274 m!2369145))

(assert (=> b!1931274 m!2369145))

(declare-fun m!2369157 () Bool)

(assert (=> b!1931274 m!2369157))

(assert (=> b!1931274 m!2368131))

(assert (=> b!1931274 m!2369151))

(assert (=> b!1931274 m!2369157))

(assert (=> b!1931274 m!2369151))

(declare-fun m!2369159 () Bool)

(assert (=> b!1931274 m!2369159))

(assert (=> b!1931280 m!2368131))

(assert (=> b!1931280 m!2369151))

(assert (=> b!1931280 m!2369151))

(assert (=> b!1931280 m!2369153))

(assert (=> b!1930484 d!588912))

(declare-fun d!588914 () Bool)

(assert (=> d!588914 (= (get!6918 lt!740027) (v!26658 lt!740027))))

(assert (=> b!1930484 d!588914))

(declare-fun d!588916 () Bool)

(assert (=> d!588916 (= (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))) (list!8889 (c!313974 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))))))

(declare-fun bs!414988 () Bool)

(assert (= bs!414988 d!588916))

(declare-fun m!2369161 () Bool)

(assert (=> bs!414988 m!2369161))

(assert (=> b!1930484 d!588916))

(declare-fun d!588918 () Bool)

(declare-fun lt!740263 () BalanceConc!14476)

(assert (=> d!588918 (= (list!8887 lt!740263) (originalCharacters!4745 (_1!11756 (get!6918 lt!740027))))))

(assert (=> d!588918 (= lt!740263 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))) (value!123824 (_1!11756 (get!6918 lt!740027)))))))

(assert (=> d!588918 (= (charsOf!2478 (_1!11756 (get!6918 lt!740027))) lt!740263)))

(declare-fun b_lambda!64145 () Bool)

(assert (=> (not b_lambda!64145) (not d!588918)))

(declare-fun tb!118581 () Bool)

(declare-fun t!180262 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180262) tb!118581))

(declare-fun b!1931286 () Bool)

(declare-fun e!1234469 () Bool)

(declare-fun tp!551217 () Bool)

(assert (=> b!1931286 (= e!1234469 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))) (value!123824 (_1!11756 (get!6918 lt!740027)))))) tp!551217))))

(declare-fun result!143224 () Bool)

(assert (=> tb!118581 (= result!143224 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))) (value!123824 (_1!11756 (get!6918 lt!740027))))) e!1234469))))

(assert (= tb!118581 b!1931286))

(declare-fun m!2369169 () Bool)

(assert (=> b!1931286 m!2369169))

(declare-fun m!2369171 () Bool)

(assert (=> tb!118581 m!2369171))

(assert (=> d!588918 t!180262))

(declare-fun b_and!151839 () Bool)

(assert (= b_and!151833 (and (=> t!180262 result!143224) b_and!151839)))

(declare-fun tb!118583 () Bool)

(declare-fun t!180264 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180264) tb!118583))

(declare-fun result!143226 () Bool)

(assert (= result!143226 result!143224))

(assert (=> d!588918 t!180264))

(declare-fun b_and!151841 () Bool)

(assert (= b_and!151831 (and (=> t!180264 result!143226) b_and!151841)))

(declare-fun tb!118585 () Bool)

(declare-fun t!180266 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180266) tb!118585))

(declare-fun result!143228 () Bool)

(assert (= result!143228 result!143224))

(assert (=> d!588918 t!180266))

(declare-fun b_and!151843 () Bool)

(assert (= b_and!151829 (and (=> t!180266 result!143228) b_and!151843)))

(declare-fun t!180268 () Bool)

(declare-fun tb!118587 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180268) tb!118587))

(declare-fun result!143230 () Bool)

(assert (= result!143230 result!143224))

(assert (=> d!588918 t!180268))

(declare-fun b_and!151845 () Bool)

(assert (= b_and!151837 (and (=> t!180268 result!143230) b_and!151845)))

(declare-fun t!180270 () Bool)

(declare-fun tb!118589 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180270) tb!118589))

(declare-fun result!143232 () Bool)

(assert (= result!143232 result!143224))

(assert (=> d!588918 t!180270))

(declare-fun b_and!151847 () Bool)

(assert (= b_and!151835 (and (=> t!180270 result!143232) b_and!151847)))

(declare-fun m!2369173 () Bool)

(assert (=> d!588918 m!2369173))

(declare-fun m!2369175 () Bool)

(assert (=> d!588918 m!2369175))

(assert (=> b!1930484 d!588918))

(declare-fun d!588922 () Bool)

(assert (=> d!588922 (= (isEmpty!13538 lt!739940) (not ((_ is Some!4552) lt!739940)))))

(assert (=> d!588580 d!588922))

(declare-fun d!588928 () Bool)

(declare-fun e!1234473 () Bool)

(assert (=> d!588928 e!1234473))

(declare-fun res!863523 () Bool)

(assert (=> d!588928 (=> (not res!863523) (not e!1234473))))

(declare-fun lt!740267 () List!22037)

(assert (=> d!588928 (= res!863523 (= (content!3179 lt!740267) ((_ map or) (content!3179 call!118768) (content!3179 lt!740092))))))

(declare-fun e!1234472 () List!22037)

(assert (=> d!588928 (= lt!740267 e!1234472)))

(declare-fun c!314145 () Bool)

(assert (=> d!588928 (= c!314145 ((_ is Nil!21955) call!118768))))

(assert (=> d!588928 (= (++!5893 call!118768 lt!740092) lt!740267)))

(declare-fun b!1931294 () Bool)

(assert (=> b!1931294 (= e!1234473 (or (not (= lt!740092 Nil!21955)) (= lt!740267 call!118768)))))

(declare-fun b!1931292 () Bool)

(assert (=> b!1931292 (= e!1234472 (Cons!21955 (h!27356 call!118768) (++!5893 (t!180082 call!118768) lt!740092)))))

(declare-fun b!1931293 () Bool)

(declare-fun res!863522 () Bool)

(assert (=> b!1931293 (=> (not res!863522) (not e!1234473))))

(assert (=> b!1931293 (= res!863522 (= (size!17131 lt!740267) (+ (size!17131 call!118768) (size!17131 lt!740092))))))

(declare-fun b!1931291 () Bool)

(assert (=> b!1931291 (= e!1234472 lt!740092)))

(assert (= (and d!588928 c!314145) b!1931291))

(assert (= (and d!588928 (not c!314145)) b!1931292))

(assert (= (and d!588928 res!863523) b!1931293))

(assert (= (and b!1931293 res!863522) b!1931294))

(declare-fun m!2369193 () Bool)

(assert (=> d!588928 m!2369193))

(declare-fun m!2369197 () Bool)

(assert (=> d!588928 m!2369197))

(declare-fun m!2369201 () Bool)

(assert (=> d!588928 m!2369201))

(declare-fun m!2369203 () Bool)

(assert (=> b!1931292 m!2369203))

(declare-fun m!2369205 () Bool)

(assert (=> b!1931293 m!2369205))

(declare-fun m!2369207 () Bool)

(assert (=> b!1931293 m!2369207))

(declare-fun m!2369209 () Bool)

(assert (=> b!1931293 m!2369209))

(assert (=> b!1930645 d!588928))

(declare-fun d!588930 () Bool)

(declare-fun lt!740276 () Token!7428)

(assert (=> d!588930 (= lt!740276 (apply!5708 (list!8890 (_1!11758 lt!740133)) 0))))

(declare-fun apply!5713 (Conc!7331 Int) Token!7428)

(assert (=> d!588930 (= lt!740276 (apply!5713 (c!313976 (_1!11758 lt!740133)) 0))))

(declare-fun e!1234483 () Bool)

(assert (=> d!588930 e!1234483))

(declare-fun res!863533 () Bool)

(assert (=> d!588930 (=> (not res!863533) (not e!1234483))))

(assert (=> d!588930 (= res!863533 (<= 0 0))))

(assert (=> d!588930 (= (apply!5707 (_1!11758 lt!740133) 0) lt!740276)))

(declare-fun b!1931310 () Bool)

(assert (=> b!1931310 (= e!1234483 (< 0 (size!17130 (_1!11758 lt!740133))))))

(assert (= (and d!588930 res!863533) b!1931310))

(declare-fun m!2369273 () Bool)

(assert (=> d!588930 m!2369273))

(assert (=> d!588930 m!2369273))

(declare-fun m!2369275 () Bool)

(assert (=> d!588930 m!2369275))

(declare-fun m!2369277 () Bool)

(assert (=> d!588930 m!2369277))

(assert (=> b!1931310 m!2368573))

(assert (=> b!1930830 d!588930))

(declare-fun d!588946 () Bool)

(assert (=> d!588946 (= (inv!29039 (tag!4388 (rule!6145 (h!27358 (t!180084 tokens!598))))) (= (mod (str.len (value!123823 (tag!4388 (rule!6145 (h!27358 (t!180084 tokens!598)))))) 2) 0))))

(assert (=> b!1930998 d!588946))

(declare-fun d!588948 () Bool)

(declare-fun res!863536 () Bool)

(declare-fun e!1234486 () Bool)

(assert (=> d!588948 (=> (not res!863536) (not e!1234486))))

(assert (=> d!588948 (= res!863536 (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))))))

(assert (=> d!588948 (= (inv!29043 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) e!1234486)))

(declare-fun b!1931313 () Bool)

(assert (=> b!1931313 (= e!1234486 (equivClasses!1496 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))))))

(assert (= (and d!588948 res!863536) b!1931313))

(declare-fun m!2369279 () Bool)

(assert (=> d!588948 m!2369279))

(declare-fun m!2369281 () Bool)

(assert (=> b!1931313 m!2369281))

(assert (=> b!1930998 d!588948))

(declare-fun d!588950 () Bool)

(declare-fun res!863537 () Bool)

(declare-fun e!1234490 () Bool)

(assert (=> d!588950 (=> (not res!863537) (not e!1234490))))

(assert (=> d!588950 (= res!863537 (rulesValid!1456 thiss!23328 (t!180083 rules!3198)))))

(assert (=> d!588950 (= (rulesInvariant!3158 thiss!23328 (t!180083 rules!3198)) e!1234490)))

(declare-fun b!1931317 () Bool)

(assert (=> b!1931317 (= e!1234490 (noDuplicateTag!1454 thiss!23328 (t!180083 rules!3198) Nil!21959))))

(assert (= (and d!588950 res!863537) b!1931317))

(declare-fun m!2369283 () Bool)

(assert (=> d!588950 m!2369283))

(declare-fun m!2369285 () Bool)

(assert (=> b!1931317 m!2369285))

(assert (=> b!1930520 d!588950))

(declare-fun d!588952 () Bool)

(assert (=> d!588952 (rulesInvariant!3158 thiss!23328 (t!180083 rules!3198))))

(declare-fun lt!740282 () Unit!36312)

(declare-fun choose!11998 (LexerInterface!3551 Rule!7676 List!22038) Unit!36312)

(assert (=> d!588952 (= lt!740282 (choose!11998 thiss!23328 (h!27357 rules!3198) (t!180083 rules!3198)))))

(assert (=> d!588952 (rulesInvariant!3158 thiss!23328 (Cons!21956 (h!27357 rules!3198) (t!180083 rules!3198)))))

(assert (=> d!588952 (= (lemmaInvariantOnRulesThenOnTail!274 thiss!23328 (h!27357 rules!3198) (t!180083 rules!3198)) lt!740282)))

(declare-fun bs!414995 () Bool)

(assert (= bs!414995 d!588952))

(assert (=> bs!414995 m!2368193))

(declare-fun m!2369313 () Bool)

(assert (=> bs!414995 m!2369313))

(declare-fun m!2369315 () Bool)

(assert (=> bs!414995 m!2369315))

(assert (=> b!1930520 d!588952))

(declare-fun b!1931338 () Bool)

(declare-fun e!1234504 () Option!4553)

(declare-fun e!1234503 () Option!4553)

(assert (=> b!1931338 (= e!1234504 e!1234503)))

(declare-fun c!314153 () Bool)

(assert (=> b!1931338 (= c!314153 (and ((_ is Cons!21956) (t!180083 rules!3198)) (not (= (tag!4388 (h!27357 (t!180083 rules!3198))) (tag!4388 (rule!6145 separatorToken!354))))))))

(declare-fun d!588964 () Bool)

(declare-fun e!1234502 () Bool)

(assert (=> d!588964 e!1234502))

(declare-fun res!863551 () Bool)

(assert (=> d!588964 (=> res!863551 e!1234502)))

(declare-fun lt!740284 () Option!4553)

(assert (=> d!588964 (= res!863551 (isEmpty!13538 lt!740284))))

(assert (=> d!588964 (= lt!740284 e!1234504)))

(declare-fun c!314152 () Bool)

(assert (=> d!588964 (= c!314152 (and ((_ is Cons!21956) (t!180083 rules!3198)) (= (tag!4388 (h!27357 (t!180083 rules!3198))) (tag!4388 (rule!6145 separatorToken!354)))))))

(assert (=> d!588964 (rulesInvariant!3158 thiss!23328 (t!180083 rules!3198))))

(assert (=> d!588964 (= (getRuleFromTag!759 thiss!23328 (t!180083 rules!3198) (tag!4388 (rule!6145 separatorToken!354))) lt!740284)))

(declare-fun b!1931339 () Bool)

(declare-fun lt!740285 () Unit!36312)

(declare-fun lt!740283 () Unit!36312)

(assert (=> b!1931339 (= lt!740285 lt!740283)))

(assert (=> b!1931339 (rulesInvariant!3158 thiss!23328 (t!180083 (t!180083 rules!3198)))))

(assert (=> b!1931339 (= lt!740283 (lemmaInvariantOnRulesThenOnTail!274 thiss!23328 (h!27357 (t!180083 rules!3198)) (t!180083 (t!180083 rules!3198))))))

(assert (=> b!1931339 (= e!1234503 (getRuleFromTag!759 thiss!23328 (t!180083 (t!180083 rules!3198)) (tag!4388 (rule!6145 separatorToken!354))))))

(declare-fun b!1931340 () Bool)

(declare-fun e!1234505 () Bool)

(assert (=> b!1931340 (= e!1234505 (= (tag!4388 (get!6917 lt!740284)) (tag!4388 (rule!6145 separatorToken!354))))))

(declare-fun b!1931341 () Bool)

(assert (=> b!1931341 (= e!1234503 None!4552)))

(declare-fun b!1931342 () Bool)

(assert (=> b!1931342 (= e!1234502 e!1234505)))

(declare-fun res!863550 () Bool)

(assert (=> b!1931342 (=> (not res!863550) (not e!1234505))))

(assert (=> b!1931342 (= res!863550 (contains!3975 (t!180083 rules!3198) (get!6917 lt!740284)))))

(declare-fun b!1931343 () Bool)

(assert (=> b!1931343 (= e!1234504 (Some!4552 (h!27357 (t!180083 rules!3198))))))

(assert (= (and d!588964 c!314152) b!1931343))

(assert (= (and d!588964 (not c!314152)) b!1931338))

(assert (= (and b!1931338 c!314153) b!1931339))

(assert (= (and b!1931338 (not c!314153)) b!1931341))

(assert (= (and d!588964 (not res!863551)) b!1931342))

(assert (= (and b!1931342 res!863550) b!1931340))

(declare-fun m!2369333 () Bool)

(assert (=> d!588964 m!2369333))

(assert (=> d!588964 m!2368193))

(declare-fun m!2369335 () Bool)

(assert (=> b!1931339 m!2369335))

(declare-fun m!2369337 () Bool)

(assert (=> b!1931339 m!2369337))

(declare-fun m!2369339 () Bool)

(assert (=> b!1931339 m!2369339))

(declare-fun m!2369341 () Bool)

(assert (=> b!1931340 m!2369341))

(assert (=> b!1931342 m!2369341))

(assert (=> b!1931342 m!2369341))

(declare-fun m!2369343 () Bool)

(assert (=> b!1931342 m!2369343))

(assert (=> b!1930520 d!588964))

(declare-fun d!588972 () Bool)

(declare-fun isBalanced!2267 (Conc!7330) Bool)

(assert (=> d!588972 (= (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))) (isBalanced!2267 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))))))

(declare-fun bs!414998 () Bool)

(assert (= bs!414998 d!588972))

(declare-fun m!2369361 () Bool)

(assert (=> bs!414998 m!2369361))

(assert (=> tb!118475 d!588972))

(declare-fun d!588986 () Bool)

(assert (=> d!588986 (= (isDefined!3845 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))) (not (isEmpty!13538 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))))))

(declare-fun bs!414999 () Bool)

(assert (= bs!414999 d!588986))

(assert (=> bs!414999 m!2367895))

(declare-fun m!2369369 () Bool)

(assert (=> bs!414999 m!2369369))

(assert (=> d!588582 d!588986))

(assert (=> d!588582 d!588594))

(declare-fun d!588990 () Bool)

(declare-fun e!1234521 () Bool)

(assert (=> d!588990 e!1234521))

(declare-fun res!863564 () Bool)

(assert (=> d!588990 (=> (not res!863564) (not e!1234521))))

(assert (=> d!588990 (= res!863564 (isDefined!3845 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))))))

(assert (=> d!588990 true))

(declare-fun _$52!1242 () Unit!36312)

(assert (=> d!588990 (= (choose!11992 thiss!23328 rules!3198 lt!739943 separatorToken!354) _$52!1242)))

(declare-fun b!1931366 () Bool)

(declare-fun res!863565 () Bool)

(assert (=> b!1931366 (=> (not res!863565) (not e!1234521))))

(assert (=> b!1931366 (= res!863565 (matchR!2631 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))) (list!8887 (charsOf!2478 separatorToken!354))))))

(declare-fun b!1931367 () Bool)

(assert (=> b!1931367 (= e!1234521 (= (rule!6145 separatorToken!354) (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))))))

(assert (= (and d!588990 res!863564) b!1931366))

(assert (= (and b!1931366 res!863565) b!1931367))

(assert (=> d!588990 m!2367895))

(assert (=> d!588990 m!2367895))

(assert (=> d!588990 m!2368071))

(assert (=> b!1931366 m!2367895))

(assert (=> b!1931366 m!2368075))

(assert (=> b!1931366 m!2367895))

(assert (=> b!1931366 m!2367903))

(assert (=> b!1931366 m!2367905))

(assert (=> b!1931366 m!2368077))

(assert (=> b!1931366 m!2367903))

(assert (=> b!1931366 m!2367905))

(assert (=> b!1931367 m!2367895))

(assert (=> b!1931367 m!2367895))

(assert (=> b!1931367 m!2368075))

(assert (=> d!588582 d!588990))

(assert (=> d!588582 d!588654))

(declare-fun d!588996 () Bool)

(assert (=> d!588996 (= (head!4504 lt!739936) (h!27356 lt!739936))))

(assert (=> b!1930780 d!588996))

(declare-fun d!588998 () Bool)

(assert (=> d!588998 (= (isEmpty!13541 (originalCharacters!4745 (h!27358 tokens!598))) ((_ is Nil!21955) (originalCharacters!4745 (h!27358 tokens!598))))))

(assert (=> d!588670 d!588998))

(declare-fun d!589000 () Bool)

(declare-fun charsToBigInt!1 (List!22036) Int)

(assert (=> d!589000 (= (inv!17 (value!123824 separatorToken!354)) (= (charsToBigInt!1 (text!28966 (value!123824 separatorToken!354))) (value!123816 (value!123824 separatorToken!354))))))

(declare-fun bs!415002 () Bool)

(assert (= bs!415002 d!589000))

(declare-fun m!2369379 () Bool)

(assert (=> bs!415002 m!2369379))

(assert (=> b!1930756 d!589000))

(declare-fun d!589002 () Bool)

(assert (=> d!589002 (= (isEmpty!13537 lt!739933) (not ((_ is Some!4553) lt!739933)))))

(assert (=> d!588568 d!589002))

(declare-fun bs!415003 () Bool)

(declare-fun d!589004 () Bool)

(assert (= bs!415003 (and d!589004 d!588640)))

(declare-fun lambda!75309 () Int)

(assert (=> bs!415003 (= (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (= lambda!75309 lambda!75289))))

(assert (=> d!589004 true))

(assert (=> d!589004 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))) (dynLambda!10666 order!13815 lambda!75309))))

(declare-fun Forall2!627 (Int) Bool)

(assert (=> d!589004 (= (equivClasses!1496 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))) (Forall2!627 lambda!75309))))

(declare-fun bs!415004 () Bool)

(assert (= bs!415004 d!589004))

(declare-fun m!2369381 () Bool)

(assert (=> bs!415004 m!2369381))

(assert (=> b!1930701 d!589004))

(declare-fun d!589006 () Bool)

(assert (=> d!589006 (= (head!4504 lt!739943) (h!27356 lt!739943))))

(assert (=> b!1930733 d!589006))

(declare-fun d!589008 () Bool)

(assert (=> d!589008 (= (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))) (list!8889 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))))

(declare-fun bs!415005 () Bool)

(assert (= bs!415005 d!589008))

(declare-fun m!2369383 () Bool)

(assert (=> bs!415005 m!2369383))

(assert (=> d!588570 d!589008))

(assert (=> d!588570 d!588630))

(declare-fun d!589010 () Bool)

(declare-fun dynLambda!10670 (Int BalanceConc!14476) Bool)

(assert (=> d!589010 (dynLambda!10670 lambda!75278 lt!739931)))

(declare-fun lt!740290 () Unit!36312)

(declare-fun choose!11999 (Int BalanceConc!14476) Unit!36312)

(assert (=> d!589010 (= lt!740290 (choose!11999 lambda!75278 lt!739931))))

(declare-fun Forall!1002 (Int) Bool)

(assert (=> d!589010 (Forall!1002 lambda!75278)))

(assert (=> d!589010 (= (ForallOf!409 lambda!75278 lt!739931) lt!740290)))

(declare-fun b_lambda!64153 () Bool)

(assert (=> (not b_lambda!64153) (not d!589010)))

(declare-fun bs!415006 () Bool)

(assert (= bs!415006 d!589010))

(declare-fun m!2369385 () Bool)

(assert (=> bs!415006 m!2369385))

(declare-fun m!2369387 () Bool)

(assert (=> bs!415006 m!2369387))

(declare-fun m!2369389 () Bool)

(assert (=> bs!415006 m!2369389))

(assert (=> d!588570 d!589010))

(declare-fun d!589012 () Bool)

(assert (=> d!589012 (= (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))) (list!8889 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))))))

(declare-fun bs!415007 () Bool)

(assert (= bs!415007 d!589012))

(declare-fun m!2369391 () Bool)

(assert (=> bs!415007 m!2369391))

(assert (=> b!1930772 d!589012))

(declare-fun bs!415008 () Bool)

(declare-fun d!589014 () Bool)

(assert (= bs!415008 (and d!589014 d!588640)))

(declare-fun lambda!75310 () Int)

(assert (=> bs!415008 (= (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (= lambda!75310 lambda!75289))))

(declare-fun bs!415009 () Bool)

(assert (= bs!415009 (and d!589014 d!589004)))

(assert (=> bs!415009 (= (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))) (= lambda!75310 lambda!75309))))

(assert (=> d!589014 true))

(assert (=> d!589014 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10666 order!13815 lambda!75310))))

(assert (=> d!589014 (= (equivClasses!1496 (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (Forall2!627 lambda!75310))))

(declare-fun bs!415010 () Bool)

(assert (= bs!415010 d!589014))

(declare-fun m!2369393 () Bool)

(assert (=> bs!415010 m!2369393))

(assert (=> b!1930799 d!589014))

(declare-fun d!589016 () Bool)

(assert (=> d!589016 (= (isEmpty!13541 (tail!2990 lt!739943)) ((_ is Nil!21955) (tail!2990 lt!739943)))))

(assert (=> b!1930741 d!589016))

(declare-fun d!589018 () Bool)

(assert (=> d!589018 (= (tail!2990 lt!739943) (t!180082 lt!739943))))

(assert (=> b!1930741 d!589018))

(declare-fun d!589020 () Bool)

(assert (=> d!589020 (= (list!8887 (ite c!314043 call!118770 call!118771)) (list!8889 (c!313974 (ite c!314043 call!118770 call!118771))))))

(declare-fun bs!415011 () Bool)

(assert (= bs!415011 d!589020))

(declare-fun m!2369395 () Bool)

(assert (=> bs!415011 m!2369395))

(assert (=> bm!118767 d!589020))

(declare-fun b!1931372 () Bool)

(declare-fun e!1234524 () Bool)

(declare-fun lt!740291 () Bool)

(declare-fun call!118805 () Bool)

(assert (=> b!1931372 (= e!1234524 (= lt!740291 call!118805))))

(declare-fun bm!118800 () Bool)

(assert (=> bm!118800 (= call!118805 (isEmpty!13541 (tail!2990 lt!739936)))))

(declare-fun b!1931373 () Bool)

(declare-fun e!1234527 () Bool)

(assert (=> b!1931373 (= e!1234527 (= (head!4504 (tail!2990 lt!739936)) (c!313975 (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936)))))))

(declare-fun b!1931374 () Bool)

(declare-fun e!1234528 () Bool)

(assert (=> b!1931374 (= e!1234528 (not lt!740291))))

(declare-fun b!1931375 () Bool)

(declare-fun e!1234526 () Bool)

(assert (=> b!1931375 (= e!1234526 (not (= (head!4504 (tail!2990 lt!739936)) (c!313975 (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936))))))))

(declare-fun b!1931376 () Bool)

(declare-fun res!863574 () Bool)

(declare-fun e!1234530 () Bool)

(assert (=> b!1931376 (=> res!863574 e!1234530)))

(assert (=> b!1931376 (= res!863574 (not ((_ is ElementMatch!5363) (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936)))))))

(assert (=> b!1931376 (= e!1234528 e!1234530)))

(declare-fun d!589022 () Bool)

(assert (=> d!589022 e!1234524))

(declare-fun c!314160 () Bool)

(assert (=> d!589022 (= c!314160 ((_ is EmptyExpr!5363) (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936))))))

(declare-fun e!1234529 () Bool)

(assert (=> d!589022 (= lt!740291 e!1234529)))

(declare-fun c!314161 () Bool)

(assert (=> d!589022 (= c!314161 (isEmpty!13541 (tail!2990 lt!739936)))))

(assert (=> d!589022 (validRegex!2139 (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936)))))

(assert (=> d!589022 (= (matchR!2631 (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936)) (tail!2990 lt!739936)) lt!740291)))

(declare-fun b!1931377 () Bool)

(assert (=> b!1931377 (= e!1234529 (matchR!2631 (derivativeStep!1372 (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936)) (head!4504 (tail!2990 lt!739936))) (tail!2990 (tail!2990 lt!739936))))))

(declare-fun b!1931378 () Bool)

(declare-fun res!863570 () Bool)

(assert (=> b!1931378 (=> (not res!863570) (not e!1234527))))

(assert (=> b!1931378 (= res!863570 (not call!118805))))

(declare-fun b!1931379 () Bool)

(declare-fun e!1234525 () Bool)

(assert (=> b!1931379 (= e!1234530 e!1234525)))

(declare-fun res!863571 () Bool)

(assert (=> b!1931379 (=> (not res!863571) (not e!1234525))))

(assert (=> b!1931379 (= res!863571 (not lt!740291))))

(declare-fun b!1931380 () Bool)

(assert (=> b!1931380 (= e!1234525 e!1234526)))

(declare-fun res!863572 () Bool)

(assert (=> b!1931380 (=> res!863572 e!1234526)))

(assert (=> b!1931380 (= res!863572 call!118805)))

(declare-fun b!1931381 () Bool)

(declare-fun res!863573 () Bool)

(assert (=> b!1931381 (=> res!863573 e!1234530)))

(assert (=> b!1931381 (= res!863573 e!1234527)))

(declare-fun res!863575 () Bool)

(assert (=> b!1931381 (=> (not res!863575) (not e!1234527))))

(assert (=> b!1931381 (= res!863575 lt!740291)))

(declare-fun b!1931382 () Bool)

(declare-fun res!863569 () Bool)

(assert (=> b!1931382 (=> res!863569 e!1234526)))

(assert (=> b!1931382 (= res!863569 (not (isEmpty!13541 (tail!2990 (tail!2990 lt!739936)))))))

(declare-fun b!1931383 () Bool)

(declare-fun res!863568 () Bool)

(assert (=> b!1931383 (=> (not res!863568) (not e!1234527))))

(assert (=> b!1931383 (= res!863568 (isEmpty!13541 (tail!2990 (tail!2990 lt!739936))))))

(declare-fun b!1931384 () Bool)

(assert (=> b!1931384 (= e!1234529 (nullable!1613 (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936))))))

(declare-fun b!1931385 () Bool)

(assert (=> b!1931385 (= e!1234524 e!1234528)))

(declare-fun c!314159 () Bool)

(assert (=> b!1931385 (= c!314159 ((_ is EmptyLang!5363) (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936))))))

(assert (= (and d!589022 c!314161) b!1931384))

(assert (= (and d!589022 (not c!314161)) b!1931377))

(assert (= (and d!589022 c!314160) b!1931372))

(assert (= (and d!589022 (not c!314160)) b!1931385))

(assert (= (and b!1931385 c!314159) b!1931374))

(assert (= (and b!1931385 (not c!314159)) b!1931376))

(assert (= (and b!1931376 (not res!863574)) b!1931381))

(assert (= (and b!1931381 res!863575) b!1931378))

(assert (= (and b!1931378 res!863570) b!1931383))

(assert (= (and b!1931383 res!863568) b!1931373))

(assert (= (and b!1931381 (not res!863573)) b!1931379))

(assert (= (and b!1931379 res!863571) b!1931380))

(assert (= (and b!1931380 (not res!863572)) b!1931382))

(assert (= (and b!1931382 (not res!863569)) b!1931375))

(assert (= (or b!1931372 b!1931378 b!1931380) bm!118800))

(assert (=> b!1931375 m!2368505))

(declare-fun m!2369397 () Bool)

(assert (=> b!1931375 m!2369397))

(assert (=> bm!118800 m!2368505))

(assert (=> bm!118800 m!2368507))

(assert (=> b!1931373 m!2368505))

(assert (=> b!1931373 m!2369397))

(assert (=> d!589022 m!2368505))

(assert (=> d!589022 m!2368507))

(assert (=> d!589022 m!2368511))

(declare-fun m!2369399 () Bool)

(assert (=> d!589022 m!2369399))

(assert (=> b!1931382 m!2368505))

(declare-fun m!2369401 () Bool)

(assert (=> b!1931382 m!2369401))

(assert (=> b!1931382 m!2369401))

(declare-fun m!2369403 () Bool)

(assert (=> b!1931382 m!2369403))

(assert (=> b!1931384 m!2368511))

(declare-fun m!2369405 () Bool)

(assert (=> b!1931384 m!2369405))

(assert (=> b!1931377 m!2368505))

(assert (=> b!1931377 m!2369397))

(assert (=> b!1931377 m!2368511))

(assert (=> b!1931377 m!2369397))

(declare-fun m!2369407 () Bool)

(assert (=> b!1931377 m!2369407))

(assert (=> b!1931377 m!2368505))

(assert (=> b!1931377 m!2369401))

(assert (=> b!1931377 m!2369407))

(assert (=> b!1931377 m!2369401))

(declare-fun m!2369409 () Bool)

(assert (=> b!1931377 m!2369409))

(assert (=> b!1931383 m!2368505))

(assert (=> b!1931383 m!2369401))

(assert (=> b!1931383 m!2369401))

(assert (=> b!1931383 m!2369403))

(assert (=> b!1930784 d!589022))

(declare-fun b!1931407 () Bool)

(declare-fun e!1234543 () Regex!5363)

(declare-fun call!118816 () Regex!5363)

(assert (=> b!1931407 (= e!1234543 (Concat!9438 call!118816 (regex!3938 lt!739937)))))

(declare-fun call!118817 () Regex!5363)

(declare-fun c!314176 () Bool)

(declare-fun bm!118809 () Bool)

(declare-fun c!314172 () Bool)

(assert (=> bm!118809 (= call!118817 (derivativeStep!1372 (ite c!314172 (regTwo!11239 (regex!3938 lt!739937)) (ite c!314176 (regTwo!11238 (regex!3938 lt!739937)) (regOne!11238 (regex!3938 lt!739937)))) (head!4504 lt!739936)))))

(declare-fun b!1931408 () Bool)

(assert (=> b!1931408 (= c!314172 ((_ is Union!5363) (regex!3938 lt!739937)))))

(declare-fun e!1234545 () Regex!5363)

(declare-fun e!1234541 () Regex!5363)

(assert (=> b!1931408 (= e!1234545 e!1234541)))

(declare-fun b!1931409 () Bool)

(declare-fun e!1234542 () Regex!5363)

(assert (=> b!1931409 (= e!1234542 EmptyLang!5363)))

(declare-fun b!1931410 () Bool)

(assert (=> b!1931410 (= e!1234542 e!1234545)))

(declare-fun c!314173 () Bool)

(assert (=> b!1931410 (= c!314173 ((_ is ElementMatch!5363) (regex!3938 lt!739937)))))

(declare-fun bm!118810 () Bool)

(declare-fun call!118814 () Regex!5363)

(assert (=> bm!118810 (= call!118814 call!118817)))

(declare-fun b!1931411 () Bool)

(declare-fun e!1234544 () Regex!5363)

(assert (=> b!1931411 (= e!1234544 (Union!5363 (Concat!9438 call!118816 (regTwo!11238 (regex!3938 lt!739937))) call!118814))))

(declare-fun c!314175 () Bool)

(declare-fun call!118815 () Regex!5363)

(declare-fun bm!118811 () Bool)

(assert (=> bm!118811 (= call!118815 (derivativeStep!1372 (ite c!314172 (regOne!11239 (regex!3938 lt!739937)) (ite c!314175 (reg!5692 (regex!3938 lt!739937)) (regOne!11238 (regex!3938 lt!739937)))) (head!4504 lt!739936)))))

(declare-fun d!589024 () Bool)

(declare-fun lt!740294 () Regex!5363)

(assert (=> d!589024 (validRegex!2139 lt!740294)))

(assert (=> d!589024 (= lt!740294 e!1234542)))

(declare-fun c!314174 () Bool)

(assert (=> d!589024 (= c!314174 (or ((_ is EmptyExpr!5363) (regex!3938 lt!739937)) ((_ is EmptyLang!5363) (regex!3938 lt!739937))))))

(assert (=> d!589024 (validRegex!2139 (regex!3938 lt!739937))))

(assert (=> d!589024 (= (derivativeStep!1372 (regex!3938 lt!739937) (head!4504 lt!739936)) lt!740294)))

(declare-fun b!1931406 () Bool)

(assert (=> b!1931406 (= c!314176 (nullable!1613 (regOne!11238 (regex!3938 lt!739937))))))

(assert (=> b!1931406 (= e!1234543 e!1234544)))

(declare-fun b!1931412 () Bool)

(assert (=> b!1931412 (= e!1234541 (Union!5363 call!118815 call!118817))))

(declare-fun bm!118812 () Bool)

(assert (=> bm!118812 (= call!118816 call!118815)))

(declare-fun b!1931413 () Bool)

(assert (=> b!1931413 (= e!1234541 e!1234543)))

(assert (=> b!1931413 (= c!314175 ((_ is Star!5363) (regex!3938 lt!739937)))))

(declare-fun b!1931414 () Bool)

(assert (=> b!1931414 (= e!1234545 (ite (= (head!4504 lt!739936) (c!313975 (regex!3938 lt!739937))) EmptyExpr!5363 EmptyLang!5363))))

(declare-fun b!1931415 () Bool)

(assert (=> b!1931415 (= e!1234544 (Union!5363 (Concat!9438 call!118814 (regTwo!11238 (regex!3938 lt!739937))) EmptyLang!5363))))

(assert (= (and d!589024 c!314174) b!1931409))

(assert (= (and d!589024 (not c!314174)) b!1931410))

(assert (= (and b!1931410 c!314173) b!1931414))

(assert (= (and b!1931410 (not c!314173)) b!1931408))

(assert (= (and b!1931408 c!314172) b!1931412))

(assert (= (and b!1931408 (not c!314172)) b!1931413))

(assert (= (and b!1931413 c!314175) b!1931407))

(assert (= (and b!1931413 (not c!314175)) b!1931406))

(assert (= (and b!1931406 c!314176) b!1931411))

(assert (= (and b!1931406 (not c!314176)) b!1931415))

(assert (= (or b!1931411 b!1931415) bm!118810))

(assert (= (or b!1931407 b!1931411) bm!118812))

(assert (= (or b!1931412 bm!118812) bm!118811))

(assert (= (or b!1931412 bm!118810) bm!118809))

(assert (=> bm!118809 m!2368499))

(declare-fun m!2369411 () Bool)

(assert (=> bm!118809 m!2369411))

(assert (=> bm!118811 m!2368499))

(declare-fun m!2369413 () Bool)

(assert (=> bm!118811 m!2369413))

(declare-fun m!2369415 () Bool)

(assert (=> d!589024 m!2369415))

(assert (=> d!589024 m!2368503))

(declare-fun m!2369417 () Bool)

(assert (=> b!1931406 m!2369417))

(assert (=> b!1930784 d!589024))

(assert (=> b!1930784 d!588996))

(declare-fun d!589026 () Bool)

(assert (=> d!589026 (= (tail!2990 lt!739936) (t!180082 lt!739936))))

(assert (=> b!1930784 d!589026))

(declare-fun d!589028 () Bool)

(assert (=> d!589028 (= (isDefined!3845 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))) (not (isEmpty!13538 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))

(declare-fun bs!415012 () Bool)

(assert (= bs!415012 d!589028))

(assert (=> bs!415012 m!2367907))

(declare-fun m!2369419 () Bool)

(assert (=> bs!415012 m!2369419))

(assert (=> d!588650 d!589028))

(assert (=> d!588650 d!588598))

(declare-fun d!589030 () Bool)

(declare-fun e!1234546 () Bool)

(assert (=> d!589030 e!1234546))

(declare-fun res!863576 () Bool)

(assert (=> d!589030 (=> (not res!863576) (not e!1234546))))

(assert (=> d!589030 (= res!863576 (isDefined!3845 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))))))

(assert (=> d!589030 true))

(declare-fun _$52!1243 () Unit!36312)

(assert (=> d!589030 (= (choose!11992 thiss!23328 rules!3198 lt!739936 (h!27358 tokens!598)) _$52!1243)))

(declare-fun b!1931416 () Bool)

(declare-fun res!863577 () Bool)

(assert (=> b!1931416 (=> (not res!863577) (not e!1234546))))

(assert (=> b!1931416 (= res!863577 (matchR!2631 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))) (list!8887 (charsOf!2478 (h!27358 tokens!598)))))))

(declare-fun b!1931417 () Bool)

(assert (=> b!1931417 (= e!1234546 (= (rule!6145 (h!27358 tokens!598)) (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))

(assert (= (and d!589030 res!863576) b!1931416))

(assert (= (and b!1931416 res!863577) b!1931417))

(assert (=> d!589030 m!2367907))

(assert (=> d!589030 m!2367907))

(assert (=> d!589030 m!2368433))

(assert (=> b!1931416 m!2367907))

(assert (=> b!1931416 m!2368439))

(assert (=> b!1931416 m!2367907))

(assert (=> b!1931416 m!2367897))

(assert (=> b!1931416 m!2368437))

(assert (=> b!1931416 m!2368441))

(assert (=> b!1931416 m!2367897))

(assert (=> b!1931416 m!2368437))

(assert (=> b!1931417 m!2367907))

(assert (=> b!1931417 m!2367907))

(assert (=> b!1931417 m!2368439))

(assert (=> d!588650 d!589030))

(assert (=> d!588650 d!588654))

(declare-fun d!589032 () Bool)

(declare-fun lt!740297 () BalanceConc!14476)

(assert (=> d!589032 (= (list!8887 lt!740297) (printListTailRec!456 thiss!23328 (dropList!787 lt!739941 (+ 0 1)) (list!8887 (++!5894 (BalanceConc!14477 Empty!7330) (charsOf!2478 (apply!5707 lt!739941 0))))))))

(declare-fun e!1234547 () BalanceConc!14476)

(assert (=> d!589032 (= lt!740297 e!1234547)))

(declare-fun c!314177 () Bool)

(assert (=> d!589032 (= c!314177 (>= (+ 0 1) (size!17130 lt!739941)))))

(declare-fun e!1234548 () Bool)

(assert (=> d!589032 e!1234548))

(declare-fun res!863578 () Bool)

(assert (=> d!589032 (=> (not res!863578) (not e!1234548))))

(assert (=> d!589032 (= res!863578 (>= (+ 0 1) 0))))

(assert (=> d!589032 (= (printTailRec!1027 thiss!23328 lt!739941 (+ 0 1) (++!5894 (BalanceConc!14477 Empty!7330) (charsOf!2478 (apply!5707 lt!739941 0)))) lt!740297)))

(declare-fun b!1931418 () Bool)

(assert (=> b!1931418 (= e!1234548 (<= (+ 0 1) (size!17130 lt!739941)))))

(declare-fun b!1931419 () Bool)

(assert (=> b!1931419 (= e!1234547 (++!5894 (BalanceConc!14477 Empty!7330) (charsOf!2478 (apply!5707 lt!739941 0))))))

(declare-fun b!1931420 () Bool)

(assert (=> b!1931420 (= e!1234547 (printTailRec!1027 thiss!23328 lt!739941 (+ 0 1 1) (++!5894 (++!5894 (BalanceConc!14477 Empty!7330) (charsOf!2478 (apply!5707 lt!739941 0))) (charsOf!2478 (apply!5707 lt!739941 (+ 0 1))))))))

(declare-fun lt!740298 () List!22039)

(assert (=> b!1931420 (= lt!740298 (list!8890 lt!739941))))

(declare-fun lt!740300 () Unit!36312)

(assert (=> b!1931420 (= lt!740300 (lemmaDropApply!711 lt!740298 (+ 0 1)))))

(assert (=> b!1931420 (= (head!4501 (drop!1078 lt!740298 (+ 0 1))) (apply!5708 lt!740298 (+ 0 1)))))

(declare-fun lt!740299 () Unit!36312)

(assert (=> b!1931420 (= lt!740299 lt!740300)))

(declare-fun lt!740301 () List!22039)

(assert (=> b!1931420 (= lt!740301 (list!8890 lt!739941))))

(declare-fun lt!740296 () Unit!36312)

(assert (=> b!1931420 (= lt!740296 (lemmaDropTail!687 lt!740301 (+ 0 1)))))

(assert (=> b!1931420 (= (tail!2987 (drop!1078 lt!740301 (+ 0 1))) (drop!1078 lt!740301 (+ 0 1 1)))))

(declare-fun lt!740295 () Unit!36312)

(assert (=> b!1931420 (= lt!740295 lt!740296)))

(assert (= (and d!589032 res!863578) b!1931418))

(assert (= (and d!589032 c!314177) b!1931419))

(assert (= (and d!589032 (not c!314177)) b!1931420))

(assert (=> d!589032 m!2368005))

(declare-fun m!2369421 () Bool)

(assert (=> d!589032 m!2369421))

(declare-fun m!2369423 () Bool)

(assert (=> d!589032 m!2369423))

(assert (=> d!589032 m!2367991))

(declare-fun m!2369425 () Bool)

(assert (=> d!589032 m!2369425))

(assert (=> d!589032 m!2369423))

(assert (=> d!589032 m!2369421))

(declare-fun m!2369427 () Bool)

(assert (=> d!589032 m!2369427))

(assert (=> b!1931418 m!2367991))

(declare-fun m!2369429 () Bool)

(assert (=> b!1931420 m!2369429))

(declare-fun m!2369431 () Bool)

(assert (=> b!1931420 m!2369431))

(declare-fun m!2369433 () Bool)

(assert (=> b!1931420 m!2369433))

(declare-fun m!2369435 () Bool)

(assert (=> b!1931420 m!2369435))

(declare-fun m!2369437 () Bool)

(assert (=> b!1931420 m!2369437))

(declare-fun m!2369439 () Bool)

(assert (=> b!1931420 m!2369439))

(assert (=> b!1931420 m!2369435))

(declare-fun m!2369441 () Bool)

(assert (=> b!1931420 m!2369441))

(declare-fun m!2369443 () Bool)

(assert (=> b!1931420 m!2369443))

(declare-fun m!2369445 () Bool)

(assert (=> b!1931420 m!2369445))

(assert (=> b!1931420 m!2369433))

(declare-fun m!2369447 () Bool)

(assert (=> b!1931420 m!2369447))

(declare-fun m!2369449 () Bool)

(assert (=> b!1931420 m!2369449))

(assert (=> b!1931420 m!2367983))

(declare-fun m!2369451 () Bool)

(assert (=> b!1931420 m!2369451))

(assert (=> b!1931420 m!2369443))

(assert (=> b!1931420 m!2368005))

(assert (=> b!1931420 m!2369447))

(assert (=> b!1931420 m!2369437))

(assert (=> b!1930363 d!589032))

(declare-fun d!589034 () Bool)

(assert (=> d!589034 (= (list!8890 lt!739941) (list!8893 (c!313976 lt!739941)))))

(declare-fun bs!415013 () Bool)

(assert (= bs!415013 d!589034))

(assert (=> bs!415013 m!2369083))

(assert (=> b!1930363 d!589034))

(declare-fun d!589036 () Bool)

(assert (=> d!589036 (= (tail!2987 (drop!1078 lt!739970 0)) (t!180084 (drop!1078 lt!739970 0)))))

(assert (=> b!1930363 d!589036))

(declare-fun d!589038 () Bool)

(declare-fun lt!740302 () BalanceConc!14476)

(assert (=> d!589038 (= (list!8887 lt!740302) (originalCharacters!4745 (apply!5707 lt!739941 0)))))

(assert (=> d!589038 (= lt!740302 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0)))) (value!123824 (apply!5707 lt!739941 0))))))

(assert (=> d!589038 (= (charsOf!2478 (apply!5707 lt!739941 0)) lt!740302)))

(declare-fun b_lambda!64155 () Bool)

(assert (=> (not b_lambda!64155) (not d!589038)))

(declare-fun tb!118611 () Bool)

(declare-fun t!180292 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0))))) t!180292) tb!118611))

(declare-fun b!1931421 () Bool)

(declare-fun e!1234549 () Bool)

(declare-fun tp!551220 () Bool)

(assert (=> b!1931421 (= e!1234549 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0)))) (value!123824 (apply!5707 lt!739941 0))))) tp!551220))))

(declare-fun result!143254 () Bool)

(assert (=> tb!118611 (= result!143254 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0)))) (value!123824 (apply!5707 lt!739941 0)))) e!1234549))))

(assert (= tb!118611 b!1931421))

(declare-fun m!2369453 () Bool)

(assert (=> b!1931421 m!2369453))

(declare-fun m!2369455 () Bool)

(assert (=> tb!118611 m!2369455))

(assert (=> d!589038 t!180292))

(declare-fun b_and!151869 () Bool)

(assert (= b_and!151839 (and (=> t!180292 result!143254) b_and!151869)))

(declare-fun tb!118613 () Bool)

(declare-fun t!180294 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0))))) t!180294) tb!118613))

(declare-fun result!143256 () Bool)

(assert (= result!143256 result!143254))

(assert (=> d!589038 t!180294))

(declare-fun b_and!151871 () Bool)

(assert (= b_and!151841 (and (=> t!180294 result!143256) b_and!151871)))

(declare-fun t!180296 () Bool)

(declare-fun tb!118615 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0))))) t!180296) tb!118615))

(declare-fun result!143258 () Bool)

(assert (= result!143258 result!143254))

(assert (=> d!589038 t!180296))

(declare-fun b_and!151873 () Bool)

(assert (= b_and!151847 (and (=> t!180296 result!143258) b_and!151873)))

(declare-fun t!180298 () Bool)

(declare-fun tb!118617 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0))))) t!180298) tb!118617))

(declare-fun result!143260 () Bool)

(assert (= result!143260 result!143254))

(assert (=> d!589038 t!180298))

(declare-fun b_and!151875 () Bool)

(assert (= b_and!151843 (and (=> t!180298 result!143260) b_and!151875)))

(declare-fun tb!118619 () Bool)

(declare-fun t!180300 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0))))) t!180300) tb!118619))

(declare-fun result!143262 () Bool)

(assert (= result!143262 result!143254))

(assert (=> d!589038 t!180300))

(declare-fun b_and!151877 () Bool)

(assert (= b_and!151845 (and (=> t!180300 result!143262) b_and!151877)))

(declare-fun m!2369457 () Bool)

(assert (=> d!589038 m!2369457))

(declare-fun m!2369459 () Bool)

(assert (=> d!589038 m!2369459))

(assert (=> b!1930363 d!589038))

(declare-fun d!589040 () Bool)

(assert (=> d!589040 (= (head!4501 (drop!1078 lt!739967 0)) (h!27358 (drop!1078 lt!739967 0)))))

(assert (=> b!1930363 d!589040))

(declare-fun d!589042 () Bool)

(assert (=> d!589042 (= (head!4501 (drop!1078 lt!739967 0)) (apply!5708 lt!739967 0))))

(declare-fun lt!740305 () Unit!36312)

(declare-fun choose!12000 (List!22039 Int) Unit!36312)

(assert (=> d!589042 (= lt!740305 (choose!12000 lt!739967 0))))

(declare-fun e!1234552 () Bool)

(assert (=> d!589042 e!1234552))

(declare-fun res!863581 () Bool)

(assert (=> d!589042 (=> (not res!863581) (not e!1234552))))

(assert (=> d!589042 (= res!863581 (>= 0 0))))

(assert (=> d!589042 (= (lemmaDropApply!711 lt!739967 0) lt!740305)))

(declare-fun b!1931424 () Bool)

(assert (=> b!1931424 (= e!1234552 (< 0 (size!17133 lt!739967)))))

(assert (= (and d!589042 res!863581) b!1931424))

(assert (=> d!589042 m!2368003))

(assert (=> d!589042 m!2368003))

(assert (=> d!589042 m!2368009))

(assert (=> d!589042 m!2368017))

(declare-fun m!2369461 () Bool)

(assert (=> d!589042 m!2369461))

(declare-fun m!2369463 () Bool)

(assert (=> b!1931424 m!2369463))

(assert (=> b!1930363 d!589042))

(declare-fun b!1931443 () Bool)

(declare-fun e!1234567 () List!22039)

(declare-fun e!1234564 () List!22039)

(assert (=> b!1931443 (= e!1234567 e!1234564)))

(declare-fun c!314187 () Bool)

(assert (=> b!1931443 (= c!314187 (<= 0 0))))

(declare-fun bm!118815 () Bool)

(declare-fun call!118820 () Int)

(assert (=> bm!118815 (= call!118820 (size!17133 lt!739967))))

(declare-fun b!1931444 () Bool)

(assert (=> b!1931444 (= e!1234567 Nil!21957)))

(declare-fun b!1931445 () Bool)

(declare-fun e!1234565 () Int)

(assert (=> b!1931445 (= e!1234565 call!118820)))

(declare-fun b!1931446 () Bool)

(assert (=> b!1931446 (= e!1234564 lt!739967)))

(declare-fun b!1931447 () Bool)

(declare-fun e!1234563 () Int)

(assert (=> b!1931447 (= e!1234563 0)))

(declare-fun b!1931448 () Bool)

(declare-fun e!1234566 () Bool)

(declare-fun lt!740308 () List!22039)

(assert (=> b!1931448 (= e!1234566 (= (size!17133 lt!740308) e!1234565))))

(declare-fun c!314189 () Bool)

(assert (=> b!1931448 (= c!314189 (<= 0 0))))

(declare-fun d!589044 () Bool)

(assert (=> d!589044 e!1234566))

(declare-fun res!863584 () Bool)

(assert (=> d!589044 (=> (not res!863584) (not e!1234566))))

(declare-fun content!3181 (List!22039) (InoxSet Token!7428))

(assert (=> d!589044 (= res!863584 (= ((_ map implies) (content!3181 lt!740308) (content!3181 lt!739967)) ((as const (InoxSet Token!7428)) true)))))

(assert (=> d!589044 (= lt!740308 e!1234567)))

(declare-fun c!314188 () Bool)

(assert (=> d!589044 (= c!314188 ((_ is Nil!21957) lt!739967))))

(assert (=> d!589044 (= (drop!1078 lt!739967 0) lt!740308)))

(declare-fun b!1931449 () Bool)

(assert (=> b!1931449 (= e!1234564 (drop!1078 (t!180084 lt!739967) (- 0 1)))))

(declare-fun b!1931450 () Bool)

(assert (=> b!1931450 (= e!1234565 e!1234563)))

(declare-fun c!314186 () Bool)

(assert (=> b!1931450 (= c!314186 (>= 0 call!118820))))

(declare-fun b!1931451 () Bool)

(assert (=> b!1931451 (= e!1234563 (- call!118820 0))))

(assert (= (and d!589044 c!314188) b!1931444))

(assert (= (and d!589044 (not c!314188)) b!1931443))

(assert (= (and b!1931443 c!314187) b!1931446))

(assert (= (and b!1931443 (not c!314187)) b!1931449))

(assert (= (and d!589044 res!863584) b!1931448))

(assert (= (and b!1931448 c!314189) b!1931445))

(assert (= (and b!1931448 (not c!314189)) b!1931450))

(assert (= (and b!1931450 c!314186) b!1931447))

(assert (= (and b!1931450 (not c!314186)) b!1931451))

(assert (= (or b!1931445 b!1931450 b!1931451) bm!118815))

(assert (=> bm!118815 m!2369463))

(declare-fun m!2369465 () Bool)

(assert (=> b!1931448 m!2369465))

(declare-fun m!2369467 () Bool)

(assert (=> d!589044 m!2369467))

(declare-fun m!2369469 () Bool)

(assert (=> d!589044 m!2369469))

(declare-fun m!2369471 () Bool)

(assert (=> b!1931449 m!2369471))

(assert (=> b!1930363 d!589044))

(declare-fun b!1931452 () Bool)

(declare-fun e!1234572 () List!22039)

(declare-fun e!1234569 () List!22039)

(assert (=> b!1931452 (= e!1234572 e!1234569)))

(declare-fun c!314191 () Bool)

(assert (=> b!1931452 (= c!314191 (<= (+ 0 1) 0))))

(declare-fun bm!118816 () Bool)

(declare-fun call!118821 () Int)

(assert (=> bm!118816 (= call!118821 (size!17133 lt!739970))))

(declare-fun b!1931453 () Bool)

(assert (=> b!1931453 (= e!1234572 Nil!21957)))

(declare-fun b!1931454 () Bool)

(declare-fun e!1234570 () Int)

(assert (=> b!1931454 (= e!1234570 call!118821)))

(declare-fun b!1931455 () Bool)

(assert (=> b!1931455 (= e!1234569 lt!739970)))

(declare-fun b!1931456 () Bool)

(declare-fun e!1234568 () Int)

(assert (=> b!1931456 (= e!1234568 0)))

(declare-fun b!1931457 () Bool)

(declare-fun e!1234571 () Bool)

(declare-fun lt!740309 () List!22039)

(assert (=> b!1931457 (= e!1234571 (= (size!17133 lt!740309) e!1234570))))

(declare-fun c!314193 () Bool)

(assert (=> b!1931457 (= c!314193 (<= (+ 0 1) 0))))

(declare-fun d!589046 () Bool)

(assert (=> d!589046 e!1234571))

(declare-fun res!863585 () Bool)

(assert (=> d!589046 (=> (not res!863585) (not e!1234571))))

(assert (=> d!589046 (= res!863585 (= ((_ map implies) (content!3181 lt!740309) (content!3181 lt!739970)) ((as const (InoxSet Token!7428)) true)))))

(assert (=> d!589046 (= lt!740309 e!1234572)))

(declare-fun c!314192 () Bool)

(assert (=> d!589046 (= c!314192 ((_ is Nil!21957) lt!739970))))

(assert (=> d!589046 (= (drop!1078 lt!739970 (+ 0 1)) lt!740309)))

(declare-fun b!1931458 () Bool)

(assert (=> b!1931458 (= e!1234569 (drop!1078 (t!180084 lt!739970) (- (+ 0 1) 1)))))

(declare-fun b!1931459 () Bool)

(assert (=> b!1931459 (= e!1234570 e!1234568)))

(declare-fun c!314190 () Bool)

(assert (=> b!1931459 (= c!314190 (>= (+ 0 1) call!118821))))

(declare-fun b!1931460 () Bool)

(assert (=> b!1931460 (= e!1234568 (- call!118821 (+ 0 1)))))

(assert (= (and d!589046 c!314192) b!1931453))

(assert (= (and d!589046 (not c!314192)) b!1931452))

(assert (= (and b!1931452 c!314191) b!1931455))

(assert (= (and b!1931452 (not c!314191)) b!1931458))

(assert (= (and d!589046 res!863585) b!1931457))

(assert (= (and b!1931457 c!314193) b!1931454))

(assert (= (and b!1931457 (not c!314193)) b!1931459))

(assert (= (and b!1931459 c!314190) b!1931456))

(assert (= (and b!1931459 (not c!314190)) b!1931460))

(assert (= (or b!1931454 b!1931459 b!1931460) bm!118816))

(declare-fun m!2369473 () Bool)

(assert (=> bm!118816 m!2369473))

(declare-fun m!2369475 () Bool)

(assert (=> b!1931457 m!2369475))

(declare-fun m!2369477 () Bool)

(assert (=> d!589046 m!2369477))

(declare-fun m!2369479 () Bool)

(assert (=> d!589046 m!2369479))

(declare-fun m!2369481 () Bool)

(assert (=> b!1931458 m!2369481))

(assert (=> b!1930363 d!589046))

(declare-fun d!589048 () Bool)

(declare-fun lt!740312 () Token!7428)

(declare-fun contains!3978 (List!22039 Token!7428) Bool)

(assert (=> d!589048 (contains!3978 lt!739967 lt!740312)))

(declare-fun e!1234577 () Token!7428)

(assert (=> d!589048 (= lt!740312 e!1234577)))

(declare-fun c!314196 () Bool)

(assert (=> d!589048 (= c!314196 (= 0 0))))

(declare-fun e!1234578 () Bool)

(assert (=> d!589048 e!1234578))

(declare-fun res!863588 () Bool)

(assert (=> d!589048 (=> (not res!863588) (not e!1234578))))

(assert (=> d!589048 (= res!863588 (<= 0 0))))

(assert (=> d!589048 (= (apply!5708 lt!739967 0) lt!740312)))

(declare-fun b!1931467 () Bool)

(assert (=> b!1931467 (= e!1234578 (< 0 (size!17133 lt!739967)))))

(declare-fun b!1931468 () Bool)

(assert (=> b!1931468 (= e!1234577 (head!4501 lt!739967))))

(declare-fun b!1931469 () Bool)

(assert (=> b!1931469 (= e!1234577 (apply!5708 (tail!2987 lt!739967) (- 0 1)))))

(assert (= (and d!589048 res!863588) b!1931467))

(assert (= (and d!589048 c!314196) b!1931468))

(assert (= (and d!589048 (not c!314196)) b!1931469))

(declare-fun m!2369483 () Bool)

(assert (=> d!589048 m!2369483))

(assert (=> b!1931467 m!2369463))

(declare-fun m!2369485 () Bool)

(assert (=> b!1931468 m!2369485))

(declare-fun m!2369487 () Bool)

(assert (=> b!1931469 m!2369487))

(assert (=> b!1931469 m!2369487))

(declare-fun m!2369489 () Bool)

(assert (=> b!1931469 m!2369489))

(assert (=> b!1930363 d!589048))

(declare-fun d!589050 () Bool)

(declare-fun lt!740313 () Token!7428)

(assert (=> d!589050 (= lt!740313 (apply!5708 (list!8890 lt!739941) 0))))

(assert (=> d!589050 (= lt!740313 (apply!5713 (c!313976 lt!739941) 0))))

(declare-fun e!1234579 () Bool)

(assert (=> d!589050 e!1234579))

(declare-fun res!863589 () Bool)

(assert (=> d!589050 (=> (not res!863589) (not e!1234579))))

(assert (=> d!589050 (= res!863589 (<= 0 0))))

(assert (=> d!589050 (= (apply!5707 lt!739941 0) lt!740313)))

(declare-fun b!1931470 () Bool)

(assert (=> b!1931470 (= e!1234579 (< 0 (size!17130 lt!739941)))))

(assert (= (and d!589050 res!863589) b!1931470))

(assert (=> d!589050 m!2367983))

(assert (=> d!589050 m!2367983))

(declare-fun m!2369491 () Bool)

(assert (=> d!589050 m!2369491))

(declare-fun m!2369493 () Bool)

(assert (=> d!589050 m!2369493))

(assert (=> b!1931470 m!2367991))

(assert (=> b!1930363 d!589050))

(declare-fun d!589052 () Bool)

(declare-fun e!1234582 () Bool)

(assert (=> d!589052 e!1234582))

(declare-fun res!863601 () Bool)

(assert (=> d!589052 (=> (not res!863601) (not e!1234582))))

(declare-fun appendAssocInst!525 (Conc!7330 Conc!7330) Bool)

(assert (=> d!589052 (= res!863601 (appendAssocInst!525 (c!313974 (BalanceConc!14477 Empty!7330)) (c!313974 (charsOf!2478 (apply!5707 lt!739941 0)))))))

(declare-fun lt!740316 () BalanceConc!14476)

(declare-fun ++!5896 (Conc!7330 Conc!7330) Conc!7330)

(assert (=> d!589052 (= lt!740316 (BalanceConc!14477 (++!5896 (c!313974 (BalanceConc!14477 Empty!7330)) (c!313974 (charsOf!2478 (apply!5707 lt!739941 0))))))))

(assert (=> d!589052 (= (++!5894 (BalanceConc!14477 Empty!7330) (charsOf!2478 (apply!5707 lt!739941 0))) lt!740316)))

(declare-fun b!1931481 () Bool)

(declare-fun res!863598 () Bool)

(assert (=> b!1931481 (=> (not res!863598) (not e!1234582))))

(declare-fun height!1111 (Conc!7330) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1931481 (= res!863598 (>= (height!1111 (++!5896 (c!313974 (BalanceConc!14477 Empty!7330)) (c!313974 (charsOf!2478 (apply!5707 lt!739941 0))))) (max!0 (height!1111 (c!313974 (BalanceConc!14477 Empty!7330))) (height!1111 (c!313974 (charsOf!2478 (apply!5707 lt!739941 0)))))))))

(declare-fun b!1931482 () Bool)

(assert (=> b!1931482 (= e!1234582 (= (list!8887 lt!740316) (++!5893 (list!8887 (BalanceConc!14477 Empty!7330)) (list!8887 (charsOf!2478 (apply!5707 lt!739941 0))))))))

(declare-fun b!1931479 () Bool)

(declare-fun res!863600 () Bool)

(assert (=> b!1931479 (=> (not res!863600) (not e!1234582))))

(assert (=> b!1931479 (= res!863600 (isBalanced!2267 (++!5896 (c!313974 (BalanceConc!14477 Empty!7330)) (c!313974 (charsOf!2478 (apply!5707 lt!739941 0))))))))

(declare-fun b!1931480 () Bool)

(declare-fun res!863599 () Bool)

(assert (=> b!1931480 (=> (not res!863599) (not e!1234582))))

(assert (=> b!1931480 (= res!863599 (<= (height!1111 (++!5896 (c!313974 (BalanceConc!14477 Empty!7330)) (c!313974 (charsOf!2478 (apply!5707 lt!739941 0))))) (+ (max!0 (height!1111 (c!313974 (BalanceConc!14477 Empty!7330))) (height!1111 (c!313974 (charsOf!2478 (apply!5707 lt!739941 0))))) 1)))))

(assert (= (and d!589052 res!863601) b!1931479))

(assert (= (and b!1931479 res!863600) b!1931480))

(assert (= (and b!1931480 res!863599) b!1931481))

(assert (= (and b!1931481 res!863598) b!1931482))

(declare-fun m!2369495 () Bool)

(assert (=> d!589052 m!2369495))

(declare-fun m!2369497 () Bool)

(assert (=> d!589052 m!2369497))

(declare-fun m!2369499 () Bool)

(assert (=> b!1931480 m!2369499))

(declare-fun m!2369501 () Bool)

(assert (=> b!1931480 m!2369501))

(declare-fun m!2369503 () Bool)

(assert (=> b!1931480 m!2369503))

(assert (=> b!1931480 m!2369501))

(assert (=> b!1931480 m!2369497))

(assert (=> b!1931480 m!2369497))

(declare-fun m!2369505 () Bool)

(assert (=> b!1931480 m!2369505))

(assert (=> b!1931480 m!2369499))

(assert (=> b!1931479 m!2369497))

(assert (=> b!1931479 m!2369497))

(declare-fun m!2369507 () Bool)

(assert (=> b!1931479 m!2369507))

(declare-fun m!2369509 () Bool)

(assert (=> b!1931482 m!2369509))

(assert (=> b!1931482 m!2367987))

(assert (=> b!1931482 m!2368015))

(declare-fun m!2369511 () Bool)

(assert (=> b!1931482 m!2369511))

(assert (=> b!1931482 m!2367987))

(assert (=> b!1931482 m!2369511))

(declare-fun m!2369513 () Bool)

(assert (=> b!1931482 m!2369513))

(assert (=> b!1931481 m!2369499))

(assert (=> b!1931481 m!2369501))

(assert (=> b!1931481 m!2369503))

(assert (=> b!1931481 m!2369501))

(assert (=> b!1931481 m!2369497))

(assert (=> b!1931481 m!2369497))

(assert (=> b!1931481 m!2369505))

(assert (=> b!1931481 m!2369499))

(assert (=> b!1930363 d!589052))

(declare-fun d!589054 () Bool)

(assert (=> d!589054 (= (tail!2987 (drop!1078 lt!739970 0)) (drop!1078 lt!739970 (+ 0 1)))))

(declare-fun lt!740322 () Unit!36312)

(declare-fun choose!12001 (List!22039 Int) Unit!36312)

(assert (=> d!589054 (= lt!740322 (choose!12001 lt!739970 0))))

(declare-fun e!1234594 () Bool)

(assert (=> d!589054 e!1234594))

(declare-fun res!863613 () Bool)

(assert (=> d!589054 (=> (not res!863613) (not e!1234594))))

(assert (=> d!589054 (= res!863613 (>= 0 0))))

(assert (=> d!589054 (= (lemmaDropTail!687 lt!739970 0) lt!740322)))

(declare-fun b!1931500 () Bool)

(assert (=> b!1931500 (= e!1234594 (< 0 (size!17133 lt!739970)))))

(assert (= (and d!589054 res!863613) b!1931500))

(assert (=> d!589054 m!2368011))

(assert (=> d!589054 m!2368011))

(assert (=> d!589054 m!2368013))

(assert (=> d!589054 m!2367997))

(declare-fun m!2369529 () Bool)

(assert (=> d!589054 m!2369529))

(assert (=> b!1931500 m!2369473))

(assert (=> b!1930363 d!589054))

(declare-fun b!1931501 () Bool)

(declare-fun e!1234599 () List!22039)

(declare-fun e!1234596 () List!22039)

(assert (=> b!1931501 (= e!1234599 e!1234596)))

(declare-fun c!314204 () Bool)

(assert (=> b!1931501 (= c!314204 (<= 0 0))))

(declare-fun bm!118817 () Bool)

(declare-fun call!118822 () Int)

(assert (=> bm!118817 (= call!118822 (size!17133 lt!739970))))

(declare-fun b!1931502 () Bool)

(assert (=> b!1931502 (= e!1234599 Nil!21957)))

(declare-fun b!1931503 () Bool)

(declare-fun e!1234597 () Int)

(assert (=> b!1931503 (= e!1234597 call!118822)))

(declare-fun b!1931504 () Bool)

(assert (=> b!1931504 (= e!1234596 lt!739970)))

(declare-fun b!1931505 () Bool)

(declare-fun e!1234595 () Int)

(assert (=> b!1931505 (= e!1234595 0)))

(declare-fun b!1931506 () Bool)

(declare-fun e!1234598 () Bool)

(declare-fun lt!740323 () List!22039)

(assert (=> b!1931506 (= e!1234598 (= (size!17133 lt!740323) e!1234597))))

(declare-fun c!314206 () Bool)

(assert (=> b!1931506 (= c!314206 (<= 0 0))))

(declare-fun d!589056 () Bool)

(assert (=> d!589056 e!1234598))

(declare-fun res!863614 () Bool)

(assert (=> d!589056 (=> (not res!863614) (not e!1234598))))

(assert (=> d!589056 (= res!863614 (= ((_ map implies) (content!3181 lt!740323) (content!3181 lt!739970)) ((as const (InoxSet Token!7428)) true)))))

(assert (=> d!589056 (= lt!740323 e!1234599)))

(declare-fun c!314205 () Bool)

(assert (=> d!589056 (= c!314205 ((_ is Nil!21957) lt!739970))))

(assert (=> d!589056 (= (drop!1078 lt!739970 0) lt!740323)))

(declare-fun b!1931507 () Bool)

(assert (=> b!1931507 (= e!1234596 (drop!1078 (t!180084 lt!739970) (- 0 1)))))

(declare-fun b!1931508 () Bool)

(assert (=> b!1931508 (= e!1234597 e!1234595)))

(declare-fun c!314203 () Bool)

(assert (=> b!1931508 (= c!314203 (>= 0 call!118822))))

(declare-fun b!1931509 () Bool)

(assert (=> b!1931509 (= e!1234595 (- call!118822 0))))

(assert (= (and d!589056 c!314205) b!1931502))

(assert (= (and d!589056 (not c!314205)) b!1931501))

(assert (= (and b!1931501 c!314204) b!1931504))

(assert (= (and b!1931501 (not c!314204)) b!1931507))

(assert (= (and d!589056 res!863614) b!1931506))

(assert (= (and b!1931506 c!314206) b!1931503))

(assert (= (and b!1931506 (not c!314206)) b!1931508))

(assert (= (and b!1931508 c!314203) b!1931505))

(assert (= (and b!1931508 (not c!314203)) b!1931509))

(assert (= (or b!1931503 b!1931508 b!1931509) bm!118817))

(assert (=> bm!118817 m!2369473))

(declare-fun m!2369539 () Bool)

(assert (=> b!1931506 m!2369539))

(declare-fun m!2369543 () Bool)

(assert (=> d!589056 m!2369543))

(assert (=> d!589056 m!2369479))

(declare-fun m!2369545 () Bool)

(assert (=> b!1931507 m!2369545))

(assert (=> b!1930363 d!589056))

(declare-fun d!589064 () Bool)

(assert (=> d!589064 (= (list!8887 lt!740110) (list!8889 (c!313974 lt!740110)))))

(declare-fun bs!415016 () Bool)

(assert (= bs!415016 d!589064))

(declare-fun m!2369547 () Bool)

(assert (=> bs!415016 m!2369547))

(assert (=> d!588646 d!589064))

(assert (=> b!1930490 d!588916))

(assert (=> b!1930490 d!588918))

(assert (=> b!1930490 d!588914))

(declare-fun d!589066 () Bool)

(assert (=> d!589066 (= (isEmpty!13541 (originalCharacters!4745 separatorToken!354)) ((_ is Nil!21955) (originalCharacters!4745 separatorToken!354)))))

(assert (=> d!588676 d!589066))

(declare-fun bs!415019 () Bool)

(declare-fun d!589068 () Bool)

(assert (= bs!415019 (and d!589068 d!588570)))

(declare-fun lambda!75313 () Int)

(assert (=> bs!415019 (= lambda!75313 lambda!75278)))

(assert (=> d!589068 true))

(assert (=> d!589068 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (dynLambda!10661 order!13807 lambda!75313))))

(assert (=> d!589068 true))

(assert (=> d!589068 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (dynLambda!10661 order!13807 lambda!75313))))

(assert (=> d!589068 (= (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (Forall!1002 lambda!75313))))

(declare-fun bs!415020 () Bool)

(assert (= bs!415020 d!589068))

(declare-fun m!2369567 () Bool)

(assert (=> bs!415020 m!2369567))

(assert (=> d!588668 d!589068))

(declare-fun d!589080 () Bool)

(declare-fun lt!740331 () Bool)

(declare-fun content!3182 (List!22038) (InoxSet Rule!7676))

(assert (=> d!589080 (= lt!740331 (select (content!3182 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740098)))))))

(declare-fun e!1234607 () Bool)

(assert (=> d!589080 (= lt!740331 e!1234607)))

(declare-fun res!863624 () Bool)

(assert (=> d!589080 (=> (not res!863624) (not e!1234607))))

(assert (=> d!589080 (= res!863624 ((_ is Cons!21956) rules!3198))))

(assert (=> d!589080 (= (contains!3975 rules!3198 (rule!6145 (_1!11756 (get!6918 lt!740098)))) lt!740331)))

(declare-fun b!1931522 () Bool)

(declare-fun e!1234608 () Bool)

(assert (=> b!1931522 (= e!1234607 e!1234608)))

(declare-fun res!863623 () Bool)

(assert (=> b!1931522 (=> res!863623 e!1234608)))

(assert (=> b!1931522 (= res!863623 (= (h!27357 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740098)))))))

(declare-fun b!1931523 () Bool)

(assert (=> b!1931523 (= e!1234608 (contains!3975 (t!180083 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740098)))))))

(assert (= (and d!589080 res!863624) b!1931522))

(assert (= (and b!1931522 (not res!863623)) b!1931523))

(declare-fun m!2369573 () Bool)

(assert (=> d!589080 m!2369573))

(declare-fun m!2369575 () Bool)

(assert (=> d!589080 m!2369575))

(declare-fun m!2369577 () Bool)

(assert (=> b!1931523 m!2369577))

(assert (=> b!1930668 d!589080))

(assert (=> b!1930668 d!588910))

(declare-fun b!1931524 () Bool)

(declare-fun e!1234610 () Bool)

(declare-fun e!1234611 () Bool)

(assert (=> b!1931524 (= e!1234610 e!1234611)))

(declare-fun c!314207 () Bool)

(assert (=> b!1931524 (= c!314207 ((_ is IntegerValue!12223) (value!123824 (h!27358 (t!180084 tokens!598)))))))

(declare-fun b!1931525 () Bool)

(declare-fun res!863625 () Bool)

(declare-fun e!1234609 () Bool)

(assert (=> b!1931525 (=> res!863625 e!1234609)))

(assert (=> b!1931525 (= res!863625 (not ((_ is IntegerValue!12224) (value!123824 (h!27358 (t!180084 tokens!598))))))))

(assert (=> b!1931525 (= e!1234611 e!1234609)))

(declare-fun b!1931526 () Bool)

(assert (=> b!1931526 (= e!1234611 (inv!17 (value!123824 (h!27358 (t!180084 tokens!598)))))))

(declare-fun d!589086 () Bool)

(declare-fun c!314208 () Bool)

(assert (=> d!589086 (= c!314208 ((_ is IntegerValue!12222) (value!123824 (h!27358 (t!180084 tokens!598)))))))

(assert (=> d!589086 (= (inv!21 (value!123824 (h!27358 (t!180084 tokens!598)))) e!1234610)))

(declare-fun b!1931527 () Bool)

(assert (=> b!1931527 (= e!1234610 (inv!16 (value!123824 (h!27358 (t!180084 tokens!598)))))))

(declare-fun b!1931528 () Bool)

(assert (=> b!1931528 (= e!1234609 (inv!15 (value!123824 (h!27358 (t!180084 tokens!598)))))))

(assert (= (and d!589086 c!314208) b!1931527))

(assert (= (and d!589086 (not c!314208)) b!1931524))

(assert (= (and b!1931524 c!314207) b!1931526))

(assert (= (and b!1931524 (not c!314207)) b!1931525))

(assert (= (and b!1931525 (not res!863625)) b!1931528))

(declare-fun m!2369579 () Bool)

(assert (=> b!1931526 m!2369579))

(declare-fun m!2369581 () Bool)

(assert (=> b!1931527 m!2369581))

(declare-fun m!2369583 () Bool)

(assert (=> b!1931528 m!2369583))

(assert (=> b!1930997 d!589086))

(declare-fun d!589088 () Bool)

(declare-fun c!314212 () Bool)

(assert (=> d!589088 (= c!314212 ((_ is Nil!21955) lt!739998))))

(declare-fun e!1234617 () (InoxSet C!10872))

(assert (=> d!589088 (= (content!3179 lt!739998) e!1234617)))

(declare-fun b!1931537 () Bool)

(assert (=> b!1931537 (= e!1234617 ((as const (Array C!10872 Bool)) false))))

(declare-fun b!1931538 () Bool)

(assert (=> b!1931538 (= e!1234617 ((_ map or) (store ((as const (Array C!10872 Bool)) false) (h!27356 lt!739998) true) (content!3179 (t!180082 lt!739998))))))

(assert (= (and d!589088 c!314212) b!1931537))

(assert (= (and d!589088 (not c!314212)) b!1931538))

(declare-fun m!2369603 () Bool)

(assert (=> b!1931538 m!2369603))

(declare-fun m!2369605 () Bool)

(assert (=> b!1931538 m!2369605))

(assert (=> d!588584 d!589088))

(declare-fun d!589096 () Bool)

(declare-fun c!314213 () Bool)

(assert (=> d!589096 (= c!314213 ((_ is Nil!21955) lt!739936))))

(declare-fun e!1234618 () (InoxSet C!10872))

(assert (=> d!589096 (= (content!3179 lt!739936) e!1234618)))

(declare-fun b!1931539 () Bool)

(assert (=> b!1931539 (= e!1234618 ((as const (Array C!10872 Bool)) false))))

(declare-fun b!1931540 () Bool)

(assert (=> b!1931540 (= e!1234618 ((_ map or) (store ((as const (Array C!10872 Bool)) false) (h!27356 lt!739936) true) (content!3179 (t!180082 lt!739936))))))

(assert (= (and d!589096 c!314213) b!1931539))

(assert (= (and d!589096 (not c!314213)) b!1931540))

(declare-fun m!2369607 () Bool)

(assert (=> b!1931540 m!2369607))

(declare-fun m!2369609 () Bool)

(assert (=> b!1931540 m!2369609))

(assert (=> d!588584 d!589096))

(declare-fun c!314214 () Bool)

(declare-fun d!589098 () Bool)

(assert (=> d!589098 (= c!314214 ((_ is Nil!21955) (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))

(declare-fun e!1234619 () (InoxSet C!10872))

(assert (=> d!589098 (= (content!3179 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) e!1234619)))

(declare-fun b!1931541 () Bool)

(assert (=> b!1931541 (= e!1234619 ((as const (Array C!10872 Bool)) false))))

(declare-fun b!1931542 () Bool)

(assert (=> b!1931542 (= e!1234619 ((_ map or) (store ((as const (Array C!10872 Bool)) false) (h!27356 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) true) (content!3179 (t!180082 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(assert (= (and d!589098 c!314214) b!1931541))

(assert (= (and d!589098 (not c!314214)) b!1931542))

(declare-fun m!2369619 () Bool)

(assert (=> b!1931542 m!2369619))

(declare-fun m!2369625 () Bool)

(assert (=> b!1931542 m!2369625))

(assert (=> d!588584 d!589098))

(declare-fun d!589100 () Bool)

(declare-fun lt!740344 () Bool)

(assert (=> d!589100 (= lt!740344 (select (content!3182 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740027)))))))

(declare-fun e!1234620 () Bool)

(assert (=> d!589100 (= lt!740344 e!1234620)))

(declare-fun res!863629 () Bool)

(assert (=> d!589100 (=> (not res!863629) (not e!1234620))))

(assert (=> d!589100 (= res!863629 ((_ is Cons!21956) rules!3198))))

(assert (=> d!589100 (= (contains!3975 rules!3198 (rule!6145 (_1!11756 (get!6918 lt!740027)))) lt!740344)))

(declare-fun b!1931543 () Bool)

(declare-fun e!1234621 () Bool)

(assert (=> b!1931543 (= e!1234620 e!1234621)))

(declare-fun res!863628 () Bool)

(assert (=> b!1931543 (=> res!863628 e!1234621)))

(assert (=> b!1931543 (= res!863628 (= (h!27357 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740027)))))))

(declare-fun b!1931544 () Bool)

(assert (=> b!1931544 (= e!1234621 (contains!3975 (t!180083 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740027)))))))

(assert (= (and d!589100 res!863629) b!1931543))

(assert (= (and b!1931543 (not res!863628)) b!1931544))

(assert (=> d!589100 m!2369573))

(declare-fun m!2369645 () Bool)

(assert (=> d!589100 m!2369645))

(declare-fun m!2369649 () Bool)

(assert (=> b!1931544 m!2369649))

(assert (=> b!1930485 d!589100))

(assert (=> b!1930485 d!588914))

(declare-fun d!589102 () Bool)

(declare-fun e!1234624 () Bool)

(assert (=> d!589102 e!1234624))

(declare-fun res!863632 () Bool)

(assert (=> d!589102 (=> (not res!863632) (not e!1234624))))

(declare-fun lt!740347 () BalanceConc!14476)

(assert (=> d!589102 (= res!863632 (= (list!8887 lt!740347) (originalCharacters!4745 (h!27358 tokens!598))))))

(declare-fun fromList!482 (List!22037) Conc!7330)

(assert (=> d!589102 (= lt!740347 (BalanceConc!14477 (fromList!482 (originalCharacters!4745 (h!27358 tokens!598)))))))

(assert (=> d!589102 (= (fromListB!1242 (originalCharacters!4745 (h!27358 tokens!598))) lt!740347)))

(declare-fun b!1931547 () Bool)

(assert (=> b!1931547 (= e!1234624 (isBalanced!2267 (fromList!482 (originalCharacters!4745 (h!27358 tokens!598)))))))

(assert (= (and d!589102 res!863632) b!1931547))

(declare-fun m!2369651 () Bool)

(assert (=> d!589102 m!2369651))

(declare-fun m!2369653 () Bool)

(assert (=> d!589102 m!2369653))

(assert (=> b!1931547 m!2369653))

(assert (=> b!1931547 m!2369653))

(declare-fun m!2369655 () Bool)

(assert (=> b!1931547 m!2369655))

(assert (=> d!588638 d!589102))

(declare-fun b!1931556 () Bool)

(declare-fun e!1234631 () Bool)

(declare-fun call!118825 () Bool)

(assert (=> b!1931556 (= e!1234631 call!118825)))

(declare-fun b!1931557 () Bool)

(declare-fun e!1234632 () Bool)

(assert (=> b!1931557 (= e!1234632 e!1234631)))

(declare-fun res!863638 () Bool)

(declare-fun rulesUseDisjointChars!208 (Rule!7676 Rule!7676) Bool)

(assert (=> b!1931557 (= res!863638 (rulesUseDisjointChars!208 (h!27357 rules!3198) (h!27357 rules!3198)))))

(assert (=> b!1931557 (=> (not res!863638) (not e!1234631))))

(declare-fun d!589106 () Bool)

(declare-fun c!314218 () Bool)

(assert (=> d!589106 (= c!314218 (and ((_ is Cons!21956) rules!3198) (not (= (isSeparator!3938 (h!27357 rules!3198)) (isSeparator!3938 (h!27357 rules!3198))))))))

(assert (=> d!589106 (= (ruleDisjointCharsFromAllFromOtherType!453 (h!27357 rules!3198) rules!3198) e!1234632)))

(declare-fun b!1931558 () Bool)

(declare-fun e!1234633 () Bool)

(assert (=> b!1931558 (= e!1234633 call!118825)))

(declare-fun b!1931559 () Bool)

(assert (=> b!1931559 (= e!1234632 e!1234633)))

(declare-fun res!863637 () Bool)

(assert (=> b!1931559 (= res!863637 (not ((_ is Cons!21956) rules!3198)))))

(assert (=> b!1931559 (=> res!863637 e!1234633)))

(declare-fun bm!118820 () Bool)

(assert (=> bm!118820 (= call!118825 (ruleDisjointCharsFromAllFromOtherType!453 (h!27357 rules!3198) (t!180083 rules!3198)))))

(assert (= (and d!589106 c!314218) b!1931557))

(assert (= (and d!589106 (not c!314218)) b!1931559))

(assert (= (and b!1931557 res!863638) b!1931556))

(assert (= (and b!1931559 (not res!863637)) b!1931558))

(assert (= (or b!1931556 b!1931558) bm!118820))

(declare-fun m!2369657 () Bool)

(assert (=> b!1931557 m!2369657))

(declare-fun m!2369659 () Bool)

(assert (=> bm!118820 m!2369659))

(assert (=> b!1930770 d!589106))

(declare-fun d!589108 () Bool)

(declare-fun e!1234635 () Bool)

(assert (=> d!589108 e!1234635))

(declare-fun res!863640 () Bool)

(assert (=> d!589108 (=> (not res!863640) (not e!1234635))))

(declare-fun lt!740348 () List!22037)

(assert (=> d!589108 (= res!863640 (= (content!3179 lt!740348) ((_ map or) (content!3179 (t!180082 lt!739936)) (content!3179 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun e!1234634 () List!22037)

(assert (=> d!589108 (= lt!740348 e!1234634)))

(declare-fun c!314219 () Bool)

(assert (=> d!589108 (= c!314219 ((_ is Nil!21955) (t!180082 lt!739936)))))

(assert (=> d!589108 (= (++!5893 (t!180082 lt!739936) (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) lt!740348)))

(declare-fun b!1931563 () Bool)

(assert (=> b!1931563 (= e!1234635 (or (not (= (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354) Nil!21955)) (= lt!740348 (t!180082 lt!739936))))))

(declare-fun b!1931561 () Bool)

(assert (=> b!1931561 (= e!1234634 (Cons!21955 (h!27356 (t!180082 lt!739936)) (++!5893 (t!180082 (t!180082 lt!739936)) (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1931562 () Bool)

(declare-fun res!863639 () Bool)

(assert (=> b!1931562 (=> (not res!863639) (not e!1234635))))

(assert (=> b!1931562 (= res!863639 (= (size!17131 lt!740348) (+ (size!17131 (t!180082 lt!739936)) (size!17131 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun b!1931560 () Bool)

(assert (=> b!1931560 (= e!1234634 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))

(assert (= (and d!589108 c!314219) b!1931560))

(assert (= (and d!589108 (not c!314219)) b!1931561))

(assert (= (and d!589108 res!863640) b!1931562))

(assert (= (and b!1931562 res!863639) b!1931563))

(declare-fun m!2369661 () Bool)

(assert (=> d!589108 m!2369661))

(assert (=> d!589108 m!2369609))

(assert (=> d!589108 m!2367915))

(assert (=> d!589108 m!2368083))

(assert (=> b!1931561 m!2367915))

(declare-fun m!2369663 () Bool)

(assert (=> b!1931561 m!2369663))

(declare-fun m!2369665 () Bool)

(assert (=> b!1931562 m!2369665))

(declare-fun m!2369667 () Bool)

(assert (=> b!1931562 m!2369667))

(assert (=> b!1931562 m!2367915))

(assert (=> b!1931562 m!2368091))

(assert (=> b!1930429 d!589108))

(declare-fun d!589110 () Bool)

(declare-fun lt!740351 () Int)

(assert (=> d!589110 (>= lt!740351 0)))

(declare-fun e!1234638 () Int)

(assert (=> d!589110 (= lt!740351 e!1234638)))

(declare-fun c!314222 () Bool)

(assert (=> d!589110 (= c!314222 ((_ is Nil!21955) (originalCharacters!4745 (h!27358 tokens!598))))))

(assert (=> d!589110 (= (size!17131 (originalCharacters!4745 (h!27358 tokens!598))) lt!740351)))

(declare-fun b!1931568 () Bool)

(assert (=> b!1931568 (= e!1234638 0)))

(declare-fun b!1931569 () Bool)

(assert (=> b!1931569 (= e!1234638 (+ 1 (size!17131 (t!180082 (originalCharacters!4745 (h!27358 tokens!598))))))))

(assert (= (and d!589110 c!314222) b!1931568))

(assert (= (and d!589110 (not c!314222)) b!1931569))

(declare-fun m!2369669 () Bool)

(assert (=> b!1931569 m!2369669))

(assert (=> b!1930765 d!589110))

(declare-fun d!589112 () Bool)

(assert (=> d!589112 (= (isEmpty!13541 lt!739943) ((_ is Nil!21955) lt!739943))))

(assert (=> bm!118771 d!589112))

(declare-fun d!589114 () Bool)

(declare-fun res!863641 () Bool)

(declare-fun e!1234639 () Bool)

(assert (=> d!589114 (=> res!863641 e!1234639)))

(assert (=> d!589114 (= res!863641 ((_ is Nil!21957) tokens!598))))

(assert (=> d!589114 (= (forall!4642 tokens!598 lambda!75293) e!1234639)))

(declare-fun b!1931570 () Bool)

(declare-fun e!1234640 () Bool)

(assert (=> b!1931570 (= e!1234639 e!1234640)))

(declare-fun res!863642 () Bool)

(assert (=> b!1931570 (=> (not res!863642) (not e!1234640))))

(assert (=> b!1931570 (= res!863642 (dynLambda!10668 lambda!75293 (h!27358 tokens!598)))))

(declare-fun b!1931571 () Bool)

(assert (=> b!1931571 (= e!1234640 (forall!4642 (t!180084 tokens!598) lambda!75293))))

(assert (= (and d!589114 (not res!863641)) b!1931570))

(assert (= (and b!1931570 res!863642) b!1931571))

(declare-fun b_lambda!64161 () Bool)

(assert (=> (not b_lambda!64161) (not b!1931570)))

(declare-fun m!2369671 () Bool)

(assert (=> b!1931570 m!2369671))

(declare-fun m!2369673 () Bool)

(assert (=> b!1931571 m!2369673))

(assert (=> d!588704 d!589114))

(assert (=> d!588704 d!588672))

(declare-fun d!589116 () Bool)

(declare-fun lt!740354 () Bool)

(assert (=> d!589116 (= lt!740354 (isEmpty!13541 (list!8887 (_2!11758 lt!740133))))))

(declare-fun isEmpty!13543 (Conc!7330) Bool)

(assert (=> d!589116 (= lt!740354 (isEmpty!13543 (c!313974 (_2!11758 lt!740133))))))

(assert (=> d!589116 (= (isEmpty!13542 (_2!11758 lt!740133)) lt!740354)))

(declare-fun bs!415025 () Bool)

(assert (= bs!415025 d!589116))

(declare-fun m!2369675 () Bool)

(assert (=> bs!415025 m!2369675))

(assert (=> bs!415025 m!2369675))

(declare-fun m!2369677 () Bool)

(assert (=> bs!415025 m!2369677))

(declare-fun m!2369679 () Bool)

(assert (=> bs!415025 m!2369679))

(assert (=> b!1930831 d!589116))

(declare-fun b!1931572 () Bool)

(declare-fun e!1234642 () Bool)

(declare-fun e!1234643 () Bool)

(assert (=> b!1931572 (= e!1234642 e!1234643)))

(declare-fun c!314223 () Bool)

(assert (=> b!1931572 (= c!314223 ((_ is IntegerValue!12223) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))

(declare-fun b!1931573 () Bool)

(declare-fun res!863643 () Bool)

(declare-fun e!1234641 () Bool)

(assert (=> b!1931573 (=> res!863643 e!1234641)))

(assert (=> b!1931573 (= res!863643 (not ((_ is IntegerValue!12224) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))))))

(assert (=> b!1931573 (= e!1234643 e!1234641)))

(declare-fun b!1931574 () Bool)

(assert (=> b!1931574 (= e!1234643 (inv!17 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))

(declare-fun d!589118 () Bool)

(declare-fun c!314224 () Bool)

(assert (=> d!589118 (= c!314224 ((_ is IntegerValue!12222) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))

(assert (=> d!589118 (= (inv!21 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)) e!1234642)))

(declare-fun b!1931575 () Bool)

(assert (=> b!1931575 (= e!1234642 (inv!16 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))

(declare-fun b!1931576 () Bool)

(assert (=> b!1931576 (= e!1234641 (inv!15 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))

(assert (= (and d!589118 c!314224) b!1931575))

(assert (= (and d!589118 (not c!314224)) b!1931572))

(assert (= (and b!1931572 c!314223) b!1931574))

(assert (= (and b!1931572 (not c!314223)) b!1931573))

(assert (= (and b!1931573 (not res!863643)) b!1931576))

(declare-fun m!2369681 () Bool)

(assert (=> b!1931574 m!2369681))

(declare-fun m!2369683 () Bool)

(assert (=> b!1931575 m!2369683))

(declare-fun m!2369685 () Bool)

(assert (=> b!1931576 m!2369685))

(assert (=> tb!118445 d!589118))

(declare-fun d!589120 () Bool)

(assert (=> d!589120 (= (get!6917 lt!740042) (v!26657 lt!740042))))

(assert (=> b!1930521 d!589120))

(assert (=> b!1930670 d!588910))

(declare-fun d!589122 () Bool)

(assert (=> d!589122 (= (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740098))))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740098))))))))

(declare-fun b_lambda!64163 () Bool)

(assert (=> (not b_lambda!64163) (not d!589122)))

(declare-fun t!180302 () Bool)

(declare-fun tb!118621 () Bool)

(assert (=> (and b!1930976 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180302) tb!118621))

(declare-fun result!143264 () Bool)

(assert (=> tb!118621 (= result!143264 (inv!21 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740098)))))))))

(declare-fun m!2369687 () Bool)

(assert (=> tb!118621 m!2369687))

(assert (=> d!589122 t!180302))

(declare-fun b_and!151889 () Bool)

(assert (= b_and!151771 (and (=> t!180302 result!143264) b_and!151889)))

(declare-fun tb!118623 () Bool)

(declare-fun t!180304 () Bool)

(assert (=> (and b!1930332 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180304) tb!118623))

(declare-fun result!143266 () Bool)

(assert (= result!143266 result!143264))

(assert (=> d!589122 t!180304))

(declare-fun b_and!151891 () Bool)

(assert (= b_and!151729 (and (=> t!180304 result!143266) b_and!151891)))

(declare-fun t!180306 () Bool)

(declare-fun tb!118625 () Bool)

(assert (=> (and b!1930322 (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180306) tb!118625))

(declare-fun result!143268 () Bool)

(assert (= result!143268 result!143264))

(assert (=> d!589122 t!180306))

(declare-fun b_and!151893 () Bool)

(assert (= b_and!151727 (and (=> t!180306 result!143268) b_and!151893)))

(declare-fun tb!118627 () Bool)

(declare-fun t!180308 () Bool)

(assert (=> (and b!1930324 (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180308) tb!118627))

(declare-fun result!143270 () Bool)

(assert (= result!143270 result!143264))

(assert (=> d!589122 t!180308))

(declare-fun b_and!151895 () Bool)

(assert (= b_and!151731 (and (=> t!180308 result!143270) b_and!151895)))

(declare-fun t!180310 () Bool)

(declare-fun tb!118629 () Bool)

(assert (=> (and b!1930999 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180310) tb!118629))

(declare-fun result!143272 () Bool)

(assert (= result!143272 result!143264))

(assert (=> d!589122 t!180310))

(declare-fun b_and!151897 () Bool)

(assert (= b_and!151775 (and (=> t!180310 result!143272) b_and!151897)))

(assert (=> d!589122 m!2368387))

(declare-fun m!2369689 () Bool)

(assert (=> d!589122 m!2369689))

(assert (=> b!1930670 d!589122))

(declare-fun d!589124 () Bool)

(assert (=> d!589124 (= (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740098)))) (fromListB!1242 (originalCharacters!4745 (_1!11756 (get!6918 lt!740098)))))))

(declare-fun bs!415026 () Bool)

(assert (= bs!415026 d!589124))

(declare-fun m!2369691 () Bool)

(assert (=> bs!415026 m!2369691))

(assert (=> b!1930670 d!589124))

(declare-fun d!589126 () Bool)

(declare-fun charsToInt!0 (List!22036) (_ BitVec 32))

(assert (=> d!589126 (= (inv!16 (value!123824 separatorToken!354)) (= (charsToInt!0 (text!28965 (value!123824 separatorToken!354))) (value!123815 (value!123824 separatorToken!354))))))

(declare-fun bs!415027 () Bool)

(assert (= bs!415027 d!589126))

(declare-fun m!2369693 () Bool)

(assert (=> bs!415027 m!2369693))

(assert (=> b!1930757 d!589126))

(declare-fun bs!415028 () Bool)

(declare-fun d!589128 () Bool)

(assert (= bs!415028 (and d!589128 d!588570)))

(declare-fun lambda!75314 () Int)

(assert (=> bs!415028 (= (and (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (= lambda!75314 lambda!75278))))

(declare-fun bs!415029 () Bool)

(assert (= bs!415029 (and d!589128 d!589068)))

(assert (=> bs!415029 (= (and (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (= lambda!75314 lambda!75313))))

(assert (=> d!589128 true))

(assert (=> d!589128 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10661 order!13807 lambda!75314))))

(assert (=> d!589128 true))

(assert (=> d!589128 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10661 order!13807 lambda!75314))))

(assert (=> d!589128 (= (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (Forall!1002 lambda!75314))))

(declare-fun bs!415030 () Bool)

(assert (= bs!415030 d!589128))

(declare-fun m!2369695 () Bool)

(assert (=> bs!415030 m!2369695))

(assert (=> d!588688 d!589128))

(assert (=> b!1930487 d!588914))

(declare-fun d!589130 () Bool)

(assert (=> d!589130 (= (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740027))))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740027))))))))

(declare-fun b_lambda!64165 () Bool)

(assert (=> (not b_lambda!64165) (not d!589130)))

(declare-fun t!180312 () Bool)

(declare-fun tb!118631 () Bool)

(assert (=> (and b!1930324 (= (toValue!5575 (transformation!3938 (h!27357 rules!3198))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180312) tb!118631))

(declare-fun result!143274 () Bool)

(assert (=> tb!118631 (= result!143274 (inv!21 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027))))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740027)))))))))

(declare-fun m!2369697 () Bool)

(assert (=> tb!118631 m!2369697))

(assert (=> d!589130 t!180312))

(declare-fun b_and!151899 () Bool)

(assert (= b_and!151895 (and (=> t!180312 result!143274) b_and!151899)))

(declare-fun tb!118633 () Bool)

(declare-fun t!180314 () Bool)

(assert (=> (and b!1930976 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180314) tb!118633))

(declare-fun result!143276 () Bool)

(assert (= result!143276 result!143274))

(assert (=> d!589130 t!180314))

(declare-fun b_and!151901 () Bool)

(assert (= b_and!151889 (and (=> t!180314 result!143276) b_and!151901)))

(declare-fun t!180316 () Bool)

(declare-fun tb!118635 () Bool)

(assert (=> (and b!1930332 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180316) tb!118635))

(declare-fun result!143278 () Bool)

(assert (= result!143278 result!143274))

(assert (=> d!589130 t!180316))

(declare-fun b_and!151903 () Bool)

(assert (= b_and!151891 (and (=> t!180316 result!143278) b_and!151903)))

(declare-fun tb!118637 () Bool)

(declare-fun t!180318 () Bool)

(assert (=> (and b!1930999 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180318) tb!118637))

(declare-fun result!143280 () Bool)

(assert (= result!143280 result!143274))

(assert (=> d!589130 t!180318))

(declare-fun b_and!151905 () Bool)

(assert (= b_and!151897 (and (=> t!180318 result!143280) b_and!151905)))

(declare-fun t!180320 () Bool)

(declare-fun tb!118639 () Bool)

(assert (=> (and b!1930322 (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180320) tb!118639))

(declare-fun result!143282 () Bool)

(assert (= result!143282 result!143274))

(assert (=> d!589130 t!180320))

(declare-fun b_and!151907 () Bool)

(assert (= b_and!151893 (and (=> t!180320 result!143282) b_and!151907)))

(assert (=> d!589130 m!2368151))

(declare-fun m!2369699 () Bool)

(assert (=> d!589130 m!2369699))

(assert (=> b!1930487 d!589130))

(declare-fun d!589132 () Bool)

(assert (=> d!589132 (= (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740027)))) (fromListB!1242 (originalCharacters!4745 (_1!11756 (get!6918 lt!740027)))))))

(declare-fun bs!415031 () Bool)

(assert (= bs!415031 d!589132))

(declare-fun m!2369701 () Bool)

(assert (=> bs!415031 m!2369701))

(assert (=> b!1930487 d!589132))

(declare-fun d!589134 () Bool)

(declare-fun lt!740355 () Int)

(assert (=> d!589134 (>= lt!740355 0)))

(declare-fun e!1234646 () Int)

(assert (=> d!589134 (= lt!740355 e!1234646)))

(declare-fun c!314225 () Bool)

(assert (=> d!589134 (= c!314225 ((_ is Nil!21955) (_2!11756 (get!6918 lt!740098))))))

(assert (=> d!589134 (= (size!17131 (_2!11756 (get!6918 lt!740098))) lt!740355)))

(declare-fun b!1931577 () Bool)

(assert (=> b!1931577 (= e!1234646 0)))

(declare-fun b!1931578 () Bool)

(assert (=> b!1931578 (= e!1234646 (+ 1 (size!17131 (t!180082 (_2!11756 (get!6918 lt!740098))))))))

(assert (= (and d!589134 c!314225) b!1931577))

(assert (= (and d!589134 (not c!314225)) b!1931578))

(declare-fun m!2369703 () Bool)

(assert (=> b!1931578 m!2369703))

(assert (=> b!1930674 d!589134))

(assert (=> b!1930674 d!588910))

(declare-fun d!589136 () Bool)

(declare-fun lt!740356 () Int)

(assert (=> d!589136 (>= lt!740356 0)))

(declare-fun e!1234647 () Int)

(assert (=> d!589136 (= lt!740356 e!1234647)))

(declare-fun c!314226 () Bool)

(assert (=> d!589136 (= c!314226 ((_ is Nil!21955) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(assert (=> d!589136 (= (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) lt!740356)))

(declare-fun b!1931579 () Bool)

(assert (=> b!1931579 (= e!1234647 0)))

(declare-fun b!1931580 () Bool)

(assert (=> b!1931580 (= e!1234647 (+ 1 (size!17131 (t!180082 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))))

(assert (= (and d!589136 c!314226) b!1931579))

(assert (= (and d!589136 (not c!314226)) b!1931580))

(declare-fun m!2369705 () Bool)

(assert (=> b!1931580 m!2369705))

(assert (=> b!1930674 d!589136))

(declare-fun d!589138 () Bool)

(declare-fun c!314229 () Bool)

(assert (=> d!589138 (= c!314229 ((_ is Node!7330) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))))))

(declare-fun e!1234652 () Bool)

(assert (=> d!589138 (= (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))) e!1234652)))

(declare-fun b!1931587 () Bool)

(declare-fun inv!29050 (Conc!7330) Bool)

(assert (=> b!1931587 (= e!1234652 (inv!29050 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))))))

(declare-fun b!1931588 () Bool)

(declare-fun e!1234653 () Bool)

(assert (=> b!1931588 (= e!1234652 e!1234653)))

(declare-fun res!863646 () Bool)

(assert (=> b!1931588 (= res!863646 (not ((_ is Leaf!10762) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))))))))

(assert (=> b!1931588 (=> res!863646 e!1234653)))

(declare-fun b!1931589 () Bool)

(declare-fun inv!29051 (Conc!7330) Bool)

(assert (=> b!1931589 (= e!1234653 (inv!29051 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))))))

(assert (= (and d!589138 c!314229) b!1931587))

(assert (= (and d!589138 (not c!314229)) b!1931588))

(assert (= (and b!1931588 (not res!863646)) b!1931589))

(declare-fun m!2369707 () Bool)

(assert (=> b!1931587 m!2369707))

(declare-fun m!2369709 () Bool)

(assert (=> b!1931589 m!2369709))

(assert (=> b!1930693 d!589138))

(declare-fun d!589140 () Bool)

(declare-fun nullableFct!364 (Regex!5363) Bool)

(assert (=> d!589140 (= (nullable!1613 (regex!3938 lt!739932)) (nullableFct!364 (regex!3938 lt!739932)))))

(declare-fun bs!415032 () Bool)

(assert (= bs!415032 d!589140))

(declare-fun m!2369711 () Bool)

(assert (=> bs!415032 m!2369711))

(assert (=> b!1930742 d!589140))

(declare-fun d!589142 () Bool)

(declare-fun lt!740357 () Int)

(assert (=> d!589142 (>= lt!740357 0)))

(declare-fun e!1234654 () Int)

(assert (=> d!589142 (= lt!740357 e!1234654)))

(declare-fun c!314230 () Bool)

(assert (=> d!589142 (= c!314230 ((_ is Nil!21955) (_2!11756 (get!6918 lt!740027))))))

(assert (=> d!589142 (= (size!17131 (_2!11756 (get!6918 lt!740027))) lt!740357)))

(declare-fun b!1931590 () Bool)

(assert (=> b!1931590 (= e!1234654 0)))

(declare-fun b!1931591 () Bool)

(assert (=> b!1931591 (= e!1234654 (+ 1 (size!17131 (t!180082 (_2!11756 (get!6918 lt!740027))))))))

(assert (= (and d!589142 c!314230) b!1931590))

(assert (= (and d!589142 (not c!314230)) b!1931591))

(declare-fun m!2369713 () Bool)

(assert (=> b!1931591 m!2369713))

(assert (=> b!1930491 d!589142))

(assert (=> b!1930491 d!588914))

(declare-fun d!589144 () Bool)

(declare-fun lt!740358 () Int)

(assert (=> d!589144 (>= lt!740358 0)))

(declare-fun e!1234655 () Int)

(assert (=> d!589144 (= lt!740358 e!1234655)))

(declare-fun c!314231 () Bool)

(assert (=> d!589144 (= c!314231 ((_ is Nil!21955) lt!739936))))

(assert (=> d!589144 (= (size!17131 lt!739936) lt!740358)))

(declare-fun b!1931592 () Bool)

(assert (=> b!1931592 (= e!1234655 0)))

(declare-fun b!1931593 () Bool)

(assert (=> b!1931593 (= e!1234655 (+ 1 (size!17131 (t!180082 lt!739936))))))

(assert (= (and d!589144 c!314231) b!1931592))

(assert (= (and d!589144 (not c!314231)) b!1931593))

(assert (=> b!1931593 m!2369667))

(assert (=> b!1930491 d!589144))

(declare-fun d!589146 () Bool)

(declare-fun dynLambda!10671 (Int BalanceConc!14476 BalanceConc!14476) Bool)

(assert (=> d!589146 (dynLambda!10671 lambda!75289 lt!739931 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))

(declare-fun lt!740361 () Unit!36312)

(declare-fun choose!12002 (Int BalanceConc!14476 BalanceConc!14476) Unit!36312)

(assert (=> d!589146 (= lt!740361 (choose!12002 lambda!75289 lt!739931 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))))))

(assert (=> d!589146 (Forall2!627 lambda!75289)))

(assert (=> d!589146 (= (Forall2of!205 lambda!75289 lt!739931 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))) lt!740361)))

(declare-fun b_lambda!64167 () Bool)

(assert (=> (not b_lambda!64167) (not d!589146)))

(declare-fun bs!415033 () Bool)

(assert (= bs!415033 d!589146))

(assert (=> bs!415033 m!2367889))

(declare-fun m!2369715 () Bool)

(assert (=> bs!415033 m!2369715))

(assert (=> bs!415033 m!2367889))

(declare-fun m!2369717 () Bool)

(assert (=> bs!415033 m!2369717))

(declare-fun m!2369719 () Bool)

(assert (=> bs!415033 m!2369719))

(assert (=> d!588640 d!589146))

(assert (=> d!588640 d!588630))

(declare-fun d!589148 () Bool)

(assert (=> d!589148 (= (list!8887 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))) (list!8889 (c!313974 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(declare-fun bs!415034 () Bool)

(assert (= bs!415034 d!589148))

(declare-fun m!2369721 () Bool)

(assert (=> bs!415034 m!2369721))

(assert (=> d!588640 d!589148))

(declare-fun d!589150 () Bool)

(declare-fun lt!740362 () Bool)

(assert (=> d!589150 (= lt!740362 (select (content!3182 rules!3198) (get!6917 lt!740045)))))

(declare-fun e!1234656 () Bool)

(assert (=> d!589150 (= lt!740362 e!1234656)))

(declare-fun res!863648 () Bool)

(assert (=> d!589150 (=> (not res!863648) (not e!1234656))))

(assert (=> d!589150 (= res!863648 ((_ is Cons!21956) rules!3198))))

(assert (=> d!589150 (= (contains!3975 rules!3198 (get!6917 lt!740045)) lt!740362)))

(declare-fun b!1931595 () Bool)

(declare-fun e!1234657 () Bool)

(assert (=> b!1931595 (= e!1234656 e!1234657)))

(declare-fun res!863647 () Bool)

(assert (=> b!1931595 (=> res!863647 e!1234657)))

(assert (=> b!1931595 (= res!863647 (= (h!27357 rules!3198) (get!6917 lt!740045)))))

(declare-fun b!1931596 () Bool)

(assert (=> b!1931596 (= e!1234657 (contains!3975 (t!180083 rules!3198) (get!6917 lt!740045)))))

(assert (= (and d!589150 res!863648) b!1931595))

(assert (= (and b!1931595 (not res!863647)) b!1931596))

(assert (=> d!589150 m!2369573))

(assert (=> d!589150 m!2368207))

(declare-fun m!2369723 () Bool)

(assert (=> d!589150 m!2369723))

(assert (=> b!1931596 m!2368207))

(declare-fun m!2369725 () Bool)

(assert (=> b!1931596 m!2369725))

(assert (=> b!1930529 d!589150))

(declare-fun d!589152 () Bool)

(assert (=> d!589152 (= (get!6917 lt!740045) (v!26657 lt!740045))))

(assert (=> b!1930529 d!589152))

(declare-fun d!589154 () Bool)

(declare-fun lt!740363 () BalanceConc!14476)

(assert (=> d!589154 (= (list!8887 lt!740363) (printList!1086 thiss!23328 (list!8890 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))))))))

(assert (=> d!589154 (= lt!740363 (printTailRec!1027 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))) 0 (BalanceConc!14477 Empty!7330)))))

(assert (=> d!589154 (= (print!1521 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 tokens!598)))) lt!740363)))

(declare-fun bs!415035 () Bool)

(assert (= bs!415035 d!589154))

(declare-fun m!2369727 () Bool)

(assert (=> bs!415035 m!2369727))

(assert (=> bs!415035 m!2368349))

(declare-fun m!2369729 () Bool)

(assert (=> bs!415035 m!2369729))

(assert (=> bs!415035 m!2369729))

(declare-fun m!2369731 () Bool)

(assert (=> bs!415035 m!2369731))

(assert (=> bs!415035 m!2368349))

(assert (=> bs!415035 m!2368353))

(assert (=> b!1930651 d!589154))

(declare-fun d!589156 () Bool)

(declare-fun e!1234658 () Bool)

(assert (=> d!589156 e!1234658))

(declare-fun res!863649 () Bool)

(assert (=> d!589156 (=> (not res!863649) (not e!1234658))))

(declare-fun lt!740364 () BalanceConc!14478)

(assert (=> d!589156 (= res!863649 (= (list!8890 lt!740364) (Cons!21957 (h!27358 (t!180084 tokens!598)) Nil!21957)))))

(assert (=> d!589156 (= lt!740364 (singleton!851 (h!27358 (t!180084 tokens!598))))))

(assert (=> d!589156 (= (singletonSeq!1922 (h!27358 (t!180084 tokens!598))) lt!740364)))

(declare-fun b!1931597 () Bool)

(assert (=> b!1931597 (= e!1234658 (isBalanced!2264 (c!313976 lt!740364)))))

(assert (= (and d!589156 res!863649) b!1931597))

(declare-fun m!2369733 () Bool)

(assert (=> d!589156 m!2369733))

(declare-fun m!2369735 () Bool)

(assert (=> d!589156 m!2369735))

(declare-fun m!2369737 () Bool)

(assert (=> b!1931597 m!2369737))

(assert (=> b!1930651 d!589156))

(declare-fun d!589158 () Bool)

(declare-fun lt!740367 () BalanceConc!14476)

(assert (=> d!589158 (= (list!8887 lt!740367) (printListTailRec!456 thiss!23328 (dropList!787 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))) 0) (list!8887 (BalanceConc!14477 Empty!7330))))))

(declare-fun e!1234659 () BalanceConc!14476)

(assert (=> d!589158 (= lt!740367 e!1234659)))

(declare-fun c!314232 () Bool)

(assert (=> d!589158 (= c!314232 (>= 0 (size!17130 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))))))))

(declare-fun e!1234660 () Bool)

(assert (=> d!589158 e!1234660))

(declare-fun res!863650 () Bool)

(assert (=> d!589158 (=> (not res!863650) (not e!1234660))))

(assert (=> d!589158 (= res!863650 (>= 0 0))))

(assert (=> d!589158 (= (printTailRec!1027 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))) 0 (BalanceConc!14477 Empty!7330)) lt!740367)))

(declare-fun b!1931598 () Bool)

(assert (=> b!1931598 (= e!1234660 (<= 0 (size!17130 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))))))))

(declare-fun b!1931599 () Bool)

(assert (=> b!1931599 (= e!1234659 (BalanceConc!14477 Empty!7330))))

(declare-fun b!1931600 () Bool)

(assert (=> b!1931600 (= e!1234659 (printTailRec!1027 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))) (+ 0 1) (++!5894 (BalanceConc!14477 Empty!7330) (charsOf!2478 (apply!5707 (singletonSeq!1922 (h!27358 (t!180084 tokens!598))) 0)))))))

(declare-fun lt!740368 () List!22039)

(assert (=> b!1931600 (= lt!740368 (list!8890 (singletonSeq!1922 (h!27358 (t!180084 tokens!598)))))))

(declare-fun lt!740370 () Unit!36312)

(assert (=> b!1931600 (= lt!740370 (lemmaDropApply!711 lt!740368 0))))

(assert (=> b!1931600 (= (head!4501 (drop!1078 lt!740368 0)) (apply!5708 lt!740368 0))))

(declare-fun lt!740369 () Unit!36312)

(assert (=> b!1931600 (= lt!740369 lt!740370)))

(declare-fun lt!740371 () List!22039)

(assert (=> b!1931600 (= lt!740371 (list!8890 (singletonSeq!1922 (h!27358 (t!180084 tokens!598)))))))

(declare-fun lt!740366 () Unit!36312)

(assert (=> b!1931600 (= lt!740366 (lemmaDropTail!687 lt!740371 0))))

(assert (=> b!1931600 (= (tail!2987 (drop!1078 lt!740371 0)) (drop!1078 lt!740371 (+ 0 1)))))

(declare-fun lt!740365 () Unit!36312)

(assert (=> b!1931600 (= lt!740365 lt!740366)))

(assert (= (and d!589158 res!863650) b!1931598))

(assert (= (and d!589158 c!314232) b!1931599))

(assert (= (and d!589158 (not c!314232)) b!1931600))

(assert (=> d!589158 m!2367987))

(assert (=> d!589158 m!2368349))

(declare-fun m!2369739 () Bool)

(assert (=> d!589158 m!2369739))

(assert (=> d!589158 m!2368349))

(declare-fun m!2369741 () Bool)

(assert (=> d!589158 m!2369741))

(declare-fun m!2369743 () Bool)

(assert (=> d!589158 m!2369743))

(assert (=> d!589158 m!2369739))

(assert (=> d!589158 m!2367987))

(declare-fun m!2369745 () Bool)

(assert (=> d!589158 m!2369745))

(assert (=> b!1931598 m!2368349))

(assert (=> b!1931598 m!2369741))

(declare-fun m!2369747 () Bool)

(assert (=> b!1931600 m!2369747))

(declare-fun m!2369749 () Bool)

(assert (=> b!1931600 m!2369749))

(assert (=> b!1931600 m!2368349))

(declare-fun m!2369751 () Bool)

(assert (=> b!1931600 m!2369751))

(declare-fun m!2369753 () Bool)

(assert (=> b!1931600 m!2369753))

(assert (=> b!1931600 m!2368349))

(declare-fun m!2369755 () Bool)

(assert (=> b!1931600 m!2369755))

(declare-fun m!2369757 () Bool)

(assert (=> b!1931600 m!2369757))

(assert (=> b!1931600 m!2369753))

(declare-fun m!2369759 () Bool)

(assert (=> b!1931600 m!2369759))

(declare-fun m!2369761 () Bool)

(assert (=> b!1931600 m!2369761))

(declare-fun m!2369763 () Bool)

(assert (=> b!1931600 m!2369763))

(assert (=> b!1931600 m!2369751))

(declare-fun m!2369765 () Bool)

(assert (=> b!1931600 m!2369765))

(declare-fun m!2369767 () Bool)

(assert (=> b!1931600 m!2369767))

(assert (=> b!1931600 m!2368349))

(assert (=> b!1931600 m!2369729))

(declare-fun m!2369769 () Bool)

(assert (=> b!1931600 m!2369769))

(assert (=> b!1931600 m!2369761))

(assert (=> b!1931600 m!2369765))

(assert (=> b!1931600 m!2369755))

(assert (=> b!1930651 d!589158))

(declare-fun b!1931739 () Bool)

(declare-fun res!863711 () Bool)

(declare-fun e!1234728 () Bool)

(assert (=> b!1931739 (=> (not res!863711) (not e!1234728))))

(declare-fun lt!740472 () Token!7428)

(assert (=> b!1931739 (= res!863711 (matchR!2631 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 lt!740472))))) (list!8887 (charsOf!2478 lt!740472))))))

(declare-fun d!589160 () Bool)

(assert (=> d!589160 (isDefined!3846 (maxPrefix!1989 thiss!23328 rules!3198 (++!5893 call!118772 lt!740092)))))

(declare-fun lt!740479 () Unit!36312)

(declare-fun e!1234729 () Unit!36312)

(assert (=> d!589160 (= lt!740479 e!1234729)))

(declare-fun c!314272 () Bool)

(assert (=> d!589160 (= c!314272 (isEmpty!13537 (maxPrefix!1989 thiss!23328 rules!3198 (++!5893 call!118772 lt!740092))))))

(declare-fun lt!740484 () Unit!36312)

(declare-fun lt!740471 () Unit!36312)

(assert (=> d!589160 (= lt!740484 lt!740471)))

(assert (=> d!589160 e!1234728))

(declare-fun res!863712 () Bool)

(assert (=> d!589160 (=> (not res!863712) (not e!1234728))))

(assert (=> d!589160 (= res!863712 (isDefined!3845 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 lt!740472)))))))

(assert (=> d!589160 (= lt!740471 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!759 thiss!23328 rules!3198 call!118772 lt!740472))))

(declare-fun lt!740487 () Unit!36312)

(declare-fun lt!740480 () Unit!36312)

(assert (=> d!589160 (= lt!740487 lt!740480)))

(declare-fun lt!740473 () List!22037)

(assert (=> d!589160 (isPrefix!1945 lt!740473 (++!5893 call!118772 lt!740092))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!368 (List!22037 List!22037 List!22037) Unit!36312)

(assert (=> d!589160 (= lt!740480 (lemmaPrefixStaysPrefixWhenAddingToSuffix!368 lt!740473 call!118772 lt!740092))))

(assert (=> d!589160 (= lt!740473 (list!8887 (charsOf!2478 lt!740472)))))

(declare-fun lt!740482 () Unit!36312)

(declare-fun lt!740478 () Unit!36312)

(assert (=> d!589160 (= lt!740482 lt!740478)))

(declare-fun lt!740485 () List!22037)

(declare-fun lt!740474 () List!22037)

(assert (=> d!589160 (isPrefix!1945 lt!740485 (++!5893 lt!740485 lt!740474))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1327 (List!22037 List!22037) Unit!36312)

(assert (=> d!589160 (= lt!740478 (lemmaConcatTwoListThenFirstIsPrefix!1327 lt!740485 lt!740474))))

(assert (=> d!589160 (= lt!740474 (_2!11756 (get!6918 (maxPrefix!1989 thiss!23328 rules!3198 call!118772))))))

(assert (=> d!589160 (= lt!740485 (list!8887 (charsOf!2478 lt!740472)))))

(assert (=> d!589160 (= lt!740472 (head!4501 (list!8890 (_1!11758 (lex!1577 thiss!23328 rules!3198 (seqFromList!2792 call!118772))))))))

(assert (=> d!589160 (not (isEmpty!13534 rules!3198))))

(assert (=> d!589160 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!747 thiss!23328 rules!3198 call!118772 lt!740092) lt!740479)))

(declare-fun b!1931742 () Bool)

(declare-fun Unit!36320 () Unit!36312)

(assert (=> b!1931742 (= e!1234729 Unit!36320)))

(declare-fun b!1931740 () Bool)

(assert (=> b!1931740 (= e!1234728 (= (rule!6145 lt!740472) (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 lt!740472))))))))

(declare-fun b!1931741 () Bool)

(declare-fun Unit!36321 () Unit!36312)

(assert (=> b!1931741 (= e!1234729 Unit!36321)))

(declare-fun lt!740475 () List!22037)

(assert (=> b!1931741 (= lt!740475 (++!5893 call!118772 lt!740092))))

(declare-fun lt!740481 () Unit!36312)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!376 (LexerInterface!3551 Rule!7676 List!22038 List!22037) Unit!36312)

(assert (=> b!1931741 (= lt!740481 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!376 thiss!23328 (rule!6145 lt!740472) rules!3198 lt!740475))))

(assert (=> b!1931741 (isEmpty!13537 (maxPrefixOneRule!1227 thiss!23328 (rule!6145 lt!740472) lt!740475))))

(declare-fun lt!740477 () Unit!36312)

(assert (=> b!1931741 (= lt!740477 lt!740481)))

(declare-fun lt!740486 () List!22037)

(assert (=> b!1931741 (= lt!740486 (list!8887 (charsOf!2478 lt!740472)))))

(declare-fun lt!740483 () Unit!36312)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!372 (LexerInterface!3551 Rule!7676 List!22037 List!22037) Unit!36312)

(assert (=> b!1931741 (= lt!740483 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!372 thiss!23328 (rule!6145 lt!740472) lt!740486 (++!5893 call!118772 lt!740092)))))

(assert (=> b!1931741 (not (matchR!2631 (regex!3938 (rule!6145 lt!740472)) lt!740486))))

(declare-fun lt!740476 () Unit!36312)

(assert (=> b!1931741 (= lt!740476 lt!740483)))

(assert (=> b!1931741 false))

(assert (= (and d!589160 res!863712) b!1931739))

(assert (= (and b!1931739 res!863711) b!1931740))

(assert (= (and d!589160 c!314272) b!1931741))

(assert (= (and d!589160 (not c!314272)) b!1931742))

(declare-fun m!2369949 () Bool)

(assert (=> b!1931739 m!2369949))

(declare-fun m!2369951 () Bool)

(assert (=> b!1931739 m!2369951))

(declare-fun m!2369953 () Bool)

(assert (=> b!1931739 m!2369953))

(declare-fun m!2369955 () Bool)

(assert (=> b!1931739 m!2369955))

(declare-fun m!2369957 () Bool)

(assert (=> b!1931739 m!2369957))

(assert (=> b!1931739 m!2369949))

(assert (=> b!1931739 m!2369951))

(assert (=> b!1931739 m!2369955))

(declare-fun m!2369959 () Bool)

(assert (=> d!589160 m!2369959))

(declare-fun m!2369961 () Bool)

(assert (=> d!589160 m!2369961))

(declare-fun m!2369963 () Bool)

(assert (=> d!589160 m!2369963))

(declare-fun m!2369965 () Bool)

(assert (=> d!589160 m!2369965))

(declare-fun m!2369967 () Bool)

(assert (=> d!589160 m!2369967))

(declare-fun m!2369969 () Bool)

(assert (=> d!589160 m!2369969))

(declare-fun m!2369971 () Bool)

(assert (=> d!589160 m!2369971))

(assert (=> d!589160 m!2369971))

(declare-fun m!2369973 () Bool)

(assert (=> d!589160 m!2369973))

(declare-fun m!2369975 () Bool)

(assert (=> d!589160 m!2369975))

(declare-fun m!2369977 () Bool)

(assert (=> d!589160 m!2369977))

(assert (=> d!589160 m!2367921))

(assert (=> d!589160 m!2369961))

(assert (=> d!589160 m!2369967))

(assert (=> d!589160 m!2369955))

(declare-fun m!2369979 () Bool)

(assert (=> d!589160 m!2369979))

(assert (=> d!589160 m!2369963))

(declare-fun m!2369981 () Bool)

(assert (=> d!589160 m!2369981))

(assert (=> d!589160 m!2369949))

(declare-fun m!2369983 () Bool)

(assert (=> d!589160 m!2369983))

(assert (=> d!589160 m!2369967))

(declare-fun m!2369985 () Bool)

(assert (=> d!589160 m!2369985))

(assert (=> d!589160 m!2369975))

(declare-fun m!2369987 () Bool)

(assert (=> d!589160 m!2369987))

(declare-fun m!2369989 () Bool)

(assert (=> d!589160 m!2369989))

(assert (=> d!589160 m!2369961))

(declare-fun m!2369991 () Bool)

(assert (=> d!589160 m!2369991))

(assert (=> d!589160 m!2369949))

(assert (=> d!589160 m!2369951))

(assert (=> d!589160 m!2369955))

(assert (=> d!589160 m!2369987))

(assert (=> b!1931740 m!2369955))

(assert (=> b!1931740 m!2369955))

(assert (=> b!1931740 m!2369957))

(declare-fun m!2369993 () Bool)

(assert (=> b!1931741 m!2369993))

(declare-fun m!2369995 () Bool)

(assert (=> b!1931741 m!2369995))

(assert (=> b!1931741 m!2369961))

(declare-fun m!2369997 () Bool)

(assert (=> b!1931741 m!2369997))

(assert (=> b!1931741 m!2369961))

(declare-fun m!2369999 () Bool)

(assert (=> b!1931741 m!2369999))

(assert (=> b!1931741 m!2369949))

(declare-fun m!2370001 () Bool)

(assert (=> b!1931741 m!2370001))

(assert (=> b!1931741 m!2369949))

(assert (=> b!1931741 m!2369951))

(assert (=> b!1931741 m!2369993))

(assert (=> b!1930651 d!589160))

(declare-fun b!1931763 () Bool)

(declare-fun e!1234738 () Bool)

(declare-fun e!1234737 () Bool)

(assert (=> b!1931763 (= e!1234738 e!1234737)))

(declare-fun res!863729 () Bool)

(assert (=> b!1931763 (=> (not res!863729) (not e!1234737))))

(declare-fun height!1112 (Conc!7331) Int)

(assert (=> b!1931763 (= res!863729 (<= (- 1) (- (height!1112 (left!17466 (c!313976 lt!739973))) (height!1112 (right!17796 (c!313976 lt!739973))))))))

(declare-fun b!1931764 () Bool)

(declare-fun res!863726 () Bool)

(assert (=> b!1931764 (=> (not res!863726) (not e!1234737))))

(declare-fun isEmpty!13546 (Conc!7331) Bool)

(assert (=> b!1931764 (= res!863726 (not (isEmpty!13546 (left!17466 (c!313976 lt!739973)))))))

(declare-fun b!1931765 () Bool)

(declare-fun res!863727 () Bool)

(assert (=> b!1931765 (=> (not res!863727) (not e!1234737))))

(assert (=> b!1931765 (= res!863727 (isBalanced!2264 (left!17466 (c!313976 lt!739973))))))

(declare-fun b!1931766 () Bool)

(declare-fun res!863725 () Bool)

(assert (=> b!1931766 (=> (not res!863725) (not e!1234737))))

(assert (=> b!1931766 (= res!863725 (<= (- (height!1112 (left!17466 (c!313976 lt!739973))) (height!1112 (right!17796 (c!313976 lt!739973)))) 1))))

(declare-fun b!1931768 () Bool)

(assert (=> b!1931768 (= e!1234737 (not (isEmpty!13546 (right!17796 (c!313976 lt!739973)))))))

(declare-fun d!589196 () Bool)

(declare-fun res!863730 () Bool)

(assert (=> d!589196 (=> res!863730 e!1234738)))

(assert (=> d!589196 (= res!863730 (not ((_ is Node!7331) (c!313976 lt!739973))))))

(assert (=> d!589196 (= (isBalanced!2264 (c!313976 lt!739973)) e!1234738)))

(declare-fun b!1931767 () Bool)

(declare-fun res!863728 () Bool)

(assert (=> b!1931767 (=> (not res!863728) (not e!1234737))))

(assert (=> b!1931767 (= res!863728 (isBalanced!2264 (right!17796 (c!313976 lt!739973))))))

(assert (= (and d!589196 (not res!863730)) b!1931763))

(assert (= (and b!1931763 res!863729) b!1931766))

(assert (= (and b!1931766 res!863725) b!1931765))

(assert (= (and b!1931765 res!863727) b!1931767))

(assert (= (and b!1931767 res!863728) b!1931764))

(assert (= (and b!1931764 res!863726) b!1931768))

(declare-fun m!2370027 () Bool)

(assert (=> b!1931763 m!2370027))

(declare-fun m!2370029 () Bool)

(assert (=> b!1931763 m!2370029))

(assert (=> b!1931766 m!2370027))

(assert (=> b!1931766 m!2370029))

(declare-fun m!2370031 () Bool)

(assert (=> b!1931767 m!2370031))

(declare-fun m!2370033 () Bool)

(assert (=> b!1931764 m!2370033))

(declare-fun m!2370035 () Bool)

(assert (=> b!1931765 m!2370035))

(declare-fun m!2370037 () Bool)

(assert (=> b!1931768 m!2370037))

(assert (=> b!1930366 d!589196))

(declare-fun d!589200 () Bool)

(assert (=> d!589200 (= (inv!17 (value!123824 (h!27358 tokens!598))) (= (charsToBigInt!1 (text!28966 (value!123824 (h!27358 tokens!598)))) (value!123816 (value!123824 (h!27358 tokens!598)))))))

(declare-fun bs!415039 () Bool)

(assert (= bs!415039 d!589200))

(declare-fun m!2370039 () Bool)

(assert (=> bs!415039 m!2370039))

(assert (=> b!1930776 d!589200))

(declare-fun d!589204 () Bool)

(declare-fun e!1234740 () Bool)

(assert (=> d!589204 e!1234740))

(declare-fun res!863732 () Bool)

(assert (=> d!589204 (=> (not res!863732) (not e!1234740))))

(declare-fun lt!740503 () List!22037)

(assert (=> d!589204 (= res!863732 (= (content!3179 lt!740503) ((_ map or) (content!3179 (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (content!3179 (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))))))

(declare-fun e!1234739 () List!22037)

(assert (=> d!589204 (= lt!740503 e!1234739)))

(declare-fun c!314276 () Bool)

(assert (=> d!589204 (= c!314276 ((_ is Nil!21955) (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))))))

(assert (=> d!589204 (= (++!5893 (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))) (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957)))) lt!740503)))

(declare-fun b!1931772 () Bool)

(assert (=> b!1931772 (= e!1234740 (or (not (= (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957))) Nil!21955)) (= lt!740503 (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))))))

(declare-fun b!1931770 () Bool)

(assert (=> b!1931770 (= e!1234739 (Cons!21955 (h!27356 (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (++!5893 (t!180082 (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957))))))))

(declare-fun b!1931771 () Bool)

(declare-fun res!863731 () Bool)

(assert (=> b!1931771 (=> (not res!863731) (not e!1234740))))

(assert (=> b!1931771 (= res!863731 (= (size!17131 lt!740503) (+ (size!17131 (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (size!17131 (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))))))

(declare-fun b!1931769 () Bool)

(assert (=> b!1931769 (= e!1234739 (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957))))))

(assert (= (and d!589204 c!314276) b!1931769))

(assert (= (and d!589204 (not c!314276)) b!1931770))

(assert (= (and d!589204 res!863732) b!1931771))

(assert (= (and b!1931771 res!863731) b!1931772))

(declare-fun m!2370043 () Bool)

(assert (=> d!589204 m!2370043))

(assert (=> d!589204 m!2367975))

(declare-fun m!2370045 () Bool)

(assert (=> d!589204 m!2370045))

(assert (=> d!589204 m!2367977))

(declare-fun m!2370047 () Bool)

(assert (=> d!589204 m!2370047))

(assert (=> b!1931770 m!2367977))

(declare-fun m!2370049 () Bool)

(assert (=> b!1931770 m!2370049))

(declare-fun m!2370051 () Bool)

(assert (=> b!1931771 m!2370051))

(assert (=> b!1931771 m!2367975))

(declare-fun m!2370053 () Bool)

(assert (=> b!1931771 m!2370053))

(assert (=> b!1931771 m!2367977))

(declare-fun m!2370055 () Bool)

(assert (=> b!1931771 m!2370055))

(assert (=> b!1930353 d!589204))

(declare-fun d!589206 () Bool)

(assert (=> d!589206 (= (list!8887 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))) (list!8889 (c!313974 (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))))))

(declare-fun bs!415041 () Bool)

(assert (= bs!415041 d!589206))

(declare-fun m!2370057 () Bool)

(assert (=> bs!415041 m!2370057))

(assert (=> b!1930353 d!589206))

(declare-fun d!589208 () Bool)

(declare-fun lt!740504 () BalanceConc!14476)

(assert (=> d!589208 (= (list!8887 lt!740504) (originalCharacters!4745 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))))

(assert (=> d!589208 (= lt!740504 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (value!123824 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))))

(assert (=> d!589208 (= (charsOf!2478 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))) lt!740504)))

(declare-fun b_lambda!64169 () Bool)

(assert (=> (not b_lambda!64169) (not d!589208)))

(declare-fun t!180324 () Bool)

(declare-fun tb!118641 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) t!180324) tb!118641))

(declare-fun b!1931773 () Bool)

(declare-fun e!1234741 () Bool)

(declare-fun tp!551221 () Bool)

(assert (=> b!1931773 (= e!1234741 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (value!123824 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) tp!551221))))

(declare-fun result!143284 () Bool)

(assert (=> tb!118641 (= result!143284 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (value!123824 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) e!1234741))))

(assert (= tb!118641 b!1931773))

(declare-fun m!2370063 () Bool)

(assert (=> b!1931773 m!2370063))

(declare-fun m!2370065 () Bool)

(assert (=> tb!118641 m!2370065))

(assert (=> d!589208 t!180324))

(declare-fun b_and!151909 () Bool)

(assert (= b_and!151869 (and (=> t!180324 result!143284) b_and!151909)))

(declare-fun tb!118643 () Bool)

(declare-fun t!180326 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) t!180326) tb!118643))

(declare-fun result!143286 () Bool)

(assert (= result!143286 result!143284))

(assert (=> d!589208 t!180326))

(declare-fun b_and!151911 () Bool)

(assert (= b_and!151871 (and (=> t!180326 result!143286) b_and!151911)))

(declare-fun tb!118645 () Bool)

(declare-fun t!180328 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) t!180328) tb!118645))

(declare-fun result!143288 () Bool)

(assert (= result!143288 result!143284))

(assert (=> d!589208 t!180328))

(declare-fun b_and!151913 () Bool)

(assert (= b_and!151877 (and (=> t!180328 result!143288) b_and!151913)))

(declare-fun t!180330 () Bool)

(declare-fun tb!118647 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) t!180330) tb!118647))

(declare-fun result!143290 () Bool)

(assert (= result!143290 result!143284))

(assert (=> d!589208 t!180330))

(declare-fun b_and!151915 () Bool)

(assert (= b_and!151873 (and (=> t!180330 result!143290) b_and!151915)))

(declare-fun t!180332 () Bool)

(declare-fun tb!118649 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) t!180332) tb!118649))

(declare-fun result!143292 () Bool)

(assert (= result!143292 result!143284))

(assert (=> d!589208 t!180332))

(declare-fun b_and!151917 () Bool)

(assert (= b_and!151875 (and (=> t!180332 result!143292) b_and!151917)))

(declare-fun m!2370069 () Bool)

(assert (=> d!589208 m!2370069))

(declare-fun m!2370073 () Bool)

(assert (=> d!589208 m!2370073))

(assert (=> b!1930353 d!589208))

(declare-fun d!589214 () Bool)

(declare-fun c!314277 () Bool)

(assert (=> d!589214 (= c!314277 ((_ is Cons!21957) (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957))))))

(declare-fun e!1234743 () List!22037)

(assert (=> d!589214 (= (printList!1086 thiss!23328 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957))) e!1234743)))

(declare-fun b!1931775 () Bool)

(assert (=> b!1931775 (= e!1234743 (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957))))) (printList!1086 thiss!23328 (t!180084 (t!180084 (Cons!21957 (h!27358 tokens!598) Nil!21957))))))))

(declare-fun b!1931776 () Bool)

(assert (=> b!1931776 (= e!1234743 Nil!21955)))

(assert (= (and d!589214 c!314277) b!1931775))

(assert (= (and d!589214 (not c!314277)) b!1931776))

(declare-fun m!2370077 () Bool)

(assert (=> b!1931775 m!2370077))

(assert (=> b!1931775 m!2370077))

(declare-fun m!2370079 () Bool)

(assert (=> b!1931775 m!2370079))

(declare-fun m!2370081 () Bool)

(assert (=> b!1931775 m!2370081))

(assert (=> b!1931775 m!2370079))

(assert (=> b!1931775 m!2370081))

(declare-fun m!2370083 () Bool)

(assert (=> b!1931775 m!2370083))

(assert (=> b!1930353 d!589214))

(declare-fun d!589220 () Bool)

(assert (=> d!589220 (= (isEmpty!13541 (tail!2990 lt!739936)) ((_ is Nil!21955) (tail!2990 lt!739936)))))

(assert (=> b!1930789 d!589220))

(assert (=> b!1930789 d!589026))

(declare-fun b!1931777 () Bool)

(declare-fun e!1234744 () Bool)

(declare-fun lt!740506 () Bool)

(declare-fun call!118845 () Bool)

(assert (=> b!1931777 (= e!1234744 (= lt!740506 call!118845))))

(declare-fun bm!118840 () Bool)

(assert (=> bm!118840 (= call!118845 (isEmpty!13541 (list!8887 (charsOf!2478 (h!27358 tokens!598)))))))

(declare-fun b!1931778 () Bool)

(declare-fun e!1234747 () Bool)

(assert (=> b!1931778 (= e!1234747 (= (head!4504 (list!8887 (charsOf!2478 (h!27358 tokens!598)))) (c!313975 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))))

(declare-fun b!1931779 () Bool)

(declare-fun e!1234748 () Bool)

(assert (=> b!1931779 (= e!1234748 (not lt!740506))))

(declare-fun b!1931780 () Bool)

(declare-fun e!1234746 () Bool)

(assert (=> b!1931780 (= e!1234746 (not (= (head!4504 (list!8887 (charsOf!2478 (h!27358 tokens!598)))) (c!313975 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))))))))))

(declare-fun b!1931781 () Bool)

(declare-fun res!863740 () Bool)

(declare-fun e!1234750 () Bool)

(assert (=> b!1931781 (=> res!863740 e!1234750)))

(assert (=> b!1931781 (= res!863740 (not ((_ is ElementMatch!5363) (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))))

(assert (=> b!1931781 (= e!1234748 e!1234750)))

(declare-fun d!589222 () Bool)

(assert (=> d!589222 e!1234744))

(declare-fun c!314279 () Bool)

(assert (=> d!589222 (= c!314279 ((_ is EmptyExpr!5363) (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))))))))

(declare-fun e!1234749 () Bool)

(assert (=> d!589222 (= lt!740506 e!1234749)))

(declare-fun c!314280 () Bool)

(assert (=> d!589222 (= c!314280 (isEmpty!13541 (list!8887 (charsOf!2478 (h!27358 tokens!598)))))))

(assert (=> d!589222 (validRegex!2139 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))

(assert (=> d!589222 (= (matchR!2631 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))) (list!8887 (charsOf!2478 (h!27358 tokens!598)))) lt!740506)))

(declare-fun b!1931782 () Bool)

(assert (=> b!1931782 (= e!1234749 (matchR!2631 (derivativeStep!1372 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598)))))) (head!4504 (list!8887 (charsOf!2478 (h!27358 tokens!598))))) (tail!2990 (list!8887 (charsOf!2478 (h!27358 tokens!598))))))))

(declare-fun b!1931783 () Bool)

(declare-fun res!863736 () Bool)

(assert (=> b!1931783 (=> (not res!863736) (not e!1234747))))

(assert (=> b!1931783 (= res!863736 (not call!118845))))

(declare-fun b!1931784 () Bool)

(declare-fun e!1234745 () Bool)

(assert (=> b!1931784 (= e!1234750 e!1234745)))

(declare-fun res!863737 () Bool)

(assert (=> b!1931784 (=> (not res!863737) (not e!1234745))))

(assert (=> b!1931784 (= res!863737 (not lt!740506))))

(declare-fun b!1931785 () Bool)

(assert (=> b!1931785 (= e!1234745 e!1234746)))

(declare-fun res!863738 () Bool)

(assert (=> b!1931785 (=> res!863738 e!1234746)))

(assert (=> b!1931785 (= res!863738 call!118845)))

(declare-fun b!1931786 () Bool)

(declare-fun res!863739 () Bool)

(assert (=> b!1931786 (=> res!863739 e!1234750)))

(assert (=> b!1931786 (= res!863739 e!1234747)))

(declare-fun res!863741 () Bool)

(assert (=> b!1931786 (=> (not res!863741) (not e!1234747))))

(assert (=> b!1931786 (= res!863741 lt!740506)))

(declare-fun b!1931787 () Bool)

(declare-fun res!863735 () Bool)

(assert (=> b!1931787 (=> res!863735 e!1234746)))

(assert (=> b!1931787 (= res!863735 (not (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 (h!27358 tokens!598)))))))))

(declare-fun b!1931788 () Bool)

(declare-fun res!863734 () Bool)

(assert (=> b!1931788 (=> (not res!863734) (not e!1234747))))

(assert (=> b!1931788 (= res!863734 (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 (h!27358 tokens!598))))))))

(declare-fun b!1931789 () Bool)

(assert (=> b!1931789 (= e!1234749 (nullable!1613 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))))))))

(declare-fun b!1931790 () Bool)

(assert (=> b!1931790 (= e!1234744 e!1234748)))

(declare-fun c!314278 () Bool)

(assert (=> b!1931790 (= c!314278 ((_ is EmptyLang!5363) (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))))))))

(assert (= (and d!589222 c!314280) b!1931789))

(assert (= (and d!589222 (not c!314280)) b!1931782))

(assert (= (and d!589222 c!314279) b!1931777))

(assert (= (and d!589222 (not c!314279)) b!1931790))

(assert (= (and b!1931790 c!314278) b!1931779))

(assert (= (and b!1931790 (not c!314278)) b!1931781))

(assert (= (and b!1931781 (not res!863740)) b!1931786))

(assert (= (and b!1931786 res!863741) b!1931783))

(assert (= (and b!1931783 res!863736) b!1931788))

(assert (= (and b!1931788 res!863734) b!1931778))

(assert (= (and b!1931786 (not res!863739)) b!1931784))

(assert (= (and b!1931784 res!863737) b!1931785))

(assert (= (and b!1931785 (not res!863738)) b!1931787))

(assert (= (and b!1931787 (not res!863735)) b!1931780))

(assert (= (or b!1931777 b!1931783 b!1931785) bm!118840))

(assert (=> b!1931780 m!2368437))

(declare-fun m!2370085 () Bool)

(assert (=> b!1931780 m!2370085))

(assert (=> bm!118840 m!2368437))

(declare-fun m!2370087 () Bool)

(assert (=> bm!118840 m!2370087))

(assert (=> b!1931778 m!2368437))

(assert (=> b!1931778 m!2370085))

(assert (=> d!589222 m!2368437))

(assert (=> d!589222 m!2370087))

(declare-fun m!2370089 () Bool)

(assert (=> d!589222 m!2370089))

(assert (=> b!1931787 m!2368437))

(declare-fun m!2370091 () Bool)

(assert (=> b!1931787 m!2370091))

(assert (=> b!1931787 m!2370091))

(declare-fun m!2370093 () Bool)

(assert (=> b!1931787 m!2370093))

(declare-fun m!2370095 () Bool)

(assert (=> b!1931789 m!2370095))

(assert (=> b!1931782 m!2368437))

(assert (=> b!1931782 m!2370085))

(assert (=> b!1931782 m!2370085))

(declare-fun m!2370097 () Bool)

(assert (=> b!1931782 m!2370097))

(assert (=> b!1931782 m!2368437))

(assert (=> b!1931782 m!2370091))

(assert (=> b!1931782 m!2370097))

(assert (=> b!1931782 m!2370091))

(declare-fun m!2370099 () Bool)

(assert (=> b!1931782 m!2370099))

(assert (=> b!1931788 m!2368437))

(assert (=> b!1931788 m!2370091))

(assert (=> b!1931788 m!2370091))

(assert (=> b!1931788 m!2370093))

(assert (=> b!1930694 d!589222))

(declare-fun d!589224 () Bool)

(assert (=> d!589224 (= (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))) (v!26657 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 (h!27358 tokens!598))))))))

(assert (=> b!1930694 d!589224))

(assert (=> b!1930694 d!588636))

(declare-fun d!589226 () Bool)

(assert (=> d!589226 (= (list!8887 (charsOf!2478 (h!27358 tokens!598))) (list!8889 (c!313974 (charsOf!2478 (h!27358 tokens!598)))))))

(declare-fun bs!415045 () Bool)

(assert (= bs!415045 d!589226))

(declare-fun m!2370101 () Bool)

(assert (=> bs!415045 m!2370101))

(assert (=> b!1930694 d!589226))

(assert (=> b!1930694 d!588598))

(declare-fun d!589228 () Bool)

(assert (=> d!589228 (= (isDefined!3846 lt!740098) (not (isEmpty!13537 lt!740098)))))

(declare-fun bs!415046 () Bool)

(assert (= bs!415046 d!589228))

(assert (=> bs!415046 m!2368377))

(assert (=> b!1930666 d!589228))

(declare-fun d!589230 () Bool)

(declare-fun lt!740507 () Int)

(assert (=> d!589230 (>= lt!740507 0)))

(declare-fun e!1234751 () Int)

(assert (=> d!589230 (= lt!740507 e!1234751)))

(declare-fun c!314281 () Bool)

(assert (=> d!589230 (= c!314281 ((_ is Nil!21955) (originalCharacters!4745 separatorToken!354)))))

(assert (=> d!589230 (= (size!17131 (originalCharacters!4745 separatorToken!354)) lt!740507)))

(declare-fun b!1931791 () Bool)

(assert (=> b!1931791 (= e!1234751 0)))

(declare-fun b!1931792 () Bool)

(assert (=> b!1931792 (= e!1234751 (+ 1 (size!17131 (t!180082 (originalCharacters!4745 separatorToken!354)))))))

(assert (= (and d!589230 c!314281) b!1931791))

(assert (= (and d!589230 (not c!314281)) b!1931792))

(declare-fun m!2370103 () Bool)

(assert (=> b!1931792 m!2370103))

(assert (=> b!1930773 d!589230))

(declare-fun bs!415047 () Bool)

(declare-fun d!589232 () Bool)

(assert (= bs!415047 (and d!589232 d!588570)))

(declare-fun lambda!75318 () Int)

(assert (=> bs!415047 (= (and (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (= lambda!75318 lambda!75278))))

(declare-fun bs!415048 () Bool)

(assert (= bs!415048 (and d!589232 d!589068)))

(assert (=> bs!415048 (= (and (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))))) (= lambda!75318 lambda!75313))))

(declare-fun bs!415049 () Bool)

(assert (= bs!415049 (and d!589232 d!589128)))

(assert (=> bs!415049 (= (and (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (h!27357 rules!3198)))) (= (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (h!27357 rules!3198))))) (= lambda!75318 lambda!75314))))

(assert (=> d!589232 true))

(assert (=> d!589232 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) (dynLambda!10661 order!13807 lambda!75318))))

(assert (=> d!589232 true))

(assert (=> d!589232 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))) (dynLambda!10661 order!13807 lambda!75318))))

(assert (=> d!589232 (= (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))) (Forall!1002 lambda!75318))))

(declare-fun bs!415050 () Bool)

(assert (= bs!415050 d!589232))

(declare-fun m!2370105 () Bool)

(assert (=> bs!415050 m!2370105))

(assert (=> d!588658 d!589232))

(declare-fun d!589234 () Bool)

(declare-fun lt!740510 () Bool)

(assert (=> d!589234 (= lt!740510 (isEmpty!13541 (list!8887 (_2!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)))))))))

(assert (=> d!589234 (= lt!740510 (isEmpty!13543 (c!313974 (_2!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)))))))))

(assert (=> d!589234 (= (isEmpty!13542 (_2!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354))))) lt!740510)))

(declare-fun bs!415051 () Bool)

(assert (= bs!415051 d!589234))

(declare-fun m!2370107 () Bool)

(assert (=> bs!415051 m!2370107))

(assert (=> bs!415051 m!2370107))

(declare-fun m!2370109 () Bool)

(assert (=> bs!415051 m!2370109))

(declare-fun m!2370111 () Bool)

(assert (=> bs!415051 m!2370111))

(assert (=> b!1930832 d!589234))

(declare-fun b!1932021 () Bool)

(declare-fun res!863796 () Bool)

(declare-fun e!1234873 () Bool)

(assert (=> b!1932021 (=> (not res!863796) (not e!1234873))))

(declare-fun lt!740549 () tuple2!20578)

(declare-datatypes ((tuple2!20584 0))(
  ( (tuple2!20585 (_1!11761 List!22039) (_2!11761 List!22037)) )
))
(declare-fun lexList!953 (LexerInterface!3551 List!22038 List!22037) tuple2!20584)

(assert (=> b!1932021 (= res!863796 (= (list!8890 (_1!11758 lt!740549)) (_1!11761 (lexList!953 thiss!23328 rules!3198 (list!8887 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)))))))))

(declare-fun b!1932022 () Bool)

(declare-fun e!1234872 () Bool)

(declare-fun isEmpty!13547 (BalanceConc!14478) Bool)

(assert (=> b!1932022 (= e!1234872 (not (isEmpty!13547 (_1!11758 lt!740549))))))

(declare-fun b!1932024 () Bool)

(declare-fun e!1234871 () Bool)

(assert (=> b!1932024 (= e!1234871 e!1234872)))

(declare-fun res!863795 () Bool)

(declare-fun size!17138 (BalanceConc!14476) Int)

(assert (=> b!1932024 (= res!863795 (< (size!17138 (_2!11758 lt!740549)) (size!17138 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)))))))

(assert (=> b!1932024 (=> (not res!863795) (not e!1234872))))

(declare-fun b!1932025 () Bool)

(assert (=> b!1932025 (= e!1234873 (= (list!8887 (_2!11758 lt!740549)) (_2!11761 (lexList!953 thiss!23328 rules!3198 (list!8887 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)))))))))

(declare-fun d!589236 () Bool)

(assert (=> d!589236 e!1234873))

(declare-fun res!863794 () Bool)

(assert (=> d!589236 (=> (not res!863794) (not e!1234873))))

(assert (=> d!589236 (= res!863794 e!1234871)))

(declare-fun c!314322 () Bool)

(assert (=> d!589236 (= c!314322 (> (size!17130 (_1!11758 lt!740549)) 0))))

(declare-fun lexTailRecV2!676 (LexerInterface!3551 List!22038 BalanceConc!14476 BalanceConc!14476 BalanceConc!14476 BalanceConc!14478) tuple2!20578)

(assert (=> d!589236 (= lt!740549 (lexTailRecV2!676 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)) (BalanceConc!14477 Empty!7330) (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)) (BalanceConc!14479 Empty!7331)))))

(assert (=> d!589236 (= (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354))) lt!740549)))

(declare-fun b!1932023 () Bool)

(assert (=> b!1932023 (= e!1234871 (= (_2!11758 lt!740549) (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354))))))

(assert (= (and d!589236 c!314322) b!1932024))

(assert (= (and d!589236 (not c!314322)) b!1932023))

(assert (= (and b!1932024 res!863795) b!1932022))

(assert (= (and d!589236 res!863794) b!1932021))

(assert (= (and b!1932021 res!863796) b!1932025))

(declare-fun m!2370339 () Bool)

(assert (=> b!1932025 m!2370339))

(assert (=> b!1932025 m!2368571))

(declare-fun m!2370341 () Bool)

(assert (=> b!1932025 m!2370341))

(assert (=> b!1932025 m!2370341))

(declare-fun m!2370343 () Bool)

(assert (=> b!1932025 m!2370343))

(declare-fun m!2370345 () Bool)

(assert (=> d!589236 m!2370345))

(assert (=> d!589236 m!2368571))

(assert (=> d!589236 m!2368571))

(declare-fun m!2370347 () Bool)

(assert (=> d!589236 m!2370347))

(declare-fun m!2370349 () Bool)

(assert (=> b!1932024 m!2370349))

(assert (=> b!1932024 m!2368571))

(declare-fun m!2370351 () Bool)

(assert (=> b!1932024 m!2370351))

(declare-fun m!2370353 () Bool)

(assert (=> b!1932022 m!2370353))

(declare-fun m!2370355 () Bool)

(assert (=> b!1932021 m!2370355))

(assert (=> b!1932021 m!2368571))

(assert (=> b!1932021 m!2370341))

(assert (=> b!1932021 m!2370341))

(assert (=> b!1932021 m!2370343))

(assert (=> b!1930832 d!589236))

(declare-fun d!589308 () Bool)

(declare-fun lt!740550 () BalanceConc!14476)

(assert (=> d!589308 (= (list!8887 lt!740550) (printList!1086 thiss!23328 (list!8890 (singletonSeq!1922 separatorToken!354))))))

(assert (=> d!589308 (= lt!740550 (printTailRec!1027 thiss!23328 (singletonSeq!1922 separatorToken!354) 0 (BalanceConc!14477 Empty!7330)))))

(assert (=> d!589308 (= (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)) lt!740550)))

(declare-fun bs!415070 () Bool)

(assert (= bs!415070 d!589308))

(declare-fun m!2370357 () Bool)

(assert (=> bs!415070 m!2370357))

(assert (=> bs!415070 m!2368569))

(assert (=> bs!415070 m!2368579))

(assert (=> bs!415070 m!2368579))

(declare-fun m!2370359 () Bool)

(assert (=> bs!415070 m!2370359))

(assert (=> bs!415070 m!2368569))

(declare-fun m!2370361 () Bool)

(assert (=> bs!415070 m!2370361))

(assert (=> b!1930832 d!589308))

(declare-fun d!589310 () Bool)

(declare-fun e!1234874 () Bool)

(assert (=> d!589310 e!1234874))

(declare-fun res!863797 () Bool)

(assert (=> d!589310 (=> (not res!863797) (not e!1234874))))

(declare-fun lt!740551 () BalanceConc!14478)

(assert (=> d!589310 (= res!863797 (= (list!8890 lt!740551) (Cons!21957 separatorToken!354 Nil!21957)))))

(assert (=> d!589310 (= lt!740551 (singleton!851 separatorToken!354))))

(assert (=> d!589310 (= (singletonSeq!1922 separatorToken!354) lt!740551)))

(declare-fun b!1932026 () Bool)

(assert (=> b!1932026 (= e!1234874 (isBalanced!2264 (c!313976 lt!740551)))))

(assert (= (and d!589310 res!863797) b!1932026))

(declare-fun m!2370363 () Bool)

(assert (=> d!589310 m!2370363))

(declare-fun m!2370365 () Bool)

(assert (=> d!589310 m!2370365))

(declare-fun m!2370367 () Bool)

(assert (=> b!1932026 m!2370367))

(assert (=> b!1930832 d!589310))

(declare-fun d!589312 () Bool)

(declare-fun lt!740552 () Int)

(assert (=> d!589312 (>= lt!740552 0)))

(declare-fun e!1234875 () Int)

(assert (=> d!589312 (= lt!740552 e!1234875)))

(declare-fun c!314323 () Bool)

(assert (=> d!589312 (= c!314323 ((_ is Nil!21955) lt!739998))))

(assert (=> d!589312 (= (size!17131 lt!739998) lt!740552)))

(declare-fun b!1932027 () Bool)

(assert (=> b!1932027 (= e!1234875 0)))

(declare-fun b!1932028 () Bool)

(assert (=> b!1932028 (= e!1234875 (+ 1 (size!17131 (t!180082 lt!739998))))))

(assert (= (and d!589312 c!314323) b!1932027))

(assert (= (and d!589312 (not c!314323)) b!1932028))

(declare-fun m!2370369 () Bool)

(assert (=> b!1932028 m!2370369))

(assert (=> b!1930430 d!589312))

(assert (=> b!1930430 d!589144))

(declare-fun d!589314 () Bool)

(declare-fun lt!740553 () Int)

(assert (=> d!589314 (>= lt!740553 0)))

(declare-fun e!1234876 () Int)

(assert (=> d!589314 (= lt!740553 e!1234876)))

(declare-fun c!314324 () Bool)

(assert (=> d!589314 (= c!314324 ((_ is Nil!21955) (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))

(assert (=> d!589314 (= (size!17131 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) lt!740553)))

(declare-fun b!1932029 () Bool)

(assert (=> b!1932029 (= e!1234876 0)))

(declare-fun b!1932030 () Bool)

(assert (=> b!1932030 (= e!1234876 (+ 1 (size!17131 (t!180082 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(assert (= (and d!589314 c!314324) b!1932029))

(assert (= (and d!589314 (not c!314324)) b!1932030))

(declare-fun m!2370371 () Bool)

(assert (=> b!1932030 m!2370371))

(assert (=> b!1930430 d!589314))

(declare-fun bm!118847 () Bool)

(declare-fun call!118852 () Option!4554)

(assert (=> bm!118847 (= call!118852 (maxPrefixOneRule!1227 thiss!23328 (h!27357 (t!180083 rules!3198)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1932032 () Bool)

(declare-fun res!863799 () Bool)

(declare-fun e!1234878 () Bool)

(assert (=> b!1932032 (=> (not res!863799) (not e!1234878))))

(declare-fun lt!740556 () Option!4554)

(assert (=> b!1932032 (= res!863799 (matchR!2631 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740556)))) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740556))))))))

(declare-fun b!1932033 () Bool)

(assert (=> b!1932033 (= e!1234878 (contains!3975 (t!180083 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740556)))))))

(declare-fun b!1932034 () Bool)

(declare-fun e!1234879 () Option!4554)

(assert (=> b!1932034 (= e!1234879 call!118852)))

(declare-fun b!1932035 () Bool)

(declare-fun res!863798 () Bool)

(assert (=> b!1932035 (=> (not res!863798) (not e!1234878))))

(assert (=> b!1932035 (= res!863798 (= (value!123824 (_1!11756 (get!6918 lt!740556))) (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740556)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740556)))))))))

(declare-fun b!1932036 () Bool)

(declare-fun lt!740558 () Option!4554)

(declare-fun lt!740557 () Option!4554)

(assert (=> b!1932036 (= e!1234879 (ite (and ((_ is None!4553) lt!740558) ((_ is None!4553) lt!740557)) None!4553 (ite ((_ is None!4553) lt!740557) lt!740558 (ite ((_ is None!4553) lt!740558) lt!740557 (ite (>= (size!17128 (_1!11756 (v!26658 lt!740558))) (size!17128 (_1!11756 (v!26658 lt!740557)))) lt!740558 lt!740557)))))))

(assert (=> b!1932036 (= lt!740558 call!118852)))

(assert (=> b!1932036 (= lt!740557 (maxPrefix!1989 thiss!23328 (t!180083 (t!180083 rules!3198)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1932037 () Bool)

(declare-fun res!863804 () Bool)

(assert (=> b!1932037 (=> (not res!863804) (not e!1234878))))

(assert (=> b!1932037 (= res!863804 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740556)))) (_2!11756 (get!6918 lt!740556))) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1932038 () Bool)

(declare-fun res!863801 () Bool)

(assert (=> b!1932038 (=> (not res!863801) (not e!1234878))))

(assert (=> b!1932038 (= res!863801 (= (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740556)))) (originalCharacters!4745 (_1!11756 (get!6918 lt!740556)))))))

(declare-fun b!1932039 () Bool)

(declare-fun res!863802 () Bool)

(assert (=> b!1932039 (=> (not res!863802) (not e!1234878))))

(assert (=> b!1932039 (= res!863802 (< (size!17131 (_2!11756 (get!6918 lt!740556))) (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun d!589316 () Bool)

(declare-fun e!1234877 () Bool)

(assert (=> d!589316 e!1234877))

(declare-fun res!863800 () Bool)

(assert (=> d!589316 (=> res!863800 e!1234877)))

(assert (=> d!589316 (= res!863800 (isEmpty!13537 lt!740556))))

(assert (=> d!589316 (= lt!740556 e!1234879)))

(declare-fun c!314325 () Bool)

(assert (=> d!589316 (= c!314325 (and ((_ is Cons!21956) (t!180083 rules!3198)) ((_ is Nil!21956) (t!180083 (t!180083 rules!3198)))))))

(declare-fun lt!740554 () Unit!36312)

(declare-fun lt!740555 () Unit!36312)

(assert (=> d!589316 (= lt!740554 lt!740555)))

(assert (=> d!589316 (isPrefix!1945 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))

(assert (=> d!589316 (= lt!740555 (lemmaIsPrefixRefl!1263 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(assert (=> d!589316 (rulesValidInductive!1344 thiss!23328 (t!180083 rules!3198))))

(assert (=> d!589316 (= (maxPrefix!1989 thiss!23328 (t!180083 rules!3198) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) lt!740556)))

(declare-fun b!1932031 () Bool)

(assert (=> b!1932031 (= e!1234877 e!1234878)))

(declare-fun res!863803 () Bool)

(assert (=> b!1932031 (=> (not res!863803) (not e!1234878))))

(assert (=> b!1932031 (= res!863803 (isDefined!3846 lt!740556))))

(assert (= (and d!589316 c!314325) b!1932034))

(assert (= (and d!589316 (not c!314325)) b!1932036))

(assert (= (or b!1932034 b!1932036) bm!118847))

(assert (= (and d!589316 (not res!863800)) b!1932031))

(assert (= (and b!1932031 res!863803) b!1932038))

(assert (= (and b!1932038 res!863801) b!1932039))

(assert (= (and b!1932039 res!863802) b!1932037))

(assert (= (and b!1932037 res!863804) b!1932035))

(assert (= (and b!1932035 res!863798) b!1932032))

(assert (= (and b!1932032 res!863799) b!1932033))

(declare-fun m!2370373 () Bool)

(assert (=> b!1932031 m!2370373))

(declare-fun m!2370375 () Bool)

(assert (=> b!1932037 m!2370375))

(declare-fun m!2370377 () Bool)

(assert (=> b!1932037 m!2370377))

(assert (=> b!1932037 m!2370377))

(declare-fun m!2370379 () Bool)

(assert (=> b!1932037 m!2370379))

(assert (=> b!1932037 m!2370379))

(declare-fun m!2370381 () Bool)

(assert (=> b!1932037 m!2370381))

(assert (=> bm!118847 m!2367899))

(declare-fun m!2370383 () Bool)

(assert (=> bm!118847 m!2370383))

(assert (=> b!1932033 m!2370375))

(declare-fun m!2370385 () Bool)

(assert (=> b!1932033 m!2370385))

(assert (=> b!1932038 m!2370375))

(assert (=> b!1932038 m!2370377))

(assert (=> b!1932038 m!2370377))

(assert (=> b!1932038 m!2370379))

(declare-fun m!2370387 () Bool)

(assert (=> d!589316 m!2370387))

(assert (=> d!589316 m!2367899))

(assert (=> d!589316 m!2367899))

(assert (=> d!589316 m!2368379))

(assert (=> d!589316 m!2367899))

(assert (=> d!589316 m!2367899))

(assert (=> d!589316 m!2368381))

(declare-fun m!2370389 () Bool)

(assert (=> d!589316 m!2370389))

(assert (=> b!1932036 m!2367899))

(declare-fun m!2370391 () Bool)

(assert (=> b!1932036 m!2370391))

(assert (=> b!1932032 m!2370375))

(assert (=> b!1932032 m!2370377))

(assert (=> b!1932032 m!2370377))

(assert (=> b!1932032 m!2370379))

(assert (=> b!1932032 m!2370379))

(declare-fun m!2370393 () Bool)

(assert (=> b!1932032 m!2370393))

(assert (=> b!1932035 m!2370375))

(declare-fun m!2370395 () Bool)

(assert (=> b!1932035 m!2370395))

(assert (=> b!1932035 m!2370395))

(declare-fun m!2370397 () Bool)

(assert (=> b!1932035 m!2370397))

(assert (=> b!1932039 m!2370375))

(declare-fun m!2370399 () Bool)

(assert (=> b!1932039 m!2370399))

(assert (=> b!1932039 m!2367899))

(assert (=> b!1932039 m!2368393))

(assert (=> b!1930671 d!589316))

(declare-fun d!589318 () Bool)

(assert (=> d!589318 (= (inv!29039 (tag!4388 (h!27357 (t!180083 rules!3198)))) (= (mod (str.len (value!123823 (tag!4388 (h!27357 (t!180083 rules!3198))))) 2) 0))))

(assert (=> b!1930975 d!589318))

(declare-fun d!589320 () Bool)

(declare-fun res!863805 () Bool)

(declare-fun e!1234880 () Bool)

(assert (=> d!589320 (=> (not res!863805) (not e!1234880))))

(assert (=> d!589320 (= res!863805 (semiInverseModEq!1569 (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198))))))))

(assert (=> d!589320 (= (inv!29043 (transformation!3938 (h!27357 (t!180083 rules!3198)))) e!1234880)))

(declare-fun b!1932040 () Bool)

(assert (=> b!1932040 (= e!1234880 (equivClasses!1496 (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198))))))))

(assert (= (and d!589320 res!863805) b!1932040))

(declare-fun m!2370401 () Bool)

(assert (=> d!589320 m!2370401))

(declare-fun m!2370403 () Bool)

(assert (=> b!1932040 m!2370403))

(assert (=> b!1930975 d!589320))

(assert (=> b!1930731 d!589006))

(declare-fun d!589322 () Bool)

(assert (=> d!589322 (= (list!8887 lt!740103) (list!8889 (c!313974 lt!740103)))))

(declare-fun bs!415071 () Bool)

(assert (= bs!415071 d!589322))

(declare-fun m!2370405 () Bool)

(assert (=> bs!415071 m!2370405))

(assert (=> d!588636 d!589322))

(declare-fun bs!415072 () Bool)

(declare-fun d!589324 () Bool)

(assert (= bs!415072 (and d!589324 d!588640)))

(declare-fun lambda!75321 () Int)

(assert (=> bs!415072 (= lambda!75321 lambda!75289)))

(declare-fun bs!415073 () Bool)

(assert (= bs!415073 (and d!589324 d!589004)))

(assert (=> bs!415073 (= (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 separatorToken!354)))) (= lambda!75321 lambda!75309))))

(declare-fun bs!415074 () Bool)

(assert (= bs!415074 (and d!589324 d!589014)))

(assert (=> bs!415074 (= (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (= lambda!75321 lambda!75310))))

(assert (=> d!589324 true))

(assert (=> d!589324 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (dynLambda!10666 order!13815 lambda!75321))))

(assert (=> d!589324 (= (equivClasses!1496 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) (Forall2!627 lambda!75321))))

(declare-fun bs!415075 () Bool)

(assert (= bs!415075 d!589324))

(declare-fun m!2370407 () Bool)

(assert (=> bs!415075 m!2370407))

(assert (=> b!1930759 d!589324))

(declare-fun d!589326 () Bool)

(assert (=> d!589326 (= (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))) (isBalanced!2267 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))))

(declare-fun bs!415076 () Bool)

(assert (= bs!415076 d!589326))

(declare-fun m!2370409 () Bool)

(assert (=> bs!415076 m!2370409))

(assert (=> tb!118439 d!589326))

(declare-fun d!589328 () Bool)

(assert (=> d!589328 (= (isEmpty!13537 lt!740027) (not ((_ is Some!4553) lt!740027)))))

(assert (=> d!588586 d!589328))

(declare-fun d!589330 () Bool)

(declare-fun e!1234888 () Bool)

(assert (=> d!589330 e!1234888))

(declare-fun res!863814 () Bool)

(assert (=> d!589330 (=> res!863814 e!1234888)))

(declare-fun lt!740561 () Bool)

(assert (=> d!589330 (= res!863814 (not lt!740561))))

(declare-fun e!1234887 () Bool)

(assert (=> d!589330 (= lt!740561 e!1234887)))

(declare-fun res!863817 () Bool)

(assert (=> d!589330 (=> res!863817 e!1234887)))

(assert (=> d!589330 (= res!863817 ((_ is Nil!21955) lt!739936))))

(assert (=> d!589330 (= (isPrefix!1945 lt!739936 lt!739936) lt!740561)))

(declare-fun b!1932050 () Bool)

(declare-fun res!863816 () Bool)

(declare-fun e!1234889 () Bool)

(assert (=> b!1932050 (=> (not res!863816) (not e!1234889))))

(assert (=> b!1932050 (= res!863816 (= (head!4504 lt!739936) (head!4504 lt!739936)))))

(declare-fun b!1932051 () Bool)

(assert (=> b!1932051 (= e!1234889 (isPrefix!1945 (tail!2990 lt!739936) (tail!2990 lt!739936)))))

(declare-fun b!1932049 () Bool)

(assert (=> b!1932049 (= e!1234887 e!1234889)))

(declare-fun res!863815 () Bool)

(assert (=> b!1932049 (=> (not res!863815) (not e!1234889))))

(assert (=> b!1932049 (= res!863815 (not ((_ is Nil!21955) lt!739936)))))

(declare-fun b!1932052 () Bool)

(assert (=> b!1932052 (= e!1234888 (>= (size!17131 lt!739936) (size!17131 lt!739936)))))

(assert (= (and d!589330 (not res!863817)) b!1932049))

(assert (= (and b!1932049 res!863815) b!1932050))

(assert (= (and b!1932050 res!863816) b!1932051))

(assert (= (and d!589330 (not res!863814)) b!1932052))

(assert (=> b!1932050 m!2368499))

(assert (=> b!1932050 m!2368499))

(assert (=> b!1932051 m!2368505))

(assert (=> b!1932051 m!2368505))

(assert (=> b!1932051 m!2368505))

(assert (=> b!1932051 m!2368505))

(declare-fun m!2370411 () Bool)

(assert (=> b!1932051 m!2370411))

(assert (=> b!1932052 m!2368089))

(assert (=> b!1932052 m!2368089))

(assert (=> d!588586 d!589330))

(declare-fun d!589332 () Bool)

(assert (=> d!589332 (isPrefix!1945 lt!739936 lt!739936)))

(declare-fun lt!740564 () Unit!36312)

(declare-fun choose!12004 (List!22037 List!22037) Unit!36312)

(assert (=> d!589332 (= lt!740564 (choose!12004 lt!739936 lt!739936))))

(assert (=> d!589332 (= (lemmaIsPrefixRefl!1263 lt!739936 lt!739936) lt!740564)))

(declare-fun bs!415077 () Bool)

(assert (= bs!415077 d!589332))

(assert (=> bs!415077 m!2368141))

(declare-fun m!2370413 () Bool)

(assert (=> bs!415077 m!2370413))

(assert (=> d!588586 d!589332))

(declare-fun d!589334 () Bool)

(assert (=> d!589334 true))

(declare-fun lt!740567 () Bool)

(declare-fun lambda!75324 () Int)

(declare-fun forall!4644 (List!22038 Int) Bool)

(assert (=> d!589334 (= lt!740567 (forall!4644 rules!3198 lambda!75324))))

(declare-fun e!1234895 () Bool)

(assert (=> d!589334 (= lt!740567 e!1234895)))

(declare-fun res!863823 () Bool)

(assert (=> d!589334 (=> res!863823 e!1234895)))

(assert (=> d!589334 (= res!863823 (not ((_ is Cons!21956) rules!3198)))))

(assert (=> d!589334 (= (rulesValidInductive!1344 thiss!23328 rules!3198) lt!740567)))

(declare-fun b!1932057 () Bool)

(declare-fun e!1234894 () Bool)

(assert (=> b!1932057 (= e!1234895 e!1234894)))

(declare-fun res!863822 () Bool)

(assert (=> b!1932057 (=> (not res!863822) (not e!1234894))))

(declare-fun ruleValid!1197 (LexerInterface!3551 Rule!7676) Bool)

(assert (=> b!1932057 (= res!863822 (ruleValid!1197 thiss!23328 (h!27357 rules!3198)))))

(declare-fun b!1932058 () Bool)

(assert (=> b!1932058 (= e!1234894 (rulesValidInductive!1344 thiss!23328 (t!180083 rules!3198)))))

(assert (= (and d!589334 (not res!863823)) b!1932057))

(assert (= (and b!1932057 res!863822) b!1932058))

(declare-fun m!2370415 () Bool)

(assert (=> d!589334 m!2370415))

(declare-fun m!2370417 () Bool)

(assert (=> b!1932057 m!2370417))

(assert (=> b!1932058 m!2370389))

(assert (=> d!588586 d!589334))

(declare-fun d!589336 () Bool)

(assert (=> d!589336 (= (nullable!1613 (regex!3938 lt!739937)) (nullableFct!364 (regex!3938 lt!739937)))))

(declare-fun bs!415078 () Bool)

(assert (= bs!415078 d!589336))

(declare-fun m!2370419 () Bool)

(assert (=> bs!415078 m!2370419))

(assert (=> b!1930791 d!589336))

(declare-fun d!589338 () Bool)

(assert (=> d!589338 (= (isDefined!3846 lt!740027) (not (isEmpty!13537 lt!740027)))))

(declare-fun bs!415079 () Bool)

(assert (= bs!415079 d!589338))

(assert (=> bs!415079 m!2368139))

(assert (=> b!1930483 d!589338))

(declare-fun d!589340 () Bool)

(declare-fun charsToBigInt!0 (List!22036 Int) Int)

(assert (=> d!589340 (= (inv!15 (value!123824 (h!27358 tokens!598))) (= (charsToBigInt!0 (text!28967 (value!123824 (h!27358 tokens!598))) 0) (value!123819 (value!123824 (h!27358 tokens!598)))))))

(declare-fun bs!415080 () Bool)

(assert (= bs!415080 d!589340))

(declare-fun m!2370421 () Bool)

(assert (=> bs!415080 m!2370421))

(assert (=> b!1930778 d!589340))

(assert (=> b!1930361 d!588902))

(assert (=> b!1930526 d!588950))

(assert (=> b!1930526 d!588952))

(declare-fun b!1932061 () Bool)

(declare-fun e!1234898 () Option!4553)

(declare-fun e!1234897 () Option!4553)

(assert (=> b!1932061 (= e!1234898 e!1234897)))

(declare-fun c!314327 () Bool)

(assert (=> b!1932061 (= c!314327 (and ((_ is Cons!21956) (t!180083 rules!3198)) (not (= (tag!4388 (h!27357 (t!180083 rules!3198))) (tag!4388 (rule!6145 (h!27358 tokens!598)))))))))

(declare-fun d!589342 () Bool)

(declare-fun e!1234896 () Bool)

(assert (=> d!589342 e!1234896))

(declare-fun res!863825 () Bool)

(assert (=> d!589342 (=> res!863825 e!1234896)))

(declare-fun lt!740569 () Option!4553)

(assert (=> d!589342 (= res!863825 (isEmpty!13538 lt!740569))))

(assert (=> d!589342 (= lt!740569 e!1234898)))

(declare-fun c!314326 () Bool)

(assert (=> d!589342 (= c!314326 (and ((_ is Cons!21956) (t!180083 rules!3198)) (= (tag!4388 (h!27357 (t!180083 rules!3198))) (tag!4388 (rule!6145 (h!27358 tokens!598))))))))

(assert (=> d!589342 (rulesInvariant!3158 thiss!23328 (t!180083 rules!3198))))

(assert (=> d!589342 (= (getRuleFromTag!759 thiss!23328 (t!180083 rules!3198) (tag!4388 (rule!6145 (h!27358 tokens!598)))) lt!740569)))

(declare-fun b!1932062 () Bool)

(declare-fun lt!740570 () Unit!36312)

(declare-fun lt!740568 () Unit!36312)

(assert (=> b!1932062 (= lt!740570 lt!740568)))

(assert (=> b!1932062 (rulesInvariant!3158 thiss!23328 (t!180083 (t!180083 rules!3198)))))

(assert (=> b!1932062 (= lt!740568 (lemmaInvariantOnRulesThenOnTail!274 thiss!23328 (h!27357 (t!180083 rules!3198)) (t!180083 (t!180083 rules!3198))))))

(assert (=> b!1932062 (= e!1234897 (getRuleFromTag!759 thiss!23328 (t!180083 (t!180083 rules!3198)) (tag!4388 (rule!6145 (h!27358 tokens!598)))))))

(declare-fun b!1932063 () Bool)

(declare-fun e!1234899 () Bool)

(assert (=> b!1932063 (= e!1234899 (= (tag!4388 (get!6917 lt!740569)) (tag!4388 (rule!6145 (h!27358 tokens!598)))))))

(declare-fun b!1932064 () Bool)

(assert (=> b!1932064 (= e!1234897 None!4552)))

(declare-fun b!1932065 () Bool)

(assert (=> b!1932065 (= e!1234896 e!1234899)))

(declare-fun res!863824 () Bool)

(assert (=> b!1932065 (=> (not res!863824) (not e!1234899))))

(assert (=> b!1932065 (= res!863824 (contains!3975 (t!180083 rules!3198) (get!6917 lt!740569)))))

(declare-fun b!1932066 () Bool)

(assert (=> b!1932066 (= e!1234898 (Some!4552 (h!27357 (t!180083 rules!3198))))))

(assert (= (and d!589342 c!314326) b!1932066))

(assert (= (and d!589342 (not c!314326)) b!1932061))

(assert (= (and b!1932061 c!314327) b!1932062))

(assert (= (and b!1932061 (not c!314327)) b!1932064))

(assert (= (and d!589342 (not res!863825)) b!1932065))

(assert (= (and b!1932065 res!863824) b!1932063))

(declare-fun m!2370423 () Bool)

(assert (=> d!589342 m!2370423))

(assert (=> d!589342 m!2368193))

(assert (=> b!1932062 m!2369335))

(assert (=> b!1932062 m!2369337))

(declare-fun m!2370425 () Bool)

(assert (=> b!1932062 m!2370425))

(declare-fun m!2370427 () Bool)

(assert (=> b!1932063 m!2370427))

(assert (=> b!1932065 m!2370427))

(assert (=> b!1932065 m!2370427))

(declare-fun m!2370429 () Bool)

(assert (=> b!1932065 m!2370429))

(assert (=> b!1930526 d!589342))

(declare-fun lt!740571 () BalanceConc!14476)

(declare-fun d!589344 () Bool)

(assert (=> d!589344 (= (list!8887 lt!740571) (originalCharacters!4745 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598))))))))

(assert (=> d!589344 (= lt!740571 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598))))))) (value!123824 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))))

(assert (=> d!589344 (= (charsOf!2478 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598))))) lt!740571)))

(declare-fun b_lambda!64197 () Bool)

(assert (=> (not b_lambda!64197) (not d!589344)))

(declare-fun tb!118713 () Bool)

(declare-fun t!180396 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) t!180396) tb!118713))

(declare-fun e!1234900 () Bool)

(declare-fun tp!551335 () Bool)

(declare-fun b!1932067 () Bool)

(assert (=> b!1932067 (= e!1234900 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598))))))) (value!123824 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) tp!551335))))

(declare-fun result!143358 () Bool)

(assert (=> tb!118713 (= result!143358 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598))))))) (value!123824 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598))))))) e!1234900))))

(assert (= tb!118713 b!1932067))

(declare-fun m!2370431 () Bool)

(assert (=> b!1932067 m!2370431))

(declare-fun m!2370433 () Bool)

(assert (=> tb!118713 m!2370433))

(assert (=> d!589344 t!180396))

(declare-fun b_and!151993 () Bool)

(assert (= b_and!151911 (and (=> t!180396 result!143358) b_and!151993)))

(declare-fun t!180398 () Bool)

(declare-fun tb!118715 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) t!180398) tb!118715))

(declare-fun result!143360 () Bool)

(assert (= result!143360 result!143358))

(assert (=> d!589344 t!180398))

(declare-fun b_and!151995 () Bool)

(assert (= b_and!151909 (and (=> t!180398 result!143360) b_and!151995)))

(declare-fun tb!118717 () Bool)

(declare-fun t!180400 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) t!180400) tb!118717))

(declare-fun result!143362 () Bool)

(assert (= result!143362 result!143358))

(assert (=> d!589344 t!180400))

(declare-fun b_and!151997 () Bool)

(assert (= b_and!151915 (and (=> t!180400 result!143362) b_and!151997)))

(declare-fun tb!118719 () Bool)

(declare-fun t!180402 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) t!180402) tb!118719))

(declare-fun result!143364 () Bool)

(assert (= result!143364 result!143358))

(assert (=> d!589344 t!180402))

(declare-fun b_and!151999 () Bool)

(assert (= b_and!151917 (and (=> t!180402 result!143364) b_and!151999)))

(declare-fun t!180404 () Bool)

(declare-fun tb!118721 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) t!180404) tb!118721))

(declare-fun result!143366 () Bool)

(assert (= result!143366 result!143358))

(assert (=> d!589344 t!180404))

(declare-fun b_and!152001 () Bool)

(assert (= b_and!151913 (and (=> t!180404 result!143366) b_and!152001)))

(declare-fun m!2370435 () Bool)

(assert (=> d!589344 m!2370435))

(declare-fun m!2370437 () Bool)

(assert (=> d!589344 m!2370437))

(assert (=> bm!118765 d!589344))

(declare-fun bm!118848 () Bool)

(declare-fun call!118853 () Option!4554)

(assert (=> bm!118848 (= call!118853 (maxPrefixOneRule!1227 thiss!23328 (h!27357 (t!180083 rules!3198)) lt!739936))))

(declare-fun b!1932069 () Bool)

(declare-fun res!863827 () Bool)

(declare-fun e!1234902 () Bool)

(assert (=> b!1932069 (=> (not res!863827) (not e!1234902))))

(declare-fun lt!740574 () Option!4554)

(assert (=> b!1932069 (= res!863827 (matchR!2631 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740574)))) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740574))))))))

(declare-fun b!1932070 () Bool)

(assert (=> b!1932070 (= e!1234902 (contains!3975 (t!180083 rules!3198) (rule!6145 (_1!11756 (get!6918 lt!740574)))))))

(declare-fun b!1932071 () Bool)

(declare-fun e!1234903 () Option!4554)

(assert (=> b!1932071 (= e!1234903 call!118853)))

(declare-fun b!1932072 () Bool)

(declare-fun res!863826 () Bool)

(assert (=> b!1932072 (=> (not res!863826) (not e!1234902))))

(assert (=> b!1932072 (= res!863826 (= (value!123824 (_1!11756 (get!6918 lt!740574))) (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740574)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740574)))))))))

(declare-fun b!1932073 () Bool)

(declare-fun lt!740576 () Option!4554)

(declare-fun lt!740575 () Option!4554)

(assert (=> b!1932073 (= e!1234903 (ite (and ((_ is None!4553) lt!740576) ((_ is None!4553) lt!740575)) None!4553 (ite ((_ is None!4553) lt!740575) lt!740576 (ite ((_ is None!4553) lt!740576) lt!740575 (ite (>= (size!17128 (_1!11756 (v!26658 lt!740576))) (size!17128 (_1!11756 (v!26658 lt!740575)))) lt!740576 lt!740575)))))))

(assert (=> b!1932073 (= lt!740576 call!118853)))

(assert (=> b!1932073 (= lt!740575 (maxPrefix!1989 thiss!23328 (t!180083 (t!180083 rules!3198)) lt!739936))))

(declare-fun b!1932074 () Bool)

(declare-fun res!863832 () Bool)

(assert (=> b!1932074 (=> (not res!863832) (not e!1234902))))

(assert (=> b!1932074 (= res!863832 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740574)))) (_2!11756 (get!6918 lt!740574))) lt!739936))))

(declare-fun b!1932075 () Bool)

(declare-fun res!863829 () Bool)

(assert (=> b!1932075 (=> (not res!863829) (not e!1234902))))

(assert (=> b!1932075 (= res!863829 (= (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740574)))) (originalCharacters!4745 (_1!11756 (get!6918 lt!740574)))))))

(declare-fun b!1932076 () Bool)

(declare-fun res!863830 () Bool)

(assert (=> b!1932076 (=> (not res!863830) (not e!1234902))))

(assert (=> b!1932076 (= res!863830 (< (size!17131 (_2!11756 (get!6918 lt!740574))) (size!17131 lt!739936)))))

(declare-fun d!589346 () Bool)

(declare-fun e!1234901 () Bool)

(assert (=> d!589346 e!1234901))

(declare-fun res!863828 () Bool)

(assert (=> d!589346 (=> res!863828 e!1234901)))

(assert (=> d!589346 (= res!863828 (isEmpty!13537 lt!740574))))

(assert (=> d!589346 (= lt!740574 e!1234903)))

(declare-fun c!314328 () Bool)

(assert (=> d!589346 (= c!314328 (and ((_ is Cons!21956) (t!180083 rules!3198)) ((_ is Nil!21956) (t!180083 (t!180083 rules!3198)))))))

(declare-fun lt!740572 () Unit!36312)

(declare-fun lt!740573 () Unit!36312)

(assert (=> d!589346 (= lt!740572 lt!740573)))

(assert (=> d!589346 (isPrefix!1945 lt!739936 lt!739936)))

(assert (=> d!589346 (= lt!740573 (lemmaIsPrefixRefl!1263 lt!739936 lt!739936))))

(assert (=> d!589346 (rulesValidInductive!1344 thiss!23328 (t!180083 rules!3198))))

(assert (=> d!589346 (= (maxPrefix!1989 thiss!23328 (t!180083 rules!3198) lt!739936) lt!740574)))

(declare-fun b!1932068 () Bool)

(assert (=> b!1932068 (= e!1234901 e!1234902)))

(declare-fun res!863831 () Bool)

(assert (=> b!1932068 (=> (not res!863831) (not e!1234902))))

(assert (=> b!1932068 (= res!863831 (isDefined!3846 lt!740574))))

(assert (= (and d!589346 c!314328) b!1932071))

(assert (= (and d!589346 (not c!314328)) b!1932073))

(assert (= (or b!1932071 b!1932073) bm!118848))

(assert (= (and d!589346 (not res!863828)) b!1932068))

(assert (= (and b!1932068 res!863831) b!1932075))

(assert (= (and b!1932075 res!863829) b!1932076))

(assert (= (and b!1932076 res!863830) b!1932074))

(assert (= (and b!1932074 res!863832) b!1932072))

(assert (= (and b!1932072 res!863826) b!1932069))

(assert (= (and b!1932069 res!863827) b!1932070))

(declare-fun m!2370439 () Bool)

(assert (=> b!1932068 m!2370439))

(declare-fun m!2370441 () Bool)

(assert (=> b!1932074 m!2370441))

(declare-fun m!2370443 () Bool)

(assert (=> b!1932074 m!2370443))

(assert (=> b!1932074 m!2370443))

(declare-fun m!2370445 () Bool)

(assert (=> b!1932074 m!2370445))

(assert (=> b!1932074 m!2370445))

(declare-fun m!2370447 () Bool)

(assert (=> b!1932074 m!2370447))

(declare-fun m!2370449 () Bool)

(assert (=> bm!118848 m!2370449))

(assert (=> b!1932070 m!2370441))

(declare-fun m!2370451 () Bool)

(assert (=> b!1932070 m!2370451))

(assert (=> b!1932075 m!2370441))

(assert (=> b!1932075 m!2370443))

(assert (=> b!1932075 m!2370443))

(assert (=> b!1932075 m!2370445))

(declare-fun m!2370453 () Bool)

(assert (=> d!589346 m!2370453))

(assert (=> d!589346 m!2368141))

(assert (=> d!589346 m!2368143))

(assert (=> d!589346 m!2370389))

(declare-fun m!2370455 () Bool)

(assert (=> b!1932073 m!2370455))

(assert (=> b!1932069 m!2370441))

(assert (=> b!1932069 m!2370443))

(assert (=> b!1932069 m!2370443))

(assert (=> b!1932069 m!2370445))

(assert (=> b!1932069 m!2370445))

(declare-fun m!2370457 () Bool)

(assert (=> b!1932069 m!2370457))

(assert (=> b!1932072 m!2370441))

(declare-fun m!2370459 () Bool)

(assert (=> b!1932072 m!2370459))

(assert (=> b!1932072 m!2370459))

(declare-fun m!2370461 () Bool)

(assert (=> b!1932072 m!2370461))

(assert (=> b!1932076 m!2370441))

(declare-fun m!2370463 () Bool)

(assert (=> b!1932076 m!2370463))

(assert (=> b!1932076 m!2368089))

(assert (=> b!1930488 d!589346))

(declare-fun d!589348 () Bool)

(assert (=> d!589348 (= (isEmpty!13541 lt!739936) ((_ is Nil!21955) lt!739936))))

(assert (=> d!588680 d!589348))

(declare-fun b!1932095 () Bool)

(declare-fun e!1234924 () Bool)

(declare-fun e!1234918 () Bool)

(assert (=> b!1932095 (= e!1234924 e!1234918)))

(declare-fun c!314333 () Bool)

(assert (=> b!1932095 (= c!314333 ((_ is Union!5363) (regex!3938 lt!739937)))))

(declare-fun call!118860 () Bool)

(declare-fun c!314334 () Bool)

(declare-fun bm!118855 () Bool)

(assert (=> bm!118855 (= call!118860 (validRegex!2139 (ite c!314334 (reg!5692 (regex!3938 lt!739937)) (ite c!314333 (regOne!11239 (regex!3938 lt!739937)) (regOne!11238 (regex!3938 lt!739937))))))))

(declare-fun b!1932096 () Bool)

(declare-fun e!1234923 () Bool)

(declare-fun e!1234919 () Bool)

(assert (=> b!1932096 (= e!1234923 e!1234919)))

(declare-fun res!863844 () Bool)

(assert (=> b!1932096 (=> (not res!863844) (not e!1234919))))

(declare-fun call!118861 () Bool)

(assert (=> b!1932096 (= res!863844 call!118861)))

(declare-fun b!1932097 () Bool)

(declare-fun e!1234920 () Bool)

(assert (=> b!1932097 (= e!1234920 call!118860)))

(declare-fun b!1932098 () Bool)

(declare-fun e!1234922 () Bool)

(declare-fun call!118862 () Bool)

(assert (=> b!1932098 (= e!1234922 call!118862)))

(declare-fun b!1932099 () Bool)

(declare-fun e!1234921 () Bool)

(assert (=> b!1932099 (= e!1234921 e!1234924)))

(assert (=> b!1932099 (= c!314334 ((_ is Star!5363) (regex!3938 lt!739937)))))

(declare-fun b!1932101 () Bool)

(declare-fun res!863846 () Bool)

(assert (=> b!1932101 (=> res!863846 e!1234923)))

(assert (=> b!1932101 (= res!863846 (not ((_ is Concat!9438) (regex!3938 lt!739937))))))

(assert (=> b!1932101 (= e!1234918 e!1234923)))

(declare-fun b!1932102 () Bool)

(assert (=> b!1932102 (= e!1234919 call!118862)))

(declare-fun bm!118856 () Bool)

(assert (=> bm!118856 (= call!118862 (validRegex!2139 (ite c!314333 (regTwo!11239 (regex!3938 lt!739937)) (regTwo!11238 (regex!3938 lt!739937)))))))

(declare-fun b!1932100 () Bool)

(assert (=> b!1932100 (= e!1234924 e!1234920)))

(declare-fun res!863847 () Bool)

(assert (=> b!1932100 (= res!863847 (not (nullable!1613 (reg!5692 (regex!3938 lt!739937)))))))

(assert (=> b!1932100 (=> (not res!863847) (not e!1234920))))

(declare-fun d!589350 () Bool)

(declare-fun res!863843 () Bool)

(assert (=> d!589350 (=> res!863843 e!1234921)))

(assert (=> d!589350 (= res!863843 ((_ is ElementMatch!5363) (regex!3938 lt!739937)))))

(assert (=> d!589350 (= (validRegex!2139 (regex!3938 lt!739937)) e!1234921)))

(declare-fun b!1932103 () Bool)

(declare-fun res!863845 () Bool)

(assert (=> b!1932103 (=> (not res!863845) (not e!1234922))))

(assert (=> b!1932103 (= res!863845 call!118861)))

(assert (=> b!1932103 (= e!1234918 e!1234922)))

(declare-fun bm!118857 () Bool)

(assert (=> bm!118857 (= call!118861 call!118860)))

(assert (= (and d!589350 (not res!863843)) b!1932099))

(assert (= (and b!1932099 c!314334) b!1932100))

(assert (= (and b!1932099 (not c!314334)) b!1932095))

(assert (= (and b!1932100 res!863847) b!1932097))

(assert (= (and b!1932095 c!314333) b!1932103))

(assert (= (and b!1932095 (not c!314333)) b!1932101))

(assert (= (and b!1932103 res!863845) b!1932098))

(assert (= (and b!1932101 (not res!863846)) b!1932096))

(assert (= (and b!1932096 res!863844) b!1932102))

(assert (= (or b!1932103 b!1932096) bm!118857))

(assert (= (or b!1932098 b!1932102) bm!118856))

(assert (= (or b!1932097 bm!118857) bm!118855))

(declare-fun m!2370465 () Bool)

(assert (=> bm!118855 m!2370465))

(declare-fun m!2370467 () Bool)

(assert (=> bm!118856 m!2370467))

(declare-fun m!2370469 () Bool)

(assert (=> b!1932100 m!2370469))

(assert (=> d!588680 d!589350))

(declare-fun b!1932104 () Bool)

(declare-fun e!1234926 () Bool)

(declare-fun e!1234927 () Bool)

(assert (=> b!1932104 (= e!1234926 e!1234927)))

(declare-fun c!314335 () Bool)

(assert (=> b!1932104 (= c!314335 ((_ is IntegerValue!12223) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(declare-fun b!1932105 () Bool)

(declare-fun res!863848 () Bool)

(declare-fun e!1234925 () Bool)

(assert (=> b!1932105 (=> res!863848 e!1234925)))

(assert (=> b!1932105 (= res!863848 (not ((_ is IntegerValue!12224) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))))))))

(assert (=> b!1932105 (= e!1234927 e!1234925)))

(declare-fun b!1932106 () Bool)

(assert (=> b!1932106 (= e!1234927 (inv!17 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(declare-fun d!589352 () Bool)

(declare-fun c!314336 () Bool)

(assert (=> d!589352 (= c!314336 ((_ is IntegerValue!12222) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(assert (=> d!589352 (= (inv!21 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))) e!1234926)))

(declare-fun b!1932107 () Bool)

(assert (=> b!1932107 (= e!1234926 (inv!16 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(declare-fun b!1932108 () Bool)

(assert (=> b!1932108 (= e!1234925 (inv!15 (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(assert (= (and d!589352 c!314336) b!1932107))

(assert (= (and d!589352 (not c!314336)) b!1932104))

(assert (= (and b!1932104 c!314335) b!1932106))

(assert (= (and b!1932104 (not c!314335)) b!1932105))

(assert (= (and b!1932105 (not res!863848)) b!1932108))

(declare-fun m!2370471 () Bool)

(assert (=> b!1932106 m!2370471))

(declare-fun m!2370473 () Bool)

(assert (=> b!1932107 m!2370473))

(declare-fun m!2370475 () Bool)

(assert (=> b!1932108 m!2370475))

(assert (=> tb!118469 d!589352))

(declare-fun b!1932109 () Bool)

(declare-fun e!1234928 () Bool)

(declare-fun lt!740577 () Bool)

(declare-fun call!118863 () Bool)

(assert (=> b!1932109 (= e!1234928 (= lt!740577 call!118863))))

(declare-fun bm!118858 () Bool)

(assert (=> bm!118858 (= call!118863 (isEmpty!13541 (tail!2990 lt!739943)))))

(declare-fun b!1932110 () Bool)

(declare-fun e!1234931 () Bool)

(assert (=> b!1932110 (= e!1234931 (= (head!4504 (tail!2990 lt!739943)) (c!313975 (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943)))))))

(declare-fun b!1932111 () Bool)

(declare-fun e!1234932 () Bool)

(assert (=> b!1932111 (= e!1234932 (not lt!740577))))

(declare-fun b!1932112 () Bool)

(declare-fun e!1234930 () Bool)

(assert (=> b!1932112 (= e!1234930 (not (= (head!4504 (tail!2990 lt!739943)) (c!313975 (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943))))))))

(declare-fun b!1932113 () Bool)

(declare-fun res!863855 () Bool)

(declare-fun e!1234934 () Bool)

(assert (=> b!1932113 (=> res!863855 e!1234934)))

(assert (=> b!1932113 (= res!863855 (not ((_ is ElementMatch!5363) (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943)))))))

(assert (=> b!1932113 (= e!1234932 e!1234934)))

(declare-fun d!589354 () Bool)

(assert (=> d!589354 e!1234928))

(declare-fun c!314338 () Bool)

(assert (=> d!589354 (= c!314338 ((_ is EmptyExpr!5363) (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943))))))

(declare-fun e!1234933 () Bool)

(assert (=> d!589354 (= lt!740577 e!1234933)))

(declare-fun c!314339 () Bool)

(assert (=> d!589354 (= c!314339 (isEmpty!13541 (tail!2990 lt!739943)))))

(assert (=> d!589354 (validRegex!2139 (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943)))))

(assert (=> d!589354 (= (matchR!2631 (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943)) (tail!2990 lt!739943)) lt!740577)))

(declare-fun b!1932114 () Bool)

(assert (=> b!1932114 (= e!1234933 (matchR!2631 (derivativeStep!1372 (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943)) (head!4504 (tail!2990 lt!739943))) (tail!2990 (tail!2990 lt!739943))))))

(declare-fun b!1932115 () Bool)

(declare-fun res!863851 () Bool)

(assert (=> b!1932115 (=> (not res!863851) (not e!1234931))))

(assert (=> b!1932115 (= res!863851 (not call!118863))))

(declare-fun b!1932116 () Bool)

(declare-fun e!1234929 () Bool)

(assert (=> b!1932116 (= e!1234934 e!1234929)))

(declare-fun res!863852 () Bool)

(assert (=> b!1932116 (=> (not res!863852) (not e!1234929))))

(assert (=> b!1932116 (= res!863852 (not lt!740577))))

(declare-fun b!1932117 () Bool)

(assert (=> b!1932117 (= e!1234929 e!1234930)))

(declare-fun res!863853 () Bool)

(assert (=> b!1932117 (=> res!863853 e!1234930)))

(assert (=> b!1932117 (= res!863853 call!118863)))

(declare-fun b!1932118 () Bool)

(declare-fun res!863854 () Bool)

(assert (=> b!1932118 (=> res!863854 e!1234934)))

(assert (=> b!1932118 (= res!863854 e!1234931)))

(declare-fun res!863856 () Bool)

(assert (=> b!1932118 (=> (not res!863856) (not e!1234931))))

(assert (=> b!1932118 (= res!863856 lt!740577)))

(declare-fun b!1932119 () Bool)

(declare-fun res!863850 () Bool)

(assert (=> b!1932119 (=> res!863850 e!1234930)))

(assert (=> b!1932119 (= res!863850 (not (isEmpty!13541 (tail!2990 (tail!2990 lt!739943)))))))

(declare-fun b!1932120 () Bool)

(declare-fun res!863849 () Bool)

(assert (=> b!1932120 (=> (not res!863849) (not e!1234931))))

(assert (=> b!1932120 (= res!863849 (isEmpty!13541 (tail!2990 (tail!2990 lt!739943))))))

(declare-fun b!1932121 () Bool)

(assert (=> b!1932121 (= e!1234933 (nullable!1613 (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943))))))

(declare-fun b!1932122 () Bool)

(assert (=> b!1932122 (= e!1234928 e!1234932)))

(declare-fun c!314337 () Bool)

(assert (=> b!1932122 (= c!314337 ((_ is EmptyLang!5363) (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943))))))

(assert (= (and d!589354 c!314339) b!1932121))

(assert (= (and d!589354 (not c!314339)) b!1932114))

(assert (= (and d!589354 c!314338) b!1932109))

(assert (= (and d!589354 (not c!314338)) b!1932122))

(assert (= (and b!1932122 c!314337) b!1932111))

(assert (= (and b!1932122 (not c!314337)) b!1932113))

(assert (= (and b!1932113 (not res!863855)) b!1932118))

(assert (= (and b!1932118 res!863856) b!1932115))

(assert (= (and b!1932115 res!863851) b!1932120))

(assert (= (and b!1932120 res!863849) b!1932110))

(assert (= (and b!1932118 (not res!863854)) b!1932116))

(assert (= (and b!1932116 res!863852) b!1932117))

(assert (= (and b!1932117 (not res!863853)) b!1932119))

(assert (= (and b!1932119 (not res!863850)) b!1932112))

(assert (= (or b!1932109 b!1932115 b!1932117) bm!118858))

(assert (=> b!1932112 m!2368457))

(declare-fun m!2370477 () Bool)

(assert (=> b!1932112 m!2370477))

(assert (=> bm!118858 m!2368457))

(assert (=> bm!118858 m!2368459))

(assert (=> b!1932110 m!2368457))

(assert (=> b!1932110 m!2370477))

(assert (=> d!589354 m!2368457))

(assert (=> d!589354 m!2368459))

(assert (=> d!589354 m!2368463))

(declare-fun m!2370479 () Bool)

(assert (=> d!589354 m!2370479))

(assert (=> b!1932119 m!2368457))

(declare-fun m!2370481 () Bool)

(assert (=> b!1932119 m!2370481))

(assert (=> b!1932119 m!2370481))

(declare-fun m!2370483 () Bool)

(assert (=> b!1932119 m!2370483))

(assert (=> b!1932121 m!2368463))

(declare-fun m!2370485 () Bool)

(assert (=> b!1932121 m!2370485))

(assert (=> b!1932114 m!2368457))

(assert (=> b!1932114 m!2370477))

(assert (=> b!1932114 m!2368463))

(assert (=> b!1932114 m!2370477))

(declare-fun m!2370487 () Bool)

(assert (=> b!1932114 m!2370487))

(assert (=> b!1932114 m!2368457))

(assert (=> b!1932114 m!2370481))

(assert (=> b!1932114 m!2370487))

(assert (=> b!1932114 m!2370481))

(declare-fun m!2370489 () Bool)

(assert (=> b!1932114 m!2370489))

(assert (=> b!1932120 m!2368457))

(assert (=> b!1932120 m!2370481))

(assert (=> b!1932120 m!2370481))

(assert (=> b!1932120 m!2370483))

(assert (=> b!1930735 d!589354))

(declare-fun b!1932124 () Bool)

(declare-fun e!1234937 () Regex!5363)

(declare-fun call!118866 () Regex!5363)

(assert (=> b!1932124 (= e!1234937 (Concat!9438 call!118866 (regex!3938 lt!739932)))))

(declare-fun bm!118859 () Bool)

(declare-fun c!314340 () Bool)

(declare-fun call!118867 () Regex!5363)

(declare-fun c!314344 () Bool)

(assert (=> bm!118859 (= call!118867 (derivativeStep!1372 (ite c!314340 (regTwo!11239 (regex!3938 lt!739932)) (ite c!314344 (regTwo!11238 (regex!3938 lt!739932)) (regOne!11238 (regex!3938 lt!739932)))) (head!4504 lt!739943)))))

(declare-fun b!1932125 () Bool)

(assert (=> b!1932125 (= c!314340 ((_ is Union!5363) (regex!3938 lt!739932)))))

(declare-fun e!1234939 () Regex!5363)

(declare-fun e!1234935 () Regex!5363)

(assert (=> b!1932125 (= e!1234939 e!1234935)))

(declare-fun b!1932126 () Bool)

(declare-fun e!1234936 () Regex!5363)

(assert (=> b!1932126 (= e!1234936 EmptyLang!5363)))

(declare-fun b!1932127 () Bool)

(assert (=> b!1932127 (= e!1234936 e!1234939)))

(declare-fun c!314341 () Bool)

(assert (=> b!1932127 (= c!314341 ((_ is ElementMatch!5363) (regex!3938 lt!739932)))))

(declare-fun bm!118860 () Bool)

(declare-fun call!118864 () Regex!5363)

(assert (=> bm!118860 (= call!118864 call!118867)))

(declare-fun b!1932128 () Bool)

(declare-fun e!1234938 () Regex!5363)

(assert (=> b!1932128 (= e!1234938 (Union!5363 (Concat!9438 call!118866 (regTwo!11238 (regex!3938 lt!739932))) call!118864))))

(declare-fun call!118865 () Regex!5363)

(declare-fun c!314343 () Bool)

(declare-fun bm!118861 () Bool)

(assert (=> bm!118861 (= call!118865 (derivativeStep!1372 (ite c!314340 (regOne!11239 (regex!3938 lt!739932)) (ite c!314343 (reg!5692 (regex!3938 lt!739932)) (regOne!11238 (regex!3938 lt!739932)))) (head!4504 lt!739943)))))

(declare-fun d!589356 () Bool)

(declare-fun lt!740578 () Regex!5363)

(assert (=> d!589356 (validRegex!2139 lt!740578)))

(assert (=> d!589356 (= lt!740578 e!1234936)))

(declare-fun c!314342 () Bool)

(assert (=> d!589356 (= c!314342 (or ((_ is EmptyExpr!5363) (regex!3938 lt!739932)) ((_ is EmptyLang!5363) (regex!3938 lt!739932))))))

(assert (=> d!589356 (validRegex!2139 (regex!3938 lt!739932))))

(assert (=> d!589356 (= (derivativeStep!1372 (regex!3938 lt!739932) (head!4504 lt!739943)) lt!740578)))

(declare-fun b!1932123 () Bool)

(assert (=> b!1932123 (= c!314344 (nullable!1613 (regOne!11238 (regex!3938 lt!739932))))))

(assert (=> b!1932123 (= e!1234937 e!1234938)))

(declare-fun b!1932129 () Bool)

(assert (=> b!1932129 (= e!1234935 (Union!5363 call!118865 call!118867))))

(declare-fun bm!118862 () Bool)

(assert (=> bm!118862 (= call!118866 call!118865)))

(declare-fun b!1932130 () Bool)

(assert (=> b!1932130 (= e!1234935 e!1234937)))

(assert (=> b!1932130 (= c!314343 ((_ is Star!5363) (regex!3938 lt!739932)))))

(declare-fun b!1932131 () Bool)

(assert (=> b!1932131 (= e!1234939 (ite (= (head!4504 lt!739943) (c!313975 (regex!3938 lt!739932))) EmptyExpr!5363 EmptyLang!5363))))

(declare-fun b!1932132 () Bool)

(assert (=> b!1932132 (= e!1234938 (Union!5363 (Concat!9438 call!118864 (regTwo!11238 (regex!3938 lt!739932))) EmptyLang!5363))))

(assert (= (and d!589356 c!314342) b!1932126))

(assert (= (and d!589356 (not c!314342)) b!1932127))

(assert (= (and b!1932127 c!314341) b!1932131))

(assert (= (and b!1932127 (not c!314341)) b!1932125))

(assert (= (and b!1932125 c!314340) b!1932129))

(assert (= (and b!1932125 (not c!314340)) b!1932130))

(assert (= (and b!1932130 c!314343) b!1932124))

(assert (= (and b!1932130 (not c!314343)) b!1932123))

(assert (= (and b!1932123 c!314344) b!1932128))

(assert (= (and b!1932123 (not c!314344)) b!1932132))

(assert (= (or b!1932128 b!1932132) bm!118860))

(assert (= (or b!1932124 b!1932128) bm!118862))

(assert (= (or b!1932129 bm!118862) bm!118861))

(assert (= (or b!1932129 bm!118860) bm!118859))

(assert (=> bm!118859 m!2368451))

(declare-fun m!2370491 () Bool)

(assert (=> bm!118859 m!2370491))

(assert (=> bm!118861 m!2368451))

(declare-fun m!2370493 () Bool)

(assert (=> bm!118861 m!2370493))

(declare-fun m!2370495 () Bool)

(assert (=> d!589356 m!2370495))

(assert (=> d!589356 m!2368455))

(declare-fun m!2370497 () Bool)

(assert (=> b!1932123 m!2370497))

(assert (=> b!1930735 d!589356))

(assert (=> b!1930735 d!589006))

(assert (=> b!1930735 d!589018))

(declare-fun d!589358 () Bool)

(declare-fun res!863857 () Bool)

(declare-fun e!1234940 () Bool)

(assert (=> d!589358 (=> res!863857 e!1234940)))

(assert (=> d!589358 (= res!863857 (not ((_ is Cons!21956) (t!180083 rules!3198))))))

(assert (=> d!589358 (= (sepAndNonSepRulesDisjointChars!1036 rules!3198 (t!180083 rules!3198)) e!1234940)))

(declare-fun b!1932133 () Bool)

(declare-fun e!1234941 () Bool)

(assert (=> b!1932133 (= e!1234940 e!1234941)))

(declare-fun res!863858 () Bool)

(assert (=> b!1932133 (=> (not res!863858) (not e!1234941))))

(assert (=> b!1932133 (= res!863858 (ruleDisjointCharsFromAllFromOtherType!453 (h!27357 (t!180083 rules!3198)) rules!3198))))

(declare-fun b!1932134 () Bool)

(assert (=> b!1932134 (= e!1234941 (sepAndNonSepRulesDisjointChars!1036 rules!3198 (t!180083 (t!180083 rules!3198))))))

(assert (= (and d!589358 (not res!863857)) b!1932133))

(assert (= (and b!1932133 res!863858) b!1932134))

(declare-fun m!2370499 () Bool)

(assert (=> b!1932133 m!2370499))

(declare-fun m!2370501 () Bool)

(assert (=> b!1932134 m!2370501))

(assert (=> b!1930771 d!589358))

(declare-fun d!589360 () Bool)

(declare-fun res!863863 () Bool)

(declare-fun e!1234946 () Bool)

(assert (=> d!589360 (=> res!863863 e!1234946)))

(assert (=> d!589360 (= res!863863 ((_ is Nil!21956) rules!3198))))

(assert (=> d!589360 (= (noDuplicateTag!1454 thiss!23328 rules!3198 Nil!21959) e!1234946)))

(declare-fun b!1932139 () Bool)

(declare-fun e!1234947 () Bool)

(assert (=> b!1932139 (= e!1234946 e!1234947)))

(declare-fun res!863864 () Bool)

(assert (=> b!1932139 (=> (not res!863864) (not e!1234947))))

(declare-fun contains!3979 (List!22041 String!25488) Bool)

(assert (=> b!1932139 (= res!863864 (not (contains!3979 Nil!21959 (tag!4388 (h!27357 rules!3198)))))))

(declare-fun b!1932140 () Bool)

(assert (=> b!1932140 (= e!1234947 (noDuplicateTag!1454 thiss!23328 (t!180083 rules!3198) (Cons!21959 (tag!4388 (h!27357 rules!3198)) Nil!21959)))))

(assert (= (and d!589360 (not res!863863)) b!1932139))

(assert (= (and b!1932139 res!863864) b!1932140))

(declare-fun m!2370503 () Bool)

(assert (=> b!1932139 m!2370503))

(declare-fun m!2370505 () Bool)

(assert (=> b!1932140 m!2370505))

(assert (=> b!1930698 d!589360))

(declare-fun d!589362 () Bool)

(assert (=> d!589362 (= (list!8890 lt!739973) (list!8893 (c!313976 lt!739973)))))

(declare-fun bs!415081 () Bool)

(assert (= bs!415081 d!589362))

(declare-fun m!2370507 () Bool)

(assert (=> bs!415081 m!2370507))

(assert (=> d!588566 d!589362))

(declare-fun d!589364 () Bool)

(declare-fun e!1234950 () Bool)

(assert (=> d!589364 e!1234950))

(declare-fun res!863867 () Bool)

(assert (=> d!589364 (=> (not res!863867) (not e!1234950))))

(declare-fun lt!740581 () BalanceConc!14478)

(assert (=> d!589364 (= res!863867 (= (list!8890 lt!740581) (Cons!21957 (h!27358 tokens!598) Nil!21957)))))

(declare-fun choose!12005 (Token!7428) BalanceConc!14478)

(assert (=> d!589364 (= lt!740581 (choose!12005 (h!27358 tokens!598)))))

(assert (=> d!589364 (= (singleton!851 (h!27358 tokens!598)) lt!740581)))

(declare-fun b!1932143 () Bool)

(assert (=> b!1932143 (= e!1234950 (isBalanced!2264 (c!313976 lt!740581)))))

(assert (= (and d!589364 res!863867) b!1932143))

(declare-fun m!2370509 () Bool)

(assert (=> d!589364 m!2370509))

(declare-fun m!2370511 () Bool)

(assert (=> d!589364 m!2370511))

(declare-fun m!2370513 () Bool)

(assert (=> b!1932143 m!2370513))

(assert (=> d!588566 d!589364))

(declare-fun d!589366 () Bool)

(declare-fun lt!740582 () Bool)

(declare-fun e!1234952 () Bool)

(assert (=> d!589366 (= lt!740582 e!1234952)))

(declare-fun res!863868 () Bool)

(assert (=> d!589366 (=> (not res!863868) (not e!1234952))))

(assert (=> d!589366 (= res!863868 (= (list!8890 (_1!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 (h!27358 tokens!598)))))) (list!8890 (singletonSeq!1922 (h!27358 tokens!598)))))))

(declare-fun e!1234951 () Bool)

(assert (=> d!589366 (= lt!740582 e!1234951)))

(declare-fun res!863870 () Bool)

(assert (=> d!589366 (=> (not res!863870) (not e!1234951))))

(declare-fun lt!740583 () tuple2!20578)

(assert (=> d!589366 (= res!863870 (= (size!17130 (_1!11758 lt!740583)) 1))))

(assert (=> d!589366 (= lt!740583 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 (h!27358 tokens!598)))))))

(assert (=> d!589366 (not (isEmpty!13534 rules!3198))))

(assert (=> d!589366 (= (rulesProduceIndividualToken!1723 thiss!23328 rules!3198 (h!27358 tokens!598)) lt!740582)))

(declare-fun b!1932144 () Bool)

(declare-fun res!863869 () Bool)

(assert (=> b!1932144 (=> (not res!863869) (not e!1234951))))

(assert (=> b!1932144 (= res!863869 (= (apply!5707 (_1!11758 lt!740583) 0) (h!27358 tokens!598)))))

(declare-fun b!1932145 () Bool)

(assert (=> b!1932145 (= e!1234951 (isEmpty!13542 (_2!11758 lt!740583)))))

(declare-fun b!1932146 () Bool)

(assert (=> b!1932146 (= e!1234952 (isEmpty!13542 (_2!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 (h!27358 tokens!598)))))))))

(assert (= (and d!589366 res!863870) b!1932144))

(assert (= (and b!1932144 res!863869) b!1932145))

(assert (= (and d!589366 res!863868) b!1932146))

(assert (=> d!589366 m!2367943))

(declare-fun m!2370515 () Bool)

(assert (=> d!589366 m!2370515))

(declare-fun m!2370517 () Bool)

(assert (=> d!589366 m!2370517))

(assert (=> d!589366 m!2367943))

(assert (=> d!589366 m!2367921))

(declare-fun m!2370519 () Bool)

(assert (=> d!589366 m!2370519))

(assert (=> d!589366 m!2370515))

(declare-fun m!2370521 () Bool)

(assert (=> d!589366 m!2370521))

(assert (=> d!589366 m!2367943))

(declare-fun m!2370523 () Bool)

(assert (=> d!589366 m!2370523))

(declare-fun m!2370525 () Bool)

(assert (=> b!1932144 m!2370525))

(declare-fun m!2370527 () Bool)

(assert (=> b!1932145 m!2370527))

(assert (=> b!1932146 m!2367943))

(assert (=> b!1932146 m!2367943))

(assert (=> b!1932146 m!2370515))

(assert (=> b!1932146 m!2370515))

(assert (=> b!1932146 m!2370521))

(declare-fun m!2370529 () Bool)

(assert (=> b!1932146 m!2370529))

(assert (=> b!1930947 d!589366))

(assert (=> d!588660 d!589112))

(declare-fun b!1932147 () Bool)

(declare-fun e!1234959 () Bool)

(declare-fun e!1234953 () Bool)

(assert (=> b!1932147 (= e!1234959 e!1234953)))

(declare-fun c!314345 () Bool)

(assert (=> b!1932147 (= c!314345 ((_ is Union!5363) (regex!3938 lt!739932)))))

(declare-fun call!118868 () Bool)

(declare-fun bm!118863 () Bool)

(declare-fun c!314346 () Bool)

(assert (=> bm!118863 (= call!118868 (validRegex!2139 (ite c!314346 (reg!5692 (regex!3938 lt!739932)) (ite c!314345 (regOne!11239 (regex!3938 lt!739932)) (regOne!11238 (regex!3938 lt!739932))))))))

(declare-fun b!1932148 () Bool)

(declare-fun e!1234958 () Bool)

(declare-fun e!1234954 () Bool)

(assert (=> b!1932148 (= e!1234958 e!1234954)))

(declare-fun res!863872 () Bool)

(assert (=> b!1932148 (=> (not res!863872) (not e!1234954))))

(declare-fun call!118869 () Bool)

(assert (=> b!1932148 (= res!863872 call!118869)))

(declare-fun b!1932149 () Bool)

(declare-fun e!1234955 () Bool)

(assert (=> b!1932149 (= e!1234955 call!118868)))

(declare-fun b!1932150 () Bool)

(declare-fun e!1234957 () Bool)

(declare-fun call!118870 () Bool)

(assert (=> b!1932150 (= e!1234957 call!118870)))

(declare-fun b!1932151 () Bool)

(declare-fun e!1234956 () Bool)

(assert (=> b!1932151 (= e!1234956 e!1234959)))

(assert (=> b!1932151 (= c!314346 ((_ is Star!5363) (regex!3938 lt!739932)))))

(declare-fun b!1932153 () Bool)

(declare-fun res!863874 () Bool)

(assert (=> b!1932153 (=> res!863874 e!1234958)))

(assert (=> b!1932153 (= res!863874 (not ((_ is Concat!9438) (regex!3938 lt!739932))))))

(assert (=> b!1932153 (= e!1234953 e!1234958)))

(declare-fun b!1932154 () Bool)

(assert (=> b!1932154 (= e!1234954 call!118870)))

(declare-fun bm!118864 () Bool)

(assert (=> bm!118864 (= call!118870 (validRegex!2139 (ite c!314345 (regTwo!11239 (regex!3938 lt!739932)) (regTwo!11238 (regex!3938 lt!739932)))))))

(declare-fun b!1932152 () Bool)

(assert (=> b!1932152 (= e!1234959 e!1234955)))

(declare-fun res!863875 () Bool)

(assert (=> b!1932152 (= res!863875 (not (nullable!1613 (reg!5692 (regex!3938 lt!739932)))))))

(assert (=> b!1932152 (=> (not res!863875) (not e!1234955))))

(declare-fun d!589368 () Bool)

(declare-fun res!863871 () Bool)

(assert (=> d!589368 (=> res!863871 e!1234956)))

(assert (=> d!589368 (= res!863871 ((_ is ElementMatch!5363) (regex!3938 lt!739932)))))

(assert (=> d!589368 (= (validRegex!2139 (regex!3938 lt!739932)) e!1234956)))

(declare-fun b!1932155 () Bool)

(declare-fun res!863873 () Bool)

(assert (=> b!1932155 (=> (not res!863873) (not e!1234957))))

(assert (=> b!1932155 (= res!863873 call!118869)))

(assert (=> b!1932155 (= e!1234953 e!1234957)))

(declare-fun bm!118865 () Bool)

(assert (=> bm!118865 (= call!118869 call!118868)))

(assert (= (and d!589368 (not res!863871)) b!1932151))

(assert (= (and b!1932151 c!314346) b!1932152))

(assert (= (and b!1932151 (not c!314346)) b!1932147))

(assert (= (and b!1932152 res!863875) b!1932149))

(assert (= (and b!1932147 c!314345) b!1932155))

(assert (= (and b!1932147 (not c!314345)) b!1932153))

(assert (= (and b!1932155 res!863873) b!1932150))

(assert (= (and b!1932153 (not res!863874)) b!1932148))

(assert (= (and b!1932148 res!863872) b!1932154))

(assert (= (or b!1932155 b!1932148) bm!118865))

(assert (= (or b!1932150 b!1932154) bm!118864))

(assert (= (or b!1932149 bm!118865) bm!118863))

(declare-fun m!2370531 () Bool)

(assert (=> bm!118863 m!2370531))

(declare-fun m!2370533 () Bool)

(assert (=> bm!118864 m!2370533))

(declare-fun m!2370535 () Bool)

(assert (=> b!1932152 m!2370535))

(assert (=> d!588660 d!589368))

(declare-fun d!589370 () Bool)

(assert (=> d!589370 (= (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))) (isBalanced!2267 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))))))

(declare-fun bs!415082 () Bool)

(assert (= bs!415082 d!589370))

(declare-fun m!2370537 () Bool)

(assert (=> bs!415082 m!2370537))

(assert (=> tb!118463 d!589370))

(declare-fun bs!415083 () Bool)

(declare-fun d!589372 () Bool)

(assert (= bs!415083 (and d!589372 d!589334)))

(declare-fun lambda!75327 () Int)

(assert (=> bs!415083 (= lambda!75327 lambda!75324)))

(assert (=> d!589372 true))

(declare-fun lt!740586 () Bool)

(assert (=> d!589372 (= lt!740586 (rulesValidInductive!1344 thiss!23328 rules!3198))))

(assert (=> d!589372 (= lt!740586 (forall!4644 rules!3198 lambda!75327))))

(assert (=> d!589372 (= (rulesValid!1456 thiss!23328 rules!3198) lt!740586)))

(declare-fun bs!415084 () Bool)

(assert (= bs!415084 d!589372))

(assert (=> bs!415084 m!2368145))

(declare-fun m!2370539 () Bool)

(assert (=> bs!415084 m!2370539))

(assert (=> d!588654 d!589372))

(declare-fun bm!118866 () Bool)

(declare-fun call!118871 () Option!4554)

(assert (=> bm!118866 (= call!118871 (maxPrefixOneRule!1227 thiss!23328 (h!27357 rules!3198) (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092)))))

(declare-fun b!1932157 () Bool)

(declare-fun res!863877 () Bool)

(declare-fun e!1234961 () Bool)

(assert (=> b!1932157 (=> (not res!863877) (not e!1234961))))

(declare-fun lt!740589 () Option!4554)

(assert (=> b!1932157 (= res!863877 (matchR!2631 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740589)))) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740589))))))))

(declare-fun b!1932158 () Bool)

(assert (=> b!1932158 (= e!1234961 (contains!3975 rules!3198 (rule!6145 (_1!11756 (get!6918 lt!740589)))))))

(declare-fun b!1932159 () Bool)

(declare-fun e!1234962 () Option!4554)

(assert (=> b!1932159 (= e!1234962 call!118871)))

(declare-fun b!1932160 () Bool)

(declare-fun res!863876 () Bool)

(assert (=> b!1932160 (=> (not res!863876) (not e!1234961))))

(assert (=> b!1932160 (= res!863876 (= (value!123824 (_1!11756 (get!6918 lt!740589))) (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740589)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740589)))))))))

(declare-fun b!1932161 () Bool)

(declare-fun lt!740591 () Option!4554)

(declare-fun lt!740590 () Option!4554)

(assert (=> b!1932161 (= e!1234962 (ite (and ((_ is None!4553) lt!740591) ((_ is None!4553) lt!740590)) None!4553 (ite ((_ is None!4553) lt!740590) lt!740591 (ite ((_ is None!4553) lt!740591) lt!740590 (ite (>= (size!17128 (_1!11756 (v!26658 lt!740591))) (size!17128 (_1!11756 (v!26658 lt!740590)))) lt!740591 lt!740590)))))))

(assert (=> b!1932161 (= lt!740591 call!118871)))

(assert (=> b!1932161 (= lt!740590 (maxPrefix!1989 thiss!23328 (t!180083 rules!3198) (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092)))))

(declare-fun b!1932162 () Bool)

(declare-fun res!863882 () Bool)

(assert (=> b!1932162 (=> (not res!863882) (not e!1234961))))

(assert (=> b!1932162 (= res!863882 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740589)))) (_2!11756 (get!6918 lt!740589))) (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092)))))

(declare-fun b!1932163 () Bool)

(declare-fun res!863879 () Bool)

(assert (=> b!1932163 (=> (not res!863879) (not e!1234961))))

(assert (=> b!1932163 (= res!863879 (= (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740589)))) (originalCharacters!4745 (_1!11756 (get!6918 lt!740589)))))))

(declare-fun b!1932164 () Bool)

(declare-fun res!863880 () Bool)

(assert (=> b!1932164 (=> (not res!863880) (not e!1234961))))

(assert (=> b!1932164 (= res!863880 (< (size!17131 (_2!11756 (get!6918 lt!740589))) (size!17131 (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092))))))

(declare-fun d!589374 () Bool)

(declare-fun e!1234960 () Bool)

(assert (=> d!589374 e!1234960))

(declare-fun res!863878 () Bool)

(assert (=> d!589374 (=> res!863878 e!1234960)))

(assert (=> d!589374 (= res!863878 (isEmpty!13537 lt!740589))))

(assert (=> d!589374 (= lt!740589 e!1234962)))

(declare-fun c!314347 () Bool)

(assert (=> d!589374 (= c!314347 (and ((_ is Cons!21956) rules!3198) ((_ is Nil!21956) (t!180083 rules!3198))))))

(declare-fun lt!740587 () Unit!36312)

(declare-fun lt!740588 () Unit!36312)

(assert (=> d!589374 (= lt!740587 lt!740588)))

(assert (=> d!589374 (isPrefix!1945 (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092) (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092))))

(assert (=> d!589374 (= lt!740588 (lemmaIsPrefixRefl!1263 (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092) (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092)))))

(assert (=> d!589374 (rulesValidInductive!1344 thiss!23328 rules!3198)))

(assert (=> d!589374 (= (maxPrefix!1989 thiss!23328 rules!3198 (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092)) lt!740589)))

(declare-fun b!1932156 () Bool)

(assert (=> b!1932156 (= e!1234960 e!1234961)))

(declare-fun res!863881 () Bool)

(assert (=> b!1932156 (=> (not res!863881) (not e!1234961))))

(assert (=> b!1932156 (= res!863881 (isDefined!3846 lt!740589))))

(assert (= (and d!589374 c!314347) b!1932159))

(assert (= (and d!589374 (not c!314347)) b!1932161))

(assert (= (or b!1932159 b!1932161) bm!118866))

(assert (= (and d!589374 (not res!863878)) b!1932156))

(assert (= (and b!1932156 res!863881) b!1932163))

(assert (= (and b!1932163 res!863879) b!1932164))

(assert (= (and b!1932164 res!863880) b!1932162))

(assert (= (and b!1932162 res!863882) b!1932160))

(assert (= (and b!1932160 res!863876) b!1932157))

(assert (= (and b!1932157 res!863877) b!1932158))

(declare-fun m!2370541 () Bool)

(assert (=> b!1932156 m!2370541))

(declare-fun m!2370543 () Bool)

(assert (=> b!1932162 m!2370543))

(declare-fun m!2370545 () Bool)

(assert (=> b!1932162 m!2370545))

(assert (=> b!1932162 m!2370545))

(declare-fun m!2370547 () Bool)

(assert (=> b!1932162 m!2370547))

(assert (=> b!1932162 m!2370547))

(declare-fun m!2370549 () Bool)

(assert (=> b!1932162 m!2370549))

(assert (=> bm!118866 m!2368341))

(declare-fun m!2370551 () Bool)

(assert (=> bm!118866 m!2370551))

(assert (=> b!1932158 m!2370543))

(declare-fun m!2370553 () Bool)

(assert (=> b!1932158 m!2370553))

(assert (=> b!1932163 m!2370543))

(assert (=> b!1932163 m!2370545))

(assert (=> b!1932163 m!2370545))

(assert (=> b!1932163 m!2370547))

(declare-fun m!2370555 () Bool)

(assert (=> d!589374 m!2370555))

(assert (=> d!589374 m!2368341))

(assert (=> d!589374 m!2368341))

(declare-fun m!2370557 () Bool)

(assert (=> d!589374 m!2370557))

(assert (=> d!589374 m!2368341))

(assert (=> d!589374 m!2368341))

(declare-fun m!2370559 () Bool)

(assert (=> d!589374 m!2370559))

(assert (=> d!589374 m!2368145))

(assert (=> b!1932161 m!2368341))

(declare-fun m!2370561 () Bool)

(assert (=> b!1932161 m!2370561))

(assert (=> b!1932157 m!2370543))

(assert (=> b!1932157 m!2370545))

(assert (=> b!1932157 m!2370545))

(assert (=> b!1932157 m!2370547))

(assert (=> b!1932157 m!2370547))

(declare-fun m!2370563 () Bool)

(assert (=> b!1932157 m!2370563))

(assert (=> b!1932160 m!2370543))

(declare-fun m!2370565 () Bool)

(assert (=> b!1932160 m!2370565))

(assert (=> b!1932160 m!2370565))

(declare-fun m!2370567 () Bool)

(assert (=> b!1932160 m!2370567))

(assert (=> b!1932164 m!2370543))

(declare-fun m!2370569 () Bool)

(assert (=> b!1932164 m!2370569))

(assert (=> b!1932164 m!2368341))

(declare-fun m!2370571 () Bool)

(assert (=> b!1932164 m!2370571))

(assert (=> b!1930652 d!589374))

(declare-fun d!589376 () Bool)

(declare-fun e!1234964 () Bool)

(assert (=> d!589376 e!1234964))

(declare-fun res!863884 () Bool)

(assert (=> d!589376 (=> (not res!863884) (not e!1234964))))

(declare-fun lt!740592 () List!22037)

(assert (=> d!589376 (= res!863884 (= (content!3179 lt!740592) ((_ map or) (content!3179 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598))))) (content!3179 lt!740092))))))

(declare-fun e!1234963 () List!22037)

(assert (=> d!589376 (= lt!740592 e!1234963)))

(declare-fun c!314348 () Bool)

(assert (=> d!589376 (= c!314348 ((_ is Nil!21955) (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598))))))))

(assert (=> d!589376 (= (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) lt!740092) lt!740592)))

(declare-fun b!1932168 () Bool)

(assert (=> b!1932168 (= e!1234964 (or (not (= lt!740092 Nil!21955)) (= lt!740592 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))))))))

(declare-fun b!1932166 () Bool)

(assert (=> b!1932166 (= e!1234963 (Cons!21955 (h!27356 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598))))) (++!5893 (t!180082 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598))))) lt!740092)))))

(declare-fun b!1932167 () Bool)

(declare-fun res!863883 () Bool)

(assert (=> b!1932167 (=> (not res!863883) (not e!1234964))))

(assert (=> b!1932167 (= res!863883 (= (size!17131 lt!740592) (+ (size!17131 (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598))))) (size!17131 lt!740092))))))

(declare-fun b!1932165 () Bool)

(assert (=> b!1932165 (= e!1234963 lt!740092)))

(assert (= (and d!589376 c!314348) b!1932165))

(assert (= (and d!589376 (not c!314348)) b!1932166))

(assert (= (and d!589376 res!863884) b!1932167))

(assert (= (and b!1932167 res!863883) b!1932168))

(declare-fun m!2370573 () Bool)

(assert (=> d!589376 m!2370573))

(assert (=> d!589376 m!2368335))

(declare-fun m!2370575 () Bool)

(assert (=> d!589376 m!2370575))

(assert (=> d!589376 m!2369201))

(declare-fun m!2370577 () Bool)

(assert (=> b!1932166 m!2370577))

(declare-fun m!2370579 () Bool)

(assert (=> b!1932167 m!2370579))

(assert (=> b!1932167 m!2368335))

(declare-fun m!2370581 () Bool)

(assert (=> b!1932167 m!2370581))

(assert (=> b!1932167 m!2369209))

(assert (=> b!1930652 d!589376))

(declare-fun d!589378 () Bool)

(declare-fun lt!740593 () BalanceConc!14476)

(assert (=> d!589378 (= (list!8887 lt!740593) (originalCharacters!4745 (h!27358 (t!180084 tokens!598))))))

(assert (=> d!589378 (= lt!740593 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (value!123824 (h!27358 (t!180084 tokens!598)))))))

(assert (=> d!589378 (= (charsOf!2478 (h!27358 (t!180084 tokens!598))) lt!740593)))

(declare-fun b_lambda!64199 () Bool)

(assert (=> (not b_lambda!64199) (not d!589378)))

(declare-fun t!180407 () Bool)

(declare-fun tb!118723 () Bool)

(assert (=> (and b!1930324 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) t!180407) tb!118723))

(declare-fun b!1932169 () Bool)

(declare-fun e!1234965 () Bool)

(declare-fun tp!551336 () Bool)

(assert (=> b!1932169 (= e!1234965 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (value!123824 (h!27358 (t!180084 tokens!598)))))) tp!551336))))

(declare-fun result!143368 () Bool)

(assert (=> tb!118723 (= result!143368 (and (inv!29047 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (value!123824 (h!27358 (t!180084 tokens!598))))) e!1234965))))

(assert (= tb!118723 b!1932169))

(declare-fun m!2370583 () Bool)

(assert (=> b!1932169 m!2370583))

(declare-fun m!2370585 () Bool)

(assert (=> tb!118723 m!2370585))

(assert (=> d!589378 t!180407))

(declare-fun b_and!152003 () Bool)

(assert (= b_and!151993 (and (=> t!180407 result!143368) b_and!152003)))

(declare-fun t!180409 () Bool)

(declare-fun tb!118725 () Bool)

(assert (=> (and b!1930999 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) t!180409) tb!118725))

(declare-fun result!143370 () Bool)

(assert (= result!143370 result!143368))

(assert (=> d!589378 t!180409))

(declare-fun b_and!152005 () Bool)

(assert (= b_and!151995 (and (=> t!180409 result!143370) b_and!152005)))

(declare-fun t!180411 () Bool)

(declare-fun tb!118727 () Bool)

(assert (=> (and b!1930332 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) t!180411) tb!118727))

(declare-fun result!143372 () Bool)

(assert (= result!143372 result!143368))

(assert (=> d!589378 t!180411))

(declare-fun b_and!152007 () Bool)

(assert (= b_and!151997 (and (=> t!180411 result!143372) b_and!152007)))

(declare-fun tb!118729 () Bool)

(declare-fun t!180413 () Bool)

(assert (=> (and b!1930976 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) t!180413) tb!118729))

(declare-fun result!143374 () Bool)

(assert (= result!143374 result!143368))

(assert (=> d!589378 t!180413))

(declare-fun b_and!152009 () Bool)

(assert (= b_and!151999 (and (=> t!180413 result!143374) b_and!152009)))

(declare-fun tb!118731 () Bool)

(declare-fun t!180415 () Bool)

(assert (=> (and b!1930322 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) t!180415) tb!118731))

(declare-fun result!143376 () Bool)

(assert (= result!143376 result!143368))

(assert (=> d!589378 t!180415))

(declare-fun b_and!152011 () Bool)

(assert (= b_and!152001 (and (=> t!180415 result!143376) b_and!152011)))

(declare-fun m!2370587 () Bool)

(assert (=> d!589378 m!2370587))

(declare-fun m!2370589 () Bool)

(assert (=> d!589378 m!2370589))

(assert (=> b!1930652 d!589378))

(declare-fun d!589380 () Bool)

(assert (=> d!589380 (dynLambda!10668 lambda!75284 (h!27358 (t!180084 tokens!598)))))

(declare-fun lt!740596 () Unit!36312)

(declare-fun choose!12008 (List!22039 Int Token!7428) Unit!36312)

(assert (=> d!589380 (= lt!740596 (choose!12008 (t!180084 tokens!598) lambda!75284 (h!27358 (t!180084 tokens!598))))))

(declare-fun e!1234968 () Bool)

(assert (=> d!589380 e!1234968))

(declare-fun res!863887 () Bool)

(assert (=> d!589380 (=> (not res!863887) (not e!1234968))))

(assert (=> d!589380 (= res!863887 (forall!4642 (t!180084 tokens!598) lambda!75284))))

(assert (=> d!589380 (= (forallContained!716 (t!180084 tokens!598) lambda!75284 (h!27358 (t!180084 tokens!598))) lt!740596)))

(declare-fun b!1932172 () Bool)

(assert (=> b!1932172 (= e!1234968 (contains!3978 (t!180084 tokens!598) (h!27358 (t!180084 tokens!598))))))

(assert (= (and d!589380 res!863887) b!1932172))

(declare-fun b_lambda!64201 () Bool)

(assert (=> (not b_lambda!64201) (not d!589380)))

(declare-fun m!2370591 () Bool)

(assert (=> d!589380 m!2370591))

(declare-fun m!2370593 () Bool)

(assert (=> d!589380 m!2370593))

(declare-fun m!2370595 () Bool)

(assert (=> d!589380 m!2370595))

(declare-fun m!2370597 () Bool)

(assert (=> b!1932172 m!2370597))

(assert (=> b!1930652 d!589380))

(declare-fun bs!415085 () Bool)

(declare-fun b!1932180 () Bool)

(assert (= bs!415085 (and b!1932180 b!1930339)))

(declare-fun lambda!75328 () Int)

(assert (=> bs!415085 (not (= lambda!75328 lambda!75269))))

(declare-fun bs!415086 () Bool)

(assert (= bs!415086 (and b!1932180 b!1930652)))

(assert (=> bs!415086 (= lambda!75328 lambda!75284)))

(declare-fun bs!415087 () Bool)

(assert (= bs!415087 (and b!1932180 d!588704)))

(assert (=> bs!415087 (= lambda!75328 lambda!75293)))

(declare-fun b!1932183 () Bool)

(declare-fun e!1234975 () Bool)

(assert (=> b!1932183 (= e!1234975 true)))

(declare-fun b!1932182 () Bool)

(declare-fun e!1234974 () Bool)

(assert (=> b!1932182 (= e!1234974 e!1234975)))

(declare-fun b!1932181 () Bool)

(declare-fun e!1234973 () Bool)

(assert (=> b!1932181 (= e!1234973 e!1234974)))

(assert (=> b!1932180 e!1234973))

(assert (= b!1932182 b!1932183))

(assert (= b!1932181 b!1932182))

(assert (= (and b!1932180 ((_ is Cons!21956) rules!3198)) b!1932181))

(assert (=> b!1932183 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75328))))

(assert (=> b!1932183 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75328))))

(assert (=> b!1932180 true))

(declare-fun d!589382 () Bool)

(declare-fun c!314352 () Bool)

(assert (=> d!589382 (= c!314352 ((_ is Cons!21957) (t!180084 (t!180084 tokens!598))))))

(declare-fun e!1234972 () List!22037)

(assert (=> d!589382 (= (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 (t!180084 tokens!598)) separatorToken!354) e!1234972)))

(declare-fun b!1932173 () Bool)

(declare-fun e!1234969 () List!22037)

(declare-fun call!118872 () List!22037)

(declare-fun lt!740599 () List!22037)

(assert (=> b!1932173 (= e!1234969 (++!5893 call!118872 lt!740599))))

(declare-fun bm!118867 () Bool)

(declare-fun call!118876 () List!22037)

(declare-fun call!118873 () List!22037)

(assert (=> bm!118867 (= call!118876 call!118873)))

(declare-fun bm!118868 () Bool)

(declare-fun call!118875 () BalanceConc!14476)

(declare-fun call!118874 () BalanceConc!14476)

(assert (=> bm!118868 (= call!118875 call!118874)))

(declare-fun b!1932174 () Bool)

(declare-fun e!1234971 () List!22037)

(assert (=> b!1932174 (= e!1234971 (list!8887 (charsOf!2478 (h!27358 (t!180084 (t!180084 tokens!598))))))))

(declare-fun b!1932175 () Bool)

(declare-fun c!314351 () Bool)

(declare-fun lt!740597 () Option!4554)

(assert (=> b!1932175 (= c!314351 (and ((_ is Some!4553) lt!740597) (not (= (_1!11756 (v!26658 lt!740597)) (h!27358 (t!180084 (t!180084 tokens!598)))))))))

(declare-fun e!1234970 () List!22037)

(assert (=> b!1932175 (= e!1234970 e!1234969)))

(declare-fun b!1932176 () Bool)

(assert (=> b!1932176 (= e!1234972 Nil!21955)))

(declare-fun c!314349 () Bool)

(declare-fun bm!118869 () Bool)

(assert (=> bm!118869 (= call!118874 (charsOf!2478 (ite c!314349 (h!27358 (t!180084 (t!180084 tokens!598))) (ite c!314351 separatorToken!354 (h!27358 (t!180084 (t!180084 tokens!598)))))))))

(declare-fun b!1932177 () Bool)

(assert (=> b!1932177 (= e!1234971 call!118873)))

(declare-fun b!1932178 () Bool)

(assert (=> b!1932178 (= e!1234970 call!118872)))

(declare-fun b!1932179 () Bool)

(assert (=> b!1932179 (= e!1234969 Nil!21955)))

(assert (=> b!1932179 (= (print!1521 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 (t!180084 tokens!598))))) (printTailRec!1027 thiss!23328 (singletonSeq!1922 (h!27358 (t!180084 (t!180084 tokens!598)))) 0 (BalanceConc!14477 Empty!7330)))))

(declare-fun lt!740601 () Unit!36312)

(declare-fun Unit!36324 () Unit!36312)

(assert (=> b!1932179 (= lt!740601 Unit!36324)))

(declare-fun lt!740598 () Unit!36312)

(assert (=> b!1932179 (= lt!740598 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!747 thiss!23328 rules!3198 call!118876 lt!740599))))

(assert (=> b!1932179 false))

(declare-fun lt!740602 () Unit!36312)

(declare-fun Unit!36325 () Unit!36312)

(assert (=> b!1932179 (= lt!740602 Unit!36325)))

(assert (=> b!1932180 (= e!1234972 e!1234970)))

(declare-fun lt!740600 () Unit!36312)

(assert (=> b!1932180 (= lt!740600 (forallContained!716 (t!180084 (t!180084 tokens!598)) lambda!75328 (h!27358 (t!180084 (t!180084 tokens!598)))))))

(assert (=> b!1932180 (= lt!740599 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 (t!180084 (t!180084 tokens!598))) separatorToken!354))))

(assert (=> b!1932180 (= lt!740597 (maxPrefix!1989 thiss!23328 rules!3198 (++!5893 (list!8887 (charsOf!2478 (h!27358 (t!180084 (t!180084 tokens!598))))) lt!740599)))))

(assert (=> b!1932180 (= c!314349 (and ((_ is Some!4553) lt!740597) (= (_1!11756 (v!26658 lt!740597)) (h!27358 (t!180084 (t!180084 tokens!598))))))))

(declare-fun bm!118870 () Bool)

(declare-fun c!314350 () Bool)

(assert (=> bm!118870 (= c!314350 c!314349)))

(assert (=> bm!118870 (= call!118872 (++!5893 e!1234971 (ite c!314349 lt!740599 call!118876)))))

(declare-fun bm!118871 () Bool)

(assert (=> bm!118871 (= call!118873 (list!8887 (ite c!314349 call!118874 call!118875)))))

(assert (= (and d!589382 c!314352) b!1932180))

(assert (= (and d!589382 (not c!314352)) b!1932176))

(assert (= (and b!1932180 c!314349) b!1932178))

(assert (= (and b!1932180 (not c!314349)) b!1932175))

(assert (= (and b!1932175 c!314351) b!1932173))

(assert (= (and b!1932175 (not c!314351)) b!1932179))

(assert (= (or b!1932173 b!1932179) bm!118868))

(assert (= (or b!1932173 b!1932179) bm!118867))

(assert (= (or b!1932178 bm!118868) bm!118869))

(assert (= (or b!1932178 bm!118867) bm!118871))

(assert (= (or b!1932178 b!1932173) bm!118870))

(assert (= (and bm!118870 c!314350) b!1932177))

(assert (= (and bm!118870 (not c!314350)) b!1932174))

(declare-fun m!2370599 () Bool)

(assert (=> b!1932174 m!2370599))

(assert (=> b!1932174 m!2370599))

(declare-fun m!2370601 () Bool)

(assert (=> b!1932174 m!2370601))

(declare-fun m!2370603 () Bool)

(assert (=> bm!118870 m!2370603))

(declare-fun m!2370605 () Bool)

(assert (=> bm!118869 m!2370605))

(assert (=> b!1932180 m!2370601))

(declare-fun m!2370607 () Bool)

(assert (=> b!1932180 m!2370607))

(assert (=> b!1932180 m!2370607))

(declare-fun m!2370609 () Bool)

(assert (=> b!1932180 m!2370609))

(declare-fun m!2370611 () Bool)

(assert (=> b!1932180 m!2370611))

(assert (=> b!1932180 m!2370599))

(assert (=> b!1932180 m!2370601))

(assert (=> b!1932180 m!2370599))

(declare-fun m!2370613 () Bool)

(assert (=> b!1932180 m!2370613))

(declare-fun m!2370615 () Bool)

(assert (=> b!1932179 m!2370615))

(assert (=> b!1932179 m!2370615))

(declare-fun m!2370617 () Bool)

(assert (=> b!1932179 m!2370617))

(assert (=> b!1932179 m!2370615))

(declare-fun m!2370619 () Bool)

(assert (=> b!1932179 m!2370619))

(declare-fun m!2370621 () Bool)

(assert (=> b!1932179 m!2370621))

(declare-fun m!2370623 () Bool)

(assert (=> b!1932173 m!2370623))

(declare-fun m!2370625 () Bool)

(assert (=> bm!118871 m!2370625))

(assert (=> b!1930652 d!589382))

(declare-fun d!589384 () Bool)

(assert (=> d!589384 (= (list!8887 (charsOf!2478 (h!27358 (t!180084 tokens!598)))) (list!8889 (c!313974 (charsOf!2478 (h!27358 (t!180084 tokens!598))))))))

(declare-fun bs!415088 () Bool)

(assert (= bs!415088 d!589384))

(declare-fun m!2370627 () Bool)

(assert (=> bs!415088 m!2370627))

(assert (=> b!1930652 d!589384))

(assert (=> b!1930782 d!588996))

(declare-fun d!589386 () Bool)

(assert (=> d!589386 (= (inv!15 (value!123824 separatorToken!354)) (= (charsToBigInt!0 (text!28967 (value!123824 separatorToken!354)) 0) (value!123819 (value!123824 separatorToken!354))))))

(declare-fun bs!415089 () Bool)

(assert (= bs!415089 d!589386))

(declare-fun m!2370629 () Bool)

(assert (=> bs!415089 m!2370629))

(assert (=> b!1930758 d!589386))

(assert (=> b!1930790 d!589220))

(assert (=> b!1930790 d!589026))

(declare-fun d!589388 () Bool)

(assert (=> d!589388 (= (inv!16 (value!123824 (h!27358 tokens!598))) (= (charsToInt!0 (text!28965 (value!123824 (h!27358 tokens!598)))) (value!123815 (value!123824 (h!27358 tokens!598)))))))

(declare-fun bs!415090 () Bool)

(assert (= bs!415090 d!589388))

(declare-fun m!2370631 () Bool)

(assert (=> bs!415090 m!2370631))

(assert (=> b!1930777 d!589388))

(declare-fun e!1234984 () Bool)

(declare-fun b!1932202 () Bool)

(declare-datatypes ((tuple2!20586 0))(
  ( (tuple2!20587 (_1!11762 List!22037) (_2!11762 List!22037)) )
))
(declare-fun findLongestMatchInner!537 (Regex!5363 List!22037 Int List!22037 List!22037 Int) tuple2!20586)

(assert (=> b!1932202 (= e!1234984 (matchR!2631 (regex!3938 (h!27357 rules!3198)) (_1!11762 (findLongestMatchInner!537 (regex!3938 (h!27357 rules!3198)) Nil!21955 (size!17131 Nil!21955) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))))

(declare-fun b!1932203 () Bool)

(declare-fun e!1234987 () Bool)

(declare-fun e!1234986 () Bool)

(assert (=> b!1932203 (= e!1234987 e!1234986)))

(declare-fun res!863905 () Bool)

(assert (=> b!1932203 (=> (not res!863905) (not e!1234986))))

(declare-fun lt!740614 () Option!4554)

(assert (=> b!1932203 (= res!863905 (matchR!2631 (regex!3938 (h!27357 rules!3198)) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740614))))))))

(declare-fun b!1932204 () Bool)

(declare-fun e!1234985 () Option!4554)

(assert (=> b!1932204 (= e!1234985 None!4553)))

(declare-fun b!1932205 () Bool)

(assert (=> b!1932205 (= e!1234986 (= (size!17128 (_1!11756 (get!6918 lt!740614))) (size!17131 (originalCharacters!4745 (_1!11756 (get!6918 lt!740614))))))))

(declare-fun b!1932206 () Bool)

(declare-fun res!863906 () Bool)

(assert (=> b!1932206 (=> (not res!863906) (not e!1234986))))

(assert (=> b!1932206 (= res!863906 (< (size!17131 (_2!11756 (get!6918 lt!740614))) (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun d!589390 () Bool)

(assert (=> d!589390 e!1234987))

(declare-fun res!863908 () Bool)

(assert (=> d!589390 (=> res!863908 e!1234987)))

(assert (=> d!589390 (= res!863908 (isEmpty!13537 lt!740614))))

(assert (=> d!589390 (= lt!740614 e!1234985)))

(declare-fun c!314355 () Bool)

(declare-fun lt!740615 () tuple2!20586)

(assert (=> d!589390 (= c!314355 (isEmpty!13541 (_1!11762 lt!740615)))))

(declare-fun findLongestMatch!464 (Regex!5363 List!22037) tuple2!20586)

(assert (=> d!589390 (= lt!740615 (findLongestMatch!464 (regex!3938 (h!27357 rules!3198)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(assert (=> d!589390 (ruleValid!1197 thiss!23328 (h!27357 rules!3198))))

(assert (=> d!589390 (= (maxPrefixOneRule!1227 thiss!23328 (h!27357 rules!3198) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) lt!740614)))

(declare-fun b!1932207 () Bool)

(declare-fun res!863903 () Bool)

(assert (=> b!1932207 (=> (not res!863903) (not e!1234986))))

(assert (=> b!1932207 (= res!863903 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740614)))) (_2!11756 (get!6918 lt!740614))) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun b!1932208 () Bool)

(declare-fun res!863902 () Bool)

(assert (=> b!1932208 (=> (not res!863902) (not e!1234986))))

(assert (=> b!1932208 (= res!863902 (= (rule!6145 (_1!11756 (get!6918 lt!740614))) (h!27357 rules!3198)))))

(declare-fun b!1932209 () Bool)

(assert (=> b!1932209 (= e!1234985 (Some!4553 (tuple2!20575 (Token!7429 (apply!5709 (transformation!3938 (h!27357 rules!3198)) (seqFromList!2792 (_1!11762 lt!740615))) (h!27357 rules!3198) (size!17138 (seqFromList!2792 (_1!11762 lt!740615))) (_1!11762 lt!740615)) (_2!11762 lt!740615))))))

(declare-fun lt!740617 () Unit!36312)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!521 (Regex!5363 List!22037) Unit!36312)

(assert (=> b!1932209 (= lt!740617 (longestMatchIsAcceptedByMatchOrIsEmpty!521 (regex!3938 (h!27357 rules!3198)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(declare-fun res!863907 () Bool)

(assert (=> b!1932209 (= res!863907 (isEmpty!13541 (_1!11762 (findLongestMatchInner!537 (regex!3938 (h!27357 rules!3198)) Nil!21955 (size!17131 Nil!21955) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))))

(assert (=> b!1932209 (=> res!863907 e!1234984)))

(assert (=> b!1932209 e!1234984))

(declare-fun lt!740613 () Unit!36312)

(assert (=> b!1932209 (= lt!740613 lt!740617)))

(declare-fun lt!740616 () Unit!36312)

(assert (=> b!1932209 (= lt!740616 (lemmaSemiInverse!895 (transformation!3938 (h!27357 rules!3198)) (seqFromList!2792 (_1!11762 lt!740615))))))

(declare-fun b!1932210 () Bool)

(declare-fun res!863904 () Bool)

(assert (=> b!1932210 (=> (not res!863904) (not e!1234986))))

(assert (=> b!1932210 (= res!863904 (= (value!123824 (_1!11756 (get!6918 lt!740614))) (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740614)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740614)))))))))

(assert (= (and d!589390 c!314355) b!1932204))

(assert (= (and d!589390 (not c!314355)) b!1932209))

(assert (= (and b!1932209 (not res!863907)) b!1932202))

(assert (= (and d!589390 (not res!863908)) b!1932203))

(assert (= (and b!1932203 res!863905) b!1932207))

(assert (= (and b!1932207 res!863903) b!1932206))

(assert (= (and b!1932206 res!863906) b!1932208))

(assert (= (and b!1932208 res!863902) b!1932210))

(assert (= (and b!1932210 res!863904) b!1932205))

(declare-fun m!2370633 () Bool)

(assert (=> b!1932205 m!2370633))

(declare-fun m!2370635 () Bool)

(assert (=> b!1932205 m!2370635))

(assert (=> b!1932208 m!2370633))

(assert (=> b!1932207 m!2370633))

(declare-fun m!2370637 () Bool)

(assert (=> b!1932207 m!2370637))

(assert (=> b!1932207 m!2370637))

(declare-fun m!2370639 () Bool)

(assert (=> b!1932207 m!2370639))

(assert (=> b!1932207 m!2370639))

(declare-fun m!2370641 () Bool)

(assert (=> b!1932207 m!2370641))

(assert (=> b!1932209 m!2367899))

(declare-fun m!2370643 () Bool)

(assert (=> b!1932209 m!2370643))

(assert (=> b!1932209 m!2367899))

(assert (=> b!1932209 m!2368393))

(declare-fun m!2370645 () Bool)

(assert (=> b!1932209 m!2370645))

(declare-fun m!2370647 () Bool)

(assert (=> b!1932209 m!2370647))

(declare-fun m!2370649 () Bool)

(assert (=> b!1932209 m!2370649))

(assert (=> b!1932209 m!2367899))

(assert (=> b!1932209 m!2367899))

(assert (=> b!1932209 m!2368393))

(declare-fun m!2370651 () Bool)

(assert (=> b!1932209 m!2370651))

(assert (=> b!1932209 m!2370649))

(assert (=> b!1932209 m!2370645))

(assert (=> b!1932209 m!2370645))

(declare-fun m!2370653 () Bool)

(assert (=> b!1932209 m!2370653))

(declare-fun m!2370655 () Bool)

(assert (=> b!1932209 m!2370655))

(assert (=> b!1932209 m!2370645))

(declare-fun m!2370657 () Bool)

(assert (=> b!1932209 m!2370657))

(assert (=> b!1932203 m!2370633))

(assert (=> b!1932203 m!2370637))

(assert (=> b!1932203 m!2370637))

(assert (=> b!1932203 m!2370639))

(assert (=> b!1932203 m!2370639))

(declare-fun m!2370659 () Bool)

(assert (=> b!1932203 m!2370659))

(declare-fun m!2370661 () Bool)

(assert (=> d!589390 m!2370661))

(declare-fun m!2370663 () Bool)

(assert (=> d!589390 m!2370663))

(assert (=> d!589390 m!2367899))

(declare-fun m!2370665 () Bool)

(assert (=> d!589390 m!2370665))

(assert (=> d!589390 m!2370417))

(assert (=> b!1932206 m!2370633))

(declare-fun m!2370667 () Bool)

(assert (=> b!1932206 m!2370667))

(assert (=> b!1932206 m!2367899))

(assert (=> b!1932206 m!2368393))

(assert (=> b!1932202 m!2370649))

(assert (=> b!1932202 m!2367899))

(assert (=> b!1932202 m!2368393))

(assert (=> b!1932202 m!2370649))

(assert (=> b!1932202 m!2367899))

(assert (=> b!1932202 m!2367899))

(assert (=> b!1932202 m!2368393))

(assert (=> b!1932202 m!2370651))

(declare-fun m!2370669 () Bool)

(assert (=> b!1932202 m!2370669))

(assert (=> b!1932210 m!2370633))

(declare-fun m!2370671 () Bool)

(assert (=> b!1932210 m!2370671))

(assert (=> b!1932210 m!2370671))

(declare-fun m!2370673 () Bool)

(assert (=> b!1932210 m!2370673))

(assert (=> bm!118768 d!589390))

(declare-fun d!589392 () Bool)

(declare-fun lt!740618 () Int)

(assert (=> d!589392 (= lt!740618 (size!17133 (list!8890 (_1!11758 lt!740133))))))

(assert (=> d!589392 (= lt!740618 (size!17134 (c!313976 (_1!11758 lt!740133))))))

(assert (=> d!589392 (= (size!17130 (_1!11758 lt!740133)) lt!740618)))

(declare-fun bs!415091 () Bool)

(assert (= bs!415091 d!589392))

(assert (=> bs!415091 m!2369273))

(assert (=> bs!415091 m!2369273))

(declare-fun m!2370675 () Bool)

(assert (=> bs!415091 m!2370675))

(declare-fun m!2370677 () Bool)

(assert (=> bs!415091 m!2370677))

(assert (=> d!588690 d!589392))

(assert (=> d!588690 d!589310))

(assert (=> d!588690 d!589308))

(declare-fun d!589394 () Bool)

(assert (=> d!589394 (= (list!8890 (_1!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354))))) (list!8893 (c!313976 (_1!11758 (lex!1577 thiss!23328 rules!3198 (print!1521 thiss!23328 (singletonSeq!1922 separatorToken!354)))))))))

(declare-fun bs!415092 () Bool)

(assert (= bs!415092 d!589394))

(declare-fun m!2370679 () Bool)

(assert (=> bs!415092 m!2370679))

(assert (=> d!588690 d!589394))

(declare-fun d!589396 () Bool)

(assert (=> d!589396 (= (list!8890 (singletonSeq!1922 separatorToken!354)) (list!8893 (c!313976 (singletonSeq!1922 separatorToken!354))))))

(declare-fun bs!415093 () Bool)

(assert (= bs!415093 d!589396))

(declare-fun m!2370681 () Bool)

(assert (=> bs!415093 m!2370681))

(assert (=> d!588690 d!589396))

(assert (=> d!588690 d!589236))

(assert (=> d!588690 d!588672))

(declare-fun b!1932211 () Bool)

(declare-fun e!1234988 () Bool)

(declare-fun lt!740619 () Bool)

(declare-fun call!118877 () Bool)

(assert (=> b!1932211 (= e!1234988 (= lt!740619 call!118877))))

(declare-fun bm!118872 () Bool)

(assert (=> bm!118872 (= call!118877 (isEmpty!13541 (list!8887 (charsOf!2478 separatorToken!354))))))

(declare-fun b!1932212 () Bool)

(declare-fun e!1234991 () Bool)

(assert (=> b!1932212 (= e!1234991 (= (head!4504 (list!8887 (charsOf!2478 separatorToken!354))) (c!313975 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))))))))

(declare-fun b!1932213 () Bool)

(declare-fun e!1234992 () Bool)

(assert (=> b!1932213 (= e!1234992 (not lt!740619))))

(declare-fun b!1932214 () Bool)

(declare-fun e!1234990 () Bool)

(assert (=> b!1932214 (= e!1234990 (not (= (head!4504 (list!8887 (charsOf!2478 separatorToken!354))) (c!313975 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))))))))))

(declare-fun b!1932215 () Bool)

(declare-fun res!863915 () Bool)

(declare-fun e!1234994 () Bool)

(assert (=> b!1932215 (=> res!863915 e!1234994)))

(assert (=> b!1932215 (= res!863915 (not ((_ is ElementMatch!5363) (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))))))))

(assert (=> b!1932215 (= e!1234992 e!1234994)))

(declare-fun d!589398 () Bool)

(assert (=> d!589398 e!1234988))

(declare-fun c!314357 () Bool)

(assert (=> d!589398 (= c!314357 ((_ is EmptyExpr!5363) (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))))))))

(declare-fun e!1234993 () Bool)

(assert (=> d!589398 (= lt!740619 e!1234993)))

(declare-fun c!314358 () Bool)

(assert (=> d!589398 (= c!314358 (isEmpty!13541 (list!8887 (charsOf!2478 separatorToken!354))))))

(assert (=> d!589398 (validRegex!2139 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))))))

(assert (=> d!589398 (= (matchR!2631 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))) (list!8887 (charsOf!2478 separatorToken!354))) lt!740619)))

(declare-fun b!1932216 () Bool)

(assert (=> b!1932216 (= e!1234993 (matchR!2631 (derivativeStep!1372 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354))))) (head!4504 (list!8887 (charsOf!2478 separatorToken!354)))) (tail!2990 (list!8887 (charsOf!2478 separatorToken!354)))))))

(declare-fun b!1932217 () Bool)

(declare-fun res!863911 () Bool)

(assert (=> b!1932217 (=> (not res!863911) (not e!1234991))))

(assert (=> b!1932217 (= res!863911 (not call!118877))))

(declare-fun b!1932218 () Bool)

(declare-fun e!1234989 () Bool)

(assert (=> b!1932218 (= e!1234994 e!1234989)))

(declare-fun res!863912 () Bool)

(assert (=> b!1932218 (=> (not res!863912) (not e!1234989))))

(assert (=> b!1932218 (= res!863912 (not lt!740619))))

(declare-fun b!1932219 () Bool)

(assert (=> b!1932219 (= e!1234989 e!1234990)))

(declare-fun res!863913 () Bool)

(assert (=> b!1932219 (=> res!863913 e!1234990)))

(assert (=> b!1932219 (= res!863913 call!118877)))

(declare-fun b!1932220 () Bool)

(declare-fun res!863914 () Bool)

(assert (=> b!1932220 (=> res!863914 e!1234994)))

(assert (=> b!1932220 (= res!863914 e!1234991)))

(declare-fun res!863916 () Bool)

(assert (=> b!1932220 (=> (not res!863916) (not e!1234991))))

(assert (=> b!1932220 (= res!863916 lt!740619)))

(declare-fun b!1932221 () Bool)

(declare-fun res!863910 () Bool)

(assert (=> b!1932221 (=> res!863910 e!1234990)))

(assert (=> b!1932221 (= res!863910 (not (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 separatorToken!354))))))))

(declare-fun b!1932222 () Bool)

(declare-fun res!863909 () Bool)

(assert (=> b!1932222 (=> (not res!863909) (not e!1234991))))

(assert (=> b!1932222 (= res!863909 (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 separatorToken!354)))))))

(declare-fun b!1932223 () Bool)

(assert (=> b!1932223 (= e!1234993 (nullable!1613 (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))))))))

(declare-fun b!1932224 () Bool)

(assert (=> b!1932224 (= e!1234988 e!1234992)))

(declare-fun c!314356 () Bool)

(assert (=> b!1932224 (= c!314356 ((_ is EmptyLang!5363) (regex!3938 (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))))))))

(assert (= (and d!589398 c!314358) b!1932223))

(assert (= (and d!589398 (not c!314358)) b!1932216))

(assert (= (and d!589398 c!314357) b!1932211))

(assert (= (and d!589398 (not c!314357)) b!1932224))

(assert (= (and b!1932224 c!314356) b!1932213))

(assert (= (and b!1932224 (not c!314356)) b!1932215))

(assert (= (and b!1932215 (not res!863915)) b!1932220))

(assert (= (and b!1932220 res!863916) b!1932217))

(assert (= (and b!1932217 res!863911) b!1932222))

(assert (= (and b!1932222 res!863909) b!1932212))

(assert (= (and b!1932220 (not res!863914)) b!1932218))

(assert (= (and b!1932218 res!863912) b!1932219))

(assert (= (and b!1932219 (not res!863913)) b!1932221))

(assert (= (and b!1932221 (not res!863910)) b!1932214))

(assert (= (or b!1932211 b!1932217 b!1932219) bm!118872))

(assert (=> b!1932214 m!2367905))

(declare-fun m!2370683 () Bool)

(assert (=> b!1932214 m!2370683))

(assert (=> bm!118872 m!2367905))

(declare-fun m!2370685 () Bool)

(assert (=> bm!118872 m!2370685))

(assert (=> b!1932212 m!2367905))

(assert (=> b!1932212 m!2370683))

(assert (=> d!589398 m!2367905))

(assert (=> d!589398 m!2370685))

(declare-fun m!2370687 () Bool)

(assert (=> d!589398 m!2370687))

(assert (=> b!1932221 m!2367905))

(declare-fun m!2370689 () Bool)

(assert (=> b!1932221 m!2370689))

(assert (=> b!1932221 m!2370689))

(declare-fun m!2370691 () Bool)

(assert (=> b!1932221 m!2370691))

(declare-fun m!2370693 () Bool)

(assert (=> b!1932223 m!2370693))

(assert (=> b!1932216 m!2367905))

(assert (=> b!1932216 m!2370683))

(assert (=> b!1932216 m!2370683))

(declare-fun m!2370695 () Bool)

(assert (=> b!1932216 m!2370695))

(assert (=> b!1932216 m!2367905))

(assert (=> b!1932216 m!2370689))

(assert (=> b!1932216 m!2370695))

(assert (=> b!1932216 m!2370689))

(declare-fun m!2370697 () Bool)

(assert (=> b!1932216 m!2370697))

(assert (=> b!1932222 m!2367905))

(assert (=> b!1932222 m!2370689))

(assert (=> b!1932222 m!2370689))

(assert (=> b!1932222 m!2370691))

(assert (=> b!1930414 d!589398))

(declare-fun d!589400 () Bool)

(assert (=> d!589400 (= (get!6917 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))) (v!26657 (getRuleFromTag!759 thiss!23328 rules!3198 (tag!4388 (rule!6145 separatorToken!354)))))))

(assert (=> b!1930414 d!589400))

(assert (=> b!1930414 d!588634))

(assert (=> b!1930414 d!588646))

(assert (=> b!1930414 d!588594))

(declare-fun d!589402 () Bool)

(assert (=> d!589402 (= (isEmpty!13538 lt!740045) (not ((_ is Some!4552) lt!740045)))))

(assert (=> d!588598 d!589402))

(assert (=> d!588598 d!588654))

(declare-fun b!1932234 () Bool)

(declare-fun e!1234999 () List!22037)

(declare-fun e!1235000 () List!22037)

(assert (=> b!1932234 (= e!1234999 e!1235000)))

(declare-fun c!314364 () Bool)

(assert (=> b!1932234 (= c!314364 ((_ is Leaf!10762) (c!313974 (charsOf!2478 separatorToken!354))))))

(declare-fun b!1932233 () Bool)

(assert (=> b!1932233 (= e!1234999 Nil!21955)))

(declare-fun b!1932236 () Bool)

(assert (=> b!1932236 (= e!1235000 (++!5893 (list!8889 (left!17465 (c!313974 (charsOf!2478 separatorToken!354)))) (list!8889 (right!17795 (c!313974 (charsOf!2478 separatorToken!354))))))))

(declare-fun d!589404 () Bool)

(declare-fun c!314363 () Bool)

(assert (=> d!589404 (= c!314363 ((_ is Empty!7330) (c!313974 (charsOf!2478 separatorToken!354))))))

(assert (=> d!589404 (= (list!8889 (c!313974 (charsOf!2478 separatorToken!354))) e!1234999)))

(declare-fun b!1932235 () Bool)

(declare-fun list!8895 (IArray!14665) List!22037)

(assert (=> b!1932235 (= e!1235000 (list!8895 (xs!10224 (c!313974 (charsOf!2478 separatorToken!354)))))))

(assert (= (and d!589404 c!314363) b!1932233))

(assert (= (and d!589404 (not c!314363)) b!1932234))

(assert (= (and b!1932234 c!314364) b!1932235))

(assert (= (and b!1932234 (not c!314364)) b!1932236))

(declare-fun m!2370699 () Bool)

(assert (=> b!1932236 m!2370699))

(declare-fun m!2370701 () Bool)

(assert (=> b!1932236 m!2370701))

(assert (=> b!1932236 m!2370699))

(assert (=> b!1932236 m!2370701))

(declare-fun m!2370703 () Bool)

(assert (=> b!1932236 m!2370703))

(declare-fun m!2370705 () Bool)

(assert (=> b!1932235 m!2370705))

(assert (=> d!588634 d!589404))

(assert (=> b!1930695 d!589224))

(assert (=> b!1930695 d!588598))

(declare-fun d!589406 () Bool)

(assert (=> d!589406 (= (isEmpty!13538 lt!739938) (not ((_ is Some!4552) lt!739938)))))

(assert (=> d!588600 d!589406))

(declare-fun d!589408 () Bool)

(declare-fun lt!740620 () Bool)

(assert (=> d!589408 (= lt!740620 (select (content!3182 rules!3198) (get!6917 lt!740042)))))

(declare-fun e!1235001 () Bool)

(assert (=> d!589408 (= lt!740620 e!1235001)))

(declare-fun res!863918 () Bool)

(assert (=> d!589408 (=> (not res!863918) (not e!1235001))))

(assert (=> d!589408 (= res!863918 ((_ is Cons!21956) rules!3198))))

(assert (=> d!589408 (= (contains!3975 rules!3198 (get!6917 lt!740042)) lt!740620)))

(declare-fun b!1932237 () Bool)

(declare-fun e!1235002 () Bool)

(assert (=> b!1932237 (= e!1235001 e!1235002)))

(declare-fun res!863917 () Bool)

(assert (=> b!1932237 (=> res!863917 e!1235002)))

(assert (=> b!1932237 (= res!863917 (= (h!27357 rules!3198) (get!6917 lt!740042)))))

(declare-fun b!1932238 () Bool)

(assert (=> b!1932238 (= e!1235002 (contains!3975 (t!180083 rules!3198) (get!6917 lt!740042)))))

(assert (= (and d!589408 res!863918) b!1932237))

(assert (= (and b!1932237 (not res!863917)) b!1932238))

(assert (=> d!589408 m!2369573))

(assert (=> d!589408 m!2368199))

(declare-fun m!2370707 () Bool)

(assert (=> d!589408 m!2370707))

(assert (=> b!1932238 m!2368199))

(declare-fun m!2370709 () Bool)

(assert (=> b!1932238 m!2370709))

(assert (=> b!1930523 d!589408))

(assert (=> b!1930523 d!589120))

(declare-fun d!589410 () Bool)

(declare-fun e!1235004 () Bool)

(assert (=> d!589410 e!1235004))

(declare-fun res!863920 () Bool)

(assert (=> d!589410 (=> (not res!863920) (not e!1235004))))

(declare-fun lt!740621 () List!22037)

(assert (=> d!589410 (= res!863920 (= (content!3179 lt!740621) ((_ map or) (content!3179 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))) (content!3179 (_2!11756 (get!6918 lt!740098))))))))

(declare-fun e!1235003 () List!22037)

(assert (=> d!589410 (= lt!740621 e!1235003)))

(declare-fun c!314365 () Bool)

(assert (=> d!589410 (= c!314365 ((_ is Nil!21955) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))))))

(assert (=> d!589410 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))) (_2!11756 (get!6918 lt!740098))) lt!740621)))

(declare-fun b!1932242 () Bool)

(assert (=> b!1932242 (= e!1235004 (or (not (= (_2!11756 (get!6918 lt!740098)) Nil!21955)) (= lt!740621 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))))))))

(declare-fun b!1932240 () Bool)

(assert (=> b!1932240 (= e!1235003 (Cons!21955 (h!27356 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))) (++!5893 (t!180082 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))) (_2!11756 (get!6918 lt!740098)))))))

(declare-fun b!1932241 () Bool)

(declare-fun res!863919 () Bool)

(assert (=> b!1932241 (=> (not res!863919) (not e!1235004))))

(assert (=> b!1932241 (= res!863919 (= (size!17131 lt!740621) (+ (size!17131 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))) (size!17131 (_2!11756 (get!6918 lt!740098))))))))

(declare-fun b!1932239 () Bool)

(assert (=> b!1932239 (= e!1235003 (_2!11756 (get!6918 lt!740098)))))

(assert (= (and d!589410 c!314365) b!1932239))

(assert (= (and d!589410 (not c!314365)) b!1932240))

(assert (= (and d!589410 res!863920) b!1932241))

(assert (= (and b!1932241 res!863919) b!1932242))

(declare-fun m!2370711 () Bool)

(assert (=> d!589410 m!2370711))

(assert (=> d!589410 m!2368369))

(declare-fun m!2370713 () Bool)

(assert (=> d!589410 m!2370713))

(declare-fun m!2370715 () Bool)

(assert (=> d!589410 m!2370715))

(declare-fun m!2370717 () Bool)

(assert (=> b!1932240 m!2370717))

(declare-fun m!2370719 () Bool)

(assert (=> b!1932241 m!2370719))

(assert (=> b!1932241 m!2368369))

(declare-fun m!2370721 () Bool)

(assert (=> b!1932241 m!2370721))

(assert (=> b!1932241 m!2368391))

(assert (=> b!1930672 d!589410))

(assert (=> b!1930672 d!588904))

(assert (=> b!1930672 d!588906))

(assert (=> b!1930672 d!588910))

(declare-fun b!1932243 () Bool)

(declare-fun e!1235005 () Bool)

(assert (=> b!1932243 (= e!1235005 (matchR!2631 (regex!3938 (h!27357 rules!3198)) (_1!11762 (findLongestMatchInner!537 (regex!3938 (h!27357 rules!3198)) Nil!21955 (size!17131 Nil!21955) lt!739936 lt!739936 (size!17131 lt!739936)))))))

(declare-fun b!1932244 () Bool)

(declare-fun e!1235008 () Bool)

(declare-fun e!1235007 () Bool)

(assert (=> b!1932244 (= e!1235008 e!1235007)))

(declare-fun res!863924 () Bool)

(assert (=> b!1932244 (=> (not res!863924) (not e!1235007))))

(declare-fun lt!740623 () Option!4554)

(assert (=> b!1932244 (= res!863924 (matchR!2631 (regex!3938 (h!27357 rules!3198)) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740623))))))))

(declare-fun b!1932245 () Bool)

(declare-fun e!1235006 () Option!4554)

(assert (=> b!1932245 (= e!1235006 None!4553)))

(declare-fun b!1932246 () Bool)

(assert (=> b!1932246 (= e!1235007 (= (size!17128 (_1!11756 (get!6918 lt!740623))) (size!17131 (originalCharacters!4745 (_1!11756 (get!6918 lt!740623))))))))

(declare-fun b!1932247 () Bool)

(declare-fun res!863925 () Bool)

(assert (=> b!1932247 (=> (not res!863925) (not e!1235007))))

(assert (=> b!1932247 (= res!863925 (< (size!17131 (_2!11756 (get!6918 lt!740623))) (size!17131 lt!739936)))))

(declare-fun d!589412 () Bool)

(assert (=> d!589412 e!1235008))

(declare-fun res!863927 () Bool)

(assert (=> d!589412 (=> res!863927 e!1235008)))

(assert (=> d!589412 (= res!863927 (isEmpty!13537 lt!740623))))

(assert (=> d!589412 (= lt!740623 e!1235006)))

(declare-fun c!314366 () Bool)

(declare-fun lt!740624 () tuple2!20586)

(assert (=> d!589412 (= c!314366 (isEmpty!13541 (_1!11762 lt!740624)))))

(assert (=> d!589412 (= lt!740624 (findLongestMatch!464 (regex!3938 (h!27357 rules!3198)) lt!739936))))

(assert (=> d!589412 (ruleValid!1197 thiss!23328 (h!27357 rules!3198))))

(assert (=> d!589412 (= (maxPrefixOneRule!1227 thiss!23328 (h!27357 rules!3198) lt!739936) lt!740623)))

(declare-fun b!1932248 () Bool)

(declare-fun res!863922 () Bool)

(assert (=> b!1932248 (=> (not res!863922) (not e!1235007))))

(assert (=> b!1932248 (= res!863922 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740623)))) (_2!11756 (get!6918 lt!740623))) lt!739936))))

(declare-fun b!1932249 () Bool)

(declare-fun res!863921 () Bool)

(assert (=> b!1932249 (=> (not res!863921) (not e!1235007))))

(assert (=> b!1932249 (= res!863921 (= (rule!6145 (_1!11756 (get!6918 lt!740623))) (h!27357 rules!3198)))))

(declare-fun b!1932250 () Bool)

(assert (=> b!1932250 (= e!1235006 (Some!4553 (tuple2!20575 (Token!7429 (apply!5709 (transformation!3938 (h!27357 rules!3198)) (seqFromList!2792 (_1!11762 lt!740624))) (h!27357 rules!3198) (size!17138 (seqFromList!2792 (_1!11762 lt!740624))) (_1!11762 lt!740624)) (_2!11762 lt!740624))))))

(declare-fun lt!740626 () Unit!36312)

(assert (=> b!1932250 (= lt!740626 (longestMatchIsAcceptedByMatchOrIsEmpty!521 (regex!3938 (h!27357 rules!3198)) lt!739936))))

(declare-fun res!863926 () Bool)

(assert (=> b!1932250 (= res!863926 (isEmpty!13541 (_1!11762 (findLongestMatchInner!537 (regex!3938 (h!27357 rules!3198)) Nil!21955 (size!17131 Nil!21955) lt!739936 lt!739936 (size!17131 lt!739936)))))))

(assert (=> b!1932250 (=> res!863926 e!1235005)))

(assert (=> b!1932250 e!1235005))

(declare-fun lt!740622 () Unit!36312)

(assert (=> b!1932250 (= lt!740622 lt!740626)))

(declare-fun lt!740625 () Unit!36312)

(assert (=> b!1932250 (= lt!740625 (lemmaSemiInverse!895 (transformation!3938 (h!27357 rules!3198)) (seqFromList!2792 (_1!11762 lt!740624))))))

(declare-fun b!1932251 () Bool)

(declare-fun res!863923 () Bool)

(assert (=> b!1932251 (=> (not res!863923) (not e!1235007))))

(assert (=> b!1932251 (= res!863923 (= (value!123824 (_1!11756 (get!6918 lt!740623))) (apply!5709 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740623)))) (seqFromList!2792 (originalCharacters!4745 (_1!11756 (get!6918 lt!740623)))))))))

(assert (= (and d!589412 c!314366) b!1932245))

(assert (= (and d!589412 (not c!314366)) b!1932250))

(assert (= (and b!1932250 (not res!863926)) b!1932243))

(assert (= (and d!589412 (not res!863927)) b!1932244))

(assert (= (and b!1932244 res!863924) b!1932248))

(assert (= (and b!1932248 res!863922) b!1932247))

(assert (= (and b!1932247 res!863925) b!1932249))

(assert (= (and b!1932249 res!863921) b!1932251))

(assert (= (and b!1932251 res!863923) b!1932246))

(declare-fun m!2370723 () Bool)

(assert (=> b!1932246 m!2370723))

(declare-fun m!2370725 () Bool)

(assert (=> b!1932246 m!2370725))

(assert (=> b!1932249 m!2370723))

(assert (=> b!1932248 m!2370723))

(declare-fun m!2370727 () Bool)

(assert (=> b!1932248 m!2370727))

(assert (=> b!1932248 m!2370727))

(declare-fun m!2370729 () Bool)

(assert (=> b!1932248 m!2370729))

(assert (=> b!1932248 m!2370729))

(declare-fun m!2370731 () Bool)

(assert (=> b!1932248 m!2370731))

(declare-fun m!2370733 () Bool)

(assert (=> b!1932250 m!2370733))

(assert (=> b!1932250 m!2368089))

(declare-fun m!2370735 () Bool)

(assert (=> b!1932250 m!2370735))

(declare-fun m!2370737 () Bool)

(assert (=> b!1932250 m!2370737))

(assert (=> b!1932250 m!2370649))

(assert (=> b!1932250 m!2368089))

(declare-fun m!2370739 () Bool)

(assert (=> b!1932250 m!2370739))

(assert (=> b!1932250 m!2370649))

(assert (=> b!1932250 m!2370735))

(assert (=> b!1932250 m!2370735))

(declare-fun m!2370741 () Bool)

(assert (=> b!1932250 m!2370741))

(declare-fun m!2370743 () Bool)

(assert (=> b!1932250 m!2370743))

(assert (=> b!1932250 m!2370735))

(declare-fun m!2370745 () Bool)

(assert (=> b!1932250 m!2370745))

(assert (=> b!1932244 m!2370723))

(assert (=> b!1932244 m!2370727))

(assert (=> b!1932244 m!2370727))

(assert (=> b!1932244 m!2370729))

(assert (=> b!1932244 m!2370729))

(declare-fun m!2370747 () Bool)

(assert (=> b!1932244 m!2370747))

(declare-fun m!2370749 () Bool)

(assert (=> d!589412 m!2370749))

(declare-fun m!2370751 () Bool)

(assert (=> d!589412 m!2370751))

(declare-fun m!2370753 () Bool)

(assert (=> d!589412 m!2370753))

(assert (=> d!589412 m!2370417))

(assert (=> b!1932247 m!2370723))

(declare-fun m!2370755 () Bool)

(assert (=> b!1932247 m!2370755))

(assert (=> b!1932247 m!2368089))

(assert (=> b!1932243 m!2370649))

(assert (=> b!1932243 m!2368089))

(assert (=> b!1932243 m!2370649))

(assert (=> b!1932243 m!2368089))

(assert (=> b!1932243 m!2370739))

(declare-fun m!2370757 () Bool)

(assert (=> b!1932243 m!2370757))

(assert (=> b!1932251 m!2370723))

(declare-fun m!2370759 () Bool)

(assert (=> b!1932251 m!2370759))

(assert (=> b!1932251 m!2370759))

(declare-fun m!2370761 () Bool)

(assert (=> b!1932251 m!2370761))

(assert (=> bm!118747 d!589412))

(declare-fun d!589414 () Bool)

(assert (=> d!589414 (= (isEmpty!13537 lt!740098) (not ((_ is Some!4553) lt!740098)))))

(assert (=> d!588632 d!589414))

(declare-fun d!589416 () Bool)

(declare-fun e!1235010 () Bool)

(assert (=> d!589416 e!1235010))

(declare-fun res!863928 () Bool)

(assert (=> d!589416 (=> res!863928 e!1235010)))

(declare-fun lt!740627 () Bool)

(assert (=> d!589416 (= res!863928 (not lt!740627))))

(declare-fun e!1235009 () Bool)

(assert (=> d!589416 (= lt!740627 e!1235009)))

(declare-fun res!863931 () Bool)

(assert (=> d!589416 (=> res!863931 e!1235009)))

(assert (=> d!589416 (= res!863931 ((_ is Nil!21955) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(assert (=> d!589416 (= (isPrefix!1945 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) lt!740627)))

(declare-fun b!1932253 () Bool)

(declare-fun res!863930 () Bool)

(declare-fun e!1235011 () Bool)

(assert (=> b!1932253 (=> (not res!863930) (not e!1235011))))

(assert (=> b!1932253 (= res!863930 (= (head!4504 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) (head!4504 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun b!1932254 () Bool)

(assert (=> b!1932254 (= e!1235011 (isPrefix!1945 (tail!2990 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) (tail!2990 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun b!1932252 () Bool)

(assert (=> b!1932252 (= e!1235009 e!1235011)))

(declare-fun res!863929 () Bool)

(assert (=> b!1932252 (=> (not res!863929) (not e!1235011))))

(assert (=> b!1932252 (= res!863929 (not ((_ is Nil!21955) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(declare-fun b!1932255 () Bool)

(assert (=> b!1932255 (= e!1235010 (>= (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) (size!17131 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))))

(assert (= (and d!589416 (not res!863931)) b!1932252))

(assert (= (and b!1932252 res!863929) b!1932253))

(assert (= (and b!1932253 res!863930) b!1932254))

(assert (= (and d!589416 (not res!863928)) b!1932255))

(assert (=> b!1932253 m!2367899))

(declare-fun m!2370763 () Bool)

(assert (=> b!1932253 m!2370763))

(assert (=> b!1932253 m!2367899))

(assert (=> b!1932253 m!2370763))

(assert (=> b!1932254 m!2367899))

(declare-fun m!2370765 () Bool)

(assert (=> b!1932254 m!2370765))

(assert (=> b!1932254 m!2367899))

(assert (=> b!1932254 m!2370765))

(assert (=> b!1932254 m!2370765))

(assert (=> b!1932254 m!2370765))

(declare-fun m!2370767 () Bool)

(assert (=> b!1932254 m!2370767))

(assert (=> b!1932255 m!2367899))

(assert (=> b!1932255 m!2368393))

(assert (=> b!1932255 m!2367899))

(assert (=> b!1932255 m!2368393))

(assert (=> d!588632 d!589416))

(declare-fun d!589418 () Bool)

(assert (=> d!589418 (isPrefix!1945 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)))))

(declare-fun lt!740628 () Unit!36312)

(assert (=> d!589418 (= lt!740628 (choose!12004 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))))))

(assert (=> d!589418 (= (lemmaIsPrefixRefl!1263 (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354)) (++!5893 lt!739936 (printWithSeparatorTokenWhenNeededList!590 thiss!23328 rules!3198 (t!180084 tokens!598) separatorToken!354))) lt!740628)))

(declare-fun bs!415094 () Bool)

(assert (= bs!415094 d!589418))

(assert (=> bs!415094 m!2367899))

(assert (=> bs!415094 m!2367899))

(assert (=> bs!415094 m!2368379))

(assert (=> bs!415094 m!2367899))

(assert (=> bs!415094 m!2367899))

(declare-fun m!2370769 () Bool)

(assert (=> bs!415094 m!2370769))

(assert (=> d!588632 d!589418))

(assert (=> d!588632 d!589334))

(declare-fun d!589420 () Bool)

(declare-fun res!863932 () Bool)

(declare-fun e!1235012 () Bool)

(assert (=> d!589420 (=> res!863932 e!1235012)))

(assert (=> d!589420 (= res!863932 ((_ is Nil!21957) (t!180084 tokens!598)))))

(assert (=> d!589420 (= (forall!4642 (t!180084 tokens!598) lambda!75269) e!1235012)))

(declare-fun b!1932256 () Bool)

(declare-fun e!1235013 () Bool)

(assert (=> b!1932256 (= e!1235012 e!1235013)))

(declare-fun res!863933 () Bool)

(assert (=> b!1932256 (=> (not res!863933) (not e!1235013))))

(assert (=> b!1932256 (= res!863933 (dynLambda!10668 lambda!75269 (h!27358 (t!180084 tokens!598))))))

(declare-fun b!1932257 () Bool)

(assert (=> b!1932257 (= e!1235013 (forall!4642 (t!180084 (t!180084 tokens!598)) lambda!75269))))

(assert (= (and d!589420 (not res!863932)) b!1932256))

(assert (= (and b!1932256 res!863933) b!1932257))

(declare-fun b_lambda!64203 () Bool)

(assert (=> (not b_lambda!64203) (not b!1932256)))

(declare-fun m!2370771 () Bool)

(assert (=> b!1932256 m!2370771))

(declare-fun m!2370773 () Bool)

(assert (=> b!1932257 m!2370773))

(assert (=> b!1930798 d!589420))

(assert (=> bm!118772 d!589348))

(declare-fun d!589422 () Bool)

(declare-fun e!1235015 () Bool)

(assert (=> d!589422 e!1235015))

(declare-fun res!863935 () Bool)

(assert (=> d!589422 (=> (not res!863935) (not e!1235015))))

(declare-fun lt!740629 () List!22037)

(assert (=> d!589422 (= res!863935 (= (content!3179 lt!740629) ((_ map or) (content!3179 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))) (content!3179 (_2!11756 (get!6918 lt!740027))))))))

(declare-fun e!1235014 () List!22037)

(assert (=> d!589422 (= lt!740629 e!1235014)))

(declare-fun c!314367 () Bool)

(assert (=> d!589422 (= c!314367 ((_ is Nil!21955) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))))))

(assert (=> d!589422 (= (++!5893 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))) (_2!11756 (get!6918 lt!740027))) lt!740629)))

(declare-fun b!1932261 () Bool)

(assert (=> b!1932261 (= e!1235015 (or (not (= (_2!11756 (get!6918 lt!740027)) Nil!21955)) (= lt!740629 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027)))))))))

(declare-fun b!1932259 () Bool)

(assert (=> b!1932259 (= e!1235014 (Cons!21955 (h!27356 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))) (++!5893 (t!180082 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))) (_2!11756 (get!6918 lt!740027)))))))

(declare-fun b!1932260 () Bool)

(declare-fun res!863934 () Bool)

(assert (=> b!1932260 (=> (not res!863934) (not e!1235015))))

(assert (=> b!1932260 (= res!863934 (= (size!17131 lt!740629) (+ (size!17131 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740027))))) (size!17131 (_2!11756 (get!6918 lt!740027))))))))

(declare-fun b!1932258 () Bool)

(assert (=> b!1932258 (= e!1235014 (_2!11756 (get!6918 lt!740027)))))

(assert (= (and d!589422 c!314367) b!1932258))

(assert (= (and d!589422 (not c!314367)) b!1932259))

(assert (= (and d!589422 res!863935) b!1932260))

(assert (= (and b!1932260 res!863934) b!1932261))

(declare-fun m!2370775 () Bool)

(assert (=> d!589422 m!2370775))

(assert (=> d!589422 m!2368131))

(declare-fun m!2370777 () Bool)

(assert (=> d!589422 m!2370777))

(declare-fun m!2370779 () Bool)

(assert (=> d!589422 m!2370779))

(declare-fun m!2370781 () Bool)

(assert (=> b!1932259 m!2370781))

(declare-fun m!2370783 () Bool)

(assert (=> b!1932260 m!2370783))

(assert (=> b!1932260 m!2368131))

(declare-fun m!2370785 () Bool)

(assert (=> b!1932260 m!2370785))

(assert (=> b!1932260 m!2368155))

(assert (=> b!1930489 d!589422))

(assert (=> b!1930489 d!588916))

(assert (=> b!1930489 d!588918))

(assert (=> b!1930489 d!588914))

(declare-fun d!589424 () Bool)

(assert (=> d!589424 (= (list!8887 lt!739949) (list!8889 (c!313974 lt!739949)))))

(declare-fun bs!415095 () Bool)

(assert (= bs!415095 d!589424))

(declare-fun m!2370787 () Bool)

(assert (=> bs!415095 m!2370787))

(assert (=> d!588562 d!589424))

(declare-fun d!589426 () Bool)

(declare-fun c!314368 () Bool)

(assert (=> d!589426 (= c!314368 ((_ is Cons!21957) (list!8890 lt!739941)))))

(declare-fun e!1235016 () List!22037)

(assert (=> d!589426 (= (printList!1086 thiss!23328 (list!8890 lt!739941)) e!1235016)))

(declare-fun b!1932262 () Bool)

(assert (=> b!1932262 (= e!1235016 (++!5893 (list!8887 (charsOf!2478 (h!27358 (list!8890 lt!739941)))) (printList!1086 thiss!23328 (t!180084 (list!8890 lt!739941)))))))

(declare-fun b!1932263 () Bool)

(assert (=> b!1932263 (= e!1235016 Nil!21955)))

(assert (= (and d!589426 c!314368) b!1932262))

(assert (= (and d!589426 (not c!314368)) b!1932263))

(declare-fun m!2370789 () Bool)

(assert (=> b!1932262 m!2370789))

(assert (=> b!1932262 m!2370789))

(declare-fun m!2370791 () Bool)

(assert (=> b!1932262 m!2370791))

(declare-fun m!2370793 () Bool)

(assert (=> b!1932262 m!2370793))

(assert (=> b!1932262 m!2370791))

(assert (=> b!1932262 m!2370793))

(declare-fun m!2370795 () Bool)

(assert (=> b!1932262 m!2370795))

(assert (=> d!588562 d!589426))

(assert (=> d!588562 d!589034))

(assert (=> d!588562 d!588564))

(assert (=> b!1930646 d!589384))

(assert (=> b!1930646 d!589378))

(declare-fun d!589428 () Bool)

(assert (=> d!589428 (= (isEmpty!13538 lt!740042) (not ((_ is Some!4552) lt!740042)))))

(assert (=> d!588594 d!589428))

(assert (=> d!588594 d!588654))

(declare-fun d!589430 () Bool)

(declare-fun e!1235018 () Bool)

(assert (=> d!589430 e!1235018))

(declare-fun res!863937 () Bool)

(assert (=> d!589430 (=> (not res!863937) (not e!1235018))))

(declare-fun lt!740630 () List!22037)

(assert (=> d!589430 (= res!863937 (= (content!3179 lt!740630) ((_ map or) (content!3179 e!1234052) (content!3179 (ite c!314043 lt!740092 call!118772)))))))

(declare-fun e!1235017 () List!22037)

(assert (=> d!589430 (= lt!740630 e!1235017)))

(declare-fun c!314369 () Bool)

(assert (=> d!589430 (= c!314369 ((_ is Nil!21955) e!1234052))))

(assert (=> d!589430 (= (++!5893 e!1234052 (ite c!314043 lt!740092 call!118772)) lt!740630)))

(declare-fun b!1932267 () Bool)

(assert (=> b!1932267 (= e!1235018 (or (not (= (ite c!314043 lt!740092 call!118772) Nil!21955)) (= lt!740630 e!1234052)))))

(declare-fun b!1932265 () Bool)

(assert (=> b!1932265 (= e!1235017 (Cons!21955 (h!27356 e!1234052) (++!5893 (t!180082 e!1234052) (ite c!314043 lt!740092 call!118772))))))

(declare-fun b!1932266 () Bool)

(declare-fun res!863936 () Bool)

(assert (=> b!1932266 (=> (not res!863936) (not e!1235018))))

(assert (=> b!1932266 (= res!863936 (= (size!17131 lt!740630) (+ (size!17131 e!1234052) (size!17131 (ite c!314043 lt!740092 call!118772)))))))

(declare-fun b!1932264 () Bool)

(assert (=> b!1932264 (= e!1235017 (ite c!314043 lt!740092 call!118772))))

(assert (= (and d!589430 c!314369) b!1932264))

(assert (= (and d!589430 (not c!314369)) b!1932265))

(assert (= (and d!589430 res!863937) b!1932266))

(assert (= (and b!1932266 res!863936) b!1932267))

(declare-fun m!2370797 () Bool)

(assert (=> d!589430 m!2370797))

(declare-fun m!2370799 () Bool)

(assert (=> d!589430 m!2370799))

(declare-fun m!2370801 () Bool)

(assert (=> d!589430 m!2370801))

(declare-fun m!2370803 () Bool)

(assert (=> b!1932265 m!2370803))

(declare-fun m!2370805 () Bool)

(assert (=> b!1932266 m!2370805))

(declare-fun m!2370807 () Bool)

(assert (=> b!1932266 m!2370807))

(declare-fun m!2370809 () Bool)

(assert (=> b!1932266 m!2370809))

(assert (=> bm!118766 d!589430))

(declare-fun bs!415096 () Bool)

(declare-fun d!589432 () Bool)

(assert (= bs!415096 (and d!589432 b!1930339)))

(declare-fun lambda!75329 () Int)

(assert (=> bs!415096 (not (= lambda!75329 lambda!75269))))

(declare-fun bs!415097 () Bool)

(assert (= bs!415097 (and d!589432 b!1930652)))

(assert (=> bs!415097 (= lambda!75329 lambda!75284)))

(declare-fun bs!415098 () Bool)

(assert (= bs!415098 (and d!589432 d!588704)))

(assert (=> bs!415098 (= lambda!75329 lambda!75293)))

(declare-fun bs!415099 () Bool)

(assert (= bs!415099 (and d!589432 b!1932180)))

(assert (=> bs!415099 (= lambda!75329 lambda!75328)))

(declare-fun b!1932272 () Bool)

(declare-fun e!1235023 () Bool)

(assert (=> b!1932272 (= e!1235023 true)))

(declare-fun b!1932271 () Bool)

(declare-fun e!1235022 () Bool)

(assert (=> b!1932271 (= e!1235022 e!1235023)))

(declare-fun b!1932270 () Bool)

(declare-fun e!1235021 () Bool)

(assert (=> b!1932270 (= e!1235021 e!1235022)))

(assert (=> d!589432 e!1235021))

(assert (= b!1932271 b!1932272))

(assert (= b!1932270 b!1932271))

(assert (= (and d!589432 ((_ is Cons!21956) rules!3198)) b!1932270))

(assert (=> b!1932272 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75329))))

(assert (=> b!1932272 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (h!27357 rules!3198)))) (dynLambda!10665 order!13813 lambda!75329))))

(assert (=> d!589432 true))

(declare-fun lt!740631 () Bool)

(assert (=> d!589432 (= lt!740631 (forall!4642 (t!180084 tokens!598) lambda!75329))))

(declare-fun e!1235020 () Bool)

(assert (=> d!589432 (= lt!740631 e!1235020)))

(declare-fun res!863939 () Bool)

(assert (=> d!589432 (=> res!863939 e!1235020)))

(assert (=> d!589432 (= res!863939 (not ((_ is Cons!21957) (t!180084 tokens!598))))))

(assert (=> d!589432 (not (isEmpty!13534 rules!3198))))

(assert (=> d!589432 (= (rulesProduceEachTokenIndividuallyList!1282 thiss!23328 rules!3198 (t!180084 tokens!598)) lt!740631)))

(declare-fun b!1932268 () Bool)

(declare-fun e!1235019 () Bool)

(assert (=> b!1932268 (= e!1235020 e!1235019)))

(declare-fun res!863938 () Bool)

(assert (=> b!1932268 (=> (not res!863938) (not e!1235019))))

(assert (=> b!1932268 (= res!863938 (rulesProduceIndividualToken!1723 thiss!23328 rules!3198 (h!27358 (t!180084 tokens!598))))))

(declare-fun b!1932269 () Bool)

(assert (=> b!1932269 (= e!1235019 (rulesProduceEachTokenIndividuallyList!1282 thiss!23328 rules!3198 (t!180084 (t!180084 tokens!598))))))

(assert (= (and d!589432 (not res!863939)) b!1932268))

(assert (= (and b!1932268 res!863938) b!1932269))

(declare-fun m!2370811 () Bool)

(assert (=> d!589432 m!2370811))

(assert (=> d!589432 m!2367921))

(declare-fun m!2370813 () Bool)

(assert (=> b!1932268 m!2370813))

(declare-fun m!2370815 () Bool)

(assert (=> b!1932269 m!2370815))

(assert (=> b!1930948 d!589432))

(assert (=> b!1930740 d!589016))

(assert (=> b!1930740 d!589018))

(assert (=> b!1930527 d!589152))

(declare-fun b!1932273 () Bool)

(declare-fun e!1235024 () Bool)

(declare-fun lt!740632 () Bool)

(declare-fun call!118878 () Bool)

(assert (=> b!1932273 (= e!1235024 (= lt!740632 call!118878))))

(declare-fun bm!118873 () Bool)

(assert (=> bm!118873 (= call!118878 (isEmpty!13541 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))))))

(declare-fun b!1932274 () Bool)

(declare-fun e!1235027 () Bool)

(assert (=> b!1932274 (= e!1235027 (= (head!4504 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))) (c!313975 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))))))

(declare-fun b!1932275 () Bool)

(declare-fun e!1235028 () Bool)

(assert (=> b!1932275 (= e!1235028 (not lt!740632))))

(declare-fun b!1932276 () Bool)

(declare-fun e!1235026 () Bool)

(assert (=> b!1932276 (= e!1235026 (not (= (head!4504 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))) (c!313975 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))))))))

(declare-fun b!1932277 () Bool)

(declare-fun res!863946 () Bool)

(declare-fun e!1235030 () Bool)

(assert (=> b!1932277 (=> res!863946 e!1235030)))

(assert (=> b!1932277 (= res!863946 (not ((_ is ElementMatch!5363) (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))))))

(assert (=> b!1932277 (= e!1235028 e!1235030)))

(declare-fun d!589434 () Bool)

(assert (=> d!589434 e!1235024))

(declare-fun c!314371 () Bool)

(assert (=> d!589434 (= c!314371 ((_ is EmptyExpr!5363) (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))))))

(declare-fun e!1235029 () Bool)

(assert (=> d!589434 (= lt!740632 e!1235029)))

(declare-fun c!314372 () Bool)

(assert (=> d!589434 (= c!314372 (isEmpty!13541 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))))))

(assert (=> d!589434 (validRegex!2139 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))))

(assert (=> d!589434 (= (matchR!2631 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))) (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))) lt!740632)))

(declare-fun b!1932278 () Bool)

(assert (=> b!1932278 (= e!1235029 (matchR!2631 (derivativeStep!1372 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))) (head!4504 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))))) (tail!2990 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))))))))

(declare-fun b!1932279 () Bool)

(declare-fun res!863942 () Bool)

(assert (=> b!1932279 (=> (not res!863942) (not e!1235027))))

(assert (=> b!1932279 (= res!863942 (not call!118878))))

(declare-fun b!1932280 () Bool)

(declare-fun e!1235025 () Bool)

(assert (=> b!1932280 (= e!1235030 e!1235025)))

(declare-fun res!863943 () Bool)

(assert (=> b!1932280 (=> (not res!863943) (not e!1235025))))

(assert (=> b!1932280 (= res!863943 (not lt!740632))))

(declare-fun b!1932281 () Bool)

(assert (=> b!1932281 (= e!1235025 e!1235026)))

(declare-fun res!863944 () Bool)

(assert (=> b!1932281 (=> res!863944 e!1235026)))

(assert (=> b!1932281 (= res!863944 call!118878)))

(declare-fun b!1932282 () Bool)

(declare-fun res!863945 () Bool)

(assert (=> b!1932282 (=> res!863945 e!1235030)))

(assert (=> b!1932282 (= res!863945 e!1235027)))

(declare-fun res!863947 () Bool)

(assert (=> b!1932282 (=> (not res!863947) (not e!1235027))))

(assert (=> b!1932282 (= res!863947 lt!740632)))

(declare-fun b!1932283 () Bool)

(declare-fun res!863941 () Bool)

(assert (=> b!1932283 (=> res!863941 e!1235026)))

(assert (=> b!1932283 (= res!863941 (not (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098))))))))))

(declare-fun b!1932284 () Bool)

(declare-fun res!863940 () Bool)

(assert (=> b!1932284 (=> (not res!863940) (not e!1235027))))

(assert (=> b!1932284 (= res!863940 (isEmpty!13541 (tail!2990 (list!8887 (charsOf!2478 (_1!11756 (get!6918 lt!740098)))))))))

(declare-fun b!1932285 () Bool)

(assert (=> b!1932285 (= e!1235029 (nullable!1613 (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))))))

(declare-fun b!1932286 () Bool)

(assert (=> b!1932286 (= e!1235024 e!1235028)))

(declare-fun c!314370 () Bool)

(assert (=> b!1932286 (= c!314370 ((_ is EmptyLang!5363) (regex!3938 (rule!6145 (_1!11756 (get!6918 lt!740098))))))))

(assert (= (and d!589434 c!314372) b!1932285))

(assert (= (and d!589434 (not c!314372)) b!1932278))

(assert (= (and d!589434 c!314371) b!1932273))

(assert (= (and d!589434 (not c!314371)) b!1932286))

(assert (= (and b!1932286 c!314370) b!1932275))

(assert (= (and b!1932286 (not c!314370)) b!1932277))

(assert (= (and b!1932277 (not res!863946)) b!1932282))

(assert (= (and b!1932282 res!863947) b!1932279))

(assert (= (and b!1932279 res!863942) b!1932284))

(assert (= (and b!1932284 res!863940) b!1932274))

(assert (= (and b!1932282 (not res!863945)) b!1932280))

(assert (= (and b!1932280 res!863943) b!1932281))

(assert (= (and b!1932281 (not res!863944)) b!1932283))

(assert (= (and b!1932283 (not res!863941)) b!1932276))

(assert (= (or b!1932273 b!1932279 b!1932281) bm!118873))

(assert (=> b!1932276 m!2368369))

(declare-fun m!2370817 () Bool)

(assert (=> b!1932276 m!2370817))

(assert (=> bm!118873 m!2368369))

(declare-fun m!2370819 () Bool)

(assert (=> bm!118873 m!2370819))

(assert (=> b!1932274 m!2368369))

(assert (=> b!1932274 m!2370817))

(assert (=> d!589434 m!2368369))

(assert (=> d!589434 m!2370819))

(declare-fun m!2370821 () Bool)

(assert (=> d!589434 m!2370821))

(assert (=> b!1932283 m!2368369))

(declare-fun m!2370823 () Bool)

(assert (=> b!1932283 m!2370823))

(assert (=> b!1932283 m!2370823))

(declare-fun m!2370825 () Bool)

(assert (=> b!1932283 m!2370825))

(declare-fun m!2370827 () Bool)

(assert (=> b!1932285 m!2370827))

(assert (=> b!1932278 m!2368369))

(assert (=> b!1932278 m!2370817))

(assert (=> b!1932278 m!2370817))

(declare-fun m!2370829 () Bool)

(assert (=> b!1932278 m!2370829))

(assert (=> b!1932278 m!2368369))

(assert (=> b!1932278 m!2370823))

(assert (=> b!1932278 m!2370829))

(assert (=> b!1932278 m!2370823))

(declare-fun m!2370831 () Bool)

(assert (=> b!1932278 m!2370831))

(assert (=> b!1932284 m!2368369))

(assert (=> b!1932284 m!2370823))

(assert (=> b!1932284 m!2370823))

(assert (=> b!1932284 m!2370825))

(assert (=> b!1930667 d!589434))

(assert (=> b!1930667 d!588910))

(assert (=> b!1930667 d!588904))

(assert (=> b!1930667 d!588906))

(declare-fun d!589436 () Bool)

(declare-fun res!863948 () Bool)

(declare-fun e!1235031 () Bool)

(assert (=> d!589436 (=> (not res!863948) (not e!1235031))))

(assert (=> d!589436 (= res!863948 (not (isEmpty!13541 (originalCharacters!4745 (h!27358 (t!180084 tokens!598))))))))

(assert (=> d!589436 (= (inv!29042 (h!27358 (t!180084 tokens!598))) e!1235031)))

(declare-fun b!1932287 () Bool)

(declare-fun res!863949 () Bool)

(assert (=> b!1932287 (=> (not res!863949) (not e!1235031))))

(assert (=> b!1932287 (= res!863949 (= (originalCharacters!4745 (h!27358 (t!180084 tokens!598))) (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))) (value!123824 (h!27358 (t!180084 tokens!598)))))))))

(declare-fun b!1932288 () Bool)

(assert (=> b!1932288 (= e!1235031 (= (size!17128 (h!27358 (t!180084 tokens!598))) (size!17131 (originalCharacters!4745 (h!27358 (t!180084 tokens!598))))))))

(assert (= (and d!589436 res!863948) b!1932287))

(assert (= (and b!1932287 res!863949) b!1932288))

(declare-fun b_lambda!64205 () Bool)

(assert (=> (not b_lambda!64205) (not b!1932287)))

(assert (=> b!1932287 t!180415))

(declare-fun b_and!152013 () Bool)

(assert (= b_and!152011 (and (=> t!180415 result!143376) b_and!152013)))

(assert (=> b!1932287 t!180409))

(declare-fun b_and!152015 () Bool)

(assert (= b_and!152005 (and (=> t!180409 result!143370) b_and!152015)))

(assert (=> b!1932287 t!180411))

(declare-fun b_and!152017 () Bool)

(assert (= b_and!152007 (and (=> t!180411 result!143372) b_and!152017)))

(assert (=> b!1932287 t!180413))

(declare-fun b_and!152019 () Bool)

(assert (= b_and!152009 (and (=> t!180413 result!143374) b_and!152019)))

(assert (=> b!1932287 t!180407))

(declare-fun b_and!152021 () Bool)

(assert (= b_and!152003 (and (=> t!180407 result!143368) b_and!152021)))

(declare-fun m!2370833 () Bool)

(assert (=> d!589436 m!2370833))

(assert (=> b!1932287 m!2370589))

(assert (=> b!1932287 m!2370589))

(declare-fun m!2370835 () Bool)

(assert (=> b!1932287 m!2370835))

(declare-fun m!2370837 () Bool)

(assert (=> b!1932288 m!2370837))

(assert (=> b!1930996 d!589436))

(assert (=> b!1930415 d!589400))

(assert (=> b!1930415 d!588594))

(declare-fun d!589438 () Bool)

(declare-fun c!314373 () Bool)

(assert (=> d!589438 (= c!314373 ((_ is Node!7330) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))))))

(declare-fun e!1235032 () Bool)

(assert (=> d!589438 (= (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))) e!1235032)))

(declare-fun b!1932289 () Bool)

(assert (=> b!1932289 (= e!1235032 (inv!29050 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))))))

(declare-fun b!1932290 () Bool)

(declare-fun e!1235033 () Bool)

(assert (=> b!1932290 (= e!1235032 e!1235033)))

(declare-fun res!863950 () Bool)

(assert (=> b!1932290 (= res!863950 (not ((_ is Leaf!10762) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))))))))

(assert (=> b!1932290 (=> res!863950 e!1235033)))

(declare-fun b!1932291 () Bool)

(assert (=> b!1932291 (= e!1235033 (inv!29051 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))))))

(assert (= (and d!589438 c!314373) b!1932289))

(assert (= (and d!589438 (not c!314373)) b!1932290))

(assert (= (and b!1932290 (not res!863950)) b!1932291))

(declare-fun m!2370839 () Bool)

(assert (=> b!1932289 m!2370839))

(declare-fun m!2370841 () Bool)

(assert (=> b!1932291 m!2370841))

(assert (=> b!1930675 d!589438))

(declare-fun d!589440 () Bool)

(declare-fun c!314374 () Bool)

(assert (=> d!589440 (= c!314374 ((_ is Node!7330) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))))

(declare-fun e!1235034 () Bool)

(assert (=> d!589440 (= (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))) e!1235034)))

(declare-fun b!1932292 () Bool)

(assert (=> b!1932292 (= e!1235034 (inv!29050 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))))

(declare-fun b!1932293 () Bool)

(declare-fun e!1235035 () Bool)

(assert (=> b!1932293 (= e!1235034 e!1235035)))

(declare-fun res!863951 () Bool)

(assert (=> b!1932293 (= res!863951 (not ((_ is Leaf!10762) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))))))))

(assert (=> b!1932293 (=> res!863951 e!1235035)))

(declare-fun b!1932294 () Bool)

(assert (=> b!1932294 (= e!1235035 (inv!29051 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))))))

(assert (= (and d!589440 c!314374) b!1932292))

(assert (= (and d!589440 (not c!314374)) b!1932293))

(assert (= (and b!1932293 (not res!863951)) b!1932294))

(declare-fun m!2370843 () Bool)

(assert (=> b!1932292 m!2370843))

(declare-fun m!2370845 () Bool)

(assert (=> b!1932294 m!2370845))

(assert (=> b!1930395 d!589440))

(declare-fun b!1932296 () Bool)

(declare-fun e!1235036 () List!22037)

(declare-fun e!1235037 () List!22037)

(assert (=> b!1932296 (= e!1235036 e!1235037)))

(declare-fun c!314376 () Bool)

(assert (=> b!1932296 (= c!314376 ((_ is Leaf!10762) (c!313974 lt!739931)))))

(declare-fun b!1932295 () Bool)

(assert (=> b!1932295 (= e!1235036 Nil!21955)))

(declare-fun b!1932298 () Bool)

(assert (=> b!1932298 (= e!1235037 (++!5893 (list!8889 (left!17465 (c!313974 lt!739931))) (list!8889 (right!17795 (c!313974 lt!739931)))))))

(declare-fun d!589442 () Bool)

(declare-fun c!314375 () Bool)

(assert (=> d!589442 (= c!314375 ((_ is Empty!7330) (c!313974 lt!739931)))))

(assert (=> d!589442 (= (list!8889 (c!313974 lt!739931)) e!1235036)))

(declare-fun b!1932297 () Bool)

(assert (=> b!1932297 (= e!1235037 (list!8895 (xs!10224 (c!313974 lt!739931))))))

(assert (= (and d!589442 c!314375) b!1932295))

(assert (= (and d!589442 (not c!314375)) b!1932296))

(assert (= (and b!1932296 c!314376) b!1932297))

(assert (= (and b!1932296 (not c!314376)) b!1932298))

(declare-fun m!2370847 () Bool)

(assert (=> b!1932298 m!2370847))

(declare-fun m!2370849 () Bool)

(assert (=> b!1932298 m!2370849))

(assert (=> b!1932298 m!2370847))

(assert (=> b!1932298 m!2370849))

(declare-fun m!2370851 () Bool)

(assert (=> b!1932298 m!2370851))

(declare-fun m!2370853 () Bool)

(assert (=> b!1932297 m!2370853))

(assert (=> d!588630 d!589442))

(declare-fun b!1932300 () Bool)

(declare-fun e!1235038 () List!22037)

(declare-fun e!1235039 () List!22037)

(assert (=> b!1932300 (= e!1235038 e!1235039)))

(declare-fun c!314378 () Bool)

(assert (=> b!1932300 (= c!314378 ((_ is Leaf!10762) (c!313974 lt!739939)))))

(declare-fun b!1932299 () Bool)

(assert (=> b!1932299 (= e!1235038 Nil!21955)))

(declare-fun b!1932302 () Bool)

(assert (=> b!1932302 (= e!1235039 (++!5893 (list!8889 (left!17465 (c!313974 lt!739939))) (list!8889 (right!17795 (c!313974 lt!739939)))))))

(declare-fun d!589444 () Bool)

(declare-fun c!314377 () Bool)

(assert (=> d!589444 (= c!314377 ((_ is Empty!7330) (c!313974 lt!739939)))))

(assert (=> d!589444 (= (list!8889 (c!313974 lt!739939)) e!1235038)))

(declare-fun b!1932301 () Bool)

(assert (=> b!1932301 (= e!1235039 (list!8895 (xs!10224 (c!313974 lt!739939))))))

(assert (= (and d!589444 c!314377) b!1932299))

(assert (= (and d!589444 (not c!314377)) b!1932300))

(assert (= (and b!1932300 c!314378) b!1932301))

(assert (= (and b!1932300 (not c!314378)) b!1932302))

(declare-fun m!2370855 () Bool)

(assert (=> b!1932302 m!2370855))

(declare-fun m!2370857 () Bool)

(assert (=> b!1932302 m!2370857))

(assert (=> b!1932302 m!2370855))

(assert (=> b!1932302 m!2370857))

(declare-fun m!2370859 () Bool)

(assert (=> b!1932302 m!2370859))

(declare-fun m!2370861 () Bool)

(assert (=> b!1932301 m!2370861))

(assert (=> d!588558 d!589444))

(declare-fun b!1932305 () Bool)

(declare-fun b_free!55349 () Bool)

(declare-fun b_next!56053 () Bool)

(assert (=> b!1932305 (= b_free!55349 (not b_next!56053))))

(declare-fun t!180418 () Bool)

(declare-fun tb!118733 () Bool)

(assert (=> (and b!1932305 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180418) tb!118733))

(declare-fun result!143378 () Bool)

(assert (= result!143378 result!143264))

(assert (=> d!589122 t!180418))

(declare-fun t!180420 () Bool)

(declare-fun tb!118735 () Bool)

(assert (=> (and b!1932305 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180420) tb!118735))

(declare-fun result!143380 () Bool)

(assert (= result!143380 result!143070))

(assert (=> d!588640 t!180420))

(assert (=> d!588570 t!180420))

(declare-fun t!180422 () Bool)

(declare-fun tb!118737 () Bool)

(assert (=> (and b!1932305 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180422) tb!118737))

(declare-fun result!143382 () Bool)

(assert (= result!143382 result!143096))

(assert (=> d!588640 t!180422))

(declare-fun tb!118739 () Bool)

(declare-fun t!180424 () Bool)

(assert (=> (and b!1932305 (= (toValue!5575 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180424) tb!118739))

(declare-fun result!143384 () Bool)

(assert (= result!143384 result!143274))

(assert (=> d!589130 t!180424))

(declare-fun tp!551337 () Bool)

(declare-fun b_and!152023 () Bool)

(assert (=> b!1932305 (= tp!551337 (and (=> t!180418 result!143378) (=> t!180422 result!143382) (=> t!180420 result!143380) (=> t!180424 result!143384) b_and!152023))))

(declare-fun b_free!55351 () Bool)

(declare-fun b_next!56055 () Bool)

(assert (=> b!1932305 (= b_free!55351 (not b_next!56055))))

(declare-fun tb!118741 () Bool)

(declare-fun t!180426 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) t!180426) tb!118741))

(declare-fun result!143386 () Bool)

(assert (= result!143386 result!143284))

(assert (=> d!589208 t!180426))

(declare-fun t!180428 () Bool)

(declare-fun tb!118743 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0))))) t!180428) tb!118743))

(declare-fun result!143388 () Bool)

(assert (= result!143388 result!143254))

(assert (=> d!589038 t!180428))

(declare-fun t!180430 () Bool)

(declare-fun tb!118745 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) t!180430) tb!118745))

(declare-fun result!143390 () Bool)

(assert (= result!143390 result!143368))

(assert (=> b!1932287 t!180430))

(declare-fun t!180432 () Bool)

(declare-fun tb!118747 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180432) tb!118747))

(declare-fun result!143392 () Bool)

(assert (= result!143392 result!143090))

(assert (=> b!1930764 t!180432))

(declare-fun tb!118749 () Bool)

(declare-fun t!180434 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) t!180434) tb!118749))

(declare-fun result!143394 () Bool)

(assert (= result!143394 result!143102))

(assert (=> b!1930772 t!180434))

(assert (=> d!589378 t!180430))

(declare-fun tb!118751 () Bool)

(declare-fun t!180436 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) t!180436) tb!118751))

(declare-fun result!143396 () Bool)

(assert (= result!143396 result!143358))

(assert (=> d!589344 t!180436))

(declare-fun tb!118753 () Bool)

(declare-fun t!180438 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180438) tb!118753))

(declare-fun result!143398 () Bool)

(assert (= result!143398 result!143224))

(assert (=> d!588918 t!180438))

(declare-fun t!180440 () Bool)

(declare-fun tb!118755 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180440) tb!118755))

(declare-fun result!143400 () Bool)

(assert (= result!143400 result!143062))

(assert (=> d!588570 t!180440))

(assert (=> d!588646 t!180434))

(declare-fun tb!118757 () Bool)

(declare-fun t!180442 () Bool)

(assert (=> (and b!1932305 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180442) tb!118757))

(declare-fun result!143402 () Bool)

(assert (= result!143402 result!143214))

(assert (=> d!588906 t!180442))

(assert (=> d!588636 t!180432))

(declare-fun b_and!152025 () Bool)

(declare-fun tp!551339 () Bool)

(assert (=> b!1932305 (= tp!551339 (and (=> t!180438 result!143398) (=> t!180442 result!143402) (=> t!180434 result!143394) (=> t!180430 result!143390) (=> t!180432 result!143392) (=> t!180426 result!143386) (=> t!180428 result!143388) (=> t!180436 result!143396) (=> t!180440 result!143400) b_and!152025))))

(declare-fun e!1235040 () Bool)

(assert (=> b!1932305 (= e!1235040 (and tp!551337 tp!551339))))

(declare-fun b!1932304 () Bool)

(declare-fun e!1235043 () Bool)

(declare-fun tp!551340 () Bool)

(assert (=> b!1932304 (= e!1235043 (and tp!551340 (inv!29039 (tag!4388 (h!27357 (t!180083 (t!180083 rules!3198))))) (inv!29043 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) e!1235040))))

(declare-fun b!1932303 () Bool)

(declare-fun e!1235041 () Bool)

(declare-fun tp!551338 () Bool)

(assert (=> b!1932303 (= e!1235041 (and e!1235043 tp!551338))))

(assert (=> b!1930974 (= tp!551181 e!1235041)))

(assert (= b!1932304 b!1932305))

(assert (= b!1932303 b!1932304))

(assert (= (and b!1930974 ((_ is Cons!21956) (t!180083 (t!180083 rules!3198)))) b!1932303))

(declare-fun m!2370863 () Bool)

(assert (=> b!1932304 m!2370863))

(declare-fun m!2370865 () Bool)

(assert (=> b!1932304 m!2370865))

(declare-fun b!1932309 () Bool)

(declare-fun e!1235044 () Bool)

(declare-fun tp!551342 () Bool)

(declare-fun tp!551344 () Bool)

(assert (=> b!1932309 (= e!1235044 (and tp!551342 tp!551344))))

(declare-fun b!1932307 () Bool)

(declare-fun tp!551343 () Bool)

(declare-fun tp!551341 () Bool)

(assert (=> b!1932307 (= e!1235044 (and tp!551343 tp!551341))))

(declare-fun b!1932308 () Bool)

(declare-fun tp!551345 () Bool)

(assert (=> b!1932308 (= e!1235044 tp!551345)))

(assert (=> b!1930963 (= tp!551169 e!1235044)))

(declare-fun b!1932306 () Bool)

(assert (=> b!1932306 (= e!1235044 tp_is_empty!9145)))

(assert (= (and b!1930963 ((_ is ElementMatch!5363) (regOne!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932306))

(assert (= (and b!1930963 ((_ is Concat!9438) (regOne!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932307))

(assert (= (and b!1930963 ((_ is Star!5363) (regOne!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932308))

(assert (= (and b!1930963 ((_ is Union!5363) (regOne!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932309))

(declare-fun b!1932313 () Bool)

(declare-fun e!1235045 () Bool)

(declare-fun tp!551347 () Bool)

(declare-fun tp!551349 () Bool)

(assert (=> b!1932313 (= e!1235045 (and tp!551347 tp!551349))))

(declare-fun b!1932311 () Bool)

(declare-fun tp!551348 () Bool)

(declare-fun tp!551346 () Bool)

(assert (=> b!1932311 (= e!1235045 (and tp!551348 tp!551346))))

(declare-fun b!1932312 () Bool)

(declare-fun tp!551350 () Bool)

(assert (=> b!1932312 (= e!1235045 tp!551350)))

(assert (=> b!1930963 (= tp!551167 e!1235045)))

(declare-fun b!1932310 () Bool)

(assert (=> b!1932310 (= e!1235045 tp_is_empty!9145)))

(assert (= (and b!1930963 ((_ is ElementMatch!5363) (regTwo!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932310))

(assert (= (and b!1930963 ((_ is Concat!9438) (regTwo!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932311))

(assert (= (and b!1930963 ((_ is Star!5363) (regTwo!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932312))

(assert (= (and b!1930963 ((_ is Union!5363) (regTwo!11238 (regex!3938 (rule!6145 separatorToken!354))))) b!1932313))

(declare-fun b!1932317 () Bool)

(declare-fun e!1235046 () Bool)

(declare-fun tp!551352 () Bool)

(declare-fun tp!551354 () Bool)

(assert (=> b!1932317 (= e!1235046 (and tp!551352 tp!551354))))

(declare-fun b!1932315 () Bool)

(declare-fun tp!551353 () Bool)

(declare-fun tp!551351 () Bool)

(assert (=> b!1932315 (= e!1235046 (and tp!551353 tp!551351))))

(declare-fun b!1932316 () Bool)

(declare-fun tp!551355 () Bool)

(assert (=> b!1932316 (= e!1235046 tp!551355)))

(assert (=> b!1930975 (= tp!551183 e!1235046)))

(declare-fun b!1932314 () Bool)

(assert (=> b!1932314 (= e!1235046 tp_is_empty!9145)))

(assert (= (and b!1930975 ((_ is ElementMatch!5363) (regex!3938 (h!27357 (t!180083 rules!3198))))) b!1932314))

(assert (= (and b!1930975 ((_ is Concat!9438) (regex!3938 (h!27357 (t!180083 rules!3198))))) b!1932315))

(assert (= (and b!1930975 ((_ is Star!5363) (regex!3938 (h!27357 (t!180083 rules!3198))))) b!1932316))

(assert (= (and b!1930975 ((_ is Union!5363) (regex!3938 (h!27357 (t!180083 rules!3198))))) b!1932317))

(declare-fun b!1932318 () Bool)

(declare-fun e!1235047 () Bool)

(declare-fun tp!551356 () Bool)

(assert (=> b!1932318 (= e!1235047 (and tp_is_empty!9145 tp!551356))))

(assert (=> b!1930981 (= tp!551186 e!1235047)))

(assert (= (and b!1930981 ((_ is Cons!21955) (t!180082 (originalCharacters!4745 separatorToken!354)))) b!1932318))

(declare-fun b!1932322 () Bool)

(declare-fun e!1235048 () Bool)

(declare-fun tp!551358 () Bool)

(declare-fun tp!551360 () Bool)

(assert (=> b!1932322 (= e!1235048 (and tp!551358 tp!551360))))

(declare-fun b!1932320 () Bool)

(declare-fun tp!551359 () Bool)

(declare-fun tp!551357 () Bool)

(assert (=> b!1932320 (= e!1235048 (and tp!551359 tp!551357))))

(declare-fun b!1932321 () Bool)

(declare-fun tp!551361 () Bool)

(assert (=> b!1932321 (= e!1235048 tp!551361)))

(assert (=> b!1930998 (= tp!551205 e!1235048)))

(declare-fun b!1932319 () Bool)

(assert (=> b!1932319 (= e!1235048 tp_is_empty!9145)))

(assert (= (and b!1930998 ((_ is ElementMatch!5363) (regex!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) b!1932319))

(assert (= (and b!1930998 ((_ is Concat!9438) (regex!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) b!1932320))

(assert (= (and b!1930998 ((_ is Star!5363) (regex!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) b!1932321))

(assert (= (and b!1930998 ((_ is Union!5363) (regex!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) b!1932322))

(declare-fun b!1932326 () Bool)

(declare-fun e!1235049 () Bool)

(declare-fun tp!551363 () Bool)

(declare-fun tp!551365 () Bool)

(assert (=> b!1932326 (= e!1235049 (and tp!551363 tp!551365))))

(declare-fun b!1932324 () Bool)

(declare-fun tp!551364 () Bool)

(declare-fun tp!551362 () Bool)

(assert (=> b!1932324 (= e!1235049 (and tp!551364 tp!551362))))

(declare-fun b!1932325 () Bool)

(declare-fun tp!551366 () Bool)

(assert (=> b!1932325 (= e!1235049 tp!551366)))

(assert (=> b!1931004 (= tp!551209 e!1235049)))

(declare-fun b!1932323 () Bool)

(assert (=> b!1932323 (= e!1235049 tp_is_empty!9145)))

(assert (= (and b!1931004 ((_ is ElementMatch!5363) (regOne!11239 (regex!3938 (h!27357 rules!3198))))) b!1932323))

(assert (= (and b!1931004 ((_ is Concat!9438) (regOne!11239 (regex!3938 (h!27357 rules!3198))))) b!1932324))

(assert (= (and b!1931004 ((_ is Star!5363) (regOne!11239 (regex!3938 (h!27357 rules!3198))))) b!1932325))

(assert (= (and b!1931004 ((_ is Union!5363) (regOne!11239 (regex!3938 (h!27357 rules!3198))))) b!1932326))

(declare-fun b!1932330 () Bool)

(declare-fun e!1235050 () Bool)

(declare-fun tp!551368 () Bool)

(declare-fun tp!551370 () Bool)

(assert (=> b!1932330 (= e!1235050 (and tp!551368 tp!551370))))

(declare-fun b!1932328 () Bool)

(declare-fun tp!551369 () Bool)

(declare-fun tp!551367 () Bool)

(assert (=> b!1932328 (= e!1235050 (and tp!551369 tp!551367))))

(declare-fun b!1932329 () Bool)

(declare-fun tp!551371 () Bool)

(assert (=> b!1932329 (= e!1235050 tp!551371)))

(assert (=> b!1931004 (= tp!551211 e!1235050)))

(declare-fun b!1932327 () Bool)

(assert (=> b!1932327 (= e!1235050 tp_is_empty!9145)))

(assert (= (and b!1931004 ((_ is ElementMatch!5363) (regTwo!11239 (regex!3938 (h!27357 rules!3198))))) b!1932327))

(assert (= (and b!1931004 ((_ is Concat!9438) (regTwo!11239 (regex!3938 (h!27357 rules!3198))))) b!1932328))

(assert (= (and b!1931004 ((_ is Star!5363) (regTwo!11239 (regex!3938 (h!27357 rules!3198))))) b!1932329))

(assert (= (and b!1931004 ((_ is Union!5363) (regTwo!11239 (regex!3938 (h!27357 rules!3198))))) b!1932330))

(declare-fun b!1932334 () Bool)

(declare-fun e!1235051 () Bool)

(declare-fun tp!551373 () Bool)

(declare-fun tp!551375 () Bool)

(assert (=> b!1932334 (= e!1235051 (and tp!551373 tp!551375))))

(declare-fun b!1932332 () Bool)

(declare-fun tp!551374 () Bool)

(declare-fun tp!551372 () Bool)

(assert (=> b!1932332 (= e!1235051 (and tp!551374 tp!551372))))

(declare-fun b!1932333 () Bool)

(declare-fun tp!551376 () Bool)

(assert (=> b!1932333 (= e!1235051 tp!551376)))

(assert (=> b!1930964 (= tp!551171 e!1235051)))

(declare-fun b!1932331 () Bool)

(assert (=> b!1932331 (= e!1235051 tp_is_empty!9145)))

(assert (= (and b!1930964 ((_ is ElementMatch!5363) (reg!5692 (regex!3938 (rule!6145 separatorToken!354))))) b!1932331))

(assert (= (and b!1930964 ((_ is Concat!9438) (reg!5692 (regex!3938 (rule!6145 separatorToken!354))))) b!1932332))

(assert (= (and b!1930964 ((_ is Star!5363) (reg!5692 (regex!3938 (rule!6145 separatorToken!354))))) b!1932333))

(assert (= (and b!1930964 ((_ is Union!5363) (reg!5692 (regex!3938 (rule!6145 separatorToken!354))))) b!1932334))

(declare-fun tp!551383 () Bool)

(declare-fun b!1932343 () Bool)

(declare-fun e!1235056 () Bool)

(declare-fun tp!551385 () Bool)

(assert (=> b!1932343 (= e!1235056 (and (inv!29046 (left!17465 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))))) tp!551385 (inv!29046 (right!17795 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))))) tp!551383))))

(declare-fun b!1932345 () Bool)

(declare-fun e!1235057 () Bool)

(declare-fun tp!551384 () Bool)

(assert (=> b!1932345 (= e!1235057 tp!551384)))

(declare-fun b!1932344 () Bool)

(declare-fun inv!29053 (IArray!14665) Bool)

(assert (=> b!1932344 (= e!1235056 (and (inv!29053 (xs!10224 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))))) e!1235057))))

(assert (=> b!1930693 (= tp!551100 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354)))) e!1235056))))

(assert (= (and b!1930693 ((_ is Node!7330) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))))) b!1932343))

(assert (= b!1932344 b!1932345))

(assert (= (and b!1930693 ((_ is Leaf!10762) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (value!123824 separatorToken!354))))) b!1932344))

(declare-fun m!2370867 () Bool)

(assert (=> b!1932343 m!2370867))

(declare-fun m!2370869 () Bool)

(assert (=> b!1932343 m!2370869))

(declare-fun m!2370871 () Bool)

(assert (=> b!1932344 m!2370871))

(assert (=> b!1930693 m!2368425))

(declare-fun b!1932349 () Bool)

(declare-fun e!1235058 () Bool)

(declare-fun tp!551387 () Bool)

(declare-fun tp!551389 () Bool)

(assert (=> b!1932349 (= e!1235058 (and tp!551387 tp!551389))))

(declare-fun b!1932347 () Bool)

(declare-fun tp!551388 () Bool)

(declare-fun tp!551386 () Bool)

(assert (=> b!1932347 (= e!1235058 (and tp!551388 tp!551386))))

(declare-fun b!1932348 () Bool)

(declare-fun tp!551390 () Bool)

(assert (=> b!1932348 (= e!1235058 tp!551390)))

(assert (=> b!1930965 (= tp!551168 e!1235058)))

(declare-fun b!1932346 () Bool)

(assert (=> b!1932346 (= e!1235058 tp_is_empty!9145)))

(assert (= (and b!1930965 ((_ is ElementMatch!5363) (regOne!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932346))

(assert (= (and b!1930965 ((_ is Concat!9438) (regOne!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932347))

(assert (= (and b!1930965 ((_ is Star!5363) (regOne!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932348))

(assert (= (and b!1930965 ((_ is Union!5363) (regOne!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932349))

(declare-fun b!1932353 () Bool)

(declare-fun e!1235059 () Bool)

(declare-fun tp!551392 () Bool)

(declare-fun tp!551394 () Bool)

(assert (=> b!1932353 (= e!1235059 (and tp!551392 tp!551394))))

(declare-fun b!1932351 () Bool)

(declare-fun tp!551393 () Bool)

(declare-fun tp!551391 () Bool)

(assert (=> b!1932351 (= e!1235059 (and tp!551393 tp!551391))))

(declare-fun b!1932352 () Bool)

(declare-fun tp!551395 () Bool)

(assert (=> b!1932352 (= e!1235059 tp!551395)))

(assert (=> b!1930965 (= tp!551170 e!1235059)))

(declare-fun b!1932350 () Bool)

(assert (=> b!1932350 (= e!1235059 tp_is_empty!9145)))

(assert (= (and b!1930965 ((_ is ElementMatch!5363) (regTwo!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932350))

(assert (= (and b!1930965 ((_ is Concat!9438) (regTwo!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932351))

(assert (= (and b!1930965 ((_ is Star!5363) (regTwo!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932352))

(assert (= (and b!1930965 ((_ is Union!5363) (regTwo!11239 (regex!3938 (rule!6145 separatorToken!354))))) b!1932353))

(declare-fun b!1932357 () Bool)

(declare-fun e!1235060 () Bool)

(declare-fun tp!551397 () Bool)

(declare-fun tp!551399 () Bool)

(assert (=> b!1932357 (= e!1235060 (and tp!551397 tp!551399))))

(declare-fun b!1932355 () Bool)

(declare-fun tp!551398 () Bool)

(declare-fun tp!551396 () Bool)

(assert (=> b!1932355 (= e!1235060 (and tp!551398 tp!551396))))

(declare-fun b!1932356 () Bool)

(declare-fun tp!551400 () Bool)

(assert (=> b!1932356 (= e!1235060 tp!551400)))

(assert (=> b!1930985 (= tp!551188 e!1235060)))

(declare-fun b!1932354 () Bool)

(assert (=> b!1932354 (= e!1235060 tp_is_empty!9145)))

(assert (= (and b!1930985 ((_ is ElementMatch!5363) (regOne!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932354))

(assert (= (and b!1930985 ((_ is Concat!9438) (regOne!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932355))

(assert (= (and b!1930985 ((_ is Star!5363) (regOne!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932356))

(assert (= (and b!1930985 ((_ is Union!5363) (regOne!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932357))

(declare-fun b!1932361 () Bool)

(declare-fun e!1235061 () Bool)

(declare-fun tp!551402 () Bool)

(declare-fun tp!551404 () Bool)

(assert (=> b!1932361 (= e!1235061 (and tp!551402 tp!551404))))

(declare-fun b!1932359 () Bool)

(declare-fun tp!551403 () Bool)

(declare-fun tp!551401 () Bool)

(assert (=> b!1932359 (= e!1235061 (and tp!551403 tp!551401))))

(declare-fun b!1932360 () Bool)

(declare-fun tp!551405 () Bool)

(assert (=> b!1932360 (= e!1235061 tp!551405)))

(assert (=> b!1930985 (= tp!551190 e!1235061)))

(declare-fun b!1932358 () Bool)

(assert (=> b!1932358 (= e!1235061 tp_is_empty!9145)))

(assert (= (and b!1930985 ((_ is ElementMatch!5363) (regTwo!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932358))

(assert (= (and b!1930985 ((_ is Concat!9438) (regTwo!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932359))

(assert (= (and b!1930985 ((_ is Star!5363) (regTwo!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932360))

(assert (= (and b!1930985 ((_ is Union!5363) (regTwo!11239 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932361))

(declare-fun b!1932365 () Bool)

(declare-fun e!1235062 () Bool)

(declare-fun tp!551407 () Bool)

(declare-fun tp!551409 () Bool)

(assert (=> b!1932365 (= e!1235062 (and tp!551407 tp!551409))))

(declare-fun b!1932363 () Bool)

(declare-fun tp!551408 () Bool)

(declare-fun tp!551406 () Bool)

(assert (=> b!1932363 (= e!1235062 (and tp!551408 tp!551406))))

(declare-fun b!1932364 () Bool)

(declare-fun tp!551410 () Bool)

(assert (=> b!1932364 (= e!1235062 tp!551410)))

(assert (=> b!1930984 (= tp!551191 e!1235062)))

(declare-fun b!1932362 () Bool)

(assert (=> b!1932362 (= e!1235062 tp_is_empty!9145)))

(assert (= (and b!1930984 ((_ is ElementMatch!5363) (reg!5692 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932362))

(assert (= (and b!1930984 ((_ is Concat!9438) (reg!5692 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932363))

(assert (= (and b!1930984 ((_ is Star!5363) (reg!5692 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932364))

(assert (= (and b!1930984 ((_ is Union!5363) (reg!5692 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932365))

(declare-fun b!1932366 () Bool)

(declare-fun e!1235063 () Bool)

(declare-fun tp!551411 () Bool)

(assert (=> b!1932366 (= e!1235063 (and tp_is_empty!9145 tp!551411))))

(assert (=> b!1931000 (= tp!551207 e!1235063)))

(assert (= (and b!1931000 ((_ is Cons!21955) (t!180082 (originalCharacters!4745 (h!27358 tokens!598))))) b!1932366))

(declare-fun b!1932370 () Bool)

(declare-fun e!1235064 () Bool)

(declare-fun tp!551413 () Bool)

(declare-fun tp!551415 () Bool)

(assert (=> b!1932370 (= e!1235064 (and tp!551413 tp!551415))))

(declare-fun b!1932368 () Bool)

(declare-fun tp!551414 () Bool)

(declare-fun tp!551412 () Bool)

(assert (=> b!1932368 (= e!1235064 (and tp!551414 tp!551412))))

(declare-fun b!1932369 () Bool)

(declare-fun tp!551416 () Bool)

(assert (=> b!1932369 (= e!1235064 tp!551416)))

(assert (=> b!1930983 (= tp!551189 e!1235064)))

(declare-fun b!1932367 () Bool)

(assert (=> b!1932367 (= e!1235064 tp_is_empty!9145)))

(assert (= (and b!1930983 ((_ is ElementMatch!5363) (regOne!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932367))

(assert (= (and b!1930983 ((_ is Concat!9438) (regOne!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932368))

(assert (= (and b!1930983 ((_ is Star!5363) (regOne!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932369))

(assert (= (and b!1930983 ((_ is Union!5363) (regOne!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932370))

(declare-fun b!1932374 () Bool)

(declare-fun e!1235065 () Bool)

(declare-fun tp!551418 () Bool)

(declare-fun tp!551420 () Bool)

(assert (=> b!1932374 (= e!1235065 (and tp!551418 tp!551420))))

(declare-fun b!1932372 () Bool)

(declare-fun tp!551419 () Bool)

(declare-fun tp!551417 () Bool)

(assert (=> b!1932372 (= e!1235065 (and tp!551419 tp!551417))))

(declare-fun b!1932373 () Bool)

(declare-fun tp!551421 () Bool)

(assert (=> b!1932373 (= e!1235065 tp!551421)))

(assert (=> b!1930983 (= tp!551187 e!1235065)))

(declare-fun b!1932371 () Bool)

(assert (=> b!1932371 (= e!1235065 tp_is_empty!9145)))

(assert (= (and b!1930983 ((_ is ElementMatch!5363) (regTwo!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932371))

(assert (= (and b!1930983 ((_ is Concat!9438) (regTwo!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932372))

(assert (= (and b!1930983 ((_ is Star!5363) (regTwo!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932373))

(assert (= (and b!1930983 ((_ is Union!5363) (regTwo!11238 (regex!3938 (rule!6145 (h!27358 tokens!598)))))) b!1932374))

(declare-fun b!1932378 () Bool)

(declare-fun b_free!55353 () Bool)

(declare-fun b_next!56057 () Bool)

(assert (=> b!1932378 (= b_free!55353 (not b_next!56057))))

(declare-fun tb!118759 () Bool)

(declare-fun t!180444 () Bool)

(assert (=> (and b!1932378 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180444) tb!118759))

(declare-fun result!143406 () Bool)

(assert (= result!143406 result!143264))

(assert (=> d!589122 t!180444))

(declare-fun t!180446 () Bool)

(declare-fun tb!118761 () Bool)

(assert (=> (and b!1932378 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180446) tb!118761))

(declare-fun result!143408 () Bool)

(assert (= result!143408 result!143070))

(assert (=> d!588640 t!180446))

(assert (=> d!588570 t!180446))

(declare-fun t!180448 () Bool)

(declare-fun tb!118763 () Bool)

(assert (=> (and b!1932378 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180448) tb!118763))

(declare-fun result!143410 () Bool)

(assert (= result!143410 result!143096))

(assert (=> d!588640 t!180448))

(declare-fun tb!118765 () Bool)

(declare-fun t!180450 () Bool)

(assert (=> (and b!1932378 (= (toValue!5575 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toValue!5575 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180450) tb!118765))

(declare-fun result!143412 () Bool)

(assert (= result!143412 result!143274))

(assert (=> d!589130 t!180450))

(declare-fun b_and!152027 () Bool)

(declare-fun tp!551424 () Bool)

(assert (=> b!1932378 (= tp!551424 (and (=> t!180446 result!143408) (=> t!180448 result!143410) (=> t!180450 result!143412) (=> t!180444 result!143406) b_and!152027))))

(declare-fun b_free!55355 () Bool)

(declare-fun b_next!56059 () Bool)

(assert (=> b!1932378 (= b_free!55355 (not b_next!56059))))

(declare-fun t!180452 () Bool)

(declare-fun tb!118767 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (Cons!21957 (h!27358 tokens!598) Nil!21957)))))) t!180452) tb!118767))

(declare-fun result!143414 () Bool)

(assert (= result!143414 result!143284))

(assert (=> d!589208 t!180452))

(declare-fun t!180454 () Bool)

(declare-fun tb!118769 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (apply!5707 lt!739941 0))))) t!180454) tb!118769))

(declare-fun result!143416 () Bool)

(assert (= result!143416 result!143254))

(assert (=> d!589038 t!180454))

(declare-fun t!180456 () Bool)

(declare-fun tb!118771 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598)))))) t!180456) tb!118771))

(declare-fun result!143418 () Bool)

(assert (= result!143418 result!143368))

(assert (=> b!1932287 t!180456))

(declare-fun t!180458 () Bool)

(declare-fun tb!118773 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180458) tb!118773))

(declare-fun result!143420 () Bool)

(assert (= result!143420 result!143090))

(assert (=> b!1930764 t!180458))

(declare-fun t!180460 () Bool)

(declare-fun tb!118775 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354)))) t!180460) tb!118775))

(declare-fun result!143422 () Bool)

(assert (= result!143422 result!143102))

(assert (=> b!1930772 t!180460))

(assert (=> d!589378 t!180456))

(declare-fun tb!118777 () Bool)

(declare-fun t!180462 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (ite c!314043 (h!27358 (t!180084 tokens!598)) (ite c!314045 separatorToken!354 (h!27358 (t!180084 tokens!598)))))))) t!180462) tb!118777))

(declare-fun result!143424 () Bool)

(assert (= result!143424 result!143358))

(assert (=> d!589344 t!180462))

(declare-fun tb!118779 () Bool)

(declare-fun t!180464 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740027)))))) t!180464) tb!118779))

(declare-fun result!143426 () Bool)

(assert (= result!143426 result!143224))

(assert (=> d!588918 t!180464))

(declare-fun t!180466 () Bool)

(declare-fun tb!118781 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598))))) t!180466) tb!118781))

(declare-fun result!143428 () Bool)

(assert (= result!143428 result!143062))

(assert (=> d!588570 t!180466))

(assert (=> d!588646 t!180460))

(declare-fun t!180468 () Bool)

(declare-fun tb!118783 () Bool)

(assert (=> (and b!1932378 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (_1!11756 (get!6918 lt!740098)))))) t!180468) tb!118783))

(declare-fun result!143430 () Bool)

(assert (= result!143430 result!143214))

(assert (=> d!588906 t!180468))

(assert (=> d!588636 t!180458))

(declare-fun tp!551422 () Bool)

(declare-fun b_and!152029 () Bool)

(assert (=> b!1932378 (= tp!551422 (and (=> t!180462 result!143424) (=> t!180464 result!143426) (=> t!180466 result!143428) (=> t!180460 result!143422) (=> t!180458 result!143420) (=> t!180468 result!143430) (=> t!180452 result!143414) (=> t!180456 result!143418) (=> t!180454 result!143416) b_and!152029))))

(declare-fun e!1235070 () Bool)

(declare-fun tp!551426 () Bool)

(declare-fun e!1235068 () Bool)

(declare-fun b!1932376 () Bool)

(assert (=> b!1932376 (= e!1235070 (and (inv!21 (value!123824 (h!27358 (t!180084 (t!180084 tokens!598))))) e!1235068 tp!551426))))

(declare-fun b!1932377 () Bool)

(declare-fun tp!551425 () Bool)

(declare-fun e!1235071 () Bool)

(assert (=> b!1932377 (= e!1235068 (and tp!551425 (inv!29039 (tag!4388 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (inv!29043 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) e!1235071))))

(declare-fun e!1235067 () Bool)

(declare-fun b!1932375 () Bool)

(declare-fun tp!551423 () Bool)

(assert (=> b!1932375 (= e!1235067 (and (inv!29042 (h!27358 (t!180084 (t!180084 tokens!598)))) e!1235070 tp!551423))))

(assert (=> b!1930996 (= tp!551203 e!1235067)))

(assert (=> b!1932378 (= e!1235071 (and tp!551424 tp!551422))))

(assert (= b!1932377 b!1932378))

(assert (= b!1932376 b!1932377))

(assert (= b!1932375 b!1932376))

(assert (= (and b!1930996 ((_ is Cons!21957) (t!180084 (t!180084 tokens!598)))) b!1932375))

(declare-fun m!2370873 () Bool)

(assert (=> b!1932376 m!2370873))

(declare-fun m!2370875 () Bool)

(assert (=> b!1932377 m!2370875))

(declare-fun m!2370877 () Bool)

(assert (=> b!1932377 m!2370877))

(declare-fun m!2370879 () Bool)

(assert (=> b!1932375 m!2370879))

(declare-fun b!1932382 () Bool)

(declare-fun e!1235072 () Bool)

(declare-fun tp!551428 () Bool)

(declare-fun tp!551430 () Bool)

(assert (=> b!1932382 (= e!1235072 (and tp!551428 tp!551430))))

(declare-fun b!1932380 () Bool)

(declare-fun tp!551429 () Bool)

(declare-fun tp!551427 () Bool)

(assert (=> b!1932380 (= e!1235072 (and tp!551429 tp!551427))))

(declare-fun b!1932381 () Bool)

(declare-fun tp!551431 () Bool)

(assert (=> b!1932381 (= e!1235072 tp!551431)))

(assert (=> b!1931002 (= tp!551210 e!1235072)))

(declare-fun b!1932379 () Bool)

(assert (=> b!1932379 (= e!1235072 tp_is_empty!9145)))

(assert (= (and b!1931002 ((_ is ElementMatch!5363) (regOne!11238 (regex!3938 (h!27357 rules!3198))))) b!1932379))

(assert (= (and b!1931002 ((_ is Concat!9438) (regOne!11238 (regex!3938 (h!27357 rules!3198))))) b!1932380))

(assert (= (and b!1931002 ((_ is Star!5363) (regOne!11238 (regex!3938 (h!27357 rules!3198))))) b!1932381))

(assert (= (and b!1931002 ((_ is Union!5363) (regOne!11238 (regex!3938 (h!27357 rules!3198))))) b!1932382))

(declare-fun b!1932386 () Bool)

(declare-fun e!1235073 () Bool)

(declare-fun tp!551433 () Bool)

(declare-fun tp!551435 () Bool)

(assert (=> b!1932386 (= e!1235073 (and tp!551433 tp!551435))))

(declare-fun b!1932384 () Bool)

(declare-fun tp!551434 () Bool)

(declare-fun tp!551432 () Bool)

(assert (=> b!1932384 (= e!1235073 (and tp!551434 tp!551432))))

(declare-fun b!1932385 () Bool)

(declare-fun tp!551436 () Bool)

(assert (=> b!1932385 (= e!1235073 tp!551436)))

(assert (=> b!1931002 (= tp!551208 e!1235073)))

(declare-fun b!1932383 () Bool)

(assert (=> b!1932383 (= e!1235073 tp_is_empty!9145)))

(assert (= (and b!1931002 ((_ is ElementMatch!5363) (regTwo!11238 (regex!3938 (h!27357 rules!3198))))) b!1932383))

(assert (= (and b!1931002 ((_ is Concat!9438) (regTwo!11238 (regex!3938 (h!27357 rules!3198))))) b!1932384))

(assert (= (and b!1931002 ((_ is Star!5363) (regTwo!11238 (regex!3938 (h!27357 rules!3198))))) b!1932385))

(assert (= (and b!1931002 ((_ is Union!5363) (regTwo!11238 (regex!3938 (h!27357 rules!3198))))) b!1932386))

(declare-fun b!1932389 () Bool)

(declare-fun e!1235076 () Bool)

(assert (=> b!1932389 (= e!1235076 true)))

(declare-fun b!1932388 () Bool)

(declare-fun e!1235075 () Bool)

(assert (=> b!1932388 (= e!1235075 e!1235076)))

(declare-fun b!1932387 () Bool)

(declare-fun e!1235074 () Bool)

(assert (=> b!1932387 (= e!1235074 e!1235075)))

(assert (=> b!1930661 e!1235074))

(assert (= b!1932388 b!1932389))

(assert (= b!1932387 b!1932388))

(assert (= (and b!1930661 ((_ is Cons!21956) (t!180083 rules!3198))) b!1932387))

(assert (=> b!1932389 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198))))) (dynLambda!10665 order!13813 lambda!75284))))

(assert (=> b!1932389 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198))))) (dynLambda!10665 order!13813 lambda!75284))))

(declare-fun e!1235077 () Bool)

(declare-fun b!1932390 () Bool)

(declare-fun tp!551439 () Bool)

(declare-fun tp!551437 () Bool)

(assert (=> b!1932390 (= e!1235077 (and (inv!29046 (left!17465 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))))) tp!551439 (inv!29046 (right!17795 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))))) tp!551437))))

(declare-fun b!1932392 () Bool)

(declare-fun e!1235078 () Bool)

(declare-fun tp!551438 () Bool)

(assert (=> b!1932392 (= e!1235078 tp!551438)))

(declare-fun b!1932391 () Bool)

(assert (=> b!1932391 (= e!1235077 (and (inv!29053 (xs!10224 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))))) e!1235078))))

(assert (=> b!1930675 (= tp!551099 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598))))) e!1235077))))

(assert (= (and b!1930675 ((_ is Node!7330) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))))) b!1932390))

(assert (= b!1932391 b!1932392))

(assert (= (and b!1930675 ((_ is Leaf!10762) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (value!123824 (h!27358 tokens!598)))))) b!1932391))

(declare-fun m!2370881 () Bool)

(assert (=> b!1932390 m!2370881))

(declare-fun m!2370883 () Bool)

(assert (=> b!1932390 m!2370883))

(declare-fun m!2370885 () Bool)

(assert (=> b!1932391 m!2370885))

(assert (=> b!1930675 m!2368397))

(declare-fun b!1932393 () Bool)

(declare-fun e!1235079 () Bool)

(declare-fun tp!551440 () Bool)

(assert (=> b!1932393 (= e!1235079 (and tp_is_empty!9145 tp!551440))))

(assert (=> b!1930997 (= tp!551206 e!1235079)))

(assert (= (and b!1930997 ((_ is Cons!21955) (originalCharacters!4745 (h!27358 (t!180084 tokens!598))))) b!1932393))

(declare-fun b!1932397 () Bool)

(declare-fun e!1235080 () Bool)

(declare-fun tp!551442 () Bool)

(declare-fun tp!551444 () Bool)

(assert (=> b!1932397 (= e!1235080 (and tp!551442 tp!551444))))

(declare-fun b!1932395 () Bool)

(declare-fun tp!551443 () Bool)

(declare-fun tp!551441 () Bool)

(assert (=> b!1932395 (= e!1235080 (and tp!551443 tp!551441))))

(declare-fun b!1932396 () Bool)

(declare-fun tp!551445 () Bool)

(assert (=> b!1932396 (= e!1235080 tp!551445)))

(assert (=> b!1931003 (= tp!551212 e!1235080)))

(declare-fun b!1932394 () Bool)

(assert (=> b!1932394 (= e!1235080 tp_is_empty!9145)))

(assert (= (and b!1931003 ((_ is ElementMatch!5363) (reg!5692 (regex!3938 (h!27357 rules!3198))))) b!1932394))

(assert (= (and b!1931003 ((_ is Concat!9438) (reg!5692 (regex!3938 (h!27357 rules!3198))))) b!1932395))

(assert (= (and b!1931003 ((_ is Star!5363) (reg!5692 (regex!3938 (h!27357 rules!3198))))) b!1932396))

(assert (= (and b!1931003 ((_ is Union!5363) (reg!5692 (regex!3938 (h!27357 rules!3198))))) b!1932397))

(declare-fun b!1932400 () Bool)

(declare-fun e!1235083 () Bool)

(assert (=> b!1932400 (= e!1235083 true)))

(declare-fun b!1932399 () Bool)

(declare-fun e!1235082 () Bool)

(assert (=> b!1932399 (= e!1235082 e!1235083)))

(declare-fun b!1932398 () Bool)

(declare-fun e!1235081 () Bool)

(assert (=> b!1932398 (= e!1235081 e!1235082)))

(assert (=> b!1930949 e!1235081))

(assert (= b!1932399 b!1932400))

(assert (= b!1932398 b!1932399))

(assert (= (and b!1930949 ((_ is Cons!21956) (t!180083 rules!3198))) b!1932398))

(assert (=> b!1932400 (< (dynLambda!10660 order!13805 (toValue!5575 (transformation!3938 (h!27357 (t!180083 rules!3198))))) (dynLambda!10665 order!13813 lambda!75293))))

(assert (=> b!1932400 (< (dynLambda!10662 order!13809 (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198))))) (dynLambda!10665 order!13813 lambda!75293))))

(declare-fun b!1932401 () Bool)

(declare-fun e!1235084 () Bool)

(declare-fun tp!551448 () Bool)

(declare-fun tp!551446 () Bool)

(assert (=> b!1932401 (= e!1235084 (and (inv!29046 (left!17465 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))))) tp!551448 (inv!29046 (right!17795 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))))) tp!551446))))

(declare-fun b!1932403 () Bool)

(declare-fun e!1235085 () Bool)

(declare-fun tp!551447 () Bool)

(assert (=> b!1932403 (= e!1235085 tp!551447)))

(declare-fun b!1932402 () Bool)

(assert (=> b!1932402 (= e!1235084 (and (inv!29053 (xs!10224 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))))) e!1235085))))

(assert (=> b!1930395 (= tp!551096 (and (inv!29046 (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931)))) e!1235084))))

(assert (= (and b!1930395 ((_ is Node!7330) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))))) b!1932401))

(assert (= b!1932402 b!1932403))

(assert (= (and b!1930395 ((_ is Leaf!10762) (c!313974 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))))) b!1932402))

(declare-fun m!2370887 () Bool)

(assert (=> b!1932401 m!2370887))

(declare-fun m!2370889 () Bool)

(assert (=> b!1932401 m!2370889))

(declare-fun m!2370891 () Bool)

(assert (=> b!1932402 m!2370891))

(assert (=> b!1930395 m!2368055))

(declare-fun b_lambda!64207 () Bool)

(assert (= b_lambda!64199 (or (and b!1930976 b_free!55335 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1930332 b_free!55319 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1932378 b_free!55355 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1930322 b_free!55315 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1932305 b_free!55351 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1930999 b_free!55339) (and b!1930324 b_free!55323 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) b_lambda!64207)))

(declare-fun b_lambda!64209 () Bool)

(assert (= b_lambda!64203 (or b!1930339 b_lambda!64209)))

(declare-fun bs!415100 () Bool)

(declare-fun d!589446 () Bool)

(assert (= bs!415100 (and d!589446 b!1930339)))

(assert (=> bs!415100 (= (dynLambda!10668 lambda!75269 (h!27358 (t!180084 tokens!598))) (not (isSeparator!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))))

(assert (=> b!1932256 d!589446))

(declare-fun b_lambda!64211 () Bool)

(assert (= b_lambda!64205 (or (and b!1930976 b_free!55335 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 rules!3198)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1930332 b_free!55319 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1932378 b_free!55355 (= (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 (t!180084 tokens!598)))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1930322 b_free!55315 (= (toChars!5434 (transformation!3938 (rule!6145 separatorToken!354))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1932305 b_free!55351 (= (toChars!5434 (transformation!3938 (h!27357 (t!180083 (t!180083 rules!3198))))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) (and b!1930999 b_free!55339) (and b!1930324 b_free!55323 (= (toChars!5434 (transformation!3938 (h!27357 rules!3198))) (toChars!5434 (transformation!3938 (rule!6145 (h!27358 (t!180084 tokens!598))))))) b_lambda!64211)))

(declare-fun b_lambda!64213 () Bool)

(assert (= b_lambda!64167 (or d!588640 b_lambda!64213)))

(declare-fun bs!415101 () Bool)

(declare-fun d!589448 () Bool)

(assert (= bs!415101 (and d!589448 d!588640)))

(declare-fun res!863952 () Bool)

(declare-fun e!1235086 () Bool)

(assert (=> bs!415101 (=> res!863952 e!1235086)))

(assert (=> bs!415101 (= res!863952 (not (= (list!8887 lt!739931) (list!8887 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))))))))

(assert (=> bs!415101 (= (dynLambda!10671 lambda!75289 lt!739931 (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598)))) e!1235086)))

(declare-fun b!1932404 () Bool)

(assert (=> b!1932404 (= e!1235086 (= (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (seqFromList!2792 (originalCharacters!4745 (h!27358 tokens!598))))))))

(assert (= (and bs!415101 (not res!863952)) b!1932404))

(declare-fun b_lambda!64221 () Bool)

(assert (=> (not b_lambda!64221) (not b!1932404)))

(assert (=> b!1932404 t!180115))

(declare-fun b_and!152031 () Bool)

(assert (= b_and!151899 (and (=> t!180115 result!143076) b_and!152031)))

(assert (=> b!1932404 t!180113))

(declare-fun b_and!152033 () Bool)

(assert (= b_and!151903 (and (=> t!180113 result!143074) b_and!152033)))

(assert (=> b!1932404 t!180179))

(declare-fun b_and!152035 () Bool)

(assert (= b_and!151901 (and (=> t!180179 result!143140) b_and!152035)))

(assert (=> b!1932404 t!180446))

(declare-fun b_and!152037 () Bool)

(assert (= b_and!152027 (and (=> t!180446 result!143408) b_and!152037)))

(assert (=> b!1932404 t!180111))

(declare-fun b_and!152039 () Bool)

(assert (= b_and!151907 (and (=> t!180111 result!143070) b_and!152039)))

(assert (=> b!1932404 t!180420))

(declare-fun b_and!152041 () Bool)

(assert (= b_and!152023 (and (=> t!180420 result!143380) b_and!152041)))

(assert (=> b!1932404 t!180189))

(declare-fun b_and!152043 () Bool)

(assert (= b_and!151905 (and (=> t!180189 result!143154) b_and!152043)))

(declare-fun b_lambda!64223 () Bool)

(assert (=> (not b_lambda!64223) (not b!1932404)))

(assert (=> b!1932404 t!180422))

(declare-fun b_and!152045 () Bool)

(assert (= b_and!152041 (and (=> t!180422 result!143382) b_and!152045)))

(assert (=> b!1932404 t!180181))

(declare-fun b_and!152047 () Bool)

(assert (= b_and!152035 (and (=> t!180181 result!143142) b_and!152047)))

(assert (=> b!1932404 t!180145))

(declare-fun b_and!152049 () Bool)

(assert (= b_and!152031 (and (=> t!180145 result!143100) b_and!152049)))

(assert (=> b!1932404 t!180448))

(declare-fun b_and!152051 () Bool)

(assert (= b_and!152037 (and (=> t!180448 result!143410) b_and!152051)))

(assert (=> b!1932404 t!180143))

(declare-fun b_and!152053 () Bool)

(assert (= b_and!152033 (and (=> t!180143 result!143098) b_and!152053)))

(assert (=> b!1932404 t!180191))

(declare-fun b_and!152055 () Bool)

(assert (= b_and!152043 (and (=> t!180191 result!143156) b_and!152055)))

(assert (=> b!1932404 t!180141))

(declare-fun b_and!152057 () Bool)

(assert (= b_and!152039 (and (=> t!180141 result!143096) b_and!152057)))

(assert (=> bs!415101 m!2367913))

(assert (=> bs!415101 m!2367889))

(assert (=> bs!415101 m!2368421))

(assert (=> b!1932404 m!2368061))

(assert (=> b!1932404 m!2367889))

(assert (=> b!1932404 m!2368417))

(assert (=> d!589146 d!589448))

(declare-fun b_lambda!64215 () Bool)

(assert (= b_lambda!64153 (or d!588570 b_lambda!64215)))

(declare-fun bs!415102 () Bool)

(declare-fun d!589450 () Bool)

(assert (= bs!415102 (and d!589450 d!588570)))

(assert (=> bs!415102 (= (dynLambda!10670 lambda!75278 lt!739931) (= (list!8887 (dynLambda!10663 (toChars!5434 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) (dynLambda!10664 (toValue!5575 (transformation!3938 (rule!6145 (h!27358 tokens!598)))) lt!739931))) (list!8887 lt!739931)))))

(declare-fun b_lambda!64225 () Bool)

(assert (=> (not b_lambda!64225) (not bs!415102)))

(assert (=> bs!415102 t!180440))

(declare-fun b_and!152059 () Bool)

(assert (= b_and!152025 (and (=> t!180440 result!143400) b_and!152059)))

(assert (=> bs!415102 t!180105))

(declare-fun b_and!152061 () Bool)

(assert (= b_and!152013 (and (=> t!180105 result!143062) b_and!152061)))

(assert (=> bs!415102 t!180197))

(declare-fun b_and!152063 () Bool)

(assert (= b_and!152015 (and (=> t!180197 result!143162) b_and!152063)))

(assert (=> bs!415102 t!180187))

(declare-fun b_and!152065 () Bool)

(assert (= b_and!152019 (and (=> t!180187 result!143148) b_and!152065)))

(assert (=> bs!415102 t!180109))

(declare-fun b_and!152067 () Bool)

(assert (= b_and!152021 (and (=> t!180109 result!143068) b_and!152067)))

(assert (=> bs!415102 t!180466))

(declare-fun b_and!152069 () Bool)

(assert (= b_and!152029 (and (=> t!180466 result!143428) b_and!152069)))

(assert (=> bs!415102 t!180107))

(declare-fun b_and!152071 () Bool)

(assert (= b_and!152017 (and (=> t!180107 result!143066) b_and!152071)))

(declare-fun b_lambda!64227 () Bool)

(assert (=> (not b_lambda!64227) (not bs!415102)))

(assert (=> bs!415102 t!180420))

(declare-fun b_and!152073 () Bool)

(assert (= b_and!152045 (and (=> t!180420 result!143380) b_and!152073)))

(assert (=> bs!415102 t!180189))

(declare-fun b_and!152075 () Bool)

(assert (= b_and!152055 (and (=> t!180189 result!143154) b_and!152075)))

(assert (=> bs!415102 t!180113))

(declare-fun b_and!152077 () Bool)

(assert (= b_and!152053 (and (=> t!180113 result!143074) b_and!152077)))

(assert (=> bs!415102 t!180115))

(declare-fun b_and!152079 () Bool)

(assert (= b_and!152049 (and (=> t!180115 result!143076) b_and!152079)))

(assert (=> bs!415102 t!180179))

(declare-fun b_and!152081 () Bool)

(assert (= b_and!152047 (and (=> t!180179 result!143140) b_and!152081)))

(assert (=> bs!415102 t!180446))

(declare-fun b_and!152083 () Bool)

(assert (= b_and!152051 (and (=> t!180446 result!143408) b_and!152083)))

(assert (=> bs!415102 t!180111))

(declare-fun b_and!152085 () Bool)

(assert (= b_and!152057 (and (=> t!180111 result!143070) b_and!152085)))

(assert (=> bs!415102 m!2368061))

(assert (=> bs!415102 m!2368065))

(assert (=> bs!415102 m!2368061))

(assert (=> bs!415102 m!2367913))

(assert (=> bs!415102 m!2368065))

(assert (=> bs!415102 m!2368067))

(assert (=> d!589010 d!589450))

(declare-fun b_lambda!64217 () Bool)

(assert (= b_lambda!64161 (or d!588704 b_lambda!64217)))

(declare-fun bs!415103 () Bool)

(declare-fun d!589452 () Bool)

(assert (= bs!415103 (and d!589452 d!588704)))

(assert (=> bs!415103 (= (dynLambda!10668 lambda!75293 (h!27358 tokens!598)) (rulesProduceIndividualToken!1723 thiss!23328 rules!3198 (h!27358 tokens!598)))))

(assert (=> bs!415103 m!2368677))

(assert (=> b!1931570 d!589452))

(declare-fun b_lambda!64219 () Bool)

(assert (= b_lambda!64201 (or b!1930652 b_lambda!64219)))

(declare-fun bs!415104 () Bool)

(declare-fun d!589454 () Bool)

(assert (= bs!415104 (and d!589454 b!1930652)))

(assert (=> bs!415104 (= (dynLambda!10668 lambda!75284 (h!27358 (t!180084 tokens!598))) (rulesProduceIndividualToken!1723 thiss!23328 rules!3198 (h!27358 (t!180084 tokens!598))))))

(assert (=> bs!415104 m!2370813))

(assert (=> d!589380 d!589454))

(check-sat (not b_lambda!64121) (not d!589380) b_and!152081 (not d!589204) (not b_next!56053) (not b!1932038) (not b!1932180) (not b!1932145) (not b!1932074) (not d!589030) (not d!589418) (not b!1931366) (not b!1931571) (not d!589208) (not b!1932070) (not b_lambda!64113) (not b!1931268) (not b!1932357) (not b!1931481) (not b!1932397) (not bm!118816) (not b!1932381) (not bm!118840) (not b!1932063) (not b!1932370) (not b!1932332) (not b!1932385) (not b!1932315) (not b!1931342) (not d!589080) (not d!589004) (not b!1931740) (not b!1931767) (not b!1932139) (not b!1931270) (not b_next!56021) (not d!589236) (not d!589340) (not b!1932320) (not d!589046) (not b!1932376) (not b!1932392) (not b!1932345) (not b!1932402) b_and!152077 (not b!1931470) (not b!1931280) (not b!1931593) (not b!1932391) (not b!1932216) (not b_next!56057) (not b!1932075) (not b!1932352) (not d!589042) (not b!1931540) (not b_lambda!64163) (not d!588952) (not b!1932156) (not b!1932152) (not b_lambda!64213) (not d!588948) (not b!1932259) (not b!1932313) (not b!1931421) b_and!152069 b_and!152083 (not b!1932401) (not b!1932262) (not b!1931367) b_and!152075 (not d!589366) (not d!589342) (not b_lambda!64223) (not b!1932321) (not bm!118820) (not d!589388) (not b_lambda!64225) (not d!589344) (not b!1932330) (not b!1932351) (not b!1932144) (not d!588918) (not d!589028) (not b!1932057) (not d!589396) (not d!589370) (not d!589364) (not b!1932308) (not d!588898) (not b!1932173) (not bm!118800) (not b!1932202) (not b!1931279) (not d!589056) (not b!1932246) (not b!1931561) (not b!1931266) (not b_lambda!64207) (not b!1932257) (not b_next!56025) (not d!589346) (not b!1932032) (not bm!118858) (not b!1931780) tp_is_empty!9145 (not b!1932100) (not b!1932274) (not b!1932223) (not d!589398) b_and!152059 (not b!1932298) (not bm!118871) (not b_next!56041) (not b!1932324) b_and!152061 (not b!1932384) (not b!1932119) (not b!1932322) (not d!589052) (not b!1932356) (not b_lambda!64125) (not b!1932106) (not d!589326) (not b!1932120) (not b!1932121) (not b!1931569) (not b_next!56037) (not d!589320) (not b!1932328) (not b!1932026) (not b!1932297) (not tb!118631) (not d!589228) (not b!1931576) (not b!1932161) (not b_lambda!64221) (not d!589338) (not b!1932181) (not b!1932316) (not b!1932288) (not b!1932166) (not d!589108) (not b!1931596) (not b_lambda!64219) (not d!589390) (not d!589308) (not b!1932164) (not b!1932309) (not b!1932269) (not b!1932050) (not tb!118713) (not b!1931562) (not b!1932251) (not tb!118641) (not d!588990) (not d!588880) (not d!589048) (not d!589126) (not d!589128) (not b!1931281) (not b!1932276) (not b!1931765) (not b!1932108) (not d!589146) (not b!1932301) (not bs!415101) (not b!1932253) (not d!589412) (not b!1932325) (not b!1931480) (not b!1931479) (not d!589392) (not b!1932353) (not d!589132) (not d!588882) (not b!1932355) (not d!589034) (not b_next!56019) (not b!1932363) (not b!1931528) (not b!1931500) (not b!1931377) (not b!1932021) (not b!1932209) (not b!1931383) (not d!589124) (not b!1931597) (not b!1932208) (not b!1932374) (not d!589222) (not tb!118571) (not b!1932318) (not b!1932361) (not tb!118621) (not b!1932134) (not b!1931467) (not d!589024) (not bm!118848) (not b!1932398) (not b!1931768) (not d!588950) (not d!589410) (not b!1932292) (not d!589424) (not b!1932377) (not b!1932365) (not d!589050) (not b!1932254) (not d!589422) (not b!1931310) (not b!1931526) (not b!1931468) (not b!1932250) (not b!1931293) (not b!1932033) (not d!589432) (not bm!118817) (not b!1932240) (not bm!118795) (not b!1932039) (not b!1932143) (not d!589012) (not b!1931424) (not b_lambda!64215) (not d!589140) (not b!1930395) (not b!1931406) (not b!1931382) (not d!588878) (not d!589322) (not b!1932268) (not b!1932068) b_and!152085 (not b!1931764) (not b!1931580) (not b!1932025) (not b!1930675) (not b!1932312) (not d!589020) (not b_lambda!64155) (not b!1932283) (not b!1932024) (not b!1932304) (not b!1932030) (not b!1932062) (not b!1932107) (not d!588904) (not b!1931763) (not b!1931789) (not b!1932052) (not d!589354) (not bm!118815) (not d!589038) (not bm!118866) (not b!1932260) (not bm!118869) (not b!1931340) (not b_next!56039) (not b!1932076) (not d!588902) (not b!1931292) (not b!1932203) (not b!1931598) (not b!1932375) (not b_next!56055) (not b!1932265) (not b!1932255) (not d!589160) b_and!152063 (not d!589064) (not d!588888) (not b!1931782) (not bm!118872) (not b!1931507) (not b!1932157) (not b_lambda!64119) (not b!1931506) (not b!1932244) (not b!1931416) (not b!1932333) (not d!589116) (not d!589394) (not d!589156) (not bm!118809) (not b!1932205) (not d!589436) (not d!589022) (not b!1932386) (not bm!118861) (not b_lambda!64111) (not b_next!56023) (not b!1932364) b_and!152067 (not b!1932222) (not b!1931449) (not b!1932133) (not b!1932162) (not d!589372) (not b!1932158) (not b_lambda!64197) (not tb!118611) (not b!1932393) b_and!152065 (not tb!118581) (not b!1931317) (not b!1932037) (not d!589226) (not d!589148) (not b!1932163) (not d!589044) (not b!1932022) (not b!1932247) (not d!588916) (not b!1932146) (not b!1932069) (not b_lambda!64143) (not d!589232) (not b!1932317) (not bm!118847) (not b!1931527) (not b!1932035) (not b!1932051) (not b_next!56043) (not b!1931575) (not b!1932207) (not d!589378) (not b!1931286) (not b_lambda!64209) (not b!1932174) (not b!1932334) (not d!588986) (not b!1932112) (not b!1932065) (not b!1932266) (not b!1932359) (not b!1931589) (not b!1932040) (not b!1932067) (not b!1931741) (not b!1932221) (not d!589000) (not bm!118863) (not b_lambda!64165) (not b!1931771) (not b!1931274) (not d!589386) (not b!1932326) (not d!589032) (not b!1931788) (not d!589310) (not b!1932287) (not b!1932110) (not d!589234) (not d!588912) (not b!1932372) (not b!1932373) (not b!1932289) (not b!1932348) (not b!1932360) (not b!1931547) (not b!1932344) (not b!1932349) (not b!1932390) (not b_lambda!64217) (not bs!415104) (not b!1932172) b_and!152071 (not d!588972) (not bm!118859) (not b!1931313) (not b!1932395) (not b!1931339) (not b!1932396) (not b!1932249) (not b!1931600) (not b!1932285) (not b!1931587) (not b!1931557) (not b!1931457) (not b!1932278) (not bm!118873) (not d!589068) (not b!1931384) (not d!588928) (not b!1932036) (not bm!118864) (not b!1932382) (not b!1931792) (not b!1931458) (not d!589408) (not b!1932212) (not d!588964) (not d!588930) (not b!1931574) (not b!1931375) (not b!1931418) (not b!1931417) (not d!589434) (not b!1932347) (not d!589430) (not b!1932329) (not d!589100) (not b!1932236) (not bs!415103) (not d!589356) (not b!1932369) (not b!1932073) (not d!589150) (not b!1931591) (not b!1932210) (not bs!415102) (not d!589054) (not b!1931482) (not b!1932380) (not b!1931523) (not b!1931766) (not b!1932311) (not b!1932214) (not b!1931544) (not b!1931778) (not b!1932169) (not bm!118811) (not b!1932291) (not b_lambda!64169) (not b!1931272) (not b_lambda!64127) (not b!1931542) (not b!1932303) (not bm!118870) (not b!1932206) (not d!589374) (not b_lambda!64145) (not d!589336) (not b!1931578) (not b_lambda!64211) (not b_next!56017) (not d!589324) (not b!1932114) (not b!1932160) (not d!589102) (not b!1931538) (not b!1932343) b_and!152073 (not b!1932072) (not b_lambda!64115) (not b!1932284) (not bm!118855) (not d!589316) (not b!1931770) (not d!589200) (not b!1931420) (not tb!118723) (not d!589334) (not b!1932123) (not b!1932167) (not b!1932235) (not d!588906) (not b!1932140) (not b!1931775) (not b!1931469) (not d!589376) (not b!1931773) (not d!589362) (not d!589008) (not b_lambda!64227) (not d!589014) (not b!1932243) (not b_lambda!64123) (not b!1932028) (not d!589206) (not d!589332) (not b!1932366) (not d!589154) (not b!1932238) (not b_lambda!64117) (not b!1932387) (not b!1932248) (not b!1932302) (not d!589010) b_and!152079 (not b!1931739) (not b!1932031) (not b!1932294) (not b!1932403) (not bm!118856) (not b!1932368) (not b_next!56059) (not b!1932307) (not b!1931373) (not b!1930693) (not b!1932179) (not d!589158) (not b_next!56027) (not b!1932270) (not b!1932241) (not b!1931787) (not b!1932058) (not b!1931448) (not d!589384))
(check-sat (not b_next!56057) (not b_next!56037) (not b_next!56019) b_and!152085 b_and!152063 b_and!152071 (not b_next!56027) b_and!152081 (not b_next!56053) (not b_next!56021) b_and!152077 b_and!152069 b_and!152075 b_and!152083 (not b_next!56025) b_and!152059 (not b_next!56041) b_and!152061 (not b_next!56055) (not b_next!56039) (not b_next!56023) b_and!152067 b_and!152065 (not b_next!56043) (not b_next!56017) b_and!152073 b_and!152079 (not b_next!56059))
