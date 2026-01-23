; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345734 () Bool)

(assert start!345734)

(declare-fun b!3682957 () Bool)

(declare-fun b_free!97621 () Bool)

(declare-fun b_next!98325 () Bool)

(assert (=> b!3682957 (= b_free!97621 (not b_next!98325))))

(declare-fun tp!1119450 () Bool)

(declare-fun b_and!275271 () Bool)

(assert (=> b!3682957 (= tp!1119450 b_and!275271)))

(declare-fun b_free!97623 () Bool)

(declare-fun b_next!98327 () Bool)

(assert (=> b!3682957 (= b_free!97623 (not b_next!98327))))

(declare-fun tp!1119451 () Bool)

(declare-fun b_and!275273 () Bool)

(assert (=> b!3682957 (= tp!1119451 b_and!275273)))

(declare-fun res!1496361 () Bool)

(declare-fun e!2280589 () Bool)

(assert (=> start!345734 (=> (not res!1496361) (not e!2280589))))

(declare-datatypes ((LexerInterface!5447 0))(
  ( (LexerInterfaceExt!5444 (__x!24393 Int)) (Lexer!5445) )
))
(declare-fun thiss!25197 () LexerInterface!5447)

(get-info :version)

(assert (=> start!345734 (= res!1496361 ((_ is Lexer!5445) thiss!25197))))

(assert (=> start!345734 e!2280589))

(assert (=> start!345734 true))

(declare-fun e!2280586 () Bool)

(assert (=> start!345734 e!2280586))

(declare-fun e!2280590 () Bool)

(assert (=> start!345734 e!2280590))

(declare-fun b!3682955 () Bool)

(declare-fun res!1496362 () Bool)

(assert (=> b!3682955 (=> (not res!1496362) (not e!2280589))))

(declare-datatypes ((List!38994 0))(
  ( (Nil!38870) (Cons!38870 (h!44290 (_ BitVec 16)) (t!300893 List!38994)) )
))
(declare-datatypes ((TokenValue!6088 0))(
  ( (FloatLiteralValue!12176 (text!43061 List!38994)) (TokenValueExt!6087 (__x!24394 Int)) (Broken!30440 (value!187387 List!38994)) (Object!6211) (End!6088) (Def!6088) (Underscore!6088) (Match!6088) (Else!6088) (Error!6088) (Case!6088) (If!6088) (Extends!6088) (Abstract!6088) (Class!6088) (Val!6088) (DelimiterValue!12176 (del!6148 List!38994)) (KeywordValue!6094 (value!187388 List!38994)) (CommentValue!12176 (value!187389 List!38994)) (WhitespaceValue!12176 (value!187390 List!38994)) (IndentationValue!6088 (value!187391 List!38994)) (String!43773) (Int32!6088) (Broken!30441 (value!187392 List!38994)) (Boolean!6089) (Unit!56963) (OperatorValue!6091 (op!6148 List!38994)) (IdentifierValue!12176 (value!187393 List!38994)) (IdentifierValue!12177 (value!187394 List!38994)) (WhitespaceValue!12177 (value!187395 List!38994)) (True!12176) (False!12176) (Broken!30442 (value!187396 List!38994)) (Broken!30443 (value!187397 List!38994)) (True!12177) (RightBrace!6088) (RightBracket!6088) (Colon!6088) (Null!6088) (Comma!6088) (LeftBracket!6088) (False!12177) (LeftBrace!6088) (ImaginaryLiteralValue!6088 (text!43062 List!38994)) (StringLiteralValue!18264 (value!187398 List!38994)) (EOFValue!6088 (value!187399 List!38994)) (IdentValue!6088 (value!187400 List!38994)) (DelimiterValue!12177 (value!187401 List!38994)) (DedentValue!6088 (value!187402 List!38994)) (NewLineValue!6088 (value!187403 List!38994)) (IntegerValue!18264 (value!187404 (_ BitVec 32)) (text!43063 List!38994)) (IntegerValue!18265 (value!187405 Int) (text!43064 List!38994)) (Times!6088) (Or!6088) (Equal!6088) (Minus!6088) (Broken!30444 (value!187406 List!38994)) (And!6088) (Div!6088) (LessEqual!6088) (Mod!6088) (Concat!16705) (Not!6088) (Plus!6088) (SpaceValue!6088 (value!187407 List!38994)) (IntegerValue!18266 (value!187408 Int) (text!43065 List!38994)) (StringLiteralValue!18265 (text!43066 List!38994)) (FloatLiteralValue!12177 (text!43067 List!38994)) (BytesLiteralValue!6088 (value!187409 List!38994)) (CommentValue!12177 (value!187410 List!38994)) (StringLiteralValue!18266 (value!187411 List!38994)) (ErrorTokenValue!6088 (msg!6149 List!38994)) )
))
(declare-datatypes ((C!21420 0))(
  ( (C!21421 (val!12758 Int)) )
))
(declare-datatypes ((List!38995 0))(
  ( (Nil!38871) (Cons!38871 (h!44291 C!21420) (t!300894 List!38995)) )
))
(declare-datatypes ((IArray!23817 0))(
  ( (IArray!23818 (innerList!11966 List!38995)) )
))
(declare-datatypes ((Regex!10617 0))(
  ( (ElementMatch!10617 (c!637109 C!21420)) (Concat!16706 (regOne!21746 Regex!10617) (regTwo!21746 Regex!10617)) (EmptyExpr!10617) (Star!10617 (reg!10946 Regex!10617)) (EmptyLang!10617) (Union!10617 (regOne!21747 Regex!10617) (regTwo!21747 Regex!10617)) )
))
(declare-datatypes ((Conc!11906 0))(
  ( (Node!11906 (left!30329 Conc!11906) (right!30659 Conc!11906) (csize!24042 Int) (cheight!12117 Int)) (Leaf!18446 (xs!15108 IArray!23817) (csize!24043 Int)) (Empty!11906) )
))
(declare-datatypes ((BalanceConc!23426 0))(
  ( (BalanceConc!23427 (c!637110 Conc!11906)) )
))
(declare-datatypes ((String!43774 0))(
  ( (String!43775 (value!187412 String)) )
))
(declare-datatypes ((TokenValueInjection!11604 0))(
  ( (TokenValueInjection!11605 (toValue!8158 Int) (toChars!8017 Int)) )
))
(declare-datatypes ((Rule!11516 0))(
  ( (Rule!11517 (regex!5858 Regex!10617) (tag!6664 String!43774) (isSeparator!5858 Bool) (transformation!5858 TokenValueInjection!11604)) )
))
(declare-datatypes ((List!38996 0))(
  ( (Nil!38872) (Cons!38872 (h!44292 Rule!11516) (t!300895 List!38996)) )
))
(declare-fun rules!3568 () List!38996)

(declare-fun isEmpty!23090 (List!38996) Bool)

(assert (=> b!3682955 (= res!1496362 (not (isEmpty!23090 rules!3568)))))

(declare-fun b!3682956 () Bool)

(declare-fun tp_is_empty!18317 () Bool)

(declare-fun tp!1119452 () Bool)

(assert (=> b!3682956 (= e!2280590 (and tp_is_empty!18317 tp!1119452))))

(declare-fun e!2280584 () Bool)

(assert (=> b!3682957 (= e!2280584 (and tp!1119450 tp!1119451))))

(declare-fun b!3682958 () Bool)

(declare-fun e!2280588 () Bool)

(declare-fun rulesValidInductive!2086 (LexerInterface!5447 List!38996) Bool)

(assert (=> b!3682958 (= e!2280588 (not (rulesValidInductive!2086 thiss!25197 rules!3568)))))

(declare-fun lt!1288314 () List!38995)

(declare-datatypes ((Token!11082 0))(
  ( (Token!11083 (value!187413 TokenValue!6088) (rule!8698 Rule!11516) (size!29719 Int) (originalCharacters!6572 List!38995)) )
))
(declare-datatypes ((List!38997 0))(
  ( (Nil!38873) (Cons!38873 (h!44293 Token!11082) (t!300896 List!38997)) )
))
(declare-datatypes ((IArray!23819 0))(
  ( (IArray!23820 (innerList!11967 List!38997)) )
))
(declare-datatypes ((Conc!11907 0))(
  ( (Node!11907 (left!30330 Conc!11907) (right!30660 Conc!11907) (csize!24044 Int) (cheight!12118 Int)) (Leaf!18447 (xs!15109 IArray!23819) (csize!24045 Int)) (Empty!11907) )
))
(declare-datatypes ((BalanceConc!23428 0))(
  ( (BalanceConc!23429 (c!637111 Conc!11907)) )
))
(declare-datatypes ((tuple2!38734 0))(
  ( (tuple2!38735 (_1!22501 BalanceConc!23428) (_2!22501 BalanceConc!23426)) )
))
(declare-fun lt!1288313 () tuple2!38734)

(declare-fun list!14456 (BalanceConc!23426) List!38995)

(declare-fun charsOf!3869 (Token!11082) BalanceConc!23426)

(declare-fun head!7910 (List!38997) Token!11082)

(declare-fun list!14457 (BalanceConc!23428) List!38997)

(assert (=> b!3682958 (= lt!1288314 (list!14456 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313))))))))

(declare-fun tp!1119448 () Bool)

(declare-fun e!2280585 () Bool)

(declare-fun b!3682959 () Bool)

(declare-fun inv!52356 (String!43774) Bool)

(declare-fun inv!52358 (TokenValueInjection!11604) Bool)

(assert (=> b!3682959 (= e!2280585 (and tp!1119448 (inv!52356 (tag!6664 (h!44292 rules!3568))) (inv!52358 (transformation!5858 (h!44292 rules!3568))) e!2280584))))

(declare-fun b!3682960 () Bool)

(declare-fun tp!1119449 () Bool)

(assert (=> b!3682960 (= e!2280586 (and e!2280585 tp!1119449))))

(declare-fun b!3682961 () Bool)

(assert (=> b!3682961 (= e!2280589 e!2280588)))

(declare-fun res!1496364 () Bool)

(assert (=> b!3682961 (=> (not res!1496364) (not e!2280588))))

(declare-fun isEmpty!23091 (BalanceConc!23428) Bool)

(assert (=> b!3682961 (= res!1496364 (not (isEmpty!23091 (_1!22501 lt!1288313))))))

(declare-fun input!3129 () List!38995)

(declare-fun lex!2588 (LexerInterface!5447 List!38996 BalanceConc!23426) tuple2!38734)

(declare-fun seqFromList!4407 (List!38995) BalanceConc!23426)

(assert (=> b!3682961 (= lt!1288313 (lex!2588 thiss!25197 rules!3568 (seqFromList!4407 input!3129)))))

(declare-fun b!3682962 () Bool)

(declare-fun res!1496363 () Bool)

(assert (=> b!3682962 (=> (not res!1496363) (not e!2280589))))

(declare-fun rulesInvariant!4844 (LexerInterface!5447 List!38996) Bool)

(assert (=> b!3682962 (= res!1496363 (rulesInvariant!4844 thiss!25197 rules!3568))))

(assert (= (and start!345734 res!1496361) b!3682955))

(assert (= (and b!3682955 res!1496362) b!3682962))

(assert (= (and b!3682962 res!1496363) b!3682961))

(assert (= (and b!3682961 res!1496364) b!3682958))

(assert (= b!3682959 b!3682957))

(assert (= b!3682960 b!3682959))

(assert (= (and start!345734 ((_ is Cons!38872) rules!3568)) b!3682960))

(assert (= (and start!345734 ((_ is Cons!38871) input!3129)) b!3682956))

(declare-fun m!4194057 () Bool)

(assert (=> b!3682961 m!4194057))

(declare-fun m!4194059 () Bool)

(assert (=> b!3682961 m!4194059))

(assert (=> b!3682961 m!4194059))

(declare-fun m!4194061 () Bool)

(assert (=> b!3682961 m!4194061))

(declare-fun m!4194063 () Bool)

(assert (=> b!3682959 m!4194063))

(declare-fun m!4194065 () Bool)

(assert (=> b!3682959 m!4194065))

(declare-fun m!4194067 () Bool)

(assert (=> b!3682955 m!4194067))

(declare-fun m!4194069 () Bool)

(assert (=> b!3682962 m!4194069))

(declare-fun m!4194071 () Bool)

(assert (=> b!3682958 m!4194071))

(declare-fun m!4194073 () Bool)

(assert (=> b!3682958 m!4194073))

(assert (=> b!3682958 m!4194071))

(assert (=> b!3682958 m!4194073))

(declare-fun m!4194075 () Bool)

(assert (=> b!3682958 m!4194075))

(assert (=> b!3682958 m!4194075))

(declare-fun m!4194077 () Bool)

(assert (=> b!3682958 m!4194077))

(declare-fun m!4194079 () Bool)

(assert (=> b!3682958 m!4194079))

(check-sat (not b!3682956) (not b!3682958) (not b!3682962) tp_is_empty!18317 (not b_next!98325) b_and!275273 (not b!3682959) b_and!275271 (not b_next!98327) (not b!3682955) (not b!3682960) (not b!3682961))
(check-sat b_and!275271 b_and!275273 (not b_next!98327) (not b_next!98325))
(get-model)

(declare-fun d!1081078 () Bool)

(assert (=> d!1081078 (= (inv!52356 (tag!6664 (h!44292 rules!3568))) (= (mod (str.len (value!187412 (tag!6664 (h!44292 rules!3568)))) 2) 0))))

(assert (=> b!3682959 d!1081078))

(declare-fun d!1081084 () Bool)

(declare-fun res!1496371 () Bool)

(declare-fun e!2280600 () Bool)

(assert (=> d!1081084 (=> (not res!1496371) (not e!2280600))))

(declare-fun semiInverseModEq!2501 (Int Int) Bool)

(assert (=> d!1081084 (= res!1496371 (semiInverseModEq!2501 (toChars!8017 (transformation!5858 (h!44292 rules!3568))) (toValue!8158 (transformation!5858 (h!44292 rules!3568)))))))

(assert (=> d!1081084 (= (inv!52358 (transformation!5858 (h!44292 rules!3568))) e!2280600)))

(declare-fun b!3682974 () Bool)

(declare-fun equivClasses!2400 (Int Int) Bool)

(assert (=> b!3682974 (= e!2280600 (equivClasses!2400 (toChars!8017 (transformation!5858 (h!44292 rules!3568))) (toValue!8158 (transformation!5858 (h!44292 rules!3568)))))))

(assert (= (and d!1081084 res!1496371) b!3682974))

(declare-fun m!4194093 () Bool)

(assert (=> d!1081084 m!4194093))

(declare-fun m!4194095 () Bool)

(assert (=> b!3682974 m!4194095))

(assert (=> b!3682959 d!1081084))

(declare-fun d!1081088 () Bool)

(declare-fun lt!1288322 () BalanceConc!23426)

(assert (=> d!1081088 (= (list!14456 lt!1288322) (originalCharacters!6572 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))

(declare-fun dynLambda!17047 (Int TokenValue!6088) BalanceConc!23426)

(assert (=> d!1081088 (= lt!1288322 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))))

(assert (=> d!1081088 (= (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313)))) lt!1288322)))

(declare-fun b_lambda!109405 () Bool)

(assert (=> (not b_lambda!109405) (not d!1081088)))

(declare-fun t!300900 () Bool)

(declare-fun tb!213651 () Bool)

(assert (=> (and b!3682957 (= (toChars!8017 (transformation!5858 (h!44292 rules!3568))) (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313))))))) t!300900) tb!213651))

(declare-fun b!3682979 () Bool)

(declare-fun e!2280603 () Bool)

(declare-fun tp!1119458 () Bool)

(declare-fun inv!52361 (Conc!11906) Bool)

(assert (=> b!3682979 (= e!2280603 (and (inv!52361 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))) tp!1119458))))

(declare-fun result!259950 () Bool)

(declare-fun inv!52362 (BalanceConc!23426) Bool)

(assert (=> tb!213651 (= result!259950 (and (inv!52362 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) e!2280603))))

(assert (= tb!213651 b!3682979))

(declare-fun m!4194097 () Bool)

(assert (=> b!3682979 m!4194097))

(declare-fun m!4194099 () Bool)

(assert (=> tb!213651 m!4194099))

(assert (=> d!1081088 t!300900))

(declare-fun b_and!275277 () Bool)

(assert (= b_and!275273 (and (=> t!300900 result!259950) b_and!275277)))

(declare-fun m!4194101 () Bool)

(assert (=> d!1081088 m!4194101))

(declare-fun m!4194103 () Bool)

(assert (=> d!1081088 m!4194103))

(assert (=> b!3682958 d!1081088))

(declare-fun d!1081090 () Bool)

(declare-fun list!14460 (Conc!11907) List!38997)

(assert (=> d!1081090 (= (list!14457 (_1!22501 lt!1288313)) (list!14460 (c!637111 (_1!22501 lt!1288313))))))

(declare-fun bs!573704 () Bool)

(assert (= bs!573704 d!1081090))

(declare-fun m!4194105 () Bool)

(assert (=> bs!573704 m!4194105))

(assert (=> b!3682958 d!1081090))

(declare-fun d!1081092 () Bool)

(declare-fun list!14461 (Conc!11906) List!38995)

(assert (=> d!1081092 (= (list!14456 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313))))) (list!14461 (c!637110 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))))

(declare-fun bs!573705 () Bool)

(assert (= bs!573705 d!1081092))

(declare-fun m!4194107 () Bool)

(assert (=> bs!573705 m!4194107))

(assert (=> b!3682958 d!1081092))

(declare-fun d!1081094 () Bool)

(assert (=> d!1081094 (= (head!7910 (list!14457 (_1!22501 lt!1288313))) (h!44293 (list!14457 (_1!22501 lt!1288313))))))

(assert (=> b!3682958 d!1081094))

(declare-fun d!1081096 () Bool)

(assert (=> d!1081096 true))

(declare-fun lt!1288332 () Bool)

(declare-fun lambda!124801 () Int)

(declare-fun forall!8159 (List!38996 Int) Bool)

(assert (=> d!1081096 (= lt!1288332 (forall!8159 rules!3568 lambda!124801))))

(declare-fun e!2280644 () Bool)

(assert (=> d!1081096 (= lt!1288332 e!2280644)))

(declare-fun res!1496393 () Bool)

(assert (=> d!1081096 (=> res!1496393 e!2280644)))

(assert (=> d!1081096 (= res!1496393 (not ((_ is Cons!38872) rules!3568)))))

(assert (=> d!1081096 (= (rulesValidInductive!2086 thiss!25197 rules!3568) lt!1288332)))

(declare-fun b!3683039 () Bool)

(declare-fun e!2280643 () Bool)

(assert (=> b!3683039 (= e!2280644 e!2280643)))

(declare-fun res!1496394 () Bool)

(assert (=> b!3683039 (=> (not res!1496394) (not e!2280643))))

(declare-fun ruleValid!2116 (LexerInterface!5447 Rule!11516) Bool)

(assert (=> b!3683039 (= res!1496394 (ruleValid!2116 thiss!25197 (h!44292 rules!3568)))))

(declare-fun b!3683040 () Bool)

(assert (=> b!3683040 (= e!2280643 (rulesValidInductive!2086 thiss!25197 (t!300895 rules!3568)))))

(assert (= (and d!1081096 (not res!1496393)) b!3683039))

(assert (= (and b!3683039 res!1496394) b!3683040))

(declare-fun m!4194151 () Bool)

(assert (=> d!1081096 m!4194151))

(declare-fun m!4194153 () Bool)

(assert (=> b!3683039 m!4194153))

(declare-fun m!4194155 () Bool)

(assert (=> b!3683040 m!4194155))

(assert (=> b!3682958 d!1081096))

(declare-fun d!1081112 () Bool)

(declare-fun lt!1288335 () Bool)

(declare-fun isEmpty!23094 (List!38997) Bool)

(assert (=> d!1081112 (= lt!1288335 (isEmpty!23094 (list!14457 (_1!22501 lt!1288313))))))

(declare-fun isEmpty!23095 (Conc!11907) Bool)

(assert (=> d!1081112 (= lt!1288335 (isEmpty!23095 (c!637111 (_1!22501 lt!1288313))))))

(assert (=> d!1081112 (= (isEmpty!23091 (_1!22501 lt!1288313)) lt!1288335)))

(declare-fun bs!573708 () Bool)

(assert (= bs!573708 d!1081112))

(assert (=> bs!573708 m!4194071))

(assert (=> bs!573708 m!4194071))

(declare-fun m!4194157 () Bool)

(assert (=> bs!573708 m!4194157))

(declare-fun m!4194159 () Bool)

(assert (=> bs!573708 m!4194159))

(assert (=> b!3682961 d!1081112))

(declare-fun d!1081114 () Bool)

(declare-fun e!2280653 () Bool)

(assert (=> d!1081114 e!2280653))

(declare-fun res!1496401 () Bool)

(assert (=> d!1081114 (=> (not res!1496401) (not e!2280653))))

(declare-fun e!2280651 () Bool)

(assert (=> d!1081114 (= res!1496401 e!2280651)))

(declare-fun c!637117 () Bool)

(declare-fun lt!1288338 () tuple2!38734)

(declare-fun size!29722 (BalanceConc!23428) Int)

(assert (=> d!1081114 (= c!637117 (> (size!29722 (_1!22501 lt!1288338)) 0))))

(declare-fun lexTailRecV2!1126 (LexerInterface!5447 List!38996 BalanceConc!23426 BalanceConc!23426 BalanceConc!23426 BalanceConc!23428) tuple2!38734)

(assert (=> d!1081114 (= lt!1288338 (lexTailRecV2!1126 thiss!25197 rules!3568 (seqFromList!4407 input!3129) (BalanceConc!23427 Empty!11906) (seqFromList!4407 input!3129) (BalanceConc!23429 Empty!11907)))))

(assert (=> d!1081114 (= (lex!2588 thiss!25197 rules!3568 (seqFromList!4407 input!3129)) lt!1288338)))

(declare-fun b!3683053 () Bool)

(assert (=> b!3683053 (= e!2280651 (= (_2!22501 lt!1288338) (seqFromList!4407 input!3129)))))

(declare-fun b!3683054 () Bool)

(declare-fun e!2280652 () Bool)

(assert (=> b!3683054 (= e!2280651 e!2280652)))

(declare-fun res!1496402 () Bool)

(declare-fun size!29723 (BalanceConc!23426) Int)

(assert (=> b!3683054 (= res!1496402 (< (size!29723 (_2!22501 lt!1288338)) (size!29723 (seqFromList!4407 input!3129))))))

(assert (=> b!3683054 (=> (not res!1496402) (not e!2280652))))

(declare-fun b!3683055 () Bool)

(assert (=> b!3683055 (= e!2280652 (not (isEmpty!23091 (_1!22501 lt!1288338))))))

(declare-fun b!3683056 () Bool)

(declare-fun res!1496403 () Bool)

(assert (=> b!3683056 (=> (not res!1496403) (not e!2280653))))

(declare-datatypes ((tuple2!38738 0))(
  ( (tuple2!38739 (_1!22503 List!38997) (_2!22503 List!38995)) )
))
(declare-fun lexList!1520 (LexerInterface!5447 List!38996 List!38995) tuple2!38738)

(assert (=> b!3683056 (= res!1496403 (= (list!14457 (_1!22501 lt!1288338)) (_1!22503 (lexList!1520 thiss!25197 rules!3568 (list!14456 (seqFromList!4407 input!3129))))))))

(declare-fun b!3683057 () Bool)

(assert (=> b!3683057 (= e!2280653 (= (list!14456 (_2!22501 lt!1288338)) (_2!22503 (lexList!1520 thiss!25197 rules!3568 (list!14456 (seqFromList!4407 input!3129))))))))

(assert (= (and d!1081114 c!637117) b!3683054))

(assert (= (and d!1081114 (not c!637117)) b!3683053))

(assert (= (and b!3683054 res!1496402) b!3683055))

(assert (= (and d!1081114 res!1496401) b!3683056))

(assert (= (and b!3683056 res!1496403) b!3683057))

(declare-fun m!4194161 () Bool)

(assert (=> b!3683056 m!4194161))

(assert (=> b!3683056 m!4194059))

(declare-fun m!4194163 () Bool)

(assert (=> b!3683056 m!4194163))

(assert (=> b!3683056 m!4194163))

(declare-fun m!4194165 () Bool)

(assert (=> b!3683056 m!4194165))

(declare-fun m!4194167 () Bool)

(assert (=> b!3683055 m!4194167))

(declare-fun m!4194169 () Bool)

(assert (=> d!1081114 m!4194169))

(assert (=> d!1081114 m!4194059))

(assert (=> d!1081114 m!4194059))

(declare-fun m!4194171 () Bool)

(assert (=> d!1081114 m!4194171))

(declare-fun m!4194173 () Bool)

(assert (=> b!3683054 m!4194173))

(assert (=> b!3683054 m!4194059))

(declare-fun m!4194175 () Bool)

(assert (=> b!3683054 m!4194175))

(declare-fun m!4194177 () Bool)

(assert (=> b!3683057 m!4194177))

(assert (=> b!3683057 m!4194059))

(assert (=> b!3683057 m!4194163))

(assert (=> b!3683057 m!4194163))

(assert (=> b!3683057 m!4194165))

(assert (=> b!3682961 d!1081114))

(declare-fun d!1081116 () Bool)

(declare-fun fromListB!2037 (List!38995) BalanceConc!23426)

(assert (=> d!1081116 (= (seqFromList!4407 input!3129) (fromListB!2037 input!3129))))

(declare-fun bs!573709 () Bool)

(assert (= bs!573709 d!1081116))

(declare-fun m!4194179 () Bool)

(assert (=> bs!573709 m!4194179))

(assert (=> b!3682961 d!1081116))

(declare-fun d!1081118 () Bool)

(declare-fun res!1496406 () Bool)

(declare-fun e!2280656 () Bool)

(assert (=> d!1081118 (=> (not res!1496406) (not e!2280656))))

(declare-fun rulesValid!2258 (LexerInterface!5447 List!38996) Bool)

(assert (=> d!1081118 (= res!1496406 (rulesValid!2258 thiss!25197 rules!3568))))

(assert (=> d!1081118 (= (rulesInvariant!4844 thiss!25197 rules!3568) e!2280656)))

(declare-fun b!3683060 () Bool)

(declare-datatypes ((List!38999 0))(
  ( (Nil!38875) (Cons!38875 (h!44295 String!43774) (t!300906 List!38999)) )
))
(declare-fun noDuplicateTag!2254 (LexerInterface!5447 List!38996 List!38999) Bool)

(assert (=> b!3683060 (= e!2280656 (noDuplicateTag!2254 thiss!25197 rules!3568 Nil!38875))))

(assert (= (and d!1081118 res!1496406) b!3683060))

(declare-fun m!4194181 () Bool)

(assert (=> d!1081118 m!4194181))

(declare-fun m!4194183 () Bool)

(assert (=> b!3683060 m!4194183))

(assert (=> b!3682962 d!1081118))

(declare-fun d!1081120 () Bool)

(assert (=> d!1081120 (= (isEmpty!23090 rules!3568) ((_ is Nil!38872) rules!3568))))

(assert (=> b!3682955 d!1081120))

(declare-fun b!3683074 () Bool)

(declare-fun e!2280659 () Bool)

(declare-fun tp!1119501 () Bool)

(declare-fun tp!1119503 () Bool)

(assert (=> b!3683074 (= e!2280659 (and tp!1119501 tp!1119503))))

(declare-fun b!3683071 () Bool)

(assert (=> b!3683071 (= e!2280659 tp_is_empty!18317)))

(declare-fun b!3683072 () Bool)

(declare-fun tp!1119502 () Bool)

(declare-fun tp!1119500 () Bool)

(assert (=> b!3683072 (= e!2280659 (and tp!1119502 tp!1119500))))

(assert (=> b!3682959 (= tp!1119448 e!2280659)))

(declare-fun b!3683073 () Bool)

(declare-fun tp!1119499 () Bool)

(assert (=> b!3683073 (= e!2280659 tp!1119499)))

(assert (= (and b!3682959 ((_ is ElementMatch!10617) (regex!5858 (h!44292 rules!3568)))) b!3683071))

(assert (= (and b!3682959 ((_ is Concat!16706) (regex!5858 (h!44292 rules!3568)))) b!3683072))

(assert (= (and b!3682959 ((_ is Star!10617) (regex!5858 (h!44292 rules!3568)))) b!3683073))

(assert (= (and b!3682959 ((_ is Union!10617) (regex!5858 (h!44292 rules!3568)))) b!3683074))

(declare-fun b!3683079 () Bool)

(declare-fun e!2280662 () Bool)

(declare-fun tp!1119506 () Bool)

(assert (=> b!3683079 (= e!2280662 (and tp_is_empty!18317 tp!1119506))))

(assert (=> b!3682956 (= tp!1119452 e!2280662)))

(assert (= (and b!3682956 ((_ is Cons!38871) (t!300894 input!3129))) b!3683079))

(declare-fun b!3683090 () Bool)

(declare-fun b_free!97629 () Bool)

(declare-fun b_next!98333 () Bool)

(assert (=> b!3683090 (= b_free!97629 (not b_next!98333))))

(declare-fun tp!1119515 () Bool)

(declare-fun b_and!275283 () Bool)

(assert (=> b!3683090 (= tp!1119515 b_and!275283)))

(declare-fun b_free!97631 () Bool)

(declare-fun b_next!98335 () Bool)

(assert (=> b!3683090 (= b_free!97631 (not b_next!98335))))

(declare-fun tb!213655 () Bool)

(declare-fun t!300905 () Bool)

(assert (=> (and b!3683090 (= (toChars!8017 (transformation!5858 (h!44292 (t!300895 rules!3568)))) (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313))))))) t!300905) tb!213655))

(declare-fun result!259968 () Bool)

(assert (= result!259968 result!259950))

(assert (=> d!1081088 t!300905))

(declare-fun tp!1119516 () Bool)

(declare-fun b_and!275285 () Bool)

(assert (=> b!3683090 (= tp!1119516 (and (=> t!300905 result!259968) b_and!275285))))

(declare-fun e!2280671 () Bool)

(assert (=> b!3683090 (= e!2280671 (and tp!1119515 tp!1119516))))

(declare-fun tp!1119518 () Bool)

(declare-fun b!3683089 () Bool)

(declare-fun e!2280672 () Bool)

(assert (=> b!3683089 (= e!2280672 (and tp!1119518 (inv!52356 (tag!6664 (h!44292 (t!300895 rules!3568)))) (inv!52358 (transformation!5858 (h!44292 (t!300895 rules!3568)))) e!2280671))))

(declare-fun b!3683088 () Bool)

(declare-fun e!2280674 () Bool)

(declare-fun tp!1119517 () Bool)

(assert (=> b!3683088 (= e!2280674 (and e!2280672 tp!1119517))))

(assert (=> b!3682960 (= tp!1119449 e!2280674)))

(assert (= b!3683089 b!3683090))

(assert (= b!3683088 b!3683089))

(assert (= (and b!3682960 ((_ is Cons!38872) (t!300895 rules!3568))) b!3683088))

(declare-fun m!4194185 () Bool)

(assert (=> b!3683089 m!4194185))

(declare-fun m!4194187 () Bool)

(assert (=> b!3683089 m!4194187))

(check-sat (not b!3682974) (not b!3683072) b_and!275283 (not d!1081092) (not tb!213651) tp_is_empty!18317 (not b_next!98325) (not b!3683054) (not b_next!98335) (not d!1081114) (not d!1081096) (not b!3683039) (not b!3683056) (not b!3682979) (not b!3683060) (not b!3683055) (not b!3683040) (not d!1081090) (not d!1081116) (not b!3683073) (not b!3683079) b_and!275285 (not d!1081088) (not d!1081118) (not b!3683089) (not b!3683088) b_and!275277 (not d!1081112) (not d!1081084) b_and!275271 (not b_next!98327) (not b_next!98333) (not b_lambda!109405) (not b!3683074) (not b!3683057))
(check-sat b_and!275283 (not b_next!98325) b_and!275285 (not b_next!98335) b_and!275277 b_and!275271 (not b_next!98327) (not b_next!98333))
(get-model)

(declare-fun bs!573712 () Bool)

(declare-fun d!1081134 () Bool)

(assert (= bs!573712 (and d!1081134 d!1081096)))

(declare-fun lambda!124807 () Int)

(assert (=> bs!573712 (= lambda!124807 lambda!124801)))

(assert (=> d!1081134 true))

(declare-fun lt!1288344 () Bool)

(assert (=> d!1081134 (= lt!1288344 (rulesValidInductive!2086 thiss!25197 rules!3568))))

(assert (=> d!1081134 (= lt!1288344 (forall!8159 rules!3568 lambda!124807))))

(assert (=> d!1081134 (= (rulesValid!2258 thiss!25197 rules!3568) lt!1288344)))

(declare-fun bs!573713 () Bool)

(assert (= bs!573713 d!1081134))

(assert (=> bs!573713 m!4194079))

(declare-fun m!4194203 () Bool)

(assert (=> bs!573713 m!4194203))

(assert (=> d!1081118 d!1081134))

(declare-fun d!1081136 () Bool)

(assert (=> d!1081136 (= (list!14456 lt!1288322) (list!14461 (c!637110 lt!1288322)))))

(declare-fun bs!573714 () Bool)

(assert (= bs!573714 d!1081136))

(declare-fun m!4194205 () Bool)

(assert (=> bs!573714 m!4194205))

(assert (=> d!1081088 d!1081136))

(declare-fun d!1081138 () Bool)

(declare-fun lt!1288345 () Bool)

(assert (=> d!1081138 (= lt!1288345 (isEmpty!23094 (list!14457 (_1!22501 lt!1288338))))))

(assert (=> d!1081138 (= lt!1288345 (isEmpty!23095 (c!637111 (_1!22501 lt!1288338))))))

(assert (=> d!1081138 (= (isEmpty!23091 (_1!22501 lt!1288338)) lt!1288345)))

(declare-fun bs!573715 () Bool)

(assert (= bs!573715 d!1081138))

(assert (=> bs!573715 m!4194161))

(assert (=> bs!573715 m!4194161))

(declare-fun m!4194207 () Bool)

(assert (=> bs!573715 m!4194207))

(declare-fun m!4194209 () Bool)

(assert (=> bs!573715 m!4194209))

(assert (=> b!3683055 d!1081138))

(declare-fun d!1081140 () Bool)

(declare-fun res!1496422 () Bool)

(declare-fun e!2280685 () Bool)

(assert (=> d!1081140 (=> res!1496422 e!2280685)))

(assert (=> d!1081140 (= res!1496422 ((_ is Nil!38872) rules!3568))))

(assert (=> d!1081140 (= (forall!8159 rules!3568 lambda!124801) e!2280685)))

(declare-fun b!3683106 () Bool)

(declare-fun e!2280686 () Bool)

(assert (=> b!3683106 (= e!2280685 e!2280686)))

(declare-fun res!1496423 () Bool)

(assert (=> b!3683106 (=> (not res!1496423) (not e!2280686))))

(declare-fun dynLambda!17050 (Int Rule!11516) Bool)

(assert (=> b!3683106 (= res!1496423 (dynLambda!17050 lambda!124801 (h!44292 rules!3568)))))

(declare-fun b!3683107 () Bool)

(assert (=> b!3683107 (= e!2280686 (forall!8159 (t!300895 rules!3568) lambda!124801))))

(assert (= (and d!1081140 (not res!1496422)) b!3683106))

(assert (= (and b!3683106 res!1496423) b!3683107))

(declare-fun b_lambda!109407 () Bool)

(assert (=> (not b_lambda!109407) (not b!3683106)))

(declare-fun m!4194211 () Bool)

(assert (=> b!3683106 m!4194211))

(declare-fun m!4194213 () Bool)

(assert (=> b!3683107 m!4194213))

(assert (=> d!1081096 d!1081140))

(declare-fun d!1081142 () Bool)

(assert (=> d!1081142 (= (isEmpty!23094 (list!14457 (_1!22501 lt!1288313))) ((_ is Nil!38873) (list!14457 (_1!22501 lt!1288313))))))

(assert (=> d!1081112 d!1081142))

(assert (=> d!1081112 d!1081090))

(declare-fun d!1081144 () Bool)

(declare-fun lt!1288348 () Bool)

(assert (=> d!1081144 (= lt!1288348 (isEmpty!23094 (list!14460 (c!637111 (_1!22501 lt!1288313)))))))

(declare-fun size!29726 (Conc!11907) Int)

(assert (=> d!1081144 (= lt!1288348 (= (size!29726 (c!637111 (_1!22501 lt!1288313))) 0))))

(assert (=> d!1081144 (= (isEmpty!23095 (c!637111 (_1!22501 lt!1288313))) lt!1288348)))

(declare-fun bs!573716 () Bool)

(assert (= bs!573716 d!1081144))

(assert (=> bs!573716 m!4194105))

(assert (=> bs!573716 m!4194105))

(declare-fun m!4194215 () Bool)

(assert (=> bs!573716 m!4194215))

(declare-fun m!4194217 () Bool)

(assert (=> bs!573716 m!4194217))

(assert (=> d!1081112 d!1081144))

(declare-fun b!3683117 () Bool)

(declare-fun e!2280691 () List!38997)

(declare-fun e!2280692 () List!38997)

(assert (=> b!3683117 (= e!2280691 e!2280692)))

(declare-fun c!637123 () Bool)

(assert (=> b!3683117 (= c!637123 ((_ is Leaf!18447) (c!637111 (_1!22501 lt!1288313))))))

(declare-fun d!1081146 () Bool)

(declare-fun c!637122 () Bool)

(assert (=> d!1081146 (= c!637122 ((_ is Empty!11907) (c!637111 (_1!22501 lt!1288313))))))

(assert (=> d!1081146 (= (list!14460 (c!637111 (_1!22501 lt!1288313))) e!2280691)))

(declare-fun b!3683119 () Bool)

(declare-fun ++!9670 (List!38997 List!38997) List!38997)

(assert (=> b!3683119 (= e!2280692 (++!9670 (list!14460 (left!30330 (c!637111 (_1!22501 lt!1288313)))) (list!14460 (right!30660 (c!637111 (_1!22501 lt!1288313))))))))

(declare-fun b!3683116 () Bool)

(assert (=> b!3683116 (= e!2280691 Nil!38873)))

(declare-fun b!3683118 () Bool)

(declare-fun list!14462 (IArray!23819) List!38997)

(assert (=> b!3683118 (= e!2280692 (list!14462 (xs!15109 (c!637111 (_1!22501 lt!1288313)))))))

(assert (= (and d!1081146 c!637122) b!3683116))

(assert (= (and d!1081146 (not c!637122)) b!3683117))

(assert (= (and b!3683117 c!637123) b!3683118))

(assert (= (and b!3683117 (not c!637123)) b!3683119))

(declare-fun m!4194219 () Bool)

(assert (=> b!3683119 m!4194219))

(declare-fun m!4194221 () Bool)

(assert (=> b!3683119 m!4194221))

(assert (=> b!3683119 m!4194219))

(assert (=> b!3683119 m!4194221))

(declare-fun m!4194223 () Bool)

(assert (=> b!3683119 m!4194223))

(declare-fun m!4194225 () Bool)

(assert (=> b!3683118 m!4194225))

(assert (=> d!1081090 d!1081146))

(declare-fun d!1081148 () Bool)

(declare-fun lt!1288351 () Int)

(declare-fun size!29727 (List!38995) Int)

(assert (=> d!1081148 (= lt!1288351 (size!29727 (list!14456 (_2!22501 lt!1288338))))))

(declare-fun size!29728 (Conc!11906) Int)

(assert (=> d!1081148 (= lt!1288351 (size!29728 (c!637110 (_2!22501 lt!1288338))))))

(assert (=> d!1081148 (= (size!29723 (_2!22501 lt!1288338)) lt!1288351)))

(declare-fun bs!573717 () Bool)

(assert (= bs!573717 d!1081148))

(assert (=> bs!573717 m!4194177))

(assert (=> bs!573717 m!4194177))

(declare-fun m!4194227 () Bool)

(assert (=> bs!573717 m!4194227))

(declare-fun m!4194229 () Bool)

(assert (=> bs!573717 m!4194229))

(assert (=> b!3683054 d!1081148))

(declare-fun d!1081150 () Bool)

(declare-fun lt!1288352 () Int)

(assert (=> d!1081150 (= lt!1288352 (size!29727 (list!14456 (seqFromList!4407 input!3129))))))

(assert (=> d!1081150 (= lt!1288352 (size!29728 (c!637110 (seqFromList!4407 input!3129))))))

(assert (=> d!1081150 (= (size!29723 (seqFromList!4407 input!3129)) lt!1288352)))

(declare-fun bs!573718 () Bool)

(assert (= bs!573718 d!1081150))

(assert (=> bs!573718 m!4194059))

(assert (=> bs!573718 m!4194163))

(assert (=> bs!573718 m!4194163))

(declare-fun m!4194231 () Bool)

(assert (=> bs!573718 m!4194231))

(declare-fun m!4194233 () Bool)

(assert (=> bs!573718 m!4194233))

(assert (=> b!3683054 d!1081150))

(declare-fun bs!573719 () Bool)

(declare-fun d!1081152 () Bool)

(assert (= bs!573719 (and d!1081152 d!1081096)))

(declare-fun lambda!124808 () Int)

(assert (=> bs!573719 (= lambda!124808 lambda!124801)))

(declare-fun bs!573720 () Bool)

(assert (= bs!573720 (and d!1081152 d!1081134)))

(assert (=> bs!573720 (= lambda!124808 lambda!124807)))

(assert (=> d!1081152 true))

(declare-fun lt!1288353 () Bool)

(assert (=> d!1081152 (= lt!1288353 (forall!8159 (t!300895 rules!3568) lambda!124808))))

(declare-fun e!2280694 () Bool)

(assert (=> d!1081152 (= lt!1288353 e!2280694)))

(declare-fun res!1496424 () Bool)

(assert (=> d!1081152 (=> res!1496424 e!2280694)))

(assert (=> d!1081152 (= res!1496424 (not ((_ is Cons!38872) (t!300895 rules!3568))))))

(assert (=> d!1081152 (= (rulesValidInductive!2086 thiss!25197 (t!300895 rules!3568)) lt!1288353)))

(declare-fun b!3683120 () Bool)

(declare-fun e!2280693 () Bool)

(assert (=> b!3683120 (= e!2280694 e!2280693)))

(declare-fun res!1496425 () Bool)

(assert (=> b!3683120 (=> (not res!1496425) (not e!2280693))))

(assert (=> b!3683120 (= res!1496425 (ruleValid!2116 thiss!25197 (h!44292 (t!300895 rules!3568))))))

(declare-fun b!3683121 () Bool)

(assert (=> b!3683121 (= e!2280693 (rulesValidInductive!2086 thiss!25197 (t!300895 (t!300895 rules!3568))))))

(assert (= (and d!1081152 (not res!1496424)) b!3683120))

(assert (= (and b!3683120 res!1496425) b!3683121))

(declare-fun m!4194235 () Bool)

(assert (=> d!1081152 m!4194235))

(declare-fun m!4194237 () Bool)

(assert (=> b!3683120 m!4194237))

(declare-fun m!4194239 () Bool)

(assert (=> b!3683121 m!4194239))

(assert (=> b!3683040 d!1081152))

(declare-fun d!1081154 () Bool)

(assert (=> d!1081154 (= (list!14457 (_1!22501 lt!1288338)) (list!14460 (c!637111 (_1!22501 lt!1288338))))))

(declare-fun bs!573721 () Bool)

(assert (= bs!573721 d!1081154))

(declare-fun m!4194241 () Bool)

(assert (=> bs!573721 m!4194241))

(assert (=> b!3683056 d!1081154))

(declare-fun b!3683132 () Bool)

(declare-fun e!2280703 () Bool)

(declare-fun lt!1288360 () tuple2!38738)

(assert (=> b!3683132 (= e!2280703 (not (isEmpty!23094 (_1!22503 lt!1288360))))))

(declare-fun d!1081156 () Bool)

(declare-fun e!2280701 () Bool)

(assert (=> d!1081156 e!2280701))

(declare-fun c!637128 () Bool)

(declare-fun size!29729 (List!38997) Int)

(assert (=> d!1081156 (= c!637128 (> (size!29729 (_1!22503 lt!1288360)) 0))))

(declare-fun e!2280702 () tuple2!38738)

(assert (=> d!1081156 (= lt!1288360 e!2280702)))

(declare-fun c!637129 () Bool)

(declare-datatypes ((tuple2!38742 0))(
  ( (tuple2!38743 (_1!22505 Token!11082) (_2!22505 List!38995)) )
))
(declare-datatypes ((Option!8334 0))(
  ( (None!8333) (Some!8333 (v!38277 tuple2!38742)) )
))
(declare-fun lt!1288362 () Option!8334)

(assert (=> d!1081156 (= c!637129 ((_ is Some!8333) lt!1288362))))

(declare-fun maxPrefix!2976 (LexerInterface!5447 List!38996 List!38995) Option!8334)

(assert (=> d!1081156 (= lt!1288362 (maxPrefix!2976 thiss!25197 rules!3568 (list!14456 (seqFromList!4407 input!3129))))))

(assert (=> d!1081156 (= (lexList!1520 thiss!25197 rules!3568 (list!14456 (seqFromList!4407 input!3129))) lt!1288360)))

(declare-fun b!3683133 () Bool)

(assert (=> b!3683133 (= e!2280701 e!2280703)))

(declare-fun res!1496428 () Bool)

(assert (=> b!3683133 (= res!1496428 (< (size!29727 (_2!22503 lt!1288360)) (size!29727 (list!14456 (seqFromList!4407 input!3129)))))))

(assert (=> b!3683133 (=> (not res!1496428) (not e!2280703))))

(declare-fun b!3683134 () Bool)

(assert (=> b!3683134 (= e!2280701 (= (_2!22503 lt!1288360) (list!14456 (seqFromList!4407 input!3129))))))

(declare-fun b!3683135 () Bool)

(declare-fun lt!1288361 () tuple2!38738)

(assert (=> b!3683135 (= e!2280702 (tuple2!38739 (Cons!38873 (_1!22505 (v!38277 lt!1288362)) (_1!22503 lt!1288361)) (_2!22503 lt!1288361)))))

(assert (=> b!3683135 (= lt!1288361 (lexList!1520 thiss!25197 rules!3568 (_2!22505 (v!38277 lt!1288362))))))

(declare-fun b!3683136 () Bool)

(assert (=> b!3683136 (= e!2280702 (tuple2!38739 Nil!38873 (list!14456 (seqFromList!4407 input!3129))))))

(assert (= (and d!1081156 c!637129) b!3683135))

(assert (= (and d!1081156 (not c!637129)) b!3683136))

(assert (= (and d!1081156 c!637128) b!3683133))

(assert (= (and d!1081156 (not c!637128)) b!3683134))

(assert (= (and b!3683133 res!1496428) b!3683132))

(declare-fun m!4194243 () Bool)

(assert (=> b!3683132 m!4194243))

(declare-fun m!4194245 () Bool)

(assert (=> d!1081156 m!4194245))

(assert (=> d!1081156 m!4194163))

(declare-fun m!4194247 () Bool)

(assert (=> d!1081156 m!4194247))

(declare-fun m!4194249 () Bool)

(assert (=> b!3683133 m!4194249))

(assert (=> b!3683133 m!4194163))

(assert (=> b!3683133 m!4194231))

(declare-fun m!4194251 () Bool)

(assert (=> b!3683135 m!4194251))

(assert (=> b!3683056 d!1081156))

(declare-fun d!1081158 () Bool)

(assert (=> d!1081158 (= (list!14456 (seqFromList!4407 input!3129)) (list!14461 (c!637110 (seqFromList!4407 input!3129))))))

(declare-fun bs!573722 () Bool)

(assert (= bs!573722 d!1081158))

(declare-fun m!4194253 () Bool)

(assert (=> bs!573722 m!4194253))

(assert (=> b!3683056 d!1081158))

(declare-fun d!1081160 () Bool)

(declare-fun e!2280706 () Bool)

(assert (=> d!1081160 e!2280706))

(declare-fun res!1496431 () Bool)

(assert (=> d!1081160 (=> (not res!1496431) (not e!2280706))))

(declare-fun lt!1288365 () BalanceConc!23426)

(assert (=> d!1081160 (= res!1496431 (= (list!14456 lt!1288365) input!3129))))

(declare-fun fromList!802 (List!38995) Conc!11906)

(assert (=> d!1081160 (= lt!1288365 (BalanceConc!23427 (fromList!802 input!3129)))))

(assert (=> d!1081160 (= (fromListB!2037 input!3129) lt!1288365)))

(declare-fun b!3683139 () Bool)

(declare-fun isBalanced!3508 (Conc!11906) Bool)

(assert (=> b!3683139 (= e!2280706 (isBalanced!3508 (fromList!802 input!3129)))))

(assert (= (and d!1081160 res!1496431) b!3683139))

(declare-fun m!4194255 () Bool)

(assert (=> d!1081160 m!4194255))

(declare-fun m!4194257 () Bool)

(assert (=> d!1081160 m!4194257))

(assert (=> b!3683139 m!4194257))

(assert (=> b!3683139 m!4194257))

(declare-fun m!4194259 () Bool)

(assert (=> b!3683139 m!4194259))

(assert (=> d!1081116 d!1081160))

(declare-fun d!1081162 () Bool)

(declare-fun res!1496436 () Bool)

(declare-fun e!2280711 () Bool)

(assert (=> d!1081162 (=> res!1496436 e!2280711)))

(assert (=> d!1081162 (= res!1496436 ((_ is Nil!38872) rules!3568))))

(assert (=> d!1081162 (= (noDuplicateTag!2254 thiss!25197 rules!3568 Nil!38875) e!2280711)))

(declare-fun b!3683144 () Bool)

(declare-fun e!2280712 () Bool)

(assert (=> b!3683144 (= e!2280711 e!2280712)))

(declare-fun res!1496437 () Bool)

(assert (=> b!3683144 (=> (not res!1496437) (not e!2280712))))

(declare-fun contains!7771 (List!38999 String!43774) Bool)

(assert (=> b!3683144 (= res!1496437 (not (contains!7771 Nil!38875 (tag!6664 (h!44292 rules!3568)))))))

(declare-fun b!3683145 () Bool)

(assert (=> b!3683145 (= e!2280712 (noDuplicateTag!2254 thiss!25197 (t!300895 rules!3568) (Cons!38875 (tag!6664 (h!44292 rules!3568)) Nil!38875)))))

(assert (= (and d!1081162 (not res!1496436)) b!3683144))

(assert (= (and b!3683144 res!1496437) b!3683145))

(declare-fun m!4194261 () Bool)

(assert (=> b!3683144 m!4194261))

(declare-fun m!4194263 () Bool)

(assert (=> b!3683145 m!4194263))

(assert (=> b!3683060 d!1081162))

(declare-fun d!1081164 () Bool)

(assert (=> d!1081164 (= (inv!52356 (tag!6664 (h!44292 (t!300895 rules!3568)))) (= (mod (str.len (value!187412 (tag!6664 (h!44292 (t!300895 rules!3568))))) 2) 0))))

(assert (=> b!3683089 d!1081164))

(declare-fun d!1081166 () Bool)

(declare-fun res!1496438 () Bool)

(declare-fun e!2280713 () Bool)

(assert (=> d!1081166 (=> (not res!1496438) (not e!2280713))))

(assert (=> d!1081166 (= res!1496438 (semiInverseModEq!2501 (toChars!8017 (transformation!5858 (h!44292 (t!300895 rules!3568)))) (toValue!8158 (transformation!5858 (h!44292 (t!300895 rules!3568))))))))

(assert (=> d!1081166 (= (inv!52358 (transformation!5858 (h!44292 (t!300895 rules!3568)))) e!2280713)))

(declare-fun b!3683146 () Bool)

(assert (=> b!3683146 (= e!2280713 (equivClasses!2400 (toChars!8017 (transformation!5858 (h!44292 (t!300895 rules!3568)))) (toValue!8158 (transformation!5858 (h!44292 (t!300895 rules!3568))))))))

(assert (= (and d!1081166 res!1496438) b!3683146))

(declare-fun m!4194265 () Bool)

(assert (=> d!1081166 m!4194265))

(declare-fun m!4194267 () Bool)

(assert (=> b!3683146 m!4194267))

(assert (=> b!3683089 d!1081166))

(declare-fun d!1081168 () Bool)

(declare-fun res!1496443 () Bool)

(declare-fun e!2280716 () Bool)

(assert (=> d!1081168 (=> (not res!1496443) (not e!2280716))))

(declare-fun validRegex!4861 (Regex!10617) Bool)

(assert (=> d!1081168 (= res!1496443 (validRegex!4861 (regex!5858 (h!44292 rules!3568))))))

(assert (=> d!1081168 (= (ruleValid!2116 thiss!25197 (h!44292 rules!3568)) e!2280716)))

(declare-fun b!3683151 () Bool)

(declare-fun res!1496444 () Bool)

(assert (=> b!3683151 (=> (not res!1496444) (not e!2280716))))

(declare-fun nullable!3699 (Regex!10617) Bool)

(assert (=> b!3683151 (= res!1496444 (not (nullable!3699 (regex!5858 (h!44292 rules!3568)))))))

(declare-fun b!3683152 () Bool)

(assert (=> b!3683152 (= e!2280716 (not (= (tag!6664 (h!44292 rules!3568)) (String!43775 ""))))))

(assert (= (and d!1081168 res!1496443) b!3683151))

(assert (= (and b!3683151 res!1496444) b!3683152))

(declare-fun m!4194269 () Bool)

(assert (=> d!1081168 m!4194269))

(declare-fun m!4194271 () Bool)

(assert (=> b!3683151 m!4194271))

(assert (=> b!3683039 d!1081168))

(declare-fun d!1081170 () Bool)

(assert (=> d!1081170 (= (list!14456 (_2!22501 lt!1288338)) (list!14461 (c!637110 (_2!22501 lt!1288338))))))

(declare-fun bs!573723 () Bool)

(assert (= bs!573723 d!1081170))

(declare-fun m!4194273 () Bool)

(assert (=> bs!573723 m!4194273))

(assert (=> b!3683057 d!1081170))

(assert (=> b!3683057 d!1081156))

(assert (=> b!3683057 d!1081158))

(declare-fun d!1081172 () Bool)

(assert (=> d!1081172 (= (inv!52362 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (isBalanced!3508 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))))))

(declare-fun bs!573724 () Bool)

(assert (= bs!573724 d!1081172))

(declare-fun m!4194275 () Bool)

(assert (=> bs!573724 m!4194275))

(assert (=> tb!213651 d!1081172))

(declare-fun d!1081174 () Bool)

(assert (=> d!1081174 true))

(declare-fun order!21559 () Int)

(declare-fun order!21561 () Int)

(declare-fun lambda!124811 () Int)

(declare-fun dynLambda!17051 (Int Int) Int)

(declare-fun dynLambda!17052 (Int Int) Int)

(assert (=> d!1081174 (< (dynLambda!17051 order!21559 (toValue!8158 (transformation!5858 (h!44292 rules!3568)))) (dynLambda!17052 order!21561 lambda!124811))))

(declare-fun Forall2!972 (Int) Bool)

(assert (=> d!1081174 (= (equivClasses!2400 (toChars!8017 (transformation!5858 (h!44292 rules!3568))) (toValue!8158 (transformation!5858 (h!44292 rules!3568)))) (Forall2!972 lambda!124811))))

(declare-fun bs!573725 () Bool)

(assert (= bs!573725 d!1081174))

(declare-fun m!4194277 () Bool)

(assert (=> bs!573725 m!4194277))

(assert (=> b!3682974 d!1081174))

(declare-fun d!1081176 () Bool)

(assert (=> d!1081176 true))

(declare-fun order!21565 () Int)

(declare-fun lambda!124814 () Int)

(declare-fun order!21563 () Int)

(declare-fun dynLambda!17053 (Int Int) Int)

(declare-fun dynLambda!17054 (Int Int) Int)

(assert (=> d!1081176 (< (dynLambda!17053 order!21563 (toChars!8017 (transformation!5858 (h!44292 rules!3568)))) (dynLambda!17054 order!21565 lambda!124814))))

(assert (=> d!1081176 true))

(assert (=> d!1081176 (< (dynLambda!17051 order!21559 (toValue!8158 (transformation!5858 (h!44292 rules!3568)))) (dynLambda!17054 order!21565 lambda!124814))))

(declare-fun Forall!1374 (Int) Bool)

(assert (=> d!1081176 (= (semiInverseModEq!2501 (toChars!8017 (transformation!5858 (h!44292 rules!3568))) (toValue!8158 (transformation!5858 (h!44292 rules!3568)))) (Forall!1374 lambda!124814))))

(declare-fun bs!573726 () Bool)

(assert (= bs!573726 d!1081176))

(declare-fun m!4194279 () Bool)

(assert (=> bs!573726 m!4194279))

(assert (=> d!1081084 d!1081176))

(declare-fun d!1081178 () Bool)

(declare-fun c!637133 () Bool)

(assert (=> d!1081178 (= c!637133 ((_ is Node!11906) (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))))))

(declare-fun e!2280723 () Bool)

(assert (=> d!1081178 (= (inv!52361 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))) e!2280723)))

(declare-fun b!3683167 () Bool)

(declare-fun inv!52363 (Conc!11906) Bool)

(assert (=> b!3683167 (= e!2280723 (inv!52363 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))))))

(declare-fun b!3683168 () Bool)

(declare-fun e!2280724 () Bool)

(assert (=> b!3683168 (= e!2280723 e!2280724)))

(declare-fun res!1496449 () Bool)

(assert (=> b!3683168 (= res!1496449 (not ((_ is Leaf!18446) (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))))))

(assert (=> b!3683168 (=> res!1496449 e!2280724)))

(declare-fun b!3683169 () Bool)

(declare-fun inv!52364 (Conc!11906) Bool)

(assert (=> b!3683169 (= e!2280724 (inv!52364 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))))))

(assert (= (and d!1081178 c!637133) b!3683167))

(assert (= (and d!1081178 (not c!637133)) b!3683168))

(assert (= (and b!3683168 (not res!1496449)) b!3683169))

(declare-fun m!4194281 () Bool)

(assert (=> b!3683167 m!4194281))

(declare-fun m!4194283 () Bool)

(assert (=> b!3683169 m!4194283))

(assert (=> b!3682979 d!1081178))

(declare-fun b!3683179 () Bool)

(declare-fun e!2280729 () List!38995)

(declare-fun e!2280730 () List!38995)

(assert (=> b!3683179 (= e!2280729 e!2280730)))

(declare-fun c!637139 () Bool)

(assert (=> b!3683179 (= c!637139 ((_ is Leaf!18446) (c!637110 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))))

(declare-fun b!3683181 () Bool)

(declare-fun ++!9674 (List!38995 List!38995) List!38995)

(assert (=> b!3683181 (= e!2280730 (++!9674 (list!14461 (left!30329 (c!637110 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313))))))) (list!14461 (right!30659 (c!637110 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))))))

(declare-fun b!3683180 () Bool)

(declare-fun list!14463 (IArray!23817) List!38995)

(assert (=> b!3683180 (= e!2280730 (list!14463 (xs!15108 (c!637110 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313))))))))))

(declare-fun b!3683178 () Bool)

(assert (=> b!3683178 (= e!2280729 Nil!38871)))

(declare-fun d!1081180 () Bool)

(declare-fun c!637138 () Bool)

(assert (=> d!1081180 (= c!637138 ((_ is Empty!11906) (c!637110 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))))

(assert (=> d!1081180 (= (list!14461 (c!637110 (charsOf!3869 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) e!2280729)))

(assert (= (and d!1081180 c!637138) b!3683178))

(assert (= (and d!1081180 (not c!637138)) b!3683179))

(assert (= (and b!3683179 c!637139) b!3683180))

(assert (= (and b!3683179 (not c!637139)) b!3683181))

(declare-fun m!4194285 () Bool)

(assert (=> b!3683181 m!4194285))

(declare-fun m!4194287 () Bool)

(assert (=> b!3683181 m!4194287))

(assert (=> b!3683181 m!4194285))

(assert (=> b!3683181 m!4194287))

(declare-fun m!4194289 () Bool)

(assert (=> b!3683181 m!4194289))

(declare-fun m!4194291 () Bool)

(assert (=> b!3683180 m!4194291))

(assert (=> d!1081092 d!1081180))

(declare-fun d!1081182 () Bool)

(declare-fun lt!1288368 () Int)

(assert (=> d!1081182 (= lt!1288368 (size!29729 (list!14457 (_1!22501 lt!1288338))))))

(assert (=> d!1081182 (= lt!1288368 (size!29726 (c!637111 (_1!22501 lt!1288338))))))

(assert (=> d!1081182 (= (size!29722 (_1!22501 lt!1288338)) lt!1288368)))

(declare-fun bs!573727 () Bool)

(assert (= bs!573727 d!1081182))

(assert (=> bs!573727 m!4194161))

(assert (=> bs!573727 m!4194161))

(declare-fun m!4194293 () Bool)

(assert (=> bs!573727 m!4194293))

(declare-fun m!4194295 () Bool)

(assert (=> bs!573727 m!4194295))

(assert (=> d!1081114 d!1081182))

(declare-fun lt!1288572 () tuple2!38734)

(declare-datatypes ((tuple2!38744 0))(
  ( (tuple2!38745 (_1!22506 Token!11082) (_2!22506 BalanceConc!23426)) )
))
(declare-datatypes ((Option!8335 0))(
  ( (None!8334) (Some!8334 (v!38278 tuple2!38744)) )
))
(declare-fun lt!1288577 () Option!8335)

(declare-fun b!3683325 () Bool)

(declare-fun lexRec!777 (LexerInterface!5447 List!38996 BalanceConc!23426) tuple2!38734)

(assert (=> b!3683325 (= lt!1288572 (lexRec!777 thiss!25197 rules!3568 (_2!22506 (v!38278 lt!1288577))))))

(declare-fun e!2280814 () tuple2!38734)

(declare-fun prepend!1302 (BalanceConc!23428 Token!11082) BalanceConc!23428)

(assert (=> b!3683325 (= e!2280814 (tuple2!38735 (prepend!1302 (_1!22501 lt!1288572) (_1!22506 (v!38278 lt!1288577))) (_2!22501 lt!1288572)))))

(declare-fun d!1081184 () Bool)

(declare-fun e!2280815 () Bool)

(assert (=> d!1081184 e!2280815))

(declare-fun res!1496478 () Bool)

(assert (=> d!1081184 (=> (not res!1496478) (not e!2280815))))

(declare-fun lt!1288566 () tuple2!38734)

(assert (=> d!1081184 (= res!1496478 (= (list!14457 (_1!22501 lt!1288566)) (list!14457 (_1!22501 (lexRec!777 thiss!25197 rules!3568 (seqFromList!4407 input!3129))))))))

(declare-fun e!2280813 () tuple2!38734)

(assert (=> d!1081184 (= lt!1288566 e!2280813)))

(declare-fun c!637178 () Bool)

(declare-fun lt!1288578 () Option!8335)

(assert (=> d!1081184 (= c!637178 ((_ is Some!8334) lt!1288578))))

(declare-fun maxPrefixZipperSequenceV2!563 (LexerInterface!5447 List!38996 BalanceConc!23426 BalanceConc!23426) Option!8335)

(assert (=> d!1081184 (= lt!1288578 (maxPrefixZipperSequenceV2!563 thiss!25197 rules!3568 (seqFromList!4407 input!3129) (seqFromList!4407 input!3129)))))

(declare-datatypes ((Unit!56968 0))(
  ( (Unit!56969) )
))
(declare-fun lt!1288592 () Unit!56968)

(declare-fun lt!1288587 () Unit!56968)

(assert (=> d!1081184 (= lt!1288592 lt!1288587)))

(declare-fun lt!1288571 () List!38995)

(declare-fun lt!1288570 () List!38995)

(declare-fun isSuffix!938 (List!38995 List!38995) Bool)

(assert (=> d!1081184 (isSuffix!938 lt!1288571 (++!9674 lt!1288570 lt!1288571))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!623 (List!38995 List!38995) Unit!56968)

(assert (=> d!1081184 (= lt!1288587 (lemmaConcatTwoListThenFSndIsSuffix!623 lt!1288570 lt!1288571))))

(assert (=> d!1081184 (= lt!1288571 (list!14456 (seqFromList!4407 input!3129)))))

(assert (=> d!1081184 (= lt!1288570 (list!14456 (BalanceConc!23427 Empty!11906)))))

(assert (=> d!1081184 (= (lexTailRecV2!1126 thiss!25197 rules!3568 (seqFromList!4407 input!3129) (BalanceConc!23427 Empty!11906) (seqFromList!4407 input!3129) (BalanceConc!23429 Empty!11907)) lt!1288566)))

(declare-fun b!3683326 () Bool)

(assert (=> b!3683326 (= e!2280815 (= (list!14456 (_2!22501 lt!1288566)) (list!14456 (_2!22501 (lexRec!777 thiss!25197 rules!3568 (seqFromList!4407 input!3129))))))))

(declare-fun b!3683327 () Bool)

(assert (=> b!3683327 (= e!2280813 (tuple2!38735 (BalanceConc!23429 Empty!11907) (seqFromList!4407 input!3129)))))

(declare-fun b!3683328 () Bool)

(declare-fun lt!1288588 () BalanceConc!23426)

(assert (=> b!3683328 (= e!2280814 (tuple2!38735 (BalanceConc!23429 Empty!11907) lt!1288588))))

(declare-fun b!3683329 () Bool)

(declare-fun e!2280812 () tuple2!38734)

(assert (=> b!3683329 (= e!2280812 (tuple2!38735 (BalanceConc!23429 Empty!11907) (seqFromList!4407 input!3129)))))

(declare-fun b!3683330 () Bool)

(declare-fun lt!1288596 () BalanceConc!23426)

(declare-fun append!1006 (BalanceConc!23428 Token!11082) BalanceConc!23428)

(assert (=> b!3683330 (= e!2280813 (lexTailRecV2!1126 thiss!25197 rules!3568 (seqFromList!4407 input!3129) lt!1288596 (_2!22506 (v!38278 lt!1288578)) (append!1006 (BalanceConc!23429 Empty!11907) (_1!22506 (v!38278 lt!1288578)))))))

(declare-fun lt!1288583 () tuple2!38734)

(assert (=> b!3683330 (= lt!1288583 (lexRec!777 thiss!25197 rules!3568 (_2!22506 (v!38278 lt!1288578))))))

(declare-fun lt!1288573 () List!38995)

(assert (=> b!3683330 (= lt!1288573 (list!14456 (BalanceConc!23427 Empty!11906)))))

(declare-fun lt!1288585 () List!38995)

(assert (=> b!3683330 (= lt!1288585 (list!14456 (charsOf!3869 (_1!22506 (v!38278 lt!1288578)))))))

(declare-fun lt!1288589 () List!38995)

(assert (=> b!3683330 (= lt!1288589 (list!14456 (_2!22506 (v!38278 lt!1288578))))))

(declare-fun lt!1288580 () Unit!56968)

(declare-fun lemmaConcatAssociativity!2073 (List!38995 List!38995 List!38995) Unit!56968)

(assert (=> b!3683330 (= lt!1288580 (lemmaConcatAssociativity!2073 lt!1288573 lt!1288585 lt!1288589))))

(assert (=> b!3683330 (= (++!9674 (++!9674 lt!1288573 lt!1288585) lt!1288589) (++!9674 lt!1288573 (++!9674 lt!1288585 lt!1288589)))))

(declare-fun lt!1288564 () Unit!56968)

(assert (=> b!3683330 (= lt!1288564 lt!1288580)))

(declare-fun lt!1288569 () Option!8335)

(declare-fun maxPrefixZipperSequence!1169 (LexerInterface!5447 List!38996 BalanceConc!23426) Option!8335)

(assert (=> b!3683330 (= lt!1288569 (maxPrefixZipperSequence!1169 thiss!25197 rules!3568 (seqFromList!4407 input!3129)))))

(declare-fun c!637179 () Bool)

(assert (=> b!3683330 (= c!637179 ((_ is Some!8334) lt!1288569))))

(assert (=> b!3683330 (= (lexRec!777 thiss!25197 rules!3568 (seqFromList!4407 input!3129)) e!2280812)))

(declare-fun lt!1288590 () Unit!56968)

(declare-fun Unit!56970 () Unit!56968)

(assert (=> b!3683330 (= lt!1288590 Unit!56970)))

(declare-fun lt!1288591 () List!38997)

(assert (=> b!3683330 (= lt!1288591 (list!14457 (BalanceConc!23429 Empty!11907)))))

(declare-fun lt!1288584 () List!38997)

(assert (=> b!3683330 (= lt!1288584 (Cons!38873 (_1!22506 (v!38278 lt!1288578)) Nil!38873))))

(declare-fun lt!1288586 () List!38997)

(assert (=> b!3683330 (= lt!1288586 (list!14457 (_1!22501 lt!1288583)))))

(declare-fun lt!1288565 () Unit!56968)

(declare-fun lemmaConcatAssociativity!2074 (List!38997 List!38997 List!38997) Unit!56968)

(assert (=> b!3683330 (= lt!1288565 (lemmaConcatAssociativity!2074 lt!1288591 lt!1288584 lt!1288586))))

(assert (=> b!3683330 (= (++!9670 (++!9670 lt!1288591 lt!1288584) lt!1288586) (++!9670 lt!1288591 (++!9670 lt!1288584 lt!1288586)))))

(declare-fun lt!1288568 () Unit!56968)

(assert (=> b!3683330 (= lt!1288568 lt!1288565)))

(declare-fun lt!1288574 () List!38995)

(assert (=> b!3683330 (= lt!1288574 (++!9674 (list!14456 (BalanceConc!23427 Empty!11906)) (list!14456 (charsOf!3869 (_1!22506 (v!38278 lt!1288578))))))))

(declare-fun lt!1288567 () List!38995)

(assert (=> b!3683330 (= lt!1288567 (list!14456 (_2!22506 (v!38278 lt!1288578))))))

(declare-fun lt!1288594 () List!38997)

(assert (=> b!3683330 (= lt!1288594 (list!14457 (append!1006 (BalanceConc!23429 Empty!11907) (_1!22506 (v!38278 lt!1288578)))))))

(declare-fun lt!1288579 () Unit!56968)

(declare-fun lemmaLexThenLexPrefix!541 (LexerInterface!5447 List!38996 List!38995 List!38995 List!38997 List!38997 List!38995) Unit!56968)

(assert (=> b!3683330 (= lt!1288579 (lemmaLexThenLexPrefix!541 thiss!25197 rules!3568 lt!1288574 lt!1288567 lt!1288594 (list!14457 (_1!22501 lt!1288583)) (list!14456 (_2!22501 lt!1288583))))))

(assert (=> b!3683330 (= (lexList!1520 thiss!25197 rules!3568 lt!1288574) (tuple2!38739 lt!1288594 Nil!38871))))

(declare-fun lt!1288595 () Unit!56968)

(assert (=> b!3683330 (= lt!1288595 lt!1288579)))

(declare-fun ++!9675 (BalanceConc!23426 BalanceConc!23426) BalanceConc!23426)

(assert (=> b!3683330 (= lt!1288588 (++!9675 (BalanceConc!23427 Empty!11906) (charsOf!3869 (_1!22506 (v!38278 lt!1288578)))))))

(assert (=> b!3683330 (= lt!1288577 (maxPrefixZipperSequence!1169 thiss!25197 rules!3568 lt!1288588))))

(declare-fun c!637177 () Bool)

(assert (=> b!3683330 (= c!637177 ((_ is Some!8334) lt!1288577))))

(assert (=> b!3683330 (= (lexRec!777 thiss!25197 rules!3568 (++!9675 (BalanceConc!23427 Empty!11906) (charsOf!3869 (_1!22506 (v!38278 lt!1288578))))) e!2280814)))

(declare-fun lt!1288575 () Unit!56968)

(declare-fun Unit!56971 () Unit!56968)

(assert (=> b!3683330 (= lt!1288575 Unit!56971)))

(assert (=> b!3683330 (= lt!1288596 (++!9675 (BalanceConc!23427 Empty!11906) (charsOf!3869 (_1!22506 (v!38278 lt!1288578)))))))

(declare-fun lt!1288581 () List!38995)

(assert (=> b!3683330 (= lt!1288581 (list!14456 lt!1288596))))

(declare-fun lt!1288582 () List!38995)

(assert (=> b!3683330 (= lt!1288582 (list!14456 (_2!22506 (v!38278 lt!1288578))))))

(declare-fun lt!1288593 () Unit!56968)

(assert (=> b!3683330 (= lt!1288593 (lemmaConcatTwoListThenFSndIsSuffix!623 lt!1288581 lt!1288582))))

(assert (=> b!3683330 (isSuffix!938 lt!1288582 (++!9674 lt!1288581 lt!1288582))))

(declare-fun lt!1288563 () Unit!56968)

(assert (=> b!3683330 (= lt!1288563 lt!1288593)))

(declare-fun lt!1288576 () tuple2!38734)

(declare-fun b!3683331 () Bool)

(assert (=> b!3683331 (= lt!1288576 (lexRec!777 thiss!25197 rules!3568 (_2!22506 (v!38278 lt!1288569))))))

(assert (=> b!3683331 (= e!2280812 (tuple2!38735 (prepend!1302 (_1!22501 lt!1288576) (_1!22506 (v!38278 lt!1288569))) (_2!22501 lt!1288576)))))

(assert (= (and d!1081184 c!637178) b!3683330))

(assert (= (and d!1081184 (not c!637178)) b!3683327))

(assert (= (and b!3683330 c!637179) b!3683331))

(assert (= (and b!3683330 (not c!637179)) b!3683329))

(assert (= (and b!3683330 c!637177) b!3683325))

(assert (= (and b!3683330 (not c!637177)) b!3683328))

(assert (= (and d!1081184 res!1496478) b!3683326))

(declare-fun m!4194477 () Bool)

(assert (=> b!3683326 m!4194477))

(assert (=> b!3683326 m!4194059))

(declare-fun m!4194479 () Bool)

(assert (=> b!3683326 m!4194479))

(declare-fun m!4194481 () Bool)

(assert (=> b!3683326 m!4194481))

(declare-fun m!4194483 () Bool)

(assert (=> b!3683331 m!4194483))

(declare-fun m!4194485 () Bool)

(assert (=> b!3683331 m!4194485))

(declare-fun m!4194487 () Bool)

(assert (=> b!3683330 m!4194487))

(declare-fun m!4194489 () Bool)

(assert (=> b!3683330 m!4194489))

(assert (=> b!3683330 m!4194487))

(declare-fun m!4194491 () Bool)

(assert (=> b!3683330 m!4194491))

(declare-fun m!4194493 () Bool)

(assert (=> b!3683330 m!4194493))

(declare-fun m!4194495 () Bool)

(assert (=> b!3683330 m!4194495))

(declare-fun m!4194497 () Bool)

(assert (=> b!3683330 m!4194497))

(declare-fun m!4194499 () Bool)

(assert (=> b!3683330 m!4194499))

(declare-fun m!4194501 () Bool)

(assert (=> b!3683330 m!4194501))

(assert (=> b!3683330 m!4194059))

(assert (=> b!3683330 m!4194479))

(declare-fun m!4194503 () Bool)

(assert (=> b!3683330 m!4194503))

(declare-fun m!4194505 () Bool)

(assert (=> b!3683330 m!4194505))

(assert (=> b!3683330 m!4194491))

(assert (=> b!3683330 m!4194503))

(declare-fun m!4194507 () Bool)

(assert (=> b!3683330 m!4194507))

(declare-fun m!4194509 () Bool)

(assert (=> b!3683330 m!4194509))

(declare-fun m!4194511 () Bool)

(assert (=> b!3683330 m!4194511))

(declare-fun m!4194513 () Bool)

(assert (=> b!3683330 m!4194513))

(assert (=> b!3683330 m!4194495))

(declare-fun m!4194515 () Bool)

(assert (=> b!3683330 m!4194515))

(declare-fun m!4194517 () Bool)

(assert (=> b!3683330 m!4194517))

(declare-fun m!4194519 () Bool)

(assert (=> b!3683330 m!4194519))

(declare-fun m!4194521 () Bool)

(assert (=> b!3683330 m!4194521))

(assert (=> b!3683330 m!4194513))

(declare-fun m!4194523 () Bool)

(assert (=> b!3683330 m!4194523))

(declare-fun m!4194525 () Bool)

(assert (=> b!3683330 m!4194525))

(assert (=> b!3683330 m!4194509))

(declare-fun m!4194527 () Bool)

(assert (=> b!3683330 m!4194527))

(declare-fun m!4194529 () Bool)

(assert (=> b!3683330 m!4194529))

(declare-fun m!4194531 () Bool)

(assert (=> b!3683330 m!4194531))

(declare-fun m!4194533 () Bool)

(assert (=> b!3683330 m!4194533))

(declare-fun m!4194535 () Bool)

(assert (=> b!3683330 m!4194535))

(assert (=> b!3683330 m!4194531))

(assert (=> b!3683330 m!4194505))

(declare-fun m!4194537 () Bool)

(assert (=> b!3683330 m!4194537))

(assert (=> b!3683330 m!4194059))

(declare-fun m!4194539 () Bool)

(assert (=> b!3683330 m!4194539))

(assert (=> b!3683330 m!4194059))

(assert (=> b!3683330 m!4194509))

(declare-fun m!4194541 () Bool)

(assert (=> b!3683330 m!4194541))

(assert (=> b!3683330 m!4194511))

(declare-fun m!4194543 () Bool)

(assert (=> b!3683330 m!4194543))

(declare-fun m!4194545 () Bool)

(assert (=> b!3683330 m!4194545))

(declare-fun m!4194547 () Bool)

(assert (=> b!3683330 m!4194547))

(assert (=> b!3683330 m!4194535))

(assert (=> b!3683330 m!4194543))

(assert (=> b!3683330 m!4194521))

(assert (=> b!3683330 m!4194535))

(declare-fun m!4194549 () Bool)

(assert (=> b!3683330 m!4194549))

(declare-fun m!4194551 () Bool)

(assert (=> d!1081184 m!4194551))

(assert (=> d!1081184 m!4194511))

(declare-fun m!4194553 () Bool)

(assert (=> d!1081184 m!4194553))

(assert (=> d!1081184 m!4194059))

(assert (=> d!1081184 m!4194059))

(declare-fun m!4194555 () Bool)

(assert (=> d!1081184 m!4194555))

(declare-fun m!4194557 () Bool)

(assert (=> d!1081184 m!4194557))

(assert (=> d!1081184 m!4194059))

(assert (=> d!1081184 m!4194163))

(declare-fun m!4194559 () Bool)

(assert (=> d!1081184 m!4194559))

(assert (=> d!1081184 m!4194059))

(assert (=> d!1081184 m!4194479))

(assert (=> d!1081184 m!4194551))

(declare-fun m!4194561 () Bool)

(assert (=> d!1081184 m!4194561))

(declare-fun m!4194563 () Bool)

(assert (=> b!3683325 m!4194563))

(declare-fun m!4194565 () Bool)

(assert (=> b!3683325 m!4194565))

(assert (=> d!1081114 d!1081184))

(declare-fun b!3683334 () Bool)

(declare-fun b_free!97637 () Bool)

(declare-fun b_next!98341 () Bool)

(assert (=> b!3683334 (= b_free!97637 (not b_next!98341))))

(declare-fun tp!1119563 () Bool)

(declare-fun b_and!275291 () Bool)

(assert (=> b!3683334 (= tp!1119563 b_and!275291)))

(declare-fun b_free!97639 () Bool)

(declare-fun b_next!98343 () Bool)

(assert (=> b!3683334 (= b_free!97639 (not b_next!98343))))

(declare-fun t!300916 () Bool)

(declare-fun tb!213659 () Bool)

(assert (=> (and b!3683334 (= (toChars!8017 (transformation!5858 (h!44292 (t!300895 (t!300895 rules!3568))))) (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313))))))) t!300916) tb!213659))

(declare-fun result!259974 () Bool)

(assert (= result!259974 result!259950))

(assert (=> d!1081088 t!300916))

(declare-fun tp!1119564 () Bool)

(declare-fun b_and!275293 () Bool)

(assert (=> b!3683334 (= tp!1119564 (and (=> t!300916 result!259974) b_and!275293))))

(declare-fun e!2280816 () Bool)

(assert (=> b!3683334 (= e!2280816 (and tp!1119563 tp!1119564))))

(declare-fun b!3683333 () Bool)

(declare-fun tp!1119566 () Bool)

(declare-fun e!2280817 () Bool)

(assert (=> b!3683333 (= e!2280817 (and tp!1119566 (inv!52356 (tag!6664 (h!44292 (t!300895 (t!300895 rules!3568))))) (inv!52358 (transformation!5858 (h!44292 (t!300895 (t!300895 rules!3568))))) e!2280816))))

(declare-fun b!3683332 () Bool)

(declare-fun e!2280819 () Bool)

(declare-fun tp!1119565 () Bool)

(assert (=> b!3683332 (= e!2280819 (and e!2280817 tp!1119565))))

(assert (=> b!3683088 (= tp!1119517 e!2280819)))

(assert (= b!3683333 b!3683334))

(assert (= b!3683332 b!3683333))

(assert (= (and b!3683088 ((_ is Cons!38872) (t!300895 (t!300895 rules!3568)))) b!3683332))

(declare-fun m!4194567 () Bool)

(assert (=> b!3683333 m!4194567))

(declare-fun m!4194569 () Bool)

(assert (=> b!3683333 m!4194569))

(declare-fun e!2280825 () Bool)

(declare-fun tp!1119573 () Bool)

(declare-fun b!3683343 () Bool)

(declare-fun tp!1119574 () Bool)

(assert (=> b!3683343 (= e!2280825 (and (inv!52361 (left!30329 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) tp!1119574 (inv!52361 (right!30659 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) tp!1119573))))

(declare-fun b!3683345 () Bool)

(declare-fun e!2280824 () Bool)

(declare-fun tp!1119575 () Bool)

(assert (=> b!3683345 (= e!2280824 tp!1119575)))

(declare-fun b!3683344 () Bool)

(declare-fun inv!52367 (IArray!23817) Bool)

(assert (=> b!3683344 (= e!2280825 (and (inv!52367 (xs!15108 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) e!2280824))))

(assert (=> b!3682979 (= tp!1119458 (and (inv!52361 (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313))))))) e!2280825))))

(assert (= (and b!3682979 ((_ is Node!11906) (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) b!3683343))

(assert (= b!3683344 b!3683345))

(assert (= (and b!3682979 ((_ is Leaf!18446) (c!637110 (dynLambda!17047 (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))) (value!187413 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) b!3683344))

(declare-fun m!4194571 () Bool)

(assert (=> b!3683343 m!4194571))

(declare-fun m!4194573 () Bool)

(assert (=> b!3683343 m!4194573))

(declare-fun m!4194575 () Bool)

(assert (=> b!3683344 m!4194575))

(assert (=> b!3682979 m!4194097))

(declare-fun b!3683349 () Bool)

(declare-fun e!2280826 () Bool)

(declare-fun tp!1119578 () Bool)

(declare-fun tp!1119580 () Bool)

(assert (=> b!3683349 (= e!2280826 (and tp!1119578 tp!1119580))))

(declare-fun b!3683346 () Bool)

(assert (=> b!3683346 (= e!2280826 tp_is_empty!18317)))

(declare-fun b!3683347 () Bool)

(declare-fun tp!1119579 () Bool)

(declare-fun tp!1119577 () Bool)

(assert (=> b!3683347 (= e!2280826 (and tp!1119579 tp!1119577))))

(assert (=> b!3683072 (= tp!1119502 e!2280826)))

(declare-fun b!3683348 () Bool)

(declare-fun tp!1119576 () Bool)

(assert (=> b!3683348 (= e!2280826 tp!1119576)))

(assert (= (and b!3683072 ((_ is ElementMatch!10617) (regOne!21746 (regex!5858 (h!44292 rules!3568))))) b!3683346))

(assert (= (and b!3683072 ((_ is Concat!16706) (regOne!21746 (regex!5858 (h!44292 rules!3568))))) b!3683347))

(assert (= (and b!3683072 ((_ is Star!10617) (regOne!21746 (regex!5858 (h!44292 rules!3568))))) b!3683348))

(assert (= (and b!3683072 ((_ is Union!10617) (regOne!21746 (regex!5858 (h!44292 rules!3568))))) b!3683349))

(declare-fun b!3683353 () Bool)

(declare-fun e!2280827 () Bool)

(declare-fun tp!1119583 () Bool)

(declare-fun tp!1119585 () Bool)

(assert (=> b!3683353 (= e!2280827 (and tp!1119583 tp!1119585))))

(declare-fun b!3683350 () Bool)

(assert (=> b!3683350 (= e!2280827 tp_is_empty!18317)))

(declare-fun b!3683351 () Bool)

(declare-fun tp!1119584 () Bool)

(declare-fun tp!1119582 () Bool)

(assert (=> b!3683351 (= e!2280827 (and tp!1119584 tp!1119582))))

(assert (=> b!3683072 (= tp!1119500 e!2280827)))

(declare-fun b!3683352 () Bool)

(declare-fun tp!1119581 () Bool)

(assert (=> b!3683352 (= e!2280827 tp!1119581)))

(assert (= (and b!3683072 ((_ is ElementMatch!10617) (regTwo!21746 (regex!5858 (h!44292 rules!3568))))) b!3683350))

(assert (= (and b!3683072 ((_ is Concat!16706) (regTwo!21746 (regex!5858 (h!44292 rules!3568))))) b!3683351))

(assert (= (and b!3683072 ((_ is Star!10617) (regTwo!21746 (regex!5858 (h!44292 rules!3568))))) b!3683352))

(assert (= (and b!3683072 ((_ is Union!10617) (regTwo!21746 (regex!5858 (h!44292 rules!3568))))) b!3683353))

(declare-fun b!3683357 () Bool)

(declare-fun e!2280828 () Bool)

(declare-fun tp!1119588 () Bool)

(declare-fun tp!1119590 () Bool)

(assert (=> b!3683357 (= e!2280828 (and tp!1119588 tp!1119590))))

(declare-fun b!3683354 () Bool)

(assert (=> b!3683354 (= e!2280828 tp_is_empty!18317)))

(declare-fun b!3683355 () Bool)

(declare-fun tp!1119589 () Bool)

(declare-fun tp!1119587 () Bool)

(assert (=> b!3683355 (= e!2280828 (and tp!1119589 tp!1119587))))

(assert (=> b!3683074 (= tp!1119501 e!2280828)))

(declare-fun b!3683356 () Bool)

(declare-fun tp!1119586 () Bool)

(assert (=> b!3683356 (= e!2280828 tp!1119586)))

(assert (= (and b!3683074 ((_ is ElementMatch!10617) (regOne!21747 (regex!5858 (h!44292 rules!3568))))) b!3683354))

(assert (= (and b!3683074 ((_ is Concat!16706) (regOne!21747 (regex!5858 (h!44292 rules!3568))))) b!3683355))

(assert (= (and b!3683074 ((_ is Star!10617) (regOne!21747 (regex!5858 (h!44292 rules!3568))))) b!3683356))

(assert (= (and b!3683074 ((_ is Union!10617) (regOne!21747 (regex!5858 (h!44292 rules!3568))))) b!3683357))

(declare-fun b!3683361 () Bool)

(declare-fun e!2280829 () Bool)

(declare-fun tp!1119593 () Bool)

(declare-fun tp!1119595 () Bool)

(assert (=> b!3683361 (= e!2280829 (and tp!1119593 tp!1119595))))

(declare-fun b!3683358 () Bool)

(assert (=> b!3683358 (= e!2280829 tp_is_empty!18317)))

(declare-fun b!3683359 () Bool)

(declare-fun tp!1119594 () Bool)

(declare-fun tp!1119592 () Bool)

(assert (=> b!3683359 (= e!2280829 (and tp!1119594 tp!1119592))))

(assert (=> b!3683074 (= tp!1119503 e!2280829)))

(declare-fun b!3683360 () Bool)

(declare-fun tp!1119591 () Bool)

(assert (=> b!3683360 (= e!2280829 tp!1119591)))

(assert (= (and b!3683074 ((_ is ElementMatch!10617) (regTwo!21747 (regex!5858 (h!44292 rules!3568))))) b!3683358))

(assert (= (and b!3683074 ((_ is Concat!16706) (regTwo!21747 (regex!5858 (h!44292 rules!3568))))) b!3683359))

(assert (= (and b!3683074 ((_ is Star!10617) (regTwo!21747 (regex!5858 (h!44292 rules!3568))))) b!3683360))

(assert (= (and b!3683074 ((_ is Union!10617) (regTwo!21747 (regex!5858 (h!44292 rules!3568))))) b!3683361))

(declare-fun b!3683365 () Bool)

(declare-fun e!2280830 () Bool)

(declare-fun tp!1119598 () Bool)

(declare-fun tp!1119600 () Bool)

(assert (=> b!3683365 (= e!2280830 (and tp!1119598 tp!1119600))))

(declare-fun b!3683362 () Bool)

(assert (=> b!3683362 (= e!2280830 tp_is_empty!18317)))

(declare-fun b!3683363 () Bool)

(declare-fun tp!1119599 () Bool)

(declare-fun tp!1119597 () Bool)

(assert (=> b!3683363 (= e!2280830 (and tp!1119599 tp!1119597))))

(assert (=> b!3683089 (= tp!1119518 e!2280830)))

(declare-fun b!3683364 () Bool)

(declare-fun tp!1119596 () Bool)

(assert (=> b!3683364 (= e!2280830 tp!1119596)))

(assert (= (and b!3683089 ((_ is ElementMatch!10617) (regex!5858 (h!44292 (t!300895 rules!3568))))) b!3683362))

(assert (= (and b!3683089 ((_ is Concat!16706) (regex!5858 (h!44292 (t!300895 rules!3568))))) b!3683363))

(assert (= (and b!3683089 ((_ is Star!10617) (regex!5858 (h!44292 (t!300895 rules!3568))))) b!3683364))

(assert (= (and b!3683089 ((_ is Union!10617) (regex!5858 (h!44292 (t!300895 rules!3568))))) b!3683365))

(declare-fun b!3683366 () Bool)

(declare-fun e!2280831 () Bool)

(declare-fun tp!1119601 () Bool)

(assert (=> b!3683366 (= e!2280831 (and tp_is_empty!18317 tp!1119601))))

(assert (=> b!3683079 (= tp!1119506 e!2280831)))

(assert (= (and b!3683079 ((_ is Cons!38871) (t!300894 (t!300894 input!3129)))) b!3683366))

(declare-fun b!3683370 () Bool)

(declare-fun e!2280832 () Bool)

(declare-fun tp!1119604 () Bool)

(declare-fun tp!1119606 () Bool)

(assert (=> b!3683370 (= e!2280832 (and tp!1119604 tp!1119606))))

(declare-fun b!3683367 () Bool)

(assert (=> b!3683367 (= e!2280832 tp_is_empty!18317)))

(declare-fun b!3683368 () Bool)

(declare-fun tp!1119605 () Bool)

(declare-fun tp!1119603 () Bool)

(assert (=> b!3683368 (= e!2280832 (and tp!1119605 tp!1119603))))

(assert (=> b!3683073 (= tp!1119499 e!2280832)))

(declare-fun b!3683369 () Bool)

(declare-fun tp!1119602 () Bool)

(assert (=> b!3683369 (= e!2280832 tp!1119602)))

(assert (= (and b!3683073 ((_ is ElementMatch!10617) (reg!10946 (regex!5858 (h!44292 rules!3568))))) b!3683367))

(assert (= (and b!3683073 ((_ is Concat!16706) (reg!10946 (regex!5858 (h!44292 rules!3568))))) b!3683368))

(assert (= (and b!3683073 ((_ is Star!10617) (reg!10946 (regex!5858 (h!44292 rules!3568))))) b!3683369))

(assert (= (and b!3683073 ((_ is Union!10617) (reg!10946 (regex!5858 (h!44292 rules!3568))))) b!3683370))

(declare-fun b_lambda!109415 () Bool)

(assert (= b_lambda!109407 (or d!1081096 b_lambda!109415)))

(declare-fun bs!573743 () Bool)

(declare-fun d!1081228 () Bool)

(assert (= bs!573743 (and d!1081228 d!1081096)))

(assert (=> bs!573743 (= (dynLambda!17050 lambda!124801 (h!44292 rules!3568)) (ruleValid!2116 thiss!25197 (h!44292 rules!3568)))))

(assert (=> bs!573743 m!4194153))

(assert (=> b!3683106 d!1081228))

(declare-fun b_lambda!109417 () Bool)

(assert (= b_lambda!109405 (or (and b!3682957 b_free!97623 (= (toChars!8017 (transformation!5858 (h!44292 rules!3568))) (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) (and b!3683090 b_free!97631 (= (toChars!8017 (transformation!5858 (h!44292 (t!300895 rules!3568)))) (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) (and b!3683334 b_free!97639 (= (toChars!8017 (transformation!5858 (h!44292 (t!300895 (t!300895 rules!3568))))) (toChars!8017 (transformation!5858 (rule!8698 (head!7910 (list!14457 (_1!22501 lt!1288313)))))))) b_lambda!109417)))

(check-sat (not b!3683333) (not b!3683351) b_and!275283 (not b!3683361) b_and!275285 (not b!3683119) (not d!1081144) (not b!3683330) (not d!1081184) (not b!3683120) (not d!1081174) (not b!3683344) (not b!3683132) (not b!3683360) (not d!1081156) (not b!3683349) (not d!1081158) (not b!3683343) (not d!1081168) b_and!275291 (not b!3682979) (not b!3683135) (not b!3683332) (not b!3683133) (not b!3683355) (not b!3683167) b_and!275293 (not d!1081166) (not b!3683345) (not b!3683331) (not b!3683366) (not b!3683365) (not b!3683169) (not b_next!98341) (not d!1081182) (not b!3683353) (not bs!573743) (not b!3683356) (not b_next!98343) (not d!1081148) (not b!3683181) (not d!1081134) (not d!1081150) (not b_lambda!109417) tp_is_empty!18317 (not b!3683139) (not b!3683180) (not b!3683370) (not b!3683363) (not b_next!98325) (not b!3683348) (not b!3683357) (not b_lambda!109415) (not d!1081172) (not d!1081160) (not d!1081152) (not b!3683364) (not b!3683151) (not b_next!98335) (not b!3683144) (not b!3683326) (not d!1081154) (not d!1081176) (not d!1081170) b_and!275277 (not b!3683107) (not b!3683325) (not b!3683146) (not d!1081138) (not b!3683368) (not b!3683369) (not b!3683145) (not b!3683118) (not b!3683352) (not b!3683121) b_and!275271 (not b_next!98327) (not b_next!98333) (not b!3683347) (not d!1081136) (not b!3683359))
(check-sat b_and!275291 b_and!275283 b_and!275293 (not b_next!98341) (not b_next!98343) (not b_next!98325) b_and!275285 (not b_next!98335) b_and!275277 b_and!275271 (not b_next!98327) (not b_next!98333))
