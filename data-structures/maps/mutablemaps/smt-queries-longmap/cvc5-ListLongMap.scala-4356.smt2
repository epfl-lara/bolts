; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60180 () Bool)

(assert start!60180)

(declare-fun b!671809 () Bool)

(declare-fun res!438662 () Bool)

(declare-fun e!383852 () Bool)

(assert (=> b!671809 (=> (not res!438662) (not e!383852))))

(declare-fun e!383855 () Bool)

(assert (=> b!671809 (= res!438662 e!383855)))

(declare-fun res!438655 () Bool)

(assert (=> b!671809 (=> res!438655 e!383855)))

(declare-fun e!383853 () Bool)

(assert (=> b!671809 (= res!438655 e!383853)))

(declare-fun res!438647 () Bool)

(assert (=> b!671809 (=> (not res!438647) (not e!383853))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671809 (= res!438647 (bvsgt from!3004 i!1382))))

(declare-fun b!671810 () Bool)

(declare-fun res!438648 () Bool)

(assert (=> b!671810 (=> (not res!438648) (not e!383852))))

(declare-datatypes ((array!39183 0))(
  ( (array!39184 (arr!18780 (Array (_ BitVec 32) (_ BitVec 64))) (size!19144 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39183)

(declare-datatypes ((List!12874 0))(
  ( (Nil!12871) (Cons!12870 (h!13915 (_ BitVec 64)) (t!19110 List!12874)) )
))
(declare-fun acc!681 () List!12874)

(declare-fun arrayNoDuplicates!0 (array!39183 (_ BitVec 32) List!12874) Bool)

(assert (=> b!671810 (= res!438648 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671811 () Bool)

(declare-fun e!383849 () Bool)

(declare-fun e!383850 () Bool)

(assert (=> b!671811 (= e!383849 e!383850)))

(declare-fun res!438639 () Bool)

(assert (=> b!671811 (=> (not res!438639) (not e!383850))))

(assert (=> b!671811 (= res!438639 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671812 () Bool)

(declare-fun res!438654 () Bool)

(assert (=> b!671812 (=> (not res!438654) (not e!383852))))

(assert (=> b!671812 (= res!438654 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19144 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671813 () Bool)

(declare-fun res!438642 () Bool)

(declare-fun e!383851 () Bool)

(assert (=> b!671813 (=> (not res!438642) (not e!383851))))

(declare-fun lt!312186 () List!12874)

(declare-fun contains!3417 (List!12874 (_ BitVec 64)) Bool)

(assert (=> b!671813 (= res!438642 (not (contains!3417 lt!312186 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671814 () Bool)

(assert (=> b!671814 (= e!383851 false)))

(declare-fun lt!312189 () Bool)

(assert (=> b!671814 (= lt!312189 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312186))))

(declare-fun b!671815 () Bool)

(declare-fun res!438640 () Bool)

(assert (=> b!671815 (=> (not res!438640) (not e!383851))))

(declare-fun noDuplicate!664 (List!12874) Bool)

(assert (=> b!671815 (= res!438640 (noDuplicate!664 lt!312186))))

(declare-fun b!671816 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!671816 (= e!383853 (contains!3417 acc!681 k!2843))))

(declare-fun b!671817 () Bool)

(declare-fun e!383848 () Bool)

(assert (=> b!671817 (= e!383848 (not (contains!3417 acc!681 k!2843)))))

(declare-fun b!671818 () Bool)

(assert (=> b!671818 (= e!383855 e!383848)))

(declare-fun res!438646 () Bool)

(assert (=> b!671818 (=> (not res!438646) (not e!383848))))

(assert (=> b!671818 (= res!438646 (bvsle from!3004 i!1382))))

(declare-fun res!438643 () Bool)

(assert (=> start!60180 (=> (not res!438643) (not e!383852))))

(assert (=> start!60180 (= res!438643 (and (bvslt (size!19144 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19144 a!3626))))))

(assert (=> start!60180 e!383852))

(assert (=> start!60180 true))

(declare-fun array_inv!14554 (array!39183) Bool)

(assert (=> start!60180 (array_inv!14554 a!3626)))

(declare-fun b!671819 () Bool)

(declare-fun res!438661 () Bool)

(assert (=> b!671819 (=> (not res!438661) (not e!383852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671819 (= res!438661 (validKeyInArray!0 (select (arr!18780 a!3626) from!3004)))))

(declare-fun b!671820 () Bool)

(declare-fun res!438658 () Bool)

(assert (=> b!671820 (=> (not res!438658) (not e!383852))))

(declare-fun arrayContainsKey!0 (array!39183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671820 (= res!438658 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671821 () Bool)

(declare-fun e!383847 () Bool)

(assert (=> b!671821 (= e!383847 e!383851)))

(declare-fun res!438641 () Bool)

(assert (=> b!671821 (=> (not res!438641) (not e!383851))))

(assert (=> b!671821 (= res!438641 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!265 (List!12874 (_ BitVec 64)) List!12874)

(assert (=> b!671821 (= lt!312186 ($colon$colon!265 acc!681 (select (arr!18780 a!3626) from!3004)))))

(declare-fun b!671822 () Bool)

(assert (=> b!671822 (= e!383852 e!383847)))

(declare-fun res!438645 () Bool)

(assert (=> b!671822 (=> (not res!438645) (not e!383847))))

(assert (=> b!671822 (= res!438645 (not (= (select (arr!18780 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23584 0))(
  ( (Unit!23585) )
))
(declare-fun lt!312188 () Unit!23584)

(declare-fun e!383854 () Unit!23584)

(assert (=> b!671822 (= lt!312188 e!383854)))

(declare-fun c!76952 () Bool)

(assert (=> b!671822 (= c!76952 (= (select (arr!18780 a!3626) from!3004) k!2843))))

(declare-fun b!671823 () Bool)

(declare-fun Unit!23586 () Unit!23584)

(assert (=> b!671823 (= e!383854 Unit!23586)))

(assert (=> b!671823 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312187 () Unit!23584)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39183 (_ BitVec 64) (_ BitVec 32)) Unit!23584)

(assert (=> b!671823 (= lt!312187 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!671823 false))

(declare-fun b!671824 () Bool)

(declare-fun res!438644 () Bool)

(assert (=> b!671824 (=> (not res!438644) (not e!383851))))

(assert (=> b!671824 (= res!438644 e!383849)))

(declare-fun res!438656 () Bool)

(assert (=> b!671824 (=> res!438656 e!383849)))

(declare-fun e!383857 () Bool)

(assert (=> b!671824 (= res!438656 e!383857)))

(declare-fun res!438649 () Bool)

(assert (=> b!671824 (=> (not res!438649) (not e!383857))))

(assert (=> b!671824 (= res!438649 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671825 () Bool)

(declare-fun res!438660 () Bool)

(assert (=> b!671825 (=> (not res!438660) (not e!383852))))

(assert (=> b!671825 (= res!438660 (not (contains!3417 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671826 () Bool)

(declare-fun res!438657 () Bool)

(assert (=> b!671826 (=> (not res!438657) (not e!383851))))

(assert (=> b!671826 (= res!438657 (not (contains!3417 lt!312186 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671827 () Bool)

(declare-fun res!438650 () Bool)

(assert (=> b!671827 (=> (not res!438650) (not e!383852))))

(assert (=> b!671827 (= res!438650 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19144 a!3626))))))

(declare-fun b!671828 () Bool)

(assert (=> b!671828 (= e!383857 (contains!3417 lt!312186 k!2843))))

(declare-fun b!671829 () Bool)

(declare-fun res!438659 () Bool)

(assert (=> b!671829 (=> (not res!438659) (not e!383852))))

(assert (=> b!671829 (= res!438659 (noDuplicate!664 acc!681))))

(declare-fun b!671830 () Bool)

(declare-fun res!438652 () Bool)

(assert (=> b!671830 (=> (not res!438652) (not e!383852))))

(assert (=> b!671830 (= res!438652 (not (contains!3417 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671831 () Bool)

(declare-fun res!438651 () Bool)

(assert (=> b!671831 (=> (not res!438651) (not e!383852))))

(assert (=> b!671831 (= res!438651 (validKeyInArray!0 k!2843))))

(declare-fun b!671832 () Bool)

(declare-fun Unit!23587 () Unit!23584)

(assert (=> b!671832 (= e!383854 Unit!23587)))

(declare-fun b!671833 () Bool)

(declare-fun res!438653 () Bool)

(assert (=> b!671833 (=> (not res!438653) (not e!383852))))

(assert (=> b!671833 (= res!438653 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12871))))

(declare-fun b!671834 () Bool)

(assert (=> b!671834 (= e!383850 (not (contains!3417 lt!312186 k!2843)))))

(assert (= (and start!60180 res!438643) b!671829))

(assert (= (and b!671829 res!438659) b!671825))

(assert (= (and b!671825 res!438660) b!671830))

(assert (= (and b!671830 res!438652) b!671809))

(assert (= (and b!671809 res!438647) b!671816))

(assert (= (and b!671809 (not res!438655)) b!671818))

(assert (= (and b!671818 res!438646) b!671817))

(assert (= (and b!671809 res!438662) b!671833))

(assert (= (and b!671833 res!438653) b!671810))

(assert (= (and b!671810 res!438648) b!671827))

(assert (= (and b!671827 res!438650) b!671831))

(assert (= (and b!671831 res!438651) b!671820))

(assert (= (and b!671820 res!438658) b!671812))

(assert (= (and b!671812 res!438654) b!671819))

(assert (= (and b!671819 res!438661) b!671822))

(assert (= (and b!671822 c!76952) b!671823))

(assert (= (and b!671822 (not c!76952)) b!671832))

(assert (= (and b!671822 res!438645) b!671821))

(assert (= (and b!671821 res!438641) b!671815))

(assert (= (and b!671815 res!438640) b!671826))

(assert (= (and b!671826 res!438657) b!671813))

(assert (= (and b!671813 res!438642) b!671824))

(assert (= (and b!671824 res!438649) b!671828))

(assert (= (and b!671824 (not res!438656)) b!671811))

(assert (= (and b!671811 res!438639) b!671834))

(assert (= (and b!671824 res!438644) b!671814))

(declare-fun m!641055 () Bool)

(assert (=> b!671828 m!641055))

(declare-fun m!641057 () Bool)

(assert (=> start!60180 m!641057))

(declare-fun m!641059 () Bool)

(assert (=> b!671819 m!641059))

(assert (=> b!671819 m!641059))

(declare-fun m!641061 () Bool)

(assert (=> b!671819 m!641061))

(declare-fun m!641063 () Bool)

(assert (=> b!671820 m!641063))

(declare-fun m!641065 () Bool)

(assert (=> b!671815 m!641065))

(declare-fun m!641067 () Bool)

(assert (=> b!671826 m!641067))

(assert (=> b!671821 m!641059))

(assert (=> b!671821 m!641059))

(declare-fun m!641069 () Bool)

(assert (=> b!671821 m!641069))

(assert (=> b!671834 m!641055))

(declare-fun m!641071 () Bool)

(assert (=> b!671814 m!641071))

(declare-fun m!641073 () Bool)

(assert (=> b!671830 m!641073))

(declare-fun m!641075 () Bool)

(assert (=> b!671816 m!641075))

(assert (=> b!671817 m!641075))

(declare-fun m!641077 () Bool)

(assert (=> b!671825 m!641077))

(assert (=> b!671822 m!641059))

(declare-fun m!641079 () Bool)

(assert (=> b!671831 m!641079))

(declare-fun m!641081 () Bool)

(assert (=> b!671833 m!641081))

(declare-fun m!641083 () Bool)

(assert (=> b!671823 m!641083))

(declare-fun m!641085 () Bool)

(assert (=> b!671823 m!641085))

(declare-fun m!641087 () Bool)

(assert (=> b!671813 m!641087))

(declare-fun m!641089 () Bool)

(assert (=> b!671810 m!641089))

(declare-fun m!641091 () Bool)

(assert (=> b!671829 m!641091))

(push 1)

