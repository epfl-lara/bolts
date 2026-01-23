; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746490 () Bool)

(assert start!746490)

(declare-fun b!7909231 () Bool)

(declare-fun b_free!135139 () Bool)

(declare-fun b_next!135929 () Bool)

(assert (=> b!7909231 (= b_free!135139 (not b_next!135929))))

(declare-fun tp!2356159 () Bool)

(declare-fun b_and!353383 () Bool)

(assert (=> b!7909231 (= tp!2356159 b_and!353383)))

(declare-fun b_free!135141 () Bool)

(declare-fun b_next!135931 () Bool)

(assert (=> b!7909231 (= b_free!135141 (not b_next!135931))))

(declare-fun tp!2356162 () Bool)

(declare-fun b_and!353385 () Bool)

(assert (=> b!7909231 (= tp!2356162 b_and!353385)))

(declare-fun b!7909225 () Bool)

(declare-fun res!3139145 () Bool)

(declare-fun e!4668787 () Bool)

(assert (=> b!7909225 (=> (not res!3139145) (not e!4668787))))

(declare-datatypes ((List!74459 0))(
  ( (Nil!74335) (Cons!74335 (h!80783 (_ BitVec 16)) (t!389812 List!74459)) )
))
(declare-datatypes ((TokenValue!8965 0))(
  ( (FloatLiteralValue!17930 (text!63200 List!74459)) (TokenValueExt!8964 (__x!35217 Int)) (Broken!44825 (value!288451 List!74459)) (Object!9088) (End!8965) (Def!8965) (Underscore!8965) (Match!8965) (Else!8965) (Error!8965) (Case!8965) (If!8965) (Extends!8965) (Abstract!8965) (Class!8965) (Val!8965) (DelimiterValue!17930 (del!9025 List!74459)) (KeywordValue!8971 (value!288452 List!74459)) (CommentValue!17930 (value!288453 List!74459)) (WhitespaceValue!17930 (value!288454 List!74459)) (IndentationValue!8965 (value!288455 List!74459)) (String!83248) (Int32!8965) (Broken!44826 (value!288456 List!74459)) (Boolean!8966) (Unit!169369) (OperatorValue!8968 (op!9025 List!74459)) (IdentifierValue!17930 (value!288457 List!74459)) (IdentifierValue!17931 (value!288458 List!74459)) (WhitespaceValue!17931 (value!288459 List!74459)) (True!17930) (False!17930) (Broken!44827 (value!288460 List!74459)) (Broken!44828 (value!288461 List!74459)) (True!17931) (RightBrace!8965) (RightBracket!8965) (Colon!8965) (Null!8965) (Comma!8965) (LeftBracket!8965) (False!17931) (LeftBrace!8965) (ImaginaryLiteralValue!8965 (text!63201 List!74459)) (StringLiteralValue!26895 (value!288462 List!74459)) (EOFValue!8965 (value!288463 List!74459)) (IdentValue!8965 (value!288464 List!74459)) (DelimiterValue!17931 (value!288465 List!74459)) (DedentValue!8965 (value!288466 List!74459)) (NewLineValue!8965 (value!288467 List!74459)) (IntegerValue!26895 (value!288468 (_ BitVec 32)) (text!63202 List!74459)) (IntegerValue!26896 (value!288469 Int) (text!63203 List!74459)) (Times!8965) (Or!8965) (Equal!8965) (Minus!8965) (Broken!44829 (value!288470 List!74459)) (And!8965) (Div!8965) (LessEqual!8965) (Mod!8965) (Concat!30317) (Not!8965) (Plus!8965) (SpaceValue!8965 (value!288471 List!74459)) (IntegerValue!26897 (value!288472 Int) (text!63204 List!74459)) (StringLiteralValue!26896 (text!63205 List!74459)) (FloatLiteralValue!17931 (text!63206 List!74459)) (BytesLiteralValue!8965 (value!288473 List!74459)) (CommentValue!17931 (value!288474 List!74459)) (StringLiteralValue!26897 (value!288475 List!74459)) (ErrorTokenValue!8965 (msg!9026 List!74459)) )
))
(declare-datatypes ((C!43034 0))(
  ( (C!43035 (val!31981 Int)) )
))
(declare-datatypes ((Regex!21352 0))(
  ( (ElementMatch!21352 (c!1451047 C!43034)) (Concat!30318 (regOne!43216 Regex!21352) (regTwo!43216 Regex!21352)) (EmptyExpr!21352) (Star!21352 (reg!21681 Regex!21352)) (EmptyLang!21352) (Union!21352 (regOne!43217 Regex!21352) (regTwo!43217 Regex!21352)) )
))
(declare-datatypes ((String!83249 0))(
  ( (String!83250 (value!288476 String)) )
))
(declare-datatypes ((List!74460 0))(
  ( (Nil!74336) (Cons!74336 (h!80784 C!43034) (t!389813 List!74460)) )
))
(declare-datatypes ((IArray!31707 0))(
  ( (IArray!31708 (innerList!15911 List!74460)) )
))
(declare-datatypes ((Conc!15823 0))(
  ( (Node!15823 (left!56711 Conc!15823) (right!57041 Conc!15823) (csize!31876 Int) (cheight!16034 Int)) (Leaf!30116 (xs!19205 IArray!31707) (csize!31877 Int)) (Empty!15823) )
))
(declare-datatypes ((BalanceConc!30764 0))(
  ( (BalanceConc!30765 (c!1451048 Conc!15823)) )
))
(declare-datatypes ((TokenValueInjection!17238 0))(
  ( (TokenValueInjection!17239 (toValue!11706 Int) (toChars!11565 Int)) )
))
(declare-datatypes ((Rule!17098 0))(
  ( (Rule!17099 (regex!8649 Regex!21352) (tag!9513 String!83249) (isSeparator!8649 Bool) (transformation!8649 TokenValueInjection!17238)) )
))
(declare-datatypes ((Token!15714 0))(
  ( (Token!15715 (value!288477 TokenValue!8965) (rule!11951 Rule!17098) (size!43099 Int) (originalCharacters!8888 List!74460)) )
))
(declare-datatypes ((tuple2!70366 0))(
  ( (tuple2!70367 (_1!38486 Token!15714) (_2!38486 List!74460)) )
))
(declare-fun lt!2685974 () tuple2!70366)

(declare-fun input!1480 () List!74460)

(declare-fun size!43100 (List!74460) Int)

(assert (=> b!7909225 (= res!3139145 (< (size!43100 (_2!38486 lt!2685974)) (size!43100 input!1480)))))

(declare-fun b!7909226 () Bool)

(declare-fun e!4668789 () Bool)

(assert (=> b!7909226 (= e!4668789 e!4668787)))

(declare-fun res!3139146 () Bool)

(assert (=> b!7909226 (=> (not res!3139146) (not e!4668787))))

(declare-fun rule!156 () Rule!17098)

(declare-fun lt!2685973 () List!74460)

(declare-fun matchR!10675 (Regex!21352 List!74460) Bool)

(assert (=> b!7909226 (= res!3139146 (matchR!10675 (regex!8649 rule!156) lt!2685973))))

(declare-fun list!19295 (BalanceConc!30764) List!74460)

(declare-fun charsOf!5591 (Token!15714) BalanceConc!30764)

(assert (=> b!7909226 (= lt!2685973 (list!19295 (charsOf!5591 (_1!38486 lt!2685974))))))

(declare-datatypes ((Option!17929 0))(
  ( (None!17928) (Some!17928 (v!55085 tuple2!70366)) )
))
(declare-fun get!26726 (Option!17929) tuple2!70366)

(assert (=> b!7909226 (= lt!2685974 (get!26726 None!17928))))

(declare-fun b!7909227 () Bool)

(declare-fun res!3139148 () Bool)

(assert (=> b!7909227 (=> (not res!3139148) (not e!4668787))))

(declare-fun ++!18197 (List!74460 List!74460) List!74460)

(assert (=> b!7909227 (= res!3139148 (= (++!18197 lt!2685973 (_2!38486 lt!2685974)) input!1480))))

(declare-fun res!3139149 () Bool)

(assert (=> start!746490 (=> (not res!3139149) (not e!4668789))))

(declare-datatypes ((LexerInterface!8241 0))(
  ( (LexerInterfaceExt!8238 (__x!35218 Int)) (Lexer!8239) )
))
(declare-fun thiss!15815 () LexerInterface!8241)

(assert (=> start!746490 (= res!3139149 (is-Lexer!8239 thiss!15815))))

(assert (=> start!746490 e!4668789))

(assert (=> start!746490 true))

(declare-fun e!4668792 () Bool)

(assert (=> start!746490 e!4668792))

(declare-fun e!4668791 () Bool)

(assert (=> start!746490 e!4668791))

(declare-fun b!7909228 () Bool)

(assert (=> b!7909228 (= e!4668787 true)))

(declare-fun b!7909229 () Bool)

(declare-fun res!3139147 () Bool)

(assert (=> b!7909229 (=> (not res!3139147) (not e!4668789))))

(assert (=> b!7909229 (= res!3139147 false)))

(declare-fun b!7909230 () Bool)

(declare-fun tp_is_empty!53079 () Bool)

(declare-fun tp!2356161 () Bool)

(assert (=> b!7909230 (= e!4668791 (and tp_is_empty!53079 tp!2356161))))

(declare-fun e!4668788 () Bool)

(assert (=> b!7909231 (= e!4668788 (and tp!2356159 tp!2356162))))

(declare-fun b!7909232 () Bool)

(declare-fun res!3139143 () Bool)

(assert (=> b!7909232 (=> (not res!3139143) (not e!4668789))))

(declare-fun isEmpty!42676 (List!74460) Bool)

(declare-datatypes ((tuple2!70368 0))(
  ( (tuple2!70369 (_1!38487 List!74460) (_2!38487 List!74460)) )
))
(declare-fun findLongestMatch!1942 (Regex!21352 List!74460) tuple2!70368)

(assert (=> b!7909232 (= res!3139143 (isEmpty!42676 (_1!38487 (findLongestMatch!1942 (regex!8649 rule!156) input!1480))))))

(declare-fun b!7909233 () Bool)

(declare-fun tp!2356160 () Bool)

(declare-fun inv!95365 (String!83249) Bool)

(declare-fun inv!95368 (TokenValueInjection!17238) Bool)

(assert (=> b!7909233 (= e!4668792 (and tp!2356160 (inv!95365 (tag!9513 rule!156)) (inv!95368 (transformation!8649 rule!156)) e!4668788))))

(declare-fun b!7909234 () Bool)

(declare-fun res!3139144 () Bool)

(assert (=> b!7909234 (=> (not res!3139144) (not e!4668789))))

(declare-fun ruleValid!3960 (LexerInterface!8241 Rule!17098) Bool)

(assert (=> b!7909234 (= res!3139144 (ruleValid!3960 thiss!15815 rule!156))))

(assert (= (and start!746490 res!3139149) b!7909234))

(assert (= (and b!7909234 res!3139144) b!7909232))

(assert (= (and b!7909232 res!3139143) b!7909229))

(assert (= (and b!7909229 res!3139147) b!7909226))

(assert (= (and b!7909226 res!3139146) b!7909227))

(assert (= (and b!7909227 res!3139148) b!7909225))

(assert (= (and b!7909225 res!3139145) b!7909228))

(assert (= b!7909233 b!7909231))

(assert (= start!746490 b!7909233))

(assert (= (and start!746490 (is-Cons!74336 input!1480)) b!7909230))

(declare-fun m!8282868 () Bool)

(assert (=> b!7909232 m!8282868))

(declare-fun m!8282870 () Bool)

(assert (=> b!7909232 m!8282870))

(declare-fun m!8282872 () Bool)

(assert (=> b!7909226 m!8282872))

(declare-fun m!8282874 () Bool)

(assert (=> b!7909226 m!8282874))

(assert (=> b!7909226 m!8282874))

(declare-fun m!8282876 () Bool)

(assert (=> b!7909226 m!8282876))

(declare-fun m!8282878 () Bool)

(assert (=> b!7909226 m!8282878))

(declare-fun m!8282880 () Bool)

(assert (=> b!7909225 m!8282880))

(declare-fun m!8282882 () Bool)

(assert (=> b!7909225 m!8282882))

(declare-fun m!8282884 () Bool)

(assert (=> b!7909234 m!8282884))

(declare-fun m!8282886 () Bool)

(assert (=> b!7909233 m!8282886))

(declare-fun m!8282888 () Bool)

(assert (=> b!7909233 m!8282888))

(declare-fun m!8282890 () Bool)

(assert (=> b!7909227 m!8282890))

(push 1)

(assert (not b!7909226))

(assert tp_is_empty!53079)

(assert (not b!7909225))

(assert (not b_next!135929))

(assert b_and!353383)

(assert (not b!7909227))

(assert (not b!7909232))

(assert b_and!353385)

(assert (not b_next!135931))

(assert (not b!7909230))

(assert (not b!7909233))

(assert (not b!7909234))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353383)

(assert b_and!353385)

(assert (not b_next!135929))

(assert (not b_next!135931))

(check-sat)

(pop 1)

