; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273478 () Bool)

(assert start!273478)

(declare-fun b!2819377 () Bool)

(declare-fun b_free!80565 () Bool)

(declare-fun b_next!81269 () Bool)

(assert (=> b!2819377 (= b_free!80565 (not b_next!81269))))

(declare-fun tp!900339 () Bool)

(declare-fun b_and!205911 () Bool)

(assert (=> b!2819377 (= tp!900339 b_and!205911)))

(declare-fun b_free!80567 () Bool)

(declare-fun b_next!81271 () Bool)

(assert (=> b!2819377 (= b_free!80567 (not b_next!81271))))

(declare-fun tp!900336 () Bool)

(declare-fun b_and!205913 () Bool)

(assert (=> b!2819377 (= tp!900336 b_and!205913)))

(declare-fun b!2819376 () Bool)

(declare-fun b_free!80569 () Bool)

(declare-fun b_next!81273 () Bool)

(assert (=> b!2819376 (= b_free!80569 (not b_next!81273))))

(declare-fun tp!900340 () Bool)

(declare-fun b_and!205915 () Bool)

(assert (=> b!2819376 (= tp!900340 b_and!205915)))

(declare-fun b_free!80571 () Bool)

(declare-fun b_next!81275 () Bool)

(assert (=> b!2819376 (= b_free!80571 (not b_next!81275))))

(declare-fun tp!900335 () Bool)

(declare-fun b_and!205917 () Bool)

(assert (=> b!2819376 (= tp!900335 b_and!205917)))

(declare-fun b!2819391 () Bool)

(declare-fun e!1783348 () Bool)

(assert (=> b!2819391 (= e!1783348 true)))

(declare-fun b!2819390 () Bool)

(declare-fun e!1783347 () Bool)

(assert (=> b!2819390 (= e!1783347 e!1783348)))

(declare-fun b!2819389 () Bool)

(declare-fun e!1783346 () Bool)

(assert (=> b!2819389 (= e!1783346 e!1783347)))

(declare-fun b!2819380 () Bool)

(assert (=> b!2819380 e!1783346))

(assert (= b!2819390 b!2819391))

(assert (= b!2819389 b!2819390))

(declare-datatypes ((C!16852 0))(
  ( (C!16853 (val!10406 Int)) )
))
(declare-datatypes ((List!33172 0))(
  ( (Nil!33048) (Cons!33048 (h!38468 (_ BitVec 16)) (t!230355 List!33172)) )
))
(declare-datatypes ((TokenValue!5175 0))(
  ( (FloatLiteralValue!10350 (text!36670 List!33172)) (TokenValueExt!5174 (__x!22023 Int)) (Broken!25875 (value!159226 List!33172)) (Object!5298) (End!5175) (Def!5175) (Underscore!5175) (Match!5175) (Else!5175) (Error!5175) (Case!5175) (If!5175) (Extends!5175) (Abstract!5175) (Class!5175) (Val!5175) (DelimiterValue!10350 (del!5235 List!33172)) (KeywordValue!5181 (value!159227 List!33172)) (CommentValue!10350 (value!159228 List!33172)) (WhitespaceValue!10350 (value!159229 List!33172)) (IndentationValue!5175 (value!159230 List!33172)) (String!36330) (Int32!5175) (Broken!25876 (value!159231 List!33172)) (Boolean!5176) (Unit!46992) (OperatorValue!5178 (op!5235 List!33172)) (IdentifierValue!10350 (value!159232 List!33172)) (IdentifierValue!10351 (value!159233 List!33172)) (WhitespaceValue!10351 (value!159234 List!33172)) (True!10350) (False!10350) (Broken!25877 (value!159235 List!33172)) (Broken!25878 (value!159236 List!33172)) (True!10351) (RightBrace!5175) (RightBracket!5175) (Colon!5175) (Null!5175) (Comma!5175) (LeftBracket!5175) (False!10351) (LeftBrace!5175) (ImaginaryLiteralValue!5175 (text!36671 List!33172)) (StringLiteralValue!15525 (value!159237 List!33172)) (EOFValue!5175 (value!159238 List!33172)) (IdentValue!5175 (value!159239 List!33172)) (DelimiterValue!10351 (value!159240 List!33172)) (DedentValue!5175 (value!159241 List!33172)) (NewLineValue!5175 (value!159242 List!33172)) (IntegerValue!15525 (value!159243 (_ BitVec 32)) (text!36672 List!33172)) (IntegerValue!15526 (value!159244 Int) (text!36673 List!33172)) (Times!5175) (Or!5175) (Equal!5175) (Minus!5175) (Broken!25879 (value!159245 List!33172)) (And!5175) (Div!5175) (LessEqual!5175) (Mod!5175) (Concat!13510) (Not!5175) (Plus!5175) (SpaceValue!5175 (value!159246 List!33172)) (IntegerValue!15527 (value!159247 Int) (text!36674 List!33172)) (StringLiteralValue!15526 (text!36675 List!33172)) (FloatLiteralValue!10351 (text!36676 List!33172)) (BytesLiteralValue!5175 (value!159248 List!33172)) (CommentValue!10351 (value!159249 List!33172)) (StringLiteralValue!15527 (value!159250 List!33172)) (ErrorTokenValue!5175 (msg!5236 List!33172)) )
))
(declare-datatypes ((List!33173 0))(
  ( (Nil!33049) (Cons!33049 (h!38469 C!16852) (t!230356 List!33173)) )
))
(declare-datatypes ((IArray!20515 0))(
  ( (IArray!20516 (innerList!10315 List!33173)) )
))
(declare-datatypes ((Conc!10255 0))(
  ( (Node!10255 (left!24954 Conc!10255) (right!25284 Conc!10255) (csize!20740 Int) (cheight!10466 Int)) (Leaf!15619 (xs!13367 IArray!20515) (csize!20741 Int)) (Empty!10255) )
))
(declare-datatypes ((BalanceConc!20148 0))(
  ( (BalanceConc!20149 (c!456935 Conc!10255)) )
))
(declare-datatypes ((TokenValueInjection!9778 0))(
  ( (TokenValueInjection!9779 (toValue!6959 Int) (toChars!6818 Int)) )
))
(declare-datatypes ((String!36331 0))(
  ( (String!36332 (value!159251 String)) )
))
(declare-datatypes ((Regex!8335 0))(
  ( (ElementMatch!8335 (c!456936 C!16852)) (Concat!13511 (regOne!17182 Regex!8335) (regTwo!17182 Regex!8335)) (EmptyExpr!8335) (Star!8335 (reg!8664 Regex!8335)) (EmptyLang!8335) (Union!8335 (regOne!17183 Regex!8335) (regTwo!17183 Regex!8335)) )
))
(declare-datatypes ((Rule!9690 0))(
  ( (Rule!9691 (regex!4945 Regex!8335) (tag!5449 String!36331) (isSeparator!4945 Bool) (transformation!4945 TokenValueInjection!9778)) )
))
(declare-datatypes ((List!33174 0))(
  ( (Nil!33050) (Cons!33050 (h!38470 Rule!9690) (t!230357 List!33174)) )
))
(declare-fun rules!4424 () List!33174)

(get-info :version)

(assert (= (and b!2819380 ((_ is Cons!33050) rules!4424)) b!2819389))

(declare-fun order!17507 () Int)

(declare-fun lambda!103469 () Int)

(declare-fun order!17509 () Int)

(declare-fun dynLambda!13800 (Int Int) Int)

(declare-fun dynLambda!13801 (Int Int) Int)

(assert (=> b!2819391 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103469))))

(declare-fun order!17511 () Int)

(declare-fun dynLambda!13802 (Int Int) Int)

(assert (=> b!2819391 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103469))))

(declare-fun b!2819365 () Bool)

(declare-fun res!1173255 () Bool)

(declare-fun e!1783332 () Bool)

(assert (=> b!2819365 (=> (not res!1173255) (not e!1783332))))

(declare-datatypes ((LexerInterface!4536 0))(
  ( (LexerInterfaceExt!4533 (__x!22024 Int)) (Lexer!4534) )
))
(declare-fun thiss!27755 () LexerInterface!4536)

(declare-fun rulesInvariant!3954 (LexerInterface!4536 List!33174) Bool)

(assert (=> b!2819365 (= res!1173255 (rulesInvariant!3954 thiss!27755 rules!4424))))

(declare-fun b!2819366 () Bool)

(declare-fun e!1783329 () Bool)

(declare-fun e!1783331 () Bool)

(assert (=> b!2819366 (= e!1783329 e!1783331)))

(declare-fun res!1173253 () Bool)

(assert (=> b!2819366 (=> (not res!1173253) (not e!1783331))))

(declare-datatypes ((Token!9292 0))(
  ( (Token!9293 (value!159252 TokenValue!5175) (rule!7373 Rule!9690) (size!25731 Int) (originalCharacters!5677 List!33173)) )
))
(declare-datatypes ((List!33175 0))(
  ( (Nil!33051) (Cons!33051 (h!38471 Token!9292) (t!230358 List!33175)) )
))
(declare-fun lt!1006493 () List!33175)

(declare-fun rulesProduceIndividualToken!2074 (LexerInterface!4536 List!33174 Token!9292) Bool)

(assert (=> b!2819366 (= res!1173253 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 lt!1006493)))))

(declare-fun b!2819367 () Bool)

(declare-fun res!1173251 () Bool)

(assert (=> b!2819367 (=> (not res!1173251) (not e!1783332))))

(declare-fun l!6581 () List!33175)

(declare-fun tokensListTwoByTwoPredicateSeparableList!673 (LexerInterface!4536 List!33175 List!33174) Bool)

(assert (=> b!2819367 (= res!1173251 (tokensListTwoByTwoPredicateSeparableList!673 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2819368 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1588 (LexerInterface!4536 List!33174 List!33175) Bool)

(assert (=> b!2819368 (= e!1783331 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 lt!1006493)))))

(declare-fun b!2819369 () Bool)

(declare-fun e!1783337 () Bool)

(declare-fun tp!900342 () Bool)

(declare-fun e!1783333 () Bool)

(declare-fun inv!21 (TokenValue!5175) Bool)

(assert (=> b!2819369 (= e!1783333 (and (inv!21 (value!159252 (h!38471 l!6581))) e!1783337 tp!900342))))

(declare-fun e!1783334 () Bool)

(declare-fun b!2819370 () Bool)

(declare-fun tp!900341 () Bool)

(declare-fun inv!44967 (Token!9292) Bool)

(assert (=> b!2819370 (= e!1783334 (and (inv!44967 (h!38471 l!6581)) e!1783333 tp!900341))))

(declare-fun b!2819371 () Bool)

(declare-fun e!1783326 () Bool)

(declare-fun e!1783328 () Bool)

(declare-fun tp!900334 () Bool)

(assert (=> b!2819371 (= e!1783326 (and e!1783328 tp!900334))))

(declare-fun tp!900338 () Bool)

(declare-fun e!1783338 () Bool)

(declare-fun b!2819372 () Bool)

(declare-fun inv!44964 (String!36331) Bool)

(declare-fun inv!44968 (TokenValueInjection!9778) Bool)

(assert (=> b!2819372 (= e!1783337 (and tp!900338 (inv!44964 (tag!5449 (rule!7373 (h!38471 l!6581)))) (inv!44968 (transformation!4945 (rule!7373 (h!38471 l!6581)))) e!1783338))))

(declare-fun b!2819373 () Bool)

(declare-fun res!1173249 () Bool)

(assert (=> b!2819373 (=> (not res!1173249) (not e!1783332))))

(assert (=> b!2819373 (= res!1173249 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2819375 () Bool)

(declare-fun res!1173252 () Bool)

(assert (=> b!2819375 (=> (not res!1173252) (not e!1783332))))

(declare-fun isEmpty!18278 (List!33174) Bool)

(assert (=> b!2819375 (= res!1173252 (not (isEmpty!18278 rules!4424)))))

(declare-fun e!1783336 () Bool)

(assert (=> b!2819376 (= e!1783336 (and tp!900340 tp!900335))))

(assert (=> b!2819377 (= e!1783338 (and tp!900339 tp!900336))))

(declare-fun b!2819378 () Bool)

(declare-fun e!1783339 () Bool)

(declare-datatypes ((IArray!20517 0))(
  ( (IArray!20518 (innerList!10316 List!33175)) )
))
(declare-datatypes ((Conc!10256 0))(
  ( (Node!10256 (left!24955 Conc!10256) (right!25285 Conc!10256) (csize!20742 Int) (cheight!10467 Int)) (Leaf!15620 (xs!13368 IArray!20517) (csize!20743 Int)) (Empty!10256) )
))
(declare-datatypes ((BalanceConc!20150 0))(
  ( (BalanceConc!20151 (c!456937 Conc!10256)) )
))
(declare-fun rulesProduceEachTokenIndividually!1086 (LexerInterface!4536 List!33174 BalanceConc!20150) Bool)

(declare-fun seqFromList!3236 (List!33175) BalanceConc!20150)

(assert (=> b!2819378 (= e!1783339 (rulesProduceEachTokenIndividually!1086 thiss!27755 rules!4424 (seqFromList!3236 lt!1006493)))))

(declare-fun b!2819379 () Bool)

(declare-fun res!1173254 () Bool)

(assert (=> b!2819379 (=> (not res!1173254) (not e!1783332))))

(declare-fun i!1730 () Int)

(assert (=> b!2819379 (= res!1173254 (and (not ((_ is Nil!33051) l!6581)) (<= i!1730 0)))))

(assert (=> b!2819380 (= e!1783332 (not e!1783339))))

(declare-fun res!1173256 () Bool)

(assert (=> b!2819380 (=> res!1173256 e!1783339)))

(declare-fun lt!1006495 () Bool)

(assert (=> b!2819380 (= res!1173256 (not lt!1006495))))

(declare-fun forall!6763 (List!33175 Int) Bool)

(assert (=> b!2819380 (forall!6763 lt!1006493 lambda!103469)))

(declare-datatypes ((Unit!46993 0))(
  ( (Unit!46994) )
))
(declare-fun lt!1006494 () Unit!46993)

(declare-fun lemmaForallSubseq!213 (List!33175 List!33175 Int) Unit!46993)

(assert (=> b!2819380 (= lt!1006494 (lemmaForallSubseq!213 lt!1006493 l!6581 lambda!103469))))

(assert (=> b!2819380 (= lt!1006495 e!1783329)))

(declare-fun res!1173250 () Bool)

(assert (=> b!2819380 (=> res!1173250 e!1783329)))

(assert (=> b!2819380 (= res!1173250 (not ((_ is Cons!33051) lt!1006493)))))

(assert (=> b!2819380 (= lt!1006495 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 lt!1006493))))

(declare-fun take!539 (List!33175 Int) List!33175)

(assert (=> b!2819380 (= lt!1006493 (take!539 l!6581 i!1730))))

(declare-fun b!2819374 () Bool)

(declare-fun tp!900337 () Bool)

(assert (=> b!2819374 (= e!1783328 (and tp!900337 (inv!44964 (tag!5449 (h!38470 rules!4424))) (inv!44968 (transformation!4945 (h!38470 rules!4424))) e!1783336))))

(declare-fun res!1173248 () Bool)

(assert (=> start!273478 (=> (not res!1173248) (not e!1783332))))

(assert (=> start!273478 (= res!1173248 ((_ is Lexer!4534) thiss!27755))))

(assert (=> start!273478 e!1783332))

(assert (=> start!273478 true))

(assert (=> start!273478 e!1783326))

(assert (=> start!273478 e!1783334))

(assert (= (and start!273478 res!1173248) b!2819375))

(assert (= (and b!2819375 res!1173252) b!2819365))

(assert (= (and b!2819365 res!1173255) b!2819373))

(assert (= (and b!2819373 res!1173249) b!2819367))

(assert (= (and b!2819367 res!1173251) b!2819379))

(assert (= (and b!2819379 res!1173254) b!2819380))

(assert (= (and b!2819380 (not res!1173250)) b!2819366))

(assert (= (and b!2819366 res!1173253) b!2819368))

(assert (= (and b!2819380 (not res!1173256)) b!2819378))

(assert (= b!2819374 b!2819376))

(assert (= b!2819371 b!2819374))

(assert (= (and start!273478 ((_ is Cons!33050) rules!4424)) b!2819371))

(assert (= b!2819372 b!2819377))

(assert (= b!2819369 b!2819372))

(assert (= b!2819370 b!2819369))

(assert (= (and start!273478 ((_ is Cons!33051) l!6581)) b!2819370))

(declare-fun m!3249919 () Bool)

(assert (=> b!2819369 m!3249919))

(declare-fun m!3249921 () Bool)

(assert (=> b!2819374 m!3249921))

(declare-fun m!3249923 () Bool)

(assert (=> b!2819374 m!3249923))

(declare-fun m!3249925 () Bool)

(assert (=> b!2819378 m!3249925))

(assert (=> b!2819378 m!3249925))

(declare-fun m!3249927 () Bool)

(assert (=> b!2819378 m!3249927))

(declare-fun m!3249929 () Bool)

(assert (=> b!2819368 m!3249929))

(declare-fun m!3249931 () Bool)

(assert (=> b!2819370 m!3249931))

(declare-fun m!3249933 () Bool)

(assert (=> b!2819375 m!3249933))

(declare-fun m!3249935 () Bool)

(assert (=> b!2819365 m!3249935))

(declare-fun m!3249937 () Bool)

(assert (=> b!2819372 m!3249937))

(declare-fun m!3249939 () Bool)

(assert (=> b!2819372 m!3249939))

(declare-fun m!3249941 () Bool)

(assert (=> b!2819373 m!3249941))

(declare-fun m!3249943 () Bool)

(assert (=> b!2819367 m!3249943))

(declare-fun m!3249945 () Bool)

(assert (=> b!2819380 m!3249945))

(declare-fun m!3249947 () Bool)

(assert (=> b!2819380 m!3249947))

(declare-fun m!3249949 () Bool)

(assert (=> b!2819380 m!3249949))

(declare-fun m!3249951 () Bool)

(assert (=> b!2819380 m!3249951))

(declare-fun m!3249953 () Bool)

(assert (=> b!2819366 m!3249953))

(check-sat (not b!2819365) (not b!2819366) (not b_next!81275) (not b!2819375) (not b!2819369) (not b!2819373) b_and!205917 b_and!205911 (not b!2819367) b_and!205913 (not b!2819371) (not b!2819389) (not b!2819368) (not b!2819380) (not b!2819374) (not b_next!81269) (not b!2819372) (not b_next!81273) (not b!2819370) b_and!205915 (not b_next!81271) (not b!2819378))
(check-sat b_and!205913 (not b_next!81275) (not b_next!81269) (not b_next!81273) b_and!205917 b_and!205915 (not b_next!81271) b_and!205911)
(get-model)

(declare-fun d!818636 () Bool)

(declare-fun res!1173267 () Bool)

(declare-fun e!1783360 () Bool)

(assert (=> d!818636 (=> (not res!1173267) (not e!1783360))))

(declare-fun rulesValid!1818 (LexerInterface!4536 List!33174) Bool)

(assert (=> d!818636 (= res!1173267 (rulesValid!1818 thiss!27755 rules!4424))))

(assert (=> d!818636 (= (rulesInvariant!3954 thiss!27755 rules!4424) e!1783360)))

(declare-fun b!2819409 () Bool)

(declare-datatypes ((List!33177 0))(
  ( (Nil!33053) (Cons!33053 (h!38473 String!36331) (t!230390 List!33177)) )
))
(declare-fun noDuplicateTag!1814 (LexerInterface!4536 List!33174 List!33177) Bool)

(assert (=> b!2819409 (= e!1783360 (noDuplicateTag!1814 thiss!27755 rules!4424 Nil!33053))))

(assert (= (and d!818636 res!1173267) b!2819409))

(declare-fun m!3249961 () Bool)

(assert (=> d!818636 m!3249961))

(declare-fun m!3249963 () Bool)

(assert (=> b!2819409 m!3249963))

(assert (=> b!2819365 d!818636))

(declare-fun d!818642 () Bool)

(assert (=> d!818642 (= (isEmpty!18278 rules!4424) ((_ is Nil!33050) rules!4424))))

(assert (=> b!2819375 d!818642))

(declare-fun d!818644 () Bool)

(declare-fun lt!1006508 () Bool)

(declare-fun e!1783382 () Bool)

(assert (=> d!818644 (= lt!1006508 e!1783382)))

(declare-fun res!1173289 () Bool)

(assert (=> d!818644 (=> (not res!1173289) (not e!1783382))))

(declare-fun list!12391 (BalanceConc!20150) List!33175)

(declare-datatypes ((tuple2!33372 0))(
  ( (tuple2!33373 (_1!19779 BalanceConc!20150) (_2!19779 BalanceConc!20148)) )
))
(declare-fun lex!1986 (LexerInterface!4536 List!33174 BalanceConc!20148) tuple2!33372)

(declare-fun print!1705 (LexerInterface!4536 BalanceConc!20150) BalanceConc!20148)

(declare-fun singletonSeq!2127 (Token!9292) BalanceConc!20150)

(assert (=> d!818644 (= res!1173289 (= (list!12391 (_1!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)))))) (list!12391 (singletonSeq!2127 (h!38471 lt!1006493)))))))

(declare-fun e!1783381 () Bool)

(assert (=> d!818644 (= lt!1006508 e!1783381)))

(declare-fun res!1173288 () Bool)

(assert (=> d!818644 (=> (not res!1173288) (not e!1783381))))

(declare-fun lt!1006509 () tuple2!33372)

(declare-fun size!25736 (BalanceConc!20150) Int)

(assert (=> d!818644 (= res!1173288 (= (size!25736 (_1!19779 lt!1006509)) 1))))

(assert (=> d!818644 (= lt!1006509 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)))))))

(assert (=> d!818644 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818644 (= (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 lt!1006493)) lt!1006508)))

(declare-fun b!2819434 () Bool)

(declare-fun res!1173287 () Bool)

(assert (=> b!2819434 (=> (not res!1173287) (not e!1783381))))

(declare-fun apply!7718 (BalanceConc!20150 Int) Token!9292)

(assert (=> b!2819434 (= res!1173287 (= (apply!7718 (_1!19779 lt!1006509) 0) (h!38471 lt!1006493)))))

(declare-fun b!2819435 () Bool)

(declare-fun isEmpty!18281 (BalanceConc!20148) Bool)

(assert (=> b!2819435 (= e!1783381 (isEmpty!18281 (_2!19779 lt!1006509)))))

(declare-fun b!2819436 () Bool)

(assert (=> b!2819436 (= e!1783382 (isEmpty!18281 (_2!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)))))))))

(assert (= (and d!818644 res!1173288) b!2819434))

(assert (= (and b!2819434 res!1173287) b!2819435))

(assert (= (and d!818644 res!1173289) b!2819436))

(declare-fun m!3249983 () Bool)

(assert (=> d!818644 m!3249983))

(declare-fun m!3249985 () Bool)

(assert (=> d!818644 m!3249985))

(declare-fun m!3249987 () Bool)

(assert (=> d!818644 m!3249987))

(declare-fun m!3249989 () Bool)

(assert (=> d!818644 m!3249989))

(assert (=> d!818644 m!3249987))

(assert (=> d!818644 m!3249987))

(declare-fun m!3249991 () Bool)

(assert (=> d!818644 m!3249991))

(assert (=> d!818644 m!3249933))

(assert (=> d!818644 m!3249991))

(declare-fun m!3249993 () Bool)

(assert (=> d!818644 m!3249993))

(declare-fun m!3249995 () Bool)

(assert (=> b!2819434 m!3249995))

(declare-fun m!3249997 () Bool)

(assert (=> b!2819435 m!3249997))

(assert (=> b!2819436 m!3249987))

(assert (=> b!2819436 m!3249987))

(assert (=> b!2819436 m!3249991))

(assert (=> b!2819436 m!3249991))

(assert (=> b!2819436 m!3249993))

(declare-fun m!3249999 () Bool)

(assert (=> b!2819436 m!3249999))

(assert (=> b!2819366 d!818644))

(declare-fun bs!517229 () Bool)

(declare-fun d!818654 () Bool)

(assert (= bs!517229 (and d!818654 b!2819380)))

(declare-fun lambda!103480 () Int)

(assert (=> bs!517229 (= (= thiss!27755 Lexer!4534) (= lambda!103480 lambda!103469))))

(declare-fun b!2819475 () Bool)

(declare-fun e!1783412 () Bool)

(assert (=> b!2819475 (= e!1783412 true)))

(declare-fun b!2819474 () Bool)

(declare-fun e!1783411 () Bool)

(assert (=> b!2819474 (= e!1783411 e!1783412)))

(declare-fun b!2819473 () Bool)

(declare-fun e!1783410 () Bool)

(assert (=> b!2819473 (= e!1783410 e!1783411)))

(assert (=> d!818654 e!1783410))

(assert (= b!2819474 b!2819475))

(assert (= b!2819473 b!2819474))

(assert (= (and d!818654 ((_ is Cons!33050) rules!4424)) b!2819473))

(assert (=> b!2819475 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103480))))

(assert (=> b!2819475 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103480))))

(assert (=> d!818654 true))

(declare-fun lt!1006516 () Bool)

(assert (=> d!818654 (= lt!1006516 (forall!6763 l!6581 lambda!103480))))

(declare-fun e!1783409 () Bool)

(assert (=> d!818654 (= lt!1006516 e!1783409)))

(declare-fun res!1173304 () Bool)

(assert (=> d!818654 (=> res!1173304 e!1783409)))

(assert (=> d!818654 (= res!1173304 (not ((_ is Cons!33051) l!6581)))))

(assert (=> d!818654 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818654 (= (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 l!6581) lt!1006516)))

(declare-fun b!2819471 () Bool)

(declare-fun e!1783408 () Bool)

(assert (=> b!2819471 (= e!1783409 e!1783408)))

(declare-fun res!1173303 () Bool)

(assert (=> b!2819471 (=> (not res!1173303) (not e!1783408))))

(assert (=> b!2819471 (= res!1173303 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 l!6581)))))

(declare-fun b!2819472 () Bool)

(assert (=> b!2819472 (= e!1783408 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 l!6581)))))

(assert (= (and d!818654 (not res!1173304)) b!2819471))

(assert (= (and b!2819471 res!1173303) b!2819472))

(declare-fun m!3250021 () Bool)

(assert (=> d!818654 m!3250021))

(assert (=> d!818654 m!3249933))

(declare-fun m!3250023 () Bool)

(assert (=> b!2819471 m!3250023))

(declare-fun m!3250025 () Bool)

(assert (=> b!2819472 m!3250025))

(assert (=> b!2819373 d!818654))

(declare-fun d!818668 () Bool)

(assert (=> d!818668 (= (inv!44964 (tag!5449 (h!38470 rules!4424))) (= (mod (str.len (value!159251 (tag!5449 (h!38470 rules!4424)))) 2) 0))))

(assert (=> b!2819374 d!818668))

(declare-fun d!818670 () Bool)

(declare-fun res!1173311 () Bool)

(declare-fun e!1783419 () Bool)

(assert (=> d!818670 (=> (not res!1173311) (not e!1783419))))

(declare-fun semiInverseModEq!2048 (Int Int) Bool)

(assert (=> d!818670 (= res!1173311 (semiInverseModEq!2048 (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toValue!6959 (transformation!4945 (h!38470 rules!4424)))))))

(assert (=> d!818670 (= (inv!44968 (transformation!4945 (h!38470 rules!4424))) e!1783419)))

(declare-fun b!2819484 () Bool)

(declare-fun equivClasses!1947 (Int Int) Bool)

(assert (=> b!2819484 (= e!1783419 (equivClasses!1947 (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toValue!6959 (transformation!4945 (h!38470 rules!4424)))))))

(assert (= (and d!818670 res!1173311) b!2819484))

(declare-fun m!3250027 () Bool)

(assert (=> d!818670 m!3250027))

(declare-fun m!3250029 () Bool)

(assert (=> b!2819484 m!3250029))

(assert (=> b!2819374 d!818670))

(declare-fun d!818672 () Bool)

(declare-fun res!1173318 () Bool)

(declare-fun e!1783424 () Bool)

(assert (=> d!818672 (=> (not res!1173318) (not e!1783424))))

(declare-fun isEmpty!18282 (List!33173) Bool)

(assert (=> d!818672 (= res!1173318 (not (isEmpty!18282 (originalCharacters!5677 (h!38471 l!6581)))))))

(assert (=> d!818672 (= (inv!44967 (h!38471 l!6581)) e!1783424)))

(declare-fun b!2819491 () Bool)

(declare-fun res!1173319 () Bool)

(assert (=> b!2819491 (=> (not res!1173319) (not e!1783424))))

(declare-fun list!12392 (BalanceConc!20148) List!33173)

(declare-fun dynLambda!13805 (Int TokenValue!5175) BalanceConc!20148)

(assert (=> b!2819491 (= res!1173319 (= (originalCharacters!5677 (h!38471 l!6581)) (list!12392 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))))))

(declare-fun b!2819492 () Bool)

(declare-fun size!25737 (List!33173) Int)

(assert (=> b!2819492 (= e!1783424 (= (size!25731 (h!38471 l!6581)) (size!25737 (originalCharacters!5677 (h!38471 l!6581)))))))

(assert (= (and d!818672 res!1173318) b!2819491))

(assert (= (and b!2819491 res!1173319) b!2819492))

(declare-fun b_lambda!84329 () Bool)

(assert (=> (not b_lambda!84329) (not b!2819491)))

(declare-fun t!230369 () Bool)

(declare-fun tb!153749 () Bool)

(assert (=> (and b!2819377 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) t!230369) tb!153749))

(declare-fun b!2819497 () Bool)

(declare-fun e!1783427 () Bool)

(declare-fun tp!900345 () Bool)

(declare-fun inv!44971 (Conc!10255) Bool)

(assert (=> b!2819497 (= e!1783427 (and (inv!44971 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))) tp!900345))))

(declare-fun result!191398 () Bool)

(declare-fun inv!44972 (BalanceConc!20148) Bool)

(assert (=> tb!153749 (= result!191398 (and (inv!44972 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))) e!1783427))))

(assert (= tb!153749 b!2819497))

(declare-fun m!3250047 () Bool)

(assert (=> b!2819497 m!3250047))

(declare-fun m!3250049 () Bool)

(assert (=> tb!153749 m!3250049))

(assert (=> b!2819491 t!230369))

(declare-fun b_and!205919 () Bool)

(assert (= b_and!205913 (and (=> t!230369 result!191398) b_and!205919)))

(declare-fun tb!153751 () Bool)

(declare-fun t!230371 () Bool)

(assert (=> (and b!2819376 (= (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) t!230371) tb!153751))

(declare-fun result!191402 () Bool)

(assert (= result!191402 result!191398))

(assert (=> b!2819491 t!230371))

(declare-fun b_and!205921 () Bool)

(assert (= b_and!205917 (and (=> t!230371 result!191402) b_and!205921)))

(declare-fun m!3250051 () Bool)

(assert (=> d!818672 m!3250051))

(declare-fun m!3250053 () Bool)

(assert (=> b!2819491 m!3250053))

(assert (=> b!2819491 m!3250053))

(declare-fun m!3250055 () Bool)

(assert (=> b!2819491 m!3250055))

(declare-fun m!3250057 () Bool)

(assert (=> b!2819492 m!3250057))

(assert (=> b!2819370 d!818672))

(declare-fun d!818678 () Bool)

(assert (=> d!818678 (= (inv!44964 (tag!5449 (rule!7373 (h!38471 l!6581)))) (= (mod (str.len (value!159251 (tag!5449 (rule!7373 (h!38471 l!6581))))) 2) 0))))

(assert (=> b!2819372 d!818678))

(declare-fun d!818680 () Bool)

(declare-fun res!1173320 () Bool)

(declare-fun e!1783428 () Bool)

(assert (=> d!818680 (=> (not res!1173320) (not e!1783428))))

(assert (=> d!818680 (= res!1173320 (semiInverseModEq!2048 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581))))))))

(assert (=> d!818680 (= (inv!44968 (transformation!4945 (rule!7373 (h!38471 l!6581)))) e!1783428)))

(declare-fun b!2819498 () Bool)

(assert (=> b!2819498 (= e!1783428 (equivClasses!1947 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581))))))))

(assert (= (and d!818680 res!1173320) b!2819498))

(declare-fun m!3250059 () Bool)

(assert (=> d!818680 m!3250059))

(declare-fun m!3250061 () Bool)

(assert (=> b!2819498 m!3250061))

(assert (=> b!2819372 d!818680))

(declare-fun bs!517230 () Bool)

(declare-fun d!818682 () Bool)

(assert (= bs!517230 (and d!818682 b!2819380)))

(declare-fun lambda!103481 () Int)

(assert (=> bs!517230 (= (= thiss!27755 Lexer!4534) (= lambda!103481 lambda!103469))))

(declare-fun bs!517231 () Bool)

(assert (= bs!517231 (and d!818682 d!818654)))

(assert (=> bs!517231 (= lambda!103481 lambda!103480)))

(declare-fun b!2819503 () Bool)

(declare-fun e!1783433 () Bool)

(assert (=> b!2819503 (= e!1783433 true)))

(declare-fun b!2819502 () Bool)

(declare-fun e!1783432 () Bool)

(assert (=> b!2819502 (= e!1783432 e!1783433)))

(declare-fun b!2819501 () Bool)

(declare-fun e!1783431 () Bool)

(assert (=> b!2819501 (= e!1783431 e!1783432)))

(assert (=> d!818682 e!1783431))

(assert (= b!2819502 b!2819503))

(assert (= b!2819501 b!2819502))

(assert (= (and d!818682 ((_ is Cons!33050) rules!4424)) b!2819501))

(assert (=> b!2819503 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103481))))

(assert (=> b!2819503 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103481))))

(assert (=> d!818682 true))

(declare-fun lt!1006538 () Bool)

(assert (=> d!818682 (= lt!1006538 (forall!6763 (t!230358 lt!1006493) lambda!103481))))

(declare-fun e!1783430 () Bool)

(assert (=> d!818682 (= lt!1006538 e!1783430)))

(declare-fun res!1173322 () Bool)

(assert (=> d!818682 (=> res!1173322 e!1783430)))

(assert (=> d!818682 (= res!1173322 (not ((_ is Cons!33051) (t!230358 lt!1006493))))))

(assert (=> d!818682 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818682 (= (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 lt!1006493)) lt!1006538)))

(declare-fun b!2819499 () Bool)

(declare-fun e!1783429 () Bool)

(assert (=> b!2819499 (= e!1783430 e!1783429)))

(declare-fun res!1173321 () Bool)

(assert (=> b!2819499 (=> (not res!1173321) (not e!1783429))))

(assert (=> b!2819499 (= res!1173321 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 lt!1006493))))))

(declare-fun b!2819500 () Bool)

(assert (=> b!2819500 (= e!1783429 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 (t!230358 lt!1006493))))))

(assert (= (and d!818682 (not res!1173322)) b!2819499))

(assert (= (and b!2819499 res!1173321) b!2819500))

(declare-fun m!3250063 () Bool)

(assert (=> d!818682 m!3250063))

(assert (=> d!818682 m!3249933))

(declare-fun m!3250065 () Bool)

(assert (=> b!2819499 m!3250065))

(declare-fun m!3250067 () Bool)

(assert (=> b!2819500 m!3250067))

(assert (=> b!2819368 d!818682))

(declare-fun d!818684 () Bool)

(declare-fun res!1173347 () Bool)

(declare-fun e!1783460 () Bool)

(assert (=> d!818684 (=> res!1173347 e!1783460)))

(assert (=> d!818684 (= res!1173347 (or (not ((_ is Cons!33051) l!6581)) (not ((_ is Cons!33051) (t!230358 l!6581)))))))

(assert (=> d!818684 (= (tokensListTwoByTwoPredicateSeparableList!673 thiss!27755 l!6581 rules!4424) e!1783460)))

(declare-fun b!2819538 () Bool)

(declare-fun e!1783461 () Bool)

(assert (=> b!2819538 (= e!1783460 e!1783461)))

(declare-fun res!1173346 () Bool)

(assert (=> b!2819538 (=> (not res!1173346) (not e!1783461))))

(declare-fun separableTokensPredicate!889 (LexerInterface!4536 Token!9292 Token!9292 List!33174) Bool)

(assert (=> b!2819538 (= res!1173346 (separableTokensPredicate!889 thiss!27755 (h!38471 l!6581) (h!38471 (t!230358 l!6581)) rules!4424))))

(declare-fun lt!1006565 () Unit!46993)

(declare-fun Unit!46998 () Unit!46993)

(assert (=> b!2819538 (= lt!1006565 Unit!46998)))

(declare-fun size!25738 (BalanceConc!20148) Int)

(declare-fun charsOf!3064 (Token!9292) BalanceConc!20148)

(assert (=> b!2819538 (> (size!25738 (charsOf!3064 (h!38471 (t!230358 l!6581)))) 0)))

(declare-fun lt!1006566 () Unit!46993)

(declare-fun Unit!46999 () Unit!46993)

(assert (=> b!2819538 (= lt!1006566 Unit!46999)))

(assert (=> b!2819538 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 l!6581)))))

(declare-fun lt!1006567 () Unit!46993)

(declare-fun Unit!47000 () Unit!46993)

(assert (=> b!2819538 (= lt!1006567 Unit!47000)))

(assert (=> b!2819538 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 l!6581))))

(declare-fun lt!1006563 () Unit!46993)

(declare-fun lt!1006562 () Unit!46993)

(assert (=> b!2819538 (= lt!1006563 lt!1006562)))

(assert (=> b!2819538 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!703 (LexerInterface!4536 List!33174 List!33175 Token!9292) Unit!46993)

(assert (=> b!2819538 (= lt!1006562 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!703 thiss!27755 rules!4424 l!6581 (h!38471 (t!230358 l!6581))))))

(declare-fun lt!1006561 () Unit!46993)

(declare-fun lt!1006564 () Unit!46993)

(assert (=> b!2819538 (= lt!1006561 lt!1006564)))

(assert (=> b!2819538 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 l!6581))))

(assert (=> b!2819538 (= lt!1006564 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!703 thiss!27755 rules!4424 l!6581 (h!38471 l!6581)))))

(declare-fun b!2819539 () Bool)

(assert (=> b!2819539 (= e!1783461 (tokensListTwoByTwoPredicateSeparableList!673 thiss!27755 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))) rules!4424))))

(assert (= (and d!818684 (not res!1173347)) b!2819538))

(assert (= (and b!2819538 res!1173346) b!2819539))

(assert (=> b!2819538 m!3250023))

(declare-fun m!3250109 () Bool)

(assert (=> b!2819538 m!3250109))

(declare-fun m!3250111 () Bool)

(assert (=> b!2819538 m!3250111))

(declare-fun m!3250113 () Bool)

(assert (=> b!2819538 m!3250113))

(declare-fun m!3250115 () Bool)

(assert (=> b!2819538 m!3250115))

(assert (=> b!2819538 m!3250115))

(declare-fun m!3250117 () Bool)

(assert (=> b!2819538 m!3250117))

(declare-fun m!3250119 () Bool)

(assert (=> b!2819538 m!3250119))

(declare-fun m!3250121 () Bool)

(assert (=> b!2819539 m!3250121))

(assert (=> b!2819367 d!818684))

(declare-fun bs!517240 () Bool)

(declare-fun d!818694 () Bool)

(assert (= bs!517240 (and d!818694 b!2819380)))

(declare-fun lambda!103488 () Int)

(assert (=> bs!517240 (= (= thiss!27755 Lexer!4534) (= lambda!103488 lambda!103469))))

(declare-fun bs!517241 () Bool)

(assert (= bs!517241 (and d!818694 d!818654)))

(assert (=> bs!517241 (= lambda!103488 lambda!103480)))

(declare-fun bs!517242 () Bool)

(assert (= bs!517242 (and d!818694 d!818682)))

(assert (=> bs!517242 (= lambda!103488 lambda!103481)))

(declare-fun b!2819599 () Bool)

(declare-fun e!1783510 () Bool)

(assert (=> b!2819599 (= e!1783510 true)))

(declare-fun b!2819598 () Bool)

(declare-fun e!1783509 () Bool)

(assert (=> b!2819598 (= e!1783509 e!1783510)))

(declare-fun b!2819597 () Bool)

(declare-fun e!1783508 () Bool)

(assert (=> b!2819597 (= e!1783508 e!1783509)))

(assert (=> d!818694 e!1783508))

(assert (= b!2819598 b!2819599))

(assert (= b!2819597 b!2819598))

(assert (= (and d!818694 ((_ is Cons!33050) rules!4424)) b!2819597))

(assert (=> b!2819599 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103488))))

(assert (=> b!2819599 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103488))))

(assert (=> d!818694 true))

(declare-fun e!1783507 () Bool)

(assert (=> d!818694 e!1783507))

(declare-fun res!1173353 () Bool)

(assert (=> d!818694 (=> (not res!1173353) (not e!1783507))))

(declare-fun lt!1006570 () Bool)

(assert (=> d!818694 (= res!1173353 (= lt!1006570 (forall!6763 (list!12391 (seqFromList!3236 lt!1006493)) lambda!103488)))))

(declare-fun forall!6765 (BalanceConc!20150 Int) Bool)

(assert (=> d!818694 (= lt!1006570 (forall!6765 (seqFromList!3236 lt!1006493) lambda!103488))))

(assert (=> d!818694 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818694 (= (rulesProduceEachTokenIndividually!1086 thiss!27755 rules!4424 (seqFromList!3236 lt!1006493)) lt!1006570)))

(declare-fun b!2819596 () Bool)

(assert (=> b!2819596 (= e!1783507 (= lt!1006570 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (list!12391 (seqFromList!3236 lt!1006493)))))))

(assert (= (and d!818694 res!1173353) b!2819596))

(assert (=> d!818694 m!3249925))

(declare-fun m!3250141 () Bool)

(assert (=> d!818694 m!3250141))

(assert (=> d!818694 m!3250141))

(declare-fun m!3250143 () Bool)

(assert (=> d!818694 m!3250143))

(assert (=> d!818694 m!3249925))

(declare-fun m!3250145 () Bool)

(assert (=> d!818694 m!3250145))

(assert (=> d!818694 m!3249933))

(assert (=> b!2819596 m!3249925))

(assert (=> b!2819596 m!3250141))

(assert (=> b!2819596 m!3250141))

(declare-fun m!3250147 () Bool)

(assert (=> b!2819596 m!3250147))

(assert (=> b!2819378 d!818694))

(declare-fun d!818698 () Bool)

(declare-fun fromListB!1465 (List!33175) BalanceConc!20150)

(assert (=> d!818698 (= (seqFromList!3236 lt!1006493) (fromListB!1465 lt!1006493))))

(declare-fun bs!517243 () Bool)

(assert (= bs!517243 d!818698))

(declare-fun m!3250149 () Bool)

(assert (=> bs!517243 m!3250149))

(assert (=> b!2819378 d!818698))

(declare-fun b!2819610 () Bool)

(declare-fun e!1783519 () Bool)

(declare-fun inv!15 (TokenValue!5175) Bool)

(assert (=> b!2819610 (= e!1783519 (inv!15 (value!159252 (h!38471 l!6581))))))

(declare-fun b!2819611 () Bool)

(declare-fun e!1783517 () Bool)

(declare-fun inv!17 (TokenValue!5175) Bool)

(assert (=> b!2819611 (= e!1783517 (inv!17 (value!159252 (h!38471 l!6581))))))

(declare-fun b!2819612 () Bool)

(declare-fun e!1783518 () Bool)

(assert (=> b!2819612 (= e!1783518 e!1783517)))

(declare-fun c!456957 () Bool)

(assert (=> b!2819612 (= c!456957 ((_ is IntegerValue!15526) (value!159252 (h!38471 l!6581))))))

(declare-fun b!2819613 () Bool)

(declare-fun res!1173356 () Bool)

(assert (=> b!2819613 (=> res!1173356 e!1783519)))

(assert (=> b!2819613 (= res!1173356 (not ((_ is IntegerValue!15527) (value!159252 (h!38471 l!6581)))))))

(assert (=> b!2819613 (= e!1783517 e!1783519)))

(declare-fun d!818700 () Bool)

(declare-fun c!456958 () Bool)

(assert (=> d!818700 (= c!456958 ((_ is IntegerValue!15525) (value!159252 (h!38471 l!6581))))))

(assert (=> d!818700 (= (inv!21 (value!159252 (h!38471 l!6581))) e!1783518)))

(declare-fun b!2819614 () Bool)

(declare-fun inv!16 (TokenValue!5175) Bool)

(assert (=> b!2819614 (= e!1783518 (inv!16 (value!159252 (h!38471 l!6581))))))

(assert (= (and d!818700 c!456958) b!2819614))

(assert (= (and d!818700 (not c!456958)) b!2819612))

(assert (= (and b!2819612 c!456957) b!2819611))

(assert (= (and b!2819612 (not c!456957)) b!2819613))

(assert (= (and b!2819613 (not res!1173356)) b!2819610))

(declare-fun m!3250151 () Bool)

(assert (=> b!2819610 m!3250151))

(declare-fun m!3250153 () Bool)

(assert (=> b!2819611 m!3250153))

(declare-fun m!3250155 () Bool)

(assert (=> b!2819614 m!3250155))

(assert (=> b!2819369 d!818700))

(declare-fun d!818702 () Bool)

(declare-fun res!1173361 () Bool)

(declare-fun e!1783524 () Bool)

(assert (=> d!818702 (=> res!1173361 e!1783524)))

(assert (=> d!818702 (= res!1173361 ((_ is Nil!33051) lt!1006493))))

(assert (=> d!818702 (= (forall!6763 lt!1006493 lambda!103469) e!1783524)))

(declare-fun b!2819619 () Bool)

(declare-fun e!1783525 () Bool)

(assert (=> b!2819619 (= e!1783524 e!1783525)))

(declare-fun res!1173362 () Bool)

(assert (=> b!2819619 (=> (not res!1173362) (not e!1783525))))

(declare-fun dynLambda!13806 (Int Token!9292) Bool)

(assert (=> b!2819619 (= res!1173362 (dynLambda!13806 lambda!103469 (h!38471 lt!1006493)))))

(declare-fun b!2819620 () Bool)

(assert (=> b!2819620 (= e!1783525 (forall!6763 (t!230358 lt!1006493) lambda!103469))))

(assert (= (and d!818702 (not res!1173361)) b!2819619))

(assert (= (and b!2819619 res!1173362) b!2819620))

(declare-fun b_lambda!84337 () Bool)

(assert (=> (not b_lambda!84337) (not b!2819619)))

(declare-fun m!3250157 () Bool)

(assert (=> b!2819619 m!3250157))

(declare-fun m!3250159 () Bool)

(assert (=> b!2819620 m!3250159))

(assert (=> b!2819380 d!818702))

(declare-fun d!818704 () Bool)

(assert (=> d!818704 (forall!6763 lt!1006493 lambda!103469)))

(declare-fun lt!1006573 () Unit!46993)

(declare-fun choose!16673 (List!33175 List!33175 Int) Unit!46993)

(assert (=> d!818704 (= lt!1006573 (choose!16673 lt!1006493 l!6581 lambda!103469))))

(assert (=> d!818704 (forall!6763 l!6581 lambda!103469)))

(assert (=> d!818704 (= (lemmaForallSubseq!213 lt!1006493 l!6581 lambda!103469) lt!1006573)))

(declare-fun bs!517244 () Bool)

(assert (= bs!517244 d!818704))

(assert (=> bs!517244 m!3249945))

(declare-fun m!3250161 () Bool)

(assert (=> bs!517244 m!3250161))

(declare-fun m!3250163 () Bool)

(assert (=> bs!517244 m!3250163))

(assert (=> b!2819380 d!818704))

(declare-fun bs!517245 () Bool)

(declare-fun d!818706 () Bool)

(assert (= bs!517245 (and d!818706 b!2819380)))

(declare-fun lambda!103489 () Int)

(assert (=> bs!517245 (= (= thiss!27755 Lexer!4534) (= lambda!103489 lambda!103469))))

(declare-fun bs!517246 () Bool)

(assert (= bs!517246 (and d!818706 d!818654)))

(assert (=> bs!517246 (= lambda!103489 lambda!103480)))

(declare-fun bs!517247 () Bool)

(assert (= bs!517247 (and d!818706 d!818682)))

(assert (=> bs!517247 (= lambda!103489 lambda!103481)))

(declare-fun bs!517248 () Bool)

(assert (= bs!517248 (and d!818706 d!818694)))

(assert (=> bs!517248 (= lambda!103489 lambda!103488)))

(declare-fun b!2819625 () Bool)

(declare-fun e!1783530 () Bool)

(assert (=> b!2819625 (= e!1783530 true)))

(declare-fun b!2819624 () Bool)

(declare-fun e!1783529 () Bool)

(assert (=> b!2819624 (= e!1783529 e!1783530)))

(declare-fun b!2819623 () Bool)

(declare-fun e!1783528 () Bool)

(assert (=> b!2819623 (= e!1783528 e!1783529)))

(assert (=> d!818706 e!1783528))

(assert (= b!2819624 b!2819625))

(assert (= b!2819623 b!2819624))

(assert (= (and d!818706 ((_ is Cons!33050) rules!4424)) b!2819623))

(assert (=> b!2819625 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103489))))

(assert (=> b!2819625 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103489))))

(assert (=> d!818706 true))

(declare-fun lt!1006574 () Bool)

(assert (=> d!818706 (= lt!1006574 (forall!6763 lt!1006493 lambda!103489))))

(declare-fun e!1783527 () Bool)

(assert (=> d!818706 (= lt!1006574 e!1783527)))

(declare-fun res!1173364 () Bool)

(assert (=> d!818706 (=> res!1173364 e!1783527)))

(assert (=> d!818706 (= res!1173364 (not ((_ is Cons!33051) lt!1006493)))))

(assert (=> d!818706 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818706 (= (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 lt!1006493) lt!1006574)))

(declare-fun b!2819621 () Bool)

(declare-fun e!1783526 () Bool)

(assert (=> b!2819621 (= e!1783527 e!1783526)))

(declare-fun res!1173363 () Bool)

(assert (=> b!2819621 (=> (not res!1173363) (not e!1783526))))

(assert (=> b!2819621 (= res!1173363 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 lt!1006493)))))

(declare-fun b!2819622 () Bool)

(assert (=> b!2819622 (= e!1783526 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 lt!1006493)))))

(assert (= (and d!818706 (not res!1173364)) b!2819621))

(assert (= (and b!2819621 res!1173363) b!2819622))

(declare-fun m!3250165 () Bool)

(assert (=> d!818706 m!3250165))

(assert (=> d!818706 m!3249933))

(assert (=> b!2819621 m!3249953))

(assert (=> b!2819622 m!3249929))

(assert (=> b!2819380 d!818706))

(declare-fun b!2819640 () Bool)

(declare-fun e!1783539 () Int)

(assert (=> b!2819640 (= e!1783539 0)))

(declare-fun b!2819641 () Bool)

(declare-fun e!1783542 () Int)

(assert (=> b!2819641 (= e!1783542 i!1730)))

(declare-fun b!2819642 () Bool)

(declare-fun e!1783541 () List!33175)

(assert (=> b!2819642 (= e!1783541 Nil!33051)))

(declare-fun b!2819643 () Bool)

(assert (=> b!2819643 (= e!1783541 (Cons!33051 (h!38471 l!6581) (take!539 (t!230358 l!6581) (- i!1730 1))))))

(declare-fun b!2819644 () Bool)

(declare-fun e!1783540 () Bool)

(declare-fun lt!1006577 () List!33175)

(declare-fun size!25739 (List!33175) Int)

(assert (=> b!2819644 (= e!1783540 (= (size!25739 lt!1006577) e!1783539))))

(declare-fun c!456965 () Bool)

(assert (=> b!2819644 (= c!456965 (<= i!1730 0))))

(declare-fun b!2819646 () Bool)

(assert (=> b!2819646 (= e!1783542 (size!25739 l!6581))))

(declare-fun d!818708 () Bool)

(assert (=> d!818708 e!1783540))

(declare-fun res!1173367 () Bool)

(assert (=> d!818708 (=> (not res!1173367) (not e!1783540))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4608 (List!33175) (InoxSet Token!9292))

(assert (=> d!818708 (= res!1173367 (= ((_ map implies) (content!4608 lt!1006577) (content!4608 l!6581)) ((as const (InoxSet Token!9292)) true)))))

(assert (=> d!818708 (= lt!1006577 e!1783541)))

(declare-fun c!456966 () Bool)

(assert (=> d!818708 (= c!456966 (or ((_ is Nil!33051) l!6581) (<= i!1730 0)))))

(assert (=> d!818708 (= (take!539 l!6581 i!1730) lt!1006577)))

(declare-fun b!2819645 () Bool)

(assert (=> b!2819645 (= e!1783539 e!1783542)))

(declare-fun c!456967 () Bool)

(assert (=> b!2819645 (= c!456967 (>= i!1730 (size!25739 l!6581)))))

(assert (= (and d!818708 c!456966) b!2819642))

(assert (= (and d!818708 (not c!456966)) b!2819643))

(assert (= (and d!818708 res!1173367) b!2819644))

(assert (= (and b!2819644 c!456965) b!2819640))

(assert (= (and b!2819644 (not c!456965)) b!2819645))

(assert (= (and b!2819645 c!456967) b!2819646))

(assert (= (and b!2819645 (not c!456967)) b!2819641))

(declare-fun m!3250167 () Bool)

(assert (=> b!2819645 m!3250167))

(assert (=> b!2819646 m!3250167))

(declare-fun m!3250169 () Bool)

(assert (=> d!818708 m!3250169))

(declare-fun m!3250171 () Bool)

(assert (=> d!818708 m!3250171))

(declare-fun m!3250173 () Bool)

(assert (=> b!2819643 m!3250173))

(declare-fun m!3250175 () Bool)

(assert (=> b!2819644 m!3250175))

(assert (=> b!2819380 d!818708))

(declare-fun b!2819660 () Bool)

(declare-fun b_free!80581 () Bool)

(declare-fun b_next!81285 () Bool)

(assert (=> b!2819660 (= b_free!80581 (not b_next!81285))))

(declare-fun tp!900411 () Bool)

(declare-fun b_and!205935 () Bool)

(assert (=> b!2819660 (= tp!900411 b_and!205935)))

(declare-fun b_free!80583 () Bool)

(declare-fun b_next!81287 () Bool)

(assert (=> b!2819660 (= b_free!80583 (not b_next!81287))))

(declare-fun t!230386 () Bool)

(declare-fun tb!153761 () Bool)

(assert (=> (and b!2819660 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) t!230386) tb!153761))

(declare-fun result!191424 () Bool)

(assert (= result!191424 result!191398))

(assert (=> b!2819491 t!230386))

(declare-fun tp!900412 () Bool)

(declare-fun b_and!205937 () Bool)

(assert (=> b!2819660 (= tp!900412 (and (=> t!230386 result!191424) b_and!205937))))

(declare-fun e!1783559 () Bool)

(declare-fun e!1783556 () Bool)

(declare-fun b!2819657 () Bool)

(declare-fun tp!900410 () Bool)

(assert (=> b!2819657 (= e!1783556 (and (inv!44967 (h!38471 (t!230358 l!6581))) e!1783559 tp!900410))))

(declare-fun b!2819659 () Bool)

(declare-fun tp!900409 () Bool)

(declare-fun e!1783560 () Bool)

(declare-fun e!1783557 () Bool)

(assert (=> b!2819659 (= e!1783560 (and tp!900409 (inv!44964 (tag!5449 (rule!7373 (h!38471 (t!230358 l!6581))))) (inv!44968 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) e!1783557))))

(declare-fun b!2819658 () Bool)

(declare-fun tp!900413 () Bool)

(assert (=> b!2819658 (= e!1783559 (and (inv!21 (value!159252 (h!38471 (t!230358 l!6581)))) e!1783560 tp!900413))))

(assert (=> b!2819660 (= e!1783557 (and tp!900411 tp!900412))))

(assert (=> b!2819370 (= tp!900341 e!1783556)))

(assert (= b!2819659 b!2819660))

(assert (= b!2819658 b!2819659))

(assert (= b!2819657 b!2819658))

(assert (= (and b!2819370 ((_ is Cons!33051) (t!230358 l!6581))) b!2819657))

(declare-fun m!3250177 () Bool)

(assert (=> b!2819657 m!3250177))

(declare-fun m!3250179 () Bool)

(assert (=> b!2819659 m!3250179))

(declare-fun m!3250181 () Bool)

(assert (=> b!2819659 m!3250181))

(declare-fun m!3250183 () Bool)

(assert (=> b!2819658 m!3250183))

(declare-fun b!2819673 () Bool)

(declare-fun e!1783563 () Bool)

(declare-fun tp!900424 () Bool)

(assert (=> b!2819673 (= e!1783563 tp!900424)))

(declare-fun b!2819671 () Bool)

(declare-fun tp_is_empty!14443 () Bool)

(assert (=> b!2819671 (= e!1783563 tp_is_empty!14443)))

(declare-fun b!2819672 () Bool)

(declare-fun tp!900426 () Bool)

(declare-fun tp!900428 () Bool)

(assert (=> b!2819672 (= e!1783563 (and tp!900426 tp!900428))))

(assert (=> b!2819372 (= tp!900338 e!1783563)))

(declare-fun b!2819674 () Bool)

(declare-fun tp!900427 () Bool)

(declare-fun tp!900425 () Bool)

(assert (=> b!2819674 (= e!1783563 (and tp!900427 tp!900425))))

(assert (= (and b!2819372 ((_ is ElementMatch!8335) (regex!4945 (rule!7373 (h!38471 l!6581))))) b!2819671))

(assert (= (and b!2819372 ((_ is Concat!13511) (regex!4945 (rule!7373 (h!38471 l!6581))))) b!2819672))

(assert (= (and b!2819372 ((_ is Star!8335) (regex!4945 (rule!7373 (h!38471 l!6581))))) b!2819673))

(assert (= (and b!2819372 ((_ is Union!8335) (regex!4945 (rule!7373 (h!38471 l!6581))))) b!2819674))

(declare-fun b!2819685 () Bool)

(declare-fun b_free!80585 () Bool)

(declare-fun b_next!81289 () Bool)

(assert (=> b!2819685 (= b_free!80585 (not b_next!81289))))

(declare-fun tp!900437 () Bool)

(declare-fun b_and!205939 () Bool)

(assert (=> b!2819685 (= tp!900437 b_and!205939)))

(declare-fun b_free!80587 () Bool)

(declare-fun b_next!81291 () Bool)

(assert (=> b!2819685 (= b_free!80587 (not b_next!81291))))

(declare-fun tb!153763 () Bool)

(declare-fun t!230388 () Bool)

(assert (=> (and b!2819685 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) t!230388) tb!153763))

(declare-fun result!191430 () Bool)

(assert (= result!191430 result!191398))

(assert (=> b!2819491 t!230388))

(declare-fun tp!900438 () Bool)

(declare-fun b_and!205941 () Bool)

(assert (=> b!2819685 (= tp!900438 (and (=> t!230388 result!191430) b_and!205941))))

(declare-fun e!1783575 () Bool)

(assert (=> b!2819685 (= e!1783575 (and tp!900437 tp!900438))))

(declare-fun e!1783574 () Bool)

(declare-fun tp!900439 () Bool)

(declare-fun b!2819684 () Bool)

(assert (=> b!2819684 (= e!1783574 (and tp!900439 (inv!44964 (tag!5449 (h!38470 (t!230357 rules!4424)))) (inv!44968 (transformation!4945 (h!38470 (t!230357 rules!4424)))) e!1783575))))

(declare-fun b!2819683 () Bool)

(declare-fun e!1783572 () Bool)

(declare-fun tp!900440 () Bool)

(assert (=> b!2819683 (= e!1783572 (and e!1783574 tp!900440))))

(assert (=> b!2819371 (= tp!900334 e!1783572)))

(assert (= b!2819684 b!2819685))

(assert (= b!2819683 b!2819684))

(assert (= (and b!2819371 ((_ is Cons!33050) (t!230357 rules!4424))) b!2819683))

(declare-fun m!3250185 () Bool)

(assert (=> b!2819684 m!3250185))

(declare-fun m!3250187 () Bool)

(assert (=> b!2819684 m!3250187))

(declare-fun b!2819690 () Bool)

(declare-fun e!1783578 () Bool)

(declare-fun tp!900443 () Bool)

(assert (=> b!2819690 (= e!1783578 (and tp_is_empty!14443 tp!900443))))

(assert (=> b!2819369 (= tp!900342 e!1783578)))

(assert (= (and b!2819369 ((_ is Cons!33049) (originalCharacters!5677 (h!38471 l!6581)))) b!2819690))

(declare-fun b!2819693 () Bool)

(declare-fun e!1783581 () Bool)

(assert (=> b!2819693 (= e!1783581 true)))

(declare-fun b!2819692 () Bool)

(declare-fun e!1783580 () Bool)

(assert (=> b!2819692 (= e!1783580 e!1783581)))

(declare-fun b!2819691 () Bool)

(declare-fun e!1783579 () Bool)

(assert (=> b!2819691 (= e!1783579 e!1783580)))

(assert (=> b!2819389 e!1783579))

(assert (= b!2819692 b!2819693))

(assert (= b!2819691 b!2819692))

(assert (= (and b!2819389 ((_ is Cons!33050) (t!230357 rules!4424))) b!2819691))

(assert (=> b!2819693 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103469))))

(assert (=> b!2819693 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103469))))

(declare-fun b!2819696 () Bool)

(declare-fun e!1783582 () Bool)

(declare-fun tp!900444 () Bool)

(assert (=> b!2819696 (= e!1783582 tp!900444)))

(declare-fun b!2819694 () Bool)

(assert (=> b!2819694 (= e!1783582 tp_is_empty!14443)))

(declare-fun b!2819695 () Bool)

(declare-fun tp!900446 () Bool)

(declare-fun tp!900448 () Bool)

(assert (=> b!2819695 (= e!1783582 (and tp!900446 tp!900448))))

(assert (=> b!2819374 (= tp!900337 e!1783582)))

(declare-fun b!2819697 () Bool)

(declare-fun tp!900447 () Bool)

(declare-fun tp!900445 () Bool)

(assert (=> b!2819697 (= e!1783582 (and tp!900447 tp!900445))))

(assert (= (and b!2819374 ((_ is ElementMatch!8335) (regex!4945 (h!38470 rules!4424)))) b!2819694))

(assert (= (and b!2819374 ((_ is Concat!13511) (regex!4945 (h!38470 rules!4424)))) b!2819695))

(assert (= (and b!2819374 ((_ is Star!8335) (regex!4945 (h!38470 rules!4424)))) b!2819696))

(assert (= (and b!2819374 ((_ is Union!8335) (regex!4945 (h!38470 rules!4424)))) b!2819697))

(declare-fun b_lambda!84339 () Bool)

(assert (= b_lambda!84329 (or (and b!2819377 b_free!80567) (and b!2819376 b_free!80571 (= (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))))) (and b!2819660 b_free!80583 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))))) (and b!2819685 b_free!80587 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))))) b_lambda!84339)))

(declare-fun b_lambda!84341 () Bool)

(assert (= b_lambda!84337 (or b!2819380 b_lambda!84341)))

(declare-fun bs!517249 () Bool)

(declare-fun d!818710 () Bool)

(assert (= bs!517249 (and d!818710 b!2819380)))

(assert (=> bs!517249 (= (dynLambda!13806 lambda!103469 (h!38471 lt!1006493)) (rulesProduceIndividualToken!2074 Lexer!4534 rules!4424 (h!38471 lt!1006493)))))

(declare-fun m!3250189 () Bool)

(assert (=> bs!517249 m!3250189))

(assert (=> b!2819619 d!818710))

(check-sat (not b!2819436) (not b!2819472) (not b!2819622) (not b_next!81269) (not b!2819646) (not b!2819696) (not d!818680) b_and!205941 b_and!205915 (not b!2819695) (not b!2819484) (not b!2819659) (not b!2819690) (not b!2819434) (not bs!517249) b_and!205921 (not b_next!81287) (not d!818682) (not b!2819657) (not b!2819409) (not b!2819621) b_and!205919 (not b!2819491) (not b_next!81275) (not b!2819673) (not d!818636) (not b!2819683) b_and!205935 (not b!2819643) (not b!2819611) (not b!2819691) (not b!2819435) (not d!818704) (not b!2819674) (not b!2819473) (not b!2819500) (not b!2819645) (not b!2819620) (not b!2819597) (not d!818708) (not b!2819492) (not b!2819501) (not b_lambda!84341) (not d!818694) (not tb!153749) (not b!2819614) (not b!2819697) (not b!2819596) b_and!205937 (not b_next!81285) (not b!2819497) (not b_next!81289) (not b_next!81291) (not d!818644) b_and!205939 (not d!818672) (not b!2819658) (not b!2819610) (not b_next!81273) (not b!2819499) (not b!2819538) (not b!2819623) (not d!818670) tp_is_empty!14443 (not b!2819644) (not b!2819672) (not d!818698) (not d!818706) (not d!818654) (not b!2819684) (not b!2819539) (not b_next!81271) (not b!2819471) b_and!205911 (not b_lambda!84339) (not b!2819498))
(check-sat b_and!205919 (not b_next!81275) b_and!205935 (not b_next!81269) b_and!205941 b_and!205939 (not b_next!81273) b_and!205915 (not b_next!81271) b_and!205911 b_and!205921 (not b_next!81287) b_and!205937 (not b_next!81285) (not b_next!81289) (not b_next!81291))
(get-model)

(declare-fun d!818720 () Bool)

(declare-fun lt!1006584 () Bool)

(assert (=> d!818720 (= lt!1006584 (isEmpty!18282 (list!12392 (_2!19779 lt!1006509))))))

(declare-fun isEmpty!18283 (Conc!10255) Bool)

(assert (=> d!818720 (= lt!1006584 (isEmpty!18283 (c!456935 (_2!19779 lt!1006509))))))

(assert (=> d!818720 (= (isEmpty!18281 (_2!19779 lt!1006509)) lt!1006584)))

(declare-fun bs!517256 () Bool)

(assert (= bs!517256 d!818720))

(declare-fun m!3250217 () Bool)

(assert (=> bs!517256 m!3250217))

(assert (=> bs!517256 m!3250217))

(declare-fun m!3250219 () Bool)

(assert (=> bs!517256 m!3250219))

(declare-fun m!3250221 () Bool)

(assert (=> bs!517256 m!3250221))

(assert (=> b!2819435 d!818720))

(declare-fun d!818724 () Bool)

(assert (=> d!818724 true))

(declare-fun lt!1006589 () Bool)

(declare-fun rulesValidInductive!1717 (LexerInterface!4536 List!33174) Bool)

(assert (=> d!818724 (= lt!1006589 (rulesValidInductive!1717 thiss!27755 rules!4424))))

(declare-fun lambda!103494 () Int)

(declare-fun forall!6766 (List!33174 Int) Bool)

(assert (=> d!818724 (= lt!1006589 (forall!6766 rules!4424 lambda!103494))))

(assert (=> d!818724 (= (rulesValid!1818 thiss!27755 rules!4424) lt!1006589)))

(declare-fun bs!517263 () Bool)

(assert (= bs!517263 d!818724))

(declare-fun m!3250235 () Bool)

(assert (=> bs!517263 m!3250235))

(declare-fun m!3250237 () Bool)

(assert (=> bs!517263 m!3250237))

(assert (=> d!818636 d!818724))

(declare-fun d!818728 () Bool)

(declare-fun res!1173384 () Bool)

(declare-fun e!1783597 () Bool)

(assert (=> d!818728 (=> res!1173384 e!1783597)))

(assert (=> d!818728 (= res!1173384 (or (not ((_ is Cons!33051) (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))) (not ((_ is Cons!33051) (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))))))))

(assert (=> d!818728 (= (tokensListTwoByTwoPredicateSeparableList!673 thiss!27755 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))) rules!4424) e!1783597)))

(declare-fun b!2819716 () Bool)

(declare-fun e!1783598 () Bool)

(assert (=> b!2819716 (= e!1783597 e!1783598)))

(declare-fun res!1173383 () Bool)

(assert (=> b!2819716 (=> (not res!1173383) (not e!1783598))))

(assert (=> b!2819716 (= res!1173383 (separableTokensPredicate!889 thiss!27755 (h!38471 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581)))) (h!38471 (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))) rules!4424))))

(declare-fun lt!1006594 () Unit!46993)

(declare-fun Unit!47001 () Unit!46993)

(assert (=> b!2819716 (= lt!1006594 Unit!47001)))

(assert (=> b!2819716 (> (size!25738 (charsOf!3064 (h!38471 (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))))) 0)))

(declare-fun lt!1006595 () Unit!46993)

(declare-fun Unit!47002 () Unit!46993)

(assert (=> b!2819716 (= lt!1006595 Unit!47002)))

(assert (=> b!2819716 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))))))

(declare-fun lt!1006596 () Unit!46993)

(declare-fun Unit!47003 () Unit!46993)

(assert (=> b!2819716 (= lt!1006596 Unit!47003)))

(assert (=> b!2819716 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581)))))))

(declare-fun lt!1006592 () Unit!46993)

(declare-fun lt!1006591 () Unit!46993)

(assert (=> b!2819716 (= lt!1006592 lt!1006591)))

(assert (=> b!2819716 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))))))

(assert (=> b!2819716 (= lt!1006591 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!703 thiss!27755 rules!4424 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))) (h!38471 (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581)))))))))

(declare-fun lt!1006590 () Unit!46993)

(declare-fun lt!1006593 () Unit!46993)

(assert (=> b!2819716 (= lt!1006590 lt!1006593)))

(assert (=> b!2819716 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581)))))))

(assert (=> b!2819716 (= lt!1006593 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!703 thiss!27755 rules!4424 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))) (h!38471 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))))))

(declare-fun b!2819717 () Bool)

(assert (=> b!2819717 (= e!1783598 (tokensListTwoByTwoPredicateSeparableList!673 thiss!27755 (Cons!33051 (h!38471 (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581))))) (t!230358 (t!230358 (Cons!33051 (h!38471 (t!230358 l!6581)) (t!230358 (t!230358 l!6581)))))) rules!4424))))

(assert (= (and d!818728 (not res!1173384)) b!2819716))

(assert (= (and b!2819716 res!1173383) b!2819717))

(declare-fun m!3250249 () Bool)

(assert (=> b!2819716 m!3250249))

(declare-fun m!3250251 () Bool)

(assert (=> b!2819716 m!3250251))

(declare-fun m!3250253 () Bool)

(assert (=> b!2819716 m!3250253))

(declare-fun m!3250255 () Bool)

(assert (=> b!2819716 m!3250255))

(declare-fun m!3250257 () Bool)

(assert (=> b!2819716 m!3250257))

(assert (=> b!2819716 m!3250257))

(declare-fun m!3250259 () Bool)

(assert (=> b!2819716 m!3250259))

(declare-fun m!3250261 () Bool)

(assert (=> b!2819716 m!3250261))

(declare-fun m!3250263 () Bool)

(assert (=> b!2819717 m!3250263))

(assert (=> b!2819539 d!818728))

(assert (=> b!2819621 d!818644))

(assert (=> d!818704 d!818702))

(declare-fun d!818732 () Bool)

(assert (=> d!818732 (forall!6763 lt!1006493 lambda!103469)))

(assert (=> d!818732 true))

(declare-fun _$37!351 () Unit!46993)

(assert (=> d!818732 (= (choose!16673 lt!1006493 l!6581 lambda!103469) _$37!351)))

(declare-fun bs!517264 () Bool)

(assert (= bs!517264 d!818732))

(assert (=> bs!517264 m!3249945))

(assert (=> d!818704 d!818732))

(declare-fun d!818734 () Bool)

(declare-fun res!1173385 () Bool)

(declare-fun e!1783599 () Bool)

(assert (=> d!818734 (=> res!1173385 e!1783599)))

(assert (=> d!818734 (= res!1173385 ((_ is Nil!33051) l!6581))))

(assert (=> d!818734 (= (forall!6763 l!6581 lambda!103469) e!1783599)))

(declare-fun b!2819718 () Bool)

(declare-fun e!1783600 () Bool)

(assert (=> b!2819718 (= e!1783599 e!1783600)))

(declare-fun res!1173386 () Bool)

(assert (=> b!2819718 (=> (not res!1173386) (not e!1783600))))

(assert (=> b!2819718 (= res!1173386 (dynLambda!13806 lambda!103469 (h!38471 l!6581)))))

(declare-fun b!2819719 () Bool)

(assert (=> b!2819719 (= e!1783600 (forall!6763 (t!230358 l!6581) lambda!103469))))

(assert (= (and d!818734 (not res!1173385)) b!2819718))

(assert (= (and b!2819718 res!1173386) b!2819719))

(declare-fun b_lambda!84343 () Bool)

(assert (=> (not b_lambda!84343) (not b!2819718)))

(declare-fun m!3250265 () Bool)

(assert (=> b!2819718 m!3250265))

(declare-fun m!3250267 () Bool)

(assert (=> b!2819719 m!3250267))

(assert (=> d!818704 d!818734))

(declare-fun d!818736 () Bool)

(declare-fun lt!1006597 () Bool)

(declare-fun e!1783602 () Bool)

(assert (=> d!818736 (= lt!1006597 e!1783602)))

(declare-fun res!1173389 () Bool)

(assert (=> d!818736 (=> (not res!1173389) (not e!1783602))))

(assert (=> d!818736 (= res!1173389 (= (list!12391 (_1!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 l!6581)))))) (list!12391 (singletonSeq!2127 (h!38471 l!6581)))))))

(declare-fun e!1783601 () Bool)

(assert (=> d!818736 (= lt!1006597 e!1783601)))

(declare-fun res!1173388 () Bool)

(assert (=> d!818736 (=> (not res!1173388) (not e!1783601))))

(declare-fun lt!1006598 () tuple2!33372)

(assert (=> d!818736 (= res!1173388 (= (size!25736 (_1!19779 lt!1006598)) 1))))

(assert (=> d!818736 (= lt!1006598 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 l!6581)))))))

(assert (=> d!818736 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818736 (= (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 l!6581)) lt!1006597)))

(declare-fun b!2819720 () Bool)

(declare-fun res!1173387 () Bool)

(assert (=> b!2819720 (=> (not res!1173387) (not e!1783601))))

(assert (=> b!2819720 (= res!1173387 (= (apply!7718 (_1!19779 lt!1006598) 0) (h!38471 l!6581)))))

(declare-fun b!2819721 () Bool)

(assert (=> b!2819721 (= e!1783601 (isEmpty!18281 (_2!19779 lt!1006598)))))

(declare-fun b!2819722 () Bool)

(assert (=> b!2819722 (= e!1783602 (isEmpty!18281 (_2!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 l!6581)))))))))

(assert (= (and d!818736 res!1173388) b!2819720))

(assert (= (and b!2819720 res!1173387) b!2819721))

(assert (= (and d!818736 res!1173389) b!2819722))

(declare-fun m!3250269 () Bool)

(assert (=> d!818736 m!3250269))

(declare-fun m!3250271 () Bool)

(assert (=> d!818736 m!3250271))

(declare-fun m!3250273 () Bool)

(assert (=> d!818736 m!3250273))

(declare-fun m!3250275 () Bool)

(assert (=> d!818736 m!3250275))

(assert (=> d!818736 m!3250273))

(assert (=> d!818736 m!3250273))

(declare-fun m!3250277 () Bool)

(assert (=> d!818736 m!3250277))

(assert (=> d!818736 m!3249933))

(assert (=> d!818736 m!3250277))

(declare-fun m!3250279 () Bool)

(assert (=> d!818736 m!3250279))

(declare-fun m!3250281 () Bool)

(assert (=> b!2819720 m!3250281))

(declare-fun m!3250283 () Bool)

(assert (=> b!2819721 m!3250283))

(assert (=> b!2819722 m!3250273))

(assert (=> b!2819722 m!3250273))

(assert (=> b!2819722 m!3250277))

(assert (=> b!2819722 m!3250277))

(assert (=> b!2819722 m!3250279))

(declare-fun m!3250285 () Bool)

(assert (=> b!2819722 m!3250285))

(assert (=> b!2819471 d!818736))

(declare-fun bs!517265 () Bool)

(declare-fun d!818738 () Bool)

(assert (= bs!517265 (and d!818738 d!818694)))

(declare-fun lambda!103495 () Int)

(assert (=> bs!517265 (= lambda!103495 lambda!103488)))

(declare-fun bs!517266 () Bool)

(assert (= bs!517266 (and d!818738 b!2819380)))

(assert (=> bs!517266 (= (= thiss!27755 Lexer!4534) (= lambda!103495 lambda!103469))))

(declare-fun bs!517267 () Bool)

(assert (= bs!517267 (and d!818738 d!818654)))

(assert (=> bs!517267 (= lambda!103495 lambda!103480)))

(declare-fun bs!517268 () Bool)

(assert (= bs!517268 (and d!818738 d!818706)))

(assert (=> bs!517268 (= lambda!103495 lambda!103489)))

(declare-fun bs!517269 () Bool)

(assert (= bs!517269 (and d!818738 d!818682)))

(assert (=> bs!517269 (= lambda!103495 lambda!103481)))

(declare-fun b!2819727 () Bool)

(declare-fun e!1783607 () Bool)

(assert (=> b!2819727 (= e!1783607 true)))

(declare-fun b!2819726 () Bool)

(declare-fun e!1783606 () Bool)

(assert (=> b!2819726 (= e!1783606 e!1783607)))

(declare-fun b!2819725 () Bool)

(declare-fun e!1783605 () Bool)

(assert (=> b!2819725 (= e!1783605 e!1783606)))

(assert (=> d!818738 e!1783605))

(assert (= b!2819726 b!2819727))

(assert (= b!2819725 b!2819726))

(assert (= (and d!818738 ((_ is Cons!33050) rules!4424)) b!2819725))

(assert (=> b!2819727 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103495))))

(assert (=> b!2819727 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103495))))

(assert (=> d!818738 true))

(declare-fun lt!1006599 () Bool)

(assert (=> d!818738 (= lt!1006599 (forall!6763 (t!230358 l!6581) lambda!103495))))

(declare-fun e!1783604 () Bool)

(assert (=> d!818738 (= lt!1006599 e!1783604)))

(declare-fun res!1173391 () Bool)

(assert (=> d!818738 (=> res!1173391 e!1783604)))

(assert (=> d!818738 (= res!1173391 (not ((_ is Cons!33051) (t!230358 l!6581))))))

(assert (=> d!818738 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818738 (= (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 l!6581)) lt!1006599)))

(declare-fun b!2819723 () Bool)

(declare-fun e!1783603 () Bool)

(assert (=> b!2819723 (= e!1783604 e!1783603)))

(declare-fun res!1173390 () Bool)

(assert (=> b!2819723 (=> (not res!1173390) (not e!1783603))))

(assert (=> b!2819723 (= res!1173390 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 l!6581))))))

(declare-fun b!2819724 () Bool)

(assert (=> b!2819724 (= e!1783603 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 (t!230358 l!6581))))))

(assert (= (and d!818738 (not res!1173391)) b!2819723))

(assert (= (and b!2819723 res!1173390) b!2819724))

(declare-fun m!3250287 () Bool)

(assert (=> d!818738 m!3250287))

(assert (=> d!818738 m!3249933))

(assert (=> b!2819723 m!3250119))

(declare-fun m!3250289 () Bool)

(assert (=> b!2819724 m!3250289))

(assert (=> b!2819472 d!818738))

(assert (=> b!2819622 d!818682))

(declare-fun lt!1006600 () Bool)

(declare-fun d!818740 () Bool)

(assert (=> d!818740 (= lt!1006600 (isEmpty!18282 (list!12392 (_2!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))))))))))

(assert (=> d!818740 (= lt!1006600 (isEmpty!18283 (c!456935 (_2!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))))))))))

(assert (=> d!818740 (= (isEmpty!18281 (_2!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)))))) lt!1006600)))

(declare-fun bs!517270 () Bool)

(assert (= bs!517270 d!818740))

(declare-fun m!3250291 () Bool)

(assert (=> bs!517270 m!3250291))

(assert (=> bs!517270 m!3250291))

(declare-fun m!3250293 () Bool)

(assert (=> bs!517270 m!3250293))

(declare-fun m!3250295 () Bool)

(assert (=> bs!517270 m!3250295))

(assert (=> b!2819436 d!818740))

(declare-fun e!1783617 () Bool)

(declare-fun lt!1006612 () tuple2!33372)

(declare-fun b!2819741 () Bool)

(assert (=> b!2819741 (= e!1783617 (= (_2!19779 lt!1006612) (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)))))))

(declare-fun d!818742 () Bool)

(declare-fun e!1783619 () Bool)

(assert (=> d!818742 e!1783619))

(declare-fun res!1173403 () Bool)

(assert (=> d!818742 (=> (not res!1173403) (not e!1783619))))

(assert (=> d!818742 (= res!1173403 e!1783617)))

(declare-fun c!456970 () Bool)

(assert (=> d!818742 (= c!456970 (> (size!25736 (_1!19779 lt!1006612)) 0))))

(declare-fun lexTailRecV2!883 (LexerInterface!4536 List!33174 BalanceConc!20148 BalanceConc!20148 BalanceConc!20148 BalanceConc!20150) tuple2!33372)

(assert (=> d!818742 (= lt!1006612 (lexTailRecV2!883 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))) (BalanceConc!20149 Empty!10255) (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))) (BalanceConc!20151 Empty!10256)))))

(assert (=> d!818742 (= (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)))) lt!1006612)))

(declare-fun b!2819742 () Bool)

(declare-fun e!1783618 () Bool)

(declare-fun isEmpty!18284 (BalanceConc!20150) Bool)

(assert (=> b!2819742 (= e!1783618 (not (isEmpty!18284 (_1!19779 lt!1006612))))))

(declare-fun b!2819743 () Bool)

(declare-fun res!1173402 () Bool)

(assert (=> b!2819743 (=> (not res!1173402) (not e!1783619))))

(declare-datatypes ((tuple2!33374 0))(
  ( (tuple2!33375 (_1!19780 List!33175) (_2!19780 List!33173)) )
))
(declare-fun lexList!1245 (LexerInterface!4536 List!33174 List!33173) tuple2!33374)

(assert (=> b!2819743 (= res!1173402 (= (list!12391 (_1!19779 lt!1006612)) (_1!19780 (lexList!1245 thiss!27755 rules!4424 (list!12392 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))))))))))

(declare-fun b!2819744 () Bool)

(assert (=> b!2819744 (= e!1783619 (= (list!12392 (_2!19779 lt!1006612)) (_2!19780 (lexList!1245 thiss!27755 rules!4424 (list!12392 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))))))))))

(declare-fun b!2819745 () Bool)

(assert (=> b!2819745 (= e!1783617 e!1783618)))

(declare-fun res!1173401 () Bool)

(assert (=> b!2819745 (= res!1173401 (< (size!25738 (_2!19779 lt!1006612)) (size!25738 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))))))))

(assert (=> b!2819745 (=> (not res!1173401) (not e!1783618))))

(assert (= (and d!818742 c!456970) b!2819745))

(assert (= (and d!818742 (not c!456970)) b!2819741))

(assert (= (and b!2819745 res!1173401) b!2819742))

(assert (= (and d!818742 res!1173403) b!2819743))

(assert (= (and b!2819743 res!1173402) b!2819744))

(declare-fun m!3250317 () Bool)

(assert (=> b!2819743 m!3250317))

(assert (=> b!2819743 m!3249991))

(declare-fun m!3250319 () Bool)

(assert (=> b!2819743 m!3250319))

(assert (=> b!2819743 m!3250319))

(declare-fun m!3250321 () Bool)

(assert (=> b!2819743 m!3250321))

(declare-fun m!3250323 () Bool)

(assert (=> b!2819745 m!3250323))

(assert (=> b!2819745 m!3249991))

(declare-fun m!3250325 () Bool)

(assert (=> b!2819745 m!3250325))

(declare-fun m!3250327 () Bool)

(assert (=> b!2819744 m!3250327))

(assert (=> b!2819744 m!3249991))

(assert (=> b!2819744 m!3250319))

(assert (=> b!2819744 m!3250319))

(assert (=> b!2819744 m!3250321))

(declare-fun m!3250329 () Bool)

(assert (=> d!818742 m!3250329))

(assert (=> d!818742 m!3249991))

(assert (=> d!818742 m!3249991))

(declare-fun m!3250331 () Bool)

(assert (=> d!818742 m!3250331))

(declare-fun m!3250333 () Bool)

(assert (=> b!2819742 m!3250333))

(assert (=> b!2819436 d!818742))

(declare-fun d!818752 () Bool)

(declare-fun lt!1006615 () BalanceConc!20148)

(declare-fun printList!1220 (LexerInterface!4536 List!33175) List!33173)

(assert (=> d!818752 (= (list!12392 lt!1006615) (printList!1220 thiss!27755 (list!12391 (singletonSeq!2127 (h!38471 lt!1006493)))))))

(declare-fun printTailRec!1163 (LexerInterface!4536 BalanceConc!20150 Int BalanceConc!20148) BalanceConc!20148)

(assert (=> d!818752 (= lt!1006615 (printTailRec!1163 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)) 0 (BalanceConc!20149 Empty!10255)))))

(assert (=> d!818752 (= (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))) lt!1006615)))

(declare-fun bs!517274 () Bool)

(assert (= bs!517274 d!818752))

(declare-fun m!3250335 () Bool)

(assert (=> bs!517274 m!3250335))

(assert (=> bs!517274 m!3249987))

(assert (=> bs!517274 m!3249989))

(assert (=> bs!517274 m!3249989))

(declare-fun m!3250337 () Bool)

(assert (=> bs!517274 m!3250337))

(assert (=> bs!517274 m!3249987))

(declare-fun m!3250339 () Bool)

(assert (=> bs!517274 m!3250339))

(assert (=> b!2819436 d!818752))

(declare-fun d!818754 () Bool)

(declare-fun e!1783622 () Bool)

(assert (=> d!818754 e!1783622))

(declare-fun res!1173406 () Bool)

(assert (=> d!818754 (=> (not res!1173406) (not e!1783622))))

(declare-fun lt!1006618 () BalanceConc!20150)

(assert (=> d!818754 (= res!1173406 (= (list!12391 lt!1006618) (Cons!33051 (h!38471 lt!1006493) Nil!33051)))))

(declare-fun singleton!940 (Token!9292) BalanceConc!20150)

(assert (=> d!818754 (= lt!1006618 (singleton!940 (h!38471 lt!1006493)))))

(assert (=> d!818754 (= (singletonSeq!2127 (h!38471 lt!1006493)) lt!1006618)))

(declare-fun b!2819748 () Bool)

(declare-fun isBalanced!3111 (Conc!10256) Bool)

(assert (=> b!2819748 (= e!1783622 (isBalanced!3111 (c!456937 lt!1006618)))))

(assert (= (and d!818754 res!1173406) b!2819748))

(declare-fun m!3250341 () Bool)

(assert (=> d!818754 m!3250341))

(declare-fun m!3250343 () Bool)

(assert (=> d!818754 m!3250343))

(declare-fun m!3250345 () Bool)

(assert (=> b!2819748 m!3250345))

(assert (=> b!2819436 d!818754))

(declare-fun d!818756 () Bool)

(declare-fun charsToBigInt!0 (List!33172 Int) Int)

(assert (=> d!818756 (= (inv!15 (value!159252 (h!38471 l!6581))) (= (charsToBigInt!0 (text!36674 (value!159252 (h!38471 l!6581))) 0) (value!159247 (value!159252 (h!38471 l!6581)))))))

(declare-fun bs!517275 () Bool)

(assert (= bs!517275 d!818756))

(declare-fun m!3250347 () Bool)

(assert (=> bs!517275 m!3250347))

(assert (=> b!2819610 d!818756))

(declare-fun d!818758 () Bool)

(declare-fun charsToBigInt!1 (List!33172) Int)

(assert (=> d!818758 (= (inv!17 (value!159252 (h!38471 l!6581))) (= (charsToBigInt!1 (text!36673 (value!159252 (h!38471 l!6581)))) (value!159244 (value!159252 (h!38471 l!6581)))))))

(declare-fun bs!517276 () Bool)

(assert (= bs!517276 d!818758))

(declare-fun m!3250349 () Bool)

(assert (=> bs!517276 m!3250349))

(assert (=> b!2819611 d!818758))

(declare-fun d!818760 () Bool)

(declare-fun res!1173413 () Bool)

(declare-fun e!1783630 () Bool)

(assert (=> d!818760 (=> res!1173413 e!1783630)))

(assert (=> d!818760 (= res!1173413 ((_ is Nil!33051) (t!230358 lt!1006493)))))

(assert (=> d!818760 (= (forall!6763 (t!230358 lt!1006493) lambda!103481) e!1783630)))

(declare-fun b!2819759 () Bool)

(declare-fun e!1783632 () Bool)

(assert (=> b!2819759 (= e!1783630 e!1783632)))

(declare-fun res!1173415 () Bool)

(assert (=> b!2819759 (=> (not res!1173415) (not e!1783632))))

(assert (=> b!2819759 (= res!1173415 (dynLambda!13806 lambda!103481 (h!38471 (t!230358 lt!1006493))))))

(declare-fun b!2819760 () Bool)

(assert (=> b!2819760 (= e!1783632 (forall!6763 (t!230358 (t!230358 lt!1006493)) lambda!103481))))

(assert (= (and d!818760 (not res!1173413)) b!2819759))

(assert (= (and b!2819759 res!1173415) b!2819760))

(declare-fun b_lambda!84345 () Bool)

(assert (=> (not b_lambda!84345) (not b!2819759)))

(declare-fun m!3250351 () Bool)

(assert (=> b!2819759 m!3250351))

(declare-fun m!3250353 () Bool)

(assert (=> b!2819760 m!3250353))

(assert (=> d!818682 d!818760))

(assert (=> d!818682 d!818642))

(declare-fun d!818762 () Bool)

(declare-fun lt!1006624 () BalanceConc!20148)

(assert (=> d!818762 (= (list!12392 lt!1006624) (originalCharacters!5677 (h!38471 (t!230358 l!6581))))))

(assert (=> d!818762 (= lt!1006624 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (value!159252 (h!38471 (t!230358 l!6581)))))))

(assert (=> d!818762 (= (charsOf!3064 (h!38471 (t!230358 l!6581))) lt!1006624)))

(declare-fun b_lambda!84347 () Bool)

(assert (=> (not b_lambda!84347) (not d!818762)))

(declare-fun t!230394 () Bool)

(declare-fun tb!153765 () Bool)

(assert (=> (and b!2819377 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) t!230394) tb!153765))

(declare-fun b!2819770 () Bool)

(declare-fun e!1783636 () Bool)

(declare-fun tp!900449 () Bool)

(assert (=> b!2819770 (= e!1783636 (and (inv!44971 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (value!159252 (h!38471 (t!230358 l!6581)))))) tp!900449))))

(declare-fun result!191434 () Bool)

(assert (=> tb!153765 (= result!191434 (and (inv!44972 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (value!159252 (h!38471 (t!230358 l!6581))))) e!1783636))))

(assert (= tb!153765 b!2819770))

(declare-fun m!3250375 () Bool)

(assert (=> b!2819770 m!3250375))

(declare-fun m!3250377 () Bool)

(assert (=> tb!153765 m!3250377))

(assert (=> d!818762 t!230394))

(declare-fun b_and!205943 () Bool)

(assert (= b_and!205919 (and (=> t!230394 result!191434) b_and!205943)))

(declare-fun tb!153767 () Bool)

(declare-fun t!230396 () Bool)

(assert (=> (and b!2819376 (= (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) t!230396) tb!153767))

(declare-fun result!191436 () Bool)

(assert (= result!191436 result!191434))

(assert (=> d!818762 t!230396))

(declare-fun b_and!205945 () Bool)

(assert (= b_and!205921 (and (=> t!230396 result!191436) b_and!205945)))

(declare-fun t!230398 () Bool)

(declare-fun tb!153769 () Bool)

(assert (=> (and b!2819660 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) t!230398) tb!153769))

(declare-fun result!191438 () Bool)

(assert (= result!191438 result!191434))

(assert (=> d!818762 t!230398))

(declare-fun b_and!205947 () Bool)

(assert (= b_and!205937 (and (=> t!230398 result!191438) b_and!205947)))

(declare-fun t!230400 () Bool)

(declare-fun tb!153771 () Bool)

(assert (=> (and b!2819685 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) t!230400) tb!153771))

(declare-fun result!191440 () Bool)

(assert (= result!191440 result!191434))

(assert (=> d!818762 t!230400))

(declare-fun b_and!205949 () Bool)

(assert (= b_and!205941 (and (=> t!230400 result!191440) b_and!205949)))

(declare-fun m!3250379 () Bool)

(assert (=> d!818762 m!3250379))

(declare-fun m!3250381 () Bool)

(assert (=> d!818762 m!3250381))

(assert (=> b!2819538 d!818762))

(declare-fun d!818768 () Bool)

(assert (=> d!818768 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 l!6581))))

(declare-fun lt!1006662 () Unit!46993)

(declare-fun choose!16674 (LexerInterface!4536 List!33174 List!33175 Token!9292) Unit!46993)

(assert (=> d!818768 (= lt!1006662 (choose!16674 thiss!27755 rules!4424 l!6581 (h!38471 l!6581)))))

(assert (=> d!818768 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818768 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!703 thiss!27755 rules!4424 l!6581 (h!38471 l!6581)) lt!1006662)))

(declare-fun bs!517298 () Bool)

(assert (= bs!517298 d!818768))

(assert (=> bs!517298 m!3250023))

(declare-fun m!3250529 () Bool)

(assert (=> bs!517298 m!3250529))

(assert (=> bs!517298 m!3249933))

(assert (=> b!2819538 d!818768))

(declare-fun d!818840 () Bool)

(assert (=> d!818840 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 l!6581)))))

(declare-fun lt!1006663 () Unit!46993)

(assert (=> d!818840 (= lt!1006663 (choose!16674 thiss!27755 rules!4424 l!6581 (h!38471 (t!230358 l!6581))))))

(assert (=> d!818840 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818840 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!703 thiss!27755 rules!4424 l!6581 (h!38471 (t!230358 l!6581))) lt!1006663)))

(declare-fun bs!517299 () Bool)

(assert (= bs!517299 d!818840))

(assert (=> bs!517299 m!3250119))

(declare-fun m!3250531 () Bool)

(assert (=> bs!517299 m!3250531))

(assert (=> bs!517299 m!3249933))

(assert (=> b!2819538 d!818840))

(declare-fun d!818842 () Bool)

(declare-fun lt!1006666 () Int)

(assert (=> d!818842 (= lt!1006666 (size!25737 (list!12392 (charsOf!3064 (h!38471 (t!230358 l!6581))))))))

(declare-fun size!25741 (Conc!10255) Int)

(assert (=> d!818842 (= lt!1006666 (size!25741 (c!456935 (charsOf!3064 (h!38471 (t!230358 l!6581))))))))

(assert (=> d!818842 (= (size!25738 (charsOf!3064 (h!38471 (t!230358 l!6581)))) lt!1006666)))

(declare-fun bs!517300 () Bool)

(assert (= bs!517300 d!818842))

(assert (=> bs!517300 m!3250115))

(declare-fun m!3250533 () Bool)

(assert (=> bs!517300 m!3250533))

(assert (=> bs!517300 m!3250533))

(declare-fun m!3250535 () Bool)

(assert (=> bs!517300 m!3250535))

(declare-fun m!3250537 () Bool)

(assert (=> bs!517300 m!3250537))

(assert (=> b!2819538 d!818842))

(declare-fun d!818844 () Bool)

(declare-fun lt!1006667 () Bool)

(declare-fun e!1783692 () Bool)

(assert (=> d!818844 (= lt!1006667 e!1783692)))

(declare-fun res!1173459 () Bool)

(assert (=> d!818844 (=> (not res!1173459) (not e!1783692))))

(assert (=> d!818844 (= res!1173459 (= (list!12391 (_1!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 (t!230358 l!6581))))))) (list!12391 (singletonSeq!2127 (h!38471 (t!230358 l!6581))))))))

(declare-fun e!1783691 () Bool)

(assert (=> d!818844 (= lt!1006667 e!1783691)))

(declare-fun res!1173458 () Bool)

(assert (=> d!818844 (=> (not res!1173458) (not e!1783691))))

(declare-fun lt!1006668 () tuple2!33372)

(assert (=> d!818844 (= res!1173458 (= (size!25736 (_1!19779 lt!1006668)) 1))))

(assert (=> d!818844 (= lt!1006668 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 (t!230358 l!6581))))))))

(assert (=> d!818844 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818844 (= (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 l!6581))) lt!1006667)))

(declare-fun b!2819848 () Bool)

(declare-fun res!1173457 () Bool)

(assert (=> b!2819848 (=> (not res!1173457) (not e!1783691))))

(assert (=> b!2819848 (= res!1173457 (= (apply!7718 (_1!19779 lt!1006668) 0) (h!38471 (t!230358 l!6581))))))

(declare-fun b!2819849 () Bool)

(assert (=> b!2819849 (= e!1783691 (isEmpty!18281 (_2!19779 lt!1006668)))))

(declare-fun b!2819850 () Bool)

(assert (=> b!2819850 (= e!1783692 (isEmpty!18281 (_2!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 (t!230358 l!6581))))))))))

(assert (= (and d!818844 res!1173458) b!2819848))

(assert (= (and b!2819848 res!1173457) b!2819849))

(assert (= (and d!818844 res!1173459) b!2819850))

(declare-fun m!3250539 () Bool)

(assert (=> d!818844 m!3250539))

(declare-fun m!3250541 () Bool)

(assert (=> d!818844 m!3250541))

(declare-fun m!3250543 () Bool)

(assert (=> d!818844 m!3250543))

(declare-fun m!3250545 () Bool)

(assert (=> d!818844 m!3250545))

(assert (=> d!818844 m!3250543))

(assert (=> d!818844 m!3250543))

(declare-fun m!3250547 () Bool)

(assert (=> d!818844 m!3250547))

(assert (=> d!818844 m!3249933))

(assert (=> d!818844 m!3250547))

(declare-fun m!3250549 () Bool)

(assert (=> d!818844 m!3250549))

(declare-fun m!3250551 () Bool)

(assert (=> b!2819848 m!3250551))

(declare-fun m!3250553 () Bool)

(assert (=> b!2819849 m!3250553))

(assert (=> b!2819850 m!3250543))

(assert (=> b!2819850 m!3250543))

(assert (=> b!2819850 m!3250547))

(assert (=> b!2819850 m!3250547))

(assert (=> b!2819850 m!3250549))

(declare-fun m!3250555 () Bool)

(assert (=> b!2819850 m!3250555))

(assert (=> b!2819538 d!818844))

(assert (=> b!2819538 d!818736))

(declare-fun d!818846 () Bool)

(declare-fun prefixMatchZipperSequence!733 (Regex!8335 BalanceConc!20148) Bool)

(declare-fun rulesRegex!989 (LexerInterface!4536 List!33174) Regex!8335)

(declare-fun ++!8091 (BalanceConc!20148 BalanceConc!20148) BalanceConc!20148)

(declare-fun singletonSeq!2128 (C!16852) BalanceConc!20148)

(declare-fun apply!7719 (BalanceConc!20148 Int) C!16852)

(assert (=> d!818846 (= (separableTokensPredicate!889 thiss!27755 (h!38471 l!6581) (h!38471 (t!230358 l!6581)) rules!4424) (not (prefixMatchZipperSequence!733 (rulesRegex!989 thiss!27755 rules!4424) (++!8091 (charsOf!3064 (h!38471 l!6581)) (singletonSeq!2128 (apply!7719 (charsOf!3064 (h!38471 (t!230358 l!6581))) 0))))))))

(declare-fun bs!517301 () Bool)

(assert (= bs!517301 d!818846))

(declare-fun m!3250557 () Bool)

(assert (=> bs!517301 m!3250557))

(declare-fun m!3250559 () Bool)

(assert (=> bs!517301 m!3250559))

(assert (=> bs!517301 m!3250115))

(assert (=> bs!517301 m!3250557))

(declare-fun m!3250561 () Bool)

(assert (=> bs!517301 m!3250561))

(assert (=> bs!517301 m!3250559))

(declare-fun m!3250563 () Bool)

(assert (=> bs!517301 m!3250563))

(assert (=> bs!517301 m!3250115))

(declare-fun m!3250565 () Bool)

(assert (=> bs!517301 m!3250565))

(assert (=> bs!517301 m!3250561))

(assert (=> bs!517301 m!3250565))

(assert (=> bs!517301 m!3250563))

(declare-fun m!3250567 () Bool)

(assert (=> bs!517301 m!3250567))

(assert (=> b!2819538 d!818846))

(declare-fun d!818848 () Bool)

(declare-fun lt!1006671 () Token!9292)

(declare-fun apply!7720 (List!33175 Int) Token!9292)

(assert (=> d!818848 (= lt!1006671 (apply!7720 (list!12391 (_1!19779 lt!1006509)) 0))))

(declare-fun apply!7721 (Conc!10256 Int) Token!9292)

(assert (=> d!818848 (= lt!1006671 (apply!7721 (c!456937 (_1!19779 lt!1006509)) 0))))

(declare-fun e!1783695 () Bool)

(assert (=> d!818848 e!1783695))

(declare-fun res!1173462 () Bool)

(assert (=> d!818848 (=> (not res!1173462) (not e!1783695))))

(assert (=> d!818848 (= res!1173462 (<= 0 0))))

(assert (=> d!818848 (= (apply!7718 (_1!19779 lt!1006509) 0) lt!1006671)))

(declare-fun b!2819853 () Bool)

(assert (=> b!2819853 (= e!1783695 (< 0 (size!25736 (_1!19779 lt!1006509))))))

(assert (= (and d!818848 res!1173462) b!2819853))

(declare-fun m!3250569 () Bool)

(assert (=> d!818848 m!3250569))

(assert (=> d!818848 m!3250569))

(declare-fun m!3250571 () Bool)

(assert (=> d!818848 m!3250571))

(declare-fun m!3250573 () Bool)

(assert (=> d!818848 m!3250573))

(assert (=> b!2819853 m!3249983))

(assert (=> b!2819434 d!818848))

(declare-fun d!818850 () Bool)

(declare-fun res!1173463 () Bool)

(declare-fun e!1783696 () Bool)

(assert (=> d!818850 (=> res!1173463 e!1783696)))

(assert (=> d!818850 (= res!1173463 ((_ is Nil!33051) l!6581))))

(assert (=> d!818850 (= (forall!6763 l!6581 lambda!103480) e!1783696)))

(declare-fun b!2819854 () Bool)

(declare-fun e!1783697 () Bool)

(assert (=> b!2819854 (= e!1783696 e!1783697)))

(declare-fun res!1173464 () Bool)

(assert (=> b!2819854 (=> (not res!1173464) (not e!1783697))))

(assert (=> b!2819854 (= res!1173464 (dynLambda!13806 lambda!103480 (h!38471 l!6581)))))

(declare-fun b!2819855 () Bool)

(assert (=> b!2819855 (= e!1783697 (forall!6763 (t!230358 l!6581) lambda!103480))))

(assert (= (and d!818850 (not res!1173463)) b!2819854))

(assert (= (and b!2819854 res!1173464) b!2819855))

(declare-fun b_lambda!84363 () Bool)

(assert (=> (not b_lambda!84363) (not b!2819854)))

(declare-fun m!3250575 () Bool)

(assert (=> b!2819854 m!3250575))

(declare-fun m!3250577 () Bool)

(assert (=> b!2819855 m!3250577))

(assert (=> d!818654 d!818850))

(assert (=> d!818654 d!818642))

(declare-fun d!818852 () Bool)

(declare-fun c!456992 () Bool)

(assert (=> d!818852 (= c!456992 ((_ is Nil!33051) lt!1006577))))

(declare-fun e!1783700 () (InoxSet Token!9292))

(assert (=> d!818852 (= (content!4608 lt!1006577) e!1783700)))

(declare-fun b!2819860 () Bool)

(assert (=> b!2819860 (= e!1783700 ((as const (Array Token!9292 Bool)) false))))

(declare-fun b!2819861 () Bool)

(assert (=> b!2819861 (= e!1783700 ((_ map or) (store ((as const (Array Token!9292 Bool)) false) (h!38471 lt!1006577) true) (content!4608 (t!230358 lt!1006577))))))

(assert (= (and d!818852 c!456992) b!2819860))

(assert (= (and d!818852 (not c!456992)) b!2819861))

(declare-fun m!3250579 () Bool)

(assert (=> b!2819861 m!3250579))

(declare-fun m!3250581 () Bool)

(assert (=> b!2819861 m!3250581))

(assert (=> d!818708 d!818852))

(declare-fun d!818854 () Bool)

(declare-fun c!456993 () Bool)

(assert (=> d!818854 (= c!456993 ((_ is Nil!33051) l!6581))))

(declare-fun e!1783701 () (InoxSet Token!9292))

(assert (=> d!818854 (= (content!4608 l!6581) e!1783701)))

(declare-fun b!2819862 () Bool)

(assert (=> b!2819862 (= e!1783701 ((as const (Array Token!9292 Bool)) false))))

(declare-fun b!2819863 () Bool)

(assert (=> b!2819863 (= e!1783701 ((_ map or) (store ((as const (Array Token!9292 Bool)) false) (h!38471 l!6581) true) (content!4608 (t!230358 l!6581))))))

(assert (= (and d!818854 c!456993) b!2819862))

(assert (= (and d!818854 (not c!456993)) b!2819863))

(declare-fun m!3250583 () Bool)

(assert (=> b!2819863 m!3250583))

(declare-fun m!3250585 () Bool)

(assert (=> b!2819863 m!3250585))

(assert (=> d!818708 d!818854))

(declare-fun d!818856 () Bool)

(declare-fun res!1173469 () Bool)

(declare-fun e!1783706 () Bool)

(assert (=> d!818856 (=> res!1173469 e!1783706)))

(assert (=> d!818856 (= res!1173469 ((_ is Nil!33050) rules!4424))))

(assert (=> d!818856 (= (noDuplicateTag!1814 thiss!27755 rules!4424 Nil!33053) e!1783706)))

(declare-fun b!2819868 () Bool)

(declare-fun e!1783707 () Bool)

(assert (=> b!2819868 (= e!1783706 e!1783707)))

(declare-fun res!1173470 () Bool)

(assert (=> b!2819868 (=> (not res!1173470) (not e!1783707))))

(declare-fun contains!6057 (List!33177 String!36331) Bool)

(assert (=> b!2819868 (= res!1173470 (not (contains!6057 Nil!33053 (tag!5449 (h!38470 rules!4424)))))))

(declare-fun b!2819869 () Bool)

(assert (=> b!2819869 (= e!1783707 (noDuplicateTag!1814 thiss!27755 (t!230357 rules!4424) (Cons!33053 (tag!5449 (h!38470 rules!4424)) Nil!33053)))))

(assert (= (and d!818856 (not res!1173469)) b!2819868))

(assert (= (and b!2819868 res!1173470) b!2819869))

(declare-fun m!3250587 () Bool)

(assert (=> b!2819868 m!3250587))

(declare-fun m!3250589 () Bool)

(assert (=> b!2819869 m!3250589))

(assert (=> b!2819409 d!818856))

(declare-fun d!818858 () Bool)

(assert (=> d!818858 (= (isEmpty!18282 (originalCharacters!5677 (h!38471 l!6581))) ((_ is Nil!33049) (originalCharacters!5677 (h!38471 l!6581))))))

(assert (=> d!818672 d!818858))

(declare-fun d!818860 () Bool)

(declare-fun res!1173471 () Bool)

(declare-fun e!1783708 () Bool)

(assert (=> d!818860 (=> res!1173471 e!1783708)))

(assert (=> d!818860 (= res!1173471 ((_ is Nil!33051) (t!230358 lt!1006493)))))

(assert (=> d!818860 (= (forall!6763 (t!230358 lt!1006493) lambda!103469) e!1783708)))

(declare-fun b!2819870 () Bool)

(declare-fun e!1783709 () Bool)

(assert (=> b!2819870 (= e!1783708 e!1783709)))

(declare-fun res!1173472 () Bool)

(assert (=> b!2819870 (=> (not res!1173472) (not e!1783709))))

(assert (=> b!2819870 (= res!1173472 (dynLambda!13806 lambda!103469 (h!38471 (t!230358 lt!1006493))))))

(declare-fun b!2819871 () Bool)

(assert (=> b!2819871 (= e!1783709 (forall!6763 (t!230358 (t!230358 lt!1006493)) lambda!103469))))

(assert (= (and d!818860 (not res!1173471)) b!2819870))

(assert (= (and b!2819870 res!1173472) b!2819871))

(declare-fun b_lambda!84365 () Bool)

(assert (=> (not b_lambda!84365) (not b!2819870)))

(declare-fun m!3250591 () Bool)

(assert (=> b!2819870 m!3250591))

(declare-fun m!3250593 () Bool)

(assert (=> b!2819871 m!3250593))

(assert (=> b!2819620 d!818860))

(declare-fun d!818862 () Bool)

(declare-fun res!1173473 () Bool)

(declare-fun e!1783710 () Bool)

(assert (=> d!818862 (=> res!1173473 e!1783710)))

(assert (=> d!818862 (= res!1173473 ((_ is Nil!33051) lt!1006493))))

(assert (=> d!818862 (= (forall!6763 lt!1006493 lambda!103489) e!1783710)))

(declare-fun b!2819872 () Bool)

(declare-fun e!1783711 () Bool)

(assert (=> b!2819872 (= e!1783710 e!1783711)))

(declare-fun res!1173474 () Bool)

(assert (=> b!2819872 (=> (not res!1173474) (not e!1783711))))

(assert (=> b!2819872 (= res!1173474 (dynLambda!13806 lambda!103489 (h!38471 lt!1006493)))))

(declare-fun b!2819873 () Bool)

(assert (=> b!2819873 (= e!1783711 (forall!6763 (t!230358 lt!1006493) lambda!103489))))

(assert (= (and d!818862 (not res!1173473)) b!2819872))

(assert (= (and b!2819872 res!1173474) b!2819873))

(declare-fun b_lambda!84367 () Bool)

(assert (=> (not b_lambda!84367) (not b!2819872)))

(declare-fun m!3250595 () Bool)

(assert (=> b!2819872 m!3250595))

(declare-fun m!3250597 () Bool)

(assert (=> b!2819873 m!3250597))

(assert (=> d!818706 d!818862))

(assert (=> d!818706 d!818642))

(declare-fun d!818864 () Bool)

(assert (=> d!818864 true))

(declare-fun lambda!103509 () Int)

(declare-fun order!17517 () Int)

(declare-fun dynLambda!13808 (Int Int) Int)

(assert (=> d!818864 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581))))) (dynLambda!13808 order!17517 lambda!103509))))

(declare-fun Forall2!829 (Int) Bool)

(assert (=> d!818864 (= (equivClasses!1947 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581))))) (Forall2!829 lambda!103509))))

(declare-fun bs!517302 () Bool)

(assert (= bs!517302 d!818864))

(declare-fun m!3250599 () Bool)

(assert (=> bs!517302 m!3250599))

(assert (=> b!2819498 d!818864))

(declare-fun d!818866 () Bool)

(declare-fun lt!1006674 () Int)

(assert (=> d!818866 (>= lt!1006674 0)))

(declare-fun e!1783716 () Int)

(assert (=> d!818866 (= lt!1006674 e!1783716)))

(declare-fun c!456996 () Bool)

(assert (=> d!818866 (= c!456996 ((_ is Nil!33051) l!6581))))

(assert (=> d!818866 (= (size!25739 l!6581) lt!1006674)))

(declare-fun b!2819882 () Bool)

(assert (=> b!2819882 (= e!1783716 0)))

(declare-fun b!2819883 () Bool)

(assert (=> b!2819883 (= e!1783716 (+ 1 (size!25739 (t!230358 l!6581))))))

(assert (= (and d!818866 c!456996) b!2819882))

(assert (= (and d!818866 (not c!456996)) b!2819883))

(declare-fun m!3250601 () Bool)

(assert (=> b!2819883 m!3250601))

(assert (=> b!2819646 d!818866))

(declare-fun d!818868 () Bool)

(declare-fun isBalanced!3112 (Conc!10255) Bool)

(assert (=> d!818868 (= (inv!44972 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))) (isBalanced!3112 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))))))

(declare-fun bs!517303 () Bool)

(assert (= bs!517303 d!818868))

(declare-fun m!3250603 () Bool)

(assert (=> bs!517303 m!3250603))

(assert (=> tb!153749 d!818868))

(declare-fun d!818870 () Bool)

(assert (=> d!818870 true))

(declare-fun lambda!103512 () Int)

(declare-fun order!17519 () Int)

(declare-fun dynLambda!13809 (Int Int) Int)

(assert (=> d!818870 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) (dynLambda!13809 order!17519 lambda!103512))))

(assert (=> d!818870 true))

(assert (=> d!818870 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581))))) (dynLambda!13809 order!17519 lambda!103512))))

(declare-fun Forall!1231 (Int) Bool)

(assert (=> d!818870 (= (semiInverseModEq!2048 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581))))) (Forall!1231 lambda!103512))))

(declare-fun bs!517304 () Bool)

(assert (= bs!517304 d!818870))

(declare-fun m!3250605 () Bool)

(assert (=> bs!517304 m!3250605))

(assert (=> d!818680 d!818870))

(declare-fun b!2819888 () Bool)

(declare-fun e!1783719 () Bool)

(assert (=> b!2819888 (= e!1783719 (inv!15 (value!159252 (h!38471 (t!230358 l!6581)))))))

(declare-fun b!2819889 () Bool)

(declare-fun e!1783717 () Bool)

(assert (=> b!2819889 (= e!1783717 (inv!17 (value!159252 (h!38471 (t!230358 l!6581)))))))

(declare-fun b!2819890 () Bool)

(declare-fun e!1783718 () Bool)

(assert (=> b!2819890 (= e!1783718 e!1783717)))

(declare-fun c!456997 () Bool)

(assert (=> b!2819890 (= c!456997 ((_ is IntegerValue!15526) (value!159252 (h!38471 (t!230358 l!6581)))))))

(declare-fun b!2819891 () Bool)

(declare-fun res!1173477 () Bool)

(assert (=> b!2819891 (=> res!1173477 e!1783719)))

(assert (=> b!2819891 (= res!1173477 (not ((_ is IntegerValue!15527) (value!159252 (h!38471 (t!230358 l!6581))))))))

(assert (=> b!2819891 (= e!1783717 e!1783719)))

(declare-fun d!818872 () Bool)

(declare-fun c!456998 () Bool)

(assert (=> d!818872 (= c!456998 ((_ is IntegerValue!15525) (value!159252 (h!38471 (t!230358 l!6581)))))))

(assert (=> d!818872 (= (inv!21 (value!159252 (h!38471 (t!230358 l!6581)))) e!1783718)))

(declare-fun b!2819892 () Bool)

(assert (=> b!2819892 (= e!1783718 (inv!16 (value!159252 (h!38471 (t!230358 l!6581)))))))

(assert (= (and d!818872 c!456998) b!2819892))

(assert (= (and d!818872 (not c!456998)) b!2819890))

(assert (= (and b!2819890 c!456997) b!2819889))

(assert (= (and b!2819890 (not c!456997)) b!2819891))

(assert (= (and b!2819891 (not res!1173477)) b!2819888))

(declare-fun m!3250607 () Bool)

(assert (=> b!2819888 m!3250607))

(declare-fun m!3250609 () Bool)

(assert (=> b!2819889 m!3250609))

(declare-fun m!3250611 () Bool)

(assert (=> b!2819892 m!3250611))

(assert (=> b!2819658 d!818872))

(declare-fun b!2819893 () Bool)

(declare-fun e!1783720 () Int)

(assert (=> b!2819893 (= e!1783720 0)))

(declare-fun b!2819894 () Bool)

(declare-fun e!1783723 () Int)

(assert (=> b!2819894 (= e!1783723 (- i!1730 1))))

(declare-fun b!2819895 () Bool)

(declare-fun e!1783722 () List!33175)

(assert (=> b!2819895 (= e!1783722 Nil!33051)))

(declare-fun b!2819896 () Bool)

(assert (=> b!2819896 (= e!1783722 (Cons!33051 (h!38471 (t!230358 l!6581)) (take!539 (t!230358 (t!230358 l!6581)) (- (- i!1730 1) 1))))))

(declare-fun b!2819897 () Bool)

(declare-fun e!1783721 () Bool)

(declare-fun lt!1006675 () List!33175)

(assert (=> b!2819897 (= e!1783721 (= (size!25739 lt!1006675) e!1783720))))

(declare-fun c!456999 () Bool)

(assert (=> b!2819897 (= c!456999 (<= (- i!1730 1) 0))))

(declare-fun b!2819899 () Bool)

(assert (=> b!2819899 (= e!1783723 (size!25739 (t!230358 l!6581)))))

(declare-fun d!818874 () Bool)

(assert (=> d!818874 e!1783721))

(declare-fun res!1173478 () Bool)

(assert (=> d!818874 (=> (not res!1173478) (not e!1783721))))

(assert (=> d!818874 (= res!1173478 (= ((_ map implies) (content!4608 lt!1006675) (content!4608 (t!230358 l!6581))) ((as const (InoxSet Token!9292)) true)))))

(assert (=> d!818874 (= lt!1006675 e!1783722)))

(declare-fun c!457000 () Bool)

(assert (=> d!818874 (= c!457000 (or ((_ is Nil!33051) (t!230358 l!6581)) (<= (- i!1730 1) 0)))))

(assert (=> d!818874 (= (take!539 (t!230358 l!6581) (- i!1730 1)) lt!1006675)))

(declare-fun b!2819898 () Bool)

(assert (=> b!2819898 (= e!1783720 e!1783723)))

(declare-fun c!457001 () Bool)

(assert (=> b!2819898 (= c!457001 (>= (- i!1730 1) (size!25739 (t!230358 l!6581))))))

(assert (= (and d!818874 c!457000) b!2819895))

(assert (= (and d!818874 (not c!457000)) b!2819896))

(assert (= (and d!818874 res!1173478) b!2819897))

(assert (= (and b!2819897 c!456999) b!2819893))

(assert (= (and b!2819897 (not c!456999)) b!2819898))

(assert (= (and b!2819898 c!457001) b!2819899))

(assert (= (and b!2819898 (not c!457001)) b!2819894))

(assert (=> b!2819898 m!3250601))

(assert (=> b!2819899 m!3250601))

(declare-fun m!3250613 () Bool)

(assert (=> d!818874 m!3250613))

(assert (=> d!818874 m!3250585))

(declare-fun m!3250615 () Bool)

(assert (=> b!2819896 m!3250615))

(declare-fun m!3250617 () Bool)

(assert (=> b!2819897 m!3250617))

(assert (=> b!2819643 d!818874))

(declare-fun d!818876 () Bool)

(declare-fun c!457004 () Bool)

(assert (=> d!818876 (= c!457004 ((_ is Node!10255) (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))))))

(declare-fun e!1783730 () Bool)

(assert (=> d!818876 (= (inv!44971 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))) e!1783730)))

(declare-fun b!2819909 () Bool)

(declare-fun inv!44973 (Conc!10255) Bool)

(assert (=> b!2819909 (= e!1783730 (inv!44973 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))))))

(declare-fun b!2819910 () Bool)

(declare-fun e!1783731 () Bool)

(assert (=> b!2819910 (= e!1783730 e!1783731)))

(declare-fun res!1173484 () Bool)

(assert (=> b!2819910 (= res!1173484 (not ((_ is Leaf!15619) (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))))))))

(assert (=> b!2819910 (=> res!1173484 e!1783731)))

(declare-fun b!2819911 () Bool)

(declare-fun inv!44974 (Conc!10255) Bool)

(assert (=> b!2819911 (= e!1783731 (inv!44974 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))))))

(assert (= (and d!818876 c!457004) b!2819909))

(assert (= (and d!818876 (not c!457004)) b!2819910))

(assert (= (and b!2819910 (not res!1173484)) b!2819911))

(declare-fun m!3250629 () Bool)

(assert (=> b!2819909 m!3250629))

(declare-fun m!3250635 () Bool)

(assert (=> b!2819911 m!3250635))

(assert (=> b!2819497 d!818876))

(declare-fun bs!517308 () Bool)

(declare-fun d!818884 () Bool)

(assert (= bs!517308 (and d!818884 d!818694)))

(declare-fun lambda!103513 () Int)

(assert (=> bs!517308 (= lambda!103513 lambda!103488)))

(declare-fun bs!517309 () Bool)

(assert (= bs!517309 (and d!818884 b!2819380)))

(assert (=> bs!517309 (= (= thiss!27755 Lexer!4534) (= lambda!103513 lambda!103469))))

(declare-fun bs!517310 () Bool)

(assert (= bs!517310 (and d!818884 d!818654)))

(assert (=> bs!517310 (= lambda!103513 lambda!103480)))

(declare-fun bs!517311 () Bool)

(assert (= bs!517311 (and d!818884 d!818738)))

(assert (=> bs!517311 (= lambda!103513 lambda!103495)))

(declare-fun bs!517312 () Bool)

(assert (= bs!517312 (and d!818884 d!818706)))

(assert (=> bs!517312 (= lambda!103513 lambda!103489)))

(declare-fun bs!517313 () Bool)

(assert (= bs!517313 (and d!818884 d!818682)))

(assert (=> bs!517313 (= lambda!103513 lambda!103481)))

(declare-fun b!2819916 () Bool)

(declare-fun e!1783736 () Bool)

(assert (=> b!2819916 (= e!1783736 true)))

(declare-fun b!2819915 () Bool)

(declare-fun e!1783735 () Bool)

(assert (=> b!2819915 (= e!1783735 e!1783736)))

(declare-fun b!2819914 () Bool)

(declare-fun e!1783734 () Bool)

(assert (=> b!2819914 (= e!1783734 e!1783735)))

(assert (=> d!818884 e!1783734))

(assert (= b!2819915 b!2819916))

(assert (= b!2819914 b!2819915))

(assert (= (and d!818884 ((_ is Cons!33050) rules!4424)) b!2819914))

(assert (=> b!2819916 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103513))))

(assert (=> b!2819916 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103513))))

(assert (=> d!818884 true))

(declare-fun lt!1006685 () Bool)

(assert (=> d!818884 (= lt!1006685 (forall!6763 (list!12391 (seqFromList!3236 lt!1006493)) lambda!103513))))

(declare-fun e!1783733 () Bool)

(assert (=> d!818884 (= lt!1006685 e!1783733)))

(declare-fun res!1173486 () Bool)

(assert (=> d!818884 (=> res!1173486 e!1783733)))

(assert (=> d!818884 (= res!1173486 (not ((_ is Cons!33051) (list!12391 (seqFromList!3236 lt!1006493)))))))

(assert (=> d!818884 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818884 (= (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (list!12391 (seqFromList!3236 lt!1006493))) lt!1006685)))

(declare-fun b!2819912 () Bool)

(declare-fun e!1783732 () Bool)

(assert (=> b!2819912 (= e!1783733 e!1783732)))

(declare-fun res!1173485 () Bool)

(assert (=> b!2819912 (=> (not res!1173485) (not e!1783732))))

(assert (=> b!2819912 (= res!1173485 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (list!12391 (seqFromList!3236 lt!1006493)))))))

(declare-fun b!2819913 () Bool)

(assert (=> b!2819913 (= e!1783732 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 (list!12391 (seqFromList!3236 lt!1006493)))))))

(assert (= (and d!818884 (not res!1173486)) b!2819912))

(assert (= (and b!2819912 res!1173485) b!2819913))

(assert (=> d!818884 m!3250141))

(declare-fun m!3250651 () Bool)

(assert (=> d!818884 m!3250651))

(assert (=> d!818884 m!3249933))

(declare-fun m!3250653 () Bool)

(assert (=> b!2819912 m!3250653))

(declare-fun m!3250655 () Bool)

(assert (=> b!2819913 m!3250655))

(assert (=> b!2819596 d!818884))

(declare-fun d!818888 () Bool)

(declare-fun list!12395 (Conc!10256) List!33175)

(assert (=> d!818888 (= (list!12391 (seqFromList!3236 lt!1006493)) (list!12395 (c!456937 (seqFromList!3236 lt!1006493))))))

(declare-fun bs!517314 () Bool)

(assert (= bs!517314 d!818888))

(declare-fun m!3250657 () Bool)

(assert (=> bs!517314 m!3250657))

(assert (=> b!2819596 d!818888))

(declare-fun d!818890 () Bool)

(declare-fun charsToInt!0 (List!33172) (_ BitVec 32))

(assert (=> d!818890 (= (inv!16 (value!159252 (h!38471 l!6581))) (= (charsToInt!0 (text!36672 (value!159252 (h!38471 l!6581)))) (value!159243 (value!159252 (h!38471 l!6581)))))))

(declare-fun bs!517315 () Bool)

(assert (= bs!517315 d!818890))

(declare-fun m!3250659 () Bool)

(assert (=> bs!517315 m!3250659))

(assert (=> b!2819614 d!818890))

(declare-fun d!818892 () Bool)

(assert (=> d!818892 (= (inv!44964 (tag!5449 (rule!7373 (h!38471 (t!230358 l!6581))))) (= (mod (str.len (value!159251 (tag!5449 (rule!7373 (h!38471 (t!230358 l!6581)))))) 2) 0))))

(assert (=> b!2819659 d!818892))

(declare-fun d!818894 () Bool)

(declare-fun res!1173487 () Bool)

(declare-fun e!1783737 () Bool)

(assert (=> d!818894 (=> (not res!1173487) (not e!1783737))))

(assert (=> d!818894 (= res!1173487 (semiInverseModEq!2048 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))))))

(assert (=> d!818894 (= (inv!44968 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) e!1783737)))

(declare-fun b!2819917 () Bool)

(assert (=> b!2819917 (= e!1783737 (equivClasses!1947 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))))))

(assert (= (and d!818894 res!1173487) b!2819917))

(declare-fun m!3250661 () Bool)

(assert (=> d!818894 m!3250661))

(declare-fun m!3250663 () Bool)

(assert (=> b!2819917 m!3250663))

(assert (=> b!2819659 d!818894))

(declare-fun d!818896 () Bool)

(declare-fun lt!1006686 () Int)

(assert (=> d!818896 (>= lt!1006686 0)))

(declare-fun e!1783738 () Int)

(assert (=> d!818896 (= lt!1006686 e!1783738)))

(declare-fun c!457005 () Bool)

(assert (=> d!818896 (= c!457005 ((_ is Nil!33051) lt!1006577))))

(assert (=> d!818896 (= (size!25739 lt!1006577) lt!1006686)))

(declare-fun b!2819918 () Bool)

(assert (=> b!2819918 (= e!1783738 0)))

(declare-fun b!2819919 () Bool)

(assert (=> b!2819919 (= e!1783738 (+ 1 (size!25739 (t!230358 lt!1006577))))))

(assert (= (and d!818896 c!457005) b!2819918))

(assert (= (and d!818896 (not c!457005)) b!2819919))

(declare-fun m!3250665 () Bool)

(assert (=> b!2819919 m!3250665))

(assert (=> b!2819644 d!818896))

(declare-fun d!818898 () Bool)

(declare-fun lt!1006687 () Bool)

(declare-fun e!1783740 () Bool)

(assert (=> d!818898 (= lt!1006687 e!1783740)))

(declare-fun res!1173490 () Bool)

(assert (=> d!818898 (=> (not res!1173490) (not e!1783740))))

(assert (=> d!818898 (= res!1173490 (= (list!12391 (_1!19779 (lex!1986 Lexer!4534 rules!4424 (print!1705 Lexer!4534 (singletonSeq!2127 (h!38471 lt!1006493)))))) (list!12391 (singletonSeq!2127 (h!38471 lt!1006493)))))))

(declare-fun e!1783739 () Bool)

(assert (=> d!818898 (= lt!1006687 e!1783739)))

(declare-fun res!1173489 () Bool)

(assert (=> d!818898 (=> (not res!1173489) (not e!1783739))))

(declare-fun lt!1006688 () tuple2!33372)

(assert (=> d!818898 (= res!1173489 (= (size!25736 (_1!19779 lt!1006688)) 1))))

(assert (=> d!818898 (= lt!1006688 (lex!1986 Lexer!4534 rules!4424 (print!1705 Lexer!4534 (singletonSeq!2127 (h!38471 lt!1006493)))))))

(assert (=> d!818898 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818898 (= (rulesProduceIndividualToken!2074 Lexer!4534 rules!4424 (h!38471 lt!1006493)) lt!1006687)))

(declare-fun b!2819920 () Bool)

(declare-fun res!1173488 () Bool)

(assert (=> b!2819920 (=> (not res!1173488) (not e!1783739))))

(assert (=> b!2819920 (= res!1173488 (= (apply!7718 (_1!19779 lt!1006688) 0) (h!38471 lt!1006493)))))

(declare-fun b!2819921 () Bool)

(assert (=> b!2819921 (= e!1783739 (isEmpty!18281 (_2!19779 lt!1006688)))))

(declare-fun b!2819922 () Bool)

(assert (=> b!2819922 (= e!1783740 (isEmpty!18281 (_2!19779 (lex!1986 Lexer!4534 rules!4424 (print!1705 Lexer!4534 (singletonSeq!2127 (h!38471 lt!1006493)))))))))

(assert (= (and d!818898 res!1173489) b!2819920))

(assert (= (and b!2819920 res!1173488) b!2819921))

(assert (= (and d!818898 res!1173490) b!2819922))

(declare-fun m!3250667 () Bool)

(assert (=> d!818898 m!3250667))

(declare-fun m!3250669 () Bool)

(assert (=> d!818898 m!3250669))

(assert (=> d!818898 m!3249987))

(assert (=> d!818898 m!3249989))

(assert (=> d!818898 m!3249987))

(assert (=> d!818898 m!3249987))

(declare-fun m!3250671 () Bool)

(assert (=> d!818898 m!3250671))

(assert (=> d!818898 m!3249933))

(assert (=> d!818898 m!3250671))

(declare-fun m!3250673 () Bool)

(assert (=> d!818898 m!3250673))

(declare-fun m!3250675 () Bool)

(assert (=> b!2819920 m!3250675))

(declare-fun m!3250677 () Bool)

(assert (=> b!2819921 m!3250677))

(assert (=> b!2819922 m!3249987))

(assert (=> b!2819922 m!3249987))

(assert (=> b!2819922 m!3250671))

(assert (=> b!2819922 m!3250671))

(assert (=> b!2819922 m!3250673))

(declare-fun m!3250679 () Bool)

(assert (=> b!2819922 m!3250679))

(assert (=> bs!517249 d!818898))

(declare-fun bs!517316 () Bool)

(declare-fun d!818900 () Bool)

(assert (= bs!517316 (and d!818900 d!818864)))

(declare-fun lambda!103514 () Int)

(assert (=> bs!517316 (= (= (toValue!6959 (transformation!4945 (h!38470 rules!4424))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581))))) (= lambda!103514 lambda!103509))))

(assert (=> d!818900 true))

(assert (=> d!818900 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13808 order!17517 lambda!103514))))

(assert (=> d!818900 (= (equivClasses!1947 (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (Forall2!829 lambda!103514))))

(declare-fun bs!517317 () Bool)

(assert (= bs!517317 d!818900))

(declare-fun m!3250681 () Bool)

(assert (=> bs!517317 m!3250681))

(assert (=> b!2819484 d!818900))

(assert (=> b!2819645 d!818866))

(declare-fun d!818902 () Bool)

(declare-fun lt!1006691 () Int)

(assert (=> d!818902 (= lt!1006691 (size!25739 (list!12391 (_1!19779 lt!1006509))))))

(declare-fun size!25742 (Conc!10256) Int)

(assert (=> d!818902 (= lt!1006691 (size!25742 (c!456937 (_1!19779 lt!1006509))))))

(assert (=> d!818902 (= (size!25736 (_1!19779 lt!1006509)) lt!1006691)))

(declare-fun bs!517318 () Bool)

(assert (= bs!517318 d!818902))

(assert (=> bs!517318 m!3250569))

(assert (=> bs!517318 m!3250569))

(declare-fun m!3250683 () Bool)

(assert (=> bs!517318 m!3250683))

(declare-fun m!3250685 () Bool)

(assert (=> bs!517318 m!3250685))

(assert (=> d!818644 d!818902))

(assert (=> d!818644 d!818642))

(declare-fun d!818904 () Bool)

(assert (=> d!818904 (= (list!12391 (_1!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493)))))) (list!12395 (c!456937 (_1!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 lt!1006493))))))))))

(declare-fun bs!517319 () Bool)

(assert (= bs!517319 d!818904))

(declare-fun m!3250687 () Bool)

(assert (=> bs!517319 m!3250687))

(assert (=> d!818644 d!818904))

(assert (=> d!818644 d!818742))

(declare-fun d!818906 () Bool)

(assert (=> d!818906 (= (list!12391 (singletonSeq!2127 (h!38471 lt!1006493))) (list!12395 (c!456937 (singletonSeq!2127 (h!38471 lt!1006493)))))))

(declare-fun bs!517320 () Bool)

(assert (= bs!517320 d!818906))

(declare-fun m!3250689 () Bool)

(assert (=> bs!517320 m!3250689))

(assert (=> d!818644 d!818906))

(assert (=> d!818644 d!818754))

(assert (=> d!818644 d!818752))

(declare-fun bs!517321 () Bool)

(declare-fun d!818908 () Bool)

(assert (= bs!517321 (and d!818908 d!818870)))

(declare-fun lambda!103515 () Int)

(assert (=> bs!517321 (= (and (= (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) (= (toValue!6959 (transformation!4945 (h!38470 rules!4424))) (toValue!6959 (transformation!4945 (rule!7373 (h!38471 l!6581)))))) (= lambda!103515 lambda!103512))))

(assert (=> d!818908 true))

(assert (=> d!818908 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13809 order!17519 lambda!103515))))

(assert (=> d!818908 true))

(assert (=> d!818908 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13809 order!17519 lambda!103515))))

(assert (=> d!818908 (= (semiInverseModEq!2048 (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (Forall!1231 lambda!103515))))

(declare-fun bs!517322 () Bool)

(assert (= bs!517322 d!818908))

(declare-fun m!3250691 () Bool)

(assert (=> bs!517322 m!3250691))

(assert (=> d!818670 d!818908))

(declare-fun d!818910 () Bool)

(declare-fun list!12396 (Conc!10255) List!33173)

(assert (=> d!818910 (= (list!12392 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))) (list!12396 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))))))

(declare-fun bs!517323 () Bool)

(assert (= bs!517323 d!818910))

(declare-fun m!3250693 () Bool)

(assert (=> bs!517323 m!3250693))

(assert (=> b!2819491 d!818910))

(declare-fun d!818912 () Bool)

(declare-fun lt!1006692 () Bool)

(declare-fun e!1783742 () Bool)

(assert (=> d!818912 (= lt!1006692 e!1783742)))

(declare-fun res!1173493 () Bool)

(assert (=> d!818912 (=> (not res!1173493) (not e!1783742))))

(assert (=> d!818912 (= res!1173493 (= (list!12391 (_1!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 (t!230358 lt!1006493))))))) (list!12391 (singletonSeq!2127 (h!38471 (t!230358 lt!1006493))))))))

(declare-fun e!1783741 () Bool)

(assert (=> d!818912 (= lt!1006692 e!1783741)))

(declare-fun res!1173492 () Bool)

(assert (=> d!818912 (=> (not res!1173492) (not e!1783741))))

(declare-fun lt!1006693 () tuple2!33372)

(assert (=> d!818912 (= res!1173492 (= (size!25736 (_1!19779 lt!1006693)) 1))))

(assert (=> d!818912 (= lt!1006693 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 (t!230358 lt!1006493))))))))

(assert (=> d!818912 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818912 (= (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 lt!1006493))) lt!1006692)))

(declare-fun b!2819923 () Bool)

(declare-fun res!1173491 () Bool)

(assert (=> b!2819923 (=> (not res!1173491) (not e!1783741))))

(assert (=> b!2819923 (= res!1173491 (= (apply!7718 (_1!19779 lt!1006693) 0) (h!38471 (t!230358 lt!1006493))))))

(declare-fun b!2819924 () Bool)

(assert (=> b!2819924 (= e!1783741 (isEmpty!18281 (_2!19779 lt!1006693)))))

(declare-fun b!2819925 () Bool)

(assert (=> b!2819925 (= e!1783742 (isEmpty!18281 (_2!19779 (lex!1986 thiss!27755 rules!4424 (print!1705 thiss!27755 (singletonSeq!2127 (h!38471 (t!230358 lt!1006493))))))))))

(assert (= (and d!818912 res!1173492) b!2819923))

(assert (= (and b!2819923 res!1173491) b!2819924))

(assert (= (and d!818912 res!1173493) b!2819925))

(declare-fun m!3250695 () Bool)

(assert (=> d!818912 m!3250695))

(declare-fun m!3250697 () Bool)

(assert (=> d!818912 m!3250697))

(declare-fun m!3250699 () Bool)

(assert (=> d!818912 m!3250699))

(declare-fun m!3250701 () Bool)

(assert (=> d!818912 m!3250701))

(assert (=> d!818912 m!3250699))

(assert (=> d!818912 m!3250699))

(declare-fun m!3250703 () Bool)

(assert (=> d!818912 m!3250703))

(assert (=> d!818912 m!3249933))

(assert (=> d!818912 m!3250703))

(declare-fun m!3250705 () Bool)

(assert (=> d!818912 m!3250705))

(declare-fun m!3250707 () Bool)

(assert (=> b!2819923 m!3250707))

(declare-fun m!3250709 () Bool)

(assert (=> b!2819924 m!3250709))

(assert (=> b!2819925 m!3250699))

(assert (=> b!2819925 m!3250699))

(assert (=> b!2819925 m!3250703))

(assert (=> b!2819925 m!3250703))

(assert (=> b!2819925 m!3250705))

(declare-fun m!3250711 () Bool)

(assert (=> b!2819925 m!3250711))

(assert (=> b!2819499 d!818912))

(declare-fun d!818914 () Bool)

(declare-fun lt!1006696 () Int)

(assert (=> d!818914 (>= lt!1006696 0)))

(declare-fun e!1783745 () Int)

(assert (=> d!818914 (= lt!1006696 e!1783745)))

(declare-fun c!457008 () Bool)

(assert (=> d!818914 (= c!457008 ((_ is Nil!33049) (originalCharacters!5677 (h!38471 l!6581))))))

(assert (=> d!818914 (= (size!25737 (originalCharacters!5677 (h!38471 l!6581))) lt!1006696)))

(declare-fun b!2819930 () Bool)

(assert (=> b!2819930 (= e!1783745 0)))

(declare-fun b!2819931 () Bool)

(assert (=> b!2819931 (= e!1783745 (+ 1 (size!25737 (t!230356 (originalCharacters!5677 (h!38471 l!6581))))))))

(assert (= (and d!818914 c!457008) b!2819930))

(assert (= (and d!818914 (not c!457008)) b!2819931))

(declare-fun m!3250713 () Bool)

(assert (=> b!2819931 m!3250713))

(assert (=> b!2819492 d!818914))

(declare-fun d!818916 () Bool)

(assert (=> d!818916 (= (inv!44964 (tag!5449 (h!38470 (t!230357 rules!4424)))) (= (mod (str.len (value!159251 (tag!5449 (h!38470 (t!230357 rules!4424))))) 2) 0))))

(assert (=> b!2819684 d!818916))

(declare-fun d!818918 () Bool)

(declare-fun res!1173494 () Bool)

(declare-fun e!1783746 () Bool)

(assert (=> d!818918 (=> (not res!1173494) (not e!1783746))))

(assert (=> d!818918 (= res!1173494 (semiInverseModEq!2048 (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424)))) (toValue!6959 (transformation!4945 (h!38470 (t!230357 rules!4424))))))))

(assert (=> d!818918 (= (inv!44968 (transformation!4945 (h!38470 (t!230357 rules!4424)))) e!1783746)))

(declare-fun b!2819932 () Bool)

(assert (=> b!2819932 (= e!1783746 (equivClasses!1947 (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424)))) (toValue!6959 (transformation!4945 (h!38470 (t!230357 rules!4424))))))))

(assert (= (and d!818918 res!1173494) b!2819932))

(declare-fun m!3250715 () Bool)

(assert (=> d!818918 m!3250715))

(declare-fun m!3250717 () Bool)

(assert (=> b!2819932 m!3250717))

(assert (=> b!2819684 d!818918))

(declare-fun d!818920 () Bool)

(declare-fun e!1783749 () Bool)

(assert (=> d!818920 e!1783749))

(declare-fun res!1173497 () Bool)

(assert (=> d!818920 (=> (not res!1173497) (not e!1783749))))

(declare-fun lt!1006699 () BalanceConc!20150)

(assert (=> d!818920 (= res!1173497 (= (list!12391 lt!1006699) lt!1006493))))

(declare-fun fromList!577 (List!33175) Conc!10256)

(assert (=> d!818920 (= lt!1006699 (BalanceConc!20151 (fromList!577 lt!1006493)))))

(assert (=> d!818920 (= (fromListB!1465 lt!1006493) lt!1006699)))

(declare-fun b!2819935 () Bool)

(assert (=> b!2819935 (= e!1783749 (isBalanced!3111 (fromList!577 lt!1006493)))))

(assert (= (and d!818920 res!1173497) b!2819935))

(declare-fun m!3250719 () Bool)

(assert (=> d!818920 m!3250719))

(declare-fun m!3250721 () Bool)

(assert (=> d!818920 m!3250721))

(assert (=> b!2819935 m!3250721))

(assert (=> b!2819935 m!3250721))

(declare-fun m!3250723 () Bool)

(assert (=> b!2819935 m!3250723))

(assert (=> d!818698 d!818920))

(declare-fun d!818922 () Bool)

(declare-fun res!1173498 () Bool)

(declare-fun e!1783750 () Bool)

(assert (=> d!818922 (=> (not res!1173498) (not e!1783750))))

(assert (=> d!818922 (= res!1173498 (not (isEmpty!18282 (originalCharacters!5677 (h!38471 (t!230358 l!6581))))))))

(assert (=> d!818922 (= (inv!44967 (h!38471 (t!230358 l!6581))) e!1783750)))

(declare-fun b!2819936 () Bool)

(declare-fun res!1173499 () Bool)

(assert (=> b!2819936 (=> (not res!1173499) (not e!1783750))))

(assert (=> b!2819936 (= res!1173499 (= (originalCharacters!5677 (h!38471 (t!230358 l!6581))) (list!12392 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))) (value!159252 (h!38471 (t!230358 l!6581)))))))))

(declare-fun b!2819937 () Bool)

(assert (=> b!2819937 (= e!1783750 (= (size!25731 (h!38471 (t!230358 l!6581))) (size!25737 (originalCharacters!5677 (h!38471 (t!230358 l!6581))))))))

(assert (= (and d!818922 res!1173498) b!2819936))

(assert (= (and b!2819936 res!1173499) b!2819937))

(declare-fun b_lambda!84369 () Bool)

(assert (=> (not b_lambda!84369) (not b!2819936)))

(assert (=> b!2819936 t!230394))

(declare-fun b_and!205967 () Bool)

(assert (= b_and!205943 (and (=> t!230394 result!191434) b_and!205967)))

(assert (=> b!2819936 t!230396))

(declare-fun b_and!205969 () Bool)

(assert (= b_and!205945 (and (=> t!230396 result!191436) b_and!205969)))

(assert (=> b!2819936 t!230398))

(declare-fun b_and!205971 () Bool)

(assert (= b_and!205947 (and (=> t!230398 result!191438) b_and!205971)))

(assert (=> b!2819936 t!230400))

(declare-fun b_and!205973 () Bool)

(assert (= b_and!205949 (and (=> t!230400 result!191440) b_and!205973)))

(declare-fun m!3250725 () Bool)

(assert (=> d!818922 m!3250725))

(assert (=> b!2819936 m!3250381))

(assert (=> b!2819936 m!3250381))

(declare-fun m!3250727 () Bool)

(assert (=> b!2819936 m!3250727))

(declare-fun m!3250729 () Bool)

(assert (=> b!2819937 m!3250729))

(assert (=> b!2819657 d!818922))

(declare-fun bs!517324 () Bool)

(declare-fun d!818924 () Bool)

(assert (= bs!517324 (and d!818924 b!2819380)))

(declare-fun lambda!103516 () Int)

(assert (=> bs!517324 (= (= thiss!27755 Lexer!4534) (= lambda!103516 lambda!103469))))

(declare-fun bs!517325 () Bool)

(assert (= bs!517325 (and d!818924 d!818654)))

(assert (=> bs!517325 (= lambda!103516 lambda!103480)))

(declare-fun bs!517326 () Bool)

(assert (= bs!517326 (and d!818924 d!818738)))

(assert (=> bs!517326 (= lambda!103516 lambda!103495)))

(declare-fun bs!517327 () Bool)

(assert (= bs!517327 (and d!818924 d!818884)))

(assert (=> bs!517327 (= lambda!103516 lambda!103513)))

(declare-fun bs!517328 () Bool)

(assert (= bs!517328 (and d!818924 d!818694)))

(assert (=> bs!517328 (= lambda!103516 lambda!103488)))

(declare-fun bs!517329 () Bool)

(assert (= bs!517329 (and d!818924 d!818706)))

(assert (=> bs!517329 (= lambda!103516 lambda!103489)))

(declare-fun bs!517330 () Bool)

(assert (= bs!517330 (and d!818924 d!818682)))

(assert (=> bs!517330 (= lambda!103516 lambda!103481)))

(declare-fun b!2819942 () Bool)

(declare-fun e!1783755 () Bool)

(assert (=> b!2819942 (= e!1783755 true)))

(declare-fun b!2819941 () Bool)

(declare-fun e!1783754 () Bool)

(assert (=> b!2819941 (= e!1783754 e!1783755)))

(declare-fun b!2819940 () Bool)

(declare-fun e!1783753 () Bool)

(assert (=> b!2819940 (= e!1783753 e!1783754)))

(assert (=> d!818924 e!1783753))

(assert (= b!2819941 b!2819942))

(assert (= b!2819940 b!2819941))

(assert (= (and d!818924 ((_ is Cons!33050) rules!4424)) b!2819940))

(assert (=> b!2819942 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103516))))

(assert (=> b!2819942 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 rules!4424)))) (dynLambda!13801 order!17509 lambda!103516))))

(assert (=> d!818924 true))

(declare-fun lt!1006700 () Bool)

(assert (=> d!818924 (= lt!1006700 (forall!6763 (t!230358 (t!230358 lt!1006493)) lambda!103516))))

(declare-fun e!1783752 () Bool)

(assert (=> d!818924 (= lt!1006700 e!1783752)))

(declare-fun res!1173501 () Bool)

(assert (=> d!818924 (=> res!1173501 e!1783752)))

(assert (=> d!818924 (= res!1173501 (not ((_ is Cons!33051) (t!230358 (t!230358 lt!1006493)))))))

(assert (=> d!818924 (not (isEmpty!18278 rules!4424))))

(assert (=> d!818924 (= (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 (t!230358 lt!1006493))) lt!1006700)))

(declare-fun b!2819938 () Bool)

(declare-fun e!1783751 () Bool)

(assert (=> b!2819938 (= e!1783752 e!1783751)))

(declare-fun res!1173500 () Bool)

(assert (=> b!2819938 (=> (not res!1173500) (not e!1783751))))

(assert (=> b!2819938 (= res!1173500 (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 (t!230358 lt!1006493)))))))

(declare-fun b!2819939 () Bool)

(assert (=> b!2819939 (= e!1783751 (rulesProduceEachTokenIndividuallyList!1588 thiss!27755 rules!4424 (t!230358 (t!230358 (t!230358 lt!1006493)))))))

(assert (= (and d!818924 (not res!1173501)) b!2819938))

(assert (= (and b!2819938 res!1173500) b!2819939))

(declare-fun m!3250731 () Bool)

(assert (=> d!818924 m!3250731))

(assert (=> d!818924 m!3249933))

(declare-fun m!3250733 () Bool)

(assert (=> b!2819938 m!3250733))

(declare-fun m!3250735 () Bool)

(assert (=> b!2819939 m!3250735))

(assert (=> b!2819500 d!818924))

(declare-fun d!818926 () Bool)

(declare-fun res!1173502 () Bool)

(declare-fun e!1783756 () Bool)

(assert (=> d!818926 (=> res!1173502 e!1783756)))

(assert (=> d!818926 (= res!1173502 ((_ is Nil!33051) (list!12391 (seqFromList!3236 lt!1006493))))))

(assert (=> d!818926 (= (forall!6763 (list!12391 (seqFromList!3236 lt!1006493)) lambda!103488) e!1783756)))

(declare-fun b!2819943 () Bool)

(declare-fun e!1783757 () Bool)

(assert (=> b!2819943 (= e!1783756 e!1783757)))

(declare-fun res!1173503 () Bool)

(assert (=> b!2819943 (=> (not res!1173503) (not e!1783757))))

(assert (=> b!2819943 (= res!1173503 (dynLambda!13806 lambda!103488 (h!38471 (list!12391 (seqFromList!3236 lt!1006493)))))))

(declare-fun b!2819944 () Bool)

(assert (=> b!2819944 (= e!1783757 (forall!6763 (t!230358 (list!12391 (seqFromList!3236 lt!1006493))) lambda!103488))))

(assert (= (and d!818926 (not res!1173502)) b!2819943))

(assert (= (and b!2819943 res!1173503) b!2819944))

(declare-fun b_lambda!84371 () Bool)

(assert (=> (not b_lambda!84371) (not b!2819943)))

(declare-fun m!3250737 () Bool)

(assert (=> b!2819943 m!3250737))

(declare-fun m!3250739 () Bool)

(assert (=> b!2819944 m!3250739))

(assert (=> d!818694 d!818926))

(assert (=> d!818694 d!818888))

(declare-fun d!818928 () Bool)

(declare-fun lt!1006705 () Bool)

(assert (=> d!818928 (= lt!1006705 (forall!6763 (list!12391 (seqFromList!3236 lt!1006493)) lambda!103488))))

(declare-fun forall!6769 (Conc!10256 Int) Bool)

(assert (=> d!818928 (= lt!1006705 (forall!6769 (c!456937 (seqFromList!3236 lt!1006493)) lambda!103488))))

(assert (=> d!818928 (= (forall!6765 (seqFromList!3236 lt!1006493) lambda!103488) lt!1006705)))

(declare-fun bs!517332 () Bool)

(assert (= bs!517332 d!818928))

(assert (=> bs!517332 m!3249925))

(assert (=> bs!517332 m!3250141))

(assert (=> bs!517332 m!3250141))

(assert (=> bs!517332 m!3250143))

(declare-fun m!3250761 () Bool)

(assert (=> bs!517332 m!3250761))

(assert (=> d!818694 d!818928))

(assert (=> d!818694 d!818642))

(declare-fun b!2819956 () Bool)

(declare-fun e!1783763 () Bool)

(declare-fun tp!900451 () Bool)

(assert (=> b!2819956 (= e!1783763 tp!900451)))

(declare-fun b!2819954 () Bool)

(assert (=> b!2819954 (= e!1783763 tp_is_empty!14443)))

(declare-fun b!2819955 () Bool)

(declare-fun tp!900453 () Bool)

(declare-fun tp!900455 () Bool)

(assert (=> b!2819955 (= e!1783763 (and tp!900453 tp!900455))))

(assert (=> b!2819695 (= tp!900446 e!1783763)))

(declare-fun b!2819957 () Bool)

(declare-fun tp!900454 () Bool)

(declare-fun tp!900452 () Bool)

(assert (=> b!2819957 (= e!1783763 (and tp!900454 tp!900452))))

(assert (= (and b!2819695 ((_ is ElementMatch!8335) (regOne!17182 (regex!4945 (h!38470 rules!4424))))) b!2819954))

(assert (= (and b!2819695 ((_ is Concat!13511) (regOne!17182 (regex!4945 (h!38470 rules!4424))))) b!2819955))

(assert (= (and b!2819695 ((_ is Star!8335) (regOne!17182 (regex!4945 (h!38470 rules!4424))))) b!2819956))

(assert (= (and b!2819695 ((_ is Union!8335) (regOne!17182 (regex!4945 (h!38470 rules!4424))))) b!2819957))

(declare-fun b!2819960 () Bool)

(declare-fun e!1783764 () Bool)

(declare-fun tp!900456 () Bool)

(assert (=> b!2819960 (= e!1783764 tp!900456)))

(declare-fun b!2819958 () Bool)

(assert (=> b!2819958 (= e!1783764 tp_is_empty!14443)))

(declare-fun b!2819959 () Bool)

(declare-fun tp!900458 () Bool)

(declare-fun tp!900460 () Bool)

(assert (=> b!2819959 (= e!1783764 (and tp!900458 tp!900460))))

(assert (=> b!2819695 (= tp!900448 e!1783764)))

(declare-fun b!2819961 () Bool)

(declare-fun tp!900459 () Bool)

(declare-fun tp!900457 () Bool)

(assert (=> b!2819961 (= e!1783764 (and tp!900459 tp!900457))))

(assert (= (and b!2819695 ((_ is ElementMatch!8335) (regTwo!17182 (regex!4945 (h!38470 rules!4424))))) b!2819958))

(assert (= (and b!2819695 ((_ is Concat!13511) (regTwo!17182 (regex!4945 (h!38470 rules!4424))))) b!2819959))

(assert (= (and b!2819695 ((_ is Star!8335) (regTwo!17182 (regex!4945 (h!38470 rules!4424))))) b!2819960))

(assert (= (and b!2819695 ((_ is Union!8335) (regTwo!17182 (regex!4945 (h!38470 rules!4424))))) b!2819961))

(declare-fun b!2819964 () Bool)

(declare-fun e!1783767 () Bool)

(assert (=> b!2819964 (= e!1783767 true)))

(declare-fun b!2819963 () Bool)

(declare-fun e!1783766 () Bool)

(assert (=> b!2819963 (= e!1783766 e!1783767)))

(declare-fun b!2819962 () Bool)

(declare-fun e!1783765 () Bool)

(assert (=> b!2819962 (= e!1783765 e!1783766)))

(assert (=> b!2819691 e!1783765))

(assert (= b!2819963 b!2819964))

(assert (= b!2819962 b!2819963))

(assert (= (and b!2819691 ((_ is Cons!33050) (t!230357 (t!230357 rules!4424)))) b!2819962))

(assert (=> b!2819964 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 (t!230357 (t!230357 rules!4424)))))) (dynLambda!13801 order!17509 lambda!103469))))

(assert (=> b!2819964 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 (t!230357 (t!230357 rules!4424)))))) (dynLambda!13801 order!17509 lambda!103469))))

(declare-fun b!2819967 () Bool)

(declare-fun e!1783770 () Bool)

(assert (=> b!2819967 (= e!1783770 true)))

(declare-fun b!2819966 () Bool)

(declare-fun e!1783769 () Bool)

(assert (=> b!2819966 (= e!1783769 e!1783770)))

(declare-fun b!2819965 () Bool)

(declare-fun e!1783768 () Bool)

(assert (=> b!2819965 (= e!1783768 e!1783769)))

(assert (=> b!2819501 e!1783768))

(assert (= b!2819966 b!2819967))

(assert (= b!2819965 b!2819966))

(assert (= (and b!2819501 ((_ is Cons!33050) (t!230357 rules!4424))) b!2819965))

(assert (=> b!2819967 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103481))))

(assert (=> b!2819967 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103481))))

(declare-fun b!2819970 () Bool)

(declare-fun e!1783771 () Bool)

(declare-fun tp!900461 () Bool)

(assert (=> b!2819970 (= e!1783771 tp!900461)))

(declare-fun b!2819968 () Bool)

(assert (=> b!2819968 (= e!1783771 tp_is_empty!14443)))

(declare-fun b!2819969 () Bool)

(declare-fun tp!900463 () Bool)

(declare-fun tp!900465 () Bool)

(assert (=> b!2819969 (= e!1783771 (and tp!900463 tp!900465))))

(assert (=> b!2819696 (= tp!900444 e!1783771)))

(declare-fun b!2819971 () Bool)

(declare-fun tp!900464 () Bool)

(declare-fun tp!900462 () Bool)

(assert (=> b!2819971 (= e!1783771 (and tp!900464 tp!900462))))

(assert (= (and b!2819696 ((_ is ElementMatch!8335) (reg!8664 (regex!4945 (h!38470 rules!4424))))) b!2819968))

(assert (= (and b!2819696 ((_ is Concat!13511) (reg!8664 (regex!4945 (h!38470 rules!4424))))) b!2819969))

(assert (= (and b!2819696 ((_ is Star!8335) (reg!8664 (regex!4945 (h!38470 rules!4424))))) b!2819970))

(assert (= (and b!2819696 ((_ is Union!8335) (reg!8664 (regex!4945 (h!38470 rules!4424))))) b!2819971))

(declare-fun b!2819976 () Bool)

(declare-fun e!1783776 () Bool)

(assert (=> b!2819976 (= e!1783776 true)))

(declare-fun b!2819975 () Bool)

(declare-fun e!1783775 () Bool)

(assert (=> b!2819975 (= e!1783775 e!1783776)))

(declare-fun b!2819974 () Bool)

(declare-fun e!1783774 () Bool)

(assert (=> b!2819974 (= e!1783774 e!1783775)))

(assert (=> b!2819597 e!1783774))

(assert (= b!2819975 b!2819976))

(assert (= b!2819974 b!2819975))

(assert (= (and b!2819597 ((_ is Cons!33050) (t!230357 rules!4424))) b!2819974))

(assert (=> b!2819976 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103488))))

(assert (=> b!2819976 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103488))))

(declare-fun b!2819979 () Bool)

(declare-fun e!1783777 () Bool)

(declare-fun tp!900466 () Bool)

(assert (=> b!2819979 (= e!1783777 tp!900466)))

(declare-fun b!2819977 () Bool)

(assert (=> b!2819977 (= e!1783777 tp_is_empty!14443)))

(declare-fun b!2819978 () Bool)

(declare-fun tp!900468 () Bool)

(declare-fun tp!900470 () Bool)

(assert (=> b!2819978 (= e!1783777 (and tp!900468 tp!900470))))

(assert (=> b!2819697 (= tp!900447 e!1783777)))

(declare-fun b!2819980 () Bool)

(declare-fun tp!900469 () Bool)

(declare-fun tp!900467 () Bool)

(assert (=> b!2819980 (= e!1783777 (and tp!900469 tp!900467))))

(assert (= (and b!2819697 ((_ is ElementMatch!8335) (regOne!17183 (regex!4945 (h!38470 rules!4424))))) b!2819977))

(assert (= (and b!2819697 ((_ is Concat!13511) (regOne!17183 (regex!4945 (h!38470 rules!4424))))) b!2819978))

(assert (= (and b!2819697 ((_ is Star!8335) (regOne!17183 (regex!4945 (h!38470 rules!4424))))) b!2819979))

(assert (= (and b!2819697 ((_ is Union!8335) (regOne!17183 (regex!4945 (h!38470 rules!4424))))) b!2819980))

(declare-fun b!2819984 () Bool)

(declare-fun e!1783778 () Bool)

(declare-fun tp!900471 () Bool)

(assert (=> b!2819984 (= e!1783778 tp!900471)))

(declare-fun b!2819982 () Bool)

(assert (=> b!2819982 (= e!1783778 tp_is_empty!14443)))

(declare-fun b!2819983 () Bool)

(declare-fun tp!900473 () Bool)

(declare-fun tp!900476 () Bool)

(assert (=> b!2819983 (= e!1783778 (and tp!900473 tp!900476))))

(assert (=> b!2819697 (= tp!900445 e!1783778)))

(declare-fun b!2819985 () Bool)

(declare-fun tp!900474 () Bool)

(declare-fun tp!900472 () Bool)

(assert (=> b!2819985 (= e!1783778 (and tp!900474 tp!900472))))

(assert (= (and b!2819697 ((_ is ElementMatch!8335) (regTwo!17183 (regex!4945 (h!38470 rules!4424))))) b!2819982))

(assert (= (and b!2819697 ((_ is Concat!13511) (regTwo!17183 (regex!4945 (h!38470 rules!4424))))) b!2819983))

(assert (= (and b!2819697 ((_ is Star!8335) (regTwo!17183 (regex!4945 (h!38470 rules!4424))))) b!2819984))

(assert (= (and b!2819697 ((_ is Union!8335) (regTwo!17183 (regex!4945 (h!38470 rules!4424))))) b!2819985))

(declare-fun b!2819990 () Bool)

(declare-fun e!1783781 () Bool)

(declare-fun tp!900482 () Bool)

(assert (=> b!2819990 (= e!1783781 (and tp_is_empty!14443 tp!900482))))

(assert (=> b!2819658 (= tp!900413 e!1783781)))

(assert (= (and b!2819658 ((_ is Cons!33049) (originalCharacters!5677 (h!38471 (t!230358 l!6581))))) b!2819990))

(declare-fun b!2819993 () Bool)

(declare-fun e!1783782 () Bool)

(declare-fun tp!900483 () Bool)

(assert (=> b!2819993 (= e!1783782 tp!900483)))

(declare-fun b!2819991 () Bool)

(assert (=> b!2819991 (= e!1783782 tp_is_empty!14443)))

(declare-fun b!2819992 () Bool)

(declare-fun tp!900485 () Bool)

(declare-fun tp!900487 () Bool)

(assert (=> b!2819992 (= e!1783782 (and tp!900485 tp!900487))))

(assert (=> b!2819672 (= tp!900426 e!1783782)))

(declare-fun b!2819994 () Bool)

(declare-fun tp!900486 () Bool)

(declare-fun tp!900484 () Bool)

(assert (=> b!2819994 (= e!1783782 (and tp!900486 tp!900484))))

(assert (= (and b!2819672 ((_ is ElementMatch!8335) (regOne!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2819991))

(assert (= (and b!2819672 ((_ is Concat!13511) (regOne!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2819992))

(assert (= (and b!2819672 ((_ is Star!8335) (regOne!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2819993))

(assert (= (and b!2819672 ((_ is Union!8335) (regOne!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2819994))

(declare-fun b!2820001 () Bool)

(declare-fun e!1783784 () Bool)

(declare-fun tp!900493 () Bool)

(assert (=> b!2820001 (= e!1783784 tp!900493)))

(declare-fun b!2819999 () Bool)

(assert (=> b!2819999 (= e!1783784 tp_is_empty!14443)))

(declare-fun b!2820000 () Bool)

(declare-fun tp!900495 () Bool)

(declare-fun tp!900497 () Bool)

(assert (=> b!2820000 (= e!1783784 (and tp!900495 tp!900497))))

(assert (=> b!2819672 (= tp!900428 e!1783784)))

(declare-fun b!2820002 () Bool)

(declare-fun tp!900496 () Bool)

(declare-fun tp!900494 () Bool)

(assert (=> b!2820002 (= e!1783784 (and tp!900496 tp!900494))))

(assert (= (and b!2819672 ((_ is ElementMatch!8335) (regTwo!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2819999))

(assert (= (and b!2819672 ((_ is Concat!13511) (regTwo!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820000))

(assert (= (and b!2819672 ((_ is Star!8335) (regTwo!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820001))

(assert (= (and b!2819672 ((_ is Union!8335) (regTwo!17182 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820002))

(declare-fun e!1783805 () Bool)

(declare-fun tp!900539 () Bool)

(declare-fun tp!900541 () Bool)

(declare-fun b!2820042 () Bool)

(assert (=> b!2820042 (= e!1783805 (and (inv!44971 (left!24954 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))))) tp!900539 (inv!44971 (right!25284 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))))) tp!900541))))

(declare-fun b!2820044 () Bool)

(declare-fun e!1783804 () Bool)

(declare-fun tp!900540 () Bool)

(assert (=> b!2820044 (= e!1783804 tp!900540)))

(declare-fun b!2820043 () Bool)

(declare-fun inv!44977 (IArray!20515) Bool)

(assert (=> b!2820043 (= e!1783805 (and (inv!44977 (xs!13367 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))))) e!1783804))))

(assert (=> b!2819497 (= tp!900345 (and (inv!44971 (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581))))) e!1783805))))

(assert (= (and b!2819497 ((_ is Node!10255) (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))))) b!2820042))

(assert (= b!2820043 b!2820044))

(assert (= (and b!2819497 ((_ is Leaf!15619) (c!456935 (dynLambda!13805 (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (value!159252 (h!38471 l!6581)))))) b!2820043))

(declare-fun m!3250771 () Bool)

(assert (=> b!2820042 m!3250771))

(declare-fun m!3250773 () Bool)

(assert (=> b!2820042 m!3250773))

(declare-fun m!3250775 () Bool)

(assert (=> b!2820043 m!3250775))

(assert (=> b!2819497 m!3250047))

(declare-fun b!2820047 () Bool)

(declare-fun e!1783806 () Bool)

(declare-fun tp!900542 () Bool)

(assert (=> b!2820047 (= e!1783806 tp!900542)))

(declare-fun b!2820045 () Bool)

(assert (=> b!2820045 (= e!1783806 tp_is_empty!14443)))

(declare-fun b!2820046 () Bool)

(declare-fun tp!900544 () Bool)

(declare-fun tp!900546 () Bool)

(assert (=> b!2820046 (= e!1783806 (and tp!900544 tp!900546))))

(assert (=> b!2819659 (= tp!900409 e!1783806)))

(declare-fun b!2820048 () Bool)

(declare-fun tp!900545 () Bool)

(declare-fun tp!900543 () Bool)

(assert (=> b!2820048 (= e!1783806 (and tp!900545 tp!900543))))

(assert (= (and b!2819659 ((_ is ElementMatch!8335) (regex!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) b!2820045))

(assert (= (and b!2819659 ((_ is Concat!13511) (regex!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) b!2820046))

(assert (= (and b!2819659 ((_ is Star!8335) (regex!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) b!2820047))

(assert (= (and b!2819659 ((_ is Union!8335) (regex!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) b!2820048))

(declare-fun b!2820051 () Bool)

(declare-fun e!1783807 () Bool)

(declare-fun tp!900547 () Bool)

(assert (=> b!2820051 (= e!1783807 tp!900547)))

(declare-fun b!2820049 () Bool)

(assert (=> b!2820049 (= e!1783807 tp_is_empty!14443)))

(declare-fun b!2820050 () Bool)

(declare-fun tp!900549 () Bool)

(declare-fun tp!900551 () Bool)

(assert (=> b!2820050 (= e!1783807 (and tp!900549 tp!900551))))

(assert (=> b!2819673 (= tp!900424 e!1783807)))

(declare-fun b!2820052 () Bool)

(declare-fun tp!900550 () Bool)

(declare-fun tp!900548 () Bool)

(assert (=> b!2820052 (= e!1783807 (and tp!900550 tp!900548))))

(assert (= (and b!2819673 ((_ is ElementMatch!8335) (reg!8664 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820049))

(assert (= (and b!2819673 ((_ is Concat!13511) (reg!8664 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820050))

(assert (= (and b!2819673 ((_ is Star!8335) (reg!8664 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820051))

(assert (= (and b!2819673 ((_ is Union!8335) (reg!8664 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820052))

(declare-fun b!2820059 () Bool)

(declare-fun e!1783811 () Bool)

(assert (=> b!2820059 (= e!1783811 true)))

(declare-fun b!2820058 () Bool)

(declare-fun e!1783810 () Bool)

(assert (=> b!2820058 (= e!1783810 e!1783811)))

(declare-fun b!2820057 () Bool)

(declare-fun e!1783809 () Bool)

(assert (=> b!2820057 (= e!1783809 e!1783810)))

(assert (=> b!2819623 e!1783809))

(assert (= b!2820058 b!2820059))

(assert (= b!2820057 b!2820058))

(assert (= (and b!2819623 ((_ is Cons!33050) (t!230357 rules!4424))) b!2820057))

(assert (=> b!2820059 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103489))))

(assert (=> b!2820059 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103489))))

(declare-fun b!2820066 () Bool)

(declare-fun e!1783815 () Bool)

(assert (=> b!2820066 (= e!1783815 true)))

(declare-fun b!2820065 () Bool)

(declare-fun e!1783814 () Bool)

(assert (=> b!2820065 (= e!1783814 e!1783815)))

(declare-fun b!2820064 () Bool)

(declare-fun e!1783813 () Bool)

(assert (=> b!2820064 (= e!1783813 e!1783814)))

(assert (=> b!2819473 e!1783813))

(assert (= b!2820065 b!2820066))

(assert (= b!2820064 b!2820065))

(assert (= (and b!2819473 ((_ is Cons!33050) (t!230357 rules!4424))) b!2820064))

(assert (=> b!2820066 (< (dynLambda!13800 order!17507 (toValue!6959 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103480))))

(assert (=> b!2820066 (< (dynLambda!13802 order!17511 (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424))))) (dynLambda!13801 order!17509 lambda!103480))))

(declare-fun b!2820073 () Bool)

(declare-fun e!1783817 () Bool)

(declare-fun tp!900567 () Bool)

(assert (=> b!2820073 (= e!1783817 tp!900567)))

(declare-fun b!2820071 () Bool)

(assert (=> b!2820071 (= e!1783817 tp_is_empty!14443)))

(declare-fun b!2820072 () Bool)

(declare-fun tp!900569 () Bool)

(declare-fun tp!900571 () Bool)

(assert (=> b!2820072 (= e!1783817 (and tp!900569 tp!900571))))

(assert (=> b!2819674 (= tp!900427 e!1783817)))

(declare-fun b!2820074 () Bool)

(declare-fun tp!900570 () Bool)

(declare-fun tp!900568 () Bool)

(assert (=> b!2820074 (= e!1783817 (and tp!900570 tp!900568))))

(assert (= (and b!2819674 ((_ is ElementMatch!8335) (regOne!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820071))

(assert (= (and b!2819674 ((_ is Concat!13511) (regOne!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820072))

(assert (= (and b!2819674 ((_ is Star!8335) (regOne!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820073))

(assert (= (and b!2819674 ((_ is Union!8335) (regOne!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820074))

(declare-fun b!2820079 () Bool)

(declare-fun e!1783818 () Bool)

(declare-fun tp!900572 () Bool)

(assert (=> b!2820079 (= e!1783818 tp!900572)))

(declare-fun b!2820077 () Bool)

(assert (=> b!2820077 (= e!1783818 tp_is_empty!14443)))

(declare-fun b!2820078 () Bool)

(declare-fun tp!900574 () Bool)

(declare-fun tp!900576 () Bool)

(assert (=> b!2820078 (= e!1783818 (and tp!900574 tp!900576))))

(assert (=> b!2819674 (= tp!900425 e!1783818)))

(declare-fun b!2820080 () Bool)

(declare-fun tp!900575 () Bool)

(declare-fun tp!900573 () Bool)

(assert (=> b!2820080 (= e!1783818 (and tp!900575 tp!900573))))

(assert (= (and b!2819674 ((_ is ElementMatch!8335) (regTwo!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820077))

(assert (= (and b!2819674 ((_ is Concat!13511) (regTwo!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820078))

(assert (= (and b!2819674 ((_ is Star!8335) (regTwo!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820079))

(assert (= (and b!2819674 ((_ is Union!8335) (regTwo!17183 (regex!4945 (rule!7373 (h!38471 l!6581)))))) b!2820080))

(declare-fun b!2820085 () Bool)

(declare-fun b_free!80593 () Bool)

(declare-fun b_next!81297 () Bool)

(assert (=> b!2820085 (= b_free!80593 (not b_next!81297))))

(declare-fun tp!900581 () Bool)

(declare-fun b_and!205979 () Bool)

(assert (=> b!2820085 (= tp!900581 b_and!205979)))

(declare-fun b_free!80595 () Bool)

(declare-fun b_next!81299 () Bool)

(assert (=> b!2820085 (= b_free!80595 (not b_next!81299))))

(declare-fun t!230416 () Bool)

(declare-fun tb!153785 () Bool)

(assert (=> (and b!2820085 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 (t!230357 rules!4424))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) t!230416) tb!153785))

(declare-fun result!191458 () Bool)

(assert (= result!191458 result!191398))

(assert (=> b!2819491 t!230416))

(declare-fun tb!153787 () Bool)

(declare-fun t!230418 () Bool)

(assert (=> (and b!2820085 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 (t!230357 rules!4424))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) t!230418) tb!153787))

(declare-fun result!191460 () Bool)

(assert (= result!191460 result!191434))

(assert (=> d!818762 t!230418))

(assert (=> b!2819936 t!230418))

(declare-fun tp!900582 () Bool)

(declare-fun b_and!205981 () Bool)

(assert (=> b!2820085 (= tp!900582 (and (=> t!230416 result!191458) (=> t!230418 result!191460) b_and!205981))))

(declare-fun e!1783824 () Bool)

(assert (=> b!2820085 (= e!1783824 (and tp!900581 tp!900582))))

(declare-fun e!1783823 () Bool)

(declare-fun b!2820084 () Bool)

(declare-fun tp!900583 () Bool)

(assert (=> b!2820084 (= e!1783823 (and tp!900583 (inv!44964 (tag!5449 (h!38470 (t!230357 (t!230357 rules!4424))))) (inv!44968 (transformation!4945 (h!38470 (t!230357 (t!230357 rules!4424))))) e!1783824))))

(declare-fun b!2820083 () Bool)

(declare-fun e!1783821 () Bool)

(declare-fun tp!900584 () Bool)

(assert (=> b!2820083 (= e!1783821 (and e!1783823 tp!900584))))

(assert (=> b!2819683 (= tp!900440 e!1783821)))

(assert (= b!2820084 b!2820085))

(assert (= b!2820083 b!2820084))

(assert (= (and b!2819683 ((_ is Cons!33050) (t!230357 (t!230357 rules!4424)))) b!2820083))

(declare-fun m!3250785 () Bool)

(assert (=> b!2820084 m!3250785))

(declare-fun m!3250787 () Bool)

(assert (=> b!2820084 m!3250787))

(declare-fun b!2820092 () Bool)

(declare-fun e!1783827 () Bool)

(declare-fun tp!900587 () Bool)

(assert (=> b!2820092 (= e!1783827 tp!900587)))

(declare-fun b!2820090 () Bool)

(assert (=> b!2820090 (= e!1783827 tp_is_empty!14443)))

(declare-fun b!2820091 () Bool)

(declare-fun tp!900589 () Bool)

(declare-fun tp!900591 () Bool)

(assert (=> b!2820091 (= e!1783827 (and tp!900589 tp!900591))))

(assert (=> b!2819684 (= tp!900439 e!1783827)))

(declare-fun b!2820093 () Bool)

(declare-fun tp!900590 () Bool)

(declare-fun tp!900588 () Bool)

(assert (=> b!2820093 (= e!1783827 (and tp!900590 tp!900588))))

(assert (= (and b!2819684 ((_ is ElementMatch!8335) (regex!4945 (h!38470 (t!230357 rules!4424))))) b!2820090))

(assert (= (and b!2819684 ((_ is Concat!13511) (regex!4945 (h!38470 (t!230357 rules!4424))))) b!2820091))

(assert (= (and b!2819684 ((_ is Star!8335) (regex!4945 (h!38470 (t!230357 rules!4424))))) b!2820092))

(assert (= (and b!2819684 ((_ is Union!8335) (regex!4945 (h!38470 (t!230357 rules!4424))))) b!2820093))

(declare-fun b!2820097 () Bool)

(declare-fun b_free!80597 () Bool)

(declare-fun b_next!81301 () Bool)

(assert (=> b!2820097 (= b_free!80597 (not b_next!81301))))

(declare-fun tp!900594 () Bool)

(declare-fun b_and!205983 () Bool)

(assert (=> b!2820097 (= tp!900594 b_and!205983)))

(declare-fun b_free!80599 () Bool)

(declare-fun b_next!81303 () Bool)

(assert (=> b!2820097 (= b_free!80599 (not b_next!81303))))

(declare-fun t!230420 () Bool)

(declare-fun tb!153789 () Bool)

(assert (=> (and b!2820097 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 (t!230358 l!6581)))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581))))) t!230420) tb!153789))

(declare-fun result!191462 () Bool)

(assert (= result!191462 result!191398))

(assert (=> b!2819491 t!230420))

(declare-fun t!230422 () Bool)

(declare-fun tb!153791 () Bool)

(assert (=> (and b!2820097 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 (t!230358 l!6581)))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581)))))) t!230422) tb!153791))

(declare-fun result!191464 () Bool)

(assert (= result!191464 result!191434))

(assert (=> d!818762 t!230422))

(assert (=> b!2819936 t!230422))

(declare-fun b_and!205985 () Bool)

(declare-fun tp!900595 () Bool)

(assert (=> b!2820097 (= tp!900595 (and (=> t!230420 result!191462) (=> t!230422 result!191464) b_and!205985))))

(declare-fun e!1783832 () Bool)

(declare-fun b!2820094 () Bool)

(declare-fun tp!900593 () Bool)

(declare-fun e!1783829 () Bool)

(assert (=> b!2820094 (= e!1783829 (and (inv!44967 (h!38471 (t!230358 (t!230358 l!6581)))) e!1783832 tp!900593))))

(declare-fun e!1783830 () Bool)

(declare-fun e!1783833 () Bool)

(declare-fun b!2820096 () Bool)

(declare-fun tp!900592 () Bool)

(assert (=> b!2820096 (= e!1783833 (and tp!900592 (inv!44964 (tag!5449 (rule!7373 (h!38471 (t!230358 (t!230358 l!6581)))))) (inv!44968 (transformation!4945 (rule!7373 (h!38471 (t!230358 (t!230358 l!6581)))))) e!1783830))))

(declare-fun b!2820095 () Bool)

(declare-fun tp!900596 () Bool)

(assert (=> b!2820095 (= e!1783832 (and (inv!21 (value!159252 (h!38471 (t!230358 (t!230358 l!6581))))) e!1783833 tp!900596))))

(assert (=> b!2820097 (= e!1783830 (and tp!900594 tp!900595))))

(assert (=> b!2819657 (= tp!900410 e!1783829)))

(assert (= b!2820096 b!2820097))

(assert (= b!2820095 b!2820096))

(assert (= b!2820094 b!2820095))

(assert (= (and b!2819657 ((_ is Cons!33051) (t!230358 (t!230358 l!6581)))) b!2820094))

(declare-fun m!3250795 () Bool)

(assert (=> b!2820094 m!3250795))

(declare-fun m!3250797 () Bool)

(assert (=> b!2820096 m!3250797))

(declare-fun m!3250799 () Bool)

(assert (=> b!2820096 m!3250799))

(declare-fun m!3250801 () Bool)

(assert (=> b!2820095 m!3250801))

(declare-fun b!2820104 () Bool)

(declare-fun e!1783840 () Bool)

(declare-fun tp!900604 () Bool)

(assert (=> b!2820104 (= e!1783840 (and tp_is_empty!14443 tp!900604))))

(assert (=> b!2819690 (= tp!900443 e!1783840)))

(assert (= (and b!2819690 ((_ is Cons!33049) (t!230356 (originalCharacters!5677 (h!38471 l!6581))))) b!2820104))

(declare-fun b_lambda!84375 () Bool)

(assert (= b_lambda!84345 (or d!818682 b_lambda!84375)))

(declare-fun bs!517336 () Bool)

(declare-fun d!818940 () Bool)

(assert (= bs!517336 (and d!818940 d!818682)))

(assert (=> bs!517336 (= (dynLambda!13806 lambda!103481 (h!38471 (t!230358 lt!1006493))) (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (t!230358 lt!1006493))))))

(assert (=> bs!517336 m!3250065))

(assert (=> b!2819759 d!818940))

(declare-fun b_lambda!84377 () Bool)

(assert (= b_lambda!84347 (or (and b!2820085 b_free!80595 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 (t!230357 rules!4424))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2819660 b_free!80583) (and b!2819685 b_free!80587 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2819376 b_free!80571 (= (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2820097 b_free!80599 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 (t!230358 l!6581)))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2819377 b_free!80567 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) b_lambda!84377)))

(declare-fun b_lambda!84379 () Bool)

(assert (= b_lambda!84343 (or b!2819380 b_lambda!84379)))

(declare-fun bs!517337 () Bool)

(declare-fun d!818942 () Bool)

(assert (= bs!517337 (and d!818942 b!2819380)))

(assert (=> bs!517337 (= (dynLambda!13806 lambda!103469 (h!38471 l!6581)) (rulesProduceIndividualToken!2074 Lexer!4534 rules!4424 (h!38471 l!6581)))))

(declare-fun m!3250807 () Bool)

(assert (=> bs!517337 m!3250807))

(assert (=> b!2819718 d!818942))

(declare-fun b_lambda!84381 () Bool)

(assert (= b_lambda!84369 (or (and b!2820085 b_free!80595 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 (t!230357 rules!4424))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2819660 b_free!80583) (and b!2819685 b_free!80587 (= (toChars!6818 (transformation!4945 (h!38470 (t!230357 rules!4424)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2819376 b_free!80571 (= (toChars!6818 (transformation!4945 (h!38470 rules!4424))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2820097 b_free!80599 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 (t!230358 l!6581)))))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) (and b!2819377 b_free!80567 (= (toChars!6818 (transformation!4945 (rule!7373 (h!38471 l!6581)))) (toChars!6818 (transformation!4945 (rule!7373 (h!38471 (t!230358 l!6581))))))) b_lambda!84381)))

(declare-fun b_lambda!84383 () Bool)

(assert (= b_lambda!84363 (or d!818654 b_lambda!84383)))

(declare-fun bs!517338 () Bool)

(declare-fun d!818944 () Bool)

(assert (= bs!517338 (and d!818944 d!818654)))

(assert (=> bs!517338 (= (dynLambda!13806 lambda!103480 (h!38471 l!6581)) (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 l!6581)))))

(assert (=> bs!517338 m!3250023))

(assert (=> b!2819854 d!818944))

(declare-fun b_lambda!84385 () Bool)

(assert (= b_lambda!84367 (or d!818706 b_lambda!84385)))

(declare-fun bs!517339 () Bool)

(declare-fun d!818946 () Bool)

(assert (= bs!517339 (and d!818946 d!818706)))

(assert (=> bs!517339 (= (dynLambda!13806 lambda!103489 (h!38471 lt!1006493)) (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 lt!1006493)))))

(assert (=> bs!517339 m!3249953))

(assert (=> b!2819872 d!818946))

(declare-fun b_lambda!84387 () Bool)

(assert (= b_lambda!84371 (or d!818694 b_lambda!84387)))

(declare-fun bs!517340 () Bool)

(declare-fun d!818948 () Bool)

(assert (= bs!517340 (and d!818948 d!818694)))

(assert (=> bs!517340 (= (dynLambda!13806 lambda!103488 (h!38471 (list!12391 (seqFromList!3236 lt!1006493)))) (rulesProduceIndividualToken!2074 thiss!27755 rules!4424 (h!38471 (list!12391 (seqFromList!3236 lt!1006493)))))))

(assert (=> bs!517340 m!3250653))

(assert (=> b!2819943 d!818948))

(declare-fun b_lambda!84389 () Bool)

(assert (= b_lambda!84365 (or b!2819380 b_lambda!84389)))

(declare-fun bs!517341 () Bool)

(declare-fun d!818950 () Bool)

(assert (= bs!517341 (and d!818950 b!2819380)))

(assert (=> bs!517341 (= (dynLambda!13806 lambda!103469 (h!38471 (t!230358 lt!1006493))) (rulesProduceIndividualToken!2074 Lexer!4534 rules!4424 (h!38471 (t!230358 lt!1006493))))))

(declare-fun m!3250809 () Bool)

(assert (=> bs!517341 m!3250809))

(assert (=> b!2819870 d!818950))

(check-sat (not b!2819909) (not b!2819980) (not b!2819969) (not b!2819983) (not b!2820043) b_and!205971 (not b!2820080) b_and!205979 (not d!818904) (not d!818732) (not b!2819892) (not d!818768) (not b_next!81287) (not b!2819873) (not b!2820072) (not b!2819914) (not d!818840) b_and!205967 (not b!2819955) (not d!818742) (not d!818754) (not b!2819723) (not b_next!81303) (not b!2819985) (not b!2820001) (not b_lambda!84383) (not d!818874) (not b!2819725) (not d!818924) (not b!2820050) (not b!2819938) (not bs!517339) (not b_next!81275) (not b!2819965) (not b!2819742) (not d!818900) (not b!2819716) (not bs!517341) (not bs!517337) (not b!2819922) (not b_lambda!84375) (not b!2819992) (not b!2819984) (not d!818864) (not b!2819911) (not b!2819853) b_and!205935 (not b!2820091) (not b!2819744) (not d!818740) (not b!2819979) (not d!818844) (not b!2819936) (not b!2819944) (not b_lambda!84379) (not b!2819848) (not b!2819978) (not bs!517340) (not d!818752) (not d!818756) (not b!2819932) (not b!2819959) (not b!2819869) (not b!2819863) (not d!818894) (not b!2820048) b_and!205985 (not b!2819883) (not b!2819957) (not b_next!81269) (not d!818920) (not b!2819940) (not b_next!81299) (not d!818906) (not b!2820095) (not b!2819898) (not d!818884) (not b!2819961) (not b!2819868) (not b!2819913) (not d!818922) (not b!2819990) (not b!2820104) (not b!2820052) (not b!2820083) (not b!2819935) (not b!2819931) (not b!2820047) (not b!2819919) (not b!2819937) (not b!2819925) (not b!2819724) (not b!2819974) (not d!818888) (not d!818870) (not b_lambda!84341) (not b!2819743) (not b!2819855) (not b!2819889) b_and!205983 (not b!2819717) (not b!2820094) (not b!2819912) (not d!818762) (not d!818724) (not b!2819971) (not b!2819897) (not b!2819960) (not bs!517338) (not b!2819719) (not d!818912) (not b!2819917) (not b_next!81285) (not d!818890) (not tb!153765) (not b!2819497) (not b_next!81289) (not b_next!81291) (not b!2820074) (not d!818910) (not b!2820093) (not b!2820084) (not d!818736) (not b!2819888) (not b!2819721) (not b_lambda!84377) (not d!818848) (not b!2819850) (not b!2819921) (not b!2820073) (not d!818758) b_and!205939 (not d!818868) (not b!2819748) (not bs!517336) (not d!818928) (not d!818908) (not b!2820079) (not b!2819849) (not b!2819994) (not b_lambda!84389) (not d!818898) (not b_next!81273) (not b!2819899) (not d!818846) (not b_next!81297) (not b!2819956) (not b!2819720) tp_is_empty!14443 (not d!818738) (not b!2819920) (not d!818902) (not b!2819993) (not b_lambda!84385) (not b!2819760) (not b!2819970) (not b_next!81301) (not b!2820096) (not b!2819939) (not b!2820044) (not b!2820046) (not b!2819896) (not b!2819745) (not b!2819861) (not d!818918) (not b!2820042) (not b_lambda!84387) (not b!2820000) (not b!2819722) b_and!205915 (not b!2820002) (not b!2820092) (not d!818842) (not b!2819770) (not b!2819871) b_and!205969 (not b_next!81271) (not b!2819962) (not b!2820064) b_and!205981 b_and!205911 (not b!2819923) (not b_lambda!84339) (not b!2820078) (not b!2819924) (not d!818720) (not b!2820051) b_and!205973 (not b_lambda!84381) (not b!2820057))
(check-sat (not b_next!81303) (not b_next!81275) b_and!205935 b_and!205985 b_and!205983 (not b_next!81285) b_and!205939 (not b_next!81273) (not b_next!81297) (not b_next!81301) b_and!205915 b_and!205979 b_and!205971 b_and!205967 (not b_next!81287) (not b_next!81269) (not b_next!81299) (not b_next!81289) (not b_next!81291) b_and!205981 b_and!205969 (not b_next!81271) b_and!205911 b_and!205973)
