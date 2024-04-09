; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62988 () Bool)

(assert start!62988)

(declare-fun b!709732 () Bool)

(declare-fun res!473408 () Bool)

(declare-fun e!399343 () Bool)

(assert (=> b!709732 (=> (not res!473408) (not e!399343))))

(declare-datatypes ((array!40358 0))(
  ( (array!40359 (arr!19324 (Array (_ BitVec 32) (_ BitVec 64))) (size!19720 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40358)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709732 (= res!473408 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709733 () Bool)

(declare-fun res!473404 () Bool)

(assert (=> b!709733 (=> (not res!473404) (not e!399343))))

(declare-datatypes ((List!13418 0))(
  ( (Nil!13415) (Cons!13414 (h!14459 (_ BitVec 64)) (t!19723 List!13418)) )
))
(declare-fun lt!318218 () List!13418)

(declare-fun noDuplicate!1208 (List!13418) Bool)

(assert (=> b!709733 (= res!473404 (noDuplicate!1208 lt!318218))))

(declare-fun res!473393 () Bool)

(declare-fun e!399344 () Bool)

(assert (=> start!62988 (=> (not res!473393) (not e!399344))))

(assert (=> start!62988 (= res!473393 (and (bvslt (size!19720 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19720 a!3591))))))

(assert (=> start!62988 e!399344))

(assert (=> start!62988 true))

(declare-fun array_inv!15098 (array!40358) Bool)

(assert (=> start!62988 (array_inv!15098 a!3591)))

(declare-fun b!709734 () Bool)

(declare-fun res!473409 () Bool)

(assert (=> b!709734 (=> (not res!473409) (not e!399344))))

(declare-fun acc!652 () List!13418)

(assert (=> b!709734 (= res!473409 (noDuplicate!1208 acc!652))))

(declare-fun b!709735 () Bool)

(declare-fun res!473394 () Bool)

(assert (=> b!709735 (=> (not res!473394) (not e!399344))))

(declare-fun contains!3961 (List!13418 (_ BitVec 64)) Bool)

(assert (=> b!709735 (= res!473394 (not (contains!3961 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709736 () Bool)

(declare-fun res!473412 () Bool)

(assert (=> b!709736 (=> (not res!473412) (not e!399344))))

(declare-fun newAcc!49 () List!13418)

(assert (=> b!709736 (= res!473412 (not (contains!3961 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709737 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40358 (_ BitVec 32) List!13418) Bool)

(assert (=> b!709737 (= e!399343 (not (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318218)))))

(declare-fun b!709738 () Bool)

(declare-fun res!473390 () Bool)

(assert (=> b!709738 (=> (not res!473390) (not e!399344))))

(declare-fun -!370 (List!13418 (_ BitVec 64)) List!13418)

(assert (=> b!709738 (= res!473390 (= (-!370 newAcc!49 k0!2824) acc!652))))

(declare-fun b!709739 () Bool)

(declare-fun res!473407 () Bool)

(assert (=> b!709739 (=> (not res!473407) (not e!399344))))

(assert (=> b!709739 (= res!473407 (not (contains!3961 acc!652 k0!2824)))))

(declare-fun b!709740 () Bool)

(declare-fun res!473395 () Bool)

(assert (=> b!709740 (=> (not res!473395) (not e!399344))))

(assert (=> b!709740 (= res!473395 (not (contains!3961 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709741 () Bool)

(declare-fun res!473410 () Bool)

(assert (=> b!709741 (=> (not res!473410) (not e!399344))))

(assert (=> b!709741 (= res!473410 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709742 () Bool)

(declare-fun res!473402 () Bool)

(assert (=> b!709742 (=> (not res!473402) (not e!399344))))

(assert (=> b!709742 (= res!473402 (contains!3961 newAcc!49 k0!2824))))

(declare-fun b!709743 () Bool)

(declare-fun res!473392 () Bool)

(assert (=> b!709743 (=> (not res!473392) (not e!399344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709743 (= res!473392 (validKeyInArray!0 k0!2824))))

(declare-fun b!709744 () Bool)

(assert (=> b!709744 (= e!399344 e!399343)))

(declare-fun res!473401 () Bool)

(assert (=> b!709744 (=> (not res!473401) (not e!399343))))

(assert (=> b!709744 (= res!473401 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!515 (List!13418 (_ BitVec 64)) List!13418)

(assert (=> b!709744 (= lt!318218 ($colon$colon!515 acc!652 (select (arr!19324 a!3591) from!2969)))))

(declare-fun b!709745 () Bool)

(declare-fun res!473405 () Bool)

(assert (=> b!709745 (=> (not res!473405) (not e!399344))))

(assert (=> b!709745 (= res!473405 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!709746 () Bool)

(declare-fun res!473398 () Bool)

(assert (=> b!709746 (=> (not res!473398) (not e!399343))))

(assert (=> b!709746 (= res!473398 (not (contains!3961 lt!318218 k0!2824)))))

(declare-fun b!709747 () Bool)

(declare-fun res!473400 () Bool)

(assert (=> b!709747 (=> (not res!473400) (not e!399344))))

(assert (=> b!709747 (= res!473400 (validKeyInArray!0 (select (arr!19324 a!3591) from!2969)))))

(declare-fun b!709748 () Bool)

(declare-fun res!473399 () Bool)

(assert (=> b!709748 (=> (not res!473399) (not e!399344))))

(declare-fun subseq!405 (List!13418 List!13418) Bool)

(assert (=> b!709748 (= res!473399 (subseq!405 acc!652 newAcc!49))))

(declare-fun b!709749 () Bool)

(declare-fun res!473396 () Bool)

(assert (=> b!709749 (=> (not res!473396) (not e!399344))))

(assert (=> b!709749 (= res!473396 (not (contains!3961 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709750 () Bool)

(declare-fun res!473411 () Bool)

(assert (=> b!709750 (=> (not res!473411) (not e!399343))))

(assert (=> b!709750 (= res!473411 (noDuplicate!1208 ($colon$colon!515 newAcc!49 (select (arr!19324 a!3591) from!2969))))))

(declare-fun b!709751 () Bool)

(declare-fun res!473403 () Bool)

(assert (=> b!709751 (=> (not res!473403) (not e!399344))))

(assert (=> b!709751 (= res!473403 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19720 a!3591)))))

(declare-fun b!709752 () Bool)

(declare-fun res!473391 () Bool)

(assert (=> b!709752 (=> (not res!473391) (not e!399343))))

(assert (=> b!709752 (= res!473391 (not (contains!3961 lt!318218 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709753 () Bool)

(declare-fun res!473406 () Bool)

(assert (=> b!709753 (=> (not res!473406) (not e!399344))))

(assert (=> b!709753 (= res!473406 (noDuplicate!1208 newAcc!49))))

(declare-fun b!709754 () Bool)

(declare-fun res!473397 () Bool)

(assert (=> b!709754 (=> (not res!473397) (not e!399343))))

(assert (=> b!709754 (= res!473397 (not (contains!3961 lt!318218 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62988 res!473393) b!709734))

(assert (= (and b!709734 res!473409) b!709753))

(assert (= (and b!709753 res!473406) b!709740))

(assert (= (and b!709740 res!473395) b!709735))

(assert (= (and b!709735 res!473394) b!709745))

(assert (= (and b!709745 res!473405) b!709739))

(assert (= (and b!709739 res!473407) b!709743))

(assert (= (and b!709743 res!473392) b!709741))

(assert (= (and b!709741 res!473410) b!709748))

(assert (= (and b!709748 res!473399) b!709742))

(assert (= (and b!709742 res!473402) b!709738))

(assert (= (and b!709738 res!473390) b!709749))

(assert (= (and b!709749 res!473396) b!709736))

(assert (= (and b!709736 res!473412) b!709751))

(assert (= (and b!709751 res!473403) b!709747))

(assert (= (and b!709747 res!473400) b!709744))

(assert (= (and b!709744 res!473401) b!709733))

(assert (= (and b!709733 res!473404) b!709750))

(assert (= (and b!709750 res!473411) b!709754))

(assert (= (and b!709754 res!473397) b!709752))

(assert (= (and b!709752 res!473391) b!709732))

(assert (= (and b!709732 res!473408) b!709746))

(assert (= (and b!709746 res!473398) b!709737))

(declare-fun m!667019 () Bool)

(assert (=> b!709748 m!667019))

(declare-fun m!667021 () Bool)

(assert (=> b!709746 m!667021))

(declare-fun m!667023 () Bool)

(assert (=> b!709750 m!667023))

(assert (=> b!709750 m!667023))

(declare-fun m!667025 () Bool)

(assert (=> b!709750 m!667025))

(assert (=> b!709750 m!667025))

(declare-fun m!667027 () Bool)

(assert (=> b!709750 m!667027))

(assert (=> b!709744 m!667023))

(assert (=> b!709744 m!667023))

(declare-fun m!667029 () Bool)

(assert (=> b!709744 m!667029))

(assert (=> b!709747 m!667023))

(assert (=> b!709747 m!667023))

(declare-fun m!667031 () Bool)

(assert (=> b!709747 m!667031))

(declare-fun m!667033 () Bool)

(assert (=> b!709740 m!667033))

(declare-fun m!667035 () Bool)

(assert (=> b!709754 m!667035))

(declare-fun m!667037 () Bool)

(assert (=> b!709752 m!667037))

(declare-fun m!667039 () Bool)

(assert (=> b!709745 m!667039))

(declare-fun m!667041 () Bool)

(assert (=> b!709733 m!667041))

(declare-fun m!667043 () Bool)

(assert (=> b!709742 m!667043))

(declare-fun m!667045 () Bool)

(assert (=> b!709735 m!667045))

(declare-fun m!667047 () Bool)

(assert (=> start!62988 m!667047))

(declare-fun m!667049 () Bool)

(assert (=> b!709738 m!667049))

(declare-fun m!667051 () Bool)

(assert (=> b!709741 m!667051))

(declare-fun m!667053 () Bool)

(assert (=> b!709743 m!667053))

(declare-fun m!667055 () Bool)

(assert (=> b!709753 m!667055))

(declare-fun m!667057 () Bool)

(assert (=> b!709734 m!667057))

(declare-fun m!667059 () Bool)

(assert (=> b!709732 m!667059))

(declare-fun m!667061 () Bool)

(assert (=> b!709749 m!667061))

(declare-fun m!667063 () Bool)

(assert (=> b!709739 m!667063))

(declare-fun m!667065 () Bool)

(assert (=> b!709736 m!667065))

(declare-fun m!667067 () Bool)

(assert (=> b!709737 m!667067))

(check-sat (not b!709734) (not b!709749) (not b!709736) (not start!62988) (not b!709754) (not b!709750) (not b!709743) (not b!709745) (not b!709741) (not b!709737) (not b!709740) (not b!709742) (not b!709732) (not b!709748) (not b!709739) (not b!709752) (not b!709735) (not b!709744) (not b!709738) (not b!709746) (not b!709753) (not b!709733) (not b!709747))
(check-sat)
(get-model)

(declare-fun d!97117 () Bool)

(declare-fun res!473486 () Bool)

(declare-fun e!399359 () Bool)

(assert (=> d!97117 (=> res!473486 e!399359)))

(assert (=> d!97117 (= res!473486 (= (select (arr!19324 a!3591) from!2969) k0!2824))))

(assert (=> d!97117 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!399359)))

(declare-fun b!709828 () Bool)

(declare-fun e!399360 () Bool)

(assert (=> b!709828 (= e!399359 e!399360)))

(declare-fun res!473487 () Bool)

(assert (=> b!709828 (=> (not res!473487) (not e!399360))))

(assert (=> b!709828 (= res!473487 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19720 a!3591)))))

(declare-fun b!709829 () Bool)

(assert (=> b!709829 (= e!399360 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97117 (not res!473486)) b!709828))

(assert (= (and b!709828 res!473487) b!709829))

(assert (=> d!97117 m!667023))

(declare-fun m!667119 () Bool)

(assert (=> b!709829 m!667119))

(assert (=> b!709745 d!97117))

(declare-fun d!97119 () Bool)

(declare-fun lt!318224 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!349 (List!13418) (InoxSet (_ BitVec 64)))

(assert (=> d!97119 (= lt!318224 (select (content!349 lt!318218) k0!2824))))

(declare-fun e!399365 () Bool)

(assert (=> d!97119 (= lt!318224 e!399365)))

(declare-fun res!473493 () Bool)

(assert (=> d!97119 (=> (not res!473493) (not e!399365))))

(get-info :version)

(assert (=> d!97119 (= res!473493 ((_ is Cons!13414) lt!318218))))

(assert (=> d!97119 (= (contains!3961 lt!318218 k0!2824) lt!318224)))

(declare-fun b!709834 () Bool)

(declare-fun e!399366 () Bool)

(assert (=> b!709834 (= e!399365 e!399366)))

(declare-fun res!473492 () Bool)

(assert (=> b!709834 (=> res!473492 e!399366)))

(assert (=> b!709834 (= res!473492 (= (h!14459 lt!318218) k0!2824))))

(declare-fun b!709835 () Bool)

(assert (=> b!709835 (= e!399366 (contains!3961 (t!19723 lt!318218) k0!2824))))

(assert (= (and d!97119 res!473493) b!709834))

(assert (= (and b!709834 (not res!473492)) b!709835))

(declare-fun m!667121 () Bool)

(assert (=> d!97119 m!667121))

(declare-fun m!667123 () Bool)

(assert (=> d!97119 m!667123))

(declare-fun m!667125 () Bool)

(assert (=> b!709835 m!667125))

(assert (=> b!709746 d!97119))

(declare-fun d!97121 () Bool)

(declare-fun lt!318225 () Bool)

(assert (=> d!97121 (= lt!318225 (select (content!349 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399367 () Bool)

(assert (=> d!97121 (= lt!318225 e!399367)))

(declare-fun res!473495 () Bool)

(assert (=> d!97121 (=> (not res!473495) (not e!399367))))

(assert (=> d!97121 (= res!473495 ((_ is Cons!13414) acc!652))))

(assert (=> d!97121 (= (contains!3961 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318225)))

(declare-fun b!709836 () Bool)

(declare-fun e!399368 () Bool)

(assert (=> b!709836 (= e!399367 e!399368)))

(declare-fun res!473494 () Bool)

(assert (=> b!709836 (=> res!473494 e!399368)))

(assert (=> b!709836 (= res!473494 (= (h!14459 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709837 () Bool)

(assert (=> b!709837 (= e!399368 (contains!3961 (t!19723 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97121 res!473495) b!709836))

(assert (= (and b!709836 (not res!473494)) b!709837))

(declare-fun m!667127 () Bool)

(assert (=> d!97121 m!667127))

(declare-fun m!667129 () Bool)

(assert (=> d!97121 m!667129))

(declare-fun m!667131 () Bool)

(assert (=> b!709837 m!667131))

(assert (=> b!709735 d!97121))

(declare-fun d!97123 () Bool)

(assert (=> d!97123 (= ($colon$colon!515 acc!652 (select (arr!19324 a!3591) from!2969)) (Cons!13414 (select (arr!19324 a!3591) from!2969) acc!652))))

(assert (=> b!709744 d!97123))

(declare-fun d!97125 () Bool)

(declare-fun res!473500 () Bool)

(declare-fun e!399373 () Bool)

(assert (=> d!97125 (=> res!473500 e!399373)))

(assert (=> d!97125 (= res!473500 ((_ is Nil!13415) lt!318218))))

(assert (=> d!97125 (= (noDuplicate!1208 lt!318218) e!399373)))

(declare-fun b!709842 () Bool)

(declare-fun e!399374 () Bool)

(assert (=> b!709842 (= e!399373 e!399374)))

(declare-fun res!473501 () Bool)

(assert (=> b!709842 (=> (not res!473501) (not e!399374))))

(assert (=> b!709842 (= res!473501 (not (contains!3961 (t!19723 lt!318218) (h!14459 lt!318218))))))

(declare-fun b!709843 () Bool)

(assert (=> b!709843 (= e!399374 (noDuplicate!1208 (t!19723 lt!318218)))))

(assert (= (and d!97125 (not res!473500)) b!709842))

(assert (= (and b!709842 res!473501) b!709843))

(declare-fun m!667133 () Bool)

(assert (=> b!709842 m!667133))

(declare-fun m!667135 () Bool)

(assert (=> b!709843 m!667135))

(assert (=> b!709733 d!97125))

(declare-fun d!97127 () Bool)

(declare-fun res!473502 () Bool)

(declare-fun e!399375 () Bool)

(assert (=> d!97127 (=> res!473502 e!399375)))

(assert (=> d!97127 (= res!473502 ((_ is Nil!13415) acc!652))))

(assert (=> d!97127 (= (noDuplicate!1208 acc!652) e!399375)))

(declare-fun b!709844 () Bool)

(declare-fun e!399376 () Bool)

(assert (=> b!709844 (= e!399375 e!399376)))

(declare-fun res!473503 () Bool)

(assert (=> b!709844 (=> (not res!473503) (not e!399376))))

(assert (=> b!709844 (= res!473503 (not (contains!3961 (t!19723 acc!652) (h!14459 acc!652))))))

(declare-fun b!709845 () Bool)

(assert (=> b!709845 (= e!399376 (noDuplicate!1208 (t!19723 acc!652)))))

(assert (= (and d!97127 (not res!473502)) b!709844))

(assert (= (and b!709844 res!473503) b!709845))

(declare-fun m!667137 () Bool)

(assert (=> b!709844 m!667137))

(declare-fun m!667139 () Bool)

(assert (=> b!709845 m!667139))

(assert (=> b!709734 d!97127))

(declare-fun d!97129 () Bool)

(declare-fun res!473504 () Bool)

(declare-fun e!399377 () Bool)

(assert (=> d!97129 (=> res!473504 e!399377)))

(assert (=> d!97129 (= res!473504 (= (select (arr!19324 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!97129 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!399377)))

(declare-fun b!709846 () Bool)

(declare-fun e!399378 () Bool)

(assert (=> b!709846 (= e!399377 e!399378)))

(declare-fun res!473505 () Bool)

(assert (=> b!709846 (=> (not res!473505) (not e!399378))))

(assert (=> b!709846 (= res!473505 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19720 a!3591)))))

(declare-fun b!709847 () Bool)

(assert (=> b!709847 (= e!399378 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97129 (not res!473504)) b!709846))

(assert (= (and b!709846 res!473505) b!709847))

(declare-fun m!667141 () Bool)

(assert (=> d!97129 m!667141))

(declare-fun m!667143 () Bool)

(assert (=> b!709847 m!667143))

(assert (=> b!709732 d!97129))

(declare-fun d!97131 () Bool)

(assert (=> d!97131 (= (array_inv!15098 a!3591) (bvsge (size!19720 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62988 d!97131))

(declare-fun d!97133 () Bool)

(declare-fun res!473506 () Bool)

(declare-fun e!399379 () Bool)

(assert (=> d!97133 (=> res!473506 e!399379)))

(assert (=> d!97133 (= res!473506 ((_ is Nil!13415) newAcc!49))))

(assert (=> d!97133 (= (noDuplicate!1208 newAcc!49) e!399379)))

(declare-fun b!709848 () Bool)

(declare-fun e!399380 () Bool)

(assert (=> b!709848 (= e!399379 e!399380)))

(declare-fun res!473507 () Bool)

(assert (=> b!709848 (=> (not res!473507) (not e!399380))))

(assert (=> b!709848 (= res!473507 (not (contains!3961 (t!19723 newAcc!49) (h!14459 newAcc!49))))))

(declare-fun b!709849 () Bool)

(assert (=> b!709849 (= e!399380 (noDuplicate!1208 (t!19723 newAcc!49)))))

(assert (= (and d!97133 (not res!473506)) b!709848))

(assert (= (and b!709848 res!473507) b!709849))

(declare-fun m!667145 () Bool)

(assert (=> b!709848 m!667145))

(declare-fun m!667147 () Bool)

(assert (=> b!709849 m!667147))

(assert (=> b!709753 d!97133))

(declare-fun d!97135 () Bool)

(declare-fun lt!318226 () Bool)

(assert (=> d!97135 (= lt!318226 (select (content!349 lt!318218) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399381 () Bool)

(assert (=> d!97135 (= lt!318226 e!399381)))

(declare-fun res!473509 () Bool)

(assert (=> d!97135 (=> (not res!473509) (not e!399381))))

(assert (=> d!97135 (= res!473509 ((_ is Cons!13414) lt!318218))))

(assert (=> d!97135 (= (contains!3961 lt!318218 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318226)))

(declare-fun b!709850 () Bool)

(declare-fun e!399382 () Bool)

(assert (=> b!709850 (= e!399381 e!399382)))

(declare-fun res!473508 () Bool)

(assert (=> b!709850 (=> res!473508 e!399382)))

(assert (=> b!709850 (= res!473508 (= (h!14459 lt!318218) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709851 () Bool)

(assert (=> b!709851 (= e!399382 (contains!3961 (t!19723 lt!318218) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97135 res!473509) b!709850))

(assert (= (and b!709850 (not res!473508)) b!709851))

(assert (=> d!97135 m!667121))

(declare-fun m!667149 () Bool)

(assert (=> d!97135 m!667149))

(declare-fun m!667151 () Bool)

(assert (=> b!709851 m!667151))

(assert (=> b!709754 d!97135))

(declare-fun d!97137 () Bool)

(assert (=> d!97137 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709743 d!97137))

(declare-fun d!97139 () Bool)

(declare-fun lt!318227 () Bool)

(assert (=> d!97139 (= lt!318227 (select (content!349 lt!318218) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399383 () Bool)

(assert (=> d!97139 (= lt!318227 e!399383)))

(declare-fun res!473511 () Bool)

(assert (=> d!97139 (=> (not res!473511) (not e!399383))))

(assert (=> d!97139 (= res!473511 ((_ is Cons!13414) lt!318218))))

(assert (=> d!97139 (= (contains!3961 lt!318218 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318227)))

(declare-fun b!709852 () Bool)

(declare-fun e!399384 () Bool)

(assert (=> b!709852 (= e!399383 e!399384)))

(declare-fun res!473510 () Bool)

(assert (=> b!709852 (=> res!473510 e!399384)))

(assert (=> b!709852 (= res!473510 (= (h!14459 lt!318218) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709853 () Bool)

(assert (=> b!709853 (= e!399384 (contains!3961 (t!19723 lt!318218) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97139 res!473511) b!709852))

(assert (= (and b!709852 (not res!473510)) b!709853))

(assert (=> d!97139 m!667121))

(declare-fun m!667153 () Bool)

(assert (=> d!97139 m!667153))

(declare-fun m!667155 () Bool)

(assert (=> b!709853 m!667155))

(assert (=> b!709752 d!97139))

(declare-fun b!709868 () Bool)

(declare-fun e!399398 () Bool)

(declare-fun call!34452 () Bool)

(assert (=> b!709868 (= e!399398 call!34452)))

(declare-fun b!709869 () Bool)

(declare-fun e!399400 () Bool)

(assert (=> b!709869 (= e!399400 (contains!3961 acc!652 (select (arr!19324 a!3591) from!2969)))))

(declare-fun d!97141 () Bool)

(declare-fun res!473524 () Bool)

(declare-fun e!399399 () Bool)

(assert (=> d!97141 (=> res!473524 e!399399)))

(assert (=> d!97141 (= res!473524 (bvsge from!2969 (size!19720 a!3591)))))

(assert (=> d!97141 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399399)))

(declare-fun b!709870 () Bool)

(assert (=> b!709870 (= e!399398 call!34452)))

(declare-fun b!709871 () Bool)

(declare-fun e!399397 () Bool)

(assert (=> b!709871 (= e!399399 e!399397)))

(declare-fun res!473522 () Bool)

(assert (=> b!709871 (=> (not res!473522) (not e!399397))))

(assert (=> b!709871 (= res!473522 (not e!399400))))

(declare-fun res!473523 () Bool)

(assert (=> b!709871 (=> (not res!473523) (not e!399400))))

(assert (=> b!709871 (= res!473523 (validKeyInArray!0 (select (arr!19324 a!3591) from!2969)))))

(declare-fun b!709872 () Bool)

(assert (=> b!709872 (= e!399397 e!399398)))

(declare-fun c!78540 () Bool)

(assert (=> b!709872 (= c!78540 (validKeyInArray!0 (select (arr!19324 a!3591) from!2969)))))

(declare-fun bm!34449 () Bool)

(assert (=> bm!34449 (= call!34452 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78540 (Cons!13414 (select (arr!19324 a!3591) from!2969) acc!652) acc!652)))))

(assert (= (and d!97141 (not res!473524)) b!709871))

(assert (= (and b!709871 res!473523) b!709869))

(assert (= (and b!709871 res!473522) b!709872))

(assert (= (and b!709872 c!78540) b!709870))

(assert (= (and b!709872 (not c!78540)) b!709868))

(assert (= (or b!709870 b!709868) bm!34449))

(assert (=> b!709869 m!667023))

(assert (=> b!709869 m!667023))

(declare-fun m!667161 () Bool)

(assert (=> b!709869 m!667161))

(assert (=> b!709871 m!667023))

(assert (=> b!709871 m!667023))

(assert (=> b!709871 m!667031))

(assert (=> b!709872 m!667023))

(assert (=> b!709872 m!667023))

(assert (=> b!709872 m!667031))

(assert (=> bm!34449 m!667023))

(declare-fun m!667163 () Bool)

(assert (=> bm!34449 m!667163))

(assert (=> b!709741 d!97141))

(declare-fun d!97153 () Bool)

(declare-fun lt!318230 () Bool)

(assert (=> d!97153 (= lt!318230 (select (content!349 newAcc!49) k0!2824))))

(declare-fun e!399407 () Bool)

(assert (=> d!97153 (= lt!318230 e!399407)))

(declare-fun res!473532 () Bool)

(assert (=> d!97153 (=> (not res!473532) (not e!399407))))

(assert (=> d!97153 (= res!473532 ((_ is Cons!13414) newAcc!49))))

(assert (=> d!97153 (= (contains!3961 newAcc!49 k0!2824) lt!318230)))

(declare-fun b!709879 () Bool)

(declare-fun e!399408 () Bool)

(assert (=> b!709879 (= e!399407 e!399408)))

(declare-fun res!473531 () Bool)

(assert (=> b!709879 (=> res!473531 e!399408)))

(assert (=> b!709879 (= res!473531 (= (h!14459 newAcc!49) k0!2824))))

(declare-fun b!709880 () Bool)

(assert (=> b!709880 (= e!399408 (contains!3961 (t!19723 newAcc!49) k0!2824))))

(assert (= (and d!97153 res!473532) b!709879))

(assert (= (and b!709879 (not res!473531)) b!709880))

(declare-fun m!667165 () Bool)

(assert (=> d!97153 m!667165))

(declare-fun m!667167 () Bool)

(assert (=> d!97153 m!667167))

(declare-fun m!667169 () Bool)

(assert (=> b!709880 m!667169))

(assert (=> b!709742 d!97153))

(declare-fun d!97155 () Bool)

(declare-fun lt!318231 () Bool)

(assert (=> d!97155 (= lt!318231 (select (content!349 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399409 () Bool)

(assert (=> d!97155 (= lt!318231 e!399409)))

(declare-fun res!473534 () Bool)

(assert (=> d!97155 (=> (not res!473534) (not e!399409))))

(assert (=> d!97155 (= res!473534 ((_ is Cons!13414) acc!652))))

(assert (=> d!97155 (= (contains!3961 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318231)))

(declare-fun b!709881 () Bool)

(declare-fun e!399410 () Bool)

(assert (=> b!709881 (= e!399409 e!399410)))

(declare-fun res!473533 () Bool)

(assert (=> b!709881 (=> res!473533 e!399410)))

(assert (=> b!709881 (= res!473533 (= (h!14459 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709882 () Bool)

(assert (=> b!709882 (= e!399410 (contains!3961 (t!19723 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97155 res!473534) b!709881))

(assert (= (and b!709881 (not res!473533)) b!709882))

(assert (=> d!97155 m!667127))

(declare-fun m!667171 () Bool)

(assert (=> d!97155 m!667171))

(declare-fun m!667173 () Bool)

(assert (=> b!709882 m!667173))

(assert (=> b!709740 d!97155))

(declare-fun d!97157 () Bool)

(declare-fun lt!318233 () Bool)

(assert (=> d!97157 (= lt!318233 (select (content!349 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399413 () Bool)

(assert (=> d!97157 (= lt!318233 e!399413)))

(declare-fun res!473540 () Bool)

(assert (=> d!97157 (=> (not res!473540) (not e!399413))))

(assert (=> d!97157 (= res!473540 ((_ is Cons!13414) newAcc!49))))

(assert (=> d!97157 (= (contains!3961 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318233)))

(declare-fun b!709885 () Bool)

(declare-fun e!399415 () Bool)

(assert (=> b!709885 (= e!399413 e!399415)))

(declare-fun res!473537 () Bool)

(assert (=> b!709885 (=> res!473537 e!399415)))

(assert (=> b!709885 (= res!473537 (= (h!14459 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709886 () Bool)

(assert (=> b!709886 (= e!399415 (contains!3961 (t!19723 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97157 res!473540) b!709885))

(assert (= (and b!709885 (not res!473537)) b!709886))

(assert (=> d!97157 m!667165))

(declare-fun m!667181 () Bool)

(assert (=> d!97157 m!667181))

(declare-fun m!667183 () Bool)

(assert (=> b!709886 m!667183))

(assert (=> b!709749 d!97157))

(declare-fun d!97161 () Bool)

(declare-fun res!473545 () Bool)

(declare-fun e!399421 () Bool)

(assert (=> d!97161 (=> res!473545 e!399421)))

(assert (=> d!97161 (= res!473545 ((_ is Nil!13415) ($colon$colon!515 newAcc!49 (select (arr!19324 a!3591) from!2969))))))

(assert (=> d!97161 (= (noDuplicate!1208 ($colon$colon!515 newAcc!49 (select (arr!19324 a!3591) from!2969))) e!399421)))

(declare-fun b!709893 () Bool)

(declare-fun e!399422 () Bool)

(assert (=> b!709893 (= e!399421 e!399422)))

(declare-fun res!473546 () Bool)

(assert (=> b!709893 (=> (not res!473546) (not e!399422))))

(assert (=> b!709893 (= res!473546 (not (contains!3961 (t!19723 ($colon$colon!515 newAcc!49 (select (arr!19324 a!3591) from!2969))) (h!14459 ($colon$colon!515 newAcc!49 (select (arr!19324 a!3591) from!2969))))))))

(declare-fun b!709894 () Bool)

(assert (=> b!709894 (= e!399422 (noDuplicate!1208 (t!19723 ($colon$colon!515 newAcc!49 (select (arr!19324 a!3591) from!2969)))))))

(assert (= (and d!97161 (not res!473545)) b!709893))

(assert (= (and b!709893 res!473546) b!709894))

(declare-fun m!667191 () Bool)

(assert (=> b!709893 m!667191))

(declare-fun m!667193 () Bool)

(assert (=> b!709894 m!667193))

(assert (=> b!709750 d!97161))

(declare-fun d!97165 () Bool)

(assert (=> d!97165 (= ($colon$colon!515 newAcc!49 (select (arr!19324 a!3591) from!2969)) (Cons!13414 (select (arr!19324 a!3591) from!2969) newAcc!49))))

(assert (=> b!709750 d!97165))

(declare-fun d!97167 () Bool)

(declare-fun lt!318236 () Bool)

(assert (=> d!97167 (= lt!318236 (select (content!349 acc!652) k0!2824))))

(declare-fun e!399425 () Bool)

(assert (=> d!97167 (= lt!318236 e!399425)))

(declare-fun res!473550 () Bool)

(assert (=> d!97167 (=> (not res!473550) (not e!399425))))

(assert (=> d!97167 (= res!473550 ((_ is Cons!13414) acc!652))))

(assert (=> d!97167 (= (contains!3961 acc!652 k0!2824) lt!318236)))

(declare-fun b!709897 () Bool)

(declare-fun e!399426 () Bool)

(assert (=> b!709897 (= e!399425 e!399426)))

(declare-fun res!473549 () Bool)

(assert (=> b!709897 (=> res!473549 e!399426)))

(assert (=> b!709897 (= res!473549 (= (h!14459 acc!652) k0!2824))))

(declare-fun b!709898 () Bool)

(assert (=> b!709898 (= e!399426 (contains!3961 (t!19723 acc!652) k0!2824))))

(assert (= (and d!97167 res!473550) b!709897))

(assert (= (and b!709897 (not res!473549)) b!709898))

(assert (=> d!97167 m!667127))

(declare-fun m!667199 () Bool)

(assert (=> d!97167 m!667199))

(declare-fun m!667201 () Bool)

(assert (=> b!709898 m!667201))

(assert (=> b!709739 d!97167))

(declare-fun b!709924 () Bool)

(declare-fun e!399449 () Bool)

(declare-fun e!399454 () Bool)

(assert (=> b!709924 (= e!399449 e!399454)))

(declare-fun res!473578 () Bool)

(assert (=> b!709924 (=> res!473578 e!399454)))

(declare-fun e!399451 () Bool)

(assert (=> b!709924 (= res!473578 e!399451)))

(declare-fun res!473576 () Bool)

(assert (=> b!709924 (=> (not res!473576) (not e!399451))))

(assert (=> b!709924 (= res!473576 (= (h!14459 acc!652) (h!14459 newAcc!49)))))

(declare-fun d!97171 () Bool)

(declare-fun res!473577 () Bool)

(declare-fun e!399450 () Bool)

(assert (=> d!97171 (=> res!473577 e!399450)))

(assert (=> d!97171 (= res!473577 ((_ is Nil!13415) acc!652))))

(assert (=> d!97171 (= (subseq!405 acc!652 newAcc!49) e!399450)))

(declare-fun b!709926 () Bool)

(assert (=> b!709926 (= e!399454 (subseq!405 acc!652 (t!19723 newAcc!49)))))

(declare-fun b!709925 () Bool)

(assert (=> b!709925 (= e!399451 (subseq!405 (t!19723 acc!652) (t!19723 newAcc!49)))))

(declare-fun b!709923 () Bool)

(assert (=> b!709923 (= e!399450 e!399449)))

(declare-fun res!473575 () Bool)

(assert (=> b!709923 (=> (not res!473575) (not e!399449))))

(assert (=> b!709923 (= res!473575 ((_ is Cons!13414) newAcc!49))))

(assert (= (and d!97171 (not res!473577)) b!709923))

(assert (= (and b!709923 res!473575) b!709924))

(assert (= (and b!709924 res!473576) b!709925))

(assert (= (and b!709924 (not res!473578)) b!709926))

(declare-fun m!667221 () Bool)

(assert (=> b!709926 m!667221))

(declare-fun m!667223 () Bool)

(assert (=> b!709925 m!667223))

(assert (=> b!709748 d!97171))

(declare-fun b!709929 () Bool)

(declare-fun e!399458 () Bool)

(declare-fun call!34453 () Bool)

(assert (=> b!709929 (= e!399458 call!34453)))

(declare-fun e!399460 () Bool)

(declare-fun b!709930 () Bool)

(assert (=> b!709930 (= e!399460 (contains!3961 lt!318218 (select (arr!19324 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!97181 () Bool)

(declare-fun res!473583 () Bool)

(declare-fun e!399459 () Bool)

(assert (=> d!97181 (=> res!473583 e!399459)))

(assert (=> d!97181 (= res!473583 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19720 a!3591)))))

(assert (=> d!97181 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318218) e!399459)))

(declare-fun b!709931 () Bool)

(assert (=> b!709931 (= e!399458 call!34453)))

(declare-fun b!709932 () Bool)

(declare-fun e!399457 () Bool)

(assert (=> b!709932 (= e!399459 e!399457)))

(declare-fun res!473581 () Bool)

(assert (=> b!709932 (=> (not res!473581) (not e!399457))))

(assert (=> b!709932 (= res!473581 (not e!399460))))

(declare-fun res!473582 () Bool)

(assert (=> b!709932 (=> (not res!473582) (not e!399460))))

(assert (=> b!709932 (= res!473582 (validKeyInArray!0 (select (arr!19324 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709933 () Bool)

(assert (=> b!709933 (= e!399457 e!399458)))

(declare-fun c!78541 () Bool)

(assert (=> b!709933 (= c!78541 (validKeyInArray!0 (select (arr!19324 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34450 () Bool)

(assert (=> bm!34450 (= call!34453 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78541 (Cons!13414 (select (arr!19324 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318218) lt!318218)))))

(assert (= (and d!97181 (not res!473583)) b!709932))

(assert (= (and b!709932 res!473582) b!709930))

(assert (= (and b!709932 res!473581) b!709933))

(assert (= (and b!709933 c!78541) b!709931))

(assert (= (and b!709933 (not c!78541)) b!709929))

(assert (= (or b!709931 b!709929) bm!34450))

(assert (=> b!709930 m!667141))

(assert (=> b!709930 m!667141))

(declare-fun m!667231 () Bool)

(assert (=> b!709930 m!667231))

(assert (=> b!709932 m!667141))

(assert (=> b!709932 m!667141))

(declare-fun m!667237 () Bool)

(assert (=> b!709932 m!667237))

(assert (=> b!709933 m!667141))

(assert (=> b!709933 m!667141))

(assert (=> b!709933 m!667237))

(assert (=> bm!34450 m!667141))

(declare-fun m!667239 () Bool)

(assert (=> bm!34450 m!667239))

(assert (=> b!709737 d!97181))

(declare-fun lt!318247 () List!13418)

(declare-fun b!709981 () Bool)

(declare-fun e!399500 () Bool)

(assert (=> b!709981 (= e!399500 (= (content!349 lt!318247) ((_ map and) (content!349 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun b!709982 () Bool)

(declare-fun e!399501 () List!13418)

(declare-fun e!399502 () List!13418)

(assert (=> b!709982 (= e!399501 e!399502)))

(declare-fun c!78551 () Bool)

(assert (=> b!709982 (= c!78551 (= k0!2824 (h!14459 newAcc!49)))))

(declare-fun bm!34458 () Bool)

(declare-fun call!34461 () List!13418)

(assert (=> bm!34458 (= call!34461 (-!370 (t!19723 newAcc!49) k0!2824))))

(declare-fun b!709983 () Bool)

(assert (=> b!709983 (= e!399502 call!34461)))

(declare-fun d!97189 () Bool)

(assert (=> d!97189 e!399500))

(declare-fun res!473613 () Bool)

(assert (=> d!97189 (=> (not res!473613) (not e!399500))))

(declare-fun size!19723 (List!13418) Int)

(assert (=> d!97189 (= res!473613 (<= (size!19723 lt!318247) (size!19723 newAcc!49)))))

(assert (=> d!97189 (= lt!318247 e!399501)))

(declare-fun c!78552 () Bool)

(assert (=> d!97189 (= c!78552 ((_ is Cons!13414) newAcc!49))))

(assert (=> d!97189 (= (-!370 newAcc!49 k0!2824) lt!318247)))

(declare-fun b!709984 () Bool)

(assert (=> b!709984 (= e!399502 (Cons!13414 (h!14459 newAcc!49) call!34461))))

(declare-fun b!709985 () Bool)

(assert (=> b!709985 (= e!399501 Nil!13415)))

(assert (= (and d!97189 c!78552) b!709982))

(assert (= (and d!97189 (not c!78552)) b!709985))

(assert (= (and b!709982 c!78551) b!709983))

(assert (= (and b!709982 (not c!78551)) b!709984))

(assert (= (or b!709983 b!709984) bm!34458))

(assert (= (and d!97189 res!473613) b!709981))

(declare-fun m!667265 () Bool)

(assert (=> b!709981 m!667265))

(assert (=> b!709981 m!667165))

(declare-fun m!667267 () Bool)

(assert (=> b!709981 m!667267))

(declare-fun m!667269 () Bool)

(assert (=> bm!34458 m!667269))

(declare-fun m!667271 () Bool)

(assert (=> d!97189 m!667271))

(declare-fun m!667273 () Bool)

(assert (=> d!97189 m!667273))

(assert (=> b!709738 d!97189))

(declare-fun d!97207 () Bool)

(declare-fun lt!318248 () Bool)

(assert (=> d!97207 (= lt!318248 (select (content!349 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399507 () Bool)

(assert (=> d!97207 (= lt!318248 e!399507)))

(declare-fun res!473619 () Bool)

(assert (=> d!97207 (=> (not res!473619) (not e!399507))))

(assert (=> d!97207 (= res!473619 ((_ is Cons!13414) newAcc!49))))

(assert (=> d!97207 (= (contains!3961 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318248)))

(declare-fun b!709990 () Bool)

(declare-fun e!399508 () Bool)

(assert (=> b!709990 (= e!399507 e!399508)))

(declare-fun res!473618 () Bool)

(assert (=> b!709990 (=> res!473618 e!399508)))

(assert (=> b!709990 (= res!473618 (= (h!14459 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709991 () Bool)

(assert (=> b!709991 (= e!399508 (contains!3961 (t!19723 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97207 res!473619) b!709990))

(assert (= (and b!709990 (not res!473618)) b!709991))

(assert (=> d!97207 m!667165))

(declare-fun m!667275 () Bool)

(assert (=> d!97207 m!667275))

(declare-fun m!667277 () Bool)

(assert (=> b!709991 m!667277))

(assert (=> b!709736 d!97207))

(declare-fun d!97209 () Bool)

(assert (=> d!97209 (= (validKeyInArray!0 (select (arr!19324 a!3591) from!2969)) (and (not (= (select (arr!19324 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19324 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709747 d!97209))

(check-sat (not b!709829) (not b!709851) (not b!709849) (not b!709882) (not d!97189) (not b!709843) (not b!709880) (not b!709845) (not b!709871) (not b!709837) (not b!709894) (not b!709981) (not d!97139) (not b!709991) (not d!97121) (not d!97157) (not b!709933) (not b!709930) (not b!709835) (not b!709886) (not b!709844) (not b!709926) (not d!97167) (not b!709872) (not d!97135) (not d!97119) (not bm!34449) (not b!709848) (not d!97155) (not b!709925) (not b!709853) (not b!709842) (not b!709893) (not bm!34450) (not d!97207) (not b!709932) (not b!709898) (not bm!34458) (not d!97153) (not b!709869) (not b!709847))
(check-sat)
