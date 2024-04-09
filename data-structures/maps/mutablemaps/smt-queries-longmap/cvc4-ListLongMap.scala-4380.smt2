; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60328 () Bool)

(assert start!60328)

(declare-fun res!443596 () Bool)

(declare-fun e!385972 () Bool)

(assert (=> start!60328 (=> (not res!443596) (not e!385972))))

(declare-datatypes ((array!39331 0))(
  ( (array!39332 (arr!18854 (Array (_ BitVec 32) (_ BitVec 64))) (size!19218 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39331)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60328 (= res!443596 (and (bvslt (size!19218 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19218 a!3626))))))

(assert (=> start!60328 e!385972))

(assert (=> start!60328 true))

(declare-fun array_inv!14628 (array!39331) Bool)

(assert (=> start!60328 (array_inv!14628 a!3626)))

(declare-fun b!676983 () Bool)

(declare-fun e!385975 () Bool)

(declare-datatypes ((List!12948 0))(
  ( (Nil!12945) (Cons!12944 (h!13989 (_ BitVec 64)) (t!19184 List!12948)) )
))
(declare-fun acc!681 () List!12948)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3491 (List!12948 (_ BitVec 64)) Bool)

(assert (=> b!676983 (= e!385975 (not (contains!3491 acc!681 k!2843)))))

(declare-fun b!676984 () Bool)

(declare-fun res!443584 () Bool)

(assert (=> b!676984 (=> (not res!443584) (not e!385972))))

(assert (=> b!676984 (= res!443584 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676985 () Bool)

(declare-fun res!443595 () Bool)

(assert (=> b!676985 (=> (not res!443595) (not e!385972))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676985 (= res!443595 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19218 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676986 () Bool)

(declare-fun res!443591 () Bool)

(assert (=> b!676986 (=> (not res!443591) (not e!385972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676986 (= res!443591 (validKeyInArray!0 k!2843))))

(declare-fun b!676987 () Bool)

(declare-fun res!443597 () Bool)

(assert (=> b!676987 (=> (not res!443597) (not e!385972))))

(assert (=> b!676987 (= res!443597 (not (contains!3491 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676988 () Bool)

(declare-fun res!443603 () Bool)

(assert (=> b!676988 (=> (not res!443603) (not e!385972))))

(declare-fun arrayNoDuplicates!0 (array!39331 (_ BitVec 32) List!12948) Bool)

(assert (=> b!676988 (= res!443603 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676989 () Bool)

(declare-fun res!443589 () Bool)

(assert (=> b!676989 (=> (not res!443589) (not e!385972))))

(assert (=> b!676989 (= res!443589 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676990 () Bool)

(declare-fun res!443600 () Bool)

(assert (=> b!676990 (=> (not res!443600) (not e!385972))))

(declare-fun e!385968 () Bool)

(assert (=> b!676990 (= res!443600 e!385968)))

(declare-fun res!443598 () Bool)

(assert (=> b!676990 (=> res!443598 e!385968)))

(declare-fun e!385974 () Bool)

(assert (=> b!676990 (= res!443598 e!385974)))

(declare-fun res!443588 () Bool)

(assert (=> b!676990 (=> (not res!443588) (not e!385974))))

(assert (=> b!676990 (= res!443588 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676991 () Bool)

(declare-fun res!443602 () Bool)

(assert (=> b!676991 (=> (not res!443602) (not e!385972))))

(declare-fun e!385973 () Bool)

(assert (=> b!676991 (= res!443602 e!385973)))

(declare-fun res!443590 () Bool)

(assert (=> b!676991 (=> res!443590 e!385973)))

(declare-fun e!385970 () Bool)

(assert (=> b!676991 (= res!443590 e!385970)))

(declare-fun res!443592 () Bool)

(assert (=> b!676991 (=> (not res!443592) (not e!385970))))

(assert (=> b!676991 (= res!443592 (bvsgt from!3004 i!1382))))

(declare-fun b!676992 () Bool)

(assert (=> b!676992 (= e!385970 (contains!3491 acc!681 k!2843))))

(declare-fun b!676993 () Bool)

(declare-fun res!443587 () Bool)

(assert (=> b!676993 (=> (not res!443587) (not e!385972))))

(assert (=> b!676993 (= res!443587 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12945))))

(declare-fun b!676994 () Bool)

(declare-fun res!443594 () Bool)

(assert (=> b!676994 (=> (not res!443594) (not e!385972))))

(assert (=> b!676994 (= res!443594 (not (contains!3491 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676995 () Bool)

(declare-fun e!385971 () Bool)

(assert (=> b!676995 (= e!385968 e!385971)))

(declare-fun res!443593 () Bool)

(assert (=> b!676995 (=> (not res!443593) (not e!385971))))

(assert (=> b!676995 (= res!443593 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676996 () Bool)

(assert (=> b!676996 (= e!385971 (not (contains!3491 acc!681 k!2843)))))

(declare-fun b!676997 () Bool)

(declare-fun res!443586 () Bool)

(assert (=> b!676997 (=> (not res!443586) (not e!385972))))

(declare-fun arrayContainsKey!0 (array!39331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676997 (= res!443586 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676998 () Bool)

(assert (=> b!676998 (= e!385974 (contains!3491 acc!681 k!2843))))

(declare-fun b!676999 () Bool)

(declare-fun res!443583 () Bool)

(assert (=> b!676999 (=> (not res!443583) (not e!385972))))

(assert (=> b!676999 (= res!443583 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19218 a!3626))))))

(declare-fun b!677000 () Bool)

(assert (=> b!677000 (= e!385973 e!385975)))

(declare-fun res!443585 () Bool)

(assert (=> b!677000 (=> (not res!443585) (not e!385975))))

(assert (=> b!677000 (= res!443585 (bvsle from!3004 i!1382))))

(declare-fun b!677001 () Bool)

(declare-fun res!443599 () Bool)

(assert (=> b!677001 (=> (not res!443599) (not e!385972))))

(assert (=> b!677001 (= res!443599 (not (validKeyInArray!0 (select (arr!18854 a!3626) from!3004))))))

(declare-fun b!677002 () Bool)

(assert (=> b!677002 (= e!385972 (not (bvsle from!3004 (size!19218 a!3626))))))

(assert (=> b!677002 (arrayNoDuplicates!0 (array!39332 (store (arr!18854 a!3626) i!1382 k!2843) (size!19218 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23744 0))(
  ( (Unit!23745) )
))
(declare-fun lt!312753 () Unit!23744)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39331 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12948) Unit!23744)

(assert (=> b!677002 (= lt!312753 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677003 () Bool)

(declare-fun res!443601 () Bool)

(assert (=> b!677003 (=> (not res!443601) (not e!385972))))

(declare-fun noDuplicate!738 (List!12948) Bool)

(assert (=> b!677003 (= res!443601 (noDuplicate!738 acc!681))))

(assert (= (and start!60328 res!443596) b!677003))

(assert (= (and b!677003 res!443601) b!676994))

(assert (= (and b!676994 res!443594) b!676987))

(assert (= (and b!676987 res!443597) b!676991))

(assert (= (and b!676991 res!443592) b!676992))

(assert (= (and b!676991 (not res!443590)) b!677000))

(assert (= (and b!677000 res!443585) b!676983))

(assert (= (and b!676991 res!443602) b!676993))

(assert (= (and b!676993 res!443587) b!676988))

(assert (= (and b!676988 res!443603) b!676999))

(assert (= (and b!676999 res!443583) b!676986))

(assert (= (and b!676986 res!443591) b!676997))

(assert (= (and b!676997 res!443586) b!676985))

(assert (= (and b!676985 res!443595) b!677001))

(assert (= (and b!677001 res!443599) b!676984))

(assert (= (and b!676984 res!443584) b!676990))

(assert (= (and b!676990 res!443588) b!676998))

(assert (= (and b!676990 (not res!443598)) b!676995))

(assert (= (and b!676995 res!443593) b!676996))

(assert (= (and b!676990 res!443600) b!676989))

(assert (= (and b!676989 res!443589) b!677002))

(declare-fun m!643461 () Bool)

(assert (=> b!676983 m!643461))

(declare-fun m!643463 () Bool)

(assert (=> b!676986 m!643463))

(declare-fun m!643465 () Bool)

(assert (=> b!677001 m!643465))

(assert (=> b!677001 m!643465))

(declare-fun m!643467 () Bool)

(assert (=> b!677001 m!643467))

(declare-fun m!643469 () Bool)

(assert (=> b!676993 m!643469))

(declare-fun m!643471 () Bool)

(assert (=> b!676994 m!643471))

(assert (=> b!676996 m!643461))

(assert (=> b!676992 m!643461))

(declare-fun m!643473 () Bool)

(assert (=> b!677003 m!643473))

(declare-fun m!643475 () Bool)

(assert (=> b!676989 m!643475))

(declare-fun m!643477 () Bool)

(assert (=> start!60328 m!643477))

(declare-fun m!643479 () Bool)

(assert (=> b!677002 m!643479))

(declare-fun m!643481 () Bool)

(assert (=> b!677002 m!643481))

(declare-fun m!643483 () Bool)

(assert (=> b!677002 m!643483))

(declare-fun m!643485 () Bool)

(assert (=> b!676997 m!643485))

(assert (=> b!676998 m!643461))

(declare-fun m!643487 () Bool)

(assert (=> b!676988 m!643487))

(declare-fun m!643489 () Bool)

(assert (=> b!676987 m!643489))

(push 1)

(assert (not b!676983))

(assert (not b!677001))

(assert (not b!676994))

(assert (not b!676989))

(assert (not b!676986))

(assert (not b!676998))

(assert (not b!677002))

(assert (not b!676988))

(assert (not b!676992))

(assert (not b!676996))

(assert (not b!677003))

(assert (not b!676997))

(assert (not b!676993))

(assert (not b!676987))

(assert (not start!60328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

