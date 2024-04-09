; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103504 () Bool)

(assert start!103504)

(declare-fun b!1240296 () Bool)

(declare-fun res!827709 () Bool)

(declare-fun e!703019 () Bool)

(assert (=> b!1240296 (=> (not res!827709) (not e!703019))))

(declare-datatypes ((array!79926 0))(
  ( (array!79927 (arr!38555 (Array (_ BitVec 32) (_ BitVec 64))) (size!39092 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79926)

(declare-fun k!2808 () (_ BitVec 64))

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240296 (= res!827709 (arrayContainsKey!0 a!3575 k!2808 from!2953))))

(declare-fun res!827708 () Bool)

(assert (=> start!103504 (=> (not res!827708) (not e!703019))))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103504 (= res!827708 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39092 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39092 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103504 e!703019))

(assert (=> start!103504 true))

(declare-fun array_inv!29331 (array!79926) Bool)

(assert (=> start!103504 (array_inv!29331 a!3575)))

(declare-fun b!1240299 () Bool)

(assert (=> b!1240299 (= e!703019 (not true))))

(assert (=> b!1240299 (arrayContainsKey!0 a!3575 k!2808 newFrom!281)))

(declare-datatypes ((Unit!41171 0))(
  ( (Unit!41172) )
))
(declare-fun lt!561859 () Unit!41171)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79926 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41171)

(assert (=> b!1240299 (= lt!561859 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240297 () Bool)

(declare-fun res!827707 () Bool)

(assert (=> b!1240297 (=> (not res!827707) (not e!703019))))

(assert (=> b!1240297 (= res!827707 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39092 a!3575))))))

(declare-fun b!1240298 () Bool)

(declare-fun res!827710 () Bool)

(assert (=> b!1240298 (=> (not res!827710) (not e!703019))))

(assert (=> b!1240298 (= res!827710 (arrayContainsKey!0 a!3575 k!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(assert (= (and start!103504 res!827708) b!1240296))

(assert (= (and b!1240296 res!827709) b!1240297))

(assert (= (and b!1240297 res!827707) b!1240298))

(assert (= (and b!1240298 res!827710) b!1240299))

(declare-fun m!1143631 () Bool)

(assert (=> b!1240296 m!1143631))

(declare-fun m!1143633 () Bool)

(assert (=> start!103504 m!1143633))

(declare-fun m!1143635 () Bool)

(assert (=> b!1240299 m!1143635))

(declare-fun m!1143637 () Bool)

(assert (=> b!1240299 m!1143637))

(declare-fun m!1143639 () Bool)

(assert (=> b!1240298 m!1143639))

(push 1)

(assert (not start!103504))

(assert (not b!1240298))

(assert (not b!1240299))

(assert (not b!1240296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

