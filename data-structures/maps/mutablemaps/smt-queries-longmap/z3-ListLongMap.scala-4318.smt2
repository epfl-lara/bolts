; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59954 () Bool)

(assert start!59954)

(declare-fun b!664034 () Bool)

(declare-fun e!380861 () Bool)

(declare-fun e!380863 () Bool)

(assert (=> b!664034 (= e!380861 (not e!380863))))

(declare-fun res!431928 () Bool)

(assert (=> b!664034 (=> res!431928 e!380863)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!664034 (= res!431928 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12761 0))(
  ( (Nil!12758) (Cons!12757 (h!13802 (_ BitVec 64)) (t!18997 List!12761)) )
))
(declare-fun lt!309485 () List!12761)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!12761)

(declare-fun -!40 (List!12761 (_ BitVec 64)) List!12761)

(assert (=> b!664034 (= (-!40 lt!309485 k0!2843) acc!681)))

(declare-fun $colon$colon!173 (List!12761 (_ BitVec 64)) List!12761)

(assert (=> b!664034 (= lt!309485 ($colon$colon!173 acc!681 k0!2843))))

(declare-datatypes ((Unit!23130 0))(
  ( (Unit!23131) )
))
(declare-fun lt!309488 () Unit!23130)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12761) Unit!23130)

(assert (=> b!664034 (= lt!309488 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!42 (List!12761 List!12761) Bool)

(assert (=> b!664034 (subseq!42 acc!681 acc!681)))

(declare-fun lt!309483 () Unit!23130)

(declare-fun lemmaListSubSeqRefl!0 (List!12761) Unit!23130)

(assert (=> b!664034 (= lt!309483 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!38957 0))(
  ( (array!38958 (arr!18667 (Array (_ BitVec 32) (_ BitVec 64))) (size!19031 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38957)

(declare-fun arrayNoDuplicates!0 (array!38957 (_ BitVec 32) List!12761) Bool)

(assert (=> b!664034 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309491 () Unit!23130)

(declare-fun e!380859 () Unit!23130)

(assert (=> b!664034 (= lt!309491 e!380859)))

(declare-fun c!76420 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664034 (= c!76420 (validKeyInArray!0 (select (arr!18667 a!3626) from!3004)))))

(declare-fun lt!309490 () Unit!23130)

(declare-fun e!380860 () Unit!23130)

(assert (=> b!664034 (= lt!309490 e!380860)))

(declare-fun c!76421 () Bool)

(declare-fun lt!309487 () Bool)

(assert (=> b!664034 (= c!76421 lt!309487)))

(declare-fun arrayContainsKey!0 (array!38957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664034 (= lt!309487 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664034 (arrayContainsKey!0 (array!38958 (store (arr!18667 a!3626) i!1382 k0!2843) (size!19031 a!3626)) k0!2843 from!3004)))

(declare-fun b!664035 () Bool)

(declare-fun e!380866 () Bool)

(declare-fun contains!3304 (List!12761 (_ BitVec 64)) Bool)

(assert (=> b!664035 (= e!380866 (not (contains!3304 acc!681 k0!2843)))))

(declare-fun b!664036 () Bool)

(declare-fun res!431946 () Bool)

(assert (=> b!664036 (=> (not res!431946) (not e!380861))))

(assert (=> b!664036 (= res!431946 (not (contains!3304 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664037 () Bool)

(declare-fun res!431929 () Bool)

(assert (=> b!664037 (=> (not res!431929) (not e!380861))))

(assert (=> b!664037 (= res!431929 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19031 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664038 () Bool)

(declare-fun res!431930 () Bool)

(assert (=> b!664038 (=> res!431930 e!380863)))

(declare-fun noDuplicate!551 (List!12761) Bool)

(assert (=> b!664038 (= res!431930 (not (noDuplicate!551 lt!309485)))))

(declare-fun b!664040 () Bool)

(declare-fun res!431938 () Bool)

(assert (=> b!664040 (=> res!431938 e!380863)))

(assert (=> b!664040 (= res!431938 (not (contains!3304 lt!309485 k0!2843)))))

(declare-fun b!664041 () Bool)

(declare-fun res!431937 () Bool)

(assert (=> b!664041 (=> (not res!431937) (not e!380861))))

(assert (=> b!664041 (= res!431937 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664042 () Bool)

(declare-fun res!431936 () Bool)

(assert (=> b!664042 (=> (not res!431936) (not e!380861))))

(declare-fun e!380865 () Bool)

(assert (=> b!664042 (= res!431936 e!380865)))

(declare-fun res!431943 () Bool)

(assert (=> b!664042 (=> res!431943 e!380865)))

(declare-fun e!380862 () Bool)

(assert (=> b!664042 (= res!431943 e!380862)))

(declare-fun res!431942 () Bool)

(assert (=> b!664042 (=> (not res!431942) (not e!380862))))

(assert (=> b!664042 (= res!431942 (bvsgt from!3004 i!1382))))

(declare-fun b!664043 () Bool)

(declare-fun res!431934 () Bool)

(assert (=> b!664043 (=> res!431934 e!380863)))

(assert (=> b!664043 (= res!431934 lt!309487)))

(declare-fun b!664044 () Bool)

(declare-fun lt!309486 () Unit!23130)

(assert (=> b!664044 (= e!380859 lt!309486)))

(declare-fun lt!309489 () Unit!23130)

(assert (=> b!664044 (= lt!309489 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664044 (subseq!42 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38957 List!12761 List!12761 (_ BitVec 32)) Unit!23130)

(assert (=> b!664044 (= lt!309486 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!173 acc!681 (select (arr!18667 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664044 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664045 () Bool)

(declare-fun res!431940 () Bool)

(assert (=> b!664045 (=> res!431940 e!380863)))

(assert (=> b!664045 (= res!431940 (not (subseq!42 acc!681 lt!309485)))))

(declare-fun b!664046 () Bool)

(declare-fun res!431948 () Bool)

(assert (=> b!664046 (=> (not res!431948) (not e!380861))))

(assert (=> b!664046 (= res!431948 (not (contains!3304 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664047 () Bool)

(declare-fun Unit!23132 () Unit!23130)

(assert (=> b!664047 (= e!380860 Unit!23132)))

(declare-fun b!664048 () Bool)

(declare-fun res!431939 () Bool)

(assert (=> b!664048 (=> (not res!431939) (not e!380861))))

(assert (=> b!664048 (= res!431939 (validKeyInArray!0 k0!2843))))

(declare-fun b!664049 () Bool)

(declare-fun res!431931 () Bool)

(assert (=> b!664049 (=> (not res!431931) (not e!380861))))

(assert (=> b!664049 (= res!431931 (noDuplicate!551 acc!681))))

(declare-fun b!664050 () Bool)

(declare-fun res!431947 () Bool)

(assert (=> b!664050 (=> (not res!431947) (not e!380861))))

(assert (=> b!664050 (= res!431947 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664051 () Bool)

(declare-fun Unit!23133 () Unit!23130)

(assert (=> b!664051 (= e!380860 Unit!23133)))

(declare-fun lt!309492 () Unit!23130)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38957 (_ BitVec 64) (_ BitVec 32)) Unit!23130)

(assert (=> b!664051 (= lt!309492 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!664051 false))

(declare-fun b!664052 () Bool)

(assert (=> b!664052 (= e!380865 e!380866)))

(declare-fun res!431935 () Bool)

(assert (=> b!664052 (=> (not res!431935) (not e!380866))))

(assert (=> b!664052 (= res!431935 (bvsle from!3004 i!1382))))

(declare-fun b!664053 () Bool)

(declare-fun Unit!23134 () Unit!23130)

(assert (=> b!664053 (= e!380859 Unit!23134)))

(declare-fun b!664039 () Bool)

(declare-fun res!431932 () Bool)

(assert (=> b!664039 (=> (not res!431932) (not e!380861))))

(assert (=> b!664039 (= res!431932 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19031 a!3626))))))

(declare-fun res!431945 () Bool)

(assert (=> start!59954 (=> (not res!431945) (not e!380861))))

(assert (=> start!59954 (= res!431945 (and (bvslt (size!19031 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19031 a!3626))))))

(assert (=> start!59954 e!380861))

(assert (=> start!59954 true))

(declare-fun array_inv!14441 (array!38957) Bool)

(assert (=> start!59954 (array_inv!14441 a!3626)))

(declare-fun b!664054 () Bool)

(declare-fun res!431941 () Bool)

(assert (=> b!664054 (=> res!431941 e!380863)))

(assert (=> b!664054 (= res!431941 (contains!3304 acc!681 k0!2843))))

(declare-fun b!664055 () Bool)

(assert (=> b!664055 (= e!380863 true)))

(declare-fun lt!309484 () Bool)

(assert (=> b!664055 (= lt!309484 (contains!3304 lt!309485 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664056 () Bool)

(declare-fun res!431944 () Bool)

(assert (=> b!664056 (=> res!431944 e!380863)))

(assert (=> b!664056 (= res!431944 (contains!3304 lt!309485 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664057 () Bool)

(declare-fun res!431933 () Bool)

(assert (=> b!664057 (=> (not res!431933) (not e!380861))))

(assert (=> b!664057 (= res!431933 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12758))))

(declare-fun b!664058 () Bool)

(assert (=> b!664058 (= e!380862 (contains!3304 acc!681 k0!2843))))

(assert (= (and start!59954 res!431945) b!664049))

(assert (= (and b!664049 res!431931) b!664046))

(assert (= (and b!664046 res!431948) b!664036))

(assert (= (and b!664036 res!431946) b!664042))

(assert (= (and b!664042 res!431942) b!664058))

(assert (= (and b!664042 (not res!431943)) b!664052))

(assert (= (and b!664052 res!431935) b!664035))

(assert (= (and b!664042 res!431936) b!664057))

(assert (= (and b!664057 res!431933) b!664041))

(assert (= (and b!664041 res!431937) b!664039))

(assert (= (and b!664039 res!431932) b!664048))

(assert (= (and b!664048 res!431939) b!664050))

(assert (= (and b!664050 res!431947) b!664037))

(assert (= (and b!664037 res!431929) b!664034))

(assert (= (and b!664034 c!76421) b!664051))

(assert (= (and b!664034 (not c!76421)) b!664047))

(assert (= (and b!664034 c!76420) b!664044))

(assert (= (and b!664034 (not c!76420)) b!664053))

(assert (= (and b!664034 (not res!431928)) b!664038))

(assert (= (and b!664038 (not res!431930)) b!664043))

(assert (= (and b!664043 (not res!431934)) b!664054))

(assert (= (and b!664054 (not res!431941)) b!664045))

(assert (= (and b!664045 (not res!431940)) b!664040))

(assert (= (and b!664040 (not res!431938)) b!664056))

(assert (= (and b!664056 (not res!431944)) b!664055))

(declare-fun m!635459 () Bool)

(assert (=> b!664035 m!635459))

(declare-fun m!635461 () Bool)

(assert (=> b!664034 m!635461))

(declare-fun m!635463 () Bool)

(assert (=> b!664034 m!635463))

(declare-fun m!635465 () Bool)

(assert (=> b!664034 m!635465))

(declare-fun m!635467 () Bool)

(assert (=> b!664034 m!635467))

(declare-fun m!635469 () Bool)

(assert (=> b!664034 m!635469))

(declare-fun m!635471 () Bool)

(assert (=> b!664034 m!635471))

(declare-fun m!635473 () Bool)

(assert (=> b!664034 m!635473))

(declare-fun m!635475 () Bool)

(assert (=> b!664034 m!635475))

(assert (=> b!664034 m!635465))

(declare-fun m!635477 () Bool)

(assert (=> b!664034 m!635477))

(declare-fun m!635479 () Bool)

(assert (=> b!664034 m!635479))

(declare-fun m!635481 () Bool)

(assert (=> b!664034 m!635481))

(declare-fun m!635483 () Bool)

(assert (=> b!664056 m!635483))

(declare-fun m!635485 () Bool)

(assert (=> b!664036 m!635485))

(declare-fun m!635487 () Bool)

(assert (=> b!664055 m!635487))

(declare-fun m!635489 () Bool)

(assert (=> b!664057 m!635489))

(assert (=> b!664054 m!635459))

(declare-fun m!635491 () Bool)

(assert (=> b!664050 m!635491))

(assert (=> b!664044 m!635463))

(assert (=> b!664044 m!635465))

(declare-fun m!635493 () Bool)

(assert (=> b!664044 m!635493))

(declare-fun m!635495 () Bool)

(assert (=> b!664044 m!635495))

(assert (=> b!664044 m!635465))

(assert (=> b!664044 m!635493))

(assert (=> b!664044 m!635471))

(assert (=> b!664044 m!635481))

(declare-fun m!635497 () Bool)

(assert (=> b!664038 m!635497))

(declare-fun m!635499 () Bool)

(assert (=> b!664051 m!635499))

(declare-fun m!635501 () Bool)

(assert (=> b!664040 m!635501))

(declare-fun m!635503 () Bool)

(assert (=> b!664049 m!635503))

(declare-fun m!635505 () Bool)

(assert (=> start!59954 m!635505))

(declare-fun m!635507 () Bool)

(assert (=> b!664048 m!635507))

(declare-fun m!635509 () Bool)

(assert (=> b!664046 m!635509))

(assert (=> b!664058 m!635459))

(declare-fun m!635511 () Bool)

(assert (=> b!664041 m!635511))

(declare-fun m!635513 () Bool)

(assert (=> b!664045 m!635513))

(check-sat (not b!664040) (not b!664034) (not b!664055) (not b!664041) (not b!664036) (not b!664054) (not b!664056) (not b!664058) (not b!664045) (not b!664049) (not b!664057) (not b!664051) (not b!664050) (not b!664038) (not b!664046) (not b!664044) (not b!664048) (not start!59954) (not b!664035))
(check-sat)
