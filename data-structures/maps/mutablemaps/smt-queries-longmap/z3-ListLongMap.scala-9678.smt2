; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114244 () Bool)

(assert start!114244)

(declare-fun b!1356640 () Bool)

(declare-fun e!770139 () Bool)

(declare-datatypes ((array!92349 0))(
  ( (array!92350 (arr!44618 (Array (_ BitVec 32) (_ BitVec 64))) (size!45169 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92349)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1356640 (= e!770139 (bvslt (bvsub (size!45169 a!3742) from!3120) #b00000000000000000000000000000000))))

(declare-fun b!1356641 () Bool)

(declare-fun res!901520 () Bool)

(assert (=> b!1356641 (=> (not res!901520) (not e!770139))))

(declare-datatypes ((List!31839 0))(
  ( (Nil!31836) (Cons!31835 (h!33044 (_ BitVec 64)) (t!46504 List!31839)) )
))
(declare-fun acc!759 () List!31839)

(declare-fun arrayNoDuplicates!0 (array!92349 (_ BitVec 32) List!31839) Bool)

(assert (=> b!1356641 (= res!901520 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356642 () Bool)

(declare-fun res!901519 () Bool)

(assert (=> b!1356642 (=> (not res!901519) (not e!770139))))

(declare-fun contains!9404 (List!31839 (_ BitVec 64)) Bool)

(assert (=> b!1356642 (= res!901519 (not (contains!9404 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356643 () Bool)

(declare-fun res!901517 () Bool)

(assert (=> b!1356643 (=> (not res!901517) (not e!770139))))

(assert (=> b!1356643 (= res!901517 (not (contains!9404 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356645 () Bool)

(declare-fun res!901522 () Bool)

(assert (=> b!1356645 (=> (not res!901522) (not e!770139))))

(declare-fun noDuplicate!2283 (List!31839) Bool)

(assert (=> b!1356645 (= res!901522 (noDuplicate!2283 acc!759))))

(declare-fun res!901523 () Bool)

(assert (=> start!114244 (=> (not res!901523) (not e!770139))))

(assert (=> start!114244 (= res!901523 (and (bvslt (size!45169 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45169 a!3742))))))

(assert (=> start!114244 e!770139))

(assert (=> start!114244 true))

(declare-fun array_inv!33563 (array!92349) Bool)

(assert (=> start!114244 (array_inv!33563 a!3742)))

(declare-fun b!1356644 () Bool)

(declare-fun res!901518 () Bool)

(assert (=> b!1356644 (=> (not res!901518) (not e!770139))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356644 (= res!901518 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356646 () Bool)

(declare-fun res!901521 () Bool)

(assert (=> b!1356646 (=> (not res!901521) (not e!770139))))

(assert (=> b!1356646 (= res!901521 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31836))))

(declare-fun b!1356647 () Bool)

(declare-fun res!901524 () Bool)

(assert (=> b!1356647 (=> (not res!901524) (not e!770139))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356647 (= res!901524 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45169 a!3742))))))

(assert (= (and start!114244 res!901523) b!1356645))

(assert (= (and b!1356645 res!901522) b!1356642))

(assert (= (and b!1356642 res!901519) b!1356643))

(assert (= (and b!1356643 res!901517) b!1356646))

(assert (= (and b!1356646 res!901521) b!1356641))

(assert (= (and b!1356641 res!901520) b!1356647))

(assert (= (and b!1356647 res!901524) b!1356644))

(assert (= (and b!1356644 res!901518) b!1356640))

(declare-fun m!1242609 () Bool)

(assert (=> b!1356645 m!1242609))

(declare-fun m!1242611 () Bool)

(assert (=> b!1356644 m!1242611))

(declare-fun m!1242613 () Bool)

(assert (=> start!114244 m!1242613))

(declare-fun m!1242615 () Bool)

(assert (=> b!1356642 m!1242615))

(declare-fun m!1242617 () Bool)

(assert (=> b!1356643 m!1242617))

(declare-fun m!1242619 () Bool)

(assert (=> b!1356646 m!1242619))

(declare-fun m!1242621 () Bool)

(assert (=> b!1356641 m!1242621))

(check-sat (not start!114244) (not b!1356645) (not b!1356644) (not b!1356643) (not b!1356642) (not b!1356646) (not b!1356641))
(check-sat)
