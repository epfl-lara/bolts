; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60598 () Bool)

(assert start!60598)

(declare-fun b!680590 () Bool)

(declare-fun res!446981 () Bool)

(declare-fun e!387679 () Bool)

(assert (=> b!680590 (=> (not res!446981) (not e!387679))))

(declare-datatypes ((array!39478 0))(
  ( (array!39479 (arr!18923 (Array (_ BitVec 32) (_ BitVec 64))) (size!19287 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39478)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13017 0))(
  ( (Nil!13014) (Cons!13013 (h!14058 (_ BitVec 64)) (t!19256 List!13017)) )
))
(declare-fun acc!681 () List!13017)

(declare-fun arrayNoDuplicates!0 (array!39478 (_ BitVec 32) List!13017) Bool)

(assert (=> b!680590 (= res!446981 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680592 () Bool)

(declare-fun res!446992 () Bool)

(assert (=> b!680592 (=> (not res!446992) (not e!387679))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680592 (= res!446992 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19287 a!3626))))))

(declare-fun b!680593 () Bool)

(declare-fun e!387674 () Bool)

(declare-fun e!387676 () Bool)

(assert (=> b!680593 (= e!387674 e!387676)))

(declare-fun res!446986 () Bool)

(assert (=> b!680593 (=> (not res!446986) (not e!387676))))

(declare-fun lt!313095 () List!13017)

(declare-fun contains!3560 (List!13017 (_ BitVec 64)) Bool)

(assert (=> b!680593 (= res!446986 (not (contains!3560 lt!313095 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680594 () Bool)

(declare-fun e!387680 () Bool)

(declare-fun e!387681 () Bool)

(assert (=> b!680594 (= e!387680 e!387681)))

(declare-fun res!446976 () Bool)

(assert (=> b!680594 (=> (not res!446976) (not e!387681))))

(assert (=> b!680594 (= res!446976 (bvsle from!3004 i!1382))))

(declare-fun b!680595 () Bool)

(declare-fun res!446984 () Bool)

(assert (=> b!680595 (=> (not res!446984) (not e!387679))))

(assert (=> b!680595 (= res!446984 (not (contains!3560 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680596 () Bool)

(declare-fun res!446980 () Bool)

(assert (=> b!680596 (=> (not res!446980) (not e!387679))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680596 (= res!446980 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680597 () Bool)

(declare-fun e!387677 () Bool)

(assert (=> b!680597 (= e!387677 e!387674)))

(declare-fun res!446990 () Bool)

(assert (=> b!680597 (=> res!446990 e!387674)))

(assert (=> b!680597 (= res!446990 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!309 (List!13017 (_ BitVec 64)) List!13017)

(assert (=> b!680597 (= lt!313095 ($colon$colon!309 acc!681 (select (arr!18923 a!3626) from!3004)))))

(declare-fun subseq!145 (List!13017 List!13017) Bool)

(assert (=> b!680597 (subseq!145 acc!681 acc!681)))

(declare-datatypes ((Unit!23862 0))(
  ( (Unit!23863) )
))
(declare-fun lt!313093 () Unit!23862)

(declare-fun lemmaListSubSeqRefl!0 (List!13017) Unit!23862)

(assert (=> b!680597 (= lt!313093 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680598 () Bool)

(declare-fun e!387678 () Unit!23862)

(declare-fun Unit!23864 () Unit!23862)

(assert (=> b!680598 (= e!387678 Unit!23864)))

(declare-fun lt!313092 () Unit!23862)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39478 (_ BitVec 64) (_ BitVec 32)) Unit!23862)

(assert (=> b!680598 (= lt!313092 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!680598 false))

(declare-fun b!680599 () Bool)

(declare-fun res!446982 () Bool)

(assert (=> b!680599 (=> (not res!446982) (not e!387679))))

(assert (=> b!680599 (= res!446982 e!387680)))

(declare-fun res!446988 () Bool)

(assert (=> b!680599 (=> res!446988 e!387680)))

(declare-fun e!387682 () Bool)

(assert (=> b!680599 (= res!446988 e!387682)))

(declare-fun res!446993 () Bool)

(assert (=> b!680599 (=> (not res!446993) (not e!387682))))

(assert (=> b!680599 (= res!446993 (bvsgt from!3004 i!1382))))

(declare-fun b!680600 () Bool)

(assert (=> b!680600 (= e!387679 (not e!387677))))

(declare-fun res!446979 () Bool)

(assert (=> b!680600 (=> res!446979 e!387677)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680600 (= res!446979 (not (validKeyInArray!0 (select (arr!18923 a!3626) from!3004))))))

(declare-fun lt!313094 () Unit!23862)

(assert (=> b!680600 (= lt!313094 e!387678)))

(declare-fun c!77174 () Bool)

(assert (=> b!680600 (= c!77174 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680600 (arrayContainsKey!0 (array!39479 (store (arr!18923 a!3626) i!1382 k!2843) (size!19287 a!3626)) k!2843 from!3004)))

(declare-fun b!680601 () Bool)

(declare-fun res!446978 () Bool)

(assert (=> b!680601 (=> (not res!446978) (not e!387679))))

(assert (=> b!680601 (= res!446978 (validKeyInArray!0 k!2843))))

(declare-fun b!680602 () Bool)

(assert (=> b!680602 (= e!387676 (not (contains!3560 lt!313095 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680603 () Bool)

(declare-fun res!446983 () Bool)

(assert (=> b!680603 (=> (not res!446983) (not e!387679))))

(assert (=> b!680603 (= res!446983 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13014))))

(declare-fun b!680604 () Bool)

(declare-fun res!446987 () Bool)

(assert (=> b!680604 (=> (not res!446987) (not e!387679))))

(declare-fun noDuplicate!807 (List!13017) Bool)

(assert (=> b!680604 (= res!446987 (noDuplicate!807 acc!681))))

(declare-fun b!680605 () Bool)

(assert (=> b!680605 (= e!387682 (contains!3560 acc!681 k!2843))))

(declare-fun b!680591 () Bool)

(declare-fun Unit!23865 () Unit!23862)

(assert (=> b!680591 (= e!387678 Unit!23865)))

(declare-fun res!446985 () Bool)

(assert (=> start!60598 (=> (not res!446985) (not e!387679))))

(assert (=> start!60598 (= res!446985 (and (bvslt (size!19287 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19287 a!3626))))))

(assert (=> start!60598 e!387679))

(assert (=> start!60598 true))

(declare-fun array_inv!14697 (array!39478) Bool)

(assert (=> start!60598 (array_inv!14697 a!3626)))

(declare-fun b!680606 () Bool)

(assert (=> b!680606 (= e!387681 (not (contains!3560 acc!681 k!2843)))))

(declare-fun b!680607 () Bool)

(declare-fun res!446989 () Bool)

(assert (=> b!680607 (=> res!446989 e!387674)))

(assert (=> b!680607 (= res!446989 (not (noDuplicate!807 lt!313095)))))

(declare-fun b!680608 () Bool)

(declare-fun res!446991 () Bool)

(assert (=> b!680608 (=> (not res!446991) (not e!387679))))

(assert (=> b!680608 (= res!446991 (not (contains!3560 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680609 () Bool)

(declare-fun res!446977 () Bool)

(assert (=> b!680609 (=> (not res!446977) (not e!387679))))

(assert (=> b!680609 (= res!446977 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19287 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60598 res!446985) b!680604))

(assert (= (and b!680604 res!446987) b!680608))

(assert (= (and b!680608 res!446991) b!680595))

(assert (= (and b!680595 res!446984) b!680599))

(assert (= (and b!680599 res!446993) b!680605))

(assert (= (and b!680599 (not res!446988)) b!680594))

(assert (= (and b!680594 res!446976) b!680606))

(assert (= (and b!680599 res!446982) b!680603))

(assert (= (and b!680603 res!446983) b!680590))

(assert (= (and b!680590 res!446981) b!680592))

(assert (= (and b!680592 res!446992) b!680601))

(assert (= (and b!680601 res!446978) b!680596))

(assert (= (and b!680596 res!446980) b!680609))

(assert (= (and b!680609 res!446977) b!680600))

(assert (= (and b!680600 c!77174) b!680598))

(assert (= (and b!680600 (not c!77174)) b!680591))

(assert (= (and b!680600 (not res!446979)) b!680597))

(assert (= (and b!680597 (not res!446990)) b!680607))

(assert (= (and b!680607 (not res!446989)) b!680593))

(assert (= (and b!680593 res!446986) b!680602))

(declare-fun m!645633 () Bool)

(assert (=> b!680598 m!645633))

(declare-fun m!645635 () Bool)

(assert (=> b!680607 m!645635))

(declare-fun m!645637 () Bool)

(assert (=> b!680601 m!645637))

(declare-fun m!645639 () Bool)

(assert (=> b!680590 m!645639))

(declare-fun m!645641 () Bool)

(assert (=> b!680595 m!645641))

(declare-fun m!645643 () Bool)

(assert (=> b!680605 m!645643))

(assert (=> b!680606 m!645643))

(declare-fun m!645645 () Bool)

(assert (=> b!680602 m!645645))

(declare-fun m!645647 () Bool)

(assert (=> b!680597 m!645647))

(assert (=> b!680597 m!645647))

(declare-fun m!645649 () Bool)

(assert (=> b!680597 m!645649))

(declare-fun m!645651 () Bool)

(assert (=> b!680597 m!645651))

(declare-fun m!645653 () Bool)

(assert (=> b!680597 m!645653))

(declare-fun m!645655 () Bool)

(assert (=> b!680596 m!645655))

(declare-fun m!645657 () Bool)

(assert (=> b!680604 m!645657))

(declare-fun m!645659 () Bool)

(assert (=> b!680608 m!645659))

(declare-fun m!645661 () Bool)

(assert (=> b!680593 m!645661))

(declare-fun m!645663 () Bool)

(assert (=> start!60598 m!645663))

(declare-fun m!645665 () Bool)

(assert (=> b!680603 m!645665))

(assert (=> b!680600 m!645647))

(declare-fun m!645667 () Bool)

(assert (=> b!680600 m!645667))

(declare-fun m!645669 () Bool)

(assert (=> b!680600 m!645669))

(assert (=> b!680600 m!645647))

(declare-fun m!645671 () Bool)

(assert (=> b!680600 m!645671))

(declare-fun m!645673 () Bool)

(assert (=> b!680600 m!645673))

(push 1)

(assert (not b!680600))

(assert (not b!680603))

(assert (not b!680607))

(assert (not start!60598))

(assert (not b!680593))

(assert (not b!680604))

(assert (not b!680595))

(assert (not b!680598))

(assert (not b!680601))

(assert (not b!680597))

(assert (not b!680608))

(assert (not b!680605))

(assert (not b!680602))

(assert (not b!680590))

(assert (not b!680606))

(assert (not b!680596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93559 () Bool)

(declare-fun lt!313100 () Bool)

(declare-fun content!271 (List!13017) (Set (_ BitVec 64)))

(assert (=> d!93559 (= lt!313100 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!271 lt!313095)))))

(declare-fun e!387706 () Bool)

(assert (=> d!93559 (= lt!313100 e!387706)))

(declare-fun res!447016 () Bool)

(assert (=> d!93559 (=> (not res!447016) (not e!387706))))

(assert (=> d!93559 (= res!447016 (is-Cons!13013 lt!313095))))

(assert (=> d!93559 (= (contains!3560 lt!313095 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313100)))

(declare-fun b!680632 () Bool)

(declare-fun e!387705 () Bool)

(assert (=> b!680632 (= e!387706 e!387705)))

(declare-fun res!447017 () Bool)

(assert (=> b!680632 (=> res!447017 e!387705)))

(assert (=> b!680632 (= res!447017 (= (h!14058 lt!313095) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680633 () Bool)

(assert (=> b!680633 (= e!387705 (contains!3560 (t!19256 lt!313095) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93559 res!447016) b!680632))

(assert (= (and b!680632 (not res!447017)) b!680633))

(declare-fun m!645691 () Bool)

(assert (=> d!93559 m!645691))

(declare-fun m!645693 () Bool)

(assert (=> d!93559 m!645693))

(declare-fun m!645695 () Bool)

(assert (=> b!680633 m!645695))

(assert (=> b!680602 d!93559))

(declare-fun d!93571 () Bool)

(assert (=> d!93571 (= (array_inv!14697 a!3626) (bvsge (size!19287 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60598 d!93571))

(declare-fun b!680676 () Bool)

(declare-fun e!387748 () Bool)

(assert (=> b!680676 (= e!387748 (contains!3560 acc!681 (select (arr!18923 a!3626) from!3004)))))

(declare-fun b!680677 () Bool)

(declare-fun e!387747 () Bool)

(declare-fun e!387750 () Bool)

(assert (=> b!680677 (= e!387747 e!387750)))

(declare-fun res!447056 () Bool)

(assert (=> b!680677 (=> (not res!447056) (not e!387750))))

(assert (=> b!680677 (= res!447056 (not e!387748))))

(declare-fun res!447057 () Bool)

(assert (=> b!680677 (=> (not res!447057) (not e!387748))))

(assert (=> b!680677 (= res!447057 (validKeyInArray!0 (select (arr!18923 a!3626) from!3004)))))

(declare-fun bm!33947 () Bool)

(declare-fun c!77177 () Bool)

(declare-fun call!33950 () Bool)

(assert (=> bm!33947 (= call!33950 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77177 (Cons!13013 (select (arr!18923 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!680678 () Bool)

(declare-fun e!387749 () Bool)

(assert (=> b!680678 (= e!387749 call!33950)))

(declare-fun d!93573 () Bool)

(declare-fun res!447058 () Bool)

(assert (=> d!93573 (=> res!447058 e!387747)))

(assert (=> d!93573 (= res!447058 (bvsge from!3004 (size!19287 a!3626)))))

(assert (=> d!93573 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!387747)))

(declare-fun b!680679 () Bool)

(assert (=> b!680679 (= e!387750 e!387749)))

(assert (=> b!680679 (= c!77177 (validKeyInArray!0 (select (arr!18923 a!3626) from!3004)))))

(declare-fun b!680680 () Bool)

(assert (=> b!680680 (= e!387749 call!33950)))

(assert (= (and d!93573 (not res!447058)) b!680677))

(assert (= (and b!680677 res!447057) b!680676))

(assert (= (and b!680677 res!447056) b!680679))

(assert (= (and b!680679 c!77177) b!680680))

(assert (= (and b!680679 (not c!77177)) b!680678))

(assert (= (or b!680680 b!680678) bm!33947))

(assert (=> b!680676 m!645647))

(assert (=> b!680676 m!645647))

(declare-fun m!645739 () Bool)

(assert (=> b!680676 m!645739))

(assert (=> b!680677 m!645647))

(assert (=> b!680677 m!645647))

(assert (=> b!680677 m!645671))

(assert (=> bm!33947 m!645647))

(declare-fun m!645741 () Bool)

(assert (=> bm!33947 m!645741))

(assert (=> b!680679 m!645647))

(assert (=> b!680679 m!645647))

(assert (=> b!680679 m!645671))

(assert (=> b!680590 d!93573))

(declare-fun d!93601 () Bool)

(assert (=> d!93601 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680601 d!93601))

(declare-fun d!93605 () Bool)

(declare-fun lt!313111 () Bool)

(assert (=> d!93605 (= lt!313111 (member k!2843 (content!271 acc!681)))))

(declare-fun e!387762 () Bool)

(assert (=> d!93605 (= lt!313111 e!387762)))

(declare-fun res!447069 () Bool)

(assert (=> d!93605 (=> (not res!447069) (not e!387762))))

(assert (=> d!93605 (= res!447069 (is-Cons!13013 acc!681))))

(assert (=> d!93605 (= (contains!3560 acc!681 k!2843) lt!313111)))

(declare-fun b!680691 () Bool)

(declare-fun e!387761 () Bool)

(assert (=> b!680691 (= e!387762 e!387761)))

(declare-fun res!447070 () Bool)

(assert (=> b!680691 (=> res!447070 e!387761)))

(assert (=> b!680691 (= res!447070 (= (h!14058 acc!681) k!2843))))

(declare-fun b!680692 () Bool)

(assert (=> b!680692 (= e!387761 (contains!3560 (t!19256 acc!681) k!2843))))

(assert (= (and d!93605 res!447069) b!680691))

(assert (= (and b!680691 (not res!447070)) b!680692))

(declare-fun m!645749 () Bool)

(assert (=> d!93605 m!645749))

(declare-fun m!645751 () Bool)

(assert (=> d!93605 m!645751))

(declare-fun m!645753 () Bool)

(assert (=> b!680692 m!645753))

(assert (=> b!680605 d!93605))

(declare-fun b!680693 () Bool)

(declare-fun e!387764 () Bool)

(assert (=> b!680693 (= e!387764 (contains!3560 Nil!13014 (select (arr!18923 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680694 () Bool)

(declare-fun e!387763 () Bool)

(declare-fun e!387766 () Bool)

(assert (=> b!680694 (= e!387763 e!387766)))

(declare-fun res!447071 () Bool)

(assert (=> b!680694 (=> (not res!447071) (not e!387766))))

(assert (=> b!680694 (= res!447071 (not e!387764))))

(declare-fun res!447072 () Bool)

(assert (=> b!680694 (=> (not res!447072) (not e!387764))))

(assert (=> b!680694 (= res!447072 (validKeyInArray!0 (select (arr!18923 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!33948 () Bool)

(declare-fun call!33951 () Bool)

(declare-fun c!77178 () Bool)

(assert (=> bm!33948 (= call!33951 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77178 (Cons!13013 (select (arr!18923 a!3626) #b00000000000000000000000000000000) Nil!13014) Nil!13014)))))

(declare-fun b!680695 () Bool)

(declare-fun e!387765 () Bool)

(assert (=> b!680695 (= e!387765 call!33951)))

(declare-fun d!93607 () Bool)

(declare-fun res!447073 () Bool)

(assert (=> d!93607 (=> res!447073 e!387763)))

(assert (=> d!93607 (= res!447073 (bvsge #b00000000000000000000000000000000 (size!19287 a!3626)))))

(assert (=> d!93607 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13014) e!387763)))

(declare-fun b!680696 () Bool)

(assert (=> b!680696 (= e!387766 e!387765)))

(assert (=> b!680696 (= c!77178 (validKeyInArray!0 (select (arr!18923 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680697 () Bool)

(assert (=> b!680697 (= e!387765 call!33951)))

(assert (= (and d!93607 (not res!447073)) b!680694))

(assert (= (and b!680694 res!447072) b!680693))

(assert (= (and b!680694 res!447071) b!680696))

(assert (= (and b!680696 c!77178) b!680697))

(assert (= (and b!680696 (not c!77178)) b!680695))

(assert (= (or b!680697 b!680695) bm!33948))

(declare-fun m!645755 () Bool)

(assert (=> b!680693 m!645755))

(assert (=> b!680693 m!645755))

(declare-fun m!645757 () Bool)

(assert (=> b!680693 m!645757))

(assert (=> b!680694 m!645755))

(assert (=> b!680694 m!645755))

(declare-fun m!645759 () Bool)

(assert (=> b!680694 m!645759))

(assert (=> bm!33948 m!645755))

(declare-fun m!645761 () Bool)

(assert (=> bm!33948 m!645761))

(assert (=> b!680696 m!645755))

(assert (=> b!680696 m!645755))

(assert (=> b!680696 m!645759))

(assert (=> b!680603 d!93607))

(declare-fun d!93609 () Bool)

(declare-fun res!447084 () Bool)

(declare-fun e!387777 () Bool)

(assert (=> d!93609 (=> res!447084 e!387777)))

(assert (=> d!93609 (= res!447084 (is-Nil!13014 acc!681))))

(assert (=> d!93609 (= (noDuplicate!807 acc!681) e!387777)))

(declare-fun b!680708 () Bool)

(declare-fun e!387778 () Bool)

(assert (=> b!680708 (= e!387777 e!387778)))

(declare-fun res!447085 () Bool)

(assert (=> b!680708 (=> (not res!447085) (not e!387778))))

(assert (=> b!680708 (= res!447085 (not (contains!3560 (t!19256 acc!681) (h!14058 acc!681))))))

(declare-fun b!680709 () Bool)

(assert (=> b!680709 (= e!387778 (noDuplicate!807 (t!19256 acc!681)))))

(assert (= (and d!93609 (not res!447084)) b!680708))

(assert (= (and b!680708 res!447085) b!680709))

(declare-fun m!645777 () Bool)

(assert (=> b!680708 m!645777))

(declare-fun m!645779 () Bool)

(assert (=> b!680709 m!645779))

(assert (=> b!680604 d!93609))

(declare-fun d!93621 () Bool)

(declare-fun lt!313119 () Bool)

(assert (=> d!93621 (= lt!313119 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!271 lt!313095)))))

(declare-fun e!387780 () Bool)

(assert (=> d!93621 (= lt!313119 e!387780)))

(declare-fun res!447086 () Bool)

(assert (=> d!93621 (=> (not res!447086) (not e!387780))))

(assert (=> d!93621 (= res!447086 (is-Cons!13013 lt!313095))))

(assert (=> d!93621 (= (contains!3560 lt!313095 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313119)))

(declare-fun b!680710 () Bool)

(declare-fun e!387779 () Bool)

(assert (=> b!680710 (= e!387780 e!387779)))

(declare-fun res!447087 () Bool)

(assert (=> b!680710 (=> res!447087 e!387779)))

(assert (=> b!680710 (= res!447087 (= (h!14058 lt!313095) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680711 () Bool)

(assert (=> b!680711 (= e!387779 (contains!3560 (t!19256 lt!313095) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93621 res!447086) b!680710))

(assert (= (and b!680710 (not res!447087)) b!680711))

(assert (=> d!93621 m!645691))

(declare-fun m!645781 () Bool)

(assert (=> d!93621 m!645781))

(declare-fun m!645783 () Bool)

(assert (=> b!680711 m!645783))

(assert (=> b!680593 d!93621))

(declare-fun d!93623 () Bool)

(declare-fun res!447088 () Bool)

(declare-fun e!387781 () Bool)

(assert (=> d!93623 (=> res!447088 e!387781)))

(assert (=> d!93623 (= res!447088 (is-Nil!13014 lt!313095))))

(assert (=> d!93623 (= (noDuplicate!807 lt!313095) e!387781)))

(declare-fun b!680712 () Bool)

(declare-fun e!387782 () Bool)

(assert (=> b!680712 (= e!387781 e!387782)))

(declare-fun res!447089 () Bool)

(assert (=> b!680712 (=> (not res!447089) (not e!387782))))

(assert (=> b!680712 (= res!447089 (not (contains!3560 (t!19256 lt!313095) (h!14058 lt!313095))))))

(declare-fun b!680713 () Bool)

(assert (=> b!680713 (= e!387782 (noDuplicate!807 (t!19256 lt!313095)))))

(assert (= (and d!93623 (not res!447088)) b!680712))

(assert (= (and b!680712 res!447089) b!680713))

(declare-fun m!645785 () Bool)

(assert (=> b!680712 m!645785))

(declare-fun m!645787 () Bool)

(assert (=> b!680713 m!645787))

(assert (=> b!680607 d!93623))

(declare-fun d!93625 () Bool)

(declare-fun lt!313120 () Bool)

(assert (=> d!93625 (= lt!313120 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!271 acc!681)))))

(declare-fun e!387784 () Bool)

(assert (=> d!93625 (= lt!313120 e!387784)))

(declare-fun res!447090 () Bool)

(assert (=> d!93625 (=> (not res!447090) (not e!387784))))

(assert (=> d!93625 (= res!447090 (is-Cons!13013 acc!681))))

(assert (=> d!93625 (= (contains!3560 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313120)))

(declare-fun b!680714 () Bool)

(declare-fun e!387783 () Bool)

(assert (=> b!680714 (= e!387784 e!387783)))

(declare-fun res!447091 () Bool)

(assert (=> b!680714 (=> res!447091 e!387783)))

(assert (=> b!680714 (= res!447091 (= (h!14058 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680715 () Bool)

(assert (=> b!680715 (= e!387783 (contains!3560 (t!19256 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93625 res!447090) b!680714))

(assert (= (and b!680714 (not res!447091)) b!680715))

(assert (=> d!93625 m!645749))

(declare-fun m!645789 () Bool)

(assert (=> d!93625 m!645789))

(declare-fun m!645791 () Bool)

(assert (=> b!680715 m!645791))

(assert (=> b!680608 d!93625))

(declare-fun d!93627 () Bool)

(assert (=> d!93627 (= ($colon$colon!309 acc!681 (select (arr!18923 a!3626) from!3004)) (Cons!13013 (select (arr!18923 a!3626) from!3004) acc!681))))

(assert (=> b!680597 d!93627))

(declare-fun b!680757 () Bool)

(declare-fun e!387817 () Bool)

(assert (=> b!680757 (= e!387817 (subseq!145 acc!681 (t!19256 acc!681)))))

(declare-fun b!680756 () Bool)

(declare-fun e!387819 () Bool)

(assert (=> b!680756 (= e!387819 (subseq!145 (t!19256 acc!681) (t!19256 acc!681)))))

