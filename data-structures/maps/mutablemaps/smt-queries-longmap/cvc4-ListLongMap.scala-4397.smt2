; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60502 () Bool)

(assert start!60502)

(declare-fun b!679460 () Bool)

(declare-fun res!445987 () Bool)

(declare-fun e!387104 () Bool)

(assert (=> b!679460 (=> (not res!445987) (not e!387104))))

(declare-datatypes ((array!39439 0))(
  ( (array!39440 (arr!18905 (Array (_ BitVec 32) (_ BitVec 64))) (size!19269 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39439)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12999 0))(
  ( (Nil!12996) (Cons!12995 (h!14040 (_ BitVec 64)) (t!19235 List!12999)) )
))
(declare-fun acc!681 () List!12999)

(declare-fun arrayNoDuplicates!0 (array!39439 (_ BitVec 32) List!12999) Bool)

(assert (=> b!679460 (= res!445987 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679461 () Bool)

(declare-fun res!445988 () Bool)

(assert (=> b!679461 (=> (not res!445988) (not e!387104))))

(declare-fun contains!3542 (List!12999 (_ BitVec 64)) Bool)

(assert (=> b!679461 (= res!445988 (not (contains!3542 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679462 () Bool)

(declare-fun res!445990 () Bool)

(assert (=> b!679462 (=> (not res!445990) (not e!387104))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679462 (= res!445990 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19269 a!3626))))))

(declare-fun b!679463 () Bool)

(declare-fun e!387107 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!679463 (= e!387107 (contains!3542 acc!681 k!2843))))

(declare-fun b!679464 () Bool)

(declare-fun res!445981 () Bool)

(assert (=> b!679464 (=> (not res!445981) (not e!387104))))

(declare-fun e!387108 () Bool)

(assert (=> b!679464 (= res!445981 e!387108)))

(declare-fun res!445989 () Bool)

(assert (=> b!679464 (=> res!445989 e!387108)))

(assert (=> b!679464 (= res!445989 e!387107)))

(declare-fun res!445978 () Bool)

(assert (=> b!679464 (=> (not res!445978) (not e!387107))))

(assert (=> b!679464 (= res!445978 (bvsgt from!3004 i!1382))))

(declare-fun b!679466 () Bool)

(declare-fun res!445980 () Bool)

(assert (=> b!679466 (=> (not res!445980) (not e!387104))))

(declare-fun arrayContainsKey!0 (array!39439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679466 (= res!445980 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679467 () Bool)

(declare-fun res!445985 () Bool)

(assert (=> b!679467 (=> (not res!445985) (not e!387104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679467 (= res!445985 (validKeyInArray!0 k!2843))))

(declare-fun b!679468 () Bool)

(declare-fun res!445991 () Bool)

(assert (=> b!679468 (=> (not res!445991) (not e!387104))))

(assert (=> b!679468 (= res!445991 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12996))))

(declare-fun b!679469 () Bool)

(declare-fun res!445979 () Bool)

(assert (=> b!679469 (=> (not res!445979) (not e!387104))))

(assert (=> b!679469 (= res!445979 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19269 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679470 () Bool)

(declare-fun res!445984 () Bool)

(assert (=> b!679470 (=> (not res!445984) (not e!387104))))

(assert (=> b!679470 (= res!445984 (not (contains!3542 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679471 () Bool)

(assert (=> b!679471 (= e!387104 (not true))))

(declare-datatypes ((Unit!23790 0))(
  ( (Unit!23791) )
))
(declare-fun lt!312891 () Unit!23790)

(declare-fun e!387109 () Unit!23790)

(assert (=> b!679471 (= lt!312891 e!387109)))

(declare-fun c!77108 () Bool)

(assert (=> b!679471 (= c!77108 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679471 (arrayContainsKey!0 (array!39440 (store (arr!18905 a!3626) i!1382 k!2843) (size!19269 a!3626)) k!2843 from!3004)))

(declare-fun b!679472 () Bool)

(declare-fun e!387105 () Bool)

(assert (=> b!679472 (= e!387108 e!387105)))

(declare-fun res!445982 () Bool)

(assert (=> b!679472 (=> (not res!445982) (not e!387105))))

(assert (=> b!679472 (= res!445982 (bvsle from!3004 i!1382))))

(declare-fun b!679473 () Bool)

(declare-fun Unit!23792 () Unit!23790)

(assert (=> b!679473 (= e!387109 Unit!23792)))

(declare-fun lt!312890 () Unit!23790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39439 (_ BitVec 64) (_ BitVec 32)) Unit!23790)

(assert (=> b!679473 (= lt!312890 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679473 false))

(declare-fun res!445983 () Bool)

(assert (=> start!60502 (=> (not res!445983) (not e!387104))))

(assert (=> start!60502 (= res!445983 (and (bvslt (size!19269 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19269 a!3626))))))

(assert (=> start!60502 e!387104))

(assert (=> start!60502 true))

(declare-fun array_inv!14679 (array!39439) Bool)

(assert (=> start!60502 (array_inv!14679 a!3626)))

(declare-fun b!679465 () Bool)

(assert (=> b!679465 (= e!387105 (not (contains!3542 acc!681 k!2843)))))

(declare-fun b!679474 () Bool)

(declare-fun res!445986 () Bool)

(assert (=> b!679474 (=> (not res!445986) (not e!387104))))

(declare-fun noDuplicate!789 (List!12999) Bool)

(assert (=> b!679474 (= res!445986 (noDuplicate!789 acc!681))))

(declare-fun b!679475 () Bool)

(declare-fun Unit!23793 () Unit!23790)

(assert (=> b!679475 (= e!387109 Unit!23793)))

(assert (= (and start!60502 res!445983) b!679474))

(assert (= (and b!679474 res!445986) b!679470))

(assert (= (and b!679470 res!445984) b!679461))

(assert (= (and b!679461 res!445988) b!679464))

(assert (= (and b!679464 res!445978) b!679463))

(assert (= (and b!679464 (not res!445989)) b!679472))

(assert (= (and b!679472 res!445982) b!679465))

(assert (= (and b!679464 res!445981) b!679468))

(assert (= (and b!679468 res!445991) b!679460))

(assert (= (and b!679460 res!445987) b!679462))

(assert (= (and b!679462 res!445990) b!679467))

(assert (= (and b!679467 res!445985) b!679466))

(assert (= (and b!679466 res!445980) b!679469))

(assert (= (and b!679469 res!445979) b!679471))

(assert (= (and b!679471 c!77108) b!679473))

(assert (= (and b!679471 (not c!77108)) b!679475))

(declare-fun m!644845 () Bool)

(assert (=> b!679471 m!644845))

(declare-fun m!644847 () Bool)

(assert (=> b!679471 m!644847))

(declare-fun m!644849 () Bool)

(assert (=> b!679471 m!644849))

(declare-fun m!644851 () Bool)

(assert (=> start!60502 m!644851))

(declare-fun m!644853 () Bool)

(assert (=> b!679463 m!644853))

(declare-fun m!644855 () Bool)

(assert (=> b!679468 m!644855))

(declare-fun m!644857 () Bool)

(assert (=> b!679460 m!644857))

(declare-fun m!644859 () Bool)

(assert (=> b!679474 m!644859))

(declare-fun m!644861 () Bool)

(assert (=> b!679467 m!644861))

(declare-fun m!644863 () Bool)

(assert (=> b!679466 m!644863))

(declare-fun m!644865 () Bool)

(assert (=> b!679470 m!644865))

(declare-fun m!644867 () Bool)

(assert (=> b!679461 m!644867))

(declare-fun m!644869 () Bool)

(assert (=> b!679473 m!644869))

(assert (=> b!679465 m!644853))

(push 1)

(assert (not b!679463))

(assert (not start!60502))

(assert (not b!679471))

(assert (not b!679466))

(assert (not b!679461))

(assert (not b!679460))

(assert (not b!679473))

(assert (not b!679467))

(assert (not b!679468))

(assert (not b!679474))

(assert (not b!679470))

(assert (not b!679465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

