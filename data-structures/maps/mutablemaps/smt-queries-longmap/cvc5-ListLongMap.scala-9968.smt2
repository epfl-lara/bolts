; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117752 () Bool)

(assert start!117752)

(declare-fun res!922778 () Bool)

(declare-fun e!782758 () Bool)

(assert (=> start!117752 (=> (not res!922778) (not e!782758))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94150 0))(
  ( (array!94151 (arr!45460 (Array (_ BitVec 32) (_ BitVec 64))) (size!46011 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94150)

(assert (=> start!117752 (= res!922778 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46011 a!3464)) (bvslt (size!46011 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117752 e!782758))

(assert (=> start!117752 true))

(declare-fun array_inv!34405 (array!94150) Bool)

(assert (=> start!117752 (array_inv!34405 a!3464)))

(declare-fun b!1380969 () Bool)

(declare-fun res!922779 () Bool)

(assert (=> b!1380969 (=> (not res!922779) (not e!782758))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380969 (= res!922779 (not (validKeyInArray!0 (select (arr!45460 a!3464) from!2839))))))

(declare-fun b!1380970 () Bool)

(assert (=> b!1380970 (= e!782758 (bvslt (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000))))

(assert (= (and start!117752 res!922778) b!1380969))

(assert (= (and b!1380969 res!922779) b!1380970))

(declare-fun m!1266249 () Bool)

(assert (=> start!117752 m!1266249))

(declare-fun m!1266251 () Bool)

(assert (=> b!1380969 m!1266251))

(assert (=> b!1380969 m!1266251))

(declare-fun m!1266253 () Bool)

(assert (=> b!1380969 m!1266253))

(push 1)

(assert (not start!117752))

(assert (not b!1380969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

