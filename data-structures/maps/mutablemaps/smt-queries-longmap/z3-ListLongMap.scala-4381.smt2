; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60332 () Bool)

(assert start!60332)

(declare-fun b!677109 () Bool)

(declare-fun res!443727 () Bool)

(declare-fun e!386018 () Bool)

(assert (=> b!677109 (=> (not res!443727) (not e!386018))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39335 0))(
  ( (array!39336 (arr!18856 (Array (_ BitVec 32) (_ BitVec 64))) (size!19220 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39335)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!677109 (= res!443727 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19220 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677110 () Bool)

(declare-fun res!443728 () Bool)

(assert (=> b!677110 (=> (not res!443728) (not e!386018))))

(assert (=> b!677110 (= res!443728 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19220 a!3626))))))

(declare-fun b!677111 () Bool)

(declare-fun res!443721 () Bool)

(assert (=> b!677111 (=> (not res!443721) (not e!386018))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677111 (= res!443721 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677112 () Bool)

(declare-fun e!386016 () Bool)

(declare-datatypes ((List!12950 0))(
  ( (Nil!12947) (Cons!12946 (h!13991 (_ BitVec 64)) (t!19186 List!12950)) )
))
(declare-fun acc!681 () List!12950)

(declare-fun contains!3493 (List!12950 (_ BitVec 64)) Bool)

(assert (=> b!677112 (= e!386016 (not (contains!3493 acc!681 k0!2843)))))

(declare-fun b!677113 () Bool)

(declare-fun res!443711 () Bool)

(assert (=> b!677113 (=> (not res!443711) (not e!386018))))

(assert (=> b!677113 (= res!443711 (not (contains!3493 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677114 () Bool)

(declare-fun res!443723 () Bool)

(assert (=> b!677114 (=> (not res!443723) (not e!386018))))

(declare-fun arrayNoDuplicates!0 (array!39335 (_ BitVec 32) List!12950) Bool)

(assert (=> b!677114 (= res!443723 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677116 () Bool)

(declare-fun res!443716 () Bool)

(assert (=> b!677116 (=> (not res!443716) (not e!386018))))

(assert (=> b!677116 (= res!443716 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677117 () Bool)

(declare-fun e!386023 () Bool)

(assert (=> b!677117 (= e!386023 (contains!3493 acc!681 k0!2843))))

(declare-fun b!677118 () Bool)

(declare-fun e!386022 () Bool)

(assert (=> b!677118 (= e!386022 (contains!3493 acc!681 k0!2843))))

(declare-fun b!677119 () Bool)

(declare-fun res!443720 () Bool)

(assert (=> b!677119 (=> (not res!443720) (not e!386018))))

(assert (=> b!677119 (= res!443720 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677120 () Bool)

(declare-fun res!443710 () Bool)

(assert (=> b!677120 (=> (not res!443710) (not e!386018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677120 (= res!443710 (validKeyInArray!0 k0!2843))))

(declare-fun b!677121 () Bool)

(declare-fun res!443724 () Bool)

(assert (=> b!677121 (=> (not res!443724) (not e!386018))))

(declare-fun e!386017 () Bool)

(assert (=> b!677121 (= res!443724 e!386017)))

(declare-fun res!443729 () Bool)

(assert (=> b!677121 (=> res!443729 e!386017)))

(assert (=> b!677121 (= res!443729 e!386023)))

(declare-fun res!443722 () Bool)

(assert (=> b!677121 (=> (not res!443722) (not e!386023))))

(assert (=> b!677121 (= res!443722 (bvsgt from!3004 i!1382))))

(declare-fun b!677122 () Bool)

(declare-fun res!443713 () Bool)

(assert (=> b!677122 (=> (not res!443713) (not e!386018))))

(assert (=> b!677122 (= res!443713 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12947))))

(declare-fun b!677123 () Bool)

(declare-fun res!443719 () Bool)

(assert (=> b!677123 (=> (not res!443719) (not e!386018))))

(assert (=> b!677123 (= res!443719 (not (contains!3493 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677124 () Bool)

(declare-fun res!443709 () Bool)

(assert (=> b!677124 (=> (not res!443709) (not e!386018))))

(declare-fun e!386020 () Bool)

(assert (=> b!677124 (= res!443709 e!386020)))

(declare-fun res!443712 () Bool)

(assert (=> b!677124 (=> res!443712 e!386020)))

(assert (=> b!677124 (= res!443712 e!386022)))

(declare-fun res!443717 () Bool)

(assert (=> b!677124 (=> (not res!443717) (not e!386022))))

(assert (=> b!677124 (= res!443717 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677125 () Bool)

(declare-fun res!443725 () Bool)

(assert (=> b!677125 (=> (not res!443725) (not e!386018))))

(declare-fun noDuplicate!740 (List!12950) Bool)

(assert (=> b!677125 (= res!443725 (noDuplicate!740 acc!681))))

(declare-fun b!677115 () Bool)

(assert (=> b!677115 (= e!386020 e!386016)))

(declare-fun res!443726 () Bool)

(assert (=> b!677115 (=> (not res!443726) (not e!386016))))

(assert (=> b!677115 (= res!443726 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!443715 () Bool)

(assert (=> start!60332 (=> (not res!443715) (not e!386018))))

(assert (=> start!60332 (= res!443715 (and (bvslt (size!19220 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19220 a!3626))))))

(assert (=> start!60332 e!386018))

(assert (=> start!60332 true))

(declare-fun array_inv!14630 (array!39335) Bool)

(assert (=> start!60332 (array_inv!14630 a!3626)))

(declare-fun b!677126 () Bool)

(declare-fun res!443718 () Bool)

(assert (=> b!677126 (=> (not res!443718) (not e!386018))))

(assert (=> b!677126 (= res!443718 (not (validKeyInArray!0 (select (arr!18856 a!3626) from!3004))))))

(declare-fun b!677127 () Bool)

(declare-fun e!386019 () Bool)

(assert (=> b!677127 (= e!386017 e!386019)))

(declare-fun res!443714 () Bool)

(assert (=> b!677127 (=> (not res!443714) (not e!386019))))

(assert (=> b!677127 (= res!443714 (bvsle from!3004 i!1382))))

(declare-fun b!677128 () Bool)

(assert (=> b!677128 (= e!386019 (not (contains!3493 acc!681 k0!2843)))))

(declare-fun b!677129 () Bool)

(assert (=> b!677129 (= e!386018 (not true))))

(assert (=> b!677129 (arrayNoDuplicates!0 (array!39336 (store (arr!18856 a!3626) i!1382 k0!2843) (size!19220 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23748 0))(
  ( (Unit!23749) )
))
(declare-fun lt!312759 () Unit!23748)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39335 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12950) Unit!23748)

(assert (=> b!677129 (= lt!312759 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (= (and start!60332 res!443715) b!677125))

(assert (= (and b!677125 res!443725) b!677123))

(assert (= (and b!677123 res!443719) b!677113))

(assert (= (and b!677113 res!443711) b!677121))

(assert (= (and b!677121 res!443722) b!677117))

(assert (= (and b!677121 (not res!443729)) b!677127))

(assert (= (and b!677127 res!443714) b!677128))

(assert (= (and b!677121 res!443724) b!677122))

(assert (= (and b!677122 res!443713) b!677114))

(assert (= (and b!677114 res!443723) b!677110))

(assert (= (and b!677110 res!443728) b!677120))

(assert (= (and b!677120 res!443710) b!677111))

(assert (= (and b!677111 res!443721) b!677109))

(assert (= (and b!677109 res!443727) b!677126))

(assert (= (and b!677126 res!443718) b!677116))

(assert (= (and b!677116 res!443716) b!677124))

(assert (= (and b!677124 res!443717) b!677118))

(assert (= (and b!677124 (not res!443712)) b!677115))

(assert (= (and b!677115 res!443726) b!677112))

(assert (= (and b!677124 res!443709) b!677119))

(assert (= (and b!677119 res!443720) b!677129))

(declare-fun m!643521 () Bool)

(assert (=> b!677120 m!643521))

(declare-fun m!643523 () Bool)

(assert (=> start!60332 m!643523))

(declare-fun m!643525 () Bool)

(assert (=> b!677111 m!643525))

(declare-fun m!643527 () Bool)

(assert (=> b!677125 m!643527))

(declare-fun m!643529 () Bool)

(assert (=> b!677129 m!643529))

(declare-fun m!643531 () Bool)

(assert (=> b!677129 m!643531))

(declare-fun m!643533 () Bool)

(assert (=> b!677129 m!643533))

(declare-fun m!643535 () Bool)

(assert (=> b!677126 m!643535))

(assert (=> b!677126 m!643535))

(declare-fun m!643537 () Bool)

(assert (=> b!677126 m!643537))

(declare-fun m!643539 () Bool)

(assert (=> b!677113 m!643539))

(declare-fun m!643541 () Bool)

(assert (=> b!677119 m!643541))

(declare-fun m!643543 () Bool)

(assert (=> b!677118 m!643543))

(assert (=> b!677112 m!643543))

(assert (=> b!677117 m!643543))

(declare-fun m!643545 () Bool)

(assert (=> b!677114 m!643545))

(declare-fun m!643547 () Bool)

(assert (=> b!677123 m!643547))

(declare-fun m!643549 () Bool)

(assert (=> b!677122 m!643549))

(assert (=> b!677128 m!643543))

(check-sat (not b!677122) (not b!677111) (not b!677123) (not b!677114) (not b!677120) (not b!677113) (not b!677126) (not b!677118) (not b!677119) (not b!677112) (not b!677125) (not b!677129) (not b!677128) (not b!677117) (not start!60332))
(check-sat)
