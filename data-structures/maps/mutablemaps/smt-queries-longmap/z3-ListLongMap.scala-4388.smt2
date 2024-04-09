; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60374 () Bool)

(assert start!60374)

(declare-fun b!678016 () Bool)

(declare-fun res!444608 () Bool)

(declare-fun e!386405 () Bool)

(assert (=> b!678016 (=> (not res!444608) (not e!386405))))

(declare-datatypes ((List!12971 0))(
  ( (Nil!12968) (Cons!12967 (h!14012 (_ BitVec 64)) (t!19207 List!12971)) )
))
(declare-fun acc!681 () List!12971)

(declare-fun contains!3514 (List!12971 (_ BitVec 64)) Bool)

(assert (=> b!678016 (= res!444608 (not (contains!3514 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678017 () Bool)

(declare-fun res!444618 () Bool)

(assert (=> b!678017 (=> (not res!444618) (not e!386405))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39377 0))(
  ( (array!39378 (arr!18877 (Array (_ BitVec 32) (_ BitVec 64))) (size!19241 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39377)

(assert (=> b!678017 (= res!444618 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19241 a!3626))))))

(declare-fun b!678019 () Bool)

(declare-fun res!444614 () Bool)

(assert (=> b!678019 (=> (not res!444614) (not e!386405))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678019 (= res!444614 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678020 () Bool)

(declare-fun e!386403 () Bool)

(assert (=> b!678020 (= e!386403 (contains!3514 acc!681 k0!2843))))

(declare-fun b!678021 () Bool)

(declare-fun e!386404 () Bool)

(assert (=> b!678021 (= e!386404 (not (contains!3514 acc!681 k0!2843)))))

(declare-fun b!678022 () Bool)

(declare-fun e!386402 () Bool)

(assert (=> b!678022 (= e!386402 e!386404)))

(declare-fun res!444609 () Bool)

(assert (=> b!678022 (=> (not res!444609) (not e!386404))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!678022 (= res!444609 (bvsle from!3004 i!1382))))

(declare-fun b!678023 () Bool)

(declare-fun res!444610 () Bool)

(assert (=> b!678023 (=> (not res!444610) (not e!386405))))

(declare-fun arrayNoDuplicates!0 (array!39377 (_ BitVec 32) List!12971) Bool)

(assert (=> b!678023 (= res!444610 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12968))))

(declare-fun b!678024 () Bool)

(declare-datatypes ((Unit!23768 0))(
  ( (Unit!23769) )
))
(declare-fun e!386406 () Unit!23768)

(declare-fun Unit!23770 () Unit!23768)

(assert (=> b!678024 (= e!386406 Unit!23770)))

(declare-fun b!678025 () Bool)

(declare-fun res!444611 () Bool)

(assert (=> b!678025 (=> (not res!444611) (not e!386405))))

(assert (=> b!678025 (= res!444611 e!386402)))

(declare-fun res!444607 () Bool)

(assert (=> b!678025 (=> res!444607 e!386402)))

(assert (=> b!678025 (= res!444607 e!386403)))

(declare-fun res!444620 () Bool)

(assert (=> b!678025 (=> (not res!444620) (not e!386403))))

(assert (=> b!678025 (= res!444620 (bvsgt from!3004 i!1382))))

(declare-fun b!678026 () Bool)

(declare-fun res!444619 () Bool)

(assert (=> b!678026 (=> (not res!444619) (not e!386405))))

(assert (=> b!678026 (= res!444619 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678027 () Bool)

(declare-fun res!444606 () Bool)

(assert (=> b!678027 (=> (not res!444606) (not e!386405))))

(assert (=> b!678027 (= res!444606 (not (contains!3514 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678028 () Bool)

(declare-fun res!444612 () Bool)

(assert (=> b!678028 (=> (not res!444612) (not e!386405))))

(assert (=> b!678028 (= res!444612 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19241 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun res!444616 () Bool)

(assert (=> start!60374 (=> (not res!444616) (not e!386405))))

(assert (=> start!60374 (= res!444616 (and (bvslt (size!19241 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19241 a!3626))))))

(assert (=> start!60374 e!386405))

(assert (=> start!60374 true))

(declare-fun array_inv!14651 (array!39377) Bool)

(assert (=> start!60374 (array_inv!14651 a!3626)))

(declare-fun b!678018 () Bool)

(assert (=> b!678018 (= e!386405 (= (select (arr!18877 a!3626) from!3004) k0!2843))))

(declare-fun lt!312819 () Unit!23768)

(assert (=> b!678018 (= lt!312819 e!386406)))

(declare-fun c!77072 () Bool)

(assert (=> b!678018 (= c!77072 (= (select (arr!18877 a!3626) from!3004) k0!2843))))

(declare-fun b!678029 () Bool)

(declare-fun Unit!23771 () Unit!23768)

(assert (=> b!678029 (= e!386406 Unit!23771)))

(assert (=> b!678029 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312818 () Unit!23768)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39377 (_ BitVec 64) (_ BitVec 32)) Unit!23768)

(assert (=> b!678029 (= lt!312818 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!678029 false))

(declare-fun b!678030 () Bool)

(declare-fun res!444613 () Bool)

(assert (=> b!678030 (=> (not res!444613) (not e!386405))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678030 (= res!444613 (validKeyInArray!0 k0!2843))))

(declare-fun b!678031 () Bool)

(declare-fun res!444617 () Bool)

(assert (=> b!678031 (=> (not res!444617) (not e!386405))))

(declare-fun noDuplicate!761 (List!12971) Bool)

(assert (=> b!678031 (= res!444617 (noDuplicate!761 acc!681))))

(declare-fun b!678032 () Bool)

(declare-fun res!444615 () Bool)

(assert (=> b!678032 (=> (not res!444615) (not e!386405))))

(assert (=> b!678032 (= res!444615 (validKeyInArray!0 (select (arr!18877 a!3626) from!3004)))))

(assert (= (and start!60374 res!444616) b!678031))

(assert (= (and b!678031 res!444617) b!678027))

(assert (= (and b!678027 res!444606) b!678016))

(assert (= (and b!678016 res!444608) b!678025))

(assert (= (and b!678025 res!444620) b!678020))

(assert (= (and b!678025 (not res!444607)) b!678022))

(assert (= (and b!678022 res!444609) b!678021))

(assert (= (and b!678025 res!444611) b!678023))

(assert (= (and b!678023 res!444610) b!678026))

(assert (= (and b!678026 res!444619) b!678017))

(assert (= (and b!678017 res!444618) b!678030))

(assert (= (and b!678030 res!444613) b!678019))

(assert (= (and b!678019 res!444614) b!678028))

(assert (= (and b!678028 res!444612) b!678032))

(assert (= (and b!678032 res!444615) b!678018))

(assert (= (and b!678018 c!77072) b!678029))

(assert (= (and b!678018 (not c!77072)) b!678024))

(declare-fun m!643967 () Bool)

(assert (=> b!678021 m!643967))

(assert (=> b!678020 m!643967))

(declare-fun m!643969 () Bool)

(assert (=> b!678026 m!643969))

(declare-fun m!643971 () Bool)

(assert (=> b!678032 m!643971))

(assert (=> b!678032 m!643971))

(declare-fun m!643973 () Bool)

(assert (=> b!678032 m!643973))

(declare-fun m!643975 () Bool)

(assert (=> b!678019 m!643975))

(declare-fun m!643977 () Bool)

(assert (=> b!678027 m!643977))

(declare-fun m!643979 () Bool)

(assert (=> b!678031 m!643979))

(declare-fun m!643981 () Bool)

(assert (=> b!678030 m!643981))

(declare-fun m!643983 () Bool)

(assert (=> b!678016 m!643983))

(declare-fun m!643985 () Bool)

(assert (=> b!678023 m!643985))

(assert (=> b!678018 m!643971))

(declare-fun m!643987 () Bool)

(assert (=> start!60374 m!643987))

(declare-fun m!643989 () Bool)

(assert (=> b!678029 m!643989))

(declare-fun m!643991 () Bool)

(assert (=> b!678029 m!643991))

(check-sat (not b!678030) (not b!678027) (not b!678016) (not b!678019) (not b!678032) (not b!678029) (not b!678023) (not b!678021) (not b!678020) (not b!678031) (not start!60374) (not b!678026))
