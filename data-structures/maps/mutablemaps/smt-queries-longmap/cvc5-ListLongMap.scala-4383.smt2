; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60342 () Bool)

(assert start!60342)

(declare-fun b!677424 () Bool)

(declare-fun e!386141 () Bool)

(declare-datatypes ((List!12955 0))(
  ( (Nil!12952) (Cons!12951 (h!13996 (_ BitVec 64)) (t!19191 List!12955)) )
))
(declare-fun acc!681 () List!12955)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3498 (List!12955 (_ BitVec 64)) Bool)

(assert (=> b!677424 (= e!386141 (not (contains!3498 acc!681 k!2843)))))

(declare-fun b!677425 () Bool)

(declare-fun res!444026 () Bool)

(declare-fun e!386140 () Bool)

(assert (=> b!677425 (=> (not res!444026) (not e!386140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677425 (= res!444026 (validKeyInArray!0 k!2843))))

(declare-fun b!677426 () Bool)

(declare-fun e!386137 () Bool)

(assert (=> b!677426 (= e!386137 (contains!3498 acc!681 k!2843))))

(declare-fun b!677427 () Bool)

(declare-fun res!444039 () Bool)

(assert (=> b!677427 (=> (not res!444039) (not e!386140))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39345 0))(
  ( (array!39346 (arr!18861 (Array (_ BitVec 32) (_ BitVec 64))) (size!19225 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39345)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!677427 (= res!444039 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19225 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677428 () Bool)

(declare-fun e!386136 () Bool)

(assert (=> b!677428 (= e!386136 (contains!3498 acc!681 k!2843))))

(declare-fun res!444029 () Bool)

(assert (=> start!60342 (=> (not res!444029) (not e!386140))))

(assert (=> start!60342 (= res!444029 (and (bvslt (size!19225 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19225 a!3626))))))

(assert (=> start!60342 e!386140))

(assert (=> start!60342 true))

(declare-fun array_inv!14635 (array!39345) Bool)

(assert (=> start!60342 (array_inv!14635 a!3626)))

(declare-fun b!677429 () Bool)

(declare-fun res!444044 () Bool)

(assert (=> b!677429 (=> (not res!444044) (not e!386140))))

(declare-fun arrayNoDuplicates!0 (array!39345 (_ BitVec 32) List!12955) Bool)

(assert (=> b!677429 (= res!444044 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12952))))

(declare-fun b!677430 () Bool)

(declare-fun res!444028 () Bool)

(assert (=> b!677430 (=> (not res!444028) (not e!386140))))

(assert (=> b!677430 (= res!444028 (not (validKeyInArray!0 (select (arr!18861 a!3626) from!3004))))))

(declare-fun b!677431 () Bool)

(declare-fun res!444031 () Bool)

(assert (=> b!677431 (=> (not res!444031) (not e!386140))))

(assert (=> b!677431 (= res!444031 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677432 () Bool)

(declare-fun res!444032 () Bool)

(assert (=> b!677432 (=> (not res!444032) (not e!386140))))

(declare-fun e!386139 () Bool)

(assert (=> b!677432 (= res!444032 e!386139)))

(declare-fun res!444030 () Bool)

(assert (=> b!677432 (=> res!444030 e!386139)))

(assert (=> b!677432 (= res!444030 e!386137)))

(declare-fun res!444040 () Bool)

(assert (=> b!677432 (=> (not res!444040) (not e!386137))))

(assert (=> b!677432 (= res!444040 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677433 () Bool)

(declare-fun res!444027 () Bool)

(assert (=> b!677433 (=> (not res!444027) (not e!386140))))

(assert (=> b!677433 (= res!444027 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19225 a!3626))))))

(declare-fun b!677434 () Bool)

(declare-fun res!444041 () Bool)

(assert (=> b!677434 (=> (not res!444041) (not e!386140))))

(declare-fun arrayContainsKey!0 (array!39345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677434 (= res!444041 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677435 () Bool)

(declare-fun e!386138 () Bool)

(assert (=> b!677435 (= e!386138 (not (contains!3498 acc!681 k!2843)))))

(declare-fun b!677436 () Bool)

(declare-fun res!444033 () Bool)

(assert (=> b!677436 (=> (not res!444033) (not e!386140))))

(declare-fun noDuplicate!745 (List!12955) Bool)

(assert (=> b!677436 (= res!444033 (noDuplicate!745 acc!681))))

(declare-fun b!677437 () Bool)

(declare-fun res!444043 () Bool)

(assert (=> b!677437 (=> (not res!444043) (not e!386140))))

(assert (=> b!677437 (= res!444043 (not (contains!3498 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677438 () Bool)

(assert (=> b!677438 (= e!386140 (not true))))

(assert (=> b!677438 (arrayNoDuplicates!0 (array!39346 (store (arr!18861 a!3626) i!1382 k!2843) (size!19225 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23758 0))(
  ( (Unit!23759) )
))
(declare-fun lt!312774 () Unit!23758)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39345 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12955) Unit!23758)

(assert (=> b!677438 (= lt!312774 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677439 () Bool)

(assert (=> b!677439 (= e!386139 e!386138)))

(declare-fun res!444042 () Bool)

(assert (=> b!677439 (=> (not res!444042) (not e!386138))))

(assert (=> b!677439 (= res!444042 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677440 () Bool)

(declare-fun res!444038 () Bool)

(assert (=> b!677440 (=> (not res!444038) (not e!386140))))

(assert (=> b!677440 (= res!444038 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677441 () Bool)

(declare-fun res!444036 () Bool)

(assert (=> b!677441 (=> (not res!444036) (not e!386140))))

(declare-fun e!386142 () Bool)

(assert (=> b!677441 (= res!444036 e!386142)))

(declare-fun res!444034 () Bool)

(assert (=> b!677441 (=> res!444034 e!386142)))

(assert (=> b!677441 (= res!444034 e!386136)))

(declare-fun res!444024 () Bool)

(assert (=> b!677441 (=> (not res!444024) (not e!386136))))

(assert (=> b!677441 (= res!444024 (bvsgt from!3004 i!1382))))

(declare-fun b!677442 () Bool)

(assert (=> b!677442 (= e!386142 e!386141)))

(declare-fun res!444037 () Bool)

(assert (=> b!677442 (=> (not res!444037) (not e!386141))))

(assert (=> b!677442 (= res!444037 (bvsle from!3004 i!1382))))

(declare-fun b!677443 () Bool)

(declare-fun res!444025 () Bool)

(assert (=> b!677443 (=> (not res!444025) (not e!386140))))

(assert (=> b!677443 (= res!444025 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677444 () Bool)

(declare-fun res!444035 () Bool)

(assert (=> b!677444 (=> (not res!444035) (not e!386140))))

(assert (=> b!677444 (= res!444035 (not (contains!3498 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60342 res!444029) b!677436))

(assert (= (and b!677436 res!444033) b!677444))

(assert (= (and b!677444 res!444035) b!677437))

(assert (= (and b!677437 res!444043) b!677441))

(assert (= (and b!677441 res!444024) b!677428))

(assert (= (and b!677441 (not res!444034)) b!677442))

(assert (= (and b!677442 res!444037) b!677424))

(assert (= (and b!677441 res!444036) b!677429))

(assert (= (and b!677429 res!444044) b!677443))

(assert (= (and b!677443 res!444025) b!677433))

(assert (= (and b!677433 res!444027) b!677425))

(assert (= (and b!677425 res!444026) b!677434))

(assert (= (and b!677434 res!444041) b!677427))

(assert (= (and b!677427 res!444039) b!677430))

(assert (= (and b!677430 res!444028) b!677431))

(assert (= (and b!677431 res!444031) b!677432))

(assert (= (and b!677432 res!444040) b!677426))

(assert (= (and b!677432 (not res!444030)) b!677439))

(assert (= (and b!677439 res!444042) b!677435))

(assert (= (and b!677432 res!444032) b!677440))

(assert (= (and b!677440 res!444038) b!677438))

(declare-fun m!643671 () Bool)

(assert (=> b!677430 m!643671))

(assert (=> b!677430 m!643671))

(declare-fun m!643673 () Bool)

(assert (=> b!677430 m!643673))

(declare-fun m!643675 () Bool)

(assert (=> b!677437 m!643675))

(declare-fun m!643677 () Bool)

(assert (=> b!677438 m!643677))

(declare-fun m!643679 () Bool)

(assert (=> b!677438 m!643679))

(declare-fun m!643681 () Bool)

(assert (=> b!677438 m!643681))

(declare-fun m!643683 () Bool)

(assert (=> b!677425 m!643683))

(declare-fun m!643685 () Bool)

(assert (=> b!677435 m!643685))

(declare-fun m!643687 () Bool)

(assert (=> b!677436 m!643687))

(declare-fun m!643689 () Bool)

(assert (=> start!60342 m!643689))

(declare-fun m!643691 () Bool)

(assert (=> b!677444 m!643691))

(declare-fun m!643693 () Bool)

(assert (=> b!677440 m!643693))

(declare-fun m!643695 () Bool)

(assert (=> b!677429 m!643695))

(assert (=> b!677424 m!643685))

(declare-fun m!643697 () Bool)

(assert (=> b!677443 m!643697))

(assert (=> b!677428 m!643685))

(declare-fun m!643699 () Bool)

(assert (=> b!677434 m!643699))

(assert (=> b!677426 m!643685))

(push 1)

(assert (not b!677437))

(assert (not start!60342))

(assert (not b!677428))

(assert (not b!677435))

(assert (not b!677429))

(assert (not b!677434))

(assert (not b!677426))

(assert (not b!677425))

(assert (not b!677424))

(assert (not b!677444))

(assert (not b!677438))

(assert (not b!677436))

(assert (not b!677443))

(assert (not b!677440))

(assert (not b!677430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

