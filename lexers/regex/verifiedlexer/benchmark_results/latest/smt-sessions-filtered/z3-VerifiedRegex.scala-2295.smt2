; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112254 () Bool)

(assert start!112254)

(declare-fun b!1284969 () Bool)

(declare-fun b_free!30147 () Bool)

(declare-fun b_next!30851 () Bool)

(assert (=> b!1284969 (= b_free!30147 (not b_next!30851))))

(declare-fun tp!374018 () Bool)

(declare-fun b_and!85327 () Bool)

(assert (=> b!1284969 (= tp!374018 b_and!85327)))

(declare-fun b_free!30149 () Bool)

(declare-fun b_next!30853 () Bool)

(assert (=> b!1284969 (= b_free!30149 (not b_next!30853))))

(declare-fun tp!374024 () Bool)

(declare-fun b_and!85329 () Bool)

(assert (=> b!1284969 (= tp!374024 b_and!85329)))

(declare-fun b!1284956 () Bool)

(declare-fun b_free!30151 () Bool)

(declare-fun b_next!30855 () Bool)

(assert (=> b!1284956 (= b_free!30151 (not b_next!30855))))

(declare-fun tp!374017 () Bool)

(declare-fun b_and!85331 () Bool)

(assert (=> b!1284956 (= tp!374017 b_and!85331)))

(declare-fun b_free!30153 () Bool)

(declare-fun b_next!30857 () Bool)

(assert (=> b!1284956 (= b_free!30153 (not b_next!30857))))

(declare-fun tp!374023 () Bool)

(declare-fun b_and!85333 () Bool)

(assert (=> b!1284956 (= tp!374023 b_and!85333)))

(declare-fun b!1284967 () Bool)

(declare-fun b_free!30155 () Bool)

(declare-fun b_next!30859 () Bool)

(assert (=> b!1284967 (= b_free!30155 (not b_next!30859))))

(declare-fun tp!374021 () Bool)

(declare-fun b_and!85335 () Bool)

(assert (=> b!1284967 (= tp!374021 b_and!85335)))

(declare-fun b_free!30157 () Bool)

(declare-fun b_next!30861 () Bool)

(assert (=> b!1284967 (= b_free!30157 (not b_next!30861))))

(declare-fun tp!374016 () Bool)

(declare-fun b_and!85337 () Bool)

(assert (=> b!1284967 (= tp!374016 b_and!85337)))

(declare-fun e!824063 () Bool)

(declare-fun b!1284954 () Bool)

(declare-fun e!824069 () Bool)

(declare-fun tp!374020 () Bool)

(declare-datatypes ((List!12851 0))(
  ( (Nil!12785) (Cons!12785 (h!18186 (_ BitVec 16)) (t!116746 List!12851)) )
))
(declare-datatypes ((TokenValue!2289 0))(
  ( (FloatLiteralValue!4578 (text!16468 List!12851)) (TokenValueExt!2288 (__x!8407 Int)) (Broken!11445 (value!72278 List!12851)) (Object!2354) (End!2289) (Def!2289) (Underscore!2289) (Match!2289) (Else!2289) (Error!2289) (Case!2289) (If!2289) (Extends!2289) (Abstract!2289) (Class!2289) (Val!2289) (DelimiterValue!4578 (del!2349 List!12851)) (KeywordValue!2295 (value!72279 List!12851)) (CommentValue!4578 (value!72280 List!12851)) (WhitespaceValue!4578 (value!72281 List!12851)) (IndentationValue!2289 (value!72282 List!12851)) (String!15680) (Int32!2289) (Broken!11446 (value!72283 List!12851)) (Boolean!2290) (Unit!18989) (OperatorValue!2292 (op!2349 List!12851)) (IdentifierValue!4578 (value!72284 List!12851)) (IdentifierValue!4579 (value!72285 List!12851)) (WhitespaceValue!4579 (value!72286 List!12851)) (True!4578) (False!4578) (Broken!11447 (value!72287 List!12851)) (Broken!11448 (value!72288 List!12851)) (True!4579) (RightBrace!2289) (RightBracket!2289) (Colon!2289) (Null!2289) (Comma!2289) (LeftBracket!2289) (False!4579) (LeftBrace!2289) (ImaginaryLiteralValue!2289 (text!16469 List!12851)) (StringLiteralValue!6867 (value!72289 List!12851)) (EOFValue!2289 (value!72290 List!12851)) (IdentValue!2289 (value!72291 List!12851)) (DelimiterValue!4579 (value!72292 List!12851)) (DedentValue!2289 (value!72293 List!12851)) (NewLineValue!2289 (value!72294 List!12851)) (IntegerValue!6867 (value!72295 (_ BitVec 32)) (text!16470 List!12851)) (IntegerValue!6868 (value!72296 Int) (text!16471 List!12851)) (Times!2289) (Or!2289) (Equal!2289) (Minus!2289) (Broken!11449 (value!72297 List!12851)) (And!2289) (Div!2289) (LessEqual!2289) (Mod!2289) (Concat!5802) (Not!2289) (Plus!2289) (SpaceValue!2289 (value!72298 List!12851)) (IntegerValue!6869 (value!72299 Int) (text!16472 List!12851)) (StringLiteralValue!6868 (text!16473 List!12851)) (FloatLiteralValue!4579 (text!16474 List!12851)) (BytesLiteralValue!2289 (value!72300 List!12851)) (CommentValue!4579 (value!72301 List!12851)) (StringLiteralValue!6869 (value!72302 List!12851)) (ErrorTokenValue!2289 (msg!2350 List!12851)) )
))
(declare-datatypes ((C!7316 0))(
  ( (C!7317 (val!4218 Int)) )
))
(declare-datatypes ((List!12852 0))(
  ( (Nil!12786) (Cons!12786 (h!18187 C!7316) (t!116747 List!12852)) )
))
(declare-datatypes ((IArray!8411 0))(
  ( (IArray!8412 (innerList!4263 List!12852)) )
))
(declare-datatypes ((String!15681 0))(
  ( (String!15682 (value!72303 String)) )
))
(declare-datatypes ((Conc!4203 0))(
  ( (Node!4203 (left!11020 Conc!4203) (right!11350 Conc!4203) (csize!8636 Int) (cheight!4414 Int)) (Leaf!6499 (xs!6914 IArray!8411) (csize!8637 Int)) (Empty!4203) )
))
(declare-datatypes ((BalanceConc!8346 0))(
  ( (BalanceConc!8347 (c!211541 Conc!4203)) )
))
(declare-datatypes ((Regex!3513 0))(
  ( (ElementMatch!3513 (c!211542 C!7316)) (Concat!5803 (regOne!7538 Regex!3513) (regTwo!7538 Regex!3513)) (EmptyExpr!3513) (Star!3513 (reg!3842 Regex!3513)) (EmptyLang!3513) (Union!3513 (regOne!7539 Regex!3513) (regTwo!7539 Regex!3513)) )
))
(declare-datatypes ((TokenValueInjection!4238 0))(
  ( (TokenValueInjection!4239 (toValue!3378 Int) (toChars!3237 Int)) )
))
(declare-datatypes ((Rule!4198 0))(
  ( (Rule!4199 (regex!2199 Regex!3513) (tag!2461 String!15681) (isSeparator!2199 Bool) (transformation!2199 TokenValueInjection!4238)) )
))
(declare-datatypes ((Token!4060 0))(
  ( (Token!4061 (value!72304 TokenValue!2289) (rule!3938 Rule!4198) (size!10413 Int) (originalCharacters!3061 List!12852)) )
))
(declare-fun t2!34 () Token!4060)

(declare-fun inv!21 (TokenValue!2289) Bool)

(assert (=> b!1284954 (= e!824069 (and (inv!21 (value!72304 t2!34)) e!824063 tp!374020))))

(declare-fun e!824074 () Bool)

(assert (=> b!1284956 (= e!824074 (and tp!374017 tp!374023))))

(declare-fun e!824066 () Bool)

(declare-fun tp!374015 () Bool)

(declare-fun b!1284957 () Bool)

(declare-fun t1!34 () Token!4060)

(declare-fun e!824078 () Bool)

(assert (=> b!1284957 (= e!824078 (and (inv!21 (value!72304 t1!34)) e!824066 tp!374015))))

(declare-fun tp!374025 () Bool)

(declare-fun b!1284958 () Bool)

(declare-fun inv!17187 (String!15681) Bool)

(declare-fun inv!17190 (TokenValueInjection!4238) Bool)

(assert (=> b!1284958 (= e!824066 (and tp!374025 (inv!17187 (tag!2461 (rule!3938 t1!34))) (inv!17190 (transformation!2199 (rule!3938 t1!34))) e!824074))))

(declare-fun b!1284959 () Bool)

(declare-fun res!576238 () Bool)

(declare-fun e!824065 () Bool)

(assert (=> b!1284959 (=> (not res!576238) (not e!824065))))

(declare-datatypes ((LexerInterface!1894 0))(
  ( (LexerInterfaceExt!1891 (__x!8408 Int)) (Lexer!1892) )
))
(declare-fun thiss!19762 () LexerInterface!1894)

(declare-datatypes ((List!12853 0))(
  ( (Nil!12787) (Cons!12787 (h!18188 Rule!4198) (t!116748 List!12853)) )
))
(declare-fun rules!2550 () List!12853)

(declare-fun rulesProduceIndividualToken!863 (LexerInterface!1894 List!12853 Token!4060) Bool)

(assert (=> b!1284959 (= res!576238 (rulesProduceIndividualToken!863 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1284960 () Bool)

(declare-fun e!824073 () Bool)

(assert (=> b!1284960 (= e!824065 e!824073)))

(declare-fun res!576243 () Bool)

(assert (=> b!1284960 (=> (not res!576243) (not e!824073))))

(declare-fun lt!423564 () Int)

(assert (=> b!1284960 (= res!576243 (> lt!423564 0))))

(declare-fun size!10414 (BalanceConc!8346) Int)

(declare-fun charsOf!1171 (Token!4060) BalanceConc!8346)

(assert (=> b!1284960 (= lt!423564 (size!10414 (charsOf!1171 t2!34)))))

(declare-fun b!1284961 () Bool)

(assert (=> b!1284961 (= e!824073 (>= 0 lt!423564))))

(declare-fun lt!423563 () List!12852)

(declare-fun list!4747 (BalanceConc!8346) List!12852)

(assert (=> b!1284961 (= lt!423563 (list!4747 (charsOf!1171 t1!34)))))

(declare-fun b!1284962 () Bool)

(declare-fun res!576235 () Bool)

(assert (=> b!1284962 (=> (not res!576235) (not e!824065))))

(declare-fun isEmpty!7584 (List!12853) Bool)

(assert (=> b!1284962 (= res!576235 (not (isEmpty!7584 rules!2550)))))

(declare-fun tp!374019 () Bool)

(declare-fun b!1284963 () Bool)

(declare-fun e!824070 () Bool)

(assert (=> b!1284963 (= e!824063 (and tp!374019 (inv!17187 (tag!2461 (rule!3938 t2!34))) (inv!17190 (transformation!2199 (rule!3938 t2!34))) e!824070))))

(declare-fun b!1284964 () Bool)

(declare-fun e!824075 () Bool)

(declare-fun e!824076 () Bool)

(declare-fun tp!374026 () Bool)

(assert (=> b!1284964 (= e!824075 (and e!824076 tp!374026))))

(declare-fun b!1284965 () Bool)

(declare-fun tp!374022 () Bool)

(declare-fun e!824071 () Bool)

(assert (=> b!1284965 (= e!824076 (and tp!374022 (inv!17187 (tag!2461 (h!18188 rules!2550))) (inv!17190 (transformation!2199 (h!18188 rules!2550))) e!824071))))

(declare-fun res!576241 () Bool)

(assert (=> start!112254 (=> (not res!576241) (not e!824065))))

(get-info :version)

(assert (=> start!112254 (= res!576241 ((_ is Lexer!1892) thiss!19762))))

(assert (=> start!112254 e!824065))

(assert (=> start!112254 true))

(assert (=> start!112254 e!824075))

(declare-fun inv!17191 (Token!4060) Bool)

(assert (=> start!112254 (and (inv!17191 t1!34) e!824078)))

(assert (=> start!112254 (and (inv!17191 t2!34) e!824069)))

(declare-fun b!1284955 () Bool)

(declare-fun res!576240 () Bool)

(assert (=> b!1284955 (=> (not res!576240) (not e!824073))))

(declare-fun separableTokensPredicate!177 (LexerInterface!1894 Token!4060 Token!4060 List!12853) Bool)

(assert (=> b!1284955 (= res!576240 (not (separableTokensPredicate!177 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1284966 () Bool)

(declare-fun res!576242 () Bool)

(assert (=> b!1284966 (=> (not res!576242) (not e!824065))))

(assert (=> b!1284966 (= res!576242 (not (= (isSeparator!2199 (rule!3938 t1!34)) (isSeparator!2199 (rule!3938 t2!34)))))))

(assert (=> b!1284967 (= e!824071 (and tp!374021 tp!374016))))

(declare-fun b!1284968 () Bool)

(declare-fun res!576237 () Bool)

(assert (=> b!1284968 (=> (not res!576237) (not e!824073))))

(declare-fun sepAndNonSepRulesDisjointChars!572 (List!12853 List!12853) Bool)

(assert (=> b!1284968 (= res!576237 (sepAndNonSepRulesDisjointChars!572 rules!2550 rules!2550))))

(assert (=> b!1284969 (= e!824070 (and tp!374018 tp!374024))))

(declare-fun b!1284970 () Bool)

(declare-fun res!576239 () Bool)

(assert (=> b!1284970 (=> (not res!576239) (not e!824065))))

(declare-fun rulesInvariant!1764 (LexerInterface!1894 List!12853) Bool)

(assert (=> b!1284970 (= res!576239 (rulesInvariant!1764 thiss!19762 rules!2550))))

(declare-fun b!1284971 () Bool)

(declare-fun res!576236 () Bool)

(assert (=> b!1284971 (=> (not res!576236) (not e!824065))))

(assert (=> b!1284971 (= res!576236 (rulesProduceIndividualToken!863 thiss!19762 rules!2550 t2!34))))

(assert (= (and start!112254 res!576241) b!1284962))

(assert (= (and b!1284962 res!576235) b!1284970))

(assert (= (and b!1284970 res!576239) b!1284959))

(assert (= (and b!1284959 res!576238) b!1284971))

(assert (= (and b!1284971 res!576236) b!1284966))

(assert (= (and b!1284966 res!576242) b!1284960))

(assert (= (and b!1284960 res!576243) b!1284968))

(assert (= (and b!1284968 res!576237) b!1284955))

(assert (= (and b!1284955 res!576240) b!1284961))

(assert (= b!1284965 b!1284967))

(assert (= b!1284964 b!1284965))

(assert (= (and start!112254 ((_ is Cons!12787) rules!2550)) b!1284964))

(assert (= b!1284958 b!1284956))

(assert (= b!1284957 b!1284958))

(assert (= start!112254 b!1284957))

(assert (= b!1284963 b!1284969))

(assert (= b!1284954 b!1284963))

(assert (= start!112254 b!1284954))

(declare-fun m!1435079 () Bool)

(assert (=> b!1284955 m!1435079))

(declare-fun m!1435081 () Bool)

(assert (=> b!1284960 m!1435081))

(assert (=> b!1284960 m!1435081))

(declare-fun m!1435083 () Bool)

(assert (=> b!1284960 m!1435083))

(declare-fun m!1435085 () Bool)

(assert (=> b!1284961 m!1435085))

(assert (=> b!1284961 m!1435085))

(declare-fun m!1435087 () Bool)

(assert (=> b!1284961 m!1435087))

(declare-fun m!1435089 () Bool)

(assert (=> b!1284959 m!1435089))

(declare-fun m!1435091 () Bool)

(assert (=> b!1284968 m!1435091))

(declare-fun m!1435093 () Bool)

(assert (=> b!1284963 m!1435093))

(declare-fun m!1435095 () Bool)

(assert (=> b!1284963 m!1435095))

(declare-fun m!1435097 () Bool)

(assert (=> b!1284971 m!1435097))

(declare-fun m!1435099 () Bool)

(assert (=> b!1284962 m!1435099))

(declare-fun m!1435101 () Bool)

(assert (=> b!1284954 m!1435101))

(declare-fun m!1435103 () Bool)

(assert (=> b!1284957 m!1435103))

(declare-fun m!1435105 () Bool)

(assert (=> b!1284958 m!1435105))

(declare-fun m!1435107 () Bool)

(assert (=> b!1284958 m!1435107))

(declare-fun m!1435109 () Bool)

(assert (=> b!1284965 m!1435109))

(declare-fun m!1435111 () Bool)

(assert (=> b!1284965 m!1435111))

(declare-fun m!1435113 () Bool)

(assert (=> b!1284970 m!1435113))

(declare-fun m!1435115 () Bool)

(assert (=> start!112254 m!1435115))

(declare-fun m!1435117 () Bool)

(assert (=> start!112254 m!1435117))

(check-sat (not b!1284965) b_and!85327 (not b!1284963) b_and!85333 (not b!1284954) (not b!1284957) b_and!85329 (not b!1284968) (not b_next!30855) (not b!1284959) (not b_next!30853) (not b!1284970) (not b!1284964) b_and!85331 (not b_next!30859) (not b!1284955) b_and!85335 (not b!1284962) (not b_next!30851) (not start!112254) (not b_next!30857) (not b!1284961) (not b!1284960) (not b_next!30861) (not b!1284958) b_and!85337 (not b!1284971))
(check-sat b_and!85327 b_and!85331 b_and!85333 b_and!85329 (not b_next!30859) b_and!85335 (not b_next!30855) (not b_next!30861) (not b_next!30853) b_and!85337 (not b_next!30851) (not b_next!30857))
