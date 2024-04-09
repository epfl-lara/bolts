; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115514 () Bool)

(assert start!115514)

(declare-fun b!1365978 () Bool)

(declare-fun res!909690 () Bool)

(declare-fun e!774328 () Bool)

(assert (=> b!1365978 (=> (not res!909690) (not e!774328))))

(declare-datatypes ((List!32051 0))(
  ( (Nil!32048) (Cons!32047 (h!33256 (_ BitVec 64)) (t!46752 List!32051)) )
))
(declare-fun lt!601397 () List!32051)

(declare-fun lt!601396 () List!32051)

(declare-fun subseq!980 (List!32051 List!32051) Bool)

(assert (=> b!1365978 (= res!909690 (subseq!980 lt!601397 lt!601396))))

(declare-fun b!1365979 () Bool)

(declare-fun res!909681 () Bool)

(declare-fun e!774325 () Bool)

(assert (=> b!1365979 (=> (not res!909681) (not e!774325))))

(declare-fun newAcc!98 () List!32051)

(declare-fun contains!9589 (List!32051 (_ BitVec 64)) Bool)

(assert (=> b!1365979 (= res!909681 (not (contains!9589 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365980 () Bool)

(declare-fun res!909687 () Bool)

(assert (=> b!1365980 (=> (not res!909687) (not e!774325))))

(declare-fun acc!866 () List!32051)

(assert (=> b!1365980 (= res!909687 (not (contains!9589 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365981 () Bool)

(declare-fun res!909682 () Bool)

(declare-fun e!774326 () Bool)

(assert (=> b!1365981 (=> (not res!909682) (not e!774326))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92758 0))(
  ( (array!92759 (arr!44803 (Array (_ BitVec 32) (_ BitVec 64))) (size!45354 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92758)

(assert (=> b!1365981 (= res!909682 (bvslt from!3239 (size!45354 a!3861)))))

(declare-fun b!1365982 () Bool)

(declare-fun res!909685 () Bool)

(assert (=> b!1365982 (=> (not res!909685) (not e!774326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365982 (= res!909685 (validKeyInArray!0 (select (arr!44803 a!3861) from!3239)))))

(declare-fun b!1365983 () Bool)

(declare-fun res!909688 () Bool)

(assert (=> b!1365983 (=> (not res!909688) (not e!774328))))

(assert (=> b!1365983 (= res!909688 (not (contains!9589 lt!601396 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365984 () Bool)

(declare-fun res!909675 () Bool)

(assert (=> b!1365984 (=> (not res!909675) (not e!774325))))

(assert (=> b!1365984 (= res!909675 (subseq!980 newAcc!98 acc!866))))

(declare-fun b!1365985 () Bool)

(assert (=> b!1365985 (= e!774328 false)))

(declare-fun lt!601400 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92758 (_ BitVec 32) List!32051) Bool)

(assert (=> b!1365985 (= lt!601400 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601396))))

(declare-datatypes ((Unit!45041 0))(
  ( (Unit!45042) )
))
(declare-fun lt!601398 () Unit!45041)

(declare-fun noDuplicateSubseq!167 (List!32051 List!32051) Unit!45041)

(assert (=> b!1365985 (= lt!601398 (noDuplicateSubseq!167 lt!601397 lt!601396))))

(declare-fun b!1365986 () Bool)

(declare-fun res!909683 () Bool)

(assert (=> b!1365986 (=> (not res!909683) (not e!774325))))

(assert (=> b!1365986 (= res!909683 (not (contains!9589 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365987 () Bool)

(declare-fun res!909686 () Bool)

(assert (=> b!1365987 (=> (not res!909686) (not e!774325))))

(declare-fun noDuplicate!2468 (List!32051) Bool)

(assert (=> b!1365987 (= res!909686 (noDuplicate!2468 acc!866))))

(declare-fun b!1365988 () Bool)

(declare-fun res!909677 () Bool)

(assert (=> b!1365988 (=> (not res!909677) (not e!774328))))

(assert (=> b!1365988 (= res!909677 (not (contains!9589 lt!601397 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365989 () Bool)

(declare-fun res!909678 () Bool)

(assert (=> b!1365989 (=> (not res!909678) (not e!774328))))

(assert (=> b!1365989 (= res!909678 (not (contains!9589 lt!601396 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365990 () Bool)

(assert (=> b!1365990 (= e!774326 e!774328)))

(declare-fun res!909680 () Bool)

(assert (=> b!1365990 (=> (not res!909680) (not e!774328))))

(assert (=> b!1365990 (= res!909680 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365990 (= lt!601397 (Cons!32047 (select (arr!44803 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365990 (= lt!601396 (Cons!32047 (select (arr!44803 a!3861) from!3239) acc!866))))

(declare-fun res!909689 () Bool)

(assert (=> start!115514 (=> (not res!909689) (not e!774325))))

(assert (=> start!115514 (= res!909689 (and (bvslt (size!45354 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45354 a!3861))))))

(assert (=> start!115514 e!774325))

(declare-fun array_inv!33748 (array!92758) Bool)

(assert (=> start!115514 (array_inv!33748 a!3861)))

(assert (=> start!115514 true))

(declare-fun b!1365991 () Bool)

(declare-fun res!909673 () Bool)

(assert (=> b!1365991 (=> (not res!909673) (not e!774326))))

(assert (=> b!1365991 (= res!909673 (not (contains!9589 acc!866 (select (arr!44803 a!3861) from!3239))))))

(declare-fun b!1365992 () Bool)

(declare-fun res!909684 () Bool)

(assert (=> b!1365992 (=> (not res!909684) (not e!774325))))

(assert (=> b!1365992 (= res!909684 (not (contains!9589 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365993 () Bool)

(assert (=> b!1365993 (= e!774325 e!774326)))

(declare-fun res!909674 () Bool)

(assert (=> b!1365993 (=> (not res!909674) (not e!774326))))

(assert (=> b!1365993 (= res!909674 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601399 () Unit!45041)

(assert (=> b!1365993 (= lt!601399 (noDuplicateSubseq!167 newAcc!98 acc!866))))

(declare-fun b!1365994 () Bool)

(declare-fun res!909679 () Bool)

(assert (=> b!1365994 (=> (not res!909679) (not e!774328))))

(assert (=> b!1365994 (= res!909679 (not (contains!9589 lt!601397 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365995 () Bool)

(declare-fun res!909676 () Bool)

(assert (=> b!1365995 (=> (not res!909676) (not e!774328))))

(assert (=> b!1365995 (= res!909676 (noDuplicate!2468 lt!601396))))

(assert (= (and start!115514 res!909689) b!1365987))

(assert (= (and b!1365987 res!909686) b!1365980))

(assert (= (and b!1365980 res!909687) b!1365986))

(assert (= (and b!1365986 res!909683) b!1365992))

(assert (= (and b!1365992 res!909684) b!1365979))

(assert (= (and b!1365979 res!909681) b!1365984))

(assert (= (and b!1365984 res!909675) b!1365993))

(assert (= (and b!1365993 res!909674) b!1365981))

(assert (= (and b!1365981 res!909682) b!1365982))

(assert (= (and b!1365982 res!909685) b!1365991))

(assert (= (and b!1365991 res!909673) b!1365990))

(assert (= (and b!1365990 res!909680) b!1365995))

(assert (= (and b!1365995 res!909676) b!1365983))

(assert (= (and b!1365983 res!909688) b!1365989))

(assert (= (and b!1365989 res!909678) b!1365988))

(assert (= (and b!1365988 res!909677) b!1365994))

(assert (= (and b!1365994 res!909679) b!1365978))

(assert (= (and b!1365978 res!909690) b!1365985))

(declare-fun m!1250401 () Bool)

(assert (=> b!1365984 m!1250401))

(declare-fun m!1250403 () Bool)

(assert (=> b!1365985 m!1250403))

(declare-fun m!1250405 () Bool)

(assert (=> b!1365985 m!1250405))

(declare-fun m!1250407 () Bool)

(assert (=> b!1365988 m!1250407))

(declare-fun m!1250409 () Bool)

(assert (=> b!1365983 m!1250409))

(declare-fun m!1250411 () Bool)

(assert (=> b!1365978 m!1250411))

(declare-fun m!1250413 () Bool)

(assert (=> b!1365990 m!1250413))

(declare-fun m!1250415 () Bool)

(assert (=> b!1365986 m!1250415))

(declare-fun m!1250417 () Bool)

(assert (=> b!1365979 m!1250417))

(declare-fun m!1250419 () Bool)

(assert (=> b!1365989 m!1250419))

(declare-fun m!1250421 () Bool)

(assert (=> b!1365995 m!1250421))

(assert (=> b!1365991 m!1250413))

(assert (=> b!1365991 m!1250413))

(declare-fun m!1250423 () Bool)

(assert (=> b!1365991 m!1250423))

(declare-fun m!1250425 () Bool)

(assert (=> b!1365987 m!1250425))

(declare-fun m!1250427 () Bool)

(assert (=> b!1365992 m!1250427))

(declare-fun m!1250429 () Bool)

(assert (=> b!1365993 m!1250429))

(declare-fun m!1250431 () Bool)

(assert (=> b!1365993 m!1250431))

(declare-fun m!1250433 () Bool)

(assert (=> b!1365994 m!1250433))

(declare-fun m!1250435 () Bool)

(assert (=> start!115514 m!1250435))

(assert (=> b!1365982 m!1250413))

(assert (=> b!1365982 m!1250413))

(declare-fun m!1250437 () Bool)

(assert (=> b!1365982 m!1250437))

(declare-fun m!1250439 () Bool)

(assert (=> b!1365980 m!1250439))

(push 1)

