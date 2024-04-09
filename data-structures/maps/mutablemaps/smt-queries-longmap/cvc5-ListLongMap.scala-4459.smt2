; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62064 () Bool)

(assert start!62064)

(declare-fun b!694485 () Bool)

(declare-fun e!395029 () Bool)

(declare-fun e!395030 () Bool)

(assert (=> b!694485 (= e!395029 e!395030)))

(declare-fun res!458684 () Bool)

(assert (=> b!694485 (=> (not res!458684) (not e!395030))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!694485 (= res!458684 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39861 0))(
  ( (array!39862 (arr!19089 (Array (_ BitVec 32) (_ BitVec 64))) (size!19472 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39861)

(declare-datatypes ((List!13183 0))(
  ( (Nil!13180) (Cons!13179 (h!14224 (_ BitVec 64)) (t!19470 List!13183)) )
))
(declare-fun acc!681 () List!13183)

(declare-fun lt!316875 () List!13183)

(declare-fun $colon$colon!436 (List!13183 (_ BitVec 64)) List!13183)

(assert (=> b!694485 (= lt!316875 ($colon$colon!436 acc!681 (select (arr!19089 a!3626) from!3004)))))

(declare-fun b!694486 () Bool)

(declare-fun res!458703 () Bool)

(declare-fun e!395022 () Bool)

(assert (=> b!694486 (=> (not res!458703) (not e!395022))))

(declare-fun arrayNoDuplicates!0 (array!39861 (_ BitVec 32) List!13183) Bool)

(assert (=> b!694486 (= res!458703 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694487 () Bool)

(declare-fun res!458681 () Bool)

(assert (=> b!694487 (=> (not res!458681) (not e!395030))))

(declare-fun noDuplicate!973 (List!13183) Bool)

(assert (=> b!694487 (= res!458681 (noDuplicate!973 lt!316875))))

(declare-fun b!694488 () Bool)

(declare-fun e!395028 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3726 (List!13183 (_ BitVec 64)) Bool)

(assert (=> b!694488 (= e!395028 (contains!3726 lt!316875 k!2843))))

(declare-fun b!694489 () Bool)

(declare-fun e!395026 () Bool)

(declare-fun e!395032 () Bool)

(assert (=> b!694489 (= e!395026 e!395032)))

(declare-fun res!458686 () Bool)

(assert (=> b!694489 (=> (not res!458686) (not e!395032))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694489 (= res!458686 (bvsle from!3004 i!1382))))

(declare-fun b!694490 () Bool)

(declare-datatypes ((Unit!24526 0))(
  ( (Unit!24527) )
))
(declare-fun e!395023 () Unit!24526)

(declare-fun Unit!24528 () Unit!24526)

(assert (=> b!694490 (= e!395023 Unit!24528)))

(declare-fun b!694491 () Bool)

(declare-fun res!458689 () Bool)

(assert (=> b!694491 (=> (not res!458689) (not e!395022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694491 (= res!458689 (validKeyInArray!0 k!2843))))

(declare-fun b!694492 () Bool)

(assert (=> b!694492 (= e!395032 (not (contains!3726 acc!681 k!2843)))))

(declare-fun b!694493 () Bool)

(declare-fun res!458702 () Bool)

(assert (=> b!694493 (=> (not res!458702) (not e!395030))))

(assert (=> b!694493 (= res!458702 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316875))))

(declare-fun b!694494 () Bool)

(declare-fun res!458694 () Bool)

(assert (=> b!694494 (=> (not res!458694) (not e!395022))))

(assert (=> b!694494 (= res!458694 (not (contains!3726 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694495 () Bool)

(declare-fun res!458697 () Bool)

(assert (=> b!694495 (=> (not res!458697) (not e!395022))))

(assert (=> b!694495 (= res!458697 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19472 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694496 () Bool)

(declare-fun res!458687 () Bool)

(assert (=> b!694496 (=> (not res!458687) (not e!395022))))

(assert (=> b!694496 (= res!458687 (not (contains!3726 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694497 () Bool)

(declare-fun res!458693 () Bool)

(assert (=> b!694497 (=> (not res!458693) (not e!395030))))

(declare-fun e!395025 () Bool)

(assert (=> b!694497 (= res!458693 e!395025)))

(declare-fun res!458692 () Bool)

(assert (=> b!694497 (=> res!458692 e!395025)))

(assert (=> b!694497 (= res!458692 e!395028)))

(declare-fun res!458700 () Bool)

(assert (=> b!694497 (=> (not res!458700) (not e!395028))))

(assert (=> b!694497 (= res!458700 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!458685 () Bool)

(assert (=> start!62064 (=> (not res!458685) (not e!395022))))

(assert (=> start!62064 (= res!458685 (and (bvslt (size!19472 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19472 a!3626))))))

(assert (=> start!62064 e!395022))

(assert (=> start!62064 true))

(declare-fun array_inv!14863 (array!39861) Bool)

(assert (=> start!62064 (array_inv!14863 a!3626)))

(declare-fun b!694498 () Bool)

(declare-fun res!458682 () Bool)

(assert (=> b!694498 (=> (not res!458682) (not e!395022))))

(declare-fun arrayContainsKey!0 (array!39861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694498 (= res!458682 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694499 () Bool)

(declare-fun res!458695 () Bool)

(assert (=> b!694499 (=> (not res!458695) (not e!395022))))

(assert (=> b!694499 (= res!458695 (noDuplicate!973 acc!681))))

(declare-fun b!694500 () Bool)

(declare-fun res!458683 () Bool)

(assert (=> b!694500 (=> (not res!458683) (not e!395022))))

(assert (=> b!694500 (= res!458683 (validKeyInArray!0 (select (arr!19089 a!3626) from!3004)))))

(declare-fun b!694501 () Bool)

(declare-fun res!458696 () Bool)

(assert (=> b!694501 (=> (not res!458696) (not e!395030))))

(assert (=> b!694501 (= res!458696 (not (contains!3726 lt!316875 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694502 () Bool)

(declare-fun res!458701 () Bool)

(assert (=> b!694502 (=> (not res!458701) (not e!395022))))

(assert (=> b!694502 (= res!458701 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19472 a!3626))))))

(declare-fun b!694503 () Bool)

(declare-fun e!395031 () Bool)

(assert (=> b!694503 (= e!395025 e!395031)))

(declare-fun res!458690 () Bool)

(assert (=> b!694503 (=> (not res!458690) (not e!395031))))

(assert (=> b!694503 (= res!458690 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694504 () Bool)

(declare-fun res!458688 () Bool)

(assert (=> b!694504 (=> (not res!458688) (not e!395022))))

(assert (=> b!694504 (= res!458688 e!395026)))

(declare-fun res!458691 () Bool)

(assert (=> b!694504 (=> res!458691 e!395026)))

(declare-fun e!395027 () Bool)

(assert (=> b!694504 (= res!458691 e!395027)))

(declare-fun res!458704 () Bool)

(assert (=> b!694504 (=> (not res!458704) (not e!395027))))

(assert (=> b!694504 (= res!458704 (bvsgt from!3004 i!1382))))

(declare-fun b!694505 () Bool)

(declare-fun res!458705 () Bool)

(assert (=> b!694505 (=> (not res!458705) (not e!395030))))

(assert (=> b!694505 (= res!458705 (not (contains!3726 lt!316875 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694506 () Bool)

(declare-fun res!458698 () Bool)

(assert (=> b!694506 (=> (not res!458698) (not e!395022))))

(assert (=> b!694506 (= res!458698 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13180))))

(declare-fun b!694507 () Bool)

(assert (=> b!694507 (= e!395030 (not true))))

(assert (=> b!694507 (arrayNoDuplicates!0 (array!39862 (store (arr!19089 a!3626) i!1382 k!2843) (size!19472 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!316875)))

(declare-fun lt!316876 () Unit!24526)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39861 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13183) Unit!24526)

(assert (=> b!694507 (= lt!316876 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316875))))

(declare-fun b!694508 () Bool)

(declare-fun Unit!24529 () Unit!24526)

(assert (=> b!694508 (= e!395023 Unit!24529)))

(assert (=> b!694508 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316878 () Unit!24526)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39861 (_ BitVec 64) (_ BitVec 32)) Unit!24526)

(assert (=> b!694508 (= lt!316878 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694508 false))

(declare-fun b!694509 () Bool)

(assert (=> b!694509 (= e!395031 (not (contains!3726 lt!316875 k!2843)))))

(declare-fun b!694510 () Bool)

(assert (=> b!694510 (= e!395022 e!395029)))

(declare-fun res!458699 () Bool)

(assert (=> b!694510 (=> (not res!458699) (not e!395029))))

(assert (=> b!694510 (= res!458699 (not (= (select (arr!19089 a!3626) from!3004) k!2843)))))

(declare-fun lt!316877 () Unit!24526)

(assert (=> b!694510 (= lt!316877 e!395023)))

(declare-fun c!78269 () Bool)

(assert (=> b!694510 (= c!78269 (= (select (arr!19089 a!3626) from!3004) k!2843))))

(declare-fun b!694511 () Bool)

(assert (=> b!694511 (= e!395027 (contains!3726 acc!681 k!2843))))

(assert (= (and start!62064 res!458685) b!694499))

(assert (= (and b!694499 res!458695) b!694496))

(assert (= (and b!694496 res!458687) b!694494))

(assert (= (and b!694494 res!458694) b!694504))

(assert (= (and b!694504 res!458704) b!694511))

(assert (= (and b!694504 (not res!458691)) b!694489))

(assert (= (and b!694489 res!458686) b!694492))

(assert (= (and b!694504 res!458688) b!694506))

(assert (= (and b!694506 res!458698) b!694486))

(assert (= (and b!694486 res!458703) b!694502))

(assert (= (and b!694502 res!458701) b!694491))

(assert (= (and b!694491 res!458689) b!694498))

(assert (= (and b!694498 res!458682) b!694495))

(assert (= (and b!694495 res!458697) b!694500))

(assert (= (and b!694500 res!458683) b!694510))

(assert (= (and b!694510 c!78269) b!694508))

(assert (= (and b!694510 (not c!78269)) b!694490))

(assert (= (and b!694510 res!458699) b!694485))

(assert (= (and b!694485 res!458684) b!694487))

(assert (= (and b!694487 res!458681) b!694505))

(assert (= (and b!694505 res!458705) b!694501))

(assert (= (and b!694501 res!458696) b!694497))

(assert (= (and b!694497 res!458700) b!694488))

(assert (= (and b!694497 (not res!458692)) b!694503))

(assert (= (and b!694503 res!458690) b!694509))

(assert (= (and b!694497 res!458693) b!694493))

(assert (= (and b!694493 res!458702) b!694507))

(declare-fun m!656247 () Bool)

(assert (=> b!694498 m!656247))

(declare-fun m!656249 () Bool)

(assert (=> b!694494 m!656249))

(declare-fun m!656251 () Bool)

(assert (=> b!694505 m!656251))

(declare-fun m!656253 () Bool)

(assert (=> b!694491 m!656253))

(declare-fun m!656255 () Bool)

(assert (=> b!694510 m!656255))

(declare-fun m!656257 () Bool)

(assert (=> start!62064 m!656257))

(declare-fun m!656259 () Bool)

(assert (=> b!694493 m!656259))

(assert (=> b!694485 m!656255))

(assert (=> b!694485 m!656255))

(declare-fun m!656261 () Bool)

(assert (=> b!694485 m!656261))

(declare-fun m!656263 () Bool)

(assert (=> b!694508 m!656263))

(declare-fun m!656265 () Bool)

(assert (=> b!694508 m!656265))

(declare-fun m!656267 () Bool)

(assert (=> b!694501 m!656267))

(declare-fun m!656269 () Bool)

(assert (=> b!694507 m!656269))

(declare-fun m!656271 () Bool)

(assert (=> b!694507 m!656271))

(declare-fun m!656273 () Bool)

(assert (=> b!694507 m!656273))

(declare-fun m!656275 () Bool)

(assert (=> b!694499 m!656275))

(assert (=> b!694500 m!656255))

(assert (=> b!694500 m!656255))

(declare-fun m!656277 () Bool)

(assert (=> b!694500 m!656277))

(declare-fun m!656279 () Bool)

(assert (=> b!694486 m!656279))

(declare-fun m!656281 () Bool)

(assert (=> b!694487 m!656281))

(declare-fun m!656283 () Bool)

(assert (=> b!694509 m!656283))

(declare-fun m!656285 () Bool)

(assert (=> b!694492 m!656285))

(declare-fun m!656287 () Bool)

(assert (=> b!694506 m!656287))

(declare-fun m!656289 () Bool)

(assert (=> b!694496 m!656289))

(assert (=> b!694511 m!656285))

(assert (=> b!694488 m!656283))

(push 1)

