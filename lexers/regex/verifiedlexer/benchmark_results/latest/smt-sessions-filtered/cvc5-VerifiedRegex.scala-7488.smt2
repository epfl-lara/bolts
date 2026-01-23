; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396344 () Bool)

(assert start!396344)

(declare-fun res!1703933 () Bool)

(declare-fun e!2581679 () Bool)

(assert (=> start!396344 (=> (not res!1703933) (not e!2581679))))

(declare-datatypes ((LexerInterface!7084 0))(
  ( (LexerInterfaceExt!7081 (__x!27667 Int)) (Lexer!7082) )
))
(declare-fun thiss!27036 () LexerInterface!7084)

(assert (=> start!396344 (= res!1703933 (is-Lexer!7082 thiss!27036))))

(assert (=> start!396344 e!2581679))

(assert (=> start!396344 true))

(declare-fun e!2581682 () Bool)

(assert (=> start!396344 e!2581682))

(declare-datatypes ((String!52480 0))(
  ( (String!52481 (value!234157 String)) )
))
(declare-fun tag!272 () String!52480)

(declare-fun inv!59961 (String!52480) Bool)

(assert (=> start!396344 (inv!59961 tag!272)))

(declare-fun b!4159785 () Bool)

(assert (=> b!4159785 (= e!2581679 false)))

(declare-fun lt!1482761 () Bool)

(declare-datatypes ((List!45532 0))(
  ( (Nil!45408) (Cons!45408 (h!50828 String!52480) (t!343563 List!45532)) )
))
(declare-fun acc!617 () List!45532)

(declare-fun contains!9266 (List!45532 String!52480) Bool)

(assert (=> b!4159785 (= lt!1482761 (contains!9266 acc!617 tag!272))))

(declare-fun b!4159786 () Bool)

(declare-fun tp!1269101 () Bool)

(assert (=> b!4159786 (= e!2581682 (and (inv!59961 (h!50828 acc!617)) tp!1269101))))

(assert (= (and start!396344 res!1703933) b!4159785))

(assert (= (and start!396344 (is-Cons!45408 acc!617)) b!4159786))

(declare-fun m!4753381 () Bool)

(assert (=> start!396344 m!4753381))

(declare-fun m!4753383 () Bool)

(assert (=> b!4159785 m!4753383))

(declare-fun m!4753385 () Bool)

(assert (=> b!4159786 m!4753385))

(push 1)

(assert (not b!4159785))

(assert (not start!396344))

(assert (not b!4159786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

