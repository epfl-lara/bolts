; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59908 () Bool)

(assert start!59908)

(declare-fun b!662681 () Bool)

(declare-datatypes ((Unit!23022 0))(
  ( (Unit!23023) )
))
(declare-fun e!380352 () Unit!23022)

(declare-fun Unit!23024 () Unit!23022)

(assert (=> b!662681 (= e!380352 Unit!23024)))

(declare-fun b!662682 () Bool)

(declare-fun res!430818 () Bool)

(declare-fun e!380353 () Bool)

(assert (=> b!662682 (=> (not res!430818) (not e!380353))))

(declare-datatypes ((List!12738 0))(
  ( (Nil!12735) (Cons!12734 (h!13779 (_ BitVec 64)) (t!18974 List!12738)) )
))
(declare-fun acc!681 () List!12738)

(declare-fun contains!3281 (List!12738 (_ BitVec 64)) Bool)

(assert (=> b!662682 (= res!430818 (not (contains!3281 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662683 () Bool)

(declare-fun e!380359 () Bool)

(assert (=> b!662683 (= e!380353 (not e!380359))))

(declare-fun res!430816 () Bool)

(assert (=> b!662683 (=> res!430816 e!380359)))

(declare-datatypes ((array!38911 0))(
  ( (array!38912 (arr!18644 (Array (_ BitVec 32) (_ BitVec 64))) (size!19008 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38911)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662683 (= res!430816 (not (validKeyInArray!0 (select (arr!18644 a!3626) from!3004))))))

(declare-fun lt!309081 () Unit!23022)

(assert (=> b!662683 (= lt!309081 e!380352)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun c!76301 () Bool)

(declare-fun arrayContainsKey!0 (array!38911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662683 (= c!76301 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662683 (arrayContainsKey!0 (array!38912 (store (arr!18644 a!3626) i!1382 k!2843) (size!19008 a!3626)) k!2843 from!3004)))

(declare-fun b!662684 () Bool)

(declare-fun res!430817 () Bool)

(assert (=> b!662684 (=> (not res!430817) (not e!380353))))

(assert (=> b!662684 (= res!430817 (validKeyInArray!0 k!2843))))

(declare-fun b!662685 () Bool)

(declare-fun res!430825 () Bool)

(declare-fun e!380356 () Bool)

(assert (=> b!662685 (=> res!430825 e!380356)))

(declare-fun lt!309076 () List!12738)

(declare-fun noDuplicate!528 (List!12738) Bool)

(assert (=> b!662685 (= res!430825 (not (noDuplicate!528 lt!309076)))))

(declare-fun b!662686 () Bool)

(declare-fun res!430830 () Bool)

(assert (=> b!662686 (=> (not res!430830) (not e!380353))))

(assert (=> b!662686 (= res!430830 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19008 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662687 () Bool)

(declare-fun res!430821 () Bool)

(assert (=> b!662687 (=> res!430821 e!380356)))

(assert (=> b!662687 (= res!430821 (contains!3281 lt!309076 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662688 () Bool)

(declare-fun res!430828 () Bool)

(assert (=> b!662688 (=> res!430828 e!380356)))

(declare-fun subseq!19 (List!12738 List!12738) Bool)

(assert (=> b!662688 (= res!430828 (not (subseq!19 acc!681 lt!309076)))))

(declare-fun res!430827 () Bool)

(assert (=> start!59908 (=> (not res!430827) (not e!380353))))

(assert (=> start!59908 (= res!430827 (and (bvslt (size!19008 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19008 a!3626))))))

(assert (=> start!59908 e!380353))

(assert (=> start!59908 true))

(declare-fun array_inv!14418 (array!38911) Bool)

(assert (=> start!59908 (array_inv!14418 a!3626)))

(declare-fun b!662689 () Bool)

(declare-fun Unit!23025 () Unit!23022)

(assert (=> b!662689 (= e!380352 Unit!23025)))

(declare-fun lt!309077 () Unit!23022)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38911 (_ BitVec 64) (_ BitVec 32)) Unit!23022)

(assert (=> b!662689 (= lt!309077 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662689 false))

(declare-fun b!662690 () Bool)

(declare-fun e!380358 () Bool)

(declare-fun e!380355 () Bool)

(assert (=> b!662690 (= e!380358 e!380355)))

(declare-fun res!430826 () Bool)

(assert (=> b!662690 (=> (not res!430826) (not e!380355))))

(assert (=> b!662690 (= res!430826 (bvsle from!3004 i!1382))))

(declare-fun b!662691 () Bool)

(declare-fun e!380357 () Bool)

(assert (=> b!662691 (= e!380357 (contains!3281 acc!681 k!2843))))

(declare-fun b!662692 () Bool)

(declare-fun res!430813 () Bool)

(assert (=> b!662692 (=> res!430813 e!380356)))

(assert (=> b!662692 (= res!430813 (contains!3281 lt!309076 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662693 () Bool)

(assert (=> b!662693 (= e!380355 (not (contains!3281 acc!681 k!2843)))))

(declare-fun b!662694 () Bool)

(declare-fun res!430829 () Bool)

(assert (=> b!662694 (=> (not res!430829) (not e!380353))))

(assert (=> b!662694 (= res!430829 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19008 a!3626))))))

(declare-fun b!662695 () Bool)

(assert (=> b!662695 (= e!380356 true)))

(declare-fun lt!309080 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38911 (_ BitVec 32) List!12738) Bool)

(assert (=> b!662695 (= lt!309080 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309076))))

(declare-fun lt!309078 () Unit!23022)

(declare-fun noDuplicateSubseq!19 (List!12738 List!12738) Unit!23022)

(assert (=> b!662695 (= lt!309078 (noDuplicateSubseq!19 acc!681 lt!309076))))

(declare-fun b!662696 () Bool)

(declare-fun res!430814 () Bool)

(assert (=> b!662696 (=> (not res!430814) (not e!380353))))

(assert (=> b!662696 (= res!430814 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662697 () Bool)

(declare-fun res!430815 () Bool)

(assert (=> b!662697 (=> (not res!430815) (not e!380353))))

(assert (=> b!662697 (= res!430815 e!380358)))

(declare-fun res!430831 () Bool)

(assert (=> b!662697 (=> res!430831 e!380358)))

(assert (=> b!662697 (= res!430831 e!380357)))

(declare-fun res!430820 () Bool)

(assert (=> b!662697 (=> (not res!430820) (not e!380357))))

(assert (=> b!662697 (= res!430820 (bvsgt from!3004 i!1382))))

(declare-fun b!662698 () Bool)

(assert (=> b!662698 (= e!380359 e!380356)))

(declare-fun res!430832 () Bool)

(assert (=> b!662698 (=> res!430832 e!380356)))

(assert (=> b!662698 (= res!430832 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!150 (List!12738 (_ BitVec 64)) List!12738)

(assert (=> b!662698 (= lt!309076 ($colon$colon!150 acc!681 (select (arr!18644 a!3626) from!3004)))))

(assert (=> b!662698 (subseq!19 acc!681 acc!681)))

(declare-fun lt!309079 () Unit!23022)

(declare-fun lemmaListSubSeqRefl!0 (List!12738) Unit!23022)

(assert (=> b!662698 (= lt!309079 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662699 () Bool)

(declare-fun res!430819 () Bool)

(assert (=> b!662699 (=> (not res!430819) (not e!380353))))

(assert (=> b!662699 (= res!430819 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12735))))

(declare-fun b!662700 () Bool)

(declare-fun res!430822 () Bool)

(assert (=> b!662700 (=> (not res!430822) (not e!380353))))

(assert (=> b!662700 (= res!430822 (not (contains!3281 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662701 () Bool)

(declare-fun res!430823 () Bool)

(assert (=> b!662701 (=> (not res!430823) (not e!380353))))

(assert (=> b!662701 (= res!430823 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662702 () Bool)

(declare-fun res!430824 () Bool)

(assert (=> b!662702 (=> (not res!430824) (not e!380353))))

(assert (=> b!662702 (= res!430824 (noDuplicate!528 acc!681))))

(assert (= (and start!59908 res!430827) b!662702))

(assert (= (and b!662702 res!430824) b!662682))

(assert (= (and b!662682 res!430818) b!662700))

(assert (= (and b!662700 res!430822) b!662697))

(assert (= (and b!662697 res!430820) b!662691))

(assert (= (and b!662697 (not res!430831)) b!662690))

(assert (= (and b!662690 res!430826) b!662693))

(assert (= (and b!662697 res!430815) b!662699))

(assert (= (and b!662699 res!430819) b!662701))

(assert (= (and b!662701 res!430823) b!662694))

(assert (= (and b!662694 res!430829) b!662684))

(assert (= (and b!662684 res!430817) b!662696))

(assert (= (and b!662696 res!430814) b!662686))

(assert (= (and b!662686 res!430830) b!662683))

(assert (= (and b!662683 c!76301) b!662689))

(assert (= (and b!662683 (not c!76301)) b!662681))

(assert (= (and b!662683 (not res!430816)) b!662698))

(assert (= (and b!662698 (not res!430832)) b!662685))

(assert (= (and b!662685 (not res!430825)) b!662692))

(assert (= (and b!662692 (not res!430813)) b!662687))

(assert (= (and b!662687 (not res!430821)) b!662688))

(assert (= (and b!662688 (not res!430828)) b!662695))

(declare-fun m!634467 () Bool)

(assert (=> b!662692 m!634467))

(declare-fun m!634469 () Bool)

(assert (=> b!662700 m!634469))

(declare-fun m!634471 () Bool)

(assert (=> b!662688 m!634471))

(declare-fun m!634473 () Bool)

(assert (=> b!662696 m!634473))

(declare-fun m!634475 () Bool)

(assert (=> b!662701 m!634475))

(declare-fun m!634477 () Bool)

(assert (=> b!662695 m!634477))

(declare-fun m!634479 () Bool)

(assert (=> b!662695 m!634479))

(declare-fun m!634481 () Bool)

(assert (=> start!59908 m!634481))

(declare-fun m!634483 () Bool)

(assert (=> b!662691 m!634483))

(declare-fun m!634485 () Bool)

(assert (=> b!662682 m!634485))

(declare-fun m!634487 () Bool)

(assert (=> b!662684 m!634487))

(declare-fun m!634489 () Bool)

(assert (=> b!662685 m!634489))

(declare-fun m!634491 () Bool)

(assert (=> b!662702 m!634491))

(declare-fun m!634493 () Bool)

(assert (=> b!662687 m!634493))

(declare-fun m!634495 () Bool)

(assert (=> b!662699 m!634495))

(assert (=> b!662693 m!634483))

(declare-fun m!634497 () Bool)

(assert (=> b!662698 m!634497))

(assert (=> b!662698 m!634497))

(declare-fun m!634499 () Bool)

(assert (=> b!662698 m!634499))

(declare-fun m!634501 () Bool)

(assert (=> b!662698 m!634501))

(declare-fun m!634503 () Bool)

(assert (=> b!662698 m!634503))

(declare-fun m!634505 () Bool)

(assert (=> b!662689 m!634505))

(assert (=> b!662683 m!634497))

(declare-fun m!634507 () Bool)

(assert (=> b!662683 m!634507))

(declare-fun m!634509 () Bool)

(assert (=> b!662683 m!634509))

(assert (=> b!662683 m!634497))

(declare-fun m!634511 () Bool)

(assert (=> b!662683 m!634511))

(declare-fun m!634513 () Bool)

(assert (=> b!662683 m!634513))

(push 1)

