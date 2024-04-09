; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116982 () Bool)

(assert start!116982)

(declare-fun res!920414 () Bool)

(declare-fun e!780385 () Bool)

(assert (=> start!116982 (=> (not res!920414) (not e!780385))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93569 0))(
  ( (array!93570 (arr!45183 (Array (_ BitVec 32) (_ BitVec 64))) (size!45734 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93569)

(assert (=> start!116982 (= res!920414 (and (bvslt (size!45734 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45734 a!4212))))))

(assert (=> start!116982 e!780385))

(declare-fun array_inv!34128 (array!93569) Bool)

(assert (=> start!116982 (array_inv!34128 a!4212)))

(assert (=> start!116982 true))

(declare-fun b!1377579 () Bool)

(declare-fun res!920415 () Bool)

(assert (=> b!1377579 (=> (not res!920415) (not e!780385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377579 (= res!920415 (not (validKeyInArray!0 (select (arr!45183 a!4212) to!375))))))

(declare-fun b!1377580 () Bool)

(assert (=> b!1377580 (= e!780385 (or (bvslt (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsgt to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(assert (= (and start!116982 res!920414) b!1377579))

(assert (= (and b!1377579 res!920415) b!1377580))

(declare-fun m!1262031 () Bool)

(assert (=> start!116982 m!1262031))

(declare-fun m!1262033 () Bool)

(assert (=> b!1377579 m!1262033))

(assert (=> b!1377579 m!1262033))

(declare-fun m!1262035 () Bool)

(assert (=> b!1377579 m!1262035))

(push 1)

(assert (not start!116982))

(assert (not b!1377579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

