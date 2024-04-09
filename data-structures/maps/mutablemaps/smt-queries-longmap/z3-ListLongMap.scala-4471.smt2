; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62228 () Bool)

(assert start!62228)

(declare-fun b!696709 () Bool)

(declare-fun res!460811 () Bool)

(declare-fun e!396136 () Bool)

(assert (=> b!696709 (=> (not res!460811) (not e!396136))))

(declare-fun e!396133 () Bool)

(assert (=> b!696709 (= res!460811 e!396133)))

(declare-fun res!460805 () Bool)

(assert (=> b!696709 (=> res!460805 e!396133)))

(declare-fun e!396131 () Bool)

(assert (=> b!696709 (= res!460805 e!396131)))

(declare-fun res!460810 () Bool)

(assert (=> b!696709 (=> (not res!460810) (not e!396131))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696709 (= res!460810 (bvsgt from!3004 i!1382))))

(declare-fun b!696710 () Bool)

(declare-fun res!460816 () Bool)

(assert (=> b!696710 (=> (not res!460816) (not e!396136))))

(declare-datatypes ((List!13220 0))(
  ( (Nil!13217) (Cons!13216 (h!14261 (_ BitVec 64)) (t!19510 List!13220)) )
))
(declare-fun acc!681 () List!13220)

(declare-fun contains!3763 (List!13220 (_ BitVec 64)) Bool)

(assert (=> b!696710 (= res!460816 (not (contains!3763 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696711 () Bool)

(declare-fun res!460812 () Bool)

(assert (=> b!696711 (=> (not res!460812) (not e!396136))))

(declare-datatypes ((array!39941 0))(
  ( (array!39942 (arr!19126 (Array (_ BitVec 32) (_ BitVec 64))) (size!19509 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39941)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696711 (= res!460812 (not (validKeyInArray!0 (select (arr!19126 a!3626) from!3004))))))

(declare-fun b!696712 () Bool)

(declare-fun res!460801 () Bool)

(assert (=> b!696712 (=> (not res!460801) (not e!396136))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696712 (= res!460801 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696713 () Bool)

(declare-fun res!460807 () Bool)

(assert (=> b!696713 (=> (not res!460807) (not e!396136))))

(declare-fun arrayNoDuplicates!0 (array!39941 (_ BitVec 32) List!13220) Bool)

(assert (=> b!696713 (= res!460807 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13217))))

(declare-fun b!696714 () Bool)

(assert (=> b!696714 (= e!396131 (contains!3763 acc!681 k0!2843))))

(declare-fun b!696715 () Bool)

(declare-fun res!460802 () Bool)

(assert (=> b!696715 (=> (not res!460802) (not e!396136))))

(assert (=> b!696715 (= res!460802 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19509 a!3626))))))

(declare-fun b!696716 () Bool)

(declare-fun e!396134 () Bool)

(assert (=> b!696716 (= e!396134 (contains!3763 acc!681 k0!2843))))

(declare-fun b!696717 () Bool)

(declare-fun e!396132 () Bool)

(declare-fun e!396129 () Bool)

(assert (=> b!696717 (= e!396132 e!396129)))

(declare-fun res!460804 () Bool)

(assert (=> b!696717 (=> (not res!460804) (not e!396129))))

(assert (=> b!696717 (= res!460804 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696719 () Bool)

(declare-fun res!460808 () Bool)

(assert (=> b!696719 (=> (not res!460808) (not e!396136))))

(assert (=> b!696719 (= res!460808 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19509 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696720 () Bool)

(declare-fun res!460803 () Bool)

(assert (=> b!696720 (=> (not res!460803) (not e!396136))))

(assert (=> b!696720 (= res!460803 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696721 () Bool)

(declare-fun res!460809 () Bool)

(assert (=> b!696721 (=> (not res!460809) (not e!396136))))

(assert (=> b!696721 (= res!460809 (not (contains!3763 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696722 () Bool)

(declare-fun e!396130 () Bool)

(assert (=> b!696722 (= e!396133 e!396130)))

(declare-fun res!460819 () Bool)

(assert (=> b!696722 (=> (not res!460819) (not e!396130))))

(assert (=> b!696722 (= res!460819 (bvsle from!3004 i!1382))))

(declare-fun b!696723 () Bool)

(assert (=> b!696723 (= e!396129 (not (contains!3763 acc!681 k0!2843)))))

(declare-fun b!696724 () Bool)

(assert (=> b!696724 (= e!396136 false)))

(declare-fun lt!317073 () Bool)

(assert (=> b!696724 (= lt!317073 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696725 () Bool)

(declare-fun res!460806 () Bool)

(assert (=> b!696725 (=> (not res!460806) (not e!396136))))

(assert (=> b!696725 (= res!460806 (validKeyInArray!0 k0!2843))))

(declare-fun b!696726 () Bool)

(assert (=> b!696726 (= e!396130 (not (contains!3763 acc!681 k0!2843)))))

(declare-fun b!696727 () Bool)

(declare-fun res!460815 () Bool)

(assert (=> b!696727 (=> (not res!460815) (not e!396136))))

(declare-fun noDuplicate!1010 (List!13220) Bool)

(assert (=> b!696727 (= res!460815 (noDuplicate!1010 acc!681))))

(declare-fun b!696728 () Bool)

(declare-fun res!460817 () Bool)

(assert (=> b!696728 (=> (not res!460817) (not e!396136))))

(assert (=> b!696728 (= res!460817 e!396132)))

(declare-fun res!460814 () Bool)

(assert (=> b!696728 (=> res!460814 e!396132)))

(assert (=> b!696728 (= res!460814 e!396134)))

(declare-fun res!460820 () Bool)

(assert (=> b!696728 (=> (not res!460820) (not e!396134))))

(assert (=> b!696728 (= res!460820 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696718 () Bool)

(declare-fun res!460818 () Bool)

(assert (=> b!696718 (=> (not res!460818) (not e!396136))))

(assert (=> b!696718 (= res!460818 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!460813 () Bool)

(assert (=> start!62228 (=> (not res!460813) (not e!396136))))

(assert (=> start!62228 (= res!460813 (and (bvslt (size!19509 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19509 a!3626))))))

(assert (=> start!62228 e!396136))

(assert (=> start!62228 true))

(declare-fun array_inv!14900 (array!39941) Bool)

(assert (=> start!62228 (array_inv!14900 a!3626)))

(assert (= (and start!62228 res!460813) b!696727))

(assert (= (and b!696727 res!460815) b!696710))

(assert (= (and b!696710 res!460816) b!696721))

(assert (= (and b!696721 res!460809) b!696709))

(assert (= (and b!696709 res!460810) b!696714))

(assert (= (and b!696709 (not res!460805)) b!696722))

(assert (= (and b!696722 res!460819) b!696726))

(assert (= (and b!696709 res!460811) b!696713))

(assert (= (and b!696713 res!460807) b!696718))

(assert (= (and b!696718 res!460818) b!696715))

(assert (= (and b!696715 res!460802) b!696725))

(assert (= (and b!696725 res!460806) b!696712))

(assert (= (and b!696712 res!460801) b!696719))

(assert (= (and b!696719 res!460808) b!696711))

(assert (= (and b!696711 res!460812) b!696720))

(assert (= (and b!696720 res!460803) b!696728))

(assert (= (and b!696728 res!460820) b!696716))

(assert (= (and b!696728 (not res!460814)) b!696717))

(assert (= (and b!696717 res!460804) b!696723))

(assert (= (and b!696728 res!460817) b!696724))

(declare-fun m!657489 () Bool)

(assert (=> b!696727 m!657489))

(declare-fun m!657491 () Bool)

(assert (=> b!696713 m!657491))

(declare-fun m!657493 () Bool)

(assert (=> b!696710 m!657493))

(declare-fun m!657495 () Bool)

(assert (=> b!696721 m!657495))

(declare-fun m!657497 () Bool)

(assert (=> b!696726 m!657497))

(declare-fun m!657499 () Bool)

(assert (=> b!696711 m!657499))

(assert (=> b!696711 m!657499))

(declare-fun m!657501 () Bool)

(assert (=> b!696711 m!657501))

(declare-fun m!657503 () Bool)

(assert (=> start!62228 m!657503))

(assert (=> b!696723 m!657497))

(assert (=> b!696714 m!657497))

(declare-fun m!657505 () Bool)

(assert (=> b!696712 m!657505))

(declare-fun m!657507 () Bool)

(assert (=> b!696725 m!657507))

(declare-fun m!657509 () Bool)

(assert (=> b!696724 m!657509))

(assert (=> b!696716 m!657497))

(declare-fun m!657511 () Bool)

(assert (=> b!696718 m!657511))

(check-sat (not b!696724) (not b!696721) (not start!62228) (not b!696712) (not b!696727) (not b!696718) (not b!696725) (not b!696713) (not b!696726) (not b!696711) (not b!696710) (not b!696716) (not b!696714) (not b!696723))
(check-sat)
