; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116980 () Bool)

(assert start!116980)

(declare-fun res!920408 () Bool)

(declare-fun e!780379 () Bool)

(assert (=> start!116980 (=> (not res!920408) (not e!780379))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93567 0))(
  ( (array!93568 (arr!45182 (Array (_ BitVec 32) (_ BitVec 64))) (size!45733 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93567)

(assert (=> start!116980 (= res!920408 (and (bvslt (size!45733 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45733 a!4212))))))

(assert (=> start!116980 e!780379))

(declare-fun array_inv!34127 (array!93567) Bool)

(assert (=> start!116980 (array_inv!34127 a!4212)))

(assert (=> start!116980 true))

(declare-fun b!1377573 () Bool)

(declare-fun res!920409 () Bool)

(assert (=> b!1377573 (=> (not res!920409) (not e!780379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377573 (= res!920409 (not (validKeyInArray!0 (select (arr!45182 a!4212) to!375))))))

(declare-fun b!1377574 () Bool)

(assert (=> b!1377574 (= e!780379 (or (bvslt (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsgt to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(assert (= (and start!116980 res!920408) b!1377573))

(assert (= (and b!1377573 res!920409) b!1377574))

(declare-fun m!1262025 () Bool)

(assert (=> start!116980 m!1262025))

(declare-fun m!1262027 () Bool)

(assert (=> b!1377573 m!1262027))

(assert (=> b!1377573 m!1262027))

(declare-fun m!1262029 () Bool)

(assert (=> b!1377573 m!1262029))

(check-sat (not b!1377573) (not start!116980))
(check-sat)
