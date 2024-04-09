; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59750 () Bool)

(assert start!59750)

(declare-fun b!659713 () Bool)

(declare-fun e!379075 () Bool)

(declare-datatypes ((List!12668 0))(
  ( (Nil!12665) (Cons!12664 (h!13709 (_ BitVec 64)) (t!18904 List!12668)) )
))
(declare-fun contains!3211 (List!12668 (_ BitVec 64)) Bool)

(assert (=> b!659713 (= e!379075 (contains!3211 Nil!12665 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659714 () Bool)

(declare-fun e!379074 () Bool)

(assert (=> b!659714 (= e!379074 e!379075)))

(declare-fun res!427954 () Bool)

(assert (=> b!659714 (=> res!427954 e!379075)))

(assert (=> b!659714 (= res!427954 (contains!3211 Nil!12665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659716 () Bool)

(declare-fun res!427959 () Bool)

(assert (=> b!659716 (=> (not res!427959) (not e!379074))))

(declare-fun acc!681 () List!12668)

(declare-fun noDuplicate!458 (List!12668) Bool)

(assert (=> b!659716 (= res!427959 (noDuplicate!458 acc!681))))

(declare-fun b!659717 () Bool)

(declare-fun res!427951 () Bool)

(assert (=> b!659717 (=> (not res!427951) (not e!379074))))

(assert (=> b!659717 (= res!427951 (noDuplicate!458 Nil!12665))))

(declare-fun b!659718 () Bool)

(declare-fun res!427960 () Bool)

(assert (=> b!659718 (=> (not res!427960) (not e!379074))))

(assert (=> b!659718 (= res!427960 (not (contains!3211 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659719 () Bool)

(declare-fun e!379078 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!659719 (= e!379078 (contains!3211 acc!681 k0!2843))))

(declare-fun b!659720 () Bool)

(declare-fun res!427956 () Bool)

(assert (=> b!659720 (=> (not res!427956) (not e!379074))))

(declare-datatypes ((array!38768 0))(
  ( (array!38769 (arr!18574 (Array (_ BitVec 32) (_ BitVec 64))) (size!18938 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38768)

(assert (=> b!659720 (= res!427956 (bvsle #b00000000000000000000000000000000 (size!18938 a!3626)))))

(declare-fun b!659721 () Bool)

(declare-fun e!379073 () Bool)

(assert (=> b!659721 (= e!379073 (not (contains!3211 acc!681 k0!2843)))))

(declare-fun res!427961 () Bool)

(assert (=> start!59750 (=> (not res!427961) (not e!379074))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59750 (= res!427961 (and (bvslt (size!18938 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18938 a!3626))))))

(assert (=> start!59750 e!379074))

(assert (=> start!59750 true))

(declare-fun array_inv!14348 (array!38768) Bool)

(assert (=> start!59750 (array_inv!14348 a!3626)))

(declare-fun b!659715 () Bool)

(declare-fun res!427958 () Bool)

(assert (=> b!659715 (=> (not res!427958) (not e!379074))))

(declare-fun e!379077 () Bool)

(assert (=> b!659715 (= res!427958 e!379077)))

(declare-fun res!427952 () Bool)

(assert (=> b!659715 (=> res!427952 e!379077)))

(assert (=> b!659715 (= res!427952 e!379078)))

(declare-fun res!427953 () Bool)

(assert (=> b!659715 (=> (not res!427953) (not e!379078))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659715 (= res!427953 (bvsgt from!3004 i!1382))))

(declare-fun b!659722 () Bool)

(declare-fun res!427955 () Bool)

(assert (=> b!659722 (=> (not res!427955) (not e!379074))))

(assert (=> b!659722 (= res!427955 (not (contains!3211 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659723 () Bool)

(assert (=> b!659723 (= e!379077 e!379073)))

(declare-fun res!427957 () Bool)

(assert (=> b!659723 (=> (not res!427957) (not e!379073))))

(assert (=> b!659723 (= res!427957 (bvsle from!3004 i!1382))))

(assert (= (and start!59750 res!427961) b!659716))

(assert (= (and b!659716 res!427959) b!659722))

(assert (= (and b!659722 res!427955) b!659718))

(assert (= (and b!659718 res!427960) b!659715))

(assert (= (and b!659715 res!427953) b!659719))

(assert (= (and b!659715 (not res!427952)) b!659723))

(assert (= (and b!659723 res!427957) b!659721))

(assert (= (and b!659715 res!427958) b!659720))

(assert (= (and b!659720 res!427956) b!659717))

(assert (= (and b!659717 res!427951) b!659714))

(assert (= (and b!659714 (not res!427954)) b!659713))

(declare-fun m!632659 () Bool)

(assert (=> b!659717 m!632659))

(declare-fun m!632661 () Bool)

(assert (=> b!659719 m!632661))

(assert (=> b!659721 m!632661))

(declare-fun m!632663 () Bool)

(assert (=> b!659714 m!632663))

(declare-fun m!632665 () Bool)

(assert (=> b!659722 m!632665))

(declare-fun m!632667 () Bool)

(assert (=> b!659716 m!632667))

(declare-fun m!632669 () Bool)

(assert (=> b!659718 m!632669))

(declare-fun m!632671 () Bool)

(assert (=> b!659713 m!632671))

(declare-fun m!632673 () Bool)

(assert (=> start!59750 m!632673))

(check-sat (not b!659716) (not b!659714) (not b!659719) (not b!659717) (not b!659713) (not b!659718) (not b!659721) (not b!659722) (not start!59750))
(check-sat)
(get-model)

(declare-fun d!93039 () Bool)

(declare-fun lt!308667 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!259 (List!12668) (InoxSet (_ BitVec 64)))

(assert (=> d!93039 (= lt!308667 (select (content!259 Nil!12665) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!379101 () Bool)

(assert (=> d!93039 (= lt!308667 e!379101)))

(declare-fun res!427999 () Bool)

(assert (=> d!93039 (=> (not res!427999) (not e!379101))))

(get-info :version)

(assert (=> d!93039 (= res!427999 ((_ is Cons!12664) Nil!12665))))

(assert (=> d!93039 (= (contains!3211 Nil!12665 #b0000000000000000000000000000000000000000000000000000000000000000) lt!308667)))

(declare-fun b!659761 () Bool)

(declare-fun e!379102 () Bool)

(assert (=> b!659761 (= e!379101 e!379102)))

(declare-fun res!428000 () Bool)

(assert (=> b!659761 (=> res!428000 e!379102)))

(assert (=> b!659761 (= res!428000 (= (h!13709 Nil!12665) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659762 () Bool)

(assert (=> b!659762 (= e!379102 (contains!3211 (t!18904 Nil!12665) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93039 res!427999) b!659761))

(assert (= (and b!659761 (not res!428000)) b!659762))

(declare-fun m!632691 () Bool)

(assert (=> d!93039 m!632691))

(declare-fun m!632693 () Bool)

(assert (=> d!93039 m!632693))

(declare-fun m!632695 () Bool)

(assert (=> b!659762 m!632695))

(assert (=> b!659714 d!93039))

(declare-fun d!93041 () Bool)

(declare-fun lt!308668 () Bool)

(assert (=> d!93041 (= lt!308668 (select (content!259 acc!681) k0!2843))))

(declare-fun e!379103 () Bool)

(assert (=> d!93041 (= lt!308668 e!379103)))

(declare-fun res!428001 () Bool)

(assert (=> d!93041 (=> (not res!428001) (not e!379103))))

(assert (=> d!93041 (= res!428001 ((_ is Cons!12664) acc!681))))

(assert (=> d!93041 (= (contains!3211 acc!681 k0!2843) lt!308668)))

(declare-fun b!659763 () Bool)

(declare-fun e!379104 () Bool)

(assert (=> b!659763 (= e!379103 e!379104)))

(declare-fun res!428002 () Bool)

(assert (=> b!659763 (=> res!428002 e!379104)))

(assert (=> b!659763 (= res!428002 (= (h!13709 acc!681) k0!2843))))

(declare-fun b!659764 () Bool)

(assert (=> b!659764 (= e!379104 (contains!3211 (t!18904 acc!681) k0!2843))))

(assert (= (and d!93041 res!428001) b!659763))

(assert (= (and b!659763 (not res!428002)) b!659764))

(declare-fun m!632697 () Bool)

(assert (=> d!93041 m!632697))

(declare-fun m!632699 () Bool)

(assert (=> d!93041 m!632699))

(declare-fun m!632701 () Bool)

(assert (=> b!659764 m!632701))

(assert (=> b!659719 d!93041))

(declare-fun d!93043 () Bool)

(assert (=> d!93043 (= (array_inv!14348 a!3626) (bvsge (size!18938 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!59750 d!93043))

(declare-fun d!93045 () Bool)

(declare-fun res!428009 () Bool)

(declare-fun e!379111 () Bool)

(assert (=> d!93045 (=> res!428009 e!379111)))

(assert (=> d!93045 (= res!428009 ((_ is Nil!12665) acc!681))))

(assert (=> d!93045 (= (noDuplicate!458 acc!681) e!379111)))

(declare-fun b!659771 () Bool)

(declare-fun e!379112 () Bool)

(assert (=> b!659771 (= e!379111 e!379112)))

(declare-fun res!428010 () Bool)

(assert (=> b!659771 (=> (not res!428010) (not e!379112))))

(assert (=> b!659771 (= res!428010 (not (contains!3211 (t!18904 acc!681) (h!13709 acc!681))))))

(declare-fun b!659772 () Bool)

(assert (=> b!659772 (= e!379112 (noDuplicate!458 (t!18904 acc!681)))))

(assert (= (and d!93045 (not res!428009)) b!659771))

(assert (= (and b!659771 res!428010) b!659772))

(declare-fun m!632703 () Bool)

(assert (=> b!659771 m!632703))

(declare-fun m!632705 () Bool)

(assert (=> b!659772 m!632705))

(assert (=> b!659716 d!93045))

(assert (=> b!659721 d!93041))

(declare-fun d!93051 () Bool)

(declare-fun lt!308671 () Bool)

(assert (=> d!93051 (= lt!308671 (select (content!259 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!379115 () Bool)

(assert (=> d!93051 (= lt!308671 e!379115)))

(declare-fun res!428013 () Bool)

(assert (=> d!93051 (=> (not res!428013) (not e!379115))))

(assert (=> d!93051 (= res!428013 ((_ is Cons!12664) acc!681))))

(assert (=> d!93051 (= (contains!3211 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!308671)))

(declare-fun b!659775 () Bool)

(declare-fun e!379116 () Bool)

(assert (=> b!659775 (= e!379115 e!379116)))

(declare-fun res!428014 () Bool)

(assert (=> b!659775 (=> res!428014 e!379116)))

(assert (=> b!659775 (= res!428014 (= (h!13709 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659776 () Bool)

(assert (=> b!659776 (= e!379116 (contains!3211 (t!18904 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93051 res!428013) b!659775))

(assert (= (and b!659775 (not res!428014)) b!659776))

(assert (=> d!93051 m!632697))

(declare-fun m!632707 () Bool)

(assert (=> d!93051 m!632707))

(declare-fun m!632709 () Bool)

(assert (=> b!659776 m!632709))

(assert (=> b!659722 d!93051))

(declare-fun d!93053 () Bool)

(declare-fun res!428017 () Bool)

(declare-fun e!379119 () Bool)

(assert (=> d!93053 (=> res!428017 e!379119)))

(assert (=> d!93053 (= res!428017 ((_ is Nil!12665) Nil!12665))))

(assert (=> d!93053 (= (noDuplicate!458 Nil!12665) e!379119)))

(declare-fun b!659779 () Bool)

(declare-fun e!379120 () Bool)

(assert (=> b!659779 (= e!379119 e!379120)))

(declare-fun res!428018 () Bool)

(assert (=> b!659779 (=> (not res!428018) (not e!379120))))

(assert (=> b!659779 (= res!428018 (not (contains!3211 (t!18904 Nil!12665) (h!13709 Nil!12665))))))

(declare-fun b!659780 () Bool)

(assert (=> b!659780 (= e!379120 (noDuplicate!458 (t!18904 Nil!12665)))))

(assert (= (and d!93053 (not res!428017)) b!659779))

(assert (= (and b!659779 res!428018) b!659780))

(declare-fun m!632717 () Bool)

(assert (=> b!659779 m!632717))

(declare-fun m!632719 () Bool)

(assert (=> b!659780 m!632719))

(assert (=> b!659717 d!93053))

(declare-fun d!93057 () Bool)

(declare-fun lt!308675 () Bool)

(assert (=> d!93057 (= lt!308675 (select (content!259 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!379123 () Bool)

(assert (=> d!93057 (= lt!308675 e!379123)))

(declare-fun res!428021 () Bool)

(assert (=> d!93057 (=> (not res!428021) (not e!379123))))

(assert (=> d!93057 (= res!428021 ((_ is Cons!12664) acc!681))))

(assert (=> d!93057 (= (contains!3211 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308675)))

(declare-fun b!659783 () Bool)

(declare-fun e!379124 () Bool)

(assert (=> b!659783 (= e!379123 e!379124)))

(declare-fun res!428022 () Bool)

(assert (=> b!659783 (=> res!428022 e!379124)))

(assert (=> b!659783 (= res!428022 (= (h!13709 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659784 () Bool)

(assert (=> b!659784 (= e!379124 (contains!3211 (t!18904 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93057 res!428021) b!659783))

(assert (= (and b!659783 (not res!428022)) b!659784))

(assert (=> d!93057 m!632697))

(declare-fun m!632721 () Bool)

(assert (=> d!93057 m!632721))

(declare-fun m!632723 () Bool)

(assert (=> b!659784 m!632723))

(assert (=> b!659718 d!93057))

(declare-fun d!93059 () Bool)

(declare-fun lt!308676 () Bool)

(assert (=> d!93059 (= lt!308676 (select (content!259 Nil!12665) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!379131 () Bool)

(assert (=> d!93059 (= lt!308676 e!379131)))

(declare-fun res!428029 () Bool)

(assert (=> d!93059 (=> (not res!428029) (not e!379131))))

(assert (=> d!93059 (= res!428029 ((_ is Cons!12664) Nil!12665))))

(assert (=> d!93059 (= (contains!3211 Nil!12665 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308676)))

(declare-fun b!659791 () Bool)

(declare-fun e!379132 () Bool)

(assert (=> b!659791 (= e!379131 e!379132)))

(declare-fun res!428030 () Bool)

(assert (=> b!659791 (=> res!428030 e!379132)))

(assert (=> b!659791 (= res!428030 (= (h!13709 Nil!12665) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659792 () Bool)

(assert (=> b!659792 (= e!379132 (contains!3211 (t!18904 Nil!12665) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93059 res!428029) b!659791))

(assert (= (and b!659791 (not res!428030)) b!659792))

(assert (=> d!93059 m!632691))

(declare-fun m!632725 () Bool)

(assert (=> d!93059 m!632725))

(declare-fun m!632727 () Bool)

(assert (=> b!659792 m!632727))

(assert (=> b!659713 d!93059))

(check-sat (not b!659764) (not b!659776) (not d!93039) (not b!659771) (not b!659784) (not d!93051) (not d!93041) (not b!659772) (not d!93057) (not b!659792) (not b!659779) (not d!93059) (not b!659762) (not b!659780))
(check-sat)
