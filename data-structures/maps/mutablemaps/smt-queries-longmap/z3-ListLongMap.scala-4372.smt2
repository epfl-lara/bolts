; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60278 () Bool)

(assert start!60278)

(declare-fun b!675475 () Bool)

(declare-fun e!385369 () Bool)

(assert (=> b!675475 (= e!385369 false)))

(declare-fun lt!312678 () Bool)

(declare-datatypes ((array!39281 0))(
  ( (array!39282 (arr!18829 (Array (_ BitVec 32) (_ BitVec 64))) (size!19193 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39281)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12923 0))(
  ( (Nil!12920) (Cons!12919 (h!13964 (_ BitVec 64)) (t!19159 List!12923)) )
))
(declare-fun acc!681 () List!12923)

(declare-fun arrayNoDuplicates!0 (array!39281 (_ BitVec 32) List!12923) Bool)

(assert (=> b!675475 (= lt!312678 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675476 () Bool)

(declare-fun e!385370 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3466 (List!12923 (_ BitVec 64)) Bool)

(assert (=> b!675476 (= e!385370 (not (contains!3466 acc!681 k0!2843)))))

(declare-fun b!675478 () Bool)

(declare-fun res!442086 () Bool)

(assert (=> b!675478 (=> (not res!442086) (not e!385369))))

(declare-fun noDuplicate!713 (List!12923) Bool)

(assert (=> b!675478 (= res!442086 (noDuplicate!713 acc!681))))

(declare-fun b!675479 () Bool)

(declare-fun e!385371 () Bool)

(declare-fun e!385375 () Bool)

(assert (=> b!675479 (= e!385371 e!385375)))

(declare-fun res!442075 () Bool)

(assert (=> b!675479 (=> (not res!442075) (not e!385375))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675479 (= res!442075 (bvsle from!3004 i!1382))))

(declare-fun b!675480 () Bool)

(declare-fun res!442094 () Bool)

(assert (=> b!675480 (=> (not res!442094) (not e!385369))))

(assert (=> b!675480 (= res!442094 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19193 a!3626))))))

(declare-fun b!675481 () Bool)

(declare-fun res!442081 () Bool)

(assert (=> b!675481 (=> (not res!442081) (not e!385369))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675481 (= res!442081 (not (validKeyInArray!0 (select (arr!18829 a!3626) from!3004))))))

(declare-fun b!675482 () Bool)

(declare-fun res!442089 () Bool)

(assert (=> b!675482 (=> (not res!442089) (not e!385369))))

(assert (=> b!675482 (= res!442089 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19193 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675483 () Bool)

(declare-fun res!442077 () Bool)

(assert (=> b!675483 (=> (not res!442077) (not e!385369))))

(assert (=> b!675483 (= res!442077 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun res!442088 () Bool)

(assert (=> start!60278 (=> (not res!442088) (not e!385369))))

(assert (=> start!60278 (= res!442088 (and (bvslt (size!19193 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19193 a!3626))))))

(assert (=> start!60278 e!385369))

(assert (=> start!60278 true))

(declare-fun array_inv!14603 (array!39281) Bool)

(assert (=> start!60278 (array_inv!14603 a!3626)))

(declare-fun b!675477 () Bool)

(declare-fun res!442080 () Bool)

(assert (=> b!675477 (=> (not res!442080) (not e!385369))))

(declare-fun e!385374 () Bool)

(assert (=> b!675477 (= res!442080 e!385374)))

(declare-fun res!442076 () Bool)

(assert (=> b!675477 (=> res!442076 e!385374)))

(declare-fun e!385368 () Bool)

(assert (=> b!675477 (= res!442076 e!385368)))

(declare-fun res!442082 () Bool)

(assert (=> b!675477 (=> (not res!442082) (not e!385368))))

(assert (=> b!675477 (= res!442082 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675484 () Bool)

(declare-fun res!442092 () Bool)

(assert (=> b!675484 (=> (not res!442092) (not e!385369))))

(assert (=> b!675484 (= res!442092 (not (contains!3466 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675485 () Bool)

(assert (=> b!675485 (= e!385368 (contains!3466 acc!681 k0!2843))))

(declare-fun b!675486 () Bool)

(declare-fun res!442087 () Bool)

(assert (=> b!675486 (=> (not res!442087) (not e!385369))))

(assert (=> b!675486 (= res!442087 e!385371)))

(declare-fun res!442090 () Bool)

(assert (=> b!675486 (=> res!442090 e!385371)))

(declare-fun e!385372 () Bool)

(assert (=> b!675486 (= res!442090 e!385372)))

(declare-fun res!442093 () Bool)

(assert (=> b!675486 (=> (not res!442093) (not e!385372))))

(assert (=> b!675486 (= res!442093 (bvsgt from!3004 i!1382))))

(declare-fun b!675487 () Bool)

(assert (=> b!675487 (= e!385372 (contains!3466 acc!681 k0!2843))))

(declare-fun b!675488 () Bool)

(declare-fun res!442085 () Bool)

(assert (=> b!675488 (=> (not res!442085) (not e!385369))))

(assert (=> b!675488 (= res!442085 (not (contains!3466 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675489 () Bool)

(assert (=> b!675489 (= e!385375 (not (contains!3466 acc!681 k0!2843)))))

(declare-fun b!675490 () Bool)

(declare-fun res!442078 () Bool)

(assert (=> b!675490 (=> (not res!442078) (not e!385369))))

(assert (=> b!675490 (= res!442078 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675491 () Bool)

(assert (=> b!675491 (= e!385374 e!385370)))

(declare-fun res!442091 () Bool)

(assert (=> b!675491 (=> (not res!442091) (not e!385370))))

(assert (=> b!675491 (= res!442091 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675492 () Bool)

(declare-fun res!442079 () Bool)

(assert (=> b!675492 (=> (not res!442079) (not e!385369))))

(assert (=> b!675492 (= res!442079 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12920))))

(declare-fun b!675493 () Bool)

(declare-fun res!442084 () Bool)

(assert (=> b!675493 (=> (not res!442084) (not e!385369))))

(declare-fun arrayContainsKey!0 (array!39281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675493 (= res!442084 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675494 () Bool)

(declare-fun res!442083 () Bool)

(assert (=> b!675494 (=> (not res!442083) (not e!385369))))

(assert (=> b!675494 (= res!442083 (validKeyInArray!0 k0!2843))))

(assert (= (and start!60278 res!442088) b!675478))

(assert (= (and b!675478 res!442086) b!675488))

(assert (= (and b!675488 res!442085) b!675484))

(assert (= (and b!675484 res!442092) b!675486))

(assert (= (and b!675486 res!442093) b!675487))

(assert (= (and b!675486 (not res!442090)) b!675479))

(assert (= (and b!675479 res!442075) b!675489))

(assert (= (and b!675486 res!442087) b!675492))

(assert (= (and b!675492 res!442079) b!675490))

(assert (= (and b!675490 res!442078) b!675480))

(assert (= (and b!675480 res!442094) b!675494))

(assert (= (and b!675494 res!442083) b!675493))

(assert (= (and b!675493 res!442084) b!675482))

(assert (= (and b!675482 res!442089) b!675481))

(assert (= (and b!675481 res!442081) b!675483))

(assert (= (and b!675483 res!442077) b!675477))

(assert (= (and b!675477 res!442082) b!675485))

(assert (= (and b!675477 (not res!442076)) b!675491))

(assert (= (and b!675491 res!442091) b!675476))

(assert (= (and b!675477 res!442080) b!675475))

(declare-fun m!642849 () Bool)

(assert (=> b!675489 m!642849))

(declare-fun m!642851 () Bool)

(assert (=> b!675488 m!642851))

(assert (=> b!675485 m!642849))

(assert (=> b!675476 m!642849))

(declare-fun m!642853 () Bool)

(assert (=> b!675490 m!642853))

(declare-fun m!642855 () Bool)

(assert (=> b!675484 m!642855))

(declare-fun m!642857 () Bool)

(assert (=> b!675492 m!642857))

(declare-fun m!642859 () Bool)

(assert (=> start!60278 m!642859))

(declare-fun m!642861 () Bool)

(assert (=> b!675475 m!642861))

(declare-fun m!642863 () Bool)

(assert (=> b!675494 m!642863))

(declare-fun m!642865 () Bool)

(assert (=> b!675481 m!642865))

(assert (=> b!675481 m!642865))

(declare-fun m!642867 () Bool)

(assert (=> b!675481 m!642867))

(assert (=> b!675487 m!642849))

(declare-fun m!642869 () Bool)

(assert (=> b!675493 m!642869))

(declare-fun m!642871 () Bool)

(assert (=> b!675478 m!642871))

(check-sat (not start!60278) (not b!675476) (not b!675487) (not b!675489) (not b!675475) (not b!675493) (not b!675481) (not b!675485) (not b!675490) (not b!675488) (not b!675484) (not b!675478) (not b!675494) (not b!675492))
(check-sat)
