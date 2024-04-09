; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60344 () Bool)

(assert start!60344)

(declare-fun b!677487 () Bool)

(declare-fun res!444101 () Bool)

(declare-fun e!386162 () Bool)

(assert (=> b!677487 (=> (not res!444101) (not e!386162))))

(declare-datatypes ((List!12956 0))(
  ( (Nil!12953) (Cons!12952 (h!13997 (_ BitVec 64)) (t!19192 List!12956)) )
))
(declare-fun acc!681 () List!12956)

(declare-fun contains!3499 (List!12956 (_ BitVec 64)) Bool)

(assert (=> b!677487 (= res!444101 (not (contains!3499 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677488 () Bool)

(declare-fun res!444104 () Bool)

(assert (=> b!677488 (=> (not res!444104) (not e!386162))))

(declare-datatypes ((array!39347 0))(
  ( (array!39348 (arr!18862 (Array (_ BitVec 32) (_ BitVec 64))) (size!19226 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39347)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677488 (= res!444104 (not (validKeyInArray!0 (select (arr!18862 a!3626) from!3004))))))

(declare-fun b!677489 () Bool)

(declare-fun res!444087 () Bool)

(assert (=> b!677489 (=> (not res!444087) (not e!386162))))

(declare-fun arrayNoDuplicates!0 (array!39347 (_ BitVec 32) List!12956) Bool)

(assert (=> b!677489 (= res!444087 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12953))))

(declare-fun b!677490 () Bool)

(declare-fun res!444097 () Bool)

(assert (=> b!677490 (=> (not res!444097) (not e!386162))))

(declare-fun e!386161 () Bool)

(assert (=> b!677490 (= res!444097 e!386161)))

(declare-fun res!444090 () Bool)

(assert (=> b!677490 (=> res!444090 e!386161)))

(declare-fun e!386163 () Bool)

(assert (=> b!677490 (= res!444090 e!386163)))

(declare-fun res!444088 () Bool)

(assert (=> b!677490 (=> (not res!444088) (not e!386163))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677490 (= res!444088 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677491 () Bool)

(declare-fun res!444105 () Bool)

(assert (=> b!677491 (=> (not res!444105) (not e!386162))))

(assert (=> b!677491 (= res!444105 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19226 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677493 () Bool)

(assert (=> b!677493 (= e!386162 (not true))))

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!677493 (arrayNoDuplicates!0 (array!39348 (store (arr!18862 a!3626) i!1382 k0!2843) (size!19226 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23760 0))(
  ( (Unit!23761) )
))
(declare-fun lt!312777 () Unit!23760)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39347 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12956) Unit!23760)

(assert (=> b!677493 (= lt!312777 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677494 () Bool)

(declare-fun res!444092 () Bool)

(assert (=> b!677494 (=> (not res!444092) (not e!386162))))

(assert (=> b!677494 (= res!444092 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677495 () Bool)

(declare-fun e!386160 () Bool)

(assert (=> b!677495 (= e!386160 (not (contains!3499 acc!681 k0!2843)))))

(declare-fun b!677496 () Bool)

(declare-fun res!444094 () Bool)

(assert (=> b!677496 (=> (not res!444094) (not e!386162))))

(assert (=> b!677496 (= res!444094 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677497 () Bool)

(assert (=> b!677497 (= e!386161 e!386160)))

(declare-fun res!444102 () Bool)

(assert (=> b!677497 (=> (not res!444102) (not e!386160))))

(assert (=> b!677497 (= res!444102 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677498 () Bool)

(declare-fun res!444093 () Bool)

(assert (=> b!677498 (=> (not res!444093) (not e!386162))))

(assert (=> b!677498 (= res!444093 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19226 a!3626))))))

(declare-fun b!677499 () Bool)

(declare-fun res!444089 () Bool)

(assert (=> b!677499 (=> (not res!444089) (not e!386162))))

(declare-fun noDuplicate!746 (List!12956) Bool)

(assert (=> b!677499 (= res!444089 (noDuplicate!746 acc!681))))

(declare-fun b!677500 () Bool)

(declare-fun res!444106 () Bool)

(assert (=> b!677500 (=> (not res!444106) (not e!386162))))

(assert (=> b!677500 (= res!444106 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677501 () Bool)

(declare-fun res!444099 () Bool)

(assert (=> b!677501 (=> (not res!444099) (not e!386162))))

(assert (=> b!677501 (= res!444099 (not (contains!3499 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677502 () Bool)

(declare-fun e!386164 () Bool)

(assert (=> b!677502 (= e!386164 (contains!3499 acc!681 k0!2843))))

(declare-fun b!677503 () Bool)

(declare-fun res!444095 () Bool)

(assert (=> b!677503 (=> (not res!444095) (not e!386162))))

(declare-fun e!386166 () Bool)

(assert (=> b!677503 (= res!444095 e!386166)))

(declare-fun res!444091 () Bool)

(assert (=> b!677503 (=> res!444091 e!386166)))

(assert (=> b!677503 (= res!444091 e!386164)))

(declare-fun res!444100 () Bool)

(assert (=> b!677503 (=> (not res!444100) (not e!386164))))

(assert (=> b!677503 (= res!444100 (bvsgt from!3004 i!1382))))

(declare-fun res!444107 () Bool)

(assert (=> start!60344 (=> (not res!444107) (not e!386162))))

(assert (=> start!60344 (= res!444107 (and (bvslt (size!19226 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19226 a!3626))))))

(assert (=> start!60344 e!386162))

(assert (=> start!60344 true))

(declare-fun array_inv!14636 (array!39347) Bool)

(assert (=> start!60344 (array_inv!14636 a!3626)))

(declare-fun b!677492 () Bool)

(declare-fun e!386167 () Bool)

(assert (=> b!677492 (= e!386166 e!386167)))

(declare-fun res!444098 () Bool)

(assert (=> b!677492 (=> (not res!444098) (not e!386167))))

(assert (=> b!677492 (= res!444098 (bvsle from!3004 i!1382))))

(declare-fun b!677504 () Bool)

(assert (=> b!677504 (= e!386167 (not (contains!3499 acc!681 k0!2843)))))

(declare-fun b!677505 () Bool)

(assert (=> b!677505 (= e!386163 (contains!3499 acc!681 k0!2843))))

(declare-fun b!677506 () Bool)

(declare-fun res!444096 () Bool)

(assert (=> b!677506 (=> (not res!444096) (not e!386162))))

(declare-fun arrayContainsKey!0 (array!39347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677506 (= res!444096 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677507 () Bool)

(declare-fun res!444103 () Bool)

(assert (=> b!677507 (=> (not res!444103) (not e!386162))))

(assert (=> b!677507 (= res!444103 (validKeyInArray!0 k0!2843))))

(assert (= (and start!60344 res!444107) b!677499))

(assert (= (and b!677499 res!444089) b!677487))

(assert (= (and b!677487 res!444101) b!677501))

(assert (= (and b!677501 res!444099) b!677503))

(assert (= (and b!677503 res!444100) b!677502))

(assert (= (and b!677503 (not res!444091)) b!677492))

(assert (= (and b!677492 res!444098) b!677504))

(assert (= (and b!677503 res!444095) b!677489))

(assert (= (and b!677489 res!444087) b!677496))

(assert (= (and b!677496 res!444094) b!677498))

(assert (= (and b!677498 res!444093) b!677507))

(assert (= (and b!677507 res!444103) b!677506))

(assert (= (and b!677506 res!444096) b!677491))

(assert (= (and b!677491 res!444105) b!677488))

(assert (= (and b!677488 res!444104) b!677494))

(assert (= (and b!677494 res!444092) b!677490))

(assert (= (and b!677490 res!444088) b!677505))

(assert (= (and b!677490 (not res!444090)) b!677497))

(assert (= (and b!677497 res!444102) b!677495))

(assert (= (and b!677490 res!444097) b!677500))

(assert (= (and b!677500 res!444106) b!677493))

(declare-fun m!643701 () Bool)

(assert (=> b!677501 m!643701))

(declare-fun m!643703 () Bool)

(assert (=> b!677487 m!643703))

(declare-fun m!643705 () Bool)

(assert (=> b!677500 m!643705))

(declare-fun m!643707 () Bool)

(assert (=> b!677488 m!643707))

(assert (=> b!677488 m!643707))

(declare-fun m!643709 () Bool)

(assert (=> b!677488 m!643709))

(declare-fun m!643711 () Bool)

(assert (=> b!677507 m!643711))

(declare-fun m!643713 () Bool)

(assert (=> b!677499 m!643713))

(declare-fun m!643715 () Bool)

(assert (=> start!60344 m!643715))

(declare-fun m!643717 () Bool)

(assert (=> b!677504 m!643717))

(declare-fun m!643719 () Bool)

(assert (=> b!677506 m!643719))

(assert (=> b!677505 m!643717))

(declare-fun m!643721 () Bool)

(assert (=> b!677489 m!643721))

(assert (=> b!677495 m!643717))

(declare-fun m!643723 () Bool)

(assert (=> b!677493 m!643723))

(declare-fun m!643725 () Bool)

(assert (=> b!677493 m!643725))

(declare-fun m!643727 () Bool)

(assert (=> b!677493 m!643727))

(assert (=> b!677502 m!643717))

(declare-fun m!643729 () Bool)

(assert (=> b!677496 m!643729))

(check-sat (not b!677505) (not b!677488) (not b!677507) (not b!677504) (not b!677502) (not b!677501) (not b!677493) (not b!677499) (not b!677496) (not b!677495) (not b!677489) (not b!677487) (not b!677500) (not start!60344) (not b!677506))
(check-sat)
