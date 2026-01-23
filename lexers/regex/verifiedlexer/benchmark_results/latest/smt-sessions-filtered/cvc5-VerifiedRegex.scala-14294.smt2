; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746498 () Bool)

(assert start!746498)

(declare-fun b!7909349 () Bool)

(declare-fun b_free!135155 () Bool)

(declare-fun b_next!135945 () Bool)

(assert (=> b!7909349 (= b_free!135155 (not b_next!135945))))

(declare-fun tp!2356207 () Bool)

(declare-fun b_and!353399 () Bool)

(assert (=> b!7909349 (= tp!2356207 b_and!353399)))

(declare-fun b_free!135157 () Bool)

(declare-fun b_next!135947 () Bool)

(assert (=> b!7909349 (= b_free!135157 (not b_next!135947))))

(declare-fun tp!2356208 () Bool)

(declare-fun b_and!353401 () Bool)

(assert (=> b!7909349 (= tp!2356208 b_and!353401)))

(declare-fun e!4668860 () Bool)

(assert (=> b!7909349 (= e!4668860 (and tp!2356207 tp!2356208))))

(declare-fun b!7909350 () Bool)

(declare-fun e!4668864 () Bool)

(declare-fun e!4668862 () Bool)

(assert (=> b!7909350 (= e!4668864 e!4668862)))

(declare-fun res!3139239 () Bool)

(assert (=> b!7909350 (=> (not res!3139239) (not e!4668862))))

(declare-datatypes ((List!74467 0))(
  ( (Nil!74343) (Cons!74343 (h!80791 (_ BitVec 16)) (t!389820 List!74467)) )
))
(declare-datatypes ((String!83268 0))(
  ( (String!83269 (value!288565 String)) )
))
(declare-datatypes ((C!43042 0))(
  ( (C!43043 (val!31985 Int)) )
))
(declare-datatypes ((List!74468 0))(
  ( (Nil!74344) (Cons!74344 (h!80792 C!43042) (t!389821 List!74468)) )
))
(declare-datatypes ((IArray!31715 0))(
  ( (IArray!31716 (innerList!15915 List!74468)) )
))
(declare-datatypes ((Conc!15827 0))(
  ( (Node!15827 (left!56717 Conc!15827) (right!57047 Conc!15827) (csize!31884 Int) (cheight!16038 Int)) (Leaf!30122 (xs!19209 IArray!31715) (csize!31885 Int)) (Empty!15827) )
))
(declare-datatypes ((BalanceConc!30772 0))(
  ( (BalanceConc!30773 (c!1451056 Conc!15827)) )
))
(declare-datatypes ((TokenValue!8969 0))(
  ( (FloatLiteralValue!17938 (text!63228 List!74467)) (TokenValueExt!8968 (__x!35225 Int)) (Broken!44845 (value!288566 List!74467)) (Object!9092) (End!8969) (Def!8969) (Underscore!8969) (Match!8969) (Else!8969) (Error!8969) (Case!8969) (If!8969) (Extends!8969) (Abstract!8969) (Class!8969) (Val!8969) (DelimiterValue!17938 (del!9029 List!74467)) (KeywordValue!8975 (value!288567 List!74467)) (CommentValue!17938 (value!288568 List!74467)) (WhitespaceValue!17938 (value!288569 List!74467)) (IndentationValue!8969 (value!288570 List!74467)) (String!83270) (Int32!8969) (Broken!44846 (value!288571 List!74467)) (Boolean!8970) (Unit!169373) (OperatorValue!8972 (op!9029 List!74467)) (IdentifierValue!17938 (value!288572 List!74467)) (IdentifierValue!17939 (value!288573 List!74467)) (WhitespaceValue!17939 (value!288574 List!74467)) (True!17938) (False!17938) (Broken!44847 (value!288575 List!74467)) (Broken!44848 (value!288576 List!74467)) (True!17939) (RightBrace!8969) (RightBracket!8969) (Colon!8969) (Null!8969) (Comma!8969) (LeftBracket!8969) (False!17939) (LeftBrace!8969) (ImaginaryLiteralValue!8969 (text!63229 List!74467)) (StringLiteralValue!26907 (value!288577 List!74467)) (EOFValue!8969 (value!288578 List!74467)) (IdentValue!8969 (value!288579 List!74467)) (DelimiterValue!17939 (value!288580 List!74467)) (DedentValue!8969 (value!288581 List!74467)) (NewLineValue!8969 (value!288582 List!74467)) (IntegerValue!26907 (value!288583 (_ BitVec 32)) (text!63230 List!74467)) (IntegerValue!26908 (value!288584 Int) (text!63231 List!74467)) (Times!8969) (Or!8969) (Equal!8969) (Minus!8969) (Broken!44849 (value!288585 List!74467)) (And!8969) (Div!8969) (LessEqual!8969) (Mod!8969) (Concat!30325) (Not!8969) (Plus!8969) (SpaceValue!8969 (value!288586 List!74467)) (IntegerValue!26909 (value!288587 Int) (text!63232 List!74467)) (StringLiteralValue!26908 (text!63233 List!74467)) (FloatLiteralValue!17939 (text!63234 List!74467)) (BytesLiteralValue!8969 (value!288588 List!74467)) (CommentValue!17939 (value!288589 List!74467)) (StringLiteralValue!26909 (value!288590 List!74467)) (ErrorTokenValue!8969 (msg!9030 List!74467)) )
))
(declare-datatypes ((Regex!21356 0))(
  ( (ElementMatch!21356 (c!1451057 C!43042)) (Concat!30326 (regOne!43224 Regex!21356) (regTwo!43224 Regex!21356)) (EmptyExpr!21356) (Star!21356 (reg!21685 Regex!21356)) (EmptyLang!21356) (Union!21356 (regOne!43225 Regex!21356) (regTwo!43225 Regex!21356)) )
))
(declare-datatypes ((TokenValueInjection!17246 0))(
  ( (TokenValueInjection!17247 (toValue!11710 Int) (toChars!11569 Int)) )
))
(declare-datatypes ((Rule!17106 0))(
  ( (Rule!17107 (regex!8653 Regex!21356) (tag!9517 String!83268) (isSeparator!8653 Bool) (transformation!8653 TokenValueInjection!17246)) )
))
(declare-fun rule!156 () Rule!17106)

(declare-fun lt!2685998 () List!74468)

(declare-fun matchR!10679 (Regex!21356 List!74468) Bool)

(assert (=> b!7909350 (= res!3139239 (matchR!10679 (regex!8653 rule!156) lt!2685998))))

(declare-datatypes ((Token!15722 0))(
  ( (Token!15723 (value!288591 TokenValue!8969) (rule!11955 Rule!17106) (size!43107 Int) (originalCharacters!8892 List!74468)) )
))
(declare-datatypes ((tuple2!70382 0))(
  ( (tuple2!70383 (_1!38494 Token!15722) (_2!38494 List!74468)) )
))
(declare-fun lt!2685997 () tuple2!70382)

(declare-fun list!19299 (BalanceConc!30772) List!74468)

(declare-fun charsOf!5595 (Token!15722) BalanceConc!30772)

(assert (=> b!7909350 (= lt!2685998 (list!19299 (charsOf!5595 (_1!38494 lt!2685997))))))

(declare-datatypes ((Option!17933 0))(
  ( (None!17932) (Some!17932 (v!55089 tuple2!70382)) )
))
(declare-fun get!26732 (Option!17933) tuple2!70382)

(assert (=> b!7909350 (= lt!2685997 (get!26732 None!17932))))

(declare-fun b!7909351 () Bool)

(declare-fun res!3139235 () Bool)

(assert (=> b!7909351 (=> (not res!3139235) (not e!4668862))))

(declare-fun input!1480 () List!74468)

(declare-fun ++!18201 (List!74468 List!74468) List!74468)

(assert (=> b!7909351 (= res!3139235 (= (++!18201 lt!2685998 (_2!38494 lt!2685997)) input!1480))))

(declare-fun b!7909352 () Bool)

(declare-fun res!3139232 () Bool)

(assert (=> b!7909352 (=> (not res!3139232) (not e!4668864))))

(declare-fun isEmpty!42680 (List!74468) Bool)

(declare-datatypes ((tuple2!70384 0))(
  ( (tuple2!70385 (_1!38495 List!74468) (_2!38495 List!74468)) )
))
(declare-fun findLongestMatch!1946 (Regex!21356 List!74468) tuple2!70384)

(assert (=> b!7909352 (= res!3139232 (isEmpty!42680 (_1!38495 (findLongestMatch!1946 (regex!8653 rule!156) input!1480))))))

(declare-fun b!7909353 () Bool)

(declare-fun res!3139237 () Bool)

(assert (=> b!7909353 (=> (not res!3139237) (not e!4668862))))

(declare-fun size!43108 (List!74468) Int)

(assert (=> b!7909353 (= res!3139237 (< (size!43108 (_2!38494 lt!2685997)) (size!43108 input!1480)))))

(declare-fun b!7909354 () Bool)

(declare-fun res!3139236 () Bool)

(assert (=> b!7909354 (=> (not res!3139236) (not e!4668862))))

(declare-fun apply!14364 (TokenValueInjection!17246 BalanceConc!30772) TokenValue!8969)

(declare-fun seqFromList!6182 (List!74468) BalanceConc!30772)

(assert (=> b!7909354 (= res!3139236 (= (value!288591 (_1!38494 lt!2685997)) (apply!14364 (transformation!8653 (rule!11955 (_1!38494 lt!2685997))) (seqFromList!6182 (originalCharacters!8892 (_1!38494 lt!2685997))))))))

(declare-fun tp!2356210 () Bool)

(declare-fun e!4668861 () Bool)

(declare-fun b!7909355 () Bool)

(declare-fun inv!95375 (String!83268) Bool)

(declare-fun inv!95378 (TokenValueInjection!17246) Bool)

(assert (=> b!7909355 (= e!4668861 (and tp!2356210 (inv!95375 (tag!9517 rule!156)) (inv!95378 (transformation!8653 rule!156)) e!4668860))))

(declare-fun b!7909357 () Bool)

(declare-fun res!3139234 () Bool)

(assert (=> b!7909357 (=> (not res!3139234) (not e!4668862))))

(assert (=> b!7909357 (= res!3139234 (= (rule!11955 (_1!38494 lt!2685997)) rule!156))))

(declare-fun b!7909358 () Bool)

(declare-fun res!3139231 () Bool)

(assert (=> b!7909358 (=> (not res!3139231) (not e!4668864))))

(declare-datatypes ((LexerInterface!8245 0))(
  ( (LexerInterfaceExt!8242 (__x!35226 Int)) (Lexer!8243) )
))
(declare-fun thiss!15815 () LexerInterface!8245)

(declare-fun ruleValid!3964 (LexerInterface!8245 Rule!17106) Bool)

(assert (=> b!7909358 (= res!3139231 (ruleValid!3964 thiss!15815 rule!156))))

(declare-fun b!7909359 () Bool)

(declare-fun e!4668859 () Bool)

(declare-fun tp_is_empty!53087 () Bool)

(declare-fun tp!2356209 () Bool)

(assert (=> b!7909359 (= e!4668859 (and tp_is_empty!53087 tp!2356209))))

(declare-fun b!7909360 () Bool)

(assert (=> b!7909360 (= e!4668862 true)))

(declare-fun b!7909356 () Bool)

(declare-fun res!3139233 () Bool)

(assert (=> b!7909356 (=> (not res!3139233) (not e!4668864))))

(assert (=> b!7909356 (= res!3139233 false)))

(declare-fun res!3139238 () Bool)

(assert (=> start!746498 (=> (not res!3139238) (not e!4668864))))

(assert (=> start!746498 (= res!3139238 (is-Lexer!8243 thiss!15815))))

(assert (=> start!746498 e!4668864))

(assert (=> start!746498 true))

(assert (=> start!746498 e!4668861))

(assert (=> start!746498 e!4668859))

(assert (= (and start!746498 res!3139238) b!7909358))

(assert (= (and b!7909358 res!3139231) b!7909352))

(assert (= (and b!7909352 res!3139232) b!7909356))

(assert (= (and b!7909356 res!3139233) b!7909350))

(assert (= (and b!7909350 res!3139239) b!7909351))

(assert (= (and b!7909351 res!3139235) b!7909353))

(assert (= (and b!7909353 res!3139237) b!7909357))

(assert (= (and b!7909357 res!3139234) b!7909354))

(assert (= (and b!7909354 res!3139236) b!7909360))

(assert (= b!7909355 b!7909349))

(assert (= start!746498 b!7909355))

(assert (= (and start!746498 (is-Cons!74344 input!1480)) b!7909359))

(declare-fun m!8282964 () Bool)

(assert (=> b!7909358 m!8282964))

(declare-fun m!8282966 () Bool)

(assert (=> b!7909353 m!8282966))

(declare-fun m!8282968 () Bool)

(assert (=> b!7909353 m!8282968))

(declare-fun m!8282970 () Bool)

(assert (=> b!7909352 m!8282970))

(declare-fun m!8282972 () Bool)

(assert (=> b!7909352 m!8282972))

(declare-fun m!8282974 () Bool)

(assert (=> b!7909351 m!8282974))

(declare-fun m!8282976 () Bool)

(assert (=> b!7909350 m!8282976))

(declare-fun m!8282978 () Bool)

(assert (=> b!7909350 m!8282978))

(assert (=> b!7909350 m!8282978))

(declare-fun m!8282980 () Bool)

(assert (=> b!7909350 m!8282980))

(declare-fun m!8282982 () Bool)

(assert (=> b!7909350 m!8282982))

(declare-fun m!8282984 () Bool)

(assert (=> b!7909354 m!8282984))

(assert (=> b!7909354 m!8282984))

(declare-fun m!8282986 () Bool)

(assert (=> b!7909354 m!8282986))

(declare-fun m!8282988 () Bool)

(assert (=> b!7909355 m!8282988))

(declare-fun m!8282990 () Bool)

(assert (=> b!7909355 m!8282990))

(push 1)

(assert (not b!7909355))

(assert (not b!7909350))

(assert b_and!353401)

(assert (not b_next!135945))

(assert (not b!7909358))

(assert (not b_next!135947))

(assert (not b!7909359))

(assert b_and!353399)

(assert (not b!7909354))

(assert (not b!7909352))

(assert tp_is_empty!53087)

(assert (not b!7909351))

(assert (not b!7909353))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353399)

(assert b_and!353401)

(assert (not b_next!135945))

(assert (not b_next!135947))

(check-sat)

(pop 1)

