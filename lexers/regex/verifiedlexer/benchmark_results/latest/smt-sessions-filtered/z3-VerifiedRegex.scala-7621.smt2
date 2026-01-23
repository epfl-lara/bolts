; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402678 () Bool)

(assert start!402678)

(declare-fun b!4213221 () Bool)

(declare-fun b_free!123395 () Bool)

(declare-fun b_next!124099 () Bool)

(assert (=> b!4213221 (= b_free!123395 (not b_next!124099))))

(declare-fun tp!1288432 () Bool)

(declare-fun b_and!331701 () Bool)

(assert (=> b!4213221 (= tp!1288432 b_and!331701)))

(declare-fun b_free!123397 () Bool)

(declare-fun b_next!124101 () Bool)

(assert (=> b!4213221 (= b_free!123397 (not b_next!124101))))

(declare-fun tp!1288431 () Bool)

(declare-fun b_and!331703 () Bool)

(assert (=> b!4213221 (= tp!1288431 b_and!331703)))

(declare-fun b!4213224 () Bool)

(declare-fun b_free!123399 () Bool)

(declare-fun b_next!124103 () Bool)

(assert (=> b!4213224 (= b_free!123399 (not b_next!124103))))

(declare-fun tp!1288435 () Bool)

(declare-fun b_and!331705 () Bool)

(assert (=> b!4213224 (= tp!1288435 b_and!331705)))

(declare-fun b_free!123401 () Bool)

(declare-fun b_next!124105 () Bool)

(assert (=> b!4213224 (= b_free!123401 (not b_next!124105))))

(declare-fun tp!1288439 () Bool)

(declare-fun b_and!331707 () Bool)

(assert (=> b!4213224 (= tp!1288439 b_and!331707)))

(declare-fun b!4213223 () Bool)

(declare-fun b_free!123403 () Bool)

(declare-fun b_next!124107 () Bool)

(assert (=> b!4213223 (= b_free!123403 (not b_next!124107))))

(declare-fun tp!1288434 () Bool)

(declare-fun b_and!331709 () Bool)

(assert (=> b!4213223 (= tp!1288434 b_and!331709)))

(declare-fun b_free!123405 () Bool)

(declare-fun b_next!124109 () Bool)

(assert (=> b!4213223 (= b_free!123405 (not b_next!124109))))

(declare-fun tp!1288429 () Bool)

(declare-fun b_and!331711 () Bool)

(assert (=> b!4213223 (= tp!1288429 b_and!331711)))

(declare-fun b!4213210 () Bool)

(declare-fun b_free!123407 () Bool)

(declare-fun b_next!124111 () Bool)

(assert (=> b!4213210 (= b_free!123407 (not b_next!124111))))

(declare-fun tp!1288446 () Bool)

(declare-fun b_and!331713 () Bool)

(assert (=> b!4213210 (= tp!1288446 b_and!331713)))

(declare-fun b_free!123409 () Bool)

(declare-fun b_next!124113 () Bool)

(assert (=> b!4213210 (= b_free!123409 (not b_next!124113))))

(declare-fun tp!1288441 () Bool)

(declare-fun b_and!331715 () Bool)

(assert (=> b!4213210 (= tp!1288441 b_and!331715)))

(declare-fun b!4213200 () Bool)

(declare-fun res!1731009 () Bool)

(declare-fun e!2615477 () Bool)

(assert (=> b!4213200 (=> res!1731009 e!2615477)))

(declare-datatypes ((LexerInterface!7351 0))(
  ( (LexerInterfaceExt!7348 (__x!28195 Int)) (Lexer!7349) )
))
(declare-fun thiss!26544 () LexerInterface!7351)

(declare-datatypes ((List!46449 0))(
  ( (Nil!46325) (Cons!46325 (h!51745 (_ BitVec 16)) (t!348168 List!46449)) )
))
(declare-datatypes ((TokenValue!7986 0))(
  ( (FloatLiteralValue!15972 (text!56347 List!46449)) (TokenValueExt!7985 (__x!28196 Int)) (Broken!39930 (value!241549 List!46449)) (Object!8109) (End!7986) (Def!7986) (Underscore!7986) (Match!7986) (Else!7986) (Error!7986) (Case!7986) (If!7986) (Extends!7986) (Abstract!7986) (Class!7986) (Val!7986) (DelimiterValue!15972 (del!8046 List!46449)) (KeywordValue!7992 (value!241550 List!46449)) (CommentValue!15972 (value!241551 List!46449)) (WhitespaceValue!15972 (value!241552 List!46449)) (IndentationValue!7986 (value!241553 List!46449)) (String!53799) (Int32!7986) (Broken!39931 (value!241554 List!46449)) (Boolean!7987) (Unit!65442) (OperatorValue!7989 (op!8046 List!46449)) (IdentifierValue!15972 (value!241555 List!46449)) (IdentifierValue!15973 (value!241556 List!46449)) (WhitespaceValue!15973 (value!241557 List!46449)) (True!15972) (False!15972) (Broken!39932 (value!241558 List!46449)) (Broken!39933 (value!241559 List!46449)) (True!15973) (RightBrace!7986) (RightBracket!7986) (Colon!7986) (Null!7986) (Comma!7986) (LeftBracket!7986) (False!15973) (LeftBrace!7986) (ImaginaryLiteralValue!7986 (text!56348 List!46449)) (StringLiteralValue!23958 (value!241560 List!46449)) (EOFValue!7986 (value!241561 List!46449)) (IdentValue!7986 (value!241562 List!46449)) (DelimiterValue!15973 (value!241563 List!46449)) (DedentValue!7986 (value!241564 List!46449)) (NewLineValue!7986 (value!241565 List!46449)) (IntegerValue!23958 (value!241566 (_ BitVec 32)) (text!56349 List!46449)) (IntegerValue!23959 (value!241567 Int) (text!56350 List!46449)) (Times!7986) (Or!7986) (Equal!7986) (Minus!7986) (Broken!39934 (value!241568 List!46449)) (And!7986) (Div!7986) (LessEqual!7986) (Mod!7986) (Concat!20647) (Not!7986) (Plus!7986) (SpaceValue!7986 (value!241569 List!46449)) (IntegerValue!23960 (value!241570 Int) (text!56351 List!46449)) (StringLiteralValue!23959 (text!56352 List!46449)) (FloatLiteralValue!15973 (text!56353 List!46449)) (BytesLiteralValue!7986 (value!241571 List!46449)) (CommentValue!15973 (value!241572 List!46449)) (StringLiteralValue!23960 (value!241573 List!46449)) (ErrorTokenValue!7986 (msg!8047 List!46449)) )
))
(declare-datatypes ((C!25516 0))(
  ( (C!25517 (val!14920 Int)) )
))
(declare-datatypes ((List!46450 0))(
  ( (Nil!46326) (Cons!46326 (h!51746 C!25516) (t!348169 List!46450)) )
))
(declare-datatypes ((IArray!27939 0))(
  ( (IArray!27940 (innerList!14027 List!46450)) )
))
(declare-datatypes ((Regex!12661 0))(
  ( (ElementMatch!12661 (c!717550 C!25516)) (Concat!20648 (regOne!25834 Regex!12661) (regTwo!25834 Regex!12661)) (EmptyExpr!12661) (Star!12661 (reg!12990 Regex!12661)) (EmptyLang!12661) (Union!12661 (regOne!25835 Regex!12661) (regTwo!25835 Regex!12661)) )
))
(declare-datatypes ((String!53800 0))(
  ( (String!53801 (value!241574 String)) )
))
(declare-datatypes ((Conc!13967 0))(
  ( (Node!13967 (left!34484 Conc!13967) (right!34814 Conc!13967) (csize!28164 Int) (cheight!14178 Int)) (Leaf!21589 (xs!17273 IArray!27939) (csize!28165 Int)) (Empty!13967) )
))
(declare-datatypes ((BalanceConc!27528 0))(
  ( (BalanceConc!27529 (c!717551 Conc!13967)) )
))
(declare-datatypes ((TokenValueInjection!15400 0))(
  ( (TokenValueInjection!15401 (toValue!10476 Int) (toChars!10335 Int)) )
))
(declare-datatypes ((Rule!15312 0))(
  ( (Rule!15313 (regex!7756 Regex!12661) (tag!8620 String!53800) (isSeparator!7756 Bool) (transformation!7756 TokenValueInjection!15400)) )
))
(declare-datatypes ((List!46451 0))(
  ( (Nil!46327) (Cons!46327 (h!51747 Rule!15312) (t!348170 List!46451)) )
))
(declare-fun rules!3967 () List!46451)

(declare-fun input!3517 () List!46450)

(declare-datatypes ((Token!14214 0))(
  ( (Token!14215 (value!241575 TokenValue!7986) (rule!10876 Rule!15312) (size!34029 Int) (originalCharacters!8138 List!46450)) )
))
(declare-datatypes ((tuple2!44066 0))(
  ( (tuple2!44067 (_1!25167 Token!14214) (_2!25167 List!46450)) )
))
(declare-datatypes ((Option!9944 0))(
  ( (None!9943) (Some!9943 (v!40819 tuple2!44066)) )
))
(declare-fun lt!1499578 () Option!9944)

(declare-fun maxPrefixOneRule!3346 (LexerInterface!7351 Rule!15312 List!46450) Option!9944)

(assert (=> b!4213200 (= res!1731009 (not (= (maxPrefixOneRule!3346 thiss!26544 (h!51747 rules!3967) input!3517) lt!1499578)))))

(declare-fun b!4213201 () Bool)

(declare-fun res!1731005 () Bool)

(declare-fun e!2615473 () Bool)

(assert (=> b!4213201 (=> (not res!1731005) (not e!2615473))))

(declare-fun p!3001 () List!46450)

(declare-fun isPrefix!4615 (List!46450 List!46450) Bool)

(assert (=> b!4213201 (= res!1731005 (isPrefix!4615 p!3001 input!3517))))

(declare-fun b!4213202 () Bool)

(declare-fun t!8364 () Token!14214)

(declare-fun e!2615493 () Bool)

(declare-fun tp!1288444 () Bool)

(declare-fun e!2615494 () Bool)

(declare-fun inv!21 (TokenValue!7986) Bool)

(assert (=> b!4213202 (= e!2615494 (and (inv!21 (value!241575 t!8364)) e!2615493 tp!1288444))))

(declare-fun b!4213203 () Bool)

(declare-fun res!1731019 () Bool)

(declare-fun e!2615474 () Bool)

(assert (=> b!4213203 (=> (not res!1731019) (not e!2615474))))

(declare-fun rBis!178 () Rule!15312)

(declare-fun ruleValid!3468 (LexerInterface!7351 Rule!15312) Bool)

(assert (=> b!4213203 (= res!1731019 (ruleValid!3468 thiss!26544 rBis!178))))

(declare-fun b!4213204 () Bool)

(declare-fun e!2615479 () Bool)

(declare-fun tp_is_empty!22289 () Bool)

(declare-fun tp!1288437 () Bool)

(assert (=> b!4213204 (= e!2615479 (and tp_is_empty!22289 tp!1288437))))

(declare-fun b!4213205 () Bool)

(declare-fun e!2615481 () Bool)

(declare-fun e!2615472 () Bool)

(declare-fun tp!1288448 () Bool)

(assert (=> b!4213205 (= e!2615481 (and e!2615472 tp!1288448))))

(declare-fun b!4213206 () Bool)

(declare-fun e!2615471 () Bool)

(declare-fun tp!1288436 () Bool)

(assert (=> b!4213206 (= e!2615471 (and tp_is_empty!22289 tp!1288436))))

(declare-fun b!4213207 () Bool)

(declare-datatypes ((Unit!65443 0))(
  ( (Unit!65444) )
))
(declare-fun e!2615484 () Unit!65443)

(declare-fun Unit!65445 () Unit!65443)

(assert (=> b!4213207 (= e!2615484 Unit!65445)))

(declare-fun lt!1499576 () Unit!65443)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!614 (LexerInterface!7351 Rule!15312 List!46451 List!46450) Unit!65443)

(assert (=> b!4213207 (= lt!1499576 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!614 thiss!26544 rBis!178 (t!348170 rules!3967) input!3517))))

(assert (=> b!4213207 false))

(declare-fun b!4213208 () Bool)

(declare-fun e!2615491 () Bool)

(declare-fun tp!1288433 () Bool)

(assert (=> b!4213208 (= e!2615491 (and tp_is_empty!22289 tp!1288433))))

(declare-fun tBis!41 () Token!14214)

(declare-fun tp!1288440 () Bool)

(declare-fun e!2615476 () Bool)

(declare-fun b!4213209 () Bool)

(declare-fun e!2615489 () Bool)

(declare-fun inv!60949 (String!53800) Bool)

(declare-fun inv!60952 (TokenValueInjection!15400) Bool)

(assert (=> b!4213209 (= e!2615489 (and tp!1288440 (inv!60949 (tag!8620 (rule!10876 tBis!41))) (inv!60952 (transformation!7756 (rule!10876 tBis!41))) e!2615476))))

(declare-fun e!2615488 () Bool)

(assert (=> b!4213210 (= e!2615488 (and tp!1288446 tp!1288441))))

(declare-fun b!4213211 () Bool)

(declare-fun e!2615490 () Bool)

(declare-fun tp!1288443 () Bool)

(assert (=> b!4213211 (= e!2615490 (and (inv!21 (value!241575 tBis!41)) e!2615489 tp!1288443))))

(declare-fun b!4213212 () Bool)

(assert (=> b!4213212 (= e!2615473 e!2615474)))

(declare-fun res!1731006 () Bool)

(assert (=> b!4213212 (=> (not res!1731006) (not e!2615474))))

(declare-fun maxPrefix!4391 (LexerInterface!7351 List!46451 List!46450) Option!9944)

(assert (=> b!4213212 (= res!1731006 (= (maxPrefix!4391 thiss!26544 rules!3967 input!3517) lt!1499578))))

(declare-fun suffix!1557 () List!46450)

(assert (=> b!4213212 (= lt!1499578 (Some!9943 (tuple2!44067 t!8364 suffix!1557)))))

(declare-fun b!4213213 () Bool)

(declare-fun res!1731016 () Bool)

(assert (=> b!4213213 (=> (not res!1731016) (not e!2615473))))

(declare-fun rulesInvariant!6562 (LexerInterface!7351 List!46451) Bool)

(assert (=> b!4213213 (= res!1731016 (rulesInvariant!6562 thiss!26544 rules!3967))))

(declare-fun b!4213214 () Bool)

(declare-fun e!2615480 () Bool)

(declare-fun tp!1288445 () Bool)

(assert (=> b!4213214 (= e!2615480 (and tp_is_empty!22289 tp!1288445))))

(declare-fun b!4213215 () Bool)

(declare-fun res!1731011 () Bool)

(assert (=> b!4213215 (=> res!1731011 e!2615477)))

(get-info :version)

(assert (=> b!4213215 (= res!1731011 (or (and ((_ is Cons!46327) rules!3967) ((_ is Nil!46327) (t!348170 rules!3967))) (not ((_ is Cons!46327) rules!3967)) (= (h!51747 rules!3967) rBis!178)))))

(declare-fun b!4213216 () Bool)

(declare-fun Unit!65446 () Unit!65443)

(assert (=> b!4213216 (= e!2615484 Unit!65446)))

(declare-fun tp!1288438 () Bool)

(declare-fun e!2615475 () Bool)

(declare-fun b!4213217 () Bool)

(assert (=> b!4213217 (= e!2615493 (and tp!1288438 (inv!60949 (tag!8620 (rule!10876 t!8364))) (inv!60952 (transformation!7756 (rule!10876 t!8364))) e!2615475))))

(declare-fun b!4213218 () Bool)

(declare-fun e!2615485 () Bool)

(declare-fun tp!1288430 () Bool)

(assert (=> b!4213218 (= e!2615485 (and tp_is_empty!22289 tp!1288430))))

(declare-fun e!2615496 () Bool)

(declare-fun tp!1288442 () Bool)

(declare-fun e!2615492 () Bool)

(declare-fun b!4213219 () Bool)

(assert (=> b!4213219 (= e!2615496 (and tp!1288442 (inv!60949 (tag!8620 rBis!178)) (inv!60952 (transformation!7756 rBis!178)) e!2615492))))

(declare-fun tp!1288447 () Bool)

(declare-fun b!4213220 () Bool)

(assert (=> b!4213220 (= e!2615472 (and tp!1288447 (inv!60949 (tag!8620 (h!51747 rules!3967))) (inv!60952 (transformation!7756 (h!51747 rules!3967))) e!2615488))))

(assert (=> b!4213221 (= e!2615475 (and tp!1288432 tp!1288431))))

(declare-fun b!4213222 () Bool)

(declare-fun res!1731007 () Bool)

(assert (=> b!4213222 (=> (not res!1731007) (not e!2615473))))

(declare-fun ++!11830 (List!46450 List!46450) List!46450)

(assert (=> b!4213222 (= res!1731007 (= (++!11830 p!3001 suffix!1557) input!3517))))

(assert (=> b!4213223 (= e!2615492 (and tp!1288434 tp!1288429))))

(assert (=> b!4213224 (= e!2615476 (and tp!1288435 tp!1288439))))

(declare-fun b!4213225 () Bool)

(declare-fun res!1731010 () Bool)

(assert (=> b!4213225 (=> (not res!1731010) (not e!2615473))))

(declare-fun pBis!121 () List!46450)

(assert (=> b!4213225 (= res!1731010 (isPrefix!4615 pBis!121 input!3517))))

(declare-fun b!4213226 () Bool)

(declare-fun res!1731015 () Bool)

(assert (=> b!4213226 (=> res!1731015 e!2615477)))

(declare-fun list!16755 (BalanceConc!27528) List!46450)

(declare-fun charsOf!5179 (Token!14214) BalanceConc!27528)

(assert (=> b!4213226 (= res!1731015 (not (= (list!16755 (charsOf!5179 tBis!41)) pBis!121)))))

(declare-fun b!4213227 () Bool)

(assert (=> b!4213227 (= e!2615474 (not e!2615477))))

(declare-fun res!1731013 () Bool)

(assert (=> b!4213227 (=> res!1731013 e!2615477)))

(declare-fun suffixBis!41 () List!46450)

(assert (=> b!4213227 (= res!1731013 (not (= (maxPrefixOneRule!3346 thiss!26544 rBis!178 input!3517) (Some!9943 (tuple2!44067 tBis!41 suffixBis!41)))))))

(assert (=> b!4213227 (isPrefix!4615 input!3517 input!3517)))

(declare-fun lt!1499580 () Unit!65443)

(declare-fun lemmaIsPrefixRefl!3032 (List!46450 List!46450) Unit!65443)

(assert (=> b!4213227 (= lt!1499580 (lemmaIsPrefixRefl!3032 input!3517 input!3517))))

(declare-fun b!4213228 () Bool)

(assert (=> b!4213228 (= e!2615477 true)))

(declare-fun lt!1499581 () List!46450)

(declare-fun lt!1499582 () tuple2!44066)

(assert (=> b!4213228 (isPrefix!4615 lt!1499581 (++!11830 lt!1499581 (_2!25167 lt!1499582)))))

(declare-fun lt!1499577 () Unit!65443)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3070 (List!46450 List!46450) Unit!65443)

(assert (=> b!4213228 (= lt!1499577 (lemmaConcatTwoListThenFirstIsPrefix!3070 lt!1499581 (_2!25167 lt!1499582)))))

(assert (=> b!4213228 (= lt!1499581 (list!16755 (charsOf!5179 (_1!25167 lt!1499582))))))

(declare-fun lt!1499579 () Option!9944)

(declare-fun get!15068 (Option!9944) tuple2!44066)

(assert (=> b!4213228 (= lt!1499582 (get!15068 lt!1499579))))

(declare-fun lt!1499575 () Unit!65443)

(assert (=> b!4213228 (= lt!1499575 e!2615484)))

(declare-fun c!717549 () Bool)

(declare-fun isEmpty!27436 (Option!9944) Bool)

(assert (=> b!4213228 (= c!717549 (isEmpty!27436 lt!1499579))))

(assert (=> b!4213228 (= lt!1499579 (maxPrefix!4391 thiss!26544 (t!348170 rules!3967) input!3517))))

(declare-fun b!4213229 () Bool)

(declare-fun res!1731014 () Bool)

(assert (=> b!4213229 (=> (not res!1731014) (not e!2615473))))

(declare-fun contains!9577 (List!46451 Rule!15312) Bool)

(assert (=> b!4213229 (= res!1731014 (contains!9577 rules!3967 rBis!178))))

(declare-fun b!4213230 () Bool)

(declare-fun res!1731017 () Bool)

(assert (=> b!4213230 (=> res!1731017 e!2615477)))

(assert (=> b!4213230 (= res!1731017 (not (= (rule!10876 tBis!41) rBis!178)))))

(declare-fun res!1731018 () Bool)

(assert (=> start!402678 (=> (not res!1731018) (not e!2615473))))

(assert (=> start!402678 (= res!1731018 ((_ is Lexer!7349) thiss!26544))))

(assert (=> start!402678 e!2615473))

(declare-fun inv!60953 (Token!14214) Bool)

(assert (=> start!402678 (and (inv!60953 tBis!41) e!2615490)))

(assert (=> start!402678 true))

(assert (=> start!402678 e!2615496))

(assert (=> start!402678 e!2615479))

(assert (=> start!402678 e!2615481))

(assert (=> start!402678 e!2615485))

(assert (=> start!402678 (and (inv!60953 t!8364) e!2615494)))

(assert (=> start!402678 e!2615491))

(assert (=> start!402678 e!2615471))

(assert (=> start!402678 e!2615480))

(declare-fun b!4213231 () Bool)

(declare-fun res!1731008 () Bool)

(assert (=> b!4213231 (=> (not res!1731008) (not e!2615473))))

(declare-fun isEmpty!27437 (List!46451) Bool)

(assert (=> b!4213231 (= res!1731008 (not (isEmpty!27437 rules!3967)))))

(declare-fun b!4213232 () Bool)

(declare-fun res!1731012 () Bool)

(assert (=> b!4213232 (=> res!1731012 e!2615477)))

(assert (=> b!4213232 (= res!1731012 (not (= (++!11830 pBis!121 suffixBis!41) input!3517)))))

(assert (= (and start!402678 res!1731018) b!4213222))

(assert (= (and b!4213222 res!1731007) b!4213201))

(assert (= (and b!4213201 res!1731005) b!4213225))

(assert (= (and b!4213225 res!1731010) b!4213231))

(assert (= (and b!4213231 res!1731008) b!4213213))

(assert (= (and b!4213213 res!1731016) b!4213229))

(assert (= (and b!4213229 res!1731014) b!4213212))

(assert (= (and b!4213212 res!1731006) b!4213203))

(assert (= (and b!4213203 res!1731019) b!4213227))

(assert (= (and b!4213227 (not res!1731013)) b!4213230))

(assert (= (and b!4213230 (not res!1731017)) b!4213226))

(assert (= (and b!4213226 (not res!1731015)) b!4213232))

(assert (= (and b!4213232 (not res!1731012)) b!4213215))

(assert (= (and b!4213215 (not res!1731011)) b!4213200))

(assert (= (and b!4213200 (not res!1731009)) b!4213228))

(assert (= (and b!4213228 c!717549) b!4213207))

(assert (= (and b!4213228 (not c!717549)) b!4213216))

(assert (= b!4213209 b!4213224))

(assert (= b!4213211 b!4213209))

(assert (= start!402678 b!4213211))

(assert (= b!4213219 b!4213223))

(assert (= start!402678 b!4213219))

(assert (= (and start!402678 ((_ is Cons!46326) p!3001)) b!4213204))

(assert (= b!4213220 b!4213210))

(assert (= b!4213205 b!4213220))

(assert (= (and start!402678 ((_ is Cons!46327) rules!3967)) b!4213205))

(assert (= (and start!402678 ((_ is Cons!46326) input!3517)) b!4213218))

(assert (= b!4213217 b!4213221))

(assert (= b!4213202 b!4213217))

(assert (= start!402678 b!4213202))

(assert (= (and start!402678 ((_ is Cons!46326) pBis!121)) b!4213208))

(assert (= (and start!402678 ((_ is Cons!46326) suffix!1557)) b!4213206))

(assert (= (and start!402678 ((_ is Cons!46326) suffixBis!41)) b!4213214))

(declare-fun m!4801103 () Bool)

(assert (=> b!4213228 m!4801103))

(declare-fun m!4801105 () Bool)

(assert (=> b!4213228 m!4801105))

(declare-fun m!4801107 () Bool)

(assert (=> b!4213228 m!4801107))

(declare-fun m!4801109 () Bool)

(assert (=> b!4213228 m!4801109))

(declare-fun m!4801111 () Bool)

(assert (=> b!4213228 m!4801111))

(declare-fun m!4801113 () Bool)

(assert (=> b!4213228 m!4801113))

(declare-fun m!4801115 () Bool)

(assert (=> b!4213228 m!4801115))

(declare-fun m!4801117 () Bool)

(assert (=> b!4213228 m!4801117))

(assert (=> b!4213228 m!4801105))

(assert (=> b!4213228 m!4801109))

(declare-fun m!4801119 () Bool)

(assert (=> b!4213203 m!4801119))

(declare-fun m!4801121 () Bool)

(assert (=> b!4213207 m!4801121))

(declare-fun m!4801123 () Bool)

(assert (=> b!4213211 m!4801123))

(declare-fun m!4801125 () Bool)

(assert (=> b!4213217 m!4801125))

(declare-fun m!4801127 () Bool)

(assert (=> b!4213217 m!4801127))

(declare-fun m!4801129 () Bool)

(assert (=> b!4213222 m!4801129))

(declare-fun m!4801131 () Bool)

(assert (=> start!402678 m!4801131))

(declare-fun m!4801133 () Bool)

(assert (=> start!402678 m!4801133))

(declare-fun m!4801135 () Bool)

(assert (=> b!4213229 m!4801135))

(declare-fun m!4801137 () Bool)

(assert (=> b!4213219 m!4801137))

(declare-fun m!4801139 () Bool)

(assert (=> b!4213219 m!4801139))

(declare-fun m!4801141 () Bool)

(assert (=> b!4213201 m!4801141))

(declare-fun m!4801143 () Bool)

(assert (=> b!4213227 m!4801143))

(declare-fun m!4801145 () Bool)

(assert (=> b!4213227 m!4801145))

(declare-fun m!4801147 () Bool)

(assert (=> b!4213227 m!4801147))

(declare-fun m!4801149 () Bool)

(assert (=> b!4213220 m!4801149))

(declare-fun m!4801151 () Bool)

(assert (=> b!4213220 m!4801151))

(declare-fun m!4801153 () Bool)

(assert (=> b!4213213 m!4801153))

(declare-fun m!4801155 () Bool)

(assert (=> b!4213232 m!4801155))

(declare-fun m!4801157 () Bool)

(assert (=> b!4213225 m!4801157))

(declare-fun m!4801159 () Bool)

(assert (=> b!4213226 m!4801159))

(assert (=> b!4213226 m!4801159))

(declare-fun m!4801161 () Bool)

(assert (=> b!4213226 m!4801161))

(declare-fun m!4801163 () Bool)

(assert (=> b!4213212 m!4801163))

(declare-fun m!4801165 () Bool)

(assert (=> b!4213209 m!4801165))

(declare-fun m!4801167 () Bool)

(assert (=> b!4213209 m!4801167))

(declare-fun m!4801169 () Bool)

(assert (=> b!4213202 m!4801169))

(declare-fun m!4801171 () Bool)

(assert (=> b!4213231 m!4801171))

(declare-fun m!4801173 () Bool)

(assert (=> b!4213200 m!4801173))

(check-sat (not b!4213218) (not b!4213222) b_and!331715 (not b!4213228) (not b_next!124101) (not b_next!124103) (not b!4213204) (not b_next!124107) (not b_next!124111) (not b!4213229) (not b!4213225) (not b!4213226) (not b!4213227) (not b!4213232) (not b!4213206) b_and!331703 (not b_next!124113) (not start!402678) (not b!4213219) b_and!331707 b_and!331705 (not b!4213211) (not b!4213203) (not b!4213200) (not b_next!124099) (not b!4213207) (not b!4213213) b_and!331709 b_and!331713 (not b!4213212) (not b!4213208) (not b_next!124105) (not b!4213214) (not b!4213217) (not b!4213231) b_and!331711 (not b_next!124109) tp_is_empty!22289 (not b!4213205) b_and!331701 (not b!4213209) (not b!4213220) (not b!4213202) (not b!4213201))
(check-sat b_and!331715 (not b_next!124101) (not b_next!124103) (not b_next!124099) (not b_next!124105) (not b_next!124107) b_and!331711 (not b_next!124109) b_and!331701 (not b_next!124111) b_and!331703 (not b_next!124113) b_and!331707 b_and!331705 b_and!331709 b_and!331713)
