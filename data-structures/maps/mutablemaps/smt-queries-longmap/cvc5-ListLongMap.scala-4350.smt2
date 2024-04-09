; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60144 () Bool)

(assert start!60144)

(declare-fun b!670745 () Bool)

(declare-fun res!437629 () Bool)

(declare-fun e!383457 () Bool)

(assert (=> b!670745 (=> (not res!437629) (not e!383457))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39147 0))(
  ( (array!39148 (arr!18762 (Array (_ BitVec 32) (_ BitVec 64))) (size!19126 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39147)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!670745 (= res!437629 (= (select (arr!18762 a!3626) from!3004) k!2843))))

(declare-fun b!670746 () Bool)

(declare-fun res!437618 () Bool)

(assert (=> b!670746 (=> (not res!437618) (not e!383457))))

(declare-datatypes ((List!12856 0))(
  ( (Nil!12853) (Cons!12852 (h!13897 (_ BitVec 64)) (t!19092 List!12856)) )
))
(declare-fun arrayNoDuplicates!0 (array!39147 (_ BitVec 32) List!12856) Bool)

(assert (=> b!670746 (= res!437618 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12853))))

(declare-fun b!670747 () Bool)

(declare-fun res!437617 () Bool)

(assert (=> b!670747 (=> (not res!437617) (not e!383457))))

(declare-fun acc!681 () List!12856)

(declare-fun noDuplicate!646 (List!12856) Bool)

(assert (=> b!670747 (= res!437617 (noDuplicate!646 acc!681))))

(declare-fun b!670748 () Bool)

(declare-fun e!383461 () Bool)

(declare-fun contains!3399 (List!12856 (_ BitVec 64)) Bool)

(assert (=> b!670748 (= e!383461 (not (contains!3399 acc!681 k!2843)))))

(declare-fun b!670749 () Bool)

(declare-fun res!437615 () Bool)

(assert (=> b!670749 (=> (not res!437615) (not e!383457))))

(assert (=> b!670749 (= res!437615 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670750 () Bool)

(declare-fun res!437630 () Bool)

(assert (=> b!670750 (=> (not res!437630) (not e!383457))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670750 (= res!437630 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19126 a!3626))))))

(declare-fun b!670751 () Bool)

(declare-fun res!437623 () Bool)

(assert (=> b!670751 (=> (not res!437623) (not e!383457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670751 (= res!437623 (validKeyInArray!0 k!2843))))

(declare-fun b!670752 () Bool)

(declare-fun res!437620 () Bool)

(assert (=> b!670752 (=> (not res!437620) (not e!383457))))

(declare-fun arrayContainsKey!0 (array!39147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670752 (= res!437620 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670753 () Bool)

(declare-fun res!437622 () Bool)

(assert (=> b!670753 (=> (not res!437622) (not e!383457))))

(declare-fun e!383459 () Bool)

(assert (=> b!670753 (= res!437622 e!383459)))

(declare-fun res!437627 () Bool)

(assert (=> b!670753 (=> res!437627 e!383459)))

(declare-fun e!383460 () Bool)

(assert (=> b!670753 (= res!437627 e!383460)))

(declare-fun res!437616 () Bool)

(assert (=> b!670753 (=> (not res!437616) (not e!383460))))

(assert (=> b!670753 (= res!437616 (bvsgt from!3004 i!1382))))

(declare-fun res!437625 () Bool)

(assert (=> start!60144 (=> (not res!437625) (not e!383457))))

(assert (=> start!60144 (= res!437625 (and (bvslt (size!19126 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19126 a!3626))))))

(assert (=> start!60144 e!383457))

(assert (=> start!60144 true))

(declare-fun array_inv!14536 (array!39147) Bool)

(assert (=> start!60144 (array_inv!14536 a!3626)))

(declare-fun b!670754 () Bool)

(assert (=> b!670754 (= e!383460 (contains!3399 acc!681 k!2843))))

(declare-fun b!670755 () Bool)

(declare-fun res!437628 () Bool)

(assert (=> b!670755 (=> (not res!437628) (not e!383457))))

(assert (=> b!670755 (= res!437628 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19126 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!670756 () Bool)

(assert (=> b!670756 (= e!383457 (not true))))

(assert (=> b!670756 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!670757 () Bool)

(declare-fun res!437619 () Bool)

(assert (=> b!670757 (=> (not res!437619) (not e!383457))))

(assert (=> b!670757 (= res!437619 (not (contains!3399 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670758 () Bool)

(declare-fun res!437624 () Bool)

(assert (=> b!670758 (=> (not res!437624) (not e!383457))))

(assert (=> b!670758 (= res!437624 (validKeyInArray!0 (select (arr!18762 a!3626) from!3004)))))

(declare-fun b!670759 () Bool)

(assert (=> b!670759 (= e!383459 e!383461)))

(declare-fun res!437626 () Bool)

(assert (=> b!670759 (=> (not res!437626) (not e!383461))))

(assert (=> b!670759 (= res!437626 (bvsle from!3004 i!1382))))

(declare-fun b!670760 () Bool)

(declare-fun res!437621 () Bool)

(assert (=> b!670760 (=> (not res!437621) (not e!383457))))

(assert (=> b!670760 (= res!437621 (not (contains!3399 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60144 res!437625) b!670747))

(assert (= (and b!670747 res!437617) b!670760))

(assert (= (and b!670760 res!437621) b!670757))

(assert (= (and b!670757 res!437619) b!670753))

(assert (= (and b!670753 res!437616) b!670754))

(assert (= (and b!670753 (not res!437627)) b!670759))

(assert (= (and b!670759 res!437626) b!670748))

(assert (= (and b!670753 res!437622) b!670746))

(assert (= (and b!670746 res!437618) b!670749))

(assert (= (and b!670749 res!437615) b!670750))

(assert (= (and b!670750 res!437630) b!670751))

(assert (= (and b!670751 res!437623) b!670752))

(assert (= (and b!670752 res!437620) b!670755))

(assert (= (and b!670755 res!437628) b!670758))

(assert (= (and b!670758 res!437624) b!670745))

(assert (= (and b!670745 res!437629) b!670756))

(declare-fun m!640539 () Bool)

(assert (=> b!670758 m!640539))

(assert (=> b!670758 m!640539))

(declare-fun m!640541 () Bool)

(assert (=> b!670758 m!640541))

(declare-fun m!640543 () Bool)

(assert (=> b!670751 m!640543))

(declare-fun m!640545 () Bool)

(assert (=> b!670748 m!640545))

(declare-fun m!640547 () Bool)

(assert (=> b!670756 m!640547))

(assert (=> b!670754 m!640545))

(declare-fun m!640549 () Bool)

(assert (=> b!670749 m!640549))

(declare-fun m!640551 () Bool)

(assert (=> b!670746 m!640551))

(declare-fun m!640553 () Bool)

(assert (=> b!670757 m!640553))

(declare-fun m!640555 () Bool)

(assert (=> b!670760 m!640555))

(declare-fun m!640557 () Bool)

(assert (=> start!60144 m!640557))

(declare-fun m!640559 () Bool)

(assert (=> b!670747 m!640559))

(declare-fun m!640561 () Bool)

(assert (=> b!670752 m!640561))

(assert (=> b!670745 m!640539))

(push 1)

(assert (not b!670748))

(assert (not start!60144))

(assert (not b!670747))

(assert (not b!670756))

(assert (not b!670749))

(assert (not b!670746))

(assert (not b!670760))

(assert (not b!670751))

(assert (not b!670754))

(assert (not b!670758))

(assert (not b!670757))

(assert (not b!670752))

(check-sat)

