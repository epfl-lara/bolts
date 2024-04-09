; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62366 () Bool)

(assert start!62366)

(declare-fun b!698149 () Bool)

(declare-fun res!462135 () Bool)

(declare-fun e!396915 () Bool)

(assert (=> b!698149 (=> (not res!462135) (not e!396915))))

(declare-datatypes ((List!13247 0))(
  ( (Nil!13244) (Cons!13243 (h!14288 (_ BitVec 64)) (t!19537 List!13247)) )
))
(declare-fun acc!652 () List!13247)

(declare-fun contains!3790 (List!13247 (_ BitVec 64)) Bool)

(assert (=> b!698149 (= res!462135 (not (contains!3790 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698150 () Bool)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40001 0))(
  ( (array!40002 (arr!19153 (Array (_ BitVec 32) (_ BitVec 64))) (size!19536 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40001)

(assert (=> b!698150 (= e!396915 (bvsgt from!2969 (size!19536 a!3591)))))

(declare-fun res!462133 () Bool)

(assert (=> start!62366 (=> (not res!462133) (not e!396915))))

(assert (=> start!62366 (= res!462133 (and (bvslt (size!19536 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19536 a!3591))))))

(assert (=> start!62366 e!396915))

(assert (=> start!62366 true))

(declare-fun array_inv!14927 (array!40001) Bool)

(assert (=> start!62366 (array_inv!14927 a!3591)))

(declare-fun b!698151 () Bool)

(declare-fun res!462136 () Bool)

(assert (=> b!698151 (=> (not res!462136) (not e!396915))))

(declare-fun noDuplicate!1037 (List!13247) Bool)

(assert (=> b!698151 (= res!462136 (noDuplicate!1037 acc!652))))

(declare-fun b!698152 () Bool)

(declare-fun res!462140 () Bool)

(assert (=> b!698152 (=> (not res!462140) (not e!396915))))

(declare-fun newAcc!49 () List!13247)

(assert (=> b!698152 (= res!462140 (noDuplicate!1037 newAcc!49))))

(declare-fun b!698153 () Bool)

(declare-fun res!462137 () Bool)

(assert (=> b!698153 (=> (not res!462137) (not e!396915))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698153 (= res!462137 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!698154 () Bool)

(declare-fun res!462139 () Bool)

(assert (=> b!698154 (=> (not res!462139) (not e!396915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!698154 (= res!462139 (validKeyInArray!0 k0!2824))))

(declare-fun b!698155 () Bool)

(declare-fun res!462134 () Bool)

(assert (=> b!698155 (=> (not res!462134) (not e!396915))))

(assert (=> b!698155 (= res!462134 (not (contains!3790 acc!652 k0!2824)))))

(declare-fun b!698156 () Bool)

(declare-fun res!462138 () Bool)

(assert (=> b!698156 (=> (not res!462138) (not e!396915))))

(assert (=> b!698156 (= res!462138 (not (contains!3790 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62366 res!462133) b!698151))

(assert (= (and b!698151 res!462136) b!698152))

(assert (= (and b!698152 res!462140) b!698156))

(assert (= (and b!698156 res!462138) b!698149))

(assert (= (and b!698149 res!462135) b!698153))

(assert (= (and b!698153 res!462137) b!698155))

(assert (= (and b!698155 res!462134) b!698154))

(assert (= (and b!698154 res!462139) b!698150))

(declare-fun m!658513 () Bool)

(assert (=> b!698151 m!658513))

(declare-fun m!658515 () Bool)

(assert (=> b!698153 m!658515))

(declare-fun m!658517 () Bool)

(assert (=> b!698156 m!658517))

(declare-fun m!658519 () Bool)

(assert (=> start!62366 m!658519))

(declare-fun m!658521 () Bool)

(assert (=> b!698149 m!658521))

(declare-fun m!658523 () Bool)

(assert (=> b!698152 m!658523))

(declare-fun m!658525 () Bool)

(assert (=> b!698154 m!658525))

(declare-fun m!658527 () Bool)

(assert (=> b!698155 m!658527))

(check-sat (not b!698153) (not b!698154) (not b!698149) (not start!62366) (not b!698156) (not b!698155) (not b!698152) (not b!698151))
(check-sat)
