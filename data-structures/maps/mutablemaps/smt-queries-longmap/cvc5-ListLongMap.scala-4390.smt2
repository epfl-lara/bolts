; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60384 () Bool)

(assert start!60384)

(declare-fun b!678219 () Bool)

(declare-fun e!386485 () Bool)

(assert (=> b!678219 (= e!386485 false)))

(declare-datatypes ((array!39387 0))(
  ( (array!39388 (arr!18882 (Array (_ BitVec 32) (_ BitVec 64))) (size!19246 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39387)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12976 0))(
  ( (Nil!12973) (Cons!12972 (h!14017 (_ BitVec 64)) (t!19212 List!12976)) )
))
(declare-fun acc!681 () List!12976)

(declare-fun lt!312828 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39387 (_ BitVec 32) List!12976) Bool)

(assert (=> b!678219 (= lt!312828 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678220 () Bool)

(declare-fun res!444802 () Bool)

(assert (=> b!678220 (=> (not res!444802) (not e!386485))))

(assert (=> b!678220 (= res!444802 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12973))))

(declare-fun b!678221 () Bool)

(declare-fun res!444805 () Bool)

(assert (=> b!678221 (=> (not res!444805) (not e!386485))))

(declare-fun noDuplicate!766 (List!12976) Bool)

(assert (=> b!678221 (= res!444805 (noDuplicate!766 acc!681))))

(declare-fun b!678222 () Bool)

(declare-fun res!444804 () Bool)

(assert (=> b!678222 (=> (not res!444804) (not e!386485))))

(declare-fun contains!3519 (List!12976 (_ BitVec 64)) Bool)

(assert (=> b!678222 (= res!444804 (not (contains!3519 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678223 () Bool)

(declare-fun e!386481 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!678223 (= e!386481 (contains!3519 acc!681 k!2843))))

(declare-fun b!678224 () Bool)

(declare-fun e!386483 () Bool)

(assert (=> b!678224 (= e!386483 (not (contains!3519 acc!681 k!2843)))))

(declare-fun b!678225 () Bool)

(declare-fun e!386484 () Bool)

(assert (=> b!678225 (= e!386484 e!386483)))

(declare-fun res!444809 () Bool)

(assert (=> b!678225 (=> (not res!444809) (not e!386483))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678225 (= res!444809 (bvsle from!3004 i!1382))))

(declare-fun res!444803 () Bool)

(assert (=> start!60384 (=> (not res!444803) (not e!386485))))

(assert (=> start!60384 (= res!444803 (and (bvslt (size!19246 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19246 a!3626))))))

(assert (=> start!60384 e!386485))

(assert (=> start!60384 true))

(declare-fun array_inv!14656 (array!39387) Bool)

(assert (=> start!60384 (array_inv!14656 a!3626)))

(declare-fun b!678226 () Bool)

(declare-fun res!444806 () Bool)

(assert (=> b!678226 (=> (not res!444806) (not e!386485))))

(assert (=> b!678226 (= res!444806 (not (contains!3519 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678227 () Bool)

(declare-fun res!444801 () Bool)

(assert (=> b!678227 (=> (not res!444801) (not e!386485))))

(assert (=> b!678227 (= res!444801 e!386484)))

(declare-fun res!444807 () Bool)

(assert (=> b!678227 (=> res!444807 e!386484)))

(assert (=> b!678227 (= res!444807 e!386481)))

(declare-fun res!444808 () Bool)

(assert (=> b!678227 (=> (not res!444808) (not e!386481))))

(assert (=> b!678227 (= res!444808 (bvsgt from!3004 i!1382))))

(assert (= (and start!60384 res!444803) b!678221))

(assert (= (and b!678221 res!444805) b!678222))

(assert (= (and b!678222 res!444804) b!678226))

(assert (= (and b!678226 res!444806) b!678227))

(assert (= (and b!678227 res!444808) b!678223))

(assert (= (and b!678227 (not res!444807)) b!678225))

(assert (= (and b!678225 res!444809) b!678224))

(assert (= (and b!678227 res!444801) b!678220))

(assert (= (and b!678220 res!444802) b!678219))

(declare-fun m!644073 () Bool)

(assert (=> b!678222 m!644073))

(declare-fun m!644075 () Bool)

(assert (=> start!60384 m!644075))

(declare-fun m!644077 () Bool)

(assert (=> b!678224 m!644077))

(declare-fun m!644079 () Bool)

(assert (=> b!678226 m!644079))

(assert (=> b!678223 m!644077))

(declare-fun m!644081 () Bool)

(assert (=> b!678219 m!644081))

(declare-fun m!644083 () Bool)

(assert (=> b!678221 m!644083))

(declare-fun m!644085 () Bool)

(assert (=> b!678220 m!644085))

(push 1)

(assert (not b!678221))

(assert (not b!678224))

(assert (not b!678222))

(assert (not b!678219))

(assert (not start!60384))

(assert (not b!678226))

(assert (not b!678223))

(assert (not b!678220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

