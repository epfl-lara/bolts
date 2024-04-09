; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62130 () Bool)

(assert start!62130)

(declare-fun b!695145 () Bool)

(declare-fun e!395401 () Bool)

(declare-datatypes ((List!13189 0))(
  ( (Nil!13186) (Cons!13185 (h!14230 (_ BitVec 64)) (t!19479 List!13189)) )
))
(declare-fun acc!681 () List!13189)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3732 (List!13189 (_ BitVec 64)) Bool)

(assert (=> b!695145 (= e!395401 (not (contains!3732 acc!681 k!2843)))))

(declare-fun b!695146 () Bool)

(declare-fun e!395400 () Bool)

(assert (=> b!695146 (= e!395400 (contains!3732 acc!681 k!2843))))

(declare-fun b!695147 () Bool)

(declare-fun res!459274 () Bool)

(declare-fun e!395399 () Bool)

(assert (=> b!695147 (=> (not res!459274) (not e!395399))))

(declare-fun e!395398 () Bool)

(assert (=> b!695147 (= res!459274 e!395398)))

(declare-fun res!459267 () Bool)

(assert (=> b!695147 (=> res!459267 e!395398)))

(assert (=> b!695147 (= res!459267 e!395400)))

(declare-fun res!459271 () Bool)

(assert (=> b!695147 (=> (not res!459271) (not e!395400))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695147 (= res!459271 (bvsgt from!3004 i!1382))))

(declare-fun b!695148 () Bool)

(assert (=> b!695148 (= e!395398 e!395401)))

(declare-fun res!459270 () Bool)

(assert (=> b!695148 (=> (not res!459270) (not e!395401))))

(assert (=> b!695148 (= res!459270 (bvsle from!3004 i!1382))))

(declare-fun res!459268 () Bool)

(assert (=> start!62130 (=> (not res!459268) (not e!395399))))

(declare-datatypes ((array!39876 0))(
  ( (array!39877 (arr!19095 (Array (_ BitVec 32) (_ BitVec 64))) (size!19478 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39876)

(assert (=> start!62130 (= res!459268 (and (bvslt (size!19478 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19478 a!3626))))))

(assert (=> start!62130 e!395399))

(assert (=> start!62130 true))

(declare-fun array_inv!14869 (array!39876) Bool)

(assert (=> start!62130 (array_inv!14869 a!3626)))

(declare-fun b!695149 () Bool)

(declare-fun res!459269 () Bool)

(assert (=> b!695149 (=> (not res!459269) (not e!395399))))

(assert (=> b!695149 (= res!459269 (not (contains!3732 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695150 () Bool)

(assert (=> b!695150 (= e!395399 false)))

(declare-fun lt!316992 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39876 (_ BitVec 32) List!13189) Bool)

(assert (=> b!695150 (= lt!316992 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695151 () Bool)

(declare-fun res!459275 () Bool)

(assert (=> b!695151 (=> (not res!459275) (not e!395399))))

(assert (=> b!695151 (= res!459275 (not (contains!3732 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695152 () Bool)

(declare-fun res!459272 () Bool)

(assert (=> b!695152 (=> (not res!459272) (not e!395399))))

(declare-fun noDuplicate!979 (List!13189) Bool)

(assert (=> b!695152 (= res!459272 (noDuplicate!979 acc!681))))

(declare-fun b!695153 () Bool)

(declare-fun res!459273 () Bool)

(assert (=> b!695153 (=> (not res!459273) (not e!395399))))

(assert (=> b!695153 (= res!459273 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13186))))

(assert (= (and start!62130 res!459268) b!695152))

(assert (= (and b!695152 res!459272) b!695151))

(assert (= (and b!695151 res!459275) b!695149))

(assert (= (and b!695149 res!459269) b!695147))

(assert (= (and b!695147 res!459271) b!695146))

(assert (= (and b!695147 (not res!459267)) b!695148))

(assert (= (and b!695148 res!459270) b!695145))

(assert (= (and b!695147 res!459274) b!695153))

(assert (= (and b!695153 res!459273) b!695150))

(declare-fun m!656763 () Bool)

(assert (=> b!695153 m!656763))

(declare-fun m!656765 () Bool)

(assert (=> b!695145 m!656765))

(declare-fun m!656767 () Bool)

(assert (=> b!695149 m!656767))

(assert (=> b!695146 m!656765))

(declare-fun m!656769 () Bool)

(assert (=> b!695151 m!656769))

(declare-fun m!656771 () Bool)

(assert (=> start!62130 m!656771))

(declare-fun m!656773 () Bool)

(assert (=> b!695150 m!656773))

(declare-fun m!656775 () Bool)

(assert (=> b!695152 m!656775))

(push 1)

(assert (not b!695152))

(assert (not b!695153))

(assert (not b!695146))

(assert (not start!62130))

(assert (not b!695150))

(assert (not b!695151))

(assert (not b!695149))

(assert (not b!695145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

