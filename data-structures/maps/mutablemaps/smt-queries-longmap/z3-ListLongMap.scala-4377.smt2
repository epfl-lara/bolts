; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60308 () Bool)

(assert start!60308)

(declare-fun b!676375 () Bool)

(declare-fun res!442990 () Bool)

(declare-fun e!385734 () Bool)

(assert (=> b!676375 (=> (not res!442990) (not e!385734))))

(declare-datatypes ((array!39311 0))(
  ( (array!39312 (arr!18844 (Array (_ BitVec 32) (_ BitVec 64))) (size!19208 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39311)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676375 (= res!442990 (not (validKeyInArray!0 (select (arr!18844 a!3626) from!3004))))))

(declare-fun b!676376 () Bool)

(declare-fun res!442979 () Bool)

(assert (=> b!676376 (=> (not res!442979) (not e!385734))))

(declare-datatypes ((List!12938 0))(
  ( (Nil!12935) (Cons!12934 (h!13979 (_ BitVec 64)) (t!19174 List!12938)) )
))
(declare-fun acc!681 () List!12938)

(declare-fun contains!3481 (List!12938 (_ BitVec 64)) Bool)

(assert (=> b!676376 (= res!442979 (not (contains!3481 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676377 () Bool)

(declare-fun e!385732 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!676377 (= e!385732 (not (contains!3481 acc!681 k0!2843)))))

(declare-fun b!676378 () Bool)

(declare-fun res!442989 () Bool)

(assert (=> b!676378 (=> (not res!442989) (not e!385734))))

(declare-fun arrayNoDuplicates!0 (array!39311 (_ BitVec 32) List!12938) Bool)

(assert (=> b!676378 (= res!442989 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676379 () Bool)

(declare-fun res!442985 () Bool)

(assert (=> b!676379 (=> (not res!442985) (not e!385734))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676379 (= res!442985 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19208 a!3626))))))

(declare-fun b!676380 () Bool)

(declare-fun e!385733 () Bool)

(assert (=> b!676380 (= e!385733 (not (contains!3481 acc!681 k0!2843)))))

(declare-fun b!676381 () Bool)

(declare-fun res!442977 () Bool)

(assert (=> b!676381 (=> (not res!442977) (not e!385734))))

(assert (=> b!676381 (= res!442977 (validKeyInArray!0 k0!2843))))

(declare-fun b!676382 () Bool)

(declare-fun res!442992 () Bool)

(assert (=> b!676382 (=> (not res!442992) (not e!385734))))

(declare-fun noDuplicate!728 (List!12938) Bool)

(assert (=> b!676382 (= res!442992 (noDuplicate!728 acc!681))))

(declare-fun b!676383 () Bool)

(declare-fun e!385731 () Bool)

(assert (=> b!676383 (= e!385731 e!385732)))

(declare-fun res!442984 () Bool)

(assert (=> b!676383 (=> (not res!442984) (not e!385732))))

(assert (=> b!676383 (= res!442984 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676384 () Bool)

(declare-fun res!442975 () Bool)

(assert (=> b!676384 (=> (not res!442975) (not e!385734))))

(assert (=> b!676384 (= res!442975 e!385731)))

(declare-fun res!442982 () Bool)

(assert (=> b!676384 (=> res!442982 e!385731)))

(declare-fun e!385730 () Bool)

(assert (=> b!676384 (= res!442982 e!385730)))

(declare-fun res!442981 () Bool)

(assert (=> b!676384 (=> (not res!442981) (not e!385730))))

(assert (=> b!676384 (= res!442981 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676385 () Bool)

(declare-fun e!385729 () Bool)

(assert (=> b!676385 (= e!385729 (contains!3481 acc!681 k0!2843))))

(declare-fun res!442983 () Bool)

(assert (=> start!60308 (=> (not res!442983) (not e!385734))))

(assert (=> start!60308 (= res!442983 (and (bvslt (size!19208 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19208 a!3626))))))

(assert (=> start!60308 e!385734))

(assert (=> start!60308 true))

(declare-fun array_inv!14618 (array!39311) Bool)

(assert (=> start!60308 (array_inv!14618 a!3626)))

(declare-fun b!676386 () Bool)

(declare-fun res!442986 () Bool)

(assert (=> b!676386 (=> (not res!442986) (not e!385734))))

(assert (=> b!676386 (= res!442986 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12935))))

(declare-fun b!676387 () Bool)

(assert (=> b!676387 (= e!385730 (contains!3481 acc!681 k0!2843))))

(declare-fun b!676388 () Bool)

(declare-fun res!442993 () Bool)

(assert (=> b!676388 (=> (not res!442993) (not e!385734))))

(assert (=> b!676388 (= res!442993 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19208 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676389 () Bool)

(declare-fun res!442991 () Bool)

(assert (=> b!676389 (=> (not res!442991) (not e!385734))))

(declare-fun e!385735 () Bool)

(assert (=> b!676389 (= res!442991 e!385735)))

(declare-fun res!442980 () Bool)

(assert (=> b!676389 (=> res!442980 e!385735)))

(assert (=> b!676389 (= res!442980 e!385729)))

(declare-fun res!442994 () Bool)

(assert (=> b!676389 (=> (not res!442994) (not e!385729))))

(assert (=> b!676389 (= res!442994 (bvsgt from!3004 i!1382))))

(declare-fun b!676390 () Bool)

(assert (=> b!676390 (= e!385735 e!385733)))

(declare-fun res!442978 () Bool)

(assert (=> b!676390 (=> (not res!442978) (not e!385733))))

(assert (=> b!676390 (= res!442978 (bvsle from!3004 i!1382))))

(declare-fun b!676391 () Bool)

(declare-fun res!442987 () Bool)

(assert (=> b!676391 (=> (not res!442987) (not e!385734))))

(assert (=> b!676391 (= res!442987 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676392 () Bool)

(assert (=> b!676392 (= e!385734 false)))

(declare-fun lt!312723 () Bool)

(assert (=> b!676392 (= lt!312723 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676393 () Bool)

(declare-fun res!442988 () Bool)

(assert (=> b!676393 (=> (not res!442988) (not e!385734))))

(assert (=> b!676393 (= res!442988 (not (contains!3481 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676394 () Bool)

(declare-fun res!442976 () Bool)

(assert (=> b!676394 (=> (not res!442976) (not e!385734))))

(declare-fun arrayContainsKey!0 (array!39311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676394 (= res!442976 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60308 res!442983) b!676382))

(assert (= (and b!676382 res!442992) b!676376))

(assert (= (and b!676376 res!442979) b!676393))

(assert (= (and b!676393 res!442988) b!676389))

(assert (= (and b!676389 res!442994) b!676385))

(assert (= (and b!676389 (not res!442980)) b!676390))

(assert (= (and b!676390 res!442978) b!676380))

(assert (= (and b!676389 res!442991) b!676386))

(assert (= (and b!676386 res!442986) b!676378))

(assert (= (and b!676378 res!442989) b!676379))

(assert (= (and b!676379 res!442985) b!676381))

(assert (= (and b!676381 res!442977) b!676394))

(assert (= (and b!676394 res!442976) b!676388))

(assert (= (and b!676388 res!442993) b!676375))

(assert (= (and b!676375 res!442990) b!676391))

(assert (= (and b!676391 res!442987) b!676384))

(assert (= (and b!676384 res!442981) b!676387))

(assert (= (and b!676384 (not res!442982)) b!676383))

(assert (= (and b!676383 res!442984) b!676377))

(assert (= (and b!676384 res!442975) b!676392))

(declare-fun m!643209 () Bool)

(assert (=> b!676378 m!643209))

(declare-fun m!643211 () Bool)

(assert (=> b!676380 m!643211))

(declare-fun m!643213 () Bool)

(assert (=> b!676392 m!643213))

(declare-fun m!643215 () Bool)

(assert (=> b!676394 m!643215))

(declare-fun m!643217 () Bool)

(assert (=> b!676382 m!643217))

(declare-fun m!643219 () Bool)

(assert (=> b!676393 m!643219))

(assert (=> b!676387 m!643211))

(declare-fun m!643221 () Bool)

(assert (=> start!60308 m!643221))

(declare-fun m!643223 () Bool)

(assert (=> b!676381 m!643223))

(declare-fun m!643225 () Bool)

(assert (=> b!676375 m!643225))

(assert (=> b!676375 m!643225))

(declare-fun m!643227 () Bool)

(assert (=> b!676375 m!643227))

(declare-fun m!643229 () Bool)

(assert (=> b!676386 m!643229))

(assert (=> b!676377 m!643211))

(assert (=> b!676385 m!643211))

(declare-fun m!643231 () Bool)

(assert (=> b!676376 m!643231))

(check-sat (not start!60308) (not b!676386) (not b!676381) (not b!676393) (not b!676375) (not b!676378) (not b!676385) (not b!676376) (not b!676387) (not b!676377) (not b!676392) (not b!676380) (not b!676382) (not b!676394))
(check-sat)
