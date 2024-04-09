; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117780 () Bool)

(assert start!117780)

(declare-fun res!922808 () Bool)

(declare-fun e!782815 () Bool)

(assert (=> start!117780 (=> (not res!922808) (not e!782815))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94178 0))(
  ( (array!94179 (arr!45474 (Array (_ BitVec 32) (_ BitVec 64))) (size!46025 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94178)

(assert (=> start!117780 (= res!922808 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46025 a!3464)) (bvslt (size!46025 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117780 e!782815))

(assert (=> start!117780 true))

(declare-fun array_inv!34419 (array!94178) Bool)

(assert (=> start!117780 (array_inv!34419 a!3464)))

(declare-fun b!1380999 () Bool)

(declare-fun res!922809 () Bool)

(assert (=> b!1380999 (=> (not res!922809) (not e!782815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380999 (= res!922809 (validKeyInArray!0 (select (arr!45474 a!3464) from!2839)))))

(declare-fun b!1381000 () Bool)

(assert (=> b!1381000 (= e!782815 (bvsge (bvsub (size!46025 a!3464) (bvadd #b00000000000000000000000000000001 from!2839)) (bvsub (size!46025 a!3464) from!2839)))))

(assert (= (and start!117780 res!922808) b!1380999))

(assert (= (and b!1380999 res!922809) b!1381000))

(declare-fun m!1266297 () Bool)

(assert (=> start!117780 m!1266297))

(declare-fun m!1266299 () Bool)

(assert (=> b!1380999 m!1266299))

(assert (=> b!1380999 m!1266299))

(declare-fun m!1266301 () Bool)

(assert (=> b!1380999 m!1266301))

(push 1)

(assert (not start!117780))

(assert (not b!1380999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

