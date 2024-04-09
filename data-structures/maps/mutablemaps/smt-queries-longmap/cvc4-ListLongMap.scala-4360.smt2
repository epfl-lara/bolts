; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60208 () Bool)

(assert start!60208)

(declare-fun b!672901 () Bool)

(declare-fun res!439647 () Bool)

(declare-fun e!384319 () Bool)

(assert (=> b!672901 (=> (not res!439647) (not e!384319))))

(declare-datatypes ((array!39211 0))(
  ( (array!39212 (arr!18794 (Array (_ BitVec 32) (_ BitVec 64))) (size!19158 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39211)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672901 (= res!439647 (validKeyInArray!0 (select (arr!18794 a!3626) from!3004)))))

(declare-fun b!672902 () Bool)

(declare-fun e!384314 () Bool)

(declare-datatypes ((List!12888 0))(
  ( (Nil!12885) (Cons!12884 (h!13929 (_ BitVec 64)) (t!19124 List!12888)) )
))
(declare-fun lt!312354 () List!12888)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3431 (List!12888 (_ BitVec 64)) Bool)

(assert (=> b!672902 (= e!384314 (contains!3431 lt!312354 k!2843))))

(declare-fun b!672903 () Bool)

(declare-datatypes ((Unit!23640 0))(
  ( (Unit!23641) )
))
(declare-fun e!384316 () Unit!23640)

(declare-fun Unit!23642 () Unit!23640)

(assert (=> b!672903 (= e!384316 Unit!23642)))

(declare-fun arrayContainsKey!0 (array!39211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672903 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312356 () Unit!23640)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39211 (_ BitVec 64) (_ BitVec 32)) Unit!23640)

(assert (=> b!672903 (= lt!312356 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672903 false))

(declare-fun b!672904 () Bool)

(declare-fun res!439660 () Bool)

(declare-fun e!384317 () Bool)

(assert (=> b!672904 (=> (not res!439660) (not e!384317))))

(assert (=> b!672904 (= res!439660 (not (contains!3431 lt!312354 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672905 () Bool)

(assert (=> b!672905 (= e!384317 false)))

(declare-fun lt!312355 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39211 (_ BitVec 32) List!12888) Bool)

(assert (=> b!672905 (= lt!312355 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312354))))

(declare-fun b!672906 () Bool)

(declare-fun res!439656 () Bool)

(assert (=> b!672906 (=> (not res!439656) (not e!384317))))

(assert (=> b!672906 (= res!439656 (not (contains!3431 lt!312354 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672907 () Bool)

(declare-fun e!384318 () Bool)

(declare-fun acc!681 () List!12888)

(assert (=> b!672907 (= e!384318 (not (contains!3431 acc!681 k!2843)))))

(declare-fun b!672908 () Bool)

(declare-fun res!439653 () Bool)

(assert (=> b!672908 (=> (not res!439653) (not e!384319))))

(assert (=> b!672908 (= res!439653 (not (contains!3431 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672910 () Bool)

(declare-fun res!439666 () Bool)

(assert (=> b!672910 (=> (not res!439666) (not e!384319))))

(assert (=> b!672910 (= res!439666 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672911 () Bool)

(declare-fun res!439648 () Bool)

(assert (=> b!672911 (=> (not res!439648) (not e!384319))))

(assert (=> b!672911 (= res!439648 (not (contains!3431 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672912 () Bool)

(declare-fun e!384309 () Bool)

(declare-fun e!384311 () Bool)

(assert (=> b!672912 (= e!384309 e!384311)))

(declare-fun res!439649 () Bool)

(assert (=> b!672912 (=> (not res!439649) (not e!384311))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672912 (= res!439649 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672913 () Bool)

(declare-fun res!439654 () Bool)

(assert (=> b!672913 (=> (not res!439654) (not e!384319))))

(assert (=> b!672913 (= res!439654 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672914 () Bool)

(declare-fun e!384313 () Bool)

(assert (=> b!672914 (= e!384313 (contains!3431 acc!681 k!2843))))

(declare-fun b!672915 () Bool)

(declare-fun res!439670 () Bool)

(assert (=> b!672915 (=> (not res!439670) (not e!384319))))

(assert (=> b!672915 (= res!439670 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19158 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672916 () Bool)

(declare-fun e!384315 () Bool)

(assert (=> b!672916 (= e!384315 e!384317)))

(declare-fun res!439651 () Bool)

(assert (=> b!672916 (=> (not res!439651) (not e!384317))))

(assert (=> b!672916 (= res!439651 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!279 (List!12888 (_ BitVec 64)) List!12888)

(assert (=> b!672916 (= lt!312354 ($colon$colon!279 acc!681 (select (arr!18794 a!3626) from!3004)))))

(declare-fun b!672917 () Bool)

(assert (=> b!672917 (= e!384319 e!384315)))

(declare-fun res!439669 () Bool)

(assert (=> b!672917 (=> (not res!439669) (not e!384315))))

(assert (=> b!672917 (= res!439669 (not (= (select (arr!18794 a!3626) from!3004) k!2843)))))

(declare-fun lt!312357 () Unit!23640)

(assert (=> b!672917 (= lt!312357 e!384316)))

(declare-fun c!76994 () Bool)

(assert (=> b!672917 (= c!76994 (= (select (arr!18794 a!3626) from!3004) k!2843))))

(declare-fun b!672918 () Bool)

(declare-fun Unit!23643 () Unit!23640)

(assert (=> b!672918 (= e!384316 Unit!23643)))

(declare-fun b!672919 () Bool)

(declare-fun res!439667 () Bool)

(assert (=> b!672919 (=> (not res!439667) (not e!384319))))

(declare-fun e!384310 () Bool)

(assert (=> b!672919 (= res!439667 e!384310)))

(declare-fun res!439659 () Bool)

(assert (=> b!672919 (=> res!439659 e!384310)))

(assert (=> b!672919 (= res!439659 e!384313)))

(declare-fun res!439661 () Bool)

(assert (=> b!672919 (=> (not res!439661) (not e!384313))))

(assert (=> b!672919 (= res!439661 (bvsgt from!3004 i!1382))))

(declare-fun b!672920 () Bool)

(assert (=> b!672920 (= e!384311 (not (contains!3431 lt!312354 k!2843)))))

(declare-fun b!672921 () Bool)

(declare-fun res!439658 () Bool)

(assert (=> b!672921 (=> (not res!439658) (not e!384317))))

(declare-fun noDuplicate!678 (List!12888) Bool)

(assert (=> b!672921 (= res!439658 (noDuplicate!678 lt!312354))))

(declare-fun b!672909 () Bool)

(declare-fun res!439655 () Bool)

(assert (=> b!672909 (=> (not res!439655) (not e!384319))))

(assert (=> b!672909 (= res!439655 (validKeyInArray!0 k!2843))))

(declare-fun res!439662 () Bool)

(assert (=> start!60208 (=> (not res!439662) (not e!384319))))

(assert (=> start!60208 (= res!439662 (and (bvslt (size!19158 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19158 a!3626))))))

(assert (=> start!60208 e!384319))

(assert (=> start!60208 true))

(declare-fun array_inv!14568 (array!39211) Bool)

(assert (=> start!60208 (array_inv!14568 a!3626)))

(declare-fun b!672922 () Bool)

(declare-fun res!439652 () Bool)

(assert (=> b!672922 (=> (not res!439652) (not e!384319))))

(assert (=> b!672922 (= res!439652 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12885))))

(declare-fun b!672923 () Bool)

(declare-fun res!439668 () Bool)

(assert (=> b!672923 (=> (not res!439668) (not e!384317))))

(assert (=> b!672923 (= res!439668 e!384309)))

(declare-fun res!439665 () Bool)

(assert (=> b!672923 (=> res!439665 e!384309)))

(assert (=> b!672923 (= res!439665 e!384314)))

(declare-fun res!439657 () Bool)

(assert (=> b!672923 (=> (not res!439657) (not e!384314))))

(assert (=> b!672923 (= res!439657 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672924 () Bool)

(declare-fun res!439650 () Bool)

(assert (=> b!672924 (=> (not res!439650) (not e!384319))))

(assert (=> b!672924 (= res!439650 (noDuplicate!678 acc!681))))

(declare-fun b!672925 () Bool)

(assert (=> b!672925 (= e!384310 e!384318)))

(declare-fun res!439663 () Bool)

(assert (=> b!672925 (=> (not res!439663) (not e!384318))))

(assert (=> b!672925 (= res!439663 (bvsle from!3004 i!1382))))

(declare-fun b!672926 () Bool)

(declare-fun res!439664 () Bool)

(assert (=> b!672926 (=> (not res!439664) (not e!384319))))

(assert (=> b!672926 (= res!439664 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19158 a!3626))))))

(assert (= (and start!60208 res!439662) b!672924))

(assert (= (and b!672924 res!439650) b!672908))

(assert (= (and b!672908 res!439653) b!672911))

(assert (= (and b!672911 res!439648) b!672919))

(assert (= (and b!672919 res!439661) b!672914))

(assert (= (and b!672919 (not res!439659)) b!672925))

(assert (= (and b!672925 res!439663) b!672907))

(assert (= (and b!672919 res!439667) b!672922))

(assert (= (and b!672922 res!439652) b!672910))

(assert (= (and b!672910 res!439666) b!672926))

(assert (= (and b!672926 res!439664) b!672909))

(assert (= (and b!672909 res!439655) b!672913))

(assert (= (and b!672913 res!439654) b!672915))

(assert (= (and b!672915 res!439670) b!672901))

(assert (= (and b!672901 res!439647) b!672917))

(assert (= (and b!672917 c!76994) b!672903))

(assert (= (and b!672917 (not c!76994)) b!672918))

(assert (= (and b!672917 res!439669) b!672916))

(assert (= (and b!672916 res!439651) b!672921))

(assert (= (and b!672921 res!439658) b!672904))

(assert (= (and b!672904 res!439660) b!672906))

(assert (= (and b!672906 res!439656) b!672923))

(assert (= (and b!672923 res!439657) b!672902))

(assert (= (and b!672923 (not res!439665)) b!672912))

(assert (= (and b!672912 res!439649) b!672920))

(assert (= (and b!672923 res!439668) b!672905))

(declare-fun m!641587 () Bool)

(assert (=> b!672907 m!641587))

(declare-fun m!641589 () Bool)

(assert (=> b!672904 m!641589))

(declare-fun m!641591 () Bool)

(assert (=> b!672920 m!641591))

(declare-fun m!641593 () Bool)

(assert (=> b!672917 m!641593))

(assert (=> b!672901 m!641593))

(assert (=> b!672901 m!641593))

(declare-fun m!641595 () Bool)

(assert (=> b!672901 m!641595))

(declare-fun m!641597 () Bool)

(assert (=> b!672922 m!641597))

(declare-fun m!641599 () Bool)

(assert (=> b!672905 m!641599))

(assert (=> b!672916 m!641593))

(assert (=> b!672916 m!641593))

(declare-fun m!641601 () Bool)

(assert (=> b!672916 m!641601))

(declare-fun m!641603 () Bool)

(assert (=> b!672906 m!641603))

(declare-fun m!641605 () Bool)

(assert (=> b!672910 m!641605))

(declare-fun m!641607 () Bool)

(assert (=> b!672909 m!641607))

(declare-fun m!641609 () Bool)

(assert (=> b!672913 m!641609))

(declare-fun m!641611 () Bool)

(assert (=> b!672921 m!641611))

(assert (=> b!672914 m!641587))

(declare-fun m!641613 () Bool)

(assert (=> b!672908 m!641613))

(declare-fun m!641615 () Bool)

(assert (=> b!672903 m!641615))

(declare-fun m!641617 () Bool)

(assert (=> b!672903 m!641617))

(assert (=> b!672902 m!641591))

(declare-fun m!641619 () Bool)

(assert (=> b!672911 m!641619))

(declare-fun m!641621 () Bool)

(assert (=> b!672924 m!641621))

(declare-fun m!641623 () Bool)

(assert (=> start!60208 m!641623))

(push 1)

