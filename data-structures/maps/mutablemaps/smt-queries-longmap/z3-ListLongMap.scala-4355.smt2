; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60176 () Bool)

(assert start!60176)

(declare-fun b!671653 () Bool)

(declare-fun e!383782 () Bool)

(declare-fun e!383791 () Bool)

(assert (=> b!671653 (= e!383782 e!383791)))

(declare-fun res!438496 () Bool)

(assert (=> b!671653 (=> (not res!438496) (not e!383791))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671653 (= res!438496 (bvsle from!3004 i!1382))))

(declare-fun b!671654 () Bool)

(declare-fun res!438497 () Bool)

(declare-fun e!383789 () Bool)

(assert (=> b!671654 (=> (not res!438497) (not e!383789))))

(declare-datatypes ((array!39179 0))(
  ( (array!39180 (arr!18778 (Array (_ BitVec 32) (_ BitVec 64))) (size!19142 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39179)

(assert (=> b!671654 (= res!438497 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19142 a!3626))))))

(declare-fun b!671655 () Bool)

(declare-fun res!438515 () Bool)

(declare-fun e!383784 () Bool)

(assert (=> b!671655 (=> (not res!438515) (not e!383784))))

(declare-fun e!383785 () Bool)

(assert (=> b!671655 (= res!438515 e!383785)))

(declare-fun res!438509 () Bool)

(assert (=> b!671655 (=> res!438509 e!383785)))

(declare-fun e!383788 () Bool)

(assert (=> b!671655 (= res!438509 e!383788)))

(declare-fun res!438501 () Bool)

(assert (=> b!671655 (=> (not res!438501) (not e!383788))))

(assert (=> b!671655 (= res!438501 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671656 () Bool)

(declare-fun e!383781 () Bool)

(declare-datatypes ((List!12872 0))(
  ( (Nil!12869) (Cons!12868 (h!13913 (_ BitVec 64)) (t!19108 List!12872)) )
))
(declare-fun acc!681 () List!12872)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3415 (List!12872 (_ BitVec 64)) Bool)

(assert (=> b!671656 (= e!383781 (contains!3415 acc!681 k0!2843))))

(declare-fun b!671657 () Bool)

(declare-fun e!383786 () Bool)

(assert (=> b!671657 (= e!383789 e!383786)))

(declare-fun res!438513 () Bool)

(assert (=> b!671657 (=> (not res!438513) (not e!383786))))

(assert (=> b!671657 (= res!438513 (not (= (select (arr!18778 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!23576 0))(
  ( (Unit!23577) )
))
(declare-fun lt!312164 () Unit!23576)

(declare-fun e!383787 () Unit!23576)

(assert (=> b!671657 (= lt!312164 e!383787)))

(declare-fun c!76946 () Bool)

(assert (=> b!671657 (= c!76946 (= (select (arr!18778 a!3626) from!3004) k0!2843))))

(declare-fun b!671658 () Bool)

(declare-fun lt!312165 () List!12872)

(assert (=> b!671658 (= e!383788 (contains!3415 lt!312165 k0!2843))))

(declare-fun b!671659 () Bool)

(declare-fun res!438498 () Bool)

(assert (=> b!671659 (=> (not res!438498) (not e!383789))))

(declare-fun arrayContainsKey!0 (array!39179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671659 (= res!438498 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671660 () Bool)

(declare-fun res!438495 () Bool)

(assert (=> b!671660 (=> (not res!438495) (not e!383784))))

(assert (=> b!671660 (= res!438495 (not (contains!3415 lt!312165 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671661 () Bool)

(declare-fun e!383783 () Bool)

(assert (=> b!671661 (= e!383785 e!383783)))

(declare-fun res!438517 () Bool)

(assert (=> b!671661 (=> (not res!438517) (not e!383783))))

(assert (=> b!671661 (= res!438517 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671662 () Bool)

(declare-fun res!438500 () Bool)

(assert (=> b!671662 (=> (not res!438500) (not e!383789))))

(declare-fun noDuplicate!662 (List!12872) Bool)

(assert (=> b!671662 (= res!438500 (noDuplicate!662 acc!681))))

(declare-fun b!671663 () Bool)

(declare-fun res!438518 () Bool)

(assert (=> b!671663 (=> (not res!438518) (not e!383789))))

(assert (=> b!671663 (= res!438518 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19142 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671664 () Bool)

(declare-fun res!438504 () Bool)

(assert (=> b!671664 (=> (not res!438504) (not e!383789))))

(assert (=> b!671664 (= res!438504 (not (contains!3415 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671665 () Bool)

(declare-fun res!438499 () Bool)

(assert (=> b!671665 (=> (not res!438499) (not e!383789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671665 (= res!438499 (validKeyInArray!0 (select (arr!18778 a!3626) from!3004)))))

(declare-fun b!671666 () Bool)

(declare-fun res!438502 () Bool)

(assert (=> b!671666 (=> (not res!438502) (not e!383789))))

(assert (=> b!671666 (= res!438502 e!383782)))

(declare-fun res!438514 () Bool)

(assert (=> b!671666 (=> res!438514 e!383782)))

(assert (=> b!671666 (= res!438514 e!383781)))

(declare-fun res!438516 () Bool)

(assert (=> b!671666 (=> (not res!438516) (not e!383781))))

(assert (=> b!671666 (= res!438516 (bvsgt from!3004 i!1382))))

(declare-fun b!671667 () Bool)

(assert (=> b!671667 (= e!383784 false)))

(declare-fun lt!312162 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39179 (_ BitVec 32) List!12872) Bool)

(assert (=> b!671667 (= lt!312162 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312165))))

(declare-fun b!671668 () Bool)

(declare-fun Unit!23578 () Unit!23576)

(assert (=> b!671668 (= e!383787 Unit!23578)))

(assert (=> b!671668 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312163 () Unit!23576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39179 (_ BitVec 64) (_ BitVec 32)) Unit!23576)

(assert (=> b!671668 (= lt!312163 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!671668 false))

(declare-fun b!671669 () Bool)

(declare-fun Unit!23579 () Unit!23576)

(assert (=> b!671669 (= e!383787 Unit!23579)))

(declare-fun b!671670 () Bool)

(declare-fun res!438508 () Bool)

(assert (=> b!671670 (=> (not res!438508) (not e!383789))))

(assert (=> b!671670 (= res!438508 (validKeyInArray!0 k0!2843))))

(declare-fun b!671671 () Bool)

(assert (=> b!671671 (= e!383783 (not (contains!3415 lt!312165 k0!2843)))))

(declare-fun b!671672 () Bool)

(assert (=> b!671672 (= e!383791 (not (contains!3415 acc!681 k0!2843)))))

(declare-fun b!671673 () Bool)

(declare-fun res!438511 () Bool)

(assert (=> b!671673 (=> (not res!438511) (not e!383789))))

(assert (=> b!671673 (= res!438511 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671674 () Bool)

(assert (=> b!671674 (= e!383786 e!383784)))

(declare-fun res!438510 () Bool)

(assert (=> b!671674 (=> (not res!438510) (not e!383784))))

(assert (=> b!671674 (= res!438510 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!263 (List!12872 (_ BitVec 64)) List!12872)

(assert (=> b!671674 (= lt!312165 ($colon$colon!263 acc!681 (select (arr!18778 a!3626) from!3004)))))

(declare-fun b!671675 () Bool)

(declare-fun res!438512 () Bool)

(assert (=> b!671675 (=> (not res!438512) (not e!383789))))

(assert (=> b!671675 (= res!438512 (not (contains!3415 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671676 () Bool)

(declare-fun res!438503 () Bool)

(assert (=> b!671676 (=> (not res!438503) (not e!383784))))

(assert (=> b!671676 (= res!438503 (noDuplicate!662 lt!312165))))

(declare-fun res!438507 () Bool)

(assert (=> start!60176 (=> (not res!438507) (not e!383789))))

(assert (=> start!60176 (= res!438507 (and (bvslt (size!19142 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19142 a!3626))))))

(assert (=> start!60176 e!383789))

(assert (=> start!60176 true))

(declare-fun array_inv!14552 (array!39179) Bool)

(assert (=> start!60176 (array_inv!14552 a!3626)))

(declare-fun b!671677 () Bool)

(declare-fun res!438505 () Bool)

(assert (=> b!671677 (=> (not res!438505) (not e!383784))))

(assert (=> b!671677 (= res!438505 (not (contains!3415 lt!312165 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671678 () Bool)

(declare-fun res!438506 () Bool)

(assert (=> b!671678 (=> (not res!438506) (not e!383789))))

(assert (=> b!671678 (= res!438506 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12869))))

(assert (= (and start!60176 res!438507) b!671662))

(assert (= (and b!671662 res!438500) b!671675))

(assert (= (and b!671675 res!438512) b!671664))

(assert (= (and b!671664 res!438504) b!671666))

(assert (= (and b!671666 res!438516) b!671656))

(assert (= (and b!671666 (not res!438514)) b!671653))

(assert (= (and b!671653 res!438496) b!671672))

(assert (= (and b!671666 res!438502) b!671678))

(assert (= (and b!671678 res!438506) b!671673))

(assert (= (and b!671673 res!438511) b!671654))

(assert (= (and b!671654 res!438497) b!671670))

(assert (= (and b!671670 res!438508) b!671659))

(assert (= (and b!671659 res!438498) b!671663))

(assert (= (and b!671663 res!438518) b!671665))

(assert (= (and b!671665 res!438499) b!671657))

(assert (= (and b!671657 c!76946) b!671668))

(assert (= (and b!671657 (not c!76946)) b!671669))

(assert (= (and b!671657 res!438513) b!671674))

(assert (= (and b!671674 res!438510) b!671676))

(assert (= (and b!671676 res!438503) b!671660))

(assert (= (and b!671660 res!438495) b!671677))

(assert (= (and b!671677 res!438505) b!671655))

(assert (= (and b!671655 res!438501) b!671658))

(assert (= (and b!671655 (not res!438509)) b!671661))

(assert (= (and b!671661 res!438517) b!671671))

(assert (= (and b!671655 res!438515) b!671667))

(declare-fun m!640979 () Bool)

(assert (=> b!671667 m!640979))

(declare-fun m!640981 () Bool)

(assert (=> b!671672 m!640981))

(declare-fun m!640983 () Bool)

(assert (=> b!671675 m!640983))

(declare-fun m!640985 () Bool)

(assert (=> b!671677 m!640985))

(declare-fun m!640987 () Bool)

(assert (=> b!671657 m!640987))

(declare-fun m!640989 () Bool)

(assert (=> b!671673 m!640989))

(declare-fun m!640991 () Bool)

(assert (=> b!671676 m!640991))

(declare-fun m!640993 () Bool)

(assert (=> b!671659 m!640993))

(declare-fun m!640995 () Bool)

(assert (=> b!671678 m!640995))

(declare-fun m!640997 () Bool)

(assert (=> b!671658 m!640997))

(assert (=> b!671665 m!640987))

(assert (=> b!671665 m!640987))

(declare-fun m!640999 () Bool)

(assert (=> b!671665 m!640999))

(declare-fun m!641001 () Bool)

(assert (=> b!671660 m!641001))

(assert (=> b!671674 m!640987))

(assert (=> b!671674 m!640987))

(declare-fun m!641003 () Bool)

(assert (=> b!671674 m!641003))

(declare-fun m!641005 () Bool)

(assert (=> b!671670 m!641005))

(assert (=> b!671656 m!640981))

(declare-fun m!641007 () Bool)

(assert (=> b!671664 m!641007))

(declare-fun m!641009 () Bool)

(assert (=> b!671662 m!641009))

(declare-fun m!641011 () Bool)

(assert (=> start!60176 m!641011))

(assert (=> b!671671 m!640997))

(declare-fun m!641013 () Bool)

(assert (=> b!671668 m!641013))

(declare-fun m!641015 () Bool)

(assert (=> b!671668 m!641015))

(check-sat (not b!671667) (not b!671678) (not b!671660) (not b!671662) (not b!671677) (not b!671664) (not b!671673) (not b!671656) (not b!671672) (not b!671665) (not b!671658) (not b!671674) (not b!671675) (not b!671676) (not b!671668) (not b!671671) (not start!60176) (not b!671670) (not b!671659))
(check-sat)
