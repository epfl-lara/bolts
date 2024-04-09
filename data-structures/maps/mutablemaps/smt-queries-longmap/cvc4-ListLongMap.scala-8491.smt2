; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103510 () Bool)

(assert start!103510)

(declare-fun res!827735 () Bool)

(declare-fun e!703036 () Bool)

(assert (=> start!103510 (=> (not res!827735) (not e!703036))))

(declare-datatypes ((array!79932 0))(
  ( (array!79933 (arr!38558 (Array (_ BitVec 32) (_ BitVec 64))) (size!39095 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79932)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103510 (= res!827735 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39095 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39095 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103510 e!703036))

(assert (=> start!103510 true))

(declare-fun array_inv!29334 (array!79932) Bool)

(assert (=> start!103510 (array_inv!29334 a!3575)))

(declare-fun b!1240324 () Bool)

(declare-fun res!827736 () Bool)

(assert (=> b!1240324 (=> (not res!827736) (not e!703036))))

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240324 (= res!827736 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun b!1240325 () Bool)

(declare-fun res!827737 () Bool)

(assert (=> b!1240325 (=> (not res!827737) (not e!703036))))

(assert (=> b!1240325 (= res!827737 (bvsle from!2953 newFrom!281))))

(declare-fun b!1240326 () Bool)

(assert (=> b!1240326 (= e!703036 (not (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))))

(assert (= (and start!103510 res!827735) b!1240324))

(assert (= (and b!1240324 res!827736) b!1240325))

(assert (= (and b!1240325 res!827737) b!1240326))

(declare-fun m!1143653 () Bool)

(assert (=> start!103510 m!1143653))

(declare-fun m!1143655 () Bool)

(assert (=> b!1240324 m!1143655))

(declare-fun m!1143657 () Bool)

(assert (=> b!1240326 m!1143657))

(push 1)

(assert (not b!1240326))

(assert (not start!103510))

(assert (not b!1240324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

