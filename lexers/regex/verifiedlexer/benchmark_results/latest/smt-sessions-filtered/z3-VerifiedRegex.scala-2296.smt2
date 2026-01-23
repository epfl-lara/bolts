; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112258 () Bool)

(assert start!112258)

(declare-fun b!1285070 () Bool)

(declare-fun b_free!30171 () Bool)

(declare-fun b_next!30875 () Bool)

(assert (=> b!1285070 (= b_free!30171 (not b_next!30875))))

(declare-fun tp!374090 () Bool)

(declare-fun b_and!85351 () Bool)

(assert (=> b!1285070 (= tp!374090 b_and!85351)))

(declare-fun b_free!30173 () Bool)

(declare-fun b_next!30877 () Bool)

(assert (=> b!1285070 (= b_free!30173 (not b_next!30877))))

(declare-fun tp!374098 () Bool)

(declare-fun b_and!85353 () Bool)

(assert (=> b!1285070 (= tp!374098 b_and!85353)))

(declare-fun b!1285065 () Bool)

(declare-fun b_free!30175 () Bool)

(declare-fun b_next!30879 () Bool)

(assert (=> b!1285065 (= b_free!30175 (not b_next!30879))))

(declare-fun tp!374094 () Bool)

(declare-fun b_and!85355 () Bool)

(assert (=> b!1285065 (= tp!374094 b_and!85355)))

(declare-fun b_free!30177 () Bool)

(declare-fun b_next!30881 () Bool)

(assert (=> b!1285065 (= b_free!30177 (not b_next!30881))))

(declare-fun tp!374088 () Bool)

(declare-fun b_and!85357 () Bool)

(assert (=> b!1285065 (= tp!374088 b_and!85357)))

(declare-fun b!1285078 () Bool)

(declare-fun b_free!30179 () Bool)

(declare-fun b_next!30883 () Bool)

(assert (=> b!1285078 (= b_free!30179 (not b_next!30883))))

(declare-fun tp!374091 () Bool)

(declare-fun b_and!85359 () Bool)

(assert (=> b!1285078 (= tp!374091 b_and!85359)))

(declare-fun b_free!30181 () Bool)

(declare-fun b_next!30885 () Bool)

(assert (=> b!1285078 (= b_free!30181 (not b_next!30885))))

(declare-fun tp!374092 () Bool)

(declare-fun b_and!85361 () Bool)

(assert (=> b!1285078 (= tp!374092 b_and!85361)))

(declare-fun e!824170 () Bool)

(declare-datatypes ((C!7320 0))(
  ( (C!7321 (val!4220 Int)) )
))
(declare-datatypes ((List!12857 0))(
  ( (Nil!12791) (Cons!12791 (h!18192 C!7320) (t!116752 List!12857)) )
))
(declare-datatypes ((IArray!8415 0))(
  ( (IArray!8416 (innerList!4265 List!12857)) )
))
(declare-datatypes ((List!12858 0))(
  ( (Nil!12792) (Cons!12792 (h!18193 (_ BitVec 16)) (t!116753 List!12858)) )
))
(declare-datatypes ((Conc!4205 0))(
  ( (Node!4205 (left!11023 Conc!4205) (right!11353 Conc!4205) (csize!8640 Int) (cheight!4416 Int)) (Leaf!6502 (xs!6916 IArray!8415) (csize!8641 Int)) (Empty!4205) )
))
(declare-datatypes ((BalanceConc!8350 0))(
  ( (BalanceConc!8351 (c!211545 Conc!4205)) )
))
(declare-datatypes ((TokenValue!2291 0))(
  ( (FloatLiteralValue!4582 (text!16482 List!12858)) (TokenValueExt!2290 (__x!8411 Int)) (Broken!11455 (value!72335 List!12858)) (Object!2356) (End!2291) (Def!2291) (Underscore!2291) (Match!2291) (Else!2291) (Error!2291) (Case!2291) (If!2291) (Extends!2291) (Abstract!2291) (Class!2291) (Val!2291) (DelimiterValue!4582 (del!2351 List!12858)) (KeywordValue!2297 (value!72336 List!12858)) (CommentValue!4582 (value!72337 List!12858)) (WhitespaceValue!4582 (value!72338 List!12858)) (IndentationValue!2291 (value!72339 List!12858)) (String!15690) (Int32!2291) (Broken!11456 (value!72340 List!12858)) (Boolean!2292) (Unit!18991) (OperatorValue!2294 (op!2351 List!12858)) (IdentifierValue!4582 (value!72341 List!12858)) (IdentifierValue!4583 (value!72342 List!12858)) (WhitespaceValue!4583 (value!72343 List!12858)) (True!4582) (False!4582) (Broken!11457 (value!72344 List!12858)) (Broken!11458 (value!72345 List!12858)) (True!4583) (RightBrace!2291) (RightBracket!2291) (Colon!2291) (Null!2291) (Comma!2291) (LeftBracket!2291) (False!4583) (LeftBrace!2291) (ImaginaryLiteralValue!2291 (text!16483 List!12858)) (StringLiteralValue!6873 (value!72346 List!12858)) (EOFValue!2291 (value!72347 List!12858)) (IdentValue!2291 (value!72348 List!12858)) (DelimiterValue!4583 (value!72349 List!12858)) (DedentValue!2291 (value!72350 List!12858)) (NewLineValue!2291 (value!72351 List!12858)) (IntegerValue!6873 (value!72352 (_ BitVec 32)) (text!16484 List!12858)) (IntegerValue!6874 (value!72353 Int) (text!16485 List!12858)) (Times!2291) (Or!2291) (Equal!2291) (Minus!2291) (Broken!11459 (value!72354 List!12858)) (And!2291) (Div!2291) (LessEqual!2291) (Mod!2291) (Concat!5806) (Not!2291) (Plus!2291) (SpaceValue!2291 (value!72355 List!12858)) (IntegerValue!6875 (value!72356 Int) (text!16486 List!12858)) (StringLiteralValue!6874 (text!16487 List!12858)) (FloatLiteralValue!4583 (text!16488 List!12858)) (BytesLiteralValue!2291 (value!72357 List!12858)) (CommentValue!4583 (value!72358 List!12858)) (StringLiteralValue!6875 (value!72359 List!12858)) (ErrorTokenValue!2291 (msg!2352 List!12858)) )
))
(declare-datatypes ((Regex!3515 0))(
  ( (ElementMatch!3515 (c!211546 C!7320)) (Concat!5807 (regOne!7542 Regex!3515) (regTwo!7542 Regex!3515)) (EmptyExpr!3515) (Star!3515 (reg!3844 Regex!3515)) (EmptyLang!3515) (Union!3515 (regOne!7543 Regex!3515) (regTwo!7543 Regex!3515)) )
))
(declare-datatypes ((String!15691 0))(
  ( (String!15692 (value!72360 String)) )
))
(declare-datatypes ((TokenValueInjection!4242 0))(
  ( (TokenValueInjection!4243 (toValue!3380 Int) (toChars!3239 Int)) )
))
(declare-datatypes ((Rule!4202 0))(
  ( (Rule!4203 (regex!2201 Regex!3515) (tag!2463 String!15691) (isSeparator!2201 Bool) (transformation!2201 TokenValueInjection!4242)) )
))
(declare-datatypes ((Token!4064 0))(
  ( (Token!4065 (value!72361 TokenValue!2291) (rule!3940 Rule!4202) (size!10417 Int) (originalCharacters!3063 List!12857)) )
))
(declare-fun t1!34 () Token!4064)

(declare-fun tp!374096 () Bool)

(declare-fun e!824164 () Bool)

(declare-fun b!1285062 () Bool)

(declare-fun inv!17194 (String!15691) Bool)

(declare-fun inv!17197 (TokenValueInjection!4242) Bool)

(assert (=> b!1285062 (= e!824164 (and tp!374096 (inv!17194 (tag!2463 (rule!3940 t1!34))) (inv!17197 (transformation!2201 (rule!3940 t1!34))) e!824170))))

(declare-fun b!1285063 () Bool)

(declare-fun e!824159 () Bool)

(assert (=> b!1285063 (= e!824159 false)))

(declare-fun lt!423576 () List!12857)

(declare-fun lt!423575 () BalanceConc!8350)

(declare-fun ++!3225 (List!12857 List!12857) List!12857)

(declare-fun list!4749 (BalanceConc!8350) List!12857)

(declare-fun charsOf!1173 (Token!4064) BalanceConc!8350)

(declare-fun apply!2727 (BalanceConc!8350 Int) C!7320)

(assert (=> b!1285063 (= lt!423576 (++!3225 (list!4749 (charsOf!1173 t1!34)) (Cons!12791 (apply!2727 lt!423575 0) Nil!12791)))))

(declare-fun tp!374087 () Bool)

(declare-fun e!824168 () Bool)

(declare-fun e!824162 () Bool)

(declare-fun b!1285064 () Bool)

(declare-datatypes ((List!12859 0))(
  ( (Nil!12793) (Cons!12793 (h!18194 Rule!4202) (t!116754 List!12859)) )
))
(declare-fun rules!2550 () List!12859)

(assert (=> b!1285064 (= e!824162 (and tp!374087 (inv!17194 (tag!2463 (h!18194 rules!2550))) (inv!17197 (transformation!2201 (h!18194 rules!2550))) e!824168))))

(declare-fun e!824173 () Bool)

(assert (=> b!1285065 (= e!824173 (and tp!374094 tp!374088))))

(declare-fun tp!374089 () Bool)

(declare-fun b!1285066 () Bool)

(declare-fun t2!34 () Token!4064)

(declare-fun e!824165 () Bool)

(declare-fun e!824166 () Bool)

(declare-fun inv!21 (TokenValue!2291) Bool)

(assert (=> b!1285066 (= e!824165 (and (inv!21 (value!72361 t2!34)) e!824166 tp!374089))))

(declare-fun res!576295 () Bool)

(declare-fun e!824161 () Bool)

(assert (=> start!112258 (=> (not res!576295) (not e!824161))))

(declare-datatypes ((LexerInterface!1896 0))(
  ( (LexerInterfaceExt!1893 (__x!8412 Int)) (Lexer!1894) )
))
(declare-fun thiss!19762 () LexerInterface!1896)

(get-info :version)

(assert (=> start!112258 (= res!576295 ((_ is Lexer!1894) thiss!19762))))

(assert (=> start!112258 e!824161))

(assert (=> start!112258 true))

(declare-fun e!824169 () Bool)

(assert (=> start!112258 e!824169))

(declare-fun e!824172 () Bool)

(declare-fun inv!17198 (Token!4064) Bool)

(assert (=> start!112258 (and (inv!17198 t1!34) e!824172)))

(assert (=> start!112258 (and (inv!17198 t2!34) e!824165)))

(declare-fun tp!374095 () Bool)

(declare-fun b!1285067 () Bool)

(assert (=> b!1285067 (= e!824172 (and (inv!21 (value!72361 t1!34)) e!824164 tp!374095))))

(declare-fun b!1285068 () Bool)

(assert (=> b!1285068 (= e!824161 e!824159)))

(declare-fun res!576291 () Bool)

(assert (=> b!1285068 (=> (not res!576291) (not e!824159))))

(declare-fun size!10418 (BalanceConc!8350) Int)

(assert (=> b!1285068 (= res!576291 (> (size!10418 lt!423575) 0))))

(assert (=> b!1285068 (= lt!423575 (charsOf!1173 t2!34))))

(declare-fun b!1285069 () Bool)

(declare-fun tp!374097 () Bool)

(assert (=> b!1285069 (= e!824169 (and e!824162 tp!374097))))

(assert (=> b!1285070 (= e!824168 (and tp!374090 tp!374098))))

(declare-fun b!1285071 () Bool)

(declare-fun res!576289 () Bool)

(assert (=> b!1285071 (=> (not res!576289) (not e!824161))))

(declare-fun rulesInvariant!1766 (LexerInterface!1896 List!12859) Bool)

(assert (=> b!1285071 (= res!576289 (rulesInvariant!1766 thiss!19762 rules!2550))))

(declare-fun b!1285072 () Bool)

(declare-fun res!576294 () Bool)

(assert (=> b!1285072 (=> (not res!576294) (not e!824161))))

(declare-fun isEmpty!7586 (List!12859) Bool)

(assert (=> b!1285072 (= res!576294 (not (isEmpty!7586 rules!2550)))))

(declare-fun b!1285073 () Bool)

(declare-fun res!576292 () Bool)

(assert (=> b!1285073 (=> (not res!576292) (not e!824159))))

(declare-fun separableTokensPredicate!179 (LexerInterface!1896 Token!4064 Token!4064 List!12859) Bool)

(assert (=> b!1285073 (= res!576292 (not (separableTokensPredicate!179 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1285074 () Bool)

(declare-fun res!576296 () Bool)

(assert (=> b!1285074 (=> (not res!576296) (not e!824161))))

(declare-fun rulesProduceIndividualToken!865 (LexerInterface!1896 List!12859 Token!4064) Bool)

(assert (=> b!1285074 (= res!576296 (rulesProduceIndividualToken!865 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!374093 () Bool)

(declare-fun b!1285075 () Bool)

(assert (=> b!1285075 (= e!824166 (and tp!374093 (inv!17194 (tag!2463 (rule!3940 t2!34))) (inv!17197 (transformation!2201 (rule!3940 t2!34))) e!824173))))

(declare-fun b!1285076 () Bool)

(declare-fun res!576293 () Bool)

(assert (=> b!1285076 (=> (not res!576293) (not e!824159))))

(declare-fun sepAndNonSepRulesDisjointChars!574 (List!12859 List!12859) Bool)

(assert (=> b!1285076 (= res!576293 (sepAndNonSepRulesDisjointChars!574 rules!2550 rules!2550))))

(declare-fun b!1285077 () Bool)

(declare-fun res!576290 () Bool)

(assert (=> b!1285077 (=> (not res!576290) (not e!824161))))

(assert (=> b!1285077 (= res!576290 (not (= (isSeparator!2201 (rule!3940 t1!34)) (isSeparator!2201 (rule!3940 t2!34)))))))

(assert (=> b!1285078 (= e!824170 (and tp!374091 tp!374092))))

(declare-fun b!1285079 () Bool)

(declare-fun res!576297 () Bool)

(assert (=> b!1285079 (=> (not res!576297) (not e!824161))))

(assert (=> b!1285079 (= res!576297 (rulesProduceIndividualToken!865 thiss!19762 rules!2550 t2!34))))

(assert (= (and start!112258 res!576295) b!1285072))

(assert (= (and b!1285072 res!576294) b!1285071))

(assert (= (and b!1285071 res!576289) b!1285074))

(assert (= (and b!1285074 res!576296) b!1285079))

(assert (= (and b!1285079 res!576297) b!1285077))

(assert (= (and b!1285077 res!576290) b!1285068))

(assert (= (and b!1285068 res!576291) b!1285076))

(assert (= (and b!1285076 res!576293) b!1285073))

(assert (= (and b!1285073 res!576292) b!1285063))

(assert (= b!1285064 b!1285070))

(assert (= b!1285069 b!1285064))

(assert (= (and start!112258 ((_ is Cons!12793) rules!2550)) b!1285069))

(assert (= b!1285062 b!1285078))

(assert (= b!1285067 b!1285062))

(assert (= start!112258 b!1285067))

(assert (= b!1285075 b!1285065))

(assert (= b!1285066 b!1285075))

(assert (= start!112258 b!1285066))

(declare-fun m!1435163 () Bool)

(assert (=> start!112258 m!1435163))

(declare-fun m!1435165 () Bool)

(assert (=> start!112258 m!1435165))

(declare-fun m!1435167 () Bool)

(assert (=> b!1285062 m!1435167))

(declare-fun m!1435169 () Bool)

(assert (=> b!1285062 m!1435169))

(declare-fun m!1435171 () Bool)

(assert (=> b!1285067 m!1435171))

(declare-fun m!1435173 () Bool)

(assert (=> b!1285063 m!1435173))

(assert (=> b!1285063 m!1435173))

(declare-fun m!1435175 () Bool)

(assert (=> b!1285063 m!1435175))

(declare-fun m!1435177 () Bool)

(assert (=> b!1285063 m!1435177))

(assert (=> b!1285063 m!1435175))

(declare-fun m!1435179 () Bool)

(assert (=> b!1285063 m!1435179))

(declare-fun m!1435181 () Bool)

(assert (=> b!1285071 m!1435181))

(declare-fun m!1435183 () Bool)

(assert (=> b!1285074 m!1435183))

(declare-fun m!1435185 () Bool)

(assert (=> b!1285072 m!1435185))

(declare-fun m!1435187 () Bool)

(assert (=> b!1285073 m!1435187))

(declare-fun m!1435189 () Bool)

(assert (=> b!1285068 m!1435189))

(declare-fun m!1435191 () Bool)

(assert (=> b!1285068 m!1435191))

(declare-fun m!1435193 () Bool)

(assert (=> b!1285079 m!1435193))

(declare-fun m!1435195 () Bool)

(assert (=> b!1285075 m!1435195))

(declare-fun m!1435197 () Bool)

(assert (=> b!1285075 m!1435197))

(declare-fun m!1435199 () Bool)

(assert (=> b!1285064 m!1435199))

(declare-fun m!1435201 () Bool)

(assert (=> b!1285064 m!1435201))

(declare-fun m!1435203 () Bool)

(assert (=> b!1285076 m!1435203))

(declare-fun m!1435205 () Bool)

(assert (=> b!1285066 m!1435205))

(check-sat (not b!1285063) b_and!85357 b_and!85353 (not b!1285069) b_and!85359 (not start!112258) b_and!85351 (not b_next!30875) (not b!1285073) b_and!85355 (not b!1285068) (not b!1285071) b_and!85361 (not b_next!30881) (not b!1285066) (not b_next!30877) (not b!1285075) (not b_next!30885) (not b!1285064) (not b_next!30883) (not b!1285072) (not b!1285074) (not b!1285076) (not b!1285067) (not b!1285062) (not b!1285079) (not b_next!30879))
(check-sat b_and!85357 b_and!85353 b_and!85359 b_and!85351 (not b_next!30885) (not b_next!30875) b_and!85355 (not b_next!30883) b_and!85361 (not b_next!30879) (not b_next!30881) (not b_next!30877))
