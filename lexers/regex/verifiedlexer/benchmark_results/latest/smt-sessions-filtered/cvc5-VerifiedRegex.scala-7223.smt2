; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384674 () Bool)

(assert start!384674)

(declare-fun b!4074630 () Bool)

(declare-fun b_free!113513 () Bool)

(declare-fun b_next!114217 () Bool)

(assert (=> b!4074630 (= b_free!113513 (not b_next!114217))))

(declare-fun tp!1233364 () Bool)

(declare-fun b_and!313211 () Bool)

(assert (=> b!4074630 (= tp!1233364 b_and!313211)))

(declare-fun b_free!113515 () Bool)

(declare-fun b_next!114219 () Bool)

(assert (=> b!4074630 (= b_free!113515 (not b_next!114219))))

(declare-fun tp!1233368 () Bool)

(declare-fun b_and!313213 () Bool)

(assert (=> b!4074630 (= tp!1233368 b_and!313213)))

(declare-fun b!4074635 () Bool)

(declare-fun b_free!113517 () Bool)

(declare-fun b_next!114221 () Bool)

(assert (=> b!4074635 (= b_free!113517 (not b_next!114221))))

(declare-fun tp!1233369 () Bool)

(declare-fun b_and!313215 () Bool)

(assert (=> b!4074635 (= tp!1233369 b_and!313215)))

(declare-fun b_free!113519 () Bool)

(declare-fun b_next!114223 () Bool)

(assert (=> b!4074635 (= b_free!113519 (not b_next!114223))))

(declare-fun tp!1233372 () Bool)

(declare-fun b_and!313217 () Bool)

(assert (=> b!4074635 (= tp!1233372 b_and!313217)))

(declare-fun b!4074623 () Bool)

(declare-fun tp!1233367 () Bool)

(declare-datatypes ((C!24030 0))(
  ( (C!24031 (val!14125 Int)) )
))
(declare-datatypes ((Regex!11922 0))(
  ( (ElementMatch!11922 (c!703023 C!24030)) (Concat!19169 (regOne!24356 Regex!11922) (regTwo!24356 Regex!11922)) (EmptyExpr!11922) (Star!11922 (reg!12251 Regex!11922)) (EmptyLang!11922) (Union!11922 (regOne!24357 Regex!11922) (regTwo!24357 Regex!11922)) )
))
(declare-datatypes ((String!49986 0))(
  ( (String!49987 (value!220612 String)) )
))
(declare-datatypes ((List!43712 0))(
  ( (Nil!43588) (Cons!43588 (h!49008 (_ BitVec 16)) (t!337263 List!43712)) )
))
(declare-datatypes ((TokenValue!7247 0))(
  ( (FloatLiteralValue!14494 (text!51174 List!43712)) (TokenValueExt!7246 (__x!26711 Int)) (Broken!36235 (value!220613 List!43712)) (Object!7370) (End!7247) (Def!7247) (Underscore!7247) (Match!7247) (Else!7247) (Error!7247) (Case!7247) (If!7247) (Extends!7247) (Abstract!7247) (Class!7247) (Val!7247) (DelimiterValue!14494 (del!7307 List!43712)) (KeywordValue!7253 (value!220614 List!43712)) (CommentValue!14494 (value!220615 List!43712)) (WhitespaceValue!14494 (value!220616 List!43712)) (IndentationValue!7247 (value!220617 List!43712)) (String!49988) (Int32!7247) (Broken!36236 (value!220618 List!43712)) (Boolean!7248) (Unit!63135) (OperatorValue!7250 (op!7307 List!43712)) (IdentifierValue!14494 (value!220619 List!43712)) (IdentifierValue!14495 (value!220620 List!43712)) (WhitespaceValue!14495 (value!220621 List!43712)) (True!14494) (False!14494) (Broken!36237 (value!220622 List!43712)) (Broken!36238 (value!220623 List!43712)) (True!14495) (RightBrace!7247) (RightBracket!7247) (Colon!7247) (Null!7247) (Comma!7247) (LeftBracket!7247) (False!14495) (LeftBrace!7247) (ImaginaryLiteralValue!7247 (text!51175 List!43712)) (StringLiteralValue!21741 (value!220624 List!43712)) (EOFValue!7247 (value!220625 List!43712)) (IdentValue!7247 (value!220626 List!43712)) (DelimiterValue!14495 (value!220627 List!43712)) (DedentValue!7247 (value!220628 List!43712)) (NewLineValue!7247 (value!220629 List!43712)) (IntegerValue!21741 (value!220630 (_ BitVec 32)) (text!51176 List!43712)) (IntegerValue!21742 (value!220631 Int) (text!51177 List!43712)) (Times!7247) (Or!7247) (Equal!7247) (Minus!7247) (Broken!36239 (value!220632 List!43712)) (And!7247) (Div!7247) (LessEqual!7247) (Mod!7247) (Concat!19170) (Not!7247) (Plus!7247) (SpaceValue!7247 (value!220633 List!43712)) (IntegerValue!21743 (value!220634 Int) (text!51178 List!43712)) (StringLiteralValue!21742 (text!51179 List!43712)) (FloatLiteralValue!14495 (text!51180 List!43712)) (BytesLiteralValue!7247 (value!220635 List!43712)) (CommentValue!14495 (value!220636 List!43712)) (StringLiteralValue!21743 (value!220637 List!43712)) (ErrorTokenValue!7247 (msg!7308 List!43712)) )
))
(declare-datatypes ((List!43713 0))(
  ( (Nil!43589) (Cons!43589 (h!49009 C!24030) (t!337264 List!43713)) )
))
(declare-datatypes ((IArray!26461 0))(
  ( (IArray!26462 (innerList!13288 List!43713)) )
))
(declare-datatypes ((Conc!13228 0))(
  ( (Node!13228 (left!32767 Conc!13228) (right!33097 Conc!13228) (csize!26686 Int) (cheight!13439 Int)) (Leaf!20452 (xs!16534 IArray!26461) (csize!26687 Int)) (Empty!13228) )
))
(declare-datatypes ((BalanceConc!26050 0))(
  ( (BalanceConc!26051 (c!703024 Conc!13228)) )
))
(declare-datatypes ((TokenValueInjection!13922 0))(
  ( (TokenValueInjection!13923 (toValue!9581 Int) (toChars!9440 Int)) )
))
(declare-datatypes ((Rule!13834 0))(
  ( (Rule!13835 (regex!7017 Regex!11922) (tag!7877 String!49986) (isSeparator!7017 Bool) (transformation!7017 TokenValueInjection!13922)) )
))
(declare-datatypes ((List!43714 0))(
  ( (Nil!43590) (Cons!43590 (h!49010 Rule!13834) (t!337265 List!43714)) )
))
(declare-fun rules!3870 () List!43714)

(declare-fun e!2528993 () Bool)

(declare-fun e!2528994 () Bool)

(declare-fun inv!58239 (String!49986) Bool)

(declare-fun inv!58242 (TokenValueInjection!13922) Bool)

(assert (=> b!4074623 (= e!2528994 (and tp!1233367 (inv!58239 (tag!7877 (h!49010 rules!3870))) (inv!58242 (transformation!7017 (h!49010 rules!3870))) e!2528993))))

(declare-fun b!4074624 () Bool)

(declare-fun e!2528995 () Bool)

(declare-fun tp_is_empty!20847 () Bool)

(declare-fun tp!1233365 () Bool)

(assert (=> b!4074624 (= e!2528995 (and tp_is_empty!20847 tp!1233365))))

(declare-fun b!4074625 () Bool)

(declare-fun e!2528998 () Bool)

(declare-datatypes ((Token!13160 0))(
  ( (Token!13161 (value!220638 TokenValue!7247) (rule!10121 Rule!13834) (size!32565 Int) (originalCharacters!7611 List!43713)) )
))
(declare-datatypes ((tuple2!42576 0))(
  ( (tuple2!42577 (_1!24422 Token!13160) (_2!24422 List!43713)) )
))
(declare-datatypes ((Option!9425 0))(
  ( (None!9424) (Some!9424 (v!39866 tuple2!42576)) )
))
(declare-fun lt!1458261 () Option!9425)

(declare-fun get!14294 (Option!9425) tuple2!42576)

(assert (=> b!4074625 (= e!2528998 (not (= (rule!10121 (_1!24422 (get!14294 lt!1458261))) (h!49010 rules!3870))))))

(declare-fun b!4074626 () Bool)

(declare-fun e!2528985 () Bool)

(declare-fun isDefined!7147 (Option!9425) Bool)

(assert (=> b!4074626 (= e!2528985 (isDefined!7147 lt!1458261))))

(declare-fun b!4074627 () Bool)

(declare-fun res!1664077 () Bool)

(declare-fun e!2528987 () Bool)

(assert (=> b!4074627 (=> (not res!1664077) (not e!2528987))))

(declare-fun suffix!1518 () List!43713)

(declare-fun p!2988 () List!43713)

(declare-fun input!3411 () List!43713)

(declare-fun ++!11423 (List!43713 List!43713) List!43713)

(assert (=> b!4074627 (= res!1664077 (= input!3411 (++!11423 p!2988 suffix!1518)))))

(declare-fun b!4074628 () Bool)

(declare-fun e!2528990 () Bool)

(declare-fun e!2528992 () Bool)

(assert (=> b!4074628 (= e!2528990 e!2528992)))

(declare-fun res!1664080 () Bool)

(assert (=> b!4074628 (=> res!1664080 e!2528992)))

(declare-fun isEmpty!26022 (List!43714) Bool)

(assert (=> b!4074628 (= res!1664080 (isEmpty!26022 (t!337265 rules!3870)))))

(declare-datatypes ((LexerInterface!6606 0))(
  ( (LexerInterfaceExt!6603 (__x!26712 Int)) (Lexer!6604) )
))
(declare-fun thiss!26199 () LexerInterface!6606)

(declare-fun rulesInvariant!5949 (LexerInterface!6606 List!43714) Bool)

(assert (=> b!4074628 (rulesInvariant!5949 thiss!26199 (t!337265 rules!3870))))

(declare-datatypes ((Unit!63136 0))(
  ( (Unit!63137) )
))
(declare-fun lt!1458262 () Unit!63136)

(declare-fun lemmaInvariantOnRulesThenOnTail!737 (LexerInterface!6606 Rule!13834 List!43714) Unit!63136)

(assert (=> b!4074628 (= lt!1458262 (lemmaInvariantOnRulesThenOnTail!737 thiss!26199 (h!49010 rules!3870) (t!337265 rules!3870)))))

(declare-fun res!1664073 () Bool)

(assert (=> start!384674 (=> (not res!1664073) (not e!2528987))))

(assert (=> start!384674 (= res!1664073 (is-Lexer!6604 thiss!26199))))

(assert (=> start!384674 e!2528987))

(assert (=> start!384674 true))

(assert (=> start!384674 e!2528995))

(declare-fun e!2528996 () Bool)

(assert (=> start!384674 e!2528996))

(declare-fun e!2528986 () Bool)

(assert (=> start!384674 e!2528986))

(declare-fun e!2528997 () Bool)

(assert (=> start!384674 e!2528997))

(declare-fun e!2528991 () Bool)

(assert (=> start!384674 e!2528991))

(declare-fun e!2528989 () Bool)

(declare-fun tp!1233371 () Bool)

(declare-fun b!4074629 () Bool)

(declare-fun r!4213 () Rule!13834)

(assert (=> b!4074629 (= e!2528991 (and tp!1233371 (inv!58239 (tag!7877 r!4213)) (inv!58242 (transformation!7017 r!4213)) e!2528989))))

(assert (=> b!4074630 (= e!2528993 (and tp!1233364 tp!1233368))))

(declare-fun b!4074631 () Bool)

(declare-fun e!2528988 () Bool)

(assert (=> b!4074631 (= e!2528988 (not e!2528990))))

(declare-fun res!1664076 () Bool)

(assert (=> b!4074631 (=> res!1664076 e!2528990)))

(declare-fun matchR!5867 (Regex!11922 List!43713) Bool)

(assert (=> b!4074631 (= res!1664076 (not (matchR!5867 (regex!7017 r!4213) p!2988)))))

(declare-fun ruleValid!2941 (LexerInterface!6606 Rule!13834) Bool)

(assert (=> b!4074631 (ruleValid!2941 thiss!26199 r!4213)))

(declare-fun lt!1458263 () Unit!63136)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2009 (LexerInterface!6606 Rule!13834 List!43714) Unit!63136)

(assert (=> b!4074631 (= lt!1458263 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2009 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4074632 () Bool)

(assert (=> b!4074632 (= e!2528987 e!2528988)))

(declare-fun res!1664071 () Bool)

(assert (=> b!4074632 (=> (not res!1664071) (not e!2528988))))

(declare-fun lt!1458258 () BalanceConc!26050)

(declare-fun maxPrefix!3898 (LexerInterface!6606 List!43714 List!43713) Option!9425)

(declare-fun apply!10200 (TokenValueInjection!13922 BalanceConc!26050) TokenValue!7247)

(declare-fun size!32566 (List!43713) Int)

(assert (=> b!4074632 (= res!1664071 (= (maxPrefix!3898 thiss!26199 rules!3870 input!3411) (Some!9424 (tuple2!42577 (Token!13161 (apply!10200 (transformation!7017 r!4213) lt!1458258) r!4213 (size!32566 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458259 () Unit!63136)

(declare-fun lemmaSemiInverse!1984 (TokenValueInjection!13922 BalanceConc!26050) Unit!63136)

(assert (=> b!4074632 (= lt!1458259 (lemmaSemiInverse!1984 (transformation!7017 r!4213) lt!1458258))))

(declare-fun seqFromList!5234 (List!43713) BalanceConc!26050)

(assert (=> b!4074632 (= lt!1458258 (seqFromList!5234 p!2988))))

(declare-fun b!4074633 () Bool)

(declare-fun res!1664069 () Bool)

(assert (=> b!4074633 (=> (not res!1664069) (not e!2528987))))

(declare-fun contains!8684 (List!43714 Rule!13834) Bool)

(assert (=> b!4074633 (= res!1664069 (contains!8684 rules!3870 r!4213))))

(declare-fun b!4074634 () Bool)

(declare-fun res!1664074 () Bool)

(assert (=> b!4074634 (=> res!1664074 e!2528990)))

(assert (=> b!4074634 (= res!1664074 (or (not (is-Cons!43590 rules!3870)) (not (= (h!49010 rules!3870) r!4213))))))

(assert (=> b!4074635 (= e!2528989 (and tp!1233369 tp!1233372))))

(declare-fun b!4074636 () Bool)

(declare-fun tp!1233363 () Bool)

(assert (=> b!4074636 (= e!2528986 (and tp_is_empty!20847 tp!1233363))))

(declare-fun b!4074637 () Bool)

(declare-fun res!1664072 () Bool)

(assert (=> b!4074637 (=> (not res!1664072) (not e!2528987))))

(declare-fun isEmpty!26023 (List!43713) Bool)

(assert (=> b!4074637 (= res!1664072 (not (isEmpty!26023 p!2988)))))

(declare-fun b!4074638 () Bool)

(declare-fun res!1664075 () Bool)

(assert (=> b!4074638 (=> (not res!1664075) (not e!2528987))))

(assert (=> b!4074638 (= res!1664075 (rulesInvariant!5949 thiss!26199 rules!3870))))

(declare-fun b!4074639 () Bool)

(declare-fun tp!1233366 () Bool)

(assert (=> b!4074639 (= e!2528997 (and tp_is_empty!20847 tp!1233366))))

(declare-fun b!4074640 () Bool)

(declare-fun res!1664078 () Bool)

(assert (=> b!4074640 (=> (not res!1664078) (not e!2528987))))

(assert (=> b!4074640 (= res!1664078 (not (isEmpty!26022 rules!3870)))))

(declare-fun b!4074641 () Bool)

(assert (=> b!4074641 (= e!2528992 e!2528985)))

(declare-fun res!1664070 () Bool)

(assert (=> b!4074641 (=> res!1664070 e!2528985)))

(declare-fun lt!1458260 () Bool)

(assert (=> b!4074641 (= res!1664070 lt!1458260)))

(assert (=> b!4074641 e!2528998))

(declare-fun res!1664079 () Bool)

(assert (=> b!4074641 (=> res!1664079 e!2528998)))

(assert (=> b!4074641 (= res!1664079 lt!1458260)))

(declare-fun isEmpty!26024 (Option!9425) Bool)

(assert (=> b!4074641 (= lt!1458260 (isEmpty!26024 lt!1458261))))

(assert (=> b!4074641 (= lt!1458261 (maxPrefix!3898 thiss!26199 (t!337265 rules!3870) input!3411))))

(declare-fun lt!1458264 () Unit!63136)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!11 (LexerInterface!6606 Rule!13834 List!43714 List!43713) Unit!63136)

(assert (=> b!4074641 (= lt!1458264 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!11 thiss!26199 (h!49010 rules!3870) (t!337265 rules!3870) input!3411))))

(declare-fun b!4074642 () Bool)

(declare-fun tp!1233370 () Bool)

(assert (=> b!4074642 (= e!2528996 (and e!2528994 tp!1233370))))

(assert (= (and start!384674 res!1664073) b!4074640))

(assert (= (and b!4074640 res!1664078) b!4074638))

(assert (= (and b!4074638 res!1664075) b!4074633))

(assert (= (and b!4074633 res!1664069) b!4074627))

(assert (= (and b!4074627 res!1664077) b!4074637))

(assert (= (and b!4074637 res!1664072) b!4074632))

(assert (= (and b!4074632 res!1664071) b!4074631))

(assert (= (and b!4074631 (not res!1664076)) b!4074634))

(assert (= (and b!4074634 (not res!1664074)) b!4074628))

(assert (= (and b!4074628 (not res!1664080)) b!4074641))

(assert (= (and b!4074641 (not res!1664079)) b!4074625))

(assert (= (and b!4074641 (not res!1664070)) b!4074626))

(assert (= (and start!384674 (is-Cons!43589 suffix!1518)) b!4074624))

(assert (= b!4074623 b!4074630))

(assert (= b!4074642 b!4074623))

(assert (= (and start!384674 (is-Cons!43590 rules!3870)) b!4074642))

(assert (= (and start!384674 (is-Cons!43589 p!2988)) b!4074636))

(assert (= (and start!384674 (is-Cons!43589 input!3411)) b!4074639))

(assert (= b!4074629 b!4074635))

(assert (= start!384674 b!4074629))

(declare-fun m!4683217 () Bool)

(assert (=> b!4074623 m!4683217))

(declare-fun m!4683219 () Bool)

(assert (=> b!4074623 m!4683219))

(declare-fun m!4683221 () Bool)

(assert (=> b!4074638 m!4683221))

(declare-fun m!4683223 () Bool)

(assert (=> b!4074640 m!4683223))

(declare-fun m!4683225 () Bool)

(assert (=> b!4074628 m!4683225))

(declare-fun m!4683227 () Bool)

(assert (=> b!4074628 m!4683227))

(declare-fun m!4683229 () Bool)

(assert (=> b!4074628 m!4683229))

(declare-fun m!4683231 () Bool)

(assert (=> b!4074631 m!4683231))

(declare-fun m!4683233 () Bool)

(assert (=> b!4074631 m!4683233))

(declare-fun m!4683235 () Bool)

(assert (=> b!4074631 m!4683235))

(declare-fun m!4683237 () Bool)

(assert (=> b!4074637 m!4683237))

(declare-fun m!4683239 () Bool)

(assert (=> b!4074626 m!4683239))

(declare-fun m!4683241 () Bool)

(assert (=> b!4074632 m!4683241))

(declare-fun m!4683243 () Bool)

(assert (=> b!4074632 m!4683243))

(declare-fun m!4683245 () Bool)

(assert (=> b!4074632 m!4683245))

(declare-fun m!4683247 () Bool)

(assert (=> b!4074632 m!4683247))

(declare-fun m!4683249 () Bool)

(assert (=> b!4074632 m!4683249))

(declare-fun m!4683251 () Bool)

(assert (=> b!4074633 m!4683251))

(declare-fun m!4683253 () Bool)

(assert (=> b!4074627 m!4683253))

(declare-fun m!4683255 () Bool)

(assert (=> b!4074625 m!4683255))

(declare-fun m!4683257 () Bool)

(assert (=> b!4074641 m!4683257))

(declare-fun m!4683259 () Bool)

(assert (=> b!4074641 m!4683259))

(declare-fun m!4683261 () Bool)

(assert (=> b!4074641 m!4683261))

(declare-fun m!4683263 () Bool)

(assert (=> b!4074629 m!4683263))

(declare-fun m!4683265 () Bool)

(assert (=> b!4074629 m!4683265))

(push 1)

(assert (not b!4074636))

(assert (not b!4074626))

(assert b_and!313217)

(assert (not b!4074629))

(assert tp_is_empty!20847)

(assert b_and!313213)

(assert (not b!4074624))

(assert (not b!4074638))

(assert (not b!4074627))

(assert (not b!4074628))

(assert b_and!313211)

(assert (not b_next!114223))

(assert b_and!313215)

(assert (not b!4074637))

(assert (not b!4074641))

(assert (not b!4074623))

(assert (not b_next!114221))

(assert (not b!4074625))

(assert (not b!4074632))

(assert (not b_next!114219))

(assert (not b!4074640))

(assert (not b!4074633))

(assert (not b_next!114217))

(assert (not b!4074639))

(assert (not b!4074642))

(assert (not b!4074631))

(check-sat)

(pop 1)

(push 1)

(assert b_and!313217)

(assert (not b_next!114221))

(assert (not b_next!114219))

(assert (not b_next!114217))

(assert b_and!313213)

(assert b_and!313211)

(assert (not b_next!114223))

(assert b_and!313215)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1210816 () Bool)

(declare-fun dynLambda!18517 (Int BalanceConc!26050) TokenValue!7247)

(assert (=> d!1210816 (= (apply!10200 (transformation!7017 r!4213) lt!1458258) (dynLambda!18517 (toValue!9581 (transformation!7017 r!4213)) lt!1458258))))

(declare-fun b_lambda!119047 () Bool)

(assert (=> (not b_lambda!119047) (not d!1210816)))

(declare-fun t!337270 () Bool)

(declare-fun tb!244777 () Bool)

(assert (=> (and b!4074630 (= (toValue!9581 (transformation!7017 (h!49010 rules!3870))) (toValue!9581 (transformation!7017 r!4213))) t!337270) tb!244777))

(declare-fun result!296782 () Bool)

(declare-fun inv!21 (TokenValue!7247) Bool)

(assert (=> tb!244777 (= result!296782 (inv!21 (dynLambda!18517 (toValue!9581 (transformation!7017 r!4213)) lt!1458258)))))

(declare-fun m!4683317 () Bool)

(assert (=> tb!244777 m!4683317))

(assert (=> d!1210816 t!337270))

(declare-fun b_and!313227 () Bool)

(assert (= b_and!313211 (and (=> t!337270 result!296782) b_and!313227)))

(declare-fun t!337272 () Bool)

(declare-fun tb!244779 () Bool)

(assert (=> (and b!4074635 (= (toValue!9581 (transformation!7017 r!4213)) (toValue!9581 (transformation!7017 r!4213))) t!337272) tb!244779))

(declare-fun result!296786 () Bool)

(assert (= result!296786 result!296782))

(assert (=> d!1210816 t!337272))

(declare-fun b_and!313229 () Bool)

(assert (= b_and!313215 (and (=> t!337272 result!296786) b_and!313229)))

(declare-fun m!4683319 () Bool)

(assert (=> d!1210816 m!4683319))

(assert (=> b!4074632 d!1210816))

(declare-fun b!4074771 () Bool)

(declare-fun res!1664171 () Bool)

(declare-fun e!2529082 () Bool)

(assert (=> b!4074771 (=> (not res!1664171) (not e!2529082))))

(declare-fun lt!1458303 () Option!9425)

(declare-fun list!16225 (BalanceConc!26050) List!43713)

(declare-fun charsOf!4811 (Token!13160) BalanceConc!26050)

(assert (=> b!4074771 (= res!1664171 (= (list!16225 (charsOf!4811 (_1!24422 (get!14294 lt!1458303)))) (originalCharacters!7611 (_1!24422 (get!14294 lt!1458303)))))))

(declare-fun b!4074772 () Bool)

(declare-fun e!2529084 () Option!9425)

(declare-fun lt!1458302 () Option!9425)

(declare-fun lt!1458305 () Option!9425)

(assert (=> b!4074772 (= e!2529084 (ite (and (is-None!9424 lt!1458302) (is-None!9424 lt!1458305)) None!9424 (ite (is-None!9424 lt!1458305) lt!1458302 (ite (is-None!9424 lt!1458302) lt!1458305 (ite (>= (size!32565 (_1!24422 (v!39866 lt!1458302))) (size!32565 (_1!24422 (v!39866 lt!1458305)))) lt!1458302 lt!1458305)))))))

(declare-fun call!288426 () Option!9425)

(assert (=> b!4074772 (= lt!1458302 call!288426)))

(assert (=> b!4074772 (= lt!1458305 (maxPrefix!3898 thiss!26199 (t!337265 rules!3870) input!3411))))

(declare-fun b!4074773 () Bool)

(declare-fun res!1664165 () Bool)

(assert (=> b!4074773 (=> (not res!1664165) (not e!2529082))))

(assert (=> b!4074773 (= res!1664165 (matchR!5867 (regex!7017 (rule!10121 (_1!24422 (get!14294 lt!1458303)))) (list!16225 (charsOf!4811 (_1!24422 (get!14294 lt!1458303))))))))

(declare-fun d!1210818 () Bool)

(declare-fun e!2529083 () Bool)

(assert (=> d!1210818 e!2529083))

(declare-fun res!1664168 () Bool)

(assert (=> d!1210818 (=> res!1664168 e!2529083)))

(assert (=> d!1210818 (= res!1664168 (isEmpty!26024 lt!1458303))))

(assert (=> d!1210818 (= lt!1458303 e!2529084)))

(declare-fun c!703039 () Bool)

(assert (=> d!1210818 (= c!703039 (and (is-Cons!43590 rules!3870) (is-Nil!43590 (t!337265 rules!3870))))))

(declare-fun lt!1458306 () Unit!63136)

(declare-fun lt!1458304 () Unit!63136)

(assert (=> d!1210818 (= lt!1458306 lt!1458304)))

(declare-fun isPrefix!4098 (List!43713 List!43713) Bool)

(assert (=> d!1210818 (isPrefix!4098 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2649 (List!43713 List!43713) Unit!63136)

(assert (=> d!1210818 (= lt!1458304 (lemmaIsPrefixRefl!2649 input!3411 input!3411))))

(declare-fun rulesValidInductive!2578 (LexerInterface!6606 List!43714) Bool)

(assert (=> d!1210818 (rulesValidInductive!2578 thiss!26199 rules!3870)))

(assert (=> d!1210818 (= (maxPrefix!3898 thiss!26199 rules!3870 input!3411) lt!1458303)))

(declare-fun b!4074774 () Bool)

(assert (=> b!4074774 (= e!2529084 call!288426)))

(declare-fun bm!288421 () Bool)

(declare-fun maxPrefixOneRule!2896 (LexerInterface!6606 Rule!13834 List!43713) Option!9425)

(assert (=> bm!288421 (= call!288426 (maxPrefixOneRule!2896 thiss!26199 (h!49010 rules!3870) input!3411))))

(declare-fun b!4074775 () Bool)

(declare-fun res!1664169 () Bool)

(assert (=> b!4074775 (=> (not res!1664169) (not e!2529082))))

(assert (=> b!4074775 (= res!1664169 (< (size!32566 (_2!24422 (get!14294 lt!1458303))) (size!32566 input!3411)))))

(declare-fun b!4074776 () Bool)

(assert (=> b!4074776 (= e!2529083 e!2529082)))

(declare-fun res!1664167 () Bool)

(assert (=> b!4074776 (=> (not res!1664167) (not e!2529082))))

(assert (=> b!4074776 (= res!1664167 (isDefined!7147 lt!1458303))))

(declare-fun b!4074777 () Bool)

(assert (=> b!4074777 (= e!2529082 (contains!8684 rules!3870 (rule!10121 (_1!24422 (get!14294 lt!1458303)))))))

(declare-fun b!4074778 () Bool)

(declare-fun res!1664166 () Bool)

(assert (=> b!4074778 (=> (not res!1664166) (not e!2529082))))

(assert (=> b!4074778 (= res!1664166 (= (++!11423 (list!16225 (charsOf!4811 (_1!24422 (get!14294 lt!1458303)))) (_2!24422 (get!14294 lt!1458303))) input!3411))))

(declare-fun b!4074779 () Bool)

(declare-fun res!1664170 () Bool)

(assert (=> b!4074779 (=> (not res!1664170) (not e!2529082))))

(assert (=> b!4074779 (= res!1664170 (= (value!220638 (_1!24422 (get!14294 lt!1458303))) (apply!10200 (transformation!7017 (rule!10121 (_1!24422 (get!14294 lt!1458303)))) (seqFromList!5234 (originalCharacters!7611 (_1!24422 (get!14294 lt!1458303)))))))))

(assert (= (and d!1210818 c!703039) b!4074774))

(assert (= (and d!1210818 (not c!703039)) b!4074772))

(assert (= (or b!4074774 b!4074772) bm!288421))

(assert (= (and d!1210818 (not res!1664168)) b!4074776))

(assert (= (and b!4074776 res!1664167) b!4074771))

(assert (= (and b!4074771 res!1664171) b!4074775))

(assert (= (and b!4074775 res!1664169) b!4074778))

(assert (= (and b!4074778 res!1664166) b!4074779))

(assert (= (and b!4074779 res!1664170) b!4074773))

(assert (= (and b!4074773 res!1664165) b!4074777))

(declare-fun m!4683337 () Bool)

(assert (=> b!4074779 m!4683337))

(declare-fun m!4683339 () Bool)

(assert (=> b!4074779 m!4683339))

(assert (=> b!4074779 m!4683339))

(declare-fun m!4683341 () Bool)

(assert (=> b!4074779 m!4683341))

(assert (=> b!4074772 m!4683259))

(declare-fun m!4683343 () Bool)

(assert (=> b!4074776 m!4683343))

(declare-fun m!4683345 () Bool)

(assert (=> bm!288421 m!4683345))

(assert (=> b!4074771 m!4683337))

(declare-fun m!4683347 () Bool)

(assert (=> b!4074771 m!4683347))

(assert (=> b!4074771 m!4683347))

(declare-fun m!4683349 () Bool)

(assert (=> b!4074771 m!4683349))

(assert (=> b!4074775 m!4683337))

(declare-fun m!4683351 () Bool)

(assert (=> b!4074775 m!4683351))

(declare-fun m!4683353 () Bool)

(assert (=> b!4074775 m!4683353))

(assert (=> b!4074778 m!4683337))

(assert (=> b!4074778 m!4683347))

(assert (=> b!4074778 m!4683347))

(assert (=> b!4074778 m!4683349))

(assert (=> b!4074778 m!4683349))

(declare-fun m!4683355 () Bool)

(assert (=> b!4074778 m!4683355))

(assert (=> b!4074773 m!4683337))

(assert (=> b!4074773 m!4683347))

(assert (=> b!4074773 m!4683347))

(assert (=> b!4074773 m!4683349))

(assert (=> b!4074773 m!4683349))

(declare-fun m!4683357 () Bool)

(assert (=> b!4074773 m!4683357))

(assert (=> b!4074777 m!4683337))

(declare-fun m!4683359 () Bool)

(assert (=> b!4074777 m!4683359))

(declare-fun m!4683361 () Bool)

(assert (=> d!1210818 m!4683361))

(declare-fun m!4683363 () Bool)

(assert (=> d!1210818 m!4683363))

(declare-fun m!4683365 () Bool)

(assert (=> d!1210818 m!4683365))

(declare-fun m!4683367 () Bool)

(assert (=> d!1210818 m!4683367))

(assert (=> b!4074632 d!1210818))

(declare-fun d!1210832 () Bool)

(declare-fun lt!1458309 () Int)

(assert (=> d!1210832 (>= lt!1458309 0)))

(declare-fun e!2529087 () Int)

(assert (=> d!1210832 (= lt!1458309 e!2529087)))

(declare-fun c!703042 () Bool)

(assert (=> d!1210832 (= c!703042 (is-Nil!43589 p!2988))))

(assert (=> d!1210832 (= (size!32566 p!2988) lt!1458309)))

(declare-fun b!4074784 () Bool)

(assert (=> b!4074784 (= e!2529087 0)))

(declare-fun b!4074785 () Bool)

(assert (=> b!4074785 (= e!2529087 (+ 1 (size!32566 (t!337264 p!2988))))))

(assert (= (and d!1210832 c!703042) b!4074784))

(assert (= (and d!1210832 (not c!703042)) b!4074785))

(declare-fun m!4683369 () Bool)

(assert (=> b!4074785 m!4683369))

(assert (=> b!4074632 d!1210832))

(declare-fun d!1210834 () Bool)

(declare-fun fromListB!2389 (List!43713) BalanceConc!26050)

(assert (=> d!1210834 (= (seqFromList!5234 p!2988) (fromListB!2389 p!2988))))

(declare-fun bs!592686 () Bool)

(assert (= bs!592686 d!1210834))

(declare-fun m!4683371 () Bool)

(assert (=> bs!592686 m!4683371))

(assert (=> b!4074632 d!1210834))

(declare-fun b!4074833 () Bool)

(declare-fun e!2529115 () Bool)

(assert (=> b!4074833 (= e!2529115 true)))

(declare-fun d!1210836 () Bool)

(assert (=> d!1210836 e!2529115))

(assert (= d!1210836 b!4074833))

(declare-fun order!22773 () Int)

(declare-fun lambda!127666 () Int)

(declare-fun order!22771 () Int)

(declare-fun dynLambda!18518 (Int Int) Int)

(declare-fun dynLambda!18519 (Int Int) Int)

(assert (=> b!4074833 (< (dynLambda!18518 order!22771 (toValue!9581 (transformation!7017 r!4213))) (dynLambda!18519 order!22773 lambda!127666))))

(declare-fun order!22775 () Int)

(declare-fun dynLambda!18520 (Int Int) Int)

(assert (=> b!4074833 (< (dynLambda!18520 order!22775 (toChars!9440 (transformation!7017 r!4213))) (dynLambda!18519 order!22773 lambda!127666))))

(declare-fun dynLambda!18521 (Int TokenValue!7247) BalanceConc!26050)

(assert (=> d!1210836 (= (list!16225 (dynLambda!18521 (toChars!9440 (transformation!7017 r!4213)) (dynLambda!18517 (toValue!9581 (transformation!7017 r!4213)) lt!1458258))) (list!16225 lt!1458258))))

(declare-fun lt!1458338 () Unit!63136)

(declare-fun ForallOf!842 (Int BalanceConc!26050) Unit!63136)

(assert (=> d!1210836 (= lt!1458338 (ForallOf!842 lambda!127666 lt!1458258))))

(assert (=> d!1210836 (= (lemmaSemiInverse!1984 (transformation!7017 r!4213) lt!1458258) lt!1458338)))

(declare-fun b_lambda!119049 () Bool)

(assert (=> (not b_lambda!119049) (not d!1210836)))

(declare-fun tb!244781 () Bool)

(declare-fun t!337274 () Bool)

(assert (=> (and b!4074630 (= (toChars!9440 (transformation!7017 (h!49010 rules!3870))) (toChars!9440 (transformation!7017 r!4213))) t!337274) tb!244781))

(declare-fun tp!1233405 () Bool)

(declare-fun b!4074838 () Bool)

(declare-fun e!2529118 () Bool)

(declare-fun inv!58244 (Conc!13228) Bool)

(assert (=> b!4074838 (= e!2529118 (and (inv!58244 (c!703024 (dynLambda!18521 (toChars!9440 (transformation!7017 r!4213)) (dynLambda!18517 (toValue!9581 (transformation!7017 r!4213)) lt!1458258)))) tp!1233405))))

(declare-fun result!296788 () Bool)

(declare-fun inv!58245 (BalanceConc!26050) Bool)

(assert (=> tb!244781 (= result!296788 (and (inv!58245 (dynLambda!18521 (toChars!9440 (transformation!7017 r!4213)) (dynLambda!18517 (toValue!9581 (transformation!7017 r!4213)) lt!1458258))) e!2529118))))

(assert (= tb!244781 b!4074838))

(declare-fun m!4683435 () Bool)

(assert (=> b!4074838 m!4683435))

(declare-fun m!4683437 () Bool)

(assert (=> tb!244781 m!4683437))

(assert (=> d!1210836 t!337274))

(declare-fun b_and!313231 () Bool)

(assert (= b_and!313213 (and (=> t!337274 result!296788) b_and!313231)))

(declare-fun t!337276 () Bool)

(declare-fun tb!244783 () Bool)

(assert (=> (and b!4074635 (= (toChars!9440 (transformation!7017 r!4213)) (toChars!9440 (transformation!7017 r!4213))) t!337276) tb!244783))

(declare-fun result!296792 () Bool)

(assert (= result!296792 result!296788))

(assert (=> d!1210836 t!337276))

(declare-fun b_and!313233 () Bool)

(assert (= b_and!313217 (and (=> t!337276 result!296792) b_and!313233)))

(declare-fun b_lambda!119051 () Bool)

(assert (=> (not b_lambda!119051) (not d!1210836)))

(assert (=> d!1210836 t!337270))

(declare-fun b_and!313235 () Bool)

(assert (= b_and!313227 (and (=> t!337270 result!296782) b_and!313235)))

(assert (=> d!1210836 t!337272))

(declare-fun b_and!313237 () Bool)

(assert (= b_and!313229 (and (=> t!337272 result!296786) b_and!313237)))

(declare-fun m!4683439 () Bool)

(assert (=> d!1210836 m!4683439))

(assert (=> d!1210836 m!4683319))

(declare-fun m!4683441 () Bool)

(assert (=> d!1210836 m!4683441))

(declare-fun m!4683443 () Bool)

(assert (=> d!1210836 m!4683443))

(declare-fun m!4683445 () Bool)

(assert (=> d!1210836 m!4683445))

(assert (=> d!1210836 m!4683319))

(assert (=> d!1210836 m!4683441))

(assert (=> b!4074632 d!1210836))

(declare-fun b!4074867 () Bool)

(declare-fun e!2529138 () Bool)

(declare-fun derivativeStep!3596 (Regex!11922 C!24030) Regex!11922)

(declare-fun head!8606 (List!43713) C!24030)

(declare-fun tail!6340 (List!43713) List!43713)

(assert (=> b!4074867 (= e!2529138 (matchR!5867 (derivativeStep!3596 (regex!7017 r!4213) (head!8606 p!2988)) (tail!6340 p!2988)))))

(declare-fun b!4074868 () Bool)

(declare-fun e!2529134 () Bool)

(assert (=> b!4074868 (= e!2529134 (not (= (head!8606 p!2988) (c!703023 (regex!7017 r!4213)))))))

(declare-fun b!4074869 () Bool)

(declare-fun e!2529133 () Bool)

(declare-fun lt!1458341 () Bool)

(declare-fun call!288432 () Bool)

(assert (=> b!4074869 (= e!2529133 (= lt!1458341 call!288432))))

(declare-fun d!1210864 () Bool)

(assert (=> d!1210864 e!2529133))

(declare-fun c!703055 () Bool)

(assert (=> d!1210864 (= c!703055 (is-EmptyExpr!11922 (regex!7017 r!4213)))))

(assert (=> d!1210864 (= lt!1458341 e!2529138)))

(declare-fun c!703054 () Bool)

(assert (=> d!1210864 (= c!703054 (isEmpty!26023 p!2988))))

(declare-fun validRegex!5395 (Regex!11922) Bool)

(assert (=> d!1210864 (validRegex!5395 (regex!7017 r!4213))))

(assert (=> d!1210864 (= (matchR!5867 (regex!7017 r!4213) p!2988) lt!1458341)))

(declare-fun b!4074870 () Bool)

(declare-fun res!1664225 () Bool)

(assert (=> b!4074870 (=> res!1664225 e!2529134)))

(assert (=> b!4074870 (= res!1664225 (not (isEmpty!26023 (tail!6340 p!2988))))))

(declare-fun b!4074871 () Bool)

(declare-fun res!1664231 () Bool)

(declare-fun e!2529137 () Bool)

(assert (=> b!4074871 (=> (not res!1664231) (not e!2529137))))

(assert (=> b!4074871 (= res!1664231 (not call!288432))))

(declare-fun b!4074872 () Bool)

(declare-fun e!2529139 () Bool)

(declare-fun e!2529135 () Bool)

(assert (=> b!4074872 (= e!2529139 e!2529135)))

(declare-fun res!1664228 () Bool)

(assert (=> b!4074872 (=> (not res!1664228) (not e!2529135))))

(assert (=> b!4074872 (= res!1664228 (not lt!1458341))))

(declare-fun b!4074873 () Bool)

(declare-fun res!1664232 () Bool)

(assert (=> b!4074873 (=> res!1664232 e!2529139)))

(assert (=> b!4074873 (= res!1664232 (not (is-ElementMatch!11922 (regex!7017 r!4213))))))

(declare-fun e!2529136 () Bool)

(assert (=> b!4074873 (= e!2529136 e!2529139)))

(declare-fun b!4074874 () Bool)

(declare-fun res!1664230 () Bool)

(assert (=> b!4074874 (=> (not res!1664230) (not e!2529137))))

(assert (=> b!4074874 (= res!1664230 (isEmpty!26023 (tail!6340 p!2988)))))

(declare-fun b!4074875 () Bool)

(assert (=> b!4074875 (= e!2529133 e!2529136)))

(declare-fun c!703056 () Bool)

(assert (=> b!4074875 (= c!703056 (is-EmptyLang!11922 (regex!7017 r!4213)))))

(declare-fun b!4074876 () Bool)

(declare-fun nullable!4195 (Regex!11922) Bool)

(assert (=> b!4074876 (= e!2529138 (nullable!4195 (regex!7017 r!4213)))))

(declare-fun b!4074877 () Bool)

(declare-fun res!1664227 () Bool)

(assert (=> b!4074877 (=> res!1664227 e!2529139)))

(assert (=> b!4074877 (= res!1664227 e!2529137)))

(declare-fun res!1664229 () Bool)

(assert (=> b!4074877 (=> (not res!1664229) (not e!2529137))))

(assert (=> b!4074877 (= res!1664229 lt!1458341)))

(declare-fun b!4074878 () Bool)

(assert (=> b!4074878 (= e!2529137 (= (head!8606 p!2988) (c!703023 (regex!7017 r!4213))))))

(declare-fun bm!288427 () Bool)

(assert (=> bm!288427 (= call!288432 (isEmpty!26023 p!2988))))

(declare-fun b!4074879 () Bool)

(assert (=> b!4074879 (= e!2529135 e!2529134)))

(declare-fun res!1664226 () Bool)

(assert (=> b!4074879 (=> res!1664226 e!2529134)))

(assert (=> b!4074879 (= res!1664226 call!288432)))

(declare-fun b!4074880 () Bool)

(assert (=> b!4074880 (= e!2529136 (not lt!1458341))))

(assert (= (and d!1210864 c!703054) b!4074876))

(assert (= (and d!1210864 (not c!703054)) b!4074867))

(assert (= (and d!1210864 c!703055) b!4074869))

(assert (= (and d!1210864 (not c!703055)) b!4074875))

(assert (= (and b!4074875 c!703056) b!4074880))

(assert (= (and b!4074875 (not c!703056)) b!4074873))

(assert (= (and b!4074873 (not res!1664232)) b!4074877))

(assert (= (and b!4074877 res!1664229) b!4074871))

(assert (= (and b!4074871 res!1664231) b!4074874))

(assert (= (and b!4074874 res!1664230) b!4074878))

(assert (= (and b!4074877 (not res!1664227)) b!4074872))

(assert (= (and b!4074872 res!1664228) b!4074879))

(assert (= (and b!4074879 (not res!1664226)) b!4074870))

(assert (= (and b!4074870 (not res!1664225)) b!4074868))

(assert (= (or b!4074869 b!4074871 b!4074879) bm!288427))

(declare-fun m!4683447 () Bool)

(assert (=> b!4074876 m!4683447))

(declare-fun m!4683449 () Bool)

(assert (=> b!4074878 m!4683449))

(declare-fun m!4683451 () Bool)

(assert (=> b!4074874 m!4683451))

(assert (=> b!4074874 m!4683451))

(declare-fun m!4683453 () Bool)

(assert (=> b!4074874 m!4683453))

(assert (=> b!4074867 m!4683449))

(assert (=> b!4074867 m!4683449))

(declare-fun m!4683455 () Bool)

(assert (=> b!4074867 m!4683455))

(assert (=> b!4074867 m!4683451))

(assert (=> b!4074867 m!4683455))

(assert (=> b!4074867 m!4683451))

(declare-fun m!4683457 () Bool)

(assert (=> b!4074867 m!4683457))

(assert (=> b!4074868 m!4683449))

(assert (=> b!4074870 m!4683451))

(assert (=> b!4074870 m!4683451))

(assert (=> b!4074870 m!4683453))

(assert (=> bm!288427 m!4683237))

(assert (=> d!1210864 m!4683237))

(declare-fun m!4683459 () Bool)

(assert (=> d!1210864 m!4683459))

(assert (=> b!4074631 d!1210864))

(declare-fun d!1210866 () Bool)

(declare-fun res!1664237 () Bool)

(declare-fun e!2529142 () Bool)

(assert (=> d!1210866 (=> (not res!1664237) (not e!2529142))))

(assert (=> d!1210866 (= res!1664237 (validRegex!5395 (regex!7017 r!4213)))))

(assert (=> d!1210866 (= (ruleValid!2941 thiss!26199 r!4213) e!2529142)))

(declare-fun b!4074885 () Bool)

(declare-fun res!1664238 () Bool)

(assert (=> b!4074885 (=> (not res!1664238) (not e!2529142))))

(assert (=> b!4074885 (= res!1664238 (not (nullable!4195 (regex!7017 r!4213))))))

(declare-fun b!4074886 () Bool)

(assert (=> b!4074886 (= e!2529142 (not (= (tag!7877 r!4213) (String!49987 ""))))))

(assert (= (and d!1210866 res!1664237) b!4074885))

(assert (= (and b!4074885 res!1664238) b!4074886))

(assert (=> d!1210866 m!4683459))

(assert (=> b!4074885 m!4683447))

(assert (=> b!4074631 d!1210866))

(declare-fun d!1210868 () Bool)

(assert (=> d!1210868 (ruleValid!2941 thiss!26199 r!4213)))

(declare-fun lt!1458344 () Unit!63136)

(declare-fun choose!24871 (LexerInterface!6606 Rule!13834 List!43714) Unit!63136)

(assert (=> d!1210868 (= lt!1458344 (choose!24871 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1210868 (contains!8684 rules!3870 r!4213)))

(assert (=> d!1210868 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2009 thiss!26199 r!4213 rules!3870) lt!1458344)))

(declare-fun bs!592689 () Bool)

(assert (= bs!592689 d!1210868))

(assert (=> bs!592689 m!4683233))

(declare-fun m!4683461 () Bool)

(assert (=> bs!592689 m!4683461))

(assert (=> bs!592689 m!4683251))

(assert (=> b!4074631 d!1210868))

(declare-fun d!1210870 () Bool)

(assert (=> d!1210870 (= (isEmpty!26024 lt!1458261) (not (is-Some!9424 lt!1458261)))))

(assert (=> b!4074641 d!1210870))

(declare-fun b!4074887 () Bool)

(declare-fun res!1664245 () Bool)

(declare-fun e!2529143 () Bool)

(assert (=> b!4074887 (=> (not res!1664245) (not e!2529143))))

(declare-fun lt!1458346 () Option!9425)

(assert (=> b!4074887 (= res!1664245 (= (list!16225 (charsOf!4811 (_1!24422 (get!14294 lt!1458346)))) (originalCharacters!7611 (_1!24422 (get!14294 lt!1458346)))))))

(declare-fun b!4074888 () Bool)

(declare-fun e!2529145 () Option!9425)

(declare-fun lt!1458345 () Option!9425)

(declare-fun lt!1458348 () Option!9425)

(assert (=> b!4074888 (= e!2529145 (ite (and (is-None!9424 lt!1458345) (is-None!9424 lt!1458348)) None!9424 (ite (is-None!9424 lt!1458348) lt!1458345 (ite (is-None!9424 lt!1458345) lt!1458348 (ite (>= (size!32565 (_1!24422 (v!39866 lt!1458345))) (size!32565 (_1!24422 (v!39866 lt!1458348)))) lt!1458345 lt!1458348)))))))

(declare-fun call!288433 () Option!9425)

(assert (=> b!4074888 (= lt!1458345 call!288433)))

(assert (=> b!4074888 (= lt!1458348 (maxPrefix!3898 thiss!26199 (t!337265 (t!337265 rules!3870)) input!3411))))

(declare-fun b!4074889 () Bool)

(declare-fun res!1664239 () Bool)

(assert (=> b!4074889 (=> (not res!1664239) (not e!2529143))))

(assert (=> b!4074889 (= res!1664239 (matchR!5867 (regex!7017 (rule!10121 (_1!24422 (get!14294 lt!1458346)))) (list!16225 (charsOf!4811 (_1!24422 (get!14294 lt!1458346))))))))

(declare-fun d!1210872 () Bool)

(declare-fun e!2529144 () Bool)

(assert (=> d!1210872 e!2529144))

(declare-fun res!1664242 () Bool)

(assert (=> d!1210872 (=> res!1664242 e!2529144)))

(assert (=> d!1210872 (= res!1664242 (isEmpty!26024 lt!1458346))))

(assert (=> d!1210872 (= lt!1458346 e!2529145)))

(declare-fun c!703057 () Bool)

(assert (=> d!1210872 (= c!703057 (and (is-Cons!43590 (t!337265 rules!3870)) (is-Nil!43590 (t!337265 (t!337265 rules!3870)))))))

(declare-fun lt!1458349 () Unit!63136)

(declare-fun lt!1458347 () Unit!63136)

(assert (=> d!1210872 (= lt!1458349 lt!1458347)))

(assert (=> d!1210872 (isPrefix!4098 input!3411 input!3411)))

(assert (=> d!1210872 (= lt!1458347 (lemmaIsPrefixRefl!2649 input!3411 input!3411))))

(assert (=> d!1210872 (rulesValidInductive!2578 thiss!26199 (t!337265 rules!3870))))

(assert (=> d!1210872 (= (maxPrefix!3898 thiss!26199 (t!337265 rules!3870) input!3411) lt!1458346)))

(declare-fun b!4074890 () Bool)

(assert (=> b!4074890 (= e!2529145 call!288433)))

(declare-fun bm!288428 () Bool)

(assert (=> bm!288428 (= call!288433 (maxPrefixOneRule!2896 thiss!26199 (h!49010 (t!337265 rules!3870)) input!3411))))

(declare-fun b!4074891 () Bool)

(declare-fun res!1664243 () Bool)

(assert (=> b!4074891 (=> (not res!1664243) (not e!2529143))))

(assert (=> b!4074891 (= res!1664243 (< (size!32566 (_2!24422 (get!14294 lt!1458346))) (size!32566 input!3411)))))

(declare-fun b!4074892 () Bool)

(assert (=> b!4074892 (= e!2529144 e!2529143)))

(declare-fun res!1664241 () Bool)

(assert (=> b!4074892 (=> (not res!1664241) (not e!2529143))))

(assert (=> b!4074892 (= res!1664241 (isDefined!7147 lt!1458346))))

(declare-fun b!4074893 () Bool)

(assert (=> b!4074893 (= e!2529143 (contains!8684 (t!337265 rules!3870) (rule!10121 (_1!24422 (get!14294 lt!1458346)))))))

(declare-fun b!4074894 () Bool)

(declare-fun res!1664240 () Bool)

(assert (=> b!4074894 (=> (not res!1664240) (not e!2529143))))

(assert (=> b!4074894 (= res!1664240 (= (++!11423 (list!16225 (charsOf!4811 (_1!24422 (get!14294 lt!1458346)))) (_2!24422 (get!14294 lt!1458346))) input!3411))))

(declare-fun b!4074895 () Bool)

(declare-fun res!1664244 () Bool)

(assert (=> b!4074895 (=> (not res!1664244) (not e!2529143))))

(assert (=> b!4074895 (= res!1664244 (= (value!220638 (_1!24422 (get!14294 lt!1458346))) (apply!10200 (transformation!7017 (rule!10121 (_1!24422 (get!14294 lt!1458346)))) (seqFromList!5234 (originalCharacters!7611 (_1!24422 (get!14294 lt!1458346)))))))))

(assert (= (and d!1210872 c!703057) b!4074890))

(assert (= (and d!1210872 (not c!703057)) b!4074888))

(assert (= (or b!4074890 b!4074888) bm!288428))

(assert (= (and d!1210872 (not res!1664242)) b!4074892))

(assert (= (and b!4074892 res!1664241) b!4074887))

(assert (= (and b!4074887 res!1664245) b!4074891))

(assert (= (and b!4074891 res!1664243) b!4074894))

(assert (= (and b!4074894 res!1664240) b!4074895))

(assert (= (and b!4074895 res!1664244) b!4074889))

(assert (= (and b!4074889 res!1664239) b!4074893))

(declare-fun m!4683463 () Bool)

(assert (=> b!4074895 m!4683463))

(declare-fun m!4683465 () Bool)

(assert (=> b!4074895 m!4683465))

(assert (=> b!4074895 m!4683465))

(declare-fun m!4683467 () Bool)

(assert (=> b!4074895 m!4683467))

(declare-fun m!4683469 () Bool)

(assert (=> b!4074888 m!4683469))

(declare-fun m!4683471 () Bool)

(assert (=> b!4074892 m!4683471))

(declare-fun m!4683473 () Bool)

(assert (=> bm!288428 m!4683473))

(assert (=> b!4074887 m!4683463))

(declare-fun m!4683475 () Bool)

(assert (=> b!4074887 m!4683475))

(assert (=> b!4074887 m!4683475))

(declare-fun m!4683477 () Bool)

(assert (=> b!4074887 m!4683477))

(assert (=> b!4074891 m!4683463))

(declare-fun m!4683479 () Bool)

(assert (=> b!4074891 m!4683479))

(assert (=> b!4074891 m!4683353))

(assert (=> b!4074894 m!4683463))

(assert (=> b!4074894 m!4683475))

(assert (=> b!4074894 m!4683475))

(assert (=> b!4074894 m!4683477))

(assert (=> b!4074894 m!4683477))

(declare-fun m!4683481 () Bool)

(assert (=> b!4074894 m!4683481))

(assert (=> b!4074889 m!4683463))

(assert (=> b!4074889 m!4683475))

(assert (=> b!4074889 m!4683475))

(assert (=> b!4074889 m!4683477))

(assert (=> b!4074889 m!4683477))

(declare-fun m!4683483 () Bool)

(assert (=> b!4074889 m!4683483))

(assert (=> b!4074893 m!4683463))

(declare-fun m!4683485 () Bool)

(assert (=> b!4074893 m!4683485))

(declare-fun m!4683487 () Bool)

(assert (=> d!1210872 m!4683487))

(assert (=> d!1210872 m!4683363))

(assert (=> d!1210872 m!4683365))

(declare-fun m!4683489 () Bool)

(assert (=> d!1210872 m!4683489))

(assert (=> b!4074641 d!1210872))

(declare-fun d!1210874 () Bool)

(declare-fun e!2529148 () Bool)

(assert (=> d!1210874 e!2529148))

(declare-fun res!1664248 () Bool)

(assert (=> d!1210874 (=> res!1664248 e!2529148)))

(assert (=> d!1210874 (= res!1664248 (isEmpty!26024 (maxPrefix!3898 thiss!26199 (t!337265 rules!3870) input!3411)))))

(declare-fun lt!1458352 () Unit!63136)

(declare-fun choose!24872 (LexerInterface!6606 Rule!13834 List!43714 List!43713) Unit!63136)

(assert (=> d!1210874 (= lt!1458352 (choose!24872 thiss!26199 (h!49010 rules!3870) (t!337265 rules!3870) input!3411))))

(assert (=> d!1210874 (not (isEmpty!26022 (t!337265 rules!3870)))))

(assert (=> d!1210874 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!11 thiss!26199 (h!49010 rules!3870) (t!337265 rules!3870) input!3411) lt!1458352)))

(declare-fun b!4074898 () Bool)

(assert (=> b!4074898 (= e!2529148 (not (= (rule!10121 (_1!24422 (get!14294 (maxPrefix!3898 thiss!26199 (t!337265 rules!3870) input!3411)))) (h!49010 rules!3870))))))

(assert (= (and d!1210874 (not res!1664248)) b!4074898))

(assert (=> d!1210874 m!4683259))

(assert (=> d!1210874 m!4683259))

(declare-fun m!4683491 () Bool)

(assert (=> d!1210874 m!4683491))

(declare-fun m!4683493 () Bool)

(assert (=> d!1210874 m!4683493))

(assert (=> d!1210874 m!4683225))

(assert (=> b!4074898 m!4683259))

(assert (=> b!4074898 m!4683259))

(declare-fun m!4683495 () Bool)

(assert (=> b!4074898 m!4683495))

(assert (=> b!4074641 d!1210874))

(declare-fun d!1210876 () Bool)

(assert (=> d!1210876 (= (isEmpty!26022 rules!3870) (is-Nil!43590 rules!3870))))

(assert (=> b!4074640 d!1210876))

(declare-fun d!1210878 () Bool)

(assert (=> d!1210878 (= (inv!58239 (tag!7877 r!4213)) (= (mod (str.len (value!220612 (tag!7877 r!4213))) 2) 0))))

(assert (=> b!4074629 d!1210878))

(declare-fun d!1210880 () Bool)

(declare-fun res!1664251 () Bool)

(declare-fun e!2529151 () Bool)

(assert (=> d!1210880 (=> (not res!1664251) (not e!2529151))))

(declare-fun semiInverseModEq!3003 (Int Int) Bool)

(assert (=> d!1210880 (= res!1664251 (semiInverseModEq!3003 (toChars!9440 (transformation!7017 r!4213)) (toValue!9581 (transformation!7017 r!4213))))))

(assert (=> d!1210880 (= (inv!58242 (transformation!7017 r!4213)) e!2529151)))

(declare-fun b!4074901 () Bool)

(declare-fun equivClasses!2902 (Int Int) Bool)

(assert (=> b!4074901 (= e!2529151 (equivClasses!2902 (toChars!9440 (transformation!7017 r!4213)) (toValue!9581 (transformation!7017 r!4213))))))

(assert (= (and d!1210880 res!1664251) b!4074901))

(declare-fun m!4683497 () Bool)

(assert (=> d!1210880 m!4683497))

(declare-fun m!4683499 () Bool)

(assert (=> b!4074901 m!4683499))

(assert (=> b!4074629 d!1210880))

(declare-fun d!1210882 () Bool)

(assert (=> d!1210882 (= (isEmpty!26022 (t!337265 rules!3870)) (is-Nil!43590 (t!337265 rules!3870)))))

(assert (=> b!4074628 d!1210882))

(declare-fun d!1210884 () Bool)

(declare-fun res!1664254 () Bool)

(declare-fun e!2529154 () Bool)

(assert (=> d!1210884 (=> (not res!1664254) (not e!2529154))))

(declare-fun rulesValid!2737 (LexerInterface!6606 List!43714) Bool)

(assert (=> d!1210884 (= res!1664254 (rulesValid!2737 thiss!26199 (t!337265 rules!3870)))))

(assert (=> d!1210884 (= (rulesInvariant!5949 thiss!26199 (t!337265 rules!3870)) e!2529154)))

(declare-fun b!4074904 () Bool)

(declare-datatypes ((List!43718 0))(
  ( (Nil!43594) (Cons!43594 (h!49014 String!49986) (t!337289 List!43718)) )
))
(declare-fun noDuplicateTag!2738 (LexerInterface!6606 List!43714 List!43718) Bool)

(assert (=> b!4074904 (= e!2529154 (noDuplicateTag!2738 thiss!26199 (t!337265 rules!3870) Nil!43594))))

(assert (= (and d!1210884 res!1664254) b!4074904))

(declare-fun m!4683501 () Bool)

(assert (=> d!1210884 m!4683501))

(declare-fun m!4683503 () Bool)

(assert (=> b!4074904 m!4683503))

(assert (=> b!4074628 d!1210884))

(declare-fun d!1210886 () Bool)

(assert (=> d!1210886 (rulesInvariant!5949 thiss!26199 (t!337265 rules!3870))))

(declare-fun lt!1458355 () Unit!63136)

(declare-fun choose!24873 (LexerInterface!6606 Rule!13834 List!43714) Unit!63136)

(assert (=> d!1210886 (= lt!1458355 (choose!24873 thiss!26199 (h!49010 rules!3870) (t!337265 rules!3870)))))

(assert (=> d!1210886 (rulesInvariant!5949 thiss!26199 (Cons!43590 (h!49010 rules!3870) (t!337265 rules!3870)))))

(assert (=> d!1210886 (= (lemmaInvariantOnRulesThenOnTail!737 thiss!26199 (h!49010 rules!3870) (t!337265 rules!3870)) lt!1458355)))

(declare-fun bs!592690 () Bool)

(assert (= bs!592690 d!1210886))

(assert (=> bs!592690 m!4683227))

(declare-fun m!4683505 () Bool)

(assert (=> bs!592690 m!4683505))

(declare-fun m!4683507 () Bool)

(assert (=> bs!592690 m!4683507))

(assert (=> b!4074628 d!1210886))

(declare-fun d!1210888 () Bool)

(declare-fun res!1664255 () Bool)

(declare-fun e!2529155 () Bool)

(assert (=> d!1210888 (=> (not res!1664255) (not e!2529155))))

(assert (=> d!1210888 (= res!1664255 (rulesValid!2737 thiss!26199 rules!3870))))

(assert (=> d!1210888 (= (rulesInvariant!5949 thiss!26199 rules!3870) e!2529155)))

(declare-fun b!4074905 () Bool)

(assert (=> b!4074905 (= e!2529155 (noDuplicateTag!2738 thiss!26199 rules!3870 Nil!43594))))

(assert (= (and d!1210888 res!1664255) b!4074905))

(declare-fun m!4683509 () Bool)

(assert (=> d!1210888 m!4683509))

(declare-fun m!4683511 () Bool)

(assert (=> b!4074905 m!4683511))

(assert (=> b!4074638 d!1210888))

(declare-fun b!4074915 () Bool)

(declare-fun e!2529161 () List!43713)

(assert (=> b!4074915 (= e!2529161 (Cons!43589 (h!49009 p!2988) (++!11423 (t!337264 p!2988) suffix!1518)))))

(declare-fun b!4074914 () Bool)

(assert (=> b!4074914 (= e!2529161 suffix!1518)))

(declare-fun b!4074917 () Bool)

(declare-fun e!2529160 () Bool)

(declare-fun lt!1458358 () List!43713)

(assert (=> b!4074917 (= e!2529160 (or (not (= suffix!1518 Nil!43589)) (= lt!1458358 p!2988)))))

(declare-fun b!4074916 () Bool)

(declare-fun res!1664260 () Bool)

(assert (=> b!4074916 (=> (not res!1664260) (not e!2529160))))

(assert (=> b!4074916 (= res!1664260 (= (size!32566 lt!1458358) (+ (size!32566 p!2988) (size!32566 suffix!1518))))))

(declare-fun d!1210890 () Bool)

(assert (=> d!1210890 e!2529160))

(declare-fun res!1664261 () Bool)

(assert (=> d!1210890 (=> (not res!1664261) (not e!2529160))))

(declare-fun content!6668 (List!43713) (Set C!24030))

(assert (=> d!1210890 (= res!1664261 (= (content!6668 lt!1458358) (set.union (content!6668 p!2988) (content!6668 suffix!1518))))))

(assert (=> d!1210890 (= lt!1458358 e!2529161)))

(declare-fun c!703060 () Bool)

(assert (=> d!1210890 (= c!703060 (is-Nil!43589 p!2988))))

(assert (=> d!1210890 (= (++!11423 p!2988 suffix!1518) lt!1458358)))

(assert (= (and d!1210890 c!703060) b!4074914))

(assert (= (and d!1210890 (not c!703060)) b!4074915))

(assert (= (and d!1210890 res!1664261) b!4074916))

(assert (= (and b!4074916 res!1664260) b!4074917))

(declare-fun m!4683513 () Bool)

(assert (=> b!4074915 m!4683513))

(declare-fun m!4683515 () Bool)

(assert (=> b!4074916 m!4683515))

(assert (=> b!4074916 m!4683249))

(declare-fun m!4683517 () Bool)

(assert (=> b!4074916 m!4683517))

(declare-fun m!4683519 () Bool)

(assert (=> d!1210890 m!4683519))

(declare-fun m!4683521 () Bool)

(assert (=> d!1210890 m!4683521))

(declare-fun m!4683523 () Bool)

(assert (=> d!1210890 m!4683523))

(assert (=> b!4074627 d!1210890))

(declare-fun d!1210892 () Bool)

(assert (=> d!1210892 (= (isEmpty!26023 p!2988) (is-Nil!43589 p!2988))))

(assert (=> b!4074637 d!1210892))

(declare-fun d!1210894 () Bool)

(assert (=> d!1210894 (= (isDefined!7147 lt!1458261) (not (isEmpty!26024 lt!1458261)))))

(declare-fun bs!592691 () Bool)

(assert (= bs!592691 d!1210894))

(assert (=> bs!592691 m!4683257))

(assert (=> b!4074626 d!1210894))

(declare-fun d!1210896 () Bool)

(assert (=> d!1210896 (= (get!14294 lt!1458261) (v!39866 lt!1458261))))

(assert (=> b!4074625 d!1210896))

(declare-fun d!1210898 () Bool)

(assert (=> d!1210898 (= (inv!58239 (tag!7877 (h!49010 rules!3870))) (= (mod (str.len (value!220612 (tag!7877 (h!49010 rules!3870)))) 2) 0))))

(assert (=> b!4074623 d!1210898))

(declare-fun d!1210900 () Bool)

(declare-fun res!1664262 () Bool)

(declare-fun e!2529162 () Bool)

(assert (=> d!1210900 (=> (not res!1664262) (not e!2529162))))

(assert (=> d!1210900 (= res!1664262 (semiInverseModEq!3003 (toChars!9440 (transformation!7017 (h!49010 rules!3870))) (toValue!9581 (transformation!7017 (h!49010 rules!3870)))))))

(assert (=> d!1210900 (= (inv!58242 (transformation!7017 (h!49010 rules!3870))) e!2529162)))

(declare-fun b!4074918 () Bool)

(assert (=> b!4074918 (= e!2529162 (equivClasses!2902 (toChars!9440 (transformation!7017 (h!49010 rules!3870))) (toValue!9581 (transformation!7017 (h!49010 rules!3870)))))))

(assert (= (and d!1210900 res!1664262) b!4074918))

(declare-fun m!4683525 () Bool)

(assert (=> d!1210900 m!4683525))

(declare-fun m!4683527 () Bool)

(assert (=> b!4074918 m!4683527))

(assert (=> b!4074623 d!1210900))

(declare-fun d!1210902 () Bool)

(declare-fun lt!1458361 () Bool)

(declare-fun content!6669 (List!43714) (Set Rule!13834))

(assert (=> d!1210902 (= lt!1458361 (set.member r!4213 (content!6669 rules!3870)))))

(declare-fun e!2529168 () Bool)

(assert (=> d!1210902 (= lt!1458361 e!2529168)))

(declare-fun res!1664268 () Bool)

(assert (=> d!1210902 (=> (not res!1664268) (not e!2529168))))

(assert (=> d!1210902 (= res!1664268 (is-Cons!43590 rules!3870))))

(assert (=> d!1210902 (= (contains!8684 rules!3870 r!4213) lt!1458361)))

(declare-fun b!4074923 () Bool)

(declare-fun e!2529167 () Bool)

(assert (=> b!4074923 (= e!2529168 e!2529167)))

(declare-fun res!1664267 () Bool)

(assert (=> b!4074923 (=> res!1664267 e!2529167)))

(assert (=> b!4074923 (= res!1664267 (= (h!49010 rules!3870) r!4213))))

(declare-fun b!4074924 () Bool)

(assert (=> b!4074924 (= e!2529167 (contains!8684 (t!337265 rules!3870) r!4213))))

(assert (= (and d!1210902 res!1664268) b!4074923))

(assert (= (and b!4074923 (not res!1664267)) b!4074924))

(declare-fun m!4683529 () Bool)

(assert (=> d!1210902 m!4683529))

(declare-fun m!4683531 () Bool)

(assert (=> d!1210902 m!4683531))

(declare-fun m!4683533 () Bool)

(assert (=> b!4074924 m!4683533))

(assert (=> b!4074633 d!1210902))

(declare-fun b!4074935 () Bool)

(declare-fun b_free!113529 () Bool)

(declare-fun b_next!114233 () Bool)

(assert (=> b!4074935 (= b_free!113529 (not b_next!114233))))

(declare-fun tb!244785 () Bool)

(declare-fun t!337278 () Bool)

(assert (=> (and b!4074935 (= (toValue!9581 (transformation!7017 (h!49010 (t!337265 rules!3870)))) (toValue!9581 (transformation!7017 r!4213))) t!337278) tb!244785))

(declare-fun result!296796 () Bool)

(assert (= result!296796 result!296782))

(assert (=> d!1210816 t!337278))

(assert (=> d!1210836 t!337278))

(declare-fun b_and!313239 () Bool)

(declare-fun tp!1233416 () Bool)

(assert (=> b!4074935 (= tp!1233416 (and (=> t!337278 result!296796) b_and!313239))))

(declare-fun b_free!113531 () Bool)

(declare-fun b_next!114235 () Bool)

(assert (=> b!4074935 (= b_free!113531 (not b_next!114235))))

(declare-fun tb!244787 () Bool)

(declare-fun t!337280 () Bool)

(assert (=> (and b!4074935 (= (toChars!9440 (transformation!7017 (h!49010 (t!337265 rules!3870)))) (toChars!9440 (transformation!7017 r!4213))) t!337280) tb!244787))

(declare-fun result!296798 () Bool)

(assert (= result!296798 result!296788))

(assert (=> d!1210836 t!337280))

(declare-fun b_and!313241 () Bool)

(declare-fun tp!1233417 () Bool)

(assert (=> b!4074935 (= tp!1233417 (and (=> t!337280 result!296798) b_and!313241))))

(declare-fun e!2529178 () Bool)

(assert (=> b!4074935 (= e!2529178 (and tp!1233416 tp!1233417))))

(declare-fun e!2529179 () Bool)

(declare-fun b!4074934 () Bool)

(declare-fun tp!1233414 () Bool)

(assert (=> b!4074934 (= e!2529179 (and tp!1233414 (inv!58239 (tag!7877 (h!49010 (t!337265 rules!3870)))) (inv!58242 (transformation!7017 (h!49010 (t!337265 rules!3870)))) e!2529178))))

(declare-fun b!4074933 () Bool)

(declare-fun e!2529177 () Bool)

(declare-fun tp!1233415 () Bool)

(assert (=> b!4074933 (= e!2529177 (and e!2529179 tp!1233415))))

(assert (=> b!4074642 (= tp!1233370 e!2529177)))

(assert (= b!4074934 b!4074935))

(assert (= b!4074933 b!4074934))

(assert (= (and b!4074642 (is-Cons!43590 (t!337265 rules!3870))) b!4074933))

(declare-fun m!4683535 () Bool)

(assert (=> b!4074934 m!4683535))

(declare-fun m!4683537 () Bool)

(assert (=> b!4074934 m!4683537))

(declare-fun b!4074940 () Bool)

(declare-fun e!2529183 () Bool)

(declare-fun tp!1233420 () Bool)

(assert (=> b!4074940 (= e!2529183 (and tp_is_empty!20847 tp!1233420))))

(assert (=> b!4074636 (= tp!1233363 e!2529183)))

(assert (= (and b!4074636 (is-Cons!43589 (t!337264 p!2988))) b!4074940))

(declare-fun b!4074941 () Bool)

(declare-fun e!2529184 () Bool)

(declare-fun tp!1233421 () Bool)

(assert (=> b!4074941 (= e!2529184 (and tp_is_empty!20847 tp!1233421))))

(assert (=> b!4074624 (= tp!1233365 e!2529184)))

(assert (= (and b!4074624 (is-Cons!43589 (t!337264 suffix!1518))) b!4074941))

(declare-fun b!4074952 () Bool)

(declare-fun e!2529187 () Bool)

(assert (=> b!4074952 (= e!2529187 tp_is_empty!20847)))

(declare-fun b!4074954 () Bool)

(declare-fun tp!1233436 () Bool)

(assert (=> b!4074954 (= e!2529187 tp!1233436)))

(assert (=> b!4074629 (= tp!1233371 e!2529187)))

(declare-fun b!4074953 () Bool)

(declare-fun tp!1233432 () Bool)

(declare-fun tp!1233433 () Bool)

(assert (=> b!4074953 (= e!2529187 (and tp!1233432 tp!1233433))))

(declare-fun b!4074955 () Bool)

(declare-fun tp!1233434 () Bool)

(declare-fun tp!1233435 () Bool)

(assert (=> b!4074955 (= e!2529187 (and tp!1233434 tp!1233435))))

(assert (= (and b!4074629 (is-ElementMatch!11922 (regex!7017 r!4213))) b!4074952))

(assert (= (and b!4074629 (is-Concat!19169 (regex!7017 r!4213))) b!4074953))

(assert (= (and b!4074629 (is-Star!11922 (regex!7017 r!4213))) b!4074954))

(assert (= (and b!4074629 (is-Union!11922 (regex!7017 r!4213))) b!4074955))

(declare-fun b!4074956 () Bool)

(declare-fun e!2529188 () Bool)

(declare-fun tp!1233437 () Bool)

(assert (=> b!4074956 (= e!2529188 (and tp_is_empty!20847 tp!1233437))))

(assert (=> b!4074639 (= tp!1233366 e!2529188)))

(assert (= (and b!4074639 (is-Cons!43589 (t!337264 input!3411))) b!4074956))

(declare-fun b!4074957 () Bool)

(declare-fun e!2529189 () Bool)

(assert (=> b!4074957 (= e!2529189 tp_is_empty!20847)))

(declare-fun b!4074959 () Bool)

(declare-fun tp!1233442 () Bool)

(assert (=> b!4074959 (= e!2529189 tp!1233442)))

(assert (=> b!4074623 (= tp!1233367 e!2529189)))

(declare-fun b!4074958 () Bool)

(declare-fun tp!1233438 () Bool)

(declare-fun tp!1233439 () Bool)

(assert (=> b!4074958 (= e!2529189 (and tp!1233438 tp!1233439))))

(declare-fun b!4074960 () Bool)

(declare-fun tp!1233440 () Bool)

(declare-fun tp!1233441 () Bool)

(assert (=> b!4074960 (= e!2529189 (and tp!1233440 tp!1233441))))

(assert (= (and b!4074623 (is-ElementMatch!11922 (regex!7017 (h!49010 rules!3870)))) b!4074957))

(assert (= (and b!4074623 (is-Concat!19169 (regex!7017 (h!49010 rules!3870)))) b!4074958))

(assert (= (and b!4074623 (is-Star!11922 (regex!7017 (h!49010 rules!3870)))) b!4074959))

(assert (= (and b!4074623 (is-Union!11922 (regex!7017 (h!49010 rules!3870)))) b!4074960))

(declare-fun b_lambda!119053 () Bool)

(assert (= b_lambda!119051 (or (and b!4074630 b_free!113513 (= (toValue!9581 (transformation!7017 (h!49010 rules!3870))) (toValue!9581 (transformation!7017 r!4213)))) (and b!4074635 b_free!113517) (and b!4074935 b_free!113529 (= (toValue!9581 (transformation!7017 (h!49010 (t!337265 rules!3870)))) (toValue!9581 (transformation!7017 r!4213)))) b_lambda!119053)))

(declare-fun b_lambda!119055 () Bool)

(assert (= b_lambda!119049 (or (and b!4074630 b_free!113515 (= (toChars!9440 (transformation!7017 (h!49010 rules!3870))) (toChars!9440 (transformation!7017 r!4213)))) (and b!4074635 b_free!113519) (and b!4074935 b_free!113531 (= (toChars!9440 (transformation!7017 (h!49010 (t!337265 rules!3870)))) (toChars!9440 (transformation!7017 r!4213)))) b_lambda!119055)))

(declare-fun b_lambda!119057 () Bool)

(assert (= b_lambda!119047 (or (and b!4074630 b_free!113513 (= (toValue!9581 (transformation!7017 (h!49010 rules!3870))) (toValue!9581 (transformation!7017 r!4213)))) (and b!4074635 b_free!113517) (and b!4074935 b_free!113529 (= (toValue!9581 (transformation!7017 (h!49010 (t!337265 rules!3870)))) (toValue!9581 (transformation!7017 r!4213)))) b_lambda!119057)))

(push 1)

(assert (not b_next!114221))

(assert (not b!4074779))

(assert (not b!4074901))

(assert (not d!1210868))

(assert (not b!4074893))

(assert b_and!313239)

(assert (not tb!244777))

(assert (not b!4074773))

(assert (not b!4074891))

(assert (not b!4074785))

(assert (not d!1210902))

(assert (not d!1210886))

(assert (not b!4074959))

(assert (not b_next!114233))

(assert (not b!4074868))

(assert (not b!4074772))

(assert (not b!4074838))

(assert (not b!4074940))

(assert (not bm!288421))

(assert (not b!4074918))

(assert (not b!4074934))

(assert (not b!4074888))

(assert (not b!4074885))

(assert (not b!4074771))

(assert (not b!4074916))

(assert (not b!4074775))

(assert (not b_lambda!119057))

(assert (not b!4074904))

(assert (not b!4074924))

(assert (not d!1210880))

(assert (not d!1210834))

(assert b_and!313241)

(assert (not b!4074958))

(assert (not d!1210872))

(assert (not d!1210888))

(assert (not b_next!114219))

(assert (not b_lambda!119055))

(assert (not b!4074895))

(assert (not b!4074874))

(assert (not b!4074905))

(assert (not b!4074889))

(assert (not b!4074870))

(assert (not d!1210866))

(assert tp_is_empty!20847)

(assert (not b_next!114217))

(assert (not b!4074960))

(assert b_and!313231)

(assert (not d!1210836))

(assert (not b!4074776))

(assert (not b!4074955))

(assert (not bm!288427))

(assert b_and!313235)

(assert (not b!4074778))

(assert (not d!1210864))

(assert (not b!4074876))

(assert (not b!4074953))

(assert (not b!4074933))

(assert (not b!4074867))

(assert (not b_next!114235))

(assert (not b!4074954))

(assert (not b!4074887))

(assert (not b!4074941))

(assert (not b!4074956))

(assert (not b!4074915))

(assert (not b!4074898))

(assert (not b_lambda!119053))

(assert (not b!4074777))

(assert (not b!4074892))

(assert (not tb!244781))

(assert (not b!4074878))

(assert (not d!1210900))

(assert (not bm!288428))

(assert (not d!1210884))

(assert (not d!1210894))

(assert (not d!1210890))

(assert (not d!1210874))

(assert (not b!4074894))

(assert (not b_next!114223))

(assert b_and!313233)

(assert b_and!313237)

(assert (not d!1210818))

(check-sat)

(pop 1)

(push 1)

(assert b_and!313239)

(assert (not b_next!114233))

(assert b_and!313241)

(assert (not b_next!114221))

(assert (not b_next!114219))

(assert b_and!313235)

(assert (not b_next!114235))

(assert (not b_next!114223))

(assert (not b_next!114217))

(assert b_and!313231)

(assert b_and!313233)

(assert b_and!313237)

(check-sat)

(pop 1)

