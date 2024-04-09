; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61286 () Bool)

(assert start!61286)

(declare-fun b!686160 () Bool)

(declare-fun res!451496 () Bool)

(declare-fun e!390765 () Bool)

(assert (=> b!686160 (=> (not res!451496) (not e!390765))))

(declare-fun e!390768 () Bool)

(assert (=> b!686160 (= res!451496 e!390768)))

(declare-fun res!451498 () Bool)

(assert (=> b!686160 (=> res!451498 e!390768)))

(declare-fun e!390763 () Bool)

(assert (=> b!686160 (= res!451498 e!390763)))

(declare-fun res!451492 () Bool)

(assert (=> b!686160 (=> (not res!451492) (not e!390763))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686160 (= res!451492 (bvsgt from!3004 i!1382))))

(declare-fun b!686161 () Bool)

(declare-fun res!451493 () Bool)

(assert (=> b!686161 (=> (not res!451493) (not e!390765))))

(declare-datatypes ((array!39626 0))(
  ( (array!39627 (arr!18985 (Array (_ BitVec 32) (_ BitVec 64))) (size!19358 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39626)

(assert (=> b!686161 (= res!451493 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19358 a!3626))))))

(declare-fun b!686162 () Bool)

(declare-fun res!451487 () Bool)

(assert (=> b!686162 (=> (not res!451487) (not e!390765))))

(declare-datatypes ((List!13079 0))(
  ( (Nil!13076) (Cons!13075 (h!14120 (_ BitVec 64)) (t!19342 List!13079)) )
))
(declare-fun acc!681 () List!13079)

(declare-fun arrayNoDuplicates!0 (array!39626 (_ BitVec 32) List!13079) Bool)

(assert (=> b!686162 (= res!451487 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686163 () Bool)

(assert (=> b!686163 (= e!390765 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!314954 () List!13079)

(assert (=> b!686163 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!314954)))

(declare-datatypes ((Unit!24162 0))(
  ( (Unit!24163) )
))
(declare-fun lt!314949 () Unit!24162)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39626 (_ BitVec 64) (_ BitVec 32) List!13079 List!13079) Unit!24162)

(assert (=> b!686163 (= lt!314949 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!314954))))

(declare-fun -!172 (List!13079 (_ BitVec 64)) List!13079)

(assert (=> b!686163 (= (-!172 lt!314954 k0!2843) acc!681)))

(declare-fun $colon$colon!371 (List!13079 (_ BitVec 64)) List!13079)

(assert (=> b!686163 (= lt!314954 ($colon$colon!371 acc!681 k0!2843))))

(declare-fun lt!314950 () Unit!24162)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13079) Unit!24162)

(assert (=> b!686163 (= lt!314950 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!207 (List!13079 List!13079) Bool)

(assert (=> b!686163 (subseq!207 acc!681 acc!681)))

(declare-fun lt!314951 () Unit!24162)

(declare-fun lemmaListSubSeqRefl!0 (List!13079) Unit!24162)

(assert (=> b!686163 (= lt!314951 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686163 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314948 () Unit!24162)

(declare-fun e!390767 () Unit!24162)

(assert (=> b!686163 (= lt!314948 e!390767)))

(declare-fun c!77705 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686163 (= c!77705 (validKeyInArray!0 (select (arr!18985 a!3626) from!3004)))))

(declare-fun lt!314947 () Unit!24162)

(declare-fun e!390766 () Unit!24162)

(assert (=> b!686163 (= lt!314947 e!390766)))

(declare-fun c!77704 () Bool)

(declare-fun arrayContainsKey!0 (array!39626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686163 (= c!77704 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686163 (arrayContainsKey!0 (array!39627 (store (arr!18985 a!3626) i!1382 k0!2843) (size!19358 a!3626)) k0!2843 from!3004)))

(declare-fun b!686164 () Bool)

(declare-fun res!451491 () Bool)

(assert (=> b!686164 (=> (not res!451491) (not e!390765))))

(assert (=> b!686164 (= res!451491 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19358 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686165 () Bool)

(declare-fun Unit!24164 () Unit!24162)

(assert (=> b!686165 (= e!390766 Unit!24164)))

(declare-fun b!686166 () Bool)

(declare-fun e!390769 () Bool)

(declare-fun contains!3622 (List!13079 (_ BitVec 64)) Bool)

(assert (=> b!686166 (= e!390769 (not (contains!3622 acc!681 k0!2843)))))

(declare-fun b!686167 () Bool)

(declare-fun Unit!24165 () Unit!24162)

(assert (=> b!686167 (= e!390767 Unit!24165)))

(declare-fun b!686168 () Bool)

(declare-fun res!451497 () Bool)

(assert (=> b!686168 (=> (not res!451497) (not e!390765))))

(assert (=> b!686168 (= res!451497 (not (contains!3622 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686169 () Bool)

(declare-fun lt!314955 () Unit!24162)

(assert (=> b!686169 (= e!390767 lt!314955)))

(declare-fun lt!314952 () Unit!24162)

(assert (=> b!686169 (= lt!314952 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686169 (subseq!207 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39626 List!13079 List!13079 (_ BitVec 32)) Unit!24162)

(assert (=> b!686169 (= lt!314955 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!371 acc!681 (select (arr!18985 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686169 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686170 () Bool)

(declare-fun res!451488 () Bool)

(assert (=> b!686170 (=> (not res!451488) (not e!390765))))

(assert (=> b!686170 (= res!451488 (not (contains!3622 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686171 () Bool)

(declare-fun res!451499 () Bool)

(assert (=> b!686171 (=> (not res!451499) (not e!390765))))

(assert (=> b!686171 (= res!451499 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13076))))

(declare-fun b!686172 () Bool)

(declare-fun res!451486 () Bool)

(assert (=> b!686172 (=> (not res!451486) (not e!390765))))

(assert (=> b!686172 (= res!451486 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686173 () Bool)

(assert (=> b!686173 (= e!390763 (contains!3622 acc!681 k0!2843))))

(declare-fun b!686174 () Bool)

(assert (=> b!686174 (= e!390768 e!390769)))

(declare-fun res!451494 () Bool)

(assert (=> b!686174 (=> (not res!451494) (not e!390769))))

(assert (=> b!686174 (= res!451494 (bvsle from!3004 i!1382))))

(declare-fun b!686175 () Bool)

(declare-fun res!451489 () Bool)

(assert (=> b!686175 (=> (not res!451489) (not e!390765))))

(declare-fun noDuplicate!869 (List!13079) Bool)

(assert (=> b!686175 (= res!451489 (noDuplicate!869 acc!681))))

(declare-fun b!686177 () Bool)

(declare-fun res!451490 () Bool)

(assert (=> b!686177 (=> (not res!451490) (not e!390765))))

(assert (=> b!686177 (= res!451490 (validKeyInArray!0 k0!2843))))

(declare-fun res!451495 () Bool)

(assert (=> start!61286 (=> (not res!451495) (not e!390765))))

(assert (=> start!61286 (= res!451495 (and (bvslt (size!19358 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19358 a!3626))))))

(assert (=> start!61286 e!390765))

(assert (=> start!61286 true))

(declare-fun array_inv!14759 (array!39626) Bool)

(assert (=> start!61286 (array_inv!14759 a!3626)))

(declare-fun b!686176 () Bool)

(declare-fun Unit!24166 () Unit!24162)

(assert (=> b!686176 (= e!390766 Unit!24166)))

(declare-fun lt!314953 () Unit!24162)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39626 (_ BitVec 64) (_ BitVec 32)) Unit!24162)

(assert (=> b!686176 (= lt!314953 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!686176 false))

(assert (= (and start!61286 res!451495) b!686175))

(assert (= (and b!686175 res!451489) b!686168))

(assert (= (and b!686168 res!451497) b!686170))

(assert (= (and b!686170 res!451488) b!686160))

(assert (= (and b!686160 res!451492) b!686173))

(assert (= (and b!686160 (not res!451498)) b!686174))

(assert (= (and b!686174 res!451494) b!686166))

(assert (= (and b!686160 res!451496) b!686171))

(assert (= (and b!686171 res!451499) b!686162))

(assert (= (and b!686162 res!451487) b!686161))

(assert (= (and b!686161 res!451493) b!686177))

(assert (= (and b!686177 res!451490) b!686172))

(assert (= (and b!686172 res!451486) b!686164))

(assert (= (and b!686164 res!451491) b!686163))

(assert (= (and b!686163 c!77704) b!686176))

(assert (= (and b!686163 (not c!77704)) b!686165))

(assert (= (and b!686163 c!77705) b!686169))

(assert (= (and b!686163 (not c!77705)) b!686167))

(declare-fun m!650333 () Bool)

(assert (=> b!686170 m!650333))

(declare-fun m!650335 () Bool)

(assert (=> b!686162 m!650335))

(declare-fun m!650337 () Bool)

(assert (=> b!686173 m!650337))

(assert (=> b!686166 m!650337))

(declare-fun m!650339 () Bool)

(assert (=> b!686176 m!650339))

(declare-fun m!650341 () Bool)

(assert (=> b!686169 m!650341))

(declare-fun m!650343 () Bool)

(assert (=> b!686169 m!650343))

(declare-fun m!650345 () Bool)

(assert (=> b!686169 m!650345))

(declare-fun m!650347 () Bool)

(assert (=> b!686169 m!650347))

(assert (=> b!686169 m!650343))

(assert (=> b!686169 m!650345))

(declare-fun m!650349 () Bool)

(assert (=> b!686169 m!650349))

(declare-fun m!650351 () Bool)

(assert (=> b!686169 m!650351))

(declare-fun m!650353 () Bool)

(assert (=> b!686168 m!650353))

(assert (=> b!686163 m!650341))

(assert (=> b!686163 m!650343))

(declare-fun m!650355 () Bool)

(assert (=> b!686163 m!650355))

(declare-fun m!650357 () Bool)

(assert (=> b!686163 m!650357))

(declare-fun m!650359 () Bool)

(assert (=> b!686163 m!650359))

(declare-fun m!650361 () Bool)

(assert (=> b!686163 m!650361))

(assert (=> b!686163 m!650349))

(declare-fun m!650363 () Bool)

(assert (=> b!686163 m!650363))

(declare-fun m!650365 () Bool)

(assert (=> b!686163 m!650365))

(declare-fun m!650367 () Bool)

(assert (=> b!686163 m!650367))

(assert (=> b!686163 m!650343))

(declare-fun m!650369 () Bool)

(assert (=> b!686163 m!650369))

(declare-fun m!650371 () Bool)

(assert (=> b!686163 m!650371))

(assert (=> b!686163 m!650351))

(declare-fun m!650373 () Bool)

(assert (=> b!686171 m!650373))

(declare-fun m!650375 () Bool)

(assert (=> b!686172 m!650375))

(declare-fun m!650377 () Bool)

(assert (=> start!61286 m!650377))

(declare-fun m!650379 () Bool)

(assert (=> b!686177 m!650379))

(declare-fun m!650381 () Bool)

(assert (=> b!686175 m!650381))

(check-sat (not b!686168) (not b!686171) (not b!686173) (not b!686175) (not b!686176) (not b!686163) (not b!686169) (not b!686170) (not b!686166) (not b!686162) (not b!686172) (not start!61286) (not b!686177))
(check-sat)
