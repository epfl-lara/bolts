; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60498 () Bool)

(assert start!60498)

(declare-fun b!679364 () Bool)

(declare-fun res!445907 () Bool)

(declare-fun e!387070 () Bool)

(assert (=> b!679364 (=> (not res!445907) (not e!387070))))

(declare-fun e!387069 () Bool)

(assert (=> b!679364 (= res!445907 e!387069)))

(declare-fun res!445903 () Bool)

(assert (=> b!679364 (=> res!445903 e!387069)))

(declare-fun e!387073 () Bool)

(assert (=> b!679364 (= res!445903 e!387073)))

(declare-fun res!445894 () Bool)

(assert (=> b!679364 (=> (not res!445894) (not e!387073))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679364 (= res!445894 (bvsgt from!3004 i!1382))))

(declare-fun b!679365 () Bool)

(declare-fun res!445895 () Bool)

(assert (=> b!679365 (=> (not res!445895) (not e!387070))))

(declare-datatypes ((List!12997 0))(
  ( (Nil!12994) (Cons!12993 (h!14038 (_ BitVec 64)) (t!19233 List!12997)) )
))
(declare-fun acc!681 () List!12997)

(declare-fun contains!3540 (List!12997 (_ BitVec 64)) Bool)

(assert (=> b!679365 (= res!445895 (not (contains!3540 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679366 () Bool)

(declare-fun res!445897 () Bool)

(assert (=> b!679366 (=> (not res!445897) (not e!387070))))

(declare-fun noDuplicate!787 (List!12997) Bool)

(assert (=> b!679366 (= res!445897 (noDuplicate!787 acc!681))))

(declare-fun b!679367 () Bool)

(assert (=> b!679367 (= e!387070 (not true))))

(declare-datatypes ((Unit!23782 0))(
  ( (Unit!23783) )
))
(declare-fun lt!312879 () Unit!23782)

(declare-fun e!387072 () Unit!23782)

(assert (=> b!679367 (= lt!312879 e!387072)))

(declare-fun c!77102 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39435 0))(
  ( (array!39436 (arr!18903 (Array (_ BitVec 32) (_ BitVec 64))) (size!19267 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39435)

(declare-fun arrayContainsKey!0 (array!39435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679367 (= c!77102 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679367 (arrayContainsKey!0 (array!39436 (store (arr!18903 a!3626) i!1382 k!2843) (size!19267 a!3626)) k!2843 from!3004)))

(declare-fun b!679368 () Bool)

(declare-fun Unit!23784 () Unit!23782)

(assert (=> b!679368 (= e!387072 Unit!23784)))

(declare-fun lt!312878 () Unit!23782)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39435 (_ BitVec 64) (_ BitVec 32)) Unit!23782)

(assert (=> b!679368 (= lt!312878 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679368 false))

(declare-fun b!679369 () Bool)

(declare-fun res!445899 () Bool)

(assert (=> b!679369 (=> (not res!445899) (not e!387070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679369 (= res!445899 (validKeyInArray!0 k!2843))))

(declare-fun b!679370 () Bool)

(declare-fun res!445896 () Bool)

(assert (=> b!679370 (=> (not res!445896) (not e!387070))))

(assert (=> b!679370 (= res!445896 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679371 () Bool)

(declare-fun res!445905 () Bool)

(assert (=> b!679371 (=> (not res!445905) (not e!387070))))

(assert (=> b!679371 (= res!445905 (not (contains!3540 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679372 () Bool)

(declare-fun res!445900 () Bool)

(assert (=> b!679372 (=> (not res!445900) (not e!387070))))

(declare-fun arrayNoDuplicates!0 (array!39435 (_ BitVec 32) List!12997) Bool)

(assert (=> b!679372 (= res!445900 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12994))))

(declare-fun b!679373 () Bool)

(declare-fun res!445901 () Bool)

(assert (=> b!679373 (=> (not res!445901) (not e!387070))))

(assert (=> b!679373 (= res!445901 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19267 a!3626))))))

(declare-fun res!445906 () Bool)

(assert (=> start!60498 (=> (not res!445906) (not e!387070))))

(assert (=> start!60498 (= res!445906 (and (bvslt (size!19267 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19267 a!3626))))))

(assert (=> start!60498 e!387070))

(assert (=> start!60498 true))

(declare-fun array_inv!14677 (array!39435) Bool)

(assert (=> start!60498 (array_inv!14677 a!3626)))

(declare-fun b!679374 () Bool)

(declare-fun e!387071 () Bool)

(assert (=> b!679374 (= e!387071 (not (contains!3540 acc!681 k!2843)))))

(declare-fun b!679375 () Bool)

(assert (=> b!679375 (= e!387069 e!387071)))

(declare-fun res!445902 () Bool)

(assert (=> b!679375 (=> (not res!445902) (not e!387071))))

(assert (=> b!679375 (= res!445902 (bvsle from!3004 i!1382))))

(declare-fun b!679376 () Bool)

(declare-fun res!445904 () Bool)

(assert (=> b!679376 (=> (not res!445904) (not e!387070))))

(assert (=> b!679376 (= res!445904 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679377 () Bool)

(declare-fun res!445898 () Bool)

(assert (=> b!679377 (=> (not res!445898) (not e!387070))))

(assert (=> b!679377 (= res!445898 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19267 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679378 () Bool)

(declare-fun Unit!23785 () Unit!23782)

(assert (=> b!679378 (= e!387072 Unit!23785)))

(declare-fun b!679379 () Bool)

(assert (=> b!679379 (= e!387073 (contains!3540 acc!681 k!2843))))

(assert (= (and start!60498 res!445906) b!679366))

(assert (= (and b!679366 res!445897) b!679365))

(assert (= (and b!679365 res!445895) b!679371))

(assert (= (and b!679371 res!445905) b!679364))

(assert (= (and b!679364 res!445894) b!679379))

(assert (= (and b!679364 (not res!445903)) b!679375))

(assert (= (and b!679375 res!445902) b!679374))

(assert (= (and b!679364 res!445907) b!679372))

(assert (= (and b!679372 res!445900) b!679376))

(assert (= (and b!679376 res!445904) b!679373))

(assert (= (and b!679373 res!445901) b!679369))

(assert (= (and b!679369 res!445899) b!679370))

(assert (= (and b!679370 res!445896) b!679377))

(assert (= (and b!679377 res!445898) b!679367))

(assert (= (and b!679367 c!77102) b!679368))

(assert (= (and b!679367 (not c!77102)) b!679378))

(declare-fun m!644793 () Bool)

(assert (=> b!679367 m!644793))

(declare-fun m!644795 () Bool)

(assert (=> b!679367 m!644795))

(declare-fun m!644797 () Bool)

(assert (=> b!679367 m!644797))

(declare-fun m!644799 () Bool)

(assert (=> b!679376 m!644799))

(declare-fun m!644801 () Bool)

(assert (=> b!679371 m!644801))

(declare-fun m!644803 () Bool)

(assert (=> b!679379 m!644803))

(declare-fun m!644805 () Bool)

(assert (=> b!679372 m!644805))

(declare-fun m!644807 () Bool)

(assert (=> start!60498 m!644807))

(declare-fun m!644809 () Bool)

(assert (=> b!679368 m!644809))

(assert (=> b!679374 m!644803))

(declare-fun m!644811 () Bool)

(assert (=> b!679366 m!644811))

(declare-fun m!644813 () Bool)

(assert (=> b!679370 m!644813))

(declare-fun m!644815 () Bool)

(assert (=> b!679369 m!644815))

(declare-fun m!644817 () Bool)

(assert (=> b!679365 m!644817))

(push 1)

(assert (not b!679376))

(assert (not b!679372))

(assert (not b!679369))

(assert (not b!679374))

(assert (not b!679368))

(assert (not b!679379))

(assert (not b!679367))

(assert (not b!679366))

(assert (not b!679365))

(assert (not start!60498))

(assert (not b!679370))

(assert (not b!679371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

