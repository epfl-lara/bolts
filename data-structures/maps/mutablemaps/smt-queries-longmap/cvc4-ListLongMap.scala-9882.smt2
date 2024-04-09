; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117054 () Bool)

(assert start!117054)

(declare-fun res!920567 () Bool)

(declare-fun e!780550 () Bool)

(assert (=> start!117054 (=> (not res!920567) (not e!780550))))

(declare-datatypes ((array!93614 0))(
  ( (array!93615 (arr!45204 (Array (_ BitVec 32) (_ BitVec 64))) (size!45755 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93614)

(declare-fun from!3564 () (_ BitVec 32))

(declare-fun to!360 () (_ BitVec 32))

(assert (=> start!117054 (= res!920567 (and (bvslt (size!45755 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45755 a!4197))))))

(assert (=> start!117054 e!780550))

(declare-fun array_inv!34149 (array!93614) Bool)

(assert (=> start!117054 (array_inv!34149 a!4197)))

(assert (=> start!117054 true))

(declare-fun b!1377828 () Bool)

(declare-fun res!920568 () Bool)

(assert (=> b!1377828 (=> (not res!920568) (not e!780550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377828 (= res!920568 (validKeyInArray!0 (select (arr!45204 a!4197) to!360)))))

(declare-fun b!1377829 () Bool)

(assert (=> b!1377829 (= e!780550 (or (bvslt (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsgt to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(assert (= (and start!117054 res!920567) b!1377828))

(assert (= (and b!1377828 res!920568) b!1377829))

(declare-fun m!1262343 () Bool)

(assert (=> start!117054 m!1262343))

(declare-fun m!1262345 () Bool)

(assert (=> b!1377828 m!1262345))

(assert (=> b!1377828 m!1262345))

(declare-fun m!1262347 () Bool)

(assert (=> b!1377828 m!1262347))

(push 1)

(assert (not start!117054))

(assert (not b!1377828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

