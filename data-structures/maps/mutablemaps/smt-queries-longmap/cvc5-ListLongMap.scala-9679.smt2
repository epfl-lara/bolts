; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114248 () Bool)

(assert start!114248)

(declare-fun res!901561 () Bool)

(declare-fun e!770151 () Bool)

(assert (=> start!114248 (=> (not res!901561) (not e!770151))))

(declare-datatypes ((array!92353 0))(
  ( (array!92354 (arr!44620 (Array (_ BitVec 32) (_ BitVec 64))) (size!45171 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92353)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114248 (= res!901561 (and (bvslt (size!45171 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45171 a!3742))))))

(assert (=> start!114248 e!770151))

(declare-fun array_inv!33565 (array!92353) Bool)

(assert (=> start!114248 (array_inv!33565 a!3742)))

(assert (=> start!114248 true))

(declare-fun b!1356682 () Bool)

(declare-fun res!901562 () Bool)

(assert (=> b!1356682 (=> (not res!901562) (not e!770151))))

(declare-datatypes ((List!31841 0))(
  ( (Nil!31838) (Cons!31837 (h!33046 (_ BitVec 64)) (t!46506 List!31841)) )
))
(declare-fun arrayNoDuplicates!0 (array!92353 (_ BitVec 32) List!31841) Bool)

(assert (=> b!1356682 (= res!901562 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31838))))

(declare-fun b!1356683 () Bool)

(declare-fun res!901563 () Bool)

(assert (=> b!1356683 (=> (not res!901563) (not e!770151))))

(declare-fun acc!759 () List!31841)

(declare-fun contains!9406 (List!31841 (_ BitVec 64)) Bool)

(assert (=> b!1356683 (= res!901563 (not (contains!9406 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356684 () Bool)

(assert (=> b!1356684 (= e!770151 false)))

(declare-fun lt!599015 () Bool)

(assert (=> b!1356684 (= lt!599015 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356685 () Bool)

(declare-fun res!901559 () Bool)

(assert (=> b!1356685 (=> (not res!901559) (not e!770151))))

(declare-fun noDuplicate!2285 (List!31841) Bool)

(assert (=> b!1356685 (= res!901559 (noDuplicate!2285 acc!759))))

(declare-fun b!1356686 () Bool)

(declare-fun res!901560 () Bool)

(assert (=> b!1356686 (=> (not res!901560) (not e!770151))))

(assert (=> b!1356686 (= res!901560 (not (contains!9406 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114248 res!901561) b!1356685))

(assert (= (and b!1356685 res!901559) b!1356683))

(assert (= (and b!1356683 res!901563) b!1356686))

(assert (= (and b!1356686 res!901560) b!1356682))

(assert (= (and b!1356682 res!901562) b!1356684))

(declare-fun m!1242637 () Bool)

(assert (=> start!114248 m!1242637))

(declare-fun m!1242639 () Bool)

(assert (=> b!1356683 m!1242639))

(declare-fun m!1242641 () Bool)

(assert (=> b!1356682 m!1242641))

(declare-fun m!1242643 () Bool)

(assert (=> b!1356684 m!1242643))

(declare-fun m!1242645 () Bool)

(assert (=> b!1356685 m!1242645))

(declare-fun m!1242647 () Bool)

(assert (=> b!1356686 m!1242647))

(push 1)

(assert (not b!1356683))

(assert (not b!1356686))

(assert (not start!114248))

(assert (not b!1356685))

(assert (not b!1356682))

(assert (not b!1356684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

