; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115652 () Bool)

(assert start!115652)

(declare-fun b!1367147 () Bool)

(declare-fun res!910800 () Bool)

(declare-fun e!774873 () Bool)

(assert (=> b!1367147 (=> (not res!910800) (not e!774873))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92806 0))(
  ( (array!92807 (arr!44824 (Array (_ BitVec 32) (_ BitVec 64))) (size!45375 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92806)

(assert (=> b!1367147 (= res!910800 (bvslt from!3239 (size!45375 a!3861)))))

(declare-fun b!1367148 () Bool)

(declare-fun res!910794 () Bool)

(assert (=> b!1367148 (=> (not res!910794) (not e!774873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367148 (= res!910794 (validKeyInArray!0 (select (arr!44824 a!3861) from!3239)))))

(declare-fun b!1367149 () Bool)

(declare-fun res!910798 () Bool)

(declare-fun e!774872 () Bool)

(assert (=> b!1367149 (=> (not res!910798) (not e!774872))))

(declare-datatypes ((List!32072 0))(
  ( (Nil!32069) (Cons!32068 (h!33277 (_ BitVec 64)) (t!46773 List!32072)) )
))
(declare-fun newAcc!98 () List!32072)

(declare-fun contains!9610 (List!32072 (_ BitVec 64)) Bool)

(assert (=> b!1367149 (= res!910798 (not (contains!9610 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367150 () Bool)

(assert (=> b!1367150 (= e!774872 e!774873)))

(declare-fun res!910801 () Bool)

(assert (=> b!1367150 (=> (not res!910801) (not e!774873))))

(declare-fun acc!866 () List!32072)

(declare-fun arrayNoDuplicates!0 (array!92806 (_ BitVec 32) List!32072) Bool)

(assert (=> b!1367150 (= res!910801 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45083 0))(
  ( (Unit!45084) )
))
(declare-fun lt!601786 () Unit!45083)

(declare-fun noDuplicateSubseq!188 (List!32072 List!32072) Unit!45083)

(assert (=> b!1367150 (= lt!601786 (noDuplicateSubseq!188 newAcc!98 acc!866))))

(declare-fun b!1367151 () Bool)

(declare-fun res!910799 () Bool)

(assert (=> b!1367151 (=> (not res!910799) (not e!774872))))

(assert (=> b!1367151 (= res!910799 (not (contains!9610 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910803 () Bool)

(assert (=> start!115652 (=> (not res!910803) (not e!774872))))

(assert (=> start!115652 (= res!910803 (and (bvslt (size!45375 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45375 a!3861))))))

(assert (=> start!115652 e!774872))

(declare-fun array_inv!33769 (array!92806) Bool)

(assert (=> start!115652 (array_inv!33769 a!3861)))

(assert (=> start!115652 true))

(declare-fun b!1367152 () Bool)

(assert (=> b!1367152 (= e!774873 false)))

(declare-fun lt!601787 () Bool)

(assert (=> b!1367152 (= lt!601787 (contains!9610 acc!866 (select (arr!44824 a!3861) from!3239)))))

(declare-fun b!1367153 () Bool)

(declare-fun res!910797 () Bool)

(assert (=> b!1367153 (=> (not res!910797) (not e!774872))))

(assert (=> b!1367153 (= res!910797 (not (contains!9610 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367154 () Bool)

(declare-fun res!910802 () Bool)

(assert (=> b!1367154 (=> (not res!910802) (not e!774872))))

(declare-fun subseq!1001 (List!32072 List!32072) Bool)

(assert (=> b!1367154 (= res!910802 (subseq!1001 newAcc!98 acc!866))))

(declare-fun b!1367155 () Bool)

(declare-fun res!910796 () Bool)

(assert (=> b!1367155 (=> (not res!910796) (not e!774872))))

(assert (=> b!1367155 (= res!910796 (not (contains!9610 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367156 () Bool)

(declare-fun res!910795 () Bool)

(assert (=> b!1367156 (=> (not res!910795) (not e!774872))))

(declare-fun noDuplicate!2489 (List!32072) Bool)

(assert (=> b!1367156 (= res!910795 (noDuplicate!2489 acc!866))))

(assert (= (and start!115652 res!910803) b!1367156))

(assert (= (and b!1367156 res!910795) b!1367151))

(assert (= (and b!1367151 res!910799) b!1367153))

(assert (= (and b!1367153 res!910797) b!1367149))

(assert (= (and b!1367149 res!910798) b!1367155))

(assert (= (and b!1367155 res!910796) b!1367154))

(assert (= (and b!1367154 res!910802) b!1367150))

(assert (= (and b!1367150 res!910801) b!1367147))

(assert (= (and b!1367147 res!910800) b!1367148))

(assert (= (and b!1367148 res!910794) b!1367152))

(declare-fun m!1251451 () Bool)

(assert (=> b!1367156 m!1251451))

(declare-fun m!1251453 () Bool)

(assert (=> b!1367149 m!1251453))

(declare-fun m!1251455 () Bool)

(assert (=> b!1367153 m!1251455))

(declare-fun m!1251457 () Bool)

(assert (=> b!1367148 m!1251457))

(assert (=> b!1367148 m!1251457))

(declare-fun m!1251459 () Bool)

(assert (=> b!1367148 m!1251459))

(declare-fun m!1251461 () Bool)

(assert (=> b!1367151 m!1251461))

(declare-fun m!1251463 () Bool)

(assert (=> start!115652 m!1251463))

(declare-fun m!1251465 () Bool)

(assert (=> b!1367150 m!1251465))

(declare-fun m!1251467 () Bool)

(assert (=> b!1367150 m!1251467))

(declare-fun m!1251469 () Bool)

(assert (=> b!1367154 m!1251469))

(assert (=> b!1367152 m!1251457))

(assert (=> b!1367152 m!1251457))

(declare-fun m!1251471 () Bool)

(assert (=> b!1367152 m!1251471))

(declare-fun m!1251473 () Bool)

(assert (=> b!1367155 m!1251473))

(push 1)

