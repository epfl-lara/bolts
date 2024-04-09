; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60506 () Bool)

(assert start!60506)

(declare-fun b!679561 () Bool)

(declare-fun res!446081 () Bool)

(declare-fun e!387146 () Bool)

(assert (=> b!679561 (=> (not res!446081) (not e!387146))))

(declare-datatypes ((List!13001 0))(
  ( (Nil!12998) (Cons!12997 (h!14042 (_ BitVec 64)) (t!19237 List!13001)) )
))
(declare-fun acc!681 () List!13001)

(declare-fun contains!3544 (List!13001 (_ BitVec 64)) Bool)

(assert (=> b!679561 (= res!446081 (not (contains!3544 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679563 () Bool)

(declare-fun e!387145 () Bool)

(declare-fun e!387149 () Bool)

(assert (=> b!679563 (= e!387145 e!387149)))

(declare-fun res!446071 () Bool)

(assert (=> b!679563 (=> (not res!446071) (not e!387149))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679563 (= res!446071 (bvsle from!3004 i!1382))))

(declare-fun b!679564 () Bool)

(declare-fun e!387148 () Bool)

(assert (=> b!679564 (= e!387146 (not e!387148))))

(declare-fun res!446077 () Bool)

(assert (=> b!679564 (=> res!446077 e!387148)))

(declare-datatypes ((array!39443 0))(
  ( (array!39444 (arr!18907 (Array (_ BitVec 32) (_ BitVec 64))) (size!19271 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39443)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679564 (= res!446077 (not (validKeyInArray!0 (select (arr!18907 a!3626) from!3004))))))

(declare-datatypes ((Unit!23798 0))(
  ( (Unit!23799) )
))
(declare-fun lt!312909 () Unit!23798)

(declare-fun e!387151 () Unit!23798)

(assert (=> b!679564 (= lt!312909 e!387151)))

(declare-fun c!77114 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679564 (= c!77114 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679564 (arrayContainsKey!0 (array!39444 (store (arr!18907 a!3626) i!1382 k0!2843) (size!19271 a!3626)) k0!2843 from!3004)))

(declare-fun b!679565 () Bool)

(declare-fun res!446078 () Bool)

(assert (=> b!679565 (=> (not res!446078) (not e!387146))))

(declare-fun arrayNoDuplicates!0 (array!39443 (_ BitVec 32) List!13001) Bool)

(assert (=> b!679565 (= res!446078 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12998))))

(declare-fun b!679566 () Bool)

(declare-fun res!446067 () Bool)

(assert (=> b!679566 (=> (not res!446067) (not e!387146))))

(assert (=> b!679566 (= res!446067 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19271 a!3626))))))

(declare-fun b!679567 () Bool)

(declare-fun res!446075 () Bool)

(assert (=> b!679567 (=> (not res!446075) (not e!387146))))

(assert (=> b!679567 (= res!446075 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19271 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679568 () Bool)

(declare-fun Unit!23800 () Unit!23798)

(assert (=> b!679568 (= e!387151 Unit!23800)))

(declare-fun lt!312908 () Unit!23798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39443 (_ BitVec 64) (_ BitVec 32)) Unit!23798)

(assert (=> b!679568 (= lt!312908 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!679568 false))

(declare-fun b!679569 () Bool)

(declare-fun res!446073 () Bool)

(assert (=> b!679569 (=> (not res!446073) (not e!387146))))

(assert (=> b!679569 (= res!446073 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679570 () Bool)

(declare-fun res!446068 () Bool)

(assert (=> b!679570 (=> (not res!446068) (not e!387146))))

(assert (=> b!679570 (= res!446068 (validKeyInArray!0 k0!2843))))

(declare-fun b!679571 () Bool)

(declare-fun res!446076 () Bool)

(assert (=> b!679571 (=> (not res!446076) (not e!387146))))

(assert (=> b!679571 (= res!446076 e!387145)))

(declare-fun res!446074 () Bool)

(assert (=> b!679571 (=> res!446074 e!387145)))

(declare-fun e!387147 () Bool)

(assert (=> b!679571 (= res!446074 e!387147)))

(declare-fun res!446080 () Bool)

(assert (=> b!679571 (=> (not res!446080) (not e!387147))))

(assert (=> b!679571 (= res!446080 (bvsgt from!3004 i!1382))))

(declare-fun b!679572 () Bool)

(assert (=> b!679572 (= e!387147 (contains!3544 acc!681 k0!2843))))

(declare-fun b!679573 () Bool)

(assert (=> b!679573 (= e!387148 true)))

(declare-fun subseq!129 (List!13001 List!13001) Bool)

(assert (=> b!679573 (subseq!129 acc!681 acc!681)))

(declare-fun lt!312907 () Unit!23798)

(declare-fun lemmaListSubSeqRefl!0 (List!13001) Unit!23798)

(assert (=> b!679573 (= lt!312907 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679562 () Bool)

(assert (=> b!679562 (= e!387149 (not (contains!3544 acc!681 k0!2843)))))

(declare-fun res!446072 () Bool)

(assert (=> start!60506 (=> (not res!446072) (not e!387146))))

(assert (=> start!60506 (= res!446072 (and (bvslt (size!19271 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19271 a!3626))))))

(assert (=> start!60506 e!387146))

(assert (=> start!60506 true))

(declare-fun array_inv!14681 (array!39443) Bool)

(assert (=> start!60506 (array_inv!14681 a!3626)))

(declare-fun b!679574 () Bool)

(declare-fun Unit!23801 () Unit!23798)

(assert (=> b!679574 (= e!387151 Unit!23801)))

(declare-fun b!679575 () Bool)

(declare-fun res!446079 () Bool)

(assert (=> b!679575 (=> (not res!446079) (not e!387146))))

(assert (=> b!679575 (= res!446079 (not (contains!3544 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679576 () Bool)

(declare-fun res!446070 () Bool)

(assert (=> b!679576 (=> (not res!446070) (not e!387146))))

(declare-fun noDuplicate!791 (List!13001) Bool)

(assert (=> b!679576 (= res!446070 (noDuplicate!791 acc!681))))

(declare-fun b!679577 () Bool)

(declare-fun res!446069 () Bool)

(assert (=> b!679577 (=> (not res!446069) (not e!387146))))

(assert (=> b!679577 (= res!446069 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60506 res!446072) b!679576))

(assert (= (and b!679576 res!446070) b!679575))

(assert (= (and b!679575 res!446079) b!679561))

(assert (= (and b!679561 res!446081) b!679571))

(assert (= (and b!679571 res!446080) b!679572))

(assert (= (and b!679571 (not res!446074)) b!679563))

(assert (= (and b!679563 res!446071) b!679562))

(assert (= (and b!679571 res!446076) b!679565))

(assert (= (and b!679565 res!446078) b!679577))

(assert (= (and b!679577 res!446069) b!679566))

(assert (= (and b!679566 res!446067) b!679570))

(assert (= (and b!679570 res!446068) b!679569))

(assert (= (and b!679569 res!446073) b!679567))

(assert (= (and b!679567 res!446075) b!679564))

(assert (= (and b!679564 c!77114) b!679568))

(assert (= (and b!679564 (not c!77114)) b!679574))

(assert (= (and b!679564 (not res!446077)) b!679573))

(declare-fun m!644905 () Bool)

(assert (=> b!679576 m!644905))

(declare-fun m!644907 () Bool)

(assert (=> b!679577 m!644907))

(declare-fun m!644909 () Bool)

(assert (=> b!679572 m!644909))

(declare-fun m!644911 () Bool)

(assert (=> b!679569 m!644911))

(declare-fun m!644913 () Bool)

(assert (=> b!679573 m!644913))

(declare-fun m!644915 () Bool)

(assert (=> b!679573 m!644915))

(assert (=> b!679562 m!644909))

(declare-fun m!644917 () Bool)

(assert (=> b!679568 m!644917))

(declare-fun m!644919 () Bool)

(assert (=> b!679570 m!644919))

(declare-fun m!644921 () Bool)

(assert (=> b!679561 m!644921))

(declare-fun m!644923 () Bool)

(assert (=> b!679575 m!644923))

(declare-fun m!644925 () Bool)

(assert (=> b!679565 m!644925))

(declare-fun m!644927 () Bool)

(assert (=> b!679564 m!644927))

(declare-fun m!644929 () Bool)

(assert (=> b!679564 m!644929))

(declare-fun m!644931 () Bool)

(assert (=> b!679564 m!644931))

(assert (=> b!679564 m!644927))

(declare-fun m!644933 () Bool)

(assert (=> b!679564 m!644933))

(declare-fun m!644935 () Bool)

(assert (=> b!679564 m!644935))

(declare-fun m!644937 () Bool)

(assert (=> start!60506 m!644937))

(check-sat (not b!679565) (not b!679568) (not start!60506) (not b!679569) (not b!679577) (not b!679564) (not b!679575) (not b!679570) (not b!679561) (not b!679562) (not b!679573) (not b!679572) (not b!679576))
