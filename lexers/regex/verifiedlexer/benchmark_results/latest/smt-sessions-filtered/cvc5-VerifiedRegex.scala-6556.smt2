; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!346528 () Bool)

(assert start!346528)

(declare-fun b!3687127 () Bool)

(declare-fun b_free!97825 () Bool)

(declare-fun b_next!98529 () Bool)

(assert (=> b!3687127 (= b_free!97825 (not b_next!98529))))

(declare-fun tp!1120688 () Bool)

(declare-fun b_and!275531 () Bool)

(assert (=> b!3687127 (= tp!1120688 b_and!275531)))

(declare-fun b_free!97827 () Bool)

(declare-fun b_next!98531 () Bool)

(assert (=> b!3687127 (= b_free!97827 (not b_next!98531))))

(declare-fun tp!1120691 () Bool)

(declare-fun b_and!275533 () Bool)

(assert (=> b!3687127 (= tp!1120691 b_and!275533)))

(declare-fun b!3687125 () Bool)

(declare-fun e!2283274 () Bool)

(declare-fun tp!1120689 () Bool)

(declare-fun e!2283278 () Bool)

(declare-datatypes ((List!39138 0))(
  ( (Nil!39014) (Cons!39014 (h!44434 (_ BitVec 16)) (t!301163 List!39138)) )
))
(declare-datatypes ((TokenValue!6121 0))(
  ( (FloatLiteralValue!12242 (text!43292 List!39138)) (TokenValueExt!6120 (__x!24459 Int)) (Broken!30605 (value!188329 List!39138)) (Object!6244) (End!6121) (Def!6121) (Underscore!6121) (Match!6121) (Else!6121) (Error!6121) (Case!6121) (If!6121) (Extends!6121) (Abstract!6121) (Class!6121) (Val!6121) (DelimiterValue!12242 (del!6181 List!39138)) (KeywordValue!6127 (value!188330 List!39138)) (CommentValue!12242 (value!188331 List!39138)) (WhitespaceValue!12242 (value!188332 List!39138)) (IndentationValue!6121 (value!188333 List!39138)) (String!43940) (Int32!6121) (Broken!30606 (value!188334 List!39138)) (Boolean!6122) (Unit!57072) (OperatorValue!6124 (op!6181 List!39138)) (IdentifierValue!12242 (value!188335 List!39138)) (IdentifierValue!12243 (value!188336 List!39138)) (WhitespaceValue!12243 (value!188337 List!39138)) (True!12242) (False!12242) (Broken!30607 (value!188338 List!39138)) (Broken!30608 (value!188339 List!39138)) (True!12243) (RightBrace!6121) (RightBracket!6121) (Colon!6121) (Null!6121) (Comma!6121) (LeftBracket!6121) (False!12243) (LeftBrace!6121) (ImaginaryLiteralValue!6121 (text!43293 List!39138)) (StringLiteralValue!18363 (value!188340 List!39138)) (EOFValue!6121 (value!188341 List!39138)) (IdentValue!6121 (value!188342 List!39138)) (DelimiterValue!12243 (value!188343 List!39138)) (DedentValue!6121 (value!188344 List!39138)) (NewLineValue!6121 (value!188345 List!39138)) (IntegerValue!18363 (value!188346 (_ BitVec 32)) (text!43294 List!39138)) (IntegerValue!18364 (value!188347 Int) (text!43295 List!39138)) (Times!6121) (Or!6121) (Equal!6121) (Minus!6121) (Broken!30609 (value!188348 List!39138)) (And!6121) (Div!6121) (LessEqual!6121) (Mod!6121) (Concat!16771) (Not!6121) (Plus!6121) (SpaceValue!6121 (value!188349 List!39138)) (IntegerValue!18365 (value!188350 Int) (text!43296 List!39138)) (StringLiteralValue!18364 (text!43297 List!39138)) (FloatLiteralValue!12243 (text!43298 List!39138)) (BytesLiteralValue!6121 (value!188351 List!39138)) (CommentValue!12243 (value!188352 List!39138)) (StringLiteralValue!18365 (value!188353 List!39138)) (ErrorTokenValue!6121 (msg!6182 List!39138)) )
))
(declare-datatypes ((C!21486 0))(
  ( (C!21487 (val!12791 Int)) )
))
(declare-datatypes ((List!39139 0))(
  ( (Nil!39015) (Cons!39015 (h!44435 C!21486) (t!301164 List!39139)) )
))
(declare-datatypes ((IArray!23949 0))(
  ( (IArray!23950 (innerList!12032 List!39139)) )
))
(declare-datatypes ((Regex!10650 0))(
  ( (ElementMatch!10650 (c!637735 C!21486)) (Concat!16772 (regOne!21812 Regex!10650) (regTwo!21812 Regex!10650)) (EmptyExpr!10650) (Star!10650 (reg!10979 Regex!10650)) (EmptyLang!10650) (Union!10650 (regOne!21813 Regex!10650) (regTwo!21813 Regex!10650)) )
))
(declare-datatypes ((Conc!11972 0))(
  ( (Node!11972 (left!30432 Conc!11972) (right!30762 Conc!11972) (csize!24174 Int) (cheight!12183 Int)) (Leaf!18529 (xs!15174 IArray!23949) (csize!24175 Int)) (Empty!11972) )
))
(declare-datatypes ((BalanceConc!23558 0))(
  ( (BalanceConc!23559 (c!637736 Conc!11972)) )
))
(declare-datatypes ((String!43941 0))(
  ( (String!43942 (value!188354 String)) )
))
(declare-datatypes ((TokenValueInjection!11670 0))(
  ( (TokenValueInjection!11671 (toValue!8203 Int) (toChars!8062 Int)) )
))
(declare-datatypes ((Rule!11582 0))(
  ( (Rule!11583 (regex!5891 Regex!10650) (tag!6703 String!43941) (isSeparator!5891 Bool) (transformation!5891 TokenValueInjection!11670)) )
))
(declare-datatypes ((List!39140 0))(
  ( (Nil!39016) (Cons!39016 (h!44436 Rule!11582) (t!301165 List!39140)) )
))
(declare-fun rules!3568 () List!39140)

(declare-fun inv!52480 (String!43941) Bool)

(declare-fun inv!52483 (TokenValueInjection!11670) Bool)

(assert (=> b!3687125 (= e!2283274 (and tp!1120689 (inv!52480 (tag!6703 (h!44436 rules!3568))) (inv!52483 (transformation!5891 (h!44436 rules!3568))) e!2283278))))

(declare-fun b!3687126 () Bool)

(declare-fun res!1498395 () Bool)

(declare-fun e!2283277 () Bool)

(assert (=> b!3687126 (=> (not res!1498395) (not e!2283277))))

(declare-fun isEmpty!23213 (List!39140) Bool)

(assert (=> b!3687126 (= res!1498395 (not (isEmpty!23213 rules!3568)))))

(declare-fun b!3687128 () Bool)

(declare-fun e!2283275 () Bool)

(assert (=> b!3687128 (= e!2283277 e!2283275)))

(declare-fun res!1498394 () Bool)

(assert (=> b!3687128 (=> (not res!1498394) (not e!2283275))))

(declare-datatypes ((Token!11148 0))(
  ( (Token!11149 (value!188355 TokenValue!6121) (rule!8735 Rule!11582) (size!29805 Int) (originalCharacters!6605 List!39139)) )
))
(declare-datatypes ((List!39141 0))(
  ( (Nil!39017) (Cons!39017 (h!44437 Token!11148) (t!301166 List!39141)) )
))
(declare-datatypes ((IArray!23951 0))(
  ( (IArray!23952 (innerList!12033 List!39141)) )
))
(declare-datatypes ((Conc!11973 0))(
  ( (Node!11973 (left!30433 Conc!11973) (right!30763 Conc!11973) (csize!24176 Int) (cheight!12184 Int)) (Leaf!18530 (xs!15175 IArray!23951) (csize!24177 Int)) (Empty!11973) )
))
(declare-datatypes ((BalanceConc!23560 0))(
  ( (BalanceConc!23561 (c!637737 Conc!11973)) )
))
(declare-datatypes ((tuple2!38908 0))(
  ( (tuple2!38909 (_1!22588 BalanceConc!23560) (_2!22588 BalanceConc!23558)) )
))
(declare-fun lt!1290559 () tuple2!38908)

(declare-fun isEmpty!23214 (BalanceConc!23560) Bool)

(assert (=> b!3687128 (= res!1498394 (not (isEmpty!23214 (_1!22588 lt!1290559))))))

(declare-datatypes ((LexerInterface!5480 0))(
  ( (LexerInterfaceExt!5477 (__x!24460 Int)) (Lexer!5478) )
))
(declare-fun thiss!25197 () LexerInterface!5480)

(declare-fun input!3129 () List!39139)

(declare-fun lex!2621 (LexerInterface!5480 List!39140 BalanceConc!23558) tuple2!38908)

(declare-fun seqFromList!4440 (List!39139) BalanceConc!23558)

(assert (=> b!3687128 (= lt!1290559 (lex!2621 thiss!25197 rules!3568 (seqFromList!4440 input!3129)))))

(declare-fun b!3687129 () Bool)

(declare-datatypes ((tuple2!38910 0))(
  ( (tuple2!38911 (_1!22589 Token!11148) (_2!22589 List!39139)) )
))
(declare-datatypes ((Option!8393 0))(
  ( (None!8392) (Some!8392 (v!38340 tuple2!38910)) )
))
(declare-fun lt!1290562 () Option!8393)

(declare-fun isDefined!6594 (Option!8393) Bool)

(assert (=> b!3687129 (= e!2283275 (not (isDefined!6594 lt!1290562)))))

(declare-fun lt!1290561 () List!39139)

(declare-fun suffix!1448 () List!39139)

(declare-fun isPrefix!3244 (List!39139 List!39139) Bool)

(declare-fun ++!9714 (List!39139 List!39139) List!39139)

(assert (=> b!3687129 (isPrefix!3244 lt!1290561 (++!9714 input!3129 suffix!1448))))

(declare-datatypes ((Unit!57073 0))(
  ( (Unit!57074) )
))
(declare-fun lt!1290557 () Unit!57073)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!573 (List!39139 List!39139 List!39139) Unit!57073)

(assert (=> b!3687129 (= lt!1290557 (lemmaPrefixStaysPrefixWhenAddingToSuffix!573 lt!1290561 input!3129 suffix!1448))))

(declare-fun lt!1290560 () tuple2!38910)

(assert (=> b!3687129 (isPrefix!3244 lt!1290561 (++!9714 lt!1290561 (_2!22589 lt!1290560)))))

(declare-fun lt!1290558 () Unit!57073)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2161 (List!39139 List!39139) Unit!57073)

(assert (=> b!3687129 (= lt!1290558 (lemmaConcatTwoListThenFirstIsPrefix!2161 lt!1290561 (_2!22589 lt!1290560)))))

(declare-fun get!12938 (Option!8393) tuple2!38910)

(assert (=> b!3687129 (= lt!1290560 (get!12938 lt!1290562))))

(declare-fun maxPrefix!3008 (LexerInterface!5480 List!39140 List!39139) Option!8393)

(assert (=> b!3687129 (= lt!1290562 (maxPrefix!3008 thiss!25197 rules!3568 input!3129))))

(declare-fun list!14558 (BalanceConc!23558) List!39139)

(declare-fun charsOf!3902 (Token!11148) BalanceConc!23558)

(declare-fun head!7953 (List!39141) Token!11148)

(declare-fun list!14559 (BalanceConc!23560) List!39141)

(assert (=> b!3687129 (= lt!1290561 (list!14558 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559))))))))

(declare-fun b!3687130 () Bool)

(declare-fun e!2283271 () Bool)

(declare-fun tp_is_empty!18383 () Bool)

(declare-fun tp!1120687 () Bool)

(assert (=> b!3687130 (= e!2283271 (and tp_is_empty!18383 tp!1120687))))

(declare-fun b!3687131 () Bool)

(declare-fun e!2283272 () Bool)

(declare-fun tp!1120692 () Bool)

(assert (=> b!3687131 (= e!2283272 (and tp_is_empty!18383 tp!1120692))))

(declare-fun b!3687132 () Bool)

(declare-fun res!1498393 () Bool)

(assert (=> b!3687132 (=> (not res!1498393) (not e!2283277))))

(declare-fun rulesInvariant!4877 (LexerInterface!5480 List!39140) Bool)

(assert (=> b!3687132 (= res!1498393 (rulesInvariant!4877 thiss!25197 rules!3568))))

(declare-fun b!3687133 () Bool)

(declare-fun e!2283273 () Bool)

(declare-fun tp!1120690 () Bool)

(assert (=> b!3687133 (= e!2283273 (and e!2283274 tp!1120690))))

(assert (=> b!3687127 (= e!2283278 (and tp!1120688 tp!1120691))))

(declare-fun res!1498396 () Bool)

(assert (=> start!346528 (=> (not res!1498396) (not e!2283277))))

(assert (=> start!346528 (= res!1498396 (is-Lexer!5478 thiss!25197))))

(assert (=> start!346528 e!2283277))

(assert (=> start!346528 true))

(assert (=> start!346528 e!2283273))

(assert (=> start!346528 e!2283271))

(assert (=> start!346528 e!2283272))

(assert (= (and start!346528 res!1498396) b!3687126))

(assert (= (and b!3687126 res!1498395) b!3687132))

(assert (= (and b!3687132 res!1498393) b!3687128))

(assert (= (and b!3687128 res!1498394) b!3687129))

(assert (= b!3687125 b!3687127))

(assert (= b!3687133 b!3687125))

(assert (= (and start!346528 (is-Cons!39016 rules!3568)) b!3687133))

(assert (= (and start!346528 (is-Cons!39015 suffix!1448)) b!3687130))

(assert (= (and start!346528 (is-Cons!39015 input!3129)) b!3687131))

(declare-fun m!4198973 () Bool)

(assert (=> b!3687132 m!4198973))

(declare-fun m!4198975 () Bool)

(assert (=> b!3687125 m!4198975))

(declare-fun m!4198977 () Bool)

(assert (=> b!3687125 m!4198977))

(declare-fun m!4198979 () Bool)

(assert (=> b!3687128 m!4198979))

(declare-fun m!4198981 () Bool)

(assert (=> b!3687128 m!4198981))

(assert (=> b!3687128 m!4198981))

(declare-fun m!4198983 () Bool)

(assert (=> b!3687128 m!4198983))

(declare-fun m!4198985 () Bool)

(assert (=> b!3687129 m!4198985))

(declare-fun m!4198987 () Bool)

(assert (=> b!3687129 m!4198987))

(declare-fun m!4198989 () Bool)

(assert (=> b!3687129 m!4198989))

(declare-fun m!4198991 () Bool)

(assert (=> b!3687129 m!4198991))

(declare-fun m!4198993 () Bool)

(assert (=> b!3687129 m!4198993))

(assert (=> b!3687129 m!4198985))

(declare-fun m!4198995 () Bool)

(assert (=> b!3687129 m!4198995))

(declare-fun m!4198997 () Bool)

(assert (=> b!3687129 m!4198997))

(declare-fun m!4198999 () Bool)

(assert (=> b!3687129 m!4198999))

(declare-fun m!4199001 () Bool)

(assert (=> b!3687129 m!4199001))

(declare-fun m!4199003 () Bool)

(assert (=> b!3687129 m!4199003))

(declare-fun m!4199005 () Bool)

(assert (=> b!3687129 m!4199005))

(assert (=> b!3687129 m!4198991))

(assert (=> b!3687129 m!4198989))

(declare-fun m!4199007 () Bool)

(assert (=> b!3687129 m!4199007))

(declare-fun m!4199009 () Bool)

(assert (=> b!3687129 m!4199009))

(assert (=> b!3687129 m!4198999))

(assert (=> b!3687129 m!4199005))

(declare-fun m!4199011 () Bool)

(assert (=> b!3687126 m!4199011))

(push 1)

(assert (not b!3687125))

(assert (not b_next!98529))

(assert (not b!3687131))

(assert (not b_next!98531))

(assert (not b!3687129))

(assert (not b!3687133))

(assert b_and!275533)

(assert (not b!3687126))

(assert (not b!3687130))

(assert (not b!3687132))

(assert b_and!275531)

(assert tp_is_empty!18383)

(assert (not b!3687128))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275531)

(assert b_and!275533)

(assert (not b_next!98531))

(assert (not b_next!98529))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1082075 () Bool)

(assert (=> d!1082075 (= (inv!52480 (tag!6703 (h!44436 rules!3568))) (= (mod (str.len (value!188354 (tag!6703 (h!44436 rules!3568)))) 2) 0))))

(assert (=> b!3687125 d!1082075))

(declare-fun d!1082077 () Bool)

(declare-fun res!1498413 () Bool)

(declare-fun e!2283305 () Bool)

(assert (=> d!1082077 (=> (not res!1498413) (not e!2283305))))

(declare-fun semiInverseModEq!2512 (Int Int) Bool)

(assert (=> d!1082077 (= res!1498413 (semiInverseModEq!2512 (toChars!8062 (transformation!5891 (h!44436 rules!3568))) (toValue!8203 (transformation!5891 (h!44436 rules!3568)))))))

(assert (=> d!1082077 (= (inv!52483 (transformation!5891 (h!44436 rules!3568))) e!2283305)))

(declare-fun b!3687163 () Bool)

(declare-fun equivClasses!2411 (Int Int) Bool)

(assert (=> b!3687163 (= e!2283305 (equivClasses!2411 (toChars!8062 (transformation!5891 (h!44436 rules!3568))) (toValue!8203 (transformation!5891 (h!44436 rules!3568)))))))

(assert (= (and d!1082077 res!1498413) b!3687163))

(declare-fun m!4199053 () Bool)

(assert (=> d!1082077 m!4199053))

(declare-fun m!4199055 () Bool)

(assert (=> b!3687163 m!4199055))

(assert (=> b!3687125 d!1082077))

(declare-fun b!3687188 () Bool)

(declare-fun e!2283319 () Bool)

(declare-fun e!2283320 () Bool)

(assert (=> b!3687188 (= e!2283319 e!2283320)))

(declare-fun res!1498440 () Bool)

(assert (=> b!3687188 (=> (not res!1498440) (not e!2283320))))

(declare-fun lt!1290592 () Option!8393)

(assert (=> b!3687188 (= res!1498440 (isDefined!6594 lt!1290592))))

(declare-fun b!3687189 () Bool)

(declare-fun res!1498438 () Bool)

(assert (=> b!3687189 (=> (not res!1498438) (not e!2283320))))

(declare-fun apply!9363 (TokenValueInjection!11670 BalanceConc!23558) TokenValue!6121)

(assert (=> b!3687189 (= res!1498438 (= (value!188355 (_1!22589 (get!12938 lt!1290592))) (apply!9363 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))) (seqFromList!4440 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592)))))))))

(declare-fun d!1082079 () Bool)

(assert (=> d!1082079 e!2283319))

(declare-fun res!1498436 () Bool)

(assert (=> d!1082079 (=> res!1498436 e!2283319)))

(declare-fun isEmpty!23217 (Option!8393) Bool)

(assert (=> d!1082079 (= res!1498436 (isEmpty!23217 lt!1290592))))

(declare-fun e!2283318 () Option!8393)

(assert (=> d!1082079 (= lt!1290592 e!2283318)))

(declare-fun c!637744 () Bool)

(assert (=> d!1082079 (= c!637744 (and (is-Cons!39016 rules!3568) (is-Nil!39016 (t!301165 rules!3568))))))

(declare-fun lt!1290594 () Unit!57073)

(declare-fun lt!1290593 () Unit!57073)

(assert (=> d!1082079 (= lt!1290594 lt!1290593)))

(assert (=> d!1082079 (isPrefix!3244 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2031 (List!39139 List!39139) Unit!57073)

(assert (=> d!1082079 (= lt!1290593 (lemmaIsPrefixRefl!2031 input!3129 input!3129))))

(declare-fun rulesValidInductive!2105 (LexerInterface!5480 List!39140) Bool)

(assert (=> d!1082079 (rulesValidInductive!2105 thiss!25197 rules!3568)))

(assert (=> d!1082079 (= (maxPrefix!3008 thiss!25197 rules!3568 input!3129) lt!1290592)))

(declare-fun b!3687190 () Bool)

(declare-fun call!266859 () Option!8393)

(assert (=> b!3687190 (= e!2283318 call!266859)))

(declare-fun b!3687191 () Bool)

(declare-fun res!1498441 () Bool)

(assert (=> b!3687191 (=> (not res!1498441) (not e!2283320))))

(declare-fun matchR!5205 (Regex!10650 List!39139) Bool)

(assert (=> b!3687191 (= res!1498441 (matchR!5205 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))) (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun b!3687192 () Bool)

(declare-fun lt!1290595 () Option!8393)

(declare-fun lt!1290591 () Option!8393)

(assert (=> b!3687192 (= e!2283318 (ite (and (is-None!8392 lt!1290595) (is-None!8392 lt!1290591)) None!8392 (ite (is-None!8392 lt!1290591) lt!1290595 (ite (is-None!8392 lt!1290595) lt!1290591 (ite (>= (size!29805 (_1!22589 (v!38340 lt!1290595))) (size!29805 (_1!22589 (v!38340 lt!1290591)))) lt!1290595 lt!1290591)))))))

(assert (=> b!3687192 (= lt!1290595 call!266859)))

(assert (=> b!3687192 (= lt!1290591 (maxPrefix!3008 thiss!25197 (t!301165 rules!3568) input!3129))))

(declare-fun b!3687193 () Bool)

(declare-fun contains!7788 (List!39140 Rule!11582) Bool)

(assert (=> b!3687193 (= e!2283320 (contains!7788 rules!3568 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))))

(declare-fun bm!266854 () Bool)

(declare-fun maxPrefixOneRule!2126 (LexerInterface!5480 Rule!11582 List!39139) Option!8393)

(assert (=> bm!266854 (= call!266859 (maxPrefixOneRule!2126 thiss!25197 (h!44436 rules!3568) input!3129))))

(declare-fun b!3687194 () Bool)

(declare-fun res!1498437 () Bool)

(assert (=> b!3687194 (=> (not res!1498437) (not e!2283320))))

(assert (=> b!3687194 (= res!1498437 (= (++!9714 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))) (_2!22589 (get!12938 lt!1290592))) input!3129))))

(declare-fun b!3687195 () Bool)

(declare-fun res!1498439 () Bool)

(assert (=> b!3687195 (=> (not res!1498439) (not e!2283320))))

(assert (=> b!3687195 (= res!1498439 (= (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))) (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592)))))))

(declare-fun b!3687196 () Bool)

(declare-fun res!1498442 () Bool)

(assert (=> b!3687196 (=> (not res!1498442) (not e!2283320))))

(declare-fun size!29807 (List!39139) Int)

(assert (=> b!3687196 (= res!1498442 (< (size!29807 (_2!22589 (get!12938 lt!1290592))) (size!29807 input!3129)))))

(assert (= (and d!1082079 c!637744) b!3687190))

(assert (= (and d!1082079 (not c!637744)) b!3687192))

(assert (= (or b!3687190 b!3687192) bm!266854))

(assert (= (and d!1082079 (not res!1498436)) b!3687188))

(assert (= (and b!3687188 res!1498440) b!3687195))

(assert (= (and b!3687195 res!1498439) b!3687196))

(assert (= (and b!3687196 res!1498442) b!3687194))

(assert (= (and b!3687194 res!1498437) b!3687189))

(assert (= (and b!3687189 res!1498438) b!3687191))

(assert (= (and b!3687191 res!1498441) b!3687193))

(declare-fun m!4199065 () Bool)

(assert (=> d!1082079 m!4199065))

(declare-fun m!4199067 () Bool)

(assert (=> d!1082079 m!4199067))

(declare-fun m!4199069 () Bool)

(assert (=> d!1082079 m!4199069))

(declare-fun m!4199071 () Bool)

(assert (=> d!1082079 m!4199071))

(declare-fun m!4199073 () Bool)

(assert (=> b!3687193 m!4199073))

(declare-fun m!4199075 () Bool)

(assert (=> b!3687193 m!4199075))

(assert (=> b!3687189 m!4199073))

(declare-fun m!4199077 () Bool)

(assert (=> b!3687189 m!4199077))

(assert (=> b!3687189 m!4199077))

(declare-fun m!4199079 () Bool)

(assert (=> b!3687189 m!4199079))

(assert (=> b!3687194 m!4199073))

(declare-fun m!4199081 () Bool)

(assert (=> b!3687194 m!4199081))

(assert (=> b!3687194 m!4199081))

(declare-fun m!4199083 () Bool)

(assert (=> b!3687194 m!4199083))

(assert (=> b!3687194 m!4199083))

(declare-fun m!4199085 () Bool)

(assert (=> b!3687194 m!4199085))

(declare-fun m!4199087 () Bool)

(assert (=> b!3687188 m!4199087))

(declare-fun m!4199089 () Bool)

(assert (=> b!3687192 m!4199089))

(assert (=> b!3687191 m!4199073))

(assert (=> b!3687191 m!4199081))

(assert (=> b!3687191 m!4199081))

(assert (=> b!3687191 m!4199083))

(assert (=> b!3687191 m!4199083))

(declare-fun m!4199091 () Bool)

(assert (=> b!3687191 m!4199091))

(declare-fun m!4199093 () Bool)

(assert (=> bm!266854 m!4199093))

(assert (=> b!3687195 m!4199073))

(assert (=> b!3687195 m!4199081))

(assert (=> b!3687195 m!4199081))

(assert (=> b!3687195 m!4199083))

(assert (=> b!3687196 m!4199073))

(declare-fun m!4199095 () Bool)

(assert (=> b!3687196 m!4199095))

(declare-fun m!4199097 () Bool)

(assert (=> b!3687196 m!4199097))

(assert (=> b!3687129 d!1082079))

(declare-fun d!1082091 () Bool)

(assert (=> d!1082091 (isPrefix!3244 lt!1290561 (++!9714 lt!1290561 (_2!22589 lt!1290560)))))

(declare-fun lt!1290598 () Unit!57073)

(declare-fun choose!22066 (List!39139 List!39139) Unit!57073)

(assert (=> d!1082091 (= lt!1290598 (choose!22066 lt!1290561 (_2!22589 lt!1290560)))))

(assert (=> d!1082091 (= (lemmaConcatTwoListThenFirstIsPrefix!2161 lt!1290561 (_2!22589 lt!1290560)) lt!1290598)))

(declare-fun bs!573914 () Bool)

(assert (= bs!573914 d!1082091))

(assert (=> bs!573914 m!4198985))

(assert (=> bs!573914 m!4198985))

(assert (=> bs!573914 m!4198987))

(declare-fun m!4199099 () Bool)

(assert (=> bs!573914 m!4199099))

(assert (=> b!3687129 d!1082091))

(declare-fun d!1082093 () Bool)

(declare-fun list!14562 (Conc!11973) List!39141)

(assert (=> d!1082093 (= (list!14559 (_1!22588 lt!1290559)) (list!14562 (c!637737 (_1!22588 lt!1290559))))))

(declare-fun bs!573915 () Bool)

(assert (= bs!573915 d!1082093))

(declare-fun m!4199101 () Bool)

(assert (=> bs!573915 m!4199101))

(assert (=> b!3687129 d!1082093))

(declare-fun d!1082095 () Bool)

(declare-fun e!2283328 () Bool)

(assert (=> d!1082095 e!2283328))

(declare-fun res!1498453 () Bool)

(assert (=> d!1082095 (=> res!1498453 e!2283328)))

(declare-fun lt!1290604 () Bool)

(assert (=> d!1082095 (= res!1498453 (not lt!1290604))))

(declare-fun e!2283329 () Bool)

(assert (=> d!1082095 (= lt!1290604 e!2283329)))

(declare-fun res!1498454 () Bool)

(assert (=> d!1082095 (=> res!1498454 e!2283329)))

(assert (=> d!1082095 (= res!1498454 (is-Nil!39015 lt!1290561))))

(assert (=> d!1082095 (= (isPrefix!3244 lt!1290561 (++!9714 lt!1290561 (_2!22589 lt!1290560))) lt!1290604)))

(declare-fun b!3687208 () Bool)

(assert (=> b!3687208 (= e!2283328 (>= (size!29807 (++!9714 lt!1290561 (_2!22589 lt!1290560))) (size!29807 lt!1290561)))))

(declare-fun b!3687207 () Bool)

(declare-fun e!2283327 () Bool)

(declare-fun tail!5706 (List!39139) List!39139)

(assert (=> b!3687207 (= e!2283327 (isPrefix!3244 (tail!5706 lt!1290561) (tail!5706 (++!9714 lt!1290561 (_2!22589 lt!1290560)))))))

(declare-fun b!3687206 () Bool)

(declare-fun res!1498451 () Bool)

(assert (=> b!3687206 (=> (not res!1498451) (not e!2283327))))

(declare-fun head!7955 (List!39139) C!21486)

(assert (=> b!3687206 (= res!1498451 (= (head!7955 lt!1290561) (head!7955 (++!9714 lt!1290561 (_2!22589 lt!1290560)))))))

(declare-fun b!3687205 () Bool)

(assert (=> b!3687205 (= e!2283329 e!2283327)))

(declare-fun res!1498452 () Bool)

(assert (=> b!3687205 (=> (not res!1498452) (not e!2283327))))

(assert (=> b!3687205 (= res!1498452 (not (is-Nil!39015 (++!9714 lt!1290561 (_2!22589 lt!1290560)))))))

(assert (= (and d!1082095 (not res!1498454)) b!3687205))

(assert (= (and b!3687205 res!1498452) b!3687206))

(assert (= (and b!3687206 res!1498451) b!3687207))

(assert (= (and d!1082095 (not res!1498453)) b!3687208))

(assert (=> b!3687208 m!4198985))

(declare-fun m!4199107 () Bool)

(assert (=> b!3687208 m!4199107))

(declare-fun m!4199109 () Bool)

(assert (=> b!3687208 m!4199109))

(declare-fun m!4199111 () Bool)

(assert (=> b!3687207 m!4199111))

(assert (=> b!3687207 m!4198985))

(declare-fun m!4199113 () Bool)

(assert (=> b!3687207 m!4199113))

(assert (=> b!3687207 m!4199111))

(assert (=> b!3687207 m!4199113))

(declare-fun m!4199115 () Bool)

(assert (=> b!3687207 m!4199115))

(declare-fun m!4199117 () Bool)

(assert (=> b!3687206 m!4199117))

(assert (=> b!3687206 m!4198985))

(declare-fun m!4199119 () Bool)

(assert (=> b!3687206 m!4199119))

(assert (=> b!3687129 d!1082095))

(declare-fun d!1082099 () Bool)

(declare-fun lt!1290607 () BalanceConc!23558)

(assert (=> d!1082099 (= (list!14558 lt!1290607) (originalCharacters!6605 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))

(declare-fun dynLambda!17088 (Int TokenValue!6121) BalanceConc!23558)

(assert (=> d!1082099 (= lt!1290607 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))))

(assert (=> d!1082099 (= (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559)))) lt!1290607)))

(declare-fun b_lambda!109463 () Bool)

(assert (=> (not b_lambda!109463) (not d!1082099)))

(declare-fun tb!213757 () Bool)

(declare-fun t!301172 () Bool)

(assert (=> (and b!3687127 (= (toChars!8062 (transformation!5891 (h!44436 rules!3568))) (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559))))))) t!301172) tb!213757))

(declare-fun b!3687213 () Bool)

(declare-fun e!2283332 () Bool)

(declare-fun tp!1120713 () Bool)

(declare-fun inv!52485 (Conc!11972) Bool)

(assert (=> b!3687213 (= e!2283332 (and (inv!52485 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))) tp!1120713))))

(declare-fun result!260170 () Bool)

(declare-fun inv!52486 (BalanceConc!23558) Bool)

(assert (=> tb!213757 (= result!260170 (and (inv!52486 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) e!2283332))))

(assert (= tb!213757 b!3687213))

(declare-fun m!4199121 () Bool)

(assert (=> b!3687213 m!4199121))

(declare-fun m!4199123 () Bool)

(assert (=> tb!213757 m!4199123))

(assert (=> d!1082099 t!301172))

(declare-fun b_and!275539 () Bool)

(assert (= b_and!275533 (and (=> t!301172 result!260170) b_and!275539)))

(declare-fun m!4199125 () Bool)

(assert (=> d!1082099 m!4199125))

(declare-fun m!4199127 () Bool)

(assert (=> d!1082099 m!4199127))

(assert (=> b!3687129 d!1082099))

(declare-fun d!1082101 () Bool)

(assert (=> d!1082101 (= (isDefined!6594 lt!1290562) (not (isEmpty!23217 lt!1290562)))))

(declare-fun bs!573917 () Bool)

(assert (= bs!573917 d!1082101))

(declare-fun m!4199129 () Bool)

(assert (=> bs!573917 m!4199129))

(assert (=> b!3687129 d!1082101))

(declare-fun d!1082103 () Bool)

(assert (=> d!1082103 (= (head!7953 (list!14559 (_1!22588 lt!1290559))) (h!44437 (list!14559 (_1!22588 lt!1290559))))))

(assert (=> b!3687129 d!1082103))

(declare-fun d!1082105 () Bool)

(declare-fun e!2283334 () Bool)

(assert (=> d!1082105 e!2283334))

(declare-fun res!1498457 () Bool)

(assert (=> d!1082105 (=> res!1498457 e!2283334)))

(declare-fun lt!1290608 () Bool)

(assert (=> d!1082105 (= res!1498457 (not lt!1290608))))

(declare-fun e!2283335 () Bool)

(assert (=> d!1082105 (= lt!1290608 e!2283335)))

(declare-fun res!1498458 () Bool)

(assert (=> d!1082105 (=> res!1498458 e!2283335)))

(assert (=> d!1082105 (= res!1498458 (is-Nil!39015 lt!1290561))))

(assert (=> d!1082105 (= (isPrefix!3244 lt!1290561 (++!9714 input!3129 suffix!1448)) lt!1290608)))

(declare-fun b!3687217 () Bool)

(assert (=> b!3687217 (= e!2283334 (>= (size!29807 (++!9714 input!3129 suffix!1448)) (size!29807 lt!1290561)))))

(declare-fun b!3687216 () Bool)

(declare-fun e!2283333 () Bool)

(assert (=> b!3687216 (= e!2283333 (isPrefix!3244 (tail!5706 lt!1290561) (tail!5706 (++!9714 input!3129 suffix!1448))))))

(declare-fun b!3687215 () Bool)

(declare-fun res!1498455 () Bool)

(assert (=> b!3687215 (=> (not res!1498455) (not e!2283333))))

(assert (=> b!3687215 (= res!1498455 (= (head!7955 lt!1290561) (head!7955 (++!9714 input!3129 suffix!1448))))))

(declare-fun b!3687214 () Bool)

(assert (=> b!3687214 (= e!2283335 e!2283333)))

(declare-fun res!1498456 () Bool)

(assert (=> b!3687214 (=> (not res!1498456) (not e!2283333))))

(assert (=> b!3687214 (= res!1498456 (not (is-Nil!39015 (++!9714 input!3129 suffix!1448))))))

(assert (= (and d!1082105 (not res!1498458)) b!3687214))

(assert (= (and b!3687214 res!1498456) b!3687215))

(assert (= (and b!3687215 res!1498455) b!3687216))

(assert (= (and d!1082105 (not res!1498457)) b!3687217))

(assert (=> b!3687217 m!4198989))

(declare-fun m!4199131 () Bool)

(assert (=> b!3687217 m!4199131))

(assert (=> b!3687217 m!4199109))

(assert (=> b!3687216 m!4199111))

(assert (=> b!3687216 m!4198989))

(declare-fun m!4199133 () Bool)

(assert (=> b!3687216 m!4199133))

(assert (=> b!3687216 m!4199111))

(assert (=> b!3687216 m!4199133))

(declare-fun m!4199135 () Bool)

(assert (=> b!3687216 m!4199135))

(assert (=> b!3687215 m!4199117))

(assert (=> b!3687215 m!4198989))

(declare-fun m!4199137 () Bool)

(assert (=> b!3687215 m!4199137))

(assert (=> b!3687129 d!1082105))

(declare-fun d!1082107 () Bool)

(declare-fun list!14563 (Conc!11972) List!39139)

(assert (=> d!1082107 (= (list!14558 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559))))) (list!14563 (c!637736 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))))

(declare-fun bs!573918 () Bool)

(assert (= bs!573918 d!1082107))

(declare-fun m!4199139 () Bool)

(assert (=> bs!573918 m!4199139))

(assert (=> b!3687129 d!1082107))

(declare-fun b!3687226 () Bool)

(declare-fun e!2283340 () List!39139)

(assert (=> b!3687226 (= e!2283340 (_2!22589 lt!1290560))))

(declare-fun b!3687229 () Bool)

(declare-fun lt!1290611 () List!39139)

(declare-fun e!2283341 () Bool)

(assert (=> b!3687229 (= e!2283341 (or (not (= (_2!22589 lt!1290560) Nil!39015)) (= lt!1290611 lt!1290561)))))

(declare-fun b!3687227 () Bool)

(assert (=> b!3687227 (= e!2283340 (Cons!39015 (h!44435 lt!1290561) (++!9714 (t!301164 lt!1290561) (_2!22589 lt!1290560))))))

(declare-fun d!1082109 () Bool)

(assert (=> d!1082109 e!2283341))

(declare-fun res!1498463 () Bool)

(assert (=> d!1082109 (=> (not res!1498463) (not e!2283341))))

(declare-fun content!5650 (List!39139) (Set C!21486))

(assert (=> d!1082109 (= res!1498463 (= (content!5650 lt!1290611) (set.union (content!5650 lt!1290561) (content!5650 (_2!22589 lt!1290560)))))))

(assert (=> d!1082109 (= lt!1290611 e!2283340)))

(declare-fun c!637747 () Bool)

(assert (=> d!1082109 (= c!637747 (is-Nil!39015 lt!1290561))))

(assert (=> d!1082109 (= (++!9714 lt!1290561 (_2!22589 lt!1290560)) lt!1290611)))

(declare-fun b!3687228 () Bool)

(declare-fun res!1498464 () Bool)

(assert (=> b!3687228 (=> (not res!1498464) (not e!2283341))))

(assert (=> b!3687228 (= res!1498464 (= (size!29807 lt!1290611) (+ (size!29807 lt!1290561) (size!29807 (_2!22589 lt!1290560)))))))

(assert (= (and d!1082109 c!637747) b!3687226))

(assert (= (and d!1082109 (not c!637747)) b!3687227))

(assert (= (and d!1082109 res!1498463) b!3687228))

(assert (= (and b!3687228 res!1498464) b!3687229))

(declare-fun m!4199141 () Bool)

(assert (=> b!3687227 m!4199141))

(declare-fun m!4199143 () Bool)

(assert (=> d!1082109 m!4199143))

(declare-fun m!4199145 () Bool)

(assert (=> d!1082109 m!4199145))

(declare-fun m!4199147 () Bool)

(assert (=> d!1082109 m!4199147))

(declare-fun m!4199149 () Bool)

(assert (=> b!3687228 m!4199149))

(assert (=> b!3687228 m!4199109))

(declare-fun m!4199151 () Bool)

(assert (=> b!3687228 m!4199151))

(assert (=> b!3687129 d!1082109))

(declare-fun d!1082111 () Bool)

(assert (=> d!1082111 (isPrefix!3244 lt!1290561 (++!9714 input!3129 suffix!1448))))

(declare-fun lt!1290614 () Unit!57073)

(declare-fun choose!22067 (List!39139 List!39139 List!39139) Unit!57073)

(assert (=> d!1082111 (= lt!1290614 (choose!22067 lt!1290561 input!3129 suffix!1448))))

(assert (=> d!1082111 (isPrefix!3244 lt!1290561 input!3129)))

(assert (=> d!1082111 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!573 lt!1290561 input!3129 suffix!1448) lt!1290614)))

(declare-fun bs!573919 () Bool)

(assert (= bs!573919 d!1082111))

(assert (=> bs!573919 m!4198989))

(assert (=> bs!573919 m!4198989))

(assert (=> bs!573919 m!4199007))

(declare-fun m!4199153 () Bool)

(assert (=> bs!573919 m!4199153))

(declare-fun m!4199155 () Bool)

(assert (=> bs!573919 m!4199155))

(assert (=> b!3687129 d!1082111))

(declare-fun b!3687230 () Bool)

(declare-fun e!2283342 () List!39139)

(assert (=> b!3687230 (= e!2283342 suffix!1448)))

(declare-fun e!2283343 () Bool)

(declare-fun b!3687233 () Bool)

(declare-fun lt!1290615 () List!39139)

(assert (=> b!3687233 (= e!2283343 (or (not (= suffix!1448 Nil!39015)) (= lt!1290615 input!3129)))))

(declare-fun b!3687231 () Bool)

(assert (=> b!3687231 (= e!2283342 (Cons!39015 (h!44435 input!3129) (++!9714 (t!301164 input!3129) suffix!1448)))))

(declare-fun d!1082113 () Bool)

(assert (=> d!1082113 e!2283343))

(declare-fun res!1498465 () Bool)

(assert (=> d!1082113 (=> (not res!1498465) (not e!2283343))))

(assert (=> d!1082113 (= res!1498465 (= (content!5650 lt!1290615) (set.union (content!5650 input!3129) (content!5650 suffix!1448))))))

(assert (=> d!1082113 (= lt!1290615 e!2283342)))

(declare-fun c!637748 () Bool)

(assert (=> d!1082113 (= c!637748 (is-Nil!39015 input!3129))))

(assert (=> d!1082113 (= (++!9714 input!3129 suffix!1448) lt!1290615)))

(declare-fun b!3687232 () Bool)

(declare-fun res!1498466 () Bool)

(assert (=> b!3687232 (=> (not res!1498466) (not e!2283343))))

(assert (=> b!3687232 (= res!1498466 (= (size!29807 lt!1290615) (+ (size!29807 input!3129) (size!29807 suffix!1448))))))

(assert (= (and d!1082113 c!637748) b!3687230))

(assert (= (and d!1082113 (not c!637748)) b!3687231))

(assert (= (and d!1082113 res!1498465) b!3687232))

(assert (= (and b!3687232 res!1498466) b!3687233))

(declare-fun m!4199157 () Bool)

(assert (=> b!3687231 m!4199157))

(declare-fun m!4199159 () Bool)

(assert (=> d!1082113 m!4199159))

(declare-fun m!4199161 () Bool)

(assert (=> d!1082113 m!4199161))

(declare-fun m!4199163 () Bool)

(assert (=> d!1082113 m!4199163))

(declare-fun m!4199165 () Bool)

(assert (=> b!3687232 m!4199165))

(assert (=> b!3687232 m!4199097))

(declare-fun m!4199167 () Bool)

(assert (=> b!3687232 m!4199167))

(assert (=> b!3687129 d!1082113))

(declare-fun d!1082115 () Bool)

(assert (=> d!1082115 (= (get!12938 lt!1290562) (v!38340 lt!1290562))))

(assert (=> b!3687129 d!1082115))

(declare-fun d!1082117 () Bool)

(declare-fun lt!1290618 () Bool)

(declare-fun isEmpty!23218 (List!39141) Bool)

(assert (=> d!1082117 (= lt!1290618 (isEmpty!23218 (list!14559 (_1!22588 lt!1290559))))))

(declare-fun isEmpty!23219 (Conc!11973) Bool)

(assert (=> d!1082117 (= lt!1290618 (isEmpty!23219 (c!637737 (_1!22588 lt!1290559))))))

(assert (=> d!1082117 (= (isEmpty!23214 (_1!22588 lt!1290559)) lt!1290618)))

(declare-fun bs!573920 () Bool)

(assert (= bs!573920 d!1082117))

(assert (=> bs!573920 m!4198999))

(assert (=> bs!573920 m!4198999))

(declare-fun m!4199169 () Bool)

(assert (=> bs!573920 m!4199169))

(declare-fun m!4199171 () Bool)

(assert (=> bs!573920 m!4199171))

(assert (=> b!3687128 d!1082117))

(declare-fun b!3687244 () Bool)

(declare-fun e!2283350 () Bool)

(declare-fun lt!1290621 () tuple2!38908)

(assert (=> b!3687244 (= e!2283350 (not (isEmpty!23214 (_1!22588 lt!1290621))))))

(declare-fun b!3687245 () Bool)

(declare-fun e!2283352 () Bool)

(assert (=> b!3687245 (= e!2283352 (= (_2!22588 lt!1290621) (seqFromList!4440 input!3129)))))

(declare-fun d!1082119 () Bool)

(declare-fun e!2283351 () Bool)

(assert (=> d!1082119 e!2283351))

(declare-fun res!1498474 () Bool)

(assert (=> d!1082119 (=> (not res!1498474) (not e!2283351))))

(assert (=> d!1082119 (= res!1498474 e!2283352)))

(declare-fun c!637751 () Bool)

(declare-fun size!29808 (BalanceConc!23560) Int)

(assert (=> d!1082119 (= c!637751 (> (size!29808 (_1!22588 lt!1290621)) 0))))

(declare-fun lexTailRecV2!1137 (LexerInterface!5480 List!39140 BalanceConc!23558 BalanceConc!23558 BalanceConc!23558 BalanceConc!23560) tuple2!38908)

(assert (=> d!1082119 (= lt!1290621 (lexTailRecV2!1137 thiss!25197 rules!3568 (seqFromList!4440 input!3129) (BalanceConc!23559 Empty!11972) (seqFromList!4440 input!3129) (BalanceConc!23561 Empty!11973)))))

(assert (=> d!1082119 (= (lex!2621 thiss!25197 rules!3568 (seqFromList!4440 input!3129)) lt!1290621)))

(declare-fun b!3687246 () Bool)

(declare-fun res!1498473 () Bool)

(assert (=> b!3687246 (=> (not res!1498473) (not e!2283351))))

(declare-datatypes ((tuple2!38916 0))(
  ( (tuple2!38917 (_1!22592 List!39141) (_2!22592 List!39139)) )
))
(declare-fun lexList!1531 (LexerInterface!5480 List!39140 List!39139) tuple2!38916)

(assert (=> b!3687246 (= res!1498473 (= (list!14559 (_1!22588 lt!1290621)) (_1!22592 (lexList!1531 thiss!25197 rules!3568 (list!14558 (seqFromList!4440 input!3129))))))))

(declare-fun b!3687247 () Bool)

(assert (=> b!3687247 (= e!2283352 e!2283350)))

(declare-fun res!1498475 () Bool)

(declare-fun size!29809 (BalanceConc!23558) Int)

(assert (=> b!3687247 (= res!1498475 (< (size!29809 (_2!22588 lt!1290621)) (size!29809 (seqFromList!4440 input!3129))))))

(assert (=> b!3687247 (=> (not res!1498475) (not e!2283350))))

(declare-fun b!3687248 () Bool)

(assert (=> b!3687248 (= e!2283351 (= (list!14558 (_2!22588 lt!1290621)) (_2!22592 (lexList!1531 thiss!25197 rules!3568 (list!14558 (seqFromList!4440 input!3129))))))))

(assert (= (and d!1082119 c!637751) b!3687247))

(assert (= (and d!1082119 (not c!637751)) b!3687245))

(assert (= (and b!3687247 res!1498475) b!3687244))

(assert (= (and d!1082119 res!1498474) b!3687246))

(assert (= (and b!3687246 res!1498473) b!3687248))

(declare-fun m!4199173 () Bool)

(assert (=> d!1082119 m!4199173))

(assert (=> d!1082119 m!4198981))

(assert (=> d!1082119 m!4198981))

(declare-fun m!4199175 () Bool)

(assert (=> d!1082119 m!4199175))

(declare-fun m!4199177 () Bool)

(assert (=> b!3687248 m!4199177))

(assert (=> b!3687248 m!4198981))

(declare-fun m!4199179 () Bool)

(assert (=> b!3687248 m!4199179))

(assert (=> b!3687248 m!4199179))

(declare-fun m!4199181 () Bool)

(assert (=> b!3687248 m!4199181))

(declare-fun m!4199183 () Bool)

(assert (=> b!3687244 m!4199183))

(declare-fun m!4199185 () Bool)

(assert (=> b!3687247 m!4199185))

(assert (=> b!3687247 m!4198981))

(declare-fun m!4199187 () Bool)

(assert (=> b!3687247 m!4199187))

(declare-fun m!4199189 () Bool)

(assert (=> b!3687246 m!4199189))

(assert (=> b!3687246 m!4198981))

(assert (=> b!3687246 m!4199179))

(assert (=> b!3687246 m!4199179))

(assert (=> b!3687246 m!4199181))

(assert (=> b!3687128 d!1082119))

(declare-fun d!1082121 () Bool)

(declare-fun fromListB!2047 (List!39139) BalanceConc!23558)

(assert (=> d!1082121 (= (seqFromList!4440 input!3129) (fromListB!2047 input!3129))))

(declare-fun bs!573921 () Bool)

(assert (= bs!573921 d!1082121))

(declare-fun m!4199191 () Bool)

(assert (=> bs!573921 m!4199191))

(assert (=> b!3687128 d!1082121))

(declare-fun d!1082123 () Bool)

(assert (=> d!1082123 (= (isEmpty!23213 rules!3568) (is-Nil!39016 rules!3568))))

(assert (=> b!3687126 d!1082123))

(declare-fun d!1082125 () Bool)

(declare-fun res!1498478 () Bool)

(declare-fun e!2283355 () Bool)

(assert (=> d!1082125 (=> (not res!1498478) (not e!2283355))))

(declare-fun rulesValid!2269 (LexerInterface!5480 List!39140) Bool)

(assert (=> d!1082125 (= res!1498478 (rulesValid!2269 thiss!25197 rules!3568))))

(assert (=> d!1082125 (= (rulesInvariant!4877 thiss!25197 rules!3568) e!2283355)))

(declare-fun b!3687251 () Bool)

(declare-datatypes ((List!39146 0))(
  ( (Nil!39022) (Cons!39022 (h!44442 String!43941) (t!301175 List!39146)) )
))
(declare-fun noDuplicateTag!2265 (LexerInterface!5480 List!39140 List!39146) Bool)

(assert (=> b!3687251 (= e!2283355 (noDuplicateTag!2265 thiss!25197 rules!3568 Nil!39022))))

(assert (= (and d!1082125 res!1498478) b!3687251))

(declare-fun m!4199193 () Bool)

(assert (=> d!1082125 m!4199193))

(declare-fun m!4199195 () Bool)

(assert (=> b!3687251 m!4199195))

(assert (=> b!3687132 d!1082125))

(declare-fun b!3687263 () Bool)

(declare-fun e!2283358 () Bool)

(declare-fun tp!1120725 () Bool)

(declare-fun tp!1120728 () Bool)

(assert (=> b!3687263 (= e!2283358 (and tp!1120725 tp!1120728))))

(declare-fun b!3687265 () Bool)

(declare-fun tp!1120727 () Bool)

(declare-fun tp!1120724 () Bool)

(assert (=> b!3687265 (= e!2283358 (and tp!1120727 tp!1120724))))

(declare-fun b!3687262 () Bool)

(assert (=> b!3687262 (= e!2283358 tp_is_empty!18383)))

(declare-fun b!3687264 () Bool)

(declare-fun tp!1120726 () Bool)

(assert (=> b!3687264 (= e!2283358 tp!1120726)))

(assert (=> b!3687125 (= tp!1120689 e!2283358)))

(assert (= (and b!3687125 (is-ElementMatch!10650 (regex!5891 (h!44436 rules!3568)))) b!3687262))

(assert (= (and b!3687125 (is-Concat!16772 (regex!5891 (h!44436 rules!3568)))) b!3687263))

(assert (= (and b!3687125 (is-Star!10650 (regex!5891 (h!44436 rules!3568)))) b!3687264))

(assert (= (and b!3687125 (is-Union!10650 (regex!5891 (h!44436 rules!3568)))) b!3687265))

(declare-fun b!3687270 () Bool)

(declare-fun e!2283361 () Bool)

(declare-fun tp!1120731 () Bool)

(assert (=> b!3687270 (= e!2283361 (and tp_is_empty!18383 tp!1120731))))

(assert (=> b!3687130 (= tp!1120687 e!2283361)))

(assert (= (and b!3687130 (is-Cons!39015 (t!301164 suffix!1448))) b!3687270))

(declare-fun b!3687271 () Bool)

(declare-fun e!2283362 () Bool)

(declare-fun tp!1120732 () Bool)

(assert (=> b!3687271 (= e!2283362 (and tp_is_empty!18383 tp!1120732))))

(assert (=> b!3687131 (= tp!1120692 e!2283362)))

(assert (= (and b!3687131 (is-Cons!39015 (t!301164 input!3129))) b!3687271))

(declare-fun b!3687282 () Bool)

(declare-fun b_free!97833 () Bool)

(declare-fun b_next!98537 () Bool)

(assert (=> b!3687282 (= b_free!97833 (not b_next!98537))))

(declare-fun tp!1120742 () Bool)

(declare-fun b_and!275541 () Bool)

(assert (=> b!3687282 (= tp!1120742 b_and!275541)))

(declare-fun b_free!97835 () Bool)

(declare-fun b_next!98539 () Bool)

(assert (=> b!3687282 (= b_free!97835 (not b_next!98539))))

(declare-fun t!301174 () Bool)

(declare-fun tb!213759 () Bool)

(assert (=> (and b!3687282 (= (toChars!8062 (transformation!5891 (h!44436 (t!301165 rules!3568)))) (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559))))))) t!301174) tb!213759))

(declare-fun result!260180 () Bool)

(assert (= result!260180 result!260170))

(assert (=> d!1082099 t!301174))

(declare-fun b_and!275543 () Bool)

(declare-fun tp!1120741 () Bool)

(assert (=> b!3687282 (= tp!1120741 (and (=> t!301174 result!260180) b_and!275543))))

(declare-fun e!2283373 () Bool)

(assert (=> b!3687282 (= e!2283373 (and tp!1120742 tp!1120741))))

(declare-fun tp!1120743 () Bool)

(declare-fun e!2283372 () Bool)

(declare-fun b!3687281 () Bool)

(assert (=> b!3687281 (= e!2283372 (and tp!1120743 (inv!52480 (tag!6703 (h!44436 (t!301165 rules!3568)))) (inv!52483 (transformation!5891 (h!44436 (t!301165 rules!3568)))) e!2283373))))

(declare-fun b!3687280 () Bool)

(declare-fun e!2283374 () Bool)

(declare-fun tp!1120744 () Bool)

(assert (=> b!3687280 (= e!2283374 (and e!2283372 tp!1120744))))

(assert (=> b!3687133 (= tp!1120690 e!2283374)))

(assert (= b!3687281 b!3687282))

(assert (= b!3687280 b!3687281))

(assert (= (and b!3687133 (is-Cons!39016 (t!301165 rules!3568))) b!3687280))

(declare-fun m!4199197 () Bool)

(assert (=> b!3687281 m!4199197))

(declare-fun m!4199199 () Bool)

(assert (=> b!3687281 m!4199199))

(push 1)

(assert (not d!1082079))

(assert (not d!1082093))

(assert (not b!3687232))

(assert (not b!3687193))

(assert (not b!3687271))

(assert (not b!3687217))

(assert (not d!1082113))

(assert (not d!1082091))

(assert (not b!3687216))

(assert (not b_next!98539))

(assert (not b!3687196))

(assert (not b!3687246))

(assert (not b_lambda!109463))

(assert (not b!3687192))

(assert (not b!3687244))

(assert (not b!3687191))

(assert (not d!1082117))

(assert (not b!3687206))

(assert (not b_next!98529))

(assert (not b_next!98537))

(assert b_and!275543)

(assert (not b!3687215))

(assert (not b!3687265))

(assert (not b!3687188))

(assert (not b!3687247))

(assert (not tb!213757))

(assert (not b!3687194))

(assert (not bm!266854))

(assert (not b_next!98531))

(assert (not b!3687207))

(assert (not b!3687270))

(assert (not b!3687280))

(assert (not b!3687195))

(assert (not d!1082109))

(assert (not d!1082099))

(assert (not d!1082119))

(assert (not b!3687208))

(assert (not d!1082121))

(assert (not d!1082111))

(assert (not d!1082107))

(assert (not d!1082077))

(assert (not b!3687263))

(assert (not b!3687163))

(assert b_and!275539)

(assert b_and!275531)

(assert (not b!3687231))

(assert tp_is_empty!18383)

(assert (not d!1082125))

(assert (not b!3687251))

(assert (not b!3687213))

(assert (not b!3687228))

(assert (not b!3687264))

(assert (not b!3687227))

(assert (not b!3687189))

(assert (not b!3687281))

(assert b_and!275541)

(assert (not b!3687248))

(assert (not d!1082101))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98539))

(assert (not b_next!98531))

(assert b_and!275539)

(assert b_and!275531)

(assert b_and!275541)

(assert (not b_next!98529))

(assert (not b_next!98537))

(assert b_and!275543)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1082155 () Bool)

(assert (=> d!1082155 true))

(declare-fun order!21605 () Int)

(declare-fun order!21603 () Int)

(declare-fun lambda!124884 () Int)

(declare-fun dynLambda!17090 (Int Int) Int)

(declare-fun dynLambda!17091 (Int Int) Int)

(assert (=> d!1082155 (< (dynLambda!17090 order!21603 (toValue!8203 (transformation!5891 (h!44436 rules!3568)))) (dynLambda!17091 order!21605 lambda!124884))))

(declare-fun Forall2!977 (Int) Bool)

(assert (=> d!1082155 (= (equivClasses!2411 (toChars!8062 (transformation!5891 (h!44436 rules!3568))) (toValue!8203 (transformation!5891 (h!44436 rules!3568)))) (Forall2!977 lambda!124884))))

(declare-fun bs!573930 () Bool)

(assert (= bs!573930 d!1082155))

(declare-fun m!4199357 () Bool)

(assert (=> bs!573930 m!4199357))

(assert (=> b!3687163 d!1082155))

(declare-fun d!1082177 () Bool)

(declare-fun lt!1290663 () Int)

(assert (=> d!1082177 (>= lt!1290663 0)))

(declare-fun e!2283453 () Int)

(assert (=> d!1082177 (= lt!1290663 e!2283453)))

(declare-fun c!637773 () Bool)

(assert (=> d!1082177 (= c!637773 (is-Nil!39015 (_2!22589 (get!12938 lt!1290592))))))

(assert (=> d!1082177 (= (size!29807 (_2!22589 (get!12938 lt!1290592))) lt!1290663)))

(declare-fun b!3687424 () Bool)

(assert (=> b!3687424 (= e!2283453 0)))

(declare-fun b!3687425 () Bool)

(assert (=> b!3687425 (= e!2283453 (+ 1 (size!29807 (t!301164 (_2!22589 (get!12938 lt!1290592))))))))

(assert (= (and d!1082177 c!637773) b!3687424))

(assert (= (and d!1082177 (not c!637773)) b!3687425))

(declare-fun m!4199363 () Bool)

(assert (=> b!3687425 m!4199363))

(assert (=> b!3687196 d!1082177))

(declare-fun d!1082181 () Bool)

(assert (=> d!1082181 (= (get!12938 lt!1290592) (v!38340 lt!1290592))))

(assert (=> b!3687196 d!1082181))

(declare-fun d!1082183 () Bool)

(declare-fun lt!1290664 () Int)

(assert (=> d!1082183 (>= lt!1290664 0)))

(declare-fun e!2283454 () Int)

(assert (=> d!1082183 (= lt!1290664 e!2283454)))

(declare-fun c!637774 () Bool)

(assert (=> d!1082183 (= c!637774 (is-Nil!39015 input!3129))))

(assert (=> d!1082183 (= (size!29807 input!3129) lt!1290664)))

(declare-fun b!3687426 () Bool)

(assert (=> b!3687426 (= e!2283454 0)))

(declare-fun b!3687427 () Bool)

(assert (=> b!3687427 (= e!2283454 (+ 1 (size!29807 (t!301164 input!3129))))))

(assert (= (and d!1082183 c!637774) b!3687426))

(assert (= (and d!1082183 (not c!637774)) b!3687427))

(declare-fun m!4199365 () Bool)

(assert (=> b!3687427 m!4199365))

(assert (=> b!3687196 d!1082183))

(declare-fun b!3687428 () Bool)

(declare-fun e!2283455 () List!39139)

(assert (=> b!3687428 (= e!2283455 (_2!22589 (get!12938 lt!1290592)))))

(declare-fun b!3687431 () Bool)

(declare-fun e!2283456 () Bool)

(declare-fun lt!1290665 () List!39139)

(assert (=> b!3687431 (= e!2283456 (or (not (= (_2!22589 (get!12938 lt!1290592)) Nil!39015)) (= lt!1290665 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))))))))

(declare-fun b!3687429 () Bool)

(assert (=> b!3687429 (= e!2283455 (Cons!39015 (h!44435 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))) (++!9714 (t!301164 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))) (_2!22589 (get!12938 lt!1290592)))))))

(declare-fun d!1082185 () Bool)

(assert (=> d!1082185 e!2283456))

(declare-fun res!1498547 () Bool)

(assert (=> d!1082185 (=> (not res!1498547) (not e!2283456))))

(assert (=> d!1082185 (= res!1498547 (= (content!5650 lt!1290665) (set.union (content!5650 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))) (content!5650 (_2!22589 (get!12938 lt!1290592))))))))

(assert (=> d!1082185 (= lt!1290665 e!2283455)))

(declare-fun c!637775 () Bool)

(assert (=> d!1082185 (= c!637775 (is-Nil!39015 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))))))

(assert (=> d!1082185 (= (++!9714 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))) (_2!22589 (get!12938 lt!1290592))) lt!1290665)))

(declare-fun b!3687430 () Bool)

(declare-fun res!1498548 () Bool)

(assert (=> b!3687430 (=> (not res!1498548) (not e!2283456))))

(assert (=> b!3687430 (= res!1498548 (= (size!29807 lt!1290665) (+ (size!29807 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))) (size!29807 (_2!22589 (get!12938 lt!1290592))))))))

(assert (= (and d!1082185 c!637775) b!3687428))

(assert (= (and d!1082185 (not c!637775)) b!3687429))

(assert (= (and d!1082185 res!1498547) b!3687430))

(assert (= (and b!3687430 res!1498548) b!3687431))

(declare-fun m!4199367 () Bool)

(assert (=> b!3687429 m!4199367))

(declare-fun m!4199369 () Bool)

(assert (=> d!1082185 m!4199369))

(assert (=> d!1082185 m!4199083))

(declare-fun m!4199371 () Bool)

(assert (=> d!1082185 m!4199371))

(declare-fun m!4199373 () Bool)

(assert (=> d!1082185 m!4199373))

(declare-fun m!4199375 () Bool)

(assert (=> b!3687430 m!4199375))

(assert (=> b!3687430 m!4199083))

(declare-fun m!4199377 () Bool)

(assert (=> b!3687430 m!4199377))

(assert (=> b!3687430 m!4199095))

(assert (=> b!3687194 d!1082185))

(declare-fun d!1082187 () Bool)

(assert (=> d!1082187 (= (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))) (list!14563 (c!637736 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun bs!573931 () Bool)

(assert (= bs!573931 d!1082187))

(declare-fun m!4199379 () Bool)

(assert (=> bs!573931 m!4199379))

(assert (=> b!3687194 d!1082187))

(declare-fun d!1082189 () Bool)

(declare-fun lt!1290666 () BalanceConc!23558)

(assert (=> d!1082189 (= (list!14558 lt!1290666) (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592))))))

(assert (=> d!1082189 (= lt!1290666 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))) (value!188355 (_1!22589 (get!12938 lt!1290592)))))))

(assert (=> d!1082189 (= (charsOf!3902 (_1!22589 (get!12938 lt!1290592))) lt!1290666)))

(declare-fun b_lambda!109467 () Bool)

(assert (=> (not b_lambda!109467) (not d!1082189)))

(declare-fun t!301182 () Bool)

(declare-fun tb!213765 () Bool)

(assert (=> (and b!3687127 (= (toChars!8062 (transformation!5891 (h!44436 rules!3568))) (toChars!8062 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))) t!301182) tb!213765))

(declare-fun b!3687432 () Bool)

(declare-fun e!2283457 () Bool)

(declare-fun tp!1120779 () Bool)

(assert (=> b!3687432 (= e!2283457 (and (inv!52485 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))) (value!188355 (_1!22589 (get!12938 lt!1290592)))))) tp!1120779))))

(declare-fun result!260194 () Bool)

(assert (=> tb!213765 (= result!260194 (and (inv!52486 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))) (value!188355 (_1!22589 (get!12938 lt!1290592))))) e!2283457))))

(assert (= tb!213765 b!3687432))

(declare-fun m!4199381 () Bool)

(assert (=> b!3687432 m!4199381))

(declare-fun m!4199383 () Bool)

(assert (=> tb!213765 m!4199383))

(assert (=> d!1082189 t!301182))

(declare-fun b_and!275551 () Bool)

(assert (= b_and!275539 (and (=> t!301182 result!260194) b_and!275551)))

(declare-fun t!301184 () Bool)

(declare-fun tb!213767 () Bool)

(assert (=> (and b!3687282 (= (toChars!8062 (transformation!5891 (h!44436 (t!301165 rules!3568)))) (toChars!8062 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))) t!301184) tb!213767))

(declare-fun result!260196 () Bool)

(assert (= result!260196 result!260194))

(assert (=> d!1082189 t!301184))

(declare-fun b_and!275553 () Bool)

(assert (= b_and!275543 (and (=> t!301184 result!260196) b_and!275553)))

(declare-fun m!4199385 () Bool)

(assert (=> d!1082189 m!4199385))

(declare-fun m!4199387 () Bool)

(assert (=> d!1082189 m!4199387))

(assert (=> b!3687194 d!1082189))

(assert (=> b!3687194 d!1082181))

(assert (=> b!3687195 d!1082187))

(assert (=> b!3687195 d!1082189))

(assert (=> b!3687195 d!1082181))

(declare-fun b!3687443 () Bool)

(declare-fun e!2283463 () List!39139)

(declare-fun list!14566 (IArray!23949) List!39139)

(assert (=> b!3687443 (= e!2283463 (list!14566 (xs!15174 (c!637736 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559))))))))))

(declare-fun d!1082191 () Bool)

(declare-fun c!637780 () Bool)

(assert (=> d!1082191 (= c!637780 (is-Empty!11972 (c!637736 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))))

(declare-fun e!2283462 () List!39139)

(assert (=> d!1082191 (= (list!14563 (c!637736 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) e!2283462)))

(declare-fun b!3687444 () Bool)

(assert (=> b!3687444 (= e!2283463 (++!9714 (list!14563 (left!30432 (c!637736 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559))))))) (list!14563 (right!30762 (c!637736 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))))))

(declare-fun b!3687442 () Bool)

(assert (=> b!3687442 (= e!2283462 e!2283463)))

(declare-fun c!637781 () Bool)

(assert (=> b!3687442 (= c!637781 (is-Leaf!18529 (c!637736 (charsOf!3902 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))))

(declare-fun b!3687441 () Bool)

(assert (=> b!3687441 (= e!2283462 Nil!39015)))

(assert (= (and d!1082191 c!637780) b!3687441))

(assert (= (and d!1082191 (not c!637780)) b!3687442))

(assert (= (and b!3687442 c!637781) b!3687443))

(assert (= (and b!3687442 (not c!637781)) b!3687444))

(declare-fun m!4199389 () Bool)

(assert (=> b!3687443 m!4199389))

(declare-fun m!4199391 () Bool)

(assert (=> b!3687444 m!4199391))

(declare-fun m!4199393 () Bool)

(assert (=> b!3687444 m!4199393))

(assert (=> b!3687444 m!4199391))

(assert (=> b!3687444 m!4199393))

(declare-fun m!4199395 () Bool)

(assert (=> b!3687444 m!4199395))

(assert (=> d!1082107 d!1082191))

(declare-fun d!1082193 () Bool)

(declare-fun isBalanced!3513 (Conc!11972) Bool)

(assert (=> d!1082193 (= (inv!52486 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (isBalanced!3513 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))))))

(declare-fun bs!573932 () Bool)

(assert (= bs!573932 d!1082193))

(declare-fun m!4199397 () Bool)

(assert (=> bs!573932 m!4199397))

(assert (=> tb!213757 d!1082193))

(declare-fun d!1082195 () Bool)

(assert (=> d!1082195 (= (inv!52480 (tag!6703 (h!44436 (t!301165 rules!3568)))) (= (mod (str.len (value!188354 (tag!6703 (h!44436 (t!301165 rules!3568))))) 2) 0))))

(assert (=> b!3687281 d!1082195))

(declare-fun d!1082197 () Bool)

(declare-fun res!1498565 () Bool)

(declare-fun e!2283478 () Bool)

(assert (=> d!1082197 (=> (not res!1498565) (not e!2283478))))

(assert (=> d!1082197 (= res!1498565 (semiInverseModEq!2512 (toChars!8062 (transformation!5891 (h!44436 (t!301165 rules!3568)))) (toValue!8203 (transformation!5891 (h!44436 (t!301165 rules!3568))))))))

(assert (=> d!1082197 (= (inv!52483 (transformation!5891 (h!44436 (t!301165 rules!3568)))) e!2283478)))

(declare-fun b!3687473 () Bool)

(assert (=> b!3687473 (= e!2283478 (equivClasses!2411 (toChars!8062 (transformation!5891 (h!44436 (t!301165 rules!3568)))) (toValue!8203 (transformation!5891 (h!44436 (t!301165 rules!3568))))))))

(assert (= (and d!1082197 res!1498565) b!3687473))

(declare-fun m!4199399 () Bool)

(assert (=> d!1082197 m!4199399))

(declare-fun m!4199401 () Bool)

(assert (=> b!3687473 m!4199401))

(assert (=> b!3687281 d!1082197))

(declare-fun d!1082199 () Bool)

(assert (=> d!1082199 true))

(declare-fun lt!1290671 () Bool)

(assert (=> d!1082199 (= lt!1290671 (rulesValidInductive!2105 thiss!25197 rules!3568))))

(declare-fun lambda!124887 () Int)

(declare-fun forall!8168 (List!39140 Int) Bool)

(assert (=> d!1082199 (= lt!1290671 (forall!8168 rules!3568 lambda!124887))))

(assert (=> d!1082199 (= (rulesValid!2269 thiss!25197 rules!3568) lt!1290671)))

(declare-fun bs!573933 () Bool)

(assert (= bs!573933 d!1082199))

(assert (=> bs!573933 m!4199071))

(declare-fun m!4199403 () Bool)

(assert (=> bs!573933 m!4199403))

(assert (=> d!1082125 d!1082199))

(declare-fun bm!266863 () Bool)

(declare-fun call!266868 () Bool)

(declare-fun isEmpty!23223 (List!39139) Bool)

(assert (=> bm!266863 (= call!266868 (isEmpty!23223 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun b!3687527 () Bool)

(declare-fun res!1498593 () Bool)

(declare-fun e!2283505 () Bool)

(assert (=> b!3687527 (=> res!1498593 e!2283505)))

(declare-fun e!2283509 () Bool)

(assert (=> b!3687527 (= res!1498593 e!2283509)))

(declare-fun res!1498592 () Bool)

(assert (=> b!3687527 (=> (not res!1498592) (not e!2283509))))

(declare-fun lt!1290680 () Bool)

(assert (=> b!3687527 (= res!1498592 lt!1290680)))

(declare-fun b!3687528 () Bool)

(declare-fun e!2283511 () Bool)

(assert (=> b!3687528 (= e!2283511 (not lt!1290680))))

(declare-fun b!3687529 () Bool)

(declare-fun e!2283508 () Bool)

(assert (=> b!3687529 (= e!2283508 (= lt!1290680 call!266868))))

(declare-fun b!3687530 () Bool)

(declare-fun res!1498595 () Bool)

(assert (=> b!3687530 (=> (not res!1498595) (not e!2283509))))

(assert (=> b!3687530 (= res!1498595 (not call!266868))))

(declare-fun d!1082201 () Bool)

(assert (=> d!1082201 e!2283508))

(declare-fun c!637801 () Bool)

(assert (=> d!1082201 (= c!637801 (is-EmptyExpr!10650 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun e!2283510 () Bool)

(assert (=> d!1082201 (= lt!1290680 e!2283510)))

(declare-fun c!637802 () Bool)

(assert (=> d!1082201 (= c!637802 (isEmpty!23223 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun validRegex!4872 (Regex!10650) Bool)

(assert (=> d!1082201 (validRegex!4872 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))))

(assert (=> d!1082201 (= (matchR!5205 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))) (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))) lt!1290680)))

(declare-fun b!3687531 () Bool)

(declare-fun derivativeStep!3256 (Regex!10650 C!21486) Regex!10650)

(assert (=> b!3687531 (= e!2283510 (matchR!5205 (derivativeStep!3256 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))) (head!7955 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))))) (tail!5706 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))))))))

(declare-fun b!3687532 () Bool)

(assert (=> b!3687532 (= e!2283509 (= (head!7955 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))) (c!637735 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))))))

(declare-fun b!3687533 () Bool)

(declare-fun e!2283506 () Bool)

(declare-fun e!2283507 () Bool)

(assert (=> b!3687533 (= e!2283506 e!2283507)))

(declare-fun res!1498594 () Bool)

(assert (=> b!3687533 (=> res!1498594 e!2283507)))

(assert (=> b!3687533 (= res!1498594 call!266868)))

(declare-fun b!3687534 () Bool)

(assert (=> b!3687534 (= e!2283507 (not (= (head!7955 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))) (c!637735 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))))))))

(declare-fun b!3687535 () Bool)

(declare-fun res!1498590 () Bool)

(assert (=> b!3687535 (=> res!1498590 e!2283505)))

(assert (=> b!3687535 (= res!1498590 (not (is-ElementMatch!10650 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))))))

(assert (=> b!3687535 (= e!2283511 e!2283505)))

(declare-fun b!3687536 () Bool)

(declare-fun res!1498596 () Bool)

(assert (=> b!3687536 (=> (not res!1498596) (not e!2283509))))

(assert (=> b!3687536 (= res!1498596 (isEmpty!23223 (tail!5706 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592)))))))))

(declare-fun b!3687537 () Bool)

(assert (=> b!3687537 (= e!2283505 e!2283506)))

(declare-fun res!1498591 () Bool)

(assert (=> b!3687537 (=> (not res!1498591) (not e!2283506))))

(assert (=> b!3687537 (= res!1498591 (not lt!1290680))))

(declare-fun b!3687538 () Bool)

(declare-fun nullable!3710 (Regex!10650) Bool)

(assert (=> b!3687538 (= e!2283510 (nullable!3710 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun b!3687539 () Bool)

(assert (=> b!3687539 (= e!2283508 e!2283511)))

(declare-fun c!637803 () Bool)

(assert (=> b!3687539 (= c!637803 (is-EmptyLang!10650 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun b!3687540 () Bool)

(declare-fun res!1498597 () Bool)

(assert (=> b!3687540 (=> res!1498597 e!2283507)))

(assert (=> b!3687540 (= res!1498597 (not (isEmpty!23223 (tail!5706 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290592))))))))))

(assert (= (and d!1082201 c!637802) b!3687538))

(assert (= (and d!1082201 (not c!637802)) b!3687531))

(assert (= (and d!1082201 c!637801) b!3687529))

(assert (= (and d!1082201 (not c!637801)) b!3687539))

(assert (= (and b!3687539 c!637803) b!3687528))

(assert (= (and b!3687539 (not c!637803)) b!3687535))

(assert (= (and b!3687535 (not res!1498590)) b!3687527))

(assert (= (and b!3687527 res!1498592) b!3687530))

(assert (= (and b!3687530 res!1498595) b!3687536))

(assert (= (and b!3687536 res!1498596) b!3687532))

(assert (= (and b!3687527 (not res!1498593)) b!3687537))

(assert (= (and b!3687537 res!1498591) b!3687533))

(assert (= (and b!3687533 (not res!1498594)) b!3687540))

(assert (= (and b!3687540 (not res!1498597)) b!3687534))

(assert (= (or b!3687529 b!3687530 b!3687533) bm!266863))

(assert (=> b!3687532 m!4199083))

(declare-fun m!4199435 () Bool)

(assert (=> b!3687532 m!4199435))

(assert (=> bm!266863 m!4199083))

(declare-fun m!4199437 () Bool)

(assert (=> bm!266863 m!4199437))

(assert (=> b!3687536 m!4199083))

(declare-fun m!4199439 () Bool)

(assert (=> b!3687536 m!4199439))

(assert (=> b!3687536 m!4199439))

(declare-fun m!4199441 () Bool)

(assert (=> b!3687536 m!4199441))

(assert (=> d!1082201 m!4199083))

(assert (=> d!1082201 m!4199437))

(declare-fun m!4199443 () Bool)

(assert (=> d!1082201 m!4199443))

(assert (=> b!3687534 m!4199083))

(assert (=> b!3687534 m!4199435))

(declare-fun m!4199445 () Bool)

(assert (=> b!3687538 m!4199445))

(assert (=> b!3687531 m!4199083))

(assert (=> b!3687531 m!4199435))

(assert (=> b!3687531 m!4199435))

(declare-fun m!4199447 () Bool)

(assert (=> b!3687531 m!4199447))

(assert (=> b!3687531 m!4199083))

(assert (=> b!3687531 m!4199439))

(assert (=> b!3687531 m!4199447))

(assert (=> b!3687531 m!4199439))

(declare-fun m!4199449 () Bool)

(assert (=> b!3687531 m!4199449))

(assert (=> b!3687540 m!4199083))

(assert (=> b!3687540 m!4199439))

(assert (=> b!3687540 m!4199439))

(assert (=> b!3687540 m!4199441))

(assert (=> b!3687191 d!1082201))

(assert (=> b!3687191 d!1082181))

(assert (=> b!3687191 d!1082187))

(assert (=> b!3687191 d!1082189))

(declare-fun d!1082215 () Bool)

(declare-fun c!637806 () Bool)

(assert (=> d!1082215 (= c!637806 (is-Node!11972 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))))))

(declare-fun e!2283516 () Bool)

(assert (=> d!1082215 (= (inv!52485 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))) e!2283516)))

(declare-fun b!3687547 () Bool)

(declare-fun inv!52489 (Conc!11972) Bool)

(assert (=> b!3687547 (= e!2283516 (inv!52489 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))))))

(declare-fun b!3687548 () Bool)

(declare-fun e!2283517 () Bool)

(assert (=> b!3687548 (= e!2283516 e!2283517)))

(declare-fun res!1498600 () Bool)

(assert (=> b!3687548 (= res!1498600 (not (is-Leaf!18529 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))))))

(assert (=> b!3687548 (=> res!1498600 e!2283517)))

(declare-fun b!3687549 () Bool)

(declare-fun inv!52490 (Conc!11972) Bool)

(assert (=> b!3687549 (= e!2283517 (inv!52490 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))))))

(assert (= (and d!1082215 c!637806) b!3687547))

(assert (= (and d!1082215 (not c!637806)) b!3687548))

(assert (= (and b!3687548 (not res!1498600)) b!3687549))

(declare-fun m!4199451 () Bool)

(assert (=> b!3687547 m!4199451))

(declare-fun m!4199453 () Bool)

(assert (=> b!3687549 m!4199453))

(assert (=> b!3687213 d!1082215))

(declare-fun b!3687558 () Bool)

(declare-fun e!2283522 () List!39141)

(assert (=> b!3687558 (= e!2283522 Nil!39017)))

(declare-fun b!3687561 () Bool)

(declare-fun e!2283523 () List!39141)

(declare-fun ++!9716 (List!39141 List!39141) List!39141)

(assert (=> b!3687561 (= e!2283523 (++!9716 (list!14562 (left!30433 (c!637737 (_1!22588 lt!1290559)))) (list!14562 (right!30763 (c!637737 (_1!22588 lt!1290559))))))))

(declare-fun b!3687560 () Bool)

(declare-fun list!14567 (IArray!23951) List!39141)

(assert (=> b!3687560 (= e!2283523 (list!14567 (xs!15175 (c!637737 (_1!22588 lt!1290559)))))))

(declare-fun b!3687559 () Bool)

(assert (=> b!3687559 (= e!2283522 e!2283523)))

(declare-fun c!637812 () Bool)

(assert (=> b!3687559 (= c!637812 (is-Leaf!18530 (c!637737 (_1!22588 lt!1290559))))))

(declare-fun d!1082217 () Bool)

(declare-fun c!637811 () Bool)

(assert (=> d!1082217 (= c!637811 (is-Empty!11973 (c!637737 (_1!22588 lt!1290559))))))

(assert (=> d!1082217 (= (list!14562 (c!637737 (_1!22588 lt!1290559))) e!2283522)))

(assert (= (and d!1082217 c!637811) b!3687558))

(assert (= (and d!1082217 (not c!637811)) b!3687559))

(assert (= (and b!3687559 c!637812) b!3687560))

(assert (= (and b!3687559 (not c!637812)) b!3687561))

(declare-fun m!4199455 () Bool)

(assert (=> b!3687561 m!4199455))

(declare-fun m!4199457 () Bool)

(assert (=> b!3687561 m!4199457))

(assert (=> b!3687561 m!4199455))

(assert (=> b!3687561 m!4199457))

(declare-fun m!4199459 () Bool)

(assert (=> b!3687561 m!4199459))

(declare-fun m!4199461 () Bool)

(assert (=> b!3687560 m!4199461))

(assert (=> d!1082093 d!1082217))

(declare-fun b!3687562 () Bool)

(declare-fun e!2283525 () Bool)

(declare-fun e!2283526 () Bool)

(assert (=> b!3687562 (= e!2283525 e!2283526)))

(declare-fun res!1498605 () Bool)

(assert (=> b!3687562 (=> (not res!1498605) (not e!2283526))))

(declare-fun lt!1290682 () Option!8393)

(assert (=> b!3687562 (= res!1498605 (isDefined!6594 lt!1290682))))

(declare-fun b!3687563 () Bool)

(declare-fun res!1498603 () Bool)

(assert (=> b!3687563 (=> (not res!1498603) (not e!2283526))))

(assert (=> b!3687563 (= res!1498603 (= (value!188355 (_1!22589 (get!12938 lt!1290682))) (apply!9363 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290682)))) (seqFromList!4440 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290682)))))))))

(declare-fun d!1082219 () Bool)

(assert (=> d!1082219 e!2283525))

(declare-fun res!1498601 () Bool)

(assert (=> d!1082219 (=> res!1498601 e!2283525)))

(assert (=> d!1082219 (= res!1498601 (isEmpty!23217 lt!1290682))))

(declare-fun e!2283524 () Option!8393)

(assert (=> d!1082219 (= lt!1290682 e!2283524)))

(declare-fun c!637813 () Bool)

(assert (=> d!1082219 (= c!637813 (and (is-Cons!39016 (t!301165 rules!3568)) (is-Nil!39016 (t!301165 (t!301165 rules!3568)))))))

(declare-fun lt!1290684 () Unit!57073)

(declare-fun lt!1290683 () Unit!57073)

(assert (=> d!1082219 (= lt!1290684 lt!1290683)))

(assert (=> d!1082219 (isPrefix!3244 input!3129 input!3129)))

(assert (=> d!1082219 (= lt!1290683 (lemmaIsPrefixRefl!2031 input!3129 input!3129))))

(assert (=> d!1082219 (rulesValidInductive!2105 thiss!25197 (t!301165 rules!3568))))

(assert (=> d!1082219 (= (maxPrefix!3008 thiss!25197 (t!301165 rules!3568) input!3129) lt!1290682)))

(declare-fun b!3687564 () Bool)

(declare-fun call!266869 () Option!8393)

(assert (=> b!3687564 (= e!2283524 call!266869)))

(declare-fun b!3687565 () Bool)

(declare-fun res!1498606 () Bool)

(assert (=> b!3687565 (=> (not res!1498606) (not e!2283526))))

(assert (=> b!3687565 (= res!1498606 (matchR!5205 (regex!5891 (rule!8735 (_1!22589 (get!12938 lt!1290682)))) (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290682))))))))

(declare-fun b!3687566 () Bool)

(declare-fun lt!1290685 () Option!8393)

(declare-fun lt!1290681 () Option!8393)

(assert (=> b!3687566 (= e!2283524 (ite (and (is-None!8392 lt!1290685) (is-None!8392 lt!1290681)) None!8392 (ite (is-None!8392 lt!1290681) lt!1290685 (ite (is-None!8392 lt!1290685) lt!1290681 (ite (>= (size!29805 (_1!22589 (v!38340 lt!1290685))) (size!29805 (_1!22589 (v!38340 lt!1290681)))) lt!1290685 lt!1290681)))))))

(assert (=> b!3687566 (= lt!1290685 call!266869)))

(assert (=> b!3687566 (= lt!1290681 (maxPrefix!3008 thiss!25197 (t!301165 (t!301165 rules!3568)) input!3129))))

(declare-fun b!3687567 () Bool)

(assert (=> b!3687567 (= e!2283526 (contains!7788 (t!301165 rules!3568) (rule!8735 (_1!22589 (get!12938 lt!1290682)))))))

(declare-fun bm!266864 () Bool)

(assert (=> bm!266864 (= call!266869 (maxPrefixOneRule!2126 thiss!25197 (h!44436 (t!301165 rules!3568)) input!3129))))

(declare-fun b!3687568 () Bool)

(declare-fun res!1498602 () Bool)

(assert (=> b!3687568 (=> (not res!1498602) (not e!2283526))))

(assert (=> b!3687568 (= res!1498602 (= (++!9714 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290682)))) (_2!22589 (get!12938 lt!1290682))) input!3129))))

(declare-fun b!3687569 () Bool)

(declare-fun res!1498604 () Bool)

(assert (=> b!3687569 (=> (not res!1498604) (not e!2283526))))

(assert (=> b!3687569 (= res!1498604 (= (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290682)))) (originalCharacters!6605 (_1!22589 (get!12938 lt!1290682)))))))

(declare-fun b!3687570 () Bool)

(declare-fun res!1498607 () Bool)

(assert (=> b!3687570 (=> (not res!1498607) (not e!2283526))))

(assert (=> b!3687570 (= res!1498607 (< (size!29807 (_2!22589 (get!12938 lt!1290682))) (size!29807 input!3129)))))

(assert (= (and d!1082219 c!637813) b!3687564))

(assert (= (and d!1082219 (not c!637813)) b!3687566))

(assert (= (or b!3687564 b!3687566) bm!266864))

(assert (= (and d!1082219 (not res!1498601)) b!3687562))

(assert (= (and b!3687562 res!1498605) b!3687569))

(assert (= (and b!3687569 res!1498604) b!3687570))

(assert (= (and b!3687570 res!1498607) b!3687568))

(assert (= (and b!3687568 res!1498602) b!3687563))

(assert (= (and b!3687563 res!1498603) b!3687565))

(assert (= (and b!3687565 res!1498606) b!3687567))

(declare-fun m!4199463 () Bool)

(assert (=> d!1082219 m!4199463))

(assert (=> d!1082219 m!4199067))

(assert (=> d!1082219 m!4199069))

(declare-fun m!4199465 () Bool)

(assert (=> d!1082219 m!4199465))

(declare-fun m!4199467 () Bool)

(assert (=> b!3687567 m!4199467))

(declare-fun m!4199469 () Bool)

(assert (=> b!3687567 m!4199469))

(assert (=> b!3687563 m!4199467))

(declare-fun m!4199471 () Bool)

(assert (=> b!3687563 m!4199471))

(assert (=> b!3687563 m!4199471))

(declare-fun m!4199473 () Bool)

(assert (=> b!3687563 m!4199473))

(assert (=> b!3687568 m!4199467))

(declare-fun m!4199475 () Bool)

(assert (=> b!3687568 m!4199475))

(assert (=> b!3687568 m!4199475))

(declare-fun m!4199477 () Bool)

(assert (=> b!3687568 m!4199477))

(assert (=> b!3687568 m!4199477))

(declare-fun m!4199479 () Bool)

(assert (=> b!3687568 m!4199479))

(declare-fun m!4199481 () Bool)

(assert (=> b!3687562 m!4199481))

(declare-fun m!4199483 () Bool)

(assert (=> b!3687566 m!4199483))

(assert (=> b!3687565 m!4199467))

(assert (=> b!3687565 m!4199475))

(assert (=> b!3687565 m!4199475))

(assert (=> b!3687565 m!4199477))

(assert (=> b!3687565 m!4199477))

(declare-fun m!4199485 () Bool)

(assert (=> b!3687565 m!4199485))

(declare-fun m!4199487 () Bool)

(assert (=> bm!266864 m!4199487))

(assert (=> b!3687569 m!4199467))

(assert (=> b!3687569 m!4199475))

(assert (=> b!3687569 m!4199475))

(assert (=> b!3687569 m!4199477))

(assert (=> b!3687570 m!4199467))

(declare-fun m!4199489 () Bool)

(assert (=> b!3687570 m!4199489))

(assert (=> b!3687570 m!4199097))

(assert (=> b!3687192 d!1082219))

(declare-fun d!1082221 () Bool)

(declare-fun lt!1290686 () Int)

(assert (=> d!1082221 (>= lt!1290686 0)))

(declare-fun e!2283527 () Int)

(assert (=> d!1082221 (= lt!1290686 e!2283527)))

(declare-fun c!637814 () Bool)

(assert (=> d!1082221 (= c!637814 (is-Nil!39015 lt!1290615))))

(assert (=> d!1082221 (= (size!29807 lt!1290615) lt!1290686)))

(declare-fun b!3687571 () Bool)

(assert (=> b!3687571 (= e!2283527 0)))

(declare-fun b!3687572 () Bool)

(assert (=> b!3687572 (= e!2283527 (+ 1 (size!29807 (t!301164 lt!1290615))))))

(assert (= (and d!1082221 c!637814) b!3687571))

(assert (= (and d!1082221 (not c!637814)) b!3687572))

(declare-fun m!4199491 () Bool)

(assert (=> b!3687572 m!4199491))

(assert (=> b!3687232 d!1082221))

(assert (=> b!3687232 d!1082183))

(declare-fun d!1082223 () Bool)

(declare-fun lt!1290687 () Int)

(assert (=> d!1082223 (>= lt!1290687 0)))

(declare-fun e!2283528 () Int)

(assert (=> d!1082223 (= lt!1290687 e!2283528)))

(declare-fun c!637815 () Bool)

(assert (=> d!1082223 (= c!637815 (is-Nil!39015 suffix!1448))))

(assert (=> d!1082223 (= (size!29807 suffix!1448) lt!1290687)))

(declare-fun b!3687573 () Bool)

(assert (=> b!3687573 (= e!2283528 0)))

(declare-fun b!3687574 () Bool)

(assert (=> b!3687574 (= e!2283528 (+ 1 (size!29807 (t!301164 suffix!1448))))))

(assert (= (and d!1082223 c!637815) b!3687573))

(assert (= (and d!1082223 (not c!637815)) b!3687574))

(declare-fun m!4199493 () Bool)

(assert (=> b!3687574 m!4199493))

(assert (=> b!3687232 d!1082223))

(declare-fun b!3687593 () Bool)

(declare-fun e!2283537 () Bool)

(declare-fun lt!1290699 () Option!8393)

(assert (=> b!3687593 (= e!2283537 (= (size!29805 (_1!22589 (get!12938 lt!1290699))) (size!29807 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290699))))))))

(declare-fun b!3687594 () Bool)

(declare-fun e!2283539 () Bool)

(declare-datatypes ((tuple2!38920 0))(
  ( (tuple2!38921 (_1!22594 List!39139) (_2!22594 List!39139)) )
))
(declare-fun findLongestMatchInner!1098 (Regex!10650 List!39139 Int List!39139 List!39139 Int) tuple2!38920)

(assert (=> b!3687594 (= e!2283539 (matchR!5205 (regex!5891 (h!44436 rules!3568)) (_1!22594 (findLongestMatchInner!1098 (regex!5891 (h!44436 rules!3568)) Nil!39015 (size!29807 Nil!39015) input!3129 input!3129 (size!29807 input!3129)))))))

(declare-fun b!3687595 () Bool)

(declare-fun res!1498626 () Bool)

(assert (=> b!3687595 (=> (not res!1498626) (not e!2283537))))

(assert (=> b!3687595 (= res!1498626 (= (++!9714 (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290699)))) (_2!22589 (get!12938 lt!1290699))) input!3129))))

(declare-fun b!3687596 () Bool)

(declare-fun e!2283540 () Option!8393)

(declare-fun lt!1290701 () tuple2!38920)

(assert (=> b!3687596 (= e!2283540 (Some!8392 (tuple2!38911 (Token!11149 (apply!9363 (transformation!5891 (h!44436 rules!3568)) (seqFromList!4440 (_1!22594 lt!1290701))) (h!44436 rules!3568) (size!29809 (seqFromList!4440 (_1!22594 lt!1290701))) (_1!22594 lt!1290701)) (_2!22594 lt!1290701))))))

(declare-fun lt!1290698 () Unit!57073)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1071 (Regex!10650 List!39139) Unit!57073)

(assert (=> b!3687596 (= lt!1290698 (longestMatchIsAcceptedByMatchOrIsEmpty!1071 (regex!5891 (h!44436 rules!3568)) input!3129))))

(declare-fun res!1498623 () Bool)

(assert (=> b!3687596 (= res!1498623 (isEmpty!23223 (_1!22594 (findLongestMatchInner!1098 (regex!5891 (h!44436 rules!3568)) Nil!39015 (size!29807 Nil!39015) input!3129 input!3129 (size!29807 input!3129)))))))

(assert (=> b!3687596 (=> res!1498623 e!2283539)))

(assert (=> b!3687596 e!2283539))

(declare-fun lt!1290702 () Unit!57073)

(assert (=> b!3687596 (= lt!1290702 lt!1290698)))

(declare-fun lt!1290700 () Unit!57073)

(declare-fun lemmaSemiInverse!1604 (TokenValueInjection!11670 BalanceConc!23558) Unit!57073)

(assert (=> b!3687596 (= lt!1290700 (lemmaSemiInverse!1604 (transformation!5891 (h!44436 rules!3568)) (seqFromList!4440 (_1!22594 lt!1290701))))))

(declare-fun b!3687597 () Bool)

(declare-fun e!2283538 () Bool)

(assert (=> b!3687597 (= e!2283538 e!2283537)))

(declare-fun res!1498628 () Bool)

(assert (=> b!3687597 (=> (not res!1498628) (not e!2283537))))

(assert (=> b!3687597 (= res!1498628 (matchR!5205 (regex!5891 (h!44436 rules!3568)) (list!14558 (charsOf!3902 (_1!22589 (get!12938 lt!1290699))))))))

(declare-fun b!3687598 () Bool)

(declare-fun res!1498627 () Bool)

(assert (=> b!3687598 (=> (not res!1498627) (not e!2283537))))

(assert (=> b!3687598 (= res!1498627 (= (rule!8735 (_1!22589 (get!12938 lt!1290699))) (h!44436 rules!3568)))))

(declare-fun b!3687599 () Bool)

(declare-fun res!1498622 () Bool)

(assert (=> b!3687599 (=> (not res!1498622) (not e!2283537))))

(assert (=> b!3687599 (= res!1498622 (= (value!188355 (_1!22589 (get!12938 lt!1290699))) (apply!9363 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290699)))) (seqFromList!4440 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290699)))))))))

(declare-fun d!1082225 () Bool)

(assert (=> d!1082225 e!2283538))

(declare-fun res!1498625 () Bool)

(assert (=> d!1082225 (=> res!1498625 e!2283538)))

(assert (=> d!1082225 (= res!1498625 (isEmpty!23217 lt!1290699))))

(assert (=> d!1082225 (= lt!1290699 e!2283540)))

(declare-fun c!637818 () Bool)

(assert (=> d!1082225 (= c!637818 (isEmpty!23223 (_1!22594 lt!1290701)))))

(declare-fun findLongestMatch!1013 (Regex!10650 List!39139) tuple2!38920)

(assert (=> d!1082225 (= lt!1290701 (findLongestMatch!1013 (regex!5891 (h!44436 rules!3568)) input!3129))))

(declare-fun ruleValid!2127 (LexerInterface!5480 Rule!11582) Bool)

(assert (=> d!1082225 (ruleValid!2127 thiss!25197 (h!44436 rules!3568))))

(assert (=> d!1082225 (= (maxPrefixOneRule!2126 thiss!25197 (h!44436 rules!3568) input!3129) lt!1290699)))

(declare-fun b!3687600 () Bool)

(declare-fun res!1498624 () Bool)

(assert (=> b!3687600 (=> (not res!1498624) (not e!2283537))))

(assert (=> b!3687600 (= res!1498624 (< (size!29807 (_2!22589 (get!12938 lt!1290699))) (size!29807 input!3129)))))

(declare-fun b!3687601 () Bool)

(assert (=> b!3687601 (= e!2283540 None!8392)))

(assert (= (and d!1082225 c!637818) b!3687601))

(assert (= (and d!1082225 (not c!637818)) b!3687596))

(assert (= (and b!3687596 (not res!1498623)) b!3687594))

(assert (= (and d!1082225 (not res!1498625)) b!3687597))

(assert (= (and b!3687597 res!1498628) b!3687595))

(assert (= (and b!3687595 res!1498626) b!3687600))

(assert (= (and b!3687600 res!1498624) b!3687598))

(assert (= (and b!3687598 res!1498627) b!3687599))

(assert (= (and b!3687599 res!1498622) b!3687593))

(declare-fun m!4199495 () Bool)

(assert (=> b!3687596 m!4199495))

(assert (=> b!3687596 m!4199495))

(declare-fun m!4199497 () Bool)

(assert (=> b!3687596 m!4199497))

(assert (=> b!3687596 m!4199495))

(declare-fun m!4199499 () Bool)

(assert (=> b!3687596 m!4199499))

(declare-fun m!4199501 () Bool)

(assert (=> b!3687596 m!4199501))

(declare-fun m!4199503 () Bool)

(assert (=> b!3687596 m!4199503))

(declare-fun m!4199505 () Bool)

(assert (=> b!3687596 m!4199505))

(assert (=> b!3687596 m!4199097))

(declare-fun m!4199507 () Bool)

(assert (=> b!3687596 m!4199507))

(assert (=> b!3687596 m!4199505))

(assert (=> b!3687596 m!4199495))

(declare-fun m!4199509 () Bool)

(assert (=> b!3687596 m!4199509))

(assert (=> b!3687596 m!4199097))

(assert (=> b!3687594 m!4199505))

(assert (=> b!3687594 m!4199097))

(assert (=> b!3687594 m!4199505))

(assert (=> b!3687594 m!4199097))

(assert (=> b!3687594 m!4199507))

(declare-fun m!4199511 () Bool)

(assert (=> b!3687594 m!4199511))

(declare-fun m!4199513 () Bool)

(assert (=> b!3687597 m!4199513))

(declare-fun m!4199515 () Bool)

(assert (=> b!3687597 m!4199515))

(assert (=> b!3687597 m!4199515))

(declare-fun m!4199517 () Bool)

(assert (=> b!3687597 m!4199517))

(assert (=> b!3687597 m!4199517))

(declare-fun m!4199519 () Bool)

(assert (=> b!3687597 m!4199519))

(assert (=> b!3687598 m!4199513))

(assert (=> b!3687595 m!4199513))

(assert (=> b!3687595 m!4199515))

(assert (=> b!3687595 m!4199515))

(assert (=> b!3687595 m!4199517))

(assert (=> b!3687595 m!4199517))

(declare-fun m!4199521 () Bool)

(assert (=> b!3687595 m!4199521))

(declare-fun m!4199523 () Bool)

(assert (=> d!1082225 m!4199523))

(declare-fun m!4199525 () Bool)

(assert (=> d!1082225 m!4199525))

(declare-fun m!4199527 () Bool)

(assert (=> d!1082225 m!4199527))

(declare-fun m!4199529 () Bool)

(assert (=> d!1082225 m!4199529))

(assert (=> b!3687600 m!4199513))

(declare-fun m!4199531 () Bool)

(assert (=> b!3687600 m!4199531))

(assert (=> b!3687600 m!4199097))

(assert (=> b!3687599 m!4199513))

(declare-fun m!4199533 () Bool)

(assert (=> b!3687599 m!4199533))

(assert (=> b!3687599 m!4199533))

(declare-fun m!4199535 () Bool)

(assert (=> b!3687599 m!4199535))

(assert (=> b!3687593 m!4199513))

(declare-fun m!4199537 () Bool)

(assert (=> b!3687593 m!4199537))

(assert (=> bm!266854 d!1082225))

(declare-fun d!1082227 () Bool)

(declare-fun lt!1290703 () Int)

(assert (=> d!1082227 (>= lt!1290703 0)))

(declare-fun e!2283541 () Int)

(assert (=> d!1082227 (= lt!1290703 e!2283541)))

(declare-fun c!637819 () Bool)

(assert (=> d!1082227 (= c!637819 (is-Nil!39015 lt!1290611))))

(assert (=> d!1082227 (= (size!29807 lt!1290611) lt!1290703)))

(declare-fun b!3687602 () Bool)

(assert (=> b!3687602 (= e!2283541 0)))

(declare-fun b!3687603 () Bool)

(assert (=> b!3687603 (= e!2283541 (+ 1 (size!29807 (t!301164 lt!1290611))))))

(assert (= (and d!1082227 c!637819) b!3687602))

(assert (= (and d!1082227 (not c!637819)) b!3687603))

(declare-fun m!4199539 () Bool)

(assert (=> b!3687603 m!4199539))

(assert (=> b!3687228 d!1082227))

(declare-fun d!1082229 () Bool)

(declare-fun lt!1290704 () Int)

(assert (=> d!1082229 (>= lt!1290704 0)))

(declare-fun e!2283542 () Int)

(assert (=> d!1082229 (= lt!1290704 e!2283542)))

(declare-fun c!637820 () Bool)

(assert (=> d!1082229 (= c!637820 (is-Nil!39015 lt!1290561))))

(assert (=> d!1082229 (= (size!29807 lt!1290561) lt!1290704)))

(declare-fun b!3687604 () Bool)

(assert (=> b!3687604 (= e!2283542 0)))

(declare-fun b!3687605 () Bool)

(assert (=> b!3687605 (= e!2283542 (+ 1 (size!29807 (t!301164 lt!1290561))))))

(assert (= (and d!1082229 c!637820) b!3687604))

(assert (= (and d!1082229 (not c!637820)) b!3687605))

(declare-fun m!4199541 () Bool)

(assert (=> b!3687605 m!4199541))

(assert (=> b!3687228 d!1082229))

(declare-fun d!1082231 () Bool)

(declare-fun lt!1290705 () Int)

(assert (=> d!1082231 (>= lt!1290705 0)))

(declare-fun e!2283543 () Int)

(assert (=> d!1082231 (= lt!1290705 e!2283543)))

(declare-fun c!637821 () Bool)

(assert (=> d!1082231 (= c!637821 (is-Nil!39015 (_2!22589 lt!1290560)))))

(assert (=> d!1082231 (= (size!29807 (_2!22589 lt!1290560)) lt!1290705)))

(declare-fun b!3687606 () Bool)

(assert (=> b!3687606 (= e!2283543 0)))

(declare-fun b!3687607 () Bool)

(assert (=> b!3687607 (= e!2283543 (+ 1 (size!29807 (t!301164 (_2!22589 lt!1290560)))))))

(assert (= (and d!1082231 c!637821) b!3687606))

(assert (= (and d!1082231 (not c!637821)) b!3687607))

(declare-fun m!4199543 () Bool)

(assert (=> b!3687607 m!4199543))

(assert (=> b!3687228 d!1082231))

(declare-fun b!3687608 () Bool)

(declare-fun e!2283544 () List!39139)

(assert (=> b!3687608 (= e!2283544 (_2!22589 lt!1290560))))

(declare-fun e!2283545 () Bool)

(declare-fun lt!1290706 () List!39139)

(declare-fun b!3687611 () Bool)

(assert (=> b!3687611 (= e!2283545 (or (not (= (_2!22589 lt!1290560) Nil!39015)) (= lt!1290706 (t!301164 lt!1290561))))))

(declare-fun b!3687609 () Bool)

(assert (=> b!3687609 (= e!2283544 (Cons!39015 (h!44435 (t!301164 lt!1290561)) (++!9714 (t!301164 (t!301164 lt!1290561)) (_2!22589 lt!1290560))))))

(declare-fun d!1082233 () Bool)

(assert (=> d!1082233 e!2283545))

(declare-fun res!1498629 () Bool)

(assert (=> d!1082233 (=> (not res!1498629) (not e!2283545))))

(assert (=> d!1082233 (= res!1498629 (= (content!5650 lt!1290706) (set.union (content!5650 (t!301164 lt!1290561)) (content!5650 (_2!22589 lt!1290560)))))))

(assert (=> d!1082233 (= lt!1290706 e!2283544)))

(declare-fun c!637822 () Bool)

(assert (=> d!1082233 (= c!637822 (is-Nil!39015 (t!301164 lt!1290561)))))

(assert (=> d!1082233 (= (++!9714 (t!301164 lt!1290561) (_2!22589 lt!1290560)) lt!1290706)))

(declare-fun b!3687610 () Bool)

(declare-fun res!1498630 () Bool)

(assert (=> b!3687610 (=> (not res!1498630) (not e!2283545))))

(assert (=> b!3687610 (= res!1498630 (= (size!29807 lt!1290706) (+ (size!29807 (t!301164 lt!1290561)) (size!29807 (_2!22589 lt!1290560)))))))

(assert (= (and d!1082233 c!637822) b!3687608))

(assert (= (and d!1082233 (not c!637822)) b!3687609))

(assert (= (and d!1082233 res!1498629) b!3687610))

(assert (= (and b!3687610 res!1498630) b!3687611))

(declare-fun m!4199545 () Bool)

(assert (=> b!3687609 m!4199545))

(declare-fun m!4199547 () Bool)

(assert (=> d!1082233 m!4199547))

(declare-fun m!4199549 () Bool)

(assert (=> d!1082233 m!4199549))

(assert (=> d!1082233 m!4199147))

(declare-fun m!4199551 () Bool)

(assert (=> b!3687610 m!4199551))

(assert (=> b!3687610 m!4199541))

(assert (=> b!3687610 m!4199151))

(assert (=> b!3687227 d!1082233))

(declare-fun d!1082235 () Bool)

(declare-fun lt!1290709 () Bool)

(declare-fun content!5652 (List!39140) (Set Rule!11582))

(assert (=> d!1082235 (= lt!1290709 (set.member (rule!8735 (_1!22589 (get!12938 lt!1290592))) (content!5652 rules!3568)))))

(declare-fun e!2283550 () Bool)

(assert (=> d!1082235 (= lt!1290709 e!2283550)))

(declare-fun res!1498636 () Bool)

(assert (=> d!1082235 (=> (not res!1498636) (not e!2283550))))

(assert (=> d!1082235 (= res!1498636 (is-Cons!39016 rules!3568))))

(assert (=> d!1082235 (= (contains!7788 rules!3568 (rule!8735 (_1!22589 (get!12938 lt!1290592)))) lt!1290709)))

(declare-fun b!3687616 () Bool)

(declare-fun e!2283551 () Bool)

(assert (=> b!3687616 (= e!2283550 e!2283551)))

(declare-fun res!1498635 () Bool)

(assert (=> b!3687616 (=> res!1498635 e!2283551)))

(assert (=> b!3687616 (= res!1498635 (= (h!44436 rules!3568) (rule!8735 (_1!22589 (get!12938 lt!1290592)))))))

(declare-fun b!3687617 () Bool)

(assert (=> b!3687617 (= e!2283551 (contains!7788 (t!301165 rules!3568) (rule!8735 (_1!22589 (get!12938 lt!1290592)))))))

(assert (= (and d!1082235 res!1498636) b!3687616))

(assert (= (and b!3687616 (not res!1498635)) b!3687617))

(declare-fun m!4199553 () Bool)

(assert (=> d!1082235 m!4199553))

(declare-fun m!4199555 () Bool)

(assert (=> d!1082235 m!4199555))

(declare-fun m!4199557 () Bool)

(assert (=> b!3687617 m!4199557))

(assert (=> b!3687193 d!1082235))

(assert (=> b!3687193 d!1082181))

(declare-fun d!1082237 () Bool)

(assert (=> d!1082237 (= (isEmpty!23217 lt!1290592) (not (is-Some!8392 lt!1290592)))))

(assert (=> d!1082079 d!1082237))

(declare-fun d!1082239 () Bool)

(declare-fun e!2283553 () Bool)

(assert (=> d!1082239 e!2283553))

(declare-fun res!1498639 () Bool)

(assert (=> d!1082239 (=> res!1498639 e!2283553)))

(declare-fun lt!1290710 () Bool)

(assert (=> d!1082239 (= res!1498639 (not lt!1290710))))

(declare-fun e!2283554 () Bool)

(assert (=> d!1082239 (= lt!1290710 e!2283554)))

(declare-fun res!1498640 () Bool)

(assert (=> d!1082239 (=> res!1498640 e!2283554)))

(assert (=> d!1082239 (= res!1498640 (is-Nil!39015 input!3129))))

(assert (=> d!1082239 (= (isPrefix!3244 input!3129 input!3129) lt!1290710)))

(declare-fun b!3687621 () Bool)

(assert (=> b!3687621 (= e!2283553 (>= (size!29807 input!3129) (size!29807 input!3129)))))

(declare-fun b!3687620 () Bool)

(declare-fun e!2283552 () Bool)

(assert (=> b!3687620 (= e!2283552 (isPrefix!3244 (tail!5706 input!3129) (tail!5706 input!3129)))))

(declare-fun b!3687619 () Bool)

(declare-fun res!1498637 () Bool)

(assert (=> b!3687619 (=> (not res!1498637) (not e!2283552))))

(assert (=> b!3687619 (= res!1498637 (= (head!7955 input!3129) (head!7955 input!3129)))))

(declare-fun b!3687618 () Bool)

(assert (=> b!3687618 (= e!2283554 e!2283552)))

(declare-fun res!1498638 () Bool)

(assert (=> b!3687618 (=> (not res!1498638) (not e!2283552))))

(assert (=> b!3687618 (= res!1498638 (not (is-Nil!39015 input!3129)))))

(assert (= (and d!1082239 (not res!1498640)) b!3687618))

(assert (= (and b!3687618 res!1498638) b!3687619))

(assert (= (and b!3687619 res!1498637) b!3687620))

(assert (= (and d!1082239 (not res!1498639)) b!3687621))

(assert (=> b!3687621 m!4199097))

(assert (=> b!3687621 m!4199097))

(declare-fun m!4199559 () Bool)

(assert (=> b!3687620 m!4199559))

(assert (=> b!3687620 m!4199559))

(assert (=> b!3687620 m!4199559))

(assert (=> b!3687620 m!4199559))

(declare-fun m!4199561 () Bool)

(assert (=> b!3687620 m!4199561))

(declare-fun m!4199563 () Bool)

(assert (=> b!3687619 m!4199563))

(assert (=> b!3687619 m!4199563))

(assert (=> d!1082079 d!1082239))

(declare-fun d!1082241 () Bool)

(assert (=> d!1082241 (isPrefix!3244 input!3129 input!3129)))

(declare-fun lt!1290713 () Unit!57073)

(declare-fun choose!22070 (List!39139 List!39139) Unit!57073)

(assert (=> d!1082241 (= lt!1290713 (choose!22070 input!3129 input!3129))))

(assert (=> d!1082241 (= (lemmaIsPrefixRefl!2031 input!3129 input!3129) lt!1290713)))

(declare-fun bs!573935 () Bool)

(assert (= bs!573935 d!1082241))

(assert (=> bs!573935 m!4199067))

(declare-fun m!4199565 () Bool)

(assert (=> bs!573935 m!4199565))

(assert (=> d!1082079 d!1082241))

(declare-fun bs!573936 () Bool)

(declare-fun d!1082243 () Bool)

(assert (= bs!573936 (and d!1082243 d!1082199)))

(declare-fun lambda!124890 () Int)

(assert (=> bs!573936 (= lambda!124890 lambda!124887)))

(assert (=> d!1082243 true))

(declare-fun lt!1290716 () Bool)

(assert (=> d!1082243 (= lt!1290716 (forall!8168 rules!3568 lambda!124890))))

(declare-fun e!2283560 () Bool)

(assert (=> d!1082243 (= lt!1290716 e!2283560)))

(declare-fun res!1498645 () Bool)

(assert (=> d!1082243 (=> res!1498645 e!2283560)))

(assert (=> d!1082243 (= res!1498645 (not (is-Cons!39016 rules!3568)))))

(assert (=> d!1082243 (= (rulesValidInductive!2105 thiss!25197 rules!3568) lt!1290716)))

(declare-fun b!3687626 () Bool)

(declare-fun e!2283559 () Bool)

(assert (=> b!3687626 (= e!2283560 e!2283559)))

(declare-fun res!1498646 () Bool)

(assert (=> b!3687626 (=> (not res!1498646) (not e!2283559))))

(assert (=> b!3687626 (= res!1498646 (ruleValid!2127 thiss!25197 (h!44436 rules!3568)))))

(declare-fun b!3687627 () Bool)

(assert (=> b!3687627 (= e!2283559 (rulesValidInductive!2105 thiss!25197 (t!301165 rules!3568)))))

(assert (= (and d!1082243 (not res!1498645)) b!3687626))

(assert (= (and b!3687626 res!1498646) b!3687627))

(declare-fun m!4199567 () Bool)

(assert (=> d!1082243 m!4199567))

(assert (=> b!3687626 m!4199529))

(assert (=> b!3687627 m!4199465))

(assert (=> d!1082079 d!1082243))

(declare-fun d!1082245 () Bool)

(declare-fun lt!1290717 () Int)

(assert (=> d!1082245 (>= lt!1290717 0)))

(declare-fun e!2283561 () Int)

(assert (=> d!1082245 (= lt!1290717 e!2283561)))

(declare-fun c!637823 () Bool)

(assert (=> d!1082245 (= c!637823 (is-Nil!39015 (++!9714 input!3129 suffix!1448)))))

(assert (=> d!1082245 (= (size!29807 (++!9714 input!3129 suffix!1448)) lt!1290717)))

(declare-fun b!3687628 () Bool)

(assert (=> b!3687628 (= e!2283561 0)))

(declare-fun b!3687629 () Bool)

(assert (=> b!3687629 (= e!2283561 (+ 1 (size!29807 (t!301164 (++!9714 input!3129 suffix!1448)))))))

(assert (= (and d!1082245 c!637823) b!3687628))

(assert (= (and d!1082245 (not c!637823)) b!3687629))

(declare-fun m!4199569 () Bool)

(assert (=> b!3687629 m!4199569))

(assert (=> b!3687217 d!1082245))

(assert (=> b!3687217 d!1082229))

(declare-fun d!1082247 () Bool)

(assert (=> d!1082247 (= (list!14558 (_2!22588 lt!1290621)) (list!14563 (c!637736 (_2!22588 lt!1290621))))))

(declare-fun bs!573937 () Bool)

(assert (= bs!573937 d!1082247))

(declare-fun m!4199571 () Bool)

(assert (=> bs!573937 m!4199571))

(assert (=> b!3687248 d!1082247))

(declare-fun b!3687640 () Bool)

(declare-fun e!2283570 () Bool)

(declare-fun e!2283569 () Bool)

(assert (=> b!3687640 (= e!2283570 e!2283569)))

(declare-fun res!1498649 () Bool)

(declare-fun lt!1290725 () tuple2!38916)

(assert (=> b!3687640 (= res!1498649 (< (size!29807 (_2!22592 lt!1290725)) (size!29807 (list!14558 (seqFromList!4440 input!3129)))))))

(assert (=> b!3687640 (=> (not res!1498649) (not e!2283569))))

(declare-fun b!3687641 () Bool)

(assert (=> b!3687641 (= e!2283569 (not (isEmpty!23218 (_1!22592 lt!1290725))))))

(declare-fun b!3687642 () Bool)

(declare-fun e!2283568 () tuple2!38916)

(declare-fun lt!1290724 () Option!8393)

(declare-fun lt!1290726 () tuple2!38916)

(assert (=> b!3687642 (= e!2283568 (tuple2!38917 (Cons!39017 (_1!22589 (v!38340 lt!1290724)) (_1!22592 lt!1290726)) (_2!22592 lt!1290726)))))

(assert (=> b!3687642 (= lt!1290726 (lexList!1531 thiss!25197 rules!3568 (_2!22589 (v!38340 lt!1290724))))))

(declare-fun b!3687643 () Bool)

(assert (=> b!3687643 (= e!2283568 (tuple2!38917 Nil!39017 (list!14558 (seqFromList!4440 input!3129))))))

(declare-fun b!3687644 () Bool)

(assert (=> b!3687644 (= e!2283570 (= (_2!22592 lt!1290725) (list!14558 (seqFromList!4440 input!3129))))))

(declare-fun d!1082249 () Bool)

(assert (=> d!1082249 e!2283570))

(declare-fun c!637828 () Bool)

(declare-fun size!29813 (List!39141) Int)

(assert (=> d!1082249 (= c!637828 (> (size!29813 (_1!22592 lt!1290725)) 0))))

(assert (=> d!1082249 (= lt!1290725 e!2283568)))

(declare-fun c!637829 () Bool)

(assert (=> d!1082249 (= c!637829 (is-Some!8392 lt!1290724))))

(assert (=> d!1082249 (= lt!1290724 (maxPrefix!3008 thiss!25197 rules!3568 (list!14558 (seqFromList!4440 input!3129))))))

(assert (=> d!1082249 (= (lexList!1531 thiss!25197 rules!3568 (list!14558 (seqFromList!4440 input!3129))) lt!1290725)))

(assert (= (and d!1082249 c!637829) b!3687642))

(assert (= (and d!1082249 (not c!637829)) b!3687643))

(assert (= (and d!1082249 c!637828) b!3687640))

(assert (= (and d!1082249 (not c!637828)) b!3687644))

(assert (= (and b!3687640 res!1498649) b!3687641))

(declare-fun m!4199573 () Bool)

(assert (=> b!3687640 m!4199573))

(assert (=> b!3687640 m!4199179))

(declare-fun m!4199575 () Bool)

(assert (=> b!3687640 m!4199575))

(declare-fun m!4199577 () Bool)

(assert (=> b!3687641 m!4199577))

(declare-fun m!4199579 () Bool)

(assert (=> b!3687642 m!4199579))

(declare-fun m!4199581 () Bool)

(assert (=> d!1082249 m!4199581))

(assert (=> d!1082249 m!4199179))

(declare-fun m!4199583 () Bool)

(assert (=> d!1082249 m!4199583))

(assert (=> b!3687248 d!1082249))

(declare-fun d!1082251 () Bool)

(assert (=> d!1082251 (= (list!14558 (seqFromList!4440 input!3129)) (list!14563 (c!637736 (seqFromList!4440 input!3129))))))

(declare-fun bs!573938 () Bool)

(assert (= bs!573938 d!1082251))

(declare-fun m!4199585 () Bool)

(assert (=> bs!573938 m!4199585))

(assert (=> b!3687248 d!1082251))

(declare-fun d!1082253 () Bool)

(assert (=> d!1082253 true))

(declare-fun lambda!124893 () Int)

(declare-fun order!21609 () Int)

(declare-fun order!21607 () Int)

(declare-fun dynLambda!17092 (Int Int) Int)

(declare-fun dynLambda!17093 (Int Int) Int)

(assert (=> d!1082253 (< (dynLambda!17092 order!21607 (toChars!8062 (transformation!5891 (h!44436 rules!3568)))) (dynLambda!17093 order!21609 lambda!124893))))

(assert (=> d!1082253 true))

(assert (=> d!1082253 (< (dynLambda!17090 order!21603 (toValue!8203 (transformation!5891 (h!44436 rules!3568)))) (dynLambda!17093 order!21609 lambda!124893))))

(declare-fun Forall!1380 (Int) Bool)

(assert (=> d!1082253 (= (semiInverseModEq!2512 (toChars!8062 (transformation!5891 (h!44436 rules!3568))) (toValue!8203 (transformation!5891 (h!44436 rules!3568)))) (Forall!1380 lambda!124893))))

(declare-fun bs!573939 () Bool)

(assert (= bs!573939 d!1082253))

(declare-fun m!4199587 () Bool)

(assert (=> bs!573939 m!4199587))

(assert (=> d!1082077 d!1082253))

(declare-fun d!1082255 () Bool)

(declare-fun e!2283573 () Bool)

(assert (=> d!1082255 e!2283573))

(declare-fun res!1498652 () Bool)

(assert (=> d!1082255 (=> (not res!1498652) (not e!2283573))))

(declare-fun lt!1290729 () BalanceConc!23558)

(assert (=> d!1082255 (= res!1498652 (= (list!14558 lt!1290729) input!3129))))

(declare-fun fromList!807 (List!39139) Conc!11972)

(assert (=> d!1082255 (= lt!1290729 (BalanceConc!23559 (fromList!807 input!3129)))))

(assert (=> d!1082255 (= (fromListB!2047 input!3129) lt!1290729)))

(declare-fun b!3687651 () Bool)

(assert (=> b!3687651 (= e!2283573 (isBalanced!3513 (fromList!807 input!3129)))))

(assert (= (and d!1082255 res!1498652) b!3687651))

(declare-fun m!4199589 () Bool)

(assert (=> d!1082255 m!4199589))

(declare-fun m!4199591 () Bool)

(assert (=> d!1082255 m!4199591))

(assert (=> b!3687651 m!4199591))

(assert (=> b!3687651 m!4199591))

(declare-fun m!4199593 () Bool)

(assert (=> b!3687651 m!4199593))

(assert (=> d!1082121 d!1082255))

(declare-fun d!1082257 () Bool)

(declare-fun e!2283575 () Bool)

(assert (=> d!1082257 e!2283575))

(declare-fun res!1498655 () Bool)

(assert (=> d!1082257 (=> res!1498655 e!2283575)))

(declare-fun lt!1290730 () Bool)

(assert (=> d!1082257 (= res!1498655 (not lt!1290730))))

(declare-fun e!2283576 () Bool)

(assert (=> d!1082257 (= lt!1290730 e!2283576)))

(declare-fun res!1498656 () Bool)

(assert (=> d!1082257 (=> res!1498656 e!2283576)))

(assert (=> d!1082257 (= res!1498656 (is-Nil!39015 (tail!5706 lt!1290561)))))

(assert (=> d!1082257 (= (isPrefix!3244 (tail!5706 lt!1290561) (tail!5706 (++!9714 input!3129 suffix!1448))) lt!1290730)))

(declare-fun b!3687655 () Bool)

(assert (=> b!3687655 (= e!2283575 (>= (size!29807 (tail!5706 (++!9714 input!3129 suffix!1448))) (size!29807 (tail!5706 lt!1290561))))))

(declare-fun e!2283574 () Bool)

(declare-fun b!3687654 () Bool)

(assert (=> b!3687654 (= e!2283574 (isPrefix!3244 (tail!5706 (tail!5706 lt!1290561)) (tail!5706 (tail!5706 (++!9714 input!3129 suffix!1448)))))))

(declare-fun b!3687653 () Bool)

(declare-fun res!1498653 () Bool)

(assert (=> b!3687653 (=> (not res!1498653) (not e!2283574))))

(assert (=> b!3687653 (= res!1498653 (= (head!7955 (tail!5706 lt!1290561)) (head!7955 (tail!5706 (++!9714 input!3129 suffix!1448)))))))

(declare-fun b!3687652 () Bool)

(assert (=> b!3687652 (= e!2283576 e!2283574)))

(declare-fun res!1498654 () Bool)

(assert (=> b!3687652 (=> (not res!1498654) (not e!2283574))))

(assert (=> b!3687652 (= res!1498654 (not (is-Nil!39015 (tail!5706 (++!9714 input!3129 suffix!1448)))))))

(assert (= (and d!1082257 (not res!1498656)) b!3687652))

(assert (= (and b!3687652 res!1498654) b!3687653))

(assert (= (and b!3687653 res!1498653) b!3687654))

(assert (= (and d!1082257 (not res!1498655)) b!3687655))

(assert (=> b!3687655 m!4199133))

(declare-fun m!4199595 () Bool)

(assert (=> b!3687655 m!4199595))

(assert (=> b!3687655 m!4199111))

(declare-fun m!4199597 () Bool)

(assert (=> b!3687655 m!4199597))

(assert (=> b!3687654 m!4199111))

(declare-fun m!4199599 () Bool)

(assert (=> b!3687654 m!4199599))

(assert (=> b!3687654 m!4199133))

(declare-fun m!4199601 () Bool)

(assert (=> b!3687654 m!4199601))

(assert (=> b!3687654 m!4199599))

(assert (=> b!3687654 m!4199601))

(declare-fun m!4199603 () Bool)

(assert (=> b!3687654 m!4199603))

(assert (=> b!3687653 m!4199111))

(declare-fun m!4199605 () Bool)

(assert (=> b!3687653 m!4199605))

(assert (=> b!3687653 m!4199133))

(declare-fun m!4199607 () Bool)

(assert (=> b!3687653 m!4199607))

(assert (=> b!3687216 d!1082257))

(declare-fun d!1082259 () Bool)

(assert (=> d!1082259 (= (tail!5706 lt!1290561) (t!301164 lt!1290561))))

(assert (=> b!3687216 d!1082259))

(declare-fun d!1082261 () Bool)

(assert (=> d!1082261 (= (tail!5706 (++!9714 input!3129 suffix!1448)) (t!301164 (++!9714 input!3129 suffix!1448)))))

(assert (=> b!3687216 d!1082261))

(declare-fun d!1082263 () Bool)

(declare-fun lt!1290733 () Int)

(assert (=> d!1082263 (= lt!1290733 (size!29807 (list!14558 (_2!22588 lt!1290621))))))

(declare-fun size!29814 (Conc!11972) Int)

(assert (=> d!1082263 (= lt!1290733 (size!29814 (c!637736 (_2!22588 lt!1290621))))))

(assert (=> d!1082263 (= (size!29809 (_2!22588 lt!1290621)) lt!1290733)))

(declare-fun bs!573940 () Bool)

(assert (= bs!573940 d!1082263))

(assert (=> bs!573940 m!4199177))

(assert (=> bs!573940 m!4199177))

(declare-fun m!4199609 () Bool)

(assert (=> bs!573940 m!4199609))

(declare-fun m!4199611 () Bool)

(assert (=> bs!573940 m!4199611))

(assert (=> b!3687247 d!1082263))

(declare-fun d!1082265 () Bool)

(declare-fun lt!1290734 () Int)

(assert (=> d!1082265 (= lt!1290734 (size!29807 (list!14558 (seqFromList!4440 input!3129))))))

(assert (=> d!1082265 (= lt!1290734 (size!29814 (c!637736 (seqFromList!4440 input!3129))))))

(assert (=> d!1082265 (= (size!29809 (seqFromList!4440 input!3129)) lt!1290734)))

(declare-fun bs!573941 () Bool)

(assert (= bs!573941 d!1082265))

(assert (=> bs!573941 m!4198981))

(assert (=> bs!573941 m!4199179))

(assert (=> bs!573941 m!4199179))

(assert (=> bs!573941 m!4199575))

(declare-fun m!4199613 () Bool)

(assert (=> bs!573941 m!4199613))

(assert (=> b!3687247 d!1082265))

(declare-fun d!1082267 () Bool)

(assert (=> d!1082267 (= (isEmpty!23218 (list!14559 (_1!22588 lt!1290559))) (is-Nil!39017 (list!14559 (_1!22588 lt!1290559))))))

(assert (=> d!1082117 d!1082267))

(assert (=> d!1082117 d!1082093))

(declare-fun d!1082269 () Bool)

(declare-fun lt!1290737 () Bool)

(assert (=> d!1082269 (= lt!1290737 (isEmpty!23218 (list!14562 (c!637737 (_1!22588 lt!1290559)))))))

(declare-fun size!29815 (Conc!11973) Int)

(assert (=> d!1082269 (= lt!1290737 (= (size!29815 (c!637737 (_1!22588 lt!1290559))) 0))))

(assert (=> d!1082269 (= (isEmpty!23219 (c!637737 (_1!22588 lt!1290559))) lt!1290737)))

(declare-fun bs!573942 () Bool)

(assert (= bs!573942 d!1082269))

(assert (=> bs!573942 m!4199101))

(assert (=> bs!573942 m!4199101))

(declare-fun m!4199615 () Bool)

(assert (=> bs!573942 m!4199615))

(declare-fun m!4199617 () Bool)

(assert (=> bs!573942 m!4199617))

(assert (=> d!1082117 d!1082269))

(declare-fun d!1082271 () Bool)

(declare-fun lt!1290738 () Int)

(assert (=> d!1082271 (>= lt!1290738 0)))

(declare-fun e!2283577 () Int)

(assert (=> d!1082271 (= lt!1290738 e!2283577)))

(declare-fun c!637831 () Bool)

(assert (=> d!1082271 (= c!637831 (is-Nil!39015 (++!9714 lt!1290561 (_2!22589 lt!1290560))))))

(assert (=> d!1082271 (= (size!29807 (++!9714 lt!1290561 (_2!22589 lt!1290560))) lt!1290738)))

(declare-fun b!3687656 () Bool)

(assert (=> b!3687656 (= e!2283577 0)))

(declare-fun b!3687657 () Bool)

(assert (=> b!3687657 (= e!2283577 (+ 1 (size!29807 (t!301164 (++!9714 lt!1290561 (_2!22589 lt!1290560))))))))

(assert (= (and d!1082271 c!637831) b!3687656))

(assert (= (and d!1082271 (not c!637831)) b!3687657))

(declare-fun m!4199619 () Bool)

(assert (=> b!3687657 m!4199619))

(assert (=> b!3687208 d!1082271))

(assert (=> b!3687208 d!1082229))

(assert (=> b!3687189 d!1082181))

(declare-fun d!1082273 () Bool)

(declare-fun dynLambda!17094 (Int BalanceConc!23558) TokenValue!6121)

(assert (=> d!1082273 (= (apply!9363 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))) (seqFromList!4440 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592))))) (dynLambda!17094 (toValue!8203 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))) (seqFromList!4440 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592))))))))

(declare-fun b_lambda!109471 () Bool)

(assert (=> (not b_lambda!109471) (not d!1082273)))

(declare-fun t!301193 () Bool)

(declare-fun tb!213773 () Bool)

(assert (=> (and b!3687127 (= (toValue!8203 (transformation!5891 (h!44436 rules!3568))) (toValue!8203 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))) t!301193) tb!213773))

(declare-fun result!260202 () Bool)

(declare-fun inv!21 (TokenValue!6121) Bool)

(assert (=> tb!213773 (= result!260202 (inv!21 (dynLambda!17094 (toValue!8203 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592))))) (seqFromList!4440 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592)))))))))

(declare-fun m!4199621 () Bool)

(assert (=> tb!213773 m!4199621))

(assert (=> d!1082273 t!301193))

(declare-fun b_and!275559 () Bool)

(assert (= b_and!275531 (and (=> t!301193 result!260202) b_and!275559)))

(declare-fun tb!213775 () Bool)

(declare-fun t!301195 () Bool)

(assert (=> (and b!3687282 (= (toValue!8203 (transformation!5891 (h!44436 (t!301165 rules!3568)))) (toValue!8203 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))) t!301195) tb!213775))

(declare-fun result!260206 () Bool)

(assert (= result!260206 result!260202))

(assert (=> d!1082273 t!301195))

(declare-fun b_and!275561 () Bool)

(assert (= b_and!275541 (and (=> t!301195 result!260206) b_and!275561)))

(assert (=> d!1082273 m!4199077))

(declare-fun m!4199623 () Bool)

(assert (=> d!1082273 m!4199623))

(assert (=> b!3687189 d!1082273))

(declare-fun d!1082275 () Bool)

(assert (=> d!1082275 (= (seqFromList!4440 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592)))) (fromListB!2047 (originalCharacters!6605 (_1!22589 (get!12938 lt!1290592)))))))

(declare-fun bs!573943 () Bool)

(assert (= bs!573943 d!1082275))

(declare-fun m!4199625 () Bool)

(assert (=> bs!573943 m!4199625))

(assert (=> b!3687189 d!1082275))

(declare-fun b!3687660 () Bool)

(declare-fun e!2283581 () List!39139)

(assert (=> b!3687660 (= e!2283581 suffix!1448)))

(declare-fun e!2283582 () Bool)

(declare-fun b!3687663 () Bool)

(declare-fun lt!1290739 () List!39139)

(assert (=> b!3687663 (= e!2283582 (or (not (= suffix!1448 Nil!39015)) (= lt!1290739 (t!301164 input!3129))))))

(declare-fun b!3687661 () Bool)

(assert (=> b!3687661 (= e!2283581 (Cons!39015 (h!44435 (t!301164 input!3129)) (++!9714 (t!301164 (t!301164 input!3129)) suffix!1448)))))

(declare-fun d!1082277 () Bool)

(assert (=> d!1082277 e!2283582))

(declare-fun res!1498657 () Bool)

(assert (=> d!1082277 (=> (not res!1498657) (not e!2283582))))

(assert (=> d!1082277 (= res!1498657 (= (content!5650 lt!1290739) (set.union (content!5650 (t!301164 input!3129)) (content!5650 suffix!1448))))))

(assert (=> d!1082277 (= lt!1290739 e!2283581)))

(declare-fun c!637832 () Bool)

(assert (=> d!1082277 (= c!637832 (is-Nil!39015 (t!301164 input!3129)))))

(assert (=> d!1082277 (= (++!9714 (t!301164 input!3129) suffix!1448) lt!1290739)))

(declare-fun b!3687662 () Bool)

(declare-fun res!1498658 () Bool)

(assert (=> b!3687662 (=> (not res!1498658) (not e!2283582))))

(assert (=> b!3687662 (= res!1498658 (= (size!29807 lt!1290739) (+ (size!29807 (t!301164 input!3129)) (size!29807 suffix!1448))))))

(assert (= (and d!1082277 c!637832) b!3687660))

(assert (= (and d!1082277 (not c!637832)) b!3687661))

(assert (= (and d!1082277 res!1498657) b!3687662))

(assert (= (and b!3687662 res!1498658) b!3687663))

(declare-fun m!4199627 () Bool)

(assert (=> b!3687661 m!4199627))

(declare-fun m!4199629 () Bool)

(assert (=> d!1082277 m!4199629))

(declare-fun m!4199631 () Bool)

(assert (=> d!1082277 m!4199631))

(assert (=> d!1082277 m!4199163))

(declare-fun m!4199633 () Bool)

(assert (=> b!3687662 m!4199633))

(assert (=> b!3687662 m!4199365))

(assert (=> b!3687662 m!4199167))

(assert (=> b!3687231 d!1082277))

(declare-fun d!1082279 () Bool)

(declare-fun res!1498663 () Bool)

(declare-fun e!2283587 () Bool)

(assert (=> d!1082279 (=> res!1498663 e!2283587)))

(assert (=> d!1082279 (= res!1498663 (is-Nil!39016 rules!3568))))

(assert (=> d!1082279 (= (noDuplicateTag!2265 thiss!25197 rules!3568 Nil!39022) e!2283587)))

(declare-fun b!3687668 () Bool)

(declare-fun e!2283588 () Bool)

(assert (=> b!3687668 (= e!2283587 e!2283588)))

(declare-fun res!1498664 () Bool)

(assert (=> b!3687668 (=> (not res!1498664) (not e!2283588))))

(declare-fun contains!7790 (List!39146 String!43941) Bool)

(assert (=> b!3687668 (= res!1498664 (not (contains!7790 Nil!39022 (tag!6703 (h!44436 rules!3568)))))))

(declare-fun b!3687669 () Bool)

(assert (=> b!3687669 (= e!2283588 (noDuplicateTag!2265 thiss!25197 (t!301165 rules!3568) (Cons!39022 (tag!6703 (h!44436 rules!3568)) Nil!39022)))))

(assert (= (and d!1082279 (not res!1498663)) b!3687668))

(assert (= (and b!3687668 res!1498664) b!3687669))

(declare-fun m!4199635 () Bool)

(assert (=> b!3687668 m!4199635))

(declare-fun m!4199637 () Bool)

(assert (=> b!3687669 m!4199637))

(assert (=> b!3687251 d!1082279))

(declare-fun d!1082281 () Bool)

(assert (=> d!1082281 (= (head!7955 lt!1290561) (h!44435 lt!1290561))))

(assert (=> b!3687206 d!1082281))

(declare-fun d!1082283 () Bool)

(assert (=> d!1082283 (= (head!7955 (++!9714 lt!1290561 (_2!22589 lt!1290560))) (h!44435 (++!9714 lt!1290561 (_2!22589 lt!1290560))))))

(assert (=> b!3687206 d!1082283))

(declare-fun d!1082285 () Bool)

(declare-fun e!2283590 () Bool)

(assert (=> d!1082285 e!2283590))

(declare-fun res!1498667 () Bool)

(assert (=> d!1082285 (=> res!1498667 e!2283590)))

(declare-fun lt!1290740 () Bool)

(assert (=> d!1082285 (= res!1498667 (not lt!1290740))))

(declare-fun e!2283591 () Bool)

(assert (=> d!1082285 (= lt!1290740 e!2283591)))

(declare-fun res!1498668 () Bool)

(assert (=> d!1082285 (=> res!1498668 e!2283591)))

(assert (=> d!1082285 (= res!1498668 (is-Nil!39015 (tail!5706 lt!1290561)))))

(assert (=> d!1082285 (= (isPrefix!3244 (tail!5706 lt!1290561) (tail!5706 (++!9714 lt!1290561 (_2!22589 lt!1290560)))) lt!1290740)))

(declare-fun b!3687673 () Bool)

(assert (=> b!3687673 (= e!2283590 (>= (size!29807 (tail!5706 (++!9714 lt!1290561 (_2!22589 lt!1290560)))) (size!29807 (tail!5706 lt!1290561))))))

(declare-fun b!3687672 () Bool)

(declare-fun e!2283589 () Bool)

(assert (=> b!3687672 (= e!2283589 (isPrefix!3244 (tail!5706 (tail!5706 lt!1290561)) (tail!5706 (tail!5706 (++!9714 lt!1290561 (_2!22589 lt!1290560))))))))

(declare-fun b!3687671 () Bool)

(declare-fun res!1498665 () Bool)

(assert (=> b!3687671 (=> (not res!1498665) (not e!2283589))))

(assert (=> b!3687671 (= res!1498665 (= (head!7955 (tail!5706 lt!1290561)) (head!7955 (tail!5706 (++!9714 lt!1290561 (_2!22589 lt!1290560))))))))

(declare-fun b!3687670 () Bool)

(assert (=> b!3687670 (= e!2283591 e!2283589)))

(declare-fun res!1498666 () Bool)

(assert (=> b!3687670 (=> (not res!1498666) (not e!2283589))))

(assert (=> b!3687670 (= res!1498666 (not (is-Nil!39015 (tail!5706 (++!9714 lt!1290561 (_2!22589 lt!1290560))))))))

(assert (= (and d!1082285 (not res!1498668)) b!3687670))

(assert (= (and b!3687670 res!1498666) b!3687671))

(assert (= (and b!3687671 res!1498665) b!3687672))

(assert (= (and d!1082285 (not res!1498667)) b!3687673))

(assert (=> b!3687673 m!4199113))

(declare-fun m!4199639 () Bool)

(assert (=> b!3687673 m!4199639))

(assert (=> b!3687673 m!4199111))

(assert (=> b!3687673 m!4199597))

(assert (=> b!3687672 m!4199111))

(assert (=> b!3687672 m!4199599))

(assert (=> b!3687672 m!4199113))

(declare-fun m!4199641 () Bool)

(assert (=> b!3687672 m!4199641))

(assert (=> b!3687672 m!4199599))

(assert (=> b!3687672 m!4199641))

(declare-fun m!4199643 () Bool)

(assert (=> b!3687672 m!4199643))

(assert (=> b!3687671 m!4199111))

(assert (=> b!3687671 m!4199605))

(assert (=> b!3687671 m!4199113))

(declare-fun m!4199645 () Bool)

(assert (=> b!3687671 m!4199645))

(assert (=> b!3687207 d!1082285))

(assert (=> b!3687207 d!1082259))

(declare-fun d!1082287 () Bool)

(assert (=> d!1082287 (= (tail!5706 (++!9714 lt!1290561 (_2!22589 lt!1290560))) (t!301164 (++!9714 lt!1290561 (_2!22589 lt!1290560))))))

(assert (=> b!3687207 d!1082287))

(declare-fun d!1082289 () Bool)

(assert (=> d!1082289 (= (isDefined!6594 lt!1290592) (not (isEmpty!23217 lt!1290592)))))

(declare-fun bs!573944 () Bool)

(assert (= bs!573944 d!1082289))

(assert (=> bs!573944 m!4199065))

(assert (=> b!3687188 d!1082289))

(assert (=> d!1082111 d!1082105))

(assert (=> d!1082111 d!1082113))

(declare-fun d!1082291 () Bool)

(assert (=> d!1082291 (isPrefix!3244 lt!1290561 (++!9714 input!3129 suffix!1448))))

(assert (=> d!1082291 true))

(declare-fun _$58!508 () Unit!57073)

(assert (=> d!1082291 (= (choose!22067 lt!1290561 input!3129 suffix!1448) _$58!508)))

(declare-fun bs!573945 () Bool)

(assert (= bs!573945 d!1082291))

(assert (=> bs!573945 m!4198989))

(assert (=> bs!573945 m!4198989))

(assert (=> bs!573945 m!4199007))

(assert (=> d!1082111 d!1082291))

(declare-fun d!1082293 () Bool)

(declare-fun e!2283593 () Bool)

(assert (=> d!1082293 e!2283593))

(declare-fun res!1498671 () Bool)

(assert (=> d!1082293 (=> res!1498671 e!2283593)))

(declare-fun lt!1290741 () Bool)

(assert (=> d!1082293 (= res!1498671 (not lt!1290741))))

(declare-fun e!2283594 () Bool)

(assert (=> d!1082293 (= lt!1290741 e!2283594)))

(declare-fun res!1498672 () Bool)

(assert (=> d!1082293 (=> res!1498672 e!2283594)))

(assert (=> d!1082293 (= res!1498672 (is-Nil!39015 lt!1290561))))

(assert (=> d!1082293 (= (isPrefix!3244 lt!1290561 input!3129) lt!1290741)))

(declare-fun b!3687677 () Bool)

(assert (=> b!3687677 (= e!2283593 (>= (size!29807 input!3129) (size!29807 lt!1290561)))))

(declare-fun b!3687676 () Bool)

(declare-fun e!2283592 () Bool)

(assert (=> b!3687676 (= e!2283592 (isPrefix!3244 (tail!5706 lt!1290561) (tail!5706 input!3129)))))

(declare-fun b!3687675 () Bool)

(declare-fun res!1498669 () Bool)

(assert (=> b!3687675 (=> (not res!1498669) (not e!2283592))))

(assert (=> b!3687675 (= res!1498669 (= (head!7955 lt!1290561) (head!7955 input!3129)))))

(declare-fun b!3687674 () Bool)

(assert (=> b!3687674 (= e!2283594 e!2283592)))

(declare-fun res!1498670 () Bool)

(assert (=> b!3687674 (=> (not res!1498670) (not e!2283592))))

(assert (=> b!3687674 (= res!1498670 (not (is-Nil!39015 input!3129)))))

(assert (= (and d!1082293 (not res!1498672)) b!3687674))

(assert (= (and b!3687674 res!1498670) b!3687675))

(assert (= (and b!3687675 res!1498669) b!3687676))

(assert (= (and d!1082293 (not res!1498671)) b!3687677))

(assert (=> b!3687677 m!4199097))

(assert (=> b!3687677 m!4199109))

(assert (=> b!3687676 m!4199111))

(assert (=> b!3687676 m!4199559))

(assert (=> b!3687676 m!4199111))

(assert (=> b!3687676 m!4199559))

(declare-fun m!4199647 () Bool)

(assert (=> b!3687676 m!4199647))

(assert (=> b!3687675 m!4199117))

(assert (=> b!3687675 m!4199563))

(assert (=> d!1082111 d!1082293))

(declare-fun d!1082295 () Bool)

(declare-fun lt!1290744 () Int)

(assert (=> d!1082295 (= lt!1290744 (size!29813 (list!14559 (_1!22588 lt!1290621))))))

(assert (=> d!1082295 (= lt!1290744 (size!29815 (c!637737 (_1!22588 lt!1290621))))))

(assert (=> d!1082295 (= (size!29808 (_1!22588 lt!1290621)) lt!1290744)))

(declare-fun bs!573946 () Bool)

(assert (= bs!573946 d!1082295))

(assert (=> bs!573946 m!4199189))

(assert (=> bs!573946 m!4199189))

(declare-fun m!4199649 () Bool)

(assert (=> bs!573946 m!4199649))

(declare-fun m!4199651 () Bool)

(assert (=> bs!573946 m!4199651))

(assert (=> d!1082119 d!1082295))

(declare-fun b!3687711 () Bool)

(declare-fun e!2283617 () tuple2!38908)

(declare-fun lt!1290827 () BalanceConc!23558)

(assert (=> b!3687711 (= e!2283617 (tuple2!38909 (BalanceConc!23561 Empty!11973) lt!1290827))))

(declare-datatypes ((tuple2!38922 0))(
  ( (tuple2!38923 (_1!22595 Token!11148) (_2!22595 BalanceConc!23558)) )
))
(declare-datatypes ((Option!8395 0))(
  ( (None!8394) (Some!8394 (v!38344 tuple2!38922)) )
))
(declare-fun lt!1290839 () Option!8395)

(declare-fun b!3687712 () Bool)

(declare-fun e!2283614 () tuple2!38908)

(declare-fun lt!1290834 () BalanceConc!23558)

(declare-fun append!1011 (BalanceConc!23560 Token!11148) BalanceConc!23560)

(assert (=> b!3687712 (= e!2283614 (lexTailRecV2!1137 thiss!25197 rules!3568 (seqFromList!4440 input!3129) lt!1290834 (_2!22595 (v!38344 lt!1290839)) (append!1011 (BalanceConc!23561 Empty!11973) (_1!22595 (v!38344 lt!1290839)))))))

(declare-fun lt!1290854 () tuple2!38908)

(declare-fun lexRec!782 (LexerInterface!5480 List!39140 BalanceConc!23558) tuple2!38908)

(assert (=> b!3687712 (= lt!1290854 (lexRec!782 thiss!25197 rules!3568 (_2!22595 (v!38344 lt!1290839))))))

(declare-fun lt!1290833 () List!39139)

(assert (=> b!3687712 (= lt!1290833 (list!14558 (BalanceConc!23559 Empty!11972)))))

(declare-fun lt!1290851 () List!39139)

(assert (=> b!3687712 (= lt!1290851 (list!14558 (charsOf!3902 (_1!22595 (v!38344 lt!1290839)))))))

(declare-fun lt!1290829 () List!39139)

(assert (=> b!3687712 (= lt!1290829 (list!14558 (_2!22595 (v!38344 lt!1290839))))))

(declare-fun lt!1290856 () Unit!57073)

(declare-fun lemmaConcatAssociativity!2083 (List!39139 List!39139 List!39139) Unit!57073)

(assert (=> b!3687712 (= lt!1290856 (lemmaConcatAssociativity!2083 lt!1290833 lt!1290851 lt!1290829))))

(assert (=> b!3687712 (= (++!9714 (++!9714 lt!1290833 lt!1290851) lt!1290829) (++!9714 lt!1290833 (++!9714 lt!1290851 lt!1290829)))))

(declare-fun lt!1290825 () Unit!57073)

(assert (=> b!3687712 (= lt!1290825 lt!1290856)))

(declare-fun lt!1290826 () Option!8395)

(declare-fun maxPrefixZipperSequence!1174 (LexerInterface!5480 List!39140 BalanceConc!23558) Option!8395)

(assert (=> b!3687712 (= lt!1290826 (maxPrefixZipperSequence!1174 thiss!25197 rules!3568 (seqFromList!4440 input!3129)))))

(declare-fun c!637846 () Bool)

(assert (=> b!3687712 (= c!637846 (is-Some!8394 lt!1290826))))

(declare-fun e!2283615 () tuple2!38908)

(assert (=> b!3687712 (= (lexRec!782 thiss!25197 rules!3568 (seqFromList!4440 input!3129)) e!2283615)))

(declare-fun lt!1290847 () Unit!57073)

(declare-fun Unit!57078 () Unit!57073)

(assert (=> b!3687712 (= lt!1290847 Unit!57078)))

(declare-fun lt!1290848 () List!39141)

(assert (=> b!3687712 (= lt!1290848 (list!14559 (BalanceConc!23561 Empty!11973)))))

(declare-fun lt!1290831 () List!39141)

(assert (=> b!3687712 (= lt!1290831 (Cons!39017 (_1!22595 (v!38344 lt!1290839)) Nil!39017))))

(declare-fun lt!1290849 () List!39141)

(assert (=> b!3687712 (= lt!1290849 (list!14559 (_1!22588 lt!1290854)))))

(declare-fun lt!1290837 () Unit!57073)

(declare-fun lemmaConcatAssociativity!2084 (List!39141 List!39141 List!39141) Unit!57073)

(assert (=> b!3687712 (= lt!1290837 (lemmaConcatAssociativity!2084 lt!1290848 lt!1290831 lt!1290849))))

(assert (=> b!3687712 (= (++!9716 (++!9716 lt!1290848 lt!1290831) lt!1290849) (++!9716 lt!1290848 (++!9716 lt!1290831 lt!1290849)))))

(declare-fun lt!1290842 () Unit!57073)

(assert (=> b!3687712 (= lt!1290842 lt!1290837)))

(declare-fun lt!1290835 () List!39139)

(assert (=> b!3687712 (= lt!1290835 (++!9714 (list!14558 (BalanceConc!23559 Empty!11972)) (list!14558 (charsOf!3902 (_1!22595 (v!38344 lt!1290839))))))))

(declare-fun lt!1290844 () List!39139)

(assert (=> b!3687712 (= lt!1290844 (list!14558 (_2!22595 (v!38344 lt!1290839))))))

(declare-fun lt!1290843 () List!39141)

(assert (=> b!3687712 (= lt!1290843 (list!14559 (append!1011 (BalanceConc!23561 Empty!11973) (_1!22595 (v!38344 lt!1290839)))))))

(declare-fun lt!1290840 () Unit!57073)

(declare-fun lemmaLexThenLexPrefix!546 (LexerInterface!5480 List!39140 List!39139 List!39139 List!39141 List!39141 List!39139) Unit!57073)

(assert (=> b!3687712 (= lt!1290840 (lemmaLexThenLexPrefix!546 thiss!25197 rules!3568 lt!1290835 lt!1290844 lt!1290843 (list!14559 (_1!22588 lt!1290854)) (list!14558 (_2!22588 lt!1290854))))))

(assert (=> b!3687712 (= (lexList!1531 thiss!25197 rules!3568 lt!1290835) (tuple2!38917 lt!1290843 Nil!39015))))

(declare-fun lt!1290850 () Unit!57073)

(assert (=> b!3687712 (= lt!1290850 lt!1290840)))

(declare-fun ++!9717 (BalanceConc!23558 BalanceConc!23558) BalanceConc!23558)

(assert (=> b!3687712 (= lt!1290827 (++!9717 (BalanceConc!23559 Empty!11972) (charsOf!3902 (_1!22595 (v!38344 lt!1290839)))))))

(declare-fun lt!1290836 () Option!8395)

(assert (=> b!3687712 (= lt!1290836 (maxPrefixZipperSequence!1174 thiss!25197 rules!3568 lt!1290827))))

(declare-fun c!637847 () Bool)

(assert (=> b!3687712 (= c!637847 (is-Some!8394 lt!1290836))))

(assert (=> b!3687712 (= (lexRec!782 thiss!25197 rules!3568 (++!9717 (BalanceConc!23559 Empty!11972) (charsOf!3902 (_1!22595 (v!38344 lt!1290839))))) e!2283617)))

(declare-fun lt!1290830 () Unit!57073)

(declare-fun Unit!57079 () Unit!57073)

(assert (=> b!3687712 (= lt!1290830 Unit!57079)))

(assert (=> b!3687712 (= lt!1290834 (++!9717 (BalanceConc!23559 Empty!11972) (charsOf!3902 (_1!22595 (v!38344 lt!1290839)))))))

(declare-fun lt!1290858 () List!39139)

(assert (=> b!3687712 (= lt!1290858 (list!14558 lt!1290834))))

(declare-fun lt!1290846 () List!39139)

(assert (=> b!3687712 (= lt!1290846 (list!14558 (_2!22595 (v!38344 lt!1290839))))))

(declare-fun lt!1290832 () Unit!57073)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!628 (List!39139 List!39139) Unit!57073)

(assert (=> b!3687712 (= lt!1290832 (lemmaConcatTwoListThenFSndIsSuffix!628 lt!1290858 lt!1290846))))

(declare-fun isSuffix!943 (List!39139 List!39139) Bool)

(assert (=> b!3687712 (isSuffix!943 lt!1290846 (++!9714 lt!1290858 lt!1290846))))

(declare-fun lt!1290855 () Unit!57073)

(assert (=> b!3687712 (= lt!1290855 lt!1290832)))

(declare-fun b!3687713 () Bool)

(assert (=> b!3687713 (= e!2283615 (tuple2!38909 (BalanceConc!23561 Empty!11973) (seqFromList!4440 input!3129)))))

(declare-fun d!1082297 () Bool)

(declare-fun e!2283616 () Bool)

(assert (=> d!1082297 e!2283616))

(declare-fun res!1498680 () Bool)

(assert (=> d!1082297 (=> (not res!1498680) (not e!2283616))))

(declare-fun lt!1290828 () tuple2!38908)

(assert (=> d!1082297 (= res!1498680 (= (list!14559 (_1!22588 lt!1290828)) (list!14559 (_1!22588 (lexRec!782 thiss!25197 rules!3568 (seqFromList!4440 input!3129))))))))

(assert (=> d!1082297 (= lt!1290828 e!2283614)))

(declare-fun c!637845 () Bool)

(assert (=> d!1082297 (= c!637845 (is-Some!8394 lt!1290839))))

(declare-fun maxPrefixZipperSequenceV2!568 (LexerInterface!5480 List!39140 BalanceConc!23558 BalanceConc!23558) Option!8395)

(assert (=> d!1082297 (= lt!1290839 (maxPrefixZipperSequenceV2!568 thiss!25197 rules!3568 (seqFromList!4440 input!3129) (seqFromList!4440 input!3129)))))

(declare-fun lt!1290852 () Unit!57073)

(declare-fun lt!1290845 () Unit!57073)

(assert (=> d!1082297 (= lt!1290852 lt!1290845)))

(declare-fun lt!1290838 () List!39139)

(declare-fun lt!1290853 () List!39139)

(assert (=> d!1082297 (isSuffix!943 lt!1290838 (++!9714 lt!1290853 lt!1290838))))

(assert (=> d!1082297 (= lt!1290845 (lemmaConcatTwoListThenFSndIsSuffix!628 lt!1290853 lt!1290838))))

(assert (=> d!1082297 (= lt!1290838 (list!14558 (seqFromList!4440 input!3129)))))

(assert (=> d!1082297 (= lt!1290853 (list!14558 (BalanceConc!23559 Empty!11972)))))

(assert (=> d!1082297 (= (lexTailRecV2!1137 thiss!25197 rules!3568 (seqFromList!4440 input!3129) (BalanceConc!23559 Empty!11972) (seqFromList!4440 input!3129) (BalanceConc!23561 Empty!11973)) lt!1290828)))

(declare-fun b!3687714 () Bool)

(assert (=> b!3687714 (= e!2283616 (= (list!14558 (_2!22588 lt!1290828)) (list!14558 (_2!22588 (lexRec!782 thiss!25197 rules!3568 (seqFromList!4440 input!3129))))))))

(declare-fun lt!1290857 () tuple2!38908)

(declare-fun b!3687715 () Bool)

(assert (=> b!3687715 (= lt!1290857 (lexRec!782 thiss!25197 rules!3568 (_2!22595 (v!38344 lt!1290836))))))

(declare-fun prepend!1307 (BalanceConc!23560 Token!11148) BalanceConc!23560)

(assert (=> b!3687715 (= e!2283617 (tuple2!38909 (prepend!1307 (_1!22588 lt!1290857) (_1!22595 (v!38344 lt!1290836))) (_2!22588 lt!1290857)))))

(declare-fun b!3687716 () Bool)

(assert (=> b!3687716 (= e!2283614 (tuple2!38909 (BalanceConc!23561 Empty!11973) (seqFromList!4440 input!3129)))))

(declare-fun lt!1290841 () tuple2!38908)

(declare-fun b!3687717 () Bool)

(assert (=> b!3687717 (= lt!1290841 (lexRec!782 thiss!25197 rules!3568 (_2!22595 (v!38344 lt!1290826))))))

(assert (=> b!3687717 (= e!2283615 (tuple2!38909 (prepend!1307 (_1!22588 lt!1290841) (_1!22595 (v!38344 lt!1290826))) (_2!22588 lt!1290841)))))

(assert (= (and d!1082297 c!637845) b!3687712))

(assert (= (and d!1082297 (not c!637845)) b!3687716))

(assert (= (and b!3687712 c!637846) b!3687717))

(assert (= (and b!3687712 (not c!637846)) b!3687713))

(assert (= (and b!3687712 c!637847) b!3687715))

(assert (= (and b!3687712 (not c!637847)) b!3687711))

(assert (= (and d!1082297 res!1498680) b!3687714))

(declare-fun m!4199675 () Bool)

(assert (=> b!3687712 m!4199675))

(declare-fun m!4199677 () Bool)

(assert (=> b!3687712 m!4199677))

(declare-fun m!4199679 () Bool)

(assert (=> b!3687712 m!4199679))

(declare-fun m!4199681 () Bool)

(assert (=> b!3687712 m!4199681))

(declare-fun m!4199683 () Bool)

(assert (=> b!3687712 m!4199683))

(declare-fun m!4199685 () Bool)

(assert (=> b!3687712 m!4199685))

(assert (=> b!3687712 m!4198981))

(declare-fun m!4199687 () Bool)

(assert (=> b!3687712 m!4199687))

(declare-fun m!4199689 () Bool)

(assert (=> b!3687712 m!4199689))

(declare-fun m!4199691 () Bool)

(assert (=> b!3687712 m!4199691))

(declare-fun m!4199693 () Bool)

(assert (=> b!3687712 m!4199693))

(declare-fun m!4199695 () Bool)

(assert (=> b!3687712 m!4199695))

(declare-fun m!4199697 () Bool)

(assert (=> b!3687712 m!4199697))

(assert (=> b!3687712 m!4199693))

(declare-fun m!4199699 () Bool)

(assert (=> b!3687712 m!4199699))

(assert (=> b!3687712 m!4198981))

(assert (=> b!3687712 m!4199697))

(declare-fun m!4199701 () Bool)

(assert (=> b!3687712 m!4199701))

(declare-fun m!4199703 () Bool)

(assert (=> b!3687712 m!4199703))

(declare-fun m!4199705 () Bool)

(assert (=> b!3687712 m!4199705))

(declare-fun m!4199707 () Bool)

(assert (=> b!3687712 m!4199707))

(assert (=> b!3687712 m!4199697))

(declare-fun m!4199709 () Bool)

(assert (=> b!3687712 m!4199709))

(declare-fun m!4199711 () Bool)

(assert (=> b!3687712 m!4199711))

(declare-fun m!4199713 () Bool)

(assert (=> b!3687712 m!4199713))

(declare-fun m!4199715 () Bool)

(assert (=> b!3687712 m!4199715))

(assert (=> b!3687712 m!4198981))

(declare-fun m!4199717 () Bool)

(assert (=> b!3687712 m!4199717))

(declare-fun m!4199719 () Bool)

(assert (=> b!3687712 m!4199719))

(declare-fun m!4199721 () Bool)

(assert (=> b!3687712 m!4199721))

(assert (=> b!3687712 m!4199675))

(declare-fun m!4199723 () Bool)

(assert (=> b!3687712 m!4199723))

(assert (=> b!3687712 m!4199677))

(declare-fun m!4199725 () Bool)

(assert (=> b!3687712 m!4199725))

(assert (=> b!3687712 m!4199695))

(declare-fun m!4199727 () Bool)

(assert (=> b!3687712 m!4199727))

(declare-fun m!4199729 () Bool)

(assert (=> b!3687712 m!4199729))

(assert (=> b!3687712 m!4199713))

(assert (=> b!3687712 m!4199679))

(declare-fun m!4199731 () Bool)

(assert (=> b!3687712 m!4199731))

(declare-fun m!4199733 () Bool)

(assert (=> b!3687712 m!4199733))

(assert (=> b!3687712 m!4199693))

(assert (=> b!3687712 m!4199705))

(assert (=> b!3687712 m!4199691))

(assert (=> b!3687712 m!4199699))

(declare-fun m!4199735 () Bool)

(assert (=> b!3687712 m!4199735))

(assert (=> b!3687712 m!4199719))

(declare-fun m!4199737 () Bool)

(assert (=> b!3687712 m!4199737))

(assert (=> b!3687712 m!4199731))

(declare-fun m!4199739 () Bool)

(assert (=> b!3687712 m!4199739))

(declare-fun m!4199741 () Bool)

(assert (=> b!3687714 m!4199741))

(assert (=> b!3687714 m!4198981))

(assert (=> b!3687714 m!4199717))

(declare-fun m!4199743 () Bool)

(assert (=> b!3687714 m!4199743))

(declare-fun m!4199745 () Bool)

(assert (=> b!3687717 m!4199745))

(declare-fun m!4199747 () Bool)

(assert (=> b!3687717 m!4199747))

(declare-fun m!4199749 () Bool)

(assert (=> d!1082297 m!4199749))

(declare-fun m!4199751 () Bool)

(assert (=> d!1082297 m!4199751))

(assert (=> d!1082297 m!4199691))

(assert (=> d!1082297 m!4199751))

(declare-fun m!4199753 () Bool)

(assert (=> d!1082297 m!4199753))

(declare-fun m!4199755 () Bool)

(assert (=> d!1082297 m!4199755))

(assert (=> d!1082297 m!4198981))

(assert (=> d!1082297 m!4199179))

(declare-fun m!4199757 () Bool)

(assert (=> d!1082297 m!4199757))

(assert (=> d!1082297 m!4198981))

(assert (=> d!1082297 m!4199717))

(assert (=> d!1082297 m!4198981))

(assert (=> d!1082297 m!4198981))

(declare-fun m!4199759 () Bool)

(assert (=> d!1082297 m!4199759))

(declare-fun m!4199761 () Bool)

(assert (=> b!3687715 m!4199761))

(declare-fun m!4199763 () Bool)

(assert (=> b!3687715 m!4199763))

(assert (=> d!1082119 d!1082297))

(declare-fun d!1082309 () Bool)

(declare-fun c!637850 () Bool)

(assert (=> d!1082309 (= c!637850 (is-Nil!39015 lt!1290615))))

(declare-fun e!2283620 () (Set C!21486))

(assert (=> d!1082309 (= (content!5650 lt!1290615) e!2283620)))

(declare-fun b!3687722 () Bool)

(assert (=> b!3687722 (= e!2283620 (as set.empty (Set C!21486)))))

(declare-fun b!3687723 () Bool)

(assert (=> b!3687723 (= e!2283620 (set.union (set.insert (h!44435 lt!1290615) (as set.empty (Set C!21486))) (content!5650 (t!301164 lt!1290615))))))

(assert (= (and d!1082309 c!637850) b!3687722))

(assert (= (and d!1082309 (not c!637850)) b!3687723))

(declare-fun m!4199765 () Bool)

(assert (=> b!3687723 m!4199765))

(declare-fun m!4199767 () Bool)

(assert (=> b!3687723 m!4199767))

(assert (=> d!1082113 d!1082309))

(declare-fun d!1082311 () Bool)

(declare-fun c!637851 () Bool)

(assert (=> d!1082311 (= c!637851 (is-Nil!39015 input!3129))))

(declare-fun e!2283621 () (Set C!21486))

(assert (=> d!1082311 (= (content!5650 input!3129) e!2283621)))

(declare-fun b!3687724 () Bool)

(assert (=> b!3687724 (= e!2283621 (as set.empty (Set C!21486)))))

(declare-fun b!3687725 () Bool)

(assert (=> b!3687725 (= e!2283621 (set.union (set.insert (h!44435 input!3129) (as set.empty (Set C!21486))) (content!5650 (t!301164 input!3129))))))

(assert (= (and d!1082311 c!637851) b!3687724))

(assert (= (and d!1082311 (not c!637851)) b!3687725))

(declare-fun m!4199769 () Bool)

(assert (=> b!3687725 m!4199769))

(assert (=> b!3687725 m!4199631))

(assert (=> d!1082113 d!1082311))

(declare-fun d!1082313 () Bool)

(declare-fun c!637852 () Bool)

(assert (=> d!1082313 (= c!637852 (is-Nil!39015 suffix!1448))))

(declare-fun e!2283622 () (Set C!21486))

(assert (=> d!1082313 (= (content!5650 suffix!1448) e!2283622)))

(declare-fun b!3687726 () Bool)

(assert (=> b!3687726 (= e!2283622 (as set.empty (Set C!21486)))))

(declare-fun b!3687727 () Bool)

(assert (=> b!3687727 (= e!2283622 (set.union (set.insert (h!44435 suffix!1448) (as set.empty (Set C!21486))) (content!5650 (t!301164 suffix!1448))))))

(assert (= (and d!1082313 c!637852) b!3687726))

(assert (= (and d!1082313 (not c!637852)) b!3687727))

(declare-fun m!4199771 () Bool)

(assert (=> b!3687727 m!4199771))

(declare-fun m!4199773 () Bool)

(assert (=> b!3687727 m!4199773))

(assert (=> d!1082113 d!1082313))

(assert (=> d!1082091 d!1082095))

(assert (=> d!1082091 d!1082109))

(declare-fun d!1082315 () Bool)

(assert (=> d!1082315 (isPrefix!3244 lt!1290561 (++!9714 lt!1290561 (_2!22589 lt!1290560)))))

(assert (=> d!1082315 true))

(declare-fun _$46!1484 () Unit!57073)

(assert (=> d!1082315 (= (choose!22066 lt!1290561 (_2!22589 lt!1290560)) _$46!1484)))

(declare-fun bs!573951 () Bool)

(assert (= bs!573951 d!1082315))

(assert (=> bs!573951 m!4198985))

(assert (=> bs!573951 m!4198985))

(assert (=> bs!573951 m!4198987))

(assert (=> d!1082091 d!1082315))

(assert (=> b!3687215 d!1082281))

(declare-fun d!1082317 () Bool)

(assert (=> d!1082317 (= (head!7955 (++!9714 input!3129 suffix!1448)) (h!44435 (++!9714 input!3129 suffix!1448)))))

(assert (=> b!3687215 d!1082317))

(declare-fun d!1082319 () Bool)

(assert (=> d!1082319 (= (list!14558 lt!1290607) (list!14563 (c!637736 lt!1290607)))))

(declare-fun bs!573952 () Bool)

(assert (= bs!573952 d!1082319))

(declare-fun m!4199775 () Bool)

(assert (=> bs!573952 m!4199775))

(assert (=> d!1082099 d!1082319))

(declare-fun d!1082321 () Bool)

(assert (=> d!1082321 (= (list!14559 (_1!22588 lt!1290621)) (list!14562 (c!637737 (_1!22588 lt!1290621))))))

(declare-fun bs!573953 () Bool)

(assert (= bs!573953 d!1082321))

(declare-fun m!4199777 () Bool)

(assert (=> bs!573953 m!4199777))

(assert (=> b!3687246 d!1082321))

(assert (=> b!3687246 d!1082249))

(assert (=> b!3687246 d!1082251))

(declare-fun d!1082323 () Bool)

(declare-fun lt!1290859 () Bool)

(assert (=> d!1082323 (= lt!1290859 (isEmpty!23218 (list!14559 (_1!22588 lt!1290621))))))

(assert (=> d!1082323 (= lt!1290859 (isEmpty!23219 (c!637737 (_1!22588 lt!1290621))))))

(assert (=> d!1082323 (= (isEmpty!23214 (_1!22588 lt!1290621)) lt!1290859)))

(declare-fun bs!573954 () Bool)

(assert (= bs!573954 d!1082323))

(assert (=> bs!573954 m!4199189))

(assert (=> bs!573954 m!4199189))

(declare-fun m!4199779 () Bool)

(assert (=> bs!573954 m!4199779))

(declare-fun m!4199781 () Bool)

(assert (=> bs!573954 m!4199781))

(assert (=> b!3687244 d!1082323))

(declare-fun d!1082325 () Bool)

(assert (=> d!1082325 (= (isEmpty!23217 lt!1290562) (not (is-Some!8392 lt!1290562)))))

(assert (=> d!1082101 d!1082325))

(declare-fun d!1082327 () Bool)

(declare-fun c!637853 () Bool)

(assert (=> d!1082327 (= c!637853 (is-Nil!39015 lt!1290611))))

(declare-fun e!2283623 () (Set C!21486))

(assert (=> d!1082327 (= (content!5650 lt!1290611) e!2283623)))

(declare-fun b!3687728 () Bool)

(assert (=> b!3687728 (= e!2283623 (as set.empty (Set C!21486)))))

(declare-fun b!3687729 () Bool)

(assert (=> b!3687729 (= e!2283623 (set.union (set.insert (h!44435 lt!1290611) (as set.empty (Set C!21486))) (content!5650 (t!301164 lt!1290611))))))

(assert (= (and d!1082327 c!637853) b!3687728))

(assert (= (and d!1082327 (not c!637853)) b!3687729))

(declare-fun m!4199783 () Bool)

(assert (=> b!3687729 m!4199783))

(declare-fun m!4199785 () Bool)

(assert (=> b!3687729 m!4199785))

(assert (=> d!1082109 d!1082327))

(declare-fun d!1082329 () Bool)

(declare-fun c!637854 () Bool)

(assert (=> d!1082329 (= c!637854 (is-Nil!39015 lt!1290561))))

(declare-fun e!2283624 () (Set C!21486))

(assert (=> d!1082329 (= (content!5650 lt!1290561) e!2283624)))

(declare-fun b!3687730 () Bool)

(assert (=> b!3687730 (= e!2283624 (as set.empty (Set C!21486)))))

(declare-fun b!3687731 () Bool)

(assert (=> b!3687731 (= e!2283624 (set.union (set.insert (h!44435 lt!1290561) (as set.empty (Set C!21486))) (content!5650 (t!301164 lt!1290561))))))

(assert (= (and d!1082329 c!637854) b!3687730))

(assert (= (and d!1082329 (not c!637854)) b!3687731))

(declare-fun m!4199787 () Bool)

(assert (=> b!3687731 m!4199787))

(assert (=> b!3687731 m!4199549))

(assert (=> d!1082109 d!1082329))

(declare-fun d!1082331 () Bool)

(declare-fun c!637855 () Bool)

(assert (=> d!1082331 (= c!637855 (is-Nil!39015 (_2!22589 lt!1290560)))))

(declare-fun e!2283625 () (Set C!21486))

(assert (=> d!1082331 (= (content!5650 (_2!22589 lt!1290560)) e!2283625)))

(declare-fun b!3687732 () Bool)

(assert (=> b!3687732 (= e!2283625 (as set.empty (Set C!21486)))))

(declare-fun b!3687733 () Bool)

(assert (=> b!3687733 (= e!2283625 (set.union (set.insert (h!44435 (_2!22589 lt!1290560)) (as set.empty (Set C!21486))) (content!5650 (t!301164 (_2!22589 lt!1290560)))))))

(assert (= (and d!1082331 c!637855) b!3687732))

(assert (= (and d!1082331 (not c!637855)) b!3687733))

(declare-fun m!4199789 () Bool)

(assert (=> b!3687733 m!4199789))

(declare-fun m!4199791 () Bool)

(assert (=> b!3687733 m!4199791))

(assert (=> d!1082109 d!1082331))

(declare-fun b!3687734 () Bool)

(declare-fun e!2283626 () Bool)

(declare-fun tp!1120781 () Bool)

(assert (=> b!3687734 (= e!2283626 (and tp_is_empty!18383 tp!1120781))))

(assert (=> b!3687270 (= tp!1120731 e!2283626)))

(assert (= (and b!3687270 (is-Cons!39015 (t!301164 (t!301164 suffix!1448)))) b!3687734))

(declare-fun b!3687736 () Bool)

(declare-fun e!2283627 () Bool)

(declare-fun tp!1120783 () Bool)

(declare-fun tp!1120786 () Bool)

(assert (=> b!3687736 (= e!2283627 (and tp!1120783 tp!1120786))))

(declare-fun b!3687738 () Bool)

(declare-fun tp!1120785 () Bool)

(declare-fun tp!1120782 () Bool)

(assert (=> b!3687738 (= e!2283627 (and tp!1120785 tp!1120782))))

(declare-fun b!3687735 () Bool)

(assert (=> b!3687735 (= e!2283627 tp_is_empty!18383)))

(declare-fun b!3687737 () Bool)

(declare-fun tp!1120784 () Bool)

(assert (=> b!3687737 (= e!2283627 tp!1120784)))

(assert (=> b!3687264 (= tp!1120726 e!2283627)))

(assert (= (and b!3687264 (is-ElementMatch!10650 (reg!10979 (regex!5891 (h!44436 rules!3568))))) b!3687735))

(assert (= (and b!3687264 (is-Concat!16772 (reg!10979 (regex!5891 (h!44436 rules!3568))))) b!3687736))

(assert (= (and b!3687264 (is-Star!10650 (reg!10979 (regex!5891 (h!44436 rules!3568))))) b!3687737))

(assert (= (and b!3687264 (is-Union!10650 (reg!10979 (regex!5891 (h!44436 rules!3568))))) b!3687738))

(declare-fun tp!1120794 () Bool)

(declare-fun tp!1120793 () Bool)

(declare-fun e!2283632 () Bool)

(declare-fun b!3687747 () Bool)

(assert (=> b!3687747 (= e!2283632 (and (inv!52485 (left!30432 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) tp!1120794 (inv!52485 (right!30762 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) tp!1120793))))

(declare-fun b!3687749 () Bool)

(declare-fun e!2283633 () Bool)

(declare-fun tp!1120795 () Bool)

(assert (=> b!3687749 (= e!2283633 tp!1120795)))

(declare-fun b!3687748 () Bool)

(declare-fun inv!52491 (IArray!23949) Bool)

(assert (=> b!3687748 (= e!2283632 (and (inv!52491 (xs!15174 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) e!2283633))))

(assert (=> b!3687213 (= tp!1120713 (and (inv!52485 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559))))))) e!2283632))))

(assert (= (and b!3687213 (is-Node!11972 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) b!3687747))

(assert (= b!3687748 b!3687749))

(assert (= (and b!3687213 (is-Leaf!18529 (c!637736 (dynLambda!17088 (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))) (value!188355 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) b!3687748))

(declare-fun m!4199793 () Bool)

(assert (=> b!3687747 m!4199793))

(declare-fun m!4199795 () Bool)

(assert (=> b!3687747 m!4199795))

(declare-fun m!4199797 () Bool)

(assert (=> b!3687748 m!4199797))

(assert (=> b!3687213 m!4199121))

(declare-fun b!3687751 () Bool)

(declare-fun e!2283634 () Bool)

(declare-fun tp!1120797 () Bool)

(declare-fun tp!1120800 () Bool)

(assert (=> b!3687751 (= e!2283634 (and tp!1120797 tp!1120800))))

(declare-fun b!3687753 () Bool)

(declare-fun tp!1120799 () Bool)

(declare-fun tp!1120796 () Bool)

(assert (=> b!3687753 (= e!2283634 (and tp!1120799 tp!1120796))))

(declare-fun b!3687750 () Bool)

(assert (=> b!3687750 (= e!2283634 tp_is_empty!18383)))

(declare-fun b!3687752 () Bool)

(declare-fun tp!1120798 () Bool)

(assert (=> b!3687752 (= e!2283634 tp!1120798)))

(assert (=> b!3687265 (= tp!1120727 e!2283634)))

(assert (= (and b!3687265 (is-ElementMatch!10650 (regOne!21813 (regex!5891 (h!44436 rules!3568))))) b!3687750))

(assert (= (and b!3687265 (is-Concat!16772 (regOne!21813 (regex!5891 (h!44436 rules!3568))))) b!3687751))

(assert (= (and b!3687265 (is-Star!10650 (regOne!21813 (regex!5891 (h!44436 rules!3568))))) b!3687752))

(assert (= (and b!3687265 (is-Union!10650 (regOne!21813 (regex!5891 (h!44436 rules!3568))))) b!3687753))

(declare-fun b!3687755 () Bool)

(declare-fun e!2283635 () Bool)

(declare-fun tp!1120802 () Bool)

(declare-fun tp!1120805 () Bool)

(assert (=> b!3687755 (= e!2283635 (and tp!1120802 tp!1120805))))

(declare-fun b!3687757 () Bool)

(declare-fun tp!1120804 () Bool)

(declare-fun tp!1120801 () Bool)

(assert (=> b!3687757 (= e!2283635 (and tp!1120804 tp!1120801))))

(declare-fun b!3687754 () Bool)

(assert (=> b!3687754 (= e!2283635 tp_is_empty!18383)))

(declare-fun b!3687756 () Bool)

(declare-fun tp!1120803 () Bool)

(assert (=> b!3687756 (= e!2283635 tp!1120803)))

(assert (=> b!3687265 (= tp!1120724 e!2283635)))

(assert (= (and b!3687265 (is-ElementMatch!10650 (regTwo!21813 (regex!5891 (h!44436 rules!3568))))) b!3687754))

(assert (= (and b!3687265 (is-Concat!16772 (regTwo!21813 (regex!5891 (h!44436 rules!3568))))) b!3687755))

(assert (= (and b!3687265 (is-Star!10650 (regTwo!21813 (regex!5891 (h!44436 rules!3568))))) b!3687756))

(assert (= (and b!3687265 (is-Union!10650 (regTwo!21813 (regex!5891 (h!44436 rules!3568))))) b!3687757))

(declare-fun b!3687759 () Bool)

(declare-fun e!2283636 () Bool)

(declare-fun tp!1120807 () Bool)

(declare-fun tp!1120810 () Bool)

(assert (=> b!3687759 (= e!2283636 (and tp!1120807 tp!1120810))))

(declare-fun b!3687761 () Bool)

(declare-fun tp!1120809 () Bool)

(declare-fun tp!1120806 () Bool)

(assert (=> b!3687761 (= e!2283636 (and tp!1120809 tp!1120806))))

(declare-fun b!3687758 () Bool)

(assert (=> b!3687758 (= e!2283636 tp_is_empty!18383)))

(declare-fun b!3687760 () Bool)

(declare-fun tp!1120808 () Bool)

(assert (=> b!3687760 (= e!2283636 tp!1120808)))

(assert (=> b!3687263 (= tp!1120725 e!2283636)))

(assert (= (and b!3687263 (is-ElementMatch!10650 (regOne!21812 (regex!5891 (h!44436 rules!3568))))) b!3687758))

(assert (= (and b!3687263 (is-Concat!16772 (regOne!21812 (regex!5891 (h!44436 rules!3568))))) b!3687759))

(assert (= (and b!3687263 (is-Star!10650 (regOne!21812 (regex!5891 (h!44436 rules!3568))))) b!3687760))

(assert (= (and b!3687263 (is-Union!10650 (regOne!21812 (regex!5891 (h!44436 rules!3568))))) b!3687761))

(declare-fun b!3687763 () Bool)

(declare-fun e!2283637 () Bool)

(declare-fun tp!1120812 () Bool)

(declare-fun tp!1120815 () Bool)

(assert (=> b!3687763 (= e!2283637 (and tp!1120812 tp!1120815))))

(declare-fun b!3687765 () Bool)

(declare-fun tp!1120814 () Bool)

(declare-fun tp!1120811 () Bool)

(assert (=> b!3687765 (= e!2283637 (and tp!1120814 tp!1120811))))

(declare-fun b!3687762 () Bool)

(assert (=> b!3687762 (= e!2283637 tp_is_empty!18383)))

(declare-fun b!3687764 () Bool)

(declare-fun tp!1120813 () Bool)

(assert (=> b!3687764 (= e!2283637 tp!1120813)))

(assert (=> b!3687263 (= tp!1120728 e!2283637)))

(assert (= (and b!3687263 (is-ElementMatch!10650 (regTwo!21812 (regex!5891 (h!44436 rules!3568))))) b!3687762))

(assert (= (and b!3687263 (is-Concat!16772 (regTwo!21812 (regex!5891 (h!44436 rules!3568))))) b!3687763))

(assert (= (and b!3687263 (is-Star!10650 (regTwo!21812 (regex!5891 (h!44436 rules!3568))))) b!3687764))

(assert (= (and b!3687263 (is-Union!10650 (regTwo!21812 (regex!5891 (h!44436 rules!3568))))) b!3687765))

(declare-fun b!3687768 () Bool)

(declare-fun b_free!97841 () Bool)

(declare-fun b_next!98545 () Bool)

(assert (=> b!3687768 (= b_free!97841 (not b_next!98545))))

(declare-fun tb!213777 () Bool)

(declare-fun t!301197 () Bool)

(assert (=> (and b!3687768 (= (toValue!8203 (transformation!5891 (h!44436 (t!301165 (t!301165 rules!3568))))) (toValue!8203 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))) t!301197) tb!213777))

(declare-fun result!260210 () Bool)

(assert (= result!260210 result!260202))

(assert (=> d!1082273 t!301197))

(declare-fun tp!1120817 () Bool)

(declare-fun b_and!275563 () Bool)

(assert (=> b!3687768 (= tp!1120817 (and (=> t!301197 result!260210) b_and!275563))))

(declare-fun b_free!97843 () Bool)

(declare-fun b_next!98547 () Bool)

(assert (=> b!3687768 (= b_free!97843 (not b_next!98547))))

(declare-fun tb!213779 () Bool)

(declare-fun t!301199 () Bool)

(assert (=> (and b!3687768 (= (toChars!8062 (transformation!5891 (h!44436 (t!301165 (t!301165 rules!3568))))) (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559))))))) t!301199) tb!213779))

(declare-fun result!260212 () Bool)

(assert (= result!260212 result!260170))

(assert (=> d!1082099 t!301199))

(declare-fun t!301201 () Bool)

(declare-fun tb!213781 () Bool)

(assert (=> (and b!3687768 (= (toChars!8062 (transformation!5891 (h!44436 (t!301165 (t!301165 rules!3568))))) (toChars!8062 (transformation!5891 (rule!8735 (_1!22589 (get!12938 lt!1290592)))))) t!301201) tb!213781))

(declare-fun result!260214 () Bool)

(assert (= result!260214 result!260194))

(assert (=> d!1082189 t!301201))

(declare-fun tp!1120816 () Bool)

(declare-fun b_and!275565 () Bool)

(assert (=> b!3687768 (= tp!1120816 (and (=> t!301199 result!260212) (=> t!301201 result!260214) b_and!275565))))

(declare-fun e!2283640 () Bool)

(assert (=> b!3687768 (= e!2283640 (and tp!1120817 tp!1120816))))

(declare-fun tp!1120818 () Bool)

(declare-fun b!3687767 () Bool)

(declare-fun e!2283639 () Bool)

(assert (=> b!3687767 (= e!2283639 (and tp!1120818 (inv!52480 (tag!6703 (h!44436 (t!301165 (t!301165 rules!3568))))) (inv!52483 (transformation!5891 (h!44436 (t!301165 (t!301165 rules!3568))))) e!2283640))))

(declare-fun b!3687766 () Bool)

(declare-fun e!2283641 () Bool)

(declare-fun tp!1120819 () Bool)

(assert (=> b!3687766 (= e!2283641 (and e!2283639 tp!1120819))))

(assert (=> b!3687280 (= tp!1120744 e!2283641)))

(assert (= b!3687767 b!3687768))

(assert (= b!3687766 b!3687767))

(assert (= (and b!3687280 (is-Cons!39016 (t!301165 (t!301165 rules!3568)))) b!3687766))

(declare-fun m!4199799 () Bool)

(assert (=> b!3687767 m!4199799))

(declare-fun m!4199801 () Bool)

(assert (=> b!3687767 m!4199801))

(declare-fun b!3687769 () Bool)

(declare-fun e!2283642 () Bool)

(declare-fun tp!1120820 () Bool)

(assert (=> b!3687769 (= e!2283642 (and tp_is_empty!18383 tp!1120820))))

(assert (=> b!3687271 (= tp!1120732 e!2283642)))

(assert (= (and b!3687271 (is-Cons!39015 (t!301164 (t!301164 input!3129)))) b!3687769))

(declare-fun b!3687771 () Bool)

(declare-fun e!2283643 () Bool)

(declare-fun tp!1120822 () Bool)

(declare-fun tp!1120825 () Bool)

(assert (=> b!3687771 (= e!2283643 (and tp!1120822 tp!1120825))))

(declare-fun b!3687773 () Bool)

(declare-fun tp!1120824 () Bool)

(declare-fun tp!1120821 () Bool)

(assert (=> b!3687773 (= e!2283643 (and tp!1120824 tp!1120821))))

(declare-fun b!3687770 () Bool)

(assert (=> b!3687770 (= e!2283643 tp_is_empty!18383)))

(declare-fun b!3687772 () Bool)

(declare-fun tp!1120823 () Bool)

(assert (=> b!3687772 (= e!2283643 tp!1120823)))

(assert (=> b!3687281 (= tp!1120743 e!2283643)))

(assert (= (and b!3687281 (is-ElementMatch!10650 (regex!5891 (h!44436 (t!301165 rules!3568))))) b!3687770))

(assert (= (and b!3687281 (is-Concat!16772 (regex!5891 (h!44436 (t!301165 rules!3568))))) b!3687771))

(assert (= (and b!3687281 (is-Star!10650 (regex!5891 (h!44436 (t!301165 rules!3568))))) b!3687772))

(assert (= (and b!3687281 (is-Union!10650 (regex!5891 (h!44436 (t!301165 rules!3568))))) b!3687773))

(declare-fun b_lambda!109473 () Bool)

(assert (= b_lambda!109463 (or (and b!3687127 b_free!97827 (= (toChars!8062 (transformation!5891 (h!44436 rules!3568))) (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) (and b!3687282 b_free!97835 (= (toChars!8062 (transformation!5891 (h!44436 (t!301165 rules!3568)))) (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) (and b!3687768 b_free!97843 (= (toChars!8062 (transformation!5891 (h!44436 (t!301165 (t!301165 rules!3568))))) (toChars!8062 (transformation!5891 (rule!8735 (head!7953 (list!14559 (_1!22588 lt!1290559)))))))) b_lambda!109473)))

(push 1)

(assert (not d!1082187))

(assert (not b!3687731))

(assert (not d!1082249))

(assert (not b!3687563))

(assert (not d!1082201))

(assert (not b!3687761))

(assert (not b!3687444))

(assert (not d!1082291))

(assert (not b!3687617))

(assert (not b!3687430))

(assert (not b_lambda!109471))

(assert (not b!3687569))

(assert (not d!1082295))

(assert (not b!3687773))

(assert (not b!3687532))

(assert (not d!1082185))

(assert (not b!3687429))

(assert (not b!3687765))

(assert (not b!3687595))

(assert (not b!3687598))

(assert (not b!3687677))

(assert (not b!3687738))

(assert (not d!1082225))

(assert (not b_next!98539))

(assert (not b!3687672))

(assert (not b!3687772))

(assert (not b!3687574))

(assert (not b_lambda!109467))

(assert (not d!1082241))

(assert (not b!3687572))

(assert (not b!3687610))

(assert (not b!3687755))

(assert (not b!3687425))

(assert (not b_next!98547))

(assert (not d!1082219))

(assert (not b!3687560))

(assert (not b!3687734))

(assert (not b!3687717))

(assert (not b!3687619))

(assert (not d!1082193))

(assert (not b!3687593))

(assert (not b!3687605))

(assert (not b!3687540))

(assert (not d!1082235))

(assert b_and!275559)

(assert (not b!3687657))

(assert (not b!3687565))

(assert (not b!3687673))

(assert (not d!1082275))

(assert (not b!3687596))

(assert (not b!3687763))

(assert (not bm!266863))

(assert (not b!3687607))

(assert (not d!1082243))

(assert (not b_next!98529))

(assert (not b_next!98537))

(assert (not b!3687640))

(assert (not b!3687760))

(assert (not b_lambda!109473))

(assert (not b!3687538))

(assert (not b!3687597))

(assert (not b!3687757))

(assert (not d!1082199))

(assert (not b!3687729))

(assert (not b!3687767))

(assert (not d!1082197))

(assert (not d!1082269))

(assert (not b!3687661))

(assert (not b!3687549))

(assert b_and!275553)

(assert (not b!3687627))

(assert (not b!3687669))

(assert b_and!275551)

(assert (not b!3687714))

(assert (not b!3687733))

(assert (not d!1082251))

(assert (not b!3687764))

(assert (not b!3687531))

(assert (not d!1082155))

(assert (not b!3687642))

(assert (not b!3687725))

(assert (not b!3687668))

(assert (not b!3687766))

(assert (not b!3687752))

(assert (not b!3687621))

(assert (not b_next!98531))

(assert (not b_next!98545))

(assert (not b!3687562))

(assert (not b!3687736))

(assert (not b!3687753))

(assert (not d!1082247))

(assert (not b!3687609))

(assert (not b!3687759))

(assert (not b!3687594))

(assert (not b!3687600))

(assert (not b!3687655))

(assert (not tb!213765))

(assert (not d!1082289))

(assert (not b!3687603))

(assert (not d!1082315))

(assert (not b!3687747))

(assert (not b!3687620))

(assert (not d!1082253))

(assert (not b!3687769))

(assert (not b!3687748))

(assert (not b!3687567))

(assert (not b!3687749))

(assert (not d!1082233))

(assert (not b!3687473))

(assert (not b!3687723))

(assert (not d!1082263))

(assert (not b!3687771))

(assert (not b!3687715))

(assert (not b!3687676))

(assert (not d!1082297))

(assert (not b!3687566))

(assert (not d!1082277))

(assert (not tb!213773))

(assert (not b!3687443))

(assert (not b!3687654))

(assert (not b!3687629))

(assert (not b!3687570))

(assert (not b!3687536))

(assert (not b!3687432))

(assert (not b!3687727))

(assert (not b!3687756))

(assert (not b!3687427))

(assert tp_is_empty!18383)

(assert (not b!3687651))

(assert (not d!1082255))

(assert (not b!3687653))

(assert (not b!3687662))

(assert (not b!3687547))

(assert (not b!3687751))

(assert b_and!275563)

(assert (not b!3687712))

(assert (not b!3687561))

(assert b_and!275565)

(assert (not b!3687568))

(assert (not bm!266864))

(assert (not d!1082189))

(assert (not b!3687213))

(assert (not d!1082265))

(assert (not d!1082323))

(assert (not b!3687675))

(assert b_and!275561)

(assert (not b!3687534))

(assert (not b!3687626))

(assert (not b!3687641))

(assert (not b!3687737))

(assert (not d!1082319))

(assert (not b!3687599))

(assert (not b!3687671))

(assert (not d!1082321))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98539))

(assert (not b_next!98547))

(assert b_and!275559)

(assert (not b_next!98531))

(assert (not b_next!98545))

(assert b_and!275561)

(assert (not b_next!98529))

(assert (not b_next!98537))

(assert b_and!275553)

(assert b_and!275551)

(assert b_and!275563)

(assert b_and!275565)

(check-sat)

(pop 1)

