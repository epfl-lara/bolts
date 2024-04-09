; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62240 () Bool)

(assert start!62240)

(declare-fun res!461179 () Bool)

(declare-fun e!396276 () Bool)

(assert (=> start!62240 (=> (not res!461179) (not e!396276))))

(declare-datatypes ((array!39953 0))(
  ( (array!39954 (arr!19132 (Array (_ BitVec 32) (_ BitVec 64))) (size!19515 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39953)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!62240 (= res!461179 (and (bvslt (size!19515 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19515 a!3626))))))

(assert (=> start!62240 e!396276))

(assert (=> start!62240 true))

(declare-fun array_inv!14906 (array!39953) Bool)

(assert (=> start!62240 (array_inv!14906 a!3626)))

(declare-fun b!697083 () Bool)

(declare-fun res!461195 () Bool)

(assert (=> b!697083 (=> (not res!461195) (not e!396276))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697083 (= res!461195 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19515 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!697084 () Bool)

(declare-fun res!461188 () Bool)

(assert (=> b!697084 (=> (not res!461188) (not e!396276))))

(declare-datatypes ((List!13226 0))(
  ( (Nil!13223) (Cons!13222 (h!14267 (_ BitVec 64)) (t!19516 List!13226)) )
))
(declare-fun acc!681 () List!13226)

(declare-fun arrayNoDuplicates!0 (array!39953 (_ BitVec 32) List!13226) Bool)

(assert (=> b!697084 (= res!461188 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697085 () Bool)

(declare-fun res!461175 () Bool)

(assert (=> b!697085 (=> (not res!461175) (not e!396276))))

(declare-fun e!396278 () Bool)

(assert (=> b!697085 (= res!461175 e!396278)))

(declare-fun res!461185 () Bool)

(assert (=> b!697085 (=> res!461185 e!396278)))

(declare-fun e!396273 () Bool)

(assert (=> b!697085 (= res!461185 e!396273)))

(declare-fun res!461180 () Bool)

(assert (=> b!697085 (=> (not res!461180) (not e!396273))))

(assert (=> b!697085 (= res!461180 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697086 () Bool)

(declare-fun res!461184 () Bool)

(assert (=> b!697086 (=> (not res!461184) (not e!396276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697086 (= res!461184 (not (validKeyInArray!0 (select (arr!19132 a!3626) from!3004))))))

(declare-fun b!697087 () Bool)

(declare-fun e!396275 () Bool)

(assert (=> b!697087 (= e!396278 e!396275)))

(declare-fun res!461176 () Bool)

(assert (=> b!697087 (=> (not res!461176) (not e!396275))))

(assert (=> b!697087 (= res!461176 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697088 () Bool)

(declare-fun res!461192 () Bool)

(assert (=> b!697088 (=> (not res!461192) (not e!396276))))

(assert (=> b!697088 (= res!461192 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13223))))

(declare-fun b!697089 () Bool)

(declare-fun res!461178 () Bool)

(assert (=> b!697089 (=> (not res!461178) (not e!396276))))

(assert (=> b!697089 (= res!461178 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!697090 () Bool)

(declare-fun res!461189 () Bool)

(assert (=> b!697090 (=> (not res!461189) (not e!396276))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697090 (= res!461189 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!697091 () Bool)

(declare-fun res!461190 () Bool)

(assert (=> b!697091 (=> (not res!461190) (not e!396276))))

(assert (=> b!697091 (= res!461190 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19515 a!3626))))))

(declare-fun b!697092 () Bool)

(declare-fun e!396277 () Bool)

(declare-fun contains!3769 (List!13226 (_ BitVec 64)) Bool)

(assert (=> b!697092 (= e!396277 (not (contains!3769 acc!681 k0!2843)))))

(declare-fun b!697093 () Bool)

(declare-fun res!461194 () Bool)

(assert (=> b!697093 (=> (not res!461194) (not e!396276))))

(assert (=> b!697093 (= res!461194 (not (contains!3769 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697094 () Bool)

(declare-fun e!396280 () Bool)

(assert (=> b!697094 (= e!396280 (contains!3769 acc!681 k0!2843))))

(declare-fun b!697095 () Bool)

(assert (=> b!697095 (= e!396276 (not true))))

(assert (=> b!697095 (arrayNoDuplicates!0 (array!39954 (store (arr!19132 a!3626) i!1382 k0!2843) (size!19515 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!24552 0))(
  ( (Unit!24553) )
))
(declare-fun lt!317082 () Unit!24552)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39953 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13226) Unit!24552)

(assert (=> b!697095 (= lt!317082 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697096 () Bool)

(assert (=> b!697096 (= e!396275 (not (contains!3769 acc!681 k0!2843)))))

(declare-fun b!697097 () Bool)

(assert (=> b!697097 (= e!396273 (contains!3769 acc!681 k0!2843))))

(declare-fun b!697098 () Bool)

(declare-fun res!461191 () Bool)

(assert (=> b!697098 (=> (not res!461191) (not e!396276))))

(assert (=> b!697098 (= res!461191 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697099 () Bool)

(declare-fun res!461193 () Bool)

(assert (=> b!697099 (=> (not res!461193) (not e!396276))))

(declare-fun e!396279 () Bool)

(assert (=> b!697099 (= res!461193 e!396279)))

(declare-fun res!461181 () Bool)

(assert (=> b!697099 (=> res!461181 e!396279)))

(assert (=> b!697099 (= res!461181 e!396280)))

(declare-fun res!461177 () Bool)

(assert (=> b!697099 (=> (not res!461177) (not e!396280))))

(assert (=> b!697099 (= res!461177 (bvsgt from!3004 i!1382))))

(declare-fun b!697100 () Bool)

(assert (=> b!697100 (= e!396279 e!396277)))

(declare-fun res!461183 () Bool)

(assert (=> b!697100 (=> (not res!461183) (not e!396277))))

(assert (=> b!697100 (= res!461183 (bvsle from!3004 i!1382))))

(declare-fun b!697101 () Bool)

(declare-fun res!461182 () Bool)

(assert (=> b!697101 (=> (not res!461182) (not e!396276))))

(assert (=> b!697101 (= res!461182 (not (contains!3769 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697102 () Bool)

(declare-fun res!461186 () Bool)

(assert (=> b!697102 (=> (not res!461186) (not e!396276))))

(assert (=> b!697102 (= res!461186 (validKeyInArray!0 k0!2843))))

(declare-fun b!697103 () Bool)

(declare-fun res!461187 () Bool)

(assert (=> b!697103 (=> (not res!461187) (not e!396276))))

(declare-fun noDuplicate!1016 (List!13226) Bool)

(assert (=> b!697103 (= res!461187 (noDuplicate!1016 acc!681))))

(assert (= (and start!62240 res!461179) b!697103))

(assert (= (and b!697103 res!461187) b!697101))

(assert (= (and b!697101 res!461182) b!697093))

(assert (= (and b!697093 res!461194) b!697099))

(assert (= (and b!697099 res!461177) b!697094))

(assert (= (and b!697099 (not res!461181)) b!697100))

(assert (= (and b!697100 res!461183) b!697092))

(assert (= (and b!697099 res!461193) b!697088))

(assert (= (and b!697088 res!461192) b!697098))

(assert (= (and b!697098 res!461191) b!697091))

(assert (= (and b!697091 res!461190) b!697102))

(assert (= (and b!697102 res!461186) b!697090))

(assert (= (and b!697090 res!461189) b!697083))

(assert (= (and b!697083 res!461195) b!697086))

(assert (= (and b!697086 res!461184) b!697089))

(assert (= (and b!697089 res!461178) b!697085))

(assert (= (and b!697085 res!461180) b!697097))

(assert (= (and b!697085 (not res!461185)) b!697087))

(assert (= (and b!697087 res!461176) b!697096))

(assert (= (and b!697085 res!461175) b!697084))

(assert (= (and b!697084 res!461188) b!697095))

(declare-fun m!657639 () Bool)

(assert (=> b!697097 m!657639))

(declare-fun m!657641 () Bool)

(assert (=> b!697086 m!657641))

(assert (=> b!697086 m!657641))

(declare-fun m!657643 () Bool)

(assert (=> b!697086 m!657643))

(declare-fun m!657645 () Bool)

(assert (=> b!697101 m!657645))

(assert (=> b!697096 m!657639))

(assert (=> b!697092 m!657639))

(declare-fun m!657647 () Bool)

(assert (=> b!697103 m!657647))

(declare-fun m!657649 () Bool)

(assert (=> b!697102 m!657649))

(declare-fun m!657651 () Bool)

(assert (=> b!697090 m!657651))

(declare-fun m!657653 () Bool)

(assert (=> b!697093 m!657653))

(declare-fun m!657655 () Bool)

(assert (=> b!697084 m!657655))

(declare-fun m!657657 () Bool)

(assert (=> b!697088 m!657657))

(declare-fun m!657659 () Bool)

(assert (=> start!62240 m!657659))

(declare-fun m!657661 () Bool)

(assert (=> b!697095 m!657661))

(declare-fun m!657663 () Bool)

(assert (=> b!697095 m!657663))

(declare-fun m!657665 () Bool)

(assert (=> b!697095 m!657665))

(assert (=> b!697094 m!657639))

(declare-fun m!657667 () Bool)

(assert (=> b!697098 m!657667))

(check-sat (not b!697095) (not b!697092) (not b!697090) (not b!697102) (not b!697103) (not b!697093) (not b!697088) (not b!697097) (not b!697096) (not start!62240) (not b!697086) (not b!697101) (not b!697098) (not b!697084) (not b!697094))
