; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403722 () Bool)

(assert start!403722)

(declare-fun b!4223535 () Bool)

(declare-fun b_free!124235 () Bool)

(declare-fun b_next!124939 () Bool)

(assert (=> b!4223535 (= b_free!124235 (not b_next!124939))))

(declare-fun tp!1292649 () Bool)

(declare-fun b_and!333445 () Bool)

(assert (=> b!4223535 (= tp!1292649 b_and!333445)))

(declare-fun b_free!124237 () Bool)

(declare-fun b_next!124941 () Bool)

(assert (=> b!4223535 (= b_free!124237 (not b_next!124941))))

(declare-fun tp!1292647 () Bool)

(declare-fun b_and!333447 () Bool)

(assert (=> b!4223535 (= tp!1292647 b_and!333447)))

(declare-fun b!4223546 () Bool)

(declare-fun b_free!124239 () Bool)

(declare-fun b_next!124943 () Bool)

(assert (=> b!4223546 (= b_free!124239 (not b_next!124943))))

(declare-fun tp!1292643 () Bool)

(declare-fun b_and!333449 () Bool)

(assert (=> b!4223546 (= tp!1292643 b_and!333449)))

(declare-fun b_free!124241 () Bool)

(declare-fun b_next!124945 () Bool)

(assert (=> b!4223546 (= b_free!124241 (not b_next!124945))))

(declare-fun tp!1292648 () Bool)

(declare-fun b_and!333451 () Bool)

(assert (=> b!4223546 (= tp!1292648 b_and!333451)))

(declare-fun e!2622258 () Bool)

(assert (=> b!4223535 (= e!2622258 (and tp!1292649 tp!1292647))))

(declare-fun b!4223536 () Bool)

(declare-fun e!2622249 () Bool)

(assert (=> b!4223536 (= e!2622249 true)))

(declare-datatypes ((C!25616 0))(
  ( (C!25617 (val!14970 Int)) )
))
(declare-datatypes ((List!46621 0))(
  ( (Nil!46497) (Cons!46497 (h!51917 C!25616) (t!349206 List!46621)) )
))
(declare-fun input!3561 () List!46621)

(declare-datatypes ((Regex!12711 0))(
  ( (ElementMatch!12711 (c!718470 C!25616)) (Concat!20747 (regOne!25934 Regex!12711) (regTwo!25934 Regex!12711)) (EmptyExpr!12711) (Star!12711 (reg!13040 Regex!12711)) (EmptyLang!12711) (Union!12711 (regOne!25935 Regex!12711) (regTwo!25935 Regex!12711)) )
))
(declare-datatypes ((IArray!28039 0))(
  ( (IArray!28040 (innerList!14077 List!46621)) )
))
(declare-datatypes ((String!54049 0))(
  ( (String!54050 (value!242972 String)) )
))
(declare-datatypes ((List!46622 0))(
  ( (Nil!46498) (Cons!46498 (h!51918 (_ BitVec 16)) (t!349207 List!46622)) )
))
(declare-datatypes ((TokenValue!8036 0))(
  ( (FloatLiteralValue!16072 (text!56697 List!46622)) (TokenValueExt!8035 (__x!28295 Int)) (Broken!40180 (value!242973 List!46622)) (Object!8159) (End!8036) (Def!8036) (Underscore!8036) (Match!8036) (Else!8036) (Error!8036) (Case!8036) (If!8036) (Extends!8036) (Abstract!8036) (Class!8036) (Val!8036) (DelimiterValue!16072 (del!8096 List!46622)) (KeywordValue!8042 (value!242974 List!46622)) (CommentValue!16072 (value!242975 List!46622)) (WhitespaceValue!16072 (value!242976 List!46622)) (IndentationValue!8036 (value!242977 List!46622)) (String!54051) (Int32!8036) (Broken!40181 (value!242978 List!46622)) (Boolean!8037) (Unit!65656) (OperatorValue!8039 (op!8096 List!46622)) (IdentifierValue!16072 (value!242979 List!46622)) (IdentifierValue!16073 (value!242980 List!46622)) (WhitespaceValue!16073 (value!242981 List!46622)) (True!16072) (False!16072) (Broken!40182 (value!242982 List!46622)) (Broken!40183 (value!242983 List!46622)) (True!16073) (RightBrace!8036) (RightBracket!8036) (Colon!8036) (Null!8036) (Comma!8036) (LeftBracket!8036) (False!16073) (LeftBrace!8036) (ImaginaryLiteralValue!8036 (text!56698 List!46622)) (StringLiteralValue!24108 (value!242984 List!46622)) (EOFValue!8036 (value!242985 List!46622)) (IdentValue!8036 (value!242986 List!46622)) (DelimiterValue!16073 (value!242987 List!46622)) (DedentValue!8036 (value!242988 List!46622)) (NewLineValue!8036 (value!242989 List!46622)) (IntegerValue!24108 (value!242990 (_ BitVec 32)) (text!56699 List!46622)) (IntegerValue!24109 (value!242991 Int) (text!56700 List!46622)) (Times!8036) (Or!8036) (Equal!8036) (Minus!8036) (Broken!40184 (value!242992 List!46622)) (And!8036) (Div!8036) (LessEqual!8036) (Mod!8036) (Concat!20748) (Not!8036) (Plus!8036) (SpaceValue!8036 (value!242993 List!46622)) (IntegerValue!24110 (value!242994 Int) (text!56701 List!46622)) (StringLiteralValue!24109 (text!56702 List!46622)) (FloatLiteralValue!16073 (text!56703 List!46622)) (BytesLiteralValue!8036 (value!242995 List!46622)) (CommentValue!16073 (value!242996 List!46622)) (StringLiteralValue!24110 (value!242997 List!46622)) (ErrorTokenValue!8036 (msg!8097 List!46622)) )
))
(declare-datatypes ((Conc!14017 0))(
  ( (Node!14017 (left!34563 Conc!14017) (right!34893 Conc!14017) (csize!28264 Int) (cheight!14228 Int)) (Leaf!21664 (xs!17323 IArray!28039) (csize!28265 Int)) (Empty!14017) )
))
(declare-datatypes ((BalanceConc!27628 0))(
  ( (BalanceConc!27629 (c!718471 Conc!14017)) )
))
(declare-datatypes ((TokenValueInjection!15500 0))(
  ( (TokenValueInjection!15501 (toValue!10530 Int) (toChars!10389 Int)) )
))
(declare-datatypes ((Rule!15412 0))(
  ( (Rule!15413 (regex!7806 Regex!12711) (tag!8670 String!54049) (isSeparator!7806 Bool) (transformation!7806 TokenValueInjection!15500)) )
))
(declare-datatypes ((List!46623 0))(
  ( (Nil!46499) (Cons!46499 (h!51919 Rule!15412) (t!349208 List!46623)) )
))
(declare-fun rules!4013 () List!46623)

(declare-datatypes ((LexerInterface!7401 0))(
  ( (LexerInterfaceExt!7398 (__x!28296 Int)) (Lexer!7399) )
))
(declare-fun thiss!26728 () LexerInterface!7401)

(declare-datatypes ((Token!14310 0))(
  ( (Token!14311 (value!242998 TokenValue!8036) (rule!10946 Rule!15412) (size!34131 Int) (originalCharacters!8186 List!46621)) )
))
(declare-datatypes ((tuple2!44206 0))(
  ( (tuple2!44207 (_1!25237 Token!14310) (_2!25237 List!46621)) )
))
(declare-datatypes ((Option!9992 0))(
  ( (None!9991) (Some!9991 (v!40889 tuple2!44206)) )
))
(declare-fun lt!1502523 () Option!9992)

(declare-fun maxPrefix!4439 (LexerInterface!7401 List!46623 List!46621) Option!9992)

(assert (=> b!4223536 (= lt!1502523 (maxPrefix!4439 thiss!26728 (t!349208 rules!4013) input!3561))))

(declare-fun b!4223537 () Bool)

(declare-fun e!2622255 () Bool)

(declare-fun e!2622257 () Bool)

(declare-fun tp!1292646 () Bool)

(assert (=> b!4223537 (= e!2622255 (and e!2622257 tp!1292646))))

(declare-fun b!4223538 () Bool)

(declare-fun res!1736317 () Bool)

(assert (=> b!4223538 (=> res!1736317 e!2622249)))

(declare-fun rulesValidInductive!2910 (LexerInterface!7401 List!46623) Bool)

(assert (=> b!4223538 (= res!1736317 (not (rulesValidInductive!2910 thiss!26728 (t!349208 rules!4013))))))

(declare-fun b!4223539 () Bool)

(declare-fun res!1736319 () Bool)

(declare-fun e!2622252 () Bool)

(assert (=> b!4223539 (=> (not res!1736319) (not e!2622252))))

(declare-fun isEmpty!27548 (List!46623) Bool)

(assert (=> b!4223539 (= res!1736319 (not (isEmpty!27548 rules!4013)))))

(declare-fun tp!1292645 () Bool)

(declare-fun b!4223540 () Bool)

(declare-fun inv!61167 (String!54049) Bool)

(declare-fun inv!61169 (TokenValueInjection!15500) Bool)

(assert (=> b!4223540 (= e!2622257 (and tp!1292645 (inv!61167 (tag!8670 (h!51919 rules!4013))) (inv!61169 (transformation!7806 (h!51919 rules!4013))) e!2622258))))

(declare-fun b!4223541 () Bool)

(declare-fun res!1736322 () Bool)

(assert (=> b!4223541 (=> res!1736322 e!2622249)))

(assert (=> b!4223541 (= res!1736322 (isEmpty!27548 (t!349208 rules!4013)))))

(declare-fun r!4313 () Rule!15412)

(declare-fun b!4223542 () Bool)

(declare-fun e!2622251 () Bool)

(declare-fun e!2622250 () Bool)

(declare-fun tp!1292644 () Bool)

(assert (=> b!4223542 (= e!2622251 (and tp!1292644 (inv!61167 (tag!8670 r!4313)) (inv!61169 (transformation!7806 r!4313)) e!2622250))))

(declare-fun b!4223543 () Bool)

(declare-fun res!1736324 () Bool)

(assert (=> b!4223543 (=> (not res!1736324) (not e!2622252))))

(assert (=> b!4223543 (= res!1736324 (rulesValidInductive!2910 thiss!26728 rules!4013))))

(declare-fun b!4223544 () Bool)

(declare-fun res!1736320 () Bool)

(assert (=> b!4223544 (=> res!1736320 e!2622249)))

(declare-fun contains!9629 (List!46623 Rule!15412) Bool)

(assert (=> b!4223544 (= res!1736320 (not (contains!9629 (t!349208 rules!4013) r!4313)))))

(declare-fun b!4223545 () Bool)

(declare-fun res!1736323 () Bool)

(assert (=> b!4223545 (=> (not res!1736323) (not e!2622252))))

(assert (=> b!4223545 (= res!1736323 (contains!9629 rules!4013 r!4313))))

(declare-fun b!4223534 () Bool)

(declare-fun e!2622254 () Bool)

(declare-fun tp_is_empty!22385 () Bool)

(declare-fun tp!1292650 () Bool)

(assert (=> b!4223534 (= e!2622254 (and tp_is_empty!22385 tp!1292650))))

(declare-fun res!1736318 () Bool)

(assert (=> start!403722 (=> (not res!1736318) (not e!2622252))))

(get-info :version)

(assert (=> start!403722 (= res!1736318 ((_ is Lexer!7399) thiss!26728))))

(assert (=> start!403722 e!2622252))

(assert (=> start!403722 true))

(assert (=> start!403722 e!2622255))

(assert (=> start!403722 e!2622251))

(assert (=> start!403722 e!2622254))

(assert (=> b!4223546 (= e!2622250 (and tp!1292643 tp!1292648))))

(declare-fun b!4223547 () Bool)

(assert (=> b!4223547 (= e!2622252 (not e!2622249))))

(declare-fun res!1736321 () Bool)

(assert (=> b!4223547 (=> res!1736321 e!2622249)))

(assert (=> b!4223547 (= res!1736321 (or (and ((_ is Cons!46499) rules!4013) (= r!4313 (h!51919 rules!4013))) (not ((_ is Cons!46499) rules!4013)) (= r!4313 (h!51919 rules!4013))))))

(declare-fun ruleValid!3514 (LexerInterface!7401 Rule!15412) Bool)

(assert (=> b!4223547 (ruleValid!3514 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65657 0))(
  ( (Unit!65658) )
))
(declare-fun lt!1502524 () Unit!65657)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2428 (LexerInterface!7401 Rule!15412 List!46623) Unit!65657)

(assert (=> b!4223547 (= lt!1502524 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2428 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4223548 () Bool)

(declare-fun res!1736316 () Bool)

(assert (=> b!4223548 (=> (not res!1736316) (not e!2622252))))

(declare-fun isEmpty!27549 (Option!9992) Bool)

(assert (=> b!4223548 (= res!1736316 (isEmpty!27549 (maxPrefix!4439 thiss!26728 rules!4013 input!3561)))))

(assert (= (and start!403722 res!1736318) b!4223539))

(assert (= (and b!4223539 res!1736319) b!4223543))

(assert (= (and b!4223543 res!1736324) b!4223545))

(assert (= (and b!4223545 res!1736323) b!4223548))

(assert (= (and b!4223548 res!1736316) b!4223547))

(assert (= (and b!4223547 (not res!1736321)) b!4223541))

(assert (= (and b!4223541 (not res!1736322)) b!4223538))

(assert (= (and b!4223538 (not res!1736317)) b!4223544))

(assert (= (and b!4223544 (not res!1736320)) b!4223536))

(assert (= b!4223540 b!4223535))

(assert (= b!4223537 b!4223540))

(assert (= (and start!403722 ((_ is Cons!46499) rules!4013)) b!4223537))

(assert (= b!4223542 b!4223546))

(assert (= start!403722 b!4223542))

(assert (= (and start!403722 ((_ is Cons!46497) input!3561)) b!4223534))

(declare-fun m!4812045 () Bool)

(assert (=> b!4223544 m!4812045))

(declare-fun m!4812047 () Bool)

(assert (=> b!4223536 m!4812047))

(declare-fun m!4812049 () Bool)

(assert (=> b!4223540 m!4812049))

(declare-fun m!4812051 () Bool)

(assert (=> b!4223540 m!4812051))

(declare-fun m!4812053 () Bool)

(assert (=> b!4223543 m!4812053))

(declare-fun m!4812055 () Bool)

(assert (=> b!4223547 m!4812055))

(declare-fun m!4812057 () Bool)

(assert (=> b!4223547 m!4812057))

(declare-fun m!4812059 () Bool)

(assert (=> b!4223548 m!4812059))

(assert (=> b!4223548 m!4812059))

(declare-fun m!4812061 () Bool)

(assert (=> b!4223548 m!4812061))

(declare-fun m!4812063 () Bool)

(assert (=> b!4223539 m!4812063))

(declare-fun m!4812065 () Bool)

(assert (=> b!4223545 m!4812065))

(declare-fun m!4812067 () Bool)

(assert (=> b!4223538 m!4812067))

(declare-fun m!4812069 () Bool)

(assert (=> b!4223541 m!4812069))

(declare-fun m!4812071 () Bool)

(assert (=> b!4223542 m!4812071))

(declare-fun m!4812073 () Bool)

(assert (=> b!4223542 m!4812073))

(check-sat (not b_next!124939) (not b_next!124945) tp_is_empty!22385 b_and!333447 b_and!333451 (not b!4223538) b_and!333445 (not b!4223537) b_and!333449 (not b!4223544) (not b!4223534) (not b!4223540) (not b!4223542) (not b!4223536) (not b_next!124941) (not b!4223545) (not b!4223547) (not b!4223541) (not b!4223548) (not b_next!124943) (not b!4223543) (not b!4223539))
(check-sat (not b_next!124939) (not b_next!124945) b_and!333447 b_and!333451 (not b_next!124941) b_and!333445 b_and!333449 (not b_next!124943))
