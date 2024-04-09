; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62238 () Bool)

(assert start!62238)

(declare-fun b!697020 () Bool)

(declare-fun res!461125 () Bool)

(declare-fun e!396250 () Bool)

(assert (=> b!697020 (=> (not res!461125) (not e!396250))))

(declare-datatypes ((List!13225 0))(
  ( (Nil!13222) (Cons!13221 (h!14266 (_ BitVec 64)) (t!19515 List!13225)) )
))
(declare-fun acc!681 () List!13225)

(declare-fun contains!3768 (List!13225 (_ BitVec 64)) Bool)

(assert (=> b!697020 (= res!461125 (not (contains!3768 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697021 () Bool)

(declare-fun res!461123 () Bool)

(assert (=> b!697021 (=> (not res!461123) (not e!396250))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!697021 (= res!461123 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!697022 () Bool)

(declare-fun e!396252 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!697022 (= e!396252 (not (contains!3768 acc!681 k!2843)))))

(declare-fun b!697023 () Bool)

(declare-fun res!461112 () Bool)

(assert (=> b!697023 (=> (not res!461112) (not e!396250))))

(assert (=> b!697023 (= res!461112 (not (contains!3768 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697024 () Bool)

(declare-fun res!461118 () Bool)

(assert (=> b!697024 (=> (not res!461118) (not e!396250))))

(declare-datatypes ((array!39951 0))(
  ( (array!39952 (arr!19131 (Array (_ BitVec 32) (_ BitVec 64))) (size!19514 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39951)

(declare-fun arrayContainsKey!0 (array!39951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697024 (= res!461118 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!697025 () Bool)

(declare-fun e!396249 () Bool)

(assert (=> b!697025 (= e!396249 (contains!3768 acc!681 k!2843))))

(declare-fun b!697026 () Bool)

(declare-fun res!461120 () Bool)

(assert (=> b!697026 (=> (not res!461120) (not e!396250))))

(declare-fun e!396254 () Bool)

(assert (=> b!697026 (= res!461120 e!396254)))

(declare-fun res!461121 () Bool)

(assert (=> b!697026 (=> res!461121 e!396254)))

(assert (=> b!697026 (= res!461121 e!396249)))

(declare-fun res!461119 () Bool)

(assert (=> b!697026 (=> (not res!461119) (not e!396249))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697026 (= res!461119 (bvsgt from!3004 i!1382))))

(declare-fun b!697027 () Bool)

(declare-fun res!461128 () Bool)

(assert (=> b!697027 (=> (not res!461128) (not e!396250))))

(assert (=> b!697027 (= res!461128 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19514 a!3626))))))

(declare-fun res!461129 () Bool)

(assert (=> start!62238 (=> (not res!461129) (not e!396250))))

(assert (=> start!62238 (= res!461129 (and (bvslt (size!19514 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19514 a!3626))))))

(assert (=> start!62238 e!396250))

(assert (=> start!62238 true))

(declare-fun array_inv!14905 (array!39951) Bool)

(assert (=> start!62238 (array_inv!14905 a!3626)))

(declare-fun b!697028 () Bool)

(declare-fun res!461131 () Bool)

(assert (=> b!697028 (=> (not res!461131) (not e!396250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697028 (= res!461131 (not (validKeyInArray!0 (select (arr!19131 a!3626) from!3004))))))

(declare-fun b!697029 () Bool)

(declare-fun res!461113 () Bool)

(assert (=> b!697029 (=> (not res!461113) (not e!396250))))

(declare-fun arrayNoDuplicates!0 (array!39951 (_ BitVec 32) List!13225) Bool)

(assert (=> b!697029 (= res!461113 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13222))))

(declare-fun b!697030 () Bool)

(declare-fun res!461127 () Bool)

(assert (=> b!697030 (=> (not res!461127) (not e!396250))))

(assert (=> b!697030 (= res!461127 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697031 () Bool)

(assert (=> b!697031 (= e!396254 e!396252)))

(declare-fun res!461124 () Bool)

(assert (=> b!697031 (=> (not res!461124) (not e!396252))))

(assert (=> b!697031 (= res!461124 (bvsle from!3004 i!1382))))

(declare-fun b!697032 () Bool)

(declare-fun res!461132 () Bool)

(assert (=> b!697032 (=> (not res!461132) (not e!396250))))

(declare-fun e!396255 () Bool)

(assert (=> b!697032 (= res!461132 e!396255)))

(declare-fun res!461115 () Bool)

(assert (=> b!697032 (=> res!461115 e!396255)))

(declare-fun e!396253 () Bool)

(assert (=> b!697032 (= res!461115 e!396253)))

(declare-fun res!461126 () Bool)

(assert (=> b!697032 (=> (not res!461126) (not e!396253))))

(assert (=> b!697032 (= res!461126 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697033 () Bool)

(declare-fun e!396256 () Bool)

(assert (=> b!697033 (= e!396256 (not (contains!3768 acc!681 k!2843)))))

(declare-fun b!697034 () Bool)

(declare-fun res!461130 () Bool)

(assert (=> b!697034 (=> (not res!461130) (not e!396250))))

(declare-fun noDuplicate!1015 (List!13225) Bool)

(assert (=> b!697034 (= res!461130 (noDuplicate!1015 acc!681))))

(declare-fun b!697035 () Bool)

(assert (=> b!697035 (= e!396255 e!396256)))

(declare-fun res!461117 () Bool)

(assert (=> b!697035 (=> (not res!461117) (not e!396256))))

(assert (=> b!697035 (= res!461117 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697036 () Bool)

(declare-fun res!461122 () Bool)

(assert (=> b!697036 (=> (not res!461122) (not e!396250))))

(assert (=> b!697036 (= res!461122 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697037 () Bool)

(declare-fun res!461114 () Bool)

(assert (=> b!697037 (=> (not res!461114) (not e!396250))))

(assert (=> b!697037 (= res!461114 (validKeyInArray!0 k!2843))))

(declare-fun b!697038 () Bool)

(assert (=> b!697038 (= e!396250 (not true))))

(assert (=> b!697038 (arrayNoDuplicates!0 (array!39952 (store (arr!19131 a!3626) i!1382 k!2843) (size!19514 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!24550 0))(
  ( (Unit!24551) )
))
(declare-fun lt!317079 () Unit!24550)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39951 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13225) Unit!24550)

(assert (=> b!697038 (= lt!317079 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697039 () Bool)

(assert (=> b!697039 (= e!396253 (contains!3768 acc!681 k!2843))))

(declare-fun b!697040 () Bool)

(declare-fun res!461116 () Bool)

(assert (=> b!697040 (=> (not res!461116) (not e!396250))))

(assert (=> b!697040 (= res!461116 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19514 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!62238 res!461129) b!697034))

(assert (= (and b!697034 res!461130) b!697023))

(assert (= (and b!697023 res!461112) b!697020))

(assert (= (and b!697020 res!461125) b!697026))

(assert (= (and b!697026 res!461119) b!697025))

(assert (= (and b!697026 (not res!461121)) b!697031))

(assert (= (and b!697031 res!461124) b!697022))

(assert (= (and b!697026 res!461120) b!697029))

(assert (= (and b!697029 res!461113) b!697030))

(assert (= (and b!697030 res!461127) b!697027))

(assert (= (and b!697027 res!461128) b!697037))

(assert (= (and b!697037 res!461114) b!697024))

(assert (= (and b!697024 res!461118) b!697040))

(assert (= (and b!697040 res!461116) b!697028))

(assert (= (and b!697028 res!461131) b!697021))

(assert (= (and b!697021 res!461123) b!697032))

(assert (= (and b!697032 res!461126) b!697039))

(assert (= (and b!697032 (not res!461115)) b!697035))

(assert (= (and b!697035 res!461117) b!697033))

(assert (= (and b!697032 res!461132) b!697036))

(assert (= (and b!697036 res!461122) b!697038))

(declare-fun m!657609 () Bool)

(assert (=> b!697020 m!657609))

(declare-fun m!657611 () Bool)

(assert (=> b!697022 m!657611))

(assert (=> b!697039 m!657611))

(declare-fun m!657613 () Bool)

(assert (=> b!697037 m!657613))

(assert (=> b!697025 m!657611))

(assert (=> b!697033 m!657611))

(declare-fun m!657615 () Bool)

(assert (=> b!697023 m!657615))

(declare-fun m!657617 () Bool)

(assert (=> b!697024 m!657617))

(declare-fun m!657619 () Bool)

(assert (=> b!697034 m!657619))

(declare-fun m!657621 () Bool)

(assert (=> start!62238 m!657621))

(declare-fun m!657623 () Bool)

(assert (=> b!697038 m!657623))

(declare-fun m!657625 () Bool)

(assert (=> b!697038 m!657625))

(declare-fun m!657627 () Bool)

(assert (=> b!697038 m!657627))

(declare-fun m!657629 () Bool)

(assert (=> b!697028 m!657629))

(assert (=> b!697028 m!657629))

(declare-fun m!657631 () Bool)

(assert (=> b!697028 m!657631))

(declare-fun m!657633 () Bool)

(assert (=> b!697030 m!657633))

(declare-fun m!657635 () Bool)

(assert (=> b!697029 m!657635))

(declare-fun m!657637 () Bool)

(assert (=> b!697036 m!657637))

(push 1)

(assert (not b!697033))

(assert (not b!697030))

(assert (not b!697036))

(assert (not b!697023))

(assert (not b!697034))

(assert (not b!697037))

(assert (not b!697020))

(assert (not b!697029))

(assert (not b!697024))

(assert (not b!697039))

(assert (not b!697022))

(assert (not start!62238))

(assert (not b!697028))

(assert (not b!697038))

(assert (not b!697025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

