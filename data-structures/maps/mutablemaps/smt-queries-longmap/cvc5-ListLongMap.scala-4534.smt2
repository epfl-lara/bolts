; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62860 () Bool)

(assert start!62860)

(declare-fun b!708576 () Bool)

(declare-fun res!472357 () Bool)

(declare-fun e!398805 () Bool)

(assert (=> b!708576 (=> (not res!472357) (not e!398805))))

(declare-datatypes ((array!40332 0))(
  ( (array!40333 (arr!19314 (Array (_ BitVec 32) (_ BitVec 64))) (size!19704 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40332)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13408 0))(
  ( (Nil!13405) (Cons!13404 (h!14449 (_ BitVec 64)) (t!19707 List!13408)) )
))
(declare-fun acc!652 () List!13408)

(declare-fun arrayNoDuplicates!0 (array!40332 (_ BitVec 32) List!13408) Bool)

(assert (=> b!708576 (= res!472357 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!708577 () Bool)

(declare-fun res!472358 () Bool)

(declare-fun e!398803 () Bool)

(assert (=> b!708577 (=> (not res!472358) (not e!398803))))

(declare-fun lt!318098 () List!13408)

(declare-fun contains!3951 (List!13408 (_ BitVec 64)) Bool)

(assert (=> b!708577 (= res!472358 (not (contains!3951 lt!318098 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708578 () Bool)

(declare-fun res!472343 () Bool)

(assert (=> b!708578 (=> (not res!472343) (not e!398805))))

(assert (=> b!708578 (= res!472343 (not (contains!3951 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708579 () Bool)

(declare-fun res!472359 () Bool)

(assert (=> b!708579 (=> (not res!472359) (not e!398805))))

(declare-fun newAcc!49 () List!13408)

(declare-fun subseq!395 (List!13408 List!13408) Bool)

(assert (=> b!708579 (= res!472359 (subseq!395 acc!652 newAcc!49))))

(declare-fun b!708580 () Bool)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!708580 (= e!398803 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)))))

(declare-fun b!708581 () Bool)

(assert (=> b!708581 (= e!398805 e!398803)))

(declare-fun res!472356 () Bool)

(assert (=> b!708581 (=> (not res!472356) (not e!398803))))

(assert (=> b!708581 (= res!472356 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!505 (List!13408 (_ BitVec 64)) List!13408)

(assert (=> b!708581 (= lt!318098 ($colon$colon!505 acc!652 (select (arr!19314 a!3591) from!2969)))))

(declare-fun b!708582 () Bool)

(declare-fun res!472344 () Bool)

(assert (=> b!708582 (=> (not res!472344) (not e!398805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!708582 (= res!472344 (validKeyInArray!0 k!2824))))

(declare-fun b!708583 () Bool)

(declare-fun res!472355 () Bool)

(assert (=> b!708583 (=> (not res!472355) (not e!398803))))

(assert (=> b!708583 (= res!472355 (not (contains!3951 lt!318098 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708584 () Bool)

(declare-fun res!472342 () Bool)

(assert (=> b!708584 (=> (not res!472342) (not e!398805))))

(assert (=> b!708584 (= res!472342 (contains!3951 newAcc!49 k!2824))))

(declare-fun b!708585 () Bool)

(declare-fun res!472346 () Bool)

(assert (=> b!708585 (=> (not res!472346) (not e!398803))))

(declare-fun noDuplicate!1198 (List!13408) Bool)

(assert (=> b!708585 (= res!472346 (noDuplicate!1198 lt!318098))))

(declare-fun b!708586 () Bool)

(declare-fun res!472348 () Bool)

(assert (=> b!708586 (=> (not res!472348) (not e!398805))))

(declare-fun -!360 (List!13408 (_ BitVec 64)) List!13408)

(assert (=> b!708586 (= res!472348 (= (-!360 newAcc!49 k!2824) acc!652))))

(declare-fun b!708587 () Bool)

(declare-fun res!472354 () Bool)

(assert (=> b!708587 (=> (not res!472354) (not e!398803))))

(assert (=> b!708587 (= res!472354 (noDuplicate!1198 ($colon$colon!505 newAcc!49 (select (arr!19314 a!3591) from!2969))))))

(declare-fun b!708588 () Bool)

(declare-fun res!472349 () Bool)

(assert (=> b!708588 (=> (not res!472349) (not e!398805))))

(assert (=> b!708588 (= res!472349 (noDuplicate!1198 newAcc!49))))

(declare-fun b!708589 () Bool)

(declare-fun res!472351 () Bool)

(assert (=> b!708589 (=> (not res!472351) (not e!398805))))

(assert (=> b!708589 (= res!472351 (not (contains!3951 acc!652 k!2824)))))

(declare-fun b!708590 () Bool)

(declare-fun res!472362 () Bool)

(assert (=> b!708590 (=> (not res!472362) (not e!398805))))

(assert (=> b!708590 (= res!472362 (not (contains!3951 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!472347 () Bool)

(assert (=> start!62860 (=> (not res!472347) (not e!398805))))

(assert (=> start!62860 (= res!472347 (and (bvslt (size!19704 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19704 a!3591))))))

(assert (=> start!62860 e!398805))

(assert (=> start!62860 true))

(declare-fun array_inv!15088 (array!40332) Bool)

(assert (=> start!62860 (array_inv!15088 a!3591)))

(declare-fun b!708591 () Bool)

(declare-fun res!472360 () Bool)

(assert (=> b!708591 (=> (not res!472360) (not e!398805))))

(assert (=> b!708591 (= res!472360 (not (contains!3951 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708592 () Bool)

(declare-fun res!472352 () Bool)

(assert (=> b!708592 (=> (not res!472352) (not e!398805))))

(assert (=> b!708592 (= res!472352 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19704 a!3591)))))

(declare-fun b!708593 () Bool)

(declare-fun res!472353 () Bool)

(assert (=> b!708593 (=> (not res!472353) (not e!398805))))

(assert (=> b!708593 (= res!472353 (noDuplicate!1198 acc!652))))

(declare-fun b!708594 () Bool)

(declare-fun res!472345 () Bool)

(assert (=> b!708594 (=> (not res!472345) (not e!398805))))

(assert (=> b!708594 (= res!472345 (validKeyInArray!0 (select (arr!19314 a!3591) from!2969)))))

(declare-fun b!708595 () Bool)

(declare-fun res!472350 () Bool)

(assert (=> b!708595 (=> (not res!472350) (not e!398805))))

(assert (=> b!708595 (= res!472350 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!708596 () Bool)

(declare-fun res!472361 () Bool)

(assert (=> b!708596 (=> (not res!472361) (not e!398805))))

(assert (=> b!708596 (= res!472361 (not (contains!3951 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62860 res!472347) b!708593))

(assert (= (and b!708593 res!472353) b!708588))

(assert (= (and b!708588 res!472349) b!708596))

(assert (= (and b!708596 res!472361) b!708578))

(assert (= (and b!708578 res!472343) b!708595))

(assert (= (and b!708595 res!472350) b!708589))

(assert (= (and b!708589 res!472351) b!708582))

(assert (= (and b!708582 res!472344) b!708576))

(assert (= (and b!708576 res!472357) b!708579))

(assert (= (and b!708579 res!472359) b!708584))

(assert (= (and b!708584 res!472342) b!708586))

(assert (= (and b!708586 res!472348) b!708591))

(assert (= (and b!708591 res!472360) b!708590))

(assert (= (and b!708590 res!472362) b!708592))

(assert (= (and b!708592 res!472352) b!708594))

(assert (= (and b!708594 res!472345) b!708581))

(assert (= (and b!708581 res!472356) b!708585))

(assert (= (and b!708585 res!472346) b!708587))

(assert (= (and b!708587 res!472354) b!708577))

(assert (= (and b!708577 res!472358) b!708583))

(assert (= (and b!708583 res!472355) b!708580))

(declare-fun m!666063 () Bool)

(assert (=> b!708590 m!666063))

(declare-fun m!666065 () Bool)

(assert (=> b!708594 m!666065))

(assert (=> b!708594 m!666065))

(declare-fun m!666067 () Bool)

(assert (=> b!708594 m!666067))

(declare-fun m!666069 () Bool)

(assert (=> b!708585 m!666069))

(declare-fun m!666071 () Bool)

(assert (=> b!708580 m!666071))

(declare-fun m!666073 () Bool)

(assert (=> b!708582 m!666073))

(declare-fun m!666075 () Bool)

(assert (=> b!708586 m!666075))

(declare-fun m!666077 () Bool)

(assert (=> b!708576 m!666077))

(declare-fun m!666079 () Bool)

(assert (=> b!708584 m!666079))

(assert (=> b!708581 m!666065))

(assert (=> b!708581 m!666065))

(declare-fun m!666081 () Bool)

(assert (=> b!708581 m!666081))

(declare-fun m!666083 () Bool)

(assert (=> start!62860 m!666083))

(assert (=> b!708587 m!666065))

(assert (=> b!708587 m!666065))

(declare-fun m!666085 () Bool)

(assert (=> b!708587 m!666085))

(assert (=> b!708587 m!666085))

(declare-fun m!666087 () Bool)

(assert (=> b!708587 m!666087))

(declare-fun m!666089 () Bool)

(assert (=> b!708596 m!666089))

(declare-fun m!666091 () Bool)

(assert (=> b!708589 m!666091))

(declare-fun m!666093 () Bool)

(assert (=> b!708591 m!666093))

(declare-fun m!666095 () Bool)

(assert (=> b!708583 m!666095))

(declare-fun m!666097 () Bool)

(assert (=> b!708593 m!666097))

(declare-fun m!666099 () Bool)

(assert (=> b!708577 m!666099))

(declare-fun m!666101 () Bool)

(assert (=> b!708588 m!666101))

(declare-fun m!666103 () Bool)

(assert (=> b!708595 m!666103))

(declare-fun m!666105 () Bool)

(assert (=> b!708578 m!666105))

(declare-fun m!666107 () Bool)

(assert (=> b!708579 m!666107))

(push 1)

(assert (not b!708579))

(assert (not b!708578))

(assert (not b!708591))

(assert (not b!708590))

(assert (not b!708585))

(assert (not b!708593))

(assert (not b!708586))

(assert (not b!708587))

(assert (not b!708589))

(assert (not start!62860))

(assert (not b!708596))

(assert (not b!708581))

(assert (not b!708595))

(assert (not b!708588))

(assert (not b!708584))

(assert (not b!708583))

(assert (not b!708576))

(assert (not b!708594))

(assert (not b!708580))

(assert (not b!708577))

(assert (not b!708582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96849 () Bool)

(declare-fun lt!318113 () Bool)

(declare-fun content!344 (List!13408) (Set (_ BitVec 64)))

(assert (=> d!96849 (= lt!318113 (set.member k!2824 (content!344 acc!652)))))

(declare-fun e!398870 () Bool)

(assert (=> d!96849 (= lt!318113 e!398870)))

(declare-fun res!472529 () Bool)

(assert (=> d!96849 (=> (not res!472529) (not e!398870))))

(assert (=> d!96849 (= res!472529 (is-Cons!13404 acc!652))))

(assert (=> d!96849 (= (contains!3951 acc!652 k!2824) lt!318113)))

(declare-fun b!708774 () Bool)

(declare-fun e!398871 () Bool)

(assert (=> b!708774 (= e!398870 e!398871)))

(declare-fun res!472528 () Bool)

(assert (=> b!708774 (=> res!472528 e!398871)))

(assert (=> b!708774 (= res!472528 (= (h!14449 acc!652) k!2824))))

(declare-fun b!708775 () Bool)

(assert (=> b!708775 (= e!398871 (contains!3951 (t!19707 acc!652) k!2824))))

(assert (= (and d!96849 res!472529) b!708774))

(assert (= (and b!708774 (not res!472528)) b!708775))

(declare-fun m!666227 () Bool)

(assert (=> d!96849 m!666227))

(declare-fun m!666229 () Bool)

(assert (=> d!96849 m!666229))

(declare-fun m!666231 () Bool)

(assert (=> b!708775 m!666231))

(assert (=> b!708589 d!96849))

(declare-fun d!96857 () Bool)

(declare-fun lt!318114 () Bool)

(assert (=> d!96857 (= lt!318114 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!344 acc!652)))))

(declare-fun e!398874 () Bool)

(assert (=> d!96857 (= lt!318114 e!398874)))

(declare-fun res!472533 () Bool)

(assert (=> d!96857 (=> (not res!472533) (not e!398874))))

(assert (=> d!96857 (= res!472533 (is-Cons!13404 acc!652))))

(assert (=> d!96857 (= (contains!3951 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318114)))

(declare-fun b!708778 () Bool)

(declare-fun e!398875 () Bool)

(assert (=> b!708778 (= e!398874 e!398875)))

(declare-fun res!472532 () Bool)

(assert (=> b!708778 (=> res!472532 e!398875)))

(assert (=> b!708778 (= res!472532 (= (h!14449 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708779 () Bool)

(assert (=> b!708779 (= e!398875 (contains!3951 (t!19707 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96857 res!472533) b!708778))

(assert (= (and b!708778 (not res!472532)) b!708779))

(assert (=> d!96857 m!666227))

(declare-fun m!666237 () Bool)

(assert (=> d!96857 m!666237))

(declare-fun m!666239 () Bool)

(assert (=> b!708779 m!666239))

(assert (=> b!708578 d!96857))

(declare-fun d!96861 () Bool)

(declare-fun res!472548 () Bool)

(declare-fun e!398890 () Bool)

(assert (=> d!96861 (=> res!472548 e!398890)))

(assert (=> d!96861 (= res!472548 (= (select (arr!19314 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!96861 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!398890)))

(declare-fun b!708794 () Bool)

(declare-fun e!398891 () Bool)

(assert (=> b!708794 (= e!398890 e!398891)))

(declare-fun res!472549 () Bool)

(assert (=> b!708794 (=> (not res!472549) (not e!398891))))

(assert (=> b!708794 (= res!472549 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19704 a!3591)))))

(declare-fun b!708795 () Bool)

(assert (=> b!708795 (= e!398891 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96861 (not res!472548)) b!708794))

(assert (= (and b!708794 res!472549) b!708795))

(declare-fun m!666243 () Bool)

(assert (=> d!96861 m!666243))

(declare-fun m!666245 () Bool)

(assert (=> b!708795 m!666245))

(assert (=> b!708580 d!96861))

(declare-fun b!708825 () Bool)

(declare-fun e!398919 () Bool)

(assert (=> b!708825 (= e!398919 (subseq!395 acc!652 (t!19707 newAcc!49)))))

(declare-fun b!708823 () Bool)

(declare-fun e!398920 () Bool)

(assert (=> b!708823 (= e!398920 e!398919)))

(declare-fun res!472578 () Bool)

(assert (=> b!708823 (=> res!472578 e!398919)))

(declare-fun e!398918 () Bool)

(assert (=> b!708823 (= res!472578 e!398918)))

(declare-fun res!472576 () Bool)

(assert (=> b!708823 (=> (not res!472576) (not e!398918))))

(assert (=> b!708823 (= res!472576 (= (h!14449 acc!652) (h!14449 newAcc!49)))))

(declare-fun b!708824 () Bool)

(assert (=> b!708824 (= e!398918 (subseq!395 (t!19707 acc!652) (t!19707 newAcc!49)))))

(declare-fun b!708822 () Bool)

(declare-fun e!398921 () Bool)

(assert (=> b!708822 (= e!398921 e!398920)))

(declare-fun res!472577 () Bool)

(assert (=> b!708822 (=> (not res!472577) (not e!398920))))

(assert (=> b!708822 (= res!472577 (is-Cons!13404 newAcc!49))))

(declare-fun d!96869 () Bool)

(declare-fun res!472579 () Bool)

(assert (=> d!96869 (=> res!472579 e!398921)))

(assert (=> d!96869 (= res!472579 (is-Nil!13405 acc!652))))

(assert (=> d!96869 (= (subseq!395 acc!652 newAcc!49) e!398921)))

(assert (= (and d!96869 (not res!472579)) b!708822))

(assert (= (and b!708822 res!472577) b!708823))

(assert (= (and b!708823 res!472576) b!708824))

(assert (= (and b!708823 (not res!472578)) b!708825))

(declare-fun m!666287 () Bool)

(assert (=> b!708825 m!666287))

(declare-fun m!666291 () Bool)

(assert (=> b!708824 m!666291))

(assert (=> b!708579 d!96869))

(declare-fun d!96893 () Bool)

(declare-fun lt!318125 () Bool)

(assert (=> d!96893 (= lt!318125 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!344 newAcc!49)))))

(declare-fun e!398929 () Bool)

(assert (=> d!96893 (= lt!318125 e!398929)))

(declare-fun res!472583 () Bool)

(assert (=> d!96893 (=> (not res!472583) (not e!398929))))

(assert (=> d!96893 (= res!472583 (is-Cons!13404 newAcc!49))))

(assert (=> d!96893 (= (contains!3951 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318125)))

(declare-fun b!708836 () Bool)

(declare-fun e!398930 () Bool)

(assert (=> b!708836 (= e!398929 e!398930)))

(declare-fun res!472582 () Bool)

(assert (=> b!708836 (=> res!472582 e!398930)))

(assert (=> b!708836 (= res!472582 (= (h!14449 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708837 () Bool)

(assert (=> b!708837 (= e!398930 (contains!3951 (t!19707 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96893 res!472583) b!708836))

(assert (= (and b!708836 (not res!472582)) b!708837))

(declare-fun m!666293 () Bool)

(assert (=> d!96893 m!666293))

(declare-fun m!666295 () Bool)

(assert (=> d!96893 m!666295))

(declare-fun m!666297 () Bool)

(assert (=> b!708837 m!666297))

(assert (=> b!708590 d!96893))

(declare-fun d!96895 () Bool)

(assert (=> d!96895 (= ($colon$colon!505 acc!652 (select (arr!19314 a!3591) from!2969)) (Cons!13404 (select (arr!19314 a!3591) from!2969) acc!652))))

(assert (=> b!708581 d!96895))

(declare-fun d!96901 () Bool)

(declare-fun lt!318128 () Bool)

(assert (=> d!96901 (= lt!318128 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!344 newAcc!49)))))

(declare-fun e!398937 () Bool)

(assert (=> d!96901 (= lt!318128 e!398937)))

(declare-fun res!472591 () Bool)

(assert (=> d!96901 (=> (not res!472591) (not e!398937))))

(assert (=> d!96901 (= res!472591 (is-Cons!13404 newAcc!49))))

(assert (=> d!96901 (= (contains!3951 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318128)))

(declare-fun b!708844 () Bool)

(declare-fun e!398938 () Bool)

(assert (=> b!708844 (= e!398937 e!398938)))

(declare-fun res!472590 () Bool)

(assert (=> b!708844 (=> res!472590 e!398938)))

(assert (=> b!708844 (= res!472590 (= (h!14449 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708845 () Bool)

(assert (=> b!708845 (= e!398938 (contains!3951 (t!19707 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96901 res!472591) b!708844))

(assert (= (and b!708844 (not res!472590)) b!708845))

(assert (=> d!96901 m!666293))

(declare-fun m!666305 () Bool)

(assert (=> d!96901 m!666305))

(declare-fun m!666309 () Bool)

(assert (=> b!708845 m!666309))

(assert (=> b!708591 d!96901))

(declare-fun d!96905 () Bool)

(declare-fun res!472597 () Bool)

(declare-fun e!398946 () Bool)

(assert (=> d!96905 (=> res!472597 e!398946)))

(assert (=> d!96905 (= res!472597 (is-Nil!13405 acc!652))))

(assert (=> d!96905 (= (noDuplicate!1198 acc!652) e!398946)))

(declare-fun b!708855 () Bool)

(declare-fun e!398947 () Bool)

(assert (=> b!708855 (= e!398946 e!398947)))

(declare-fun res!472598 () Bool)

(assert (=> b!708855 (=> (not res!472598) (not e!398947))))

(assert (=> b!708855 (= res!472598 (not (contains!3951 (t!19707 acc!652) (h!14449 acc!652))))))

(declare-fun b!708856 () Bool)

(assert (=> b!708856 (= e!398947 (noDuplicate!1198 (t!19707 acc!652)))))

(assert (= (and d!96905 (not res!472597)) b!708855))

(assert (= (and b!708855 res!472598) b!708856))

(declare-fun m!666323 () Bool)

(assert (=> b!708855 m!666323))

(declare-fun m!666325 () Bool)

(assert (=> b!708856 m!666325))

(assert (=> b!708593 d!96905))

(declare-fun d!96909 () Bool)

(assert (=> d!96909 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708582 d!96909))

(declare-fun d!96915 () Bool)

(declare-fun lt!318131 () Bool)

(assert (=> d!96915 (= lt!318131 (set.member k!2824 (content!344 newAcc!49)))))

(declare-fun e!398960 () Bool)

(assert (=> d!96915 (= lt!318131 e!398960)))

(declare-fun res!472610 () Bool)

(assert (=> d!96915 (=> (not res!472610) (not e!398960))))

(assert (=> d!96915 (= res!472610 (is-Cons!13404 newAcc!49))))

(assert (=> d!96915 (= (contains!3951 newAcc!49 k!2824) lt!318131)))

(declare-fun b!708871 () Bool)

(declare-fun e!398961 () Bool)

(assert (=> b!708871 (= e!398960 e!398961)))

(declare-fun res!472609 () Bool)

(assert (=> b!708871 (=> res!472609 e!398961)))

(assert (=> b!708871 (= res!472609 (= (h!14449 newAcc!49) k!2824))))

(declare-fun b!708872 () Bool)

(assert (=> b!708872 (= e!398961 (contains!3951 (t!19707 newAcc!49) k!2824))))

(assert (= (and d!96915 res!472610) b!708871))

(assert (= (and b!708871 (not res!472609)) b!708872))

(assert (=> d!96915 m!666293))

(declare-fun m!666335 () Bool)

(assert (=> d!96915 m!666335))

(declare-fun m!666337 () Bool)

(assert (=> b!708872 m!666337))

(assert (=> b!708584 d!96915))

(declare-fun d!96919 () Bool)

(declare-fun lt!318133 () Bool)

(assert (=> d!96919 (= lt!318133 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!344 lt!318098)))))

(declare-fun e!398964 () Bool)

(assert (=> d!96919 (= lt!318133 e!398964)))

(declare-fun res!472614 () Bool)

(assert (=> d!96919 (=> (not res!472614) (not e!398964))))

(assert (=> d!96919 (= res!472614 (is-Cons!13404 lt!318098))))

(assert (=> d!96919 (= (contains!3951 lt!318098 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318133)))

(declare-fun b!708875 () Bool)

(declare-fun e!398965 () Bool)

(assert (=> b!708875 (= e!398964 e!398965)))

(declare-fun res!472613 () Bool)

(assert (=> b!708875 (=> res!472613 e!398965)))

(assert (=> b!708875 (= res!472613 (= (h!14449 lt!318098) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708876 () Bool)

(assert (=> b!708876 (= e!398965 (contains!3951 (t!19707 lt!318098) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96919 res!472614) b!708875))

(assert (= (and b!708875 (not res!472613)) b!708876))

(declare-fun m!666343 () Bool)

(assert (=> d!96919 m!666343))

(declare-fun m!666345 () Bool)

(assert (=> d!96919 m!666345))

(declare-fun m!666347 () Bool)

(assert (=> b!708876 m!666347))

(assert (=> b!708583 d!96919))

(declare-fun d!96923 () Bool)

(assert (=> d!96923 (= (validKeyInArray!0 (select (arr!19314 a!3591) from!2969)) (and (not (= (select (arr!19314 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19314 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708594 d!96923))

(declare-fun d!96925 () Bool)

(declare-fun res!472615 () Bool)

(declare-fun e!398966 () Bool)

(assert (=> d!96925 (=> res!472615 e!398966)))

(assert (=> d!96925 (= res!472615 (is-Nil!13405 lt!318098))))

(assert (=> d!96925 (= (noDuplicate!1198 lt!318098) e!398966)))

(declare-fun b!708877 () Bool)

(declare-fun e!398967 () Bool)

(assert (=> b!708877 (= e!398966 e!398967)))

(declare-fun res!472616 () Bool)

(assert (=> b!708877 (=> (not res!472616) (not e!398967))))

(assert (=> b!708877 (= res!472616 (not (contains!3951 (t!19707 lt!318098) (h!14449 lt!318098))))))

(declare-fun b!708878 () Bool)

(assert (=> b!708878 (= e!398967 (noDuplicate!1198 (t!19707 lt!318098)))))

(assert (= (and d!96925 (not res!472615)) b!708877))

(assert (= (and b!708877 res!472616) b!708878))

(declare-fun m!666349 () Bool)

(assert (=> b!708877 m!666349))

(declare-fun m!666351 () Bool)

(assert (=> b!708878 m!666351))

(assert (=> b!708585 d!96925))

(declare-fun d!96927 () Bool)

(declare-fun lt!318134 () Bool)

(assert (=> d!96927 (= lt!318134 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!344 acc!652)))))

(declare-fun e!398968 () Bool)

(assert (=> d!96927 (= lt!318134 e!398968)))

(declare-fun res!472618 () Bool)

(assert (=> d!96927 (=> (not res!472618) (not e!398968))))

(assert (=> d!96927 (= res!472618 (is-Cons!13404 acc!652))))

(assert (=> d!96927 (= (contains!3951 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318134)))

(declare-fun b!708879 () Bool)

(declare-fun e!398969 () Bool)

(assert (=> b!708879 (= e!398968 e!398969)))

(declare-fun res!472617 () Bool)

(assert (=> b!708879 (=> res!472617 e!398969)))

(assert (=> b!708879 (= res!472617 (= (h!14449 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708880 () Bool)

(assert (=> b!708880 (= e!398969 (contains!3951 (t!19707 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96927 res!472618) b!708879))

(assert (= (and b!708879 (not res!472617)) b!708880))

(assert (=> d!96927 m!666227))

(declare-fun m!666355 () Bool)

(assert (=> d!96927 m!666355))

(declare-fun m!666359 () Bool)

(assert (=> b!708880 m!666359))

(assert (=> b!708596 d!96927))

(declare-fun d!96933 () Bool)

(declare-fun res!472623 () Bool)

(declare-fun e!398974 () Bool)

(assert (=> d!96933 (=> res!472623 e!398974)))

(assert (=> d!96933 (= res!472623 (= (select (arr!19314 a!3591) from!2969) k!2824))))

(assert (=> d!96933 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!398974)))

(declare-fun b!708885 () Bool)

(declare-fun e!398975 () Bool)

(assert (=> b!708885 (= e!398974 e!398975)))

(declare-fun res!472624 () Bool)

(assert (=> b!708885 (=> (not res!472624) (not e!398975))))

(assert (=> b!708885 (= res!472624 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19704 a!3591)))))

(declare-fun b!708886 () Bool)

(assert (=> b!708886 (= e!398975 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96933 (not res!472623)) b!708885))

(assert (= (and b!708885 res!472624) b!708886))

(assert (=> d!96933 m!666065))

(declare-fun m!666365 () Bool)

(assert (=> b!708886 m!666365))

(assert (=> b!708595 d!96933))

(declare-fun c!78503 () Bool)

(declare-fun bm!34424 () Bool)

(declare-fun call!34427 () Bool)

(assert (=> bm!34424 (= call!34427 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78503 (Cons!13404 (select (arr!19314 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!708918 () Bool)

(declare-fun e!399003 () Bool)

(assert (=> b!708918 (= e!399003 call!34427)))

(declare-fun e!399005 () Bool)

(declare-fun b!708919 () Bool)

(assert (=> b!708919 (= e!399005 (contains!3951 acc!652 (select (arr!19314 a!3591) from!2969)))))

(declare-fun d!96937 () Bool)

(declare-fun res!472646 () Bool)

(declare-fun e!399002 () Bool)

(assert (=> d!96937 (=> res!472646 e!399002)))

(assert (=> d!96937 (= res!472646 (bvsge from!2969 (size!19704 a!3591)))))

(assert (=> d!96937 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399002)))

(declare-fun b!708920 () Bool)

(declare-fun e!399004 () Bool)

(assert (=> b!708920 (= e!399002 e!399004)))

(declare-fun res!472648 () Bool)

(assert (=> b!708920 (=> (not res!472648) (not e!399004))))

(assert (=> b!708920 (= res!472648 (not e!399005))))

(declare-fun res!472647 () Bool)

(assert (=> b!708920 (=> (not res!472647) (not e!399005))))

(assert (=> b!708920 (= res!472647 (validKeyInArray!0 (select (arr!19314 a!3591) from!2969)))))

(declare-fun b!708921 () Bool)

(assert (=> b!708921 (= e!399003 call!34427)))

(declare-fun b!708922 () Bool)

(assert (=> b!708922 (= e!399004 e!399003)))

(assert (=> b!708922 (= c!78503 (validKeyInArray!0 (select (arr!19314 a!3591) from!2969)))))

(assert (= (and d!96937 (not res!472646)) b!708920))

(assert (= (and b!708920 res!472647) b!708919))

(assert (= (and b!708920 res!472648) b!708922))

(assert (= (and b!708922 c!78503) b!708921))

(assert (= (and b!708922 (not c!78503)) b!708918))

(assert (= (or b!708921 b!708918) bm!34424))

(assert (=> bm!34424 m!666065))

(declare-fun m!666385 () Bool)

(assert (=> bm!34424 m!666385))

(assert (=> b!708919 m!666065))

(assert (=> b!708919 m!666065))

(declare-fun m!666387 () Bool)

(assert (=> b!708919 m!666387))

(assert (=> b!708920 m!666065))

(assert (=> b!708920 m!666065))

(assert (=> b!708920 m!666067))

(assert (=> b!708922 m!666065))

(assert (=> b!708922 m!666065))

(assert (=> b!708922 m!666067))

(assert (=> b!708576 d!96937))

(declare-fun b!708954 () Bool)

(declare-fun e!399034 () List!13408)

(declare-fun call!34431 () List!13408)

(assert (=> b!708954 (= e!399034 call!34431)))

(declare-fun b!708955 () Bool)

(declare-fun e!399035 () List!13408)

(assert (=> b!708955 (= e!399035 e!399034)))

(declare-fun c!78510 () Bool)

(assert (=> b!708955 (= c!78510 (= k!2824 (h!14449 newAcc!49)))))

(declare-fun d!96951 () Bool)

(declare-fun e!399033 () Bool)

(assert (=> d!96951 e!399033))

(declare-fun res!472670 () Bool)

(assert (=> d!96951 (=> (not res!472670) (not e!399033))))

(declare-fun lt!318142 () List!13408)

(declare-fun size!19709 (List!13408) Int)

(assert (=> d!96951 (= res!472670 (<= (size!19709 lt!318142) (size!19709 newAcc!49)))))

(assert (=> d!96951 (= lt!318142 e!399035)))

(declare-fun c!78509 () Bool)

(assert (=> d!96951 (= c!78509 (is-Cons!13404 newAcc!49))))

(assert (=> d!96951 (= (-!360 newAcc!49 k!2824) lt!318142)))

(declare-fun b!708956 () Bool)

(assert (=> b!708956 (= e!399035 Nil!13405)))

(declare-fun b!708957 () Bool)

(assert (=> b!708957 (= e!399034 (Cons!13404 (h!14449 newAcc!49) call!34431))))

(declare-fun bm!34428 () Bool)

(assert (=> bm!34428 (= call!34431 (-!360 (t!19707 newAcc!49) k!2824))))

(declare-fun b!708958 () Bool)

(assert (=> b!708958 (= e!399033 (= (content!344 lt!318142) (set.minus (content!344 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(assert (= (and d!96951 c!78509) b!708955))

(assert (= (and d!96951 (not c!78509)) b!708956))

(assert (= (and b!708955 c!78510) b!708954))

(assert (= (and b!708955 (not c!78510)) b!708957))

(assert (= (or b!708954 b!708957) bm!34428))

(assert (= (and d!96951 res!472670) b!708958))

(declare-fun m!666411 () Bool)

(assert (=> d!96951 m!666411))

(declare-fun m!666415 () Bool)

(assert (=> d!96951 m!666415))

(declare-fun m!666417 () Bool)

(assert (=> bm!34428 m!666417))

(declare-fun m!666419 () Bool)

(assert (=> b!708958 m!666419))

(assert (=> b!708958 m!666293))

(declare-fun m!666421 () Bool)

(assert (=> b!708958 m!666421))

(assert (=> b!708586 d!96951))

(declare-fun d!96963 () Bool)

