; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349014 () Bool)

(assert start!349014)

(declare-fun b!3703288 () Bool)

(declare-fun b_free!98809 () Bool)

(declare-fun b_next!99513 () Bool)

(assert (=> b!3703288 (= b_free!98809 (not b_next!99513))))

(declare-fun tp!1125824 () Bool)

(declare-fun b_and!277043 () Bool)

(assert (=> b!3703288 (= tp!1125824 b_and!277043)))

(declare-fun b_free!98811 () Bool)

(declare-fun b_next!99515 () Bool)

(assert (=> b!3703288 (= b_free!98811 (not b_next!99515))))

(declare-fun tp!1125825 () Bool)

(declare-fun b_and!277045 () Bool)

(assert (=> b!3703288 (= tp!1125825 b_and!277045)))

(declare-fun b!3703292 () Bool)

(declare-fun b_free!98813 () Bool)

(declare-fun b_next!99517 () Bool)

(assert (=> b!3703292 (= b_free!98813 (not b_next!99517))))

(declare-fun tp!1125826 () Bool)

(declare-fun b_and!277047 () Bool)

(assert (=> b!3703292 (= tp!1125826 b_and!277047)))

(declare-fun b_free!98815 () Bool)

(declare-fun b_next!99519 () Bool)

(assert (=> b!3703292 (= b_free!98815 (not b_next!99519))))

(declare-fun tp!1125823 () Bool)

(declare-fun b_and!277049 () Bool)

(assert (=> b!3703292 (= tp!1125823 b_and!277049)))

(declare-datatypes ((LexerInterface!5585 0))(
  ( (LexerInterfaceExt!5582 (__x!24669 Int)) (Lexer!5583) )
))
(declare-fun thiss!25522 () LexerInterface!5585)

(declare-datatypes ((String!44463 0))(
  ( (String!44464 (value!191303 String)) )
))
(declare-fun tag!250 () String!44463)

(declare-fun b!3703286 () Bool)

(declare-fun e!2293617 () Bool)

(declare-datatypes ((List!39521 0))(
  ( (Nil!39397) (Cons!39397 (h!44817 (_ BitVec 16)) (t!302204 List!39521)) )
))
(declare-datatypes ((TokenValue!6226 0))(
  ( (FloatLiteralValue!12452 (text!44027 List!39521)) (TokenValueExt!6225 (__x!24670 Int)) (Broken!31130 (value!191304 List!39521)) (Object!6349) (End!6226) (Def!6226) (Underscore!6226) (Match!6226) (Else!6226) (Error!6226) (Case!6226) (If!6226) (Extends!6226) (Abstract!6226) (Class!6226) (Val!6226) (DelimiterValue!12452 (del!6286 List!39521)) (KeywordValue!6232 (value!191305 List!39521)) (CommentValue!12452 (value!191306 List!39521)) (WhitespaceValue!12452 (value!191307 List!39521)) (IndentationValue!6226 (value!191308 List!39521)) (String!44465) (Int32!6226) (Broken!31131 (value!191309 List!39521)) (Boolean!6227) (Unit!57355) (OperatorValue!6229 (op!6286 List!39521)) (IdentifierValue!12452 (value!191310 List!39521)) (IdentifierValue!12453 (value!191311 List!39521)) (WhitespaceValue!12453 (value!191312 List!39521)) (True!12452) (False!12452) (Broken!31132 (value!191313 List!39521)) (Broken!31133 (value!191314 List!39521)) (True!12453) (RightBrace!6226) (RightBracket!6226) (Colon!6226) (Null!6226) (Comma!6226) (LeftBracket!6226) (False!12453) (LeftBrace!6226) (ImaginaryLiteralValue!6226 (text!44028 List!39521)) (StringLiteralValue!18678 (value!191315 List!39521)) (EOFValue!6226 (value!191316 List!39521)) (IdentValue!6226 (value!191317 List!39521)) (DelimiterValue!12453 (value!191318 List!39521)) (DedentValue!6226 (value!191319 List!39521)) (NewLineValue!6226 (value!191320 List!39521)) (IntegerValue!18678 (value!191321 (_ BitVec 32)) (text!44029 List!39521)) (IntegerValue!18679 (value!191322 Int) (text!44030 List!39521)) (Times!6226) (Or!6226) (Equal!6226) (Minus!6226) (Broken!31134 (value!191323 List!39521)) (And!6226) (Div!6226) (LessEqual!6226) (Mod!6226) (Concat!16981) (Not!6226) (Plus!6226) (SpaceValue!6226 (value!191324 List!39521)) (IntegerValue!18680 (value!191325 Int) (text!44031 List!39521)) (StringLiteralValue!18679 (text!44032 List!39521)) (FloatLiteralValue!12453 (text!44033 List!39521)) (BytesLiteralValue!6226 (value!191326 List!39521)) (CommentValue!12453 (value!191327 List!39521)) (StringLiteralValue!18680 (value!191328 List!39521)) (ErrorTokenValue!6226 (msg!6287 List!39521)) )
))
(declare-datatypes ((C!21696 0))(
  ( (C!21697 (val!12896 Int)) )
))
(declare-datatypes ((List!39522 0))(
  ( (Nil!39398) (Cons!39398 (h!44818 C!21696) (t!302205 List!39522)) )
))
(declare-datatypes ((IArray!24191 0))(
  ( (IArray!24192 (innerList!12153 List!39522)) )
))
(declare-datatypes ((Conc!12093 0))(
  ( (Node!12093 (left!30645 Conc!12093) (right!30975 Conc!12093) (csize!24416 Int) (cheight!12304 Int)) (Leaf!18702 (xs!15295 IArray!24191) (csize!24417 Int)) (Empty!12093) )
))
(declare-datatypes ((BalanceConc!23800 0))(
  ( (BalanceConc!23801 (c!639834 Conc!12093)) )
))
(declare-datatypes ((TokenValueInjection!11880 0))(
  ( (TokenValueInjection!11881 (toValue!8336 Int) (toChars!8195 Int)) )
))
(declare-datatypes ((Regex!10755 0))(
  ( (ElementMatch!10755 (c!639835 C!21696)) (Concat!16982 (regOne!22022 Regex!10755) (regTwo!22022 Regex!10755)) (EmptyExpr!10755) (Star!10755 (reg!11084 Regex!10755)) (EmptyLang!10755) (Union!10755 (regOne!22023 Regex!10755) (regTwo!22023 Regex!10755)) )
))
(declare-datatypes ((Rule!11792 0))(
  ( (Rule!11793 (regex!5996 Regex!10755) (tag!6836 String!44463) (isSeparator!5996 Bool) (transformation!5996 TokenValueInjection!11880)) )
))
(declare-datatypes ((List!39523 0))(
  ( (Nil!39399) (Cons!39399 (h!44819 Rule!11792) (t!302206 List!39523)) )
))
(declare-fun lt!1295874 () List!39523)

(declare-datatypes ((Option!8538 0))(
  ( (None!8537) (Some!8537 (v!38499 Rule!11792)) )
))
(declare-fun isDefined!6725 (Option!8538) Bool)

(declare-fun getRuleFromTag!1530 (LexerInterface!5585 List!39523 String!44463) Option!8538)

(assert (=> b!3703286 (= e!2293617 (isDefined!6725 (getRuleFromTag!1530 thiss!25522 lt!1295874 tag!250)))))

(declare-fun lt!1295871 () Rule!11792)

(declare-fun newHd!19 () Rule!11792)

(assert (=> b!3703286 (not (= (tag!6836 lt!1295871) (tag!6836 newHd!19)))))

(declare-fun rules!3698 () List!39523)

(declare-datatypes ((Unit!57356 0))(
  ( (Unit!57357) )
))
(declare-fun lt!1295873 () Unit!57356)

(declare-datatypes ((List!39524 0))(
  ( (Nil!39400) (Cons!39400 (h!44820 String!44463) (t!302207 List!39524)) )
))
(declare-fun lt!1295869 () List!39524)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!4 (LexerInterface!5585 List!39523 Rule!11792 String!44463 List!39524) Unit!57356)

(assert (=> b!3703286 (= lt!1295873 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!4 thiss!25522 rules!3698 lt!1295871 (tag!6836 newHd!19) lt!1295869))))

(declare-fun b!3703287 () Bool)

(declare-fun e!2293620 () Bool)

(declare-fun e!2293618 () Bool)

(assert (=> b!3703287 (= e!2293620 (not e!2293618))))

(declare-fun res!1506498 () Bool)

(assert (=> b!3703287 (=> res!1506498 e!2293618)))

(declare-fun lt!1295872 () Option!8538)

(assert (=> b!3703287 (= res!1506498 (not (isDefined!6725 lt!1295872)))))

(assert (=> b!3703287 (= lt!1295872 (getRuleFromTag!1530 thiss!25522 rules!3698 tag!250))))

(declare-fun rulesInvariant!4982 (LexerInterface!5585 List!39523) Bool)

(assert (=> b!3703287 (rulesInvariant!4982 thiss!25522 rules!3698)))

(declare-fun lt!1295870 () Unit!57356)

(declare-fun lemmaInvariantOnRulesThenOnTail!688 (LexerInterface!5585 Rule!11792 List!39523) Unit!57356)

(assert (=> b!3703287 (= lt!1295870 (lemmaInvariantOnRulesThenOnTail!688 thiss!25522 newHd!19 rules!3698))))

(declare-fun e!2293619 () Bool)

(assert (=> b!3703288 (= e!2293619 (and tp!1125824 tp!1125825))))

(declare-fun b!3703289 () Bool)

(declare-fun e!2293625 () Bool)

(assert (=> b!3703289 (= e!2293625 e!2293620)))

(declare-fun res!1506497 () Bool)

(assert (=> b!3703289 (=> (not res!1506497) (not e!2293620))))

(assert (=> b!3703289 (= res!1506497 (rulesInvariant!4982 thiss!25522 lt!1295874))))

(assert (=> b!3703289 (= lt!1295874 (Cons!39399 newHd!19 rules!3698))))

(declare-fun b!3703290 () Bool)

(declare-fun res!1506495 () Bool)

(assert (=> b!3703290 (=> res!1506495 e!2293617)))

(declare-fun contains!7858 (List!39523 Rule!11792) Bool)

(assert (=> b!3703290 (= res!1506495 (not (contains!7858 rules!3698 lt!1295871)))))

(declare-fun b!3703291 () Bool)

(assert (=> b!3703291 (= e!2293618 e!2293617)))

(declare-fun res!1506499 () Bool)

(assert (=> b!3703291 (=> res!1506499 e!2293617)))

(declare-fun contains!7859 (List!39524 String!44463) Bool)

(assert (=> b!3703291 (= res!1506499 (not (contains!7859 lt!1295869 (tag!6836 newHd!19))))))

(assert (=> b!3703291 (= lt!1295869 (Cons!39400 (tag!6836 newHd!19) Nil!39400))))

(declare-fun get!13121 (Option!8538) Rule!11792)

(assert (=> b!3703291 (= lt!1295871 (get!13121 lt!1295872))))

(declare-fun e!2293628 () Bool)

(assert (=> b!3703292 (= e!2293628 (and tp!1125826 tp!1125823))))

(declare-fun b!3703293 () Bool)

(declare-fun res!1506496 () Bool)

(assert (=> b!3703293 (=> res!1506496 e!2293617)))

(declare-fun noDuplicateTag!2317 (LexerInterface!5585 List!39523 List!39524) Bool)

(assert (=> b!3703293 (= res!1506496 (not (noDuplicateTag!2317 thiss!25522 rules!3698 lt!1295869)))))

(declare-fun b!3703294 () Bool)

(declare-fun e!2293622 () Bool)

(declare-fun e!2293624 () Bool)

(declare-fun tp!1125827 () Bool)

(assert (=> b!3703294 (= e!2293622 (and e!2293624 tp!1125827))))

(declare-fun res!1506494 () Bool)

(assert (=> start!349014 (=> (not res!1506494) (not e!2293625))))

(get-info :version)

(assert (=> start!349014 (= res!1506494 ((_ is Lexer!5583) thiss!25522))))

(assert (=> start!349014 e!2293625))

(assert (=> start!349014 true))

(assert (=> start!349014 e!2293622))

(declare-fun e!2293626 () Bool)

(assert (=> start!349014 e!2293626))

(declare-fun inv!52928 (String!44463) Bool)

(assert (=> start!349014 (inv!52928 tag!250)))

(declare-fun tp!1125822 () Bool)

(declare-fun b!3703295 () Bool)

(declare-fun inv!52930 (TokenValueInjection!11880) Bool)

(assert (=> b!3703295 (= e!2293626 (and tp!1125822 (inv!52928 (tag!6836 newHd!19)) (inv!52930 (transformation!5996 newHd!19)) e!2293619))))

(declare-fun b!3703296 () Bool)

(declare-fun tp!1125828 () Bool)

(assert (=> b!3703296 (= e!2293624 (and tp!1125828 (inv!52928 (tag!6836 (h!44819 rules!3698))) (inv!52930 (transformation!5996 (h!44819 rules!3698))) e!2293628))))

(assert (= (and start!349014 res!1506494) b!3703289))

(assert (= (and b!3703289 res!1506497) b!3703287))

(assert (= (and b!3703287 (not res!1506498)) b!3703291))

(assert (= (and b!3703291 (not res!1506499)) b!3703293))

(assert (= (and b!3703293 (not res!1506496)) b!3703290))

(assert (= (and b!3703290 (not res!1506495)) b!3703286))

(assert (= b!3703296 b!3703292))

(assert (= b!3703294 b!3703296))

(assert (= (and start!349014 ((_ is Cons!39399) rules!3698)) b!3703294))

(assert (= b!3703295 b!3703288))

(assert (= start!349014 b!3703295))

(declare-fun m!4214219 () Bool)

(assert (=> b!3703296 m!4214219))

(declare-fun m!4214221 () Bool)

(assert (=> b!3703296 m!4214221))

(declare-fun m!4214223 () Bool)

(assert (=> start!349014 m!4214223))

(declare-fun m!4214225 () Bool)

(assert (=> b!3703289 m!4214225))

(declare-fun m!4214227 () Bool)

(assert (=> b!3703293 m!4214227))

(declare-fun m!4214229 () Bool)

(assert (=> b!3703287 m!4214229))

(declare-fun m!4214231 () Bool)

(assert (=> b!3703287 m!4214231))

(declare-fun m!4214233 () Bool)

(assert (=> b!3703287 m!4214233))

(declare-fun m!4214235 () Bool)

(assert (=> b!3703287 m!4214235))

(declare-fun m!4214237 () Bool)

(assert (=> b!3703290 m!4214237))

(declare-fun m!4214239 () Bool)

(assert (=> b!3703291 m!4214239))

(declare-fun m!4214241 () Bool)

(assert (=> b!3703291 m!4214241))

(declare-fun m!4214243 () Bool)

(assert (=> b!3703286 m!4214243))

(assert (=> b!3703286 m!4214243))

(declare-fun m!4214245 () Bool)

(assert (=> b!3703286 m!4214245))

(declare-fun m!4214247 () Bool)

(assert (=> b!3703286 m!4214247))

(declare-fun m!4214249 () Bool)

(assert (=> b!3703295 m!4214249))

(declare-fun m!4214251 () Bool)

(assert (=> b!3703295 m!4214251))

(check-sat (not b_next!99513) (not b!3703286) (not b_next!99517) b_and!277043 (not b!3703294) (not b!3703289) (not b_next!99519) b_and!277047 (not b!3703291) b_and!277045 (not b!3703296) (not b!3703293) (not start!349014) (not b!3703295) b_and!277049 (not b_next!99515) (not b!3703290) (not b!3703287))
(check-sat b_and!277045 (not b_next!99513) (not b_next!99517) b_and!277043 (not b_next!99519) b_and!277047 b_and!277049 (not b_next!99515))
(get-model)

(declare-fun d!1085813 () Bool)

(assert (=> d!1085813 (= (inv!52928 (tag!6836 newHd!19)) (= (mod (str.len (value!191303 (tag!6836 newHd!19))) 2) 0))))

(assert (=> b!3703295 d!1085813))

(declare-fun d!1085815 () Bool)

(declare-fun res!1506520 () Bool)

(declare-fun e!2293642 () Bool)

(assert (=> d!1085815 (=> (not res!1506520) (not e!2293642))))

(declare-fun semiInverseModEq!2560 (Int Int) Bool)

(assert (=> d!1085815 (= res!1506520 (semiInverseModEq!2560 (toChars!8195 (transformation!5996 newHd!19)) (toValue!8336 (transformation!5996 newHd!19))))))

(assert (=> d!1085815 (= (inv!52930 (transformation!5996 newHd!19)) e!2293642)))

(declare-fun b!3703312 () Bool)

(declare-fun equivClasses!2459 (Int Int) Bool)

(assert (=> b!3703312 (= e!2293642 (equivClasses!2459 (toChars!8195 (transformation!5996 newHd!19)) (toValue!8336 (transformation!5996 newHd!19))))))

(assert (= (and d!1085815 res!1506520) b!3703312))

(declare-fun m!4214263 () Bool)

(assert (=> d!1085815 m!4214263))

(declare-fun m!4214265 () Bool)

(assert (=> b!3703312 m!4214265))

(assert (=> b!3703295 d!1085815))

(declare-fun d!1085817 () Bool)

(declare-fun res!1506527 () Bool)

(declare-fun e!2293651 () Bool)

(assert (=> d!1085817 (=> (not res!1506527) (not e!2293651))))

(declare-fun rulesValid!2317 (LexerInterface!5585 List!39523) Bool)

(assert (=> d!1085817 (= res!1506527 (rulesValid!2317 thiss!25522 lt!1295874))))

(assert (=> d!1085817 (= (rulesInvariant!4982 thiss!25522 lt!1295874) e!2293651)))

(declare-fun b!3703323 () Bool)

(assert (=> b!3703323 (= e!2293651 (noDuplicateTag!2317 thiss!25522 lt!1295874 Nil!39400))))

(assert (= (and d!1085817 res!1506527) b!3703323))

(declare-fun m!4214267 () Bool)

(assert (=> d!1085817 m!4214267))

(declare-fun m!4214269 () Bool)

(assert (=> b!3703323 m!4214269))

(assert (=> b!3703289 d!1085817))

(declare-fun d!1085819 () Bool)

(declare-fun res!1506537 () Bool)

(declare-fun e!2293663 () Bool)

(assert (=> d!1085819 (=> res!1506537 e!2293663)))

(assert (=> d!1085819 (= res!1506537 ((_ is Nil!39399) rules!3698))))

(assert (=> d!1085819 (= (noDuplicateTag!2317 thiss!25522 rules!3698 lt!1295869) e!2293663)))

(declare-fun b!3703337 () Bool)

(declare-fun e!2293664 () Bool)

(assert (=> b!3703337 (= e!2293663 e!2293664)))

(declare-fun res!1506538 () Bool)

(assert (=> b!3703337 (=> (not res!1506538) (not e!2293664))))

(assert (=> b!3703337 (= res!1506538 (not (contains!7859 lt!1295869 (tag!6836 (h!44819 rules!3698)))))))

(declare-fun b!3703338 () Bool)

(assert (=> b!3703338 (= e!2293664 (noDuplicateTag!2317 thiss!25522 (t!302206 rules!3698) (Cons!39400 (tag!6836 (h!44819 rules!3698)) lt!1295869)))))

(assert (= (and d!1085819 (not res!1506537)) b!3703337))

(assert (= (and b!3703337 res!1506538) b!3703338))

(declare-fun m!4214287 () Bool)

(assert (=> b!3703337 m!4214287))

(declare-fun m!4214289 () Bool)

(assert (=> b!3703338 m!4214289))

(assert (=> b!3703293 d!1085819))

(declare-fun d!1085825 () Bool)

(assert (=> d!1085825 (= (inv!52928 tag!250) (= (mod (str.len (value!191303 tag!250)) 2) 0))))

(assert (=> start!349014 d!1085825))

(declare-fun d!1085827 () Bool)

(declare-fun isEmpty!23464 (Option!8538) Bool)

(assert (=> d!1085827 (= (isDefined!6725 lt!1295872) (not (isEmpty!23464 lt!1295872)))))

(declare-fun bs!574549 () Bool)

(assert (= bs!574549 d!1085827))

(declare-fun m!4214291 () Bool)

(assert (=> bs!574549 m!4214291))

(assert (=> b!3703287 d!1085827))

(declare-fun b!3703371 () Bool)

(declare-fun e!2293692 () Option!8538)

(assert (=> b!3703371 (= e!2293692 None!8537)))

(declare-fun d!1085829 () Bool)

(declare-fun e!2293691 () Bool)

(assert (=> d!1085829 e!2293691))

(declare-fun res!1506559 () Bool)

(assert (=> d!1085829 (=> res!1506559 e!2293691)))

(declare-fun lt!1295906 () Option!8538)

(assert (=> d!1085829 (= res!1506559 (isEmpty!23464 lt!1295906))))

(declare-fun e!2293693 () Option!8538)

(assert (=> d!1085829 (= lt!1295906 e!2293693)))

(declare-fun c!639848 () Bool)

(assert (=> d!1085829 (= c!639848 (and ((_ is Cons!39399) rules!3698) (= (tag!6836 (h!44819 rules!3698)) tag!250)))))

(assert (=> d!1085829 (rulesInvariant!4982 thiss!25522 rules!3698)))

(assert (=> d!1085829 (= (getRuleFromTag!1530 thiss!25522 rules!3698 tag!250) lt!1295906)))

(declare-fun b!3703372 () Bool)

(declare-fun lt!1295905 () Unit!57356)

(declare-fun lt!1295907 () Unit!57356)

(assert (=> b!3703372 (= lt!1295905 lt!1295907)))

(assert (=> b!3703372 (rulesInvariant!4982 thiss!25522 (t!302206 rules!3698))))

(assert (=> b!3703372 (= lt!1295907 (lemmaInvariantOnRulesThenOnTail!688 thiss!25522 (h!44819 rules!3698) (t!302206 rules!3698)))))

(assert (=> b!3703372 (= e!2293692 (getRuleFromTag!1530 thiss!25522 (t!302206 rules!3698) tag!250))))

(declare-fun b!3703373 () Bool)

(declare-fun e!2293694 () Bool)

(assert (=> b!3703373 (= e!2293694 (= (tag!6836 (get!13121 lt!1295906)) tag!250))))

(declare-fun b!3703374 () Bool)

(assert (=> b!3703374 (= e!2293691 e!2293694)))

(declare-fun res!1506560 () Bool)

(assert (=> b!3703374 (=> (not res!1506560) (not e!2293694))))

(assert (=> b!3703374 (= res!1506560 (contains!7858 rules!3698 (get!13121 lt!1295906)))))

(declare-fun b!3703375 () Bool)

(assert (=> b!3703375 (= e!2293693 (Some!8537 (h!44819 rules!3698)))))

(declare-fun b!3703376 () Bool)

(assert (=> b!3703376 (= e!2293693 e!2293692)))

(declare-fun c!639849 () Bool)

(assert (=> b!3703376 (= c!639849 (and ((_ is Cons!39399) rules!3698) (not (= (tag!6836 (h!44819 rules!3698)) tag!250))))))

(assert (= (and d!1085829 c!639848) b!3703375))

(assert (= (and d!1085829 (not c!639848)) b!3703376))

(assert (= (and b!3703376 c!639849) b!3703372))

(assert (= (and b!3703376 (not c!639849)) b!3703371))

(assert (= (and d!1085829 (not res!1506559)) b!3703374))

(assert (= (and b!3703374 res!1506560) b!3703373))

(declare-fun m!4214333 () Bool)

(assert (=> d!1085829 m!4214333))

(assert (=> d!1085829 m!4214233))

(declare-fun m!4214335 () Bool)

(assert (=> b!3703372 m!4214335))

(declare-fun m!4214337 () Bool)

(assert (=> b!3703372 m!4214337))

(declare-fun m!4214339 () Bool)

(assert (=> b!3703372 m!4214339))

(declare-fun m!4214341 () Bool)

(assert (=> b!3703373 m!4214341))

(assert (=> b!3703374 m!4214341))

(assert (=> b!3703374 m!4214341))

(declare-fun m!4214343 () Bool)

(assert (=> b!3703374 m!4214343))

(assert (=> b!3703287 d!1085829))

(declare-fun d!1085851 () Bool)

(declare-fun res!1506561 () Bool)

(declare-fun e!2293697 () Bool)

(assert (=> d!1085851 (=> (not res!1506561) (not e!2293697))))

(assert (=> d!1085851 (= res!1506561 (rulesValid!2317 thiss!25522 rules!3698))))

(assert (=> d!1085851 (= (rulesInvariant!4982 thiss!25522 rules!3698) e!2293697)))

(declare-fun b!3703387 () Bool)

(assert (=> b!3703387 (= e!2293697 (noDuplicateTag!2317 thiss!25522 rules!3698 Nil!39400))))

(assert (= (and d!1085851 res!1506561) b!3703387))

(declare-fun m!4214345 () Bool)

(assert (=> d!1085851 m!4214345))

(declare-fun m!4214347 () Bool)

(assert (=> b!3703387 m!4214347))

(assert (=> b!3703287 d!1085851))

(declare-fun d!1085853 () Bool)

(assert (=> d!1085853 (rulesInvariant!4982 thiss!25522 rules!3698)))

(declare-fun lt!1295910 () Unit!57356)

(declare-fun choose!22143 (LexerInterface!5585 Rule!11792 List!39523) Unit!57356)

(assert (=> d!1085853 (= lt!1295910 (choose!22143 thiss!25522 newHd!19 rules!3698))))

(assert (=> d!1085853 (rulesInvariant!4982 thiss!25522 (Cons!39399 newHd!19 rules!3698))))

(assert (=> d!1085853 (= (lemmaInvariantOnRulesThenOnTail!688 thiss!25522 newHd!19 rules!3698) lt!1295910)))

(declare-fun bs!574553 () Bool)

(assert (= bs!574553 d!1085853))

(assert (=> bs!574553 m!4214233))

(declare-fun m!4214353 () Bool)

(assert (=> bs!574553 m!4214353))

(declare-fun m!4214355 () Bool)

(assert (=> bs!574553 m!4214355))

(assert (=> b!3703287 d!1085853))

(declare-fun d!1085855 () Bool)

(assert (=> d!1085855 (= (isDefined!6725 (getRuleFromTag!1530 thiss!25522 lt!1295874 tag!250)) (not (isEmpty!23464 (getRuleFromTag!1530 thiss!25522 lt!1295874 tag!250))))))

(declare-fun bs!574554 () Bool)

(assert (= bs!574554 d!1085855))

(assert (=> bs!574554 m!4214243))

(declare-fun m!4214357 () Bool)

(assert (=> bs!574554 m!4214357))

(assert (=> b!3703286 d!1085855))

(declare-fun b!3703407 () Bool)

(declare-fun e!2293713 () Option!8538)

(assert (=> b!3703407 (= e!2293713 None!8537)))

(declare-fun d!1085857 () Bool)

(declare-fun e!2293712 () Bool)

(assert (=> d!1085857 e!2293712))

(declare-fun res!1506562 () Bool)

(assert (=> d!1085857 (=> res!1506562 e!2293712)))

(declare-fun lt!1295912 () Option!8538)

(assert (=> d!1085857 (= res!1506562 (isEmpty!23464 lt!1295912))))

(declare-fun e!2293714 () Option!8538)

(assert (=> d!1085857 (= lt!1295912 e!2293714)))

(declare-fun c!639850 () Bool)

(assert (=> d!1085857 (= c!639850 (and ((_ is Cons!39399) lt!1295874) (= (tag!6836 (h!44819 lt!1295874)) tag!250)))))

(assert (=> d!1085857 (rulesInvariant!4982 thiss!25522 lt!1295874)))

(assert (=> d!1085857 (= (getRuleFromTag!1530 thiss!25522 lt!1295874 tag!250) lt!1295912)))

(declare-fun b!3703408 () Bool)

(declare-fun lt!1295911 () Unit!57356)

(declare-fun lt!1295913 () Unit!57356)

(assert (=> b!3703408 (= lt!1295911 lt!1295913)))

(assert (=> b!3703408 (rulesInvariant!4982 thiss!25522 (t!302206 lt!1295874))))

(assert (=> b!3703408 (= lt!1295913 (lemmaInvariantOnRulesThenOnTail!688 thiss!25522 (h!44819 lt!1295874) (t!302206 lt!1295874)))))

(assert (=> b!3703408 (= e!2293713 (getRuleFromTag!1530 thiss!25522 (t!302206 lt!1295874) tag!250))))

(declare-fun b!3703409 () Bool)

(declare-fun e!2293715 () Bool)

(assert (=> b!3703409 (= e!2293715 (= (tag!6836 (get!13121 lt!1295912)) tag!250))))

(declare-fun b!3703410 () Bool)

(assert (=> b!3703410 (= e!2293712 e!2293715)))

(declare-fun res!1506563 () Bool)

(assert (=> b!3703410 (=> (not res!1506563) (not e!2293715))))

(assert (=> b!3703410 (= res!1506563 (contains!7858 lt!1295874 (get!13121 lt!1295912)))))

(declare-fun b!3703411 () Bool)

(assert (=> b!3703411 (= e!2293714 (Some!8537 (h!44819 lt!1295874)))))

(declare-fun b!3703412 () Bool)

(assert (=> b!3703412 (= e!2293714 e!2293713)))

(declare-fun c!639851 () Bool)

(assert (=> b!3703412 (= c!639851 (and ((_ is Cons!39399) lt!1295874) (not (= (tag!6836 (h!44819 lt!1295874)) tag!250))))))

(assert (= (and d!1085857 c!639850) b!3703411))

(assert (= (and d!1085857 (not c!639850)) b!3703412))

(assert (= (and b!3703412 c!639851) b!3703408))

(assert (= (and b!3703412 (not c!639851)) b!3703407))

(assert (= (and d!1085857 (not res!1506562)) b!3703410))

(assert (= (and b!3703410 res!1506563) b!3703409))

(declare-fun m!4214359 () Bool)

(assert (=> d!1085857 m!4214359))

(assert (=> d!1085857 m!4214225))

(declare-fun m!4214361 () Bool)

(assert (=> b!3703408 m!4214361))

(declare-fun m!4214363 () Bool)

(assert (=> b!3703408 m!4214363))

(declare-fun m!4214365 () Bool)

(assert (=> b!3703408 m!4214365))

(declare-fun m!4214367 () Bool)

(assert (=> b!3703409 m!4214367))

(assert (=> b!3703410 m!4214367))

(assert (=> b!3703410 m!4214367))

(declare-fun m!4214369 () Bool)

(assert (=> b!3703410 m!4214369))

(assert (=> b!3703286 d!1085857))

(declare-fun d!1085859 () Bool)

(assert (=> d!1085859 (not (= (tag!6836 lt!1295871) (tag!6836 newHd!19)))))

(declare-fun lt!1295916 () Unit!57356)

(declare-fun choose!22144 (LexerInterface!5585 List!39523 Rule!11792 String!44463 List!39524) Unit!57356)

(assert (=> d!1085859 (= lt!1295916 (choose!22144 thiss!25522 rules!3698 lt!1295871 (tag!6836 newHd!19) lt!1295869))))

(assert (=> d!1085859 (contains!7859 lt!1295869 (tag!6836 newHd!19))))

(assert (=> d!1085859 (= (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!4 thiss!25522 rules!3698 lt!1295871 (tag!6836 newHd!19) lt!1295869) lt!1295916)))

(declare-fun bs!574555 () Bool)

(assert (= bs!574555 d!1085859))

(declare-fun m!4214371 () Bool)

(assert (=> bs!574555 m!4214371))

(assert (=> bs!574555 m!4214239))

(assert (=> b!3703286 d!1085859))

(declare-fun d!1085861 () Bool)

(declare-fun lt!1295919 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5687 (List!39524) (InoxSet String!44463))

(assert (=> d!1085861 (= lt!1295919 (select (content!5687 lt!1295869) (tag!6836 newHd!19)))))

(declare-fun e!2293720 () Bool)

(assert (=> d!1085861 (= lt!1295919 e!2293720)))

(declare-fun res!1506568 () Bool)

(assert (=> d!1085861 (=> (not res!1506568) (not e!2293720))))

(assert (=> d!1085861 (= res!1506568 ((_ is Cons!39400) lt!1295869))))

(assert (=> d!1085861 (= (contains!7859 lt!1295869 (tag!6836 newHd!19)) lt!1295919)))

(declare-fun b!3703417 () Bool)

(declare-fun e!2293721 () Bool)

(assert (=> b!3703417 (= e!2293720 e!2293721)))

(declare-fun res!1506569 () Bool)

(assert (=> b!3703417 (=> res!1506569 e!2293721)))

(assert (=> b!3703417 (= res!1506569 (= (h!44820 lt!1295869) (tag!6836 newHd!19)))))

(declare-fun b!3703418 () Bool)

(assert (=> b!3703418 (= e!2293721 (contains!7859 (t!302207 lt!1295869) (tag!6836 newHd!19)))))

(assert (= (and d!1085861 res!1506568) b!3703417))

(assert (= (and b!3703417 (not res!1506569)) b!3703418))

(declare-fun m!4214373 () Bool)

(assert (=> d!1085861 m!4214373))

(declare-fun m!4214375 () Bool)

(assert (=> d!1085861 m!4214375))

(declare-fun m!4214377 () Bool)

(assert (=> b!3703418 m!4214377))

(assert (=> b!3703291 d!1085861))

(declare-fun d!1085863 () Bool)

(assert (=> d!1085863 (= (get!13121 lt!1295872) (v!38499 lt!1295872))))

(assert (=> b!3703291 d!1085863))

(declare-fun d!1085865 () Bool)

(assert (=> d!1085865 (= (inv!52928 (tag!6836 (h!44819 rules!3698))) (= (mod (str.len (value!191303 (tag!6836 (h!44819 rules!3698)))) 2) 0))))

(assert (=> b!3703296 d!1085865))

(declare-fun d!1085867 () Bool)

(declare-fun res!1506570 () Bool)

(declare-fun e!2293722 () Bool)

(assert (=> d!1085867 (=> (not res!1506570) (not e!2293722))))

(assert (=> d!1085867 (= res!1506570 (semiInverseModEq!2560 (toChars!8195 (transformation!5996 (h!44819 rules!3698))) (toValue!8336 (transformation!5996 (h!44819 rules!3698)))))))

(assert (=> d!1085867 (= (inv!52930 (transformation!5996 (h!44819 rules!3698))) e!2293722)))

(declare-fun b!3703419 () Bool)

(assert (=> b!3703419 (= e!2293722 (equivClasses!2459 (toChars!8195 (transformation!5996 (h!44819 rules!3698))) (toValue!8336 (transformation!5996 (h!44819 rules!3698)))))))

(assert (= (and d!1085867 res!1506570) b!3703419))

(declare-fun m!4214379 () Bool)

(assert (=> d!1085867 m!4214379))

(declare-fun m!4214381 () Bool)

(assert (=> b!3703419 m!4214381))

(assert (=> b!3703296 d!1085867))

(declare-fun d!1085869 () Bool)

(declare-fun lt!1295922 () Bool)

(declare-fun content!5688 (List!39523) (InoxSet Rule!11792))

(assert (=> d!1085869 (= lt!1295922 (select (content!5688 rules!3698) lt!1295871))))

(declare-fun e!2293728 () Bool)

(assert (=> d!1085869 (= lt!1295922 e!2293728)))

(declare-fun res!1506575 () Bool)

(assert (=> d!1085869 (=> (not res!1506575) (not e!2293728))))

(assert (=> d!1085869 (= res!1506575 ((_ is Cons!39399) rules!3698))))

(assert (=> d!1085869 (= (contains!7858 rules!3698 lt!1295871) lt!1295922)))

(declare-fun b!3703424 () Bool)

(declare-fun e!2293727 () Bool)

(assert (=> b!3703424 (= e!2293728 e!2293727)))

(declare-fun res!1506576 () Bool)

(assert (=> b!3703424 (=> res!1506576 e!2293727)))

(assert (=> b!3703424 (= res!1506576 (= (h!44819 rules!3698) lt!1295871))))

(declare-fun b!3703425 () Bool)

(assert (=> b!3703425 (= e!2293727 (contains!7858 (t!302206 rules!3698) lt!1295871))))

(assert (= (and d!1085869 res!1506575) b!3703424))

(assert (= (and b!3703424 (not res!1506576)) b!3703425))

(declare-fun m!4214383 () Bool)

(assert (=> d!1085869 m!4214383))

(declare-fun m!4214385 () Bool)

(assert (=> d!1085869 m!4214385))

(declare-fun m!4214387 () Bool)

(assert (=> b!3703425 m!4214387))

(assert (=> b!3703290 d!1085869))

(declare-fun b!3703436 () Bool)

(declare-fun e!2293731 () Bool)

(declare-fun tp_is_empty!18565 () Bool)

(assert (=> b!3703436 (= e!2293731 tp_is_empty!18565)))

(declare-fun b!3703437 () Bool)

(declare-fun tp!1125873 () Bool)

(declare-fun tp!1125871 () Bool)

(assert (=> b!3703437 (= e!2293731 (and tp!1125873 tp!1125871))))

(declare-fun b!3703439 () Bool)

(declare-fun tp!1125872 () Bool)

(declare-fun tp!1125875 () Bool)

(assert (=> b!3703439 (= e!2293731 (and tp!1125872 tp!1125875))))

(assert (=> b!3703295 (= tp!1125822 e!2293731)))

(declare-fun b!3703438 () Bool)

(declare-fun tp!1125874 () Bool)

(assert (=> b!3703438 (= e!2293731 tp!1125874)))

(assert (= (and b!3703295 ((_ is ElementMatch!10755) (regex!5996 newHd!19))) b!3703436))

(assert (= (and b!3703295 ((_ is Concat!16982) (regex!5996 newHd!19))) b!3703437))

(assert (= (and b!3703295 ((_ is Star!10755) (regex!5996 newHd!19))) b!3703438))

(assert (= (and b!3703295 ((_ is Union!10755) (regex!5996 newHd!19))) b!3703439))

(declare-fun b!3703450 () Bool)

(declare-fun b_free!98821 () Bool)

(declare-fun b_next!99525 () Bool)

(assert (=> b!3703450 (= b_free!98821 (not b_next!99525))))

(declare-fun tp!1125887 () Bool)

(declare-fun b_and!277055 () Bool)

(assert (=> b!3703450 (= tp!1125887 b_and!277055)))

(declare-fun b_free!98823 () Bool)

(declare-fun b_next!99527 () Bool)

(assert (=> b!3703450 (= b_free!98823 (not b_next!99527))))

(declare-fun tp!1125886 () Bool)

(declare-fun b_and!277057 () Bool)

(assert (=> b!3703450 (= tp!1125886 b_and!277057)))

(declare-fun e!2293743 () Bool)

(assert (=> b!3703450 (= e!2293743 (and tp!1125887 tp!1125886))))

(declare-fun tp!1125884 () Bool)

(declare-fun b!3703449 () Bool)

(declare-fun e!2293740 () Bool)

(assert (=> b!3703449 (= e!2293740 (and tp!1125884 (inv!52928 (tag!6836 (h!44819 (t!302206 rules!3698)))) (inv!52930 (transformation!5996 (h!44819 (t!302206 rules!3698)))) e!2293743))))

(declare-fun b!3703448 () Bool)

(declare-fun e!2293741 () Bool)

(declare-fun tp!1125885 () Bool)

(assert (=> b!3703448 (= e!2293741 (and e!2293740 tp!1125885))))

(assert (=> b!3703294 (= tp!1125827 e!2293741)))

(assert (= b!3703449 b!3703450))

(assert (= b!3703448 b!3703449))

(assert (= (and b!3703294 ((_ is Cons!39399) (t!302206 rules!3698))) b!3703448))

(declare-fun m!4214389 () Bool)

(assert (=> b!3703449 m!4214389))

(declare-fun m!4214391 () Bool)

(assert (=> b!3703449 m!4214391))

(declare-fun b!3703451 () Bool)

(declare-fun e!2293744 () Bool)

(assert (=> b!3703451 (= e!2293744 tp_is_empty!18565)))

(declare-fun b!3703452 () Bool)

(declare-fun tp!1125890 () Bool)

(declare-fun tp!1125888 () Bool)

(assert (=> b!3703452 (= e!2293744 (and tp!1125890 tp!1125888))))

(declare-fun b!3703454 () Bool)

(declare-fun tp!1125889 () Bool)

(declare-fun tp!1125892 () Bool)

(assert (=> b!3703454 (= e!2293744 (and tp!1125889 tp!1125892))))

(assert (=> b!3703296 (= tp!1125828 e!2293744)))

(declare-fun b!3703453 () Bool)

(declare-fun tp!1125891 () Bool)

(assert (=> b!3703453 (= e!2293744 tp!1125891)))

(assert (= (and b!3703296 ((_ is ElementMatch!10755) (regex!5996 (h!44819 rules!3698)))) b!3703451))

(assert (= (and b!3703296 ((_ is Concat!16982) (regex!5996 (h!44819 rules!3698)))) b!3703452))

(assert (= (and b!3703296 ((_ is Star!10755) (regex!5996 (h!44819 rules!3698)))) b!3703453))

(assert (= (and b!3703296 ((_ is Union!10755) (regex!5996 (h!44819 rules!3698)))) b!3703454))

(check-sat b_and!277045 (not b!3703425) (not b!3703373) (not d!1085869) b_and!277055 b_and!277043 (not b!3703337) (not b!3703438) (not b!3703418) (not b!3703437) (not b_next!99525) (not b!3703410) (not b!3703374) (not b!3703338) (not b_next!99513) (not b!3703312) (not d!1085827) (not d!1085857) (not b!3703449) (not b!3703439) (not d!1085855) (not b!3703453) (not b!3703452) (not b!3703387) b_and!277057 (not d!1085817) (not b!3703372) (not d!1085815) (not b!3703409) (not b_next!99517) (not d!1085853) b_and!277049 (not b_next!99515) (not b!3703408) (not d!1085851) (not b!3703454) (not d!1085867) (not d!1085861) (not b_next!99519) (not b!3703448) (not b!3703323) (not d!1085859) (not b!3703419) (not d!1085829) tp_is_empty!18565 b_and!277047 (not b_next!99527))
(check-sat b_and!277045 (not b_next!99525) (not b_next!99513) b_and!277055 b_and!277057 (not b_next!99517) b_and!277043 (not b_next!99519) b_and!277049 (not b_next!99515) b_and!277047 (not b_next!99527))
