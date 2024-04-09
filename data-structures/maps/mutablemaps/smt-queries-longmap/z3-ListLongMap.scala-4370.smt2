; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60266 () Bool)

(assert start!60266)

(declare-fun b!675115 () Bool)

(declare-fun e!385229 () Bool)

(declare-datatypes ((List!12917 0))(
  ( (Nil!12914) (Cons!12913 (h!13958 (_ BitVec 64)) (t!19153 List!12917)) )
))
(declare-fun acc!681 () List!12917)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3460 (List!12917 (_ BitVec 64)) Bool)

(assert (=> b!675115 (= e!385229 (not (contains!3460 acc!681 k0!2843)))))

(declare-fun b!675116 () Bool)

(declare-fun e!385226 () Bool)

(assert (=> b!675116 (= e!385226 (contains!3460 acc!681 k0!2843))))

(declare-fun b!675117 () Bool)

(declare-fun res!441724 () Bool)

(declare-fun e!385225 () Bool)

(assert (=> b!675117 (=> (not res!441724) (not e!385225))))

(declare-fun e!385224 () Bool)

(assert (=> b!675117 (= res!441724 e!385224)))

(declare-fun res!441730 () Bool)

(assert (=> b!675117 (=> res!441730 e!385224)))

(declare-fun e!385227 () Bool)

(assert (=> b!675117 (= res!441730 e!385227)))

(declare-fun res!441726 () Bool)

(assert (=> b!675117 (=> (not res!441726) (not e!385227))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675117 (= res!441726 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675118 () Bool)

(declare-fun res!441718 () Bool)

(assert (=> b!675118 (=> (not res!441718) (not e!385225))))

(declare-fun e!385231 () Bool)

(assert (=> b!675118 (= res!441718 e!385231)))

(declare-fun res!441722 () Bool)

(assert (=> b!675118 (=> res!441722 e!385231)))

(assert (=> b!675118 (= res!441722 e!385226)))

(declare-fun res!441723 () Bool)

(assert (=> b!675118 (=> (not res!441723) (not e!385226))))

(assert (=> b!675118 (= res!441723 (bvsgt from!3004 i!1382))))

(declare-fun b!675119 () Bool)

(declare-fun e!385230 () Bool)

(assert (=> b!675119 (= e!385230 (not (contains!3460 acc!681 k0!2843)))))

(declare-fun res!441717 () Bool)

(assert (=> start!60266 (=> (not res!441717) (not e!385225))))

(declare-datatypes ((array!39269 0))(
  ( (array!39270 (arr!18823 (Array (_ BitVec 32) (_ BitVec 64))) (size!19187 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39269)

(assert (=> start!60266 (= res!441717 (and (bvslt (size!19187 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19187 a!3626))))))

(assert (=> start!60266 e!385225))

(assert (=> start!60266 true))

(declare-fun array_inv!14597 (array!39269) Bool)

(assert (=> start!60266 (array_inv!14597 a!3626)))

(declare-fun b!675120 () Bool)

(declare-fun res!441716 () Bool)

(assert (=> b!675120 (=> (not res!441716) (not e!385225))))

(assert (=> b!675120 (= res!441716 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675121 () Bool)

(declare-fun res!441725 () Bool)

(assert (=> b!675121 (=> (not res!441725) (not e!385225))))

(assert (=> b!675121 (= res!441725 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19187 a!3626))))))

(declare-fun b!675122 () Bool)

(declare-fun res!441715 () Bool)

(assert (=> b!675122 (=> (not res!441715) (not e!385225))))

(declare-fun arrayNoDuplicates!0 (array!39269 (_ BitVec 32) List!12917) Bool)

(assert (=> b!675122 (= res!441715 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675123 () Bool)

(declare-fun res!441728 () Bool)

(assert (=> b!675123 (=> (not res!441728) (not e!385225))))

(assert (=> b!675123 (= res!441728 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19187 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675124 () Bool)

(assert (=> b!675124 (= e!385227 (contains!3460 acc!681 k0!2843))))

(declare-fun b!675125 () Bool)

(assert (=> b!675125 (= e!385224 e!385230)))

(declare-fun res!441729 () Bool)

(assert (=> b!675125 (=> (not res!441729) (not e!385230))))

(assert (=> b!675125 (= res!441729 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675126 () Bool)

(declare-fun res!441719 () Bool)

(assert (=> b!675126 (=> (not res!441719) (not e!385225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675126 (= res!441719 (validKeyInArray!0 k0!2843))))

(declare-fun b!675127 () Bool)

(assert (=> b!675127 (= e!385225 false)))

(declare-fun lt!312660 () Bool)

(assert (=> b!675127 (= lt!312660 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675128 () Bool)

(declare-fun res!441731 () Bool)

(assert (=> b!675128 (=> (not res!441731) (not e!385225))))

(declare-fun noDuplicate!707 (List!12917) Bool)

(assert (=> b!675128 (= res!441731 (noDuplicate!707 acc!681))))

(declare-fun b!675129 () Bool)

(assert (=> b!675129 (= e!385231 e!385229)))

(declare-fun res!441727 () Bool)

(assert (=> b!675129 (=> (not res!441727) (not e!385229))))

(assert (=> b!675129 (= res!441727 (bvsle from!3004 i!1382))))

(declare-fun b!675130 () Bool)

(declare-fun res!441721 () Bool)

(assert (=> b!675130 (=> (not res!441721) (not e!385225))))

(assert (=> b!675130 (= res!441721 (not (contains!3460 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675131 () Bool)

(declare-fun res!441732 () Bool)

(assert (=> b!675131 (=> (not res!441732) (not e!385225))))

(declare-fun arrayContainsKey!0 (array!39269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675131 (= res!441732 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675132 () Bool)

(declare-fun res!441720 () Bool)

(assert (=> b!675132 (=> (not res!441720) (not e!385225))))

(assert (=> b!675132 (= res!441720 (not (validKeyInArray!0 (select (arr!18823 a!3626) from!3004))))))

(declare-fun b!675133 () Bool)

(declare-fun res!441734 () Bool)

(assert (=> b!675133 (=> (not res!441734) (not e!385225))))

(assert (=> b!675133 (= res!441734 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12914))))

(declare-fun b!675134 () Bool)

(declare-fun res!441733 () Bool)

(assert (=> b!675134 (=> (not res!441733) (not e!385225))))

(assert (=> b!675134 (= res!441733 (not (contains!3460 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60266 res!441717) b!675128))

(assert (= (and b!675128 res!441731) b!675130))

(assert (= (and b!675130 res!441721) b!675134))

(assert (= (and b!675134 res!441733) b!675118))

(assert (= (and b!675118 res!441723) b!675116))

(assert (= (and b!675118 (not res!441722)) b!675129))

(assert (= (and b!675129 res!441727) b!675115))

(assert (= (and b!675118 res!441718) b!675133))

(assert (= (and b!675133 res!441734) b!675122))

(assert (= (and b!675122 res!441715) b!675121))

(assert (= (and b!675121 res!441725) b!675126))

(assert (= (and b!675126 res!441719) b!675131))

(assert (= (and b!675131 res!441732) b!675123))

(assert (= (and b!675123 res!441728) b!675132))

(assert (= (and b!675132 res!441720) b!675120))

(assert (= (and b!675120 res!441716) b!675117))

(assert (= (and b!675117 res!441726) b!675124))

(assert (= (and b!675117 (not res!441730)) b!675125))

(assert (= (and b!675125 res!441729) b!675119))

(assert (= (and b!675117 res!441724) b!675127))

(declare-fun m!642705 () Bool)

(assert (=> b!675115 m!642705))

(declare-fun m!642707 () Bool)

(assert (=> b!675131 m!642707))

(declare-fun m!642709 () Bool)

(assert (=> b!675130 m!642709))

(declare-fun m!642711 () Bool)

(assert (=> b!675122 m!642711))

(declare-fun m!642713 () Bool)

(assert (=> b!675127 m!642713))

(declare-fun m!642715 () Bool)

(assert (=> b!675126 m!642715))

(declare-fun m!642717 () Bool)

(assert (=> b!675133 m!642717))

(assert (=> b!675124 m!642705))

(declare-fun m!642719 () Bool)

(assert (=> b!675132 m!642719))

(assert (=> b!675132 m!642719))

(declare-fun m!642721 () Bool)

(assert (=> b!675132 m!642721))

(assert (=> b!675119 m!642705))

(declare-fun m!642723 () Bool)

(assert (=> b!675134 m!642723))

(declare-fun m!642725 () Bool)

(assert (=> start!60266 m!642725))

(assert (=> b!675116 m!642705))

(declare-fun m!642727 () Bool)

(assert (=> b!675128 m!642727))

(check-sat (not b!675116) (not b!675133) (not b!675130) (not b!675119) (not b!675127) (not b!675115) (not start!60266) (not b!675131) (not b!675134) (not b!675132) (not b!675122) (not b!675124) (not b!675128) (not b!675126))
