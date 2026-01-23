; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108798 () Bool)

(assert start!108798)

(declare-fun b!1217237 () Bool)

(declare-fun b_free!29337 () Bool)

(declare-fun b_next!30041 () Bool)

(assert (=> b!1217237 (= b_free!29337 (not b_next!30041))))

(declare-fun tp!345792 () Bool)

(declare-fun b_and!82761 () Bool)

(assert (=> b!1217237 (= tp!345792 b_and!82761)))

(declare-fun b_free!29339 () Bool)

(declare-fun b_next!30043 () Bool)

(assert (=> b!1217237 (= b_free!29339 (not b_next!30043))))

(declare-fun tp!345785 () Bool)

(declare-fun b_and!82763 () Bool)

(assert (=> b!1217237 (= tp!345785 b_and!82763)))

(declare-fun b!1217235 () Bool)

(declare-fun b_free!29341 () Bool)

(declare-fun b_next!30045 () Bool)

(assert (=> b!1217235 (= b_free!29341 (not b_next!30045))))

(declare-fun tp!345791 () Bool)

(declare-fun b_and!82765 () Bool)

(assert (=> b!1217235 (= tp!345791 b_and!82765)))

(declare-fun b_free!29343 () Bool)

(declare-fun b_next!30047 () Bool)

(assert (=> b!1217235 (= b_free!29343 (not b_next!30047))))

(declare-fun tp!345787 () Bool)

(declare-fun b_and!82767 () Bool)

(assert (=> b!1217235 (= tp!345787 b_and!82767)))

(declare-datatypes ((List!12508 0))(
  ( (Nil!12450) (Cons!12450 (h!17851 (_ BitVec 16)) (t!113270 List!12508)) )
))
(declare-datatypes ((TokenValue!2213 0))(
  ( (FloatLiteralValue!4426 (text!15936 List!12508)) (TokenValueExt!2212 (__x!8141 Int)) (Broken!11065 (value!69703 List!12508)) (Object!2270) (End!2213) (Def!2213) (Underscore!2213) (Match!2213) (Else!2213) (Error!2213) (Case!2213) (If!2213) (Extends!2213) (Abstract!2213) (Class!2213) (Val!2213) (DelimiterValue!4426 (del!2273 List!12508)) (KeywordValue!2219 (value!69704 List!12508)) (CommentValue!4426 (value!69705 List!12508)) (WhitespaceValue!4426 (value!69706 List!12508)) (IndentationValue!2213 (value!69707 List!12508)) (String!15196) (Int32!2213) (Broken!11066 (value!69708 List!12508)) (Boolean!2214) (Unit!18711) (OperatorValue!2216 (op!2273 List!12508)) (IdentifierValue!4426 (value!69709 List!12508)) (IdentifierValue!4427 (value!69710 List!12508)) (WhitespaceValue!4427 (value!69711 List!12508)) (True!4426) (False!4426) (Broken!11067 (value!69712 List!12508)) (Broken!11068 (value!69713 List!12508)) (True!4427) (RightBrace!2213) (RightBracket!2213) (Colon!2213) (Null!2213) (Comma!2213) (LeftBracket!2213) (False!4427) (LeftBrace!2213) (ImaginaryLiteralValue!2213 (text!15937 List!12508)) (StringLiteralValue!6639 (value!69714 List!12508)) (EOFValue!2213 (value!69715 List!12508)) (IdentValue!2213 (value!69716 List!12508)) (DelimiterValue!4427 (value!69717 List!12508)) (DedentValue!2213 (value!69718 List!12508)) (NewLineValue!2213 (value!69719 List!12508)) (IntegerValue!6639 (value!69720 (_ BitVec 32)) (text!15938 List!12508)) (IntegerValue!6640 (value!69721 Int) (text!15939 List!12508)) (Times!2213) (Or!2213) (Equal!2213) (Minus!2213) (Broken!11069 (value!69722 List!12508)) (And!2213) (Div!2213) (LessEqual!2213) (Mod!2213) (Concat!5628) (Not!2213) (Plus!2213) (SpaceValue!2213 (value!69723 List!12508)) (IntegerValue!6641 (value!69724 Int) (text!15940 List!12508)) (StringLiteralValue!6640 (text!15941 List!12508)) (FloatLiteralValue!4427 (text!15942 List!12508)) (BytesLiteralValue!2213 (value!69725 List!12508)) (CommentValue!4427 (value!69726 List!12508)) (StringLiteralValue!6641 (value!69727 List!12508)) (ErrorTokenValue!2213 (msg!2274 List!12508)) )
))
(declare-datatypes ((C!7148 0))(
  ( (C!7149 (val!4104 Int)) )
))
(declare-datatypes ((List!12509 0))(
  ( (Nil!12451) (Cons!12451 (h!17852 C!7148) (t!113271 List!12509)) )
))
(declare-datatypes ((IArray!8151 0))(
  ( (IArray!8152 (innerList!4133 List!12509)) )
))
(declare-datatypes ((Conc!4073 0))(
  ( (Node!4073 (left!10733 Conc!4073) (right!11063 Conc!4073) (csize!8376 Int) (cheight!4284 Int)) (Leaf!6294 (xs!6784 IArray!8151) (csize!8377 Int)) (Empty!4073) )
))
(declare-datatypes ((BalanceConc!8078 0))(
  ( (BalanceConc!8079 (c!203551 Conc!4073)) )
))
(declare-datatypes ((String!15197 0))(
  ( (String!15198 (value!69728 String)) )
))
(declare-datatypes ((Regex!3415 0))(
  ( (ElementMatch!3415 (c!203552 C!7148)) (Concat!5629 (regOne!7342 Regex!3415) (regTwo!7342 Regex!3415)) (EmptyExpr!3415) (Star!3415 (reg!3744 Regex!3415)) (EmptyLang!3415) (Union!3415 (regOne!7343 Regex!3415) (regTwo!7343 Regex!3415)) )
))
(declare-datatypes ((TokenValueInjection!4122 0))(
  ( (TokenValueInjection!4123 (toValue!3274 Int) (toChars!3133 Int)) )
))
(declare-datatypes ((Rule!4090 0))(
  ( (Rule!4091 (regex!2145 Regex!3415) (tag!2407 String!15197) (isSeparator!2145 Bool) (transformation!2145 TokenValueInjection!4122)) )
))
(declare-datatypes ((Token!3952 0))(
  ( (Token!3953 (value!69729 TokenValue!2213) (rule!3570 Rule!4090) (size!9835 Int) (originalCharacters!2699 List!12509)) )
))
(declare-datatypes ((List!12510 0))(
  ( (Nil!12452) (Cons!12452 (h!17853 Token!3952) (t!113272 List!12510)) )
))
(declare-fun tokens!556 () List!12510)

(declare-fun b!1217231 () Bool)

(declare-fun e!781364 () Bool)

(declare-fun tp!345786 () Bool)

(declare-fun e!781365 () Bool)

(declare-fun inv!16639 (String!15197) Bool)

(declare-fun inv!16642 (TokenValueInjection!4122) Bool)

(assert (=> b!1217231 (= e!781365 (and tp!345786 (inv!16639 (tag!2407 (rule!3570 (h!17853 tokens!556)))) (inv!16642 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) e!781364))))

(declare-fun b!1217232 () Bool)

(declare-fun res!547269 () Bool)

(declare-fun e!781363 () Bool)

(assert (=> b!1217232 (=> (not res!547269) (not e!781363))))

(declare-datatypes ((LexerInterface!1840 0))(
  ( (LexerInterfaceExt!1837 (__x!8142 Int)) (Lexer!1838) )
))
(declare-fun thiss!20528 () LexerInterface!1840)

(declare-fun input!2346 () List!12509)

(declare-datatypes ((List!12511 0))(
  ( (Nil!12453) (Cons!12453 (h!17854 Rule!4090) (t!113273 List!12511)) )
))
(declare-fun rules!2728 () List!12511)

(declare-datatypes ((tuple2!12312 0))(
  ( (tuple2!12313 (_1!7003 List!12510) (_2!7003 List!12509)) )
))
(declare-fun lexList!470 (LexerInterface!1840 List!12511 List!12509) tuple2!12312)

(assert (=> b!1217232 (= res!547269 (= (_1!7003 (lexList!470 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1217233 () Bool)

(declare-fun e!781366 () Bool)

(declare-fun tp!345789 () Bool)

(declare-fun inv!21 (TokenValue!2213) Bool)

(assert (=> b!1217233 (= e!781366 (and (inv!21 (value!69729 (h!17853 tokens!556))) e!781365 tp!345789))))

(declare-fun res!547266 () Bool)

(assert (=> start!108798 (=> (not res!547266) (not e!781363))))

(get-info :version)

(assert (=> start!108798 (= res!547266 ((_ is Lexer!1838) thiss!20528))))

(assert (=> start!108798 e!781363))

(assert (=> start!108798 true))

(declare-fun e!781356 () Bool)

(assert (=> start!108798 e!781356))

(declare-fun e!781355 () Bool)

(assert (=> start!108798 e!781355))

(declare-fun e!781359 () Bool)

(assert (=> start!108798 e!781359))

(declare-fun b!1217234 () Bool)

(declare-datatypes ((IArray!8153 0))(
  ( (IArray!8154 (innerList!4134 List!12510)) )
))
(declare-datatypes ((Conc!4074 0))(
  ( (Node!4074 (left!10734 Conc!4074) (right!11064 Conc!4074) (csize!8378 Int) (cheight!4285 Int)) (Leaf!6295 (xs!6785 IArray!8153) (csize!8379 Int)) (Empty!4074) )
))
(declare-datatypes ((BalanceConc!8080 0))(
  ( (BalanceConc!8081 (c!203553 Conc!4074)) )
))
(declare-fun rulesProduceEachTokenIndividually!774 (LexerInterface!1840 List!12511 BalanceConc!8080) Bool)

(declare-fun seqFromList!1555 (List!12510) BalanceConc!8080)

(assert (=> b!1217234 (= e!781363 (not (rulesProduceEachTokenIndividually!774 thiss!20528 rules!2728 (seqFromList!1555 tokens!556))))))

(declare-fun e!781362 () Bool)

(assert (=> b!1217235 (= e!781362 (and tp!345791 tp!345787))))

(declare-fun e!781358 () Bool)

(declare-fun b!1217236 () Bool)

(declare-fun tp!345793 () Bool)

(assert (=> b!1217236 (= e!781358 (and tp!345793 (inv!16639 (tag!2407 (h!17854 rules!2728))) (inv!16642 (transformation!2145 (h!17854 rules!2728))) e!781362))))

(assert (=> b!1217237 (= e!781364 (and tp!345792 tp!345785))))

(declare-fun b!1217238 () Bool)

(declare-fun res!547267 () Bool)

(assert (=> b!1217238 (=> (not res!547267) (not e!781363))))

(declare-fun rulesInvariant!1714 (LexerInterface!1840 List!12511) Bool)

(assert (=> b!1217238 (= res!547267 (rulesInvariant!1714 thiss!20528 rules!2728))))

(declare-fun tp!345784 () Bool)

(declare-fun b!1217239 () Bool)

(declare-fun inv!16643 (Token!3952) Bool)

(assert (=> b!1217239 (= e!781359 (and (inv!16643 (h!17853 tokens!556)) e!781366 tp!345784))))

(declare-fun b!1217240 () Bool)

(declare-fun res!547265 () Bool)

(assert (=> b!1217240 (=> (not res!547265) (not e!781363))))

(assert (=> b!1217240 (= res!547265 ((_ is Nil!12452) tokens!556))))

(declare-fun b!1217241 () Bool)

(declare-fun tp!345790 () Bool)

(assert (=> b!1217241 (= e!781356 (and e!781358 tp!345790))))

(declare-fun b!1217242 () Bool)

(declare-fun tp_is_empty!6351 () Bool)

(declare-fun tp!345788 () Bool)

(assert (=> b!1217242 (= e!781355 (and tp_is_empty!6351 tp!345788))))

(declare-fun b!1217243 () Bool)

(declare-fun res!547268 () Bool)

(assert (=> b!1217243 (=> (not res!547268) (not e!781363))))

(declare-fun isEmpty!7400 (List!12511) Bool)

(assert (=> b!1217243 (= res!547268 (not (isEmpty!7400 rules!2728)))))

(assert (= (and start!108798 res!547266) b!1217243))

(assert (= (and b!1217243 res!547268) b!1217238))

(assert (= (and b!1217238 res!547267) b!1217232))

(assert (= (and b!1217232 res!547269) b!1217240))

(assert (= (and b!1217240 res!547265) b!1217234))

(assert (= b!1217236 b!1217235))

(assert (= b!1217241 b!1217236))

(assert (= (and start!108798 ((_ is Cons!12453) rules!2728)) b!1217241))

(assert (= (and start!108798 ((_ is Cons!12451) input!2346)) b!1217242))

(assert (= b!1217231 b!1217237))

(assert (= b!1217233 b!1217231))

(assert (= b!1217239 b!1217233))

(assert (= (and start!108798 ((_ is Cons!12452) tokens!556)) b!1217239))

(declare-fun m!1391297 () Bool)

(assert (=> b!1217239 m!1391297))

(declare-fun m!1391299 () Bool)

(assert (=> b!1217243 m!1391299))

(declare-fun m!1391301 () Bool)

(assert (=> b!1217232 m!1391301))

(declare-fun m!1391303 () Bool)

(assert (=> b!1217238 m!1391303))

(declare-fun m!1391305 () Bool)

(assert (=> b!1217236 m!1391305))

(declare-fun m!1391307 () Bool)

(assert (=> b!1217236 m!1391307))

(declare-fun m!1391309 () Bool)

(assert (=> b!1217234 m!1391309))

(assert (=> b!1217234 m!1391309))

(declare-fun m!1391311 () Bool)

(assert (=> b!1217234 m!1391311))

(declare-fun m!1391313 () Bool)

(assert (=> b!1217233 m!1391313))

(declare-fun m!1391315 () Bool)

(assert (=> b!1217231 m!1391315))

(declare-fun m!1391317 () Bool)

(assert (=> b!1217231 m!1391317))

(check-sat b_and!82767 (not b_next!30043) (not b!1217242) (not b!1217236) (not b!1217239) b_and!82765 (not b_next!30041) (not b!1217241) (not b!1217233) (not b!1217238) (not b_next!30047) (not b!1217232) (not b!1217243) b_and!82761 (not b!1217231) (not b!1217234) (not b_next!30045) b_and!82763 tp_is_empty!6351)
(check-sat b_and!82767 (not b_next!30043) b_and!82761 (not b_next!30045) b_and!82765 (not b_next!30041) b_and!82763 (not b_next!30047))
(get-model)

(declare-fun d!347515 () Bool)

(assert (=> d!347515 (= (inv!16639 (tag!2407 (h!17854 rules!2728))) (= (mod (str.len (value!69728 (tag!2407 (h!17854 rules!2728)))) 2) 0))))

(assert (=> b!1217236 d!347515))

(declare-fun d!347517 () Bool)

(declare-fun res!547272 () Bool)

(declare-fun e!781369 () Bool)

(assert (=> d!347517 (=> (not res!547272) (not e!781369))))

(declare-fun semiInverseModEq!782 (Int Int) Bool)

(assert (=> d!347517 (= res!547272 (semiInverseModEq!782 (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toValue!3274 (transformation!2145 (h!17854 rules!2728)))))))

(assert (=> d!347517 (= (inv!16642 (transformation!2145 (h!17854 rules!2728))) e!781369)))

(declare-fun b!1217246 () Bool)

(declare-fun equivClasses!749 (Int Int) Bool)

(assert (=> b!1217246 (= e!781369 (equivClasses!749 (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toValue!3274 (transformation!2145 (h!17854 rules!2728)))))))

(assert (= (and d!347517 res!547272) b!1217246))

(declare-fun m!1391319 () Bool)

(assert (=> d!347517 m!1391319))

(declare-fun m!1391321 () Bool)

(assert (=> b!1217246 m!1391321))

(assert (=> b!1217236 d!347517))

(declare-fun d!347521 () Bool)

(assert (=> d!347521 (= (inv!16639 (tag!2407 (rule!3570 (h!17853 tokens!556)))) (= (mod (str.len (value!69728 (tag!2407 (rule!3570 (h!17853 tokens!556))))) 2) 0))))

(assert (=> b!1217231 d!347521))

(declare-fun d!347523 () Bool)

(declare-fun res!547273 () Bool)

(declare-fun e!781370 () Bool)

(assert (=> d!347523 (=> (not res!547273) (not e!781370))))

(assert (=> d!347523 (= res!547273 (semiInverseModEq!782 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556))))))))

(assert (=> d!347523 (= (inv!16642 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) e!781370)))

(declare-fun b!1217247 () Bool)

(assert (=> b!1217247 (= e!781370 (equivClasses!749 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556))))))))

(assert (= (and d!347523 res!547273) b!1217247))

(declare-fun m!1391323 () Bool)

(assert (=> d!347523 m!1391323))

(declare-fun m!1391325 () Bool)

(assert (=> b!1217247 m!1391325))

(assert (=> b!1217231 d!347523))

(declare-fun b!1217272 () Bool)

(declare-fun e!781386 () Bool)

(declare-fun inv!15 (TokenValue!2213) Bool)

(assert (=> b!1217272 (= e!781386 (inv!15 (value!69729 (h!17853 tokens!556))))))

(declare-fun b!1217273 () Bool)

(declare-fun e!781388 () Bool)

(declare-fun e!781387 () Bool)

(assert (=> b!1217273 (= e!781388 e!781387)))

(declare-fun c!203559 () Bool)

(assert (=> b!1217273 (= c!203559 ((_ is IntegerValue!6640) (value!69729 (h!17853 tokens!556))))))

(declare-fun b!1217274 () Bool)

(declare-fun inv!17 (TokenValue!2213) Bool)

(assert (=> b!1217274 (= e!781387 (inv!17 (value!69729 (h!17853 tokens!556))))))

(declare-fun b!1217275 () Bool)

(declare-fun inv!16 (TokenValue!2213) Bool)

(assert (=> b!1217275 (= e!781388 (inv!16 (value!69729 (h!17853 tokens!556))))))

(declare-fun d!347527 () Bool)

(declare-fun c!203558 () Bool)

(assert (=> d!347527 (= c!203558 ((_ is IntegerValue!6639) (value!69729 (h!17853 tokens!556))))))

(assert (=> d!347527 (= (inv!21 (value!69729 (h!17853 tokens!556))) e!781388)))

(declare-fun b!1217276 () Bool)

(declare-fun res!547285 () Bool)

(assert (=> b!1217276 (=> res!547285 e!781386)))

(assert (=> b!1217276 (= res!547285 (not ((_ is IntegerValue!6641) (value!69729 (h!17853 tokens!556)))))))

(assert (=> b!1217276 (= e!781387 e!781386)))

(assert (= (and d!347527 c!203558) b!1217275))

(assert (= (and d!347527 (not c!203558)) b!1217273))

(assert (= (and b!1217273 c!203559) b!1217274))

(assert (= (and b!1217273 (not c!203559)) b!1217276))

(assert (= (and b!1217276 (not res!547285)) b!1217272))

(declare-fun m!1391343 () Bool)

(assert (=> b!1217272 m!1391343))

(declare-fun m!1391345 () Bool)

(assert (=> b!1217274 m!1391345))

(declare-fun m!1391347 () Bool)

(assert (=> b!1217275 m!1391347))

(assert (=> b!1217233 d!347527))

(declare-fun b!1217389 () Bool)

(declare-fun e!781472 () Bool)

(assert (=> b!1217389 (= e!781472 true)))

(declare-fun b!1217388 () Bool)

(declare-fun e!781471 () Bool)

(assert (=> b!1217388 (= e!781471 e!781472)))

(declare-fun b!1217387 () Bool)

(declare-fun e!781470 () Bool)

(assert (=> b!1217387 (= e!781470 e!781471)))

(declare-fun d!347533 () Bool)

(assert (=> d!347533 e!781470))

(assert (= b!1217388 b!1217389))

(assert (= b!1217387 b!1217388))

(assert (= (and d!347533 ((_ is Cons!12453) rules!2728)) b!1217387))

(declare-fun order!7553 () Int)

(declare-fun lambda!49146 () Int)

(declare-fun order!7555 () Int)

(declare-fun dynLambda!5428 (Int Int) Int)

(declare-fun dynLambda!5429 (Int Int) Int)

(assert (=> b!1217389 (< (dynLambda!5428 order!7553 (toValue!3274 (transformation!2145 (h!17854 rules!2728)))) (dynLambda!5429 order!7555 lambda!49146))))

(declare-fun order!7557 () Int)

(declare-fun dynLambda!5430 (Int Int) Int)

(assert (=> b!1217389 (< (dynLambda!5430 order!7557 (toChars!3133 (transformation!2145 (h!17854 rules!2728)))) (dynLambda!5429 order!7555 lambda!49146))))

(assert (=> d!347533 true))

(declare-fun e!781463 () Bool)

(assert (=> d!347533 e!781463))

(declare-fun res!547301 () Bool)

(assert (=> d!347533 (=> (not res!547301) (not e!781463))))

(declare-fun lt!415934 () Bool)

(declare-fun forall!3178 (List!12510 Int) Bool)

(declare-fun list!4588 (BalanceConc!8080) List!12510)

(assert (=> d!347533 (= res!547301 (= lt!415934 (forall!3178 (list!4588 (seqFromList!1555 tokens!556)) lambda!49146)))))

(declare-fun forall!3179 (BalanceConc!8080 Int) Bool)

(assert (=> d!347533 (= lt!415934 (forall!3179 (seqFromList!1555 tokens!556) lambda!49146))))

(assert (=> d!347533 (not (isEmpty!7400 rules!2728))))

(assert (=> d!347533 (= (rulesProduceEachTokenIndividually!774 thiss!20528 rules!2728 (seqFromList!1555 tokens!556)) lt!415934)))

(declare-fun b!1217378 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!660 (LexerInterface!1840 List!12511 List!12510) Bool)

(assert (=> b!1217378 (= e!781463 (= lt!415934 (rulesProduceEachTokenIndividuallyList!660 thiss!20528 rules!2728 (list!4588 (seqFromList!1555 tokens!556)))))))

(assert (= (and d!347533 res!547301) b!1217378))

(assert (=> d!347533 m!1391309))

(declare-fun m!1391397 () Bool)

(assert (=> d!347533 m!1391397))

(assert (=> d!347533 m!1391397))

(declare-fun m!1391399 () Bool)

(assert (=> d!347533 m!1391399))

(assert (=> d!347533 m!1391309))

(declare-fun m!1391401 () Bool)

(assert (=> d!347533 m!1391401))

(assert (=> d!347533 m!1391299))

(assert (=> b!1217378 m!1391309))

(assert (=> b!1217378 m!1391397))

(assert (=> b!1217378 m!1391397))

(declare-fun m!1391403 () Bool)

(assert (=> b!1217378 m!1391403))

(assert (=> b!1217234 d!347533))

(declare-fun d!347549 () Bool)

(declare-fun fromListB!688 (List!12510) BalanceConc!8080)

(assert (=> d!347549 (= (seqFromList!1555 tokens!556) (fromListB!688 tokens!556))))

(declare-fun bs!288822 () Bool)

(assert (= bs!288822 d!347549))

(declare-fun m!1391405 () Bool)

(assert (=> bs!288822 m!1391405))

(assert (=> b!1217234 d!347549))

(declare-fun d!347551 () Bool)

(declare-fun res!547306 () Bool)

(declare-fun e!781475 () Bool)

(assert (=> d!347551 (=> (not res!547306) (not e!781475))))

(declare-fun isEmpty!7403 (List!12509) Bool)

(assert (=> d!347551 (= res!547306 (not (isEmpty!7403 (originalCharacters!2699 (h!17853 tokens!556)))))))

(assert (=> d!347551 (= (inv!16643 (h!17853 tokens!556)) e!781475)))

(declare-fun b!1217396 () Bool)

(declare-fun res!547307 () Bool)

(assert (=> b!1217396 (=> (not res!547307) (not e!781475))))

(declare-fun list!4589 (BalanceConc!8078) List!12509)

(declare-fun dynLambda!5431 (Int TokenValue!2213) BalanceConc!8078)

(assert (=> b!1217396 (= res!547307 (= (originalCharacters!2699 (h!17853 tokens!556)) (list!4589 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))))))

(declare-fun b!1217397 () Bool)

(declare-fun size!9838 (List!12509) Int)

(assert (=> b!1217397 (= e!781475 (= (size!9835 (h!17853 tokens!556)) (size!9838 (originalCharacters!2699 (h!17853 tokens!556)))))))

(assert (= (and d!347551 res!547306) b!1217396))

(assert (= (and b!1217396 res!547307) b!1217397))

(declare-fun b_lambda!35899 () Bool)

(assert (=> (not b_lambda!35899) (not b!1217396)))

(declare-fun t!113292 () Bool)

(declare-fun tb!66857 () Bool)

(assert (=> (and b!1217237 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) t!113292) tb!66857))

(declare-fun b!1217402 () Bool)

(declare-fun e!781478 () Bool)

(declare-fun tp!345850 () Bool)

(declare-fun inv!16646 (Conc!4073) Bool)

(assert (=> b!1217402 (= e!781478 (and (inv!16646 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))) tp!345850))))

(declare-fun result!80946 () Bool)

(declare-fun inv!16647 (BalanceConc!8078) Bool)

(assert (=> tb!66857 (= result!80946 (and (inv!16647 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))) e!781478))))

(assert (= tb!66857 b!1217402))

(declare-fun m!1391407 () Bool)

(assert (=> b!1217402 m!1391407))

(declare-fun m!1391409 () Bool)

(assert (=> tb!66857 m!1391409))

(assert (=> b!1217396 t!113292))

(declare-fun b_and!82781 () Bool)

(assert (= b_and!82763 (and (=> t!113292 result!80946) b_and!82781)))

(declare-fun t!113294 () Bool)

(declare-fun tb!66859 () Bool)

(assert (=> (and b!1217235 (= (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) t!113294) tb!66859))

(declare-fun result!80950 () Bool)

(assert (= result!80950 result!80946))

(assert (=> b!1217396 t!113294))

(declare-fun b_and!82783 () Bool)

(assert (= b_and!82767 (and (=> t!113294 result!80950) b_and!82783)))

(declare-fun m!1391411 () Bool)

(assert (=> d!347551 m!1391411))

(declare-fun m!1391413 () Bool)

(assert (=> b!1217396 m!1391413))

(assert (=> b!1217396 m!1391413))

(declare-fun m!1391415 () Bool)

(assert (=> b!1217396 m!1391415))

(declare-fun m!1391417 () Bool)

(assert (=> b!1217397 m!1391417))

(assert (=> b!1217239 d!347551))

(declare-fun b!1217413 () Bool)

(declare-fun e!781486 () Bool)

(declare-fun lt!415941 () tuple2!12312)

(assert (=> b!1217413 (= e!781486 (= (_2!7003 lt!415941) input!2346))))

(declare-fun b!1217414 () Bool)

(declare-fun e!781487 () Bool)

(declare-fun isEmpty!7404 (List!12510) Bool)

(assert (=> b!1217414 (= e!781487 (not (isEmpty!7404 (_1!7003 lt!415941))))))

(declare-fun b!1217415 () Bool)

(assert (=> b!1217415 (= e!781486 e!781487)))

(declare-fun res!547310 () Bool)

(assert (=> b!1217415 (= res!547310 (< (size!9838 (_2!7003 lt!415941)) (size!9838 input!2346)))))

(assert (=> b!1217415 (=> (not res!547310) (not e!781487))))

(declare-fun d!347553 () Bool)

(assert (=> d!347553 e!781486))

(declare-fun c!203577 () Bool)

(declare-fun size!9839 (List!12510) Int)

(assert (=> d!347553 (= c!203577 (> (size!9839 (_1!7003 lt!415941)) 0))))

(declare-fun e!781485 () tuple2!12312)

(assert (=> d!347553 (= lt!415941 e!781485)))

(declare-fun c!203576 () Bool)

(declare-datatypes ((tuple2!12316 0))(
  ( (tuple2!12317 (_1!7005 Token!3952) (_2!7005 List!12509)) )
))
(declare-datatypes ((Option!2507 0))(
  ( (None!2506) (Some!2506 (v!20637 tuple2!12316)) )
))
(declare-fun lt!415943 () Option!2507)

(assert (=> d!347553 (= c!203576 ((_ is Some!2506) lt!415943))))

(declare-fun maxPrefix!962 (LexerInterface!1840 List!12511 List!12509) Option!2507)

(assert (=> d!347553 (= lt!415943 (maxPrefix!962 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347553 (= (lexList!470 thiss!20528 rules!2728 input!2346) lt!415941)))

(declare-fun b!1217416 () Bool)

(declare-fun lt!415942 () tuple2!12312)

(assert (=> b!1217416 (= e!781485 (tuple2!12313 (Cons!12452 (_1!7005 (v!20637 lt!415943)) (_1!7003 lt!415942)) (_2!7003 lt!415942)))))

(assert (=> b!1217416 (= lt!415942 (lexList!470 thiss!20528 rules!2728 (_2!7005 (v!20637 lt!415943))))))

(declare-fun b!1217417 () Bool)

(assert (=> b!1217417 (= e!781485 (tuple2!12313 Nil!12452 input!2346))))

(assert (= (and d!347553 c!203576) b!1217416))

(assert (= (and d!347553 (not c!203576)) b!1217417))

(assert (= (and d!347553 c!203577) b!1217415))

(assert (= (and d!347553 (not c!203577)) b!1217413))

(assert (= (and b!1217415 res!547310) b!1217414))

(declare-fun m!1391419 () Bool)

(assert (=> b!1217414 m!1391419))

(declare-fun m!1391421 () Bool)

(assert (=> b!1217415 m!1391421))

(declare-fun m!1391423 () Bool)

(assert (=> b!1217415 m!1391423))

(declare-fun m!1391425 () Bool)

(assert (=> d!347553 m!1391425))

(declare-fun m!1391427 () Bool)

(assert (=> d!347553 m!1391427))

(declare-fun m!1391429 () Bool)

(assert (=> b!1217416 m!1391429))

(assert (=> b!1217232 d!347553))

(declare-fun d!347555 () Bool)

(declare-fun res!547313 () Bool)

(declare-fun e!781490 () Bool)

(assert (=> d!347555 (=> (not res!547313) (not e!781490))))

(declare-fun rulesValid!770 (LexerInterface!1840 List!12511) Bool)

(assert (=> d!347555 (= res!547313 (rulesValid!770 thiss!20528 rules!2728))))

(assert (=> d!347555 (= (rulesInvariant!1714 thiss!20528 rules!2728) e!781490)))

(declare-fun b!1217420 () Bool)

(declare-datatypes ((List!12513 0))(
  ( (Nil!12455) (Cons!12455 (h!17856 String!15197) (t!113299 List!12513)) )
))
(declare-fun noDuplicateTag!770 (LexerInterface!1840 List!12511 List!12513) Bool)

(assert (=> b!1217420 (= e!781490 (noDuplicateTag!770 thiss!20528 rules!2728 Nil!12455))))

(assert (= (and d!347555 res!547313) b!1217420))

(declare-fun m!1391431 () Bool)

(assert (=> d!347555 m!1391431))

(declare-fun m!1391433 () Bool)

(assert (=> b!1217420 m!1391433))

(assert (=> b!1217238 d!347555))

(declare-fun d!347557 () Bool)

(assert (=> d!347557 (= (isEmpty!7400 rules!2728) ((_ is Nil!12453) rules!2728))))

(assert (=> b!1217243 d!347557))

(declare-fun b!1217433 () Bool)

(declare-fun e!781493 () Bool)

(declare-fun tp!345861 () Bool)

(assert (=> b!1217433 (= e!781493 tp!345861)))

(declare-fun b!1217432 () Bool)

(declare-fun tp!345865 () Bool)

(declare-fun tp!345864 () Bool)

(assert (=> b!1217432 (= e!781493 (and tp!345865 tp!345864))))

(declare-fun b!1217431 () Bool)

(assert (=> b!1217431 (= e!781493 tp_is_empty!6351)))

(assert (=> b!1217236 (= tp!345793 e!781493)))

(declare-fun b!1217434 () Bool)

(declare-fun tp!345862 () Bool)

(declare-fun tp!345863 () Bool)

(assert (=> b!1217434 (= e!781493 (and tp!345862 tp!345863))))

(assert (= (and b!1217236 ((_ is ElementMatch!3415) (regex!2145 (h!17854 rules!2728)))) b!1217431))

(assert (= (and b!1217236 ((_ is Concat!5629) (regex!2145 (h!17854 rules!2728)))) b!1217432))

(assert (= (and b!1217236 ((_ is Star!3415) (regex!2145 (h!17854 rules!2728)))) b!1217433))

(assert (= (and b!1217236 ((_ is Union!3415) (regex!2145 (h!17854 rules!2728)))) b!1217434))

(declare-fun b!1217445 () Bool)

(declare-fun b_free!29353 () Bool)

(declare-fun b_next!30057 () Bool)

(assert (=> b!1217445 (= b_free!29353 (not b_next!30057))))

(declare-fun tp!345876 () Bool)

(declare-fun b_and!82785 () Bool)

(assert (=> b!1217445 (= tp!345876 b_and!82785)))

(declare-fun b_free!29355 () Bool)

(declare-fun b_next!30059 () Bool)

(assert (=> b!1217445 (= b_free!29355 (not b_next!30059))))

(declare-fun t!113296 () Bool)

(declare-fun tb!66861 () Bool)

(assert (=> (and b!1217445 (= (toChars!3133 (transformation!2145 (h!17854 (t!113273 rules!2728)))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) t!113296) tb!66861))

(declare-fun result!80956 () Bool)

(assert (= result!80956 result!80946))

(assert (=> b!1217396 t!113296))

(declare-fun b_and!82787 () Bool)

(declare-fun tp!345875 () Bool)

(assert (=> b!1217445 (= tp!345875 (and (=> t!113296 result!80956) b_and!82787))))

(declare-fun e!781502 () Bool)

(assert (=> b!1217445 (= e!781502 (and tp!345876 tp!345875))))

(declare-fun tp!345874 () Bool)

(declare-fun e!781504 () Bool)

(declare-fun b!1217444 () Bool)

(assert (=> b!1217444 (= e!781504 (and tp!345874 (inv!16639 (tag!2407 (h!17854 (t!113273 rules!2728)))) (inv!16642 (transformation!2145 (h!17854 (t!113273 rules!2728)))) e!781502))))

(declare-fun b!1217443 () Bool)

(declare-fun e!781503 () Bool)

(declare-fun tp!345877 () Bool)

(assert (=> b!1217443 (= e!781503 (and e!781504 tp!345877))))

(assert (=> b!1217241 (= tp!345790 e!781503)))

(assert (= b!1217444 b!1217445))

(assert (= b!1217443 b!1217444))

(assert (= (and b!1217241 ((_ is Cons!12453) (t!113273 rules!2728))) b!1217443))

(declare-fun m!1391435 () Bool)

(assert (=> b!1217444 m!1391435))

(declare-fun m!1391437 () Bool)

(assert (=> b!1217444 m!1391437))

(declare-fun b!1217450 () Bool)

(declare-fun e!781508 () Bool)

(declare-fun tp!345880 () Bool)

(assert (=> b!1217450 (= e!781508 (and tp_is_empty!6351 tp!345880))))

(assert (=> b!1217242 (= tp!345788 e!781508)))

(assert (= (and b!1217242 ((_ is Cons!12451) (t!113271 input!2346))) b!1217450))

(declare-fun b!1217453 () Bool)

(declare-fun e!781509 () Bool)

(declare-fun tp!345881 () Bool)

(assert (=> b!1217453 (= e!781509 tp!345881)))

(declare-fun b!1217452 () Bool)

(declare-fun tp!345885 () Bool)

(declare-fun tp!345884 () Bool)

(assert (=> b!1217452 (= e!781509 (and tp!345885 tp!345884))))

(declare-fun b!1217451 () Bool)

(assert (=> b!1217451 (= e!781509 tp_is_empty!6351)))

(assert (=> b!1217231 (= tp!345786 e!781509)))

(declare-fun b!1217454 () Bool)

(declare-fun tp!345882 () Bool)

(declare-fun tp!345883 () Bool)

(assert (=> b!1217454 (= e!781509 (and tp!345882 tp!345883))))

(assert (= (and b!1217231 ((_ is ElementMatch!3415) (regex!2145 (rule!3570 (h!17853 tokens!556))))) b!1217451))

(assert (= (and b!1217231 ((_ is Concat!5629) (regex!2145 (rule!3570 (h!17853 tokens!556))))) b!1217452))

(assert (= (and b!1217231 ((_ is Star!3415) (regex!2145 (rule!3570 (h!17853 tokens!556))))) b!1217453))

(assert (= (and b!1217231 ((_ is Union!3415) (regex!2145 (rule!3570 (h!17853 tokens!556))))) b!1217454))

(declare-fun b!1217455 () Bool)

(declare-fun e!781510 () Bool)

(declare-fun tp!345886 () Bool)

(assert (=> b!1217455 (= e!781510 (and tp_is_empty!6351 tp!345886))))

(assert (=> b!1217233 (= tp!345789 e!781510)))

(assert (= (and b!1217233 ((_ is Cons!12451) (originalCharacters!2699 (h!17853 tokens!556)))) b!1217455))

(declare-fun b!1217469 () Bool)

(declare-fun b_free!29357 () Bool)

(declare-fun b_next!30061 () Bool)

(assert (=> b!1217469 (= b_free!29357 (not b_next!30061))))

(declare-fun tp!345900 () Bool)

(declare-fun b_and!82789 () Bool)

(assert (=> b!1217469 (= tp!345900 b_and!82789)))

(declare-fun b_free!29359 () Bool)

(declare-fun b_next!30063 () Bool)

(assert (=> b!1217469 (= b_free!29359 (not b_next!30063))))

(declare-fun t!113298 () Bool)

(declare-fun tb!66863 () Bool)

(assert (=> (and b!1217469 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) t!113298) tb!66863))

(declare-fun result!80962 () Bool)

(assert (= result!80962 result!80946))

(assert (=> b!1217396 t!113298))

(declare-fun tp!345898 () Bool)

(declare-fun b_and!82791 () Bool)

(assert (=> b!1217469 (= tp!345898 (and (=> t!113298 result!80962) b_and!82791))))

(declare-fun tp!345899 () Bool)

(declare-fun b!1217468 () Bool)

(declare-fun e!781526 () Bool)

(declare-fun e!781528 () Bool)

(assert (=> b!1217468 (= e!781528 (and tp!345899 (inv!16639 (tag!2407 (rule!3570 (h!17853 (t!113272 tokens!556))))) (inv!16642 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) e!781526))))

(declare-fun e!781524 () Bool)

(declare-fun b!1217466 () Bool)

(declare-fun e!781525 () Bool)

(declare-fun tp!345901 () Bool)

(assert (=> b!1217466 (= e!781524 (and (inv!16643 (h!17853 (t!113272 tokens!556))) e!781525 tp!345901))))

(declare-fun b!1217467 () Bool)

(declare-fun tp!345897 () Bool)

(assert (=> b!1217467 (= e!781525 (and (inv!21 (value!69729 (h!17853 (t!113272 tokens!556)))) e!781528 tp!345897))))

(assert (=> b!1217469 (= e!781526 (and tp!345900 tp!345898))))

(assert (=> b!1217239 (= tp!345784 e!781524)))

(assert (= b!1217468 b!1217469))

(assert (= b!1217467 b!1217468))

(assert (= b!1217466 b!1217467))

(assert (= (and b!1217239 ((_ is Cons!12452) (t!113272 tokens!556))) b!1217466))

(declare-fun m!1391439 () Bool)

(assert (=> b!1217468 m!1391439))

(declare-fun m!1391441 () Bool)

(assert (=> b!1217468 m!1391441))

(declare-fun m!1391443 () Bool)

(assert (=> b!1217466 m!1391443))

(declare-fun m!1391445 () Bool)

(assert (=> b!1217467 m!1391445))

(declare-fun b_lambda!35901 () Bool)

(assert (= b_lambda!35899 (or (and b!1217237 b_free!29339) (and b!1217235 b_free!29343 (= (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))))) (and b!1217445 b_free!29355 (= (toChars!3133 (transformation!2145 (h!17854 (t!113273 rules!2728)))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))))) (and b!1217469 b_free!29359 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))))) b_lambda!35901)))

(check-sat (not b!1217433) (not b!1217402) b_and!82789 b_and!82765 b_and!82783 (not b!1217468) (not b_next!30047) (not b!1217416) (not b!1217274) (not b!1217450) (not b_next!30057) (not b!1217378) (not d!347523) (not b!1217467) b_and!82785 (not d!347553) (not b!1217452) (not b!1217454) (not b!1217275) (not b_next!30061) (not b!1217444) (not b_next!30043) (not d!347533) b_and!82787 b_and!82761 (not d!347551) (not b!1217415) (not b!1217420) (not b!1217453) (not b!1217432) (not b!1217387) (not b!1217246) (not b!1217247) (not b!1217414) b_and!82781 (not b!1217466) (not b!1217397) (not b_next!30063) (not b!1217455) (not b_lambda!35901) (not b_next!30045) (not b!1217434) (not b!1217396) (not b_next!30041) b_and!82791 (not b!1217443) (not d!347517) (not tb!66857) (not b_next!30059) tp_is_empty!6351 (not d!347555) (not d!347549) (not b!1217272))
(check-sat (not b_next!30057) b_and!82785 (not b_next!30061) (not b_next!30043) b_and!82781 (not b_next!30063) b_and!82789 (not b_next!30045) b_and!82765 b_and!82783 (not b_next!30059) (not b_next!30047) b_and!82787 b_and!82761 (not b_next!30041) b_and!82791)
(get-model)

(declare-fun d!347591 () Bool)

(declare-fun lt!415958 () Int)

(assert (=> d!347591 (>= lt!415958 0)))

(declare-fun e!781546 () Int)

(assert (=> d!347591 (= lt!415958 e!781546)))

(declare-fun c!203586 () Bool)

(assert (=> d!347591 (= c!203586 ((_ is Nil!12451) (originalCharacters!2699 (h!17853 tokens!556))))))

(assert (=> d!347591 (= (size!9838 (originalCharacters!2699 (h!17853 tokens!556))) lt!415958)))

(declare-fun b!1217503 () Bool)

(assert (=> b!1217503 (= e!781546 0)))

(declare-fun b!1217504 () Bool)

(assert (=> b!1217504 (= e!781546 (+ 1 (size!9838 (t!113271 (originalCharacters!2699 (h!17853 tokens!556))))))))

(assert (= (and d!347591 c!203586) b!1217503))

(assert (= (and d!347591 (not c!203586)) b!1217504))

(declare-fun m!1391477 () Bool)

(assert (=> b!1217504 m!1391477))

(assert (=> b!1217397 d!347591))

(declare-fun d!347593 () Bool)

(assert (=> d!347593 true))

(declare-fun lambda!49158 () Int)

(declare-fun order!7563 () Int)

(declare-fun dynLambda!5435 (Int Int) Int)

(assert (=> d!347593 (< (dynLambda!5428 order!7553 (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) (dynLambda!5435 order!7563 lambda!49158))))

(declare-fun Forall2!366 (Int) Bool)

(assert (=> d!347593 (= (equivClasses!749 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) (Forall2!366 lambda!49158))))

(declare-fun bs!288831 () Bool)

(assert (= bs!288831 d!347593))

(declare-fun m!1391479 () Bool)

(assert (=> bs!288831 m!1391479))

(assert (=> b!1217247 d!347593))

(declare-fun d!347595 () Bool)

(declare-fun charsToInt!0 (List!12508) (_ BitVec 32))

(assert (=> d!347595 (= (inv!16 (value!69729 (h!17853 tokens!556))) (= (charsToInt!0 (text!15938 (value!69729 (h!17853 tokens!556)))) (value!69720 (value!69729 (h!17853 tokens!556)))))))

(declare-fun bs!288832 () Bool)

(assert (= bs!288832 d!347595))

(declare-fun m!1391481 () Bool)

(assert (=> bs!288832 m!1391481))

(assert (=> b!1217275 d!347595))

(declare-fun d!347597 () Bool)

(declare-fun list!4591 (Conc!4073) List!12509)

(assert (=> d!347597 (= (list!4589 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))) (list!4591 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))))))

(declare-fun bs!288833 () Bool)

(assert (= bs!288833 d!347597))

(declare-fun m!1391483 () Bool)

(assert (=> bs!288833 m!1391483))

(assert (=> b!1217396 d!347597))

(declare-fun bs!288840 () Bool)

(declare-fun d!347599 () Bool)

(assert (= bs!288840 (and d!347599 d!347533)))

(declare-fun lambda!49163 () Int)

(assert (=> bs!288840 (= lambda!49163 lambda!49146)))

(declare-fun b!1217575 () Bool)

(declare-fun e!781589 () Bool)

(assert (=> b!1217575 (= e!781589 true)))

(declare-fun b!1217574 () Bool)

(declare-fun e!781588 () Bool)

(assert (=> b!1217574 (= e!781588 e!781589)))

(declare-fun b!1217573 () Bool)

(declare-fun e!781587 () Bool)

(assert (=> b!1217573 (= e!781587 e!781588)))

(assert (=> d!347599 e!781587))

(assert (= b!1217574 b!1217575))

(assert (= b!1217573 b!1217574))

(assert (= (and d!347599 ((_ is Cons!12453) rules!2728)) b!1217573))

(assert (=> b!1217575 (< (dynLambda!5428 order!7553 (toValue!3274 (transformation!2145 (h!17854 rules!2728)))) (dynLambda!5429 order!7555 lambda!49163))))

(assert (=> b!1217575 (< (dynLambda!5430 order!7557 (toChars!3133 (transformation!2145 (h!17854 rules!2728)))) (dynLambda!5429 order!7555 lambda!49163))))

(assert (=> d!347599 true))

(declare-fun lt!415984 () Bool)

(assert (=> d!347599 (= lt!415984 (forall!3178 (list!4588 (seqFromList!1555 tokens!556)) lambda!49163))))

(declare-fun e!781585 () Bool)

(assert (=> d!347599 (= lt!415984 e!781585)))

(declare-fun res!547370 () Bool)

(assert (=> d!347599 (=> res!547370 e!781585)))

(assert (=> d!347599 (= res!547370 (not ((_ is Cons!12452) (list!4588 (seqFromList!1555 tokens!556)))))))

(assert (=> d!347599 (not (isEmpty!7400 rules!2728))))

(assert (=> d!347599 (= (rulesProduceEachTokenIndividuallyList!660 thiss!20528 rules!2728 (list!4588 (seqFromList!1555 tokens!556))) lt!415984)))

(declare-fun b!1217571 () Bool)

(declare-fun e!781586 () Bool)

(assert (=> b!1217571 (= e!781585 e!781586)))

(declare-fun res!547369 () Bool)

(assert (=> b!1217571 (=> (not res!547369) (not e!781586))))

(declare-fun rulesProduceIndividualToken!833 (LexerInterface!1840 List!12511 Token!3952) Bool)

(assert (=> b!1217571 (= res!547369 (rulesProduceIndividualToken!833 thiss!20528 rules!2728 (h!17853 (list!4588 (seqFromList!1555 tokens!556)))))))

(declare-fun b!1217572 () Bool)

(assert (=> b!1217572 (= e!781586 (rulesProduceEachTokenIndividuallyList!660 thiss!20528 rules!2728 (t!113272 (list!4588 (seqFromList!1555 tokens!556)))))))

(assert (= (and d!347599 (not res!547370)) b!1217571))

(assert (= (and b!1217571 res!547369) b!1217572))

(assert (=> d!347599 m!1391397))

(declare-fun m!1391569 () Bool)

(assert (=> d!347599 m!1391569))

(assert (=> d!347599 m!1391299))

(declare-fun m!1391571 () Bool)

(assert (=> b!1217571 m!1391571))

(declare-fun m!1391573 () Bool)

(assert (=> b!1217572 m!1391573))

(assert (=> b!1217378 d!347599))

(declare-fun d!347629 () Bool)

(declare-fun list!4592 (Conc!4074) List!12510)

(assert (=> d!347629 (= (list!4588 (seqFromList!1555 tokens!556)) (list!4592 (c!203553 (seqFromList!1555 tokens!556))))))

(declare-fun bs!288841 () Bool)

(assert (= bs!288841 d!347629))

(declare-fun m!1391575 () Bool)

(assert (=> bs!288841 m!1391575))

(assert (=> b!1217378 d!347629))

(declare-fun d!347631 () Bool)

(assert (=> d!347631 (= (isEmpty!7403 (originalCharacters!2699 (h!17853 tokens!556))) ((_ is Nil!12451) (originalCharacters!2699 (h!17853 tokens!556))))))

(assert (=> d!347551 d!347631))

(declare-fun d!347633 () Bool)

(assert (=> d!347633 true))

(declare-fun lt!415987 () Bool)

(declare-fun rulesValidInductive!670 (LexerInterface!1840 List!12511) Bool)

(assert (=> d!347633 (= lt!415987 (rulesValidInductive!670 thiss!20528 rules!2728))))

(declare-fun lambda!49166 () Int)

(declare-fun forall!3182 (List!12511 Int) Bool)

(assert (=> d!347633 (= lt!415987 (forall!3182 rules!2728 lambda!49166))))

(assert (=> d!347633 (= (rulesValid!770 thiss!20528 rules!2728) lt!415987)))

(declare-fun bs!288842 () Bool)

(assert (= bs!288842 d!347633))

(declare-fun m!1391577 () Bool)

(assert (=> bs!288842 m!1391577))

(declare-fun m!1391579 () Bool)

(assert (=> bs!288842 m!1391579))

(assert (=> d!347555 d!347633))

(declare-fun d!347635 () Bool)

(declare-fun c!203600 () Bool)

(assert (=> d!347635 (= c!203600 ((_ is Node!4073) (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))))))

(declare-fun e!781594 () Bool)

(assert (=> d!347635 (= (inv!16646 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))) e!781594)))

(declare-fun b!1217584 () Bool)

(declare-fun inv!16648 (Conc!4073) Bool)

(assert (=> b!1217584 (= e!781594 (inv!16648 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))))))

(declare-fun b!1217585 () Bool)

(declare-fun e!781595 () Bool)

(assert (=> b!1217585 (= e!781594 e!781595)))

(declare-fun res!547373 () Bool)

(assert (=> b!1217585 (= res!547373 (not ((_ is Leaf!6294) (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))))))))

(assert (=> b!1217585 (=> res!547373 e!781595)))

(declare-fun b!1217586 () Bool)

(declare-fun inv!16649 (Conc!4073) Bool)

(assert (=> b!1217586 (= e!781595 (inv!16649 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))))))

(assert (= (and d!347635 c!203600) b!1217584))

(assert (= (and d!347635 (not c!203600)) b!1217585))

(assert (= (and b!1217585 (not res!547373)) b!1217586))

(declare-fun m!1391581 () Bool)

(assert (=> b!1217584 m!1391581))

(declare-fun m!1391583 () Bool)

(assert (=> b!1217586 m!1391583))

(assert (=> b!1217402 d!347635))

(declare-fun d!347637 () Bool)

(declare-fun res!547374 () Bool)

(declare-fun e!781596 () Bool)

(assert (=> d!347637 (=> (not res!547374) (not e!781596))))

(assert (=> d!347637 (= res!547374 (not (isEmpty!7403 (originalCharacters!2699 (h!17853 (t!113272 tokens!556))))))))

(assert (=> d!347637 (= (inv!16643 (h!17853 (t!113272 tokens!556))) e!781596)))

(declare-fun b!1217587 () Bool)

(declare-fun res!547375 () Bool)

(assert (=> b!1217587 (=> (not res!547375) (not e!781596))))

(assert (=> b!1217587 (= res!547375 (= (originalCharacters!2699 (h!17853 (t!113272 tokens!556))) (list!4589 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (value!69729 (h!17853 (t!113272 tokens!556)))))))))

(declare-fun b!1217588 () Bool)

(assert (=> b!1217588 (= e!781596 (= (size!9835 (h!17853 (t!113272 tokens!556))) (size!9838 (originalCharacters!2699 (h!17853 (t!113272 tokens!556))))))))

(assert (= (and d!347637 res!547374) b!1217587))

(assert (= (and b!1217587 res!547375) b!1217588))

(declare-fun b_lambda!35907 () Bool)

(assert (=> (not b_lambda!35907) (not b!1217587)))

(declare-fun t!113311 () Bool)

(declare-fun tb!66873 () Bool)

(assert (=> (and b!1217237 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) t!113311) tb!66873))

(declare-fun b!1217589 () Bool)

(declare-fun e!781597 () Bool)

(declare-fun tp!345903 () Bool)

(assert (=> b!1217589 (= e!781597 (and (inv!16646 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (value!69729 (h!17853 (t!113272 tokens!556)))))) tp!345903))))

(declare-fun result!80972 () Bool)

(assert (=> tb!66873 (= result!80972 (and (inv!16647 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (value!69729 (h!17853 (t!113272 tokens!556))))) e!781597))))

(assert (= tb!66873 b!1217589))

(declare-fun m!1391585 () Bool)

(assert (=> b!1217589 m!1391585))

(declare-fun m!1391587 () Bool)

(assert (=> tb!66873 m!1391587))

(assert (=> b!1217587 t!113311))

(declare-fun b_and!82801 () Bool)

(assert (= b_and!82781 (and (=> t!113311 result!80972) b_and!82801)))

(declare-fun tb!66875 () Bool)

(declare-fun t!113313 () Bool)

(assert (=> (and b!1217235 (= (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) t!113313) tb!66875))

(declare-fun result!80974 () Bool)

(assert (= result!80974 result!80972))

(assert (=> b!1217587 t!113313))

(declare-fun b_and!82803 () Bool)

(assert (= b_and!82783 (and (=> t!113313 result!80974) b_and!82803)))

(declare-fun t!113315 () Bool)

(declare-fun tb!66877 () Bool)

(assert (=> (and b!1217445 (= (toChars!3133 (transformation!2145 (h!17854 (t!113273 rules!2728)))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) t!113315) tb!66877))

(declare-fun result!80976 () Bool)

(assert (= result!80976 result!80972))

(assert (=> b!1217587 t!113315))

(declare-fun b_and!82805 () Bool)

(assert (= b_and!82787 (and (=> t!113315 result!80976) b_and!82805)))

(declare-fun t!113317 () Bool)

(declare-fun tb!66879 () Bool)

(assert (=> (and b!1217469 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) t!113317) tb!66879))

(declare-fun result!80978 () Bool)

(assert (= result!80978 result!80972))

(assert (=> b!1217587 t!113317))

(declare-fun b_and!82807 () Bool)

(assert (= b_and!82791 (and (=> t!113317 result!80978) b_and!82807)))

(declare-fun m!1391589 () Bool)

(assert (=> d!347637 m!1391589))

(declare-fun m!1391591 () Bool)

(assert (=> b!1217587 m!1391591))

(assert (=> b!1217587 m!1391591))

(declare-fun m!1391593 () Bool)

(assert (=> b!1217587 m!1391593))

(declare-fun m!1391595 () Bool)

(assert (=> b!1217588 m!1391595))

(assert (=> b!1217466 d!347637))

(declare-fun bs!288843 () Bool)

(declare-fun d!347639 () Bool)

(assert (= bs!288843 (and d!347639 d!347593)))

(declare-fun lambda!49167 () Int)

(assert (=> bs!288843 (= (= (toValue!3274 (transformation!2145 (h!17854 rules!2728))) (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) (= lambda!49167 lambda!49158))))

(assert (=> d!347639 true))

(assert (=> d!347639 (< (dynLambda!5428 order!7553 (toValue!3274 (transformation!2145 (h!17854 rules!2728)))) (dynLambda!5435 order!7563 lambda!49167))))

(assert (=> d!347639 (= (equivClasses!749 (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toValue!3274 (transformation!2145 (h!17854 rules!2728)))) (Forall2!366 lambda!49167))))

(declare-fun bs!288844 () Bool)

(assert (= bs!288844 d!347639))

(declare-fun m!1391597 () Bool)

(assert (=> bs!288844 m!1391597))

(assert (=> b!1217246 d!347639))

(declare-fun d!347641 () Bool)

(assert (=> d!347641 (= (isEmpty!7404 (_1!7003 lt!415941)) ((_ is Nil!12452) (_1!7003 lt!415941)))))

(assert (=> b!1217414 d!347641))

(declare-fun d!347643 () Bool)

(declare-fun isBalanced!1182 (Conc!4073) Bool)

(assert (=> d!347643 (= (inv!16647 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))) (isBalanced!1182 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))))))

(declare-fun bs!288845 () Bool)

(assert (= bs!288845 d!347643))

(declare-fun m!1391599 () Bool)

(assert (=> bs!288845 m!1391599))

(assert (=> tb!66857 d!347643))

(declare-fun d!347645 () Bool)

(declare-fun lt!415990 () Int)

(assert (=> d!347645 (>= lt!415990 0)))

(declare-fun e!781600 () Int)

(assert (=> d!347645 (= lt!415990 e!781600)))

(declare-fun c!203603 () Bool)

(assert (=> d!347645 (= c!203603 ((_ is Nil!12452) (_1!7003 lt!415941)))))

(assert (=> d!347645 (= (size!9839 (_1!7003 lt!415941)) lt!415990)))

(declare-fun b!1217594 () Bool)

(assert (=> b!1217594 (= e!781600 0)))

(declare-fun b!1217595 () Bool)

(assert (=> b!1217595 (= e!781600 (+ 1 (size!9839 (t!113272 (_1!7003 lt!415941)))))))

(assert (= (and d!347645 c!203603) b!1217594))

(assert (= (and d!347645 (not c!203603)) b!1217595))

(declare-fun m!1391601 () Bool)

(assert (=> b!1217595 m!1391601))

(assert (=> d!347553 d!347645))

(declare-fun b!1217700 () Bool)

(declare-fun e!781653 () Bool)

(declare-fun e!781654 () Bool)

(assert (=> b!1217700 (= e!781653 e!781654)))

(declare-fun res!547403 () Bool)

(assert (=> b!1217700 (=> (not res!547403) (not e!781654))))

(declare-fun lt!416005 () Option!2507)

(declare-fun isDefined!2143 (Option!2507) Bool)

(assert (=> b!1217700 (= res!547403 (isDefined!2143 lt!416005))))

(declare-fun b!1217701 () Bool)

(declare-fun res!547398 () Bool)

(assert (=> b!1217701 (=> (not res!547398) (not e!781654))))

(declare-fun ++!3179 (List!12509 List!12509) List!12509)

(declare-fun charsOf!1149 (Token!3952) BalanceConc!8078)

(declare-fun get!4095 (Option!2507) tuple2!12316)

(assert (=> b!1217701 (= res!547398 (= (++!3179 (list!4589 (charsOf!1149 (_1!7005 (get!4095 lt!416005)))) (_2!7005 (get!4095 lt!416005))) input!2346))))

(declare-fun call!84579 () Option!2507)

(declare-fun bm!84574 () Bool)

(declare-fun maxPrefixOneRule!553 (LexerInterface!1840 Rule!4090 List!12509) Option!2507)

(assert (=> bm!84574 (= call!84579 (maxPrefixOneRule!553 thiss!20528 (h!17854 rules!2728) input!2346))))

(declare-fun d!347647 () Bool)

(assert (=> d!347647 e!781653))

(declare-fun res!547399 () Bool)

(assert (=> d!347647 (=> res!547399 e!781653)))

(declare-fun isEmpty!7406 (Option!2507) Bool)

(assert (=> d!347647 (= res!547399 (isEmpty!7406 lt!416005))))

(declare-fun e!781655 () Option!2507)

(assert (=> d!347647 (= lt!416005 e!781655)))

(declare-fun c!203608 () Bool)

(assert (=> d!347647 (= c!203608 (and ((_ is Cons!12453) rules!2728) ((_ is Nil!12453) (t!113273 rules!2728))))))

(declare-datatypes ((Unit!18714 0))(
  ( (Unit!18715) )
))
(declare-fun lt!416006 () Unit!18714)

(declare-fun lt!416008 () Unit!18714)

(assert (=> d!347647 (= lt!416006 lt!416008)))

(declare-fun isPrefix!1034 (List!12509 List!12509) Bool)

(assert (=> d!347647 (isPrefix!1034 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!727 (List!12509 List!12509) Unit!18714)

(assert (=> d!347647 (= lt!416008 (lemmaIsPrefixRefl!727 input!2346 input!2346))))

(assert (=> d!347647 (rulesValidInductive!670 thiss!20528 rules!2728)))

(assert (=> d!347647 (= (maxPrefix!962 thiss!20528 rules!2728 input!2346) lt!416005)))

(declare-fun b!1217702 () Bool)

(assert (=> b!1217702 (= e!781655 call!84579)))

(declare-fun b!1217703 () Bool)

(declare-fun res!547401 () Bool)

(assert (=> b!1217703 (=> (not res!547401) (not e!781654))))

(declare-fun apply!2652 (TokenValueInjection!4122 BalanceConc!8078) TokenValue!2213)

(declare-fun seqFromList!1557 (List!12509) BalanceConc!8078)

(assert (=> b!1217703 (= res!547401 (= (value!69729 (_1!7005 (get!4095 lt!416005))) (apply!2652 (transformation!2145 (rule!3570 (_1!7005 (get!4095 lt!416005)))) (seqFromList!1557 (originalCharacters!2699 (_1!7005 (get!4095 lt!416005)))))))))

(declare-fun b!1217704 () Bool)

(declare-fun res!547397 () Bool)

(assert (=> b!1217704 (=> (not res!547397) (not e!781654))))

(assert (=> b!1217704 (= res!547397 (< (size!9838 (_2!7005 (get!4095 lt!416005))) (size!9838 input!2346)))))

(declare-fun b!1217705 () Bool)

(declare-fun res!547402 () Bool)

(assert (=> b!1217705 (=> (not res!547402) (not e!781654))))

(assert (=> b!1217705 (= res!547402 (= (list!4589 (charsOf!1149 (_1!7005 (get!4095 lt!416005)))) (originalCharacters!2699 (_1!7005 (get!4095 lt!416005)))))))

(declare-fun b!1217706 () Bool)

(declare-fun contains!2085 (List!12511 Rule!4090) Bool)

(assert (=> b!1217706 (= e!781654 (contains!2085 rules!2728 (rule!3570 (_1!7005 (get!4095 lt!416005)))))))

(declare-fun b!1217707 () Bool)

(declare-fun lt!416007 () Option!2507)

(declare-fun lt!416004 () Option!2507)

(assert (=> b!1217707 (= e!781655 (ite (and ((_ is None!2506) lt!416007) ((_ is None!2506) lt!416004)) None!2506 (ite ((_ is None!2506) lt!416004) lt!416007 (ite ((_ is None!2506) lt!416007) lt!416004 (ite (>= (size!9835 (_1!7005 (v!20637 lt!416007))) (size!9835 (_1!7005 (v!20637 lt!416004)))) lt!416007 lt!416004)))))))

(assert (=> b!1217707 (= lt!416007 call!84579)))

(assert (=> b!1217707 (= lt!416004 (maxPrefix!962 thiss!20528 (t!113273 rules!2728) input!2346))))

(declare-fun b!1217708 () Bool)

(declare-fun res!547400 () Bool)

(assert (=> b!1217708 (=> (not res!547400) (not e!781654))))

(declare-fun matchR!1530 (Regex!3415 List!12509) Bool)

(assert (=> b!1217708 (= res!547400 (matchR!1530 (regex!2145 (rule!3570 (_1!7005 (get!4095 lt!416005)))) (list!4589 (charsOf!1149 (_1!7005 (get!4095 lt!416005))))))))

(assert (= (and d!347647 c!203608) b!1217702))

(assert (= (and d!347647 (not c!203608)) b!1217707))

(assert (= (or b!1217702 b!1217707) bm!84574))

(assert (= (and d!347647 (not res!547399)) b!1217700))

(assert (= (and b!1217700 res!547403) b!1217705))

(assert (= (and b!1217705 res!547402) b!1217704))

(assert (= (and b!1217704 res!547397) b!1217701))

(assert (= (and b!1217701 res!547398) b!1217703))

(assert (= (and b!1217703 res!547401) b!1217708))

(assert (= (and b!1217708 res!547400) b!1217706))

(declare-fun m!1391633 () Bool)

(assert (=> bm!84574 m!1391633))

(declare-fun m!1391635 () Bool)

(assert (=> d!347647 m!1391635))

(declare-fun m!1391637 () Bool)

(assert (=> d!347647 m!1391637))

(declare-fun m!1391639 () Bool)

(assert (=> d!347647 m!1391639))

(assert (=> d!347647 m!1391577))

(declare-fun m!1391641 () Bool)

(assert (=> b!1217700 m!1391641))

(declare-fun m!1391643 () Bool)

(assert (=> b!1217707 m!1391643))

(declare-fun m!1391645 () Bool)

(assert (=> b!1217704 m!1391645))

(declare-fun m!1391647 () Bool)

(assert (=> b!1217704 m!1391647))

(assert (=> b!1217704 m!1391423))

(assert (=> b!1217706 m!1391645))

(declare-fun m!1391649 () Bool)

(assert (=> b!1217706 m!1391649))

(assert (=> b!1217703 m!1391645))

(declare-fun m!1391651 () Bool)

(assert (=> b!1217703 m!1391651))

(assert (=> b!1217703 m!1391651))

(declare-fun m!1391653 () Bool)

(assert (=> b!1217703 m!1391653))

(assert (=> b!1217708 m!1391645))

(declare-fun m!1391655 () Bool)

(assert (=> b!1217708 m!1391655))

(assert (=> b!1217708 m!1391655))

(declare-fun m!1391657 () Bool)

(assert (=> b!1217708 m!1391657))

(assert (=> b!1217708 m!1391657))

(declare-fun m!1391659 () Bool)

(assert (=> b!1217708 m!1391659))

(assert (=> b!1217701 m!1391645))

(assert (=> b!1217701 m!1391655))

(assert (=> b!1217701 m!1391655))

(assert (=> b!1217701 m!1391657))

(assert (=> b!1217701 m!1391657))

(declare-fun m!1391661 () Bool)

(assert (=> b!1217701 m!1391661))

(assert (=> b!1217705 m!1391645))

(assert (=> b!1217705 m!1391655))

(assert (=> b!1217705 m!1391655))

(assert (=> b!1217705 m!1391657))

(assert (=> d!347553 d!347647))

(declare-fun b!1217709 () Bool)

(declare-fun e!781656 () Bool)

(assert (=> b!1217709 (= e!781656 (inv!15 (value!69729 (h!17853 (t!113272 tokens!556)))))))

(declare-fun b!1217710 () Bool)

(declare-fun e!781658 () Bool)

(declare-fun e!781657 () Bool)

(assert (=> b!1217710 (= e!781658 e!781657)))

(declare-fun c!203610 () Bool)

(assert (=> b!1217710 (= c!203610 ((_ is IntegerValue!6640) (value!69729 (h!17853 (t!113272 tokens!556)))))))

(declare-fun b!1217711 () Bool)

(assert (=> b!1217711 (= e!781657 (inv!17 (value!69729 (h!17853 (t!113272 tokens!556)))))))

(declare-fun b!1217712 () Bool)

(assert (=> b!1217712 (= e!781658 (inv!16 (value!69729 (h!17853 (t!113272 tokens!556)))))))

(declare-fun d!347653 () Bool)

(declare-fun c!203609 () Bool)

(assert (=> d!347653 (= c!203609 ((_ is IntegerValue!6639) (value!69729 (h!17853 (t!113272 tokens!556)))))))

(assert (=> d!347653 (= (inv!21 (value!69729 (h!17853 (t!113272 tokens!556)))) e!781658)))

(declare-fun b!1217713 () Bool)

(declare-fun res!547404 () Bool)

(assert (=> b!1217713 (=> res!547404 e!781656)))

(assert (=> b!1217713 (= res!547404 (not ((_ is IntegerValue!6641) (value!69729 (h!17853 (t!113272 tokens!556))))))))

(assert (=> b!1217713 (= e!781657 e!781656)))

(assert (= (and d!347653 c!203609) b!1217712))

(assert (= (and d!347653 (not c!203609)) b!1217710))

(assert (= (and b!1217710 c!203610) b!1217711))

(assert (= (and b!1217710 (not c!203610)) b!1217713))

(assert (= (and b!1217713 (not res!547404)) b!1217709))

(declare-fun m!1391663 () Bool)

(assert (=> b!1217709 m!1391663))

(declare-fun m!1391665 () Bool)

(assert (=> b!1217711 m!1391665))

(declare-fun m!1391667 () Bool)

(assert (=> b!1217712 m!1391667))

(assert (=> b!1217467 d!347653))

(declare-fun b!1217714 () Bool)

(declare-fun e!781660 () Bool)

(declare-fun lt!416009 () tuple2!12312)

(assert (=> b!1217714 (= e!781660 (= (_2!7003 lt!416009) (_2!7005 (v!20637 lt!415943))))))

(declare-fun b!1217715 () Bool)

(declare-fun e!781661 () Bool)

(assert (=> b!1217715 (= e!781661 (not (isEmpty!7404 (_1!7003 lt!416009))))))

(declare-fun b!1217716 () Bool)

(assert (=> b!1217716 (= e!781660 e!781661)))

(declare-fun res!547405 () Bool)

(assert (=> b!1217716 (= res!547405 (< (size!9838 (_2!7003 lt!416009)) (size!9838 (_2!7005 (v!20637 lt!415943)))))))

(assert (=> b!1217716 (=> (not res!547405) (not e!781661))))

(declare-fun d!347655 () Bool)

(assert (=> d!347655 e!781660))

(declare-fun c!203612 () Bool)

(assert (=> d!347655 (= c!203612 (> (size!9839 (_1!7003 lt!416009)) 0))))

(declare-fun e!781659 () tuple2!12312)

(assert (=> d!347655 (= lt!416009 e!781659)))

(declare-fun c!203611 () Bool)

(declare-fun lt!416011 () Option!2507)

(assert (=> d!347655 (= c!203611 ((_ is Some!2506) lt!416011))))

(assert (=> d!347655 (= lt!416011 (maxPrefix!962 thiss!20528 rules!2728 (_2!7005 (v!20637 lt!415943))))))

(assert (=> d!347655 (= (lexList!470 thiss!20528 rules!2728 (_2!7005 (v!20637 lt!415943))) lt!416009)))

(declare-fun b!1217717 () Bool)

(declare-fun lt!416010 () tuple2!12312)

(assert (=> b!1217717 (= e!781659 (tuple2!12313 (Cons!12452 (_1!7005 (v!20637 lt!416011)) (_1!7003 lt!416010)) (_2!7003 lt!416010)))))

(assert (=> b!1217717 (= lt!416010 (lexList!470 thiss!20528 rules!2728 (_2!7005 (v!20637 lt!416011))))))

(declare-fun b!1217718 () Bool)

(assert (=> b!1217718 (= e!781659 (tuple2!12313 Nil!12452 (_2!7005 (v!20637 lt!415943))))))

(assert (= (and d!347655 c!203611) b!1217717))

(assert (= (and d!347655 (not c!203611)) b!1217718))

(assert (= (and d!347655 c!203612) b!1217716))

(assert (= (and d!347655 (not c!203612)) b!1217714))

(assert (= (and b!1217716 res!547405) b!1217715))

(declare-fun m!1391669 () Bool)

(assert (=> b!1217715 m!1391669))

(declare-fun m!1391671 () Bool)

(assert (=> b!1217716 m!1391671))

(declare-fun m!1391673 () Bool)

(assert (=> b!1217716 m!1391673))

(declare-fun m!1391675 () Bool)

(assert (=> d!347655 m!1391675))

(declare-fun m!1391677 () Bool)

(assert (=> d!347655 m!1391677))

(declare-fun m!1391679 () Bool)

(assert (=> b!1217717 m!1391679))

(assert (=> b!1217416 d!347655))

(declare-fun d!347657 () Bool)

(assert (=> d!347657 (= (inv!16639 (tag!2407 (rule!3570 (h!17853 (t!113272 tokens!556))))) (= (mod (str.len (value!69728 (tag!2407 (rule!3570 (h!17853 (t!113272 tokens!556)))))) 2) 0))))

(assert (=> b!1217468 d!347657))

(declare-fun d!347659 () Bool)

(declare-fun res!547406 () Bool)

(declare-fun e!781662 () Bool)

(assert (=> d!347659 (=> (not res!547406) (not e!781662))))

(assert (=> d!347659 (= res!547406 (semiInverseModEq!782 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (toValue!3274 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))))))

(assert (=> d!347659 (= (inv!16642 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) e!781662)))

(declare-fun b!1217719 () Bool)

(assert (=> b!1217719 (= e!781662 (equivClasses!749 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))) (toValue!3274 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))))))

(assert (= (and d!347659 res!547406) b!1217719))

(declare-fun m!1391681 () Bool)

(assert (=> d!347659 m!1391681))

(declare-fun m!1391683 () Bool)

(assert (=> b!1217719 m!1391683))

(assert (=> b!1217468 d!347659))

(declare-fun d!347661 () Bool)

(declare-fun lt!416012 () Int)

(assert (=> d!347661 (>= lt!416012 0)))

(declare-fun e!781663 () Int)

(assert (=> d!347661 (= lt!416012 e!781663)))

(declare-fun c!203613 () Bool)

(assert (=> d!347661 (= c!203613 ((_ is Nil!12451) (_2!7003 lt!415941)))))

(assert (=> d!347661 (= (size!9838 (_2!7003 lt!415941)) lt!416012)))

(declare-fun b!1217720 () Bool)

(assert (=> b!1217720 (= e!781663 0)))

(declare-fun b!1217721 () Bool)

(assert (=> b!1217721 (= e!781663 (+ 1 (size!9838 (t!113271 (_2!7003 lt!415941)))))))

(assert (= (and d!347661 c!203613) b!1217720))

(assert (= (and d!347661 (not c!203613)) b!1217721))

(declare-fun m!1391685 () Bool)

(assert (=> b!1217721 m!1391685))

(assert (=> b!1217415 d!347661))

(declare-fun d!347663 () Bool)

(declare-fun lt!416013 () Int)

(assert (=> d!347663 (>= lt!416013 0)))

(declare-fun e!781664 () Int)

(assert (=> d!347663 (= lt!416013 e!781664)))

(declare-fun c!203614 () Bool)

(assert (=> d!347663 (= c!203614 ((_ is Nil!12451) input!2346))))

(assert (=> d!347663 (= (size!9838 input!2346) lt!416013)))

(declare-fun b!1217722 () Bool)

(assert (=> b!1217722 (= e!781664 0)))

(declare-fun b!1217723 () Bool)

(assert (=> b!1217723 (= e!781664 (+ 1 (size!9838 (t!113271 input!2346))))))

(assert (= (and d!347663 c!203614) b!1217722))

(assert (= (and d!347663 (not c!203614)) b!1217723))

(declare-fun m!1391687 () Bool)

(assert (=> b!1217723 m!1391687))

(assert (=> b!1217415 d!347663))

(declare-fun d!347665 () Bool)

(declare-fun res!547411 () Bool)

(declare-fun e!781669 () Bool)

(assert (=> d!347665 (=> res!547411 e!781669)))

(assert (=> d!347665 (= res!547411 ((_ is Nil!12452) (list!4588 (seqFromList!1555 tokens!556))))))

(assert (=> d!347665 (= (forall!3178 (list!4588 (seqFromList!1555 tokens!556)) lambda!49146) e!781669)))

(declare-fun b!1217728 () Bool)

(declare-fun e!781670 () Bool)

(assert (=> b!1217728 (= e!781669 e!781670)))

(declare-fun res!547412 () Bool)

(assert (=> b!1217728 (=> (not res!547412) (not e!781670))))

(declare-fun dynLambda!5436 (Int Token!3952) Bool)

(assert (=> b!1217728 (= res!547412 (dynLambda!5436 lambda!49146 (h!17853 (list!4588 (seqFromList!1555 tokens!556)))))))

(declare-fun b!1217729 () Bool)

(assert (=> b!1217729 (= e!781670 (forall!3178 (t!113272 (list!4588 (seqFromList!1555 tokens!556))) lambda!49146))))

(assert (= (and d!347665 (not res!547411)) b!1217728))

(assert (= (and b!1217728 res!547412) b!1217729))

(declare-fun b_lambda!35913 () Bool)

(assert (=> (not b_lambda!35913) (not b!1217728)))

(declare-fun m!1391689 () Bool)

(assert (=> b!1217728 m!1391689))

(declare-fun m!1391691 () Bool)

(assert (=> b!1217729 m!1391691))

(assert (=> d!347533 d!347665))

(assert (=> d!347533 d!347629))

(declare-fun d!347667 () Bool)

(declare-fun lt!416016 () Bool)

(assert (=> d!347667 (= lt!416016 (forall!3178 (list!4588 (seqFromList!1555 tokens!556)) lambda!49146))))

(declare-fun forall!3183 (Conc!4074 Int) Bool)

(assert (=> d!347667 (= lt!416016 (forall!3183 (c!203553 (seqFromList!1555 tokens!556)) lambda!49146))))

(assert (=> d!347667 (= (forall!3179 (seqFromList!1555 tokens!556) lambda!49146) lt!416016)))

(declare-fun bs!288848 () Bool)

(assert (= bs!288848 d!347667))

(assert (=> bs!288848 m!1391309))

(assert (=> bs!288848 m!1391397))

(assert (=> bs!288848 m!1391397))

(assert (=> bs!288848 m!1391399))

(declare-fun m!1391693 () Bool)

(assert (=> bs!288848 m!1391693))

(assert (=> d!347533 d!347667))

(assert (=> d!347533 d!347557))

(declare-fun d!347669 () Bool)

(assert (=> d!347669 (= (inv!16639 (tag!2407 (h!17854 (t!113273 rules!2728)))) (= (mod (str.len (value!69728 (tag!2407 (h!17854 (t!113273 rules!2728))))) 2) 0))))

(assert (=> b!1217444 d!347669))

(declare-fun d!347671 () Bool)

(declare-fun res!547413 () Bool)

(declare-fun e!781671 () Bool)

(assert (=> d!347671 (=> (not res!547413) (not e!781671))))

(assert (=> d!347671 (= res!547413 (semiInverseModEq!782 (toChars!3133 (transformation!2145 (h!17854 (t!113273 rules!2728)))) (toValue!3274 (transformation!2145 (h!17854 (t!113273 rules!2728))))))))

(assert (=> d!347671 (= (inv!16642 (transformation!2145 (h!17854 (t!113273 rules!2728)))) e!781671)))

(declare-fun b!1217730 () Bool)

(assert (=> b!1217730 (= e!781671 (equivClasses!749 (toChars!3133 (transformation!2145 (h!17854 (t!113273 rules!2728)))) (toValue!3274 (transformation!2145 (h!17854 (t!113273 rules!2728))))))))

(assert (= (and d!347671 res!547413) b!1217730))

(declare-fun m!1391695 () Bool)

(assert (=> d!347671 m!1391695))

(declare-fun m!1391697 () Bool)

(assert (=> b!1217730 m!1391697))

(assert (=> b!1217444 d!347671))

(declare-fun d!347673 () Bool)

(declare-fun e!781674 () Bool)

(assert (=> d!347673 e!781674))

(declare-fun res!547416 () Bool)

(assert (=> d!347673 (=> (not res!547416) (not e!781674))))

(declare-fun lt!416019 () BalanceConc!8080)

(assert (=> d!347673 (= res!547416 (= (list!4588 lt!416019) tokens!556))))

(declare-fun fromList!326 (List!12510) Conc!4074)

(assert (=> d!347673 (= lt!416019 (BalanceConc!8081 (fromList!326 tokens!556)))))

(assert (=> d!347673 (= (fromListB!688 tokens!556) lt!416019)))

(declare-fun b!1217733 () Bool)

(declare-fun isBalanced!1184 (Conc!4074) Bool)

(assert (=> b!1217733 (= e!781674 (isBalanced!1184 (fromList!326 tokens!556)))))

(assert (= (and d!347673 res!547416) b!1217733))

(declare-fun m!1391699 () Bool)

(assert (=> d!347673 m!1391699))

(declare-fun m!1391701 () Bool)

(assert (=> d!347673 m!1391701))

(assert (=> b!1217733 m!1391701))

(assert (=> b!1217733 m!1391701))

(declare-fun m!1391703 () Bool)

(assert (=> b!1217733 m!1391703))

(assert (=> d!347549 d!347673))

(declare-fun d!347675 () Bool)

(declare-fun res!547421 () Bool)

(declare-fun e!781679 () Bool)

(assert (=> d!347675 (=> res!547421 e!781679)))

(assert (=> d!347675 (= res!547421 ((_ is Nil!12453) rules!2728))))

(assert (=> d!347675 (= (noDuplicateTag!770 thiss!20528 rules!2728 Nil!12455) e!781679)))

(declare-fun b!1217738 () Bool)

(declare-fun e!781680 () Bool)

(assert (=> b!1217738 (= e!781679 e!781680)))

(declare-fun res!547422 () Bool)

(assert (=> b!1217738 (=> (not res!547422) (not e!781680))))

(declare-fun contains!2086 (List!12513 String!15197) Bool)

(assert (=> b!1217738 (= res!547422 (not (contains!2086 Nil!12455 (tag!2407 (h!17854 rules!2728)))))))

(declare-fun b!1217739 () Bool)

(assert (=> b!1217739 (= e!781680 (noDuplicateTag!770 thiss!20528 (t!113273 rules!2728) (Cons!12455 (tag!2407 (h!17854 rules!2728)) Nil!12455)))))

(assert (= (and d!347675 (not res!547421)) b!1217738))

(assert (= (and b!1217738 res!547422) b!1217739))

(declare-fun m!1391705 () Bool)

(assert (=> b!1217738 m!1391705))

(declare-fun m!1391707 () Bool)

(assert (=> b!1217739 m!1391707))

(assert (=> b!1217420 d!347675))

(declare-fun d!347677 () Bool)

(declare-fun charsToBigInt!0 (List!12508 Int) Int)

(assert (=> d!347677 (= (inv!15 (value!69729 (h!17853 tokens!556))) (= (charsToBigInt!0 (text!15940 (value!69729 (h!17853 tokens!556))) 0) (value!69724 (value!69729 (h!17853 tokens!556)))))))

(declare-fun bs!288849 () Bool)

(assert (= bs!288849 d!347677))

(declare-fun m!1391709 () Bool)

(assert (=> bs!288849 m!1391709))

(assert (=> b!1217272 d!347677))

(declare-fun d!347679 () Bool)

(assert (=> d!347679 true))

(declare-fun order!7565 () Int)

(declare-fun lambda!49173 () Int)

(declare-fun dynLambda!5437 (Int Int) Int)

(assert (=> d!347679 (< (dynLambda!5430 order!7557 (toChars!3133 (transformation!2145 (h!17854 rules!2728)))) (dynLambda!5437 order!7565 lambda!49173))))

(assert (=> d!347679 true))

(assert (=> d!347679 (< (dynLambda!5428 order!7553 (toValue!3274 (transformation!2145 (h!17854 rules!2728)))) (dynLambda!5437 order!7565 lambda!49173))))

(declare-fun Forall!456 (Int) Bool)

(assert (=> d!347679 (= (semiInverseModEq!782 (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toValue!3274 (transformation!2145 (h!17854 rules!2728)))) (Forall!456 lambda!49173))))

(declare-fun bs!288850 () Bool)

(assert (= bs!288850 d!347679))

(declare-fun m!1391711 () Bool)

(assert (=> bs!288850 m!1391711))

(assert (=> d!347517 d!347679))

(declare-fun bs!288851 () Bool)

(declare-fun d!347681 () Bool)

(assert (= bs!288851 (and d!347681 d!347679)))

(declare-fun lambda!49174 () Int)

(assert (=> bs!288851 (= (and (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toChars!3133 (transformation!2145 (h!17854 rules!2728)))) (= (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toValue!3274 (transformation!2145 (h!17854 rules!2728))))) (= lambda!49174 lambda!49173))))

(assert (=> d!347681 true))

(assert (=> d!347681 (< (dynLambda!5430 order!7557 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) (dynLambda!5437 order!7565 lambda!49174))))

(assert (=> d!347681 true))

(assert (=> d!347681 (< (dynLambda!5428 order!7553 (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) (dynLambda!5437 order!7565 lambda!49174))))

(assert (=> d!347681 (= (semiInverseModEq!782 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toValue!3274 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) (Forall!456 lambda!49174))))

(declare-fun bs!288852 () Bool)

(assert (= bs!288852 d!347681))

(declare-fun m!1391713 () Bool)

(assert (=> bs!288852 m!1391713))

(assert (=> d!347523 d!347681))

(declare-fun d!347683 () Bool)

(declare-fun charsToBigInt!1 (List!12508) Int)

(assert (=> d!347683 (= (inv!17 (value!69729 (h!17853 tokens!556))) (= (charsToBigInt!1 (text!15939 (value!69729 (h!17853 tokens!556)))) (value!69721 (value!69729 (h!17853 tokens!556)))))))

(declare-fun bs!288853 () Bool)

(assert (= bs!288853 d!347683))

(declare-fun m!1391715 () Bool)

(assert (=> bs!288853 m!1391715))

(assert (=> b!1217274 d!347683))

(declare-fun b!1217746 () Bool)

(declare-fun b_free!29369 () Bool)

(declare-fun b_next!30073 () Bool)

(assert (=> b!1217746 (= b_free!29369 (not b_next!30073))))

(declare-fun tp!345987 () Bool)

(declare-fun b_and!82817 () Bool)

(assert (=> b!1217746 (= tp!345987 b_and!82817)))

(declare-fun b_free!29371 () Bool)

(declare-fun b_next!30075 () Bool)

(assert (=> b!1217746 (= b_free!29371 (not b_next!30075))))

(declare-fun t!113329 () Bool)

(declare-fun tb!66889 () Bool)

(assert (=> (and b!1217746 (= (toChars!3133 (transformation!2145 (h!17854 (t!113273 (t!113273 rules!2728))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) t!113329) tb!66889))

(declare-fun result!80990 () Bool)

(assert (= result!80990 result!80946))

(assert (=> b!1217396 t!113329))

(declare-fun tb!66891 () Bool)

(declare-fun t!113331 () Bool)

(assert (=> (and b!1217746 (= (toChars!3133 (transformation!2145 (h!17854 (t!113273 (t!113273 rules!2728))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) t!113331) tb!66891))

(declare-fun result!80992 () Bool)

(assert (= result!80992 result!80972))

(assert (=> b!1217587 t!113331))

(declare-fun b_and!82819 () Bool)

(declare-fun tp!345986 () Bool)

(assert (=> b!1217746 (= tp!345986 (and (=> t!113329 result!80990) (=> t!113331 result!80992) b_and!82819))))

(declare-fun e!781681 () Bool)

(assert (=> b!1217746 (= e!781681 (and tp!345987 tp!345986))))

(declare-fun b!1217745 () Bool)

(declare-fun e!781683 () Bool)

(declare-fun tp!345985 () Bool)

(assert (=> b!1217745 (= e!781683 (and tp!345985 (inv!16639 (tag!2407 (h!17854 (t!113273 (t!113273 rules!2728))))) (inv!16642 (transformation!2145 (h!17854 (t!113273 (t!113273 rules!2728))))) e!781681))))

(declare-fun b!1217744 () Bool)

(declare-fun e!781682 () Bool)

(declare-fun tp!345988 () Bool)

(assert (=> b!1217744 (= e!781682 (and e!781683 tp!345988))))

(assert (=> b!1217443 (= tp!345877 e!781682)))

(assert (= b!1217745 b!1217746))

(assert (= b!1217744 b!1217745))

(assert (= (and b!1217443 ((_ is Cons!12453) (t!113273 (t!113273 rules!2728)))) b!1217744))

(declare-fun m!1391717 () Bool)

(assert (=> b!1217745 m!1391717))

(declare-fun m!1391719 () Bool)

(assert (=> b!1217745 m!1391719))

(declare-fun b!1217749 () Bool)

(declare-fun e!781687 () Bool)

(assert (=> b!1217749 (= e!781687 true)))

(declare-fun b!1217748 () Bool)

(declare-fun e!781686 () Bool)

(assert (=> b!1217748 (= e!781686 e!781687)))

(declare-fun b!1217747 () Bool)

(declare-fun e!781685 () Bool)

(assert (=> b!1217747 (= e!781685 e!781686)))

(assert (=> b!1217387 e!781685))

(assert (= b!1217748 b!1217749))

(assert (= b!1217747 b!1217748))

(assert (= (and b!1217387 ((_ is Cons!12453) (t!113273 rules!2728))) b!1217747))

(assert (=> b!1217749 (< (dynLambda!5428 order!7553 (toValue!3274 (transformation!2145 (h!17854 (t!113273 rules!2728))))) (dynLambda!5429 order!7555 lambda!49146))))

(assert (=> b!1217749 (< (dynLambda!5430 order!7557 (toChars!3133 (transformation!2145 (h!17854 (t!113273 rules!2728))))) (dynLambda!5429 order!7555 lambda!49146))))

(declare-fun b!1217750 () Bool)

(declare-fun e!781688 () Bool)

(declare-fun tp!345989 () Bool)

(assert (=> b!1217750 (= e!781688 (and tp_is_empty!6351 tp!345989))))

(assert (=> b!1217455 (= tp!345886 e!781688)))

(assert (= (and b!1217455 ((_ is Cons!12451) (t!113271 (originalCharacters!2699 (h!17853 tokens!556))))) b!1217750))

(declare-fun b!1217753 () Bool)

(declare-fun e!781689 () Bool)

(declare-fun tp!345990 () Bool)

(assert (=> b!1217753 (= e!781689 tp!345990)))

(declare-fun b!1217752 () Bool)

(declare-fun tp!345994 () Bool)

(declare-fun tp!345993 () Bool)

(assert (=> b!1217752 (= e!781689 (and tp!345994 tp!345993))))

(declare-fun b!1217751 () Bool)

(assert (=> b!1217751 (= e!781689 tp_is_empty!6351)))

(assert (=> b!1217444 (= tp!345874 e!781689)))

(declare-fun b!1217754 () Bool)

(declare-fun tp!345991 () Bool)

(declare-fun tp!345992 () Bool)

(assert (=> b!1217754 (= e!781689 (and tp!345991 tp!345992))))

(assert (= (and b!1217444 ((_ is ElementMatch!3415) (regex!2145 (h!17854 (t!113273 rules!2728))))) b!1217751))

(assert (= (and b!1217444 ((_ is Concat!5629) (regex!2145 (h!17854 (t!113273 rules!2728))))) b!1217752))

(assert (= (and b!1217444 ((_ is Star!3415) (regex!2145 (h!17854 (t!113273 rules!2728))))) b!1217753))

(assert (= (and b!1217444 ((_ is Union!3415) (regex!2145 (h!17854 (t!113273 rules!2728))))) b!1217754))

(declare-fun b!1217763 () Bool)

(declare-fun e!781695 () Bool)

(declare-fun tp!346002 () Bool)

(declare-fun tp!346001 () Bool)

(assert (=> b!1217763 (= e!781695 (and (inv!16646 (left!10733 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))))) tp!346001 (inv!16646 (right!11063 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))))) tp!346002))))

(declare-fun b!1217765 () Bool)

(declare-fun e!781694 () Bool)

(declare-fun tp!346003 () Bool)

(assert (=> b!1217765 (= e!781694 tp!346003)))

(declare-fun b!1217764 () Bool)

(declare-fun inv!16652 (IArray!8151) Bool)

(assert (=> b!1217764 (= e!781695 (and (inv!16652 (xs!6784 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))))) e!781694))))

(assert (=> b!1217402 (= tp!345850 (and (inv!16646 (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556))))) e!781695))))

(assert (= (and b!1217402 ((_ is Node!4073) (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))))) b!1217763))

(assert (= b!1217764 b!1217765))

(assert (= (and b!1217402 ((_ is Leaf!6294) (c!203551 (dynLambda!5431 (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (value!69729 (h!17853 tokens!556)))))) b!1217764))

(declare-fun m!1391721 () Bool)

(assert (=> b!1217763 m!1391721))

(declare-fun m!1391723 () Bool)

(assert (=> b!1217763 m!1391723))

(declare-fun m!1391725 () Bool)

(assert (=> b!1217764 m!1391725))

(assert (=> b!1217402 m!1391407))

(declare-fun b!1217768 () Bool)

(declare-fun e!781696 () Bool)

(declare-fun tp!346004 () Bool)

(assert (=> b!1217768 (= e!781696 tp!346004)))

(declare-fun b!1217767 () Bool)

(declare-fun tp!346008 () Bool)

(declare-fun tp!346007 () Bool)

(assert (=> b!1217767 (= e!781696 (and tp!346008 tp!346007))))

(declare-fun b!1217766 () Bool)

(assert (=> b!1217766 (= e!781696 tp_is_empty!6351)))

(assert (=> b!1217433 (= tp!345861 e!781696)))

(declare-fun b!1217769 () Bool)

(declare-fun tp!346005 () Bool)

(declare-fun tp!346006 () Bool)

(assert (=> b!1217769 (= e!781696 (and tp!346005 tp!346006))))

(assert (= (and b!1217433 ((_ is ElementMatch!3415) (reg!3744 (regex!2145 (h!17854 rules!2728))))) b!1217766))

(assert (= (and b!1217433 ((_ is Concat!5629) (reg!3744 (regex!2145 (h!17854 rules!2728))))) b!1217767))

(assert (= (and b!1217433 ((_ is Star!3415) (reg!3744 (regex!2145 (h!17854 rules!2728))))) b!1217768))

(assert (= (and b!1217433 ((_ is Union!3415) (reg!3744 (regex!2145 (h!17854 rules!2728))))) b!1217769))

(declare-fun b!1217773 () Bool)

(declare-fun b_free!29373 () Bool)

(declare-fun b_next!30077 () Bool)

(assert (=> b!1217773 (= b_free!29373 (not b_next!30077))))

(declare-fun tp!346012 () Bool)

(declare-fun b_and!82821 () Bool)

(assert (=> b!1217773 (= tp!346012 b_and!82821)))

(declare-fun b_free!29375 () Bool)

(declare-fun b_next!30079 () Bool)

(assert (=> b!1217773 (= b_free!29375 (not b_next!30079))))

(declare-fun t!113333 () Bool)

(declare-fun tb!66893 () Bool)

(assert (=> (and b!1217773 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 (t!113272 tokens!556)))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556))))) t!113333) tb!66893))

(declare-fun result!80996 () Bool)

(assert (= result!80996 result!80946))

(assert (=> b!1217396 t!113333))

(declare-fun t!113335 () Bool)

(declare-fun tb!66895 () Bool)

(assert (=> (and b!1217773 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 (t!113272 tokens!556)))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) t!113335) tb!66895))

(declare-fun result!80998 () Bool)

(assert (= result!80998 result!80972))

(assert (=> b!1217587 t!113335))

(declare-fun tp!346010 () Bool)

(declare-fun b_and!82823 () Bool)

(assert (=> b!1217773 (= tp!346010 (and (=> t!113333 result!80996) (=> t!113335 result!80998) b_and!82823))))

(declare-fun b!1217772 () Bool)

(declare-fun e!781702 () Bool)

(declare-fun tp!346011 () Bool)

(declare-fun e!781700 () Bool)

(assert (=> b!1217772 (= e!781702 (and tp!346011 (inv!16639 (tag!2407 (rule!3570 (h!17853 (t!113272 (t!113272 tokens!556)))))) (inv!16642 (transformation!2145 (rule!3570 (h!17853 (t!113272 (t!113272 tokens!556)))))) e!781700))))

(declare-fun tp!346013 () Bool)

(declare-fun e!781699 () Bool)

(declare-fun e!781698 () Bool)

(declare-fun b!1217770 () Bool)

(assert (=> b!1217770 (= e!781698 (and (inv!16643 (h!17853 (t!113272 (t!113272 tokens!556)))) e!781699 tp!346013))))

(declare-fun b!1217771 () Bool)

(declare-fun tp!346009 () Bool)

(assert (=> b!1217771 (= e!781699 (and (inv!21 (value!69729 (h!17853 (t!113272 (t!113272 tokens!556))))) e!781702 tp!346009))))

(assert (=> b!1217773 (= e!781700 (and tp!346012 tp!346010))))

(assert (=> b!1217466 (= tp!345901 e!781698)))

(assert (= b!1217772 b!1217773))

(assert (= b!1217771 b!1217772))

(assert (= b!1217770 b!1217771))

(assert (= (and b!1217466 ((_ is Cons!12452) (t!113272 (t!113272 tokens!556)))) b!1217770))

(declare-fun m!1391727 () Bool)

(assert (=> b!1217772 m!1391727))

(declare-fun m!1391729 () Bool)

(assert (=> b!1217772 m!1391729))

(declare-fun m!1391731 () Bool)

(assert (=> b!1217770 m!1391731))

(declare-fun m!1391733 () Bool)

(assert (=> b!1217771 m!1391733))

(declare-fun b!1217776 () Bool)

(declare-fun e!781703 () Bool)

(declare-fun tp!346014 () Bool)

(assert (=> b!1217776 (= e!781703 tp!346014)))

(declare-fun b!1217775 () Bool)

(declare-fun tp!346018 () Bool)

(declare-fun tp!346017 () Bool)

(assert (=> b!1217775 (= e!781703 (and tp!346018 tp!346017))))

(declare-fun b!1217774 () Bool)

(assert (=> b!1217774 (= e!781703 tp_is_empty!6351)))

(assert (=> b!1217453 (= tp!345881 e!781703)))

(declare-fun b!1217777 () Bool)

(declare-fun tp!346015 () Bool)

(declare-fun tp!346016 () Bool)

(assert (=> b!1217777 (= e!781703 (and tp!346015 tp!346016))))

(assert (= (and b!1217453 ((_ is ElementMatch!3415) (reg!3744 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217774))

(assert (= (and b!1217453 ((_ is Concat!5629) (reg!3744 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217775))

(assert (= (and b!1217453 ((_ is Star!3415) (reg!3744 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217776))

(assert (= (and b!1217453 ((_ is Union!3415) (reg!3744 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217777))

(declare-fun b!1217780 () Bool)

(declare-fun e!781704 () Bool)

(declare-fun tp!346019 () Bool)

(assert (=> b!1217780 (= e!781704 tp!346019)))

(declare-fun b!1217779 () Bool)

(declare-fun tp!346023 () Bool)

(declare-fun tp!346022 () Bool)

(assert (=> b!1217779 (= e!781704 (and tp!346023 tp!346022))))

(declare-fun b!1217778 () Bool)

(assert (=> b!1217778 (= e!781704 tp_is_empty!6351)))

(assert (=> b!1217434 (= tp!345862 e!781704)))

(declare-fun b!1217781 () Bool)

(declare-fun tp!346020 () Bool)

(declare-fun tp!346021 () Bool)

(assert (=> b!1217781 (= e!781704 (and tp!346020 tp!346021))))

(assert (= (and b!1217434 ((_ is ElementMatch!3415) (regOne!7343 (regex!2145 (h!17854 rules!2728))))) b!1217778))

(assert (= (and b!1217434 ((_ is Concat!5629) (regOne!7343 (regex!2145 (h!17854 rules!2728))))) b!1217779))

(assert (= (and b!1217434 ((_ is Star!3415) (regOne!7343 (regex!2145 (h!17854 rules!2728))))) b!1217780))

(assert (= (and b!1217434 ((_ is Union!3415) (regOne!7343 (regex!2145 (h!17854 rules!2728))))) b!1217781))

(declare-fun b!1217784 () Bool)

(declare-fun e!781705 () Bool)

(declare-fun tp!346024 () Bool)

(assert (=> b!1217784 (= e!781705 tp!346024)))

(declare-fun b!1217783 () Bool)

(declare-fun tp!346028 () Bool)

(declare-fun tp!346027 () Bool)

(assert (=> b!1217783 (= e!781705 (and tp!346028 tp!346027))))

(declare-fun b!1217782 () Bool)

(assert (=> b!1217782 (= e!781705 tp_is_empty!6351)))

(assert (=> b!1217434 (= tp!345863 e!781705)))

(declare-fun b!1217785 () Bool)

(declare-fun tp!346025 () Bool)

(declare-fun tp!346026 () Bool)

(assert (=> b!1217785 (= e!781705 (and tp!346025 tp!346026))))

(assert (= (and b!1217434 ((_ is ElementMatch!3415) (regTwo!7343 (regex!2145 (h!17854 rules!2728))))) b!1217782))

(assert (= (and b!1217434 ((_ is Concat!5629) (regTwo!7343 (regex!2145 (h!17854 rules!2728))))) b!1217783))

(assert (= (and b!1217434 ((_ is Star!3415) (regTwo!7343 (regex!2145 (h!17854 rules!2728))))) b!1217784))

(assert (= (and b!1217434 ((_ is Union!3415) (regTwo!7343 (regex!2145 (h!17854 rules!2728))))) b!1217785))

(declare-fun b!1217788 () Bool)

(declare-fun e!781706 () Bool)

(declare-fun tp!346029 () Bool)

(assert (=> b!1217788 (= e!781706 tp!346029)))

(declare-fun b!1217787 () Bool)

(declare-fun tp!346033 () Bool)

(declare-fun tp!346032 () Bool)

(assert (=> b!1217787 (= e!781706 (and tp!346033 tp!346032))))

(declare-fun b!1217786 () Bool)

(assert (=> b!1217786 (= e!781706 tp_is_empty!6351)))

(assert (=> b!1217432 (= tp!345865 e!781706)))

(declare-fun b!1217789 () Bool)

(declare-fun tp!346030 () Bool)

(declare-fun tp!346031 () Bool)

(assert (=> b!1217789 (= e!781706 (and tp!346030 tp!346031))))

(assert (= (and b!1217432 ((_ is ElementMatch!3415) (regOne!7342 (regex!2145 (h!17854 rules!2728))))) b!1217786))

(assert (= (and b!1217432 ((_ is Concat!5629) (regOne!7342 (regex!2145 (h!17854 rules!2728))))) b!1217787))

(assert (= (and b!1217432 ((_ is Star!3415) (regOne!7342 (regex!2145 (h!17854 rules!2728))))) b!1217788))

(assert (= (and b!1217432 ((_ is Union!3415) (regOne!7342 (regex!2145 (h!17854 rules!2728))))) b!1217789))

(declare-fun b!1217792 () Bool)

(declare-fun e!781707 () Bool)

(declare-fun tp!346034 () Bool)

(assert (=> b!1217792 (= e!781707 tp!346034)))

(declare-fun b!1217791 () Bool)

(declare-fun tp!346038 () Bool)

(declare-fun tp!346037 () Bool)

(assert (=> b!1217791 (= e!781707 (and tp!346038 tp!346037))))

(declare-fun b!1217790 () Bool)

(assert (=> b!1217790 (= e!781707 tp_is_empty!6351)))

(assert (=> b!1217432 (= tp!345864 e!781707)))

(declare-fun b!1217793 () Bool)

(declare-fun tp!346035 () Bool)

(declare-fun tp!346036 () Bool)

(assert (=> b!1217793 (= e!781707 (and tp!346035 tp!346036))))

(assert (= (and b!1217432 ((_ is ElementMatch!3415) (regTwo!7342 (regex!2145 (h!17854 rules!2728))))) b!1217790))

(assert (= (and b!1217432 ((_ is Concat!5629) (regTwo!7342 (regex!2145 (h!17854 rules!2728))))) b!1217791))

(assert (= (and b!1217432 ((_ is Star!3415) (regTwo!7342 (regex!2145 (h!17854 rules!2728))))) b!1217792))

(assert (= (and b!1217432 ((_ is Union!3415) (regTwo!7342 (regex!2145 (h!17854 rules!2728))))) b!1217793))

(declare-fun b!1217794 () Bool)

(declare-fun e!781708 () Bool)

(declare-fun tp!346039 () Bool)

(assert (=> b!1217794 (= e!781708 (and tp_is_empty!6351 tp!346039))))

(assert (=> b!1217467 (= tp!345897 e!781708)))

(assert (= (and b!1217467 ((_ is Cons!12451) (originalCharacters!2699 (h!17853 (t!113272 tokens!556))))) b!1217794))

(declare-fun b!1217797 () Bool)

(declare-fun e!781709 () Bool)

(declare-fun tp!346040 () Bool)

(assert (=> b!1217797 (= e!781709 tp!346040)))

(declare-fun b!1217796 () Bool)

(declare-fun tp!346044 () Bool)

(declare-fun tp!346043 () Bool)

(assert (=> b!1217796 (= e!781709 (and tp!346044 tp!346043))))

(declare-fun b!1217795 () Bool)

(assert (=> b!1217795 (= e!781709 tp_is_empty!6351)))

(assert (=> b!1217452 (= tp!345885 e!781709)))

(declare-fun b!1217798 () Bool)

(declare-fun tp!346041 () Bool)

(declare-fun tp!346042 () Bool)

(assert (=> b!1217798 (= e!781709 (and tp!346041 tp!346042))))

(assert (= (and b!1217452 ((_ is ElementMatch!3415) (regOne!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217795))

(assert (= (and b!1217452 ((_ is Concat!5629) (regOne!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217796))

(assert (= (and b!1217452 ((_ is Star!3415) (regOne!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217797))

(assert (= (and b!1217452 ((_ is Union!3415) (regOne!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217798))

(declare-fun b!1217801 () Bool)

(declare-fun e!781710 () Bool)

(declare-fun tp!346045 () Bool)

(assert (=> b!1217801 (= e!781710 tp!346045)))

(declare-fun b!1217800 () Bool)

(declare-fun tp!346049 () Bool)

(declare-fun tp!346048 () Bool)

(assert (=> b!1217800 (= e!781710 (and tp!346049 tp!346048))))

(declare-fun b!1217799 () Bool)

(assert (=> b!1217799 (= e!781710 tp_is_empty!6351)))

(assert (=> b!1217452 (= tp!345884 e!781710)))

(declare-fun b!1217802 () Bool)

(declare-fun tp!346046 () Bool)

(declare-fun tp!346047 () Bool)

(assert (=> b!1217802 (= e!781710 (and tp!346046 tp!346047))))

(assert (= (and b!1217452 ((_ is ElementMatch!3415) (regTwo!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217799))

(assert (= (and b!1217452 ((_ is Concat!5629) (regTwo!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217800))

(assert (= (and b!1217452 ((_ is Star!3415) (regTwo!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217801))

(assert (= (and b!1217452 ((_ is Union!3415) (regTwo!7342 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217802))

(declare-fun b!1217805 () Bool)

(declare-fun e!781711 () Bool)

(declare-fun tp!346050 () Bool)

(assert (=> b!1217805 (= e!781711 tp!346050)))

(declare-fun b!1217804 () Bool)

(declare-fun tp!346054 () Bool)

(declare-fun tp!346053 () Bool)

(assert (=> b!1217804 (= e!781711 (and tp!346054 tp!346053))))

(declare-fun b!1217803 () Bool)

(assert (=> b!1217803 (= e!781711 tp_is_empty!6351)))

(assert (=> b!1217468 (= tp!345899 e!781711)))

(declare-fun b!1217806 () Bool)

(declare-fun tp!346051 () Bool)

(declare-fun tp!346052 () Bool)

(assert (=> b!1217806 (= e!781711 (and tp!346051 tp!346052))))

(assert (= (and b!1217468 ((_ is ElementMatch!3415) (regex!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) b!1217803))

(assert (= (and b!1217468 ((_ is Concat!5629) (regex!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) b!1217804))

(assert (= (and b!1217468 ((_ is Star!3415) (regex!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) b!1217805))

(assert (= (and b!1217468 ((_ is Union!3415) (regex!2145 (rule!3570 (h!17853 (t!113272 tokens!556)))))) b!1217806))

(declare-fun b!1217809 () Bool)

(declare-fun e!781712 () Bool)

(declare-fun tp!346055 () Bool)

(assert (=> b!1217809 (= e!781712 tp!346055)))

(declare-fun b!1217808 () Bool)

(declare-fun tp!346059 () Bool)

(declare-fun tp!346058 () Bool)

(assert (=> b!1217808 (= e!781712 (and tp!346059 tp!346058))))

(declare-fun b!1217807 () Bool)

(assert (=> b!1217807 (= e!781712 tp_is_empty!6351)))

(assert (=> b!1217454 (= tp!345882 e!781712)))

(declare-fun b!1217810 () Bool)

(declare-fun tp!346056 () Bool)

(declare-fun tp!346057 () Bool)

(assert (=> b!1217810 (= e!781712 (and tp!346056 tp!346057))))

(assert (= (and b!1217454 ((_ is ElementMatch!3415) (regOne!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217807))

(assert (= (and b!1217454 ((_ is Concat!5629) (regOne!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217808))

(assert (= (and b!1217454 ((_ is Star!3415) (regOne!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217809))

(assert (= (and b!1217454 ((_ is Union!3415) (regOne!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217810))

(declare-fun b!1217813 () Bool)

(declare-fun e!781713 () Bool)

(declare-fun tp!346060 () Bool)

(assert (=> b!1217813 (= e!781713 tp!346060)))

(declare-fun b!1217812 () Bool)

(declare-fun tp!346064 () Bool)

(declare-fun tp!346063 () Bool)

(assert (=> b!1217812 (= e!781713 (and tp!346064 tp!346063))))

(declare-fun b!1217811 () Bool)

(assert (=> b!1217811 (= e!781713 tp_is_empty!6351)))

(assert (=> b!1217454 (= tp!345883 e!781713)))

(declare-fun b!1217814 () Bool)

(declare-fun tp!346061 () Bool)

(declare-fun tp!346062 () Bool)

(assert (=> b!1217814 (= e!781713 (and tp!346061 tp!346062))))

(assert (= (and b!1217454 ((_ is ElementMatch!3415) (regTwo!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217811))

(assert (= (and b!1217454 ((_ is Concat!5629) (regTwo!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217812))

(assert (= (and b!1217454 ((_ is Star!3415) (regTwo!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217813))

(assert (= (and b!1217454 ((_ is Union!3415) (regTwo!7343 (regex!2145 (rule!3570 (h!17853 tokens!556)))))) b!1217814))

(declare-fun b!1217815 () Bool)

(declare-fun e!781714 () Bool)

(declare-fun tp!346065 () Bool)

(assert (=> b!1217815 (= e!781714 (and tp_is_empty!6351 tp!346065))))

(assert (=> b!1217450 (= tp!345880 e!781714)))

(assert (= (and b!1217450 ((_ is Cons!12451) (t!113271 (t!113271 input!2346)))) b!1217815))

(declare-fun b_lambda!35915 () Bool)

(assert (= b_lambda!35913 (or d!347533 b_lambda!35915)))

(declare-fun bs!288854 () Bool)

(declare-fun d!347685 () Bool)

(assert (= bs!288854 (and d!347685 d!347533)))

(assert (=> bs!288854 (= (dynLambda!5436 lambda!49146 (h!17853 (list!4588 (seqFromList!1555 tokens!556)))) (rulesProduceIndividualToken!833 thiss!20528 rules!2728 (h!17853 (list!4588 (seqFromList!1555 tokens!556)))))))

(assert (=> bs!288854 m!1391571))

(assert (=> b!1217728 d!347685))

(declare-fun b_lambda!35917 () Bool)

(assert (= b_lambda!35907 (or (and b!1217773 b_free!29375 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 (t!113272 tokens!556)))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))))) (and b!1217445 b_free!29355 (= (toChars!3133 (transformation!2145 (h!17854 (t!113273 rules!2728)))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))))) (and b!1217237 b_free!29339 (= (toChars!3133 (transformation!2145 (rule!3570 (h!17853 tokens!556)))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))))) (and b!1217469 b_free!29359) (and b!1217235 b_free!29343 (= (toChars!3133 (transformation!2145 (h!17854 rules!2728))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))))) (and b!1217746 b_free!29371 (= (toChars!3133 (transformation!2145 (h!17854 (t!113273 (t!113273 rules!2728))))) (toChars!3133 (transformation!2145 (rule!3570 (h!17853 (t!113272 tokens!556))))))) b_lambda!35917)))

(check-sat (not b!1217814) (not b!1217793) (not b!1217788) (not b!1217808) (not d!347679) (not b!1217763) (not b!1217779) (not b!1217787) (not b_next!30057) (not b!1217573) (not b!1217739) b_and!82785 (not b!1217764) (not b!1217752) (not d!347629) (not b!1217584) (not b!1217729) (not b!1217717) (not b!1217777) (not b!1217750) b_and!82819 (not d!347633) (not b!1217745) b_and!82801 (not b!1217586) (not b!1217812) (not b_next!30061) (not b!1217813) (not b!1217815) (not b!1217712) (not b!1217771) (not b!1217704) (not b_next!30077) (not b!1217738) (not b!1217708) (not b!1217770) (not b_next!30043) (not d!347671) (not b!1217765) (not d!347681) (not b!1217744) (not tb!66873) b_and!82761 (not b!1217805) b_and!82803 (not b!1217796) (not b_next!30073) (not b!1217809) (not d!347673) (not b!1217715) (not d!347639) (not d!347595) (not b!1217721) (not b!1217705) (not b!1217798) (not b!1217792) (not b!1217402) (not b!1217701) (not b!1217785) (not b!1217703) (not b!1217789) (not d!347683) (not b_next!30079) (not b!1217707) (not b!1217700) (not b_lambda!35917) (not b_next!30063) (not b!1217747) (not b!1217781) b_and!82807 (not b!1217800) b_and!82817 b_and!82789 (not b!1217723) (not b!1217716) (not b!1217810) (not b!1217802) (not b!1217588) (not b!1217772) b_and!82821 (not b_lambda!35901) (not b!1217768) (not b_next!30045) (not d!347599) (not b!1217769) (not b!1217595) (not b!1217754) b_and!82765 (not b!1217776) (not d!347643) (not b!1217730) (not d!347667) (not b_next!30041) (not bs!288854) b_and!82805 (not b_next!30075) (not b!1217804) (not b!1217571) (not b!1217753) (not b!1217783) (not b!1217791) (not d!347659) (not b!1217775) (not b!1217797) (not b!1217589) (not d!347597) (not b!1217794) (not d!347647) (not b_next!30059) (not b!1217706) (not b!1217719) (not bm!84574) (not b!1217504) tp_is_empty!6351 (not d!347593) (not b_next!30047) b_and!82823 (not b!1217709) (not b!1217801) (not b!1217587) (not d!347677) (not b!1217733) (not b!1217784) (not b!1217767) (not b!1217711) (not d!347655) (not b!1217806) (not b!1217572) (not b!1217780) (not d!347637) (not b_lambda!35915))
(check-sat (not b_next!30057) b_and!82785 (not b_next!30061) b_and!82761 (not b_next!30079) b_and!82789 b_and!82821 (not b_next!30045) b_and!82765 (not b_next!30041) (not b_next!30059) b_and!82819 b_and!82801 (not b_next!30043) (not b_next!30077) b_and!82803 (not b_next!30073) (not b_next!30063) b_and!82807 b_and!82817 b_and!82805 (not b_next!30075) (not b_next!30047) b_and!82823)
