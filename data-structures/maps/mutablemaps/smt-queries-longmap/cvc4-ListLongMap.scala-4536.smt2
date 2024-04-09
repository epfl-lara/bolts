; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62984 () Bool)

(assert start!62984)

(declare-fun b!709595 () Bool)

(declare-fun res!473268 () Bool)

(declare-fun e!399327 () Bool)

(assert (=> b!709595 (=> (not res!473268) (not e!399327))))

(declare-datatypes ((array!40354 0))(
  ( (array!40355 (arr!19322 (Array (_ BitVec 32) (_ BitVec 64))) (size!19718 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40354)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709595 (= res!473268 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!709596 () Bool)

(declare-fun res!473269 () Bool)

(assert (=> b!709596 (=> (not res!473269) (not e!399327))))

(declare-datatypes ((List!13416 0))(
  ( (Nil!13413) (Cons!13412 (h!14457 (_ BitVec 64)) (t!19721 List!13416)) )
))
(declare-fun acc!652 () List!13416)

(declare-fun newAcc!49 () List!13416)

(declare-fun subseq!403 (List!13416 List!13416) Bool)

(assert (=> b!709596 (= res!473269 (subseq!403 acc!652 newAcc!49))))

(declare-fun b!709597 () Bool)

(declare-fun res!473255 () Bool)

(assert (=> b!709597 (=> (not res!473255) (not e!399327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709597 (= res!473255 (validKeyInArray!0 (select (arr!19322 a!3591) from!2969)))))

(declare-fun b!709598 () Bool)

(declare-fun res!473259 () Bool)

(assert (=> b!709598 (=> (not res!473259) (not e!399327))))

(declare-fun noDuplicate!1206 (List!13416) Bool)

(assert (=> b!709598 (= res!473259 (noDuplicate!1206 acc!652))))

(declare-fun b!709599 () Bool)

(declare-fun e!399325 () Bool)

(assert (=> b!709599 (= e!399327 e!399325)))

(declare-fun res!473258 () Bool)

(assert (=> b!709599 (=> (not res!473258) (not e!399325))))

(assert (=> b!709599 (= res!473258 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun lt!318212 () List!13416)

(declare-fun $colon$colon!513 (List!13416 (_ BitVec 64)) List!13416)

(assert (=> b!709599 (= lt!318212 ($colon$colon!513 acc!652 (select (arr!19322 a!3591) from!2969)))))

(declare-fun b!709600 () Bool)

(assert (=> b!709600 (= e!399325 false)))

(declare-fun lt!318211 () Bool)

(declare-fun contains!3959 (List!13416 (_ BitVec 64)) Bool)

(assert (=> b!709600 (= lt!318211 (contains!3959 lt!318212 k!2824))))

(declare-fun b!709601 () Bool)

(declare-fun res!473260 () Bool)

(assert (=> b!709601 (=> (not res!473260) (not e!399327))))

(assert (=> b!709601 (= res!473260 (contains!3959 newAcc!49 k!2824))))

(declare-fun b!709602 () Bool)

(declare-fun res!473261 () Bool)

(assert (=> b!709602 (=> (not res!473261) (not e!399327))))

(assert (=> b!709602 (= res!473261 (not (contains!3959 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709603 () Bool)

(declare-fun res!473256 () Bool)

(assert (=> b!709603 (=> (not res!473256) (not e!399325))))

(assert (=> b!709603 (= res!473256 (noDuplicate!1206 lt!318212))))

(declare-fun b!709604 () Bool)

(declare-fun res!473265 () Bool)

(assert (=> b!709604 (=> (not res!473265) (not e!399327))))

(assert (=> b!709604 (= res!473265 (not (contains!3959 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709606 () Bool)

(declare-fun res!473272 () Bool)

(assert (=> b!709606 (=> (not res!473272) (not e!399327))))

(declare-fun -!368 (List!13416 (_ BitVec 64)) List!13416)

(assert (=> b!709606 (= res!473272 (= (-!368 newAcc!49 k!2824) acc!652))))

(declare-fun b!709607 () Bool)

(declare-fun res!473262 () Bool)

(assert (=> b!709607 (=> (not res!473262) (not e!399327))))

(assert (=> b!709607 (= res!473262 (validKeyInArray!0 k!2824))))

(declare-fun b!709608 () Bool)

(declare-fun res!473263 () Bool)

(assert (=> b!709608 (=> (not res!473263) (not e!399327))))

(assert (=> b!709608 (= res!473263 (noDuplicate!1206 newAcc!49))))

(declare-fun b!709609 () Bool)

(declare-fun res!473253 () Bool)

(assert (=> b!709609 (=> (not res!473253) (not e!399327))))

(assert (=> b!709609 (= res!473253 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19718 a!3591)))))

(declare-fun b!709610 () Bool)

(declare-fun res!473274 () Bool)

(assert (=> b!709610 (=> (not res!473274) (not e!399327))))

(declare-fun arrayNoDuplicates!0 (array!40354 (_ BitVec 32) List!13416) Bool)

(assert (=> b!709610 (= res!473274 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709605 () Bool)

(declare-fun res!473267 () Bool)

(assert (=> b!709605 (=> (not res!473267) (not e!399327))))

(assert (=> b!709605 (= res!473267 (not (contains!3959 acc!652 k!2824)))))

(declare-fun res!473254 () Bool)

(assert (=> start!62984 (=> (not res!473254) (not e!399327))))

(assert (=> start!62984 (= res!473254 (and (bvslt (size!19718 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19718 a!3591))))))

(assert (=> start!62984 e!399327))

(assert (=> start!62984 true))

(declare-fun array_inv!15096 (array!40354) Bool)

(assert (=> start!62984 (array_inv!15096 a!3591)))

(declare-fun b!709611 () Bool)

(declare-fun res!473266 () Bool)

(assert (=> b!709611 (=> (not res!473266) (not e!399327))))

(assert (=> b!709611 (= res!473266 (not (contains!3959 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709612 () Bool)

(declare-fun res!473257 () Bool)

(assert (=> b!709612 (=> (not res!473257) (not e!399325))))

(assert (=> b!709612 (= res!473257 (not (contains!3959 lt!318212 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709613 () Bool)

(declare-fun res!473264 () Bool)

(assert (=> b!709613 (=> (not res!473264) (not e!399325))))

(assert (=> b!709613 (= res!473264 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709614 () Bool)

(declare-fun res!473273 () Bool)

(assert (=> b!709614 (=> (not res!473273) (not e!399327))))

(assert (=> b!709614 (= res!473273 (not (contains!3959 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709615 () Bool)

(declare-fun res!473271 () Bool)

(assert (=> b!709615 (=> (not res!473271) (not e!399325))))

(assert (=> b!709615 (= res!473271 (noDuplicate!1206 ($colon$colon!513 newAcc!49 (select (arr!19322 a!3591) from!2969))))))

(declare-fun b!709616 () Bool)

(declare-fun res!473270 () Bool)

(assert (=> b!709616 (=> (not res!473270) (not e!399325))))

(assert (=> b!709616 (= res!473270 (not (contains!3959 lt!318212 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62984 res!473254) b!709598))

(assert (= (and b!709598 res!473259) b!709608))

(assert (= (and b!709608 res!473263) b!709604))

(assert (= (and b!709604 res!473265) b!709614))

(assert (= (and b!709614 res!473273) b!709595))

(assert (= (and b!709595 res!473268) b!709605))

(assert (= (and b!709605 res!473267) b!709607))

(assert (= (and b!709607 res!473262) b!709610))

(assert (= (and b!709610 res!473274) b!709596))

(assert (= (and b!709596 res!473269) b!709601))

(assert (= (and b!709601 res!473260) b!709606))

(assert (= (and b!709606 res!473272) b!709602))

(assert (= (and b!709602 res!473261) b!709611))

(assert (= (and b!709611 res!473266) b!709609))

(assert (= (and b!709609 res!473253) b!709597))

(assert (= (and b!709597 res!473255) b!709599))

(assert (= (and b!709599 res!473258) b!709603))

(assert (= (and b!709603 res!473256) b!709615))

(assert (= (and b!709615 res!473271) b!709612))

(assert (= (and b!709612 res!473257) b!709616))

(assert (= (and b!709616 res!473270) b!709613))

(assert (= (and b!709613 res!473264) b!709600))

(declare-fun m!666921 () Bool)

(assert (=> b!709603 m!666921))

(declare-fun m!666923 () Bool)

(assert (=> b!709601 m!666923))

(declare-fun m!666925 () Bool)

(assert (=> b!709600 m!666925))

(declare-fun m!666927 () Bool)

(assert (=> b!709615 m!666927))

(assert (=> b!709615 m!666927))

(declare-fun m!666929 () Bool)

(assert (=> b!709615 m!666929))

(assert (=> b!709615 m!666929))

(declare-fun m!666931 () Bool)

(assert (=> b!709615 m!666931))

(declare-fun m!666933 () Bool)

(assert (=> b!709604 m!666933))

(declare-fun m!666935 () Bool)

(assert (=> b!709613 m!666935))

(declare-fun m!666937 () Bool)

(assert (=> b!709605 m!666937))

(declare-fun m!666939 () Bool)

(assert (=> b!709595 m!666939))

(declare-fun m!666941 () Bool)

(assert (=> start!62984 m!666941))

(assert (=> b!709597 m!666927))

(assert (=> b!709597 m!666927))

(declare-fun m!666943 () Bool)

(assert (=> b!709597 m!666943))

(declare-fun m!666945 () Bool)

(assert (=> b!709610 m!666945))

(declare-fun m!666947 () Bool)

(assert (=> b!709614 m!666947))

(declare-fun m!666949 () Bool)

(assert (=> b!709606 m!666949))

(declare-fun m!666951 () Bool)

(assert (=> b!709616 m!666951))

(declare-fun m!666953 () Bool)

(assert (=> b!709612 m!666953))

(declare-fun m!666955 () Bool)

(assert (=> b!709598 m!666955))

(declare-fun m!666957 () Bool)

(assert (=> b!709596 m!666957))

(declare-fun m!666959 () Bool)

(assert (=> b!709611 m!666959))

(declare-fun m!666961 () Bool)

(assert (=> b!709607 m!666961))

(declare-fun m!666963 () Bool)

(assert (=> b!709602 m!666963))

(declare-fun m!666965 () Bool)

(assert (=> b!709608 m!666965))

(assert (=> b!709599 m!666927))

(assert (=> b!709599 m!666927))

(declare-fun m!666967 () Bool)

(assert (=> b!709599 m!666967))

(push 1)

