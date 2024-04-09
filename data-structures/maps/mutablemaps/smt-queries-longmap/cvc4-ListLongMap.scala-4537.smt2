; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62990 () Bool)

(assert start!62990)

(declare-fun b!709801 () Bool)

(declare-fun res!473469 () Bool)

(declare-fun e!399354 () Bool)

(assert (=> b!709801 (=> (not res!473469) (not e!399354))))

(declare-datatypes ((List!13419 0))(
  ( (Nil!13416) (Cons!13415 (h!14460 (_ BitVec 64)) (t!19724 List!13419)) )
))
(declare-fun newAcc!49 () List!13419)

(declare-datatypes ((array!40360 0))(
  ( (array!40361 (arr!19325 (Array (_ BitVec 32) (_ BitVec 64))) (size!19721 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40360)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun noDuplicate!1209 (List!13419) Bool)

(declare-fun $colon$colon!516 (List!13419 (_ BitVec 64)) List!13419)

(assert (=> b!709801 (= res!473469 (noDuplicate!1209 ($colon$colon!516 newAcc!49 (select (arr!19325 a!3591) from!2969))))))

(declare-fun b!709802 () Bool)

(declare-fun res!473460 () Bool)

(declare-fun e!399352 () Bool)

(assert (=> b!709802 (=> (not res!473460) (not e!399352))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709802 (= res!473460 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!709803 () Bool)

(declare-fun res!473477 () Bool)

(assert (=> b!709803 (=> (not res!473477) (not e!399352))))

(declare-fun acc!652 () List!13419)

(assert (=> b!709803 (= res!473477 (noDuplicate!1209 acc!652))))

(declare-fun b!709804 () Bool)

(declare-fun res!473461 () Bool)

(assert (=> b!709804 (=> (not res!473461) (not e!399354))))

(declare-fun lt!318221 () List!13419)

(declare-fun contains!3962 (List!13419 (_ BitVec 64)) Bool)

(assert (=> b!709804 (= res!473461 (not (contains!3962 lt!318221 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709805 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40360 (_ BitVec 32) List!13419) Bool)

(assert (=> b!709805 (= e!399354 (not (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318221)))))

(declare-fun b!709806 () Bool)

(declare-fun res!473480 () Bool)

(assert (=> b!709806 (=> (not res!473480) (not e!399352))))

(assert (=> b!709806 (= res!473480 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19721 a!3591)))))

(declare-fun b!709807 () Bool)

(assert (=> b!709807 (= e!399352 e!399354)))

(declare-fun res!473475 () Bool)

(assert (=> b!709807 (=> (not res!473475) (not e!399354))))

(assert (=> b!709807 (= res!473475 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (=> b!709807 (= lt!318221 ($colon$colon!516 acc!652 (select (arr!19325 a!3591) from!2969)))))

(declare-fun b!709808 () Bool)

(declare-fun res!473473 () Bool)

(assert (=> b!709808 (=> (not res!473473) (not e!399352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709808 (= res!473473 (validKeyInArray!0 k!2824))))

(declare-fun b!709810 () Bool)

(declare-fun res!473468 () Bool)

(assert (=> b!709810 (=> (not res!473468) (not e!399352))))

(assert (=> b!709810 (= res!473468 (validKeyInArray!0 (select (arr!19325 a!3591) from!2969)))))

(declare-fun b!709811 () Bool)

(declare-fun res!473465 () Bool)

(assert (=> b!709811 (=> (not res!473465) (not e!399352))))

(assert (=> b!709811 (= res!473465 (not (contains!3962 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709812 () Bool)

(declare-fun res!473467 () Bool)

(assert (=> b!709812 (=> (not res!473467) (not e!399354))))

(assert (=> b!709812 (= res!473467 (not (contains!3962 lt!318221 k!2824)))))

(declare-fun b!709813 () Bool)

(declare-fun res!473459 () Bool)

(assert (=> b!709813 (=> (not res!473459) (not e!399352))))

(assert (=> b!709813 (= res!473459 (not (contains!3962 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709814 () Bool)

(declare-fun res!473479 () Bool)

(assert (=> b!709814 (=> (not res!473479) (not e!399352))))

(declare-fun subseq!406 (List!13419 List!13419) Bool)

(assert (=> b!709814 (= res!473479 (subseq!406 acc!652 newAcc!49))))

(declare-fun b!709815 () Bool)

(declare-fun res!473476 () Bool)

(assert (=> b!709815 (=> (not res!473476) (not e!399354))))

(assert (=> b!709815 (= res!473476 (not (contains!3962 lt!318221 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709816 () Bool)

(declare-fun res!473464 () Bool)

(assert (=> b!709816 (=> (not res!473464) (not e!399352))))

(assert (=> b!709816 (= res!473464 (noDuplicate!1209 newAcc!49))))

(declare-fun b!709817 () Bool)

(declare-fun res!473478 () Bool)

(assert (=> b!709817 (=> (not res!473478) (not e!399354))))

(assert (=> b!709817 (= res!473478 (noDuplicate!1209 lt!318221))))

(declare-fun b!709818 () Bool)

(declare-fun res!473474 () Bool)

(assert (=> b!709818 (=> (not res!473474) (not e!399352))))

(assert (=> b!709818 (= res!473474 (not (contains!3962 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709819 () Bool)

(declare-fun res!473466 () Bool)

(assert (=> b!709819 (=> (not res!473466) (not e!399352))))

(assert (=> b!709819 (= res!473466 (not (contains!3962 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709820 () Bool)

(declare-fun res!473470 () Bool)

(assert (=> b!709820 (=> (not res!473470) (not e!399354))))

(assert (=> b!709820 (= res!473470 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709821 () Bool)

(declare-fun res!473481 () Bool)

(assert (=> b!709821 (=> (not res!473481) (not e!399352))))

(assert (=> b!709821 (= res!473481 (contains!3962 newAcc!49 k!2824))))

(declare-fun b!709822 () Bool)

(declare-fun res!473463 () Bool)

(assert (=> b!709822 (=> (not res!473463) (not e!399352))))

(assert (=> b!709822 (= res!473463 (not (contains!3962 acc!652 k!2824)))))

(declare-fun b!709823 () Bool)

(declare-fun res!473471 () Bool)

(assert (=> b!709823 (=> (not res!473471) (not e!399352))))

(declare-fun -!371 (List!13419 (_ BitVec 64)) List!13419)

(assert (=> b!709823 (= res!473471 (= (-!371 newAcc!49 k!2824) acc!652))))

(declare-fun res!473462 () Bool)

(assert (=> start!62990 (=> (not res!473462) (not e!399352))))

(assert (=> start!62990 (= res!473462 (and (bvslt (size!19721 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19721 a!3591))))))

(assert (=> start!62990 e!399352))

(assert (=> start!62990 true))

(declare-fun array_inv!15099 (array!40360) Bool)

(assert (=> start!62990 (array_inv!15099 a!3591)))

(declare-fun b!709809 () Bool)

(declare-fun res!473472 () Bool)

(assert (=> b!709809 (=> (not res!473472) (not e!399352))))

(assert (=> b!709809 (= res!473472 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!62990 res!473462) b!709803))

(assert (= (and b!709803 res!473477) b!709816))

(assert (= (and b!709816 res!473464) b!709819))

(assert (= (and b!709819 res!473466) b!709811))

(assert (= (and b!709811 res!473465) b!709802))

(assert (= (and b!709802 res!473460) b!709822))

(assert (= (and b!709822 res!473463) b!709808))

(assert (= (and b!709808 res!473473) b!709809))

(assert (= (and b!709809 res!473472) b!709814))

(assert (= (and b!709814 res!473479) b!709821))

(assert (= (and b!709821 res!473481) b!709823))

(assert (= (and b!709823 res!473471) b!709813))

(assert (= (and b!709813 res!473459) b!709818))

(assert (= (and b!709818 res!473474) b!709806))

(assert (= (and b!709806 res!473480) b!709810))

(assert (= (and b!709810 res!473468) b!709807))

(assert (= (and b!709807 res!473475) b!709817))

(assert (= (and b!709817 res!473478) b!709801))

(assert (= (and b!709801 res!473469) b!709804))

(assert (= (and b!709804 res!473461) b!709815))

(assert (= (and b!709815 res!473476) b!709820))

(assert (= (and b!709820 res!473470) b!709812))

(assert (= (and b!709812 res!473467) b!709805))

(declare-fun m!667069 () Bool)

(assert (=> start!62990 m!667069))

(declare-fun m!667071 () Bool)

(assert (=> b!709816 m!667071))

(declare-fun m!667073 () Bool)

(assert (=> b!709818 m!667073))

(declare-fun m!667075 () Bool)

(assert (=> b!709804 m!667075))

(declare-fun m!667077 () Bool)

(assert (=> b!709815 m!667077))

(declare-fun m!667079 () Bool)

(assert (=> b!709813 m!667079))

(declare-fun m!667081 () Bool)

(assert (=> b!709817 m!667081))

(declare-fun m!667083 () Bool)

(assert (=> b!709803 m!667083))

(declare-fun m!667085 () Bool)

(assert (=> b!709810 m!667085))

(assert (=> b!709810 m!667085))

(declare-fun m!667087 () Bool)

(assert (=> b!709810 m!667087))

(declare-fun m!667089 () Bool)

(assert (=> b!709808 m!667089))

(declare-fun m!667091 () Bool)

(assert (=> b!709811 m!667091))

(declare-fun m!667093 () Bool)

(assert (=> b!709822 m!667093))

(declare-fun m!667095 () Bool)

(assert (=> b!709809 m!667095))

(assert (=> b!709801 m!667085))

(assert (=> b!709801 m!667085))

(declare-fun m!667097 () Bool)

(assert (=> b!709801 m!667097))

(assert (=> b!709801 m!667097))

(declare-fun m!667099 () Bool)

(assert (=> b!709801 m!667099))

(declare-fun m!667101 () Bool)

(assert (=> b!709821 m!667101))

(declare-fun m!667103 () Bool)

(assert (=> b!709820 m!667103))

(assert (=> b!709807 m!667085))

(assert (=> b!709807 m!667085))

(declare-fun m!667105 () Bool)

(assert (=> b!709807 m!667105))

(declare-fun m!667107 () Bool)

(assert (=> b!709805 m!667107))

(declare-fun m!667109 () Bool)

(assert (=> b!709819 m!667109))

(declare-fun m!667111 () Bool)

(assert (=> b!709823 m!667111))

(declare-fun m!667113 () Bool)

(assert (=> b!709802 m!667113))

(declare-fun m!667115 () Bool)

(assert (=> b!709814 m!667115))

(declare-fun m!667117 () Bool)

(assert (=> b!709812 m!667117))

(push 1)

(assert (not b!709811))

(assert (not b!709803))

(assert (not b!709817))

(assert (not b!709814))

(assert (not b!709805))

(assert (not b!709809))

(assert (not b!709815))

(assert (not b!709810))

(assert (not b!709812))

(assert (not b!709821))

(assert (not b!709819))

(assert (not start!62990))

(assert (not b!709822))

(assert (not b!709801))

(assert (not b!709807))

(assert (not b!709820))

(assert (not b!709802))

(assert (not b!709813))

(assert (not b!709823))

(assert (not b!709804))

(assert (not b!709818))

(assert (not b!709808))

(assert (not b!709816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97149 () Bool)

(declare-fun lt!318232 () Bool)

(declare-fun content!350 (List!13419) (Set (_ BitVec 64)))

(assert (=> d!97149 (= lt!318232 (member k!2824 (content!350 newAcc!49)))))

(declare-fun e!399412 () Bool)

(assert (=> d!97149 (= lt!318232 e!399412)))

(declare-fun res!473536 () Bool)

(assert (=> d!97149 (=> (not res!473536) (not e!399412))))

(assert (=> d!97149 (= res!473536 (is-Cons!13415 newAcc!49))))

(assert (=> d!97149 (= (contains!3962 newAcc!49 k!2824) lt!318232)))

(declare-fun b!709883 () Bool)

(declare-fun e!399411 () Bool)

(assert (=> b!709883 (= e!399412 e!399411)))

(declare-fun res!473535 () Bool)

(assert (=> b!709883 (=> res!473535 e!399411)))

(assert (=> b!709883 (= res!473535 (= (h!14460 newAcc!49) k!2824))))

(declare-fun b!709884 () Bool)

(assert (=> b!709884 (= e!399411 (contains!3962 (t!19724 newAcc!49) k!2824))))

(assert (= (and d!97149 res!473536) b!709883))

(assert (= (and b!709883 (not res!473535)) b!709884))

(declare-fun m!667175 () Bool)

(assert (=> d!97149 m!667175))

(declare-fun m!667177 () Bool)

(assert (=> d!97149 m!667177))

(declare-fun m!667179 () Bool)

(assert (=> b!709884 m!667179))

(assert (=> b!709821 d!97149))

(declare-fun d!97159 () Bool)

(declare-fun lt!318234 () Bool)

(assert (=> d!97159 (= lt!318234 (member k!2824 (content!350 acc!652)))))

(declare-fun e!399420 () Bool)

(assert (=> d!97159 (= lt!318234 e!399420)))

(declare-fun res!473544 () Bool)

(assert (=> d!97159 (=> (not res!473544) (not e!399420))))

(assert (=> d!97159 (= res!473544 (is-Cons!13415 acc!652))))

(assert (=> d!97159 (= (contains!3962 acc!652 k!2824) lt!318234)))

(declare-fun b!709891 () Bool)

(declare-fun e!399419 () Bool)

(assert (=> b!709891 (= e!399420 e!399419)))

(declare-fun res!473543 () Bool)

(assert (=> b!709891 (=> res!473543 e!399419)))

(assert (=> b!709891 (= res!473543 (= (h!14460 acc!652) k!2824))))

(declare-fun b!709892 () Bool)

(assert (=> b!709892 (= e!399419 (contains!3962 (t!19724 acc!652) k!2824))))

(assert (= (and d!97159 res!473544) b!709891))

(assert (= (and b!709891 (not res!473543)) b!709892))

(declare-fun m!667185 () Bool)

(assert (=> d!97159 m!667185))

(declare-fun m!667187 () Bool)

(assert (=> d!97159 m!667187))

(declare-fun m!667189 () Bool)

(assert (=> b!709892 m!667189))

(assert (=> b!709822 d!97159))

(declare-fun d!97163 () Bool)

(declare-fun lt!318235 () Bool)

(assert (=> d!97163 (= lt!318235 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!350 acc!652)))))

(declare-fun e!399424 () Bool)

(assert (=> d!97163 (= lt!318235 e!399424)))

(declare-fun res!473548 () Bool)

(assert (=> d!97163 (=> (not res!473548) (not e!399424))))

(assert (=> d!97163 (= res!473548 (is-Cons!13415 acc!652))))

(assert (=> d!97163 (= (contains!3962 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318235)))

(declare-fun b!709895 () Bool)

(declare-fun e!399423 () Bool)

(assert (=> b!709895 (= e!399424 e!399423)))

(declare-fun res!473547 () Bool)

(assert (=> b!709895 (=> res!473547 e!399423)))

(assert (=> b!709895 (= res!473547 (= (h!14460 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709896 () Bool)

(assert (=> b!709896 (= e!399423 (contains!3962 (t!19724 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97163 res!473548) b!709895))

(assert (= (and b!709895 (not res!473547)) b!709896))

(assert (=> d!97163 m!667185))

(declare-fun m!667195 () Bool)

(assert (=> d!97163 m!667195))

(declare-fun m!667197 () Bool)

(assert (=> b!709896 m!667197))

(assert (=> b!709811 d!97163))

(declare-fun d!97169 () Bool)

(declare-fun res!473559 () Bool)

(declare-fun e!399435 () Bool)

(assert (=> d!97169 (=> res!473559 e!399435)))

(assert (=> d!97169 (= res!473559 (= (select (arr!19325 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!97169 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!399435)))

(declare-fun b!709907 () Bool)

(declare-fun e!399436 () Bool)

(assert (=> b!709907 (= e!399435 e!399436)))

(declare-fun res!473560 () Bool)

(assert (=> b!709907 (=> (not res!473560) (not e!399436))))

(assert (=> b!709907 (= res!473560 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19721 a!3591)))))

(declare-fun b!709908 () Bool)

(assert (=> b!709908 (= e!399436 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97169 (not res!473559)) b!709907))

(assert (= (and b!709907 res!473560) b!709908))

(declare-fun m!667205 () Bool)

(assert (=> d!97169 m!667205))

(declare-fun m!667207 () Bool)

(assert (=> b!709908 m!667207))

(assert (=> b!709820 d!97169))

(declare-fun b!709958 () Bool)

(declare-fun e!399483 () Bool)

(declare-fun e!399482 () Bool)

(assert (=> b!709958 (= e!399483 e!399482)))

(declare-fun res!473600 () Bool)

(assert (=> b!709958 (=> (not res!473600) (not e!399482))))

(declare-fun e!399484 () Bool)

(assert (=> b!709958 (= res!473600 (not e!399484))))

(declare-fun res!473601 () Bool)

(assert (=> b!709958 (=> (not res!473601) (not e!399484))))

(assert (=> b!709958 (= res!473601 (validKeyInArray!0 (select (arr!19325 a!3591) from!2969)))))

(declare-fun b!709959 () Bool)

(assert (=> b!709959 (= e!399484 (contains!3962 acc!652 (select (arr!19325 a!3591) from!2969)))))

(declare-fun b!709960 () Bool)

(declare-fun e!399485 () Bool)

(declare-fun call!34456 () Bool)

(assert (=> b!709960 (= e!399485 call!34456)))

(declare-fun d!97175 () Bool)

(declare-fun res!473602 () Bool)

(assert (=> d!97175 (=> res!473602 e!399483)))

(assert (=> d!97175 (= res!473602 (bvsge from!2969 (size!19721 a!3591)))))

(assert (=> d!97175 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399483)))

(declare-fun b!709961 () Bool)

(assert (=> b!709961 (= e!399482 e!399485)))

(declare-fun c!78546 () Bool)

(assert (=> b!709961 (= c!78546 (validKeyInArray!0 (select (arr!19325 a!3591) from!2969)))))

(declare-fun bm!34453 () Bool)

(assert (=> bm!34453 (= call!34456 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78546 (Cons!13415 (select (arr!19325 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!709962 () Bool)

(assert (=> b!709962 (= e!399485 call!34456)))

(assert (= (and d!97175 (not res!473602)) b!709958))

(assert (= (and b!709958 res!473601) b!709959))

(assert (= (and b!709958 res!473600) b!709961))

(assert (= (and b!709961 c!78546) b!709962))

(assert (= (and b!709961 (not c!78546)) b!709960))

(assert (= (or b!709962 b!709960) bm!34453))

(assert (=> b!709958 m!667085))

(assert (=> b!709958 m!667085))

(assert (=> b!709958 m!667087))

(assert (=> b!709959 m!667085))

(assert (=> b!709959 m!667085))

(declare-fun m!667257 () Bool)

(assert (=> b!709959 m!667257))

(assert (=> b!709961 m!667085))

(assert (=> b!709961 m!667085))

(assert (=> b!709961 m!667087))

(assert (=> bm!34453 m!667085))

(declare-fun m!667259 () Bool)

(assert (=> bm!34453 m!667259))

(assert (=> b!709809 d!97175))

(declare-fun d!97199 () Bool)

(assert (=> d!97199 (= (validKeyInArray!0 (select (arr!19325 a!3591) from!2969)) (and (not (= (select (arr!19325 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19325 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709810 d!97199))

(declare-fun d!97201 () Bool)

(assert (=> d!97201 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709808 d!97201))

(declare-fun d!97203 () Bool)

(declare-fun lt!318246 () Bool)

(assert (=> d!97203 (= lt!318246 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!350 acc!652)))))

(declare-fun e!399499 () Bool)

(assert (=> d!97203 (= lt!318246 e!399499)))

(declare-fun res!473612 () Bool)

(assert (=> d!97203 (=> (not res!473612) (not e!399499))))

(assert (=> d!97203 (= res!473612 (is-Cons!13415 acc!652))))

(assert (=> d!97203 (= (contains!3962 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318246)))

(declare-fun b!709979 () Bool)

(declare-fun e!399498 () Bool)

(assert (=> b!709979 (= e!399499 e!399498)))

(declare-fun res!473611 () Bool)

(assert (=> b!709979 (=> res!473611 e!399498)))

(assert (=> b!709979 (= res!473611 (= (h!14460 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709980 () Bool)

(assert (=> b!709980 (= e!399498 (contains!3962 (t!19724 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97203 res!473612) b!709979))

(assert (= (and b!709979 (not res!473611)) b!709980))

(assert (=> d!97203 m!667185))

(declare-fun m!667261 () Bool)

(assert (=> d!97203 m!667261))

(declare-fun m!667263 () Bool)

(assert (=> b!709980 m!667263))

(assert (=> b!709819 d!97203))

(declare-fun d!97205 () Bool)

(declare-fun res!473623 () Bool)

(declare-fun e!399513 () Bool)

(assert (=> d!97205 (=> res!473623 e!399513)))

(assert (=> d!97205 (= res!473623 (is-Nil!13416 lt!318221))))

(assert (=> d!97205 (= (noDuplicate!1209 lt!318221) e!399513)))

(declare-fun b!709997 () Bool)

(declare-fun e!399514 () Bool)

(assert (=> b!709997 (= e!399513 e!399514)))

(declare-fun res!473624 () Bool)

(assert (=> b!709997 (=> (not res!473624) (not e!399514))))

(assert (=> b!709997 (= res!473624 (not (contains!3962 (t!19724 lt!318221) (h!14460 lt!318221))))))

(declare-fun b!709998 () Bool)

(assert (=> b!709998 (= e!399514 (noDuplicate!1209 (t!19724 lt!318221)))))

(assert (= (and d!97205 (not res!473623)) b!709997))

(assert (= (and b!709997 res!473624) b!709998))

(declare-fun m!667279 () Bool)

(assert (=> b!709997 m!667279))

(declare-fun m!667283 () Bool)

(assert (=> b!709998 m!667283))

(assert (=> b!709817 d!97205))

(declare-fun d!97211 () Bool)

(declare-fun lt!318249 () Bool)

(assert (=> d!97211 (= lt!318249 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!350 newAcc!49)))))

(declare-fun e!399516 () Bool)

(assert (=> d!97211 (= lt!318249 e!399516)))

(declare-fun res!473626 () Bool)

(assert (=> d!97211 (=> (not res!473626) (not e!399516))))

(assert (=> d!97211 (= res!473626 (is-Cons!13415 newAcc!49))))

(assert (=> d!97211 (= (contains!3962 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318249)))

(declare-fun b!709999 () Bool)

(declare-fun e!399515 () Bool)

(assert (=> b!709999 (= e!399516 e!399515)))

(declare-fun res!473625 () Bool)

(assert (=> b!709999 (=> res!473625 e!399515)))

(assert (=> b!709999 (= res!473625 (= (h!14460 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710000 () Bool)

(assert (=> b!710000 (= e!399515 (contains!3962 (t!19724 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97211 res!473626) b!709999))

(assert (= (and b!709999 (not res!473625)) b!710000))

(assert (=> d!97211 m!667175))

(declare-fun m!667291 () Bool)

(assert (=> d!97211 m!667291))

(declare-fun m!667293 () Bool)

(assert (=> b!710000 m!667293))

(assert (=> b!709818 d!97211))

(declare-fun d!97215 () Bool)

(assert (=> d!97215 (= ($colon$colon!516 acc!652 (select (arr!19325 a!3591) from!2969)) (Cons!13415 (select (arr!19325 a!3591) from!2969) acc!652))))

(assert (=> b!709807 d!97215))

(declare-fun d!97217 () Bool)

(declare-fun res!473627 () Bool)

(declare-fun e!399517 () Bool)

(assert (=> d!97217 (=> res!473627 e!399517)))

(assert (=> d!97217 (= res!473627 (is-Nil!13416 newAcc!49))))

(assert (=> d!97217 (= (noDuplicate!1209 newAcc!49) e!399517)))

(declare-fun b!710001 () Bool)

(declare-fun e!399518 () Bool)

(assert (=> b!710001 (= e!399517 e!399518)))

(declare-fun res!473628 () Bool)

(assert (=> b!710001 (=> (not res!473628) (not e!399518))))

(assert (=> b!710001 (= res!473628 (not (contains!3962 (t!19724 newAcc!49) (h!14460 newAcc!49))))))

