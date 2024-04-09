; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60178 () Bool)

(assert start!60178)

(declare-fun b!671731 () Bool)

(declare-fun e!383814 () Bool)

(declare-fun e!383819 () Bool)

(assert (=> b!671731 (= e!383814 e!383819)))

(declare-fun res!438581 () Bool)

(assert (=> b!671731 (=> (not res!438581) (not e!383819))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671731 (= res!438581 (bvsle from!3004 i!1382))))

(declare-fun b!671732 () Bool)

(declare-fun res!438579 () Bool)

(declare-fun e!383823 () Bool)

(assert (=> b!671732 (=> (not res!438579) (not e!383823))))

(declare-datatypes ((array!39181 0))(
  ( (array!39182 (arr!18779 (Array (_ BitVec 32) (_ BitVec 64))) (size!19143 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39181)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671732 (= res!438579 (validKeyInArray!0 (select (arr!18779 a!3626) from!3004)))))

(declare-fun b!671733 () Bool)

(declare-datatypes ((List!12873 0))(
  ( (Nil!12870) (Cons!12869 (h!13914 (_ BitVec 64)) (t!19109 List!12873)) )
))
(declare-fun acc!681 () List!12873)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3416 (List!12873 (_ BitVec 64)) Bool)

(assert (=> b!671733 (= e!383819 (not (contains!3416 acc!681 k!2843)))))

(declare-fun b!671734 () Bool)

(declare-fun e!383824 () Bool)

(assert (=> b!671734 (= e!383824 false)))

(declare-fun lt!312174 () Bool)

(declare-fun lt!312175 () List!12873)

(declare-fun arrayNoDuplicates!0 (array!39181 (_ BitVec 32) List!12873) Bool)

(assert (=> b!671734 (= lt!312174 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312175))))

(declare-fun b!671735 () Bool)

(declare-fun res!438590 () Bool)

(assert (=> b!671735 (=> (not res!438590) (not e!383823))))

(assert (=> b!671735 (= res!438590 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12870))))

(declare-fun b!671736 () Bool)

(declare-fun res!438576 () Bool)

(assert (=> b!671736 (=> (not res!438576) (not e!383824))))

(declare-fun noDuplicate!663 (List!12873) Bool)

(assert (=> b!671736 (= res!438576 (noDuplicate!663 lt!312175))))

(declare-fun b!671737 () Bool)

(declare-datatypes ((Unit!23580 0))(
  ( (Unit!23581) )
))
(declare-fun e!383815 () Unit!23580)

(declare-fun Unit!23582 () Unit!23580)

(assert (=> b!671737 (= e!383815 Unit!23582)))

(declare-fun b!671738 () Bool)

(declare-fun res!438574 () Bool)

(assert (=> b!671738 (=> (not res!438574) (not e!383823))))

(declare-fun arrayContainsKey!0 (array!39181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671738 (= res!438574 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671739 () Bool)

(declare-fun res!438586 () Bool)

(assert (=> b!671739 (=> (not res!438586) (not e!383823))))

(assert (=> b!671739 (= res!438586 (not (contains!3416 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671740 () Bool)

(declare-fun e!383820 () Bool)

(assert (=> b!671740 (= e!383820 (contains!3416 lt!312175 k!2843))))

(declare-fun b!671741 () Bool)

(declare-fun e!383818 () Bool)

(assert (=> b!671741 (= e!383818 (contains!3416 acc!681 k!2843))))

(declare-fun b!671742 () Bool)

(declare-fun res!438583 () Bool)

(assert (=> b!671742 (=> (not res!438583) (not e!383824))))

(assert (=> b!671742 (= res!438583 (not (contains!3416 lt!312175 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671743 () Bool)

(declare-fun e!383822 () Bool)

(assert (=> b!671743 (= e!383822 e!383824)))

(declare-fun res!438572 () Bool)

(assert (=> b!671743 (=> (not res!438572) (not e!383824))))

(assert (=> b!671743 (= res!438572 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!264 (List!12873 (_ BitVec 64)) List!12873)

(assert (=> b!671743 (= lt!312175 ($colon$colon!264 acc!681 (select (arr!18779 a!3626) from!3004)))))

(declare-fun b!671744 () Bool)

(declare-fun res!438588 () Bool)

(assert (=> b!671744 (=> (not res!438588) (not e!383824))))

(assert (=> b!671744 (= res!438588 (not (contains!3416 lt!312175 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671745 () Bool)

(declare-fun res!438570 () Bool)

(assert (=> b!671745 (=> (not res!438570) (not e!383823))))

(assert (=> b!671745 (= res!438570 (noDuplicate!663 acc!681))))

(declare-fun b!671746 () Bool)

(declare-fun res!438587 () Bool)

(assert (=> b!671746 (=> (not res!438587) (not e!383823))))

(assert (=> b!671746 (= res!438587 e!383814)))

(declare-fun res!438573 () Bool)

(assert (=> b!671746 (=> res!438573 e!383814)))

(assert (=> b!671746 (= res!438573 e!383818)))

(declare-fun res!438580 () Bool)

(assert (=> b!671746 (=> (not res!438580) (not e!383818))))

(assert (=> b!671746 (= res!438580 (bvsgt from!3004 i!1382))))

(declare-fun b!671747 () Bool)

(declare-fun e!383821 () Bool)

(declare-fun e!383816 () Bool)

(assert (=> b!671747 (= e!383821 e!383816)))

(declare-fun res!438575 () Bool)

(assert (=> b!671747 (=> (not res!438575) (not e!383816))))

(assert (=> b!671747 (= res!438575 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671748 () Bool)

(declare-fun res!438585 () Bool)

(assert (=> b!671748 (=> (not res!438585) (not e!383823))))

(assert (=> b!671748 (= res!438585 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671749 () Bool)

(declare-fun res!438589 () Bool)

(assert (=> b!671749 (=> (not res!438589) (not e!383824))))

(assert (=> b!671749 (= res!438589 e!383821)))

(declare-fun res!438571 () Bool)

(assert (=> b!671749 (=> res!438571 e!383821)))

(assert (=> b!671749 (= res!438571 e!383820)))

(declare-fun res!438567 () Bool)

(assert (=> b!671749 (=> (not res!438567) (not e!383820))))

(assert (=> b!671749 (= res!438567 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671750 () Bool)

(declare-fun res!438584 () Bool)

(assert (=> b!671750 (=> (not res!438584) (not e!383823))))

(assert (=> b!671750 (= res!438584 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19143 a!3626))))))

(declare-fun b!671751 () Bool)

(declare-fun res!438578 () Bool)

(assert (=> b!671751 (=> (not res!438578) (not e!383823))))

(assert (=> b!671751 (= res!438578 (validKeyInArray!0 k!2843))))

(declare-fun b!671752 () Bool)

(declare-fun Unit!23583 () Unit!23580)

(assert (=> b!671752 (= e!383815 Unit!23583)))

(assert (=> b!671752 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312176 () Unit!23580)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39181 (_ BitVec 64) (_ BitVec 32)) Unit!23580)

(assert (=> b!671752 (= lt!312176 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!671752 false))

(declare-fun b!671753 () Bool)

(assert (=> b!671753 (= e!383823 e!383822)))

(declare-fun res!438568 () Bool)

(assert (=> b!671753 (=> (not res!438568) (not e!383822))))

(assert (=> b!671753 (= res!438568 (not (= (select (arr!18779 a!3626) from!3004) k!2843)))))

(declare-fun lt!312177 () Unit!23580)

(assert (=> b!671753 (= lt!312177 e!383815)))

(declare-fun c!76949 () Bool)

(assert (=> b!671753 (= c!76949 (= (select (arr!18779 a!3626) from!3004) k!2843))))

(declare-fun b!671754 () Bool)

(declare-fun res!438569 () Bool)

(assert (=> b!671754 (=> (not res!438569) (not e!383823))))

(assert (=> b!671754 (= res!438569 (not (contains!3416 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!438582 () Bool)

(assert (=> start!60178 (=> (not res!438582) (not e!383823))))

(assert (=> start!60178 (= res!438582 (and (bvslt (size!19143 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19143 a!3626))))))

(assert (=> start!60178 e!383823))

(assert (=> start!60178 true))

(declare-fun array_inv!14553 (array!39181) Bool)

(assert (=> start!60178 (array_inv!14553 a!3626)))

(declare-fun b!671755 () Bool)

(declare-fun res!438577 () Bool)

(assert (=> b!671755 (=> (not res!438577) (not e!383823))))

(assert (=> b!671755 (= res!438577 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19143 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671756 () Bool)

(assert (=> b!671756 (= e!383816 (not (contains!3416 lt!312175 k!2843)))))

(assert (= (and start!60178 res!438582) b!671745))

(assert (= (and b!671745 res!438570) b!671739))

(assert (= (and b!671739 res!438586) b!671754))

(assert (= (and b!671754 res!438569) b!671746))

(assert (= (and b!671746 res!438580) b!671741))

(assert (= (and b!671746 (not res!438573)) b!671731))

(assert (= (and b!671731 res!438581) b!671733))

(assert (= (and b!671746 res!438587) b!671735))

(assert (= (and b!671735 res!438590) b!671748))

(assert (= (and b!671748 res!438585) b!671750))

(assert (= (and b!671750 res!438584) b!671751))

(assert (= (and b!671751 res!438578) b!671738))

(assert (= (and b!671738 res!438574) b!671755))

(assert (= (and b!671755 res!438577) b!671732))

(assert (= (and b!671732 res!438579) b!671753))

(assert (= (and b!671753 c!76949) b!671752))

(assert (= (and b!671753 (not c!76949)) b!671737))

(assert (= (and b!671753 res!438568) b!671743))

(assert (= (and b!671743 res!438572) b!671736))

(assert (= (and b!671736 res!438576) b!671744))

(assert (= (and b!671744 res!438588) b!671742))

(assert (= (and b!671742 res!438583) b!671749))

(assert (= (and b!671749 res!438567) b!671740))

(assert (= (and b!671749 (not res!438571)) b!671747))

(assert (= (and b!671747 res!438575) b!671756))

(assert (= (and b!671749 res!438589) b!671734))

(declare-fun m!641017 () Bool)

(assert (=> b!671743 m!641017))

(assert (=> b!671743 m!641017))

(declare-fun m!641019 () Bool)

(assert (=> b!671743 m!641019))

(declare-fun m!641021 () Bool)

(assert (=> b!671756 m!641021))

(assert (=> b!671732 m!641017))

(assert (=> b!671732 m!641017))

(declare-fun m!641023 () Bool)

(assert (=> b!671732 m!641023))

(declare-fun m!641025 () Bool)

(assert (=> b!671744 m!641025))

(declare-fun m!641027 () Bool)

(assert (=> b!671741 m!641027))

(assert (=> b!671733 m!641027))

(declare-fun m!641029 () Bool)

(assert (=> b!671736 m!641029))

(declare-fun m!641031 () Bool)

(assert (=> start!60178 m!641031))

(declare-fun m!641033 () Bool)

(assert (=> b!671739 m!641033))

(declare-fun m!641035 () Bool)

(assert (=> b!671738 m!641035))

(declare-fun m!641037 () Bool)

(assert (=> b!671735 m!641037))

(declare-fun m!641039 () Bool)

(assert (=> b!671745 m!641039))

(declare-fun m!641041 () Bool)

(assert (=> b!671754 m!641041))

(declare-fun m!641043 () Bool)

(assert (=> b!671748 m!641043))

(declare-fun m!641045 () Bool)

(assert (=> b!671742 m!641045))

(declare-fun m!641047 () Bool)

(assert (=> b!671751 m!641047))

(declare-fun m!641049 () Bool)

(assert (=> b!671734 m!641049))

(declare-fun m!641051 () Bool)

(assert (=> b!671752 m!641051))

(declare-fun m!641053 () Bool)

(assert (=> b!671752 m!641053))

(assert (=> b!671740 m!641021))

(assert (=> b!671753 m!641017))

(push 1)

(assert (not b!671738))

