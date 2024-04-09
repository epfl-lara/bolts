; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60134 () Bool)

(assert start!60134)

(declare-fun b!670596 () Bool)

(declare-fun res!437471 () Bool)

(declare-fun e!383382 () Bool)

(assert (=> b!670596 (=> (not res!437471) (not e!383382))))

(declare-fun e!383383 () Bool)

(assert (=> b!670596 (= res!437471 e!383383)))

(declare-fun res!437472 () Bool)

(assert (=> b!670596 (=> res!437472 e!383383)))

(declare-fun e!383386 () Bool)

(assert (=> b!670596 (= res!437472 e!383386)))

(declare-fun res!437467 () Bool)

(assert (=> b!670596 (=> (not res!437467) (not e!383386))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670596 (= res!437467 (bvsgt from!3004 i!1382))))

(declare-fun res!437469 () Bool)

(assert (=> start!60134 (=> (not res!437469) (not e!383382))))

(declare-datatypes ((array!39137 0))(
  ( (array!39138 (arr!18757 (Array (_ BitVec 32) (_ BitVec 64))) (size!19121 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39137)

(assert (=> start!60134 (= res!437469 (and (bvslt (size!19121 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19121 a!3626))))))

(assert (=> start!60134 e!383382))

(assert (=> start!60134 true))

(declare-fun array_inv!14531 (array!39137) Bool)

(assert (=> start!60134 (array_inv!14531 a!3626)))

(declare-fun b!670597 () Bool)

(declare-fun res!437470 () Bool)

(assert (=> b!670597 (=> (not res!437470) (not e!383382))))

(declare-datatypes ((List!12851 0))(
  ( (Nil!12848) (Cons!12847 (h!13892 (_ BitVec 64)) (t!19087 List!12851)) )
))
(declare-fun acc!681 () List!12851)

(declare-fun contains!3394 (List!12851 (_ BitVec 64)) Bool)

(assert (=> b!670597 (= res!437470 (not (contains!3394 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670598 () Bool)

(declare-fun e!383384 () Bool)

(assert (=> b!670598 (= e!383383 e!383384)))

(declare-fun res!437466 () Bool)

(assert (=> b!670598 (=> (not res!437466) (not e!383384))))

(assert (=> b!670598 (= res!437466 (bvsle from!3004 i!1382))))

(declare-fun b!670599 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!670599 (= e!383386 (contains!3394 acc!681 k0!2843))))

(declare-fun b!670600 () Bool)

(declare-fun res!437473 () Bool)

(assert (=> b!670600 (=> (not res!437473) (not e!383382))))

(assert (=> b!670600 (= res!437473 (not (contains!3394 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670601 () Bool)

(assert (=> b!670601 (= e!383382 false)))

(declare-fun lt!312093 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39137 (_ BitVec 32) List!12851) Bool)

(assert (=> b!670601 (= lt!312093 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670602 () Bool)

(declare-fun res!437474 () Bool)

(assert (=> b!670602 (=> (not res!437474) (not e!383382))))

(assert (=> b!670602 (= res!437474 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12848))))

(declare-fun b!670603 () Bool)

(declare-fun res!437468 () Bool)

(assert (=> b!670603 (=> (not res!437468) (not e!383382))))

(declare-fun noDuplicate!641 (List!12851) Bool)

(assert (=> b!670603 (= res!437468 (noDuplicate!641 acc!681))))

(declare-fun b!670604 () Bool)

(assert (=> b!670604 (= e!383384 (not (contains!3394 acc!681 k0!2843)))))

(assert (= (and start!60134 res!437469) b!670603))

(assert (= (and b!670603 res!437468) b!670600))

(assert (= (and b!670600 res!437473) b!670597))

(assert (= (and b!670597 res!437470) b!670596))

(assert (= (and b!670596 res!437467) b!670599))

(assert (= (and b!670596 (not res!437472)) b!670598))

(assert (= (and b!670598 res!437466) b!670604))

(assert (= (and b!670596 res!437471) b!670602))

(assert (= (and b!670602 res!437474) b!670601))

(declare-fun m!640469 () Bool)

(assert (=> b!670602 m!640469))

(declare-fun m!640471 () Bool)

(assert (=> b!670601 m!640471))

(declare-fun m!640473 () Bool)

(assert (=> start!60134 m!640473))

(declare-fun m!640475 () Bool)

(assert (=> b!670600 m!640475))

(declare-fun m!640477 () Bool)

(assert (=> b!670597 m!640477))

(declare-fun m!640479 () Bool)

(assert (=> b!670603 m!640479))

(declare-fun m!640481 () Bool)

(assert (=> b!670599 m!640481))

(assert (=> b!670604 m!640481))

(check-sat (not start!60134) (not b!670599) (not b!670604) (not b!670601) (not b!670597) (not b!670603) (not b!670602) (not b!670600))
(check-sat)
