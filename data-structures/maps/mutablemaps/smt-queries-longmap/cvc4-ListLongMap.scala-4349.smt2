; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60142 () Bool)

(assert start!60142)

(declare-fun b!670704 () Bool)

(declare-fun res!437579 () Bool)

(declare-fun e!383442 () Bool)

(assert (=> b!670704 (=> (not res!437579) (not e!383442))))

(declare-datatypes ((array!39145 0))(
  ( (array!39146 (arr!18761 (Array (_ BitVec 32) (_ BitVec 64))) (size!19125 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39145)

(declare-datatypes ((List!12855 0))(
  ( (Nil!12852) (Cons!12851 (h!13896 (_ BitVec 64)) (t!19091 List!12855)) )
))
(declare-fun arrayNoDuplicates!0 (array!39145 (_ BitVec 32) List!12855) Bool)

(assert (=> b!670704 (= res!437579 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12852))))

(declare-fun b!670705 () Bool)

(declare-fun e!383446 () Bool)

(declare-fun acc!681 () List!12855)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3398 (List!12855 (_ BitVec 64)) Bool)

(assert (=> b!670705 (= e!383446 (contains!3398 acc!681 k!2843))))

(declare-fun b!670706 () Bool)

(declare-fun res!437574 () Bool)

(assert (=> b!670706 (=> (not res!437574) (not e!383442))))

(declare-fun noDuplicate!645 (List!12855) Bool)

(assert (=> b!670706 (= res!437574 (noDuplicate!645 acc!681))))

(declare-fun res!437577 () Bool)

(assert (=> start!60142 (=> (not res!437577) (not e!383442))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60142 (= res!437577 (and (bvslt (size!19125 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19125 a!3626))))))

(assert (=> start!60142 e!383442))

(assert (=> start!60142 true))

(declare-fun array_inv!14535 (array!39145) Bool)

(assert (=> start!60142 (array_inv!14535 a!3626)))

(declare-fun b!670707 () Bool)

(declare-fun e!383445 () Bool)

(declare-fun e!383444 () Bool)

(assert (=> b!670707 (= e!383445 e!383444)))

(declare-fun res!437581 () Bool)

(assert (=> b!670707 (=> (not res!437581) (not e!383444))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670707 (= res!437581 (bvsle from!3004 i!1382))))

(declare-fun b!670708 () Bool)

(declare-fun res!437580 () Bool)

(assert (=> b!670708 (=> (not res!437580) (not e!383442))))

(assert (=> b!670708 (= res!437580 e!383445)))

(declare-fun res!437575 () Bool)

(assert (=> b!670708 (=> res!437575 e!383445)))

(assert (=> b!670708 (= res!437575 e!383446)))

(declare-fun res!437582 () Bool)

(assert (=> b!670708 (=> (not res!437582) (not e!383446))))

(assert (=> b!670708 (= res!437582 (bvsgt from!3004 i!1382))))

(declare-fun b!670709 () Bool)

(assert (=> b!670709 (= e!383444 (not (contains!3398 acc!681 k!2843)))))

(declare-fun b!670710 () Bool)

(declare-fun res!437578 () Bool)

(assert (=> b!670710 (=> (not res!437578) (not e!383442))))

(assert (=> b!670710 (= res!437578 (not (contains!3398 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670711 () Bool)

(assert (=> b!670711 (= e!383442 false)))

(declare-fun lt!312105 () Bool)

(assert (=> b!670711 (= lt!312105 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670712 () Bool)

(declare-fun res!437576 () Bool)

(assert (=> b!670712 (=> (not res!437576) (not e!383442))))

(assert (=> b!670712 (= res!437576 (not (contains!3398 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60142 res!437577) b!670706))

(assert (= (and b!670706 res!437574) b!670712))

(assert (= (and b!670712 res!437576) b!670710))

(assert (= (and b!670710 res!437578) b!670708))

(assert (= (and b!670708 res!437582) b!670705))

(assert (= (and b!670708 (not res!437575)) b!670707))

(assert (= (and b!670707 res!437581) b!670709))

(assert (= (and b!670708 res!437580) b!670704))

(assert (= (and b!670704 res!437579) b!670711))

(declare-fun m!640525 () Bool)

(assert (=> start!60142 m!640525))

(declare-fun m!640527 () Bool)

(assert (=> b!670712 m!640527))

(declare-fun m!640529 () Bool)

(assert (=> b!670710 m!640529))

(declare-fun m!640531 () Bool)

(assert (=> b!670709 m!640531))

(declare-fun m!640533 () Bool)

(assert (=> b!670706 m!640533))

(assert (=> b!670705 m!640531))

(declare-fun m!640535 () Bool)

(assert (=> b!670704 m!640535))

(declare-fun m!640537 () Bool)

(assert (=> b!670711 m!640537))

(push 1)

(assert (not b!670709))

(assert (not b!670710))

(assert (not b!670711))

(assert (not start!60142))

(assert (not b!670706))

(assert (not b!670704))

(assert (not b!670705))

(assert (not b!670712))

(check-sat)

