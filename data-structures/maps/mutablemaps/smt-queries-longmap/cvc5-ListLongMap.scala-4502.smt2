; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62496 () Bool)

(assert start!62496)

(declare-fun res!466951 () Bool)

(declare-fun e!397467 () Bool)

(assert (=> start!62496 (=> (not res!466951) (not e!397467))))

(declare-datatypes ((array!40131 0))(
  ( (array!40132 (arr!19218 (Array (_ BitVec 32) (_ BitVec 64))) (size!19601 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40131)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62496 (= res!466951 (and (bvslt (size!19601 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19601 a!3591))))))

(assert (=> start!62496 e!397467))

(assert (=> start!62496 true))

(declare-fun array_inv!14992 (array!40131) Bool)

(assert (=> start!62496 (array_inv!14992 a!3591)))

(declare-fun b!702951 () Bool)

(declare-fun res!466938 () Bool)

(assert (=> b!702951 (=> (not res!466938) (not e!397467))))

(declare-datatypes ((List!13312 0))(
  ( (Nil!13309) (Cons!13308 (h!14353 (_ BitVec 64)) (t!19602 List!13312)) )
))
(declare-fun newAcc!49 () List!13312)

(declare-fun contains!3855 (List!13312 (_ BitVec 64)) Bool)

(assert (=> b!702951 (= res!466938 (not (contains!3855 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702952 () Bool)

(declare-fun res!466946 () Bool)

(assert (=> b!702952 (=> (not res!466946) (not e!397467))))

(assert (=> b!702952 (= res!466946 (not (contains!3855 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702953 () Bool)

(declare-fun res!466935 () Bool)

(assert (=> b!702953 (=> (not res!466935) (not e!397467))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!702953 (= res!466935 (contains!3855 newAcc!49 k!2824))))

(declare-fun b!702954 () Bool)

(declare-fun res!466949 () Bool)

(assert (=> b!702954 (=> (not res!466949) (not e!397467))))

(declare-fun noDuplicate!1102 (List!13312) Bool)

(assert (=> b!702954 (= res!466949 (noDuplicate!1102 newAcc!49))))

(declare-fun b!702955 () Bool)

(assert (=> b!702955 (= e!397467 false)))

(declare-fun acc!652 () List!13312)

(declare-fun lt!317715 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40131 (_ BitVec 32) List!13312) Bool)

(assert (=> b!702955 (= lt!317715 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!702956 () Bool)

(declare-fun res!466945 () Bool)

(assert (=> b!702956 (=> (not res!466945) (not e!397467))))

(declare-fun -!264 (List!13312 (_ BitVec 64)) List!13312)

(assert (=> b!702956 (= res!466945 (= (-!264 newAcc!49 k!2824) acc!652))))

(declare-fun b!702957 () Bool)

(declare-fun res!466942 () Bool)

(assert (=> b!702957 (=> (not res!466942) (not e!397467))))

(assert (=> b!702957 (= res!466942 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19601 a!3591)))))

(declare-fun b!702958 () Bool)

(declare-fun res!466940 () Bool)

(assert (=> b!702958 (=> (not res!466940) (not e!397467))))

(assert (=> b!702958 (= res!466940 (noDuplicate!1102 acc!652))))

(declare-fun b!702959 () Bool)

(declare-fun res!466944 () Bool)

(assert (=> b!702959 (=> (not res!466944) (not e!397467))))

(assert (=> b!702959 (= res!466944 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702960 () Bool)

(declare-fun res!466952 () Bool)

(assert (=> b!702960 (=> (not res!466952) (not e!397467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702960 (= res!466952 (not (validKeyInArray!0 (select (arr!19218 a!3591) from!2969))))))

(declare-fun b!702961 () Bool)

(declare-fun res!466943 () Bool)

(assert (=> b!702961 (=> (not res!466943) (not e!397467))))

(assert (=> b!702961 (= res!466943 (not (contains!3855 acc!652 k!2824)))))

(declare-fun b!702962 () Bool)

(declare-fun res!466947 () Bool)

(assert (=> b!702962 (=> (not res!466947) (not e!397467))))

(declare-fun arrayContainsKey!0 (array!40131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702962 (= res!466947 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702963 () Bool)

(declare-fun res!466936 () Bool)

(assert (=> b!702963 (=> (not res!466936) (not e!397467))))

(assert (=> b!702963 (= res!466936 (not (contains!3855 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702964 () Bool)

(declare-fun res!466950 () Bool)

(assert (=> b!702964 (=> (not res!466950) (not e!397467))))

(assert (=> b!702964 (= res!466950 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!702965 () Bool)

(declare-fun res!466941 () Bool)

(assert (=> b!702965 (=> (not res!466941) (not e!397467))))

(assert (=> b!702965 (= res!466941 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702966 () Bool)

(declare-fun res!466937 () Bool)

(assert (=> b!702966 (=> (not res!466937) (not e!397467))))

(assert (=> b!702966 (= res!466937 (validKeyInArray!0 k!2824))))

(declare-fun b!702967 () Bool)

(declare-fun res!466948 () Bool)

(assert (=> b!702967 (=> (not res!466948) (not e!397467))))

(assert (=> b!702967 (= res!466948 (not (contains!3855 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702968 () Bool)

(declare-fun res!466939 () Bool)

(assert (=> b!702968 (=> (not res!466939) (not e!397467))))

(declare-fun subseq!299 (List!13312 List!13312) Bool)

(assert (=> b!702968 (= res!466939 (subseq!299 acc!652 newAcc!49))))

(assert (= (and start!62496 res!466951) b!702958))

(assert (= (and b!702958 res!466940) b!702954))

(assert (= (and b!702954 res!466949) b!702967))

(assert (= (and b!702967 res!466948) b!702963))

(assert (= (and b!702963 res!466936) b!702962))

(assert (= (and b!702962 res!466947) b!702961))

(assert (= (and b!702961 res!466943) b!702966))

(assert (= (and b!702966 res!466937) b!702959))

(assert (= (and b!702959 res!466944) b!702968))

(assert (= (and b!702968 res!466939) b!702953))

(assert (= (and b!702953 res!466935) b!702956))

(assert (= (and b!702956 res!466945) b!702951))

(assert (= (and b!702951 res!466938) b!702952))

(assert (= (and b!702952 res!466946) b!702957))

(assert (= (and b!702957 res!466942) b!702960))

(assert (= (and b!702960 res!466952) b!702964))

(assert (= (and b!702964 res!466950) b!702965))

(assert (= (and b!702965 res!466941) b!702955))

(declare-fun m!661959 () Bool)

(assert (=> b!702965 m!661959))

(declare-fun m!661961 () Bool)

(assert (=> b!702953 m!661961))

(declare-fun m!661963 () Bool)

(assert (=> b!702959 m!661963))

(declare-fun m!661965 () Bool)

(assert (=> b!702968 m!661965))

(declare-fun m!661967 () Bool)

(assert (=> b!702958 m!661967))

(declare-fun m!661969 () Bool)

(assert (=> b!702954 m!661969))

(declare-fun m!661971 () Bool)

(assert (=> b!702963 m!661971))

(declare-fun m!661973 () Bool)

(assert (=> b!702960 m!661973))

(assert (=> b!702960 m!661973))

(declare-fun m!661975 () Bool)

(assert (=> b!702960 m!661975))

(declare-fun m!661977 () Bool)

(assert (=> b!702966 m!661977))

(declare-fun m!661979 () Bool)

(assert (=> b!702956 m!661979))

(declare-fun m!661981 () Bool)

(assert (=> b!702962 m!661981))

(declare-fun m!661983 () Bool)

(assert (=> b!702955 m!661983))

(declare-fun m!661985 () Bool)

(assert (=> start!62496 m!661985))

(declare-fun m!661987 () Bool)

(assert (=> b!702961 m!661987))

(declare-fun m!661989 () Bool)

(assert (=> b!702951 m!661989))

(declare-fun m!661991 () Bool)

(assert (=> b!702967 m!661991))

(declare-fun m!661993 () Bool)

(assert (=> b!702952 m!661993))

(push 1)

(assert (not b!702956))

(assert (not b!702958))

(assert (not b!702968))

(assert (not b!702954))

(assert (not b!702951))

(assert (not start!62496))

(assert (not b!702961))

(assert (not b!702965))

(assert (not b!702952))

(assert (not b!702955))

(assert (not b!702962))

(assert (not b!702963))

(assert (not b!702960))

(assert (not b!702967))

(assert (not b!702966))

(assert (not b!702953))

(assert (not b!702959))

(check-sat)

(pop 1)

