; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510798 () Bool)

(assert start!510798)

(declare-fun b!4882076 () Bool)

(declare-fun b_free!130951 () Bool)

(declare-fun b_next!131741 () Bool)

(assert (=> b!4882076 (= b_free!130951 (not b_next!131741))))

(declare-fun tp!1373568 () Bool)

(declare-fun b_and!343783 () Bool)

(assert (=> b!4882076 (= tp!1373568 b_and!343783)))

(declare-fun b_free!130953 () Bool)

(declare-fun b_next!131743 () Bool)

(assert (=> b!4882076 (= b_free!130953 (not b_next!131743))))

(declare-fun tp!1373565 () Bool)

(declare-fun b_and!343785 () Bool)

(assert (=> b!4882076 (= tp!1373565 b_and!343785)))

(declare-fun b!4882066 () Bool)

(declare-fun e!3051197 () Bool)

(declare-fun e!3051199 () Bool)

(declare-fun tp!1373564 () Bool)

(assert (=> b!4882066 (= e!3051197 (and e!3051199 tp!1373564))))

(declare-fun b!4882067 () Bool)

(declare-fun e!3051198 () Bool)

(declare-fun e!3051201 () Bool)

(assert (=> b!4882067 (= e!3051198 e!3051201)))

(declare-fun res!2084075 () Bool)

(assert (=> b!4882067 (=> res!2084075 e!3051201)))

(declare-datatypes ((C!26490 0))(
  ( (C!26491 (val!22579 Int)) )
))
(declare-datatypes ((List!56218 0))(
  ( (Nil!56094) (Cons!56094 (h!62542 C!26490) (t!364864 List!56218)) )
))
(declare-datatypes ((IArray!29339 0))(
  ( (IArray!29340 (innerList!14727 List!56218)) )
))
(declare-datatypes ((Conc!14639 0))(
  ( (Node!14639 (left!40753 Conc!14639) (right!41083 Conc!14639) (csize!29508 Int) (cheight!14850 Int)) (Leaf!24392 (xs!17955 IArray!29339) (csize!29509 Int)) (Empty!14639) )
))
(declare-datatypes ((BalanceConc!28708 0))(
  ( (BalanceConc!28709 (c!830346 Conc!14639)) )
))
(declare-datatypes ((List!56219 0))(
  ( (Nil!56095) (Cons!56095 (h!62543 (_ BitVec 16)) (t!364865 List!56219)) )
))
(declare-datatypes ((TokenValue!8381 0))(
  ( (FloatLiteralValue!16762 (text!59112 List!56219)) (TokenValueExt!8380 (__x!34055 Int)) (Broken!41905 (value!259153 List!56219)) (Object!8504) (End!8381) (Def!8381) (Underscore!8381) (Match!8381) (Else!8381) (Error!8381) (Case!8381) (If!8381) (Extends!8381) (Abstract!8381) (Class!8381) (Val!8381) (DelimiterValue!16762 (del!8441 List!56219)) (KeywordValue!8387 (value!259154 List!56219)) (CommentValue!16762 (value!259155 List!56219)) (WhitespaceValue!16762 (value!259156 List!56219)) (IndentationValue!8381 (value!259157 List!56219)) (String!63348) (Int32!8381) (Broken!41906 (value!259158 List!56219)) (Boolean!8382) (Unit!146084) (OperatorValue!8384 (op!8441 List!56219)) (IdentifierValue!16762 (value!259159 List!56219)) (IdentifierValue!16763 (value!259160 List!56219)) (WhitespaceValue!16763 (value!259161 List!56219)) (True!16762) (False!16762) (Broken!41907 (value!259162 List!56219)) (Broken!41908 (value!259163 List!56219)) (True!16763) (RightBrace!8381) (RightBracket!8381) (Colon!8381) (Null!8381) (Comma!8381) (LeftBracket!8381) (False!16763) (LeftBrace!8381) (ImaginaryLiteralValue!8381 (text!59113 List!56219)) (StringLiteralValue!25143 (value!259164 List!56219)) (EOFValue!8381 (value!259165 List!56219)) (IdentValue!8381 (value!259166 List!56219)) (DelimiterValue!16763 (value!259167 List!56219)) (DedentValue!8381 (value!259168 List!56219)) (NewLineValue!8381 (value!259169 List!56219)) (IntegerValue!25143 (value!259170 (_ BitVec 32)) (text!59114 List!56219)) (IntegerValue!25144 (value!259171 Int) (text!59115 List!56219)) (Times!8381) (Or!8381) (Equal!8381) (Minus!8381) (Broken!41909 (value!259172 List!56219)) (And!8381) (Div!8381) (LessEqual!8381) (Mod!8381) (Concat!21527) (Not!8381) (Plus!8381) (SpaceValue!8381 (value!259173 List!56219)) (IntegerValue!25145 (value!259174 Int) (text!59116 List!56219)) (StringLiteralValue!25144 (text!59117 List!56219)) (FloatLiteralValue!16763 (text!59118 List!56219)) (BytesLiteralValue!8381 (value!259175 List!56219)) (CommentValue!16763 (value!259176 List!56219)) (StringLiteralValue!25145 (value!259177 List!56219)) (ErrorTokenValue!8381 (msg!8442 List!56219)) )
))
(declare-datatypes ((Regex!13146 0))(
  ( (ElementMatch!13146 (c!830347 C!26490)) (Concat!21528 (regOne!26804 Regex!13146) (regTwo!26804 Regex!13146)) (EmptyExpr!13146) (Star!13146 (reg!13475 Regex!13146)) (EmptyLang!13146) (Union!13146 (regOne!26805 Regex!13146) (regTwo!26805 Regex!13146)) )
))
(declare-datatypes ((String!63349 0))(
  ( (String!63350 (value!259178 String)) )
))
(declare-datatypes ((TokenValueInjection!16070 0))(
  ( (TokenValueInjection!16071 (toValue!10958 Int) (toChars!10817 Int)) )
))
(declare-datatypes ((Rule!15942 0))(
  ( (Rule!15943 (regex!8071 Regex!13146) (tag!8935 String!63349) (isSeparator!8071 Bool) (transformation!8071 TokenValueInjection!16070)) )
))
(declare-datatypes ((Token!14714 0))(
  ( (Token!14715 (value!259179 TokenValue!8381) (rule!11229 Rule!15942) (size!36983 Int) (originalCharacters!8388 List!56218)) )
))
(declare-datatypes ((tuple2!59982 0))(
  ( (tuple2!59983 (_1!33294 Token!14714) (_2!33294 BalanceConc!28708)) )
))
(declare-datatypes ((Option!13834 0))(
  ( (None!13833) (Some!13833 (v!49783 tuple2!59982)) )
))
(declare-fun lt!1999835 () Option!13834)

(declare-datatypes ((tuple2!59984 0))(
  ( (tuple2!59985 (_1!33295 Token!14714) (_2!33295 List!56218)) )
))
(declare-datatypes ((Option!13835 0))(
  ( (None!13834) (Some!13834 (v!49784 tuple2!59984)) )
))
(declare-fun lt!1999837 () Option!13835)

(declare-fun get!19287 (Option!13834) tuple2!59982)

(declare-fun get!19288 (Option!13835) tuple2!59984)

(assert (=> b!4882067 (= res!2084075 (not (= (_1!33294 (get!19287 lt!1999835)) (_1!33295 (get!19288 lt!1999837)))))))

(declare-datatypes ((LexerInterface!7663 0))(
  ( (LexerInterfaceExt!7660 (__x!34056 Int)) (Lexer!7661) )
))
(declare-fun thiss!14805 () LexerInterface!7663)

(declare-fun lt!1999832 () List!56218)

(declare-datatypes ((List!56220 0))(
  ( (Nil!56096) (Cons!56096 (h!62544 Rule!15942) (t!364866 List!56220)) )
))
(declare-fun rulesArg!165 () List!56220)

(declare-fun maxPrefix!4562 (LexerInterface!7663 List!56220 List!56218) Option!13835)

(assert (=> b!4882067 (= lt!1999837 (maxPrefix!4562 thiss!14805 rulesArg!165 lt!1999832))))

(declare-fun b!4882068 () Bool)

(declare-fun e!3051203 () Bool)

(declare-fun e!3051194 () Bool)

(assert (=> b!4882068 (= e!3051203 e!3051194)))

(declare-fun res!2084081 () Bool)

(assert (=> b!4882068 (=> res!2084081 e!3051194)))

(declare-fun lt!1999831 () Bool)

(declare-fun lt!1999836 () Option!13835)

(declare-fun isDefined!10886 (Option!13835) Bool)

(assert (=> b!4882068 (= res!2084081 (not (= lt!1999831 (isDefined!10886 lt!1999836))))))

(declare-fun isDefined!10887 (Option!13834) Bool)

(assert (=> b!4882068 (= lt!1999831 (isDefined!10887 lt!1999835))))

(declare-fun maxPrefixZipper!584 (LexerInterface!7663 List!56220 List!56218) Option!13835)

(assert (=> b!4882068 (= lt!1999836 (maxPrefixZipper!584 thiss!14805 rulesArg!165 lt!1999832))))

(declare-fun input!1236 () BalanceConc!28708)

(declare-fun maxPrefixOneRuleZipperSequence!599 (LexerInterface!7663 Rule!15942 BalanceConc!28708) Option!13834)

(assert (=> b!4882068 (= lt!1999835 (maxPrefixOneRuleZipperSequence!599 thiss!14805 (h!62544 rulesArg!165) input!1236))))

(declare-fun b!4882069 () Bool)

(assert (=> b!4882069 (= e!3051194 e!3051198)))

(declare-fun res!2084073 () Bool)

(assert (=> b!4882069 (=> res!2084073 e!3051198)))

(declare-fun e!3051202 () Bool)

(assert (=> b!4882069 (= res!2084073 e!3051202)))

(declare-fun res!2084080 () Bool)

(assert (=> b!4882069 (=> (not res!2084080) (not e!3051202))))

(declare-fun lt!1999834 () Bool)

(assert (=> b!4882069 (= res!2084080 (not lt!1999834))))

(assert (=> b!4882069 (= lt!1999834 (not lt!1999831))))

(declare-fun res!2084077 () Bool)

(declare-fun e!3051193 () Bool)

(assert (=> start!510798 (=> (not res!2084077) (not e!3051193))))

(assert (=> start!510798 (= res!2084077 (is-Lexer!7661 thiss!14805))))

(assert (=> start!510798 e!3051193))

(assert (=> start!510798 true))

(assert (=> start!510798 e!3051197))

(declare-fun e!3051195 () Bool)

(declare-fun inv!72130 (BalanceConc!28708) Bool)

(assert (=> start!510798 (and (inv!72130 input!1236) e!3051195)))

(declare-fun b!4882070 () Bool)

(declare-fun tp!1373567 () Bool)

(declare-fun inv!72131 (Conc!14639) Bool)

(assert (=> b!4882070 (= e!3051195 (and (inv!72131 (c!830346 input!1236)) tp!1373567))))

(declare-fun b!4882071 () Bool)

(declare-fun res!2084082 () Bool)

(assert (=> b!4882071 (=> (not res!2084082) (not e!3051193))))

(declare-fun isEmpty!30062 (List!56220) Bool)

(assert (=> b!4882071 (= res!2084082 (not (isEmpty!30062 rulesArg!165)))))

(declare-fun b!4882072 () Bool)

(declare-fun e!3051200 () Bool)

(declare-fun lt!1999833 () tuple2!59982)

(declare-fun lt!1999839 () tuple2!59984)

(declare-fun list!17591 (BalanceConc!28708) List!56218)

(assert (=> b!4882072 (= e!3051200 (not (= (list!17591 (_2!33294 lt!1999833)) (_2!33295 lt!1999839))))))

(declare-fun b!4882073 () Bool)

(assert (=> b!4882073 (= e!3051202 e!3051200)))

(declare-fun res!2084074 () Bool)

(assert (=> b!4882073 (=> res!2084074 e!3051200)))

(assert (=> b!4882073 (= res!2084074 (not (= (_1!33294 lt!1999833) (_1!33295 lt!1999839))))))

(assert (=> b!4882073 (= lt!1999839 (get!19288 lt!1999836))))

(assert (=> b!4882073 (= lt!1999833 (get!19287 lt!1999835))))

(declare-fun b!4882074 () Bool)

(assert (=> b!4882074 (= e!3051201 (isDefined!10886 lt!1999837))))

(declare-fun b!4882075 () Bool)

(assert (=> b!4882075 (= e!3051193 (not e!3051203))))

(declare-fun res!2084078 () Bool)

(assert (=> b!4882075 (=> res!2084078 e!3051203)))

(assert (=> b!4882075 (= res!2084078 (or (not (is-Cons!56096 rulesArg!165)) (not (is-Nil!56096 (t!364866 rulesArg!165)))))))

(declare-fun isPrefix!4793 (List!56218 List!56218) Bool)

(assert (=> b!4882075 (isPrefix!4793 lt!1999832 lt!1999832)))

(declare-datatypes ((Unit!146085 0))(
  ( (Unit!146086) )
))
(declare-fun lt!1999838 () Unit!146085)

(declare-fun lemmaIsPrefixRefl!3190 (List!56218 List!56218) Unit!146085)

(assert (=> b!4882075 (= lt!1999838 (lemmaIsPrefixRefl!3190 lt!1999832 lt!1999832))))

(assert (=> b!4882075 (= lt!1999832 (list!17591 input!1236))))

(declare-fun e!3051196 () Bool)

(assert (=> b!4882076 (= e!3051196 (and tp!1373568 tp!1373565))))

(declare-fun tp!1373566 () Bool)

(declare-fun b!4882077 () Bool)

(declare-fun inv!72127 (String!63349) Bool)

(declare-fun inv!72132 (TokenValueInjection!16070) Bool)

(assert (=> b!4882077 (= e!3051199 (and tp!1373566 (inv!72127 (tag!8935 (h!62544 rulesArg!165))) (inv!72132 (transformation!8071 (h!62544 rulesArg!165))) e!3051196))))

(declare-fun b!4882078 () Bool)

(declare-fun res!2084076 () Bool)

(assert (=> b!4882078 (=> res!2084076 e!3051198)))

(assert (=> b!4882078 (= res!2084076 lt!1999834)))

(declare-fun b!4882079 () Bool)

(declare-fun res!2084079 () Bool)

(assert (=> b!4882079 (=> (not res!2084079) (not e!3051193))))

(declare-fun rulesValidInductive!3050 (LexerInterface!7663 List!56220) Bool)

(assert (=> b!4882079 (= res!2084079 (rulesValidInductive!3050 thiss!14805 rulesArg!165))))

(assert (= (and start!510798 res!2084077) b!4882079))

(assert (= (and b!4882079 res!2084079) b!4882071))

(assert (= (and b!4882071 res!2084082) b!4882075))

(assert (= (and b!4882075 (not res!2084078)) b!4882068))

(assert (= (and b!4882068 (not res!2084081)) b!4882069))

(assert (= (and b!4882069 res!2084080) b!4882073))

(assert (= (and b!4882073 (not res!2084074)) b!4882072))

(assert (= (and b!4882069 (not res!2084073)) b!4882078))

(assert (= (and b!4882078 (not res!2084076)) b!4882067))

(assert (= (and b!4882067 (not res!2084075)) b!4882074))

(assert (= b!4882077 b!4882076))

(assert (= b!4882066 b!4882077))

(assert (= (and start!510798 (is-Cons!56096 rulesArg!165)) b!4882066))

(assert (= start!510798 b!4882070))

(declare-fun m!5886270 () Bool)

(assert (=> b!4882071 m!5886270))

(declare-fun m!5886272 () Bool)

(assert (=> b!4882074 m!5886272))

(declare-fun m!5886274 () Bool)

(assert (=> b!4882070 m!5886274))

(declare-fun m!5886276 () Bool)

(assert (=> b!4882073 m!5886276))

(declare-fun m!5886278 () Bool)

(assert (=> b!4882073 m!5886278))

(declare-fun m!5886280 () Bool)

(assert (=> b!4882079 m!5886280))

(declare-fun m!5886282 () Bool)

(assert (=> start!510798 m!5886282))

(assert (=> b!4882067 m!5886278))

(declare-fun m!5886284 () Bool)

(assert (=> b!4882067 m!5886284))

(declare-fun m!5886286 () Bool)

(assert (=> b!4882067 m!5886286))

(declare-fun m!5886288 () Bool)

(assert (=> b!4882072 m!5886288))

(declare-fun m!5886290 () Bool)

(assert (=> b!4882077 m!5886290))

(declare-fun m!5886292 () Bool)

(assert (=> b!4882077 m!5886292))

(declare-fun m!5886294 () Bool)

(assert (=> b!4882068 m!5886294))

(declare-fun m!5886296 () Bool)

(assert (=> b!4882068 m!5886296))

(declare-fun m!5886298 () Bool)

(assert (=> b!4882068 m!5886298))

(declare-fun m!5886300 () Bool)

(assert (=> b!4882068 m!5886300))

(declare-fun m!5886302 () Bool)

(assert (=> b!4882075 m!5886302))

(declare-fun m!5886304 () Bool)

(assert (=> b!4882075 m!5886304))

(declare-fun m!5886306 () Bool)

(assert (=> b!4882075 m!5886306))

(push 1)

(assert (not b!4882072))

(assert (not b!4882079))

(assert (not b_next!131741))

(assert (not b!4882075))

(assert (not b!4882070))

(assert (not b!4882067))

(assert (not b!4882073))

(assert b_and!343785)

(assert (not b!4882077))

(assert (not b!4882066))

(assert (not b_next!131743))

(assert (not b!4882071))

(assert (not b!4882068))

(assert (not start!510798))

(assert (not b!4882074))

(assert b_and!343783)

(check-sat)

(pop 1)

(push 1)

(assert b_and!343785)

(assert b_and!343783)

(assert (not b_next!131741))

(assert (not b_next!131743))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1569003 () Bool)

(declare-fun isEmpty!30064 (Option!13835) Bool)

(assert (=> d!1569003 (= (isDefined!10886 lt!1999837) (not (isEmpty!30064 lt!1999837)))))

(declare-fun bs!1175447 () Bool)

(assert (= bs!1175447 d!1569003))

(declare-fun m!5886346 () Bool)

(assert (=> bs!1175447 m!5886346))

(assert (=> b!4882074 d!1569003))

(declare-fun d!1569005 () Bool)

(assert (=> d!1569005 (= (get!19288 lt!1999836) (v!49784 lt!1999836))))

(assert (=> b!4882073 d!1569005))

(declare-fun d!1569007 () Bool)

(assert (=> d!1569007 (= (get!19287 lt!1999835) (v!49783 lt!1999835))))

(assert (=> b!4882073 d!1569007))

(declare-fun d!1569009 () Bool)

(declare-fun isBalanced!3984 (Conc!14639) Bool)

(assert (=> d!1569009 (= (inv!72130 input!1236) (isBalanced!3984 (c!830346 input!1236)))))

(declare-fun bs!1175448 () Bool)

(assert (= bs!1175448 d!1569009))

(declare-fun m!5886348 () Bool)

(assert (=> bs!1175448 m!5886348))

(assert (=> start!510798 d!1569009))

(declare-fun d!1569011 () Bool)

(assert (=> d!1569011 (= (inv!72127 (tag!8935 (h!62544 rulesArg!165))) (= (mod (str.len (value!259178 (tag!8935 (h!62544 rulesArg!165)))) 2) 0))))

(assert (=> b!4882077 d!1569011))

(declare-fun d!1569013 () Bool)

(declare-fun res!2084123 () Bool)

(declare-fun e!3051242 () Bool)

(assert (=> d!1569013 (=> (not res!2084123) (not e!3051242))))

(declare-fun semiInverseModEq!3558 (Int Int) Bool)

(assert (=> d!1569013 (= res!2084123 (semiInverseModEq!3558 (toChars!10817 (transformation!8071 (h!62544 rulesArg!165))) (toValue!10958 (transformation!8071 (h!62544 rulesArg!165)))))))

(assert (=> d!1569013 (= (inv!72132 (transformation!8071 (h!62544 rulesArg!165))) e!3051242)))

(declare-fun b!4882124 () Bool)

(declare-fun equivClasses!3437 (Int Int) Bool)

(assert (=> b!4882124 (= e!3051242 (equivClasses!3437 (toChars!10817 (transformation!8071 (h!62544 rulesArg!165))) (toValue!10958 (transformation!8071 (h!62544 rulesArg!165)))))))

(assert (= (and d!1569013 res!2084123) b!4882124))

(declare-fun m!5886350 () Bool)

(assert (=> d!1569013 m!5886350))

(declare-fun m!5886352 () Bool)

(assert (=> b!4882124 m!5886352))

(assert (=> b!4882077 d!1569013))

(declare-fun b!4882135 () Bool)

(declare-fun e!3051251 () Bool)

(declare-fun tail!9572 (List!56218) List!56218)

(assert (=> b!4882135 (= e!3051251 (isPrefix!4793 (tail!9572 lt!1999832) (tail!9572 lt!1999832)))))

(declare-fun d!1569015 () Bool)

(declare-fun e!3051249 () Bool)

(assert (=> d!1569015 e!3051249))

(declare-fun res!2084135 () Bool)

(assert (=> d!1569015 (=> res!2084135 e!3051249)))

(declare-fun lt!1999869 () Bool)

(assert (=> d!1569015 (= res!2084135 (not lt!1999869))))

(declare-fun e!3051250 () Bool)

(assert (=> d!1569015 (= lt!1999869 e!3051250)))

(declare-fun res!2084133 () Bool)

(assert (=> d!1569015 (=> res!2084133 e!3051250)))

(assert (=> d!1569015 (= res!2084133 (is-Nil!56094 lt!1999832))))

(assert (=> d!1569015 (= (isPrefix!4793 lt!1999832 lt!1999832) lt!1999869)))

(declare-fun b!4882134 () Bool)

(declare-fun res!2084132 () Bool)

(assert (=> b!4882134 (=> (not res!2084132) (not e!3051251))))

(declare-fun head!10426 (List!56218) C!26490)

(assert (=> b!4882134 (= res!2084132 (= (head!10426 lt!1999832) (head!10426 lt!1999832)))))

(declare-fun b!4882136 () Bool)

(declare-fun size!36985 (List!56218) Int)

(assert (=> b!4882136 (= e!3051249 (>= (size!36985 lt!1999832) (size!36985 lt!1999832)))))

(declare-fun b!4882133 () Bool)

(assert (=> b!4882133 (= e!3051250 e!3051251)))

(declare-fun res!2084134 () Bool)

(assert (=> b!4882133 (=> (not res!2084134) (not e!3051251))))

(assert (=> b!4882133 (= res!2084134 (not (is-Nil!56094 lt!1999832)))))

(assert (= (and d!1569015 (not res!2084133)) b!4882133))

(assert (= (and b!4882133 res!2084134) b!4882134))

(assert (= (and b!4882134 res!2084132) b!4882135))

(assert (= (and d!1569015 (not res!2084135)) b!4882136))

(declare-fun m!5886354 () Bool)

(assert (=> b!4882135 m!5886354))

(assert (=> b!4882135 m!5886354))

(assert (=> b!4882135 m!5886354))

(assert (=> b!4882135 m!5886354))

(declare-fun m!5886356 () Bool)

(assert (=> b!4882135 m!5886356))

(declare-fun m!5886358 () Bool)

(assert (=> b!4882134 m!5886358))

(assert (=> b!4882134 m!5886358))

(declare-fun m!5886360 () Bool)

(assert (=> b!4882136 m!5886360))

(assert (=> b!4882136 m!5886360))

(assert (=> b!4882075 d!1569015))

(declare-fun d!1569017 () Bool)

(assert (=> d!1569017 (isPrefix!4793 lt!1999832 lt!1999832)))

(declare-fun lt!1999872 () Unit!146085)

(declare-fun choose!35664 (List!56218 List!56218) Unit!146085)

(assert (=> d!1569017 (= lt!1999872 (choose!35664 lt!1999832 lt!1999832))))

(assert (=> d!1569017 (= (lemmaIsPrefixRefl!3190 lt!1999832 lt!1999832) lt!1999872)))

(declare-fun bs!1175449 () Bool)

(assert (= bs!1175449 d!1569017))

(assert (=> bs!1175449 m!5886302))

(declare-fun m!5886362 () Bool)

(assert (=> bs!1175449 m!5886362))

(assert (=> b!4882075 d!1569017))

(declare-fun d!1569019 () Bool)

(declare-fun list!17593 (Conc!14639) List!56218)

(assert (=> d!1569019 (= (list!17591 input!1236) (list!17593 (c!830346 input!1236)))))

(declare-fun bs!1175450 () Bool)

(assert (= bs!1175450 d!1569019))

(declare-fun m!5886364 () Bool)

(assert (=> bs!1175450 m!5886364))

(assert (=> b!4882075 d!1569019))

(declare-fun d!1569021 () Bool)

(assert (=> d!1569021 true))

(declare-fun lt!1999904 () Bool)

(declare-fun lambda!243712 () Int)

(declare-fun forall!13062 (List!56220 Int) Bool)

(assert (=> d!1569021 (= lt!1999904 (forall!13062 rulesArg!165 lambda!243712))))

(declare-fun e!3051264 () Bool)

(assert (=> d!1569021 (= lt!1999904 e!3051264)))

(declare-fun res!2084142 () Bool)

(assert (=> d!1569021 (=> res!2084142 e!3051264)))

(assert (=> d!1569021 (= res!2084142 (not (is-Cons!56096 rulesArg!165)))))

(assert (=> d!1569021 (= (rulesValidInductive!3050 thiss!14805 rulesArg!165) lt!1999904)))

(declare-fun b!4882153 () Bool)

(declare-fun e!3051263 () Bool)

(assert (=> b!4882153 (= e!3051264 e!3051263)))

(declare-fun res!2084143 () Bool)

(assert (=> b!4882153 (=> (not res!2084143) (not e!3051263))))

(declare-fun ruleValid!3643 (LexerInterface!7663 Rule!15942) Bool)

(assert (=> b!4882153 (= res!2084143 (ruleValid!3643 thiss!14805 (h!62544 rulesArg!165)))))

(declare-fun b!4882154 () Bool)

(assert (=> b!4882154 (= e!3051263 (rulesValidInductive!3050 thiss!14805 (t!364866 rulesArg!165)))))

(assert (= (and d!1569021 (not res!2084142)) b!4882153))

(assert (= (and b!4882153 res!2084143) b!4882154))

(declare-fun m!5886374 () Bool)

(assert (=> d!1569021 m!5886374))

(declare-fun m!5886376 () Bool)

(assert (=> b!4882153 m!5886376))

(declare-fun m!5886378 () Bool)

(assert (=> b!4882154 m!5886378))

(assert (=> b!4882079 d!1569021))

(declare-fun d!1569031 () Bool)

(assert (=> d!1569031 (= (isDefined!10886 lt!1999836) (not (isEmpty!30064 lt!1999836)))))

(declare-fun bs!1175453 () Bool)

(assert (= bs!1175453 d!1569031))

(declare-fun m!5886380 () Bool)

(assert (=> bs!1175453 m!5886380))

(assert (=> b!4882068 d!1569031))

(declare-fun d!1569033 () Bool)

(declare-fun isEmpty!30065 (Option!13834) Bool)

(assert (=> d!1569033 (= (isDefined!10887 lt!1999835) (not (isEmpty!30065 lt!1999835)))))

(declare-fun bs!1175454 () Bool)

(assert (= bs!1175454 d!1569033))

(declare-fun m!5886382 () Bool)

(assert (=> bs!1175454 m!5886382))

(assert (=> b!4882068 d!1569033))

(declare-fun lt!1999915 () Option!13835)

(declare-fun d!1569035 () Bool)

(assert (=> d!1569035 (= lt!1999915 (maxPrefix!4562 thiss!14805 rulesArg!165 lt!1999832))))

(declare-fun e!3051267 () Option!13835)

(assert (=> d!1569035 (= lt!1999915 e!3051267)))

(declare-fun c!830358 () Bool)

(assert (=> d!1569035 (= c!830358 (and (is-Cons!56096 rulesArg!165) (is-Nil!56096 (t!364866 rulesArg!165))))))

(declare-fun lt!1999917 () Unit!146085)

(declare-fun lt!1999916 () Unit!146085)

(assert (=> d!1569035 (= lt!1999917 lt!1999916)))

(assert (=> d!1569035 (isPrefix!4793 lt!1999832 lt!1999832)))

(assert (=> d!1569035 (= lt!1999916 (lemmaIsPrefixRefl!3190 lt!1999832 lt!1999832))))

(assert (=> d!1569035 (rulesValidInductive!3050 thiss!14805 rulesArg!165)))

(assert (=> d!1569035 (= (maxPrefixZipper!584 thiss!14805 rulesArg!165 lt!1999832) lt!1999915)))

(declare-fun call!338912 () Option!13835)

(declare-fun bm!338907 () Bool)

(declare-fun maxPrefixOneRuleZipper!236 (LexerInterface!7663 Rule!15942 List!56218) Option!13835)

(assert (=> bm!338907 (= call!338912 (maxPrefixOneRuleZipper!236 thiss!14805 (h!62544 rulesArg!165) lt!1999832))))

(declare-fun b!4882161 () Bool)

(assert (=> b!4882161 (= e!3051267 call!338912)))

(declare-fun b!4882162 () Bool)

(declare-fun lt!1999919 () Option!13835)

(declare-fun lt!1999918 () Option!13835)

(assert (=> b!4882162 (= e!3051267 (ite (and (is-None!13834 lt!1999919) (is-None!13834 lt!1999918)) None!13834 (ite (is-None!13834 lt!1999918) lt!1999919 (ite (is-None!13834 lt!1999919) lt!1999918 (ite (>= (size!36983 (_1!33295 (v!49784 lt!1999919))) (size!36983 (_1!33295 (v!49784 lt!1999918)))) lt!1999919 lt!1999918)))))))

(assert (=> b!4882162 (= lt!1999919 call!338912)))

(assert (=> b!4882162 (= lt!1999918 (maxPrefixZipper!584 thiss!14805 (t!364866 rulesArg!165) lt!1999832))))

(assert (= (and d!1569035 c!830358) b!4882161))

(assert (= (and d!1569035 (not c!830358)) b!4882162))

(assert (= (or b!4882161 b!4882162) bm!338907))

(assert (=> d!1569035 m!5886286))

(assert (=> d!1569035 m!5886302))

(assert (=> d!1569035 m!5886304))

(assert (=> d!1569035 m!5886280))

(declare-fun m!5886384 () Bool)

(assert (=> bm!338907 m!5886384))

(declare-fun m!5886386 () Bool)

(assert (=> b!4882162 m!5886386))

(assert (=> b!4882068 d!1569035))

(declare-fun b!4882188 () Bool)

(declare-fun e!3051288 () Bool)

(assert (=> b!4882188 (= e!3051288 true)))

(declare-fun b!4882187 () Bool)

(declare-fun e!3051287 () Bool)

(assert (=> b!4882187 (= e!3051287 e!3051288)))

(declare-fun b!4882175 () Bool)

(assert (=> b!4882175 e!3051287))

(assert (= b!4882187 b!4882188))

(assert (= b!4882175 b!4882187))

(declare-fun order!25303 () Int)

(declare-fun lambda!243717 () Int)

(declare-fun order!25305 () Int)

(declare-fun dynLambda!22543 (Int Int) Int)

(declare-fun dynLambda!22544 (Int Int) Int)

(assert (=> b!4882188 (< (dynLambda!22543 order!25303 (toValue!10958 (transformation!8071 (h!62544 rulesArg!165)))) (dynLambda!22544 order!25305 lambda!243717))))

(declare-fun order!25307 () Int)

(declare-fun dynLambda!22545 (Int Int) Int)

(assert (=> b!4882188 (< (dynLambda!22545 order!25307 (toChars!10817 (transformation!8071 (h!62544 rulesArg!165)))) (dynLambda!22544 order!25305 lambda!243717))))

(declare-fun d!1569037 () Bool)

(declare-fun e!3051280 () Bool)

(assert (=> d!1569037 e!3051280))

(declare-fun res!2084152 () Bool)

(assert (=> d!1569037 (=> (not res!2084152) (not e!3051280))))

(declare-fun lt!1999940 () Option!13834)

(declare-fun maxPrefixOneRule!3502 (LexerInterface!7663 Rule!15942 List!56218) Option!13835)

(assert (=> d!1569037 (= res!2084152 (= (isDefined!10887 lt!1999940) (isDefined!10886 (maxPrefixOneRule!3502 thiss!14805 (h!62544 rulesArg!165) (list!17591 input!1236)))))))

(declare-fun e!3051281 () Option!13834)

(assert (=> d!1569037 (= lt!1999940 e!3051281)))

(declare-fun c!830361 () Bool)

(declare-datatypes ((tuple2!59990 0))(
  ( (tuple2!59991 (_1!33298 BalanceConc!28708) (_2!33298 BalanceConc!28708)) )
))
(declare-fun lt!1999941 () tuple2!59990)

(declare-fun isEmpty!30066 (BalanceConc!28708) Bool)

(assert (=> d!1569037 (= c!830361 (isEmpty!30066 (_1!33298 lt!1999941)))))

(declare-fun findLongestMatchWithZipperSequence!247 (Regex!13146 BalanceConc!28708) tuple2!59990)

(assert (=> d!1569037 (= lt!1999941 (findLongestMatchWithZipperSequence!247 (regex!8071 (h!62544 rulesArg!165)) input!1236))))

(assert (=> d!1569037 (ruleValid!3643 thiss!14805 (h!62544 rulesArg!165))))

(assert (=> d!1569037 (= (maxPrefixOneRuleZipperSequence!599 thiss!14805 (h!62544 rulesArg!165) input!1236) lt!1999940)))

(declare-fun apply!13513 (TokenValueInjection!16070 BalanceConc!28708) TokenValue!8381)

(declare-fun size!36986 (BalanceConc!28708) Int)

(assert (=> b!4882175 (= e!3051281 (Some!13833 (tuple2!59983 (Token!14715 (apply!13513 (transformation!8071 (h!62544 rulesArg!165)) (_1!33298 lt!1999941)) (h!62544 rulesArg!165) (size!36986 (_1!33298 lt!1999941)) (list!17591 (_1!33298 lt!1999941))) (_2!33298 lt!1999941))))))

(declare-fun lt!1999946 () List!56218)

(assert (=> b!4882175 (= lt!1999946 (list!17591 input!1236))))

(declare-fun lt!1999948 () Unit!146085)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1695 (Regex!13146 List!56218) Unit!146085)

(assert (=> b!4882175 (= lt!1999948 (longestMatchIsAcceptedByMatchOrIsEmpty!1695 (regex!8071 (h!62544 rulesArg!165)) lt!1999946))))

(declare-fun res!2084154 () Bool)

(declare-fun isEmpty!30067 (List!56218) Bool)

(declare-datatypes ((tuple2!59992 0))(
  ( (tuple2!59993 (_1!33299 List!56218) (_2!33299 List!56218)) )
))
(declare-fun findLongestMatchInner!1732 (Regex!13146 List!56218 Int List!56218 List!56218 Int) tuple2!59992)

(assert (=> b!4882175 (= res!2084154 (isEmpty!30067 (_1!33299 (findLongestMatchInner!1732 (regex!8071 (h!62544 rulesArg!165)) Nil!56094 (size!36985 Nil!56094) lt!1999946 lt!1999946 (size!36985 lt!1999946)))))))

(declare-fun e!3051279 () Bool)

(assert (=> b!4882175 (=> res!2084154 e!3051279)))

(assert (=> b!4882175 e!3051279))

(declare-fun lt!1999945 () Unit!146085)

(assert (=> b!4882175 (= lt!1999945 lt!1999948)))

(declare-fun lt!1999943 () Unit!146085)

(declare-fun lemmaInv!1215 (TokenValueInjection!16070) Unit!146085)

(assert (=> b!4882175 (= lt!1999943 (lemmaInv!1215 (transformation!8071 (h!62544 rulesArg!165))))))

(declare-fun lt!1999942 () Unit!146085)

(declare-fun ForallOf!1112 (Int BalanceConc!28708) Unit!146085)

(assert (=> b!4882175 (= lt!1999942 (ForallOf!1112 lambda!243717 (_1!33298 lt!1999941)))))

(declare-fun lt!1999944 () Unit!146085)

(declare-fun seqFromList!5909 (List!56218) BalanceConc!28708)

(assert (=> b!4882175 (= lt!1999944 (ForallOf!1112 lambda!243717 (seqFromList!5909 (list!17591 (_1!33298 lt!1999941)))))))

(declare-fun lt!1999947 () Option!13834)

(assert (=> b!4882175 (= lt!1999947 (Some!13833 (tuple2!59983 (Token!14715 (apply!13513 (transformation!8071 (h!62544 rulesArg!165)) (_1!33298 lt!1999941)) (h!62544 rulesArg!165) (size!36986 (_1!33298 lt!1999941)) (list!17591 (_1!33298 lt!1999941))) (_2!33298 lt!1999941))))))

(declare-fun lt!1999949 () Unit!146085)

(declare-fun lemmaEqSameImage!1069 (TokenValueInjection!16070 BalanceConc!28708 BalanceConc!28708) Unit!146085)

(assert (=> b!4882175 (= lt!1999949 (lemmaEqSameImage!1069 (transformation!8071 (h!62544 rulesArg!165)) (_1!33298 lt!1999941) (seqFromList!5909 (list!17591 (_1!33298 lt!1999941)))))))

(declare-fun e!3051278 () Bool)

(declare-fun b!4882176 () Bool)

(assert (=> b!4882176 (= e!3051278 (= (list!17591 (_2!33294 (get!19287 lt!1999940))) (_2!33295 (get!19288 (maxPrefixOneRule!3502 thiss!14805 (h!62544 rulesArg!165) (list!17591 input!1236))))))))

(declare-fun b!4882177 () Bool)

(declare-fun e!3051282 () Bool)

(assert (=> b!4882177 (= e!3051282 e!3051278)))

(declare-fun res!2084153 () Bool)

(assert (=> b!4882177 (=> (not res!2084153) (not e!3051278))))

(assert (=> b!4882177 (= res!2084153 (= (_1!33294 (get!19287 lt!1999940)) (_1!33295 (get!19288 (maxPrefixOneRule!3502 thiss!14805 (h!62544 rulesArg!165) (list!17591 input!1236))))))))

(declare-fun b!4882178 () Bool)

(declare-fun matchR!6503 (Regex!13146 List!56218) Bool)

(assert (=> b!4882178 (= e!3051279 (matchR!6503 (regex!8071 (h!62544 rulesArg!165)) (_1!33299 (findLongestMatchInner!1732 (regex!8071 (h!62544 rulesArg!165)) Nil!56094 (size!36985 Nil!56094) lt!1999946 lt!1999946 (size!36985 lt!1999946)))))))

(declare-fun b!4882179 () Bool)

(assert (=> b!4882179 (= e!3051280 e!3051282)))

(declare-fun res!2084155 () Bool)

(assert (=> b!4882179 (=> res!2084155 e!3051282)))

(assert (=> b!4882179 (= res!2084155 (not (isDefined!10887 lt!1999940)))))

(declare-fun b!4882180 () Bool)

(assert (=> b!4882180 (= e!3051281 None!13833)))

(assert (= (and d!1569037 c!830361) b!4882180))

(assert (= (and d!1569037 (not c!830361)) b!4882175))

(assert (= (and b!4882175 (not res!2084154)) b!4882178))

(assert (= (and d!1569037 res!2084152) b!4882179))

(assert (= (and b!4882179 (not res!2084155)) b!4882177))

(assert (= (and b!4882177 res!2084153) b!4882176))

(declare-fun m!5886388 () Bool)

(assert (=> b!4882179 m!5886388))

(declare-fun m!5886390 () Bool)

(assert (=> b!4882178 m!5886390))

(declare-fun m!5886392 () Bool)

(assert (=> b!4882178 m!5886392))

(assert (=> b!4882178 m!5886390))

(assert (=> b!4882178 m!5886392))

(declare-fun m!5886394 () Bool)

(assert (=> b!4882178 m!5886394))

(declare-fun m!5886396 () Bool)

(assert (=> b!4882178 m!5886396))

(declare-fun m!5886398 () Bool)

(assert (=> d!1569037 m!5886398))

(declare-fun m!5886400 () Bool)

(assert (=> d!1569037 m!5886400))

(assert (=> d!1569037 m!5886376))

(assert (=> d!1569037 m!5886388))

(declare-fun m!5886402 () Bool)

(assert (=> d!1569037 m!5886402))

(declare-fun m!5886404 () Bool)

(assert (=> d!1569037 m!5886404))

(assert (=> d!1569037 m!5886306))

(assert (=> d!1569037 m!5886398))

(assert (=> d!1569037 m!5886306))

(assert (=> b!4882175 m!5886390))

(assert (=> b!4882175 m!5886392))

(assert (=> b!4882175 m!5886394))

(declare-fun m!5886406 () Bool)

(assert (=> b!4882175 m!5886406))

(assert (=> b!4882175 m!5886392))

(declare-fun m!5886408 () Bool)

(assert (=> b!4882175 m!5886408))

(declare-fun m!5886410 () Bool)

(assert (=> b!4882175 m!5886410))

(declare-fun m!5886412 () Bool)

(assert (=> b!4882175 m!5886412))

(assert (=> b!4882175 m!5886410))

(assert (=> b!4882175 m!5886390))

(assert (=> b!4882175 m!5886306))

(declare-fun m!5886414 () Bool)

(assert (=> b!4882175 m!5886414))

(assert (=> b!4882175 m!5886412))

(declare-fun m!5886416 () Bool)

(assert (=> b!4882175 m!5886416))

(declare-fun m!5886418 () Bool)

(assert (=> b!4882175 m!5886418))

(declare-fun m!5886420 () Bool)

(assert (=> b!4882175 m!5886420))

(declare-fun m!5886422 () Bool)

(assert (=> b!4882175 m!5886422))

(assert (=> b!4882175 m!5886412))

(declare-fun m!5886424 () Bool)

(assert (=> b!4882175 m!5886424))

(assert (=> b!4882176 m!5886398))

(declare-fun m!5886426 () Bool)

(assert (=> b!4882176 m!5886426))

(declare-fun m!5886428 () Bool)

(assert (=> b!4882176 m!5886428))

(declare-fun m!5886430 () Bool)

(assert (=> b!4882176 m!5886430))

(assert (=> b!4882176 m!5886306))

(assert (=> b!4882176 m!5886398))

(assert (=> b!4882176 m!5886306))

(assert (=> b!4882177 m!5886428))

(assert (=> b!4882177 m!5886306))

(assert (=> b!4882177 m!5886306))

(assert (=> b!4882177 m!5886398))

(assert (=> b!4882177 m!5886398))

(assert (=> b!4882177 m!5886426))

(assert (=> b!4882068 d!1569037))

(assert (=> b!4882067 d!1569007))

(declare-fun d!1569039 () Bool)

(assert (=> d!1569039 (= (get!19288 lt!1999837) (v!49784 lt!1999837))))

(assert (=> b!4882067 d!1569039))

(declare-fun b!4882207 () Bool)

(declare-fun e!3051296 () Option!13835)

(declare-fun lt!1999963 () Option!13835)

(declare-fun lt!1999962 () Option!13835)

(assert (=> b!4882207 (= e!3051296 (ite (and (is-None!13834 lt!1999963) (is-None!13834 lt!1999962)) None!13834 (ite (is-None!13834 lt!1999962) lt!1999963 (ite (is-None!13834 lt!1999963) lt!1999962 (ite (>= (size!36983 (_1!33295 (v!49784 lt!1999963))) (size!36983 (_1!33295 (v!49784 lt!1999962)))) lt!1999963 lt!1999962)))))))

(declare-fun call!338915 () Option!13835)

(assert (=> b!4882207 (= lt!1999963 call!338915)))

(assert (=> b!4882207 (= lt!1999962 (maxPrefix!4562 thiss!14805 (t!364866 rulesArg!165) lt!1999832))))

(declare-fun b!4882208 () Bool)

(declare-fun res!2084174 () Bool)

(declare-fun e!3051295 () Bool)

(assert (=> b!4882208 (=> (not res!2084174) (not e!3051295))))

(declare-fun lt!1999961 () Option!13835)

(declare-fun charsOf!5352 (Token!14714) BalanceConc!28708)

(assert (=> b!4882208 (= res!2084174 (= (list!17591 (charsOf!5352 (_1!33295 (get!19288 lt!1999961)))) (originalCharacters!8388 (_1!33295 (get!19288 lt!1999961)))))))

(declare-fun b!4882209 () Bool)

(declare-fun res!2084171 () Bool)

(assert (=> b!4882209 (=> (not res!2084171) (not e!3051295))))

(assert (=> b!4882209 (= res!2084171 (matchR!6503 (regex!8071 (rule!11229 (_1!33295 (get!19288 lt!1999961)))) (list!17591 (charsOf!5352 (_1!33295 (get!19288 lt!1999961))))))))

(declare-fun d!1569041 () Bool)

(declare-fun e!3051297 () Bool)

(assert (=> d!1569041 e!3051297))

(declare-fun res!2084172 () Bool)

(assert (=> d!1569041 (=> res!2084172 e!3051297)))

(assert (=> d!1569041 (= res!2084172 (isEmpty!30064 lt!1999961))))

(assert (=> d!1569041 (= lt!1999961 e!3051296)))

(declare-fun c!830364 () Bool)

(assert (=> d!1569041 (= c!830364 (and (is-Cons!56096 rulesArg!165) (is-Nil!56096 (t!364866 rulesArg!165))))))

(declare-fun lt!1999964 () Unit!146085)

(declare-fun lt!1999960 () Unit!146085)

(assert (=> d!1569041 (= lt!1999964 lt!1999960)))

(assert (=> d!1569041 (isPrefix!4793 lt!1999832 lt!1999832)))

(assert (=> d!1569041 (= lt!1999960 (lemmaIsPrefixRefl!3190 lt!1999832 lt!1999832))))

(assert (=> d!1569041 (rulesValidInductive!3050 thiss!14805 rulesArg!165)))

(assert (=> d!1569041 (= (maxPrefix!4562 thiss!14805 rulesArg!165 lt!1999832) lt!1999961)))

(declare-fun b!4882210 () Bool)

(declare-fun contains!19415 (List!56220 Rule!15942) Bool)

(assert (=> b!4882210 (= e!3051295 (contains!19415 rulesArg!165 (rule!11229 (_1!33295 (get!19288 lt!1999961)))))))

(declare-fun bm!338910 () Bool)

(assert (=> bm!338910 (= call!338915 (maxPrefixOneRule!3502 thiss!14805 (h!62544 rulesArg!165) lt!1999832))))

(declare-fun b!4882211 () Bool)

(declare-fun res!2084173 () Bool)

(assert (=> b!4882211 (=> (not res!2084173) (not e!3051295))))

(declare-fun ++!12221 (List!56218 List!56218) List!56218)

(assert (=> b!4882211 (= res!2084173 (= (++!12221 (list!17591 (charsOf!5352 (_1!33295 (get!19288 lt!1999961)))) (_2!33295 (get!19288 lt!1999961))) lt!1999832))))

(declare-fun b!4882212 () Bool)

(assert (=> b!4882212 (= e!3051297 e!3051295)))

(declare-fun res!2084170 () Bool)

(assert (=> b!4882212 (=> (not res!2084170) (not e!3051295))))

(assert (=> b!4882212 (= res!2084170 (isDefined!10886 lt!1999961))))

(declare-fun b!4882213 () Bool)

(declare-fun res!2084176 () Bool)

(assert (=> b!4882213 (=> (not res!2084176) (not e!3051295))))

(assert (=> b!4882213 (= res!2084176 (= (value!259179 (_1!33295 (get!19288 lt!1999961))) (apply!13513 (transformation!8071 (rule!11229 (_1!33295 (get!19288 lt!1999961)))) (seqFromList!5909 (originalCharacters!8388 (_1!33295 (get!19288 lt!1999961)))))))))

(declare-fun b!4882214 () Bool)

(assert (=> b!4882214 (= e!3051296 call!338915)))

(declare-fun b!4882215 () Bool)

(declare-fun res!2084175 () Bool)

(assert (=> b!4882215 (=> (not res!2084175) (not e!3051295))))

(assert (=> b!4882215 (= res!2084175 (< (size!36985 (_2!33295 (get!19288 lt!1999961))) (size!36985 lt!1999832)))))

(assert (= (and d!1569041 c!830364) b!4882214))

(assert (= (and d!1569041 (not c!830364)) b!4882207))

(assert (= (or b!4882214 b!4882207) bm!338910))

(assert (= (and d!1569041 (not res!2084172)) b!4882212))

(assert (= (and b!4882212 res!2084170) b!4882208))

(assert (= (and b!4882208 res!2084174) b!4882215))

(assert (= (and b!4882215 res!2084175) b!4882211))

(assert (= (and b!4882211 res!2084173) b!4882213))

(assert (= (and b!4882213 res!2084176) b!4882209))

(assert (= (and b!4882209 res!2084171) b!4882210))

(declare-fun m!5886432 () Bool)

(assert (=> b!4882209 m!5886432))

(declare-fun m!5886434 () Bool)

(assert (=> b!4882209 m!5886434))

(assert (=> b!4882209 m!5886434))

(declare-fun m!5886436 () Bool)

(assert (=> b!4882209 m!5886436))

(assert (=> b!4882209 m!5886436))

(declare-fun m!5886438 () Bool)

(assert (=> b!4882209 m!5886438))

(assert (=> b!4882208 m!5886432))

(assert (=> b!4882208 m!5886434))

(assert (=> b!4882208 m!5886434))

(assert (=> b!4882208 m!5886436))

(declare-fun m!5886440 () Bool)

(assert (=> d!1569041 m!5886440))

(assert (=> d!1569041 m!5886302))

(assert (=> d!1569041 m!5886304))

(assert (=> d!1569041 m!5886280))

(declare-fun m!5886442 () Bool)

(assert (=> b!4882207 m!5886442))

(declare-fun m!5886444 () Bool)

(assert (=> b!4882212 m!5886444))

(assert (=> b!4882215 m!5886432))

(declare-fun m!5886446 () Bool)

(assert (=> b!4882215 m!5886446))

(assert (=> b!4882215 m!5886360))

(declare-fun m!5886448 () Bool)

(assert (=> bm!338910 m!5886448))

(assert (=> b!4882211 m!5886432))

(assert (=> b!4882211 m!5886434))

(assert (=> b!4882211 m!5886434))

(assert (=> b!4882211 m!5886436))

(assert (=> b!4882211 m!5886436))

(declare-fun m!5886450 () Bool)

(assert (=> b!4882211 m!5886450))

(assert (=> b!4882213 m!5886432))

(declare-fun m!5886452 () Bool)

(assert (=> b!4882213 m!5886452))

(assert (=> b!4882213 m!5886452))

(declare-fun m!5886454 () Bool)

(assert (=> b!4882213 m!5886454))

(assert (=> b!4882210 m!5886432))

(declare-fun m!5886456 () Bool)

(assert (=> b!4882210 m!5886456))

(assert (=> b!4882067 d!1569041))

(declare-fun d!1569043 () Bool)

(assert (=> d!1569043 (= (list!17591 (_2!33294 lt!1999833)) (list!17593 (c!830346 (_2!33294 lt!1999833))))))

(declare-fun bs!1175455 () Bool)

(assert (= bs!1175455 d!1569043))

(declare-fun m!5886458 () Bool)

(assert (=> bs!1175455 m!5886458))

(assert (=> b!4882072 d!1569043))

(declare-fun d!1569045 () Bool)

(assert (=> d!1569045 (= (isEmpty!30062 rulesArg!165) (is-Nil!56096 rulesArg!165))))

(assert (=> b!4882071 d!1569045))

(declare-fun d!1569047 () Bool)

(declare-fun c!830367 () Bool)

(assert (=> d!1569047 (= c!830367 (is-Node!14639 (c!830346 input!1236)))))

(declare-fun e!3051302 () Bool)

(assert (=> d!1569047 (= (inv!72131 (c!830346 input!1236)) e!3051302)))

(declare-fun b!4882222 () Bool)

(declare-fun inv!72136 (Conc!14639) Bool)

(assert (=> b!4882222 (= e!3051302 (inv!72136 (c!830346 input!1236)))))

(declare-fun b!4882223 () Bool)

(declare-fun e!3051303 () Bool)

(assert (=> b!4882223 (= e!3051302 e!3051303)))

(declare-fun res!2084179 () Bool)

(assert (=> b!4882223 (= res!2084179 (not (is-Leaf!24392 (c!830346 input!1236))))))

(assert (=> b!4882223 (=> res!2084179 e!3051303)))

(declare-fun b!4882224 () Bool)

(declare-fun inv!72137 (Conc!14639) Bool)

(assert (=> b!4882224 (= e!3051303 (inv!72137 (c!830346 input!1236)))))

(assert (= (and d!1569047 c!830367) b!4882222))

(assert (= (and d!1569047 (not c!830367)) b!4882223))

(assert (= (and b!4882223 (not res!2084179)) b!4882224))

(declare-fun m!5886460 () Bool)

(assert (=> b!4882222 m!5886460))

(declare-fun m!5886462 () Bool)

(assert (=> b!4882224 m!5886462))

(assert (=> b!4882070 d!1569047))

(declare-fun b!4882236 () Bool)

(declare-fun e!3051306 () Bool)

(declare-fun tp!1373594 () Bool)

(declare-fun tp!1373598 () Bool)

(assert (=> b!4882236 (= e!3051306 (and tp!1373594 tp!1373598))))

(declare-fun b!4882237 () Bool)

(declare-fun tp!1373597 () Bool)

(assert (=> b!4882237 (= e!3051306 tp!1373597)))

(declare-fun b!4882235 () Bool)

(declare-fun tp_is_empty!35709 () Bool)

(assert (=> b!4882235 (= e!3051306 tp_is_empty!35709)))

(declare-fun b!4882238 () Bool)

(declare-fun tp!1373595 () Bool)

(declare-fun tp!1373596 () Bool)

(assert (=> b!4882238 (= e!3051306 (and tp!1373595 tp!1373596))))

(assert (=> b!4882077 (= tp!1373566 e!3051306)))

(assert (= (and b!4882077 (is-ElementMatch!13146 (regex!8071 (h!62544 rulesArg!165)))) b!4882235))

(assert (= (and b!4882077 (is-Concat!21528 (regex!8071 (h!62544 rulesArg!165)))) b!4882236))

(assert (= (and b!4882077 (is-Star!13146 (regex!8071 (h!62544 rulesArg!165)))) b!4882237))

(assert (= (and b!4882077 (is-Union!13146 (regex!8071 (h!62544 rulesArg!165)))) b!4882238))

(declare-fun b!4882249 () Bool)

(declare-fun b_free!130959 () Bool)

(declare-fun b_next!131749 () Bool)

(assert (=> b!4882249 (= b_free!130959 (not b_next!131749))))

(declare-fun tp!1373607 () Bool)

(declare-fun b_and!343791 () Bool)

(assert (=> b!4882249 (= tp!1373607 b_and!343791)))

(declare-fun b_free!130961 () Bool)

(declare-fun b_next!131751 () Bool)

(assert (=> b!4882249 (= b_free!130961 (not b_next!131751))))

(declare-fun tp!1373610 () Bool)

(declare-fun b_and!343793 () Bool)

(assert (=> b!4882249 (= tp!1373610 b_and!343793)))

(declare-fun e!3051315 () Bool)

(assert (=> b!4882249 (= e!3051315 (and tp!1373607 tp!1373610))))

(declare-fun b!4882248 () Bool)

(declare-fun tp!1373608 () Bool)

(declare-fun e!3051316 () Bool)

(assert (=> b!4882248 (= e!3051316 (and tp!1373608 (inv!72127 (tag!8935 (h!62544 (t!364866 rulesArg!165)))) (inv!72132 (transformation!8071 (h!62544 (t!364866 rulesArg!165)))) e!3051315))))

(declare-fun b!4882247 () Bool)

(declare-fun e!3051318 () Bool)

(declare-fun tp!1373609 () Bool)

(assert (=> b!4882247 (= e!3051318 (and e!3051316 tp!1373609))))

(assert (=> b!4882066 (= tp!1373564 e!3051318)))

(assert (= b!4882248 b!4882249))

(assert (= b!4882247 b!4882248))

(assert (= (and b!4882066 (is-Cons!56096 (t!364866 rulesArg!165))) b!4882247))

(declare-fun m!5886464 () Bool)

(assert (=> b!4882248 m!5886464))

(declare-fun m!5886466 () Bool)

(assert (=> b!4882248 m!5886466))

(declare-fun tp!1373617 () Bool)

(declare-fun e!3051329 () Bool)

(declare-fun b!4882264 () Bool)

(declare-fun tp!1373619 () Bool)

(assert (=> b!4882264 (= e!3051329 (and (inv!72131 (left!40753 (c!830346 input!1236))) tp!1373619 (inv!72131 (right!41083 (c!830346 input!1236))) tp!1373617))))

(declare-fun b!4882266 () Bool)

(declare-fun e!3051330 () Bool)

(declare-fun tp!1373618 () Bool)

(assert (=> b!4882266 (= e!3051330 tp!1373618)))

(declare-fun b!4882265 () Bool)

(declare-fun inv!72138 (IArray!29339) Bool)

(assert (=> b!4882265 (= e!3051329 (and (inv!72138 (xs!17955 (c!830346 input!1236))) e!3051330))))

(assert (=> b!4882070 (= tp!1373567 (and (inv!72131 (c!830346 input!1236)) e!3051329))))

(assert (= (and b!4882070 (is-Node!14639 (c!830346 input!1236))) b!4882264))

(assert (= b!4882265 b!4882266))

(assert (= (and b!4882070 (is-Leaf!24392 (c!830346 input!1236))) b!4882265))

(declare-fun m!5886468 () Bool)

(assert (=> b!4882264 m!5886468))

(declare-fun m!5886470 () Bool)

(assert (=> b!4882264 m!5886470))

(declare-fun m!5886472 () Bool)

(assert (=> b!4882265 m!5886472))

(assert (=> b!4882070 m!5886274))

(push 1)

(assert (not d!1569003))

(assert (not b!4882154))

(assert (not b!4882236))

(assert b_and!343793)

(assert (not b!4882175))

(assert (not b!4882237))

(assert (not d!1569043))

(assert (not b!4882265))

(assert (not b!4882136))

(assert (not b!4882211))

(assert (not b!4882176))

(assert (not bm!338910))

(assert (not d!1569031))

(assert (not d!1569021))

(assert (not b!4882215))

(assert (not b_next!131741))

(assert (not b_next!131749))

(assert (not bm!338907))

(assert (not b!4882153))

(assert (not b!4882224))

(assert (not b!4882210))

(assert (not b!4882124))

(assert (not b!4882208))

(assert (not d!1569035))

(assert (not d!1569033))

(assert (not b_next!131751))

(assert (not d!1569037))

(assert b_and!343783)

(assert b_and!343791)

(assert (not d!1569017))

(assert (not b!4882248))

(assert (not b!4882238))

(assert (not b!4882134))

(assert (not b!4882070))

(assert (not b!4882222))

(assert (not b!4882177))

(assert (not b!4882162))

(assert (not b!4882266))

(assert (not b!4882135))

(assert (not b!4882264))

(assert tp_is_empty!35709)

(assert (not d!1569009))

(assert (not b!4882212))

(assert (not d!1569019))

(assert (not d!1569041))

(assert b_and!343785)

(assert (not d!1569013))

(assert (not b!4882213))

(assert (not b!4882247))

(assert (not b!4882178))

(assert (not b!4882207))

(assert (not b!4882179))

(assert (not b_next!131743))

(assert (not b!4882209))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131751))

(assert b_and!343793)

(assert b_and!343785)

(assert (not b_next!131743))

(assert (not b_next!131741))

(assert (not b_next!131749))

(assert b_and!343783)

(assert b_and!343791)

(check-sat)

(pop 1)

