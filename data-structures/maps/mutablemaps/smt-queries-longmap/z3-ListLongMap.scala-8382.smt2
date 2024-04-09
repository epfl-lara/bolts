; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102006 () Bool)

(assert start!102006)

(declare-fun b!1227522 () Bool)

(declare-fun res!816261 () Bool)

(declare-fun e!697018 () Bool)

(assert (=> b!1227522 (=> res!816261 e!697018)))

(declare-datatypes ((List!27181 0))(
  ( (Nil!27178) (Cons!27177 (h!28386 (_ BitVec 64)) (t!40651 List!27181)) )
))
(declare-fun acc!823 () List!27181)

(declare-fun subseq!483 (List!27181 List!27181) Bool)

(assert (=> b!1227522 (= res!816261 (not (subseq!483 Nil!27178 acc!823)))))

(declare-fun b!1227523 () Bool)

(declare-fun e!697017 () Bool)

(assert (=> b!1227523 (= e!697017 (not e!697018))))

(declare-fun res!816254 () Bool)

(assert (=> b!1227523 (=> res!816254 e!697018)))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79222 0))(
  ( (array!79223 (arr!38230 (Array (_ BitVec 32) (_ BitVec 64))) (size!38767 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79222)

(assert (=> b!1227523 (= res!816254 (bvsgt from!3184 (size!38767 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79222 (_ BitVec 32) List!27181) Bool)

(assert (=> b!1227523 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27177 (select (arr!38230 a!3806) from!3184) acc!823))))

(declare-fun b!1227524 () Bool)

(declare-fun res!816257 () Bool)

(assert (=> b!1227524 (=> (not res!816257) (not e!697017))))

(declare-fun contains!7096 (List!27181 (_ BitVec 64)) Bool)

(assert (=> b!1227524 (= res!816257 (not (contains!7096 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227525 () Bool)

(declare-fun res!816256 () Bool)

(assert (=> b!1227525 (=> (not res!816256) (not e!697017))))

(assert (=> b!1227525 (= res!816256 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38767 a!3806)) (bvslt from!3184 (size!38767 a!3806))))))

(declare-fun res!816262 () Bool)

(assert (=> start!102006 (=> (not res!816262) (not e!697017))))

(assert (=> start!102006 (= res!816262 (bvslt (size!38767 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102006 e!697017))

(declare-fun array_inv!29006 (array!79222) Bool)

(assert (=> start!102006 (array_inv!29006 a!3806)))

(assert (=> start!102006 true))

(declare-fun b!1227526 () Bool)

(declare-fun res!816263 () Bool)

(assert (=> b!1227526 (=> (not res!816263) (not e!697017))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227526 (= res!816263 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227527 () Bool)

(declare-fun res!816255 () Bool)

(assert (=> b!1227527 (=> (not res!816255) (not e!697017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227527 (= res!816255 (validKeyInArray!0 (select (arr!38230 a!3806) from!3184)))))

(declare-fun b!1227528 () Bool)

(assert (=> b!1227528 (= e!697018 true)))

(declare-datatypes ((Unit!40600 0))(
  ( (Unit!40601) )
))
(declare-fun lt!558866 () Unit!40600)

(declare-fun noDuplicateSubseq!36 (List!27181 List!27181) Unit!40600)

(assert (=> b!1227528 (= lt!558866 (noDuplicateSubseq!36 Nil!27178 acc!823))))

(declare-fun b!1227529 () Bool)

(declare-fun res!816260 () Bool)

(assert (=> b!1227529 (=> (not res!816260) (not e!697017))))

(assert (=> b!1227529 (= res!816260 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227530 () Bool)

(declare-fun res!816253 () Bool)

(assert (=> b!1227530 (=> res!816253 e!697018)))

(assert (=> b!1227530 (= res!816253 (contains!7096 Nil!27178 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227531 () Bool)

(declare-fun res!816258 () Bool)

(assert (=> b!1227531 (=> (not res!816258) (not e!697017))))

(assert (=> b!1227531 (= res!816258 (not (contains!7096 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227532 () Bool)

(declare-fun res!816259 () Bool)

(assert (=> b!1227532 (=> (not res!816259) (not e!697017))))

(assert (=> b!1227532 (= res!816259 (validKeyInArray!0 k0!2913))))

(declare-fun b!1227533 () Bool)

(declare-fun res!816252 () Bool)

(assert (=> b!1227533 (=> res!816252 e!697018)))

(assert (=> b!1227533 (= res!816252 (contains!7096 Nil!27178 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227534 () Bool)

(declare-fun res!816251 () Bool)

(assert (=> b!1227534 (=> (not res!816251) (not e!697017))))

(declare-fun noDuplicate!1703 (List!27181) Bool)

(assert (=> b!1227534 (= res!816251 (noDuplicate!1703 acc!823))))

(assert (= (and start!102006 res!816262) b!1227532))

(assert (= (and b!1227532 res!816259) b!1227525))

(assert (= (and b!1227525 res!816256) b!1227534))

(assert (= (and b!1227534 res!816251) b!1227531))

(assert (= (and b!1227531 res!816258) b!1227524))

(assert (= (and b!1227524 res!816257) b!1227526))

(assert (= (and b!1227526 res!816263) b!1227529))

(assert (= (and b!1227529 res!816260) b!1227527))

(assert (= (and b!1227527 res!816255) b!1227523))

(assert (= (and b!1227523 (not res!816254)) b!1227530))

(assert (= (and b!1227530 (not res!816253)) b!1227533))

(assert (= (and b!1227533 (not res!816252)) b!1227522))

(assert (= (and b!1227522 (not res!816261)) b!1227528))

(declare-fun m!1132305 () Bool)

(assert (=> b!1227531 m!1132305))

(declare-fun m!1132307 () Bool)

(assert (=> b!1227527 m!1132307))

(assert (=> b!1227527 m!1132307))

(declare-fun m!1132309 () Bool)

(assert (=> b!1227527 m!1132309))

(declare-fun m!1132311 () Bool)

(assert (=> b!1227534 m!1132311))

(declare-fun m!1132313 () Bool)

(assert (=> b!1227526 m!1132313))

(declare-fun m!1132315 () Bool)

(assert (=> b!1227533 m!1132315))

(assert (=> b!1227523 m!1132307))

(declare-fun m!1132317 () Bool)

(assert (=> b!1227523 m!1132317))

(declare-fun m!1132319 () Bool)

(assert (=> b!1227522 m!1132319))

(declare-fun m!1132321 () Bool)

(assert (=> b!1227524 m!1132321))

(declare-fun m!1132323 () Bool)

(assert (=> b!1227528 m!1132323))

(declare-fun m!1132325 () Bool)

(assert (=> b!1227532 m!1132325))

(declare-fun m!1132327 () Bool)

(assert (=> b!1227530 m!1132327))

(declare-fun m!1132329 () Bool)

(assert (=> start!102006 m!1132329))

(declare-fun m!1132331 () Bool)

(assert (=> b!1227529 m!1132331))

(check-sat (not b!1227534) (not b!1227531) (not start!102006) (not b!1227523) (not b!1227533) (not b!1227530) (not b!1227528) (not b!1227529) (not b!1227526) (not b!1227524) (not b!1227522) (not b!1227527) (not b!1227532))
(check-sat)
