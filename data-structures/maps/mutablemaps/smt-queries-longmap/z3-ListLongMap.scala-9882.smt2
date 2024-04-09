; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117052 () Bool)

(assert start!117052)

(declare-fun res!920561 () Bool)

(declare-fun e!780544 () Bool)

(assert (=> start!117052 (=> (not res!920561) (not e!780544))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93612 0))(
  ( (array!93613 (arr!45203 (Array (_ BitVec 32) (_ BitVec 64))) (size!45754 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93612)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117052 (= res!920561 (and (bvslt (size!45754 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45754 a!4197))))))

(assert (=> start!117052 e!780544))

(declare-fun array_inv!34148 (array!93612) Bool)

(assert (=> start!117052 (array_inv!34148 a!4197)))

(assert (=> start!117052 true))

(declare-fun b!1377822 () Bool)

(declare-fun res!920562 () Bool)

(assert (=> b!1377822 (=> (not res!920562) (not e!780544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377822 (= res!920562 (validKeyInArray!0 (select (arr!45203 a!4197) to!360)))))

(declare-fun b!1377823 () Bool)

(assert (=> b!1377823 (= e!780544 (or (bvslt (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsgt to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(assert (= (and start!117052 res!920561) b!1377822))

(assert (= (and b!1377822 res!920562) b!1377823))

(declare-fun m!1262337 () Bool)

(assert (=> start!117052 m!1262337))

(declare-fun m!1262339 () Bool)

(assert (=> b!1377822 m!1262339))

(assert (=> b!1377822 m!1262339))

(declare-fun m!1262341 () Bool)

(assert (=> b!1377822 m!1262341))

(check-sat (not b!1377822) (not start!117052))
(check-sat)
