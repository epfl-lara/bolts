; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262616 () Bool)

(assert start!262616)

(declare-fun b!2705246 () Bool)

(declare-fun b_free!76361 () Bool)

(declare-fun b_next!77065 () Bool)

(assert (=> b!2705246 (= b_free!76361 (not b_next!77065))))

(declare-fun tp!855691 () Bool)

(declare-fun b_and!199793 () Bool)

(assert (=> b!2705246 (= tp!855691 b_and!199793)))

(declare-fun b_free!76363 () Bool)

(declare-fun b_next!77067 () Bool)

(assert (=> b!2705246 (= b_free!76363 (not b_next!77067))))

(declare-fun tp!855695 () Bool)

(declare-fun b_and!199795 () Bool)

(assert (=> b!2705246 (= tp!855695 b_and!199795)))

(declare-fun e!1705691 () Bool)

(assert (=> b!2705246 (= e!1705691 (and tp!855691 tp!855695))))

(declare-fun b!2705247 () Bool)

(declare-fun res!1135996 () Bool)

(declare-fun e!1705689 () Bool)

(assert (=> b!2705247 (=> (not res!1135996) (not e!1705689))))

(declare-datatypes ((List!31323 0))(
  ( (Nil!31223) (Cons!31223 (h!36643 (_ BitVec 16)) (t!225761 List!31323)) )
))
(declare-datatypes ((TokenValue!4989 0))(
  ( (FloatLiteralValue!9978 (text!35368 List!31323)) (TokenValueExt!4988 (__x!20113 Int)) (Broken!24945 (value!153446 List!31323)) (Object!5088) (End!4989) (Def!4989) (Underscore!4989) (Match!4989) (Else!4989) (Error!4989) (Case!4989) (If!4989) (Extends!4989) (Abstract!4989) (Class!4989) (Val!4989) (DelimiterValue!9978 (del!5049 List!31323)) (KeywordValue!4995 (value!153447 List!31323)) (CommentValue!9978 (value!153448 List!31323)) (WhitespaceValue!9978 (value!153449 List!31323)) (IndentationValue!4989 (value!153450 List!31323)) (String!34844) (Int32!4989) (Broken!24946 (value!153451 List!31323)) (Boolean!4990) (Unit!45290) (OperatorValue!4992 (op!5049 List!31323)) (IdentifierValue!9978 (value!153452 List!31323)) (IdentifierValue!9979 (value!153453 List!31323)) (WhitespaceValue!9979 (value!153454 List!31323)) (True!9978) (False!9978) (Broken!24947 (value!153455 List!31323)) (Broken!24948 (value!153456 List!31323)) (True!9979) (RightBrace!4989) (RightBracket!4989) (Colon!4989) (Null!4989) (Comma!4989) (LeftBracket!4989) (False!9979) (LeftBrace!4989) (ImaginaryLiteralValue!4989 (text!35369 List!31323)) (StringLiteralValue!14967 (value!153457 List!31323)) (EOFValue!4989 (value!153458 List!31323)) (IdentValue!4989 (value!153459 List!31323)) (DelimiterValue!9979 (value!153460 List!31323)) (DedentValue!4989 (value!153461 List!31323)) (NewLineValue!4989 (value!153462 List!31323)) (IntegerValue!14967 (value!153463 (_ BitVec 32)) (text!35370 List!31323)) (IntegerValue!14968 (value!153464 Int) (text!35371 List!31323)) (Times!4989) (Or!4989) (Equal!4989) (Minus!4989) (Broken!24949 (value!153465 List!31323)) (And!4989) (Div!4989) (LessEqual!4989) (Mod!4989) (Concat!12908) (Not!4989) (Plus!4989) (SpaceValue!4989 (value!153466 List!31323)) (IntegerValue!14969 (value!153467 Int) (text!35372 List!31323)) (StringLiteralValue!14968 (text!35373 List!31323)) (FloatLiteralValue!9979 (text!35374 List!31323)) (BytesLiteralValue!4989 (value!153468 List!31323)) (CommentValue!9979 (value!153469 List!31323)) (StringLiteralValue!14969 (value!153470 List!31323)) (ErrorTokenValue!4989 (msg!5050 List!31323)) )
))
(declare-datatypes ((C!15996 0))(
  ( (C!15997 (val!9932 Int)) )
))
(declare-datatypes ((List!31324 0))(
  ( (Nil!31224) (Cons!31224 (h!36644 C!15996) (t!225762 List!31324)) )
))
(declare-datatypes ((IArray!19527 0))(
  ( (IArray!19528 (innerList!9821 List!31324)) )
))
(declare-datatypes ((Conc!9761 0))(
  ( (Node!9761 (left!24018 Conc!9761) (right!24348 Conc!9761) (csize!19752 Int) (cheight!9972 Int)) (Leaf!14889 (xs!12809 IArray!19527) (csize!19753 Int)) (Empty!9761) )
))
(declare-datatypes ((BalanceConc!19136 0))(
  ( (BalanceConc!19137 (c!436498 Conc!9761)) )
))
(declare-datatypes ((String!34845 0))(
  ( (String!34846 (value!153471 String)) )
))
(declare-datatypes ((Regex!7919 0))(
  ( (ElementMatch!7919 (c!436499 C!15996)) (Concat!12909 (regOne!16350 Regex!7919) (regTwo!16350 Regex!7919)) (EmptyExpr!7919) (Star!7919 (reg!8248 Regex!7919)) (EmptyLang!7919) (Union!7919 (regOne!16351 Regex!7919) (regTwo!16351 Regex!7919)) )
))
(declare-datatypes ((TokenValueInjection!9418 0))(
  ( (TokenValueInjection!9419 (toValue!6729 Int) (toChars!6588 Int)) )
))
(declare-datatypes ((Rule!9334 0))(
  ( (Rule!9335 (regex!4767 Regex!7919) (tag!5271 String!34845) (isSeparator!4767 Bool) (transformation!4767 TokenValueInjection!9418)) )
))
(declare-datatypes ((List!31325 0))(
  ( (Nil!31225) (Cons!31225 (h!36645 Rule!9334) (t!225763 List!31325)) )
))
(declare-fun rules!1182 () List!31325)

(declare-fun isEmpty!17777 (List!31325) Bool)

(assert (=> b!2705247 (= res!1135996 (not (isEmpty!17777 rules!1182)))))

(declare-fun b!2705248 () Bool)

(declare-fun e!1705692 () Bool)

(declare-fun input!603 () BalanceConc!19136)

(declare-fun tp!855694 () Bool)

(declare-fun inv!42312 (Conc!9761) Bool)

(assert (=> b!2705248 (= e!1705692 (and (inv!42312 (c!436498 input!603)) tp!855694))))

(declare-fun b!2705249 () Bool)

(declare-fun e!1705687 () Bool)

(declare-datatypes ((Token!8996 0))(
  ( (Token!8997 (value!153472 TokenValue!4989) (rule!7187 Rule!9334) (size!24101 Int) (originalCharacters!5529 List!31324)) )
))
(declare-datatypes ((List!31326 0))(
  ( (Nil!31226) (Cons!31226 (h!36646 Token!8996) (t!225764 List!31326)) )
))
(declare-datatypes ((IArray!19529 0))(
  ( (IArray!19530 (innerList!9822 List!31326)) )
))
(declare-datatypes ((Conc!9762 0))(
  ( (Node!9762 (left!24019 Conc!9762) (right!24349 Conc!9762) (csize!19754 Int) (cheight!9973 Int)) (Leaf!14890 (xs!12810 IArray!19529) (csize!19755 Int)) (Empty!9762) )
))
(declare-datatypes ((BalanceConc!19138 0))(
  ( (BalanceConc!19139 (c!436500 Conc!9762)) )
))
(declare-fun acc!331 () BalanceConc!19138)

(declare-fun tp!855692 () Bool)

(declare-fun inv!42313 (Conc!9762) Bool)

(assert (=> b!2705249 (= e!1705687 (and (inv!42313 (c!436500 acc!331)) tp!855692))))

(declare-fun b!2705250 () Bool)

(declare-fun res!1135997 () Bool)

(declare-fun e!1705693 () Bool)

(assert (=> b!2705250 (=> (not res!1135997) (not e!1705693))))

(declare-datatypes ((tuple2!30850 0))(
  ( (tuple2!30851 (_1!18057 BalanceConc!19138) (_2!18057 BalanceConc!19136)) )
))
(declare-fun lt!956660 () tuple2!30850)

(declare-fun isEmpty!17778 (List!31324) Bool)

(declare-fun list!11784 (BalanceConc!19136) List!31324)

(assert (=> b!2705250 (= res!1135997 (isEmpty!17778 (list!11784 (_2!18057 lt!956660))))))

(declare-fun b!2705251 () Bool)

(declare-fun e!1705686 () Bool)

(declare-fun e!1705685 () Bool)

(declare-fun tp!855689 () Bool)

(assert (=> b!2705251 (= e!1705686 (and e!1705685 tp!855689))))

(declare-fun b!2705252 () Bool)

(assert (=> b!2705252 (= e!1705693 false)))

(declare-fun lt!956659 () List!31326)

(declare-fun lt!956661 () BalanceConc!19138)

(declare-fun list!11785 (BalanceConc!19138) List!31326)

(assert (=> b!2705252 (= lt!956659 (list!11785 lt!956661))))

(declare-fun lt!956662 () List!31326)

(declare-fun lt!956663 () tuple2!30850)

(assert (=> b!2705252 (= lt!956662 (list!11785 (_1!18057 lt!956663)))))

(declare-datatypes ((LexerInterface!4363 0))(
  ( (LexerInterfaceExt!4360 (__x!20114 Int)) (Lexer!4361) )
))
(declare-fun thiss!11556 () LexerInterface!4363)

(declare-fun ++!7682 (BalanceConc!19138 BalanceConc!19138) BalanceConc!19138)

(declare-fun lexRec!623 (LexerInterface!4363 List!31325 BalanceConc!19136) tuple2!30850)

(assert (=> b!2705252 (= lt!956661 (++!7682 acc!331 (_1!18057 (lexRec!623 thiss!11556 rules!1182 input!603))))))

(declare-fun totalInput!328 () BalanceConc!19136)

(assert (=> b!2705252 (= lt!956663 (lexRec!623 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2705254 () Bool)

(declare-fun e!1705684 () Bool)

(declare-fun tp!855688 () Bool)

(assert (=> b!2705254 (= e!1705684 (and (inv!42312 (c!436498 totalInput!328)) tp!855688))))

(declare-fun b!2705255 () Bool)

(declare-fun res!1135993 () Bool)

(assert (=> b!2705255 (=> (not res!1135993) (not e!1705689))))

(declare-fun treated!9 () BalanceConc!19136)

(declare-fun ++!7683 (List!31324 List!31324) List!31324)

(assert (=> b!2705255 (= res!1135993 (= (list!11784 totalInput!328) (++!7683 (list!11784 treated!9) (list!11784 input!603))))))

(declare-fun b!2705256 () Bool)

(declare-fun res!1135992 () Bool)

(assert (=> b!2705256 (=> (not res!1135992) (not e!1705689))))

(declare-fun rulesInvariant!3848 (LexerInterface!4363 List!31325) Bool)

(assert (=> b!2705256 (= res!1135992 (rulesInvariant!3848 thiss!11556 rules!1182))))

(declare-fun tp!855693 () Bool)

(declare-fun b!2705257 () Bool)

(declare-fun inv!42306 (String!34845) Bool)

(declare-fun inv!42314 (TokenValueInjection!9418) Bool)

(assert (=> b!2705257 (= e!1705685 (and tp!855693 (inv!42306 (tag!5271 (h!36645 rules!1182))) (inv!42314 (transformation!4767 (h!36645 rules!1182))) e!1705691))))

(declare-fun b!2705258 () Bool)

(assert (=> b!2705258 (= e!1705689 e!1705693)))

(declare-fun res!1135995 () Bool)

(assert (=> b!2705258 (=> (not res!1135995) (not e!1705693))))

(assert (=> b!2705258 (= res!1135995 (= (list!11785 (_1!18057 lt!956660)) (list!11785 acc!331)))))

(assert (=> b!2705258 (= lt!956660 (lexRec!623 thiss!11556 rules!1182 treated!9))))

(declare-fun res!1135994 () Bool)

(assert (=> start!262616 (=> (not res!1135994) (not e!1705689))))

(get-info :version)

(assert (=> start!262616 (= res!1135994 ((_ is Lexer!4361) thiss!11556))))

(assert (=> start!262616 e!1705689))

(declare-fun e!1705690 () Bool)

(declare-fun inv!42315 (BalanceConc!19136) Bool)

(assert (=> start!262616 (and (inv!42315 treated!9) e!1705690)))

(assert (=> start!262616 (and (inv!42315 input!603) e!1705692)))

(assert (=> start!262616 true))

(assert (=> start!262616 e!1705686))

(assert (=> start!262616 (and (inv!42315 totalInput!328) e!1705684)))

(declare-fun inv!42316 (BalanceConc!19138) Bool)

(assert (=> start!262616 (and (inv!42316 acc!331) e!1705687)))

(declare-fun b!2705253 () Bool)

(declare-fun tp!855690 () Bool)

(assert (=> b!2705253 (= e!1705690 (and (inv!42312 (c!436498 treated!9)) tp!855690))))

(assert (= (and start!262616 res!1135994) b!2705247))

(assert (= (and b!2705247 res!1135996) b!2705256))

(assert (= (and b!2705256 res!1135992) b!2705255))

(assert (= (and b!2705255 res!1135993) b!2705258))

(assert (= (and b!2705258 res!1135995) b!2705250))

(assert (= (and b!2705250 res!1135997) b!2705252))

(assert (= start!262616 b!2705253))

(assert (= start!262616 b!2705248))

(assert (= b!2705257 b!2705246))

(assert (= b!2705251 b!2705257))

(assert (= (and start!262616 ((_ is Cons!31225) rules!1182)) b!2705251))

(assert (= start!262616 b!2705254))

(assert (= start!262616 b!2705249))

(declare-fun m!3095031 () Bool)

(assert (=> b!2705252 m!3095031))

(declare-fun m!3095033 () Bool)

(assert (=> b!2705252 m!3095033))

(declare-fun m!3095035 () Bool)

(assert (=> b!2705252 m!3095035))

(declare-fun m!3095037 () Bool)

(assert (=> b!2705252 m!3095037))

(declare-fun m!3095039 () Bool)

(assert (=> b!2705252 m!3095039))

(declare-fun m!3095041 () Bool)

(assert (=> b!2705256 m!3095041))

(declare-fun m!3095043 () Bool)

(assert (=> b!2705253 m!3095043))

(declare-fun m!3095045 () Bool)

(assert (=> b!2705247 m!3095045))

(declare-fun m!3095047 () Bool)

(assert (=> b!2705254 m!3095047))

(declare-fun m!3095049 () Bool)

(assert (=> b!2705258 m!3095049))

(declare-fun m!3095051 () Bool)

(assert (=> b!2705258 m!3095051))

(declare-fun m!3095053 () Bool)

(assert (=> b!2705258 m!3095053))

(declare-fun m!3095055 () Bool)

(assert (=> b!2705248 m!3095055))

(declare-fun m!3095057 () Bool)

(assert (=> b!2705257 m!3095057))

(declare-fun m!3095059 () Bool)

(assert (=> b!2705257 m!3095059))

(declare-fun m!3095061 () Bool)

(assert (=> b!2705255 m!3095061))

(declare-fun m!3095063 () Bool)

(assert (=> b!2705255 m!3095063))

(declare-fun m!3095065 () Bool)

(assert (=> b!2705255 m!3095065))

(assert (=> b!2705255 m!3095063))

(assert (=> b!2705255 m!3095065))

(declare-fun m!3095067 () Bool)

(assert (=> b!2705255 m!3095067))

(declare-fun m!3095069 () Bool)

(assert (=> b!2705249 m!3095069))

(declare-fun m!3095071 () Bool)

(assert (=> start!262616 m!3095071))

(declare-fun m!3095073 () Bool)

(assert (=> start!262616 m!3095073))

(declare-fun m!3095075 () Bool)

(assert (=> start!262616 m!3095075))

(declare-fun m!3095077 () Bool)

(assert (=> start!262616 m!3095077))

(declare-fun m!3095079 () Bool)

(assert (=> b!2705250 m!3095079))

(assert (=> b!2705250 m!3095079))

(declare-fun m!3095081 () Bool)

(assert (=> b!2705250 m!3095081))

(check-sat (not start!262616) (not b!2705249) (not b!2705250) (not b!2705256) (not b!2705258) (not b!2705257) b_and!199793 (not b!2705252) (not b!2705253) (not b!2705254) (not b!2705251) (not b!2705248) (not b_next!77067) (not b_next!77065) b_and!199795 (not b!2705255) (not b!2705247))
(check-sat b_and!199795 b_and!199793 (not b_next!77067) (not b_next!77065))
