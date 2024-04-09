; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60312 () Bool)

(assert start!60312)

(declare-fun b!676495 () Bool)

(declare-fun res!443099 () Bool)

(declare-fun e!385779 () Bool)

(assert (=> b!676495 (=> (not res!443099) (not e!385779))))

(declare-fun e!385778 () Bool)

(assert (=> b!676495 (= res!443099 e!385778)))

(declare-fun res!443102 () Bool)

(assert (=> b!676495 (=> res!443102 e!385778)))

(declare-fun e!385783 () Bool)

(assert (=> b!676495 (= res!443102 e!385783)))

(declare-fun res!443110 () Bool)

(assert (=> b!676495 (=> (not res!443110) (not e!385783))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676495 (= res!443110 (bvsgt from!3004 i!1382))))

(declare-fun b!676496 () Bool)

(declare-fun res!443105 () Bool)

(assert (=> b!676496 (=> (not res!443105) (not e!385779))))

(declare-fun e!385776 () Bool)

(assert (=> b!676496 (= res!443105 e!385776)))

(declare-fun res!443113 () Bool)

(assert (=> b!676496 (=> res!443113 e!385776)))

(declare-fun e!385780 () Bool)

(assert (=> b!676496 (= res!443113 e!385780)))

(declare-fun res!443109 () Bool)

(assert (=> b!676496 (=> (not res!443109) (not e!385780))))

(assert (=> b!676496 (= res!443109 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676497 () Bool)

(declare-fun res!443106 () Bool)

(assert (=> b!676497 (=> (not res!443106) (not e!385779))))

(declare-datatypes ((List!12940 0))(
  ( (Nil!12937) (Cons!12936 (h!13981 (_ BitVec 64)) (t!19176 List!12940)) )
))
(declare-fun acc!681 () List!12940)

(declare-fun contains!3483 (List!12940 (_ BitVec 64)) Bool)

(assert (=> b!676497 (= res!443106 (not (contains!3483 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676498 () Bool)

(declare-fun res!443100 () Bool)

(assert (=> b!676498 (=> (not res!443100) (not e!385779))))

(declare-datatypes ((array!39315 0))(
  ( (array!39316 (arr!18846 (Array (_ BitVec 32) (_ BitVec 64))) (size!19210 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39315)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676498 (= res!443100 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676499 () Bool)

(declare-fun e!385777 () Bool)

(assert (=> b!676499 (= e!385777 (not (contains!3483 acc!681 k!2843)))))

(declare-fun b!676500 () Bool)

(declare-fun res!443108 () Bool)

(assert (=> b!676500 (=> (not res!443108) (not e!385779))))

(assert (=> b!676500 (= res!443108 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19210 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676501 () Bool)

(declare-fun res!443112 () Bool)

(assert (=> b!676501 (=> (not res!443112) (not e!385779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676501 (= res!443112 (not (validKeyInArray!0 (select (arr!18846 a!3626) from!3004))))))

(declare-fun res!443103 () Bool)

(assert (=> start!60312 (=> (not res!443103) (not e!385779))))

(assert (=> start!60312 (= res!443103 (and (bvslt (size!19210 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19210 a!3626))))))

(assert (=> start!60312 e!385779))

(assert (=> start!60312 true))

(declare-fun array_inv!14620 (array!39315) Bool)

(assert (=> start!60312 (array_inv!14620 a!3626)))

(declare-fun b!676502 () Bool)

(declare-fun res!443114 () Bool)

(assert (=> b!676502 (=> (not res!443114) (not e!385779))))

(assert (=> b!676502 (= res!443114 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676503 () Bool)

(declare-fun res!443096 () Bool)

(assert (=> b!676503 (=> (not res!443096) (not e!385779))))

(declare-fun arrayNoDuplicates!0 (array!39315 (_ BitVec 32) List!12940) Bool)

(assert (=> b!676503 (= res!443096 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12937))))

(declare-fun b!676504 () Bool)

(assert (=> b!676504 (= e!385779 false)))

(declare-fun lt!312729 () Bool)

(assert (=> b!676504 (= lt!312729 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676505 () Bool)

(declare-fun res!443104 () Bool)

(assert (=> b!676505 (=> (not res!443104) (not e!385779))))

(assert (=> b!676505 (= res!443104 (not (contains!3483 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676506 () Bool)

(assert (=> b!676506 (= e!385783 (contains!3483 acc!681 k!2843))))

(declare-fun b!676507 () Bool)

(assert (=> b!676507 (= e!385780 (contains!3483 acc!681 k!2843))))

(declare-fun b!676508 () Bool)

(declare-fun res!443111 () Bool)

(assert (=> b!676508 (=> (not res!443111) (not e!385779))))

(assert (=> b!676508 (= res!443111 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19210 a!3626))))))

(declare-fun b!676509 () Bool)

(declare-fun e!385781 () Bool)

(assert (=> b!676509 (= e!385778 e!385781)))

(declare-fun res!443095 () Bool)

(assert (=> b!676509 (=> (not res!443095) (not e!385781))))

(assert (=> b!676509 (= res!443095 (bvsle from!3004 i!1382))))

(declare-fun b!676510 () Bool)

(assert (=> b!676510 (= e!385776 e!385777)))

(declare-fun res!443101 () Bool)

(assert (=> b!676510 (=> (not res!443101) (not e!385777))))

(assert (=> b!676510 (= res!443101 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676511 () Bool)

(declare-fun res!443098 () Bool)

(assert (=> b!676511 (=> (not res!443098) (not e!385779))))

(assert (=> b!676511 (= res!443098 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676512 () Bool)

(declare-fun res!443107 () Bool)

(assert (=> b!676512 (=> (not res!443107) (not e!385779))))

(declare-fun noDuplicate!730 (List!12940) Bool)

(assert (=> b!676512 (= res!443107 (noDuplicate!730 acc!681))))

(declare-fun b!676513 () Bool)

(declare-fun res!443097 () Bool)

(assert (=> b!676513 (=> (not res!443097) (not e!385779))))

(assert (=> b!676513 (= res!443097 (validKeyInArray!0 k!2843))))

(declare-fun b!676514 () Bool)

(assert (=> b!676514 (= e!385781 (not (contains!3483 acc!681 k!2843)))))

(assert (= (and start!60312 res!443103) b!676512))

(assert (= (and b!676512 res!443107) b!676505))

(assert (= (and b!676505 res!443104) b!676497))

(assert (= (and b!676497 res!443106) b!676495))

(assert (= (and b!676495 res!443110) b!676506))

(assert (= (and b!676495 (not res!443102)) b!676509))

(assert (= (and b!676509 res!443095) b!676514))

(assert (= (and b!676495 res!443099) b!676503))

(assert (= (and b!676503 res!443096) b!676511))

(assert (= (and b!676511 res!443098) b!676508))

(assert (= (and b!676508 res!443111) b!676513))

(assert (= (and b!676513 res!443097) b!676498))

(assert (= (and b!676498 res!443100) b!676500))

(assert (= (and b!676500 res!443108) b!676501))

(assert (= (and b!676501 res!443112) b!676502))

(assert (= (and b!676502 res!443114) b!676496))

(assert (= (and b!676496 res!443109) b!676507))

(assert (= (and b!676496 (not res!443113)) b!676510))

(assert (= (and b!676510 res!443101) b!676499))

(assert (= (and b!676496 res!443105) b!676504))

(declare-fun m!643257 () Bool)

(assert (=> b!676504 m!643257))

(declare-fun m!643259 () Bool)

(assert (=> b!676498 m!643259))

(declare-fun m!643261 () Bool)

(assert (=> b!676505 m!643261))

(declare-fun m!643263 () Bool)

(assert (=> b!676507 m!643263))

(declare-fun m!643265 () Bool)

(assert (=> b!676513 m!643265))

(declare-fun m!643267 () Bool)

(assert (=> b!676501 m!643267))

(assert (=> b!676501 m!643267))

(declare-fun m!643269 () Bool)

(assert (=> b!676501 m!643269))

(assert (=> b!676499 m!643263))

(declare-fun m!643271 () Bool)

(assert (=> b!676497 m!643271))

(declare-fun m!643273 () Bool)

(assert (=> b!676511 m!643273))

(declare-fun m!643275 () Bool)

(assert (=> b!676503 m!643275))

(declare-fun m!643277 () Bool)

(assert (=> start!60312 m!643277))

(assert (=> b!676514 m!643263))

(assert (=> b!676506 m!643263))

(declare-fun m!643279 () Bool)

(assert (=> b!676512 m!643279))

(push 1)

(assert (not b!676514))

(assert (not b!676499))

(assert (not b!676507))

(assert (not b!676512))

(assert (not b!676497))

(assert (not b!676506))

(assert (not b!676511))

(assert (not start!60312))

(assert (not b!676503))

(assert (not b!676504))

(assert (not b!676513))

(assert (not b!676501))

(assert (not b!676498))

(assert (not b!676505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

