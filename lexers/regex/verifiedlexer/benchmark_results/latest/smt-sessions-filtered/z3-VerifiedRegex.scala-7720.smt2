; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405670 () Bool)

(assert start!405670)

(declare-fun b!4239244 () Bool)

(declare-fun b_free!125455 () Bool)

(declare-fun b_next!126159 () Bool)

(assert (=> b!4239244 (= b_free!125455 (not b_next!126159))))

(declare-fun tp!1299156 () Bool)

(declare-fun b_and!335177 () Bool)

(assert (=> b!4239244 (= tp!1299156 b_and!335177)))

(declare-fun b_free!125457 () Bool)

(declare-fun b_next!126161 () Bool)

(assert (=> b!4239244 (= b_free!125457 (not b_next!126161))))

(declare-fun tp!1299149 () Bool)

(declare-fun b_and!335179 () Bool)

(assert (=> b!4239244 (= tp!1299149 b_and!335179)))

(declare-fun b!4239252 () Bool)

(declare-fun b_free!125459 () Bool)

(declare-fun b_next!126163 () Bool)

(assert (=> b!4239252 (= b_free!125459 (not b_next!126163))))

(declare-fun tp!1299143 () Bool)

(declare-fun b_and!335181 () Bool)

(assert (=> b!4239252 (= tp!1299143 b_and!335181)))

(declare-fun b_free!125461 () Bool)

(declare-fun b_next!126165 () Bool)

(assert (=> b!4239252 (= b_free!125461 (not b_next!126165))))

(declare-fun tp!1299148 () Bool)

(declare-fun b_and!335183 () Bool)

(assert (=> b!4239252 (= tp!1299148 b_and!335183)))

(declare-fun b!4239247 () Bool)

(declare-fun b_free!125463 () Bool)

(declare-fun b_next!126167 () Bool)

(assert (=> b!4239247 (= b_free!125463 (not b_next!126167))))

(declare-fun tp!1299155 () Bool)

(declare-fun b_and!335185 () Bool)

(assert (=> b!4239247 (= tp!1299155 b_and!335185)))

(declare-fun b_free!125465 () Bool)

(declare-fun b_next!126169 () Bool)

(assert (=> b!4239247 (= b_free!125465 (not b_next!126169))))

(declare-fun tp!1299151 () Bool)

(declare-fun b_and!335187 () Bool)

(assert (=> b!4239247 (= tp!1299151 b_and!335187)))

(declare-fun b!4239243 () Bool)

(declare-fun e!2632526 () Bool)

(declare-datatypes ((List!46996 0))(
  ( (Nil!46872) (Cons!46872 (h!52292 (_ BitVec 16)) (t!350409 List!46996)) )
))
(declare-datatypes ((TokenValue!8154 0))(
  ( (FloatLiteralValue!16308 (text!57523 List!46996)) (TokenValueExt!8153 (__x!28531 Int)) (Broken!40770 (value!246344 List!46996)) (Object!8277) (End!8154) (Def!8154) (Underscore!8154) (Match!8154) (Else!8154) (Error!8154) (Case!8154) (If!8154) (Extends!8154) (Abstract!8154) (Class!8154) (Val!8154) (DelimiterValue!16308 (del!8214 List!46996)) (KeywordValue!8160 (value!246345 List!46996)) (CommentValue!16308 (value!246346 List!46996)) (WhitespaceValue!16308 (value!246347 List!46996)) (IndentationValue!8154 (value!246348 List!46996)) (String!54699) (Int32!8154) (Broken!40771 (value!246349 List!46996)) (Boolean!8155) (Unit!65960) (OperatorValue!8157 (op!8214 List!46996)) (IdentifierValue!16308 (value!246350 List!46996)) (IdentifierValue!16309 (value!246351 List!46996)) (WhitespaceValue!16309 (value!246352 List!46996)) (True!16308) (False!16308) (Broken!40772 (value!246353 List!46996)) (Broken!40773 (value!246354 List!46996)) (True!16309) (RightBrace!8154) (RightBracket!8154) (Colon!8154) (Null!8154) (Comma!8154) (LeftBracket!8154) (False!16309) (LeftBrace!8154) (ImaginaryLiteralValue!8154 (text!57524 List!46996)) (StringLiteralValue!24462 (value!246355 List!46996)) (EOFValue!8154 (value!246356 List!46996)) (IdentValue!8154 (value!246357 List!46996)) (DelimiterValue!16309 (value!246358 List!46996)) (DedentValue!8154 (value!246359 List!46996)) (NewLineValue!8154 (value!246360 List!46996)) (IntegerValue!24462 (value!246361 (_ BitVec 32)) (text!57525 List!46996)) (IntegerValue!24463 (value!246362 Int) (text!57526 List!46996)) (Times!8154) (Or!8154) (Equal!8154) (Minus!8154) (Broken!40774 (value!246363 List!46996)) (And!8154) (Div!8154) (LessEqual!8154) (Mod!8154) (Concat!20983) (Not!8154) (Plus!8154) (SpaceValue!8154 (value!246364 List!46996)) (IntegerValue!24464 (value!246365 Int) (text!57527 List!46996)) (StringLiteralValue!24463 (text!57528 List!46996)) (FloatLiteralValue!16309 (text!57529 List!46996)) (BytesLiteralValue!8154 (value!246366 List!46996)) (CommentValue!16309 (value!246367 List!46996)) (StringLiteralValue!24464 (value!246368 List!46996)) (ErrorTokenValue!8154 (msg!8215 List!46996)) )
))
(declare-datatypes ((String!54700 0))(
  ( (String!54701 (value!246369 String)) )
))
(declare-datatypes ((C!25856 0))(
  ( (C!25857 (val!15118 Int)) )
))
(declare-datatypes ((Regex!12829 0))(
  ( (ElementMatch!12829 (c!720322 C!25856)) (Concat!20984 (regOne!26170 Regex!12829) (regTwo!26170 Regex!12829)) (EmptyExpr!12829) (Star!12829 (reg!13158 Regex!12829)) (EmptyLang!12829) (Union!12829 (regOne!26171 Regex!12829) (regTwo!26171 Regex!12829)) )
))
(declare-datatypes ((List!46997 0))(
  ( (Nil!46873) (Cons!46873 (h!52293 C!25856) (t!350410 List!46997)) )
))
(declare-datatypes ((IArray!28275 0))(
  ( (IArray!28276 (innerList!14195 List!46997)) )
))
(declare-datatypes ((Conc!14135 0))(
  ( (Node!14135 (left!34839 Conc!14135) (right!35169 Conc!14135) (csize!28500 Int) (cheight!14346 Int)) (Leaf!21856 (xs!17441 IArray!28275) (csize!28501 Int)) (Empty!14135) )
))
(declare-datatypes ((BalanceConc!27864 0))(
  ( (BalanceConc!27865 (c!720323 Conc!14135)) )
))
(declare-datatypes ((TokenValueInjection!15736 0))(
  ( (TokenValueInjection!15737 (toValue!10676 Int) (toChars!10535 Int)) )
))
(declare-datatypes ((Rule!15648 0))(
  ( (Rule!15649 (regex!7924 Regex!12829) (tag!8788 String!54700) (isSeparator!7924 Bool) (transformation!7924 TokenValueInjection!15736)) )
))
(declare-datatypes ((Token!14474 0))(
  ( (Token!14475 (value!246370 TokenValue!8154) (rule!11050 Rule!15648) (size!34337 Int) (originalCharacters!8268 List!46997)) )
))
(declare-datatypes ((tuple2!44450 0))(
  ( (tuple2!44451 (_1!25359 Token!14474) (_2!25359 List!46997)) )
))
(declare-datatypes ((Option!10060 0))(
  ( (None!10059) (Some!10059 (v!41009 tuple2!44450)) )
))
(declare-fun lt!1506311 () Option!10060)

(declare-fun shorterInput!51 () List!46997)

(declare-fun ++!11935 (List!46997 List!46997) List!46997)

(declare-fun list!16901 (BalanceConc!27864) List!46997)

(declare-fun charsOf!5278 (Token!14474) BalanceConc!27864)

(assert (=> b!4239243 (= e!2632526 (not (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))) (_2!25359 (v!41009 lt!1506311))) shorterInput!51)))))

(declare-fun e!2632522 () Bool)

(assert (=> b!4239244 (= e!2632522 (and tp!1299156 tp!1299149))))

(declare-fun b!4239245 () Bool)

(declare-fun res!1743274 () Bool)

(declare-fun e!2632532 () Bool)

(assert (=> b!4239245 (=> (not res!1743274) (not e!2632532))))

(declare-datatypes ((List!46998 0))(
  ( (Nil!46874) (Cons!46874 (h!52294 Token!14474) (t!350411 List!46998)) )
))
(declare-fun addTokens!17 () List!46998)

(declare-fun isEmpty!27707 (List!46998) Bool)

(assert (=> b!4239245 (= res!1743274 (not (isEmpty!27707 addTokens!17)))))

(declare-fun b!4239246 () Bool)

(assert (=> b!4239246 (= e!2632532 e!2632526)))

(declare-fun res!1743273 () Bool)

(assert (=> b!4239246 (=> (not res!1743273) (not e!2632526))))

(declare-fun lt!1506312 () Option!10060)

(get-info :version)

(assert (=> b!4239246 (= res!1743273 (and ((_ is Some!10059) lt!1506312) ((_ is Some!10059) lt!1506311)))))

(declare-datatypes ((LexerInterface!7519 0))(
  ( (LexerInterfaceExt!7516 (__x!28532 Int)) (Lexer!7517) )
))
(declare-fun thiss!21540 () LexerInterface!7519)

(declare-datatypes ((List!46999 0))(
  ( (Nil!46875) (Cons!46875 (h!52295 Rule!15648) (t!350412 List!46999)) )
))
(declare-fun rules!2932 () List!46999)

(declare-fun maxPrefix!4477 (LexerInterface!7519 List!46999 List!46997) Option!10060)

(assert (=> b!4239246 (= lt!1506311 (maxPrefix!4477 thiss!21540 rules!2932 shorterInput!51))))

(declare-fun longerInput!51 () List!46997)

(assert (=> b!4239246 (= lt!1506312 (maxPrefix!4477 thiss!21540 rules!2932 longerInput!51))))

(declare-fun e!2632542 () Bool)

(assert (=> b!4239247 (= e!2632542 (and tp!1299155 tp!1299151))))

(declare-fun b!4239248 () Bool)

(declare-fun e!2632534 () Bool)

(declare-fun tp!1299142 () Bool)

(declare-fun e!2632537 () Bool)

(declare-fun inv!21 (TokenValue!8154) Bool)

(assert (=> b!4239248 (= e!2632534 (and (inv!21 (value!246370 (h!52294 addTokens!17))) e!2632537 tp!1299142))))

(declare-fun b!4239249 () Bool)

(declare-fun res!1743277 () Bool)

(assert (=> b!4239249 (=> (not res!1743277) (not e!2632532))))

(declare-fun isEmpty!27708 (List!46997) Bool)

(assert (=> b!4239249 (= res!1743277 (not (isEmpty!27708 longerInput!51)))))

(declare-fun b!4239250 () Bool)

(declare-fun res!1743276 () Bool)

(assert (=> b!4239250 (=> (not res!1743276) (not e!2632532))))

(declare-fun size!34338 (List!46997) Int)

(assert (=> b!4239250 (= res!1743276 (> (size!34338 longerInput!51) (size!34338 shorterInput!51)))))

(declare-fun e!2632541 () Bool)

(declare-fun b!4239251 () Bool)

(declare-fun tp!1299145 () Bool)

(declare-fun tokens!581 () List!46998)

(declare-fun inv!61610 (String!54700) Bool)

(declare-fun inv!61613 (TokenValueInjection!15736) Bool)

(assert (=> b!4239251 (= e!2632541 (and tp!1299145 (inv!61610 (tag!8788 (rule!11050 (h!52294 tokens!581)))) (inv!61613 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) e!2632542))))

(declare-fun e!2632539 () Bool)

(assert (=> b!4239252 (= e!2632539 (and tp!1299143 tp!1299148))))

(declare-fun e!2632533 () Bool)

(declare-fun tp!1299144 () Bool)

(declare-fun b!4239253 () Bool)

(declare-fun inv!61614 (Token!14474) Bool)

(assert (=> b!4239253 (= e!2632533 (and (inv!61614 (h!52294 addTokens!17)) e!2632534 tp!1299144))))

(declare-fun b!4239254 () Bool)

(declare-fun res!1743270 () Bool)

(assert (=> b!4239254 (=> (not res!1743270) (not e!2632526))))

(assert (=> b!4239254 (= res!1743270 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))) (_2!25359 (v!41009 lt!1506312))) longerInput!51))))

(declare-fun b!4239255 () Bool)

(declare-fun e!2632523 () Bool)

(declare-fun tp_is_empty!22649 () Bool)

(declare-fun tp!1299150 () Bool)

(assert (=> b!4239255 (= e!2632523 (and tp_is_empty!22649 tp!1299150))))

(declare-fun b!4239256 () Bool)

(declare-fun res!1743275 () Bool)

(assert (=> b!4239256 (=> (not res!1743275) (not e!2632532))))

(declare-fun isEmpty!27709 (List!46999) Bool)

(assert (=> b!4239256 (= res!1743275 (not (isEmpty!27709 rules!2932)))))

(declare-fun b!4239257 () Bool)

(declare-fun res!1743271 () Bool)

(assert (=> b!4239257 (=> (not res!1743271) (not e!2632532))))

(declare-fun size!34339 (List!46998) Int)

(assert (=> b!4239257 (= res!1743271 (> (size!34339 addTokens!17) 0))))

(declare-fun b!4239258 () Bool)

(declare-fun res!1743272 () Bool)

(assert (=> b!4239258 (=> (not res!1743272) (not e!2632532))))

(declare-fun rulesInvariant!6630 (LexerInterface!7519 List!46999) Bool)

(assert (=> b!4239258 (= res!1743272 (rulesInvariant!6630 thiss!21540 rules!2932))))

(declare-fun res!1743268 () Bool)

(assert (=> start!405670 (=> (not res!1743268) (not e!2632532))))

(assert (=> start!405670 (= res!1743268 ((_ is Lexer!7517) thiss!21540))))

(assert (=> start!405670 e!2632532))

(assert (=> start!405670 true))

(declare-fun e!2632538 () Bool)

(assert (=> start!405670 e!2632538))

(assert (=> start!405670 e!2632533))

(assert (=> start!405670 e!2632523))

(declare-fun e!2632525 () Bool)

(assert (=> start!405670 e!2632525))

(declare-fun e!2632527 () Bool)

(assert (=> start!405670 e!2632527))

(declare-fun e!2632531 () Bool)

(assert (=> start!405670 e!2632531))

(declare-fun e!2632530 () Bool)

(declare-fun b!4239259 () Bool)

(declare-fun tp!1299153 () Bool)

(assert (=> b!4239259 (= e!2632530 (and (inv!21 (value!246370 (h!52294 tokens!581))) e!2632541 tp!1299153))))

(declare-fun b!4239260 () Bool)

(declare-fun res!1743269 () Bool)

(assert (=> b!4239260 (=> (not res!1743269) (not e!2632532))))

(declare-fun suffix!1262 () List!46997)

(declare-datatypes ((tuple2!44452 0))(
  ( (tuple2!44453 (_1!25360 List!46998) (_2!25360 List!46997)) )
))
(declare-fun lexList!2025 (LexerInterface!7519 List!46999 List!46997) tuple2!44452)

(assert (=> b!4239260 (= res!1743269 (= (lexList!2025 thiss!21540 rules!2932 longerInput!51) (tuple2!44453 tokens!581 suffix!1262)))))

(declare-fun b!4239261 () Bool)

(declare-fun e!2632535 () Bool)

(declare-fun tp!1299152 () Bool)

(assert (=> b!4239261 (= e!2632538 (and e!2632535 tp!1299152))))

(declare-fun b!4239262 () Bool)

(declare-fun tp!1299140 () Bool)

(assert (=> b!4239262 (= e!2632535 (and tp!1299140 (inv!61610 (tag!8788 (h!52295 rules!2932))) (inv!61613 (transformation!7924 (h!52295 rules!2932))) e!2632522))))

(declare-fun b!4239263 () Bool)

(declare-fun tp!1299147 () Bool)

(assert (=> b!4239263 (= e!2632525 (and tp_is_empty!22649 tp!1299147))))

(declare-fun tp!1299154 () Bool)

(declare-fun b!4239264 () Bool)

(assert (=> b!4239264 (= e!2632527 (and (inv!61614 (h!52294 tokens!581)) e!2632530 tp!1299154))))

(declare-fun tp!1299141 () Bool)

(declare-fun b!4239265 () Bool)

(assert (=> b!4239265 (= e!2632537 (and tp!1299141 (inv!61610 (tag!8788 (rule!11050 (h!52294 addTokens!17)))) (inv!61613 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) e!2632539))))

(declare-fun b!4239266 () Bool)

(declare-fun tp!1299146 () Bool)

(assert (=> b!4239266 (= e!2632531 (and tp_is_empty!22649 tp!1299146))))

(assert (= (and start!405670 res!1743268) b!4239256))

(assert (= (and b!4239256 res!1743275) b!4239258))

(assert (= (and b!4239258 res!1743272) b!4239249))

(assert (= (and b!4239249 res!1743277) b!4239250))

(assert (= (and b!4239250 res!1743276) b!4239260))

(assert (= (and b!4239260 res!1743269) b!4239245))

(assert (= (and b!4239245 res!1743274) b!4239257))

(assert (= (and b!4239257 res!1743271) b!4239246))

(assert (= (and b!4239246 res!1743273) b!4239254))

(assert (= (and b!4239254 res!1743270) b!4239243))

(assert (= b!4239262 b!4239244))

(assert (= b!4239261 b!4239262))

(assert (= (and start!405670 ((_ is Cons!46875) rules!2932)) b!4239261))

(assert (= b!4239265 b!4239252))

(assert (= b!4239248 b!4239265))

(assert (= b!4239253 b!4239248))

(assert (= (and start!405670 ((_ is Cons!46874) addTokens!17)) b!4239253))

(assert (= (and start!405670 ((_ is Cons!46873) shorterInput!51)) b!4239255))

(assert (= (and start!405670 ((_ is Cons!46873) suffix!1262)) b!4239263))

(assert (= b!4239251 b!4239247))

(assert (= b!4239259 b!4239251))

(assert (= b!4239264 b!4239259))

(assert (= (and start!405670 ((_ is Cons!46874) tokens!581)) b!4239264))

(assert (= (and start!405670 ((_ is Cons!46873) longerInput!51)) b!4239266))

(declare-fun m!4824607 () Bool)

(assert (=> b!4239256 m!4824607))

(declare-fun m!4824609 () Bool)

(assert (=> b!4239245 m!4824609))

(declare-fun m!4824611 () Bool)

(assert (=> b!4239264 m!4824611))

(declare-fun m!4824613 () Bool)

(assert (=> b!4239243 m!4824613))

(assert (=> b!4239243 m!4824613))

(declare-fun m!4824615 () Bool)

(assert (=> b!4239243 m!4824615))

(assert (=> b!4239243 m!4824615))

(declare-fun m!4824617 () Bool)

(assert (=> b!4239243 m!4824617))

(declare-fun m!4824619 () Bool)

(assert (=> b!4239250 m!4824619))

(declare-fun m!4824621 () Bool)

(assert (=> b!4239250 m!4824621))

(declare-fun m!4824623 () Bool)

(assert (=> b!4239265 m!4824623))

(declare-fun m!4824625 () Bool)

(assert (=> b!4239265 m!4824625))

(declare-fun m!4824627 () Bool)

(assert (=> b!4239259 m!4824627))

(declare-fun m!4824629 () Bool)

(assert (=> b!4239262 m!4824629))

(declare-fun m!4824631 () Bool)

(assert (=> b!4239262 m!4824631))

(declare-fun m!4824633 () Bool)

(assert (=> b!4239254 m!4824633))

(assert (=> b!4239254 m!4824633))

(declare-fun m!4824635 () Bool)

(assert (=> b!4239254 m!4824635))

(assert (=> b!4239254 m!4824635))

(declare-fun m!4824637 () Bool)

(assert (=> b!4239254 m!4824637))

(declare-fun m!4824639 () Bool)

(assert (=> b!4239253 m!4824639))

(declare-fun m!4824641 () Bool)

(assert (=> b!4239257 m!4824641))

(declare-fun m!4824643 () Bool)

(assert (=> b!4239258 m!4824643))

(declare-fun m!4824645 () Bool)

(assert (=> b!4239249 m!4824645))

(declare-fun m!4824647 () Bool)

(assert (=> b!4239248 m!4824647))

(declare-fun m!4824649 () Bool)

(assert (=> b!4239251 m!4824649))

(declare-fun m!4824651 () Bool)

(assert (=> b!4239251 m!4824651))

(declare-fun m!4824653 () Bool)

(assert (=> b!4239246 m!4824653))

(declare-fun m!4824655 () Bool)

(assert (=> b!4239246 m!4824655))

(declare-fun m!4824657 () Bool)

(assert (=> b!4239260 m!4824657))

(check-sat (not b!4239249) tp_is_empty!22649 (not b!4239255) (not b!4239257) (not b!4239251) b_and!335179 (not b!4239264) b_and!335185 (not b_next!126167) (not b_next!126161) (not b!4239250) (not b!4239245) (not b_next!126165) (not b_next!126159) (not b!4239266) (not b!4239254) b_and!335183 (not b!4239256) (not b!4239259) b_and!335181 (not b!4239262) (not b!4239243) (not b!4239260) (not b!4239248) (not b!4239246) b_and!335187 (not b_next!126163) (not b!4239253) b_and!335177 (not b!4239263) (not b!4239258) (not b_next!126169) (not b!4239261) (not b!4239265))
(check-sat b_and!335179 b_and!335183 b_and!335181 b_and!335185 b_and!335177 (not b_next!126167) (not b_next!126161) (not b_next!126169) (not b_next!126165) (not b_next!126159) b_and!335187 (not b_next!126163))
(get-model)

(declare-fun d!1247145 () Bool)

(assert (=> d!1247145 (= (inv!61610 (tag!8788 (rule!11050 (h!52294 tokens!581)))) (= (mod (str.len (value!246369 (tag!8788 (rule!11050 (h!52294 tokens!581))))) 2) 0))))

(assert (=> b!4239251 d!1247145))

(declare-fun d!1247147 () Bool)

(declare-fun res!1743286 () Bool)

(declare-fun e!2632545 () Bool)

(assert (=> d!1247147 (=> (not res!1743286) (not e!2632545))))

(declare-fun semiInverseModEq!3446 (Int Int) Bool)

(assert (=> d!1247147 (= res!1743286 (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))))))

(assert (=> d!1247147 (= (inv!61613 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) e!2632545)))

(declare-fun b!4239269 () Bool)

(declare-fun equivClasses!3345 (Int Int) Bool)

(assert (=> b!4239269 (= e!2632545 (equivClasses!3345 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))))))

(assert (= (and d!1247147 res!1743286) b!4239269))

(declare-fun m!4824659 () Bool)

(assert (=> d!1247147 m!4824659))

(declare-fun m!4824661 () Bool)

(assert (=> b!4239269 m!4824661))

(assert (=> b!4239251 d!1247147))

(declare-fun d!1247149 () Bool)

(assert (=> d!1247149 (= (inv!61610 (tag!8788 (h!52295 rules!2932))) (= (mod (str.len (value!246369 (tag!8788 (h!52295 rules!2932)))) 2) 0))))

(assert (=> b!4239262 d!1247149))

(declare-fun d!1247151 () Bool)

(declare-fun res!1743287 () Bool)

(declare-fun e!2632546 () Bool)

(assert (=> d!1247151 (=> (not res!1743287) (not e!2632546))))

(assert (=> d!1247151 (= res!1743287 (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (h!52295 rules!2932)))))))

(assert (=> d!1247151 (= (inv!61613 (transformation!7924 (h!52295 rules!2932))) e!2632546)))

(declare-fun b!4239270 () Bool)

(assert (=> b!4239270 (= e!2632546 (equivClasses!3345 (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (h!52295 rules!2932)))))))

(assert (= (and d!1247151 res!1743287) b!4239270))

(declare-fun m!4824663 () Bool)

(assert (=> d!1247151 m!4824663))

(declare-fun m!4824665 () Bool)

(assert (=> b!4239270 m!4824665))

(assert (=> b!4239262 d!1247151))

(declare-fun d!1247153 () Bool)

(declare-fun lt!1506315 () Int)

(assert (=> d!1247153 (>= lt!1506315 0)))

(declare-fun e!2632549 () Int)

(assert (=> d!1247153 (= lt!1506315 e!2632549)))

(declare-fun c!720326 () Bool)

(assert (=> d!1247153 (= c!720326 ((_ is Nil!46873) longerInput!51))))

(assert (=> d!1247153 (= (size!34338 longerInput!51) lt!1506315)))

(declare-fun b!4239275 () Bool)

(assert (=> b!4239275 (= e!2632549 0)))

(declare-fun b!4239276 () Bool)

(assert (=> b!4239276 (= e!2632549 (+ 1 (size!34338 (t!350410 longerInput!51))))))

(assert (= (and d!1247153 c!720326) b!4239275))

(assert (= (and d!1247153 (not c!720326)) b!4239276))

(declare-fun m!4824667 () Bool)

(assert (=> b!4239276 m!4824667))

(assert (=> b!4239250 d!1247153))

(declare-fun d!1247157 () Bool)

(declare-fun lt!1506316 () Int)

(assert (=> d!1247157 (>= lt!1506316 0)))

(declare-fun e!2632550 () Int)

(assert (=> d!1247157 (= lt!1506316 e!2632550)))

(declare-fun c!720327 () Bool)

(assert (=> d!1247157 (= c!720327 ((_ is Nil!46873) shorterInput!51))))

(assert (=> d!1247157 (= (size!34338 shorterInput!51) lt!1506316)))

(declare-fun b!4239277 () Bool)

(assert (=> b!4239277 (= e!2632550 0)))

(declare-fun b!4239278 () Bool)

(assert (=> b!4239278 (= e!2632550 (+ 1 (size!34338 (t!350410 shorterInput!51))))))

(assert (= (and d!1247157 c!720327) b!4239277))

(assert (= (and d!1247157 (not c!720327)) b!4239278))

(declare-fun m!4824669 () Bool)

(assert (=> b!4239278 m!4824669))

(assert (=> b!4239250 d!1247157))

(declare-fun b!4239300 () Bool)

(declare-fun e!2632562 () List!46997)

(assert (=> b!4239300 (= e!2632562 (Cons!46873 (h!52293 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) (++!11935 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) (_2!25359 (v!41009 lt!1506311)))))))

(declare-fun b!4239301 () Bool)

(declare-fun res!1743298 () Bool)

(declare-fun e!2632561 () Bool)

(assert (=> b!4239301 (=> (not res!1743298) (not e!2632561))))

(declare-fun lt!1506322 () List!46997)

(assert (=> b!4239301 (= res!1743298 (= (size!34338 lt!1506322) (+ (size!34338 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) (size!34338 (_2!25359 (v!41009 lt!1506311))))))))

(declare-fun b!4239302 () Bool)

(assert (=> b!4239302 (= e!2632561 (or (not (= (_2!25359 (v!41009 lt!1506311)) Nil!46873)) (= lt!1506322 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))))))

(declare-fun d!1247159 () Bool)

(assert (=> d!1247159 e!2632561))

(declare-fun res!1743299 () Bool)

(assert (=> d!1247159 (=> (not res!1743299) (not e!2632561))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7369 (List!46997) (InoxSet C!25856))

(assert (=> d!1247159 (= res!1743299 (= (content!7369 lt!1506322) ((_ map or) (content!7369 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) (content!7369 (_2!25359 (v!41009 lt!1506311))))))))

(assert (=> d!1247159 (= lt!1506322 e!2632562)))

(declare-fun c!720333 () Bool)

(assert (=> d!1247159 (= c!720333 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))

(assert (=> d!1247159 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))) (_2!25359 (v!41009 lt!1506311))) lt!1506322)))

(declare-fun b!4239299 () Bool)

(assert (=> b!4239299 (= e!2632562 (_2!25359 (v!41009 lt!1506311)))))

(assert (= (and d!1247159 c!720333) b!4239299))

(assert (= (and d!1247159 (not c!720333)) b!4239300))

(assert (= (and d!1247159 res!1743299) b!4239301))

(assert (= (and b!4239301 res!1743298) b!4239302))

(declare-fun m!4824687 () Bool)

(assert (=> b!4239300 m!4824687))

(declare-fun m!4824689 () Bool)

(assert (=> b!4239301 m!4824689))

(assert (=> b!4239301 m!4824615))

(declare-fun m!4824691 () Bool)

(assert (=> b!4239301 m!4824691))

(declare-fun m!4824693 () Bool)

(assert (=> b!4239301 m!4824693))

(declare-fun m!4824695 () Bool)

(assert (=> d!1247159 m!4824695))

(assert (=> d!1247159 m!4824615))

(declare-fun m!4824697 () Bool)

(assert (=> d!1247159 m!4824697))

(declare-fun m!4824699 () Bool)

(assert (=> d!1247159 m!4824699))

(assert (=> b!4239243 d!1247159))

(declare-fun d!1247165 () Bool)

(declare-fun list!16903 (Conc!14135) List!46997)

(assert (=> d!1247165 (= (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))) (list!16903 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))

(declare-fun bs!598287 () Bool)

(assert (= bs!598287 d!1247165))

(declare-fun m!4824701 () Bool)

(assert (=> bs!598287 m!4824701))

(assert (=> b!4239243 d!1247165))

(declare-fun d!1247167 () Bool)

(declare-fun lt!1506328 () BalanceConc!27864)

(assert (=> d!1247167 (= (list!16901 lt!1506328) (originalCharacters!8268 (_1!25359 (v!41009 lt!1506311))))))

(declare-fun dynLambda!20098 (Int TokenValue!8154) BalanceConc!27864)

(assert (=> d!1247167 (= lt!1506328 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))))

(assert (=> d!1247167 (= (charsOf!5278 (_1!25359 (v!41009 lt!1506311))) lt!1506328)))

(declare-fun b_lambda!124797 () Bool)

(assert (=> (not b_lambda!124797) (not d!1247167)))

(declare-fun tb!254609 () Bool)

(declare-fun t!350420 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350420) tb!254609))

(declare-fun b!4239316 () Bool)

(declare-fun e!2632570 () Bool)

(declare-fun tp!1299162 () Bool)

(declare-fun inv!61617 (Conc!14135) Bool)

(assert (=> b!4239316 (= e!2632570 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))) tp!1299162))))

(declare-fun result!310536 () Bool)

(declare-fun inv!61618 (BalanceConc!27864) Bool)

(assert (=> tb!254609 (= result!310536 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))) e!2632570))))

(assert (= tb!254609 b!4239316))

(declare-fun m!4824711 () Bool)

(assert (=> b!4239316 m!4824711))

(declare-fun m!4824715 () Bool)

(assert (=> tb!254609 m!4824715))

(assert (=> d!1247167 t!350420))

(declare-fun b_and!335195 () Bool)

(assert (= b_and!335179 (and (=> t!350420 result!310536) b_and!335195)))

(declare-fun tb!254611 () Bool)

(declare-fun t!350422 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350422) tb!254611))

(declare-fun result!310540 () Bool)

(assert (= result!310540 result!310536))

(assert (=> d!1247167 t!350422))

(declare-fun b_and!335197 () Bool)

(assert (= b_and!335183 (and (=> t!350422 result!310540) b_and!335197)))

(declare-fun t!350424 () Bool)

(declare-fun tb!254613 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350424) tb!254613))

(declare-fun result!310542 () Bool)

(assert (= result!310542 result!310536))

(assert (=> d!1247167 t!350424))

(declare-fun b_and!335199 () Bool)

(assert (= b_and!335187 (and (=> t!350424 result!310542) b_and!335199)))

(declare-fun m!4824717 () Bool)

(assert (=> d!1247167 m!4824717))

(declare-fun m!4824719 () Bool)

(assert (=> d!1247167 m!4824719))

(assert (=> b!4239243 d!1247167))

(declare-fun b!4239320 () Bool)

(declare-fun e!2632573 () List!46997)

(assert (=> b!4239320 (= e!2632573 (Cons!46873 (h!52293 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) (++!11935 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) (_2!25359 (v!41009 lt!1506312)))))))

(declare-fun b!4239321 () Bool)

(declare-fun res!1743300 () Bool)

(declare-fun e!2632572 () Bool)

(assert (=> b!4239321 (=> (not res!1743300) (not e!2632572))))

(declare-fun lt!1506332 () List!46997)

(assert (=> b!4239321 (= res!1743300 (= (size!34338 lt!1506332) (+ (size!34338 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) (size!34338 (_2!25359 (v!41009 lt!1506312))))))))

(declare-fun b!4239322 () Bool)

(assert (=> b!4239322 (= e!2632572 (or (not (= (_2!25359 (v!41009 lt!1506312)) Nil!46873)) (= lt!1506332 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))))))

(declare-fun d!1247173 () Bool)

(assert (=> d!1247173 e!2632572))

(declare-fun res!1743301 () Bool)

(assert (=> d!1247173 (=> (not res!1743301) (not e!2632572))))

(assert (=> d!1247173 (= res!1743301 (= (content!7369 lt!1506332) ((_ map or) (content!7369 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) (content!7369 (_2!25359 (v!41009 lt!1506312))))))))

(assert (=> d!1247173 (= lt!1506332 e!2632573)))

(declare-fun c!720337 () Bool)

(assert (=> d!1247173 (= c!720337 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))

(assert (=> d!1247173 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))) (_2!25359 (v!41009 lt!1506312))) lt!1506332)))

(declare-fun b!4239319 () Bool)

(assert (=> b!4239319 (= e!2632573 (_2!25359 (v!41009 lt!1506312)))))

(assert (= (and d!1247173 c!720337) b!4239319))

(assert (= (and d!1247173 (not c!720337)) b!4239320))

(assert (= (and d!1247173 res!1743301) b!4239321))

(assert (= (and b!4239321 res!1743300) b!4239322))

(declare-fun m!4824721 () Bool)

(assert (=> b!4239320 m!4824721))

(declare-fun m!4824723 () Bool)

(assert (=> b!4239321 m!4824723))

(assert (=> b!4239321 m!4824635))

(declare-fun m!4824725 () Bool)

(assert (=> b!4239321 m!4824725))

(declare-fun m!4824727 () Bool)

(assert (=> b!4239321 m!4824727))

(declare-fun m!4824729 () Bool)

(assert (=> d!1247173 m!4824729))

(assert (=> d!1247173 m!4824635))

(declare-fun m!4824731 () Bool)

(assert (=> d!1247173 m!4824731))

(declare-fun m!4824733 () Bool)

(assert (=> d!1247173 m!4824733))

(assert (=> b!4239254 d!1247173))

(declare-fun d!1247175 () Bool)

(assert (=> d!1247175 (= (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))) (list!16903 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))

(declare-fun bs!598288 () Bool)

(assert (= bs!598288 d!1247175))

(declare-fun m!4824735 () Bool)

(assert (=> bs!598288 m!4824735))

(assert (=> b!4239254 d!1247175))

(declare-fun d!1247177 () Bool)

(declare-fun lt!1506333 () BalanceConc!27864)

(assert (=> d!1247177 (= (list!16901 lt!1506333) (originalCharacters!8268 (_1!25359 (v!41009 lt!1506312))))))

(assert (=> d!1247177 (= lt!1506333 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))))

(assert (=> d!1247177 (= (charsOf!5278 (_1!25359 (v!41009 lt!1506312))) lt!1506333)))

(declare-fun b_lambda!124799 () Bool)

(assert (=> (not b_lambda!124799) (not d!1247177)))

(declare-fun tb!254615 () Bool)

(declare-fun t!350426 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350426) tb!254615))

(declare-fun b!4239331 () Bool)

(declare-fun e!2632578 () Bool)

(declare-fun tp!1299163 () Bool)

(assert (=> b!4239331 (= e!2632578 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))) tp!1299163))))

(declare-fun result!310544 () Bool)

(assert (=> tb!254615 (= result!310544 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))) e!2632578))))

(assert (= tb!254615 b!4239331))

(declare-fun m!4824737 () Bool)

(assert (=> b!4239331 m!4824737))

(declare-fun m!4824739 () Bool)

(assert (=> tb!254615 m!4824739))

(assert (=> d!1247177 t!350426))

(declare-fun b_and!335201 () Bool)

(assert (= b_and!335195 (and (=> t!350426 result!310544) b_and!335201)))

(declare-fun tb!254617 () Bool)

(declare-fun t!350428 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350428) tb!254617))

(declare-fun result!310546 () Bool)

(assert (= result!310546 result!310544))

(assert (=> d!1247177 t!350428))

(declare-fun b_and!335203 () Bool)

(assert (= b_and!335197 (and (=> t!350428 result!310546) b_and!335203)))

(declare-fun t!350430 () Bool)

(declare-fun tb!254619 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350430) tb!254619))

(declare-fun result!310548 () Bool)

(assert (= result!310548 result!310544))

(assert (=> d!1247177 t!350430))

(declare-fun b_and!335205 () Bool)

(assert (= b_and!335199 (and (=> t!350430 result!310548) b_and!335205)))

(declare-fun m!4824741 () Bool)

(assert (=> d!1247177 m!4824741))

(declare-fun m!4824743 () Bool)

(assert (=> d!1247177 m!4824743))

(assert (=> b!4239254 d!1247177))

(declare-fun d!1247179 () Bool)

(assert (=> d!1247179 (= (inv!61610 (tag!8788 (rule!11050 (h!52294 addTokens!17)))) (= (mod (str.len (value!246369 (tag!8788 (rule!11050 (h!52294 addTokens!17))))) 2) 0))))

(assert (=> b!4239265 d!1247179))

(declare-fun d!1247181 () Bool)

(declare-fun res!1743304 () Bool)

(declare-fun e!2632581 () Bool)

(assert (=> d!1247181 (=> (not res!1743304) (not e!2632581))))

(assert (=> d!1247181 (= res!1743304 (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))))))

(assert (=> d!1247181 (= (inv!61613 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) e!2632581)))

(declare-fun b!4239334 () Bool)

(assert (=> b!4239334 (= e!2632581 (equivClasses!3345 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))))))

(assert (= (and d!1247181 res!1743304) b!4239334))

(declare-fun m!4824745 () Bool)

(assert (=> d!1247181 m!4824745))

(declare-fun m!4824747 () Bool)

(assert (=> b!4239334 m!4824747))

(assert (=> b!4239265 d!1247181))

(declare-fun d!1247183 () Bool)

(declare-fun res!1743313 () Bool)

(declare-fun e!2632590 () Bool)

(assert (=> d!1247183 (=> (not res!1743313) (not e!2632590))))

(assert (=> d!1247183 (= res!1743313 (not (isEmpty!27708 (originalCharacters!8268 (h!52294 addTokens!17)))))))

(assert (=> d!1247183 (= (inv!61614 (h!52294 addTokens!17)) e!2632590)))

(declare-fun b!4239347 () Bool)

(declare-fun res!1743314 () Bool)

(assert (=> b!4239347 (=> (not res!1743314) (not e!2632590))))

(assert (=> b!4239347 (= res!1743314 (= (originalCharacters!8268 (h!52294 addTokens!17)) (list!16901 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))))))

(declare-fun b!4239348 () Bool)

(assert (=> b!4239348 (= e!2632590 (= (size!34337 (h!52294 addTokens!17)) (size!34338 (originalCharacters!8268 (h!52294 addTokens!17)))))))

(assert (= (and d!1247183 res!1743313) b!4239347))

(assert (= (and b!4239347 res!1743314) b!4239348))

(declare-fun b_lambda!124801 () Bool)

(assert (=> (not b_lambda!124801) (not b!4239347)))

(declare-fun tb!254621 () Bool)

(declare-fun t!350432 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350432) tb!254621))

(declare-fun b!4239349 () Bool)

(declare-fun e!2632591 () Bool)

(declare-fun tp!1299164 () Bool)

(assert (=> b!4239349 (= e!2632591 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))) tp!1299164))))

(declare-fun result!310550 () Bool)

(assert (=> tb!254621 (= result!310550 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))) e!2632591))))

(assert (= tb!254621 b!4239349))

(declare-fun m!4824759 () Bool)

(assert (=> b!4239349 m!4824759))

(declare-fun m!4824761 () Bool)

(assert (=> tb!254621 m!4824761))

(assert (=> b!4239347 t!350432))

(declare-fun b_and!335207 () Bool)

(assert (= b_and!335201 (and (=> t!350432 result!310550) b_and!335207)))

(declare-fun t!350434 () Bool)

(declare-fun tb!254623 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350434) tb!254623))

(declare-fun result!310552 () Bool)

(assert (= result!310552 result!310550))

(assert (=> b!4239347 t!350434))

(declare-fun b_and!335209 () Bool)

(assert (= b_and!335203 (and (=> t!350434 result!310552) b_and!335209)))

(declare-fun t!350436 () Bool)

(declare-fun tb!254625 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350436) tb!254625))

(declare-fun result!310554 () Bool)

(assert (= result!310554 result!310550))

(assert (=> b!4239347 t!350436))

(declare-fun b_and!335211 () Bool)

(assert (= b_and!335205 (and (=> t!350436 result!310554) b_and!335211)))

(declare-fun m!4824763 () Bool)

(assert (=> d!1247183 m!4824763))

(declare-fun m!4824765 () Bool)

(assert (=> b!4239347 m!4824765))

(assert (=> b!4239347 m!4824765))

(declare-fun m!4824767 () Bool)

(assert (=> b!4239347 m!4824767))

(declare-fun m!4824769 () Bool)

(assert (=> b!4239348 m!4824769))

(assert (=> b!4239253 d!1247183))

(declare-fun d!1247189 () Bool)

(declare-fun res!1743315 () Bool)

(declare-fun e!2632592 () Bool)

(assert (=> d!1247189 (=> (not res!1743315) (not e!2632592))))

(assert (=> d!1247189 (= res!1743315 (not (isEmpty!27708 (originalCharacters!8268 (h!52294 tokens!581)))))))

(assert (=> d!1247189 (= (inv!61614 (h!52294 tokens!581)) e!2632592)))

(declare-fun b!4239350 () Bool)

(declare-fun res!1743316 () Bool)

(assert (=> b!4239350 (=> (not res!1743316) (not e!2632592))))

(assert (=> b!4239350 (= res!1743316 (= (originalCharacters!8268 (h!52294 tokens!581)) (list!16901 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))))))

(declare-fun b!4239351 () Bool)

(assert (=> b!4239351 (= e!2632592 (= (size!34337 (h!52294 tokens!581)) (size!34338 (originalCharacters!8268 (h!52294 tokens!581)))))))

(assert (= (and d!1247189 res!1743315) b!4239350))

(assert (= (and b!4239350 res!1743316) b!4239351))

(declare-fun b_lambda!124803 () Bool)

(assert (=> (not b_lambda!124803) (not b!4239350)))

(declare-fun tb!254627 () Bool)

(declare-fun t!350438 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350438) tb!254627))

(declare-fun b!4239356 () Bool)

(declare-fun e!2632595 () Bool)

(declare-fun tp!1299165 () Bool)

(assert (=> b!4239356 (= e!2632595 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))) tp!1299165))))

(declare-fun result!310556 () Bool)

(assert (=> tb!254627 (= result!310556 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))) e!2632595))))

(assert (= tb!254627 b!4239356))

(declare-fun m!4824771 () Bool)

(assert (=> b!4239356 m!4824771))

(declare-fun m!4824773 () Bool)

(assert (=> tb!254627 m!4824773))

(assert (=> b!4239350 t!350438))

(declare-fun b_and!335213 () Bool)

(assert (= b_and!335207 (and (=> t!350438 result!310556) b_and!335213)))

(declare-fun t!350440 () Bool)

(declare-fun tb!254629 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350440) tb!254629))

(declare-fun result!310558 () Bool)

(assert (= result!310558 result!310556))

(assert (=> b!4239350 t!350440))

(declare-fun b_and!335215 () Bool)

(assert (= b_and!335209 (and (=> t!350440 result!310558) b_and!335215)))

(declare-fun t!350442 () Bool)

(declare-fun tb!254631 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350442) tb!254631))

(declare-fun result!310560 () Bool)

(assert (= result!310560 result!310556))

(assert (=> b!4239350 t!350442))

(declare-fun b_and!335217 () Bool)

(assert (= b_and!335211 (and (=> t!350442 result!310560) b_and!335217)))

(declare-fun m!4824775 () Bool)

(assert (=> d!1247189 m!4824775))

(declare-fun m!4824777 () Bool)

(assert (=> b!4239350 m!4824777))

(assert (=> b!4239350 m!4824777))

(declare-fun m!4824779 () Bool)

(assert (=> b!4239350 m!4824779))

(declare-fun m!4824781 () Bool)

(assert (=> b!4239351 m!4824781))

(assert (=> b!4239264 d!1247189))

(declare-fun bm!293820 () Bool)

(declare-fun call!293825 () Option!10060)

(declare-fun maxPrefixOneRule!3448 (LexerInterface!7519 Rule!15648 List!46997) Option!10060)

(assert (=> bm!293820 (= call!293825 (maxPrefixOneRule!3448 thiss!21540 (h!52295 rules!2932) shorterInput!51))))

(declare-fun b!4239425 () Bool)

(declare-fun res!1743371 () Bool)

(declare-fun e!2632624 () Bool)

(assert (=> b!4239425 (=> (not res!1743371) (not e!2632624))))

(declare-fun lt!1506370 () Option!10060)

(declare-fun get!15242 (Option!10060) tuple2!44450)

(assert (=> b!4239425 (= res!1743371 (< (size!34338 (_2!25359 (get!15242 lt!1506370))) (size!34338 shorterInput!51)))))

(declare-fun b!4239426 () Bool)

(declare-fun e!2632623 () Option!10060)

(assert (=> b!4239426 (= e!2632623 call!293825)))

(declare-fun b!4239427 () Bool)

(declare-fun e!2632622 () Bool)

(assert (=> b!4239427 (= e!2632622 e!2632624)))

(declare-fun res!1743370 () Bool)

(assert (=> b!4239427 (=> (not res!1743370) (not e!2632624))))

(declare-fun isDefined!7438 (Option!10060) Bool)

(assert (=> b!4239427 (= res!1743370 (isDefined!7438 lt!1506370))))

(declare-fun b!4239428 () Bool)

(declare-fun res!1743367 () Bool)

(assert (=> b!4239428 (=> (not res!1743367) (not e!2632624))))

(assert (=> b!4239428 (= res!1743367 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))) (_2!25359 (get!15242 lt!1506370))) shorterInput!51))))

(declare-fun b!4239429 () Bool)

(declare-fun lt!1506369 () Option!10060)

(declare-fun lt!1506372 () Option!10060)

(assert (=> b!4239429 (= e!2632623 (ite (and ((_ is None!10059) lt!1506369) ((_ is None!10059) lt!1506372)) None!10059 (ite ((_ is None!10059) lt!1506372) lt!1506369 (ite ((_ is None!10059) lt!1506369) lt!1506372 (ite (>= (size!34337 (_1!25359 (v!41009 lt!1506369))) (size!34337 (_1!25359 (v!41009 lt!1506372)))) lt!1506369 lt!1506372)))))))

(assert (=> b!4239429 (= lt!1506369 call!293825)))

(assert (=> b!4239429 (= lt!1506372 (maxPrefix!4477 thiss!21540 (t!350412 rules!2932) shorterInput!51))))

(declare-fun d!1247191 () Bool)

(assert (=> d!1247191 e!2632622))

(declare-fun res!1743372 () Bool)

(assert (=> d!1247191 (=> res!1743372 e!2632622)))

(declare-fun isEmpty!27711 (Option!10060) Bool)

(assert (=> d!1247191 (= res!1743372 (isEmpty!27711 lt!1506370))))

(assert (=> d!1247191 (= lt!1506370 e!2632623)))

(declare-fun c!720354 () Bool)

(assert (=> d!1247191 (= c!720354 (and ((_ is Cons!46875) rules!2932) ((_ is Nil!46875) (t!350412 rules!2932))))))

(declare-datatypes ((Unit!65963 0))(
  ( (Unit!65964) )
))
(declare-fun lt!1506371 () Unit!65963)

(declare-fun lt!1506368 () Unit!65963)

(assert (=> d!1247191 (= lt!1506371 lt!1506368)))

(declare-fun isPrefix!4723 (List!46997 List!46997) Bool)

(assert (=> d!1247191 (isPrefix!4723 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3120 (List!46997 List!46997) Unit!65963)

(assert (=> d!1247191 (= lt!1506368 (lemmaIsPrefixRefl!3120 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2972 (LexerInterface!7519 List!46999) Bool)

(assert (=> d!1247191 (rulesValidInductive!2972 thiss!21540 rules!2932)))

(assert (=> d!1247191 (= (maxPrefix!4477 thiss!21540 rules!2932 shorterInput!51) lt!1506370)))

(declare-fun b!4239430 () Bool)

(declare-fun res!1743373 () Bool)

(assert (=> b!4239430 (=> (not res!1743373) (not e!2632624))))

(declare-fun apply!10750 (TokenValueInjection!15736 BalanceConc!27864) TokenValue!8154)

(declare-fun seqFromList!5810 (List!46997) BalanceConc!27864)

(assert (=> b!4239430 (= res!1743373 (= (value!246370 (_1!25359 (get!15242 lt!1506370))) (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370)))))))))

(declare-fun b!4239431 () Bool)

(declare-fun res!1743369 () Bool)

(assert (=> b!4239431 (=> (not res!1743369) (not e!2632624))))

(declare-fun matchR!6445 (Regex!12829 List!46997) Bool)

(assert (=> b!4239431 (= res!1743369 (matchR!6445 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))))))

(declare-fun b!4239432 () Bool)

(declare-fun contains!9725 (List!46999 Rule!15648) Bool)

(assert (=> b!4239432 (= e!2632624 (contains!9725 rules!2932 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))))

(declare-fun b!4239433 () Bool)

(declare-fun res!1743368 () Bool)

(assert (=> b!4239433 (=> (not res!1743368) (not e!2632624))))

(assert (=> b!4239433 (= res!1743368 (= (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))) (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370)))))))

(assert (= (and d!1247191 c!720354) b!4239426))

(assert (= (and d!1247191 (not c!720354)) b!4239429))

(assert (= (or b!4239426 b!4239429) bm!293820))

(assert (= (and d!1247191 (not res!1743372)) b!4239427))

(assert (= (and b!4239427 res!1743370) b!4239433))

(assert (= (and b!4239433 res!1743368) b!4239425))

(assert (= (and b!4239425 res!1743371) b!4239428))

(assert (= (and b!4239428 res!1743367) b!4239430))

(assert (= (and b!4239430 res!1743373) b!4239431))

(assert (= (and b!4239431 res!1743369) b!4239432))

(declare-fun m!4824873 () Bool)

(assert (=> bm!293820 m!4824873))

(declare-fun m!4824875 () Bool)

(assert (=> b!4239428 m!4824875))

(declare-fun m!4824877 () Bool)

(assert (=> b!4239428 m!4824877))

(assert (=> b!4239428 m!4824877))

(declare-fun m!4824879 () Bool)

(assert (=> b!4239428 m!4824879))

(assert (=> b!4239428 m!4824879))

(declare-fun m!4824881 () Bool)

(assert (=> b!4239428 m!4824881))

(declare-fun m!4824883 () Bool)

(assert (=> b!4239429 m!4824883))

(assert (=> b!4239432 m!4824875))

(declare-fun m!4824885 () Bool)

(assert (=> b!4239432 m!4824885))

(assert (=> b!4239425 m!4824875))

(declare-fun m!4824887 () Bool)

(assert (=> b!4239425 m!4824887))

(assert (=> b!4239425 m!4824621))

(declare-fun m!4824889 () Bool)

(assert (=> b!4239427 m!4824889))

(assert (=> b!4239433 m!4824875))

(assert (=> b!4239433 m!4824877))

(assert (=> b!4239433 m!4824877))

(assert (=> b!4239433 m!4824879))

(assert (=> b!4239430 m!4824875))

(declare-fun m!4824891 () Bool)

(assert (=> b!4239430 m!4824891))

(assert (=> b!4239430 m!4824891))

(declare-fun m!4824893 () Bool)

(assert (=> b!4239430 m!4824893))

(assert (=> b!4239431 m!4824875))

(assert (=> b!4239431 m!4824877))

(assert (=> b!4239431 m!4824877))

(assert (=> b!4239431 m!4824879))

(assert (=> b!4239431 m!4824879))

(declare-fun m!4824895 () Bool)

(assert (=> b!4239431 m!4824895))

(declare-fun m!4824897 () Bool)

(assert (=> d!1247191 m!4824897))

(declare-fun m!4824899 () Bool)

(assert (=> d!1247191 m!4824899))

(declare-fun m!4824901 () Bool)

(assert (=> d!1247191 m!4824901))

(declare-fun m!4824903 () Bool)

(assert (=> d!1247191 m!4824903))

(assert (=> b!4239246 d!1247191))

(declare-fun call!293826 () Option!10060)

(declare-fun bm!293821 () Bool)

(assert (=> bm!293821 (= call!293826 (maxPrefixOneRule!3448 thiss!21540 (h!52295 rules!2932) longerInput!51))))

(declare-fun b!4239434 () Bool)

(declare-fun res!1743378 () Bool)

(declare-fun e!2632627 () Bool)

(assert (=> b!4239434 (=> (not res!1743378) (not e!2632627))))

(declare-fun lt!1506375 () Option!10060)

(assert (=> b!4239434 (= res!1743378 (< (size!34338 (_2!25359 (get!15242 lt!1506375))) (size!34338 longerInput!51)))))

(declare-fun b!4239435 () Bool)

(declare-fun e!2632626 () Option!10060)

(assert (=> b!4239435 (= e!2632626 call!293826)))

(declare-fun b!4239436 () Bool)

(declare-fun e!2632625 () Bool)

(assert (=> b!4239436 (= e!2632625 e!2632627)))

(declare-fun res!1743377 () Bool)

(assert (=> b!4239436 (=> (not res!1743377) (not e!2632627))))

(assert (=> b!4239436 (= res!1743377 (isDefined!7438 lt!1506375))))

(declare-fun b!4239437 () Bool)

(declare-fun res!1743374 () Bool)

(assert (=> b!4239437 (=> (not res!1743374) (not e!2632627))))

(assert (=> b!4239437 (= res!1743374 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))) (_2!25359 (get!15242 lt!1506375))) longerInput!51))))

(declare-fun b!4239438 () Bool)

(declare-fun lt!1506374 () Option!10060)

(declare-fun lt!1506377 () Option!10060)

(assert (=> b!4239438 (= e!2632626 (ite (and ((_ is None!10059) lt!1506374) ((_ is None!10059) lt!1506377)) None!10059 (ite ((_ is None!10059) lt!1506377) lt!1506374 (ite ((_ is None!10059) lt!1506374) lt!1506377 (ite (>= (size!34337 (_1!25359 (v!41009 lt!1506374))) (size!34337 (_1!25359 (v!41009 lt!1506377)))) lt!1506374 lt!1506377)))))))

(assert (=> b!4239438 (= lt!1506374 call!293826)))

(assert (=> b!4239438 (= lt!1506377 (maxPrefix!4477 thiss!21540 (t!350412 rules!2932) longerInput!51))))

(declare-fun d!1247207 () Bool)

(assert (=> d!1247207 e!2632625))

(declare-fun res!1743379 () Bool)

(assert (=> d!1247207 (=> res!1743379 e!2632625)))

(assert (=> d!1247207 (= res!1743379 (isEmpty!27711 lt!1506375))))

(assert (=> d!1247207 (= lt!1506375 e!2632626)))

(declare-fun c!720355 () Bool)

(assert (=> d!1247207 (= c!720355 (and ((_ is Cons!46875) rules!2932) ((_ is Nil!46875) (t!350412 rules!2932))))))

(declare-fun lt!1506376 () Unit!65963)

(declare-fun lt!1506373 () Unit!65963)

(assert (=> d!1247207 (= lt!1506376 lt!1506373)))

(assert (=> d!1247207 (isPrefix!4723 longerInput!51 longerInput!51)))

(assert (=> d!1247207 (= lt!1506373 (lemmaIsPrefixRefl!3120 longerInput!51 longerInput!51))))

(assert (=> d!1247207 (rulesValidInductive!2972 thiss!21540 rules!2932)))

(assert (=> d!1247207 (= (maxPrefix!4477 thiss!21540 rules!2932 longerInput!51) lt!1506375)))

(declare-fun b!4239439 () Bool)

(declare-fun res!1743380 () Bool)

(assert (=> b!4239439 (=> (not res!1743380) (not e!2632627))))

(assert (=> b!4239439 (= res!1743380 (= (value!246370 (_1!25359 (get!15242 lt!1506375))) (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375)))))))))

(declare-fun b!4239440 () Bool)

(declare-fun res!1743376 () Bool)

(assert (=> b!4239440 (=> (not res!1743376) (not e!2632627))))

(assert (=> b!4239440 (= res!1743376 (matchR!6445 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))))))

(declare-fun b!4239441 () Bool)

(assert (=> b!4239441 (= e!2632627 (contains!9725 rules!2932 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))))

(declare-fun b!4239442 () Bool)

(declare-fun res!1743375 () Bool)

(assert (=> b!4239442 (=> (not res!1743375) (not e!2632627))))

(assert (=> b!4239442 (= res!1743375 (= (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))) (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375)))))))

(assert (= (and d!1247207 c!720355) b!4239435))

(assert (= (and d!1247207 (not c!720355)) b!4239438))

(assert (= (or b!4239435 b!4239438) bm!293821))

(assert (= (and d!1247207 (not res!1743379)) b!4239436))

(assert (= (and b!4239436 res!1743377) b!4239442))

(assert (= (and b!4239442 res!1743375) b!4239434))

(assert (= (and b!4239434 res!1743378) b!4239437))

(assert (= (and b!4239437 res!1743374) b!4239439))

(assert (= (and b!4239439 res!1743380) b!4239440))

(assert (= (and b!4239440 res!1743376) b!4239441))

(declare-fun m!4824905 () Bool)

(assert (=> bm!293821 m!4824905))

(declare-fun m!4824907 () Bool)

(assert (=> b!4239437 m!4824907))

(declare-fun m!4824909 () Bool)

(assert (=> b!4239437 m!4824909))

(assert (=> b!4239437 m!4824909))

(declare-fun m!4824911 () Bool)

(assert (=> b!4239437 m!4824911))

(assert (=> b!4239437 m!4824911))

(declare-fun m!4824913 () Bool)

(assert (=> b!4239437 m!4824913))

(declare-fun m!4824915 () Bool)

(assert (=> b!4239438 m!4824915))

(assert (=> b!4239441 m!4824907))

(declare-fun m!4824917 () Bool)

(assert (=> b!4239441 m!4824917))

(assert (=> b!4239434 m!4824907))

(declare-fun m!4824919 () Bool)

(assert (=> b!4239434 m!4824919))

(assert (=> b!4239434 m!4824619))

(declare-fun m!4824921 () Bool)

(assert (=> b!4239436 m!4824921))

(assert (=> b!4239442 m!4824907))

(assert (=> b!4239442 m!4824909))

(assert (=> b!4239442 m!4824909))

(assert (=> b!4239442 m!4824911))

(assert (=> b!4239439 m!4824907))

(declare-fun m!4824927 () Bool)

(assert (=> b!4239439 m!4824927))

(assert (=> b!4239439 m!4824927))

(declare-fun m!4824933 () Bool)

(assert (=> b!4239439 m!4824933))

(assert (=> b!4239440 m!4824907))

(assert (=> b!4239440 m!4824909))

(assert (=> b!4239440 m!4824909))

(assert (=> b!4239440 m!4824911))

(assert (=> b!4239440 m!4824911))

(declare-fun m!4824935 () Bool)

(assert (=> b!4239440 m!4824935))

(declare-fun m!4824937 () Bool)

(assert (=> d!1247207 m!4824937))

(declare-fun m!4824939 () Bool)

(assert (=> d!1247207 m!4824939))

(declare-fun m!4824941 () Bool)

(assert (=> d!1247207 m!4824941))

(assert (=> d!1247207 m!4824903))

(assert (=> b!4239246 d!1247207))

(declare-fun d!1247213 () Bool)

(declare-fun lt!1506389 () Int)

(assert (=> d!1247213 (>= lt!1506389 0)))

(declare-fun e!2632645 () Int)

(assert (=> d!1247213 (= lt!1506389 e!2632645)))

(declare-fun c!720366 () Bool)

(assert (=> d!1247213 (= c!720366 ((_ is Nil!46874) addTokens!17))))

(assert (=> d!1247213 (= (size!34339 addTokens!17) lt!1506389)))

(declare-fun b!4239470 () Bool)

(assert (=> b!4239470 (= e!2632645 0)))

(declare-fun b!4239471 () Bool)

(assert (=> b!4239471 (= e!2632645 (+ 1 (size!34339 (t!350411 addTokens!17))))))

(assert (= (and d!1247213 c!720366) b!4239470))

(assert (= (and d!1247213 (not c!720366)) b!4239471))

(declare-fun m!4824953 () Bool)

(assert (=> b!4239471 m!4824953))

(assert (=> b!4239257 d!1247213))

(declare-fun d!1247221 () Bool)

(assert (=> d!1247221 (= (isEmpty!27707 addTokens!17) ((_ is Nil!46874) addTokens!17))))

(assert (=> b!4239245 d!1247221))

(declare-fun d!1247233 () Bool)

(assert (=> d!1247233 (= (isEmpty!27709 rules!2932) ((_ is Nil!46875) rules!2932))))

(assert (=> b!4239256 d!1247233))

(declare-fun b!4239515 () Bool)

(declare-fun e!2632687 () Bool)

(declare-fun inv!16 (TokenValue!8154) Bool)

(assert (=> b!4239515 (= e!2632687 (inv!16 (value!246370 (h!52294 tokens!581))))))

(declare-fun b!4239516 () Bool)

(declare-fun e!2632685 () Bool)

(assert (=> b!4239516 (= e!2632687 e!2632685)))

(declare-fun c!720373 () Bool)

(assert (=> b!4239516 (= c!720373 ((_ is IntegerValue!24463) (value!246370 (h!52294 tokens!581))))))

(declare-fun b!4239517 () Bool)

(declare-fun inv!17 (TokenValue!8154) Bool)

(assert (=> b!4239517 (= e!2632685 (inv!17 (value!246370 (h!52294 tokens!581))))))

(declare-fun d!1247237 () Bool)

(declare-fun c!720372 () Bool)

(assert (=> d!1247237 (= c!720372 ((_ is IntegerValue!24462) (value!246370 (h!52294 tokens!581))))))

(assert (=> d!1247237 (= (inv!21 (value!246370 (h!52294 tokens!581))) e!2632687)))

(declare-fun b!4239518 () Bool)

(declare-fun res!1743394 () Bool)

(declare-fun e!2632686 () Bool)

(assert (=> b!4239518 (=> res!1743394 e!2632686)))

(assert (=> b!4239518 (= res!1743394 (not ((_ is IntegerValue!24464) (value!246370 (h!52294 tokens!581)))))))

(assert (=> b!4239518 (= e!2632685 e!2632686)))

(declare-fun b!4239519 () Bool)

(declare-fun inv!15 (TokenValue!8154) Bool)

(assert (=> b!4239519 (= e!2632686 (inv!15 (value!246370 (h!52294 tokens!581))))))

(assert (= (and d!1247237 c!720372) b!4239515))

(assert (= (and d!1247237 (not c!720372)) b!4239516))

(assert (= (and b!4239516 c!720373) b!4239517))

(assert (= (and b!4239516 (not c!720373)) b!4239518))

(assert (= (and b!4239518 (not res!1743394)) b!4239519))

(declare-fun m!4824995 () Bool)

(assert (=> b!4239515 m!4824995))

(declare-fun m!4824997 () Bool)

(assert (=> b!4239517 m!4824997))

(declare-fun m!4824999 () Bool)

(assert (=> b!4239519 m!4824999))

(assert (=> b!4239259 d!1247237))

(declare-fun d!1247241 () Bool)

(assert (=> d!1247241 (= (isEmpty!27708 longerInput!51) ((_ is Nil!46873) longerInput!51))))

(assert (=> b!4239249 d!1247241))

(declare-fun b!4239564 () Bool)

(declare-fun e!2632716 () tuple2!44452)

(assert (=> b!4239564 (= e!2632716 (tuple2!44453 Nil!46874 longerInput!51))))

(declare-fun b!4239566 () Bool)

(declare-fun e!2632714 () Bool)

(declare-fun lt!1506399 () tuple2!44452)

(assert (=> b!4239566 (= e!2632714 (not (isEmpty!27707 (_1!25360 lt!1506399))))))

(declare-fun b!4239567 () Bool)

(declare-fun e!2632715 () Bool)

(assert (=> b!4239567 (= e!2632715 (= (_2!25360 lt!1506399) longerInput!51))))

(declare-fun b!4239568 () Bool)

(declare-fun lt!1506398 () Option!10060)

(declare-fun lt!1506400 () tuple2!44452)

(assert (=> b!4239568 (= e!2632716 (tuple2!44453 (Cons!46874 (_1!25359 (v!41009 lt!1506398)) (_1!25360 lt!1506400)) (_2!25360 lt!1506400)))))

(assert (=> b!4239568 (= lt!1506400 (lexList!2025 thiss!21540 rules!2932 (_2!25359 (v!41009 lt!1506398))))))

(declare-fun b!4239565 () Bool)

(assert (=> b!4239565 (= e!2632715 e!2632714)))

(declare-fun res!1743397 () Bool)

(assert (=> b!4239565 (= res!1743397 (< (size!34338 (_2!25360 lt!1506399)) (size!34338 longerInput!51)))))

(assert (=> b!4239565 (=> (not res!1743397) (not e!2632714))))

(declare-fun d!1247243 () Bool)

(assert (=> d!1247243 e!2632715))

(declare-fun c!720379 () Bool)

(assert (=> d!1247243 (= c!720379 (> (size!34339 (_1!25360 lt!1506399)) 0))))

(assert (=> d!1247243 (= lt!1506399 e!2632716)))

(declare-fun c!720378 () Bool)

(assert (=> d!1247243 (= c!720378 ((_ is Some!10059) lt!1506398))))

(assert (=> d!1247243 (= lt!1506398 (maxPrefix!4477 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1247243 (= (lexList!2025 thiss!21540 rules!2932 longerInput!51) lt!1506399)))

(assert (= (and d!1247243 c!720378) b!4239568))

(assert (= (and d!1247243 (not c!720378)) b!4239564))

(assert (= (and d!1247243 c!720379) b!4239565))

(assert (= (and d!1247243 (not c!720379)) b!4239567))

(assert (= (and b!4239565 res!1743397) b!4239566))

(declare-fun m!4825013 () Bool)

(assert (=> b!4239566 m!4825013))

(declare-fun m!4825015 () Bool)

(assert (=> b!4239568 m!4825015))

(declare-fun m!4825017 () Bool)

(assert (=> b!4239565 m!4825017))

(assert (=> b!4239565 m!4824619))

(declare-fun m!4825019 () Bool)

(assert (=> d!1247243 m!4825019))

(assert (=> d!1247243 m!4824655))

(assert (=> b!4239260 d!1247243))

(declare-fun d!1247245 () Bool)

(declare-fun res!1743400 () Bool)

(declare-fun e!2632719 () Bool)

(assert (=> d!1247245 (=> (not res!1743400) (not e!2632719))))

(declare-fun rulesValid!3070 (LexerInterface!7519 List!46999) Bool)

(assert (=> d!1247245 (= res!1743400 (rulesValid!3070 thiss!21540 rules!2932))))

(assert (=> d!1247245 (= (rulesInvariant!6630 thiss!21540 rules!2932) e!2632719)))

(declare-fun b!4239571 () Bool)

(declare-datatypes ((List!47001 0))(
  ( (Nil!46877) (Cons!46877 (h!52297 String!54700) (t!350510 List!47001)) )
))
(declare-fun noDuplicateTag!3231 (LexerInterface!7519 List!46999 List!47001) Bool)

(assert (=> b!4239571 (= e!2632719 (noDuplicateTag!3231 thiss!21540 rules!2932 Nil!46877))))

(assert (= (and d!1247245 res!1743400) b!4239571))

(declare-fun m!4825021 () Bool)

(assert (=> d!1247245 m!4825021))

(declare-fun m!4825023 () Bool)

(assert (=> b!4239571 m!4825023))

(assert (=> b!4239258 d!1247245))

(declare-fun b!4239572 () Bool)

(declare-fun e!2632722 () Bool)

(assert (=> b!4239572 (= e!2632722 (inv!16 (value!246370 (h!52294 addTokens!17))))))

(declare-fun b!4239573 () Bool)

(declare-fun e!2632720 () Bool)

(assert (=> b!4239573 (= e!2632722 e!2632720)))

(declare-fun c!720381 () Bool)

(assert (=> b!4239573 (= c!720381 ((_ is IntegerValue!24463) (value!246370 (h!52294 addTokens!17))))))

(declare-fun b!4239574 () Bool)

(assert (=> b!4239574 (= e!2632720 (inv!17 (value!246370 (h!52294 addTokens!17))))))

(declare-fun d!1247247 () Bool)

(declare-fun c!720380 () Bool)

(assert (=> d!1247247 (= c!720380 ((_ is IntegerValue!24462) (value!246370 (h!52294 addTokens!17))))))

(assert (=> d!1247247 (= (inv!21 (value!246370 (h!52294 addTokens!17))) e!2632722)))

(declare-fun b!4239575 () Bool)

(declare-fun res!1743401 () Bool)

(declare-fun e!2632721 () Bool)

(assert (=> b!4239575 (=> res!1743401 e!2632721)))

(assert (=> b!4239575 (= res!1743401 (not ((_ is IntegerValue!24464) (value!246370 (h!52294 addTokens!17)))))))

(assert (=> b!4239575 (= e!2632720 e!2632721)))

(declare-fun b!4239576 () Bool)

(assert (=> b!4239576 (= e!2632721 (inv!15 (value!246370 (h!52294 addTokens!17))))))

(assert (= (and d!1247247 c!720380) b!4239572))

(assert (= (and d!1247247 (not c!720380)) b!4239573))

(assert (= (and b!4239573 c!720381) b!4239574))

(assert (= (and b!4239573 (not c!720381)) b!4239575))

(assert (= (and b!4239575 (not res!1743401)) b!4239576))

(declare-fun m!4825025 () Bool)

(assert (=> b!4239572 m!4825025))

(declare-fun m!4825027 () Bool)

(assert (=> b!4239574 m!4825027))

(declare-fun m!4825029 () Bool)

(assert (=> b!4239576 m!4825029))

(assert (=> b!4239248 d!1247247))

(declare-fun b!4239588 () Bool)

(declare-fun e!2632725 () Bool)

(declare-fun tp!1299243 () Bool)

(declare-fun tp!1299246 () Bool)

(assert (=> b!4239588 (= e!2632725 (and tp!1299243 tp!1299246))))

(assert (=> b!4239251 (= tp!1299145 e!2632725)))

(declare-fun b!4239587 () Bool)

(assert (=> b!4239587 (= e!2632725 tp_is_empty!22649)))

(declare-fun b!4239589 () Bool)

(declare-fun tp!1299247 () Bool)

(assert (=> b!4239589 (= e!2632725 tp!1299247)))

(declare-fun b!4239590 () Bool)

(declare-fun tp!1299245 () Bool)

(declare-fun tp!1299244 () Bool)

(assert (=> b!4239590 (= e!2632725 (and tp!1299245 tp!1299244))))

(assert (= (and b!4239251 ((_ is ElementMatch!12829) (regex!7924 (rule!11050 (h!52294 tokens!581))))) b!4239587))

(assert (= (and b!4239251 ((_ is Concat!20984) (regex!7924 (rule!11050 (h!52294 tokens!581))))) b!4239588))

(assert (= (and b!4239251 ((_ is Star!12829) (regex!7924 (rule!11050 (h!52294 tokens!581))))) b!4239589))

(assert (= (and b!4239251 ((_ is Union!12829) (regex!7924 (rule!11050 (h!52294 tokens!581))))) b!4239590))

(declare-fun b!4239592 () Bool)

(declare-fun e!2632726 () Bool)

(declare-fun tp!1299248 () Bool)

(declare-fun tp!1299251 () Bool)

(assert (=> b!4239592 (= e!2632726 (and tp!1299248 tp!1299251))))

(assert (=> b!4239262 (= tp!1299140 e!2632726)))

(declare-fun b!4239591 () Bool)

(assert (=> b!4239591 (= e!2632726 tp_is_empty!22649)))

(declare-fun b!4239593 () Bool)

(declare-fun tp!1299252 () Bool)

(assert (=> b!4239593 (= e!2632726 tp!1299252)))

(declare-fun b!4239594 () Bool)

(declare-fun tp!1299250 () Bool)

(declare-fun tp!1299249 () Bool)

(assert (=> b!4239594 (= e!2632726 (and tp!1299250 tp!1299249))))

(assert (= (and b!4239262 ((_ is ElementMatch!12829) (regex!7924 (h!52295 rules!2932)))) b!4239591))

(assert (= (and b!4239262 ((_ is Concat!20984) (regex!7924 (h!52295 rules!2932)))) b!4239592))

(assert (= (and b!4239262 ((_ is Star!12829) (regex!7924 (h!52295 rules!2932)))) b!4239593))

(assert (= (and b!4239262 ((_ is Union!12829) (regex!7924 (h!52295 rules!2932)))) b!4239594))

(declare-fun b!4239605 () Bool)

(declare-fun b_free!125479 () Bool)

(declare-fun b_next!126183 () Bool)

(assert (=> b!4239605 (= b_free!125479 (not b_next!126183))))

(declare-fun tp!1299261 () Bool)

(declare-fun b_and!335249 () Bool)

(assert (=> b!4239605 (= tp!1299261 b_and!335249)))

(declare-fun b_free!125481 () Bool)

(declare-fun b_next!126185 () Bool)

(assert (=> b!4239605 (= b_free!125481 (not b_next!126185))))

(declare-fun t!350487 () Bool)

(declare-fun tb!254675 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350487) tb!254675))

(declare-fun result!310616 () Bool)

(assert (= result!310616 result!310536))

(assert (=> d!1247167 t!350487))

(declare-fun tb!254677 () Bool)

(declare-fun t!350489 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350489) tb!254677))

(declare-fun result!310618 () Bool)

(assert (= result!310618 result!310544))

(assert (=> d!1247177 t!350489))

(declare-fun t!350491 () Bool)

(declare-fun tb!254679 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350491) tb!254679))

(declare-fun result!310620 () Bool)

(assert (= result!310620 result!310550))

(assert (=> b!4239347 t!350491))

(declare-fun t!350493 () Bool)

(declare-fun tb!254681 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350493) tb!254681))

(declare-fun result!310622 () Bool)

(assert (= result!310622 result!310556))

(assert (=> b!4239350 t!350493))

(declare-fun tp!1299263 () Bool)

(declare-fun b_and!335251 () Bool)

(assert (=> b!4239605 (= tp!1299263 (and (=> t!350487 result!310616) (=> t!350489 result!310618) (=> t!350491 result!310620) (=> t!350493 result!310622) b_and!335251))))

(declare-fun e!2632737 () Bool)

(assert (=> b!4239605 (= e!2632737 (and tp!1299261 tp!1299263))))

(declare-fun e!2632735 () Bool)

(declare-fun b!4239604 () Bool)

(declare-fun tp!1299264 () Bool)

(assert (=> b!4239604 (= e!2632735 (and tp!1299264 (inv!61610 (tag!8788 (h!52295 (t!350412 rules!2932)))) (inv!61613 (transformation!7924 (h!52295 (t!350412 rules!2932)))) e!2632737))))

(declare-fun b!4239603 () Bool)

(declare-fun e!2632738 () Bool)

(declare-fun tp!1299262 () Bool)

(assert (=> b!4239603 (= e!2632738 (and e!2632735 tp!1299262))))

(assert (=> b!4239261 (= tp!1299152 e!2632738)))

(assert (= b!4239604 b!4239605))

(assert (= b!4239603 b!4239604))

(assert (= (and b!4239261 ((_ is Cons!46875) (t!350412 rules!2932))) b!4239603))

(declare-fun m!4825031 () Bool)

(assert (=> b!4239604 m!4825031))

(declare-fun m!4825033 () Bool)

(assert (=> b!4239604 m!4825033))

(declare-fun b!4239607 () Bool)

(declare-fun e!2632739 () Bool)

(declare-fun tp!1299265 () Bool)

(declare-fun tp!1299268 () Bool)

(assert (=> b!4239607 (= e!2632739 (and tp!1299265 tp!1299268))))

(assert (=> b!4239265 (= tp!1299141 e!2632739)))

(declare-fun b!4239606 () Bool)

(assert (=> b!4239606 (= e!2632739 tp_is_empty!22649)))

(declare-fun b!4239608 () Bool)

(declare-fun tp!1299269 () Bool)

(assert (=> b!4239608 (= e!2632739 tp!1299269)))

(declare-fun b!4239609 () Bool)

(declare-fun tp!1299267 () Bool)

(declare-fun tp!1299266 () Bool)

(assert (=> b!4239609 (= e!2632739 (and tp!1299267 tp!1299266))))

(assert (= (and b!4239265 ((_ is ElementMatch!12829) (regex!7924 (rule!11050 (h!52294 addTokens!17))))) b!4239606))

(assert (= (and b!4239265 ((_ is Concat!20984) (regex!7924 (rule!11050 (h!52294 addTokens!17))))) b!4239607))

(assert (= (and b!4239265 ((_ is Star!12829) (regex!7924 (rule!11050 (h!52294 addTokens!17))))) b!4239608))

(assert (= (and b!4239265 ((_ is Union!12829) (regex!7924 (rule!11050 (h!52294 addTokens!17))))) b!4239609))

(declare-fun b!4239614 () Bool)

(declare-fun e!2632742 () Bool)

(declare-fun tp!1299272 () Bool)

(assert (=> b!4239614 (= e!2632742 (and tp_is_empty!22649 tp!1299272))))

(assert (=> b!4239263 (= tp!1299147 e!2632742)))

(assert (= (and b!4239263 ((_ is Cons!46873) (t!350410 suffix!1262))) b!4239614))

(declare-fun b!4239628 () Bool)

(declare-fun b_free!125483 () Bool)

(declare-fun b_next!126187 () Bool)

(assert (=> b!4239628 (= b_free!125483 (not b_next!126187))))

(declare-fun tp!1299286 () Bool)

(declare-fun b_and!335253 () Bool)

(assert (=> b!4239628 (= tp!1299286 b_and!335253)))

(declare-fun b_free!125485 () Bool)

(declare-fun b_next!126189 () Bool)

(assert (=> b!4239628 (= b_free!125485 (not b_next!126189))))

(declare-fun tb!254683 () Bool)

(declare-fun t!350495 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350495) tb!254683))

(declare-fun result!310628 () Bool)

(assert (= result!310628 result!310536))

(assert (=> d!1247167 t!350495))

(declare-fun t!350497 () Bool)

(declare-fun tb!254685 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350497) tb!254685))

(declare-fun result!310630 () Bool)

(assert (= result!310630 result!310544))

(assert (=> d!1247177 t!350497))

(declare-fun t!350499 () Bool)

(declare-fun tb!254687 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350499) tb!254687))

(declare-fun result!310632 () Bool)

(assert (= result!310632 result!310550))

(assert (=> b!4239347 t!350499))

(declare-fun t!350501 () Bool)

(declare-fun tb!254689 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350501) tb!254689))

(declare-fun result!310634 () Bool)

(assert (= result!310634 result!310556))

(assert (=> b!4239350 t!350501))

(declare-fun b_and!335255 () Bool)

(declare-fun tp!1299284 () Bool)

(assert (=> b!4239628 (= tp!1299284 (and (=> t!350495 result!310628) (=> t!350497 result!310630) (=> t!350499 result!310632) (=> t!350501 result!310634) b_and!335255))))

(declare-fun e!2632760 () Bool)

(declare-fun tp!1299285 () Bool)

(declare-fun b!4239625 () Bool)

(declare-fun e!2632755 () Bool)

(assert (=> b!4239625 (= e!2632760 (and (inv!61614 (h!52294 (t!350411 addTokens!17))) e!2632755 tp!1299285))))

(declare-fun e!2632756 () Bool)

(assert (=> b!4239628 (= e!2632756 (and tp!1299286 tp!1299284))))

(assert (=> b!4239253 (= tp!1299144 e!2632760)))

(declare-fun b!4239627 () Bool)

(declare-fun e!2632759 () Bool)

(declare-fun tp!1299287 () Bool)

(assert (=> b!4239627 (= e!2632759 (and tp!1299287 (inv!61610 (tag!8788 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (inv!61613 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) e!2632756))))

(declare-fun tp!1299283 () Bool)

(declare-fun b!4239626 () Bool)

(assert (=> b!4239626 (= e!2632755 (and (inv!21 (value!246370 (h!52294 (t!350411 addTokens!17)))) e!2632759 tp!1299283))))

(assert (= b!4239627 b!4239628))

(assert (= b!4239626 b!4239627))

(assert (= b!4239625 b!4239626))

(assert (= (and b!4239253 ((_ is Cons!46874) (t!350411 addTokens!17))) b!4239625))

(declare-fun m!4825035 () Bool)

(assert (=> b!4239625 m!4825035))

(declare-fun m!4825037 () Bool)

(assert (=> b!4239627 m!4825037))

(declare-fun m!4825039 () Bool)

(assert (=> b!4239627 m!4825039))

(declare-fun m!4825041 () Bool)

(assert (=> b!4239626 m!4825041))

(declare-fun b!4239632 () Bool)

(declare-fun b_free!125487 () Bool)

(declare-fun b_next!126191 () Bool)

(assert (=> b!4239632 (= b_free!125487 (not b_next!126191))))

(declare-fun tp!1299291 () Bool)

(declare-fun b_and!335257 () Bool)

(assert (=> b!4239632 (= tp!1299291 b_and!335257)))

(declare-fun b_free!125489 () Bool)

(declare-fun b_next!126193 () Bool)

(assert (=> b!4239632 (= b_free!125489 (not b_next!126193))))

(declare-fun tb!254691 () Bool)

(declare-fun t!350503 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350503) tb!254691))

(declare-fun result!310636 () Bool)

(assert (= result!310636 result!310536))

(assert (=> d!1247167 t!350503))

(declare-fun tb!254693 () Bool)

(declare-fun t!350505 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350505) tb!254693))

(declare-fun result!310638 () Bool)

(assert (= result!310638 result!310544))

(assert (=> d!1247177 t!350505))

(declare-fun t!350507 () Bool)

(declare-fun tb!254695 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350507) tb!254695))

(declare-fun result!310640 () Bool)

(assert (= result!310640 result!310550))

(assert (=> b!4239347 t!350507))

(declare-fun t!350509 () Bool)

(declare-fun tb!254697 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350509) tb!254697))

(declare-fun result!310642 () Bool)

(assert (= result!310642 result!310556))

(assert (=> b!4239350 t!350509))

(declare-fun b_and!335259 () Bool)

(declare-fun tp!1299289 () Bool)

(assert (=> b!4239632 (= tp!1299289 (and (=> t!350503 result!310636) (=> t!350505 result!310638) (=> t!350507 result!310640) (=> t!350509 result!310642) b_and!335259))))

(declare-fun tp!1299290 () Bool)

(declare-fun e!2632761 () Bool)

(declare-fun e!2632766 () Bool)

(declare-fun b!4239629 () Bool)

(assert (=> b!4239629 (= e!2632766 (and (inv!61614 (h!52294 (t!350411 tokens!581))) e!2632761 tp!1299290))))

(declare-fun e!2632762 () Bool)

(assert (=> b!4239632 (= e!2632762 (and tp!1299291 tp!1299289))))

(assert (=> b!4239264 (= tp!1299154 e!2632766)))

(declare-fun e!2632765 () Bool)

(declare-fun tp!1299292 () Bool)

(declare-fun b!4239631 () Bool)

(assert (=> b!4239631 (= e!2632765 (and tp!1299292 (inv!61610 (tag!8788 (rule!11050 (h!52294 (t!350411 tokens!581))))) (inv!61613 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) e!2632762))))

(declare-fun b!4239630 () Bool)

(declare-fun tp!1299288 () Bool)

(assert (=> b!4239630 (= e!2632761 (and (inv!21 (value!246370 (h!52294 (t!350411 tokens!581)))) e!2632765 tp!1299288))))

(assert (= b!4239631 b!4239632))

(assert (= b!4239630 b!4239631))

(assert (= b!4239629 b!4239630))

(assert (= (and b!4239264 ((_ is Cons!46874) (t!350411 tokens!581))) b!4239629))

(declare-fun m!4825043 () Bool)

(assert (=> b!4239629 m!4825043))

(declare-fun m!4825045 () Bool)

(assert (=> b!4239631 m!4825045))

(declare-fun m!4825047 () Bool)

(assert (=> b!4239631 m!4825047))

(declare-fun m!4825049 () Bool)

(assert (=> b!4239630 m!4825049))

(declare-fun b!4239633 () Bool)

(declare-fun e!2632767 () Bool)

(declare-fun tp!1299293 () Bool)

(assert (=> b!4239633 (= e!2632767 (and tp_is_empty!22649 tp!1299293))))

(assert (=> b!4239255 (= tp!1299150 e!2632767)))

(assert (= (and b!4239255 ((_ is Cons!46873) (t!350410 shorterInput!51))) b!4239633))

(declare-fun b!4239634 () Bool)

(declare-fun e!2632768 () Bool)

(declare-fun tp!1299294 () Bool)

(assert (=> b!4239634 (= e!2632768 (and tp_is_empty!22649 tp!1299294))))

(assert (=> b!4239266 (= tp!1299146 e!2632768)))

(assert (= (and b!4239266 ((_ is Cons!46873) (t!350410 longerInput!51))) b!4239634))

(declare-fun b!4239635 () Bool)

(declare-fun e!2632769 () Bool)

(declare-fun tp!1299295 () Bool)

(assert (=> b!4239635 (= e!2632769 (and tp_is_empty!22649 tp!1299295))))

(assert (=> b!4239259 (= tp!1299153 e!2632769)))

(assert (= (and b!4239259 ((_ is Cons!46873) (originalCharacters!8268 (h!52294 tokens!581)))) b!4239635))

(declare-fun b!4239636 () Bool)

(declare-fun e!2632770 () Bool)

(declare-fun tp!1299296 () Bool)

(assert (=> b!4239636 (= e!2632770 (and tp_is_empty!22649 tp!1299296))))

(assert (=> b!4239248 (= tp!1299142 e!2632770)))

(assert (= (and b!4239248 ((_ is Cons!46873) (originalCharacters!8268 (h!52294 addTokens!17)))) b!4239636))

(declare-fun b_lambda!124815 () Bool)

(assert (= b_lambda!124801 (or (and b!4239632 b_free!125489 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))))) (and b!4239252 b_free!125461) (and b!4239244 b_free!125457 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))))) (and b!4239605 b_free!125481 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))))) (and b!4239247 b_free!125465 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))))) (and b!4239628 b_free!125485 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))))) b_lambda!124815)))

(declare-fun b_lambda!124817 () Bool)

(assert (= b_lambda!124803 (or (and b!4239632 b_free!125489 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))))) (and b!4239252 b_free!125461 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))))) (and b!4239244 b_free!125457 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))))) (and b!4239247 b_free!125465) (and b!4239605 b_free!125481 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))))) (and b!4239628 b_free!125485 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))))) b_lambda!124817)))

(check-sat (not b!4239347) (not b_next!126161) (not b!4239566) (not tb!254621) (not d!1247151) (not d!1247175) (not b!4239278) (not b!4239576) (not d!1247189) (not b!4239431) (not bm!293821) (not b_lambda!124817) (not b!4239604) (not b!4239633) (not b!4239356) tp_is_empty!22649 b_and!335257 b_and!335259 (not b_next!126185) (not b_next!126193) (not b!4239517) (not b!4239626) (not b!4239627) (not tb!254627) (not b!4239568) (not b!4239425) (not b!4239269) (not b_next!126165) (not d!1247173) (not d!1247147) (not b!4239574) (not b!4239300) (not b_next!126159) (not b!4239630) (not b!4239433) (not b!4239590) b_and!335215 (not b!4239608) (not b!4239440) (not b!4239427) (not b_lambda!124815) (not tb!254609) (not b!4239438) (not b_next!126191) (not b!4239334) (not d!1247243) (not tb!254615) (not d!1247177) (not b!4239430) (not d!1247181) (not b!4239270) (not b_lambda!124799) (not b!4239442) (not d!1247207) (not d!1247159) (not b!4239625) b_and!335255 (not b!4239588) (not d!1247245) b_and!335253 b_and!335249 (not b!4239316) (not b!4239434) (not b!4239634) (not b_next!126189) (not b!4239441) (not b!4239603) (not b!4239589) b_and!335181 (not b!4239301) (not b!4239635) (not d!1247183) (not b!4239350) (not b!4239321) (not b!4239351) (not b!4239429) (not b!4239594) (not b!4239636) (not b_lambda!124797) (not b_next!126187) (not d!1247167) (not b!4239349) (not b!4239432) (not d!1247191) (not d!1247165) (not b!4239428) (not b_next!126163) b_and!335185 b_and!335217 (not b!4239348) (not b!4239609) (not b!4239331) (not bm!293820) (not b!4239515) b_and!335251 b_and!335213 b_and!335177 (not b!4239565) (not b!4239572) (not b!4239471) (not b!4239629) (not b!4239437) (not b!4239593) (not b_next!126183) (not b!4239614) (not b!4239607) (not b!4239519) (not b!4239631) (not b!4239571) (not b!4239439) (not b!4239592) (not b_next!126167) (not b_next!126169) (not b!4239320) (not b!4239276) (not b!4239436))
(check-sat b_and!335215 (not b_next!126191) b_and!335255 b_and!335253 b_and!335181 (not b_next!126187) (not b_next!126163) b_and!335177 (not b_next!126183) (not b_next!126167) (not b_next!126161) (not b_next!126169) b_and!335257 b_and!335259 (not b_next!126185) (not b_next!126193) (not b_next!126165) (not b_next!126159) b_and!335249 (not b_next!126189) b_and!335185 b_and!335217 b_and!335251 b_and!335213)
(get-model)

(declare-fun d!1247253 () Bool)

(declare-fun res!1743415 () Bool)

(declare-fun e!2632772 () Bool)

(assert (=> d!1247253 (=> (not res!1743415) (not e!2632772))))

(assert (=> d!1247253 (= res!1743415 (not (isEmpty!27708 (originalCharacters!8268 (h!52294 (t!350411 addTokens!17))))))))

(assert (=> d!1247253 (= (inv!61614 (h!52294 (t!350411 addTokens!17))) e!2632772)))

(declare-fun b!4239639 () Bool)

(declare-fun res!1743416 () Bool)

(assert (=> b!4239639 (=> (not res!1743416) (not e!2632772))))

(assert (=> b!4239639 (= res!1743416 (= (originalCharacters!8268 (h!52294 (t!350411 addTokens!17))) (list!16901 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (value!246370 (h!52294 (t!350411 addTokens!17)))))))))

(declare-fun b!4239640 () Bool)

(assert (=> b!4239640 (= e!2632772 (= (size!34337 (h!52294 (t!350411 addTokens!17))) (size!34338 (originalCharacters!8268 (h!52294 (t!350411 addTokens!17))))))))

(assert (= (and d!1247253 res!1743415) b!4239639))

(assert (= (and b!4239639 res!1743416) b!4239640))

(declare-fun b_lambda!124819 () Bool)

(assert (=> (not b_lambda!124819) (not b!4239639)))

(declare-fun tb!254699 () Bool)

(declare-fun t!350512 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350512) tb!254699))

(declare-fun b!4239641 () Bool)

(declare-fun e!2632773 () Bool)

(declare-fun tp!1299297 () Bool)

(assert (=> b!4239641 (= e!2632773 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (value!246370 (h!52294 (t!350411 addTokens!17)))))) tp!1299297))))

(declare-fun result!310644 () Bool)

(assert (=> tb!254699 (= result!310644 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (value!246370 (h!52294 (t!350411 addTokens!17))))) e!2632773))))

(assert (= tb!254699 b!4239641))

(declare-fun m!4825053 () Bool)

(assert (=> b!4239641 m!4825053))

(declare-fun m!4825055 () Bool)

(assert (=> tb!254699 m!4825055))

(assert (=> b!4239639 t!350512))

(declare-fun b_and!335261 () Bool)

(assert (= b_and!335217 (and (=> t!350512 result!310644) b_and!335261)))

(declare-fun tb!254701 () Bool)

(declare-fun t!350514 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350514) tb!254701))

(declare-fun result!310646 () Bool)

(assert (= result!310646 result!310644))

(assert (=> b!4239639 t!350514))

(declare-fun b_and!335263 () Bool)

(assert (= b_and!335251 (and (=> t!350514 result!310646) b_and!335263)))

(declare-fun t!350516 () Bool)

(declare-fun tb!254703 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350516) tb!254703))

(declare-fun result!310648 () Bool)

(assert (= result!310648 result!310644))

(assert (=> b!4239639 t!350516))

(declare-fun b_and!335265 () Bool)

(assert (= b_and!335255 (and (=> t!350516 result!310648) b_and!335265)))

(declare-fun t!350518 () Bool)

(declare-fun tb!254705 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350518) tb!254705))

(declare-fun result!310650 () Bool)

(assert (= result!310650 result!310644))

(assert (=> b!4239639 t!350518))

(declare-fun b_and!335267 () Bool)

(assert (= b_and!335215 (and (=> t!350518 result!310650) b_and!335267)))

(declare-fun tb!254707 () Bool)

(declare-fun t!350520 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350520) tb!254707))

(declare-fun result!310652 () Bool)

(assert (= result!310652 result!310644))

(assert (=> b!4239639 t!350520))

(declare-fun b_and!335269 () Bool)

(assert (= b_and!335213 (and (=> t!350520 result!310652) b_and!335269)))

(declare-fun t!350522 () Bool)

(declare-fun tb!254709 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350522) tb!254709))

(declare-fun result!310654 () Bool)

(assert (= result!310654 result!310644))

(assert (=> b!4239639 t!350522))

(declare-fun b_and!335271 () Bool)

(assert (= b_and!335259 (and (=> t!350522 result!310654) b_and!335271)))

(declare-fun m!4825057 () Bool)

(assert (=> d!1247253 m!4825057))

(declare-fun m!4825059 () Bool)

(assert (=> b!4239639 m!4825059))

(assert (=> b!4239639 m!4825059))

(declare-fun m!4825061 () Bool)

(assert (=> b!4239639 m!4825061))

(declare-fun m!4825063 () Bool)

(assert (=> b!4239640 m!4825063))

(assert (=> b!4239625 d!1247253))

(declare-fun d!1247255 () Bool)

(declare-fun c!720385 () Bool)

(assert (=> d!1247255 (= c!720385 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))))))

(declare-fun e!2632778 () Bool)

(assert (=> d!1247255 (= (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))) e!2632778)))

(declare-fun b!4239648 () Bool)

(declare-fun inv!61621 (Conc!14135) Bool)

(assert (=> b!4239648 (= e!2632778 (inv!61621 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))))))

(declare-fun b!4239649 () Bool)

(declare-fun e!2632779 () Bool)

(assert (=> b!4239649 (= e!2632778 e!2632779)))

(declare-fun res!1743419 () Bool)

(assert (=> b!4239649 (= res!1743419 (not ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))))))))

(assert (=> b!4239649 (=> res!1743419 e!2632779)))

(declare-fun b!4239650 () Bool)

(declare-fun inv!61622 (Conc!14135) Bool)

(assert (=> b!4239650 (= e!2632779 (inv!61622 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))))))

(assert (= (and d!1247255 c!720385) b!4239648))

(assert (= (and d!1247255 (not c!720385)) b!4239649))

(assert (= (and b!4239649 (not res!1743419)) b!4239650))

(declare-fun m!4825065 () Bool)

(assert (=> b!4239648 m!4825065))

(declare-fun m!4825067 () Bool)

(assert (=> b!4239650 m!4825067))

(assert (=> b!4239331 d!1247255))

(declare-fun d!1247257 () Bool)

(assert (=> d!1247257 (= (isDefined!7438 lt!1506370) (not (isEmpty!27711 lt!1506370)))))

(declare-fun bs!598290 () Bool)

(assert (= bs!598290 d!1247257))

(assert (=> bs!598290 m!4824897))

(assert (=> b!4239427 d!1247257))

(declare-fun call!293827 () Option!10060)

(declare-fun bm!293822 () Bool)

(assert (=> bm!293822 (= call!293827 (maxPrefixOneRule!3448 thiss!21540 (h!52295 (t!350412 rules!2932)) shorterInput!51))))

(declare-fun b!4239651 () Bool)

(declare-fun res!1743424 () Bool)

(declare-fun e!2632782 () Bool)

(assert (=> b!4239651 (=> (not res!1743424) (not e!2632782))))

(declare-fun lt!1506404 () Option!10060)

(assert (=> b!4239651 (= res!1743424 (< (size!34338 (_2!25359 (get!15242 lt!1506404))) (size!34338 shorterInput!51)))))

(declare-fun b!4239652 () Bool)

(declare-fun e!2632781 () Option!10060)

(assert (=> b!4239652 (= e!2632781 call!293827)))

(declare-fun b!4239653 () Bool)

(declare-fun e!2632780 () Bool)

(assert (=> b!4239653 (= e!2632780 e!2632782)))

(declare-fun res!1743423 () Bool)

(assert (=> b!4239653 (=> (not res!1743423) (not e!2632782))))

(assert (=> b!4239653 (= res!1743423 (isDefined!7438 lt!1506404))))

(declare-fun b!4239654 () Bool)

(declare-fun res!1743420 () Bool)

(assert (=> b!4239654 (=> (not res!1743420) (not e!2632782))))

(assert (=> b!4239654 (= res!1743420 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506404)))) (_2!25359 (get!15242 lt!1506404))) shorterInput!51))))

(declare-fun b!4239655 () Bool)

(declare-fun lt!1506403 () Option!10060)

(declare-fun lt!1506406 () Option!10060)

(assert (=> b!4239655 (= e!2632781 (ite (and ((_ is None!10059) lt!1506403) ((_ is None!10059) lt!1506406)) None!10059 (ite ((_ is None!10059) lt!1506406) lt!1506403 (ite ((_ is None!10059) lt!1506403) lt!1506406 (ite (>= (size!34337 (_1!25359 (v!41009 lt!1506403))) (size!34337 (_1!25359 (v!41009 lt!1506406)))) lt!1506403 lt!1506406)))))))

(assert (=> b!4239655 (= lt!1506403 call!293827)))

(assert (=> b!4239655 (= lt!1506406 (maxPrefix!4477 thiss!21540 (t!350412 (t!350412 rules!2932)) shorterInput!51))))

(declare-fun d!1247259 () Bool)

(assert (=> d!1247259 e!2632780))

(declare-fun res!1743425 () Bool)

(assert (=> d!1247259 (=> res!1743425 e!2632780)))

(assert (=> d!1247259 (= res!1743425 (isEmpty!27711 lt!1506404))))

(assert (=> d!1247259 (= lt!1506404 e!2632781)))

(declare-fun c!720386 () Bool)

(assert (=> d!1247259 (= c!720386 (and ((_ is Cons!46875) (t!350412 rules!2932)) ((_ is Nil!46875) (t!350412 (t!350412 rules!2932)))))))

(declare-fun lt!1506405 () Unit!65963)

(declare-fun lt!1506402 () Unit!65963)

(assert (=> d!1247259 (= lt!1506405 lt!1506402)))

(assert (=> d!1247259 (isPrefix!4723 shorterInput!51 shorterInput!51)))

(assert (=> d!1247259 (= lt!1506402 (lemmaIsPrefixRefl!3120 shorterInput!51 shorterInput!51))))

(assert (=> d!1247259 (rulesValidInductive!2972 thiss!21540 (t!350412 rules!2932))))

(assert (=> d!1247259 (= (maxPrefix!4477 thiss!21540 (t!350412 rules!2932) shorterInput!51) lt!1506404)))

(declare-fun b!4239656 () Bool)

(declare-fun res!1743426 () Bool)

(assert (=> b!4239656 (=> (not res!1743426) (not e!2632782))))

(assert (=> b!4239656 (= res!1743426 (= (value!246370 (_1!25359 (get!15242 lt!1506404))) (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506404)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506404)))))))))

(declare-fun b!4239657 () Bool)

(declare-fun res!1743422 () Bool)

(assert (=> b!4239657 (=> (not res!1743422) (not e!2632782))))

(assert (=> b!4239657 (= res!1743422 (matchR!6445 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506404)))) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506404))))))))

(declare-fun b!4239658 () Bool)

(assert (=> b!4239658 (= e!2632782 (contains!9725 (t!350412 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506404)))))))

(declare-fun b!4239659 () Bool)

(declare-fun res!1743421 () Bool)

(assert (=> b!4239659 (=> (not res!1743421) (not e!2632782))))

(assert (=> b!4239659 (= res!1743421 (= (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506404)))) (originalCharacters!8268 (_1!25359 (get!15242 lt!1506404)))))))

(assert (= (and d!1247259 c!720386) b!4239652))

(assert (= (and d!1247259 (not c!720386)) b!4239655))

(assert (= (or b!4239652 b!4239655) bm!293822))

(assert (= (and d!1247259 (not res!1743425)) b!4239653))

(assert (= (and b!4239653 res!1743423) b!4239659))

(assert (= (and b!4239659 res!1743421) b!4239651))

(assert (= (and b!4239651 res!1743424) b!4239654))

(assert (= (and b!4239654 res!1743420) b!4239656))

(assert (= (and b!4239656 res!1743426) b!4239657))

(assert (= (and b!4239657 res!1743422) b!4239658))

(declare-fun m!4825069 () Bool)

(assert (=> bm!293822 m!4825069))

(declare-fun m!4825071 () Bool)

(assert (=> b!4239654 m!4825071))

(declare-fun m!4825073 () Bool)

(assert (=> b!4239654 m!4825073))

(assert (=> b!4239654 m!4825073))

(declare-fun m!4825075 () Bool)

(assert (=> b!4239654 m!4825075))

(assert (=> b!4239654 m!4825075))

(declare-fun m!4825077 () Bool)

(assert (=> b!4239654 m!4825077))

(declare-fun m!4825079 () Bool)

(assert (=> b!4239655 m!4825079))

(assert (=> b!4239658 m!4825071))

(declare-fun m!4825081 () Bool)

(assert (=> b!4239658 m!4825081))

(assert (=> b!4239651 m!4825071))

(declare-fun m!4825083 () Bool)

(assert (=> b!4239651 m!4825083))

(assert (=> b!4239651 m!4824621))

(declare-fun m!4825085 () Bool)

(assert (=> b!4239653 m!4825085))

(assert (=> b!4239659 m!4825071))

(assert (=> b!4239659 m!4825073))

(assert (=> b!4239659 m!4825073))

(assert (=> b!4239659 m!4825075))

(assert (=> b!4239656 m!4825071))

(declare-fun m!4825087 () Bool)

(assert (=> b!4239656 m!4825087))

(assert (=> b!4239656 m!4825087))

(declare-fun m!4825089 () Bool)

(assert (=> b!4239656 m!4825089))

(assert (=> b!4239657 m!4825071))

(assert (=> b!4239657 m!4825073))

(assert (=> b!4239657 m!4825073))

(assert (=> b!4239657 m!4825075))

(assert (=> b!4239657 m!4825075))

(declare-fun m!4825091 () Bool)

(assert (=> b!4239657 m!4825091))

(declare-fun m!4825093 () Bool)

(assert (=> d!1247259 m!4825093))

(assert (=> d!1247259 m!4824899))

(assert (=> d!1247259 m!4824901))

(declare-fun m!4825095 () Bool)

(assert (=> d!1247259 m!4825095))

(assert (=> b!4239429 d!1247259))

(declare-fun d!1247261 () Bool)

(declare-fun isBalanced!3758 (Conc!14135) Bool)

(assert (=> d!1247261 (= (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))) (isBalanced!3758 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))))))

(declare-fun bs!598291 () Bool)

(assert (= bs!598291 d!1247261))

(declare-fun m!4825097 () Bool)

(assert (=> bs!598291 m!4825097))

(assert (=> tb!254621 d!1247261))

(declare-fun d!1247263 () Bool)

(assert (=> d!1247263 (= (list!16901 lt!1506328) (list!16903 (c!720323 lt!1506328)))))

(declare-fun bs!598292 () Bool)

(assert (= bs!598292 d!1247263))

(declare-fun m!4825099 () Bool)

(assert (=> bs!598292 m!4825099))

(assert (=> d!1247167 d!1247263))

(declare-fun d!1247265 () Bool)

(declare-fun lt!1506407 () Int)

(assert (=> d!1247265 (>= lt!1506407 0)))

(declare-fun e!2632783 () Int)

(assert (=> d!1247265 (= lt!1506407 e!2632783)))

(declare-fun c!720387 () Bool)

(assert (=> d!1247265 (= c!720387 ((_ is Nil!46873) (originalCharacters!8268 (h!52294 tokens!581))))))

(assert (=> d!1247265 (= (size!34338 (originalCharacters!8268 (h!52294 tokens!581))) lt!1506407)))

(declare-fun b!4239660 () Bool)

(assert (=> b!4239660 (= e!2632783 0)))

(declare-fun b!4239661 () Bool)

(assert (=> b!4239661 (= e!2632783 (+ 1 (size!34338 (t!350410 (originalCharacters!8268 (h!52294 tokens!581))))))))

(assert (= (and d!1247265 c!720387) b!4239660))

(assert (= (and d!1247265 (not c!720387)) b!4239661))

(declare-fun m!4825101 () Bool)

(assert (=> b!4239661 m!4825101))

(assert (=> b!4239351 d!1247265))

(declare-fun bm!293825 () Bool)

(declare-fun call!293830 () Bool)

(assert (=> bm!293825 (= call!293830 (isEmpty!27708 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))))))

(declare-fun b!4239690 () Bool)

(declare-fun res!1743444 () Bool)

(declare-fun e!2632803 () Bool)

(assert (=> b!4239690 (=> res!1743444 e!2632803)))

(declare-fun tail!6840 (List!46997) List!46997)

(assert (=> b!4239690 (= res!1743444 (not (isEmpty!27708 (tail!6840 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))))))))

(declare-fun b!4239691 () Bool)

(declare-fun e!2632801 () Bool)

(declare-fun nullable!4518 (Regex!12829) Bool)

(assert (=> b!4239691 (= e!2632801 (nullable!4518 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))))))

(declare-fun b!4239692 () Bool)

(declare-fun e!2632799 () Bool)

(declare-fun e!2632798 () Bool)

(assert (=> b!4239692 (= e!2632799 e!2632798)))

(declare-fun c!720396 () Bool)

(assert (=> b!4239692 (= c!720396 ((_ is EmptyLang!12829) (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))))))

(declare-fun b!4239693 () Bool)

(declare-fun lt!1506410 () Bool)

(assert (=> b!4239693 (= e!2632798 (not lt!1506410))))

(declare-fun b!4239694 () Bool)

(declare-fun head!8987 (List!46997) C!25856)

(assert (=> b!4239694 (= e!2632803 (not (= (head!8987 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))) (c!720322 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))))))))

(declare-fun b!4239695 () Bool)

(declare-fun e!2632802 () Bool)

(assert (=> b!4239695 (= e!2632802 (= (head!8987 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))) (c!720322 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))))))

(declare-fun b!4239696 () Bool)

(assert (=> b!4239696 (= e!2632799 (= lt!1506410 call!293830))))

(declare-fun b!4239697 () Bool)

(declare-fun e!2632804 () Bool)

(declare-fun e!2632800 () Bool)

(assert (=> b!4239697 (= e!2632804 e!2632800)))

(declare-fun res!1743450 () Bool)

(assert (=> b!4239697 (=> (not res!1743450) (not e!2632800))))

(assert (=> b!4239697 (= res!1743450 (not lt!1506410))))

(declare-fun b!4239698 () Bool)

(declare-fun res!1743448 () Bool)

(assert (=> b!4239698 (=> (not res!1743448) (not e!2632802))))

(assert (=> b!4239698 (= res!1743448 (isEmpty!27708 (tail!6840 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))))))))

(declare-fun b!4239699 () Bool)

(declare-fun res!1743446 () Bool)

(assert (=> b!4239699 (=> res!1743446 e!2632804)))

(assert (=> b!4239699 (= res!1743446 (not ((_ is ElementMatch!12829) (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))))))

(assert (=> b!4239699 (= e!2632798 e!2632804)))

(declare-fun b!4239701 () Bool)

(declare-fun derivativeStep!3849 (Regex!12829 C!25856) Regex!12829)

(assert (=> b!4239701 (= e!2632801 (matchR!6445 (derivativeStep!3849 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))) (head!8987 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))))) (tail!6840 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))))))))

(declare-fun b!4239702 () Bool)

(declare-fun res!1743447 () Bool)

(assert (=> b!4239702 (=> (not res!1743447) (not e!2632802))))

(assert (=> b!4239702 (= res!1743447 (not call!293830))))

(declare-fun b!4239703 () Bool)

(declare-fun res!1743445 () Bool)

(assert (=> b!4239703 (=> res!1743445 e!2632804)))

(assert (=> b!4239703 (= res!1743445 e!2632802)))

(declare-fun res!1743443 () Bool)

(assert (=> b!4239703 (=> (not res!1743443) (not e!2632802))))

(assert (=> b!4239703 (= res!1743443 lt!1506410)))

(declare-fun b!4239700 () Bool)

(assert (=> b!4239700 (= e!2632800 e!2632803)))

(declare-fun res!1743449 () Bool)

(assert (=> b!4239700 (=> res!1743449 e!2632803)))

(assert (=> b!4239700 (= res!1743449 call!293830)))

(declare-fun d!1247267 () Bool)

(assert (=> d!1247267 e!2632799))

(declare-fun c!720394 () Bool)

(assert (=> d!1247267 (= c!720394 ((_ is EmptyExpr!12829) (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))))))

(assert (=> d!1247267 (= lt!1506410 e!2632801)))

(declare-fun c!720395 () Bool)

(assert (=> d!1247267 (= c!720395 (isEmpty!27708 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))))))

(declare-fun validRegex!5825 (Regex!12829) Bool)

(assert (=> d!1247267 (validRegex!5825 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))))

(assert (=> d!1247267 (= (matchR!6445 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))) lt!1506410)))

(assert (= (and d!1247267 c!720395) b!4239691))

(assert (= (and d!1247267 (not c!720395)) b!4239701))

(assert (= (and d!1247267 c!720394) b!4239696))

(assert (= (and d!1247267 (not c!720394)) b!4239692))

(assert (= (and b!4239692 c!720396) b!4239693))

(assert (= (and b!4239692 (not c!720396)) b!4239699))

(assert (= (and b!4239699 (not res!1743446)) b!4239703))

(assert (= (and b!4239703 res!1743443) b!4239702))

(assert (= (and b!4239702 res!1743447) b!4239698))

(assert (= (and b!4239698 res!1743448) b!4239695))

(assert (= (and b!4239703 (not res!1743445)) b!4239697))

(assert (= (and b!4239697 res!1743450) b!4239700))

(assert (= (and b!4239700 (not res!1743449)) b!4239690))

(assert (= (and b!4239690 (not res!1743444)) b!4239694))

(assert (= (or b!4239696 b!4239700 b!4239702) bm!293825))

(assert (=> b!4239701 m!4824911))

(declare-fun m!4825103 () Bool)

(assert (=> b!4239701 m!4825103))

(assert (=> b!4239701 m!4825103))

(declare-fun m!4825105 () Bool)

(assert (=> b!4239701 m!4825105))

(assert (=> b!4239701 m!4824911))

(declare-fun m!4825107 () Bool)

(assert (=> b!4239701 m!4825107))

(assert (=> b!4239701 m!4825105))

(assert (=> b!4239701 m!4825107))

(declare-fun m!4825109 () Bool)

(assert (=> b!4239701 m!4825109))

(assert (=> d!1247267 m!4824911))

(declare-fun m!4825111 () Bool)

(assert (=> d!1247267 m!4825111))

(declare-fun m!4825113 () Bool)

(assert (=> d!1247267 m!4825113))

(assert (=> b!4239694 m!4824911))

(assert (=> b!4239694 m!4825103))

(assert (=> b!4239695 m!4824911))

(assert (=> b!4239695 m!4825103))

(assert (=> b!4239690 m!4824911))

(assert (=> b!4239690 m!4825107))

(assert (=> b!4239690 m!4825107))

(declare-fun m!4825115 () Bool)

(assert (=> b!4239690 m!4825115))

(assert (=> b!4239698 m!4824911))

(assert (=> b!4239698 m!4825107))

(assert (=> b!4239698 m!4825107))

(assert (=> b!4239698 m!4825115))

(declare-fun m!4825117 () Bool)

(assert (=> b!4239691 m!4825117))

(assert (=> bm!293825 m!4824911))

(assert (=> bm!293825 m!4825111))

(assert (=> b!4239440 d!1247267))

(declare-fun d!1247269 () Bool)

(assert (=> d!1247269 (= (get!15242 lt!1506375) (v!41009 lt!1506375))))

(assert (=> b!4239440 d!1247269))

(declare-fun d!1247271 () Bool)

(assert (=> d!1247271 (= (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))) (list!16903 (c!720323 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))))))

(declare-fun bs!598293 () Bool)

(assert (= bs!598293 d!1247271))

(declare-fun m!4825119 () Bool)

(assert (=> bs!598293 m!4825119))

(assert (=> b!4239440 d!1247271))

(declare-fun d!1247273 () Bool)

(declare-fun lt!1506411 () BalanceConc!27864)

(assert (=> d!1247273 (= (list!16901 lt!1506411) (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375))))))

(assert (=> d!1247273 (= lt!1506411 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))) (value!246370 (_1!25359 (get!15242 lt!1506375)))))))

(assert (=> d!1247273 (= (charsOf!5278 (_1!25359 (get!15242 lt!1506375))) lt!1506411)))

(declare-fun b_lambda!124821 () Bool)

(assert (=> (not b_lambda!124821) (not d!1247273)))

(declare-fun t!350524 () Bool)

(declare-fun tb!254711 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350524) tb!254711))

(declare-fun b!4239704 () Bool)

(declare-fun e!2632805 () Bool)

(declare-fun tp!1299298 () Bool)

(assert (=> b!4239704 (= e!2632805 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))) (value!246370 (_1!25359 (get!15242 lt!1506375)))))) tp!1299298))))

(declare-fun result!310656 () Bool)

(assert (=> tb!254711 (= result!310656 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))) (value!246370 (_1!25359 (get!15242 lt!1506375))))) e!2632805))))

(assert (= tb!254711 b!4239704))

(declare-fun m!4825121 () Bool)

(assert (=> b!4239704 m!4825121))

(declare-fun m!4825123 () Bool)

(assert (=> tb!254711 m!4825123))

(assert (=> d!1247273 t!350524))

(declare-fun b_and!335273 () Bool)

(assert (= b_and!335265 (and (=> t!350524 result!310656) b_and!335273)))

(declare-fun tb!254713 () Bool)

(declare-fun t!350526 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350526) tb!254713))

(declare-fun result!310658 () Bool)

(assert (= result!310658 result!310656))

(assert (=> d!1247273 t!350526))

(declare-fun b_and!335275 () Bool)

(assert (= b_and!335263 (and (=> t!350526 result!310658) b_and!335275)))

(declare-fun tb!254715 () Bool)

(declare-fun t!350528 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350528) tb!254715))

(declare-fun result!310660 () Bool)

(assert (= result!310660 result!310656))

(assert (=> d!1247273 t!350528))

(declare-fun b_and!335277 () Bool)

(assert (= b_and!335267 (and (=> t!350528 result!310660) b_and!335277)))

(declare-fun t!350530 () Bool)

(declare-fun tb!254717 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350530) tb!254717))

(declare-fun result!310662 () Bool)

(assert (= result!310662 result!310656))

(assert (=> d!1247273 t!350530))

(declare-fun b_and!335279 () Bool)

(assert (= b_and!335269 (and (=> t!350530 result!310662) b_and!335279)))

(declare-fun tb!254719 () Bool)

(declare-fun t!350532 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350532) tb!254719))

(declare-fun result!310664 () Bool)

(assert (= result!310664 result!310656))

(assert (=> d!1247273 t!350532))

(declare-fun b_and!335281 () Bool)

(assert (= b_and!335271 (and (=> t!350532 result!310664) b_and!335281)))

(declare-fun t!350534 () Bool)

(declare-fun tb!254721 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350534) tb!254721))

(declare-fun result!310666 () Bool)

(assert (= result!310666 result!310656))

(assert (=> d!1247273 t!350534))

(declare-fun b_and!335283 () Bool)

(assert (= b_and!335261 (and (=> t!350534 result!310666) b_and!335283)))

(declare-fun m!4825125 () Bool)

(assert (=> d!1247273 m!4825125))

(declare-fun m!4825127 () Bool)

(assert (=> d!1247273 m!4825127))

(assert (=> b!4239440 d!1247273))

(assert (=> b!4239442 d!1247271))

(assert (=> b!4239442 d!1247273))

(assert (=> b!4239442 d!1247269))

(declare-fun d!1247275 () Bool)

(declare-fun lt!1506412 () Int)

(assert (=> d!1247275 (>= lt!1506412 0)))

(declare-fun e!2632806 () Int)

(assert (=> d!1247275 (= lt!1506412 e!2632806)))

(declare-fun c!720397 () Bool)

(assert (=> d!1247275 (= c!720397 ((_ is Nil!46874) (t!350411 addTokens!17)))))

(assert (=> d!1247275 (= (size!34339 (t!350411 addTokens!17)) lt!1506412)))

(declare-fun b!4239705 () Bool)

(assert (=> b!4239705 (= e!2632806 0)))

(declare-fun b!4239706 () Bool)

(assert (=> b!4239706 (= e!2632806 (+ 1 (size!34339 (t!350411 (t!350411 addTokens!17)))))))

(assert (= (and d!1247275 c!720397) b!4239705))

(assert (= (and d!1247275 (not c!720397)) b!4239706))

(declare-fun m!4825129 () Bool)

(assert (=> b!4239706 m!4825129))

(assert (=> b!4239471 d!1247275))

(declare-fun d!1247277 () Bool)

(assert (=> d!1247277 (= (inv!61610 (tag!8788 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (= (mod (str.len (value!246369 (tag!8788 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) 2) 0))))

(assert (=> b!4239627 d!1247277))

(declare-fun d!1247279 () Bool)

(declare-fun res!1743451 () Bool)

(declare-fun e!2632807 () Bool)

(assert (=> d!1247279 (=> (not res!1743451) (not e!2632807))))

(assert (=> d!1247279 (= res!1743451 (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))))))

(assert (=> d!1247279 (= (inv!61613 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) e!2632807)))

(declare-fun b!4239707 () Bool)

(assert (=> b!4239707 (= e!2632807 (equivClasses!3345 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))))))

(assert (= (and d!1247279 res!1743451) b!4239707))

(declare-fun m!4825131 () Bool)

(assert (=> d!1247279 m!4825131))

(declare-fun m!4825133 () Bool)

(assert (=> b!4239707 m!4825133))

(assert (=> b!4239627 d!1247279))

(declare-fun bm!293826 () Bool)

(declare-fun call!293831 () Bool)

(assert (=> bm!293826 (= call!293831 (isEmpty!27708 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))))))

(declare-fun b!4239708 () Bool)

(declare-fun res!1743453 () Bool)

(declare-fun e!2632813 () Bool)

(assert (=> b!4239708 (=> res!1743453 e!2632813)))

(assert (=> b!4239708 (= res!1743453 (not (isEmpty!27708 (tail!6840 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))))))))

(declare-fun b!4239709 () Bool)

(declare-fun e!2632811 () Bool)

(assert (=> b!4239709 (= e!2632811 (nullable!4518 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))))))

(declare-fun b!4239710 () Bool)

(declare-fun e!2632809 () Bool)

(declare-fun e!2632808 () Bool)

(assert (=> b!4239710 (= e!2632809 e!2632808)))

(declare-fun c!720400 () Bool)

(assert (=> b!4239710 (= c!720400 ((_ is EmptyLang!12829) (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))))))

(declare-fun b!4239711 () Bool)

(declare-fun lt!1506413 () Bool)

(assert (=> b!4239711 (= e!2632808 (not lt!1506413))))

(declare-fun b!4239712 () Bool)

(assert (=> b!4239712 (= e!2632813 (not (= (head!8987 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))) (c!720322 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))))))))

(declare-fun b!4239713 () Bool)

(declare-fun e!2632812 () Bool)

(assert (=> b!4239713 (= e!2632812 (= (head!8987 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))) (c!720322 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))))))

(declare-fun b!4239714 () Bool)

(assert (=> b!4239714 (= e!2632809 (= lt!1506413 call!293831))))

(declare-fun b!4239715 () Bool)

(declare-fun e!2632814 () Bool)

(declare-fun e!2632810 () Bool)

(assert (=> b!4239715 (= e!2632814 e!2632810)))

(declare-fun res!1743459 () Bool)

(assert (=> b!4239715 (=> (not res!1743459) (not e!2632810))))

(assert (=> b!4239715 (= res!1743459 (not lt!1506413))))

(declare-fun b!4239716 () Bool)

(declare-fun res!1743457 () Bool)

(assert (=> b!4239716 (=> (not res!1743457) (not e!2632812))))

(assert (=> b!4239716 (= res!1743457 (isEmpty!27708 (tail!6840 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))))))))

(declare-fun b!4239717 () Bool)

(declare-fun res!1743455 () Bool)

(assert (=> b!4239717 (=> res!1743455 e!2632814)))

(assert (=> b!4239717 (= res!1743455 (not ((_ is ElementMatch!12829) (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))))))

(assert (=> b!4239717 (= e!2632808 e!2632814)))

(declare-fun b!4239719 () Bool)

(assert (=> b!4239719 (= e!2632811 (matchR!6445 (derivativeStep!3849 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))) (head!8987 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))))) (tail!6840 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))))))))

(declare-fun b!4239720 () Bool)

(declare-fun res!1743456 () Bool)

(assert (=> b!4239720 (=> (not res!1743456) (not e!2632812))))

(assert (=> b!4239720 (= res!1743456 (not call!293831))))

(declare-fun b!4239721 () Bool)

(declare-fun res!1743454 () Bool)

(assert (=> b!4239721 (=> res!1743454 e!2632814)))

(assert (=> b!4239721 (= res!1743454 e!2632812)))

(declare-fun res!1743452 () Bool)

(assert (=> b!4239721 (=> (not res!1743452) (not e!2632812))))

(assert (=> b!4239721 (= res!1743452 lt!1506413)))

(declare-fun b!4239718 () Bool)

(assert (=> b!4239718 (= e!2632810 e!2632813)))

(declare-fun res!1743458 () Bool)

(assert (=> b!4239718 (=> res!1743458 e!2632813)))

(assert (=> b!4239718 (= res!1743458 call!293831)))

(declare-fun d!1247281 () Bool)

(assert (=> d!1247281 e!2632809))

(declare-fun c!720398 () Bool)

(assert (=> d!1247281 (= c!720398 ((_ is EmptyExpr!12829) (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))))))

(assert (=> d!1247281 (= lt!1506413 e!2632811)))

(declare-fun c!720399 () Bool)

(assert (=> d!1247281 (= c!720399 (isEmpty!27708 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))))))

(assert (=> d!1247281 (validRegex!5825 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))))

(assert (=> d!1247281 (= (matchR!6445 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))) lt!1506413)))

(assert (= (and d!1247281 c!720399) b!4239709))

(assert (= (and d!1247281 (not c!720399)) b!4239719))

(assert (= (and d!1247281 c!720398) b!4239714))

(assert (= (and d!1247281 (not c!720398)) b!4239710))

(assert (= (and b!4239710 c!720400) b!4239711))

(assert (= (and b!4239710 (not c!720400)) b!4239717))

(assert (= (and b!4239717 (not res!1743455)) b!4239721))

(assert (= (and b!4239721 res!1743452) b!4239720))

(assert (= (and b!4239720 res!1743456) b!4239716))

(assert (= (and b!4239716 res!1743457) b!4239713))

(assert (= (and b!4239721 (not res!1743454)) b!4239715))

(assert (= (and b!4239715 res!1743459) b!4239718))

(assert (= (and b!4239718 (not res!1743458)) b!4239708))

(assert (= (and b!4239708 (not res!1743453)) b!4239712))

(assert (= (or b!4239714 b!4239718 b!4239720) bm!293826))

(assert (=> b!4239719 m!4824879))

(declare-fun m!4825135 () Bool)

(assert (=> b!4239719 m!4825135))

(assert (=> b!4239719 m!4825135))

(declare-fun m!4825137 () Bool)

(assert (=> b!4239719 m!4825137))

(assert (=> b!4239719 m!4824879))

(declare-fun m!4825139 () Bool)

(assert (=> b!4239719 m!4825139))

(assert (=> b!4239719 m!4825137))

(assert (=> b!4239719 m!4825139))

(declare-fun m!4825141 () Bool)

(assert (=> b!4239719 m!4825141))

(assert (=> d!1247281 m!4824879))

(declare-fun m!4825143 () Bool)

(assert (=> d!1247281 m!4825143))

(declare-fun m!4825145 () Bool)

(assert (=> d!1247281 m!4825145))

(assert (=> b!4239712 m!4824879))

(assert (=> b!4239712 m!4825135))

(assert (=> b!4239713 m!4824879))

(assert (=> b!4239713 m!4825135))

(assert (=> b!4239708 m!4824879))

(assert (=> b!4239708 m!4825139))

(assert (=> b!4239708 m!4825139))

(declare-fun m!4825147 () Bool)

(assert (=> b!4239708 m!4825147))

(assert (=> b!4239716 m!4824879))

(assert (=> b!4239716 m!4825139))

(assert (=> b!4239716 m!4825139))

(assert (=> b!4239716 m!4825147))

(declare-fun m!4825149 () Bool)

(assert (=> b!4239709 m!4825149))

(assert (=> bm!293826 m!4824879))

(assert (=> bm!293826 m!4825143))

(assert (=> b!4239431 d!1247281))

(declare-fun d!1247283 () Bool)

(assert (=> d!1247283 (= (get!15242 lt!1506370) (v!41009 lt!1506370))))

(assert (=> b!4239431 d!1247283))

(declare-fun d!1247285 () Bool)

(assert (=> d!1247285 (= (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))) (list!16903 (c!720323 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))))))

(declare-fun bs!598294 () Bool)

(assert (= bs!598294 d!1247285))

(declare-fun m!4825151 () Bool)

(assert (=> bs!598294 m!4825151))

(assert (=> b!4239431 d!1247285))

(declare-fun d!1247287 () Bool)

(declare-fun lt!1506414 () BalanceConc!27864)

(assert (=> d!1247287 (= (list!16901 lt!1506414) (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370))))))

(assert (=> d!1247287 (= lt!1506414 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))) (value!246370 (_1!25359 (get!15242 lt!1506370)))))))

(assert (=> d!1247287 (= (charsOf!5278 (_1!25359 (get!15242 lt!1506370))) lt!1506414)))

(declare-fun b_lambda!124823 () Bool)

(assert (=> (not b_lambda!124823) (not d!1247287)))

(declare-fun tb!254723 () Bool)

(declare-fun t!350536 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350536) tb!254723))

(declare-fun b!4239722 () Bool)

(declare-fun e!2632815 () Bool)

(declare-fun tp!1299299 () Bool)

(assert (=> b!4239722 (= e!2632815 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))) (value!246370 (_1!25359 (get!15242 lt!1506370)))))) tp!1299299))))

(declare-fun result!310668 () Bool)

(assert (=> tb!254723 (= result!310668 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))) (value!246370 (_1!25359 (get!15242 lt!1506370))))) e!2632815))))

(assert (= tb!254723 b!4239722))

(declare-fun m!4825153 () Bool)

(assert (=> b!4239722 m!4825153))

(declare-fun m!4825155 () Bool)

(assert (=> tb!254723 m!4825155))

(assert (=> d!1247287 t!350536))

(declare-fun b_and!335285 () Bool)

(assert (= b_and!335279 (and (=> t!350536 result!310668) b_and!335285)))

(declare-fun t!350538 () Bool)

(declare-fun tb!254725 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350538) tb!254725))

(declare-fun result!310670 () Bool)

(assert (= result!310670 result!310668))

(assert (=> d!1247287 t!350538))

(declare-fun b_and!335287 () Bool)

(assert (= b_and!335283 (and (=> t!350538 result!310670) b_and!335287)))

(declare-fun t!350540 () Bool)

(declare-fun tb!254727 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350540) tb!254727))

(declare-fun result!310672 () Bool)

(assert (= result!310672 result!310668))

(assert (=> d!1247287 t!350540))

(declare-fun b_and!335289 () Bool)

(assert (= b_and!335275 (and (=> t!350540 result!310672) b_and!335289)))

(declare-fun t!350542 () Bool)

(declare-fun tb!254729 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350542) tb!254729))

(declare-fun result!310674 () Bool)

(assert (= result!310674 result!310668))

(assert (=> d!1247287 t!350542))

(declare-fun b_and!335291 () Bool)

(assert (= b_and!335281 (and (=> t!350542 result!310674) b_and!335291)))

(declare-fun t!350544 () Bool)

(declare-fun tb!254731 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350544) tb!254731))

(declare-fun result!310676 () Bool)

(assert (= result!310676 result!310668))

(assert (=> d!1247287 t!350544))

(declare-fun b_and!335293 () Bool)

(assert (= b_and!335273 (and (=> t!350544 result!310676) b_and!335293)))

(declare-fun t!350546 () Bool)

(declare-fun tb!254733 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350546) tb!254733))

(declare-fun result!310678 () Bool)

(assert (= result!310678 result!310668))

(assert (=> d!1247287 t!350546))

(declare-fun b_and!335295 () Bool)

(assert (= b_and!335277 (and (=> t!350546 result!310678) b_and!335295)))

(declare-fun m!4825157 () Bool)

(assert (=> d!1247287 m!4825157))

(declare-fun m!4825159 () Bool)

(assert (=> d!1247287 m!4825159))

(assert (=> b!4239431 d!1247287))

(declare-fun d!1247289 () Bool)

(declare-fun lt!1506415 () Int)

(assert (=> d!1247289 (>= lt!1506415 0)))

(declare-fun e!2632816 () Int)

(assert (=> d!1247289 (= lt!1506415 e!2632816)))

(declare-fun c!720401 () Bool)

(assert (=> d!1247289 (= c!720401 ((_ is Nil!46873) (_2!25359 (get!15242 lt!1506375))))))

(assert (=> d!1247289 (= (size!34338 (_2!25359 (get!15242 lt!1506375))) lt!1506415)))

(declare-fun b!4239723 () Bool)

(assert (=> b!4239723 (= e!2632816 0)))

(declare-fun b!4239724 () Bool)

(assert (=> b!4239724 (= e!2632816 (+ 1 (size!34338 (t!350410 (_2!25359 (get!15242 lt!1506375))))))))

(assert (= (and d!1247289 c!720401) b!4239723))

(assert (= (and d!1247289 (not c!720401)) b!4239724))

(declare-fun m!4825161 () Bool)

(assert (=> b!4239724 m!4825161))

(assert (=> b!4239434 d!1247289))

(assert (=> b!4239434 d!1247269))

(assert (=> b!4239434 d!1247153))

(declare-fun d!1247291 () Bool)

(declare-fun res!1743460 () Bool)

(declare-fun e!2632817 () Bool)

(assert (=> d!1247291 (=> (not res!1743460) (not e!2632817))))

(assert (=> d!1247291 (= res!1743460 (not (isEmpty!27708 (originalCharacters!8268 (h!52294 (t!350411 tokens!581))))))))

(assert (=> d!1247291 (= (inv!61614 (h!52294 (t!350411 tokens!581))) e!2632817)))

(declare-fun b!4239725 () Bool)

(declare-fun res!1743461 () Bool)

(assert (=> b!4239725 (=> (not res!1743461) (not e!2632817))))

(assert (=> b!4239725 (= res!1743461 (= (originalCharacters!8268 (h!52294 (t!350411 tokens!581))) (list!16901 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (value!246370 (h!52294 (t!350411 tokens!581)))))))))

(declare-fun b!4239726 () Bool)

(assert (=> b!4239726 (= e!2632817 (= (size!34337 (h!52294 (t!350411 tokens!581))) (size!34338 (originalCharacters!8268 (h!52294 (t!350411 tokens!581))))))))

(assert (= (and d!1247291 res!1743460) b!4239725))

(assert (= (and b!4239725 res!1743461) b!4239726))

(declare-fun b_lambda!124825 () Bool)

(assert (=> (not b_lambda!124825) (not b!4239725)))

(declare-fun t!350548 () Bool)

(declare-fun tb!254735 () Bool)

(assert (=> (and b!4239247 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350548) tb!254735))

(declare-fun b!4239727 () Bool)

(declare-fun e!2632818 () Bool)

(declare-fun tp!1299300 () Bool)

(assert (=> b!4239727 (= e!2632818 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (value!246370 (h!52294 (t!350411 tokens!581)))))) tp!1299300))))

(declare-fun result!310680 () Bool)

(assert (=> tb!254735 (= result!310680 (and (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (value!246370 (h!52294 (t!350411 tokens!581))))) e!2632818))))

(assert (= tb!254735 b!4239727))

(declare-fun m!4825163 () Bool)

(assert (=> b!4239727 m!4825163))

(declare-fun m!4825165 () Bool)

(assert (=> tb!254735 m!4825165))

(assert (=> b!4239725 t!350548))

(declare-fun b_and!335297 () Bool)

(assert (= b_and!335287 (and (=> t!350548 result!310680) b_and!335297)))

(declare-fun t!350550 () Bool)

(declare-fun tb!254737 () Bool)

(assert (=> (and b!4239632 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350550) tb!254737))

(declare-fun result!310682 () Bool)

(assert (= result!310682 result!310680))

(assert (=> b!4239725 t!350550))

(declare-fun b_and!335299 () Bool)

(assert (= b_and!335291 (and (=> t!350550 result!310682) b_and!335299)))

(declare-fun t!350552 () Bool)

(declare-fun tb!254739 () Bool)

(assert (=> (and b!4239244 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350552) tb!254739))

(declare-fun result!310684 () Bool)

(assert (= result!310684 result!310680))

(assert (=> b!4239725 t!350552))

(declare-fun b_and!335301 () Bool)

(assert (= b_and!335285 (and (=> t!350552 result!310684) b_and!335301)))

(declare-fun t!350554 () Bool)

(declare-fun tb!254741 () Bool)

(assert (=> (and b!4239252 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350554) tb!254741))

(declare-fun result!310686 () Bool)

(assert (= result!310686 result!310680))

(assert (=> b!4239725 t!350554))

(declare-fun b_and!335303 () Bool)

(assert (= b_and!335295 (and (=> t!350554 result!310686) b_and!335303)))

(declare-fun t!350556 () Bool)

(declare-fun tb!254743 () Bool)

(assert (=> (and b!4239605 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350556) tb!254743))

(declare-fun result!310688 () Bool)

(assert (= result!310688 result!310680))

(assert (=> b!4239725 t!350556))

(declare-fun b_and!335305 () Bool)

(assert (= b_and!335289 (and (=> t!350556 result!310688) b_and!335305)))

(declare-fun tb!254745 () Bool)

(declare-fun t!350558 () Bool)

(assert (=> (and b!4239628 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350558) tb!254745))

(declare-fun result!310690 () Bool)

(assert (= result!310690 result!310680))

(assert (=> b!4239725 t!350558))

(declare-fun b_and!335307 () Bool)

(assert (= b_and!335293 (and (=> t!350558 result!310690) b_and!335307)))

(declare-fun m!4825167 () Bool)

(assert (=> d!1247291 m!4825167))

(declare-fun m!4825169 () Bool)

(assert (=> b!4239725 m!4825169))

(assert (=> b!4239725 m!4825169))

(declare-fun m!4825171 () Bool)

(assert (=> b!4239725 m!4825171))

(declare-fun m!4825173 () Bool)

(assert (=> b!4239726 m!4825173))

(assert (=> b!4239629 d!1247291))

(declare-fun d!1247293 () Bool)

(assert (=> d!1247293 true))

(declare-fun order!24683 () Int)

(declare-fun lambda!130130 () Int)

(declare-fun order!24685 () Int)

(declare-fun dynLambda!20104 (Int Int) Int)

(declare-fun dynLambda!20105 (Int Int) Int)

(assert (=> d!1247293 (< (dynLambda!20104 order!24683 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (dynLambda!20105 order!24685 lambda!130130))))

(assert (=> d!1247293 true))

(declare-fun order!24687 () Int)

(declare-fun dynLambda!20106 (Int Int) Int)

(assert (=> d!1247293 (< (dynLambda!20106 order!24687 (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (dynLambda!20105 order!24685 lambda!130130))))

(declare-fun Forall!1596 (Int) Bool)

(assert (=> d!1247293 (= (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (Forall!1596 lambda!130130))))

(declare-fun bs!598331 () Bool)

(assert (= bs!598331 d!1247293))

(declare-fun m!4825675 () Bool)

(assert (=> bs!598331 m!4825675))

(assert (=> d!1247181 d!1247293))

(declare-fun d!1247479 () Bool)

(declare-fun lt!1506491 () Int)

(assert (=> d!1247479 (>= lt!1506491 0)))

(declare-fun e!2633028 () Int)

(assert (=> d!1247479 (= lt!1506491 e!2633028)))

(declare-fun c!720466 () Bool)

(assert (=> d!1247479 (= c!720466 ((_ is Nil!46873) (t!350410 longerInput!51)))))

(assert (=> d!1247479 (= (size!34338 (t!350410 longerInput!51)) lt!1506491)))

(declare-fun b!4240120 () Bool)

(assert (=> b!4240120 (= e!2633028 0)))

(declare-fun b!4240121 () Bool)

(assert (=> b!4240121 (= e!2633028 (+ 1 (size!34338 (t!350410 (t!350410 longerInput!51)))))))

(assert (= (and d!1247479 c!720466) b!4240120))

(assert (= (and d!1247479 (not c!720466)) b!4240121))

(declare-fun m!4825677 () Bool)

(assert (=> b!4240121 m!4825677))

(assert (=> b!4239276 d!1247479))

(declare-fun d!1247481 () Bool)

(declare-fun lt!1506492 () Int)

(assert (=> d!1247481 (>= lt!1506492 0)))

(declare-fun e!2633029 () Int)

(assert (=> d!1247481 (= lt!1506492 e!2633029)))

(declare-fun c!720467 () Bool)

(assert (=> d!1247481 (= c!720467 ((_ is Nil!46873) (_2!25359 (get!15242 lt!1506370))))))

(assert (=> d!1247481 (= (size!34338 (_2!25359 (get!15242 lt!1506370))) lt!1506492)))

(declare-fun b!4240122 () Bool)

(assert (=> b!4240122 (= e!2633029 0)))

(declare-fun b!4240123 () Bool)

(assert (=> b!4240123 (= e!2633029 (+ 1 (size!34338 (t!350410 (_2!25359 (get!15242 lt!1506370))))))))

(assert (= (and d!1247481 c!720467) b!4240122))

(assert (= (and d!1247481 (not c!720467)) b!4240123))

(declare-fun m!4825679 () Bool)

(assert (=> b!4240123 m!4825679))

(assert (=> b!4239425 d!1247481))

(assert (=> b!4239425 d!1247283))

(assert (=> b!4239425 d!1247157))

(declare-fun d!1247483 () Bool)

(assert (=> d!1247483 (= (isEmpty!27711 lt!1506375) (not ((_ is Some!10059) lt!1506375)))))

(assert (=> d!1247207 d!1247483))

(declare-fun b!4240132 () Bool)

(declare-fun e!2633038 () Bool)

(declare-fun e!2633037 () Bool)

(assert (=> b!4240132 (= e!2633038 e!2633037)))

(declare-fun res!1743609 () Bool)

(assert (=> b!4240132 (=> (not res!1743609) (not e!2633037))))

(assert (=> b!4240132 (= res!1743609 (not ((_ is Nil!46873) longerInput!51)))))

(declare-fun b!4240135 () Bool)

(declare-fun e!2633036 () Bool)

(assert (=> b!4240135 (= e!2633036 (>= (size!34338 longerInput!51) (size!34338 longerInput!51)))))

(declare-fun d!1247485 () Bool)

(assert (=> d!1247485 e!2633036))

(declare-fun res!1743606 () Bool)

(assert (=> d!1247485 (=> res!1743606 e!2633036)))

(declare-fun lt!1506495 () Bool)

(assert (=> d!1247485 (= res!1743606 (not lt!1506495))))

(assert (=> d!1247485 (= lt!1506495 e!2633038)))

(declare-fun res!1743607 () Bool)

(assert (=> d!1247485 (=> res!1743607 e!2633038)))

(assert (=> d!1247485 (= res!1743607 ((_ is Nil!46873) longerInput!51))))

(assert (=> d!1247485 (= (isPrefix!4723 longerInput!51 longerInput!51) lt!1506495)))

(declare-fun b!4240134 () Bool)

(assert (=> b!4240134 (= e!2633037 (isPrefix!4723 (tail!6840 longerInput!51) (tail!6840 longerInput!51)))))

(declare-fun b!4240133 () Bool)

(declare-fun res!1743608 () Bool)

(assert (=> b!4240133 (=> (not res!1743608) (not e!2633037))))

(assert (=> b!4240133 (= res!1743608 (= (head!8987 longerInput!51) (head!8987 longerInput!51)))))

(assert (= (and d!1247485 (not res!1743607)) b!4240132))

(assert (= (and b!4240132 res!1743609) b!4240133))

(assert (= (and b!4240133 res!1743608) b!4240134))

(assert (= (and d!1247485 (not res!1743606)) b!4240135))

(assert (=> b!4240135 m!4824619))

(assert (=> b!4240135 m!4824619))

(declare-fun m!4825681 () Bool)

(assert (=> b!4240134 m!4825681))

(assert (=> b!4240134 m!4825681))

(assert (=> b!4240134 m!4825681))

(assert (=> b!4240134 m!4825681))

(declare-fun m!4825683 () Bool)

(assert (=> b!4240134 m!4825683))

(declare-fun m!4825685 () Bool)

(assert (=> b!4240133 m!4825685))

(assert (=> b!4240133 m!4825685))

(assert (=> d!1247207 d!1247485))

(declare-fun d!1247487 () Bool)

(assert (=> d!1247487 (isPrefix!4723 longerInput!51 longerInput!51)))

(declare-fun lt!1506498 () Unit!65963)

(declare-fun choose!25946 (List!46997 List!46997) Unit!65963)

(assert (=> d!1247487 (= lt!1506498 (choose!25946 longerInput!51 longerInput!51))))

(assert (=> d!1247487 (= (lemmaIsPrefixRefl!3120 longerInput!51 longerInput!51) lt!1506498)))

(declare-fun bs!598332 () Bool)

(assert (= bs!598332 d!1247487))

(assert (=> bs!598332 m!4824939))

(declare-fun m!4825687 () Bool)

(assert (=> bs!598332 m!4825687))

(assert (=> d!1247207 d!1247487))

(declare-fun d!1247489 () Bool)

(assert (=> d!1247489 true))

(declare-fun lt!1506501 () Bool)

(declare-fun lambda!130133 () Int)

(declare-fun forall!8536 (List!46999 Int) Bool)

(assert (=> d!1247489 (= lt!1506501 (forall!8536 rules!2932 lambda!130133))))

(declare-fun e!2633044 () Bool)

(assert (=> d!1247489 (= lt!1506501 e!2633044)))

(declare-fun res!1743614 () Bool)

(assert (=> d!1247489 (=> res!1743614 e!2633044)))

(assert (=> d!1247489 (= res!1743614 (not ((_ is Cons!46875) rules!2932)))))

(assert (=> d!1247489 (= (rulesValidInductive!2972 thiss!21540 rules!2932) lt!1506501)))

(declare-fun b!4240140 () Bool)

(declare-fun e!2633043 () Bool)

(assert (=> b!4240140 (= e!2633044 e!2633043)))

(declare-fun res!1743615 () Bool)

(assert (=> b!4240140 (=> (not res!1743615) (not e!2633043))))

(declare-fun ruleValid!3600 (LexerInterface!7519 Rule!15648) Bool)

(assert (=> b!4240140 (= res!1743615 (ruleValid!3600 thiss!21540 (h!52295 rules!2932)))))

(declare-fun b!4240141 () Bool)

(assert (=> b!4240141 (= e!2633043 (rulesValidInductive!2972 thiss!21540 (t!350412 rules!2932)))))

(assert (= (and d!1247489 (not res!1743614)) b!4240140))

(assert (= (and b!4240140 res!1743615) b!4240141))

(declare-fun m!4825689 () Bool)

(assert (=> d!1247489 m!4825689))

(declare-fun m!4825691 () Bool)

(assert (=> b!4240140 m!4825691))

(assert (=> b!4240141 m!4825095))

(assert (=> d!1247207 d!1247489))

(declare-fun d!1247491 () Bool)

(assert (=> d!1247491 (= (isDefined!7438 lt!1506375) (not (isEmpty!27711 lt!1506375)))))

(declare-fun bs!598333 () Bool)

(assert (= bs!598333 d!1247491))

(assert (=> bs!598333 m!4824937))

(assert (=> b!4239436 d!1247491))

(declare-fun d!1247493 () Bool)

(assert (=> d!1247493 (= (inv!61610 (tag!8788 (rule!11050 (h!52294 (t!350411 tokens!581))))) (= (mod (str.len (value!246369 (tag!8788 (rule!11050 (h!52294 (t!350411 tokens!581)))))) 2) 0))))

(assert (=> b!4239631 d!1247493))

(declare-fun d!1247495 () Bool)

(declare-fun res!1743616 () Bool)

(declare-fun e!2633045 () Bool)

(assert (=> d!1247495 (=> (not res!1743616) (not e!2633045))))

(assert (=> d!1247495 (= res!1743616 (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))))))

(assert (=> d!1247495 (= (inv!61613 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) e!2633045)))

(declare-fun b!4240144 () Bool)

(assert (=> b!4240144 (= e!2633045 (equivClasses!3345 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))))))

(assert (= (and d!1247495 res!1743616) b!4240144))

(declare-fun m!4825693 () Bool)

(assert (=> d!1247495 m!4825693))

(declare-fun m!4825695 () Bool)

(assert (=> b!4240144 m!4825695))

(assert (=> b!4239631 d!1247495))

(declare-fun bs!598334 () Bool)

(declare-fun d!1247497 () Bool)

(assert (= bs!598334 (and d!1247497 d!1247293)))

(declare-fun lambda!130134 () Int)

(assert (=> bs!598334 (= (and (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))))) (= lambda!130134 lambda!130130))))

(assert (=> d!1247497 true))

(assert (=> d!1247497 (< (dynLambda!20104 order!24683 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (dynLambda!20105 order!24685 lambda!130134))))

(assert (=> d!1247497 true))

(assert (=> d!1247497 (< (dynLambda!20106 order!24687 (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (dynLambda!20105 order!24685 lambda!130134))))

(assert (=> d!1247497 (= (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (Forall!1596 lambda!130134))))

(declare-fun bs!598335 () Bool)

(assert (= bs!598335 d!1247497))

(declare-fun m!4825697 () Bool)

(assert (=> bs!598335 m!4825697))

(assert (=> d!1247147 d!1247497))

(declare-fun call!293838 () Option!10060)

(declare-fun bm!293833 () Bool)

(assert (=> bm!293833 (= call!293838 (maxPrefixOneRule!3448 thiss!21540 (h!52295 (t!350412 rules!2932)) longerInput!51))))

(declare-fun b!4240145 () Bool)

(declare-fun res!1743621 () Bool)

(declare-fun e!2633048 () Bool)

(assert (=> b!4240145 (=> (not res!1743621) (not e!2633048))))

(declare-fun lt!1506504 () Option!10060)

(assert (=> b!4240145 (= res!1743621 (< (size!34338 (_2!25359 (get!15242 lt!1506504))) (size!34338 longerInput!51)))))

(declare-fun b!4240146 () Bool)

(declare-fun e!2633047 () Option!10060)

(assert (=> b!4240146 (= e!2633047 call!293838)))

(declare-fun b!4240147 () Bool)

(declare-fun e!2633046 () Bool)

(assert (=> b!4240147 (= e!2633046 e!2633048)))

(declare-fun res!1743620 () Bool)

(assert (=> b!4240147 (=> (not res!1743620) (not e!2633048))))

(assert (=> b!4240147 (= res!1743620 (isDefined!7438 lt!1506504))))

(declare-fun b!4240148 () Bool)

(declare-fun res!1743617 () Bool)

(assert (=> b!4240148 (=> (not res!1743617) (not e!2633048))))

(assert (=> b!4240148 (= res!1743617 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506504)))) (_2!25359 (get!15242 lt!1506504))) longerInput!51))))

(declare-fun b!4240149 () Bool)

(declare-fun lt!1506503 () Option!10060)

(declare-fun lt!1506506 () Option!10060)

(assert (=> b!4240149 (= e!2633047 (ite (and ((_ is None!10059) lt!1506503) ((_ is None!10059) lt!1506506)) None!10059 (ite ((_ is None!10059) lt!1506506) lt!1506503 (ite ((_ is None!10059) lt!1506503) lt!1506506 (ite (>= (size!34337 (_1!25359 (v!41009 lt!1506503))) (size!34337 (_1!25359 (v!41009 lt!1506506)))) lt!1506503 lt!1506506)))))))

(assert (=> b!4240149 (= lt!1506503 call!293838)))

(assert (=> b!4240149 (= lt!1506506 (maxPrefix!4477 thiss!21540 (t!350412 (t!350412 rules!2932)) longerInput!51))))

(declare-fun d!1247499 () Bool)

(assert (=> d!1247499 e!2633046))

(declare-fun res!1743622 () Bool)

(assert (=> d!1247499 (=> res!1743622 e!2633046)))

(assert (=> d!1247499 (= res!1743622 (isEmpty!27711 lt!1506504))))

(assert (=> d!1247499 (= lt!1506504 e!2633047)))

(declare-fun c!720468 () Bool)

(assert (=> d!1247499 (= c!720468 (and ((_ is Cons!46875) (t!350412 rules!2932)) ((_ is Nil!46875) (t!350412 (t!350412 rules!2932)))))))

(declare-fun lt!1506505 () Unit!65963)

(declare-fun lt!1506502 () Unit!65963)

(assert (=> d!1247499 (= lt!1506505 lt!1506502)))

(assert (=> d!1247499 (isPrefix!4723 longerInput!51 longerInput!51)))

(assert (=> d!1247499 (= lt!1506502 (lemmaIsPrefixRefl!3120 longerInput!51 longerInput!51))))

(assert (=> d!1247499 (rulesValidInductive!2972 thiss!21540 (t!350412 rules!2932))))

(assert (=> d!1247499 (= (maxPrefix!4477 thiss!21540 (t!350412 rules!2932) longerInput!51) lt!1506504)))

(declare-fun b!4240150 () Bool)

(declare-fun res!1743623 () Bool)

(assert (=> b!4240150 (=> (not res!1743623) (not e!2633048))))

(assert (=> b!4240150 (= res!1743623 (= (value!246370 (_1!25359 (get!15242 lt!1506504))) (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506504)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506504)))))))))

(declare-fun b!4240151 () Bool)

(declare-fun res!1743619 () Bool)

(assert (=> b!4240151 (=> (not res!1743619) (not e!2633048))))

(assert (=> b!4240151 (= res!1743619 (matchR!6445 (regex!7924 (rule!11050 (_1!25359 (get!15242 lt!1506504)))) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506504))))))))

(declare-fun b!4240152 () Bool)

(assert (=> b!4240152 (= e!2633048 (contains!9725 (t!350412 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506504)))))))

(declare-fun b!4240153 () Bool)

(declare-fun res!1743618 () Bool)

(assert (=> b!4240153 (=> (not res!1743618) (not e!2633048))))

(assert (=> b!4240153 (= res!1743618 (= (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506504)))) (originalCharacters!8268 (_1!25359 (get!15242 lt!1506504)))))))

(assert (= (and d!1247499 c!720468) b!4240146))

(assert (= (and d!1247499 (not c!720468)) b!4240149))

(assert (= (or b!4240146 b!4240149) bm!293833))

(assert (= (and d!1247499 (not res!1743622)) b!4240147))

(assert (= (and b!4240147 res!1743620) b!4240153))

(assert (= (and b!4240153 res!1743618) b!4240145))

(assert (= (and b!4240145 res!1743621) b!4240148))

(assert (= (and b!4240148 res!1743617) b!4240150))

(assert (= (and b!4240150 res!1743623) b!4240151))

(assert (= (and b!4240151 res!1743619) b!4240152))

(declare-fun m!4825699 () Bool)

(assert (=> bm!293833 m!4825699))

(declare-fun m!4825701 () Bool)

(assert (=> b!4240148 m!4825701))

(declare-fun m!4825703 () Bool)

(assert (=> b!4240148 m!4825703))

(assert (=> b!4240148 m!4825703))

(declare-fun m!4825705 () Bool)

(assert (=> b!4240148 m!4825705))

(assert (=> b!4240148 m!4825705))

(declare-fun m!4825707 () Bool)

(assert (=> b!4240148 m!4825707))

(declare-fun m!4825709 () Bool)

(assert (=> b!4240149 m!4825709))

(assert (=> b!4240152 m!4825701))

(declare-fun m!4825711 () Bool)

(assert (=> b!4240152 m!4825711))

(assert (=> b!4240145 m!4825701))

(declare-fun m!4825713 () Bool)

(assert (=> b!4240145 m!4825713))

(assert (=> b!4240145 m!4824619))

(declare-fun m!4825715 () Bool)

(assert (=> b!4240147 m!4825715))

(assert (=> b!4240153 m!4825701))

(assert (=> b!4240153 m!4825703))

(assert (=> b!4240153 m!4825703))

(assert (=> b!4240153 m!4825705))

(assert (=> b!4240150 m!4825701))

(declare-fun m!4825717 () Bool)

(assert (=> b!4240150 m!4825717))

(assert (=> b!4240150 m!4825717))

(declare-fun m!4825719 () Bool)

(assert (=> b!4240150 m!4825719))

(assert (=> b!4240151 m!4825701))

(assert (=> b!4240151 m!4825703))

(assert (=> b!4240151 m!4825703))

(assert (=> b!4240151 m!4825705))

(assert (=> b!4240151 m!4825705))

(declare-fun m!4825721 () Bool)

(assert (=> b!4240151 m!4825721))

(declare-fun m!4825723 () Bool)

(assert (=> d!1247499 m!4825723))

(assert (=> d!1247499 m!4824939))

(assert (=> d!1247499 m!4824941))

(assert (=> d!1247499 m!4825095))

(assert (=> b!4239438 d!1247499))

(declare-fun d!1247501 () Bool)

(assert (=> d!1247501 (= (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))) (isBalanced!3758 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))))))

(declare-fun bs!598336 () Bool)

(assert (= bs!598336 d!1247501))

(declare-fun m!4825725 () Bool)

(assert (=> bs!598336 m!4825725))

(assert (=> tb!254627 d!1247501))

(declare-fun d!1247503 () Bool)

(declare-fun lt!1506507 () Int)

(assert (=> d!1247503 (>= lt!1506507 0)))

(declare-fun e!2633049 () Int)

(assert (=> d!1247503 (= lt!1506507 e!2633049)))

(declare-fun c!720469 () Bool)

(assert (=> d!1247503 (= c!720469 ((_ is Nil!46873) (originalCharacters!8268 (h!52294 addTokens!17))))))

(assert (=> d!1247503 (= (size!34338 (originalCharacters!8268 (h!52294 addTokens!17))) lt!1506507)))

(declare-fun b!4240154 () Bool)

(assert (=> b!4240154 (= e!2633049 0)))

(declare-fun b!4240155 () Bool)

(assert (=> b!4240155 (= e!2633049 (+ 1 (size!34338 (t!350410 (originalCharacters!8268 (h!52294 addTokens!17))))))))

(assert (= (and d!1247503 c!720469) b!4240154))

(assert (= (and d!1247503 (not c!720469)) b!4240155))

(declare-fun m!4825727 () Bool)

(assert (=> b!4240155 m!4825727))

(assert (=> b!4239348 d!1247503))

(declare-fun b!4240157 () Bool)

(declare-fun e!2633051 () List!46997)

(assert (=> b!4240157 (= e!2633051 (Cons!46873 (h!52293 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))) (++!11935 (t!350410 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))) (_2!25359 (v!41009 lt!1506312)))))))

(declare-fun b!4240158 () Bool)

(declare-fun res!1743624 () Bool)

(declare-fun e!2633050 () Bool)

(assert (=> b!4240158 (=> (not res!1743624) (not e!2633050))))

(declare-fun lt!1506508 () List!46997)

(assert (=> b!4240158 (= res!1743624 (= (size!34338 lt!1506508) (+ (size!34338 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))) (size!34338 (_2!25359 (v!41009 lt!1506312))))))))

(declare-fun b!4240159 () Bool)

(assert (=> b!4240159 (= e!2633050 (or (not (= (_2!25359 (v!41009 lt!1506312)) Nil!46873)) (= lt!1506508 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))))

(declare-fun d!1247505 () Bool)

(assert (=> d!1247505 e!2633050))

(declare-fun res!1743625 () Bool)

(assert (=> d!1247505 (=> (not res!1743625) (not e!2633050))))

(assert (=> d!1247505 (= res!1743625 (= (content!7369 lt!1506508) ((_ map or) (content!7369 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))) (content!7369 (_2!25359 (v!41009 lt!1506312))))))))

(assert (=> d!1247505 (= lt!1506508 e!2633051)))

(declare-fun c!720470 () Bool)

(assert (=> d!1247505 (= c!720470 ((_ is Nil!46873) (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))))))

(assert (=> d!1247505 (= (++!11935 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) (_2!25359 (v!41009 lt!1506312))) lt!1506508)))

(declare-fun b!4240156 () Bool)

(assert (=> b!4240156 (= e!2633051 (_2!25359 (v!41009 lt!1506312)))))

(assert (= (and d!1247505 c!720470) b!4240156))

(assert (= (and d!1247505 (not c!720470)) b!4240157))

(assert (= (and d!1247505 res!1743625) b!4240158))

(assert (= (and b!4240158 res!1743624) b!4240159))

(declare-fun m!4825729 () Bool)

(assert (=> b!4240157 m!4825729))

(declare-fun m!4825731 () Bool)

(assert (=> b!4240158 m!4825731))

(declare-fun m!4825733 () Bool)

(assert (=> b!4240158 m!4825733))

(assert (=> b!4240158 m!4824727))

(declare-fun m!4825735 () Bool)

(assert (=> d!1247505 m!4825735))

(declare-fun m!4825737 () Bool)

(assert (=> d!1247505 m!4825737))

(assert (=> d!1247505 m!4824733))

(assert (=> b!4239320 d!1247505))

(declare-fun d!1247507 () Bool)

(assert (=> d!1247507 (= (list!16901 lt!1506333) (list!16903 (c!720323 lt!1506333)))))

(declare-fun bs!598337 () Bool)

(assert (= bs!598337 d!1247507))

(declare-fun m!4825739 () Bool)

(assert (=> bs!598337 m!4825739))

(assert (=> d!1247177 d!1247507))

(declare-fun d!1247509 () Bool)

(declare-fun charsToBigInt!1 (List!46996) Int)

(assert (=> d!1247509 (= (inv!17 (value!246370 (h!52294 tokens!581))) (= (charsToBigInt!1 (text!57526 (value!246370 (h!52294 tokens!581)))) (value!246362 (value!246370 (h!52294 tokens!581)))))))

(declare-fun bs!598338 () Bool)

(assert (= bs!598338 d!1247509))

(declare-fun m!4825741 () Bool)

(assert (=> bs!598338 m!4825741))

(assert (=> b!4239517 d!1247509))

(declare-fun d!1247511 () Bool)

(declare-fun c!720473 () Bool)

(assert (=> d!1247511 (= c!720473 ((_ is Nil!46873) lt!1506322))))

(declare-fun e!2633054 () (InoxSet C!25856))

(assert (=> d!1247511 (= (content!7369 lt!1506322) e!2633054)))

(declare-fun b!4240164 () Bool)

(assert (=> b!4240164 (= e!2633054 ((as const (Array C!25856 Bool)) false))))

(declare-fun b!4240165 () Bool)

(assert (=> b!4240165 (= e!2633054 ((_ map or) (store ((as const (Array C!25856 Bool)) false) (h!52293 lt!1506322) true) (content!7369 (t!350410 lt!1506322))))))

(assert (= (and d!1247511 c!720473) b!4240164))

(assert (= (and d!1247511 (not c!720473)) b!4240165))

(declare-fun m!4825743 () Bool)

(assert (=> b!4240165 m!4825743))

(declare-fun m!4825745 () Bool)

(assert (=> b!4240165 m!4825745))

(assert (=> d!1247159 d!1247511))

(declare-fun d!1247513 () Bool)

(declare-fun c!720474 () Bool)

(assert (=> d!1247513 (= c!720474 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))

(declare-fun e!2633055 () (InoxSet C!25856))

(assert (=> d!1247513 (= (content!7369 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) e!2633055)))

(declare-fun b!4240166 () Bool)

(assert (=> b!4240166 (= e!2633055 ((as const (Array C!25856 Bool)) false))))

(declare-fun b!4240167 () Bool)

(assert (=> b!4240167 (= e!2633055 ((_ map or) (store ((as const (Array C!25856 Bool)) false) (h!52293 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) true) (content!7369 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))))

(assert (= (and d!1247513 c!720474) b!4240166))

(assert (= (and d!1247513 (not c!720474)) b!4240167))

(declare-fun m!4825747 () Bool)

(assert (=> b!4240167 m!4825747))

(declare-fun m!4825749 () Bool)

(assert (=> b!4240167 m!4825749))

(assert (=> d!1247159 d!1247513))

(declare-fun d!1247515 () Bool)

(declare-fun c!720475 () Bool)

(assert (=> d!1247515 (= c!720475 ((_ is Nil!46873) (_2!25359 (v!41009 lt!1506311))))))

(declare-fun e!2633056 () (InoxSet C!25856))

(assert (=> d!1247515 (= (content!7369 (_2!25359 (v!41009 lt!1506311))) e!2633056)))

(declare-fun b!4240168 () Bool)

(assert (=> b!4240168 (= e!2633056 ((as const (Array C!25856 Bool)) false))))

(declare-fun b!4240169 () Bool)

(assert (=> b!4240169 (= e!2633056 ((_ map or) (store ((as const (Array C!25856 Bool)) false) (h!52293 (_2!25359 (v!41009 lt!1506311))) true) (content!7369 (t!350410 (_2!25359 (v!41009 lt!1506311))))))))

(assert (= (and d!1247515 c!720475) b!4240168))

(assert (= (and d!1247515 (not c!720475)) b!4240169))

(declare-fun m!4825751 () Bool)

(assert (=> b!4240169 m!4825751))

(declare-fun m!4825753 () Bool)

(assert (=> b!4240169 m!4825753))

(assert (=> d!1247159 d!1247515))

(declare-fun d!1247517 () Bool)

(declare-fun lt!1506511 () Bool)

(declare-fun content!7371 (List!46999) (InoxSet Rule!15648))

(assert (=> d!1247517 (= lt!1506511 (select (content!7371 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506370)))))))

(declare-fun e!2633061 () Bool)

(assert (=> d!1247517 (= lt!1506511 e!2633061)))

(declare-fun res!1743630 () Bool)

(assert (=> d!1247517 (=> (not res!1743630) (not e!2633061))))

(assert (=> d!1247517 (= res!1743630 ((_ is Cons!46875) rules!2932))))

(assert (=> d!1247517 (= (contains!9725 rules!2932 (rule!11050 (_1!25359 (get!15242 lt!1506370)))) lt!1506511)))

(declare-fun b!4240174 () Bool)

(declare-fun e!2633062 () Bool)

(assert (=> b!4240174 (= e!2633061 e!2633062)))

(declare-fun res!1743631 () Bool)

(assert (=> b!4240174 (=> res!1743631 e!2633062)))

(assert (=> b!4240174 (= res!1743631 (= (h!52295 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506370)))))))

(declare-fun b!4240175 () Bool)

(assert (=> b!4240175 (= e!2633062 (contains!9725 (t!350412 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506370)))))))

(assert (= (and d!1247517 res!1743630) b!4240174))

(assert (= (and b!4240174 (not res!1743631)) b!4240175))

(declare-fun m!4825755 () Bool)

(assert (=> d!1247517 m!4825755))

(declare-fun m!4825757 () Bool)

(assert (=> d!1247517 m!4825757))

(declare-fun m!4825759 () Bool)

(assert (=> b!4240175 m!4825759))

(assert (=> b!4239432 d!1247517))

(assert (=> b!4239432 d!1247283))

(declare-fun d!1247519 () Bool)

(declare-fun charsToBigInt!0 (List!46996 Int) Int)

(assert (=> d!1247519 (= (inv!15 (value!246370 (h!52294 tokens!581))) (= (charsToBigInt!0 (text!57527 (value!246370 (h!52294 tokens!581))) 0) (value!246365 (value!246370 (h!52294 tokens!581)))))))

(declare-fun bs!598339 () Bool)

(assert (= bs!598339 d!1247519))

(declare-fun m!4825761 () Bool)

(assert (=> bs!598339 m!4825761))

(assert (=> b!4239519 d!1247519))

(declare-fun d!1247521 () Bool)

(declare-fun c!720476 () Bool)

(assert (=> d!1247521 (= c!720476 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))))))

(declare-fun e!2633063 () Bool)

(assert (=> d!1247521 (= (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))) e!2633063)))

(declare-fun b!4240176 () Bool)

(assert (=> b!4240176 (= e!2633063 (inv!61621 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))))))

(declare-fun b!4240177 () Bool)

(declare-fun e!2633064 () Bool)

(assert (=> b!4240177 (= e!2633063 e!2633064)))

(declare-fun res!1743632 () Bool)

(assert (=> b!4240177 (= res!1743632 (not ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))))))))

(assert (=> b!4240177 (=> res!1743632 e!2633064)))

(declare-fun b!4240178 () Bool)

(assert (=> b!4240178 (= e!2633064 (inv!61622 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))))))

(assert (= (and d!1247521 c!720476) b!4240176))

(assert (= (and d!1247521 (not c!720476)) b!4240177))

(assert (= (and b!4240177 (not res!1743632)) b!4240178))

(declare-fun m!4825763 () Bool)

(assert (=> b!4240176 m!4825763))

(declare-fun m!4825765 () Bool)

(assert (=> b!4240178 m!4825765))

(assert (=> b!4239349 d!1247521))

(declare-fun d!1247523 () Bool)

(declare-fun lt!1506512 () Int)

(assert (=> d!1247523 (>= lt!1506512 0)))

(declare-fun e!2633065 () Int)

(assert (=> d!1247523 (= lt!1506512 e!2633065)))

(declare-fun c!720477 () Bool)

(assert (=> d!1247523 (= c!720477 ((_ is Nil!46873) lt!1506322))))

(assert (=> d!1247523 (= (size!34338 lt!1506322) lt!1506512)))

(declare-fun b!4240179 () Bool)

(assert (=> b!4240179 (= e!2633065 0)))

(declare-fun b!4240180 () Bool)

(assert (=> b!4240180 (= e!2633065 (+ 1 (size!34338 (t!350410 lt!1506322))))))

(assert (= (and d!1247523 c!720477) b!4240179))

(assert (= (and d!1247523 (not c!720477)) b!4240180))

(declare-fun m!4825767 () Bool)

(assert (=> b!4240180 m!4825767))

(assert (=> b!4239301 d!1247523))

(declare-fun d!1247525 () Bool)

(declare-fun lt!1506513 () Int)

(assert (=> d!1247525 (>= lt!1506513 0)))

(declare-fun e!2633066 () Int)

(assert (=> d!1247525 (= lt!1506513 e!2633066)))

(declare-fun c!720478 () Bool)

(assert (=> d!1247525 (= c!720478 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))

(assert (=> d!1247525 (= (size!34338 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) lt!1506513)))

(declare-fun b!4240181 () Bool)

(assert (=> b!4240181 (= e!2633066 0)))

(declare-fun b!4240182 () Bool)

(assert (=> b!4240182 (= e!2633066 (+ 1 (size!34338 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))))

(assert (= (and d!1247525 c!720478) b!4240181))

(assert (= (and d!1247525 (not c!720478)) b!4240182))

(declare-fun m!4825769 () Bool)

(assert (=> b!4240182 m!4825769))

(assert (=> b!4239301 d!1247525))

(declare-fun d!1247527 () Bool)

(declare-fun lt!1506514 () Int)

(assert (=> d!1247527 (>= lt!1506514 0)))

(declare-fun e!2633067 () Int)

(assert (=> d!1247527 (= lt!1506514 e!2633067)))

(declare-fun c!720479 () Bool)

(assert (=> d!1247527 (= c!720479 ((_ is Nil!46873) (_2!25359 (v!41009 lt!1506311))))))

(assert (=> d!1247527 (= (size!34338 (_2!25359 (v!41009 lt!1506311))) lt!1506514)))

(declare-fun b!4240183 () Bool)

(assert (=> b!4240183 (= e!2633067 0)))

(declare-fun b!4240184 () Bool)

(assert (=> b!4240184 (= e!2633067 (+ 1 (size!34338 (t!350410 (_2!25359 (v!41009 lt!1506311))))))))

(assert (= (and d!1247527 c!720479) b!4240183))

(assert (= (and d!1247527 (not c!720479)) b!4240184))

(declare-fun m!4825771 () Bool)

(assert (=> b!4240184 m!4825771))

(assert (=> b!4239301 d!1247527))

(declare-fun bs!598340 () Bool)

(declare-fun d!1247529 () Bool)

(assert (= bs!598340 (and d!1247529 d!1247293)))

(declare-fun lambda!130135 () Int)

(assert (=> bs!598340 (= (and (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (= (toValue!10676 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))))) (= lambda!130135 lambda!130130))))

(declare-fun bs!598341 () Bool)

(assert (= bs!598341 (and d!1247529 d!1247497)))

(assert (=> bs!598341 (= (and (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (= (toValue!10676 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581)))))) (= lambda!130135 lambda!130134))))

(assert (=> d!1247529 true))

(assert (=> d!1247529 (< (dynLambda!20104 order!24683 (toChars!10535 (transformation!7924 (h!52295 rules!2932)))) (dynLambda!20105 order!24685 lambda!130135))))

(assert (=> d!1247529 true))

(assert (=> d!1247529 (< (dynLambda!20106 order!24687 (toValue!10676 (transformation!7924 (h!52295 rules!2932)))) (dynLambda!20105 order!24685 lambda!130135))))

(assert (=> d!1247529 (= (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (h!52295 rules!2932)))) (Forall!1596 lambda!130135))))

(declare-fun bs!598342 () Bool)

(assert (= bs!598342 d!1247529))

(declare-fun m!4825773 () Bool)

(assert (=> bs!598342 m!4825773))

(assert (=> d!1247151 d!1247529))

(declare-fun d!1247531 () Bool)

(declare-fun lt!1506515 () Int)

(assert (=> d!1247531 (>= lt!1506515 0)))

(declare-fun e!2633068 () Int)

(assert (=> d!1247531 (= lt!1506515 e!2633068)))

(declare-fun c!720480 () Bool)

(assert (=> d!1247531 (= c!720480 ((_ is Nil!46873) (_2!25360 lt!1506399)))))

(assert (=> d!1247531 (= (size!34338 (_2!25360 lt!1506399)) lt!1506515)))

(declare-fun b!4240185 () Bool)

(assert (=> b!4240185 (= e!2633068 0)))

(declare-fun b!4240186 () Bool)

(assert (=> b!4240186 (= e!2633068 (+ 1 (size!34338 (t!350410 (_2!25360 lt!1506399)))))))

(assert (= (and d!1247531 c!720480) b!4240185))

(assert (= (and d!1247531 (not c!720480)) b!4240186))

(declare-fun m!4825775 () Bool)

(assert (=> b!4240186 m!4825775))

(assert (=> b!4239565 d!1247531))

(assert (=> b!4239565 d!1247153))

(declare-fun d!1247533 () Bool)

(assert (=> d!1247533 (= (list!16901 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))) (list!16903 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))))))

(declare-fun bs!598343 () Bool)

(assert (= bs!598343 d!1247533))

(declare-fun m!4825777 () Bool)

(assert (=> bs!598343 m!4825777))

(assert (=> b!4239350 d!1247533))

(assert (=> b!4239439 d!1247269))

(declare-fun d!1247535 () Bool)

(declare-fun dynLambda!20107 (Int BalanceConc!27864) TokenValue!8154)

(assert (=> d!1247535 (= (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375))))) (dynLambda!20107 (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375))))))))

(declare-fun b_lambda!124847 () Bool)

(assert (=> (not b_lambda!124847) (not d!1247535)))

(declare-fun tb!254879 () Bool)

(declare-fun t!350693 () Bool)

(assert (=> (and b!4239605 (= (toValue!10676 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350693) tb!254879))

(declare-fun result!310828 () Bool)

(assert (=> tb!254879 (= result!310828 (inv!21 (dynLambda!20107 (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375))))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375)))))))))

(declare-fun m!4825779 () Bool)

(assert (=> tb!254879 m!4825779))

(assert (=> d!1247535 t!350693))

(declare-fun b_and!335393 () Bool)

(assert (= b_and!335249 (and (=> t!350693 result!310828) b_and!335393)))

(declare-fun tb!254881 () Bool)

(declare-fun t!350695 () Bool)

(assert (=> (and b!4239244 (= (toValue!10676 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350695) tb!254881))

(declare-fun result!310832 () Bool)

(assert (= result!310832 result!310828))

(assert (=> d!1247535 t!350695))

(declare-fun b_and!335395 () Bool)

(assert (= b_and!335177 (and (=> t!350695 result!310832) b_and!335395)))

(declare-fun t!350697 () Bool)

(declare-fun tb!254883 () Bool)

(assert (=> (and b!4239252 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350697) tb!254883))

(declare-fun result!310834 () Bool)

(assert (= result!310834 result!310828))

(assert (=> d!1247535 t!350697))

(declare-fun b_and!335397 () Bool)

(assert (= b_and!335181 (and (=> t!350697 result!310834) b_and!335397)))

(declare-fun t!350699 () Bool)

(declare-fun tb!254885 () Bool)

(assert (=> (and b!4239247 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350699) tb!254885))

(declare-fun result!310836 () Bool)

(assert (= result!310836 result!310828))

(assert (=> d!1247535 t!350699))

(declare-fun b_and!335399 () Bool)

(assert (= b_and!335185 (and (=> t!350699 result!310836) b_and!335399)))

(declare-fun t!350701 () Bool)

(declare-fun tb!254887 () Bool)

(assert (=> (and b!4239628 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350701) tb!254887))

(declare-fun result!310838 () Bool)

(assert (= result!310838 result!310828))

(assert (=> d!1247535 t!350701))

(declare-fun b_and!335401 () Bool)

(assert (= b_and!335253 (and (=> t!350701 result!310838) b_and!335401)))

(declare-fun t!350703 () Bool)

(declare-fun tb!254889 () Bool)

(assert (=> (and b!4239632 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350703) tb!254889))

(declare-fun result!310840 () Bool)

(assert (= result!310840 result!310828))

(assert (=> d!1247535 t!350703))

(declare-fun b_and!335403 () Bool)

(assert (= b_and!335257 (and (=> t!350703 result!310840) b_and!335403)))

(assert (=> d!1247535 m!4824927))

(declare-fun m!4825781 () Bool)

(assert (=> d!1247535 m!4825781))

(assert (=> b!4239439 d!1247535))

(declare-fun d!1247537 () Bool)

(declare-fun fromListB!2648 (List!46997) BalanceConc!27864)

(assert (=> d!1247537 (= (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375)))) (fromListB!2648 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506375)))))))

(declare-fun bs!598344 () Bool)

(assert (= bs!598344 d!1247537))

(declare-fun m!4825783 () Bool)

(assert (=> bs!598344 m!4825783))

(assert (=> b!4239439 d!1247537))

(declare-fun d!1247539 () Bool)

(declare-fun lt!1506516 () Bool)

(assert (=> d!1247539 (= lt!1506516 (select (content!7371 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506375)))))))

(declare-fun e!2633072 () Bool)

(assert (=> d!1247539 (= lt!1506516 e!2633072)))

(declare-fun res!1743633 () Bool)

(assert (=> d!1247539 (=> (not res!1743633) (not e!2633072))))

(assert (=> d!1247539 (= res!1743633 ((_ is Cons!46875) rules!2932))))

(assert (=> d!1247539 (= (contains!9725 rules!2932 (rule!11050 (_1!25359 (get!15242 lt!1506375)))) lt!1506516)))

(declare-fun b!4240189 () Bool)

(declare-fun e!2633073 () Bool)

(assert (=> b!4240189 (= e!2633072 e!2633073)))

(declare-fun res!1743634 () Bool)

(assert (=> b!4240189 (=> res!1743634 e!2633073)))

(assert (=> b!4240189 (= res!1743634 (= (h!52295 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506375)))))))

(declare-fun b!4240190 () Bool)

(assert (=> b!4240190 (= e!2633073 (contains!9725 (t!350412 rules!2932) (rule!11050 (_1!25359 (get!15242 lt!1506375)))))))

(assert (= (and d!1247539 res!1743633) b!4240189))

(assert (= (and b!4240189 (not res!1743634)) b!4240190))

(assert (=> d!1247539 m!4825755))

(declare-fun m!4825785 () Bool)

(assert (=> d!1247539 m!4825785))

(declare-fun m!4825787 () Bool)

(assert (=> b!4240190 m!4825787))

(assert (=> b!4239441 d!1247539))

(assert (=> b!4239441 d!1247269))

(declare-fun d!1247541 () Bool)

(assert (=> d!1247541 true))

(declare-fun order!24689 () Int)

(declare-fun lambda!130138 () Int)

(declare-fun dynLambda!20108 (Int Int) Int)

(assert (=> d!1247541 (< (dynLambda!20106 order!24687 (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (dynLambda!20108 order!24689 lambda!130138))))

(declare-fun Forall2!1195 (Int) Bool)

(assert (=> d!1247541 (= (equivClasses!3345 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (Forall2!1195 lambda!130138))))

(declare-fun bs!598345 () Bool)

(assert (= bs!598345 d!1247541))

(declare-fun m!4825789 () Bool)

(assert (=> bs!598345 m!4825789))

(assert (=> b!4239269 d!1247541))

(declare-fun d!1247543 () Bool)

(assert (=> d!1247543 (= (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))) (isBalanced!3758 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))))))

(declare-fun bs!598346 () Bool)

(assert (= bs!598346 d!1247543))

(declare-fun m!4825791 () Bool)

(assert (=> bs!598346 m!4825791))

(assert (=> tb!254609 d!1247543))

(declare-fun bs!598347 () Bool)

(declare-fun d!1247545 () Bool)

(assert (= bs!598347 (and d!1247545 d!1247489)))

(declare-fun lambda!130141 () Int)

(assert (=> bs!598347 (= lambda!130141 lambda!130133)))

(assert (=> d!1247545 true))

(declare-fun lt!1506519 () Bool)

(assert (=> d!1247545 (= lt!1506519 (rulesValidInductive!2972 thiss!21540 rules!2932))))

(assert (=> d!1247545 (= lt!1506519 (forall!8536 rules!2932 lambda!130141))))

(assert (=> d!1247545 (= (rulesValid!3070 thiss!21540 rules!2932) lt!1506519)))

(declare-fun bs!598348 () Bool)

(assert (= bs!598348 d!1247545))

(assert (=> bs!598348 m!4824903))

(declare-fun m!4825793 () Bool)

(assert (=> bs!598348 m!4825793))

(assert (=> d!1247245 d!1247545))

(declare-fun b!4240196 () Bool)

(declare-fun e!2633077 () List!46997)

(assert (=> b!4240196 (= e!2633077 (Cons!46873 (h!52293 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))) (++!11935 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))) (_2!25359 (get!15242 lt!1506370)))))))

(declare-fun b!4240197 () Bool)

(declare-fun res!1743637 () Bool)

(declare-fun e!2633076 () Bool)

(assert (=> b!4240197 (=> (not res!1743637) (not e!2633076))))

(declare-fun lt!1506520 () List!46997)

(assert (=> b!4240197 (= res!1743637 (= (size!34338 lt!1506520) (+ (size!34338 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))) (size!34338 (_2!25359 (get!15242 lt!1506370))))))))

(declare-fun b!4240198 () Bool)

(assert (=> b!4240198 (= e!2633076 (or (not (= (_2!25359 (get!15242 lt!1506370)) Nil!46873)) (= lt!1506520 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))))))))

(declare-fun d!1247547 () Bool)

(assert (=> d!1247547 e!2633076))

(declare-fun res!1743638 () Bool)

(assert (=> d!1247547 (=> (not res!1743638) (not e!2633076))))

(assert (=> d!1247547 (= res!1743638 (= (content!7369 lt!1506520) ((_ map or) (content!7369 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))) (content!7369 (_2!25359 (get!15242 lt!1506370))))))))

(assert (=> d!1247547 (= lt!1506520 e!2633077)))

(declare-fun c!720481 () Bool)

(assert (=> d!1247547 (= c!720481 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370))))))))

(assert (=> d!1247547 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506370)))) (_2!25359 (get!15242 lt!1506370))) lt!1506520)))

(declare-fun b!4240195 () Bool)

(assert (=> b!4240195 (= e!2633077 (_2!25359 (get!15242 lt!1506370)))))

(assert (= (and d!1247547 c!720481) b!4240195))

(assert (= (and d!1247547 (not c!720481)) b!4240196))

(assert (= (and d!1247547 res!1743638) b!4240197))

(assert (= (and b!4240197 res!1743637) b!4240198))

(declare-fun m!4825795 () Bool)

(assert (=> b!4240196 m!4825795))

(declare-fun m!4825797 () Bool)

(assert (=> b!4240197 m!4825797))

(assert (=> b!4240197 m!4824879))

(declare-fun m!4825799 () Bool)

(assert (=> b!4240197 m!4825799))

(assert (=> b!4240197 m!4824887))

(declare-fun m!4825801 () Bool)

(assert (=> d!1247547 m!4825801))

(assert (=> d!1247547 m!4824879))

(declare-fun m!4825803 () Bool)

(assert (=> d!1247547 m!4825803))

(declare-fun m!4825805 () Bool)

(assert (=> d!1247547 m!4825805))

(assert (=> b!4239428 d!1247547))

(assert (=> b!4239428 d!1247285))

(assert (=> b!4239428 d!1247287))

(assert (=> b!4239428 d!1247283))

(declare-fun b!4240199 () Bool)

(declare-fun e!2633080 () Bool)

(assert (=> b!4240199 (= e!2633080 (inv!16 (value!246370 (h!52294 (t!350411 addTokens!17)))))))

(declare-fun b!4240200 () Bool)

(declare-fun e!2633078 () Bool)

(assert (=> b!4240200 (= e!2633080 e!2633078)))

(declare-fun c!720483 () Bool)

(assert (=> b!4240200 (= c!720483 ((_ is IntegerValue!24463) (value!246370 (h!52294 (t!350411 addTokens!17)))))))

(declare-fun b!4240201 () Bool)

(assert (=> b!4240201 (= e!2633078 (inv!17 (value!246370 (h!52294 (t!350411 addTokens!17)))))))

(declare-fun d!1247549 () Bool)

(declare-fun c!720482 () Bool)

(assert (=> d!1247549 (= c!720482 ((_ is IntegerValue!24462) (value!246370 (h!52294 (t!350411 addTokens!17)))))))

(assert (=> d!1247549 (= (inv!21 (value!246370 (h!52294 (t!350411 addTokens!17)))) e!2633080)))

(declare-fun b!4240202 () Bool)

(declare-fun res!1743639 () Bool)

(declare-fun e!2633079 () Bool)

(assert (=> b!4240202 (=> res!1743639 e!2633079)))

(assert (=> b!4240202 (= res!1743639 (not ((_ is IntegerValue!24464) (value!246370 (h!52294 (t!350411 addTokens!17))))))))

(assert (=> b!4240202 (= e!2633078 e!2633079)))

(declare-fun b!4240203 () Bool)

(assert (=> b!4240203 (= e!2633079 (inv!15 (value!246370 (h!52294 (t!350411 addTokens!17)))))))

(assert (= (and d!1247549 c!720482) b!4240199))

(assert (= (and d!1247549 (not c!720482)) b!4240200))

(assert (= (and b!4240200 c!720483) b!4240201))

(assert (= (and b!4240200 (not c!720483)) b!4240202))

(assert (= (and b!4240202 (not res!1743639)) b!4240203))

(declare-fun m!4825807 () Bool)

(assert (=> b!4240199 m!4825807))

(declare-fun m!4825809 () Bool)

(assert (=> b!4240201 m!4825809))

(declare-fun m!4825811 () Bool)

(assert (=> b!4240203 m!4825811))

(assert (=> b!4239626 d!1247549))

(declare-fun d!1247551 () Bool)

(declare-fun charsToInt!0 (List!46996) (_ BitVec 32))

(assert (=> d!1247551 (= (inv!16 (value!246370 (h!52294 tokens!581))) (= (charsToInt!0 (text!57525 (value!246370 (h!52294 tokens!581)))) (value!246361 (value!246370 (h!52294 tokens!581)))))))

(declare-fun bs!598349 () Bool)

(assert (= bs!598349 d!1247551))

(declare-fun m!4825813 () Bool)

(assert (=> bs!598349 m!4825813))

(assert (=> b!4239515 d!1247551))

(assert (=> b!4239430 d!1247283))

(declare-fun d!1247553 () Bool)

(assert (=> d!1247553 (= (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370))))) (dynLambda!20107 (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370))))))))

(declare-fun b_lambda!124849 () Bool)

(assert (=> (not b_lambda!124849) (not d!1247553)))

(declare-fun t!350705 () Bool)

(declare-fun tb!254891 () Bool)

(assert (=> (and b!4239252 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350705) tb!254891))

(declare-fun result!310842 () Bool)

(assert (=> tb!254891 (= result!310842 (inv!21 (dynLambda!20107 (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370))))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370)))))))))

(declare-fun m!4825815 () Bool)

(assert (=> tb!254891 m!4825815))

(assert (=> d!1247553 t!350705))

(declare-fun b_and!335405 () Bool)

(assert (= b_and!335397 (and (=> t!350705 result!310842) b_and!335405)))

(declare-fun t!350707 () Bool)

(declare-fun tb!254893 () Bool)

(assert (=> (and b!4239244 (= (toValue!10676 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350707) tb!254893))

(declare-fun result!310844 () Bool)

(assert (= result!310844 result!310842))

(assert (=> d!1247553 t!350707))

(declare-fun b_and!335407 () Bool)

(assert (= b_and!335395 (and (=> t!350707 result!310844) b_and!335407)))

(declare-fun tb!254895 () Bool)

(declare-fun t!350709 () Bool)

(assert (=> (and b!4239247 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350709) tb!254895))

(declare-fun result!310846 () Bool)

(assert (= result!310846 result!310842))

(assert (=> d!1247553 t!350709))

(declare-fun b_and!335409 () Bool)

(assert (= b_and!335399 (and (=> t!350709 result!310846) b_and!335409)))

(declare-fun tb!254897 () Bool)

(declare-fun t!350711 () Bool)

(assert (=> (and b!4239628 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350711) tb!254897))

(declare-fun result!310848 () Bool)

(assert (= result!310848 result!310842))

(assert (=> d!1247553 t!350711))

(declare-fun b_and!335411 () Bool)

(assert (= b_and!335401 (and (=> t!350711 result!310848) b_and!335411)))

(declare-fun tb!254899 () Bool)

(declare-fun t!350713 () Bool)

(assert (=> (and b!4239605 (= (toValue!10676 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350713) tb!254899))

(declare-fun result!310850 () Bool)

(assert (= result!310850 result!310842))

(assert (=> d!1247553 t!350713))

(declare-fun b_and!335413 () Bool)

(assert (= b_and!335393 (and (=> t!350713 result!310850) b_and!335413)))

(declare-fun t!350715 () Bool)

(declare-fun tb!254901 () Bool)

(assert (=> (and b!4239632 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350715) tb!254901))

(declare-fun result!310852 () Bool)

(assert (= result!310852 result!310842))

(assert (=> d!1247553 t!350715))

(declare-fun b_and!335415 () Bool)

(assert (= b_and!335403 (and (=> t!350715 result!310852) b_and!335415)))

(assert (=> d!1247553 m!4824891))

(declare-fun m!4825817 () Bool)

(assert (=> d!1247553 m!4825817))

(assert (=> b!4239430 d!1247553))

(declare-fun d!1247555 () Bool)

(assert (=> d!1247555 (= (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370)))) (fromListB!2648 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506370)))))))

(declare-fun bs!598350 () Bool)

(assert (= bs!598350 d!1247555))

(declare-fun m!4825819 () Bool)

(assert (=> bs!598350 m!4825819))

(assert (=> b!4239430 d!1247555))

(declare-fun d!1247557 () Bool)

(declare-fun c!720484 () Bool)

(assert (=> d!1247557 (= c!720484 ((_ is Nil!46873) lt!1506332))))

(declare-fun e!2633082 () (InoxSet C!25856))

(assert (=> d!1247557 (= (content!7369 lt!1506332) e!2633082)))

(declare-fun b!4240204 () Bool)

(assert (=> b!4240204 (= e!2633082 ((as const (Array C!25856 Bool)) false))))

(declare-fun b!4240205 () Bool)

(assert (=> b!4240205 (= e!2633082 ((_ map or) (store ((as const (Array C!25856 Bool)) false) (h!52293 lt!1506332) true) (content!7369 (t!350410 lt!1506332))))))

(assert (= (and d!1247557 c!720484) b!4240204))

(assert (= (and d!1247557 (not c!720484)) b!4240205))

(declare-fun m!4825821 () Bool)

(assert (=> b!4240205 m!4825821))

(declare-fun m!4825823 () Bool)

(assert (=> b!4240205 m!4825823))

(assert (=> d!1247173 d!1247557))

(declare-fun d!1247559 () Bool)

(declare-fun c!720485 () Bool)

(assert (=> d!1247559 (= c!720485 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))

(declare-fun e!2633083 () (InoxSet C!25856))

(assert (=> d!1247559 (= (content!7369 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) e!2633083)))

(declare-fun b!4240206 () Bool)

(assert (=> b!4240206 (= e!2633083 ((as const (Array C!25856 Bool)) false))))

(declare-fun b!4240207 () Bool)

(assert (=> b!4240207 (= e!2633083 ((_ map or) (store ((as const (Array C!25856 Bool)) false) (h!52293 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) true) (content!7369 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))))

(assert (= (and d!1247559 c!720485) b!4240206))

(assert (= (and d!1247559 (not c!720485)) b!4240207))

(declare-fun m!4825825 () Bool)

(assert (=> b!4240207 m!4825825))

(assert (=> b!4240207 m!4825737))

(assert (=> d!1247173 d!1247559))

(declare-fun d!1247561 () Bool)

(declare-fun c!720486 () Bool)

(assert (=> d!1247561 (= c!720486 ((_ is Nil!46873) (_2!25359 (v!41009 lt!1506312))))))

(declare-fun e!2633084 () (InoxSet C!25856))

(assert (=> d!1247561 (= (content!7369 (_2!25359 (v!41009 lt!1506312))) e!2633084)))

(declare-fun b!4240208 () Bool)

(assert (=> b!4240208 (= e!2633084 ((as const (Array C!25856 Bool)) false))))

(declare-fun b!4240209 () Bool)

(assert (=> b!4240209 (= e!2633084 ((_ map or) (store ((as const (Array C!25856 Bool)) false) (h!52293 (_2!25359 (v!41009 lt!1506312))) true) (content!7369 (t!350410 (_2!25359 (v!41009 lt!1506312))))))))

(assert (= (and d!1247561 c!720486) b!4240208))

(assert (= (and d!1247561 (not c!720486)) b!4240209))

(declare-fun m!4825827 () Bool)

(assert (=> b!4240209 m!4825827))

(declare-fun m!4825829 () Bool)

(assert (=> b!4240209 m!4825829))

(assert (=> d!1247173 d!1247561))

(declare-fun d!1247563 () Bool)

(declare-fun lt!1506521 () Int)

(assert (=> d!1247563 (>= lt!1506521 0)))

(declare-fun e!2633085 () Int)

(assert (=> d!1247563 (= lt!1506521 e!2633085)))

(declare-fun c!720487 () Bool)

(assert (=> d!1247563 (= c!720487 ((_ is Nil!46873) (t!350410 shorterInput!51)))))

(assert (=> d!1247563 (= (size!34338 (t!350410 shorterInput!51)) lt!1506521)))

(declare-fun b!4240210 () Bool)

(assert (=> b!4240210 (= e!2633085 0)))

(declare-fun b!4240211 () Bool)

(assert (=> b!4240211 (= e!2633085 (+ 1 (size!34338 (t!350410 (t!350410 shorterInput!51)))))))

(assert (= (and d!1247563 c!720487) b!4240210))

(assert (= (and d!1247563 (not c!720487)) b!4240211))

(declare-fun m!4825831 () Bool)

(assert (=> b!4240211 m!4825831))

(assert (=> b!4239278 d!1247563))

(declare-fun d!1247565 () Bool)

(assert (=> d!1247565 (= (isEmpty!27708 (originalCharacters!8268 (h!52294 addTokens!17))) ((_ is Nil!46873) (originalCharacters!8268 (h!52294 addTokens!17))))))

(assert (=> d!1247183 d!1247565))

(declare-fun d!1247567 () Bool)

(declare-fun c!720488 () Bool)

(assert (=> d!1247567 (= c!720488 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))))))

(declare-fun e!2633086 () Bool)

(assert (=> d!1247567 (= (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))) e!2633086)))

(declare-fun b!4240212 () Bool)

(assert (=> b!4240212 (= e!2633086 (inv!61621 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))))))

(declare-fun b!4240213 () Bool)

(declare-fun e!2633087 () Bool)

(assert (=> b!4240213 (= e!2633086 e!2633087)))

(declare-fun res!1743640 () Bool)

(assert (=> b!4240213 (= res!1743640 (not ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))))))))

(assert (=> b!4240213 (=> res!1743640 e!2633087)))

(declare-fun b!4240214 () Bool)

(assert (=> b!4240214 (= e!2633087 (inv!61622 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))))))

(assert (= (and d!1247567 c!720488) b!4240212))

(assert (= (and d!1247567 (not c!720488)) b!4240213))

(assert (= (and b!4240213 (not res!1743640)) b!4240214))

(declare-fun m!4825833 () Bool)

(assert (=> b!4240212 m!4825833))

(declare-fun m!4825835 () Bool)

(assert (=> b!4240214 m!4825835))

(assert (=> b!4239356 d!1247567))

(declare-fun b!4240215 () Bool)

(declare-fun e!2633090 () Bool)

(assert (=> b!4240215 (= e!2633090 (inv!16 (value!246370 (h!52294 (t!350411 tokens!581)))))))

(declare-fun b!4240216 () Bool)

(declare-fun e!2633088 () Bool)

(assert (=> b!4240216 (= e!2633090 e!2633088)))

(declare-fun c!720490 () Bool)

(assert (=> b!4240216 (= c!720490 ((_ is IntegerValue!24463) (value!246370 (h!52294 (t!350411 tokens!581)))))))

(declare-fun b!4240217 () Bool)

(assert (=> b!4240217 (= e!2633088 (inv!17 (value!246370 (h!52294 (t!350411 tokens!581)))))))

(declare-fun d!1247569 () Bool)

(declare-fun c!720489 () Bool)

(assert (=> d!1247569 (= c!720489 ((_ is IntegerValue!24462) (value!246370 (h!52294 (t!350411 tokens!581)))))))

(assert (=> d!1247569 (= (inv!21 (value!246370 (h!52294 (t!350411 tokens!581)))) e!2633090)))

(declare-fun b!4240218 () Bool)

(declare-fun res!1743641 () Bool)

(declare-fun e!2633089 () Bool)

(assert (=> b!4240218 (=> res!1743641 e!2633089)))

(assert (=> b!4240218 (= res!1743641 (not ((_ is IntegerValue!24464) (value!246370 (h!52294 (t!350411 tokens!581))))))))

(assert (=> b!4240218 (= e!2633088 e!2633089)))

(declare-fun b!4240219 () Bool)

(assert (=> b!4240219 (= e!2633089 (inv!15 (value!246370 (h!52294 (t!350411 tokens!581)))))))

(assert (= (and d!1247569 c!720489) b!4240215))

(assert (= (and d!1247569 (not c!720489)) b!4240216))

(assert (= (and b!4240216 c!720490) b!4240217))

(assert (= (and b!4240216 (not c!720490)) b!4240218))

(assert (= (and b!4240218 (not res!1743641)) b!4240219))

(declare-fun m!4825837 () Bool)

(assert (=> b!4240215 m!4825837))

(declare-fun m!4825839 () Bool)

(assert (=> b!4240217 m!4825839))

(declare-fun m!4825841 () Bool)

(assert (=> b!4240219 m!4825841))

(assert (=> b!4239630 d!1247569))

(declare-fun d!1247571 () Bool)

(assert (=> d!1247571 (= (isEmpty!27708 (originalCharacters!8268 (h!52294 tokens!581))) ((_ is Nil!46873) (originalCharacters!8268 (h!52294 tokens!581))))))

(assert (=> d!1247189 d!1247571))

(declare-fun b!4240221 () Bool)

(declare-fun e!2633092 () List!46997)

(assert (=> b!4240221 (= e!2633092 (Cons!46873 (h!52293 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))) (++!11935 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))) (_2!25359 (get!15242 lt!1506375)))))))

(declare-fun b!4240222 () Bool)

(declare-fun res!1743642 () Bool)

(declare-fun e!2633091 () Bool)

(assert (=> b!4240222 (=> (not res!1743642) (not e!2633091))))

(declare-fun lt!1506522 () List!46997)

(assert (=> b!4240222 (= res!1743642 (= (size!34338 lt!1506522) (+ (size!34338 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))) (size!34338 (_2!25359 (get!15242 lt!1506375))))))))

(declare-fun b!4240223 () Bool)

(assert (=> b!4240223 (= e!2633091 (or (not (= (_2!25359 (get!15242 lt!1506375)) Nil!46873)) (= lt!1506522 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))))))))

(declare-fun d!1247573 () Bool)

(assert (=> d!1247573 e!2633091))

(declare-fun res!1743643 () Bool)

(assert (=> d!1247573 (=> (not res!1743643) (not e!2633091))))

(assert (=> d!1247573 (= res!1743643 (= (content!7369 lt!1506522) ((_ map or) (content!7369 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))) (content!7369 (_2!25359 (get!15242 lt!1506375))))))))

(assert (=> d!1247573 (= lt!1506522 e!2633092)))

(declare-fun c!720491 () Bool)

(assert (=> d!1247573 (= c!720491 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375))))))))

(assert (=> d!1247573 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506375)))) (_2!25359 (get!15242 lt!1506375))) lt!1506522)))

(declare-fun b!4240220 () Bool)

(assert (=> b!4240220 (= e!2633092 (_2!25359 (get!15242 lt!1506375)))))

(assert (= (and d!1247573 c!720491) b!4240220))

(assert (= (and d!1247573 (not c!720491)) b!4240221))

(assert (= (and d!1247573 res!1743643) b!4240222))

(assert (= (and b!4240222 res!1743642) b!4240223))

(declare-fun m!4825843 () Bool)

(assert (=> b!4240221 m!4825843))

(declare-fun m!4825845 () Bool)

(assert (=> b!4240222 m!4825845))

(assert (=> b!4240222 m!4824911))

(declare-fun m!4825847 () Bool)

(assert (=> b!4240222 m!4825847))

(assert (=> b!4240222 m!4824919))

(declare-fun m!4825849 () Bool)

(assert (=> d!1247573 m!4825849))

(assert (=> d!1247573 m!4824911))

(declare-fun m!4825851 () Bool)

(assert (=> d!1247573 m!4825851))

(declare-fun m!4825853 () Bool)

(assert (=> d!1247573 m!4825853))

(assert (=> b!4239437 d!1247573))

(assert (=> b!4239437 d!1247271))

(assert (=> b!4239437 d!1247273))

(assert (=> b!4239437 d!1247269))

(declare-fun bs!598351 () Bool)

(declare-fun d!1247575 () Bool)

(assert (= bs!598351 (and d!1247575 d!1247541)))

(declare-fun lambda!130142 () Int)

(assert (=> bs!598351 (= (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (= lambda!130142 lambda!130138))))

(assert (=> d!1247575 true))

(assert (=> d!1247575 (< (dynLambda!20106 order!24687 (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (dynLambda!20108 order!24689 lambda!130142))))

(assert (=> d!1247575 (= (equivClasses!3345 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (Forall2!1195 lambda!130142))))

(declare-fun bs!598352 () Bool)

(assert (= bs!598352 d!1247575))

(declare-fun m!4825855 () Bool)

(assert (=> bs!598352 m!4825855))

(assert (=> b!4239334 d!1247575))

(declare-fun b!4240242 () Bool)

(declare-fun e!2633104 () Bool)

(declare-fun e!2633102 () Bool)

(assert (=> b!4240242 (= e!2633104 e!2633102)))

(declare-fun res!1743663 () Bool)

(assert (=> b!4240242 (=> (not res!1743663) (not e!2633102))))

(declare-fun lt!1506533 () Option!10060)

(assert (=> b!4240242 (= res!1743663 (matchR!6445 (regex!7924 (h!52295 rules!2932)) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506533))))))))

(declare-fun b!4240243 () Bool)

(declare-fun res!1743659 () Bool)

(assert (=> b!4240243 (=> (not res!1743659) (not e!2633102))))

(assert (=> b!4240243 (= res!1743659 (= (value!246370 (_1!25359 (get!15242 lt!1506533))) (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506533)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506533)))))))))

(declare-fun d!1247577 () Bool)

(assert (=> d!1247577 e!2633104))

(declare-fun res!1743661 () Bool)

(assert (=> d!1247577 (=> res!1743661 e!2633104)))

(assert (=> d!1247577 (= res!1743661 (isEmpty!27711 lt!1506533))))

(declare-fun e!2633101 () Option!10060)

(assert (=> d!1247577 (= lt!1506533 e!2633101)))

(declare-fun c!720494 () Bool)

(declare-datatypes ((tuple2!44456 0))(
  ( (tuple2!44457 (_1!25362 List!46997) (_2!25362 List!46997)) )
))
(declare-fun lt!1506534 () tuple2!44456)

(assert (=> d!1247577 (= c!720494 (isEmpty!27708 (_1!25362 lt!1506534)))))

(declare-fun findLongestMatch!1607 (Regex!12829 List!46997) tuple2!44456)

(assert (=> d!1247577 (= lt!1506534 (findLongestMatch!1607 (regex!7924 (h!52295 rules!2932)) shorterInput!51))))

(assert (=> d!1247577 (ruleValid!3600 thiss!21540 (h!52295 rules!2932))))

(assert (=> d!1247577 (= (maxPrefixOneRule!3448 thiss!21540 (h!52295 rules!2932) shorterInput!51) lt!1506533)))

(declare-fun b!4240244 () Bool)

(declare-fun res!1743664 () Bool)

(assert (=> b!4240244 (=> (not res!1743664) (not e!2633102))))

(assert (=> b!4240244 (= res!1743664 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506533)))) (_2!25359 (get!15242 lt!1506533))) shorterInput!51))))

(declare-fun b!4240245 () Bool)

(declare-fun e!2633103 () Bool)

(declare-fun findLongestMatchInner!1704 (Regex!12829 List!46997 Int List!46997 List!46997 Int) tuple2!44456)

(assert (=> b!4240245 (= e!2633103 (matchR!6445 (regex!7924 (h!52295 rules!2932)) (_1!25362 (findLongestMatchInner!1704 (regex!7924 (h!52295 rules!2932)) Nil!46873 (size!34338 Nil!46873) shorterInput!51 shorterInput!51 (size!34338 shorterInput!51)))))))

(declare-fun b!4240246 () Bool)

(assert (=> b!4240246 (= e!2633102 (= (size!34337 (_1!25359 (get!15242 lt!1506533))) (size!34338 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506533))))))))

(declare-fun b!4240247 () Bool)

(declare-fun size!34341 (BalanceConc!27864) Int)

(assert (=> b!4240247 (= e!2633101 (Some!10059 (tuple2!44451 (Token!14475 (apply!10750 (transformation!7924 (h!52295 rules!2932)) (seqFromList!5810 (_1!25362 lt!1506534))) (h!52295 rules!2932) (size!34341 (seqFromList!5810 (_1!25362 lt!1506534))) (_1!25362 lt!1506534)) (_2!25362 lt!1506534))))))

(declare-fun lt!1506535 () Unit!65963)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1667 (Regex!12829 List!46997) Unit!65963)

(assert (=> b!4240247 (= lt!1506535 (longestMatchIsAcceptedByMatchOrIsEmpty!1667 (regex!7924 (h!52295 rules!2932)) shorterInput!51))))

(declare-fun res!1743658 () Bool)

(assert (=> b!4240247 (= res!1743658 (isEmpty!27708 (_1!25362 (findLongestMatchInner!1704 (regex!7924 (h!52295 rules!2932)) Nil!46873 (size!34338 Nil!46873) shorterInput!51 shorterInput!51 (size!34338 shorterInput!51)))))))

(assert (=> b!4240247 (=> res!1743658 e!2633103)))

(assert (=> b!4240247 e!2633103))

(declare-fun lt!1506536 () Unit!65963)

(assert (=> b!4240247 (= lt!1506536 lt!1506535)))

(declare-fun lt!1506537 () Unit!65963)

(declare-fun lemmaSemiInverse!2535 (TokenValueInjection!15736 BalanceConc!27864) Unit!65963)

(assert (=> b!4240247 (= lt!1506537 (lemmaSemiInverse!2535 (transformation!7924 (h!52295 rules!2932)) (seqFromList!5810 (_1!25362 lt!1506534))))))

(declare-fun b!4240248 () Bool)

(assert (=> b!4240248 (= e!2633101 None!10059)))

(declare-fun b!4240249 () Bool)

(declare-fun res!1743662 () Bool)

(assert (=> b!4240249 (=> (not res!1743662) (not e!2633102))))

(assert (=> b!4240249 (= res!1743662 (= (rule!11050 (_1!25359 (get!15242 lt!1506533))) (h!52295 rules!2932)))))

(declare-fun b!4240250 () Bool)

(declare-fun res!1743660 () Bool)

(assert (=> b!4240250 (=> (not res!1743660) (not e!2633102))))

(assert (=> b!4240250 (= res!1743660 (< (size!34338 (_2!25359 (get!15242 lt!1506533))) (size!34338 shorterInput!51)))))

(assert (= (and d!1247577 c!720494) b!4240248))

(assert (= (and d!1247577 (not c!720494)) b!4240247))

(assert (= (and b!4240247 (not res!1743658)) b!4240245))

(assert (= (and d!1247577 (not res!1743661)) b!4240242))

(assert (= (and b!4240242 res!1743663) b!4240244))

(assert (= (and b!4240244 res!1743664) b!4240250))

(assert (= (and b!4240250 res!1743660) b!4240249))

(assert (= (and b!4240249 res!1743662) b!4240243))

(assert (= (and b!4240243 res!1743659) b!4240246))

(declare-fun m!4825857 () Bool)

(assert (=> b!4240247 m!4825857))

(declare-fun m!4825859 () Bool)

(assert (=> b!4240247 m!4825859))

(declare-fun m!4825861 () Bool)

(assert (=> b!4240247 m!4825861))

(declare-fun m!4825863 () Bool)

(assert (=> b!4240247 m!4825863))

(assert (=> b!4240247 m!4825863))

(assert (=> b!4240247 m!4824621))

(declare-fun m!4825865 () Bool)

(assert (=> b!4240247 m!4825865))

(assert (=> b!4240247 m!4825857))

(assert (=> b!4240247 m!4825857))

(declare-fun m!4825867 () Bool)

(assert (=> b!4240247 m!4825867))

(assert (=> b!4240247 m!4824621))

(assert (=> b!4240247 m!4825857))

(declare-fun m!4825869 () Bool)

(assert (=> b!4240247 m!4825869))

(declare-fun m!4825871 () Bool)

(assert (=> b!4240247 m!4825871))

(declare-fun m!4825873 () Bool)

(assert (=> b!4240242 m!4825873))

(declare-fun m!4825875 () Bool)

(assert (=> b!4240242 m!4825875))

(assert (=> b!4240242 m!4825875))

(declare-fun m!4825877 () Bool)

(assert (=> b!4240242 m!4825877))

(assert (=> b!4240242 m!4825877))

(declare-fun m!4825879 () Bool)

(assert (=> b!4240242 m!4825879))

(assert (=> b!4240246 m!4825873))

(declare-fun m!4825881 () Bool)

(assert (=> b!4240246 m!4825881))

(assert (=> b!4240243 m!4825873))

(declare-fun m!4825883 () Bool)

(assert (=> b!4240243 m!4825883))

(assert (=> b!4240243 m!4825883))

(declare-fun m!4825885 () Bool)

(assert (=> b!4240243 m!4825885))

(assert (=> b!4240250 m!4825873))

(declare-fun m!4825887 () Bool)

(assert (=> b!4240250 m!4825887))

(assert (=> b!4240250 m!4824621))

(assert (=> b!4240244 m!4825873))

(assert (=> b!4240244 m!4825875))

(assert (=> b!4240244 m!4825875))

(assert (=> b!4240244 m!4825877))

(assert (=> b!4240244 m!4825877))

(declare-fun m!4825889 () Bool)

(assert (=> b!4240244 m!4825889))

(declare-fun m!4825891 () Bool)

(assert (=> d!1247577 m!4825891))

(declare-fun m!4825893 () Bool)

(assert (=> d!1247577 m!4825893))

(declare-fun m!4825895 () Bool)

(assert (=> d!1247577 m!4825895))

(assert (=> d!1247577 m!4825691))

(assert (=> b!4240245 m!4825863))

(assert (=> b!4240245 m!4824621))

(assert (=> b!4240245 m!4825863))

(assert (=> b!4240245 m!4824621))

(assert (=> b!4240245 m!4825865))

(declare-fun m!4825897 () Bool)

(assert (=> b!4240245 m!4825897))

(assert (=> b!4240249 m!4825873))

(assert (=> bm!293820 d!1247577))

(declare-fun d!1247579 () Bool)

(declare-fun lt!1506538 () Int)

(assert (=> d!1247579 (>= lt!1506538 0)))

(declare-fun e!2633105 () Int)

(assert (=> d!1247579 (= lt!1506538 e!2633105)))

(declare-fun c!720495 () Bool)

(assert (=> d!1247579 (= c!720495 ((_ is Nil!46874) (_1!25360 lt!1506399)))))

(assert (=> d!1247579 (= (size!34339 (_1!25360 lt!1506399)) lt!1506538)))

(declare-fun b!4240251 () Bool)

(assert (=> b!4240251 (= e!2633105 0)))

(declare-fun b!4240252 () Bool)

(assert (=> b!4240252 (= e!2633105 (+ 1 (size!34339 (t!350411 (_1!25360 lt!1506399)))))))

(assert (= (and d!1247579 c!720495) b!4240251))

(assert (= (and d!1247579 (not c!720495)) b!4240252))

(declare-fun m!4825899 () Bool)

(assert (=> b!4240252 m!4825899))

(assert (=> d!1247243 d!1247579))

(assert (=> d!1247243 d!1247207))

(declare-fun d!1247581 () Bool)

(declare-fun lt!1506539 () Int)

(assert (=> d!1247581 (>= lt!1506539 0)))

(declare-fun e!2633106 () Int)

(assert (=> d!1247581 (= lt!1506539 e!2633106)))

(declare-fun c!720496 () Bool)

(assert (=> d!1247581 (= c!720496 ((_ is Nil!46873) lt!1506332))))

(assert (=> d!1247581 (= (size!34338 lt!1506332) lt!1506539)))

(declare-fun b!4240253 () Bool)

(assert (=> b!4240253 (= e!2633106 0)))

(declare-fun b!4240254 () Bool)

(assert (=> b!4240254 (= e!2633106 (+ 1 (size!34338 (t!350410 lt!1506332))))))

(assert (= (and d!1247581 c!720496) b!4240253))

(assert (= (and d!1247581 (not c!720496)) b!4240254))

(declare-fun m!4825901 () Bool)

(assert (=> b!4240254 m!4825901))

(assert (=> b!4239321 d!1247581))

(declare-fun d!1247583 () Bool)

(declare-fun lt!1506540 () Int)

(assert (=> d!1247583 (>= lt!1506540 0)))

(declare-fun e!2633107 () Int)

(assert (=> d!1247583 (= lt!1506540 e!2633107)))

(declare-fun c!720497 () Bool)

(assert (=> d!1247583 (= c!720497 ((_ is Nil!46873) (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))

(assert (=> d!1247583 (= (size!34338 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) lt!1506540)))

(declare-fun b!4240255 () Bool)

(assert (=> b!4240255 (= e!2633107 0)))

(declare-fun b!4240256 () Bool)

(assert (=> b!4240256 (= e!2633107 (+ 1 (size!34338 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))))

(assert (= (and d!1247583 c!720497) b!4240255))

(assert (= (and d!1247583 (not c!720497)) b!4240256))

(assert (=> b!4240256 m!4825733))

(assert (=> b!4239321 d!1247583))

(declare-fun d!1247585 () Bool)

(declare-fun lt!1506541 () Int)

(assert (=> d!1247585 (>= lt!1506541 0)))

(declare-fun e!2633108 () Int)

(assert (=> d!1247585 (= lt!1506541 e!2633108)))

(declare-fun c!720498 () Bool)

(assert (=> d!1247585 (= c!720498 ((_ is Nil!46873) (_2!25359 (v!41009 lt!1506312))))))

(assert (=> d!1247585 (= (size!34338 (_2!25359 (v!41009 lt!1506312))) lt!1506541)))

(declare-fun b!4240257 () Bool)

(assert (=> b!4240257 (= e!2633108 0)))

(declare-fun b!4240258 () Bool)

(assert (=> b!4240258 (= e!2633108 (+ 1 (size!34338 (t!350410 (_2!25359 (v!41009 lt!1506312))))))))

(assert (= (and d!1247585 c!720498) b!4240257))

(assert (= (and d!1247585 (not c!720498)) b!4240258))

(declare-fun m!4825903 () Bool)

(assert (=> b!4240258 m!4825903))

(assert (=> b!4239321 d!1247585))

(declare-fun d!1247587 () Bool)

(assert (=> d!1247587 (= (isEmpty!27707 (_1!25360 lt!1506399)) ((_ is Nil!46874) (_1!25360 lt!1506399)))))

(assert (=> b!4239566 d!1247587))

(declare-fun b!4240259 () Bool)

(declare-fun e!2633111 () tuple2!44452)

(assert (=> b!4240259 (= e!2633111 (tuple2!44453 Nil!46874 (_2!25359 (v!41009 lt!1506398))))))

(declare-fun b!4240261 () Bool)

(declare-fun e!2633109 () Bool)

(declare-fun lt!1506543 () tuple2!44452)

(assert (=> b!4240261 (= e!2633109 (not (isEmpty!27707 (_1!25360 lt!1506543))))))

(declare-fun b!4240262 () Bool)

(declare-fun e!2633110 () Bool)

(assert (=> b!4240262 (= e!2633110 (= (_2!25360 lt!1506543) (_2!25359 (v!41009 lt!1506398))))))

(declare-fun b!4240263 () Bool)

(declare-fun lt!1506542 () Option!10060)

(declare-fun lt!1506544 () tuple2!44452)

(assert (=> b!4240263 (= e!2633111 (tuple2!44453 (Cons!46874 (_1!25359 (v!41009 lt!1506542)) (_1!25360 lt!1506544)) (_2!25360 lt!1506544)))))

(assert (=> b!4240263 (= lt!1506544 (lexList!2025 thiss!21540 rules!2932 (_2!25359 (v!41009 lt!1506542))))))

(declare-fun b!4240260 () Bool)

(assert (=> b!4240260 (= e!2633110 e!2633109)))

(declare-fun res!1743665 () Bool)

(assert (=> b!4240260 (= res!1743665 (< (size!34338 (_2!25360 lt!1506543)) (size!34338 (_2!25359 (v!41009 lt!1506398)))))))

(assert (=> b!4240260 (=> (not res!1743665) (not e!2633109))))

(declare-fun d!1247589 () Bool)

(assert (=> d!1247589 e!2633110))

(declare-fun c!720500 () Bool)

(assert (=> d!1247589 (= c!720500 (> (size!34339 (_1!25360 lt!1506543)) 0))))

(assert (=> d!1247589 (= lt!1506543 e!2633111)))

(declare-fun c!720499 () Bool)

(assert (=> d!1247589 (= c!720499 ((_ is Some!10059) lt!1506542))))

(assert (=> d!1247589 (= lt!1506542 (maxPrefix!4477 thiss!21540 rules!2932 (_2!25359 (v!41009 lt!1506398))))))

(assert (=> d!1247589 (= (lexList!2025 thiss!21540 rules!2932 (_2!25359 (v!41009 lt!1506398))) lt!1506543)))

(assert (= (and d!1247589 c!720499) b!4240263))

(assert (= (and d!1247589 (not c!720499)) b!4240259))

(assert (= (and d!1247589 c!720500) b!4240260))

(assert (= (and d!1247589 (not c!720500)) b!4240262))

(assert (= (and b!4240260 res!1743665) b!4240261))

(declare-fun m!4825905 () Bool)

(assert (=> b!4240261 m!4825905))

(declare-fun m!4825907 () Bool)

(assert (=> b!4240263 m!4825907))

(declare-fun m!4825909 () Bool)

(assert (=> b!4240260 m!4825909))

(declare-fun m!4825911 () Bool)

(assert (=> b!4240260 m!4825911))

(declare-fun m!4825913 () Bool)

(assert (=> d!1247589 m!4825913))

(declare-fun m!4825915 () Bool)

(assert (=> d!1247589 m!4825915))

(assert (=> b!4239568 d!1247589))

(declare-fun bs!598353 () Bool)

(declare-fun d!1247591 () Bool)

(assert (= bs!598353 (and d!1247591 d!1247541)))

(declare-fun lambda!130143 () Int)

(assert (=> bs!598353 (= (= (toValue!10676 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) (= lambda!130143 lambda!130138))))

(declare-fun bs!598354 () Bool)

(assert (= bs!598354 (and d!1247591 d!1247575)))

(assert (=> bs!598354 (= (= (toValue!10676 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) (= lambda!130143 lambda!130142))))

(assert (=> d!1247591 true))

(assert (=> d!1247591 (< (dynLambda!20106 order!24687 (toValue!10676 (transformation!7924 (h!52295 rules!2932)))) (dynLambda!20108 order!24689 lambda!130143))))

(assert (=> d!1247591 (= (equivClasses!3345 (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toValue!10676 (transformation!7924 (h!52295 rules!2932)))) (Forall2!1195 lambda!130143))))

(declare-fun bs!598355 () Bool)

(assert (= bs!598355 d!1247591))

(declare-fun m!4825917 () Bool)

(assert (=> bs!598355 m!4825917))

(assert (=> b!4239270 d!1247591))

(declare-fun d!1247593 () Bool)

(declare-fun res!1743670 () Bool)

(declare-fun e!2633116 () Bool)

(assert (=> d!1247593 (=> res!1743670 e!2633116)))

(assert (=> d!1247593 (= res!1743670 ((_ is Nil!46875) rules!2932))))

(assert (=> d!1247593 (= (noDuplicateTag!3231 thiss!21540 rules!2932 Nil!46877) e!2633116)))

(declare-fun b!4240268 () Bool)

(declare-fun e!2633117 () Bool)

(assert (=> b!4240268 (= e!2633116 e!2633117)))

(declare-fun res!1743671 () Bool)

(assert (=> b!4240268 (=> (not res!1743671) (not e!2633117))))

(declare-fun contains!9727 (List!47001 String!54700) Bool)

(assert (=> b!4240268 (= res!1743671 (not (contains!9727 Nil!46877 (tag!8788 (h!52295 rules!2932)))))))

(declare-fun b!4240269 () Bool)

(assert (=> b!4240269 (= e!2633117 (noDuplicateTag!3231 thiss!21540 (t!350412 rules!2932) (Cons!46877 (tag!8788 (h!52295 rules!2932)) Nil!46877)))))

(assert (= (and d!1247593 (not res!1743670)) b!4240268))

(assert (= (and b!4240268 res!1743671) b!4240269))

(declare-fun m!4825919 () Bool)

(assert (=> b!4240268 m!4825919))

(declare-fun m!4825921 () Bool)

(assert (=> b!4240269 m!4825921))

(assert (=> b!4239571 d!1247593))

(declare-fun b!4240270 () Bool)

(declare-fun e!2633121 () Bool)

(declare-fun e!2633119 () Bool)

(assert (=> b!4240270 (= e!2633121 e!2633119)))

(declare-fun res!1743677 () Bool)

(assert (=> b!4240270 (=> (not res!1743677) (not e!2633119))))

(declare-fun lt!1506545 () Option!10060)

(assert (=> b!4240270 (= res!1743677 (matchR!6445 (regex!7924 (h!52295 rules!2932)) (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506545))))))))

(declare-fun b!4240271 () Bool)

(declare-fun res!1743673 () Bool)

(assert (=> b!4240271 (=> (not res!1743673) (not e!2633119))))

(assert (=> b!4240271 (= res!1743673 (= (value!246370 (_1!25359 (get!15242 lt!1506545))) (apply!10750 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506545)))) (seqFromList!5810 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506545)))))))))

(declare-fun d!1247595 () Bool)

(assert (=> d!1247595 e!2633121))

(declare-fun res!1743675 () Bool)

(assert (=> d!1247595 (=> res!1743675 e!2633121)))

(assert (=> d!1247595 (= res!1743675 (isEmpty!27711 lt!1506545))))

(declare-fun e!2633118 () Option!10060)

(assert (=> d!1247595 (= lt!1506545 e!2633118)))

(declare-fun c!720501 () Bool)

(declare-fun lt!1506546 () tuple2!44456)

(assert (=> d!1247595 (= c!720501 (isEmpty!27708 (_1!25362 lt!1506546)))))

(assert (=> d!1247595 (= lt!1506546 (findLongestMatch!1607 (regex!7924 (h!52295 rules!2932)) longerInput!51))))

(assert (=> d!1247595 (ruleValid!3600 thiss!21540 (h!52295 rules!2932))))

(assert (=> d!1247595 (= (maxPrefixOneRule!3448 thiss!21540 (h!52295 rules!2932) longerInput!51) lt!1506545)))

(declare-fun b!4240272 () Bool)

(declare-fun res!1743678 () Bool)

(assert (=> b!4240272 (=> (not res!1743678) (not e!2633119))))

(assert (=> b!4240272 (= res!1743678 (= (++!11935 (list!16901 (charsOf!5278 (_1!25359 (get!15242 lt!1506545)))) (_2!25359 (get!15242 lt!1506545))) longerInput!51))))

(declare-fun b!4240273 () Bool)

(declare-fun e!2633120 () Bool)

(assert (=> b!4240273 (= e!2633120 (matchR!6445 (regex!7924 (h!52295 rules!2932)) (_1!25362 (findLongestMatchInner!1704 (regex!7924 (h!52295 rules!2932)) Nil!46873 (size!34338 Nil!46873) longerInput!51 longerInput!51 (size!34338 longerInput!51)))))))

(declare-fun b!4240274 () Bool)

(assert (=> b!4240274 (= e!2633119 (= (size!34337 (_1!25359 (get!15242 lt!1506545))) (size!34338 (originalCharacters!8268 (_1!25359 (get!15242 lt!1506545))))))))

(declare-fun b!4240275 () Bool)

(assert (=> b!4240275 (= e!2633118 (Some!10059 (tuple2!44451 (Token!14475 (apply!10750 (transformation!7924 (h!52295 rules!2932)) (seqFromList!5810 (_1!25362 lt!1506546))) (h!52295 rules!2932) (size!34341 (seqFromList!5810 (_1!25362 lt!1506546))) (_1!25362 lt!1506546)) (_2!25362 lt!1506546))))))

(declare-fun lt!1506547 () Unit!65963)

(assert (=> b!4240275 (= lt!1506547 (longestMatchIsAcceptedByMatchOrIsEmpty!1667 (regex!7924 (h!52295 rules!2932)) longerInput!51))))

(declare-fun res!1743672 () Bool)

(assert (=> b!4240275 (= res!1743672 (isEmpty!27708 (_1!25362 (findLongestMatchInner!1704 (regex!7924 (h!52295 rules!2932)) Nil!46873 (size!34338 Nil!46873) longerInput!51 longerInput!51 (size!34338 longerInput!51)))))))

(assert (=> b!4240275 (=> res!1743672 e!2633120)))

(assert (=> b!4240275 e!2633120))

(declare-fun lt!1506548 () Unit!65963)

(assert (=> b!4240275 (= lt!1506548 lt!1506547)))

(declare-fun lt!1506549 () Unit!65963)

(assert (=> b!4240275 (= lt!1506549 (lemmaSemiInverse!2535 (transformation!7924 (h!52295 rules!2932)) (seqFromList!5810 (_1!25362 lt!1506546))))))

(declare-fun b!4240276 () Bool)

(assert (=> b!4240276 (= e!2633118 None!10059)))

(declare-fun b!4240277 () Bool)

(declare-fun res!1743676 () Bool)

(assert (=> b!4240277 (=> (not res!1743676) (not e!2633119))))

(assert (=> b!4240277 (= res!1743676 (= (rule!11050 (_1!25359 (get!15242 lt!1506545))) (h!52295 rules!2932)))))

(declare-fun b!4240278 () Bool)

(declare-fun res!1743674 () Bool)

(assert (=> b!4240278 (=> (not res!1743674) (not e!2633119))))

(assert (=> b!4240278 (= res!1743674 (< (size!34338 (_2!25359 (get!15242 lt!1506545))) (size!34338 longerInput!51)))))

(assert (= (and d!1247595 c!720501) b!4240276))

(assert (= (and d!1247595 (not c!720501)) b!4240275))

(assert (= (and b!4240275 (not res!1743672)) b!4240273))

(assert (= (and d!1247595 (not res!1743675)) b!4240270))

(assert (= (and b!4240270 res!1743677) b!4240272))

(assert (= (and b!4240272 res!1743678) b!4240278))

(assert (= (and b!4240278 res!1743674) b!4240277))

(assert (= (and b!4240277 res!1743676) b!4240271))

(assert (= (and b!4240271 res!1743673) b!4240274))

(declare-fun m!4825923 () Bool)

(assert (=> b!4240275 m!4825923))

(declare-fun m!4825925 () Bool)

(assert (=> b!4240275 m!4825925))

(declare-fun m!4825927 () Bool)

(assert (=> b!4240275 m!4825927))

(assert (=> b!4240275 m!4825863))

(assert (=> b!4240275 m!4825863))

(assert (=> b!4240275 m!4824619))

(declare-fun m!4825929 () Bool)

(assert (=> b!4240275 m!4825929))

(assert (=> b!4240275 m!4825923))

(assert (=> b!4240275 m!4825923))

(declare-fun m!4825931 () Bool)

(assert (=> b!4240275 m!4825931))

(assert (=> b!4240275 m!4824619))

(assert (=> b!4240275 m!4825923))

(declare-fun m!4825933 () Bool)

(assert (=> b!4240275 m!4825933))

(declare-fun m!4825935 () Bool)

(assert (=> b!4240275 m!4825935))

(declare-fun m!4825937 () Bool)

(assert (=> b!4240270 m!4825937))

(declare-fun m!4825939 () Bool)

(assert (=> b!4240270 m!4825939))

(assert (=> b!4240270 m!4825939))

(declare-fun m!4825941 () Bool)

(assert (=> b!4240270 m!4825941))

(assert (=> b!4240270 m!4825941))

(declare-fun m!4825943 () Bool)

(assert (=> b!4240270 m!4825943))

(assert (=> b!4240274 m!4825937))

(declare-fun m!4825945 () Bool)

(assert (=> b!4240274 m!4825945))

(assert (=> b!4240271 m!4825937))

(declare-fun m!4825947 () Bool)

(assert (=> b!4240271 m!4825947))

(assert (=> b!4240271 m!4825947))

(declare-fun m!4825949 () Bool)

(assert (=> b!4240271 m!4825949))

(assert (=> b!4240278 m!4825937))

(declare-fun m!4825951 () Bool)

(assert (=> b!4240278 m!4825951))

(assert (=> b!4240278 m!4824619))

(assert (=> b!4240272 m!4825937))

(assert (=> b!4240272 m!4825939))

(assert (=> b!4240272 m!4825939))

(assert (=> b!4240272 m!4825941))

(assert (=> b!4240272 m!4825941))

(declare-fun m!4825953 () Bool)

(assert (=> b!4240272 m!4825953))

(declare-fun m!4825955 () Bool)

(assert (=> d!1247595 m!4825955))

(declare-fun m!4825957 () Bool)

(assert (=> d!1247595 m!4825957))

(declare-fun m!4825959 () Bool)

(assert (=> d!1247595 m!4825959))

(assert (=> d!1247595 m!4825691))

(assert (=> b!4240273 m!4825863))

(assert (=> b!4240273 m!4824619))

(assert (=> b!4240273 m!4825863))

(assert (=> b!4240273 m!4824619))

(assert (=> b!4240273 m!4825929))

(declare-fun m!4825961 () Bool)

(assert (=> b!4240273 m!4825961))

(assert (=> b!4240277 m!4825937))

(assert (=> bm!293821 d!1247595))

(declare-fun d!1247597 () Bool)

(assert (=> d!1247597 (= (inv!61610 (tag!8788 (h!52295 (t!350412 rules!2932)))) (= (mod (str.len (value!246369 (tag!8788 (h!52295 (t!350412 rules!2932))))) 2) 0))))

(assert (=> b!4239604 d!1247597))

(declare-fun d!1247599 () Bool)

(declare-fun res!1743679 () Bool)

(declare-fun e!2633122 () Bool)

(assert (=> d!1247599 (=> (not res!1743679) (not e!2633122))))

(assert (=> d!1247599 (= res!1743679 (semiInverseModEq!3446 (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toValue!10676 (transformation!7924 (h!52295 (t!350412 rules!2932))))))))

(assert (=> d!1247599 (= (inv!61613 (transformation!7924 (h!52295 (t!350412 rules!2932)))) e!2633122)))

(declare-fun b!4240279 () Bool)

(assert (=> b!4240279 (= e!2633122 (equivClasses!3345 (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toValue!10676 (transformation!7924 (h!52295 (t!350412 rules!2932))))))))

(assert (= (and d!1247599 res!1743679) b!4240279))

(declare-fun m!4825963 () Bool)

(assert (=> d!1247599 m!4825963))

(declare-fun m!4825965 () Bool)

(assert (=> b!4240279 m!4825965))

(assert (=> b!4239604 d!1247599))

(declare-fun d!1247601 () Bool)

(assert (=> d!1247601 (= (isEmpty!27711 lt!1506370) (not ((_ is Some!10059) lt!1506370)))))

(assert (=> d!1247191 d!1247601))

(declare-fun b!4240280 () Bool)

(declare-fun e!2633125 () Bool)

(declare-fun e!2633124 () Bool)

(assert (=> b!4240280 (= e!2633125 e!2633124)))

(declare-fun res!1743683 () Bool)

(assert (=> b!4240280 (=> (not res!1743683) (not e!2633124))))

(assert (=> b!4240280 (= res!1743683 (not ((_ is Nil!46873) shorterInput!51)))))

(declare-fun b!4240283 () Bool)

(declare-fun e!2633123 () Bool)

(assert (=> b!4240283 (= e!2633123 (>= (size!34338 shorterInput!51) (size!34338 shorterInput!51)))))

(declare-fun d!1247603 () Bool)

(assert (=> d!1247603 e!2633123))

(declare-fun res!1743680 () Bool)

(assert (=> d!1247603 (=> res!1743680 e!2633123)))

(declare-fun lt!1506550 () Bool)

(assert (=> d!1247603 (= res!1743680 (not lt!1506550))))

(assert (=> d!1247603 (= lt!1506550 e!2633125)))

(declare-fun res!1743681 () Bool)

(assert (=> d!1247603 (=> res!1743681 e!2633125)))

(assert (=> d!1247603 (= res!1743681 ((_ is Nil!46873) shorterInput!51))))

(assert (=> d!1247603 (= (isPrefix!4723 shorterInput!51 shorterInput!51) lt!1506550)))

(declare-fun b!4240282 () Bool)

(assert (=> b!4240282 (= e!2633124 (isPrefix!4723 (tail!6840 shorterInput!51) (tail!6840 shorterInput!51)))))

(declare-fun b!4240281 () Bool)

(declare-fun res!1743682 () Bool)

(assert (=> b!4240281 (=> (not res!1743682) (not e!2633124))))

(assert (=> b!4240281 (= res!1743682 (= (head!8987 shorterInput!51) (head!8987 shorterInput!51)))))

(assert (= (and d!1247603 (not res!1743681)) b!4240280))

(assert (= (and b!4240280 res!1743683) b!4240281))

(assert (= (and b!4240281 res!1743682) b!4240282))

(assert (= (and d!1247603 (not res!1743680)) b!4240283))

(assert (=> b!4240283 m!4824621))

(assert (=> b!4240283 m!4824621))

(declare-fun m!4825967 () Bool)

(assert (=> b!4240282 m!4825967))

(assert (=> b!4240282 m!4825967))

(assert (=> b!4240282 m!4825967))

(assert (=> b!4240282 m!4825967))

(declare-fun m!4825969 () Bool)

(assert (=> b!4240282 m!4825969))

(declare-fun m!4825971 () Bool)

(assert (=> b!4240281 m!4825971))

(assert (=> b!4240281 m!4825971))

(assert (=> d!1247191 d!1247603))

(declare-fun d!1247605 () Bool)

(assert (=> d!1247605 (isPrefix!4723 shorterInput!51 shorterInput!51)))

(declare-fun lt!1506551 () Unit!65963)

(assert (=> d!1247605 (= lt!1506551 (choose!25946 shorterInput!51 shorterInput!51))))

(assert (=> d!1247605 (= (lemmaIsPrefixRefl!3120 shorterInput!51 shorterInput!51) lt!1506551)))

(declare-fun bs!598356 () Bool)

(assert (= bs!598356 d!1247605))

(assert (=> bs!598356 m!4824899))

(declare-fun m!4825973 () Bool)

(assert (=> bs!598356 m!4825973))

(assert (=> d!1247191 d!1247605))

(assert (=> d!1247191 d!1247489))

(assert (=> b!4239433 d!1247285))

(assert (=> b!4239433 d!1247287))

(assert (=> b!4239433 d!1247283))

(declare-fun d!1247607 () Bool)

(assert (=> d!1247607 (= (inv!16 (value!246370 (h!52294 addTokens!17))) (= (charsToInt!0 (text!57525 (value!246370 (h!52294 addTokens!17)))) (value!246361 (value!246370 (h!52294 addTokens!17)))))))

(declare-fun bs!598357 () Bool)

(assert (= bs!598357 d!1247607))

(declare-fun m!4825975 () Bool)

(assert (=> bs!598357 m!4825975))

(assert (=> b!4239572 d!1247607))

(declare-fun b!4240285 () Bool)

(declare-fun e!2633127 () List!46997)

(assert (=> b!4240285 (= e!2633127 (Cons!46873 (h!52293 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))) (++!11935 (t!350410 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))) (_2!25359 (v!41009 lt!1506311)))))))

(declare-fun b!4240286 () Bool)

(declare-fun res!1743684 () Bool)

(declare-fun e!2633126 () Bool)

(assert (=> b!4240286 (=> (not res!1743684) (not e!2633126))))

(declare-fun lt!1506552 () List!46997)

(assert (=> b!4240286 (= res!1743684 (= (size!34338 lt!1506552) (+ (size!34338 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))) (size!34338 (_2!25359 (v!41009 lt!1506311))))))))

(declare-fun b!4240287 () Bool)

(assert (=> b!4240287 (= e!2633126 (or (not (= (_2!25359 (v!41009 lt!1506311)) Nil!46873)) (= lt!1506552 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))))

(declare-fun d!1247609 () Bool)

(assert (=> d!1247609 e!2633126))

(declare-fun res!1743685 () Bool)

(assert (=> d!1247609 (=> (not res!1743685) (not e!2633126))))

(assert (=> d!1247609 (= res!1743685 (= (content!7369 lt!1506552) ((_ map or) (content!7369 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))) (content!7369 (_2!25359 (v!41009 lt!1506311))))))))

(assert (=> d!1247609 (= lt!1506552 e!2633127)))

(declare-fun c!720502 () Bool)

(assert (=> d!1247609 (= c!720502 ((_ is Nil!46873) (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))))))

(assert (=> d!1247609 (= (++!11935 (t!350410 (list!16901 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) (_2!25359 (v!41009 lt!1506311))) lt!1506552)))

(declare-fun b!4240284 () Bool)

(assert (=> b!4240284 (= e!2633127 (_2!25359 (v!41009 lt!1506311)))))

(assert (= (and d!1247609 c!720502) b!4240284))

(assert (= (and d!1247609 (not c!720502)) b!4240285))

(assert (= (and d!1247609 res!1743685) b!4240286))

(assert (= (and b!4240286 res!1743684) b!4240287))

(declare-fun m!4825977 () Bool)

(assert (=> b!4240285 m!4825977))

(declare-fun m!4825979 () Bool)

(assert (=> b!4240286 m!4825979))

(assert (=> b!4240286 m!4825769))

(assert (=> b!4240286 m!4824693))

(declare-fun m!4825981 () Bool)

(assert (=> d!1247609 m!4825981))

(assert (=> d!1247609 m!4825749))

(assert (=> d!1247609 m!4824699))

(assert (=> b!4239300 d!1247609))

(declare-fun d!1247611 () Bool)

(declare-fun c!720503 () Bool)

(assert (=> d!1247611 (= c!720503 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))))))

(declare-fun e!2633128 () Bool)

(assert (=> d!1247611 (= (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))) e!2633128)))

(declare-fun b!4240288 () Bool)

(assert (=> b!4240288 (= e!2633128 (inv!61621 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))))))

(declare-fun b!4240289 () Bool)

(declare-fun e!2633129 () Bool)

(assert (=> b!4240289 (= e!2633128 e!2633129)))

(declare-fun res!1743686 () Bool)

(assert (=> b!4240289 (= res!1743686 (not ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))))))))

(assert (=> b!4240289 (=> res!1743686 e!2633129)))

(declare-fun b!4240290 () Bool)

(assert (=> b!4240290 (= e!2633129 (inv!61622 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))))))

(assert (= (and d!1247611 c!720503) b!4240288))

(assert (= (and d!1247611 (not c!720503)) b!4240289))

(assert (= (and b!4240289 (not res!1743686)) b!4240290))

(declare-fun m!4825983 () Bool)

(assert (=> b!4240288 m!4825983))

(declare-fun m!4825985 () Bool)

(assert (=> b!4240290 m!4825985))

(assert (=> b!4239316 d!1247611))

(declare-fun d!1247613 () Bool)

(assert (=> d!1247613 (= (inv!61618 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))) (isBalanced!3758 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))))))

(declare-fun bs!598358 () Bool)

(assert (= bs!598358 d!1247613))

(declare-fun m!4825987 () Bool)

(assert (=> bs!598358 m!4825987))

(assert (=> tb!254615 d!1247613))

(declare-fun d!1247615 () Bool)

(assert (=> d!1247615 (= (inv!17 (value!246370 (h!52294 addTokens!17))) (= (charsToBigInt!1 (text!57526 (value!246370 (h!52294 addTokens!17)))) (value!246362 (value!246370 (h!52294 addTokens!17)))))))

(declare-fun bs!598359 () Bool)

(assert (= bs!598359 d!1247615))

(declare-fun m!4825989 () Bool)

(assert (=> bs!598359 m!4825989))

(assert (=> b!4239574 d!1247615))

(declare-fun d!1247617 () Bool)

(assert (=> d!1247617 (= (list!16901 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))) (list!16903 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))))))

(declare-fun bs!598360 () Bool)

(assert (= bs!598360 d!1247617))

(declare-fun m!4825991 () Bool)

(assert (=> bs!598360 m!4825991))

(assert (=> b!4239347 d!1247617))

(declare-fun d!1247619 () Bool)

(assert (=> d!1247619 (= (inv!15 (value!246370 (h!52294 addTokens!17))) (= (charsToBigInt!0 (text!57527 (value!246370 (h!52294 addTokens!17))) 0) (value!246365 (value!246370 (h!52294 addTokens!17)))))))

(declare-fun bs!598361 () Bool)

(assert (= bs!598361 d!1247619))

(declare-fun m!4825993 () Bool)

(assert (=> bs!598361 m!4825993))

(assert (=> b!4239576 d!1247619))

(declare-fun b!4240301 () Bool)

(declare-fun e!2633135 () List!46997)

(declare-fun list!16905 (IArray!28275) List!46997)

(assert (=> b!4240301 (= e!2633135 (list!16905 (xs!17441 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))))))

(declare-fun b!4240300 () Bool)

(declare-fun e!2633134 () List!46997)

(assert (=> b!4240300 (= e!2633134 e!2633135)))

(declare-fun c!720509 () Bool)

(assert (=> b!4240300 (= c!720509 ((_ is Leaf!21856) (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))

(declare-fun b!4240299 () Bool)

(assert (=> b!4240299 (= e!2633134 Nil!46873)))

(declare-fun b!4240302 () Bool)

(assert (=> b!4240302 (= e!2633135 (++!11935 (list!16903 (left!34839 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506312)))))) (list!16903 (right!35169 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))))

(declare-fun d!1247621 () Bool)

(declare-fun c!720508 () Bool)

(assert (=> d!1247621 (= c!720508 ((_ is Empty!14135) (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))))))

(assert (=> d!1247621 (= (list!16903 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506312))))) e!2633134)))

(assert (= (and d!1247621 c!720508) b!4240299))

(assert (= (and d!1247621 (not c!720508)) b!4240300))

(assert (= (and b!4240300 c!720509) b!4240301))

(assert (= (and b!4240300 (not c!720509)) b!4240302))

(declare-fun m!4825995 () Bool)

(assert (=> b!4240301 m!4825995))

(declare-fun m!4825997 () Bool)

(assert (=> b!4240302 m!4825997))

(declare-fun m!4825999 () Bool)

(assert (=> b!4240302 m!4825999))

(assert (=> b!4240302 m!4825997))

(assert (=> b!4240302 m!4825999))

(declare-fun m!4826001 () Bool)

(assert (=> b!4240302 m!4826001))

(assert (=> d!1247175 d!1247621))

(declare-fun b!4240305 () Bool)

(declare-fun e!2633137 () List!46997)

(assert (=> b!4240305 (= e!2633137 (list!16905 (xs!17441 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))))))

(declare-fun b!4240304 () Bool)

(declare-fun e!2633136 () List!46997)

(assert (=> b!4240304 (= e!2633136 e!2633137)))

(declare-fun c!720511 () Bool)

(assert (=> b!4240304 (= c!720511 ((_ is Leaf!21856) (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))

(declare-fun b!4240303 () Bool)

(assert (=> b!4240303 (= e!2633136 Nil!46873)))

(declare-fun b!4240306 () Bool)

(assert (=> b!4240306 (= e!2633137 (++!11935 (list!16903 (left!34839 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506311)))))) (list!16903 (right!35169 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))))

(declare-fun d!1247623 () Bool)

(declare-fun c!720510 () Bool)

(assert (=> d!1247623 (= c!720510 ((_ is Empty!14135) (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))))))

(assert (=> d!1247623 (= (list!16903 (c!720323 (charsOf!5278 (_1!25359 (v!41009 lt!1506311))))) e!2633136)))

(assert (= (and d!1247623 c!720510) b!4240303))

(assert (= (and d!1247623 (not c!720510)) b!4240304))

(assert (= (and b!4240304 c!720511) b!4240305))

(assert (= (and b!4240304 (not c!720511)) b!4240306))

(declare-fun m!4826003 () Bool)

(assert (=> b!4240305 m!4826003))

(declare-fun m!4826005 () Bool)

(assert (=> b!4240306 m!4826005))

(declare-fun m!4826007 () Bool)

(assert (=> b!4240306 m!4826007))

(assert (=> b!4240306 m!4826005))

(assert (=> b!4240306 m!4826007))

(declare-fun m!4826009 () Bool)

(assert (=> b!4240306 m!4826009))

(assert (=> d!1247165 d!1247623))

(declare-fun b!4240308 () Bool)

(declare-fun e!2633138 () Bool)

(declare-fun tp!1299434 () Bool)

(declare-fun tp!1299437 () Bool)

(assert (=> b!4240308 (= e!2633138 (and tp!1299434 tp!1299437))))

(assert (=> b!4239608 (= tp!1299269 e!2633138)))

(declare-fun b!4240307 () Bool)

(assert (=> b!4240307 (= e!2633138 tp_is_empty!22649)))

(declare-fun b!4240309 () Bool)

(declare-fun tp!1299438 () Bool)

(assert (=> b!4240309 (= e!2633138 tp!1299438)))

(declare-fun b!4240310 () Bool)

(declare-fun tp!1299436 () Bool)

(declare-fun tp!1299435 () Bool)

(assert (=> b!4240310 (= e!2633138 (and tp!1299436 tp!1299435))))

(assert (= (and b!4239608 ((_ is ElementMatch!12829) (reg!13158 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240307))

(assert (= (and b!4239608 ((_ is Concat!20984) (reg!13158 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240308))

(assert (= (and b!4239608 ((_ is Star!12829) (reg!13158 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240309))

(assert (= (and b!4239608 ((_ is Union!12829) (reg!13158 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240310))

(declare-fun b!4240314 () Bool)

(declare-fun b_free!125503 () Bool)

(declare-fun b_next!126207 () Bool)

(assert (=> b!4240314 (= b_free!125503 (not b_next!126207))))

(declare-fun t!350718 () Bool)

(declare-fun tb!254903 () Bool)

(assert (=> (and b!4240314 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350718) tb!254903))

(declare-fun result!310854 () Bool)

(assert (= result!310854 result!310828))

(assert (=> d!1247535 t!350718))

(declare-fun t!350720 () Bool)

(declare-fun tb!254905 () Bool)

(assert (=> (and b!4240314 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350720) tb!254905))

(declare-fun result!310856 () Bool)

(assert (= result!310856 result!310842))

(assert (=> d!1247553 t!350720))

(declare-fun tp!1299442 () Bool)

(declare-fun b_and!335417 () Bool)

(assert (=> b!4240314 (= tp!1299442 (and (=> t!350718 result!310854) (=> t!350720 result!310856) b_and!335417))))

(declare-fun b_free!125505 () Bool)

(declare-fun b_next!126209 () Bool)

(assert (=> b!4240314 (= b_free!125505 (not b_next!126209))))

(declare-fun t!350722 () Bool)

(declare-fun tb!254907 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350722) tb!254907))

(declare-fun result!310858 () Bool)

(assert (= result!310858 result!310668))

(assert (=> d!1247287 t!350722))

(declare-fun t!350724 () Bool)

(declare-fun tb!254909 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350724) tb!254909))

(declare-fun result!310860 () Bool)

(assert (= result!310860 result!310644))

(assert (=> b!4239639 t!350724))

(declare-fun tb!254911 () Bool)

(declare-fun t!350726 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350726) tb!254911))

(declare-fun result!310862 () Bool)

(assert (= result!310862 result!310544))

(assert (=> d!1247177 t!350726))

(declare-fun t!350728 () Bool)

(declare-fun tb!254913 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350728) tb!254913))

(declare-fun result!310864 () Bool)

(assert (= result!310864 result!310536))

(assert (=> d!1247167 t!350728))

(declare-fun t!350730 () Bool)

(declare-fun tb!254915 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350730) tb!254915))

(declare-fun result!310866 () Bool)

(assert (= result!310866 result!310550))

(assert (=> b!4239347 t!350730))

(declare-fun tb!254917 () Bool)

(declare-fun t!350732 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350732) tb!254917))

(declare-fun result!310868 () Bool)

(assert (= result!310868 result!310656))

(assert (=> d!1247273 t!350732))

(declare-fun tb!254919 () Bool)

(declare-fun t!350734 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350734) tb!254919))

(declare-fun result!310870 () Bool)

(assert (= result!310870 result!310556))

(assert (=> b!4239350 t!350734))

(declare-fun tb!254921 () Bool)

(declare-fun t!350736 () Bool)

(assert (=> (and b!4240314 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350736) tb!254921))

(declare-fun result!310872 () Bool)

(assert (= result!310872 result!310680))

(assert (=> b!4239725 t!350736))

(declare-fun tp!1299440 () Bool)

(declare-fun b_and!335419 () Bool)

(assert (=> b!4240314 (= tp!1299440 (and (=> t!350726 result!310862) (=> t!350736 result!310872) (=> t!350730 result!310866) (=> t!350724 result!310860) (=> t!350728 result!310864) (=> t!350722 result!310858) (=> t!350734 result!310870) (=> t!350732 result!310868) b_and!335419))))

(declare-fun b!4240311 () Bool)

(declare-fun e!2633144 () Bool)

(declare-fun tp!1299441 () Bool)

(declare-fun e!2633139 () Bool)

(assert (=> b!4240311 (= e!2633144 (and (inv!61614 (h!52294 (t!350411 (t!350411 addTokens!17)))) e!2633139 tp!1299441))))

(declare-fun e!2633140 () Bool)

(assert (=> b!4240314 (= e!2633140 (and tp!1299442 tp!1299440))))

(assert (=> b!4239625 (= tp!1299285 e!2633144)))

(declare-fun tp!1299443 () Bool)

(declare-fun e!2633143 () Bool)

(declare-fun b!4240313 () Bool)

(assert (=> b!4240313 (= e!2633143 (and tp!1299443 (inv!61610 (tag!8788 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (inv!61613 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) e!2633140))))

(declare-fun b!4240312 () Bool)

(declare-fun tp!1299439 () Bool)

(assert (=> b!4240312 (= e!2633139 (and (inv!21 (value!246370 (h!52294 (t!350411 (t!350411 addTokens!17))))) e!2633143 tp!1299439))))

(assert (= b!4240313 b!4240314))

(assert (= b!4240312 b!4240313))

(assert (= b!4240311 b!4240312))

(assert (= (and b!4239625 ((_ is Cons!46874) (t!350411 (t!350411 addTokens!17)))) b!4240311))

(declare-fun m!4826011 () Bool)

(assert (=> b!4240311 m!4826011))

(declare-fun m!4826013 () Bool)

(assert (=> b!4240313 m!4826013))

(declare-fun m!4826015 () Bool)

(assert (=> b!4240313 m!4826015))

(declare-fun m!4826017 () Bool)

(assert (=> b!4240312 m!4826017))

(declare-fun e!2633150 () Bool)

(declare-fun tp!1299452 () Bool)

(declare-fun b!4240323 () Bool)

(declare-fun tp!1299450 () Bool)

(assert (=> b!4240323 (= e!2633150 (and (inv!61617 (left!34839 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))))) tp!1299450 (inv!61617 (right!35169 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))))) tp!1299452))))

(declare-fun b!4240325 () Bool)

(declare-fun e!2633149 () Bool)

(declare-fun tp!1299451 () Bool)

(assert (=> b!4240325 (= e!2633149 tp!1299451)))

(declare-fun b!4240324 () Bool)

(declare-fun inv!61624 (IArray!28275) Bool)

(assert (=> b!4240324 (= e!2633150 (and (inv!61624 (xs!17441 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))))) e!2633149))))

(assert (=> b!4239331 (= tp!1299163 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312)))))) e!2633150))))

(assert (= (and b!4239331 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))))) b!4240323))

(assert (= b!4240324 b!4240325))

(assert (= (and b!4239331 ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))) (value!246370 (_1!25359 (v!41009 lt!1506312))))))) b!4240324))

(declare-fun m!4826019 () Bool)

(assert (=> b!4240323 m!4826019))

(declare-fun m!4826021 () Bool)

(assert (=> b!4240323 m!4826021))

(declare-fun m!4826023 () Bool)

(assert (=> b!4240324 m!4826023))

(assert (=> b!4239331 m!4824737))

(declare-fun b!4240327 () Bool)

(declare-fun e!2633151 () Bool)

(declare-fun tp!1299453 () Bool)

(declare-fun tp!1299456 () Bool)

(assert (=> b!4240327 (= e!2633151 (and tp!1299453 tp!1299456))))

(assert (=> b!4239609 (= tp!1299267 e!2633151)))

(declare-fun b!4240326 () Bool)

(assert (=> b!4240326 (= e!2633151 tp_is_empty!22649)))

(declare-fun b!4240328 () Bool)

(declare-fun tp!1299457 () Bool)

(assert (=> b!4240328 (= e!2633151 tp!1299457)))

(declare-fun b!4240329 () Bool)

(declare-fun tp!1299455 () Bool)

(declare-fun tp!1299454 () Bool)

(assert (=> b!4240329 (= e!2633151 (and tp!1299455 tp!1299454))))

(assert (= (and b!4239609 ((_ is ElementMatch!12829) (regOne!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240326))

(assert (= (and b!4239609 ((_ is Concat!20984) (regOne!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240327))

(assert (= (and b!4239609 ((_ is Star!12829) (regOne!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240328))

(assert (= (and b!4239609 ((_ is Union!12829) (regOne!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240329))

(declare-fun b!4240331 () Bool)

(declare-fun e!2633152 () Bool)

(declare-fun tp!1299458 () Bool)

(declare-fun tp!1299461 () Bool)

(assert (=> b!4240331 (= e!2633152 (and tp!1299458 tp!1299461))))

(assert (=> b!4239609 (= tp!1299266 e!2633152)))

(declare-fun b!4240330 () Bool)

(assert (=> b!4240330 (= e!2633152 tp_is_empty!22649)))

(declare-fun b!4240332 () Bool)

(declare-fun tp!1299462 () Bool)

(assert (=> b!4240332 (= e!2633152 tp!1299462)))

(declare-fun b!4240333 () Bool)

(declare-fun tp!1299460 () Bool)

(declare-fun tp!1299459 () Bool)

(assert (=> b!4240333 (= e!2633152 (and tp!1299460 tp!1299459))))

(assert (= (and b!4239609 ((_ is ElementMatch!12829) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240330))

(assert (= (and b!4239609 ((_ is Concat!20984) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240331))

(assert (= (and b!4239609 ((_ is Star!12829) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240332))

(assert (= (and b!4239609 ((_ is Union!12829) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240333))

(declare-fun b!4240334 () Bool)

(declare-fun e!2633153 () Bool)

(declare-fun tp!1299463 () Bool)

(assert (=> b!4240334 (= e!2633153 (and tp_is_empty!22649 tp!1299463))))

(assert (=> b!4239626 (= tp!1299283 e!2633153)))

(assert (= (and b!4239626 ((_ is Cons!46873) (originalCharacters!8268 (h!52294 (t!350411 addTokens!17))))) b!4240334))

(declare-fun b!4240336 () Bool)

(declare-fun e!2633154 () Bool)

(declare-fun tp!1299464 () Bool)

(declare-fun tp!1299467 () Bool)

(assert (=> b!4240336 (= e!2633154 (and tp!1299464 tp!1299467))))

(assert (=> b!4239627 (= tp!1299287 e!2633154)))

(declare-fun b!4240335 () Bool)

(assert (=> b!4240335 (= e!2633154 tp_is_empty!22649)))

(declare-fun b!4240337 () Bool)

(declare-fun tp!1299468 () Bool)

(assert (=> b!4240337 (= e!2633154 tp!1299468)))

(declare-fun b!4240338 () Bool)

(declare-fun tp!1299466 () Bool)

(declare-fun tp!1299465 () Bool)

(assert (=> b!4240338 (= e!2633154 (and tp!1299466 tp!1299465))))

(assert (= (and b!4239627 ((_ is ElementMatch!12829) (regex!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) b!4240335))

(assert (= (and b!4239627 ((_ is Concat!20984) (regex!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) b!4240336))

(assert (= (and b!4239627 ((_ is Star!12829) (regex!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) b!4240337))

(assert (= (and b!4239627 ((_ is Union!12829) (regex!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) b!4240338))

(declare-fun b!4240339 () Bool)

(declare-fun e!2633155 () Bool)

(declare-fun tp!1299469 () Bool)

(assert (=> b!4240339 (= e!2633155 (and tp_is_empty!22649 tp!1299469))))

(assert (=> b!4239633 (= tp!1299293 e!2633155)))

(assert (= (and b!4239633 ((_ is Cons!46873) (t!350410 (t!350410 shorterInput!51)))) b!4240339))

(declare-fun b!4240340 () Bool)

(declare-fun tp!1299470 () Bool)

(declare-fun e!2633157 () Bool)

(declare-fun tp!1299472 () Bool)

(assert (=> b!4240340 (= e!2633157 (and (inv!61617 (left!34839 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))))) tp!1299470 (inv!61617 (right!35169 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))))) tp!1299472))))

(declare-fun b!4240342 () Bool)

(declare-fun e!2633156 () Bool)

(declare-fun tp!1299471 () Bool)

(assert (=> b!4240342 (= e!2633156 tp!1299471)))

(declare-fun b!4240341 () Bool)

(assert (=> b!4240341 (= e!2633157 (and (inv!61624 (xs!17441 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))))) e!2633156))))

(assert (=> b!4239356 (= tp!1299165 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581))))) e!2633157))))

(assert (= (and b!4239356 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))))) b!4240340))

(assert (= b!4240341 b!4240342))

(assert (= (and b!4239356 ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (value!246370 (h!52294 tokens!581)))))) b!4240341))

(declare-fun m!4826025 () Bool)

(assert (=> b!4240340 m!4826025))

(declare-fun m!4826027 () Bool)

(assert (=> b!4240340 m!4826027))

(declare-fun m!4826029 () Bool)

(assert (=> b!4240341 m!4826029))

(assert (=> b!4239356 m!4824771))

(declare-fun b!4240343 () Bool)

(declare-fun e!2633158 () Bool)

(declare-fun tp!1299473 () Bool)

(assert (=> b!4240343 (= e!2633158 (and tp_is_empty!22649 tp!1299473))))

(assert (=> b!4239614 (= tp!1299272 e!2633158)))

(assert (= (and b!4239614 ((_ is Cons!46873) (t!350410 (t!350410 suffix!1262)))) b!4240343))

(declare-fun b!4240347 () Bool)

(declare-fun b_free!125507 () Bool)

(declare-fun b_next!126211 () Bool)

(assert (=> b!4240347 (= b_free!125507 (not b_next!126211))))

(declare-fun tb!254923 () Bool)

(declare-fun t!350738 () Bool)

(assert (=> (and b!4240347 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350738) tb!254923))

(declare-fun result!310876 () Bool)

(assert (= result!310876 result!310828))

(assert (=> d!1247535 t!350738))

(declare-fun tb!254925 () Bool)

(declare-fun t!350740 () Bool)

(assert (=> (and b!4240347 (= (toValue!10676 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350740) tb!254925))

(declare-fun result!310878 () Bool)

(assert (= result!310878 result!310842))

(assert (=> d!1247553 t!350740))

(declare-fun b_and!335421 () Bool)

(declare-fun tp!1299477 () Bool)

(assert (=> b!4240347 (= tp!1299477 (and (=> t!350738 result!310876) (=> t!350740 result!310878) b_and!335421))))

(declare-fun b_free!125509 () Bool)

(declare-fun b_next!126213 () Bool)

(assert (=> b!4240347 (= b_free!125509 (not b_next!126213))))

(declare-fun tb!254927 () Bool)

(declare-fun t!350742 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350742) tb!254927))

(declare-fun result!310880 () Bool)

(assert (= result!310880 result!310668))

(assert (=> d!1247287 t!350742))

(declare-fun tb!254929 () Bool)

(declare-fun t!350744 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350744) tb!254929))

(declare-fun result!310882 () Bool)

(assert (= result!310882 result!310644))

(assert (=> b!4239639 t!350744))

(declare-fun t!350746 () Bool)

(declare-fun tb!254931 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350746) tb!254931))

(declare-fun result!310884 () Bool)

(assert (= result!310884 result!310544))

(assert (=> d!1247177 t!350746))

(declare-fun t!350748 () Bool)

(declare-fun tb!254933 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350748) tb!254933))

(declare-fun result!310886 () Bool)

(assert (= result!310886 result!310536))

(assert (=> d!1247167 t!350748))

(declare-fun t!350750 () Bool)

(declare-fun tb!254935 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350750) tb!254935))

(declare-fun result!310888 () Bool)

(assert (= result!310888 result!310550))

(assert (=> b!4239347 t!350750))

(declare-fun t!350752 () Bool)

(declare-fun tb!254937 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350752) tb!254937))

(declare-fun result!310890 () Bool)

(assert (= result!310890 result!310656))

(assert (=> d!1247273 t!350752))

(declare-fun t!350754 () Bool)

(declare-fun tb!254939 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350754) tb!254939))

(declare-fun result!310892 () Bool)

(assert (= result!310892 result!310556))

(assert (=> b!4239350 t!350754))

(declare-fun t!350756 () Bool)

(declare-fun tb!254941 () Bool)

(assert (=> (and b!4240347 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350756) tb!254941))

(declare-fun result!310894 () Bool)

(assert (= result!310894 result!310680))

(assert (=> b!4239725 t!350756))

(declare-fun b_and!335423 () Bool)

(declare-fun tp!1299475 () Bool)

(assert (=> b!4240347 (= tp!1299475 (and (=> t!350742 result!310880) (=> t!350748 result!310886) (=> t!350744 result!310882) (=> t!350756 result!310894) (=> t!350750 result!310888) (=> t!350754 result!310892) (=> t!350752 result!310890) (=> t!350746 result!310884) b_and!335423))))

(declare-fun tp!1299476 () Bool)

(declare-fun b!4240344 () Bool)

(declare-fun e!2633159 () Bool)

(declare-fun e!2633164 () Bool)

(assert (=> b!4240344 (= e!2633164 (and (inv!61614 (h!52294 (t!350411 (t!350411 tokens!581)))) e!2633159 tp!1299476))))

(declare-fun e!2633160 () Bool)

(assert (=> b!4240347 (= e!2633160 (and tp!1299477 tp!1299475))))

(assert (=> b!4239629 (= tp!1299290 e!2633164)))

(declare-fun tp!1299478 () Bool)

(declare-fun e!2633163 () Bool)

(declare-fun b!4240346 () Bool)

(assert (=> b!4240346 (= e!2633163 (and tp!1299478 (inv!61610 (tag!8788 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (inv!61613 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) e!2633160))))

(declare-fun b!4240345 () Bool)

(declare-fun tp!1299474 () Bool)

(assert (=> b!4240345 (= e!2633159 (and (inv!21 (value!246370 (h!52294 (t!350411 (t!350411 tokens!581))))) e!2633163 tp!1299474))))

(assert (= b!4240346 b!4240347))

(assert (= b!4240345 b!4240346))

(assert (= b!4240344 b!4240345))

(assert (= (and b!4239629 ((_ is Cons!46874) (t!350411 (t!350411 tokens!581)))) b!4240344))

(declare-fun m!4826031 () Bool)

(assert (=> b!4240344 m!4826031))

(declare-fun m!4826033 () Bool)

(assert (=> b!4240346 m!4826033))

(declare-fun m!4826035 () Bool)

(assert (=> b!4240346 m!4826035))

(declare-fun m!4826037 () Bool)

(assert (=> b!4240345 m!4826037))

(declare-fun b!4240348 () Bool)

(declare-fun e!2633165 () Bool)

(declare-fun tp!1299479 () Bool)

(assert (=> b!4240348 (= e!2633165 (and tp_is_empty!22649 tp!1299479))))

(assert (=> b!4239630 (= tp!1299288 e!2633165)))

(assert (= (and b!4239630 ((_ is Cons!46873) (originalCharacters!8268 (h!52294 (t!350411 tokens!581))))) b!4240348))

(declare-fun b!4240350 () Bool)

(declare-fun e!2633166 () Bool)

(declare-fun tp!1299480 () Bool)

(declare-fun tp!1299483 () Bool)

(assert (=> b!4240350 (= e!2633166 (and tp!1299480 tp!1299483))))

(assert (=> b!4239593 (= tp!1299252 e!2633166)))

(declare-fun b!4240349 () Bool)

(assert (=> b!4240349 (= e!2633166 tp_is_empty!22649)))

(declare-fun b!4240351 () Bool)

(declare-fun tp!1299484 () Bool)

(assert (=> b!4240351 (= e!2633166 tp!1299484)))

(declare-fun b!4240352 () Bool)

(declare-fun tp!1299482 () Bool)

(declare-fun tp!1299481 () Bool)

(assert (=> b!4240352 (= e!2633166 (and tp!1299482 tp!1299481))))

(assert (= (and b!4239593 ((_ is ElementMatch!12829) (reg!13158 (regex!7924 (h!52295 rules!2932))))) b!4240349))

(assert (= (and b!4239593 ((_ is Concat!20984) (reg!13158 (regex!7924 (h!52295 rules!2932))))) b!4240350))

(assert (= (and b!4239593 ((_ is Star!12829) (reg!13158 (regex!7924 (h!52295 rules!2932))))) b!4240351))

(assert (= (and b!4239593 ((_ is Union!12829) (reg!13158 (regex!7924 (h!52295 rules!2932))))) b!4240352))

(declare-fun b!4240354 () Bool)

(declare-fun e!2633167 () Bool)

(declare-fun tp!1299485 () Bool)

(declare-fun tp!1299488 () Bool)

(assert (=> b!4240354 (= e!2633167 (and tp!1299485 tp!1299488))))

(assert (=> b!4239592 (= tp!1299248 e!2633167)))

(declare-fun b!4240353 () Bool)

(assert (=> b!4240353 (= e!2633167 tp_is_empty!22649)))

(declare-fun b!4240355 () Bool)

(declare-fun tp!1299489 () Bool)

(assert (=> b!4240355 (= e!2633167 tp!1299489)))

(declare-fun b!4240356 () Bool)

(declare-fun tp!1299487 () Bool)

(declare-fun tp!1299486 () Bool)

(assert (=> b!4240356 (= e!2633167 (and tp!1299487 tp!1299486))))

(assert (= (and b!4239592 ((_ is ElementMatch!12829) (regOne!26170 (regex!7924 (h!52295 rules!2932))))) b!4240353))

(assert (= (and b!4239592 ((_ is Concat!20984) (regOne!26170 (regex!7924 (h!52295 rules!2932))))) b!4240354))

(assert (= (and b!4239592 ((_ is Star!12829) (regOne!26170 (regex!7924 (h!52295 rules!2932))))) b!4240355))

(assert (= (and b!4239592 ((_ is Union!12829) (regOne!26170 (regex!7924 (h!52295 rules!2932))))) b!4240356))

(declare-fun b!4240358 () Bool)

(declare-fun e!2633168 () Bool)

(declare-fun tp!1299490 () Bool)

(declare-fun tp!1299493 () Bool)

(assert (=> b!4240358 (= e!2633168 (and tp!1299490 tp!1299493))))

(assert (=> b!4239592 (= tp!1299251 e!2633168)))

(declare-fun b!4240357 () Bool)

(assert (=> b!4240357 (= e!2633168 tp_is_empty!22649)))

(declare-fun b!4240359 () Bool)

(declare-fun tp!1299494 () Bool)

(assert (=> b!4240359 (= e!2633168 tp!1299494)))

(declare-fun b!4240360 () Bool)

(declare-fun tp!1299492 () Bool)

(declare-fun tp!1299491 () Bool)

(assert (=> b!4240360 (= e!2633168 (and tp!1299492 tp!1299491))))

(assert (= (and b!4239592 ((_ is ElementMatch!12829) (regTwo!26170 (regex!7924 (h!52295 rules!2932))))) b!4240357))

(assert (= (and b!4239592 ((_ is Concat!20984) (regTwo!26170 (regex!7924 (h!52295 rules!2932))))) b!4240358))

(assert (= (and b!4239592 ((_ is Star!12829) (regTwo!26170 (regex!7924 (h!52295 rules!2932))))) b!4240359))

(assert (= (and b!4239592 ((_ is Union!12829) (regTwo!26170 (regex!7924 (h!52295 rules!2932))))) b!4240360))

(declare-fun b!4240362 () Bool)

(declare-fun e!2633169 () Bool)

(declare-fun tp!1299495 () Bool)

(declare-fun tp!1299498 () Bool)

(assert (=> b!4240362 (= e!2633169 (and tp!1299495 tp!1299498))))

(assert (=> b!4239594 (= tp!1299250 e!2633169)))

(declare-fun b!4240361 () Bool)

(assert (=> b!4240361 (= e!2633169 tp_is_empty!22649)))

(declare-fun b!4240363 () Bool)

(declare-fun tp!1299499 () Bool)

(assert (=> b!4240363 (= e!2633169 tp!1299499)))

(declare-fun b!4240364 () Bool)

(declare-fun tp!1299497 () Bool)

(declare-fun tp!1299496 () Bool)

(assert (=> b!4240364 (= e!2633169 (and tp!1299497 tp!1299496))))

(assert (= (and b!4239594 ((_ is ElementMatch!12829) (regOne!26171 (regex!7924 (h!52295 rules!2932))))) b!4240361))

(assert (= (and b!4239594 ((_ is Concat!20984) (regOne!26171 (regex!7924 (h!52295 rules!2932))))) b!4240362))

(assert (= (and b!4239594 ((_ is Star!12829) (regOne!26171 (regex!7924 (h!52295 rules!2932))))) b!4240363))

(assert (= (and b!4239594 ((_ is Union!12829) (regOne!26171 (regex!7924 (h!52295 rules!2932))))) b!4240364))

(declare-fun b!4240366 () Bool)

(declare-fun e!2633170 () Bool)

(declare-fun tp!1299500 () Bool)

(declare-fun tp!1299503 () Bool)

(assert (=> b!4240366 (= e!2633170 (and tp!1299500 tp!1299503))))

(assert (=> b!4239594 (= tp!1299249 e!2633170)))

(declare-fun b!4240365 () Bool)

(assert (=> b!4240365 (= e!2633170 tp_is_empty!22649)))

(declare-fun b!4240367 () Bool)

(declare-fun tp!1299504 () Bool)

(assert (=> b!4240367 (= e!2633170 tp!1299504)))

(declare-fun b!4240368 () Bool)

(declare-fun tp!1299502 () Bool)

(declare-fun tp!1299501 () Bool)

(assert (=> b!4240368 (= e!2633170 (and tp!1299502 tp!1299501))))

(assert (= (and b!4239594 ((_ is ElementMatch!12829) (regTwo!26171 (regex!7924 (h!52295 rules!2932))))) b!4240365))

(assert (= (and b!4239594 ((_ is Concat!20984) (regTwo!26171 (regex!7924 (h!52295 rules!2932))))) b!4240366))

(assert (= (and b!4239594 ((_ is Star!12829) (regTwo!26171 (regex!7924 (h!52295 rules!2932))))) b!4240367))

(assert (= (and b!4239594 ((_ is Union!12829) (regTwo!26171 (regex!7924 (h!52295 rules!2932))))) b!4240368))

(declare-fun b!4240370 () Bool)

(declare-fun e!2633171 () Bool)

(declare-fun tp!1299505 () Bool)

(declare-fun tp!1299508 () Bool)

(assert (=> b!4240370 (= e!2633171 (and tp!1299505 tp!1299508))))

(assert (=> b!4239631 (= tp!1299292 e!2633171)))

(declare-fun b!4240369 () Bool)

(assert (=> b!4240369 (= e!2633171 tp_is_empty!22649)))

(declare-fun b!4240371 () Bool)

(declare-fun tp!1299509 () Bool)

(assert (=> b!4240371 (= e!2633171 tp!1299509)))

(declare-fun b!4240372 () Bool)

(declare-fun tp!1299507 () Bool)

(declare-fun tp!1299506 () Bool)

(assert (=> b!4240372 (= e!2633171 (and tp!1299507 tp!1299506))))

(assert (= (and b!4239631 ((_ is ElementMatch!12829) (regex!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) b!4240369))

(assert (= (and b!4239631 ((_ is Concat!20984) (regex!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) b!4240370))

(assert (= (and b!4239631 ((_ is Star!12829) (regex!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) b!4240371))

(assert (= (and b!4239631 ((_ is Union!12829) (regex!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) b!4240372))

(declare-fun b!4240374 () Bool)

(declare-fun e!2633172 () Bool)

(declare-fun tp!1299510 () Bool)

(declare-fun tp!1299513 () Bool)

(assert (=> b!4240374 (= e!2633172 (and tp!1299510 tp!1299513))))

(assert (=> b!4239607 (= tp!1299265 e!2633172)))

(declare-fun b!4240373 () Bool)

(assert (=> b!4240373 (= e!2633172 tp_is_empty!22649)))

(declare-fun b!4240375 () Bool)

(declare-fun tp!1299514 () Bool)

(assert (=> b!4240375 (= e!2633172 tp!1299514)))

(declare-fun b!4240376 () Bool)

(declare-fun tp!1299512 () Bool)

(declare-fun tp!1299511 () Bool)

(assert (=> b!4240376 (= e!2633172 (and tp!1299512 tp!1299511))))

(assert (= (and b!4239607 ((_ is ElementMatch!12829) (regOne!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240373))

(assert (= (and b!4239607 ((_ is Concat!20984) (regOne!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240374))

(assert (= (and b!4239607 ((_ is Star!12829) (regOne!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240375))

(assert (= (and b!4239607 ((_ is Union!12829) (regOne!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240376))

(declare-fun b!4240378 () Bool)

(declare-fun e!2633173 () Bool)

(declare-fun tp!1299515 () Bool)

(declare-fun tp!1299518 () Bool)

(assert (=> b!4240378 (= e!2633173 (and tp!1299515 tp!1299518))))

(assert (=> b!4239607 (= tp!1299268 e!2633173)))

(declare-fun b!4240377 () Bool)

(assert (=> b!4240377 (= e!2633173 tp_is_empty!22649)))

(declare-fun b!4240379 () Bool)

(declare-fun tp!1299519 () Bool)

(assert (=> b!4240379 (= e!2633173 tp!1299519)))

(declare-fun b!4240380 () Bool)

(declare-fun tp!1299517 () Bool)

(declare-fun tp!1299516 () Bool)

(assert (=> b!4240380 (= e!2633173 (and tp!1299517 tp!1299516))))

(assert (= (and b!4239607 ((_ is ElementMatch!12829) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240377))

(assert (= (and b!4239607 ((_ is Concat!20984) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240378))

(assert (= (and b!4239607 ((_ is Star!12829) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240379))

(assert (= (and b!4239607 ((_ is Union!12829) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 addTokens!17)))))) b!4240380))

(declare-fun b!4240381 () Bool)

(declare-fun e!2633174 () Bool)

(declare-fun tp!1299520 () Bool)

(assert (=> b!4240381 (= e!2633174 (and tp_is_empty!22649 tp!1299520))))

(assert (=> b!4239636 (= tp!1299296 e!2633174)))

(assert (= (and b!4239636 ((_ is Cons!46873) (t!350410 (originalCharacters!8268 (h!52294 addTokens!17))))) b!4240381))

(declare-fun b!4240384 () Bool)

(declare-fun b_free!125511 () Bool)

(declare-fun b_next!126215 () Bool)

(assert (=> b!4240384 (= b_free!125511 (not b_next!126215))))

(declare-fun t!350758 () Bool)

(declare-fun tb!254943 () Bool)

(assert (=> (and b!4240384 (= (toValue!10676 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350758) tb!254943))

(declare-fun result!310896 () Bool)

(assert (= result!310896 result!310828))

(assert (=> d!1247535 t!350758))

(declare-fun t!350760 () Bool)

(declare-fun tb!254945 () Bool)

(assert (=> (and b!4240384 (= (toValue!10676 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toValue!10676 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350760) tb!254945))

(declare-fun result!310898 () Bool)

(assert (= result!310898 result!310842))

(assert (=> d!1247553 t!350760))

(declare-fun tp!1299521 () Bool)

(declare-fun b_and!335425 () Bool)

(assert (=> b!4240384 (= tp!1299521 (and (=> t!350758 result!310896) (=> t!350760 result!310898) b_and!335425))))

(declare-fun b_free!125513 () Bool)

(declare-fun b_next!126217 () Bool)

(assert (=> b!4240384 (= b_free!125513 (not b_next!126217))))

(declare-fun tb!254947 () Bool)

(declare-fun t!350762 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506370)))))) t!350762) tb!254947))

(declare-fun result!310900 () Bool)

(assert (= result!310900 result!310668))

(assert (=> d!1247287 t!350762))

(declare-fun tb!254949 () Bool)

(declare-fun t!350764 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17)))))) t!350764) tb!254949))

(declare-fun result!310902 () Bool)

(assert (= result!310902 result!310644))

(assert (=> b!4239639 t!350764))

(declare-fun tb!254951 () Bool)

(declare-fun t!350766 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312)))))) t!350766) tb!254951))

(declare-fun result!310904 () Bool)

(assert (= result!310904 result!310544))

(assert (=> d!1247177 t!350766))

(declare-fun t!350768 () Bool)

(declare-fun tb!254953 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311)))))) t!350768) tb!254953))

(declare-fun result!310906 () Bool)

(assert (= result!310906 result!310536))

(assert (=> d!1247167 t!350768))

(declare-fun t!350770 () Bool)

(declare-fun tb!254955 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17))))) t!350770) tb!254955))

(declare-fun result!310908 () Bool)

(assert (= result!310908 result!310550))

(assert (=> b!4239347 t!350770))

(declare-fun t!350772 () Bool)

(declare-fun tb!254957 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (get!15242 lt!1506375)))))) t!350772) tb!254957))

(declare-fun result!310910 () Bool)

(assert (= result!310910 result!310656))

(assert (=> d!1247273 t!350772))

(declare-fun t!350774 () Bool)

(declare-fun tb!254959 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581))))) t!350774) tb!254959))

(declare-fun result!310912 () Bool)

(assert (= result!310912 result!310556))

(assert (=> b!4239350 t!350774))

(declare-fun t!350776 () Bool)

(declare-fun tb!254961 () Bool)

(assert (=> (and b!4240384 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581)))))) t!350776) tb!254961))

(declare-fun result!310914 () Bool)

(assert (= result!310914 result!310680))

(assert (=> b!4239725 t!350776))

(declare-fun tp!1299523 () Bool)

(declare-fun b_and!335427 () Bool)

(assert (=> b!4240384 (= tp!1299523 (and (=> t!350770 result!310908) (=> t!350766 result!310904) (=> t!350776 result!310914) (=> t!350772 result!310910) (=> t!350768 result!310906) (=> t!350764 result!310902) (=> t!350762 result!310900) (=> t!350774 result!310912) b_and!335427))))

(declare-fun e!2633177 () Bool)

(assert (=> b!4240384 (= e!2633177 (and tp!1299521 tp!1299523))))

(declare-fun e!2633175 () Bool)

(declare-fun b!4240383 () Bool)

(declare-fun tp!1299524 () Bool)

(assert (=> b!4240383 (= e!2633175 (and tp!1299524 (inv!61610 (tag!8788 (h!52295 (t!350412 (t!350412 rules!2932))))) (inv!61613 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) e!2633177))))

(declare-fun b!4240382 () Bool)

(declare-fun e!2633178 () Bool)

(declare-fun tp!1299522 () Bool)

(assert (=> b!4240382 (= e!2633178 (and e!2633175 tp!1299522))))

(assert (=> b!4239603 (= tp!1299262 e!2633178)))

(assert (= b!4240383 b!4240384))

(assert (= b!4240382 b!4240383))

(assert (= (and b!4239603 ((_ is Cons!46875) (t!350412 (t!350412 rules!2932)))) b!4240382))

(declare-fun m!4826039 () Bool)

(assert (=> b!4240383 m!4826039))

(declare-fun m!4826041 () Bool)

(assert (=> b!4240383 m!4826041))

(declare-fun b!4240386 () Bool)

(declare-fun e!2633179 () Bool)

(declare-fun tp!1299525 () Bool)

(declare-fun tp!1299528 () Bool)

(assert (=> b!4240386 (= e!2633179 (and tp!1299525 tp!1299528))))

(assert (=> b!4239604 (= tp!1299264 e!2633179)))

(declare-fun b!4240385 () Bool)

(assert (=> b!4240385 (= e!2633179 tp_is_empty!22649)))

(declare-fun b!4240387 () Bool)

(declare-fun tp!1299529 () Bool)

(assert (=> b!4240387 (= e!2633179 tp!1299529)))

(declare-fun b!4240388 () Bool)

(declare-fun tp!1299527 () Bool)

(declare-fun tp!1299526 () Bool)

(assert (=> b!4240388 (= e!2633179 (and tp!1299527 tp!1299526))))

(assert (= (and b!4239604 ((_ is ElementMatch!12829) (regex!7924 (h!52295 (t!350412 rules!2932))))) b!4240385))

(assert (= (and b!4239604 ((_ is Concat!20984) (regex!7924 (h!52295 (t!350412 rules!2932))))) b!4240386))

(assert (= (and b!4239604 ((_ is Star!12829) (regex!7924 (h!52295 (t!350412 rules!2932))))) b!4240387))

(assert (= (and b!4239604 ((_ is Union!12829) (regex!7924 (h!52295 (t!350412 rules!2932))))) b!4240388))

(declare-fun b!4240389 () Bool)

(declare-fun e!2633180 () Bool)

(declare-fun tp!1299530 () Bool)

(assert (=> b!4240389 (= e!2633180 (and tp_is_empty!22649 tp!1299530))))

(assert (=> b!4239634 (= tp!1299294 e!2633180)))

(assert (= (and b!4239634 ((_ is Cons!46873) (t!350410 (t!350410 longerInput!51)))) b!4240389))

(declare-fun b!4240391 () Bool)

(declare-fun e!2633181 () Bool)

(declare-fun tp!1299531 () Bool)

(declare-fun tp!1299534 () Bool)

(assert (=> b!4240391 (= e!2633181 (and tp!1299531 tp!1299534))))

(assert (=> b!4239588 (= tp!1299243 e!2633181)))

(declare-fun b!4240390 () Bool)

(assert (=> b!4240390 (= e!2633181 tp_is_empty!22649)))

(declare-fun b!4240392 () Bool)

(declare-fun tp!1299535 () Bool)

(assert (=> b!4240392 (= e!2633181 tp!1299535)))

(declare-fun b!4240393 () Bool)

(declare-fun tp!1299533 () Bool)

(declare-fun tp!1299532 () Bool)

(assert (=> b!4240393 (= e!2633181 (and tp!1299533 tp!1299532))))

(assert (= (and b!4239588 ((_ is ElementMatch!12829) (regOne!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240390))

(assert (= (and b!4239588 ((_ is Concat!20984) (regOne!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240391))

(assert (= (and b!4239588 ((_ is Star!12829) (regOne!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240392))

(assert (= (and b!4239588 ((_ is Union!12829) (regOne!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240393))

(declare-fun b!4240395 () Bool)

(declare-fun e!2633182 () Bool)

(declare-fun tp!1299536 () Bool)

(declare-fun tp!1299539 () Bool)

(assert (=> b!4240395 (= e!2633182 (and tp!1299536 tp!1299539))))

(assert (=> b!4239588 (= tp!1299246 e!2633182)))

(declare-fun b!4240394 () Bool)

(assert (=> b!4240394 (= e!2633182 tp_is_empty!22649)))

(declare-fun b!4240396 () Bool)

(declare-fun tp!1299540 () Bool)

(assert (=> b!4240396 (= e!2633182 tp!1299540)))

(declare-fun b!4240397 () Bool)

(declare-fun tp!1299538 () Bool)

(declare-fun tp!1299537 () Bool)

(assert (=> b!4240397 (= e!2633182 (and tp!1299538 tp!1299537))))

(assert (= (and b!4239588 ((_ is ElementMatch!12829) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240394))

(assert (= (and b!4239588 ((_ is Concat!20984) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240395))

(assert (= (and b!4239588 ((_ is Star!12829) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240396))

(assert (= (and b!4239588 ((_ is Union!12829) (regTwo!26170 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240397))

(declare-fun tp!1299543 () Bool)

(declare-fun e!2633184 () Bool)

(declare-fun tp!1299541 () Bool)

(declare-fun b!4240398 () Bool)

(assert (=> b!4240398 (= e!2633184 (and (inv!61617 (left!34839 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))))) tp!1299541 (inv!61617 (right!35169 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))))) tp!1299543))))

(declare-fun b!4240400 () Bool)

(declare-fun e!2633183 () Bool)

(declare-fun tp!1299542 () Bool)

(assert (=> b!4240400 (= e!2633183 tp!1299542)))

(declare-fun b!4240399 () Bool)

(assert (=> b!4240399 (= e!2633184 (and (inv!61624 (xs!17441 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))))) e!2633183))))

(assert (=> b!4239349 (= tp!1299164 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17))))) e!2633184))))

(assert (= (and b!4239349 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))))) b!4240398))

(assert (= b!4240399 b!4240400))

(assert (= (and b!4239349 ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (value!246370 (h!52294 addTokens!17)))))) b!4240399))

(declare-fun m!4826043 () Bool)

(assert (=> b!4240398 m!4826043))

(declare-fun m!4826045 () Bool)

(assert (=> b!4240398 m!4826045))

(declare-fun m!4826047 () Bool)

(assert (=> b!4240399 m!4826047))

(assert (=> b!4239349 m!4824759))

(declare-fun tp!1299546 () Bool)

(declare-fun tp!1299544 () Bool)

(declare-fun b!4240401 () Bool)

(declare-fun e!2633186 () Bool)

(assert (=> b!4240401 (= e!2633186 (and (inv!61617 (left!34839 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))))) tp!1299544 (inv!61617 (right!35169 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))))) tp!1299546))))

(declare-fun b!4240403 () Bool)

(declare-fun e!2633185 () Bool)

(declare-fun tp!1299545 () Bool)

(assert (=> b!4240403 (= e!2633185 tp!1299545)))

(declare-fun b!4240402 () Bool)

(assert (=> b!4240402 (= e!2633186 (and (inv!61624 (xs!17441 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))))) e!2633185))))

(assert (=> b!4239316 (= tp!1299162 (and (inv!61617 (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311)))))) e!2633186))))

(assert (= (and b!4239316 ((_ is Node!14135) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))))) b!4240401))

(assert (= b!4240402 b!4240403))

(assert (= (and b!4239316 ((_ is Leaf!21856) (c!720323 (dynLambda!20098 (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))) (value!246370 (_1!25359 (v!41009 lt!1506311))))))) b!4240402))

(declare-fun m!4826049 () Bool)

(assert (=> b!4240401 m!4826049))

(declare-fun m!4826051 () Bool)

(assert (=> b!4240401 m!4826051))

(declare-fun m!4826053 () Bool)

(assert (=> b!4240402 m!4826053))

(assert (=> b!4239316 m!4824711))

(declare-fun b!4240404 () Bool)

(declare-fun e!2633187 () Bool)

(declare-fun tp!1299547 () Bool)

(assert (=> b!4240404 (= e!2633187 (and tp_is_empty!22649 tp!1299547))))

(assert (=> b!4239635 (= tp!1299295 e!2633187)))

(assert (= (and b!4239635 ((_ is Cons!46873) (t!350410 (originalCharacters!8268 (h!52294 tokens!581))))) b!4240404))

(declare-fun b!4240406 () Bool)

(declare-fun e!2633188 () Bool)

(declare-fun tp!1299548 () Bool)

(declare-fun tp!1299551 () Bool)

(assert (=> b!4240406 (= e!2633188 (and tp!1299548 tp!1299551))))

(assert (=> b!4239589 (= tp!1299247 e!2633188)))

(declare-fun b!4240405 () Bool)

(assert (=> b!4240405 (= e!2633188 tp_is_empty!22649)))

(declare-fun b!4240407 () Bool)

(declare-fun tp!1299552 () Bool)

(assert (=> b!4240407 (= e!2633188 tp!1299552)))

(declare-fun b!4240408 () Bool)

(declare-fun tp!1299550 () Bool)

(declare-fun tp!1299549 () Bool)

(assert (=> b!4240408 (= e!2633188 (and tp!1299550 tp!1299549))))

(assert (= (and b!4239589 ((_ is ElementMatch!12829) (reg!13158 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240405))

(assert (= (and b!4239589 ((_ is Concat!20984) (reg!13158 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240406))

(assert (= (and b!4239589 ((_ is Star!12829) (reg!13158 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240407))

(assert (= (and b!4239589 ((_ is Union!12829) (reg!13158 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240408))

(declare-fun b!4240410 () Bool)

(declare-fun e!2633189 () Bool)

(declare-fun tp!1299553 () Bool)

(declare-fun tp!1299556 () Bool)

(assert (=> b!4240410 (= e!2633189 (and tp!1299553 tp!1299556))))

(assert (=> b!4239590 (= tp!1299245 e!2633189)))

(declare-fun b!4240409 () Bool)

(assert (=> b!4240409 (= e!2633189 tp_is_empty!22649)))

(declare-fun b!4240411 () Bool)

(declare-fun tp!1299557 () Bool)

(assert (=> b!4240411 (= e!2633189 tp!1299557)))

(declare-fun b!4240412 () Bool)

(declare-fun tp!1299555 () Bool)

(declare-fun tp!1299554 () Bool)

(assert (=> b!4240412 (= e!2633189 (and tp!1299555 tp!1299554))))

(assert (= (and b!4239590 ((_ is ElementMatch!12829) (regOne!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240409))

(assert (= (and b!4239590 ((_ is Concat!20984) (regOne!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240410))

(assert (= (and b!4239590 ((_ is Star!12829) (regOne!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240411))

(assert (= (and b!4239590 ((_ is Union!12829) (regOne!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240412))

(declare-fun b!4240414 () Bool)

(declare-fun e!2633190 () Bool)

(declare-fun tp!1299558 () Bool)

(declare-fun tp!1299561 () Bool)

(assert (=> b!4240414 (= e!2633190 (and tp!1299558 tp!1299561))))

(assert (=> b!4239590 (= tp!1299244 e!2633190)))

(declare-fun b!4240413 () Bool)

(assert (=> b!4240413 (= e!2633190 tp_is_empty!22649)))

(declare-fun b!4240415 () Bool)

(declare-fun tp!1299562 () Bool)

(assert (=> b!4240415 (= e!2633190 tp!1299562)))

(declare-fun b!4240416 () Bool)

(declare-fun tp!1299560 () Bool)

(declare-fun tp!1299559 () Bool)

(assert (=> b!4240416 (= e!2633190 (and tp!1299560 tp!1299559))))

(assert (= (and b!4239590 ((_ is ElementMatch!12829) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240413))

(assert (= (and b!4239590 ((_ is Concat!20984) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240414))

(assert (= (and b!4239590 ((_ is Star!12829) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240415))

(assert (= (and b!4239590 ((_ is Union!12829) (regTwo!26171 (regex!7924 (rule!11050 (h!52294 tokens!581)))))) b!4240416))

(declare-fun b_lambda!124851 () Bool)

(assert (= b_lambda!124799 (or (and b!4240314 b_free!125505 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4239252 b_free!125461 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4240347 b_free!125509 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4239247 b_free!125465 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4240384 b_free!125513 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4239632 b_free!125489 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4239628 b_free!125485 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4239244 b_free!125457 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) (and b!4239605 b_free!125481 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506312))))))) b_lambda!124851)))

(declare-fun b_lambda!124853 () Bool)

(assert (= b_lambda!124825 (or (and b!4239252 b_free!125461 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) (and b!4240314 b_free!125505 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) (and b!4239628 b_free!125485 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) (and b!4239605 b_free!125481 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) (and b!4239632 b_free!125489) (and b!4239247 b_free!125465 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) (and b!4240347 b_free!125509 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) (and b!4240384 b_free!125513 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) (and b!4239244 b_free!125457 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))))) b_lambda!124853)))

(declare-fun b_lambda!124855 () Bool)

(assert (= b_lambda!124819 (or (and b!4239628 b_free!125485) (and b!4239605 b_free!125481 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) (and b!4240347 b_free!125509 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) (and b!4239244 b_free!125457 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) (and b!4239632 b_free!125489 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) (and b!4239252 b_free!125461 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) (and b!4239247 b_free!125465 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) (and b!4240384 b_free!125513 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) (and b!4240314 b_free!125505 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))))) b_lambda!124855)))

(declare-fun b_lambda!124857 () Bool)

(assert (= b_lambda!124797 (or (and b!4240347 b_free!125509 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 tokens!581)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4240384 b_free!125513 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 (t!350412 rules!2932))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4239628 b_free!125485 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 addTokens!17))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4239605 b_free!125481 (= (toChars!10535 (transformation!7924 (h!52295 (t!350412 rules!2932)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4239632 b_free!125489 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 tokens!581))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4239244 b_free!125457 (= (toChars!10535 (transformation!7924 (h!52295 rules!2932))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4239252 b_free!125461 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 addTokens!17)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4240314 b_free!125505 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 (t!350411 (t!350411 addTokens!17)))))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) (and b!4239247 b_free!125465 (= (toChars!10535 (transformation!7924 (rule!11050 (h!52294 tokens!581)))) (toChars!10535 (transformation!7924 (rule!11050 (_1!25359 (v!41009 lt!1506311))))))) b_lambda!124857)))

(check-sat (not b!4240325) (not b!4240250) (not b_lambda!124849) (not b_next!126211) (not b!4240337) (not b!4240388) (not b!4239690) (not b!4240323) (not b!4240180) (not b!4240345) (not d!1247267) (not d!1247279) (not b_next!126215) (not b!4240398) (not b!4240275) (not b!4239719) b_and!335421 (not b!4240254) (not b!4240406) (not b!4240342) (not b!4240379) (not d!1247577) (not b!4239708) (not b!4240392) (not b!4240157) (not b!4239356) (not d!1247291) (not b!4240175) b_and!335407 (not b!4240205) tp_is_empty!22649 (not b!4240346) (not b_lambda!124817) b_and!335425 (not b!4239691) (not d!1247545) (not b_next!126185) (not b!4240375) (not b!4240400) (not d!1247529) (not b!4240147) (not b_lambda!124821) (not b!4240352) (not b!4240376) (not b!4240360) (not bm!293822) (not d!1247615) (not b_next!126193) (not b!4240140) (not d!1247589) (not b!4240243) (not b!4240309) (not b!4240327) (not d!1247607) (not b!4240268) (not b!4240149) (not b!4239724) (not b!4240378) (not b_next!126165) (not d!1247519) (not b!4240331) (not b!4240328) (not b!4240367) (not b!4239650) (not b_lambda!124857) (not b!4240203) (not b_next!126159) (not b!4240214) (not b!4240415) (not d!1247293) (not b!4240387) (not b!4240252) (not b_lambda!124853) (not d!1247575) (not b!4239698) (not b_lambda!124815) (not d!1247613) (not b!4240196) (not b!4240135) (not bm!293833) (not b!4240282) (not b!4240362) b_and!335405 (not b!4240374) (not b!4240401) (not b_next!126191) (not b!4240201) (not b!4240199) b_and!335413 (not b!4239716) (not b!4240285) (not b!4240408) (not b!4240403) (not d!1247257) (not b_next!126209) (not d!1247489) (not d!1247543) (not b_lambda!124855) (not b!4240332) (not b!4240273) (not d!1247509) b_and!335419 (not d!1247499) (not d!1247533) (not d!1247609) (not b!4239657) (not b!4240343) (not b!4240386) (not tb!254699) (not b!4240290) b_and!335299 (not b!4240244) (not b!4240416) (not b!4240153) (not b!4240305) (not b!4240133) (not b!4240404) (not b!4240150) (not b!4239701) (not b!4240247) (not b_lambda!124851) (not b!4240271) (not b!4240186) (not b!4240151) (not b!4240144) (not b!4240258) (not b!4240215) b_and!335427 (not d!1247487) (not b!4239713) (not d!1247547) (not bm!293826) (not d!1247517) (not b!4239658) (not b!4240382) (not d!1247605) (not b!4240348) b_and!335411 (not b!4240393) b_and!335423 (not b!4240412) (not b!4240283) (not tb!254723) (not b!4240336) (not b!4240338) (not b!4240341) (not b!4240358) (not b!4240411) (not d!1247263) (not b!4240165) (not b!4239707) (not b!4240123) (not b!4239655) (not b_next!126189) (not b!4239706) (not d!1247273) (not b!4240306) (not b!4239316) (not b!4239727) (not b!4240414) (not b!4240396) (not b!4240221) (not b!4239725) (not b_lambda!124847) (not b!4240334) (not d!1247259) (not b!4240350) (not b!4240310) (not d!1247555) (not b_next!126207) (not b!4240261) (not b!4240364) b_and!335305 (not b!4240279) (not b!4239694) (not b!4240389) (not b!4240324) (not b!4240184) (not tb!254891) (not b!4240270) (not b!4240242) b_and!335307 (not b!4240152) (not d!1247281) (not tb!254711) (not b!4240359) (not b!4240176) (not b!4240219) (not b_next!126217) (not b!4240311) (not b!4240182) (not b!4240383) (not b!4240351) (not d!1247619) (not b!4240121) (not b!4240245) (not b!4240155) (not d!1247541) (not b_next!126187) (not b!4240301) b_and!335303 (not b!4239639) (not b!4240288) (not b!4239349) (not b!4239722) (not b!4240212) (not b!4240145) (not b!4240339) (not b!4240278) (not b!4240217) (not tb!254735) (not b!4240207) b_and!335297 (not d!1247537) (not b!4240355) (not b!4240256) (not d!1247501) (not b!4240169) (not b_lambda!124823) (not b!4240211) (not b!4240368) (not d!1247595) (not b!4240274) (not b!4240148) (not b!4240395) (not b!4240344) (not b!4240272) (not b_next!126163) (not d!1247617) (not b!4239659) (not b!4240178) (not d!1247261) (not b!4240286) (not d!1247573) (not b!4239331) (not b!4240340) (not b!4240312) b_and!335301 (not d!1247271) (not b!4239640) (not b!4240158) (not b!4240167) (not b!4240354) (not b!4240410) (not b!4240381) (not b!4239648) (not b!4240380) (not b!4240333) (not b!4240269) (not b!4240366) (not b!4239709) (not b!4240249) (not b!4240134) (not b!4240263) (not tb!254879) (not b!4240308) (not b!4240391) (not d!1247497) (not d!1247491) (not b!4240363) (not b_next!126183) (not d!1247287) (not bm!293825) (not d!1247599) b_and!335415 (not d!1247505) (not b!4240209) (not b!4240141) (not d!1247551) (not b!4240371) (not b_next!126167) (not d!1247285) (not b!4239656) (not b!4239651) (not b!4240407) (not d!1247253) b_and!335417 (not d!1247507) (not b!4240190) (not b!4240313) (not b!4240222) (not b!4239653) (not b!4240302) (not b_next!126161) (not b!4239654) (not b!4240246) (not b!4240402) (not d!1247495) (not b_next!126169) (not b!4240356) (not b!4240277) (not b!4240370) (not b!4239695) (not b!4239704) (not b!4240329) (not b!4239641) (not d!1247591) (not b_next!126213) b_and!335409 (not b!4240260) (not d!1247539) (not b!4240399) (not b!4239661) (not b!4240397) (not b!4239726) (not b!4240372) (not b!4239712) (not b!4240281) (not b!4240197))
(check-sat b_and!335421 b_and!335419 b_and!335299 b_and!335427 (not b_next!126189) b_and!335307 (not b_next!126217) b_and!335297 (not b_next!126163) b_and!335301 (not b_next!126161) (not b_next!126211) (not b_next!126215) b_and!335425 b_and!335407 (not b_next!126185) (not b_next!126193) (not b_next!126165) (not b_next!126159) b_and!335405 (not b_next!126191) b_and!335413 (not b_next!126209) b_and!335411 b_and!335423 b_and!335305 (not b_next!126207) (not b_next!126187) b_and!335303 b_and!335415 (not b_next!126183) (not b_next!126167) b_and!335417 (not b_next!126169) b_and!335409 (not b_next!126213))
