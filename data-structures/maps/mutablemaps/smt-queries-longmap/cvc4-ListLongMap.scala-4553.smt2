; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63464 () Bool)

(assert start!63464)

(declare-fun b!714540 () Bool)

(declare-fun res!477747 () Bool)

(declare-fun e!401501 () Bool)

(assert (=> b!714540 (=> (not res!477747) (not e!401501))))

(declare-datatypes ((List!13467 0))(
  ( (Nil!13464) (Cons!13463 (h!14508 (_ BitVec 64)) (t!19790 List!13467)) )
))
(declare-fun acc!652 () List!13467)

(declare-fun contains!4010 (List!13467 (_ BitVec 64)) Bool)

(assert (=> b!714540 (= res!477747 (not (contains!4010 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714541 () Bool)

(declare-fun res!477753 () Bool)

(assert (=> b!714541 (=> (not res!477753) (not e!401501))))

(declare-datatypes ((array!40477 0))(
  ( (array!40478 (arr!19373 (Array (_ BitVec 32) (_ BitVec 64))) (size!19787 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40477)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714541 (= res!477753 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714542 () Bool)

(declare-fun res!477752 () Bool)

(assert (=> b!714542 (=> (not res!477752) (not e!401501))))

(declare-fun newAcc!49 () List!13467)

(assert (=> b!714542 (= res!477752 (not (contains!4010 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!477736 () Bool)

(assert (=> start!63464 (=> (not res!477736) (not e!401501))))

(assert (=> start!63464 (= res!477736 (and (bvslt (size!19787 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19787 a!3591))))))

(assert (=> start!63464 e!401501))

(assert (=> start!63464 true))

(declare-fun array_inv!15147 (array!40477) Bool)

(assert (=> start!63464 (array_inv!15147 a!3591)))

(declare-fun b!714543 () Bool)

(declare-fun res!477748 () Bool)

(assert (=> b!714543 (=> (not res!477748) (not e!401501))))

(declare-fun -!419 (List!13467 (_ BitVec 64)) List!13467)

(assert (=> b!714543 (= res!477748 (= (-!419 newAcc!49 k!2824) acc!652))))

(declare-fun b!714544 () Bool)

(declare-fun res!477743 () Bool)

(assert (=> b!714544 (=> (not res!477743) (not e!401501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714544 (= res!477743 (not (validKeyInArray!0 (select (arr!19373 a!3591) from!2969))))))

(declare-fun b!714545 () Bool)

(declare-fun res!477744 () Bool)

(assert (=> b!714545 (=> (not res!477744) (not e!401501))))

(assert (=> b!714545 (= res!477744 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714546 () Bool)

(declare-fun res!477749 () Bool)

(assert (=> b!714546 (=> (not res!477749) (not e!401501))))

(declare-fun noDuplicate!1257 (List!13467) Bool)

(assert (=> b!714546 (= res!477749 (noDuplicate!1257 acc!652))))

(declare-fun b!714547 () Bool)

(declare-fun res!477750 () Bool)

(assert (=> b!714547 (=> (not res!477750) (not e!401501))))

(assert (=> b!714547 (= res!477750 (contains!4010 newAcc!49 k!2824))))

(declare-fun b!714548 () Bool)

(declare-fun res!477740 () Bool)

(assert (=> b!714548 (=> (not res!477740) (not e!401501))))

(assert (=> b!714548 (= res!477740 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19787 a!3591)))))

(declare-fun b!714549 () Bool)

(declare-fun res!477738 () Bool)

(assert (=> b!714549 (=> (not res!477738) (not e!401501))))

(declare-fun subseq!454 (List!13467 List!13467) Bool)

(assert (=> b!714549 (= res!477738 (subseq!454 acc!652 newAcc!49))))

(declare-fun b!714550 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40477 (_ BitVec 32) List!13467) Bool)

(assert (=> b!714550 (= e!401501 (not (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652)))))

(declare-fun b!714551 () Bool)

(declare-fun res!477742 () Bool)

(assert (=> b!714551 (=> (not res!477742) (not e!401501))))

(assert (=> b!714551 (= res!477742 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714552 () Bool)

(declare-fun res!477737 () Bool)

(assert (=> b!714552 (=> (not res!477737) (not e!401501))))

(assert (=> b!714552 (= res!477737 (noDuplicate!1257 newAcc!49))))

(declare-fun b!714553 () Bool)

(declare-fun res!477751 () Bool)

(assert (=> b!714553 (=> (not res!477751) (not e!401501))))

(assert (=> b!714553 (= res!477751 (not (contains!4010 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714554 () Bool)

(declare-fun res!477746 () Bool)

(assert (=> b!714554 (=> (not res!477746) (not e!401501))))

(assert (=> b!714554 (= res!477746 (not (contains!4010 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714555 () Bool)

(declare-fun res!477745 () Bool)

(assert (=> b!714555 (=> (not res!477745) (not e!401501))))

(assert (=> b!714555 (= res!477745 (validKeyInArray!0 k!2824))))

(declare-fun b!714556 () Bool)

(declare-fun res!477739 () Bool)

(assert (=> b!714556 (=> (not res!477739) (not e!401501))))

(assert (=> b!714556 (= res!477739 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!714557 () Bool)

(declare-fun res!477741 () Bool)

(assert (=> b!714557 (=> (not res!477741) (not e!401501))))

(assert (=> b!714557 (= res!477741 (not (contains!4010 acc!652 k!2824)))))

(assert (= (and start!63464 res!477736) b!714546))

(assert (= (and b!714546 res!477749) b!714552))

(assert (= (and b!714552 res!477737) b!714554))

(assert (= (and b!714554 res!477746) b!714540))

(assert (= (and b!714540 res!477747) b!714545))

(assert (= (and b!714545 res!477744) b!714557))

(assert (= (and b!714557 res!477741) b!714555))

(assert (= (and b!714555 res!477745) b!714551))

(assert (= (and b!714551 res!477742) b!714549))

(assert (= (and b!714549 res!477738) b!714547))

(assert (= (and b!714547 res!477750) b!714543))

(assert (= (and b!714543 res!477748) b!714553))

(assert (= (and b!714553 res!477751) b!714542))

(assert (= (and b!714542 res!477752) b!714548))

(assert (= (and b!714548 res!477740) b!714544))

(assert (= (and b!714544 res!477743) b!714556))

(assert (= (and b!714556 res!477739) b!714541))

(assert (= (and b!714541 res!477753) b!714550))

(declare-fun m!671067 () Bool)

(assert (=> b!714557 m!671067))

(declare-fun m!671069 () Bool)

(assert (=> b!714550 m!671069))

(declare-fun m!671071 () Bool)

(assert (=> b!714554 m!671071))

(declare-fun m!671073 () Bool)

(assert (=> b!714543 m!671073))

(declare-fun m!671075 () Bool)

(assert (=> b!714546 m!671075))

(declare-fun m!671077 () Bool)

(assert (=> b!714544 m!671077))

(assert (=> b!714544 m!671077))

(declare-fun m!671079 () Bool)

(assert (=> b!714544 m!671079))

(declare-fun m!671081 () Bool)

(assert (=> b!714547 m!671081))

(declare-fun m!671083 () Bool)

(assert (=> b!714549 m!671083))

(declare-fun m!671085 () Bool)

(assert (=> b!714551 m!671085))

(declare-fun m!671087 () Bool)

(assert (=> b!714553 m!671087))

(declare-fun m!671089 () Bool)

(assert (=> b!714542 m!671089))

(declare-fun m!671091 () Bool)

(assert (=> b!714545 m!671091))

(declare-fun m!671093 () Bool)

(assert (=> b!714540 m!671093))

(declare-fun m!671095 () Bool)

(assert (=> b!714541 m!671095))

(declare-fun m!671097 () Bool)

(assert (=> b!714555 m!671097))

(declare-fun m!671099 () Bool)

(assert (=> start!63464 m!671099))

(declare-fun m!671101 () Bool)

(assert (=> b!714552 m!671101))

(push 1)

(assert (not b!714552))

(assert (not b!714540))

(assert (not b!714555))

(assert (not b!714546))

(assert (not b!714545))

(assert (not start!63464))

(assert (not b!714541))

(assert (not b!714544))

(assert (not b!714554))

(assert (not b!714547))

(assert (not b!714542))

(assert (not b!714543))

(assert (not b!714553))

(assert (not b!714549))

(assert (not b!714557))

(assert (not b!714551))

(assert (not b!714550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98231 () Bool)

(declare-fun lt!318736 () Bool)

(declare-fun content!371 (List!13467) (Set (_ BitVec 64)))

(assert (=> d!98231 (= lt!318736 (member k!2824 (content!371 newAcc!49)))))

(declare-fun e!401525 () Bool)

(assert (=> d!98231 (= lt!318736 e!401525)))

(declare-fun res!477775 () Bool)

(assert (=> d!98231 (=> (not res!477775) (not e!401525))))

(assert (=> d!98231 (= res!477775 (is-Cons!13463 newAcc!49))))

(assert (=> d!98231 (= (contains!4010 newAcc!49 k!2824) lt!318736)))

(declare-fun b!714582 () Bool)

(declare-fun e!401526 () Bool)

(assert (=> b!714582 (= e!401525 e!401526)))

(declare-fun res!477774 () Bool)

(assert (=> b!714582 (=> res!477774 e!401526)))

(assert (=> b!714582 (= res!477774 (= (h!14508 newAcc!49) k!2824))))

(declare-fun b!714583 () Bool)

(assert (=> b!714583 (= e!401526 (contains!4010 (t!19790 newAcc!49) k!2824))))

(assert (= (and d!98231 res!477775) b!714582))

(assert (= (and b!714582 (not res!477774)) b!714583))

(declare-fun m!671119 () Bool)

(assert (=> d!98231 m!671119))

(declare-fun m!671121 () Bool)

(assert (=> d!98231 m!671121))

(declare-fun m!671123 () Bool)

(assert (=> b!714583 m!671123))

(assert (=> b!714547 d!98231))

(declare-fun d!98233 () Bool)

(declare-fun res!477787 () Bool)

(declare-fun e!401541 () Bool)

(assert (=> d!98233 (=> res!477787 e!401541)))

(assert (=> d!98233 (= res!477787 (is-Nil!13464 acc!652))))

(assert (=> d!98233 (= (subseq!454 acc!652 newAcc!49) e!401541)))

(declare-fun b!714599 () Bool)

(declare-fun e!401539 () Bool)

(assert (=> b!714599 (= e!401539 (subseq!454 (t!19790 acc!652) (t!19790 newAcc!49)))))

(declare-fun b!714598 () Bool)

(declare-fun e!401540 () Bool)

(declare-fun e!401542 () Bool)

(assert (=> b!714598 (= e!401540 e!401542)))

(declare-fun res!477789 () Bool)

(assert (=> b!714598 (=> res!477789 e!401542)))

(assert (=> b!714598 (= res!477789 e!401539)))

(declare-fun res!477790 () Bool)

(assert (=> b!714598 (=> (not res!477790) (not e!401539))))

(assert (=> b!714598 (= res!477790 (= (h!14508 acc!652) (h!14508 newAcc!49)))))

(declare-fun b!714597 () Bool)

(assert (=> b!714597 (= e!401541 e!401540)))

(declare-fun res!477788 () Bool)

(assert (=> b!714597 (=> (not res!477788) (not e!401540))))

(assert (=> b!714597 (= res!477788 (is-Cons!13463 newAcc!49))))

(declare-fun b!714600 () Bool)

(assert (=> b!714600 (= e!401542 (subseq!454 acc!652 (t!19790 newAcc!49)))))

(assert (= (and d!98233 (not res!477787)) b!714597))

(assert (= (and b!714597 res!477788) b!714598))

(assert (= (and b!714598 res!477790) b!714599))

(assert (= (and b!714598 (not res!477789)) b!714600))

(declare-fun m!671131 () Bool)

(assert (=> b!714599 m!671131))

(declare-fun m!671133 () Bool)

(assert (=> b!714600 m!671133))

(assert (=> b!714549 d!98233))

(declare-fun d!98235 () Bool)

(assert (=> d!98235 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!714555 d!98235))

(declare-fun d!98239 () Bool)

(declare-fun res!477799 () Bool)

(declare-fun e!401551 () Bool)

(assert (=> d!98239 (=> res!477799 e!401551)))

(assert (=> d!98239 (= res!477799 (= (select (arr!19373 a!3591) from!2969) k!2824))))

(assert (=> d!98239 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!401551)))

(declare-fun b!714609 () Bool)

(declare-fun e!401552 () Bool)

(assert (=> b!714609 (= e!401551 e!401552)))

(declare-fun res!477800 () Bool)

(assert (=> b!714609 (=> (not res!477800) (not e!401552))))

(assert (=> b!714609 (= res!477800 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19787 a!3591)))))

(declare-fun b!714610 () Bool)

(assert (=> b!714610 (= e!401552 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98239 (not res!477799)) b!714609))

(assert (= (and b!714609 res!477800) b!714610))

(assert (=> d!98239 m!671077))

(declare-fun m!671137 () Bool)

(assert (=> b!714610 m!671137))

(assert (=> b!714545 d!98239))

(declare-fun d!98245 () Bool)

(declare-fun res!477809 () Bool)

(declare-fun e!401566 () Bool)

(assert (=> d!98245 (=> res!477809 e!401566)))

(assert (=> d!98245 (= res!477809 (is-Nil!13464 acc!652))))

(assert (=> d!98245 (= (noDuplicate!1257 acc!652) e!401566)))

(declare-fun b!714627 () Bool)

(declare-fun e!401567 () Bool)

(assert (=> b!714627 (= e!401566 e!401567)))

(declare-fun res!477810 () Bool)

(assert (=> b!714627 (=> (not res!477810) (not e!401567))))

(assert (=> b!714627 (= res!477810 (not (contains!4010 (t!19790 acc!652) (h!14508 acc!652))))))

(declare-fun b!714628 () Bool)

(assert (=> b!714628 (= e!401567 (noDuplicate!1257 (t!19790 acc!652)))))

(assert (= (and d!98245 (not res!477809)) b!714627))

(assert (= (and b!714627 res!477810) b!714628))

(declare-fun m!671145 () Bool)

(assert (=> b!714627 m!671145))

(declare-fun m!671147 () Bool)

(assert (=> b!714628 m!671147))

(assert (=> b!714546 d!98245))

(declare-fun d!98249 () Bool)

(declare-fun lt!318742 () Bool)

(assert (=> d!98249 (= lt!318742 (member k!2824 (content!371 acc!652)))))

(declare-fun e!401570 () Bool)

(assert (=> d!98249 (= lt!318742 e!401570)))

(declare-fun res!477814 () Bool)

(assert (=> d!98249 (=> (not res!477814) (not e!401570))))

(assert (=> d!98249 (= res!477814 (is-Cons!13463 acc!652))))

(assert (=> d!98249 (= (contains!4010 acc!652 k!2824) lt!318742)))

(declare-fun b!714631 () Bool)

(declare-fun e!401571 () Bool)

(assert (=> b!714631 (= e!401570 e!401571)))

(declare-fun res!477813 () Bool)

(assert (=> b!714631 (=> res!477813 e!401571)))

(assert (=> b!714631 (= res!477813 (= (h!14508 acc!652) k!2824))))

(declare-fun b!714632 () Bool)

(assert (=> b!714632 (= e!401571 (contains!4010 (t!19790 acc!652) k!2824))))

(assert (= (and d!98249 res!477814) b!714631))

(assert (= (and b!714631 (not res!477813)) b!714632))

(declare-fun m!671149 () Bool)

(assert (=> d!98249 m!671149))

(declare-fun m!671151 () Bool)

(assert (=> d!98249 m!671151))

(declare-fun m!671153 () Bool)

(assert (=> b!714632 m!671153))

(assert (=> b!714557 d!98249))

(declare-fun d!98251 () Bool)

(declare-fun lt!318743 () Bool)

(assert (=> d!98251 (= lt!318743 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!371 newAcc!49)))))

(declare-fun e!401574 () Bool)

(assert (=> d!98251 (= lt!318743 e!401574)))

(declare-fun res!477818 () Bool)

(assert (=> d!98251 (=> (not res!477818) (not e!401574))))

(assert (=> d!98251 (= res!477818 (is-Cons!13463 newAcc!49))))

(assert (=> d!98251 (= (contains!4010 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318743)))

(declare-fun b!714635 () Bool)

(declare-fun e!401575 () Bool)

(assert (=> b!714635 (= e!401574 e!401575)))

(declare-fun res!477817 () Bool)

(assert (=> b!714635 (=> res!477817 e!401575)))

(assert (=> b!714635 (= res!477817 (= (h!14508 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714636 () Bool)

(assert (=> b!714636 (= e!401575 (contains!4010 (t!19790 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98251 res!477818) b!714635))

(assert (= (and b!714635 (not res!477817)) b!714636))

(assert (=> d!98251 m!671119))

(declare-fun m!671155 () Bool)

(assert (=> d!98251 m!671155))

(declare-fun m!671157 () Bool)

(assert (=> b!714636 m!671157))

(assert (=> b!714542 d!98251))

(declare-fun d!98253 () Bool)

(declare-fun lt!318744 () Bool)

(assert (=> d!98253 (= lt!318744 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!371 newAcc!49)))))

(declare-fun e!401576 () Bool)

(assert (=> d!98253 (= lt!318744 e!401576)))

(declare-fun res!477820 () Bool)

(assert (=> d!98253 (=> (not res!477820) (not e!401576))))

(assert (=> d!98253 (= res!477820 (is-Cons!13463 newAcc!49))))

(assert (=> d!98253 (= (contains!4010 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318744)))

(declare-fun b!714637 () Bool)

(declare-fun e!401577 () Bool)

(assert (=> b!714637 (= e!401576 e!401577)))

(declare-fun res!477819 () Bool)

(assert (=> b!714637 (=> res!477819 e!401577)))

(assert (=> b!714637 (= res!477819 (= (h!14508 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714638 () Bool)

(assert (=> b!714638 (= e!401577 (contains!4010 (t!19790 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98253 res!477820) b!714637))

(assert (= (and b!714637 (not res!477819)) b!714638))

(assert (=> d!98253 m!671119))

(declare-fun m!671159 () Bool)

(assert (=> d!98253 m!671159))

(declare-fun m!671161 () Bool)

(assert (=> b!714638 m!671161))

(assert (=> b!714553 d!98253))

(declare-fun d!98255 () Bool)

(declare-fun lt!318746 () Bool)

(assert (=> d!98255 (= lt!318746 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!371 acc!652)))))

(declare-fun e!401583 () Bool)

(assert (=> d!98255 (= lt!318746 e!401583)))

(declare-fun res!477825 () Bool)

(assert (=> d!98255 (=> (not res!477825) (not e!401583))))

(assert (=> d!98255 (= res!477825 (is-Cons!13463 acc!652))))

(assert (=> d!98255 (= (contains!4010 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318746)))

(declare-fun b!714646 () Bool)

(declare-fun e!401584 () Bool)

(assert (=> b!714646 (= e!401583 e!401584)))

(declare-fun res!477824 () Bool)

(assert (=> b!714646 (=> res!477824 e!401584)))

(assert (=> b!714646 (= res!477824 (= (h!14508 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714647 () Bool)

(assert (=> b!714647 (= e!401584 (contains!4010 (t!19790 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98255 res!477825) b!714646))

(assert (= (and b!714646 (not res!477824)) b!714647))

(assert (=> d!98255 m!671149))

(declare-fun m!671165 () Bool)

(assert (=> d!98255 m!671165))

(declare-fun m!671169 () Bool)

(assert (=> b!714647 m!671169))

(assert (=> b!714554 d!98255))

(declare-fun bm!34614 () Bool)

(declare-fun call!34617 () List!13467)

(assert (=> bm!34614 (= call!34617 (-!419 (t!19790 newAcc!49) k!2824))))

(declare-fun b!714688 () Bool)

(declare-fun e!401623 () List!13467)

(assert (=> b!714688 (= e!401623 call!34617)))

(declare-fun b!714689 () Bool)

(declare-fun e!401624 () List!13467)

(assert (=> b!714689 (= e!401624 e!401623)))

(declare-fun c!78783 () Bool)

(assert (=> b!714689 (= c!78783 (= k!2824 (h!14508 newAcc!49)))))

(declare-fun b!714690 () Bool)

(declare-fun e!401622 () Bool)

(declare-fun lt!318755 () List!13467)

(assert (=> b!714690 (= e!401622 (= (content!371 lt!318755) (setminus (content!371 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!714691 () Bool)

(assert (=> b!714691 (= e!401624 Nil!13464)))

(declare-fun d!98259 () Bool)

(assert (=> d!98259 e!401622))

(declare-fun res!477858 () Bool)

(assert (=> d!98259 (=> (not res!477858) (not e!401622))))

(declare-fun size!19789 (List!13467) Int)

(assert (=> d!98259 (= res!477858 (<= (size!19789 lt!318755) (size!19789 newAcc!49)))))

(assert (=> d!98259 (= lt!318755 e!401624)))

(declare-fun c!78782 () Bool)

(assert (=> d!98259 (= c!78782 (is-Cons!13463 newAcc!49))))

(assert (=> d!98259 (= (-!419 newAcc!49 k!2824) lt!318755)))

(declare-fun b!714692 () Bool)

(assert (=> b!714692 (= e!401623 (Cons!13463 (h!14508 newAcc!49) call!34617))))

(assert (= (and d!98259 c!78782) b!714689))

(assert (= (and d!98259 (not c!78782)) b!714691))

(assert (= (and b!714689 c!78783) b!714688))

(assert (= (and b!714689 (not c!78783)) b!714692))

(assert (= (or b!714688 b!714692) bm!34614))

(assert (= (and d!98259 res!477858) b!714690))

(declare-fun m!671221 () Bool)

(assert (=> bm!34614 m!671221))

(declare-fun m!671223 () Bool)

(assert (=> b!714690 m!671223))

(assert (=> b!714690 m!671119))

(declare-fun m!671225 () Bool)

(assert (=> b!714690 m!671225))

(declare-fun m!671227 () Bool)

(assert (=> d!98259 m!671227))

(declare-fun m!671229 () Bool)

(assert (=> d!98259 m!671229))

(assert (=> b!714543 d!98259))

(declare-fun d!98287 () Bool)

(assert (=> d!98287 (= (validKeyInArray!0 (select (arr!19373 a!3591) from!2969)) (and (not (= (select (arr!19373 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19373 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!714544 d!98287))

(declare-fun d!98289 () Bool)

(declare-fun res!477898 () Bool)

(declare-fun e!401674 () Bool)

(assert (=> d!98289 (=> res!477898 e!401674)))

(assert (=> d!98289 (= res!477898 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19787 a!3591)))))

(assert (=> d!98289 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652) e!401674)))

(declare-fun b!714746 () Bool)

(declare-fun e!401673 () Bool)

(declare-fun call!34625 () Bool)

(assert (=> b!714746 (= e!401673 call!34625)))

(declare-fun b!714747 () Bool)

(declare-fun e!401671 () Bool)

(assert (=> b!714747 (= e!401671 e!401673)))

(declare-fun c!78791 () Bool)

(assert (=> b!714747 (= c!78791 (validKeyInArray!0 (select (arr!19373 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34622 () Bool)

(assert (=> bm!34622 (= call!34625 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78791 (Cons!13463 (select (arr!19373 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) acc!652) acc!652)))))

(declare-fun b!714748 () Bool)

(assert (=> b!714748 (= e!401674 e!401671)))

(declare-fun res!477899 () Bool)

(assert (=> b!714748 (=> (not res!477899) (not e!401671))))

(declare-fun e!401672 () Bool)

(assert (=> b!714748 (= res!477899 (not e!401672))))

(declare-fun res!477900 () Bool)

(assert (=> b!714748 (=> (not res!477900) (not e!401672))))

(assert (=> b!714748 (= res!477900 (validKeyInArray!0 (select (arr!19373 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714749 () Bool)

(assert (=> b!714749 (= e!401673 call!34625)))

(declare-fun b!714750 () Bool)

(assert (=> b!714750 (= e!401672 (contains!4010 acc!652 (select (arr!19373 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!98289 (not res!477898)) b!714748))

(assert (= (and b!714748 res!477900) b!714750))

(assert (= (and b!714748 res!477899) b!714747))

(assert (= (and b!714747 c!78791) b!714746))

(assert (= (and b!714747 (not c!78791)) b!714749))

(assert (= (or b!714746 b!714749) bm!34622))

(declare-fun m!671254 () Bool)

(assert (=> b!714747 m!671254))

(assert (=> b!714747 m!671254))

(declare-fun m!671257 () Bool)

(assert (=> b!714747 m!671257))

(assert (=> bm!34622 m!671254))

(declare-fun m!671261 () Bool)

(assert (=> bm!34622 m!671261))

(assert (=> b!714748 m!671254))

(assert (=> b!714748 m!671254))

(assert (=> b!714748 m!671257))

(assert (=> b!714750 m!671254))

(assert (=> b!714750 m!671254))

(declare-fun m!671263 () Bool)

(assert (=> b!714750 m!671263))

(assert (=> b!714550 d!98289))

(declare-fun d!98307 () Bool)

(assert (=> d!98307 (= (array_inv!15147 a!3591) (bvsge (size!19787 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63464 d!98307))

(declare-fun d!98313 () Bool)

(declare-fun lt!318757 () Bool)

(assert (=> d!98313 (= lt!318757 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!371 acc!652)))))

(declare-fun e!401679 () Bool)

(assert (=> d!98313 (= lt!318757 e!401679)))

(declare-fun res!477906 () Bool)

(assert (=> d!98313 (=> (not res!477906) (not e!401679))))

(assert (=> d!98313 (= res!477906 (is-Cons!13463 acc!652))))

