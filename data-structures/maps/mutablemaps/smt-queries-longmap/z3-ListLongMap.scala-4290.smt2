; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59786 () Bool)

(assert start!59786)

(declare-fun b!660016 () Bool)

(declare-fun e!379281 () Bool)

(declare-datatypes ((List!12677 0))(
  ( (Nil!12674) (Cons!12673 (h!13718 (_ BitVec 64)) (t!18913 List!12677)) )
))
(declare-fun acc!681 () List!12677)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3220 (List!12677 (_ BitVec 64)) Bool)

(assert (=> b!660016 (= e!379281 (contains!3220 acc!681 k0!2843))))

(declare-fun b!660017 () Bool)

(declare-fun res!428255 () Bool)

(declare-fun e!379280 () Bool)

(assert (=> b!660017 (=> (not res!428255) (not e!379280))))

(assert (=> b!660017 (= res!428255 (not (contains!3220 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660018 () Bool)

(declare-fun e!379279 () Bool)

(assert (=> b!660018 (= e!379279 (not (contains!3220 acc!681 k0!2843)))))

(declare-fun res!428256 () Bool)

(assert (=> start!59786 (=> (not res!428256) (not e!379280))))

(declare-datatypes ((array!38789 0))(
  ( (array!38790 (arr!18583 (Array (_ BitVec 32) (_ BitVec 64))) (size!18947 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38789)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59786 (= res!428256 (and (bvslt (size!18947 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18947 a!3626))))))

(assert (=> start!59786 e!379280))

(assert (=> start!59786 true))

(declare-fun array_inv!14357 (array!38789) Bool)

(assert (=> start!59786 (array_inv!14357 a!3626)))

(declare-fun b!660019 () Bool)

(declare-fun res!428258 () Bool)

(assert (=> b!660019 (=> (not res!428258) (not e!379280))))

(declare-fun noDuplicate!467 (List!12677) Bool)

(assert (=> b!660019 (= res!428258 (noDuplicate!467 acc!681))))

(declare-fun b!660020 () Bool)

(declare-fun res!428254 () Bool)

(assert (=> b!660020 (=> (not res!428254) (not e!379280))))

(declare-fun e!379278 () Bool)

(assert (=> b!660020 (= res!428254 e!379278)))

(declare-fun res!428257 () Bool)

(assert (=> b!660020 (=> res!428257 e!379278)))

(assert (=> b!660020 (= res!428257 e!379281)))

(declare-fun res!428261 () Bool)

(assert (=> b!660020 (=> (not res!428261) (not e!379281))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660020 (= res!428261 (bvsgt from!3004 i!1382))))

(declare-fun b!660021 () Bool)

(assert (=> b!660021 (= e!379280 false)))

(declare-fun lt!308700 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38789 (_ BitVec 32) List!12677) Bool)

(assert (=> b!660021 (= lt!308700 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12674))))

(declare-fun b!660022 () Bool)

(assert (=> b!660022 (= e!379278 e!379279)))

(declare-fun res!428259 () Bool)

(assert (=> b!660022 (=> (not res!428259) (not e!379279))))

(assert (=> b!660022 (= res!428259 (bvsle from!3004 i!1382))))

(declare-fun b!660023 () Bool)

(declare-fun res!428260 () Bool)

(assert (=> b!660023 (=> (not res!428260) (not e!379280))))

(assert (=> b!660023 (= res!428260 (not (contains!3220 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59786 res!428256) b!660019))

(assert (= (and b!660019 res!428258) b!660017))

(assert (= (and b!660017 res!428255) b!660023))

(assert (= (and b!660023 res!428260) b!660020))

(assert (= (and b!660020 res!428261) b!660016))

(assert (= (and b!660020 (not res!428257)) b!660022))

(assert (= (and b!660022 res!428259) b!660018))

(assert (= (and b!660020 res!428254) b!660021))

(declare-fun m!632871 () Bool)

(assert (=> b!660023 m!632871))

(declare-fun m!632873 () Bool)

(assert (=> b!660019 m!632873))

(declare-fun m!632875 () Bool)

(assert (=> b!660018 m!632875))

(declare-fun m!632877 () Bool)

(assert (=> start!59786 m!632877))

(declare-fun m!632879 () Bool)

(assert (=> b!660017 m!632879))

(declare-fun m!632881 () Bool)

(assert (=> b!660021 m!632881))

(assert (=> b!660016 m!632875))

(check-sat (not b!660018) (not start!59786) (not b!660017) (not b!660023) (not b!660021) (not b!660016) (not b!660019))
(check-sat)
