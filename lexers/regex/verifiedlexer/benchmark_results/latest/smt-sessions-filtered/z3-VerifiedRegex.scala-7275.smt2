; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388236 () Bool)

(assert start!388236)

(declare-fun b!4098481 () Bool)

(declare-fun b_free!114681 () Bool)

(declare-fun b_next!115385 () Bool)

(assert (=> b!4098481 (= b_free!114681 (not b_next!115385))))

(declare-fun tp!1240525 () Bool)

(declare-fun b_and!316359 () Bool)

(assert (=> b!4098481 (= tp!1240525 b_and!316359)))

(declare-fun b_free!114683 () Bool)

(declare-fun b_next!115387 () Bool)

(assert (=> b!4098481 (= b_free!114683 (not b_next!115387))))

(declare-fun tp!1240526 () Bool)

(declare-fun b_and!316361 () Bool)

(assert (=> b!4098481 (= tp!1240526 b_and!316361)))

(declare-fun b!4098474 () Bool)

(declare-fun b_free!114685 () Bool)

(declare-fun b_next!115389 () Bool)

(assert (=> b!4098474 (= b_free!114685 (not b_next!115389))))

(declare-fun tp!1240528 () Bool)

(declare-fun b_and!316363 () Bool)

(assert (=> b!4098474 (= tp!1240528 b_and!316363)))

(declare-fun b_free!114687 () Bool)

(declare-fun b_next!115391 () Bool)

(assert (=> b!4098474 (= b_free!114687 (not b_next!115391))))

(declare-fun tp!1240527 () Bool)

(declare-fun b_and!316365 () Bool)

(assert (=> b!4098474 (= tp!1240527 b_and!316365)))

(declare-fun e!2543329 () Bool)

(assert (=> b!4098474 (= e!2543329 (and tp!1240528 tp!1240527))))

(declare-fun res!1675521 () Bool)

(declare-fun e!2543326 () Bool)

(assert (=> start!388236 (=> (not res!1675521) (not e!2543326))))

(declare-datatypes ((LexerInterface!6711 0))(
  ( (LexerInterfaceExt!6708 (__x!26921 Int)) (Lexer!6709) )
))
(declare-fun thiss!26455 () LexerInterface!6711)

(get-info :version)

(assert (=> start!388236 (= res!1675521 ((_ is Lexer!6709) thiss!26455))))

(assert (=> start!388236 e!2543326))

(assert (=> start!388236 true))

(declare-fun e!2543330 () Bool)

(assert (=> start!388236 e!2543330))

(declare-fun e!2543325 () Bool)

(assert (=> start!388236 e!2543325))

(declare-fun b!4098475 () Bool)

(assert (=> b!4098475 (= e!2543326 false)))

(declare-fun lt!1465933 () Bool)

(declare-datatypes ((C!24240 0))(
  ( (C!24241 (val!14230 Int)) )
))
(declare-datatypes ((List!44090 0))(
  ( (Nil!43966) (Cons!43966 (h!49386 C!24240) (t!339585 List!44090)) )
))
(declare-datatypes ((IArray!26671 0))(
  ( (IArray!26672 (innerList!13393 List!44090)) )
))
(declare-datatypes ((Conc!13333 0))(
  ( (Node!13333 (left!33048 Conc!13333) (right!33378 Conc!13333) (csize!26896 Int) (cheight!13544 Int)) (Leaf!20609 (xs!16639 IArray!26671) (csize!26897 Int)) (Empty!13333) )
))
(declare-datatypes ((List!44091 0))(
  ( (Nil!43967) (Cons!43967 (h!49387 (_ BitVec 16)) (t!339586 List!44091)) )
))
(declare-datatypes ((Regex!12027 0))(
  ( (ElementMatch!12027 (c!706206 C!24240)) (Concat!19379 (regOne!24566 Regex!12027) (regTwo!24566 Regex!12027)) (EmptyExpr!12027) (Star!12027 (reg!12356 Regex!12027)) (EmptyLang!12027) (Union!12027 (regOne!24567 Regex!12027) (regTwo!24567 Regex!12027)) )
))
(declare-datatypes ((TokenValue!7352 0))(
  ( (FloatLiteralValue!14704 (text!51909 List!44091)) (TokenValueExt!7351 (__x!26922 Int)) (Broken!36760 (value!223602 List!44091)) (Object!7475) (End!7352) (Def!7352) (Underscore!7352) (Match!7352) (Else!7352) (Error!7352) (Case!7352) (If!7352) (Extends!7352) (Abstract!7352) (Class!7352) (Val!7352) (DelimiterValue!14704 (del!7412 List!44091)) (KeywordValue!7358 (value!223603 List!44091)) (CommentValue!14704 (value!223604 List!44091)) (WhitespaceValue!14704 (value!223605 List!44091)) (IndentationValue!7352 (value!223606 List!44091)) (String!50509) (Int32!7352) (Broken!36761 (value!223607 List!44091)) (Boolean!7353) (Unit!63502) (OperatorValue!7355 (op!7412 List!44091)) (IdentifierValue!14704 (value!223608 List!44091)) (IdentifierValue!14705 (value!223609 List!44091)) (WhitespaceValue!14705 (value!223610 List!44091)) (True!14704) (False!14704) (Broken!36762 (value!223611 List!44091)) (Broken!36763 (value!223612 List!44091)) (True!14705) (RightBrace!7352) (RightBracket!7352) (Colon!7352) (Null!7352) (Comma!7352) (LeftBracket!7352) (False!14705) (LeftBrace!7352) (ImaginaryLiteralValue!7352 (text!51910 List!44091)) (StringLiteralValue!22056 (value!223613 List!44091)) (EOFValue!7352 (value!223614 List!44091)) (IdentValue!7352 (value!223615 List!44091)) (DelimiterValue!14705 (value!223616 List!44091)) (DedentValue!7352 (value!223617 List!44091)) (NewLineValue!7352 (value!223618 List!44091)) (IntegerValue!22056 (value!223619 (_ BitVec 32)) (text!51911 List!44091)) (IntegerValue!22057 (value!223620 Int) (text!51912 List!44091)) (Times!7352) (Or!7352) (Equal!7352) (Minus!7352) (Broken!36764 (value!223621 List!44091)) (And!7352) (Div!7352) (LessEqual!7352) (Mod!7352) (Concat!19380) (Not!7352) (Plus!7352) (SpaceValue!7352 (value!223622 List!44091)) (IntegerValue!22058 (value!223623 Int) (text!51913 List!44091)) (StringLiteralValue!22057 (text!51914 List!44091)) (FloatLiteralValue!14705 (text!51915 List!44091)) (BytesLiteralValue!7352 (value!223624 List!44091)) (CommentValue!14705 (value!223625 List!44091)) (StringLiteralValue!22058 (value!223626 List!44091)) (ErrorTokenValue!7352 (msg!7413 List!44091)) )
))
(declare-datatypes ((BalanceConc!26260 0))(
  ( (BalanceConc!26261 (c!706207 Conc!13333)) )
))
(declare-datatypes ((TokenValueInjection!14132 0))(
  ( (TokenValueInjection!14133 (toValue!9726 Int) (toChars!9585 Int)) )
))
(declare-datatypes ((String!50510 0))(
  ( (String!50511 (value!223627 String)) )
))
(declare-datatypes ((Rule!14044 0))(
  ( (Rule!14045 (regex!7122 Regex!12027) (tag!7982 String!50510) (isSeparator!7122 Bool) (transformation!7122 TokenValueInjection!14132)) )
))
(declare-fun rHead!24 () Rule!14044)

(declare-datatypes ((List!44092 0))(
  ( (Nil!43968) (Cons!43968 (h!49388 Rule!14044) (t!339587 List!44092)) )
))
(declare-fun rTail!27 () List!44092)

(declare-datatypes ((List!44093 0))(
  ( (Nil!43969) (Cons!43969 (h!49389 String!50510) (t!339588 List!44093)) )
))
(declare-fun noDuplicateTag!2801 (LexerInterface!6711 List!44092 List!44093) Bool)

(assert (=> b!4098475 (= lt!1465933 (noDuplicateTag!2801 thiss!26455 (Cons!43968 rHead!24 rTail!27) Nil!43969))))

(declare-fun b!4098476 () Bool)

(declare-fun e!2543327 () Bool)

(declare-fun tp!1240523 () Bool)

(assert (=> b!4098476 (= e!2543330 (and e!2543327 tp!1240523))))

(declare-fun b!4098477 () Bool)

(declare-fun res!1675520 () Bool)

(assert (=> b!4098477 (=> (not res!1675520) (not e!2543326))))

(declare-fun rulesInvariant!6054 (LexerInterface!6711 List!44092) Bool)

(assert (=> b!4098477 (= res!1675520 (rulesInvariant!6054 thiss!26455 (Cons!43968 rHead!24 rTail!27)))))

(declare-fun b!4098478 () Bool)

(declare-fun res!1675522 () Bool)

(assert (=> b!4098478 (=> (not res!1675522) (not e!2543326))))

(declare-fun isEmpty!26311 (List!44092) Bool)

(assert (=> b!4098478 (= res!1675522 (not (isEmpty!26311 rTail!27)))))

(declare-fun b!4098479 () Bool)

(declare-fun res!1675523 () Bool)

(assert (=> b!4098479 (=> (not res!1675523) (not e!2543326))))

(assert (=> b!4098479 (= res!1675523 ((_ is Cons!43968) rTail!27))))

(declare-fun e!2543331 () Bool)

(declare-fun tp!1240524 () Bool)

(declare-fun b!4098480 () Bool)

(declare-fun inv!58698 (String!50510) Bool)

(declare-fun inv!58700 (TokenValueInjection!14132) Bool)

(assert (=> b!4098480 (= e!2543327 (and tp!1240524 (inv!58698 (tag!7982 (h!49388 rTail!27))) (inv!58700 (transformation!7122 (h!49388 rTail!27))) e!2543331))))

(assert (=> b!4098481 (= e!2543331 (and tp!1240525 tp!1240526))))

(declare-fun tp!1240522 () Bool)

(declare-fun b!4098482 () Bool)

(assert (=> b!4098482 (= e!2543325 (and tp!1240522 (inv!58698 (tag!7982 rHead!24)) (inv!58700 (transformation!7122 rHead!24)) e!2543329))))

(assert (= (and start!388236 res!1675521) b!4098478))

(assert (= (and b!4098478 res!1675522) b!4098477))

(assert (= (and b!4098477 res!1675520) b!4098479))

(assert (= (and b!4098479 res!1675523) b!4098475))

(assert (= b!4098480 b!4098481))

(assert (= b!4098476 b!4098480))

(assert (= (and start!388236 ((_ is Cons!43968) rTail!27)) b!4098476))

(assert (= b!4098482 b!4098474))

(assert (= start!388236 b!4098482))

(declare-fun m!4705439 () Bool)

(assert (=> b!4098477 m!4705439))

(declare-fun m!4705441 () Bool)

(assert (=> b!4098482 m!4705441))

(declare-fun m!4705443 () Bool)

(assert (=> b!4098482 m!4705443))

(declare-fun m!4705445 () Bool)

(assert (=> b!4098475 m!4705445))

(declare-fun m!4705447 () Bool)

(assert (=> b!4098478 m!4705447))

(declare-fun m!4705449 () Bool)

(assert (=> b!4098480 m!4705449))

(declare-fun m!4705451 () Bool)

(assert (=> b!4098480 m!4705451))

(check-sat b_and!316359 (not b_next!115387) b_and!316361 (not b!4098475) (not b!4098476) (not b!4098480) (not b!4098477) (not b!4098478) (not b!4098482) (not b_next!115385) (not b_next!115391) b_and!316363 b_and!316365 (not b_next!115389))
(check-sat b_and!316359 (not b_next!115387) b_and!316361 (not b_next!115385) (not b_next!115391) b_and!316363 b_and!316365 (not b_next!115389))
