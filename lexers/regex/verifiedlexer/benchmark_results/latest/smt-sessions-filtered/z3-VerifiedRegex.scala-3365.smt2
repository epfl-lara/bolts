; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190620 () Bool)

(assert start!190620)

(declare-fun b!1901059 () Bool)

(declare-fun b_free!53409 () Bool)

(declare-fun b_next!54113 () Bool)

(assert (=> b!1901059 (= b_free!53409 (not b_next!54113))))

(declare-fun tp!542944 () Bool)

(declare-fun b_and!147187 () Bool)

(assert (=> b!1901059 (= tp!542944 b_and!147187)))

(declare-fun b_free!53411 () Bool)

(declare-fun b_next!54115 () Bool)

(assert (=> b!1901059 (= b_free!53411 (not b_next!54115))))

(declare-fun tp!542947 () Bool)

(declare-fun b_and!147189 () Bool)

(assert (=> b!1901059 (= tp!542947 b_and!147189)))

(declare-fun b!1901055 () Bool)

(declare-fun b_free!53413 () Bool)

(declare-fun b_next!54117 () Bool)

(assert (=> b!1901055 (= b_free!53413 (not b_next!54117))))

(declare-fun tp!542940 () Bool)

(declare-fun b_and!147191 () Bool)

(assert (=> b!1901055 (= tp!542940 b_and!147191)))

(declare-fun b_free!53415 () Bool)

(declare-fun b_next!54119 () Bool)

(assert (=> b!1901055 (= b_free!53415 (not b_next!54119))))

(declare-fun tp!542946 () Bool)

(declare-fun b_and!147193 () Bool)

(assert (=> b!1901055 (= tp!542946 b_and!147193)))

(declare-fun b!1901066 () Bool)

(declare-fun b_free!53417 () Bool)

(declare-fun b_next!54121 () Bool)

(assert (=> b!1901066 (= b_free!53417 (not b_next!54121))))

(declare-fun tp!542948 () Bool)

(declare-fun b_and!147195 () Bool)

(assert (=> b!1901066 (= tp!542948 b_and!147195)))

(declare-fun b_free!53419 () Bool)

(declare-fun b_next!54123 () Bool)

(assert (=> b!1901066 (= b_free!53419 (not b_next!54123))))

(declare-fun tp!542943 () Bool)

(declare-fun b_and!147197 () Bool)

(assert (=> b!1901066 (= tp!542943 b_and!147197)))

(declare-fun b!1901049 () Bool)

(declare-fun e!1214194 () Bool)

(declare-fun e!1214191 () Bool)

(assert (=> b!1901049 (= e!1214194 e!1214191)))

(declare-fun res!848789 () Bool)

(assert (=> b!1901049 (=> (not res!848789) (not e!1214191))))

(declare-datatypes ((List!21478 0))(
  ( (Nil!21396) (Cons!21396 (h!26797 (_ BitVec 16)) (t!176859 List!21478)) )
))
(declare-datatypes ((TokenValue!3942 0))(
  ( (FloatLiteralValue!7884 (text!28039 List!21478)) (TokenValueExt!3941 (__x!13382 Int)) (Broken!19710 (value!120036 List!21478)) (Object!4023) (End!3942) (Def!3942) (Underscore!3942) (Match!3942) (Else!3942) (Error!3942) (Case!3942) (If!3942) (Extends!3942) (Abstract!3942) (Class!3942) (Val!3942) (DelimiterValue!7884 (del!4002 List!21478)) (KeywordValue!3948 (value!120037 List!21478)) (CommentValue!7884 (value!120038 List!21478)) (WhitespaceValue!7884 (value!120039 List!21478)) (IndentationValue!3942 (value!120040 List!21478)) (String!24827) (Int32!3942) (Broken!19711 (value!120041 List!21478)) (Boolean!3943) (Unit!35725) (OperatorValue!3945 (op!4002 List!21478)) (IdentifierValue!7884 (value!120042 List!21478)) (IdentifierValue!7885 (value!120043 List!21478)) (WhitespaceValue!7885 (value!120044 List!21478)) (True!7884) (False!7884) (Broken!19712 (value!120045 List!21478)) (Broken!19713 (value!120046 List!21478)) (True!7885) (RightBrace!3942) (RightBracket!3942) (Colon!3942) (Null!3942) (Comma!3942) (LeftBracket!3942) (False!7885) (LeftBrace!3942) (ImaginaryLiteralValue!3942 (text!28040 List!21478)) (StringLiteralValue!11826 (value!120047 List!21478)) (EOFValue!3942 (value!120048 List!21478)) (IdentValue!3942 (value!120049 List!21478)) (DelimiterValue!7885 (value!120050 List!21478)) (DedentValue!3942 (value!120051 List!21478)) (NewLineValue!3942 (value!120052 List!21478)) (IntegerValue!11826 (value!120053 (_ BitVec 32)) (text!28041 List!21478)) (IntegerValue!11827 (value!120054 Int) (text!28042 List!21478)) (Times!3942) (Or!3942) (Equal!3942) (Minus!3942) (Broken!19714 (value!120055 List!21478)) (And!3942) (Div!3942) (LessEqual!3942) (Mod!3942) (Concat!9173) (Not!3942) (Plus!3942) (SpaceValue!3942 (value!120056 List!21478)) (IntegerValue!11828 (value!120057 Int) (text!28043 List!21478)) (StringLiteralValue!11827 (text!28044 List!21478)) (FloatLiteralValue!7885 (text!28045 List!21478)) (BytesLiteralValue!3942 (value!120058 List!21478)) (CommentValue!7885 (value!120059 List!21478)) (StringLiteralValue!11828 (value!120060 List!21478)) (ErrorTokenValue!3942 (msg!4003 List!21478)) )
))
(declare-datatypes ((C!10608 0))(
  ( (C!10609 (val!6256 Int)) )
))
(declare-datatypes ((List!21479 0))(
  ( (Nil!21397) (Cons!21397 (h!26798 C!10608) (t!176860 List!21479)) )
))
(declare-datatypes ((IArray!14243 0))(
  ( (IArray!14244 (innerList!7179 List!21479)) )
))
(declare-datatypes ((Conc!7119 0))(
  ( (Node!7119 (left!17128 Conc!7119) (right!17458 Conc!7119) (csize!14468 Int) (cheight!7330 Int)) (Leaf!10485 (xs!10013 IArray!14243) (csize!14469 Int)) (Empty!7119) )
))
(declare-datatypes ((BalanceConc!14054 0))(
  ( (BalanceConc!14055 (c!309755 Conc!7119)) )
))
(declare-datatypes ((TokenValueInjection!7468 0))(
  ( (TokenValueInjection!7469 (toValue!5423 Int) (toChars!5282 Int)) )
))
(declare-datatypes ((String!24828 0))(
  ( (String!24829 (value!120061 String)) )
))
(declare-datatypes ((Regex!5231 0))(
  ( (ElementMatch!5231 (c!309756 C!10608)) (Concat!9174 (regOne!10974 Regex!5231) (regTwo!10974 Regex!5231)) (EmptyExpr!5231) (Star!5231 (reg!5560 Regex!5231)) (EmptyLang!5231) (Union!5231 (regOne!10975 Regex!5231) (regTwo!10975 Regex!5231)) )
))
(declare-datatypes ((Rule!7412 0))(
  ( (Rule!7413 (regex!3806 Regex!5231) (tag!4232 String!24828) (isSeparator!3806 Bool) (transformation!3806 TokenValueInjection!7468)) )
))
(declare-fun lt!727008 () Rule!7412)

(declare-fun lt!727002 () List!21479)

(declare-fun matchR!2517 (Regex!5231 List!21479) Bool)

(assert (=> b!1901049 (= res!848789 (matchR!2517 (regex!3806 lt!727008) lt!727002))))

(declare-datatypes ((Option!4317 0))(
  ( (None!4316) (Some!4316 (v!26345 Rule!7412)) )
))
(declare-fun lt!726999 () Option!4317)

(declare-fun get!6627 (Option!4317) Rule!7412)

(assert (=> b!1901049 (= lt!727008 (get!6627 lt!726999))))

(declare-fun res!848790 () Bool)

(declare-fun e!1214180 () Bool)

(assert (=> start!190620 (=> (not res!848790) (not e!1214180))))

(declare-datatypes ((LexerInterface!3419 0))(
  ( (LexerInterfaceExt!3416 (__x!13383 Int)) (Lexer!3417) )
))
(declare-fun thiss!23328 () LexerInterface!3419)

(get-info :version)

(assert (=> start!190620 (= res!848790 ((_ is Lexer!3417) thiss!23328))))

(assert (=> start!190620 e!1214180))

(assert (=> start!190620 true))

(declare-fun e!1214196 () Bool)

(assert (=> start!190620 e!1214196))

(declare-fun e!1214187 () Bool)

(assert (=> start!190620 e!1214187))

(declare-datatypes ((Token!7164 0))(
  ( (Token!7165 (value!120062 TokenValue!3942) (rule!5999 Rule!7412) (size!16900 Int) (originalCharacters!4613 List!21479)) )
))
(declare-fun separatorToken!354 () Token!7164)

(declare-fun e!1214197 () Bool)

(declare-fun inv!28493 (Token!7164) Bool)

(assert (=> start!190620 (and (inv!28493 separatorToken!354) e!1214197)))

(declare-fun b!1901050 () Bool)

(declare-datatypes ((List!21480 0))(
  ( (Nil!21398) (Cons!21398 (h!26799 Token!7164) (t!176861 List!21480)) )
))
(declare-fun tokens!598 () List!21480)

(assert (=> b!1901050 (= e!1214191 (= (rule!5999 (h!26799 tokens!598)) lt!727008))))

(declare-fun b!1901051 () Bool)

(declare-fun e!1214189 () Bool)

(assert (=> b!1901051 (= e!1214180 (not e!1214189))))

(declare-fun res!848784 () Bool)

(assert (=> b!1901051 (=> res!848784 e!1214189)))

(declare-datatypes ((tuple2!20152 0))(
  ( (tuple2!20153 (_1!11545 Token!7164) (_2!11545 List!21479)) )
))
(declare-datatypes ((Option!4318 0))(
  ( (None!4317) (Some!4317 (v!26346 tuple2!20152)) )
))
(declare-fun lt!727005 () Option!4318)

(assert (=> b!1901051 (= res!848784 (or (not ((_ is Some!4317) lt!727005)) (not (= (_1!11545 (v!26346 lt!727005)) (h!26799 tokens!598)))))))

(declare-datatypes ((List!21481 0))(
  ( (Nil!21399) (Cons!21399 (h!26800 Rule!7412) (t!176862 List!21481)) )
))
(declare-fun rules!3198 () List!21481)

(declare-fun maxPrefix!1865 (LexerInterface!3419 List!21481 List!21479) Option!4318)

(declare-fun ++!5749 (List!21479 List!21479) List!21479)

(declare-fun printWithSeparatorTokenWhenNeededList!462 (LexerInterface!3419 List!21481 List!21480 Token!7164) List!21479)

(assert (=> b!1901051 (= lt!727005 (maxPrefix!1865 thiss!23328 rules!3198 (++!5749 lt!727002 (printWithSeparatorTokenWhenNeededList!462 thiss!23328 rules!3198 (t!176861 tokens!598) separatorToken!354))))))

(assert (=> b!1901051 e!1214194))

(declare-fun res!848780 () Bool)

(assert (=> b!1901051 (=> (not res!848780) (not e!1214194))))

(declare-fun isDefined!3615 (Option!4317) Bool)

(assert (=> b!1901051 (= res!848780 (isDefined!3615 lt!726999))))

(declare-fun getRuleFromTag!649 (LexerInterface!3419 List!21481 String!24828) Option!4317)

(assert (=> b!1901051 (= lt!726999 (getRuleFromTag!649 thiss!23328 rules!3198 (tag!4232 (rule!5999 (h!26799 tokens!598)))))))

(declare-datatypes ((Unit!35726 0))(
  ( (Unit!35727) )
))
(declare-fun lt!727007 () Unit!35726)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!649 (LexerInterface!3419 List!21481 List!21479 Token!7164) Unit!35726)

(assert (=> b!1901051 (= lt!727007 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!649 thiss!23328 rules!3198 lt!727002 (h!26799 tokens!598)))))

(declare-fun e!1214200 () Bool)

(assert (=> b!1901051 e!1214200))

(declare-fun res!848786 () Bool)

(assert (=> b!1901051 (=> (not res!848786) (not e!1214200))))

(declare-fun lt!726998 () Option!4318)

(declare-fun isDefined!3616 (Option!4318) Bool)

(assert (=> b!1901051 (= res!848786 (isDefined!3616 lt!726998))))

(assert (=> b!1901051 (= lt!726998 (maxPrefix!1865 thiss!23328 rules!3198 lt!727002))))

(declare-fun lt!727001 () BalanceConc!14054)

(declare-fun list!8698 (BalanceConc!14054) List!21479)

(assert (=> b!1901051 (= lt!727002 (list!8698 lt!727001))))

(declare-fun e!1214190 () Bool)

(assert (=> b!1901051 e!1214190))

(declare-fun res!848776 () Bool)

(assert (=> b!1901051 (=> (not res!848776) (not e!1214190))))

(declare-fun lt!727006 () Option!4317)

(assert (=> b!1901051 (= res!848776 (isDefined!3615 lt!727006))))

(assert (=> b!1901051 (= lt!727006 (getRuleFromTag!649 thiss!23328 rules!3198 (tag!4232 (rule!5999 separatorToken!354))))))

(declare-fun lt!726997 () List!21479)

(declare-fun lt!727003 () Unit!35726)

(assert (=> b!1901051 (= lt!727003 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!649 thiss!23328 rules!3198 lt!726997 separatorToken!354))))

(declare-fun charsOf!2362 (Token!7164) BalanceConc!14054)

(assert (=> b!1901051 (= lt!726997 (list!8698 (charsOf!2362 separatorToken!354)))))

(declare-fun lt!727000 () Unit!35726)

(declare-fun lemmaEqSameImage!514 (TokenValueInjection!7468 BalanceConc!14054 BalanceConc!14054) Unit!35726)

(declare-fun seqFromList!2678 (List!21479) BalanceConc!14054)

(assert (=> b!1901051 (= lt!727000 (lemmaEqSameImage!514 (transformation!3806 (rule!5999 (h!26799 tokens!598))) lt!727001 (seqFromList!2678 (originalCharacters!4613 (h!26799 tokens!598)))))))

(declare-fun lt!727004 () Unit!35726)

(declare-fun lemmaSemiInverse!785 (TokenValueInjection!7468 BalanceConc!14054) Unit!35726)

(assert (=> b!1901051 (= lt!727004 (lemmaSemiInverse!785 (transformation!3806 (rule!5999 (h!26799 tokens!598))) lt!727001))))

(assert (=> b!1901051 (= lt!727001 (charsOf!2362 (h!26799 tokens!598)))))

(declare-fun b!1901052 () Bool)

(declare-fun e!1214184 () Bool)

(declare-fun lt!726996 () Rule!7412)

(assert (=> b!1901052 (= e!1214184 (= (rule!5999 separatorToken!354) lt!726996))))

(declare-fun b!1901053 () Bool)

(declare-fun res!848775 () Bool)

(assert (=> b!1901053 (=> (not res!848775) (not e!1214180))))

(declare-fun rulesProduceIndividualToken!1591 (LexerInterface!3419 List!21481 Token!7164) Bool)

(assert (=> b!1901053 (= res!848775 (rulesProduceIndividualToken!1591 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1901054 () Bool)

(declare-fun get!6628 (Option!4318) tuple2!20152)

(assert (=> b!1901054 (= e!1214200 (= (_1!11545 (get!6628 lt!726998)) (h!26799 tokens!598)))))

(declare-fun e!1214188 () Bool)

(assert (=> b!1901055 (= e!1214188 (and tp!542940 tp!542946))))

(declare-fun b!1901056 () Bool)

(declare-fun res!848782 () Bool)

(assert (=> b!1901056 (=> res!848782 e!1214189)))

(declare-fun isEmpty!13127 (List!21480) Bool)

(assert (=> b!1901056 (= res!848782 (isEmpty!13127 tokens!598))))

(declare-fun tp!542941 () Bool)

(declare-fun e!1214193 () Bool)

(declare-fun b!1901057 () Bool)

(declare-fun e!1214181 () Bool)

(declare-fun inv!28490 (String!24828) Bool)

(declare-fun inv!28494 (TokenValueInjection!7468) Bool)

(assert (=> b!1901057 (= e!1214193 (and tp!542941 (inv!28490 (tag!4232 (h!26800 rules!3198))) (inv!28494 (transformation!3806 (h!26800 rules!3198))) e!1214181))))

(declare-fun b!1901058 () Bool)

(declare-fun tp!542938 () Bool)

(assert (=> b!1901058 (= e!1214196 (and e!1214193 tp!542938))))

(declare-fun e!1214179 () Bool)

(assert (=> b!1901059 (= e!1214179 (and tp!542944 tp!542947))))

(declare-fun b!1901060 () Bool)

(declare-fun e!1214186 () Bool)

(declare-fun tp!542950 () Bool)

(assert (=> b!1901060 (= e!1214186 (and tp!542950 (inv!28490 (tag!4232 (rule!5999 (h!26799 tokens!598)))) (inv!28494 (transformation!3806 (rule!5999 (h!26799 tokens!598)))) e!1214188))))

(declare-fun b!1901061 () Bool)

(declare-fun res!848787 () Bool)

(assert (=> b!1901061 (=> (not res!848787) (not e!1214180))))

(declare-fun lambda!74299 () Int)

(declare-fun forall!4488 (List!21480 Int) Bool)

(assert (=> b!1901061 (= res!848787 (forall!4488 tokens!598 lambda!74299))))

(declare-fun b!1901062 () Bool)

(declare-fun tp!542949 () Bool)

(declare-fun e!1214192 () Bool)

(declare-fun inv!21 (TokenValue!3942) Bool)

(assert (=> b!1901062 (= e!1214197 (and (inv!21 (value!120062 separatorToken!354)) e!1214192 tp!542949))))

(declare-fun b!1901063 () Bool)

(declare-fun res!848777 () Bool)

(assert (=> b!1901063 (=> (not res!848777) (not e!1214180))))

(assert (=> b!1901063 (= res!848777 (isSeparator!3806 (rule!5999 separatorToken!354)))))

(declare-fun b!1901064 () Bool)

(declare-fun res!848788 () Bool)

(assert (=> b!1901064 (=> (not res!848788) (not e!1214180))))

(assert (=> b!1901064 (= res!848788 ((_ is Cons!21398) tokens!598))))

(declare-fun b!1901065 () Bool)

(declare-fun res!848781 () Bool)

(assert (=> b!1901065 (=> (not res!848781) (not e!1214180))))

(declare-fun isEmpty!13128 (List!21481) Bool)

(assert (=> b!1901065 (= res!848781 (not (isEmpty!13128 rules!3198)))))

(assert (=> b!1901066 (= e!1214181 (and tp!542948 tp!542943))))

(declare-fun b!1901067 () Bool)

(declare-fun res!848778 () Bool)

(assert (=> b!1901067 (=> (not res!848778) (not e!1214180))))

(declare-fun rulesProduceEachTokenIndividuallyList!1150 (LexerInterface!3419 List!21481 List!21480) Bool)

(assert (=> b!1901067 (= res!848778 (rulesProduceEachTokenIndividuallyList!1150 thiss!23328 rules!3198 tokens!598))))

(declare-fun tp!542939 () Bool)

(declare-fun e!1214185 () Bool)

(declare-fun b!1901068 () Bool)

(assert (=> b!1901068 (= e!1214187 (and (inv!28493 (h!26799 tokens!598)) e!1214185 tp!542939))))

(declare-fun b!1901069 () Bool)

(declare-fun res!848785 () Bool)

(assert (=> b!1901069 (=> (not res!848785) (not e!1214180))))

(declare-fun rulesInvariant!3026 (LexerInterface!3419 List!21481) Bool)

(assert (=> b!1901069 (= res!848785 (rulesInvariant!3026 thiss!23328 rules!3198))))

(declare-fun b!1901070 () Bool)

(declare-fun res!848783 () Bool)

(assert (=> b!1901070 (=> (not res!848783) (not e!1214180))))

(declare-fun sepAndNonSepRulesDisjointChars!904 (List!21481 List!21481) Bool)

(assert (=> b!1901070 (= res!848783 (sepAndNonSepRulesDisjointChars!904 rules!3198 rules!3198))))

(declare-fun b!1901071 () Bool)

(declare-fun tp!542945 () Bool)

(assert (=> b!1901071 (= e!1214185 (and (inv!21 (value!120062 (h!26799 tokens!598))) e!1214186 tp!542945))))

(declare-fun b!1901072 () Bool)

(assert (=> b!1901072 (= e!1214190 e!1214184)))

(declare-fun res!848779 () Bool)

(assert (=> b!1901072 (=> (not res!848779) (not e!1214184))))

(assert (=> b!1901072 (= res!848779 (matchR!2517 (regex!3806 lt!726996) lt!726997))))

(assert (=> b!1901072 (= lt!726996 (get!6627 lt!727006))))

(declare-fun b!1901073 () Bool)

(assert (=> b!1901073 (= e!1214189 true)))

(declare-fun lt!727010 () Bool)

(declare-fun rulesValidInductive!1292 (LexerInterface!3419 List!21481) Bool)

(assert (=> b!1901073 (= lt!727010 (rulesValidInductive!1292 thiss!23328 rules!3198))))

(declare-fun lt!727009 () List!21479)

(assert (=> b!1901073 (= lt!727009 (printWithSeparatorTokenWhenNeededList!462 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun b!1901074 () Bool)

(declare-fun tp!542942 () Bool)

(assert (=> b!1901074 (= e!1214192 (and tp!542942 (inv!28490 (tag!4232 (rule!5999 separatorToken!354))) (inv!28494 (transformation!3806 (rule!5999 separatorToken!354))) e!1214179))))

(assert (= (and start!190620 res!848790) b!1901065))

(assert (= (and b!1901065 res!848781) b!1901069))

(assert (= (and b!1901069 res!848785) b!1901067))

(assert (= (and b!1901067 res!848778) b!1901053))

(assert (= (and b!1901053 res!848775) b!1901063))

(assert (= (and b!1901063 res!848777) b!1901061))

(assert (= (and b!1901061 res!848787) b!1901070))

(assert (= (and b!1901070 res!848783) b!1901064))

(assert (= (and b!1901064 res!848788) b!1901051))

(assert (= (and b!1901051 res!848776) b!1901072))

(assert (= (and b!1901072 res!848779) b!1901052))

(assert (= (and b!1901051 res!848786) b!1901054))

(assert (= (and b!1901051 res!848780) b!1901049))

(assert (= (and b!1901049 res!848789) b!1901050))

(assert (= (and b!1901051 (not res!848784)) b!1901056))

(assert (= (and b!1901056 (not res!848782)) b!1901073))

(assert (= b!1901057 b!1901066))

(assert (= b!1901058 b!1901057))

(assert (= (and start!190620 ((_ is Cons!21399) rules!3198)) b!1901058))

(assert (= b!1901060 b!1901055))

(assert (= b!1901071 b!1901060))

(assert (= b!1901068 b!1901071))

(assert (= (and start!190620 ((_ is Cons!21398) tokens!598)) b!1901068))

(assert (= b!1901074 b!1901059))

(assert (= b!1901062 b!1901074))

(assert (= start!190620 b!1901062))

(declare-fun m!2332183 () Bool)

(assert (=> b!1901049 m!2332183))

(declare-fun m!2332185 () Bool)

(assert (=> b!1901049 m!2332185))

(declare-fun m!2332187 () Bool)

(assert (=> b!1901054 m!2332187))

(declare-fun m!2332189 () Bool)

(assert (=> b!1901062 m!2332189))

(declare-fun m!2332191 () Bool)

(assert (=> b!1901056 m!2332191))

(declare-fun m!2332193 () Bool)

(assert (=> b!1901065 m!2332193))

(declare-fun m!2332195 () Bool)

(assert (=> b!1901073 m!2332195))

(declare-fun m!2332197 () Bool)

(assert (=> b!1901073 m!2332197))

(declare-fun m!2332199 () Bool)

(assert (=> b!1901051 m!2332199))

(declare-fun m!2332201 () Bool)

(assert (=> b!1901051 m!2332201))

(assert (=> b!1901051 m!2332201))

(declare-fun m!2332203 () Bool)

(assert (=> b!1901051 m!2332203))

(declare-fun m!2332205 () Bool)

(assert (=> b!1901051 m!2332205))

(declare-fun m!2332207 () Bool)

(assert (=> b!1901051 m!2332207))

(declare-fun m!2332209 () Bool)

(assert (=> b!1901051 m!2332209))

(declare-fun m!2332211 () Bool)

(assert (=> b!1901051 m!2332211))

(declare-fun m!2332213 () Bool)

(assert (=> b!1901051 m!2332213))

(declare-fun m!2332215 () Bool)

(assert (=> b!1901051 m!2332215))

(assert (=> b!1901051 m!2332213))

(declare-fun m!2332217 () Bool)

(assert (=> b!1901051 m!2332217))

(declare-fun m!2332219 () Bool)

(assert (=> b!1901051 m!2332219))

(assert (=> b!1901051 m!2332217))

(declare-fun m!2332221 () Bool)

(assert (=> b!1901051 m!2332221))

(assert (=> b!1901051 m!2332215))

(declare-fun m!2332223 () Bool)

(assert (=> b!1901051 m!2332223))

(declare-fun m!2332225 () Bool)

(assert (=> b!1901051 m!2332225))

(declare-fun m!2332227 () Bool)

(assert (=> b!1901051 m!2332227))

(declare-fun m!2332229 () Bool)

(assert (=> b!1901051 m!2332229))

(declare-fun m!2332231 () Bool)

(assert (=> b!1901051 m!2332231))

(declare-fun m!2332233 () Bool)

(assert (=> b!1901051 m!2332233))

(declare-fun m!2332235 () Bool)

(assert (=> b!1901060 m!2332235))

(declare-fun m!2332237 () Bool)

(assert (=> b!1901060 m!2332237))

(declare-fun m!2332239 () Bool)

(assert (=> start!190620 m!2332239))

(declare-fun m!2332241 () Bool)

(assert (=> b!1901061 m!2332241))

(declare-fun m!2332243 () Bool)

(assert (=> b!1901074 m!2332243))

(declare-fun m!2332245 () Bool)

(assert (=> b!1901074 m!2332245))

(declare-fun m!2332247 () Bool)

(assert (=> b!1901057 m!2332247))

(declare-fun m!2332249 () Bool)

(assert (=> b!1901057 m!2332249))

(declare-fun m!2332251 () Bool)

(assert (=> b!1901067 m!2332251))

(declare-fun m!2332253 () Bool)

(assert (=> b!1901069 m!2332253))

(declare-fun m!2332255 () Bool)

(assert (=> b!1901068 m!2332255))

(declare-fun m!2332257 () Bool)

(assert (=> b!1901053 m!2332257))

(declare-fun m!2332259 () Bool)

(assert (=> b!1901072 m!2332259))

(declare-fun m!2332261 () Bool)

(assert (=> b!1901072 m!2332261))

(declare-fun m!2332263 () Bool)

(assert (=> b!1901070 m!2332263))

(declare-fun m!2332265 () Bool)

(assert (=> b!1901071 m!2332265))

(check-sat (not b_next!54121) (not b!1901058) (not b!1901049) (not b!1901061) (not b_next!54115) (not b!1901057) b_and!147191 (not b_next!54119) (not b!1901062) (not b!1901068) b_and!147193 (not b!1901053) b_and!147195 (not b_next!54123) (not b!1901067) (not b!1901060) (not b!1901073) (not b!1901072) (not b_next!54113) (not b!1901074) b_and!147197 (not b_next!54117) (not b!1901069) (not start!190620) (not b!1901056) b_and!147187 b_and!147189 (not b!1901065) (not b!1901051) (not b!1901070) (not b!1901071) (not b!1901054))
(check-sat (not b_next!54121) (not b_next!54113) b_and!147197 (not b_next!54117) b_and!147187 b_and!147189 (not b_next!54115) b_and!147191 (not b_next!54119) b_and!147193 b_and!147195 (not b_next!54123))
