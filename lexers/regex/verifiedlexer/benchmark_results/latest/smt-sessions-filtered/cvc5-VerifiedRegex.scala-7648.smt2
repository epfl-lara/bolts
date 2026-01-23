; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!403728 () Bool)

(assert start!403728)

(declare-fun b!4223677 () Bool)

(declare-fun b_free!124259 () Bool)

(declare-fun b_next!124963 () Bool)

(assert (=> b!4223677 (= b_free!124259 (not b_next!124963))))

(declare-fun tp!1292717 () Bool)

(declare-fun b_and!333469 () Bool)

(assert (=> b!4223677 (= tp!1292717 b_and!333469)))

(declare-fun b_free!124261 () Bool)

(declare-fun b_next!124965 () Bool)

(assert (=> b!4223677 (= b_free!124261 (not b_next!124965))))

(declare-fun tp!1292715 () Bool)

(declare-fun b_and!333471 () Bool)

(assert (=> b!4223677 (= tp!1292715 b_and!333471)))

(declare-fun b!4223670 () Bool)

(declare-fun b_free!124263 () Bool)

(declare-fun b_next!124967 () Bool)

(assert (=> b!4223670 (= b_free!124263 (not b_next!124967))))

(declare-fun tp!1292720 () Bool)

(declare-fun b_and!333473 () Bool)

(assert (=> b!4223670 (= tp!1292720 b_and!333473)))

(declare-fun b_free!124265 () Bool)

(declare-fun b_next!124969 () Bool)

(assert (=> b!4223670 (= b_free!124265 (not b_next!124969))))

(declare-fun tp!1292722 () Bool)

(declare-fun b_and!333475 () Bool)

(assert (=> b!4223670 (= tp!1292722 b_and!333475)))

(declare-fun b!4223667 () Bool)

(declare-fun e!2622342 () Bool)

(declare-datatypes ((List!46630 0))(
  ( (Nil!46506) (Cons!46506 (h!51926 (_ BitVec 16)) (t!349215 List!46630)) )
))
(declare-datatypes ((TokenValue!8039 0))(
  ( (FloatLiteralValue!16078 (text!56718 List!46630)) (TokenValueExt!8038 (__x!28301 Int)) (Broken!40195 (value!243059 List!46630)) (Object!8162) (End!8039) (Def!8039) (Underscore!8039) (Match!8039) (Else!8039) (Error!8039) (Case!8039) (If!8039) (Extends!8039) (Abstract!8039) (Class!8039) (Val!8039) (DelimiterValue!16078 (del!8099 List!46630)) (KeywordValue!8045 (value!243060 List!46630)) (CommentValue!16078 (value!243061 List!46630)) (WhitespaceValue!16078 (value!243062 List!46630)) (IndentationValue!8039 (value!243063 List!46630)) (String!54066) (Int32!8039) (Broken!40196 (value!243064 List!46630)) (Boolean!8040) (Unit!65665) (OperatorValue!8042 (op!8099 List!46630)) (IdentifierValue!16078 (value!243065 List!46630)) (IdentifierValue!16079 (value!243066 List!46630)) (WhitespaceValue!16079 (value!243067 List!46630)) (True!16078) (False!16078) (Broken!40197 (value!243068 List!46630)) (Broken!40198 (value!243069 List!46630)) (True!16079) (RightBrace!8039) (RightBracket!8039) (Colon!8039) (Null!8039) (Comma!8039) (LeftBracket!8039) (False!16079) (LeftBrace!8039) (ImaginaryLiteralValue!8039 (text!56719 List!46630)) (StringLiteralValue!24117 (value!243070 List!46630)) (EOFValue!8039 (value!243071 List!46630)) (IdentValue!8039 (value!243072 List!46630)) (DelimiterValue!16079 (value!243073 List!46630)) (DedentValue!8039 (value!243074 List!46630)) (NewLineValue!8039 (value!243075 List!46630)) (IntegerValue!24117 (value!243076 (_ BitVec 32)) (text!56720 List!46630)) (IntegerValue!24118 (value!243077 Int) (text!56721 List!46630)) (Times!8039) (Or!8039) (Equal!8039) (Minus!8039) (Broken!40199 (value!243078 List!46630)) (And!8039) (Div!8039) (LessEqual!8039) (Mod!8039) (Concat!20753) (Not!8039) (Plus!8039) (SpaceValue!8039 (value!243079 List!46630)) (IntegerValue!24119 (value!243080 Int) (text!56722 List!46630)) (StringLiteralValue!24118 (text!56723 List!46630)) (FloatLiteralValue!16079 (text!56724 List!46630)) (BytesLiteralValue!8039 (value!243081 List!46630)) (CommentValue!16079 (value!243082 List!46630)) (StringLiteralValue!24119 (value!243083 List!46630)) (ErrorTokenValue!8039 (msg!8100 List!46630)) )
))
(declare-datatypes ((C!25622 0))(
  ( (C!25623 (val!14973 Int)) )
))
(declare-datatypes ((List!46631 0))(
  ( (Nil!46507) (Cons!46507 (h!51927 C!25622) (t!349216 List!46631)) )
))
(declare-datatypes ((IArray!28045 0))(
  ( (IArray!28046 (innerList!14080 List!46631)) )
))
(declare-datatypes ((Conc!14020 0))(
  ( (Node!14020 (left!34568 Conc!14020) (right!34898 Conc!14020) (csize!28270 Int) (cheight!14231 Int)) (Leaf!21669 (xs!17326 IArray!28045) (csize!28271 Int)) (Empty!14020) )
))
(declare-datatypes ((BalanceConc!27634 0))(
  ( (BalanceConc!27635 (c!718479 Conc!14020)) )
))
(declare-datatypes ((TokenValueInjection!15506 0))(
  ( (TokenValueInjection!15507 (toValue!10533 Int) (toChars!10392 Int)) )
))
(declare-datatypes ((Regex!12714 0))(
  ( (ElementMatch!12714 (c!718480 C!25622)) (Concat!20754 (regOne!25940 Regex!12714) (regTwo!25940 Regex!12714)) (EmptyExpr!12714) (Star!12714 (reg!13043 Regex!12714)) (EmptyLang!12714) (Union!12714 (regOne!25941 Regex!12714) (regTwo!25941 Regex!12714)) )
))
(declare-datatypes ((String!54067 0))(
  ( (String!54068 (value!243084 String)) )
))
(declare-datatypes ((Rule!15418 0))(
  ( (Rule!15419 (regex!7809 Regex!12714) (tag!8673 String!54067) (isSeparator!7809 Bool) (transformation!7809 TokenValueInjection!15506)) )
))
(declare-datatypes ((List!46632 0))(
  ( (Nil!46508) (Cons!46508 (h!51928 Rule!15418) (t!349217 List!46632)) )
))
(declare-fun rules!4013 () List!46632)

(declare-fun e!2622344 () Bool)

(declare-fun tp!1292716 () Bool)

(declare-fun inv!61175 (String!54067) Bool)

(declare-fun inv!61178 (TokenValueInjection!15506) Bool)

(assert (=> b!4223667 (= e!2622344 (and tp!1292716 (inv!61175 (tag!8673 (h!51928 rules!4013))) (inv!61178 (transformation!7809 (h!51928 rules!4013))) e!2622342))))

(declare-fun b!4223668 () Bool)

(declare-fun res!1736397 () Bool)

(declare-fun e!2622345 () Bool)

(assert (=> b!4223668 (=> (not res!1736397) (not e!2622345))))

(declare-fun isEmpty!27554 (List!46632) Bool)

(assert (=> b!4223668 (= res!1736397 (not (isEmpty!27554 rules!4013)))))

(declare-fun b!4223669 () Bool)

(declare-fun res!1736396 () Bool)

(assert (=> b!4223669 (=> (not res!1736396) (not e!2622345))))

(declare-fun r!4313 () Rule!15418)

(declare-fun contains!9632 (List!46632 Rule!15418) Bool)

(assert (=> b!4223669 (= res!1736396 (contains!9632 rules!4013 r!4313))))

(assert (=> b!4223670 (= e!2622342 (and tp!1292720 tp!1292722))))

(declare-fun b!4223671 () Bool)

(declare-fun res!1736395 () Bool)

(assert (=> b!4223671 (=> (not res!1736395) (not e!2622345))))

(declare-datatypes ((LexerInterface!7404 0))(
  ( (LexerInterfaceExt!7401 (__x!28302 Int)) (Lexer!7402) )
))
(declare-fun thiss!26728 () LexerInterface!7404)

(declare-fun rulesValidInductive!2913 (LexerInterface!7404 List!46632) Bool)

(assert (=> b!4223671 (= res!1736395 (rulesValidInductive!2913 thiss!26728 rules!4013))))

(declare-fun b!4223672 () Bool)

(declare-fun res!1736398 () Bool)

(assert (=> b!4223672 (=> (not res!1736398) (not e!2622345))))

(declare-fun input!3561 () List!46631)

(declare-datatypes ((Token!14316 0))(
  ( (Token!14317 (value!243085 TokenValue!8039) (rule!10949 Rule!15418) (size!34134 Int) (originalCharacters!8189 List!46631)) )
))
(declare-datatypes ((tuple2!44212 0))(
  ( (tuple2!44213 (_1!25240 Token!14316) (_2!25240 List!46631)) )
))
(declare-datatypes ((Option!9995 0))(
  ( (None!9994) (Some!9994 (v!40892 tuple2!44212)) )
))
(declare-fun isEmpty!27555 (Option!9995) Bool)

(declare-fun maxPrefix!4442 (LexerInterface!7404 List!46632 List!46631) Option!9995)

(assert (=> b!4223672 (= res!1736398 (isEmpty!27555 (maxPrefix!4442 thiss!26728 rules!4013 input!3561)))))

(declare-fun b!4223673 () Bool)

(declare-fun e!2622343 () Bool)

(declare-fun tp!1292719 () Bool)

(assert (=> b!4223673 (= e!2622343 (and e!2622344 tp!1292719))))

(declare-fun b!4223674 () Bool)

(declare-fun ListPrimitiveSize!302 (List!46632) Int)

(assert (=> b!4223674 (= e!2622345 (< (ListPrimitiveSize!302 rules!4013) 0))))

(declare-fun res!1736399 () Bool)

(assert (=> start!403728 (=> (not res!1736399) (not e!2622345))))

(assert (=> start!403728 (= res!1736399 (is-Lexer!7402 thiss!26728))))

(assert (=> start!403728 e!2622345))

(assert (=> start!403728 true))

(assert (=> start!403728 e!2622343))

(declare-fun e!2622339 () Bool)

(assert (=> start!403728 e!2622339))

(declare-fun e!2622337 () Bool)

(assert (=> start!403728 e!2622337))

(declare-fun b!4223675 () Bool)

(declare-fun e!2622341 () Bool)

(declare-fun tp!1292718 () Bool)

(assert (=> b!4223675 (= e!2622339 (and tp!1292718 (inv!61175 (tag!8673 r!4313)) (inv!61178 (transformation!7809 r!4313)) e!2622341))))

(declare-fun b!4223676 () Bool)

(declare-fun tp_is_empty!22391 () Bool)

(declare-fun tp!1292721 () Bool)

(assert (=> b!4223676 (= e!2622337 (and tp_is_empty!22391 tp!1292721))))

(assert (=> b!4223677 (= e!2622341 (and tp!1292717 tp!1292715))))

(assert (= (and start!403728 res!1736399) b!4223668))

(assert (= (and b!4223668 res!1736397) b!4223671))

(assert (= (and b!4223671 res!1736395) b!4223669))

(assert (= (and b!4223669 res!1736396) b!4223672))

(assert (= (and b!4223672 res!1736398) b!4223674))

(assert (= b!4223667 b!4223670))

(assert (= b!4223673 b!4223667))

(assert (= (and start!403728 (is-Cons!46508 rules!4013)) b!4223673))

(assert (= b!4223675 b!4223677))

(assert (= start!403728 b!4223675))

(assert (= (and start!403728 (is-Cons!46507 input!3561)) b!4223676))

(declare-fun m!4812151 () Bool)

(assert (=> b!4223674 m!4812151))

(declare-fun m!4812153 () Bool)

(assert (=> b!4223675 m!4812153))

(declare-fun m!4812155 () Bool)

(assert (=> b!4223675 m!4812155))

(declare-fun m!4812157 () Bool)

(assert (=> b!4223668 m!4812157))

(declare-fun m!4812159 () Bool)

(assert (=> b!4223667 m!4812159))

(declare-fun m!4812161 () Bool)

(assert (=> b!4223667 m!4812161))

(declare-fun m!4812163 () Bool)

(assert (=> b!4223672 m!4812163))

(assert (=> b!4223672 m!4812163))

(declare-fun m!4812165 () Bool)

(assert (=> b!4223672 m!4812165))

(declare-fun m!4812167 () Bool)

(assert (=> b!4223669 m!4812167))

(declare-fun m!4812169 () Bool)

(assert (=> b!4223671 m!4812169))

(push 1)

(assert (not b!4223667))

(assert (not b!4223668))

(assert b_and!333473)

(assert (not b!4223671))

(assert (not b!4223676))

(assert (not b_next!124969))

(assert b_and!333469)

(assert (not b_next!124965))

(assert (not b!4223669))

(assert b_and!333471)

(assert (not b_next!124967))

(assert tp_is_empty!22391)

(assert b_and!333475)

(assert (not b_next!124963))

(assert (not b!4223672))

(assert (not b!4223673))

(assert (not b!4223675))

(assert (not b!4223674))

(check-sat)

(pop 1)

(push 1)

(assert b_and!333471)

(assert (not b_next!124967))

(assert b_and!333473)

(assert (not b_next!124969))

(assert b_and!333469)

(assert (not b_next!124965))

(assert b_and!333475)

(assert (not b_next!124963))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1243777 () Bool)

(assert (=> d!1243777 (= (inv!61175 (tag!8673 (h!51928 rules!4013))) (= (mod (str.len (value!243084 (tag!8673 (h!51928 rules!4013)))) 2) 0))))

(assert (=> b!4223667 d!1243777))

(declare-fun d!1243779 () Bool)

(declare-fun res!1736421 () Bool)

(declare-fun e!2622378 () Bool)

(assert (=> d!1243779 (=> (not res!1736421) (not e!2622378))))

(declare-fun semiInverseModEq!3392 (Int Int) Bool)

(assert (=> d!1243779 (= res!1736421 (semiInverseModEq!3392 (toChars!10392 (transformation!7809 (h!51928 rules!4013))) (toValue!10533 (transformation!7809 (h!51928 rules!4013)))))))

(assert (=> d!1243779 (= (inv!61178 (transformation!7809 (h!51928 rules!4013))) e!2622378)))

(declare-fun b!4223719 () Bool)

(declare-fun equivClasses!3291 (Int Int) Bool)

(assert (=> b!4223719 (= e!2622378 (equivClasses!3291 (toChars!10392 (transformation!7809 (h!51928 rules!4013))) (toValue!10533 (transformation!7809 (h!51928 rules!4013)))))))

(assert (= (and d!1243779 res!1736421) b!4223719))

(declare-fun m!4812193 () Bool)

(assert (=> d!1243779 m!4812193))

(declare-fun m!4812195 () Bool)

(assert (=> b!4223719 m!4812195))

(assert (=> b!4223667 d!1243779))

(declare-fun d!1243785 () Bool)

(assert (=> d!1243785 (= (isEmpty!27555 (maxPrefix!4442 thiss!26728 rules!4013 input!3561)) (not (is-Some!9994 (maxPrefix!4442 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4223672 d!1243785))

(declare-fun b!4223745 () Bool)

(declare-fun e!2622392 () Bool)

(declare-fun lt!1502556 () Option!9995)

(declare-fun get!15132 (Option!9995) tuple2!44212)

(assert (=> b!4223745 (= e!2622392 (contains!9632 rules!4013 (rule!10949 (_1!25240 (get!15132 lt!1502556)))))))

(declare-fun b!4223746 () Bool)

(declare-fun res!1736449 () Bool)

(assert (=> b!4223746 (=> (not res!1736449) (not e!2622392))))

(declare-fun list!16821 (BalanceConc!27634) List!46631)

(declare-fun charsOf!5222 (Token!14316) BalanceConc!27634)

(assert (=> b!4223746 (= res!1736449 (= (list!16821 (charsOf!5222 (_1!25240 (get!15132 lt!1502556)))) (originalCharacters!8189 (_1!25240 (get!15132 lt!1502556)))))))

(declare-fun b!4223747 () Bool)

(declare-fun res!1736445 () Bool)

(assert (=> b!4223747 (=> (not res!1736445) (not e!2622392))))

(declare-fun ++!11873 (List!46631 List!46631) List!46631)

(assert (=> b!4223747 (= res!1736445 (= (++!11873 (list!16821 (charsOf!5222 (_1!25240 (get!15132 lt!1502556)))) (_2!25240 (get!15132 lt!1502556))) input!3561))))

(declare-fun b!4223748 () Bool)

(declare-fun res!1736447 () Bool)

(assert (=> b!4223748 (=> (not res!1736447) (not e!2622392))))

(declare-fun matchR!6391 (Regex!12714 List!46631) Bool)

(assert (=> b!4223748 (= res!1736447 (matchR!6391 (regex!7809 (rule!10949 (_1!25240 (get!15132 lt!1502556)))) (list!16821 (charsOf!5222 (_1!25240 (get!15132 lt!1502556))))))))

(declare-fun b!4223749 () Bool)

(declare-fun e!2622393 () Bool)

(assert (=> b!4223749 (= e!2622393 e!2622392)))

(declare-fun res!1736443 () Bool)

(assert (=> b!4223749 (=> (not res!1736443) (not e!2622392))))

(declare-fun isDefined!7413 (Option!9995) Bool)

(assert (=> b!4223749 (= res!1736443 (isDefined!7413 lt!1502556))))

(declare-fun b!4223750 () Bool)

(declare-fun res!1736444 () Bool)

(assert (=> b!4223750 (=> (not res!1736444) (not e!2622392))))

(declare-fun size!34136 (List!46631) Int)

(assert (=> b!4223750 (= res!1736444 (< (size!34136 (_2!25240 (get!15132 lt!1502556))) (size!34136 input!3561)))))

(declare-fun b!4223751 () Bool)

(declare-fun e!2622394 () Option!9995)

(declare-fun lt!1502554 () Option!9995)

(declare-fun lt!1502552 () Option!9995)

(assert (=> b!4223751 (= e!2622394 (ite (and (is-None!9994 lt!1502554) (is-None!9994 lt!1502552)) None!9994 (ite (is-None!9994 lt!1502552) lt!1502554 (ite (is-None!9994 lt!1502554) lt!1502552 (ite (>= (size!34134 (_1!25240 (v!40892 lt!1502554))) (size!34134 (_1!25240 (v!40892 lt!1502552)))) lt!1502554 lt!1502552)))))))

(declare-fun call!293175 () Option!9995)

(assert (=> b!4223751 (= lt!1502554 call!293175)))

(assert (=> b!4223751 (= lt!1502552 (maxPrefix!4442 thiss!26728 (t!349217 rules!4013) input!3561))))

(declare-fun bm!293170 () Bool)

(declare-fun maxPrefixOneRule!3391 (LexerInterface!7404 Rule!15418 List!46631) Option!9995)

(assert (=> bm!293170 (= call!293175 (maxPrefixOneRule!3391 thiss!26728 (h!51928 rules!4013) input!3561))))

(declare-fun b!4223752 () Bool)

(declare-fun res!1736446 () Bool)

(assert (=> b!4223752 (=> (not res!1736446) (not e!2622392))))

(declare-fun apply!10712 (TokenValueInjection!15506 BalanceConc!27634) TokenValue!8039)

(declare-fun seqFromList!5772 (List!46631) BalanceConc!27634)

(assert (=> b!4223752 (= res!1736446 (= (value!243085 (_1!25240 (get!15132 lt!1502556))) (apply!10712 (transformation!7809 (rule!10949 (_1!25240 (get!15132 lt!1502556)))) (seqFromList!5772 (originalCharacters!8189 (_1!25240 (get!15132 lt!1502556)))))))))

(declare-fun b!4223753 () Bool)

(assert (=> b!4223753 (= e!2622394 call!293175)))

(declare-fun d!1243789 () Bool)

(assert (=> d!1243789 e!2622393))

(declare-fun res!1736448 () Bool)

(assert (=> d!1243789 (=> res!1736448 e!2622393)))

(assert (=> d!1243789 (= res!1736448 (isEmpty!27555 lt!1502556))))

(assert (=> d!1243789 (= lt!1502556 e!2622394)))

(declare-fun c!718489 () Bool)

(assert (=> d!1243789 (= c!718489 (and (is-Cons!46508 rules!4013) (is-Nil!46508 (t!349217 rules!4013))))))

(declare-datatypes ((Unit!65667 0))(
  ( (Unit!65668) )
))
(declare-fun lt!1502555 () Unit!65667)

(declare-fun lt!1502553 () Unit!65667)

(assert (=> d!1243789 (= lt!1502555 lt!1502553)))

(declare-fun isPrefix!4658 (List!46631 List!46631) Bool)

(assert (=> d!1243789 (isPrefix!4658 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3075 (List!46631 List!46631) Unit!65667)

(assert (=> d!1243789 (= lt!1502553 (lemmaIsPrefixRefl!3075 input!3561 input!3561))))

(assert (=> d!1243789 (rulesValidInductive!2913 thiss!26728 rules!4013)))

(assert (=> d!1243789 (= (maxPrefix!4442 thiss!26728 rules!4013 input!3561) lt!1502556)))

(assert (= (and d!1243789 c!718489) b!4223753))

(assert (= (and d!1243789 (not c!718489)) b!4223751))

(assert (= (or b!4223753 b!4223751) bm!293170))

(assert (= (and d!1243789 (not res!1736448)) b!4223749))

(assert (= (and b!4223749 res!1736443) b!4223746))

(assert (= (and b!4223746 res!1736449) b!4223750))

(assert (= (and b!4223750 res!1736444) b!4223747))

(assert (= (and b!4223747 res!1736445) b!4223752))

(assert (= (and b!4223752 res!1736446) b!4223748))

(assert (= (and b!4223748 res!1736447) b!4223745))

(declare-fun m!4812201 () Bool)

(assert (=> b!4223745 m!4812201))

(declare-fun m!4812203 () Bool)

(assert (=> b!4223745 m!4812203))

(assert (=> b!4223746 m!4812201))

(declare-fun m!4812205 () Bool)

(assert (=> b!4223746 m!4812205))

(assert (=> b!4223746 m!4812205))

(declare-fun m!4812207 () Bool)

(assert (=> b!4223746 m!4812207))

(declare-fun m!4812209 () Bool)

(assert (=> d!1243789 m!4812209))

(declare-fun m!4812211 () Bool)

(assert (=> d!1243789 m!4812211))

(declare-fun m!4812213 () Bool)

(assert (=> d!1243789 m!4812213))

(assert (=> d!1243789 m!4812169))

(declare-fun m!4812215 () Bool)

(assert (=> b!4223751 m!4812215))

(assert (=> b!4223750 m!4812201))

(declare-fun m!4812217 () Bool)

(assert (=> b!4223750 m!4812217))

(declare-fun m!4812219 () Bool)

(assert (=> b!4223750 m!4812219))

(assert (=> b!4223748 m!4812201))

(assert (=> b!4223748 m!4812205))

(assert (=> b!4223748 m!4812205))

(assert (=> b!4223748 m!4812207))

(assert (=> b!4223748 m!4812207))

(declare-fun m!4812221 () Bool)

(assert (=> b!4223748 m!4812221))

(declare-fun m!4812223 () Bool)

(assert (=> b!4223749 m!4812223))

(assert (=> b!4223752 m!4812201))

(declare-fun m!4812225 () Bool)

(assert (=> b!4223752 m!4812225))

(assert (=> b!4223752 m!4812225))

(declare-fun m!4812227 () Bool)

(assert (=> b!4223752 m!4812227))

(assert (=> b!4223747 m!4812201))

(assert (=> b!4223747 m!4812205))

(assert (=> b!4223747 m!4812205))

(assert (=> b!4223747 m!4812207))

(assert (=> b!4223747 m!4812207))

(declare-fun m!4812229 () Bool)

(assert (=> b!4223747 m!4812229))

(declare-fun m!4812231 () Bool)

(assert (=> bm!293170 m!4812231))

(assert (=> b!4223672 d!1243789))

(declare-fun d!1243793 () Bool)

(assert (=> d!1243793 true))

(declare-fun lt!1502559 () Bool)

(declare-fun lambda!129844 () Int)

(declare-fun forall!8499 (List!46632 Int) Bool)

(assert (=> d!1243793 (= lt!1502559 (forall!8499 rules!4013 lambda!129844))))

(declare-fun e!2622399 () Bool)

(assert (=> d!1243793 (= lt!1502559 e!2622399)))

(declare-fun res!1736454 () Bool)

(assert (=> d!1243793 (=> res!1736454 e!2622399)))

(assert (=> d!1243793 (= res!1736454 (not (is-Cons!46508 rules!4013)))))

(assert (=> d!1243793 (= (rulesValidInductive!2913 thiss!26728 rules!4013) lt!1502559)))

(declare-fun b!4223758 () Bool)

(declare-fun e!2622400 () Bool)

(assert (=> b!4223758 (= e!2622399 e!2622400)))

(declare-fun res!1736455 () Bool)

(assert (=> b!4223758 (=> (not res!1736455) (not e!2622400))))

(declare-fun ruleValid!3517 (LexerInterface!7404 Rule!15418) Bool)

(assert (=> b!4223758 (= res!1736455 (ruleValid!3517 thiss!26728 (h!51928 rules!4013)))))

(declare-fun b!4223759 () Bool)

(assert (=> b!4223759 (= e!2622400 (rulesValidInductive!2913 thiss!26728 (t!349217 rules!4013)))))

(assert (= (and d!1243793 (not res!1736454)) b!4223758))

(assert (= (and b!4223758 res!1736455) b!4223759))

(declare-fun m!4812233 () Bool)

(assert (=> d!1243793 m!4812233))

(declare-fun m!4812235 () Bool)

(assert (=> b!4223758 m!4812235))

(declare-fun m!4812237 () Bool)

(assert (=> b!4223759 m!4812237))

(assert (=> b!4223671 d!1243793))

(declare-fun d!1243795 () Bool)

(assert (=> d!1243795 (= (inv!61175 (tag!8673 r!4313)) (= (mod (str.len (value!243084 (tag!8673 r!4313))) 2) 0))))

(assert (=> b!4223675 d!1243795))

(declare-fun d!1243797 () Bool)

(declare-fun res!1736456 () Bool)

(declare-fun e!2622401 () Bool)

(assert (=> d!1243797 (=> (not res!1736456) (not e!2622401))))

(assert (=> d!1243797 (= res!1736456 (semiInverseModEq!3392 (toChars!10392 (transformation!7809 r!4313)) (toValue!10533 (transformation!7809 r!4313))))))

(assert (=> d!1243797 (= (inv!61178 (transformation!7809 r!4313)) e!2622401)))

(declare-fun b!4223762 () Bool)

(assert (=> b!4223762 (= e!2622401 (equivClasses!3291 (toChars!10392 (transformation!7809 r!4313)) (toValue!10533 (transformation!7809 r!4313))))))

(assert (= (and d!1243797 res!1736456) b!4223762))

(declare-fun m!4812239 () Bool)

(assert (=> d!1243797 m!4812239))

(declare-fun m!4812241 () Bool)

(assert (=> b!4223762 m!4812241))

(assert (=> b!4223675 d!1243797))

(declare-fun d!1243799 () Bool)

(declare-fun lt!1502562 () Bool)

(declare-fun content!7302 (List!46632) (Set Rule!15418))

(assert (=> d!1243799 (= lt!1502562 (set.member r!4313 (content!7302 rules!4013)))))

(declare-fun e!2622406 () Bool)

(assert (=> d!1243799 (= lt!1502562 e!2622406)))

(declare-fun res!1736461 () Bool)

(assert (=> d!1243799 (=> (not res!1736461) (not e!2622406))))

(assert (=> d!1243799 (= res!1736461 (is-Cons!46508 rules!4013))))

(assert (=> d!1243799 (= (contains!9632 rules!4013 r!4313) lt!1502562)))

(declare-fun b!4223767 () Bool)

(declare-fun e!2622407 () Bool)

(assert (=> b!4223767 (= e!2622406 e!2622407)))

(declare-fun res!1736462 () Bool)

(assert (=> b!4223767 (=> res!1736462 e!2622407)))

(assert (=> b!4223767 (= res!1736462 (= (h!51928 rules!4013) r!4313))))

(declare-fun b!4223768 () Bool)

(assert (=> b!4223768 (= e!2622407 (contains!9632 (t!349217 rules!4013) r!4313))))

(assert (= (and d!1243799 res!1736461) b!4223767))

(assert (= (and b!4223767 (not res!1736462)) b!4223768))

(declare-fun m!4812243 () Bool)

(assert (=> d!1243799 m!4812243))

(declare-fun m!4812245 () Bool)

(assert (=> d!1243799 m!4812245))

(declare-fun m!4812247 () Bool)

(assert (=> b!4223768 m!4812247))

(assert (=> b!4223669 d!1243799))

(declare-fun d!1243801 () Bool)

(declare-fun lt!1502565 () Int)

(assert (=> d!1243801 (>= lt!1502565 0)))

(declare-fun e!2622410 () Int)

(assert (=> d!1243801 (= lt!1502565 e!2622410)))

(declare-fun c!718492 () Bool)

(assert (=> d!1243801 (= c!718492 (is-Nil!46508 rules!4013))))

(assert (=> d!1243801 (= (ListPrimitiveSize!302 rules!4013) lt!1502565)))

(declare-fun b!4223773 () Bool)

(assert (=> b!4223773 (= e!2622410 0)))

(declare-fun b!4223774 () Bool)

(assert (=> b!4223774 (= e!2622410 (+ 1 (ListPrimitiveSize!302 (t!349217 rules!4013))))))

(assert (= (and d!1243801 c!718492) b!4223773))

(assert (= (and d!1243801 (not c!718492)) b!4223774))

(declare-fun m!4812249 () Bool)

(assert (=> b!4223774 m!4812249))

(assert (=> b!4223674 d!1243801))

(declare-fun d!1243803 () Bool)

(assert (=> d!1243803 (= (isEmpty!27554 rules!4013) (is-Nil!46508 rules!4013))))

(assert (=> b!4223668 d!1243803))

(declare-fun b!4223786 () Bool)

(declare-fun e!2622413 () Bool)

(declare-fun tp!1292759 () Bool)

(declare-fun tp!1292760 () Bool)

(assert (=> b!4223786 (= e!2622413 (and tp!1292759 tp!1292760))))

(declare-fun b!4223785 () Bool)

(assert (=> b!4223785 (= e!2622413 tp_is_empty!22391)))

(declare-fun b!4223788 () Bool)

(declare-fun tp!1292758 () Bool)

(declare-fun tp!1292757 () Bool)

(assert (=> b!4223788 (= e!2622413 (and tp!1292758 tp!1292757))))

(declare-fun b!4223787 () Bool)

(declare-fun tp!1292761 () Bool)

(assert (=> b!4223787 (= e!2622413 tp!1292761)))

(assert (=> b!4223667 (= tp!1292716 e!2622413)))

(assert (= (and b!4223667 (is-ElementMatch!12714 (regex!7809 (h!51928 rules!4013)))) b!4223785))

(assert (= (and b!4223667 (is-Concat!20754 (regex!7809 (h!51928 rules!4013)))) b!4223786))

(assert (= (and b!4223667 (is-Star!12714 (regex!7809 (h!51928 rules!4013)))) b!4223787))

(assert (= (and b!4223667 (is-Union!12714 (regex!7809 (h!51928 rules!4013)))) b!4223788))

(declare-fun b!4223793 () Bool)

(declare-fun e!2622416 () Bool)

(declare-fun tp!1292764 () Bool)

(assert (=> b!4223793 (= e!2622416 (and tp_is_empty!22391 tp!1292764))))

(assert (=> b!4223676 (= tp!1292721 e!2622416)))

(assert (= (and b!4223676 (is-Cons!46507 (t!349216 input!3561))) b!4223793))

(declare-fun b!4223795 () Bool)

(declare-fun e!2622417 () Bool)

(declare-fun tp!1292767 () Bool)

(declare-fun tp!1292768 () Bool)

(assert (=> b!4223795 (= e!2622417 (and tp!1292767 tp!1292768))))

(declare-fun b!4223794 () Bool)

(assert (=> b!4223794 (= e!2622417 tp_is_empty!22391)))

(declare-fun b!4223797 () Bool)

(declare-fun tp!1292766 () Bool)

(declare-fun tp!1292765 () Bool)

(assert (=> b!4223797 (= e!2622417 (and tp!1292766 tp!1292765))))

(declare-fun b!4223796 () Bool)

(declare-fun tp!1292769 () Bool)

(assert (=> b!4223796 (= e!2622417 tp!1292769)))

(assert (=> b!4223675 (= tp!1292718 e!2622417)))

(assert (= (and b!4223675 (is-ElementMatch!12714 (regex!7809 r!4313))) b!4223794))

(assert (= (and b!4223675 (is-Concat!20754 (regex!7809 r!4313))) b!4223795))

(assert (= (and b!4223675 (is-Star!12714 (regex!7809 r!4313))) b!4223796))

(assert (= (and b!4223675 (is-Union!12714 (regex!7809 r!4313))) b!4223797))

(declare-fun b!4223808 () Bool)

(declare-fun b_free!124275 () Bool)

(declare-fun b_next!124979 () Bool)

(assert (=> b!4223808 (= b_free!124275 (not b_next!124979))))

(declare-fun tp!1292778 () Bool)

(declare-fun b_and!333485 () Bool)

(assert (=> b!4223808 (= tp!1292778 b_and!333485)))

(declare-fun b_free!124277 () Bool)

(declare-fun b_next!124981 () Bool)

(assert (=> b!4223808 (= b_free!124277 (not b_next!124981))))

(declare-fun tp!1292781 () Bool)

(declare-fun b_and!333487 () Bool)

(assert (=> b!4223808 (= tp!1292781 b_and!333487)))

(declare-fun e!2622427 () Bool)

(assert (=> b!4223808 (= e!2622427 (and tp!1292778 tp!1292781))))

(declare-fun b!4223807 () Bool)

(declare-fun e!2622429 () Bool)

(declare-fun tp!1292779 () Bool)

(assert (=> b!4223807 (= e!2622429 (and tp!1292779 (inv!61175 (tag!8673 (h!51928 (t!349217 rules!4013)))) (inv!61178 (transformation!7809 (h!51928 (t!349217 rules!4013)))) e!2622427))))

(declare-fun b!4223806 () Bool)

(declare-fun e!2622428 () Bool)

(declare-fun tp!1292780 () Bool)

(assert (=> b!4223806 (= e!2622428 (and e!2622429 tp!1292780))))

(assert (=> b!4223673 (= tp!1292719 e!2622428)))

(assert (= b!4223807 b!4223808))

(assert (= b!4223806 b!4223807))

(assert (= (and b!4223673 (is-Cons!46508 (t!349217 rules!4013))) b!4223806))

(declare-fun m!4812251 () Bool)

(assert (=> b!4223807 m!4812251))

(declare-fun m!4812253 () Bool)

(assert (=> b!4223807 m!4812253))

(push 1)

(assert (not d!1243793))

(assert (not d!1243797))

(assert (not b!4223750))

(assert (not bm!293170))

(assert (not b!4223787))

(assert (not b!4223747))

(assert (not b!4223786))

(assert (not b!4223762))

(assert (not b!4223806))

(assert (not b!4223774))

(assert (not b_next!124979))

(assert (not d!1243779))

(assert (not b!4223788))

(assert (not b!4223745))

(assert (not b!4223749))

(assert (not b_next!124969))

(assert b_and!333469)

(assert (not b_next!124965))

(assert b_and!333471)

(assert (not d!1243799))

(assert (not b_next!124967))

(assert (not b_next!124981))

(assert tp_is_empty!22391)

(assert (not b!4223746))

(assert (not b!4223768))

(assert (not b!4223752))

(assert b_and!333475)

(assert (not b_next!124963))

(assert (not b!4223751))

(assert (not b!4223758))

(assert (not b!4223807))

(assert (not b!4223793))

(assert b_and!333473)

(assert (not b!4223795))

(assert (not d!1243789))

(assert b_and!333487)

(assert (not b!4223748))

(assert (not b!4223796))

(assert (not b!4223797))

(assert b_and!333485)

(assert (not b!4223759))

(assert (not b!4223719))

(check-sat)

(pop 1)

(push 1)

(assert b_and!333471)

(assert b_and!333473)

(assert (not b_next!124979))

(assert b_and!333487)

(assert b_and!333485)

(assert (not b_next!124969))

(assert b_and!333469)

(assert (not b_next!124965))

(assert (not b_next!124967))

(assert (not b_next!124981))

(assert b_and!333475)

(assert (not b_next!124963))

(check-sat)

(pop 1)

