; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60154 () Bool)

(assert start!60154)

(declare-fun b!670985 () Bool)

(declare-fun e!383533 () Bool)

(declare-datatypes ((List!12861 0))(
  ( (Nil!12858) (Cons!12857 (h!13902 (_ BitVec 64)) (t!19097 List!12861)) )
))
(declare-fun acc!681 () List!12861)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3404 (List!12861 (_ BitVec 64)) Bool)

(assert (=> b!670985 (= e!383533 (not (contains!3404 acc!681 k!2843)))))

(declare-fun b!670986 () Bool)

(declare-fun e!383532 () Bool)

(assert (=> b!670986 (= e!383532 (not true))))

(declare-datatypes ((array!39157 0))(
  ( (array!39158 (arr!18767 (Array (_ BitVec 32) (_ BitVec 64))) (size!19131 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39157)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670986 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!670987 () Bool)

(declare-fun res!437864 () Bool)

(assert (=> b!670987 (=> (not res!437864) (not e!383532))))

(declare-fun e!383536 () Bool)

(assert (=> b!670987 (= res!437864 e!383536)))

(declare-fun res!437868 () Bool)

(assert (=> b!670987 (=> res!437868 e!383536)))

(declare-fun e!383534 () Bool)

(assert (=> b!670987 (= res!437868 e!383534)))

(declare-fun res!437858 () Bool)

(assert (=> b!670987 (=> (not res!437858) (not e!383534))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670987 (= res!437858 (bvsgt from!3004 i!1382))))

(declare-fun res!437866 () Bool)

(assert (=> start!60154 (=> (not res!437866) (not e!383532))))

(assert (=> start!60154 (= res!437866 (and (bvslt (size!19131 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19131 a!3626))))))

(assert (=> start!60154 e!383532))

(assert (=> start!60154 true))

(declare-fun array_inv!14541 (array!39157) Bool)

(assert (=> start!60154 (array_inv!14541 a!3626)))

(declare-fun b!670988 () Bool)

(declare-fun res!437860 () Bool)

(assert (=> b!670988 (=> (not res!437860) (not e!383532))))

(declare-fun arrayNoDuplicates!0 (array!39157 (_ BitVec 32) List!12861) Bool)

(assert (=> b!670988 (= res!437860 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670989 () Bool)

(declare-fun res!437859 () Bool)

(assert (=> b!670989 (=> (not res!437859) (not e!383532))))

(assert (=> b!670989 (= res!437859 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19131 a!3626))))))

(declare-fun b!670990 () Bool)

(declare-fun res!437861 () Bool)

(assert (=> b!670990 (=> (not res!437861) (not e!383532))))

(assert (=> b!670990 (= res!437861 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670991 () Bool)

(declare-fun res!437869 () Bool)

(assert (=> b!670991 (=> (not res!437869) (not e!383532))))

(assert (=> b!670991 (= res!437869 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12858))))

(declare-fun b!670992 () Bool)

(declare-fun res!437870 () Bool)

(assert (=> b!670992 (=> (not res!437870) (not e!383532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670992 (= res!437870 (validKeyInArray!0 k!2843))))

(declare-fun b!670993 () Bool)

(declare-fun res!437862 () Bool)

(assert (=> b!670993 (=> (not res!437862) (not e!383532))))

(assert (=> b!670993 (= res!437862 (validKeyInArray!0 (select (arr!18767 a!3626) from!3004)))))

(declare-fun b!670994 () Bool)

(declare-fun res!437857 () Bool)

(assert (=> b!670994 (=> (not res!437857) (not e!383532))))

(assert (=> b!670994 (= res!437857 (not (contains!3404 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670995 () Bool)

(assert (=> b!670995 (= e!383534 (contains!3404 acc!681 k!2843))))

(declare-fun b!670996 () Bool)

(declare-fun res!437856 () Bool)

(assert (=> b!670996 (=> (not res!437856) (not e!383532))))

(assert (=> b!670996 (= res!437856 (= (select (arr!18767 a!3626) from!3004) k!2843))))

(declare-fun b!670997 () Bool)

(declare-fun res!437855 () Bool)

(assert (=> b!670997 (=> (not res!437855) (not e!383532))))

(declare-fun noDuplicate!651 (List!12861) Bool)

(assert (=> b!670997 (= res!437855 (noDuplicate!651 acc!681))))

(declare-fun b!670998 () Bool)

(declare-fun res!437865 () Bool)

(assert (=> b!670998 (=> (not res!437865) (not e!383532))))

(assert (=> b!670998 (= res!437865 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19131 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!670999 () Bool)

(assert (=> b!670999 (= e!383536 e!383533)))

(declare-fun res!437863 () Bool)

(assert (=> b!670999 (=> (not res!437863) (not e!383533))))

(assert (=> b!670999 (= res!437863 (bvsle from!3004 i!1382))))

(declare-fun b!671000 () Bool)

(declare-fun res!437867 () Bool)

(assert (=> b!671000 (=> (not res!437867) (not e!383532))))

(assert (=> b!671000 (= res!437867 (not (contains!3404 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60154 res!437866) b!670997))

(assert (= (and b!670997 res!437855) b!670994))

(assert (= (and b!670994 res!437857) b!671000))

(assert (= (and b!671000 res!437867) b!670987))

(assert (= (and b!670987 res!437858) b!670995))

(assert (= (and b!670987 (not res!437868)) b!670999))

(assert (= (and b!670999 res!437863) b!670985))

(assert (= (and b!670987 res!437864) b!670991))

(assert (= (and b!670991 res!437869) b!670988))

(assert (= (and b!670988 res!437860) b!670989))

(assert (= (and b!670989 res!437859) b!670992))

(assert (= (and b!670992 res!437870) b!670990))

(assert (= (and b!670990 res!437861) b!670998))

(assert (= (and b!670998 res!437865) b!670993))

(assert (= (and b!670993 res!437862) b!670996))

(assert (= (and b!670996 res!437856) b!670986))

(declare-fun m!640659 () Bool)

(assert (=> b!670988 m!640659))

(declare-fun m!640661 () Bool)

(assert (=> b!670986 m!640661))

(declare-fun m!640663 () Bool)

(assert (=> b!670985 m!640663))

(declare-fun m!640665 () Bool)

(assert (=> b!670990 m!640665))

(declare-fun m!640667 () Bool)

(assert (=> b!670992 m!640667))

(declare-fun m!640669 () Bool)

(assert (=> b!670996 m!640669))

(assert (=> b!670993 m!640669))

(assert (=> b!670993 m!640669))

(declare-fun m!640671 () Bool)

(assert (=> b!670993 m!640671))

(declare-fun m!640673 () Bool)

(assert (=> start!60154 m!640673))

(declare-fun m!640675 () Bool)

(assert (=> b!670991 m!640675))

(declare-fun m!640677 () Bool)

(assert (=> b!670994 m!640677))

(assert (=> b!670995 m!640663))

(declare-fun m!640679 () Bool)

(assert (=> b!671000 m!640679))

(declare-fun m!640681 () Bool)

(assert (=> b!670997 m!640681))

(push 1)

(assert (not start!60154))

(assert (not b!670994))

(assert (not b!670986))

(assert (not b!671000))

(assert (not b!670997))

(assert (not b!670991))

(assert (not b!670993))

(assert (not b!670995))

(assert (not b!670988))

(assert (not b!670992))

(assert (not b!670990))

(assert (not b!670985))

