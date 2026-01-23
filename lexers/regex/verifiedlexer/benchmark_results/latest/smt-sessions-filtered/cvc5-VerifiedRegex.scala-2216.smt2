; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108640 () Bool)

(assert start!108640)

(declare-fun b!1215959 () Bool)

(declare-fun b_free!29217 () Bool)

(declare-fun b_next!29921 () Bool)

(assert (=> b!1215959 (= b_free!29217 (not b_next!29921))))

(declare-fun tp!345194 () Bool)

(declare-fun b_and!82585 () Bool)

(assert (=> b!1215959 (= tp!345194 b_and!82585)))

(declare-fun b_free!29219 () Bool)

(declare-fun b_next!29923 () Bool)

(assert (=> b!1215959 (= b_free!29219 (not b_next!29923))))

(declare-fun tp!345192 () Bool)

(declare-fun b_and!82587 () Bool)

(assert (=> b!1215959 (= tp!345192 b_and!82587)))

(declare-fun b!1215957 () Bool)

(declare-fun b_free!29221 () Bool)

(declare-fun b_next!29925 () Bool)

(assert (=> b!1215957 (= b_free!29221 (not b_next!29925))))

(declare-fun tp!345186 () Bool)

(declare-fun b_and!82589 () Bool)

(assert (=> b!1215957 (= tp!345186 b_and!82589)))

(declare-fun b_free!29223 () Bool)

(declare-fun b_next!29927 () Bool)

(assert (=> b!1215957 (= b_free!29223 (not b_next!29927))))

(declare-fun tp!345188 () Bool)

(declare-fun b_and!82591 () Bool)

(assert (=> b!1215957 (= tp!345188 b_and!82591)))

(declare-fun b!1215954 () Bool)

(declare-fun res!546779 () Bool)

(declare-fun e!780431 () Bool)

(assert (=> b!1215954 (=> (not res!546779) (not e!780431))))

(declare-datatypes ((List!12466 0))(
  ( (Nil!12408) (Cons!12408 (h!17809 (_ BitVec 16)) (t!113148 List!12466)) )
))
(declare-datatypes ((TokenValue!2204 0))(
  ( (FloatLiteralValue!4408 (text!15873 List!12466)) (TokenValueExt!2203 (__x!8123 Int)) (Broken!11020 (value!69448 List!12466)) (Object!2261) (End!2204) (Def!2204) (Underscore!2204) (Match!2204) (Else!2204) (Error!2204) (Case!2204) (If!2204) (Extends!2204) (Abstract!2204) (Class!2204) (Val!2204) (DelimiterValue!4408 (del!2264 List!12466)) (KeywordValue!2210 (value!69449 List!12466)) (CommentValue!4408 (value!69450 List!12466)) (WhitespaceValue!4408 (value!69451 List!12466)) (IndentationValue!2204 (value!69452 List!12466)) (String!15153) (Int32!2204) (Broken!11021 (value!69453 List!12466)) (Boolean!2205) (Unit!18688) (OperatorValue!2207 (op!2264 List!12466)) (IdentifierValue!4408 (value!69454 List!12466)) (IdentifierValue!4409 (value!69455 List!12466)) (WhitespaceValue!4409 (value!69456 List!12466)) (True!4408) (False!4408) (Broken!11022 (value!69457 List!12466)) (Broken!11023 (value!69458 List!12466)) (True!4409) (RightBrace!2204) (RightBracket!2204) (Colon!2204) (Null!2204) (Comma!2204) (LeftBracket!2204) (False!4409) (LeftBrace!2204) (ImaginaryLiteralValue!2204 (text!15874 List!12466)) (StringLiteralValue!6612 (value!69459 List!12466)) (EOFValue!2204 (value!69460 List!12466)) (IdentValue!2204 (value!69461 List!12466)) (DelimiterValue!4409 (value!69462 List!12466)) (DedentValue!2204 (value!69463 List!12466)) (NewLineValue!2204 (value!69464 List!12466)) (IntegerValue!6612 (value!69465 (_ BitVec 32)) (text!15875 List!12466)) (IntegerValue!6613 (value!69466 Int) (text!15876 List!12466)) (Times!2204) (Or!2204) (Equal!2204) (Minus!2204) (Broken!11024 (value!69467 List!12466)) (And!2204) (Div!2204) (LessEqual!2204) (Mod!2204) (Concat!5610) (Not!2204) (Plus!2204) (SpaceValue!2204 (value!69468 List!12466)) (IntegerValue!6614 (value!69469 Int) (text!15877 List!12466)) (StringLiteralValue!6613 (text!15878 List!12466)) (FloatLiteralValue!4409 (text!15879 List!12466)) (BytesLiteralValue!2204 (value!69470 List!12466)) (CommentValue!4409 (value!69471 List!12466)) (StringLiteralValue!6614 (value!69472 List!12466)) (ErrorTokenValue!2204 (msg!2265 List!12466)) )
))
(declare-datatypes ((C!7130 0))(
  ( (C!7131 (val!4095 Int)) )
))
(declare-datatypes ((List!12467 0))(
  ( (Nil!12409) (Cons!12409 (h!17810 C!7130) (t!113149 List!12467)) )
))
(declare-datatypes ((IArray!8131 0))(
  ( (IArray!8132 (innerList!4123 List!12467)) )
))
(declare-datatypes ((Conc!4063 0))(
  ( (Node!4063 (left!10719 Conc!4063) (right!11049 Conc!4063) (csize!8356 Int) (cheight!4274 Int)) (Leaf!6280 (xs!6774 IArray!8131) (csize!8357 Int)) (Empty!4063) )
))
(declare-datatypes ((Regex!3406 0))(
  ( (ElementMatch!3406 (c!203397 C!7130)) (Concat!5611 (regOne!7324 Regex!3406) (regTwo!7324 Regex!3406)) (EmptyExpr!3406) (Star!3406 (reg!3735 Regex!3406)) (EmptyLang!3406) (Union!3406 (regOne!7325 Regex!3406) (regTwo!7325 Regex!3406)) )
))
(declare-datatypes ((String!15154 0))(
  ( (String!15155 (value!69473 String)) )
))
(declare-datatypes ((BalanceConc!8058 0))(
  ( (BalanceConc!8059 (c!203398 Conc!4063)) )
))
(declare-datatypes ((TokenValueInjection!4104 0))(
  ( (TokenValueInjection!4105 (toValue!3265 Int) (toChars!3124 Int)) )
))
(declare-datatypes ((Rule!4072 0))(
  ( (Rule!4073 (regex!2136 Regex!3406) (tag!2398 String!15154) (isSeparator!2136 Bool) (transformation!2136 TokenValueInjection!4104)) )
))
(declare-datatypes ((Token!3934 0))(
  ( (Token!3935 (value!69474 TokenValue!2204) (rule!3561 Rule!4072) (size!9814 Int) (originalCharacters!2690 List!12467)) )
))
(declare-datatypes ((List!12468 0))(
  ( (Nil!12410) (Cons!12410 (h!17811 Token!3934) (t!113150 List!12468)) )
))
(declare-fun tokens!556 () List!12468)

(declare-datatypes ((LexerInterface!1831 0))(
  ( (LexerInterfaceExt!1828 (__x!8124 Int)) (Lexer!1829) )
))
(declare-fun thiss!20528 () LexerInterface!1831)

(declare-datatypes ((List!12469 0))(
  ( (Nil!12411) (Cons!12411 (h!17812 Rule!4072) (t!113151 List!12469)) )
))
(declare-fun rules!2728 () List!12469)

(declare-fun input!2346 () List!12467)

(declare-datatypes ((tuple2!12278 0))(
  ( (tuple2!12279 (_1!6986 List!12468) (_2!6986 List!12467)) )
))
(declare-fun lexList!461 (LexerInterface!1831 List!12469 List!12467) tuple2!12278)

(assert (=> b!1215954 (= res!546779 (= (_1!6986 (lexList!461 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1215955 () Bool)

(declare-fun e!780426 () Bool)

(declare-fun e!780438 () Bool)

(declare-fun tp!345193 () Bool)

(assert (=> b!1215955 (= e!780426 (and e!780438 tp!345193))))

(declare-fun b!1215956 () Bool)

(declare-fun res!546783 () Bool)

(assert (=> b!1215956 (=> (not res!546783) (not e!780431))))

(declare-fun isEmpty!7376 (List!12469) Bool)

(assert (=> b!1215956 (= res!546783 (not (isEmpty!7376 rules!2728)))))

(declare-fun e!780436 () Bool)

(assert (=> b!1215957 (= e!780436 (and tp!345186 tp!345188))))

(declare-fun res!546778 () Bool)

(assert (=> start!108640 (=> (not res!546778) (not e!780431))))

(assert (=> start!108640 (= res!546778 (is-Lexer!1829 thiss!20528))))

(assert (=> start!108640 e!780431))

(assert (=> start!108640 true))

(assert (=> start!108640 e!780426))

(declare-fun e!780434 () Bool)

(assert (=> start!108640 e!780434))

(declare-fun e!780435 () Bool)

(assert (=> start!108640 e!780435))

(declare-fun b!1215958 () Bool)

(declare-fun lt!415643 () List!12467)

(declare-fun e!780427 () Bool)

(declare-datatypes ((tuple2!12280 0))(
  ( (tuple2!12281 (_1!6987 Token!3934) (_2!6987 List!12467)) )
))
(declare-fun lt!415641 () tuple2!12280)

(declare-fun ++!3172 (List!12467 List!12467) List!12467)

(assert (=> b!1215958 (= e!780427 (not (= (++!3172 lt!415643 (_2!6987 lt!415641)) input!2346)))))

(declare-fun e!780423 () Bool)

(assert (=> b!1215959 (= e!780423 (and tp!345194 tp!345192))))

(declare-fun b!1215960 () Bool)

(declare-fun tp!345187 () Bool)

(declare-fun inv!16599 (String!15154) Bool)

(declare-fun inv!16602 (TokenValueInjection!4104) Bool)

(assert (=> b!1215960 (= e!780438 (and tp!345187 (inv!16599 (tag!2398 (h!17812 rules!2728))) (inv!16602 (transformation!2136 (h!17812 rules!2728))) e!780436))))

(declare-fun b!1215961 () Bool)

(declare-fun e!780428 () Bool)

(declare-fun tp!345195 () Bool)

(declare-fun inv!16603 (Token!3934) Bool)

(assert (=> b!1215961 (= e!780435 (and (inv!16603 (h!17811 tokens!556)) e!780428 tp!345195))))

(declare-fun tp!345191 () Bool)

(declare-fun b!1215962 () Bool)

(declare-fun e!780437 () Bool)

(declare-fun inv!21 (TokenValue!2204) Bool)

(assert (=> b!1215962 (= e!780428 (and (inv!21 (value!69474 (h!17811 tokens!556))) e!780437 tp!345191))))

(declare-fun b!1215963 () Bool)

(declare-fun e!780424 () Bool)

(assert (=> b!1215963 (= e!780424 e!780427)))

(declare-fun res!546781 () Bool)

(assert (=> b!1215963 (=> (not res!546781) (not e!780427))))

(declare-fun lt!415642 () List!12467)

(assert (=> b!1215963 (= res!546781 (= lt!415642 lt!415643))))

(declare-fun lt!415644 () BalanceConc!8058)

(declare-fun list!4574 (BalanceConc!8058) List!12467)

(assert (=> b!1215963 (= lt!415643 (list!4574 lt!415644))))

(declare-fun lt!415645 () BalanceConc!8058)

(assert (=> b!1215963 (= lt!415642 (list!4574 lt!415645))))

(declare-fun b!1215964 () Bool)

(declare-fun e!780433 () Bool)

(assert (=> b!1215964 (= e!780431 e!780433)))

(declare-fun res!546782 () Bool)

(assert (=> b!1215964 (=> (not res!546782) (not e!780433))))

(declare-datatypes ((Option!2498 0))(
  ( (None!2497) (Some!2497 (v!20628 tuple2!12280)) )
))
(declare-fun lt!415640 () Option!2498)

(declare-fun isDefined!2136 (Option!2498) Bool)

(assert (=> b!1215964 (= res!546782 (isDefined!2136 lt!415640))))

(declare-fun maxPrefix!953 (LexerInterface!1831 List!12469 List!12467) Option!2498)

(assert (=> b!1215964 (= lt!415640 (maxPrefix!953 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1215965 () Bool)

(declare-fun tp_is_empty!6333 () Bool)

(declare-fun tp!345190 () Bool)

(assert (=> b!1215965 (= e!780434 (and tp_is_empty!6333 tp!345190))))

(declare-fun b!1215966 () Bool)

(declare-fun res!546777 () Bool)

(assert (=> b!1215966 (=> (not res!546777) (not e!780431))))

(declare-fun rulesInvariant!1705 (LexerInterface!1831 List!12469) Bool)

(assert (=> b!1215966 (= res!546777 (rulesInvariant!1705 thiss!20528 rules!2728))))

(declare-fun b!1215967 () Bool)

(declare-fun e!780429 () Bool)

(assert (=> b!1215967 (= e!780433 e!780429)))

(declare-fun res!546776 () Bool)

(assert (=> b!1215967 (=> (not res!546776) (not e!780429))))

(assert (=> b!1215967 (= res!546776 (= (_1!6987 lt!415641) (h!17811 tokens!556)))))

(declare-fun get!4084 (Option!2498) tuple2!12280)

(assert (=> b!1215967 (= lt!415641 (get!4084 lt!415640))))

(declare-fun b!1215968 () Bool)

(assert (=> b!1215968 (= e!780429 e!780424)))

(declare-fun res!546784 () Bool)

(assert (=> b!1215968 (=> (not res!546784) (not e!780424))))

(assert (=> b!1215968 (= res!546784 (= lt!415645 lt!415644))))

(declare-fun charsOf!1142 (Token!3934) BalanceConc!8058)

(assert (=> b!1215968 (= lt!415644 (charsOf!1142 (h!17811 tokens!556)))))

(assert (=> b!1215968 (= lt!415645 (charsOf!1142 (_1!6987 lt!415641)))))

(declare-fun b!1215969 () Bool)

(declare-fun res!546780 () Bool)

(assert (=> b!1215969 (=> (not res!546780) (not e!780431))))

(assert (=> b!1215969 (= res!546780 (not (is-Nil!12410 tokens!556)))))

(declare-fun b!1215970 () Bool)

(declare-fun tp!345189 () Bool)

(assert (=> b!1215970 (= e!780437 (and tp!345189 (inv!16599 (tag!2398 (rule!3561 (h!17811 tokens!556)))) (inv!16602 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) e!780423))))

(assert (= (and start!108640 res!546778) b!1215956))

(assert (= (and b!1215956 res!546783) b!1215966))

(assert (= (and b!1215966 res!546777) b!1215954))

(assert (= (and b!1215954 res!546779) b!1215969))

(assert (= (and b!1215969 res!546780) b!1215964))

(assert (= (and b!1215964 res!546782) b!1215967))

(assert (= (and b!1215967 res!546776) b!1215968))

(assert (= (and b!1215968 res!546784) b!1215963))

(assert (= (and b!1215963 res!546781) b!1215958))

(assert (= b!1215960 b!1215957))

(assert (= b!1215955 b!1215960))

(assert (= (and start!108640 (is-Cons!12411 rules!2728)) b!1215955))

(assert (= (and start!108640 (is-Cons!12409 input!2346)) b!1215965))

(assert (= b!1215970 b!1215959))

(assert (= b!1215962 b!1215970))

(assert (= b!1215961 b!1215962))

(assert (= (and start!108640 (is-Cons!12410 tokens!556)) b!1215961))

(declare-fun m!1390407 () Bool)

(assert (=> b!1215968 m!1390407))

(declare-fun m!1390409 () Bool)

(assert (=> b!1215968 m!1390409))

(declare-fun m!1390411 () Bool)

(assert (=> b!1215970 m!1390411))

(declare-fun m!1390413 () Bool)

(assert (=> b!1215970 m!1390413))

(declare-fun m!1390415 () Bool)

(assert (=> b!1215956 m!1390415))

(declare-fun m!1390417 () Bool)

(assert (=> b!1215966 m!1390417))

(declare-fun m!1390419 () Bool)

(assert (=> b!1215962 m!1390419))

(declare-fun m!1390421 () Bool)

(assert (=> b!1215958 m!1390421))

(declare-fun m!1390423 () Bool)

(assert (=> b!1215964 m!1390423))

(declare-fun m!1390425 () Bool)

(assert (=> b!1215964 m!1390425))

(declare-fun m!1390427 () Bool)

(assert (=> b!1215954 m!1390427))

(declare-fun m!1390429 () Bool)

(assert (=> b!1215961 m!1390429))

(declare-fun m!1390431 () Bool)

(assert (=> b!1215967 m!1390431))

(declare-fun m!1390433 () Bool)

(assert (=> b!1215960 m!1390433))

(declare-fun m!1390435 () Bool)

(assert (=> b!1215960 m!1390435))

(declare-fun m!1390437 () Bool)

(assert (=> b!1215963 m!1390437))

(declare-fun m!1390439 () Bool)

(assert (=> b!1215963 m!1390439))

(push 1)

(assert (not b!1215956))

(assert (not b!1215954))

(assert (not b_next!29921))

(assert (not b!1215962))

(assert b_and!82591)

(assert tp_is_empty!6333)

(assert (not b!1215963))

(assert (not b!1215967))

(assert (not b!1215965))

(assert (not b!1215970))

(assert (not b!1215966))

(assert b_and!82589)

(assert (not b!1215968))

(assert (not b!1215961))

(assert (not b_next!29925))

(assert (not b!1215958))

(assert (not b!1215955))

(assert (not b_next!29927))

(assert (not b!1215964))

(assert (not b!1215960))

(assert b_and!82587)

(assert b_and!82585)

(assert (not b_next!29923))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29927))

(assert (not b_next!29921))

(assert b_and!82591)

(assert b_and!82587)

(assert b_and!82589)

(assert (not b_next!29925))

(assert b_and!82585)

(assert (not b_next!29923))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!347333 () Bool)

(assert (=> d!347333 (= (get!4084 lt!415640) (v!20628 lt!415640))))

(assert (=> b!1215967 d!347333))

(declare-fun d!347335 () Bool)

(declare-fun lt!415666 () BalanceConc!8058)

(assert (=> d!347335 (= (list!4574 lt!415666) (originalCharacters!2690 (h!17811 tokens!556)))))

(declare-fun dynLambda!5419 (Int TokenValue!2204) BalanceConc!8058)

(assert (=> d!347335 (= lt!415666 (dynLambda!5419 (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (value!69474 (h!17811 tokens!556))))))

(assert (=> d!347335 (= (charsOf!1142 (h!17811 tokens!556)) lt!415666)))

(declare-fun b_lambda!35847 () Bool)

(assert (=> (not b_lambda!35847) (not d!347335)))

(declare-fun t!113157 () Bool)

(declare-fun tb!66769 () Bool)

(assert (=> (and b!1215959 (= (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556))))) t!113157) tb!66769))

(declare-fun b!1216041 () Bool)

(declare-fun e!780498 () Bool)

(declare-fun tp!345228 () Bool)

(declare-fun inv!16606 (Conc!4063) Bool)

(assert (=> b!1216041 (= e!780498 (and (inv!16606 (c!203398 (dynLambda!5419 (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (value!69474 (h!17811 tokens!556))))) tp!345228))))

(declare-fun result!80788 () Bool)

(declare-fun inv!16607 (BalanceConc!8058) Bool)

(assert (=> tb!66769 (= result!80788 (and (inv!16607 (dynLambda!5419 (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (value!69474 (h!17811 tokens!556)))) e!780498))))

(assert (= tb!66769 b!1216041))

(declare-fun m!1390481 () Bool)

(assert (=> b!1216041 m!1390481))

(declare-fun m!1390483 () Bool)

(assert (=> tb!66769 m!1390483))

(assert (=> d!347335 t!113157))

(declare-fun b_and!82601 () Bool)

(assert (= b_and!82587 (and (=> t!113157 result!80788) b_and!82601)))

(declare-fun t!113159 () Bool)

(declare-fun tb!66771 () Bool)

(assert (=> (and b!1215957 (= (toChars!3124 (transformation!2136 (h!17812 rules!2728))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556))))) t!113159) tb!66771))

(declare-fun result!80792 () Bool)

(assert (= result!80792 result!80788))

(assert (=> d!347335 t!113159))

(declare-fun b_and!82603 () Bool)

(assert (= b_and!82591 (and (=> t!113159 result!80792) b_and!82603)))

(declare-fun m!1390485 () Bool)

(assert (=> d!347335 m!1390485))

(declare-fun m!1390487 () Bool)

(assert (=> d!347335 m!1390487))

(assert (=> b!1215968 d!347335))

(declare-fun d!347339 () Bool)

(declare-fun lt!415667 () BalanceConc!8058)

(assert (=> d!347339 (= (list!4574 lt!415667) (originalCharacters!2690 (_1!6987 lt!415641)))))

(assert (=> d!347339 (= lt!415667 (dynLambda!5419 (toChars!3124 (transformation!2136 (rule!3561 (_1!6987 lt!415641)))) (value!69474 (_1!6987 lt!415641))))))

(assert (=> d!347339 (= (charsOf!1142 (_1!6987 lt!415641)) lt!415667)))

(declare-fun b_lambda!35849 () Bool)

(assert (=> (not b_lambda!35849) (not d!347339)))

(declare-fun tb!66773 () Bool)

(declare-fun t!113161 () Bool)

(assert (=> (and b!1215959 (= (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (toChars!3124 (transformation!2136 (rule!3561 (_1!6987 lt!415641))))) t!113161) tb!66773))

(declare-fun b!1216042 () Bool)

(declare-fun e!780499 () Bool)

(declare-fun tp!345229 () Bool)

(assert (=> b!1216042 (= e!780499 (and (inv!16606 (c!203398 (dynLambda!5419 (toChars!3124 (transformation!2136 (rule!3561 (_1!6987 lt!415641)))) (value!69474 (_1!6987 lt!415641))))) tp!345229))))

(declare-fun result!80794 () Bool)

(assert (=> tb!66773 (= result!80794 (and (inv!16607 (dynLambda!5419 (toChars!3124 (transformation!2136 (rule!3561 (_1!6987 lt!415641)))) (value!69474 (_1!6987 lt!415641)))) e!780499))))

(assert (= tb!66773 b!1216042))

(declare-fun m!1390489 () Bool)

(assert (=> b!1216042 m!1390489))

(declare-fun m!1390491 () Bool)

(assert (=> tb!66773 m!1390491))

(assert (=> d!347339 t!113161))

(declare-fun b_and!82605 () Bool)

(assert (= b_and!82601 (and (=> t!113161 result!80794) b_and!82605)))

(declare-fun t!113163 () Bool)

(declare-fun tb!66775 () Bool)

(assert (=> (and b!1215957 (= (toChars!3124 (transformation!2136 (h!17812 rules!2728))) (toChars!3124 (transformation!2136 (rule!3561 (_1!6987 lt!415641))))) t!113163) tb!66775))

(declare-fun result!80796 () Bool)

(assert (= result!80796 result!80794))

(assert (=> d!347339 t!113163))

(declare-fun b_and!82607 () Bool)

(assert (= b_and!82603 (and (=> t!113163 result!80796) b_and!82607)))

(declare-fun m!1390493 () Bool)

(assert (=> d!347339 m!1390493))

(declare-fun m!1390495 () Bool)

(assert (=> d!347339 m!1390495))

(assert (=> b!1215968 d!347339))

(declare-fun d!347341 () Bool)

(declare-fun res!546821 () Bool)

(declare-fun e!780502 () Bool)

(assert (=> d!347341 (=> (not res!546821) (not e!780502))))

(declare-fun rulesValid!763 (LexerInterface!1831 List!12469) Bool)

(assert (=> d!347341 (= res!546821 (rulesValid!763 thiss!20528 rules!2728))))

(assert (=> d!347341 (= (rulesInvariant!1705 thiss!20528 rules!2728) e!780502)))

(declare-fun b!1216045 () Bool)

(declare-datatypes ((List!12474 0))(
  ( (Nil!12416) (Cons!12416 (h!17817 String!15154) (t!113172 List!12474)) )
))
(declare-fun noDuplicateTag!763 (LexerInterface!1831 List!12469 List!12474) Bool)

(assert (=> b!1216045 (= e!780502 (noDuplicateTag!763 thiss!20528 rules!2728 Nil!12416))))

(assert (= (and d!347341 res!546821) b!1216045))

(declare-fun m!1390497 () Bool)

(assert (=> d!347341 m!1390497))

(declare-fun m!1390499 () Bool)

(assert (=> b!1216045 m!1390499))

(assert (=> b!1215966 d!347341))

(declare-fun d!347343 () Bool)

(assert (=> d!347343 (= (isEmpty!7376 rules!2728) (is-Nil!12411 rules!2728))))

(assert (=> b!1215956 d!347343))

(declare-fun b!1216060 () Bool)

(declare-fun e!780512 () tuple2!12278)

(assert (=> b!1216060 (= e!780512 (tuple2!12279 Nil!12410 input!2346))))

(declare-fun b!1216061 () Bool)

(declare-fun e!780513 () Bool)

(declare-fun e!780511 () Bool)

(assert (=> b!1216061 (= e!780513 e!780511)))

(declare-fun res!546824 () Bool)

(declare-fun lt!415678 () tuple2!12278)

(declare-fun size!9816 (List!12467) Int)

(assert (=> b!1216061 (= res!546824 (< (size!9816 (_2!6986 lt!415678)) (size!9816 input!2346)))))

(assert (=> b!1216061 (=> (not res!546824) (not e!780511))))

(declare-fun b!1216062 () Bool)

(assert (=> b!1216062 (= e!780513 (= (_2!6986 lt!415678) input!2346))))

(declare-fun d!347345 () Bool)

(assert (=> d!347345 e!780513))

(declare-fun c!203414 () Bool)

(declare-fun size!9817 (List!12468) Int)

(assert (=> d!347345 (= c!203414 (> (size!9817 (_1!6986 lt!415678)) 0))))

(assert (=> d!347345 (= lt!415678 e!780512)))

(declare-fun c!203415 () Bool)

(declare-fun lt!415682 () Option!2498)

(assert (=> d!347345 (= c!203415 (is-Some!2497 lt!415682))))

(assert (=> d!347345 (= lt!415682 (maxPrefix!953 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347345 (= (lexList!461 thiss!20528 rules!2728 input!2346) lt!415678)))

(declare-fun b!1216063 () Bool)

(declare-fun isEmpty!7378 (List!12468) Bool)

(assert (=> b!1216063 (= e!780511 (not (isEmpty!7378 (_1!6986 lt!415678))))))

(declare-fun b!1216064 () Bool)

(declare-fun lt!415681 () tuple2!12278)

(assert (=> b!1216064 (= e!780512 (tuple2!12279 (Cons!12410 (_1!6987 (v!20628 lt!415682)) (_1!6986 lt!415681)) (_2!6986 lt!415681)))))

(assert (=> b!1216064 (= lt!415681 (lexList!461 thiss!20528 rules!2728 (_2!6987 (v!20628 lt!415682))))))

(assert (= (and d!347345 c!203415) b!1216064))

(assert (= (and d!347345 (not c!203415)) b!1216060))

(assert (= (and d!347345 c!203414) b!1216061))

(assert (= (and d!347345 (not c!203414)) b!1216062))

(assert (= (and b!1216061 res!546824) b!1216063))

(declare-fun m!1390501 () Bool)

(assert (=> b!1216061 m!1390501))

(declare-fun m!1390503 () Bool)

(assert (=> b!1216061 m!1390503))

(declare-fun m!1390505 () Bool)

(assert (=> d!347345 m!1390505))

(assert (=> d!347345 m!1390425))

(declare-fun m!1390507 () Bool)

(assert (=> b!1216063 m!1390507))

(declare-fun m!1390509 () Bool)

(assert (=> b!1216064 m!1390509))

(assert (=> b!1215954 d!347345))

(declare-fun d!347347 () Bool)

(declare-fun list!4576 (Conc!4063) List!12467)

(assert (=> d!347347 (= (list!4574 lt!415644) (list!4576 (c!203398 lt!415644)))))

(declare-fun bs!288801 () Bool)

(assert (= bs!288801 d!347347))

(declare-fun m!1390511 () Bool)

(assert (=> bs!288801 m!1390511))

(assert (=> b!1215963 d!347347))

(declare-fun d!347349 () Bool)

(assert (=> d!347349 (= (list!4574 lt!415645) (list!4576 (c!203398 lt!415645)))))

(declare-fun bs!288802 () Bool)

(assert (= bs!288802 d!347349))

(declare-fun m!1390513 () Bool)

(assert (=> bs!288802 m!1390513))

(assert (=> b!1215963 d!347349))

(declare-fun d!347351 () Bool)

(declare-fun isEmpty!7379 (Option!2498) Bool)

(assert (=> d!347351 (= (isDefined!2136 lt!415640) (not (isEmpty!7379 lt!415640)))))

(declare-fun bs!288803 () Bool)

(assert (= bs!288803 d!347351))

(declare-fun m!1390515 () Bool)

(assert (=> bs!288803 m!1390515))

(assert (=> b!1215964 d!347351))

(declare-fun b!1216112 () Bool)

(declare-fun res!546858 () Bool)

(declare-fun e!780541 () Bool)

(assert (=> b!1216112 (=> (not res!546858) (not e!780541))))

(declare-fun lt!415702 () Option!2498)

(declare-fun matchR!1524 (Regex!3406 List!12467) Bool)

(assert (=> b!1216112 (= res!546858 (matchR!1524 (regex!2136 (rule!3561 (_1!6987 (get!4084 lt!415702)))) (list!4574 (charsOf!1142 (_1!6987 (get!4084 lt!415702))))))))

(declare-fun b!1216113 () Bool)

(declare-fun e!780540 () Option!2498)

(declare-fun call!84558 () Option!2498)

(assert (=> b!1216113 (= e!780540 call!84558)))

(declare-fun b!1216114 () Bool)

(declare-fun res!546859 () Bool)

(assert (=> b!1216114 (=> (not res!546859) (not e!780541))))

(declare-fun apply!2648 (TokenValueInjection!4104 BalanceConc!8058) TokenValue!2204)

(declare-fun seqFromList!1551 (List!12467) BalanceConc!8058)

(assert (=> b!1216114 (= res!546859 (= (value!69474 (_1!6987 (get!4084 lt!415702))) (apply!2648 (transformation!2136 (rule!3561 (_1!6987 (get!4084 lt!415702)))) (seqFromList!1551 (originalCharacters!2690 (_1!6987 (get!4084 lt!415702)))))))))

(declare-fun b!1216115 () Bool)

(declare-fun res!546854 () Bool)

(assert (=> b!1216115 (=> (not res!546854) (not e!780541))))

(assert (=> b!1216115 (= res!546854 (< (size!9816 (_2!6987 (get!4084 lt!415702))) (size!9816 input!2346)))))

(declare-fun b!1216116 () Bool)

(declare-fun e!780539 () Bool)

(assert (=> b!1216116 (= e!780539 e!780541)))

(declare-fun res!546857 () Bool)

(assert (=> b!1216116 (=> (not res!546857) (not e!780541))))

(assert (=> b!1216116 (= res!546857 (isDefined!2136 lt!415702))))

(declare-fun bm!84553 () Bool)

(declare-fun maxPrefixOneRule!549 (LexerInterface!1831 Rule!4072 List!12467) Option!2498)

(assert (=> bm!84553 (= call!84558 (maxPrefixOneRule!549 thiss!20528 (h!17812 rules!2728) input!2346))))

(declare-fun b!1216117 () Bool)

(declare-fun res!546860 () Bool)

(assert (=> b!1216117 (=> (not res!546860) (not e!780541))))

(assert (=> b!1216117 (= res!546860 (= (list!4574 (charsOf!1142 (_1!6987 (get!4084 lt!415702)))) (originalCharacters!2690 (_1!6987 (get!4084 lt!415702)))))))

(declare-fun b!1216118 () Bool)

(declare-fun lt!415699 () Option!2498)

(declare-fun lt!415700 () Option!2498)

(assert (=> b!1216118 (= e!780540 (ite (and (is-None!2497 lt!415699) (is-None!2497 lt!415700)) None!2497 (ite (is-None!2497 lt!415700) lt!415699 (ite (is-None!2497 lt!415699) lt!415700 (ite (>= (size!9814 (_1!6987 (v!20628 lt!415699))) (size!9814 (_1!6987 (v!20628 lt!415700)))) lt!415699 lt!415700)))))))

(assert (=> b!1216118 (= lt!415699 call!84558)))

(assert (=> b!1216118 (= lt!415700 (maxPrefix!953 thiss!20528 (t!113151 rules!2728) input!2346))))

(declare-fun b!1216119 () Bool)

(declare-fun contains!2079 (List!12469 Rule!4072) Bool)

(assert (=> b!1216119 (= e!780541 (contains!2079 rules!2728 (rule!3561 (_1!6987 (get!4084 lt!415702)))))))

(declare-fun b!1216120 () Bool)

(declare-fun res!546855 () Bool)

(assert (=> b!1216120 (=> (not res!546855) (not e!780541))))

(assert (=> b!1216120 (= res!546855 (= (++!3172 (list!4574 (charsOf!1142 (_1!6987 (get!4084 lt!415702)))) (_2!6987 (get!4084 lt!415702))) input!2346))))

(declare-fun d!347353 () Bool)

(assert (=> d!347353 e!780539))

(declare-fun res!546856 () Bool)

(assert (=> d!347353 (=> res!546856 e!780539)))

(assert (=> d!347353 (= res!546856 (isEmpty!7379 lt!415702))))

(assert (=> d!347353 (= lt!415702 e!780540)))

(declare-fun c!203425 () Bool)

(assert (=> d!347353 (= c!203425 (and (is-Cons!12411 rules!2728) (is-Nil!12411 (t!113151 rules!2728))))))

(declare-datatypes ((Unit!18690 0))(
  ( (Unit!18691) )
))
(declare-fun lt!415701 () Unit!18690)

(declare-fun lt!415703 () Unit!18690)

(assert (=> d!347353 (= lt!415701 lt!415703)))

(declare-fun isPrefix!1030 (List!12467 List!12467) Bool)

(assert (=> d!347353 (isPrefix!1030 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!723 (List!12467 List!12467) Unit!18690)

(assert (=> d!347353 (= lt!415703 (lemmaIsPrefixRefl!723 input!2346 input!2346))))

(declare-fun rulesValidInductive!666 (LexerInterface!1831 List!12469) Bool)

(assert (=> d!347353 (rulesValidInductive!666 thiss!20528 rules!2728)))

(assert (=> d!347353 (= (maxPrefix!953 thiss!20528 rules!2728 input!2346) lt!415702)))

(assert (= (and d!347353 c!203425) b!1216113))

(assert (= (and d!347353 (not c!203425)) b!1216118))

(assert (= (or b!1216113 b!1216118) bm!84553))

(assert (= (and d!347353 (not res!546856)) b!1216116))

(assert (= (and b!1216116 res!546857) b!1216117))

(assert (= (and b!1216117 res!546860) b!1216115))

(assert (= (and b!1216115 res!546854) b!1216120))

(assert (= (and b!1216120 res!546855) b!1216114))

(assert (= (and b!1216114 res!546859) b!1216112))

(assert (= (and b!1216112 res!546858) b!1216119))

(declare-fun m!1390555 () Bool)

(assert (=> d!347353 m!1390555))

(declare-fun m!1390557 () Bool)

(assert (=> d!347353 m!1390557))

(declare-fun m!1390559 () Bool)

(assert (=> d!347353 m!1390559))

(declare-fun m!1390561 () Bool)

(assert (=> d!347353 m!1390561))

(declare-fun m!1390563 () Bool)

(assert (=> bm!84553 m!1390563))

(declare-fun m!1390565 () Bool)

(assert (=> b!1216120 m!1390565))

(declare-fun m!1390567 () Bool)

(assert (=> b!1216120 m!1390567))

(assert (=> b!1216120 m!1390567))

(declare-fun m!1390569 () Bool)

(assert (=> b!1216120 m!1390569))

(assert (=> b!1216120 m!1390569))

(declare-fun m!1390571 () Bool)

(assert (=> b!1216120 m!1390571))

(assert (=> b!1216119 m!1390565))

(declare-fun m!1390573 () Bool)

(assert (=> b!1216119 m!1390573))

(assert (=> b!1216117 m!1390565))

(assert (=> b!1216117 m!1390567))

(assert (=> b!1216117 m!1390567))

(assert (=> b!1216117 m!1390569))

(assert (=> b!1216115 m!1390565))

(declare-fun m!1390575 () Bool)

(assert (=> b!1216115 m!1390575))

(assert (=> b!1216115 m!1390503))

(declare-fun m!1390577 () Bool)

(assert (=> b!1216118 m!1390577))

(assert (=> b!1216114 m!1390565))

(declare-fun m!1390579 () Bool)

(assert (=> b!1216114 m!1390579))

(assert (=> b!1216114 m!1390579))

(declare-fun m!1390581 () Bool)

(assert (=> b!1216114 m!1390581))

(declare-fun m!1390583 () Bool)

(assert (=> b!1216116 m!1390583))

(assert (=> b!1216112 m!1390565))

(assert (=> b!1216112 m!1390567))

(assert (=> b!1216112 m!1390567))

(assert (=> b!1216112 m!1390569))

(assert (=> b!1216112 m!1390569))

(declare-fun m!1390585 () Bool)

(assert (=> b!1216112 m!1390585))

(assert (=> b!1215964 d!347353))

(declare-fun b!1216131 () Bool)

(declare-fun res!546863 () Bool)

(declare-fun e!780548 () Bool)

(assert (=> b!1216131 (=> res!546863 e!780548)))

(assert (=> b!1216131 (= res!546863 (not (is-IntegerValue!6614 (value!69474 (h!17811 tokens!556)))))))

(declare-fun e!780550 () Bool)

(assert (=> b!1216131 (= e!780550 e!780548)))

(declare-fun b!1216132 () Bool)

(declare-fun e!780549 () Bool)

(declare-fun inv!16 (TokenValue!2204) Bool)

(assert (=> b!1216132 (= e!780549 (inv!16 (value!69474 (h!17811 tokens!556))))))

(declare-fun b!1216133 () Bool)

(declare-fun inv!15 (TokenValue!2204) Bool)

(assert (=> b!1216133 (= e!780548 (inv!15 (value!69474 (h!17811 tokens!556))))))

(declare-fun b!1216134 () Bool)

(declare-fun inv!17 (TokenValue!2204) Bool)

(assert (=> b!1216134 (= e!780550 (inv!17 (value!69474 (h!17811 tokens!556))))))

(declare-fun b!1216135 () Bool)

(assert (=> b!1216135 (= e!780549 e!780550)))

(declare-fun c!203431 () Bool)

(assert (=> b!1216135 (= c!203431 (is-IntegerValue!6613 (value!69474 (h!17811 tokens!556))))))

(declare-fun d!347371 () Bool)

(declare-fun c!203430 () Bool)

(assert (=> d!347371 (= c!203430 (is-IntegerValue!6612 (value!69474 (h!17811 tokens!556))))))

(assert (=> d!347371 (= (inv!21 (value!69474 (h!17811 tokens!556))) e!780549)))

(assert (= (and d!347371 c!203430) b!1216132))

(assert (= (and d!347371 (not c!203430)) b!1216135))

(assert (= (and b!1216135 c!203431) b!1216134))

(assert (= (and b!1216135 (not c!203431)) b!1216131))

(assert (= (and b!1216131 (not res!546863)) b!1216133))

(declare-fun m!1390587 () Bool)

(assert (=> b!1216132 m!1390587))

(declare-fun m!1390589 () Bool)

(assert (=> b!1216133 m!1390589))

(declare-fun m!1390591 () Bool)

(assert (=> b!1216134 m!1390591))

(assert (=> b!1215962 d!347371))

(declare-fun d!347373 () Bool)

(declare-fun res!546868 () Bool)

(declare-fun e!780553 () Bool)

(assert (=> d!347373 (=> (not res!546868) (not e!780553))))

(declare-fun isEmpty!7380 (List!12467) Bool)

(assert (=> d!347373 (= res!546868 (not (isEmpty!7380 (originalCharacters!2690 (h!17811 tokens!556)))))))

(assert (=> d!347373 (= (inv!16603 (h!17811 tokens!556)) e!780553)))

(declare-fun b!1216140 () Bool)

(declare-fun res!546869 () Bool)

(assert (=> b!1216140 (=> (not res!546869) (not e!780553))))

(assert (=> b!1216140 (= res!546869 (= (originalCharacters!2690 (h!17811 tokens!556)) (list!4574 (dynLambda!5419 (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (value!69474 (h!17811 tokens!556))))))))

(declare-fun b!1216141 () Bool)

(assert (=> b!1216141 (= e!780553 (= (size!9814 (h!17811 tokens!556)) (size!9816 (originalCharacters!2690 (h!17811 tokens!556)))))))

(assert (= (and d!347373 res!546868) b!1216140))

(assert (= (and b!1216140 res!546869) b!1216141))

(declare-fun b_lambda!35851 () Bool)

(assert (=> (not b_lambda!35851) (not b!1216140)))

(assert (=> b!1216140 t!113157))

(declare-fun b_and!82609 () Bool)

(assert (= b_and!82605 (and (=> t!113157 result!80788) b_and!82609)))

(assert (=> b!1216140 t!113159))

(declare-fun b_and!82611 () Bool)

(assert (= b_and!82607 (and (=> t!113159 result!80792) b_and!82611)))

(declare-fun m!1390593 () Bool)

(assert (=> d!347373 m!1390593))

(assert (=> b!1216140 m!1390487))

(assert (=> b!1216140 m!1390487))

(declare-fun m!1390595 () Bool)

(assert (=> b!1216140 m!1390595))

(declare-fun m!1390597 () Bool)

(assert (=> b!1216141 m!1390597))

(assert (=> b!1215961 d!347373))

(declare-fun d!347375 () Bool)

(assert (=> d!347375 (= (inv!16599 (tag!2398 (rule!3561 (h!17811 tokens!556)))) (= (mod (str.len (value!69473 (tag!2398 (rule!3561 (h!17811 tokens!556))))) 2) 0))))

(assert (=> b!1215970 d!347375))

(declare-fun d!347377 () Bool)

(declare-fun res!546872 () Bool)

(declare-fun e!780556 () Bool)

(assert (=> d!347377 (=> (not res!546872) (not e!780556))))

(declare-fun semiInverseModEq!775 (Int Int) Bool)

(assert (=> d!347377 (= res!546872 (semiInverseModEq!775 (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (toValue!3265 (transformation!2136 (rule!3561 (h!17811 tokens!556))))))))

(assert (=> d!347377 (= (inv!16602 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) e!780556)))

(declare-fun b!1216144 () Bool)

(declare-fun equivClasses!742 (Int Int) Bool)

(assert (=> b!1216144 (= e!780556 (equivClasses!742 (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))) (toValue!3265 (transformation!2136 (rule!3561 (h!17811 tokens!556))))))))

(assert (= (and d!347377 res!546872) b!1216144))

(declare-fun m!1390599 () Bool)

(assert (=> d!347377 m!1390599))

(declare-fun m!1390601 () Bool)

(assert (=> b!1216144 m!1390601))

(assert (=> b!1215970 d!347377))

(declare-fun d!347379 () Bool)

(assert (=> d!347379 (= (inv!16599 (tag!2398 (h!17812 rules!2728))) (= (mod (str.len (value!69473 (tag!2398 (h!17812 rules!2728)))) 2) 0))))

(assert (=> b!1215960 d!347379))

(declare-fun d!347381 () Bool)

(declare-fun res!546873 () Bool)

(declare-fun e!780557 () Bool)

(assert (=> d!347381 (=> (not res!546873) (not e!780557))))

(assert (=> d!347381 (= res!546873 (semiInverseModEq!775 (toChars!3124 (transformation!2136 (h!17812 rules!2728))) (toValue!3265 (transformation!2136 (h!17812 rules!2728)))))))

(assert (=> d!347381 (= (inv!16602 (transformation!2136 (h!17812 rules!2728))) e!780557)))

(declare-fun b!1216145 () Bool)

(assert (=> b!1216145 (= e!780557 (equivClasses!742 (toChars!3124 (transformation!2136 (h!17812 rules!2728))) (toValue!3265 (transformation!2136 (h!17812 rules!2728)))))))

(assert (= (and d!347381 res!546873) b!1216145))

(declare-fun m!1390603 () Bool)

(assert (=> d!347381 m!1390603))

(declare-fun m!1390605 () Bool)

(assert (=> b!1216145 m!1390605))

(assert (=> b!1215960 d!347381))

(declare-fun b!1216155 () Bool)

(declare-fun e!780563 () List!12467)

(assert (=> b!1216155 (= e!780563 (Cons!12409 (h!17810 lt!415643) (++!3172 (t!113149 lt!415643) (_2!6987 lt!415641))))))

(declare-fun b!1216157 () Bool)

(declare-fun e!780562 () Bool)

(declare-fun lt!415706 () List!12467)

(assert (=> b!1216157 (= e!780562 (or (not (= (_2!6987 lt!415641) Nil!12409)) (= lt!415706 lt!415643)))))

(declare-fun d!347383 () Bool)

(assert (=> d!347383 e!780562))

(declare-fun res!546879 () Bool)

(assert (=> d!347383 (=> (not res!546879) (not e!780562))))

(declare-fun content!1764 (List!12467) (Set C!7130))

(assert (=> d!347383 (= res!546879 (= (content!1764 lt!415706) (set.union (content!1764 lt!415643) (content!1764 (_2!6987 lt!415641)))))))

(assert (=> d!347383 (= lt!415706 e!780563)))

(declare-fun c!203434 () Bool)

(assert (=> d!347383 (= c!203434 (is-Nil!12409 lt!415643))))

(assert (=> d!347383 (= (++!3172 lt!415643 (_2!6987 lt!415641)) lt!415706)))

(declare-fun b!1216154 () Bool)

(assert (=> b!1216154 (= e!780563 (_2!6987 lt!415641))))

(declare-fun b!1216156 () Bool)

(declare-fun res!546878 () Bool)

(assert (=> b!1216156 (=> (not res!546878) (not e!780562))))

(assert (=> b!1216156 (= res!546878 (= (size!9816 lt!415706) (+ (size!9816 lt!415643) (size!9816 (_2!6987 lt!415641)))))))

(assert (= (and d!347383 c!203434) b!1216154))

(assert (= (and d!347383 (not c!203434)) b!1216155))

(assert (= (and d!347383 res!546879) b!1216156))

(assert (= (and b!1216156 res!546878) b!1216157))

(declare-fun m!1390607 () Bool)

(assert (=> b!1216155 m!1390607))

(declare-fun m!1390609 () Bool)

(assert (=> d!347383 m!1390609))

(declare-fun m!1390611 () Bool)

(assert (=> d!347383 m!1390611))

(declare-fun m!1390613 () Bool)

(assert (=> d!347383 m!1390613))

(declare-fun m!1390615 () Bool)

(assert (=> b!1216156 m!1390615))

(declare-fun m!1390617 () Bool)

(assert (=> b!1216156 m!1390617))

(declare-fun m!1390619 () Bool)

(assert (=> b!1216156 m!1390619))

(assert (=> b!1215958 d!347383))

(declare-fun b!1216162 () Bool)

(declare-fun e!780566 () Bool)

(declare-fun tp!345232 () Bool)

(assert (=> b!1216162 (= e!780566 (and tp_is_empty!6333 tp!345232))))

(assert (=> b!1215962 (= tp!345191 e!780566)))

(assert (= (and b!1215962 (is-Cons!12409 (originalCharacters!2690 (h!17811 tokens!556)))) b!1216162))

(declare-fun b!1216173 () Bool)

(declare-fun b_free!29233 () Bool)

(declare-fun b_next!29937 () Bool)

(assert (=> b!1216173 (= b_free!29233 (not b_next!29937))))

(declare-fun tp!345243 () Bool)

(declare-fun b_and!82613 () Bool)

(assert (=> b!1216173 (= tp!345243 b_and!82613)))

(declare-fun b_free!29235 () Bool)

(declare-fun b_next!29939 () Bool)

(assert (=> b!1216173 (= b_free!29235 (not b_next!29939))))

(declare-fun t!113165 () Bool)

(declare-fun tb!66777 () Bool)

(assert (=> (and b!1216173 (= (toChars!3124 (transformation!2136 (h!17812 (t!113151 rules!2728)))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556))))) t!113165) tb!66777))

(declare-fun result!80802 () Bool)

(assert (= result!80802 result!80788))

(assert (=> d!347335 t!113165))

(declare-fun t!113167 () Bool)

(declare-fun tb!66779 () Bool)

(assert (=> (and b!1216173 (= (toChars!3124 (transformation!2136 (h!17812 (t!113151 rules!2728)))) (toChars!3124 (transformation!2136 (rule!3561 (_1!6987 lt!415641))))) t!113167) tb!66779))

(declare-fun result!80804 () Bool)

(assert (= result!80804 result!80794))

(assert (=> d!347339 t!113167))

(assert (=> b!1216140 t!113165))

(declare-fun tp!345242 () Bool)

(declare-fun b_and!82615 () Bool)

(assert (=> b!1216173 (= tp!345242 (and (=> t!113165 result!80802) (=> t!113167 result!80804) b_and!82615))))

(declare-fun e!780577 () Bool)

(assert (=> b!1216173 (= e!780577 (and tp!345243 tp!345242))))

(declare-fun e!780578 () Bool)

(declare-fun tp!345241 () Bool)

(declare-fun b!1216172 () Bool)

(assert (=> b!1216172 (= e!780578 (and tp!345241 (inv!16599 (tag!2398 (h!17812 (t!113151 rules!2728)))) (inv!16602 (transformation!2136 (h!17812 (t!113151 rules!2728)))) e!780577))))

(declare-fun b!1216171 () Bool)

(declare-fun e!780575 () Bool)

(declare-fun tp!345244 () Bool)

(assert (=> b!1216171 (= e!780575 (and e!780578 tp!345244))))

(assert (=> b!1215955 (= tp!345193 e!780575)))

(assert (= b!1216172 b!1216173))

(assert (= b!1216171 b!1216172))

(assert (= (and b!1215955 (is-Cons!12411 (t!113151 rules!2728))) b!1216171))

(declare-fun m!1390621 () Bool)

(assert (=> b!1216172 m!1390621))

(declare-fun m!1390623 () Bool)

(assert (=> b!1216172 m!1390623))

(declare-fun b!1216187 () Bool)

(declare-fun b_free!29237 () Bool)

(declare-fun b_next!29941 () Bool)

(assert (=> b!1216187 (= b_free!29237 (not b_next!29941))))

(declare-fun tp!345256 () Bool)

(declare-fun b_and!82617 () Bool)

(assert (=> b!1216187 (= tp!345256 b_and!82617)))

(declare-fun b_free!29239 () Bool)

(declare-fun b_next!29943 () Bool)

(assert (=> b!1216187 (= b_free!29239 (not b_next!29943))))

(declare-fun t!113169 () Bool)

(declare-fun tb!66781 () Bool)

(assert (=> (and b!1216187 (= (toChars!3124 (transformation!2136 (rule!3561 (h!17811 (t!113150 tokens!556))))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556))))) t!113169) tb!66781))

(declare-fun result!80808 () Bool)

(assert (= result!80808 result!80788))

(assert (=> d!347335 t!113169))

(declare-fun t!113171 () Bool)

(declare-fun tb!66783 () Bool)

(assert (=> (and b!1216187 (= (toChars!3124 (transformation!2136 (rule!3561 (h!17811 (t!113150 tokens!556))))) (toChars!3124 (transformation!2136 (rule!3561 (_1!6987 lt!415641))))) t!113171) tb!66783))

(declare-fun result!80810 () Bool)

(assert (= result!80810 result!80794))

(assert (=> d!347339 t!113171))

(assert (=> b!1216140 t!113169))

(declare-fun tp!345259 () Bool)

(declare-fun b_and!82619 () Bool)

(assert (=> b!1216187 (= tp!345259 (and (=> t!113169 result!80808) (=> t!113171 result!80810) b_and!82619))))

(declare-fun tp!345258 () Bool)

(declare-fun b!1216185 () Bool)

(declare-fun e!780591 () Bool)

(declare-fun e!780595 () Bool)

(assert (=> b!1216185 (= e!780591 (and (inv!21 (value!69474 (h!17811 (t!113150 tokens!556)))) e!780595 tp!345258))))

(declare-fun e!780596 () Bool)

(assert (=> b!1216187 (= e!780596 (and tp!345256 tp!345259))))

(declare-fun b!1216186 () Bool)

(declare-fun tp!345257 () Bool)

(assert (=> b!1216186 (= e!780595 (and tp!345257 (inv!16599 (tag!2398 (rule!3561 (h!17811 (t!113150 tokens!556))))) (inv!16602 (transformation!2136 (rule!3561 (h!17811 (t!113150 tokens!556))))) e!780596))))

(declare-fun tp!345255 () Bool)

(declare-fun e!780594 () Bool)

(declare-fun b!1216184 () Bool)

(assert (=> b!1216184 (= e!780594 (and (inv!16603 (h!17811 (t!113150 tokens!556))) e!780591 tp!345255))))

(assert (=> b!1215961 (= tp!345195 e!780594)))

(assert (= b!1216186 b!1216187))

(assert (= b!1216185 b!1216186))

(assert (= b!1216184 b!1216185))

(assert (= (and b!1215961 (is-Cons!12410 (t!113150 tokens!556))) b!1216184))

(declare-fun m!1390625 () Bool)

(assert (=> b!1216185 m!1390625))

(declare-fun m!1390627 () Bool)

(assert (=> b!1216186 m!1390627))

(declare-fun m!1390629 () Bool)

(assert (=> b!1216186 m!1390629))

(declare-fun m!1390631 () Bool)

(assert (=> b!1216184 m!1390631))

(declare-fun b!1216199 () Bool)

(declare-fun e!780599 () Bool)

(declare-fun tp!345271 () Bool)

(declare-fun tp!345270 () Bool)

(assert (=> b!1216199 (= e!780599 (and tp!345271 tp!345270))))

(assert (=> b!1215970 (= tp!345189 e!780599)))

(declare-fun b!1216200 () Bool)

(declare-fun tp!345272 () Bool)

(assert (=> b!1216200 (= e!780599 tp!345272)))

(declare-fun b!1216201 () Bool)

(declare-fun tp!345274 () Bool)

(declare-fun tp!345273 () Bool)

(assert (=> b!1216201 (= e!780599 (and tp!345274 tp!345273))))

(declare-fun b!1216198 () Bool)

(assert (=> b!1216198 (= e!780599 tp_is_empty!6333)))

(assert (= (and b!1215970 (is-ElementMatch!3406 (regex!2136 (rule!3561 (h!17811 tokens!556))))) b!1216198))

(assert (= (and b!1215970 (is-Concat!5611 (regex!2136 (rule!3561 (h!17811 tokens!556))))) b!1216199))

(assert (= (and b!1215970 (is-Star!3406 (regex!2136 (rule!3561 (h!17811 tokens!556))))) b!1216200))

(assert (= (and b!1215970 (is-Union!3406 (regex!2136 (rule!3561 (h!17811 tokens!556))))) b!1216201))

(declare-fun b!1216202 () Bool)

(declare-fun e!780600 () Bool)

(declare-fun tp!345275 () Bool)

(assert (=> b!1216202 (= e!780600 (and tp_is_empty!6333 tp!345275))))

(assert (=> b!1215965 (= tp!345190 e!780600)))

(assert (= (and b!1215965 (is-Cons!12409 (t!113149 input!2346))) b!1216202))

(declare-fun b!1216204 () Bool)

(declare-fun e!780601 () Bool)

(declare-fun tp!345277 () Bool)

(declare-fun tp!345276 () Bool)

(assert (=> b!1216204 (= e!780601 (and tp!345277 tp!345276))))

(assert (=> b!1215960 (= tp!345187 e!780601)))

(declare-fun b!1216205 () Bool)

(declare-fun tp!345278 () Bool)

(assert (=> b!1216205 (= e!780601 tp!345278)))

(declare-fun b!1216206 () Bool)

(declare-fun tp!345280 () Bool)

(declare-fun tp!345279 () Bool)

(assert (=> b!1216206 (= e!780601 (and tp!345280 tp!345279))))

(declare-fun b!1216203 () Bool)

(assert (=> b!1216203 (= e!780601 tp_is_empty!6333)))

(assert (= (and b!1215960 (is-ElementMatch!3406 (regex!2136 (h!17812 rules!2728)))) b!1216203))

(assert (= (and b!1215960 (is-Concat!5611 (regex!2136 (h!17812 rules!2728)))) b!1216204))

(assert (= (and b!1215960 (is-Star!3406 (regex!2136 (h!17812 rules!2728)))) b!1216205))

(assert (= (and b!1215960 (is-Union!3406 (regex!2136 (h!17812 rules!2728)))) b!1216206))

(declare-fun b_lambda!35853 () Bool)

(assert (= b_lambda!35847 (or (and b!1215959 b_free!29219) (and b!1215957 b_free!29223 (= (toChars!3124 (transformation!2136 (h!17812 rules!2728))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))))) (and b!1216173 b_free!29235 (= (toChars!3124 (transformation!2136 (h!17812 (t!113151 rules!2728)))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))))) (and b!1216187 b_free!29239 (= (toChars!3124 (transformation!2136 (rule!3561 (h!17811 (t!113150 tokens!556))))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))))) b_lambda!35853)))

(declare-fun b_lambda!35855 () Bool)

(assert (= b_lambda!35851 (or (and b!1215959 b_free!29219) (and b!1215957 b_free!29223 (= (toChars!3124 (transformation!2136 (h!17812 rules!2728))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))))) (and b!1216173 b_free!29235 (= (toChars!3124 (transformation!2136 (h!17812 (t!113151 rules!2728)))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))))) (and b!1216187 b_free!29239 (= (toChars!3124 (transformation!2136 (rule!3561 (h!17811 (t!113150 tokens!556))))) (toChars!3124 (transformation!2136 (rule!3561 (h!17811 tokens!556)))))) b_lambda!35855)))

(push 1)

(assert (not b!1216116))

(assert (not b!1216132))

(assert (not d!347347))

(assert (not b!1216120))

(assert b_and!82617)

(assert b_and!82615)

(assert (not b!1216112))

(assert (not b!1216205))

(assert (not b_next!29927))

(assert (not b_next!29937))

(assert (not b!1216118))

(assert (not d!347351))

(assert (not b_lambda!35849))

(assert (not d!347373))

(assert (not b!1216199))

(assert (not d!347345))

(assert (not b!1216119))

(assert b_and!82619)

(assert (not b_next!29921))

(assert (not b!1216141))

(assert (not b!1216042))

(assert (not b!1216064))

(assert b_and!82611)

(assert (not b!1216115))

(assert (not d!347339))

(assert (not d!347341))

(assert (not d!347349))

(assert (not b!1216134))

(assert (not bm!84553))

(assert tp_is_empty!6333)

(assert (not b!1216045))

(assert (not d!347383))

(assert (not b!1216171))

(assert (not b_next!29939))

(assert (not b!1216063))

(assert (not b_next!29941))

(assert (not b_lambda!35855))

(assert (not b!1216204))

(assert (not b!1216201))

(assert (not d!347377))

(assert (not d!347335))

(assert (not b!1216185))

(assert (not b!1216172))

(assert (not b_next!29923))

(assert (not b!1216041))

(assert (not b!1216144))

(assert b_and!82585)

(assert (not b!1216140))

(assert (not b_lambda!35853))

(assert b_and!82589)

(assert (not b_next!29943))

(assert (not b!1216184))

(assert (not d!347381))

(assert (not b!1216114))

(assert (not b!1216162))

(assert (not b!1216186))

(assert b_and!82609)

(assert (not b!1216155))

(assert (not b_next!29925))

(assert (not b!1216061))

(assert (not b!1216156))

(assert (not b!1216200))

(assert (not b!1216206))

(assert (not b!1216117))

(assert b_and!82613)

(assert (not b!1216202))

(assert (not tb!66773))

(assert (not b!1216145))

(assert (not b!1216133))

(assert (not tb!66769))

(assert (not d!347353))

(check-sat)

(pop 1)

(push 1)

(assert b_and!82611)

(assert (not b_next!29939))

(assert (not b_next!29941))

(assert b_and!82609)

(assert b_and!82617)

(assert (not b_next!29925))

(assert b_and!82613)

(assert b_and!82615)

(assert (not b_next!29927))

(assert (not b_next!29937))

(assert b_and!82619)

(assert (not b_next!29921))

(assert b_and!82585)

(assert (not b_next!29923))

(assert b_and!82589)

(assert (not b_next!29943))

(check-sat)

(pop 1)

