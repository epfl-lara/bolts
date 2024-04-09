; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62152 () Bool)

(assert start!62152)

(declare-fun b!695496 () Bool)

(declare-fun res!459622 () Bool)

(declare-fun e!395566 () Bool)

(assert (=> b!695496 (=> (not res!459622) (not e!395566))))

(declare-datatypes ((List!13200 0))(
  ( (Nil!13197) (Cons!13196 (h!14241 (_ BitVec 64)) (t!19490 List!13200)) )
))
(declare-fun acc!681 () List!13200)

(declare-fun noDuplicate!990 (List!13200) Bool)

(assert (=> b!695496 (= res!459622 (noDuplicate!990 acc!681))))

(declare-fun b!695497 () Bool)

(declare-fun res!459621 () Bool)

(assert (=> b!695497 (=> (not res!459621) (not e!395566))))

(declare-fun contains!3743 (List!13200 (_ BitVec 64)) Bool)

(assert (=> b!695497 (= res!459621 (not (contains!3743 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695498 () Bool)

(declare-fun res!459625 () Bool)

(assert (=> b!695498 (=> (not res!459625) (not e!395566))))

(declare-datatypes ((array!39898 0))(
  ( (array!39899 (arr!19106 (Array (_ BitVec 32) (_ BitVec 64))) (size!19489 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39898)

(declare-fun arrayNoDuplicates!0 (array!39898 (_ BitVec 32) List!13200) Bool)

(assert (=> b!695498 (= res!459625 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13197))))

(declare-fun res!459626 () Bool)

(assert (=> start!62152 (=> (not res!459626) (not e!395566))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!62152 (= res!459626 (and (bvslt (size!19489 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19489 a!3626))))))

(assert (=> start!62152 e!395566))

(assert (=> start!62152 true))

(declare-fun array_inv!14880 (array!39898) Bool)

(assert (=> start!62152 (array_inv!14880 a!3626)))

(declare-fun b!695499 () Bool)

(declare-fun e!395562 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!695499 (= e!395562 (contains!3743 acc!681 k!2843))))

(declare-fun b!695500 () Bool)

(declare-fun res!459620 () Bool)

(assert (=> b!695500 (=> (not res!459620) (not e!395566))))

(declare-fun e!395563 () Bool)

(assert (=> b!695500 (= res!459620 e!395563)))

(declare-fun res!459624 () Bool)

(assert (=> b!695500 (=> res!459624 e!395563)))

(assert (=> b!695500 (= res!459624 e!395562)))

(declare-fun res!459618 () Bool)

(assert (=> b!695500 (=> (not res!459618) (not e!395562))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695500 (= res!459618 (bvsgt from!3004 i!1382))))

(declare-fun b!695501 () Bool)

(declare-fun e!395565 () Bool)

(assert (=> b!695501 (= e!395563 e!395565)))

(declare-fun res!459623 () Bool)

(assert (=> b!695501 (=> (not res!459623) (not e!395565))))

(assert (=> b!695501 (= res!459623 (bvsle from!3004 i!1382))))

(declare-fun b!695502 () Bool)

(declare-fun res!459619 () Bool)

(assert (=> b!695502 (=> (not res!459619) (not e!395566))))

(assert (=> b!695502 (= res!459619 (not (contains!3743 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695503 () Bool)

(assert (=> b!695503 (= e!395566 false)))

(declare-fun lt!317016 () Bool)

(assert (=> b!695503 (= lt!317016 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695504 () Bool)

(assert (=> b!695504 (= e!395565 (not (contains!3743 acc!681 k!2843)))))

(assert (= (and start!62152 res!459626) b!695496))

(assert (= (and b!695496 res!459622) b!695502))

(assert (= (and b!695502 res!459619) b!695497))

(assert (= (and b!695497 res!459621) b!695500))

(assert (= (and b!695500 res!459618) b!695499))

(assert (= (and b!695500 (not res!459624)) b!695501))

(assert (= (and b!695501 res!459623) b!695504))

(assert (= (and b!695500 res!459620) b!695498))

(assert (= (and b!695498 res!459625) b!695503))

(declare-fun m!656941 () Bool)

(assert (=> b!695498 m!656941))

(declare-fun m!656943 () Bool)

(assert (=> b!695496 m!656943))

(declare-fun m!656945 () Bool)

(assert (=> b!695503 m!656945))

(declare-fun m!656947 () Bool)

(assert (=> b!695499 m!656947))

(declare-fun m!656949 () Bool)

(assert (=> start!62152 m!656949))

(declare-fun m!656951 () Bool)

(assert (=> b!695502 m!656951))

(assert (=> b!695504 m!656947))

(declare-fun m!656953 () Bool)

(assert (=> b!695497 m!656953))

(push 1)

(assert (not b!695497))

(assert (not b!695496))

(assert (not start!62152))

(assert (not b!695498))

(assert (not b!695502))

(assert (not b!695503))

(assert (not b!695504))

(assert (not b!695499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

