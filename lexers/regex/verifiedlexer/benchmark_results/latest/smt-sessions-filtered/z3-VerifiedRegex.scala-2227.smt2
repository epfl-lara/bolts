; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109942 () Bool)

(assert start!109942)

(declare-fun b!1231338 () Bool)

(declare-fun b_free!29641 () Bool)

(declare-fun b_next!30345 () Bool)

(assert (=> b!1231338 (= b_free!29641 (not b_next!30345))))

(declare-fun tp!351497 () Bool)

(declare-fun b_and!84689 () Bool)

(assert (=> b!1231338 (= tp!351497 b_and!84689)))

(declare-fun b_free!29643 () Bool)

(declare-fun b_next!30347 () Bool)

(assert (=> b!1231338 (= b_free!29643 (not b_next!30347))))

(declare-fun tp!351488 () Bool)

(declare-fun b_and!84691 () Bool)

(assert (=> b!1231338 (= tp!351488 b_and!84691)))

(declare-fun b!1231334 () Bool)

(declare-fun b_free!29645 () Bool)

(declare-fun b_next!30349 () Bool)

(assert (=> b!1231334 (= b_free!29645 (not b_next!30349))))

(declare-fun tp!351490 () Bool)

(declare-fun b_and!84693 () Bool)

(assert (=> b!1231334 (= tp!351490 b_and!84693)))

(declare-fun b_free!29647 () Bool)

(declare-fun b_next!30351 () Bool)

(assert (=> b!1231334 (= b_free!29647 (not b_next!30351))))

(declare-fun tp!351495 () Bool)

(declare-fun b_and!84695 () Bool)

(assert (=> b!1231334 (= tp!351495 b_and!84695)))

(declare-fun b!1231319 () Bool)

(declare-fun e!788799 () Bool)

(declare-fun e!788803 () Bool)

(assert (=> b!1231319 (= e!788799 e!788803)))

(declare-fun res!551863 () Bool)

(assert (=> b!1231319 (=> (not res!551863) (not e!788803))))

(declare-datatypes ((C!7176 0))(
  ( (C!7177 (val!4118 Int)) )
))
(declare-datatypes ((List!12577 0))(
  ( (Nil!12519) (Cons!12519 (h!17920 C!7176) (t!115451 List!12577)) )
))
(declare-fun lt!419566 () List!12577)

(declare-fun lt!419560 () List!12577)

(assert (=> b!1231319 (= res!551863 (= lt!419566 lt!419560))))

(declare-datatypes ((IArray!8203 0))(
  ( (IArray!8204 (innerList!4159 List!12577)) )
))
(declare-datatypes ((Conc!4099 0))(
  ( (Node!4099 (left!10778 Conc!4099) (right!11108 Conc!4099) (csize!8428 Int) (cheight!4310 Int)) (Leaf!6327 (xs!6810 IArray!8203) (csize!8429 Int)) (Empty!4099) )
))
(declare-datatypes ((BalanceConc!8130 0))(
  ( (BalanceConc!8131 (c!205959 Conc!4099)) )
))
(declare-fun lt!419561 () BalanceConc!8130)

(declare-fun list!4640 (BalanceConc!8130) List!12577)

(assert (=> b!1231319 (= lt!419560 (list!4640 lt!419561))))

(declare-fun lt!419563 () BalanceConc!8130)

(assert (=> b!1231319 (= lt!419566 (list!4640 lt!419563))))

(declare-fun res!551875 () Bool)

(declare-fun e!788794 () Bool)

(assert (=> start!109942 (=> (not res!551875) (not e!788794))))

(declare-datatypes ((LexerInterface!1854 0))(
  ( (LexerInterfaceExt!1851 (__x!8169 Int)) (Lexer!1852) )
))
(declare-fun thiss!20528 () LexerInterface!1854)

(get-info :version)

(assert (=> start!109942 (= res!551875 ((_ is Lexer!1852) thiss!20528))))

(assert (=> start!109942 e!788794))

(assert (=> start!109942 true))

(declare-fun e!788793 () Bool)

(assert (=> start!109942 e!788793))

(declare-fun e!788810 () Bool)

(assert (=> start!109942 e!788810))

(declare-fun e!788796 () Bool)

(assert (=> start!109942 e!788796))

(declare-fun b!1231320 () Bool)

(declare-fun e!788802 () Bool)

(assert (=> b!1231320 (= e!788802 e!788799)))

(declare-fun res!551868 () Bool)

(assert (=> b!1231320 (=> (not res!551868) (not e!788799))))

(assert (=> b!1231320 (= res!551868 (= lt!419563 lt!419561))))

(declare-datatypes ((List!12578 0))(
  ( (Nil!12520) (Cons!12520 (h!17921 (_ BitVec 16)) (t!115452 List!12578)) )
))
(declare-datatypes ((TokenValue!2227 0))(
  ( (FloatLiteralValue!4454 (text!16034 List!12578)) (TokenValueExt!2226 (__x!8170 Int)) (Broken!11135 (value!70102 List!12578)) (Object!2284) (End!2227) (Def!2227) (Underscore!2227) (Match!2227) (Else!2227) (Error!2227) (Case!2227) (If!2227) (Extends!2227) (Abstract!2227) (Class!2227) (Val!2227) (DelimiterValue!4454 (del!2287 List!12578)) (KeywordValue!2233 (value!70103 List!12578)) (CommentValue!4454 (value!70104 List!12578)) (WhitespaceValue!4454 (value!70105 List!12578)) (IndentationValue!2227 (value!70106 List!12578)) (String!15266) (Int32!2227) (Broken!11136 (value!70107 List!12578)) (Boolean!2228) (Unit!18801) (OperatorValue!2230 (op!2287 List!12578)) (IdentifierValue!4454 (value!70108 List!12578)) (IdentifierValue!4455 (value!70109 List!12578)) (WhitespaceValue!4455 (value!70110 List!12578)) (True!4454) (False!4454) (Broken!11137 (value!70111 List!12578)) (Broken!11138 (value!70112 List!12578)) (True!4455) (RightBrace!2227) (RightBracket!2227) (Colon!2227) (Null!2227) (Comma!2227) (LeftBracket!2227) (False!4455) (LeftBrace!2227) (ImaginaryLiteralValue!2227 (text!16035 List!12578)) (StringLiteralValue!6681 (value!70113 List!12578)) (EOFValue!2227 (value!70114 List!12578)) (IdentValue!2227 (value!70115 List!12578)) (DelimiterValue!4455 (value!70116 List!12578)) (DedentValue!2227 (value!70117 List!12578)) (NewLineValue!2227 (value!70118 List!12578)) (IntegerValue!6681 (value!70119 (_ BitVec 32)) (text!16036 List!12578)) (IntegerValue!6682 (value!70120 Int) (text!16037 List!12578)) (Times!2227) (Or!2227) (Equal!2227) (Minus!2227) (Broken!11139 (value!70121 List!12578)) (And!2227) (Div!2227) (LessEqual!2227) (Mod!2227) (Concat!5656) (Not!2227) (Plus!2227) (SpaceValue!2227 (value!70122 List!12578)) (IntegerValue!6683 (value!70123 Int) (text!16038 List!12578)) (StringLiteralValue!6682 (text!16039 List!12578)) (FloatLiteralValue!4455 (text!16040 List!12578)) (BytesLiteralValue!2227 (value!70124 List!12578)) (CommentValue!4455 (value!70125 List!12578)) (StringLiteralValue!6683 (value!70126 List!12578)) (ErrorTokenValue!2227 (msg!2288 List!12578)) )
))
(declare-datatypes ((Regex!3429 0))(
  ( (ElementMatch!3429 (c!205960 C!7176)) (Concat!5657 (regOne!7370 Regex!3429) (regTwo!7370 Regex!3429)) (EmptyExpr!3429) (Star!3429 (reg!3758 Regex!3429)) (EmptyLang!3429) (Union!3429 (regOne!7371 Regex!3429) (regTwo!7371 Regex!3429)) )
))
(declare-datatypes ((String!15267 0))(
  ( (String!15268 (value!70127 String)) )
))
(declare-datatypes ((TokenValueInjection!4150 0))(
  ( (TokenValueInjection!4151 (toValue!3300 Int) (toChars!3159 Int)) )
))
(declare-datatypes ((Rule!4118 0))(
  ( (Rule!4119 (regex!2159 Regex!3429) (tag!2421 String!15267) (isSeparator!2159 Bool) (transformation!2159 TokenValueInjection!4150)) )
))
(declare-datatypes ((Token!3980 0))(
  ( (Token!3981 (value!70128 TokenValue!2227) (rule!3588 Rule!4118) (size!9898 Int) (originalCharacters!2713 List!12577)) )
))
(declare-datatypes ((List!12579 0))(
  ( (Nil!12521) (Cons!12521 (h!17922 Token!3980) (t!115453 List!12579)) )
))
(declare-fun tokens!556 () List!12579)

(declare-fun charsOf!1163 (Token!3980) BalanceConc!8130)

(assert (=> b!1231320 (= lt!419561 (charsOf!1163 (h!17922 tokens!556)))))

(declare-datatypes ((tuple2!12404 0))(
  ( (tuple2!12405 (_1!7049 Token!3980) (_2!7049 List!12577)) )
))
(declare-fun lt!419564 () tuple2!12404)

(assert (=> b!1231320 (= lt!419563 (charsOf!1163 (_1!7049 lt!419564)))))

(declare-fun b!1231321 () Bool)

(declare-fun res!551873 () Bool)

(assert (=> b!1231321 (=> (not res!551873) (not e!788803))))

(declare-fun input!2346 () List!12577)

(declare-fun ++!3203 (List!12577 List!12577) List!12577)

(assert (=> b!1231321 (= res!551873 (= (++!3203 lt!419560 (_2!7049 lt!419564)) input!2346))))

(declare-fun b!1231322 () Bool)

(declare-fun e!788798 () Bool)

(declare-fun e!788791 () Bool)

(assert (=> b!1231322 (= e!788798 e!788791)))

(declare-fun res!551874 () Bool)

(assert (=> b!1231322 (=> (not res!551874) (not e!788791))))

(declare-datatypes ((Option!2523 0))(
  ( (None!2522) (Some!2522 (v!20679 tuple2!12404)) )
))
(declare-fun lt!419569 () Option!2523)

(declare-fun isDefined!2159 (Option!2523) Bool)

(assert (=> b!1231322 (= res!551874 (isDefined!2159 lt!419569))))

(declare-datatypes ((List!12580 0))(
  ( (Nil!12522) (Cons!12522 (h!17923 Rule!4118) (t!115454 List!12580)) )
))
(declare-fun rules!2728 () List!12580)

(declare-fun maxPrefix!976 (LexerInterface!1854 List!12580 List!12577) Option!2523)

(assert (=> b!1231322 (= lt!419569 (maxPrefix!976 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1231323 () Bool)

(declare-fun e!788792 () Bool)

(declare-fun ListPrimitiveSize!98 (List!12579) Int)

(assert (=> b!1231323 (= e!788792 (>= (ListPrimitiveSize!98 (t!115453 tokens!556)) (ListPrimitiveSize!98 tokens!556)))))

(declare-fun b!1231324 () Bool)

(declare-fun res!551867 () Bool)

(assert (=> b!1231324 (=> (not res!551867) (not e!788794))))

(declare-fun rulesInvariant!1728 (LexerInterface!1854 List!12580) Bool)

(assert (=> b!1231324 (= res!551867 (rulesInvariant!1728 thiss!20528 rules!2728))))

(declare-fun b!1231325 () Bool)

(declare-fun res!551870 () Bool)

(assert (=> b!1231325 (=> (not res!551870) (not e!788794))))

(declare-fun isEmpty!7476 (List!12580) Bool)

(assert (=> b!1231325 (= res!551870 (not (isEmpty!7476 rules!2728)))))

(declare-fun b!1231326 () Bool)

(declare-fun res!551866 () Bool)

(assert (=> b!1231326 (=> (not res!551866) (not e!788803))))

(declare-fun matchR!1544 (Regex!3429 List!12577) Bool)

(assert (=> b!1231326 (= res!551866 (matchR!1544 (regex!2159 (rule!3588 (_1!7049 lt!419564))) lt!419566))))

(declare-fun b!1231327 () Bool)

(declare-fun e!788801 () Bool)

(declare-fun tp!351494 () Bool)

(assert (=> b!1231327 (= e!788793 (and e!788801 tp!351494))))

(declare-fun b!1231328 () Bool)

(assert (=> b!1231328 (= e!788803 e!788792)))

(declare-fun res!551872 () Bool)

(assert (=> b!1231328 (=> (not res!551872) (not e!788792))))

(declare-fun lt!419567 () Bool)

(assert (=> b!1231328 (= res!551872 (not lt!419567))))

(declare-datatypes ((Unit!18802 0))(
  ( (Unit!18803) )
))
(declare-fun lt!419562 () Unit!18802)

(declare-fun e!788800 () Unit!18802)

(assert (=> b!1231328 (= lt!419562 e!788800)))

(declare-fun c!205958 () Bool)

(assert (=> b!1231328 (= c!205958 lt!419567)))

(declare-fun rulesProduceIndividualToken!848 (LexerInterface!1854 List!12580 Token!3980) Bool)

(assert (=> b!1231328 (= lt!419567 (not (rulesProduceIndividualToken!848 thiss!20528 rules!2728 (h!17922 tokens!556))))))

(declare-fun e!788797 () Bool)

(declare-fun b!1231329 () Bool)

(declare-fun e!788807 () Bool)

(declare-fun tp!351489 () Bool)

(declare-fun inv!16734 (String!15267) Bool)

(declare-fun inv!16737 (TokenValueInjection!4150) Bool)

(assert (=> b!1231329 (= e!788807 (and tp!351489 (inv!16734 (tag!2421 (rule!3588 (h!17922 tokens!556)))) (inv!16737 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) e!788797))))

(declare-fun b!1231330 () Bool)

(declare-fun Unit!18804 () Unit!18802)

(assert (=> b!1231330 (= e!788800 Unit!18804)))

(declare-fun lt!419559 () List!12579)

(assert (=> b!1231330 (= lt!419559 (Cons!12521 (h!17922 tokens!556) Nil!12521))))

(declare-datatypes ((tuple2!12406 0))(
  ( (tuple2!12407 (_1!7050 List!12579) (_2!7050 List!12577)) )
))
(declare-fun lt!419568 () tuple2!12406)

(declare-fun lt!419565 () Unit!18802)

(declare-fun lemmaLexThenLexPrefix!168 (LexerInterface!1854 List!12580 List!12577 List!12577 List!12579 List!12579 List!12577) Unit!18802)

(declare-fun lexList!484 (LexerInterface!1854 List!12580 List!12577) tuple2!12406)

(assert (=> b!1231330 (= lt!419565 (lemmaLexThenLexPrefix!168 thiss!20528 rules!2728 lt!419560 (_2!7049 lt!419564) lt!419559 (_1!7050 (lexList!484 thiss!20528 rules!2728 (_2!7049 lt!419564))) (_2!7050 lt!419568)))))

(declare-fun res!551865 () Bool)

(assert (=> b!1231330 (= res!551865 (= (lexList!484 thiss!20528 rules!2728 lt!419560) (tuple2!12407 lt!419559 Nil!12519)))))

(declare-fun e!788809 () Bool)

(assert (=> b!1231330 (=> (not res!551865) (not e!788809))))

(assert (=> b!1231330 e!788809))

(declare-fun b!1231331 () Bool)

(assert (=> b!1231331 (= e!788809 false)))

(declare-fun b!1231332 () Bool)

(assert (=> b!1231332 (= e!788791 e!788802)))

(declare-fun res!551871 () Bool)

(assert (=> b!1231332 (=> (not res!551871) (not e!788802))))

(assert (=> b!1231332 (= res!551871 (= (_1!7049 lt!419564) (h!17922 tokens!556)))))

(declare-fun get!4118 (Option!2523) tuple2!12404)

(assert (=> b!1231332 (= lt!419564 (get!4118 lt!419569))))

(declare-fun b!1231333 () Bool)

(declare-fun Unit!18805 () Unit!18802)

(assert (=> b!1231333 (= e!788800 Unit!18805)))

(declare-fun e!788795 () Bool)

(assert (=> b!1231334 (= e!788795 (and tp!351490 tp!351495))))

(declare-fun b!1231335 () Bool)

(declare-fun res!551864 () Bool)

(assert (=> b!1231335 (=> (not res!551864) (not e!788792))))

(assert (=> b!1231335 (= res!551864 (= (_1!7050 (lexList!484 thiss!20528 rules!2728 (_2!7049 lt!419564))) (t!115453 tokens!556)))))

(declare-fun tp!351491 () Bool)

(declare-fun b!1231336 () Bool)

(declare-fun e!788808 () Bool)

(declare-fun inv!21 (TokenValue!2227) Bool)

(assert (=> b!1231336 (= e!788808 (and (inv!21 (value!70128 (h!17922 tokens!556))) e!788807 tp!351491))))

(declare-fun b!1231337 () Bool)

(assert (=> b!1231337 (= e!788794 e!788798)))

(declare-fun res!551869 () Bool)

(assert (=> b!1231337 (=> (not res!551869) (not e!788798))))

(assert (=> b!1231337 (= res!551869 (and (= (_1!7050 lt!419568) tokens!556) (not ((_ is Nil!12521) tokens!556))))))

(assert (=> b!1231337 (= lt!419568 (lexList!484 thiss!20528 rules!2728 input!2346))))

(assert (=> b!1231338 (= e!788797 (and tp!351497 tp!351488))))

(declare-fun b!1231339 () Bool)

(declare-fun tp_is_empty!6379 () Bool)

(declare-fun tp!351496 () Bool)

(assert (=> b!1231339 (= e!788796 (and tp_is_empty!6379 tp!351496))))

(declare-fun b!1231340 () Bool)

(declare-fun tp!351493 () Bool)

(declare-fun inv!16738 (Token!3980) Bool)

(assert (=> b!1231340 (= e!788810 (and (inv!16738 (h!17922 tokens!556)) e!788808 tp!351493))))

(declare-fun tp!351492 () Bool)

(declare-fun b!1231341 () Bool)

(assert (=> b!1231341 (= e!788801 (and tp!351492 (inv!16734 (tag!2421 (h!17923 rules!2728))) (inv!16737 (transformation!2159 (h!17923 rules!2728))) e!788795))))

(assert (= (and start!109942 res!551875) b!1231325))

(assert (= (and b!1231325 res!551870) b!1231324))

(assert (= (and b!1231324 res!551867) b!1231337))

(assert (= (and b!1231337 res!551869) b!1231322))

(assert (= (and b!1231322 res!551874) b!1231332))

(assert (= (and b!1231332 res!551871) b!1231320))

(assert (= (and b!1231320 res!551868) b!1231319))

(assert (= (and b!1231319 res!551863) b!1231321))

(assert (= (and b!1231321 res!551873) b!1231326))

(assert (= (and b!1231326 res!551866) b!1231328))

(assert (= (and b!1231328 c!205958) b!1231330))

(assert (= (and b!1231328 (not c!205958)) b!1231333))

(assert (= (and b!1231330 res!551865) b!1231331))

(assert (= (and b!1231328 res!551872) b!1231335))

(assert (= (and b!1231335 res!551864) b!1231323))

(assert (= b!1231341 b!1231334))

(assert (= b!1231327 b!1231341))

(assert (= (and start!109942 ((_ is Cons!12522) rules!2728)) b!1231327))

(assert (= b!1231329 b!1231338))

(assert (= b!1231336 b!1231329))

(assert (= b!1231340 b!1231336))

(assert (= (and start!109942 ((_ is Cons!12521) tokens!556)) b!1231340))

(assert (= (and start!109942 ((_ is Cons!12519) input!2346)) b!1231339))

(declare-fun m!1407023 () Bool)

(assert (=> b!1231322 m!1407023))

(declare-fun m!1407025 () Bool)

(assert (=> b!1231322 m!1407025))

(declare-fun m!1407027 () Bool)

(assert (=> b!1231328 m!1407027))

(declare-fun m!1407029 () Bool)

(assert (=> b!1231319 m!1407029))

(declare-fun m!1407031 () Bool)

(assert (=> b!1231319 m!1407031))

(declare-fun m!1407033 () Bool)

(assert (=> b!1231326 m!1407033))

(declare-fun m!1407035 () Bool)

(assert (=> b!1231336 m!1407035))

(declare-fun m!1407037 () Bool)

(assert (=> b!1231330 m!1407037))

(declare-fun m!1407039 () Bool)

(assert (=> b!1231330 m!1407039))

(declare-fun m!1407041 () Bool)

(assert (=> b!1231330 m!1407041))

(declare-fun m!1407043 () Bool)

(assert (=> b!1231325 m!1407043))

(assert (=> b!1231335 m!1407037))

(declare-fun m!1407045 () Bool)

(assert (=> b!1231329 m!1407045))

(declare-fun m!1407047 () Bool)

(assert (=> b!1231329 m!1407047))

(declare-fun m!1407049 () Bool)

(assert (=> b!1231332 m!1407049))

(declare-fun m!1407051 () Bool)

(assert (=> b!1231320 m!1407051))

(declare-fun m!1407053 () Bool)

(assert (=> b!1231320 m!1407053))

(declare-fun m!1407055 () Bool)

(assert (=> b!1231323 m!1407055))

(declare-fun m!1407057 () Bool)

(assert (=> b!1231323 m!1407057))

(declare-fun m!1407059 () Bool)

(assert (=> b!1231337 m!1407059))

(declare-fun m!1407061 () Bool)

(assert (=> b!1231324 m!1407061))

(declare-fun m!1407063 () Bool)

(assert (=> b!1231341 m!1407063))

(declare-fun m!1407065 () Bool)

(assert (=> b!1231341 m!1407065))

(declare-fun m!1407067 () Bool)

(assert (=> b!1231321 m!1407067))

(declare-fun m!1407069 () Bool)

(assert (=> b!1231340 m!1407069))

(check-sat (not b!1231332) (not b!1231325) (not b_next!30351) (not b!1231336) (not b!1231321) (not b!1231335) (not b!1231341) (not b!1231328) (not b!1231320) (not b!1231329) (not b_next!30349) (not b!1231340) (not b_next!30345) b_and!84695 (not b!1231339) (not b!1231327) (not b!1231330) (not b_next!30347) (not b!1231322) (not b!1231323) (not b!1231326) b_and!84693 (not b!1231319) tp_is_empty!6379 b_and!84691 b_and!84689 (not b!1231324) (not b!1231337))
(check-sat b_and!84695 (not b_next!30347) (not b_next!30351) b_and!84693 (not b_next!30349) (not b_next!30345) b_and!84691 b_and!84689)
(get-model)

(declare-fun d!352530 () Bool)

(declare-fun lt!419618 () Bool)

(declare-fun e!788869 () Bool)

(assert (=> d!352530 (= lt!419618 e!788869)))

(declare-fun res!551933 () Bool)

(assert (=> d!352530 (=> (not res!551933) (not e!788869))))

(declare-datatypes ((IArray!8205 0))(
  ( (IArray!8206 (innerList!4160 List!12579)) )
))
(declare-datatypes ((Conc!4100 0))(
  ( (Node!4100 (left!10779 Conc!4100) (right!11109 Conc!4100) (csize!8430 Int) (cheight!4311 Int)) (Leaf!6328 (xs!6811 IArray!8205) (csize!8431 Int)) (Empty!4100) )
))
(declare-datatypes ((BalanceConc!8132 0))(
  ( (BalanceConc!8133 (c!206031 Conc!4100)) )
))
(declare-fun list!4642 (BalanceConc!8132) List!12579)

(declare-datatypes ((tuple2!12408 0))(
  ( (tuple2!12409 (_1!7051 BalanceConc!8132) (_2!7051 BalanceConc!8130)) )
))
(declare-fun lex!759 (LexerInterface!1854 List!12580 BalanceConc!8130) tuple2!12408)

(declare-fun print!696 (LexerInterface!1854 BalanceConc!8132) BalanceConc!8130)

(declare-fun singletonSeq!744 (Token!3980) BalanceConc!8132)

(assert (=> d!352530 (= res!551933 (= (list!4642 (_1!7051 (lex!759 thiss!20528 rules!2728 (print!696 thiss!20528 (singletonSeq!744 (h!17922 tokens!556)))))) (list!4642 (singletonSeq!744 (h!17922 tokens!556)))))))

(declare-fun e!788870 () Bool)

(assert (=> d!352530 (= lt!419618 e!788870)))

(declare-fun res!551932 () Bool)

(assert (=> d!352530 (=> (not res!551932) (not e!788870))))

(declare-fun lt!419619 () tuple2!12408)

(declare-fun size!9901 (BalanceConc!8132) Int)

(assert (=> d!352530 (= res!551932 (= (size!9901 (_1!7051 lt!419619)) 1))))

(assert (=> d!352530 (= lt!419619 (lex!759 thiss!20528 rules!2728 (print!696 thiss!20528 (singletonSeq!744 (h!17922 tokens!556)))))))

(assert (=> d!352530 (not (isEmpty!7476 rules!2728))))

(assert (=> d!352530 (= (rulesProduceIndividualToken!848 thiss!20528 rules!2728 (h!17922 tokens!556)) lt!419618)))

(declare-fun b!1231451 () Bool)

(declare-fun res!551934 () Bool)

(assert (=> b!1231451 (=> (not res!551934) (not e!788870))))

(declare-fun apply!2685 (BalanceConc!8132 Int) Token!3980)

(assert (=> b!1231451 (= res!551934 (= (apply!2685 (_1!7051 lt!419619) 0) (h!17922 tokens!556)))))

(declare-fun b!1231452 () Bool)

(declare-fun isEmpty!7480 (BalanceConc!8130) Bool)

(assert (=> b!1231452 (= e!788870 (isEmpty!7480 (_2!7051 lt!419619)))))

(declare-fun b!1231453 () Bool)

(assert (=> b!1231453 (= e!788869 (isEmpty!7480 (_2!7051 (lex!759 thiss!20528 rules!2728 (print!696 thiss!20528 (singletonSeq!744 (h!17922 tokens!556)))))))))

(assert (= (and d!352530 res!551932) b!1231451))

(assert (= (and b!1231451 res!551934) b!1231452))

(assert (= (and d!352530 res!551933) b!1231453))

(declare-fun m!1407193 () Bool)

(assert (=> d!352530 m!1407193))

(declare-fun m!1407195 () Bool)

(assert (=> d!352530 m!1407195))

(declare-fun m!1407197 () Bool)

(assert (=> d!352530 m!1407197))

(assert (=> d!352530 m!1407193))

(declare-fun m!1407199 () Bool)

(assert (=> d!352530 m!1407199))

(declare-fun m!1407201 () Bool)

(assert (=> d!352530 m!1407201))

(assert (=> d!352530 m!1407193))

(assert (=> d!352530 m!1407195))

(assert (=> d!352530 m!1407043))

(declare-fun m!1407203 () Bool)

(assert (=> d!352530 m!1407203))

(declare-fun m!1407205 () Bool)

(assert (=> b!1231451 m!1407205))

(declare-fun m!1407207 () Bool)

(assert (=> b!1231452 m!1407207))

(assert (=> b!1231453 m!1407193))

(assert (=> b!1231453 m!1407193))

(assert (=> b!1231453 m!1407195))

(assert (=> b!1231453 m!1407195))

(assert (=> b!1231453 m!1407197))

(declare-fun m!1407209 () Bool)

(assert (=> b!1231453 m!1407209))

(assert (=> b!1231328 d!352530))

(declare-fun d!352576 () Bool)

(declare-fun res!551939 () Bool)

(declare-fun e!788873 () Bool)

(assert (=> d!352576 (=> (not res!551939) (not e!788873))))

(declare-fun isEmpty!7481 (List!12577) Bool)

(assert (=> d!352576 (= res!551939 (not (isEmpty!7481 (originalCharacters!2713 (h!17922 tokens!556)))))))

(assert (=> d!352576 (= (inv!16738 (h!17922 tokens!556)) e!788873)))

(declare-fun b!1231458 () Bool)

(declare-fun res!551940 () Bool)

(assert (=> b!1231458 (=> (not res!551940) (not e!788873))))

(declare-fun dynLambda!5472 (Int TokenValue!2227) BalanceConc!8130)

(assert (=> b!1231458 (= res!551940 (= (originalCharacters!2713 (h!17922 tokens!556)) (list!4640 (dynLambda!5472 (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (value!70128 (h!17922 tokens!556))))))))

(declare-fun b!1231459 () Bool)

(declare-fun size!9902 (List!12577) Int)

(assert (=> b!1231459 (= e!788873 (= (size!9898 (h!17922 tokens!556)) (size!9902 (originalCharacters!2713 (h!17922 tokens!556)))))))

(assert (= (and d!352576 res!551939) b!1231458))

(assert (= (and b!1231458 res!551940) b!1231459))

(declare-fun b_lambda!36425 () Bool)

(assert (=> (not b_lambda!36425) (not b!1231458)))

(declare-fun t!115465 () Bool)

(declare-fun tb!68913 () Bool)

(assert (=> (and b!1231338 (= (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556))))) t!115465) tb!68913))

(declare-fun b!1231470 () Bool)

(declare-fun e!788880 () Bool)

(declare-fun tp!351504 () Bool)

(declare-fun inv!16741 (Conc!4099) Bool)

(assert (=> b!1231470 (= e!788880 (and (inv!16741 (c!205959 (dynLambda!5472 (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (value!70128 (h!17922 tokens!556))))) tp!351504))))

(declare-fun result!83154 () Bool)

(declare-fun inv!16742 (BalanceConc!8130) Bool)

(assert (=> tb!68913 (= result!83154 (and (inv!16742 (dynLambda!5472 (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (value!70128 (h!17922 tokens!556)))) e!788880))))

(assert (= tb!68913 b!1231470))

(declare-fun m!1407211 () Bool)

(assert (=> b!1231470 m!1407211))

(declare-fun m!1407213 () Bool)

(assert (=> tb!68913 m!1407213))

(assert (=> b!1231458 t!115465))

(declare-fun b_and!84709 () Bool)

(assert (= b_and!84691 (and (=> t!115465 result!83154) b_and!84709)))

(declare-fun tb!68915 () Bool)

(declare-fun t!115468 () Bool)

(assert (=> (and b!1231334 (= (toChars!3159 (transformation!2159 (h!17923 rules!2728))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556))))) t!115468) tb!68915))

(declare-fun result!83158 () Bool)

(assert (= result!83158 result!83154))

(assert (=> b!1231458 t!115468))

(declare-fun b_and!84711 () Bool)

(assert (= b_and!84695 (and (=> t!115468 result!83158) b_and!84711)))

(declare-fun m!1407215 () Bool)

(assert (=> d!352576 m!1407215))

(declare-fun m!1407217 () Bool)

(assert (=> b!1231458 m!1407217))

(assert (=> b!1231458 m!1407217))

(declare-fun m!1407219 () Bool)

(assert (=> b!1231458 m!1407219))

(declare-fun m!1407221 () Bool)

(assert (=> b!1231459 m!1407221))

(assert (=> b!1231340 d!352576))

(declare-fun d!352578 () Bool)

(assert (=> d!352578 (= (inv!16734 (tag!2421 (rule!3588 (h!17922 tokens!556)))) (= (mod (str.len (value!70127 (tag!2421 (rule!3588 (h!17922 tokens!556))))) 2) 0))))

(assert (=> b!1231329 d!352578))

(declare-fun d!352580 () Bool)

(declare-fun res!551952 () Bool)

(declare-fun e!788885 () Bool)

(assert (=> d!352580 (=> (not res!551952) (not e!788885))))

(declare-fun semiInverseModEq!796 (Int Int) Bool)

(assert (=> d!352580 (= res!551952 (semiInverseModEq!796 (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (toValue!3300 (transformation!2159 (rule!3588 (h!17922 tokens!556))))))))

(assert (=> d!352580 (= (inv!16737 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) e!788885)))

(declare-fun b!1231476 () Bool)

(declare-fun equivClasses!763 (Int Int) Bool)

(assert (=> b!1231476 (= e!788885 (equivClasses!763 (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (toValue!3300 (transformation!2159 (rule!3588 (h!17922 tokens!556))))))))

(assert (= (and d!352580 res!551952) b!1231476))

(declare-fun m!1407241 () Bool)

(assert (=> d!352580 m!1407241))

(declare-fun m!1407243 () Bool)

(assert (=> b!1231476 m!1407243))

(assert (=> b!1231329 d!352580))

(declare-fun d!352584 () Bool)

(assert (=> d!352584 (= (lexList!484 thiss!20528 rules!2728 lt!419560) (tuple2!12407 lt!419559 Nil!12519))))

(declare-fun lt!419631 () Unit!18802)

(declare-fun choose!7834 (LexerInterface!1854 List!12580 List!12577 List!12577 List!12579 List!12579 List!12577) Unit!18802)

(assert (=> d!352584 (= lt!419631 (choose!7834 thiss!20528 rules!2728 lt!419560 (_2!7049 lt!419564) lt!419559 (_1!7050 (lexList!484 thiss!20528 rules!2728 (_2!7049 lt!419564))) (_2!7050 lt!419568)))))

(assert (=> d!352584 (not (isEmpty!7476 rules!2728))))

(assert (=> d!352584 (= (lemmaLexThenLexPrefix!168 thiss!20528 rules!2728 lt!419560 (_2!7049 lt!419564) lt!419559 (_1!7050 (lexList!484 thiss!20528 rules!2728 (_2!7049 lt!419564))) (_2!7050 lt!419568)) lt!419631)))

(declare-fun bs!289553 () Bool)

(assert (= bs!289553 d!352584))

(assert (=> bs!289553 m!1407041))

(declare-fun m!1407275 () Bool)

(assert (=> bs!289553 m!1407275))

(assert (=> bs!289553 m!1407043))

(assert (=> b!1231330 d!352584))

(declare-fun b!1231581 () Bool)

(declare-fun e!788954 () Bool)

(declare-fun lt!419639 () tuple2!12406)

(assert (=> b!1231581 (= e!788954 (= (_2!7050 lt!419639) (_2!7049 lt!419564)))))

(declare-fun b!1231582 () Bool)

(declare-fun e!788955 () tuple2!12406)

(declare-fun lt!419638 () Option!2523)

(declare-fun lt!419640 () tuple2!12406)

(assert (=> b!1231582 (= e!788955 (tuple2!12407 (Cons!12521 (_1!7049 (v!20679 lt!419638)) (_1!7050 lt!419640)) (_2!7050 lt!419640)))))

(assert (=> b!1231582 (= lt!419640 (lexList!484 thiss!20528 rules!2728 (_2!7049 (v!20679 lt!419638))))))

(declare-fun b!1231583 () Bool)

(declare-fun e!788956 () Bool)

(declare-fun isEmpty!7483 (List!12579) Bool)

(assert (=> b!1231583 (= e!788956 (not (isEmpty!7483 (_1!7050 lt!419639))))))

(declare-fun b!1231584 () Bool)

(assert (=> b!1231584 (= e!788954 e!788956)))

(declare-fun res!551982 () Bool)

(assert (=> b!1231584 (= res!551982 (< (size!9902 (_2!7050 lt!419639)) (size!9902 (_2!7049 lt!419564))))))

(assert (=> b!1231584 (=> (not res!551982) (not e!788956))))

(declare-fun d!352588 () Bool)

(assert (=> d!352588 e!788954))

(declare-fun c!206001 () Bool)

(declare-fun size!9904 (List!12579) Int)

(assert (=> d!352588 (= c!206001 (> (size!9904 (_1!7050 lt!419639)) 0))))

(assert (=> d!352588 (= lt!419639 e!788955)))

(declare-fun c!206000 () Bool)

(assert (=> d!352588 (= c!206000 ((_ is Some!2522) lt!419638))))

(assert (=> d!352588 (= lt!419638 (maxPrefix!976 thiss!20528 rules!2728 (_2!7049 lt!419564)))))

(assert (=> d!352588 (= (lexList!484 thiss!20528 rules!2728 (_2!7049 lt!419564)) lt!419639)))

(declare-fun b!1231585 () Bool)

(assert (=> b!1231585 (= e!788955 (tuple2!12407 Nil!12521 (_2!7049 lt!419564)))))

(assert (= (and d!352588 c!206000) b!1231582))

(assert (= (and d!352588 (not c!206000)) b!1231585))

(assert (= (and d!352588 c!206001) b!1231584))

(assert (= (and d!352588 (not c!206001)) b!1231581))

(assert (= (and b!1231584 res!551982) b!1231583))

(declare-fun m!1407279 () Bool)

(assert (=> b!1231582 m!1407279))

(declare-fun m!1407281 () Bool)

(assert (=> b!1231583 m!1407281))

(declare-fun m!1407283 () Bool)

(assert (=> b!1231584 m!1407283))

(declare-fun m!1407285 () Bool)

(assert (=> b!1231584 m!1407285))

(declare-fun m!1407287 () Bool)

(assert (=> d!352588 m!1407287))

(declare-fun m!1407289 () Bool)

(assert (=> d!352588 m!1407289))

(assert (=> b!1231330 d!352588))

(declare-fun b!1231586 () Bool)

(declare-fun e!788957 () Bool)

(declare-fun lt!419642 () tuple2!12406)

(assert (=> b!1231586 (= e!788957 (= (_2!7050 lt!419642) lt!419560))))

(declare-fun b!1231587 () Bool)

(declare-fun e!788958 () tuple2!12406)

(declare-fun lt!419641 () Option!2523)

(declare-fun lt!419643 () tuple2!12406)

(assert (=> b!1231587 (= e!788958 (tuple2!12407 (Cons!12521 (_1!7049 (v!20679 lt!419641)) (_1!7050 lt!419643)) (_2!7050 lt!419643)))))

(assert (=> b!1231587 (= lt!419643 (lexList!484 thiss!20528 rules!2728 (_2!7049 (v!20679 lt!419641))))))

(declare-fun b!1231588 () Bool)

(declare-fun e!788959 () Bool)

(assert (=> b!1231588 (= e!788959 (not (isEmpty!7483 (_1!7050 lt!419642))))))

(declare-fun b!1231589 () Bool)

(assert (=> b!1231589 (= e!788957 e!788959)))

(declare-fun res!551983 () Bool)

(assert (=> b!1231589 (= res!551983 (< (size!9902 (_2!7050 lt!419642)) (size!9902 lt!419560)))))

(assert (=> b!1231589 (=> (not res!551983) (not e!788959))))

(declare-fun d!352590 () Bool)

(assert (=> d!352590 e!788957))

(declare-fun c!206003 () Bool)

(assert (=> d!352590 (= c!206003 (> (size!9904 (_1!7050 lt!419642)) 0))))

(assert (=> d!352590 (= lt!419642 e!788958)))

(declare-fun c!206002 () Bool)

(assert (=> d!352590 (= c!206002 ((_ is Some!2522) lt!419641))))

(assert (=> d!352590 (= lt!419641 (maxPrefix!976 thiss!20528 rules!2728 lt!419560))))

(assert (=> d!352590 (= (lexList!484 thiss!20528 rules!2728 lt!419560) lt!419642)))

(declare-fun b!1231590 () Bool)

(assert (=> b!1231590 (= e!788958 (tuple2!12407 Nil!12521 lt!419560))))

(assert (= (and d!352590 c!206002) b!1231587))

(assert (= (and d!352590 (not c!206002)) b!1231590))

(assert (= (and d!352590 c!206003) b!1231589))

(assert (= (and d!352590 (not c!206003)) b!1231586))

(assert (= (and b!1231589 res!551983) b!1231588))

(declare-fun m!1407291 () Bool)

(assert (=> b!1231587 m!1407291))

(declare-fun m!1407293 () Bool)

(assert (=> b!1231588 m!1407293))

(declare-fun m!1407295 () Bool)

(assert (=> b!1231589 m!1407295))

(declare-fun m!1407297 () Bool)

(assert (=> b!1231589 m!1407297))

(declare-fun m!1407299 () Bool)

(assert (=> d!352590 m!1407299))

(declare-fun m!1407301 () Bool)

(assert (=> d!352590 m!1407301))

(assert (=> b!1231330 d!352590))

(declare-fun d!352592 () Bool)

(declare-fun list!4644 (Conc!4099) List!12577)

(assert (=> d!352592 (= (list!4640 lt!419561) (list!4644 (c!205959 lt!419561)))))

(declare-fun bs!289554 () Bool)

(assert (= bs!289554 d!352592))

(declare-fun m!1407303 () Bool)

(assert (=> bs!289554 m!1407303))

(assert (=> b!1231319 d!352592))

(declare-fun d!352594 () Bool)

(assert (=> d!352594 (= (list!4640 lt!419563) (list!4644 (c!205959 lt!419563)))))

(declare-fun bs!289555 () Bool)

(assert (= bs!289555 d!352594))

(declare-fun m!1407305 () Bool)

(assert (=> bs!289555 m!1407305))

(assert (=> b!1231319 d!352594))

(declare-fun b!1231601 () Bool)

(declare-fun e!788968 () Bool)

(declare-fun inv!15 (TokenValue!2227) Bool)

(assert (=> b!1231601 (= e!788968 (inv!15 (value!70128 (h!17922 tokens!556))))))

(declare-fun b!1231602 () Bool)

(declare-fun e!788966 () Bool)

(declare-fun e!788967 () Bool)

(assert (=> b!1231602 (= e!788966 e!788967)))

(declare-fun c!206009 () Bool)

(assert (=> b!1231602 (= c!206009 ((_ is IntegerValue!6682) (value!70128 (h!17922 tokens!556))))))

(declare-fun d!352596 () Bool)

(declare-fun c!206008 () Bool)

(assert (=> d!352596 (= c!206008 ((_ is IntegerValue!6681) (value!70128 (h!17922 tokens!556))))))

(assert (=> d!352596 (= (inv!21 (value!70128 (h!17922 tokens!556))) e!788966)))

(declare-fun b!1231603 () Bool)

(declare-fun inv!16 (TokenValue!2227) Bool)

(assert (=> b!1231603 (= e!788966 (inv!16 (value!70128 (h!17922 tokens!556))))))

(declare-fun b!1231604 () Bool)

(declare-fun inv!17 (TokenValue!2227) Bool)

(assert (=> b!1231604 (= e!788967 (inv!17 (value!70128 (h!17922 tokens!556))))))

(declare-fun b!1231605 () Bool)

(declare-fun res!551986 () Bool)

(assert (=> b!1231605 (=> res!551986 e!788968)))

(assert (=> b!1231605 (= res!551986 (not ((_ is IntegerValue!6683) (value!70128 (h!17922 tokens!556)))))))

(assert (=> b!1231605 (= e!788967 e!788968)))

(assert (= (and d!352596 c!206008) b!1231603))

(assert (= (and d!352596 (not c!206008)) b!1231602))

(assert (= (and b!1231602 c!206009) b!1231604))

(assert (= (and b!1231602 (not c!206009)) b!1231605))

(assert (= (and b!1231605 (not res!551986)) b!1231601))

(declare-fun m!1407307 () Bool)

(assert (=> b!1231601 m!1407307))

(declare-fun m!1407309 () Bool)

(assert (=> b!1231603 m!1407309))

(declare-fun m!1407311 () Bool)

(assert (=> b!1231604 m!1407311))

(assert (=> b!1231336 d!352596))

(declare-fun d!352598 () Bool)

(assert (=> d!352598 (= (isEmpty!7476 rules!2728) ((_ is Nil!12522) rules!2728))))

(assert (=> b!1231325 d!352598))

(declare-fun d!352600 () Bool)

(declare-fun e!788989 () Bool)

(assert (=> d!352600 e!788989))

(declare-fun c!206017 () Bool)

(assert (=> d!352600 (= c!206017 ((_ is EmptyExpr!3429) (regex!2159 (rule!3588 (_1!7049 lt!419564)))))))

(declare-fun lt!419646 () Bool)

(declare-fun e!788988 () Bool)

(assert (=> d!352600 (= lt!419646 e!788988)))

(declare-fun c!206018 () Bool)

(assert (=> d!352600 (= c!206018 (isEmpty!7481 lt!419566))))

(declare-fun validRegex!1465 (Regex!3429) Bool)

(assert (=> d!352600 (validRegex!1465 (regex!2159 (rule!3588 (_1!7049 lt!419564))))))

(assert (=> d!352600 (= (matchR!1544 (regex!2159 (rule!3588 (_1!7049 lt!419564))) lt!419566) lt!419646)))

(declare-fun b!1231634 () Bool)

(declare-fun e!788984 () Bool)

(declare-fun e!788986 () Bool)

(assert (=> b!1231634 (= e!788984 e!788986)))

(declare-fun res!552010 () Bool)

(assert (=> b!1231634 (=> res!552010 e!788986)))

(declare-fun call!85364 () Bool)

(assert (=> b!1231634 (= res!552010 call!85364)))

(declare-fun b!1231635 () Bool)

(declare-fun res!552009 () Bool)

(declare-fun e!788985 () Bool)

(assert (=> b!1231635 (=> res!552009 e!788985)))

(declare-fun e!788983 () Bool)

(assert (=> b!1231635 (= res!552009 e!788983)))

(declare-fun res!552003 () Bool)

(assert (=> b!1231635 (=> (not res!552003) (not e!788983))))

(assert (=> b!1231635 (= res!552003 lt!419646)))

(declare-fun b!1231636 () Bool)

(assert (=> b!1231636 (= e!788985 e!788984)))

(declare-fun res!552004 () Bool)

(assert (=> b!1231636 (=> (not res!552004) (not e!788984))))

(assert (=> b!1231636 (= res!552004 (not lt!419646))))

(declare-fun b!1231637 () Bool)

(declare-fun e!788987 () Bool)

(assert (=> b!1231637 (= e!788989 e!788987)))

(declare-fun c!206016 () Bool)

(assert (=> b!1231637 (= c!206016 ((_ is EmptyLang!3429) (regex!2159 (rule!3588 (_1!7049 lt!419564)))))))

(declare-fun bm!85359 () Bool)

(assert (=> bm!85359 (= call!85364 (isEmpty!7481 lt!419566))))

(declare-fun b!1231638 () Bool)

(declare-fun derivativeStep!861 (Regex!3429 C!7176) Regex!3429)

(declare-fun head!2167 (List!12577) C!7176)

(declare-fun tail!1799 (List!12577) List!12577)

(assert (=> b!1231638 (= e!788988 (matchR!1544 (derivativeStep!861 (regex!2159 (rule!3588 (_1!7049 lt!419564))) (head!2167 lt!419566)) (tail!1799 lt!419566)))))

(declare-fun b!1231639 () Bool)

(declare-fun res!552007 () Bool)

(assert (=> b!1231639 (=> res!552007 e!788986)))

(assert (=> b!1231639 (= res!552007 (not (isEmpty!7481 (tail!1799 lt!419566))))))

(declare-fun b!1231640 () Bool)

(declare-fun res!552006 () Bool)

(assert (=> b!1231640 (=> (not res!552006) (not e!788983))))

(assert (=> b!1231640 (= res!552006 (not call!85364))))

(declare-fun b!1231641 () Bool)

(declare-fun res!552005 () Bool)

(assert (=> b!1231641 (=> (not res!552005) (not e!788983))))

(assert (=> b!1231641 (= res!552005 (isEmpty!7481 (tail!1799 lt!419566)))))

(declare-fun b!1231642 () Bool)

(declare-fun nullable!1068 (Regex!3429) Bool)

(assert (=> b!1231642 (= e!788988 (nullable!1068 (regex!2159 (rule!3588 (_1!7049 lt!419564)))))))

(declare-fun b!1231643 () Bool)

(assert (=> b!1231643 (= e!788987 (not lt!419646))))

(declare-fun b!1231644 () Bool)

(assert (=> b!1231644 (= e!788986 (not (= (head!2167 lt!419566) (c!205960 (regex!2159 (rule!3588 (_1!7049 lt!419564)))))))))

(declare-fun b!1231645 () Bool)

(declare-fun res!552008 () Bool)

(assert (=> b!1231645 (=> res!552008 e!788985)))

(assert (=> b!1231645 (= res!552008 (not ((_ is ElementMatch!3429) (regex!2159 (rule!3588 (_1!7049 lt!419564))))))))

(assert (=> b!1231645 (= e!788987 e!788985)))

(declare-fun b!1231646 () Bool)

(assert (=> b!1231646 (= e!788983 (= (head!2167 lt!419566) (c!205960 (regex!2159 (rule!3588 (_1!7049 lt!419564))))))))

(declare-fun b!1231647 () Bool)

(assert (=> b!1231647 (= e!788989 (= lt!419646 call!85364))))

(assert (= (and d!352600 c!206018) b!1231642))

(assert (= (and d!352600 (not c!206018)) b!1231638))

(assert (= (and d!352600 c!206017) b!1231647))

(assert (= (and d!352600 (not c!206017)) b!1231637))

(assert (= (and b!1231637 c!206016) b!1231643))

(assert (= (and b!1231637 (not c!206016)) b!1231645))

(assert (= (and b!1231645 (not res!552008)) b!1231635))

(assert (= (and b!1231635 res!552003) b!1231640))

(assert (= (and b!1231640 res!552006) b!1231641))

(assert (= (and b!1231641 res!552005) b!1231646))

(assert (= (and b!1231635 (not res!552009)) b!1231636))

(assert (= (and b!1231636 res!552004) b!1231634))

(assert (= (and b!1231634 (not res!552010)) b!1231639))

(assert (= (and b!1231639 (not res!552007)) b!1231644))

(assert (= (or b!1231647 b!1231634 b!1231640) bm!85359))

(declare-fun m!1407313 () Bool)

(assert (=> b!1231638 m!1407313))

(assert (=> b!1231638 m!1407313))

(declare-fun m!1407315 () Bool)

(assert (=> b!1231638 m!1407315))

(declare-fun m!1407317 () Bool)

(assert (=> b!1231638 m!1407317))

(assert (=> b!1231638 m!1407315))

(assert (=> b!1231638 m!1407317))

(declare-fun m!1407319 () Bool)

(assert (=> b!1231638 m!1407319))

(assert (=> b!1231641 m!1407317))

(assert (=> b!1231641 m!1407317))

(declare-fun m!1407321 () Bool)

(assert (=> b!1231641 m!1407321))

(assert (=> b!1231644 m!1407313))

(declare-fun m!1407323 () Bool)

(assert (=> d!352600 m!1407323))

(declare-fun m!1407325 () Bool)

(assert (=> d!352600 m!1407325))

(assert (=> bm!85359 m!1407323))

(assert (=> b!1231646 m!1407313))

(declare-fun m!1407327 () Bool)

(assert (=> b!1231642 m!1407327))

(assert (=> b!1231639 m!1407317))

(assert (=> b!1231639 m!1407317))

(assert (=> b!1231639 m!1407321))

(assert (=> b!1231326 d!352600))

(declare-fun b!1231648 () Bool)

(declare-fun e!788990 () Bool)

(declare-fun lt!419648 () tuple2!12406)

(assert (=> b!1231648 (= e!788990 (= (_2!7050 lt!419648) input!2346))))

(declare-fun b!1231649 () Bool)

(declare-fun e!788991 () tuple2!12406)

(declare-fun lt!419647 () Option!2523)

(declare-fun lt!419649 () tuple2!12406)

(assert (=> b!1231649 (= e!788991 (tuple2!12407 (Cons!12521 (_1!7049 (v!20679 lt!419647)) (_1!7050 lt!419649)) (_2!7050 lt!419649)))))

(assert (=> b!1231649 (= lt!419649 (lexList!484 thiss!20528 rules!2728 (_2!7049 (v!20679 lt!419647))))))

(declare-fun b!1231650 () Bool)

(declare-fun e!788992 () Bool)

(assert (=> b!1231650 (= e!788992 (not (isEmpty!7483 (_1!7050 lt!419648))))))

(declare-fun b!1231651 () Bool)

(assert (=> b!1231651 (= e!788990 e!788992)))

(declare-fun res!552011 () Bool)

(assert (=> b!1231651 (= res!552011 (< (size!9902 (_2!7050 lt!419648)) (size!9902 input!2346)))))

(assert (=> b!1231651 (=> (not res!552011) (not e!788992))))

(declare-fun d!352602 () Bool)

(assert (=> d!352602 e!788990))

(declare-fun c!206020 () Bool)

(assert (=> d!352602 (= c!206020 (> (size!9904 (_1!7050 lt!419648)) 0))))

(assert (=> d!352602 (= lt!419648 e!788991)))

(declare-fun c!206019 () Bool)

(assert (=> d!352602 (= c!206019 ((_ is Some!2522) lt!419647))))

(assert (=> d!352602 (= lt!419647 (maxPrefix!976 thiss!20528 rules!2728 input!2346))))

(assert (=> d!352602 (= (lexList!484 thiss!20528 rules!2728 input!2346) lt!419648)))

(declare-fun b!1231652 () Bool)

(assert (=> b!1231652 (= e!788991 (tuple2!12407 Nil!12521 input!2346))))

(assert (= (and d!352602 c!206019) b!1231649))

(assert (= (and d!352602 (not c!206019)) b!1231652))

(assert (= (and d!352602 c!206020) b!1231651))

(assert (= (and d!352602 (not c!206020)) b!1231648))

(assert (= (and b!1231651 res!552011) b!1231650))

(declare-fun m!1407329 () Bool)

(assert (=> b!1231649 m!1407329))

(declare-fun m!1407331 () Bool)

(assert (=> b!1231650 m!1407331))

(declare-fun m!1407333 () Bool)

(assert (=> b!1231651 m!1407333))

(declare-fun m!1407335 () Bool)

(assert (=> b!1231651 m!1407335))

(declare-fun m!1407337 () Bool)

(assert (=> d!352602 m!1407337))

(assert (=> d!352602 m!1407025))

(assert (=> b!1231337 d!352602))

(declare-fun d!352604 () Bool)

(declare-fun lt!419652 () Int)

(assert (=> d!352604 (>= lt!419652 0)))

(declare-fun e!788995 () Int)

(assert (=> d!352604 (= lt!419652 e!788995)))

(declare-fun c!206023 () Bool)

(assert (=> d!352604 (= c!206023 ((_ is Nil!12521) (t!115453 tokens!556)))))

(assert (=> d!352604 (= (ListPrimitiveSize!98 (t!115453 tokens!556)) lt!419652)))

(declare-fun b!1231657 () Bool)

(assert (=> b!1231657 (= e!788995 0)))

(declare-fun b!1231658 () Bool)

(assert (=> b!1231658 (= e!788995 (+ 1 (ListPrimitiveSize!98 (t!115453 (t!115453 tokens!556)))))))

(assert (= (and d!352604 c!206023) b!1231657))

(assert (= (and d!352604 (not c!206023)) b!1231658))

(declare-fun m!1407339 () Bool)

(assert (=> b!1231658 m!1407339))

(assert (=> b!1231323 d!352604))

(declare-fun d!352606 () Bool)

(declare-fun lt!419653 () Int)

(assert (=> d!352606 (>= lt!419653 0)))

(declare-fun e!788996 () Int)

(assert (=> d!352606 (= lt!419653 e!788996)))

(declare-fun c!206024 () Bool)

(assert (=> d!352606 (= c!206024 ((_ is Nil!12521) tokens!556))))

(assert (=> d!352606 (= (ListPrimitiveSize!98 tokens!556) lt!419653)))

(declare-fun b!1231659 () Bool)

(assert (=> b!1231659 (= e!788996 0)))

(declare-fun b!1231660 () Bool)

(assert (=> b!1231660 (= e!788996 (+ 1 (ListPrimitiveSize!98 (t!115453 tokens!556))))))

(assert (= (and d!352606 c!206024) b!1231659))

(assert (= (and d!352606 (not c!206024)) b!1231660))

(assert (=> b!1231660 m!1407055))

(assert (=> b!1231323 d!352606))

(declare-fun d!352608 () Bool)

(declare-fun res!552014 () Bool)

(declare-fun e!788999 () Bool)

(assert (=> d!352608 (=> (not res!552014) (not e!788999))))

(declare-fun rulesValid!783 (LexerInterface!1854 List!12580) Bool)

(assert (=> d!352608 (= res!552014 (rulesValid!783 thiss!20528 rules!2728))))

(assert (=> d!352608 (= (rulesInvariant!1728 thiss!20528 rules!2728) e!788999)))

(declare-fun b!1231663 () Bool)

(declare-datatypes ((List!12582 0))(
  ( (Nil!12524) (Cons!12524 (h!17925 String!15267) (t!115490 List!12582)) )
))
(declare-fun noDuplicateTag!783 (LexerInterface!1854 List!12580 List!12582) Bool)

(assert (=> b!1231663 (= e!788999 (noDuplicateTag!783 thiss!20528 rules!2728 Nil!12524))))

(assert (= (and d!352608 res!552014) b!1231663))

(declare-fun m!1407341 () Bool)

(assert (=> d!352608 m!1407341))

(declare-fun m!1407343 () Bool)

(assert (=> b!1231663 m!1407343))

(assert (=> b!1231324 d!352608))

(assert (=> b!1231335 d!352588))

(declare-fun d!352610 () Bool)

(declare-fun lt!419656 () BalanceConc!8130)

(assert (=> d!352610 (= (list!4640 lt!419656) (originalCharacters!2713 (h!17922 tokens!556)))))

(assert (=> d!352610 (= lt!419656 (dynLambda!5472 (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (value!70128 (h!17922 tokens!556))))))

(assert (=> d!352610 (= (charsOf!1163 (h!17922 tokens!556)) lt!419656)))

(declare-fun b_lambda!36431 () Bool)

(assert (=> (not b_lambda!36431) (not d!352610)))

(assert (=> d!352610 t!115465))

(declare-fun b_and!84721 () Bool)

(assert (= b_and!84709 (and (=> t!115465 result!83154) b_and!84721)))

(assert (=> d!352610 t!115468))

(declare-fun b_and!84723 () Bool)

(assert (= b_and!84711 (and (=> t!115468 result!83158) b_and!84723)))

(declare-fun m!1407345 () Bool)

(assert (=> d!352610 m!1407345))

(assert (=> d!352610 m!1407217))

(assert (=> b!1231320 d!352610))

(declare-fun d!352612 () Bool)

(declare-fun lt!419657 () BalanceConc!8130)

(assert (=> d!352612 (= (list!4640 lt!419657) (originalCharacters!2713 (_1!7049 lt!419564)))))

(assert (=> d!352612 (= lt!419657 (dynLambda!5472 (toChars!3159 (transformation!2159 (rule!3588 (_1!7049 lt!419564)))) (value!70128 (_1!7049 lt!419564))))))

(assert (=> d!352612 (= (charsOf!1163 (_1!7049 lt!419564)) lt!419657)))

(declare-fun b_lambda!36433 () Bool)

(assert (=> (not b_lambda!36433) (not d!352612)))

(declare-fun t!115478 () Bool)

(declare-fun tb!68925 () Bool)

(assert (=> (and b!1231338 (= (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))) (toChars!3159 (transformation!2159 (rule!3588 (_1!7049 lt!419564))))) t!115478) tb!68925))

(declare-fun b!1231664 () Bool)

(declare-fun e!789000 () Bool)

(declare-fun tp!351556 () Bool)

(assert (=> b!1231664 (= e!789000 (and (inv!16741 (c!205959 (dynLambda!5472 (toChars!3159 (transformation!2159 (rule!3588 (_1!7049 lt!419564)))) (value!70128 (_1!7049 lt!419564))))) tp!351556))))

(declare-fun result!83176 () Bool)

(assert (=> tb!68925 (= result!83176 (and (inv!16742 (dynLambda!5472 (toChars!3159 (transformation!2159 (rule!3588 (_1!7049 lt!419564)))) (value!70128 (_1!7049 lt!419564)))) e!789000))))

(assert (= tb!68925 b!1231664))

(declare-fun m!1407347 () Bool)

(assert (=> b!1231664 m!1407347))

(declare-fun m!1407349 () Bool)

(assert (=> tb!68925 m!1407349))

(assert (=> d!352612 t!115478))

(declare-fun b_and!84725 () Bool)

(assert (= b_and!84721 (and (=> t!115478 result!83176) b_and!84725)))

(declare-fun t!115480 () Bool)

(declare-fun tb!68927 () Bool)

(assert (=> (and b!1231334 (= (toChars!3159 (transformation!2159 (h!17923 rules!2728))) (toChars!3159 (transformation!2159 (rule!3588 (_1!7049 lt!419564))))) t!115480) tb!68927))

(declare-fun result!83178 () Bool)

(assert (= result!83178 result!83176))

(assert (=> d!352612 t!115480))

(declare-fun b_and!84727 () Bool)

(assert (= b_and!84723 (and (=> t!115480 result!83178) b_and!84727)))

(declare-fun m!1407351 () Bool)

(assert (=> d!352612 m!1407351))

(declare-fun m!1407353 () Bool)

(assert (=> d!352612 m!1407353))

(assert (=> b!1231320 d!352612))

(declare-fun d!352614 () Bool)

(assert (=> d!352614 (= (inv!16734 (tag!2421 (h!17923 rules!2728))) (= (mod (str.len (value!70127 (tag!2421 (h!17923 rules!2728)))) 2) 0))))

(assert (=> b!1231341 d!352614))

(declare-fun d!352616 () Bool)

(declare-fun res!552015 () Bool)

(declare-fun e!789001 () Bool)

(assert (=> d!352616 (=> (not res!552015) (not e!789001))))

(assert (=> d!352616 (= res!552015 (semiInverseModEq!796 (toChars!3159 (transformation!2159 (h!17923 rules!2728))) (toValue!3300 (transformation!2159 (h!17923 rules!2728)))))))

(assert (=> d!352616 (= (inv!16737 (transformation!2159 (h!17923 rules!2728))) e!789001)))

(declare-fun b!1231665 () Bool)

(assert (=> b!1231665 (= e!789001 (equivClasses!763 (toChars!3159 (transformation!2159 (h!17923 rules!2728))) (toValue!3300 (transformation!2159 (h!17923 rules!2728)))))))

(assert (= (and d!352616 res!552015) b!1231665))

(declare-fun m!1407355 () Bool)

(assert (=> d!352616 m!1407355))

(declare-fun m!1407357 () Bool)

(assert (=> b!1231665 m!1407357))

(assert (=> b!1231341 d!352616))

(declare-fun d!352618 () Bool)

(assert (=> d!352618 (= (get!4118 lt!419569) (v!20679 lt!419569))))

(assert (=> b!1231332 d!352618))

(declare-fun d!352620 () Bool)

(declare-fun e!789006 () Bool)

(assert (=> d!352620 e!789006))

(declare-fun res!552021 () Bool)

(assert (=> d!352620 (=> (not res!552021) (not e!789006))))

(declare-fun lt!419660 () List!12577)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1792 (List!12577) (InoxSet C!7176))

(assert (=> d!352620 (= res!552021 (= (content!1792 lt!419660) ((_ map or) (content!1792 lt!419560) (content!1792 (_2!7049 lt!419564)))))))

(declare-fun e!789007 () List!12577)

(assert (=> d!352620 (= lt!419660 e!789007)))

(declare-fun c!206027 () Bool)

(assert (=> d!352620 (= c!206027 ((_ is Nil!12519) lt!419560))))

(assert (=> d!352620 (= (++!3203 lt!419560 (_2!7049 lt!419564)) lt!419660)))

(declare-fun b!1231676 () Bool)

(declare-fun res!552020 () Bool)

(assert (=> b!1231676 (=> (not res!552020) (not e!789006))))

(assert (=> b!1231676 (= res!552020 (= (size!9902 lt!419660) (+ (size!9902 lt!419560) (size!9902 (_2!7049 lt!419564)))))))

(declare-fun b!1231677 () Bool)

(assert (=> b!1231677 (= e!789006 (or (not (= (_2!7049 lt!419564) Nil!12519)) (= lt!419660 lt!419560)))))

(declare-fun b!1231675 () Bool)

(assert (=> b!1231675 (= e!789007 (Cons!12519 (h!17920 lt!419560) (++!3203 (t!115451 lt!419560) (_2!7049 lt!419564))))))

(declare-fun b!1231674 () Bool)

(assert (=> b!1231674 (= e!789007 (_2!7049 lt!419564))))

(assert (= (and d!352620 c!206027) b!1231674))

(assert (= (and d!352620 (not c!206027)) b!1231675))

(assert (= (and d!352620 res!552021) b!1231676))

(assert (= (and b!1231676 res!552020) b!1231677))

(declare-fun m!1407359 () Bool)

(assert (=> d!352620 m!1407359))

(declare-fun m!1407361 () Bool)

(assert (=> d!352620 m!1407361))

(declare-fun m!1407363 () Bool)

(assert (=> d!352620 m!1407363))

(declare-fun m!1407365 () Bool)

(assert (=> b!1231676 m!1407365))

(assert (=> b!1231676 m!1407297))

(assert (=> b!1231676 m!1407285))

(declare-fun m!1407367 () Bool)

(assert (=> b!1231675 m!1407367))

(assert (=> b!1231321 d!352620))

(declare-fun d!352622 () Bool)

(declare-fun isEmpty!7484 (Option!2523) Bool)

(assert (=> d!352622 (= (isDefined!2159 lt!419569) (not (isEmpty!7484 lt!419569)))))

(declare-fun bs!289556 () Bool)

(assert (= bs!289556 d!352622))

(declare-fun m!1407369 () Bool)

(assert (=> bs!289556 m!1407369))

(assert (=> b!1231322 d!352622))

(declare-fun b!1231696 () Bool)

(declare-fun res!552036 () Bool)

(declare-fun e!789015 () Bool)

(assert (=> b!1231696 (=> (not res!552036) (not e!789015))))

(declare-fun lt!419674 () Option!2523)

(assert (=> b!1231696 (= res!552036 (matchR!1544 (regex!2159 (rule!3588 (_1!7049 (get!4118 lt!419674)))) (list!4640 (charsOf!1163 (_1!7049 (get!4118 lt!419674))))))))

(declare-fun d!352624 () Bool)

(declare-fun e!789016 () Bool)

(assert (=> d!352624 e!789016))

(declare-fun res!552038 () Bool)

(assert (=> d!352624 (=> res!552038 e!789016)))

(assert (=> d!352624 (= res!552038 (isEmpty!7484 lt!419674))))

(declare-fun e!789014 () Option!2523)

(assert (=> d!352624 (= lt!419674 e!789014)))

(declare-fun c!206030 () Bool)

(assert (=> d!352624 (= c!206030 (and ((_ is Cons!12522) rules!2728) ((_ is Nil!12522) (t!115454 rules!2728))))))

(declare-fun lt!419671 () Unit!18802)

(declare-fun lt!419675 () Unit!18802)

(assert (=> d!352624 (= lt!419671 lt!419675)))

(declare-fun isPrefix!1046 (List!12577 List!12577) Bool)

(assert (=> d!352624 (isPrefix!1046 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!739 (List!12577 List!12577) Unit!18802)

(assert (=> d!352624 (= lt!419675 (lemmaIsPrefixRefl!739 input!2346 input!2346))))

(declare-fun rulesValidInductive!682 (LexerInterface!1854 List!12580) Bool)

(assert (=> d!352624 (rulesValidInductive!682 thiss!20528 rules!2728)))

(assert (=> d!352624 (= (maxPrefix!976 thiss!20528 rules!2728 input!2346) lt!419674)))

(declare-fun b!1231697 () Bool)

(declare-fun res!552040 () Bool)

(assert (=> b!1231697 (=> (not res!552040) (not e!789015))))

(assert (=> b!1231697 (= res!552040 (< (size!9902 (_2!7049 (get!4118 lt!419674))) (size!9902 input!2346)))))

(declare-fun b!1231698 () Bool)

(declare-fun res!552042 () Bool)

(assert (=> b!1231698 (=> (not res!552042) (not e!789015))))

(assert (=> b!1231698 (= res!552042 (= (++!3203 (list!4640 (charsOf!1163 (_1!7049 (get!4118 lt!419674)))) (_2!7049 (get!4118 lt!419674))) input!2346))))

(declare-fun b!1231699 () Bool)

(declare-fun contains!2105 (List!12580 Rule!4118) Bool)

(assert (=> b!1231699 (= e!789015 (contains!2105 rules!2728 (rule!3588 (_1!7049 (get!4118 lt!419674)))))))

(declare-fun b!1231700 () Bool)

(assert (=> b!1231700 (= e!789016 e!789015)))

(declare-fun res!552041 () Bool)

(assert (=> b!1231700 (=> (not res!552041) (not e!789015))))

(assert (=> b!1231700 (= res!552041 (isDefined!2159 lt!419674))))

(declare-fun call!85367 () Option!2523)

(declare-fun bm!85362 () Bool)

(declare-fun maxPrefixOneRule!565 (LexerInterface!1854 Rule!4118 List!12577) Option!2523)

(assert (=> bm!85362 (= call!85367 (maxPrefixOneRule!565 thiss!20528 (h!17923 rules!2728) input!2346))))

(declare-fun b!1231701 () Bool)

(assert (=> b!1231701 (= e!789014 call!85367)))

(declare-fun b!1231702 () Bool)

(declare-fun res!552037 () Bool)

(assert (=> b!1231702 (=> (not res!552037) (not e!789015))))

(assert (=> b!1231702 (= res!552037 (= (list!4640 (charsOf!1163 (_1!7049 (get!4118 lt!419674)))) (originalCharacters!2713 (_1!7049 (get!4118 lt!419674)))))))

(declare-fun b!1231703 () Bool)

(declare-fun res!552039 () Bool)

(assert (=> b!1231703 (=> (not res!552039) (not e!789015))))

(declare-fun apply!2687 (TokenValueInjection!4150 BalanceConc!8130) TokenValue!2227)

(declare-fun seqFromList!1569 (List!12577) BalanceConc!8130)

(assert (=> b!1231703 (= res!552039 (= (value!70128 (_1!7049 (get!4118 lt!419674))) (apply!2687 (transformation!2159 (rule!3588 (_1!7049 (get!4118 lt!419674)))) (seqFromList!1569 (originalCharacters!2713 (_1!7049 (get!4118 lt!419674)))))))))

(declare-fun b!1231704 () Bool)

(declare-fun lt!419672 () Option!2523)

(declare-fun lt!419673 () Option!2523)

(assert (=> b!1231704 (= e!789014 (ite (and ((_ is None!2522) lt!419672) ((_ is None!2522) lt!419673)) None!2522 (ite ((_ is None!2522) lt!419673) lt!419672 (ite ((_ is None!2522) lt!419672) lt!419673 (ite (>= (size!9898 (_1!7049 (v!20679 lt!419672))) (size!9898 (_1!7049 (v!20679 lt!419673)))) lt!419672 lt!419673)))))))

(assert (=> b!1231704 (= lt!419672 call!85367)))

(assert (=> b!1231704 (= lt!419673 (maxPrefix!976 thiss!20528 (t!115454 rules!2728) input!2346))))

(assert (= (and d!352624 c!206030) b!1231701))

(assert (= (and d!352624 (not c!206030)) b!1231704))

(assert (= (or b!1231701 b!1231704) bm!85362))

(assert (= (and d!352624 (not res!552038)) b!1231700))

(assert (= (and b!1231700 res!552041) b!1231702))

(assert (= (and b!1231702 res!552037) b!1231697))

(assert (= (and b!1231697 res!552040) b!1231698))

(assert (= (and b!1231698 res!552042) b!1231703))

(assert (= (and b!1231703 res!552039) b!1231696))

(assert (= (and b!1231696 res!552036) b!1231699))

(declare-fun m!1407371 () Bool)

(assert (=> b!1231700 m!1407371))

(declare-fun m!1407373 () Bool)

(assert (=> d!352624 m!1407373))

(declare-fun m!1407375 () Bool)

(assert (=> d!352624 m!1407375))

(declare-fun m!1407377 () Bool)

(assert (=> d!352624 m!1407377))

(declare-fun m!1407379 () Bool)

(assert (=> d!352624 m!1407379))

(declare-fun m!1407381 () Bool)

(assert (=> b!1231702 m!1407381))

(declare-fun m!1407383 () Bool)

(assert (=> b!1231702 m!1407383))

(assert (=> b!1231702 m!1407383))

(declare-fun m!1407385 () Bool)

(assert (=> b!1231702 m!1407385))

(assert (=> b!1231696 m!1407381))

(assert (=> b!1231696 m!1407383))

(assert (=> b!1231696 m!1407383))

(assert (=> b!1231696 m!1407385))

(assert (=> b!1231696 m!1407385))

(declare-fun m!1407387 () Bool)

(assert (=> b!1231696 m!1407387))

(assert (=> b!1231698 m!1407381))

(assert (=> b!1231698 m!1407383))

(assert (=> b!1231698 m!1407383))

(assert (=> b!1231698 m!1407385))

(assert (=> b!1231698 m!1407385))

(declare-fun m!1407389 () Bool)

(assert (=> b!1231698 m!1407389))

(declare-fun m!1407391 () Bool)

(assert (=> bm!85362 m!1407391))

(declare-fun m!1407393 () Bool)

(assert (=> b!1231704 m!1407393))

(assert (=> b!1231699 m!1407381))

(declare-fun m!1407395 () Bool)

(assert (=> b!1231699 m!1407395))

(assert (=> b!1231703 m!1407381))

(declare-fun m!1407397 () Bool)

(assert (=> b!1231703 m!1407397))

(assert (=> b!1231703 m!1407397))

(declare-fun m!1407399 () Bool)

(assert (=> b!1231703 m!1407399))

(assert (=> b!1231697 m!1407381))

(declare-fun m!1407401 () Bool)

(assert (=> b!1231697 m!1407401))

(assert (=> b!1231697 m!1407335))

(assert (=> b!1231322 d!352624))

(declare-fun b!1231709 () Bool)

(declare-fun e!789019 () Bool)

(declare-fun tp!351559 () Bool)

(assert (=> b!1231709 (= e!789019 (and tp_is_empty!6379 tp!351559))))

(assert (=> b!1231339 (= tp!351496 e!789019)))

(assert (= (and b!1231339 ((_ is Cons!12519) (t!115451 input!2346))) b!1231709))

(declare-fun b!1231723 () Bool)

(declare-fun b_free!29657 () Bool)

(declare-fun b_next!30361 () Bool)

(assert (=> b!1231723 (= b_free!29657 (not b_next!30361))))

(declare-fun tp!351572 () Bool)

(declare-fun b_and!84729 () Bool)

(assert (=> b!1231723 (= tp!351572 b_and!84729)))

(declare-fun b_free!29659 () Bool)

(declare-fun b_next!30363 () Bool)

(assert (=> b!1231723 (= b_free!29659 (not b_next!30363))))

(declare-fun t!115482 () Bool)

(declare-fun tb!68929 () Bool)

(assert (=> (and b!1231723 (= (toChars!3159 (transformation!2159 (rule!3588 (h!17922 (t!115453 tokens!556))))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556))))) t!115482) tb!68929))

(declare-fun result!83184 () Bool)

(assert (= result!83184 result!83154))

(assert (=> b!1231458 t!115482))

(assert (=> d!352610 t!115482))

(declare-fun t!115484 () Bool)

(declare-fun tb!68931 () Bool)

(assert (=> (and b!1231723 (= (toChars!3159 (transformation!2159 (rule!3588 (h!17922 (t!115453 tokens!556))))) (toChars!3159 (transformation!2159 (rule!3588 (_1!7049 lt!419564))))) t!115484) tb!68931))

(declare-fun result!83186 () Bool)

(assert (= result!83186 result!83176))

(assert (=> d!352612 t!115484))

(declare-fun tp!351574 () Bool)

(declare-fun b_and!84731 () Bool)

(assert (=> b!1231723 (= tp!351574 (and (=> t!115482 result!83184) (=> t!115484 result!83186) b_and!84731))))

(declare-fun b!1231720 () Bool)

(declare-fun tp!351570 () Bool)

(declare-fun e!789035 () Bool)

(declare-fun e!789032 () Bool)

(assert (=> b!1231720 (= e!789032 (and (inv!16738 (h!17922 (t!115453 tokens!556))) e!789035 tp!351570))))

(declare-fun e!789037 () Bool)

(assert (=> b!1231723 (= e!789037 (and tp!351572 tp!351574))))

(declare-fun e!789033 () Bool)

(declare-fun b!1231722 () Bool)

(declare-fun tp!351573 () Bool)

(assert (=> b!1231722 (= e!789033 (and tp!351573 (inv!16734 (tag!2421 (rule!3588 (h!17922 (t!115453 tokens!556))))) (inv!16737 (transformation!2159 (rule!3588 (h!17922 (t!115453 tokens!556))))) e!789037))))

(declare-fun b!1231721 () Bool)

(declare-fun tp!351571 () Bool)

(assert (=> b!1231721 (= e!789035 (and (inv!21 (value!70128 (h!17922 (t!115453 tokens!556)))) e!789033 tp!351571))))

(assert (=> b!1231340 (= tp!351493 e!789032)))

(assert (= b!1231722 b!1231723))

(assert (= b!1231721 b!1231722))

(assert (= b!1231720 b!1231721))

(assert (= (and b!1231340 ((_ is Cons!12521) (t!115453 tokens!556))) b!1231720))

(declare-fun m!1407403 () Bool)

(assert (=> b!1231720 m!1407403))

(declare-fun m!1407405 () Bool)

(assert (=> b!1231722 m!1407405))

(declare-fun m!1407407 () Bool)

(assert (=> b!1231722 m!1407407))

(declare-fun m!1407409 () Bool)

(assert (=> b!1231721 m!1407409))

(declare-fun b!1231737 () Bool)

(declare-fun e!789040 () Bool)

(declare-fun tp!351587 () Bool)

(declare-fun tp!351589 () Bool)

(assert (=> b!1231737 (= e!789040 (and tp!351587 tp!351589))))

(assert (=> b!1231329 (= tp!351489 e!789040)))

(declare-fun b!1231736 () Bool)

(declare-fun tp!351585 () Bool)

(assert (=> b!1231736 (= e!789040 tp!351585)))

(declare-fun b!1231735 () Bool)

(declare-fun tp!351586 () Bool)

(declare-fun tp!351588 () Bool)

(assert (=> b!1231735 (= e!789040 (and tp!351586 tp!351588))))

(declare-fun b!1231734 () Bool)

(assert (=> b!1231734 (= e!789040 tp_is_empty!6379)))

(assert (= (and b!1231329 ((_ is ElementMatch!3429) (regex!2159 (rule!3588 (h!17922 tokens!556))))) b!1231734))

(assert (= (and b!1231329 ((_ is Concat!5657) (regex!2159 (rule!3588 (h!17922 tokens!556))))) b!1231735))

(assert (= (and b!1231329 ((_ is Star!3429) (regex!2159 (rule!3588 (h!17922 tokens!556))))) b!1231736))

(assert (= (and b!1231329 ((_ is Union!3429) (regex!2159 (rule!3588 (h!17922 tokens!556))))) b!1231737))

(declare-fun b!1231738 () Bool)

(declare-fun e!789041 () Bool)

(declare-fun tp!351590 () Bool)

(assert (=> b!1231738 (= e!789041 (and tp_is_empty!6379 tp!351590))))

(assert (=> b!1231336 (= tp!351491 e!789041)))

(assert (= (and b!1231336 ((_ is Cons!12519) (originalCharacters!2713 (h!17922 tokens!556)))) b!1231738))

(declare-fun b!1231742 () Bool)

(declare-fun e!789042 () Bool)

(declare-fun tp!351593 () Bool)

(declare-fun tp!351595 () Bool)

(assert (=> b!1231742 (= e!789042 (and tp!351593 tp!351595))))

(assert (=> b!1231341 (= tp!351492 e!789042)))

(declare-fun b!1231741 () Bool)

(declare-fun tp!351591 () Bool)

(assert (=> b!1231741 (= e!789042 tp!351591)))

(declare-fun b!1231740 () Bool)

(declare-fun tp!351592 () Bool)

(declare-fun tp!351594 () Bool)

(assert (=> b!1231740 (= e!789042 (and tp!351592 tp!351594))))

(declare-fun b!1231739 () Bool)

(assert (=> b!1231739 (= e!789042 tp_is_empty!6379)))

(assert (= (and b!1231341 ((_ is ElementMatch!3429) (regex!2159 (h!17923 rules!2728)))) b!1231739))

(assert (= (and b!1231341 ((_ is Concat!5657) (regex!2159 (h!17923 rules!2728)))) b!1231740))

(assert (= (and b!1231341 ((_ is Star!3429) (regex!2159 (h!17923 rules!2728)))) b!1231741))

(assert (= (and b!1231341 ((_ is Union!3429) (regex!2159 (h!17923 rules!2728)))) b!1231742))

(declare-fun b!1231753 () Bool)

(declare-fun b_free!29661 () Bool)

(declare-fun b_next!30365 () Bool)

(assert (=> b!1231753 (= b_free!29661 (not b_next!30365))))

(declare-fun tp!351604 () Bool)

(declare-fun b_and!84733 () Bool)

(assert (=> b!1231753 (= tp!351604 b_and!84733)))

(declare-fun b_free!29663 () Bool)

(declare-fun b_next!30367 () Bool)

(assert (=> b!1231753 (= b_free!29663 (not b_next!30367))))

(declare-fun t!115486 () Bool)

(declare-fun tb!68933 () Bool)

(assert (=> (and b!1231753 (= (toChars!3159 (transformation!2159 (h!17923 (t!115454 rules!2728)))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556))))) t!115486) tb!68933))

(declare-fun result!83192 () Bool)

(assert (= result!83192 result!83154))

(assert (=> b!1231458 t!115486))

(assert (=> d!352610 t!115486))

(declare-fun t!115488 () Bool)

(declare-fun tb!68935 () Bool)

(assert (=> (and b!1231753 (= (toChars!3159 (transformation!2159 (h!17923 (t!115454 rules!2728)))) (toChars!3159 (transformation!2159 (rule!3588 (_1!7049 lt!419564))))) t!115488) tb!68935))

(declare-fun result!83194 () Bool)

(assert (= result!83194 result!83176))

(assert (=> d!352612 t!115488))

(declare-fun tp!351607 () Bool)

(declare-fun b_and!84735 () Bool)

(assert (=> b!1231753 (= tp!351607 (and (=> t!115486 result!83192) (=> t!115488 result!83194) b_and!84735))))

(declare-fun e!789051 () Bool)

(assert (=> b!1231753 (= e!789051 (and tp!351604 tp!351607))))

(declare-fun b!1231752 () Bool)

(declare-fun tp!351605 () Bool)

(declare-fun e!789054 () Bool)

(assert (=> b!1231752 (= e!789054 (and tp!351605 (inv!16734 (tag!2421 (h!17923 (t!115454 rules!2728)))) (inv!16737 (transformation!2159 (h!17923 (t!115454 rules!2728)))) e!789051))))

(declare-fun b!1231751 () Bool)

(declare-fun e!789053 () Bool)

(declare-fun tp!351606 () Bool)

(assert (=> b!1231751 (= e!789053 (and e!789054 tp!351606))))

(assert (=> b!1231327 (= tp!351494 e!789053)))

(assert (= b!1231752 b!1231753))

(assert (= b!1231751 b!1231752))

(assert (= (and b!1231327 ((_ is Cons!12522) (t!115454 rules!2728))) b!1231751))

(declare-fun m!1407411 () Bool)

(assert (=> b!1231752 m!1407411))

(declare-fun m!1407413 () Bool)

(assert (=> b!1231752 m!1407413))

(declare-fun b_lambda!36435 () Bool)

(assert (= b_lambda!36425 (or (and b!1231338 b_free!29643) (and b!1231334 b_free!29647 (= (toChars!3159 (transformation!2159 (h!17923 rules!2728))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))))) (and b!1231723 b_free!29659 (= (toChars!3159 (transformation!2159 (rule!3588 (h!17922 (t!115453 tokens!556))))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))))) (and b!1231753 b_free!29663 (= (toChars!3159 (transformation!2159 (h!17923 (t!115454 rules!2728)))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))))) b_lambda!36435)))

(declare-fun b_lambda!36437 () Bool)

(assert (= b_lambda!36431 (or (and b!1231338 b_free!29643) (and b!1231334 b_free!29647 (= (toChars!3159 (transformation!2159 (h!17923 rules!2728))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))))) (and b!1231723 b_free!29659 (= (toChars!3159 (transformation!2159 (rule!3588 (h!17922 (t!115453 tokens!556))))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))))) (and b!1231753 b_free!29663 (= (toChars!3159 (transformation!2159 (h!17923 (t!115454 rules!2728)))) (toChars!3159 (transformation!2159 (rule!3588 (h!17922 tokens!556)))))) b_lambda!36437)))

(check-sat (not d!352616) (not b_next!30365) (not b!1231664) (not b!1231587) (not d!352612) (not b!1231675) (not b!1231700) (not b!1231453) (not b!1231651) (not b!1231709) (not b!1231660) b_and!84733 (not b!1231751) (not d!352624) (not b!1231601) (not d!352594) (not b!1231721) (not b_next!30349) (not b!1231702) (not b_next!30345) (not b!1231699) (not b!1231720) (not b!1231665) b_and!84727 (not b!1231604) (not d!352576) (not b!1231459) (not bm!85359) (not d!352610) (not b!1231742) (not b_next!30347) (not b!1231476) (not b!1231644) (not b_next!30367) (not b!1231740) (not b!1231650) (not b!1231697) (not b!1231582) (not b!1231646) (not b!1231470) b_and!84729 (not b_next!30363) (not b!1231722) (not b!1231451) (not b!1231698) b_and!84731 (not b!1231704) (not d!352608) (not d!352620) (not b!1231452) (not b_lambda!36433) (not b!1231663) (not b_lambda!36435) (not b!1231583) (not b_next!30351) (not b!1231737) (not b!1231649) (not d!352590) (not d!352584) (not d!352592) (not b!1231458) (not b!1231584) (not b!1231738) (not b!1231696) b_and!84735 b_and!84693 (not b!1231588) (not tb!68913) (not d!352588) (not b!1231641) (not d!352580) (not b!1231658) (not b!1231676) (not d!352622) b_and!84725 (not b!1231642) (not d!352602) (not d!352530) (not b!1231735) (not b!1231639) (not bm!85362) (not d!352600) (not b!1231736) (not b!1231638) (not b!1231741) tp_is_empty!6379 (not b!1231752) (not tb!68925) b_and!84689 (not b!1231603) (not b!1231703) (not b_lambda!36437) (not b!1231589) (not b_next!30361))
(check-sat b_and!84733 (not b_next!30365) b_and!84727 b_and!84731 (not b_next!30351) b_and!84735 b_and!84693 b_and!84725 b_and!84689 (not b_next!30361) (not b_next!30349) (not b_next!30345) (not b_next!30347) (not b_next!30367) b_and!84729 (not b_next!30363))
