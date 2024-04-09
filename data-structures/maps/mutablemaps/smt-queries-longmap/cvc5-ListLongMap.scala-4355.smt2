; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60174 () Bool)

(assert start!60174)

(declare-fun b!671575 () Bool)

(declare-fun e!383748 () Bool)

(declare-datatypes ((List!12871 0))(
  ( (Nil!12868) (Cons!12867 (h!13912 (_ BitVec 64)) (t!19107 List!12871)) )
))
(declare-fun lt!312151 () List!12871)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3414 (List!12871 (_ BitVec 64)) Bool)

(assert (=> b!671575 (= e!383748 (contains!3414 lt!312151 k!2843))))

(declare-fun b!671576 () Bool)

(declare-fun res!438427 () Bool)

(declare-fun e!383756 () Bool)

(assert (=> b!671576 (=> (not res!438427) (not e!383756))))

(assert (=> b!671576 (= res!438427 (not (contains!3414 lt!312151 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671577 () Bool)

(declare-fun e!383752 () Bool)

(declare-fun acc!681 () List!12871)

(assert (=> b!671577 (= e!383752 (not (contains!3414 acc!681 k!2843)))))

(declare-fun b!671578 () Bool)

(declare-fun res!438437 () Bool)

(assert (=> b!671578 (=> (not res!438437) (not e!383756))))

(declare-fun noDuplicate!661 (List!12871) Bool)

(assert (=> b!671578 (= res!438437 (noDuplicate!661 lt!312151))))

(declare-fun b!671579 () Bool)

(declare-fun res!438433 () Bool)

(declare-fun e!383754 () Bool)

(assert (=> b!671579 (=> (not res!438433) (not e!383754))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39177 0))(
  ( (array!39178 (arr!18777 (Array (_ BitVec 32) (_ BitVec 64))) (size!19141 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39177)

(assert (=> b!671579 (= res!438433 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19141 a!3626))))))

(declare-fun b!671580 () Bool)

(declare-fun res!438431 () Bool)

(assert (=> b!671580 (=> (not res!438431) (not e!383754))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671580 (= res!438431 (validKeyInArray!0 (select (arr!18777 a!3626) from!3004)))))

(declare-fun res!438440 () Bool)

(assert (=> start!60174 (=> (not res!438440) (not e!383754))))

(assert (=> start!60174 (= res!438440 (and (bvslt (size!19141 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19141 a!3626))))))

(assert (=> start!60174 e!383754))

(assert (=> start!60174 true))

(declare-fun array_inv!14551 (array!39177) Bool)

(assert (=> start!60174 (array_inv!14551 a!3626)))

(declare-fun b!671581 () Bool)

(declare-fun res!438443 () Bool)

(assert (=> b!671581 (=> (not res!438443) (not e!383756))))

(declare-fun e!383749 () Bool)

(assert (=> b!671581 (= res!438443 e!383749)))

(declare-fun res!438432 () Bool)

(assert (=> b!671581 (=> res!438432 e!383749)))

(assert (=> b!671581 (= res!438432 e!383748)))

(declare-fun res!438445 () Bool)

(assert (=> b!671581 (=> (not res!438445) (not e!383748))))

(assert (=> b!671581 (= res!438445 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671582 () Bool)

(declare-fun res!438446 () Bool)

(assert (=> b!671582 (=> (not res!438446) (not e!383754))))

(declare-fun arrayNoDuplicates!0 (array!39177 (_ BitVec 32) List!12871) Bool)

(assert (=> b!671582 (= res!438446 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12868))))

(declare-fun b!671583 () Bool)

(declare-fun res!438439 () Bool)

(assert (=> b!671583 (=> (not res!438439) (not e!383754))))

(declare-fun e!383757 () Bool)

(assert (=> b!671583 (= res!438439 e!383757)))

(declare-fun res!438434 () Bool)

(assert (=> b!671583 (=> res!438434 e!383757)))

(declare-fun e!383758 () Bool)

(assert (=> b!671583 (= res!438434 e!383758)))

(declare-fun res!438430 () Bool)

(assert (=> b!671583 (=> (not res!438430) (not e!383758))))

(assert (=> b!671583 (= res!438430 (bvsgt from!3004 i!1382))))

(declare-fun b!671584 () Bool)

(declare-fun res!438435 () Bool)

(assert (=> b!671584 (=> (not res!438435) (not e!383754))))

(assert (=> b!671584 (= res!438435 (not (contains!3414 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671585 () Bool)

(declare-fun e!383753 () Bool)

(assert (=> b!671585 (= e!383749 e!383753)))

(declare-fun res!438442 () Bool)

(assert (=> b!671585 (=> (not res!438442) (not e!383753))))

(assert (=> b!671585 (= res!438442 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671586 () Bool)

(declare-datatypes ((Unit!23572 0))(
  ( (Unit!23573) )
))
(declare-fun e!383750 () Unit!23572)

(declare-fun Unit!23574 () Unit!23572)

(assert (=> b!671586 (= e!383750 Unit!23574)))

(declare-fun arrayContainsKey!0 (array!39177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671586 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312150 () Unit!23572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39177 (_ BitVec 64) (_ BitVec 32)) Unit!23572)

(assert (=> b!671586 (= lt!312150 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!671586 false))

(declare-fun b!671587 () Bool)

(declare-fun res!438429 () Bool)

(assert (=> b!671587 (=> (not res!438429) (not e!383754))))

(assert (=> b!671587 (= res!438429 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671588 () Bool)

(declare-fun res!438425 () Bool)

(assert (=> b!671588 (=> (not res!438425) (not e!383754))))

(assert (=> b!671588 (= res!438425 (not (contains!3414 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671589 () Bool)

(assert (=> b!671589 (= e!383756 false)))

(declare-fun lt!312153 () Bool)

(assert (=> b!671589 (= lt!312153 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312151))))

(declare-fun b!671590 () Bool)

(assert (=> b!671590 (= e!383758 (contains!3414 acc!681 k!2843))))

(declare-fun b!671591 () Bool)

(declare-fun res!438423 () Bool)

(assert (=> b!671591 (=> (not res!438423) (not e!383754))))

(assert (=> b!671591 (= res!438423 (validKeyInArray!0 k!2843))))

(declare-fun b!671592 () Bool)

(declare-fun res!438424 () Bool)

(assert (=> b!671592 (=> (not res!438424) (not e!383754))))

(assert (=> b!671592 (= res!438424 (noDuplicate!661 acc!681))))

(declare-fun b!671593 () Bool)

(declare-fun e!383751 () Bool)

(assert (=> b!671593 (= e!383751 e!383756)))

(declare-fun res!438441 () Bool)

(assert (=> b!671593 (=> (not res!438441) (not e!383756))))

(assert (=> b!671593 (= res!438441 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!262 (List!12871 (_ BitVec 64)) List!12871)

(assert (=> b!671593 (= lt!312151 ($colon$colon!262 acc!681 (select (arr!18777 a!3626) from!3004)))))

(declare-fun b!671594 () Bool)

(assert (=> b!671594 (= e!383757 e!383752)))

(declare-fun res!438438 () Bool)

(assert (=> b!671594 (=> (not res!438438) (not e!383752))))

(assert (=> b!671594 (= res!438438 (bvsle from!3004 i!1382))))

(declare-fun b!671595 () Bool)

(declare-fun Unit!23575 () Unit!23572)

(assert (=> b!671595 (= e!383750 Unit!23575)))

(declare-fun b!671596 () Bool)

(assert (=> b!671596 (= e!383754 e!383751)))

(declare-fun res!438426 () Bool)

(assert (=> b!671596 (=> (not res!438426) (not e!383751))))

(assert (=> b!671596 (= res!438426 (not (= (select (arr!18777 a!3626) from!3004) k!2843)))))

(declare-fun lt!312152 () Unit!23572)

(assert (=> b!671596 (= lt!312152 e!383750)))

(declare-fun c!76943 () Bool)

(assert (=> b!671596 (= c!76943 (= (select (arr!18777 a!3626) from!3004) k!2843))))

(declare-fun b!671597 () Bool)

(declare-fun res!438444 () Bool)

(assert (=> b!671597 (=> (not res!438444) (not e!383754))))

(assert (=> b!671597 (= res!438444 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671598 () Bool)

(declare-fun res!438428 () Bool)

(assert (=> b!671598 (=> (not res!438428) (not e!383756))))

(assert (=> b!671598 (= res!438428 (not (contains!3414 lt!312151 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671599 () Bool)

(assert (=> b!671599 (= e!383753 (not (contains!3414 lt!312151 k!2843)))))

(declare-fun b!671600 () Bool)

(declare-fun res!438436 () Bool)

(assert (=> b!671600 (=> (not res!438436) (not e!383754))))

(assert (=> b!671600 (= res!438436 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19141 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60174 res!438440) b!671592))

(assert (= (and b!671592 res!438424) b!671588))

(assert (= (and b!671588 res!438425) b!671584))

(assert (= (and b!671584 res!438435) b!671583))

(assert (= (and b!671583 res!438430) b!671590))

(assert (= (and b!671583 (not res!438434)) b!671594))

(assert (= (and b!671594 res!438438) b!671577))

(assert (= (and b!671583 res!438439) b!671582))

(assert (= (and b!671582 res!438446) b!671587))

(assert (= (and b!671587 res!438429) b!671579))

(assert (= (and b!671579 res!438433) b!671591))

(assert (= (and b!671591 res!438423) b!671597))

(assert (= (and b!671597 res!438444) b!671600))

(assert (= (and b!671600 res!438436) b!671580))

(assert (= (and b!671580 res!438431) b!671596))

(assert (= (and b!671596 c!76943) b!671586))

(assert (= (and b!671596 (not c!76943)) b!671595))

(assert (= (and b!671596 res!438426) b!671593))

(assert (= (and b!671593 res!438441) b!671578))

(assert (= (and b!671578 res!438437) b!671576))

(assert (= (and b!671576 res!438427) b!671598))

(assert (= (and b!671598 res!438428) b!671581))

(assert (= (and b!671581 res!438445) b!671575))

(assert (= (and b!671581 (not res!438432)) b!671585))

(assert (= (and b!671585 res!438442) b!671599))

(assert (= (and b!671581 res!438443) b!671589))

(declare-fun m!640941 () Bool)

(assert (=> b!671588 m!640941))

(declare-fun m!640943 () Bool)

(assert (=> b!671597 m!640943))

(declare-fun m!640945 () Bool)

(assert (=> b!671584 m!640945))

(declare-fun m!640947 () Bool)

(assert (=> b!671593 m!640947))

(assert (=> b!671593 m!640947))

(declare-fun m!640949 () Bool)

(assert (=> b!671593 m!640949))

(declare-fun m!640951 () Bool)

(assert (=> start!60174 m!640951))

(declare-fun m!640953 () Bool)

(assert (=> b!671592 m!640953))

(declare-fun m!640955 () Bool)

(assert (=> b!671591 m!640955))

(declare-fun m!640957 () Bool)

(assert (=> b!671587 m!640957))

(assert (=> b!671596 m!640947))

(declare-fun m!640959 () Bool)

(assert (=> b!671589 m!640959))

(declare-fun m!640961 () Bool)

(assert (=> b!671577 m!640961))

(assert (=> b!671580 m!640947))

(assert (=> b!671580 m!640947))

(declare-fun m!640963 () Bool)

(assert (=> b!671580 m!640963))

(declare-fun m!640965 () Bool)

(assert (=> b!671576 m!640965))

(declare-fun m!640967 () Bool)

(assert (=> b!671578 m!640967))

(declare-fun m!640969 () Bool)

(assert (=> b!671586 m!640969))

(declare-fun m!640971 () Bool)

(assert (=> b!671586 m!640971))

(declare-fun m!640973 () Bool)

(assert (=> b!671599 m!640973))

(assert (=> b!671575 m!640973))

(declare-fun m!640975 () Bool)

(assert (=> b!671598 m!640975))

(assert (=> b!671590 m!640961))

(declare-fun m!640977 () Bool)

(assert (=> b!671582 m!640977))

(push 1)

