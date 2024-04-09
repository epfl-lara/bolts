; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60204 () Bool)

(assert start!60204)

(declare-fun b!672745 () Bool)

(declare-fun res!439518 () Bool)

(declare-fun e!384247 () Bool)

(assert (=> b!672745 (=> (not res!439518) (not e!384247))))

(declare-datatypes ((List!12886 0))(
  ( (Nil!12883) (Cons!12882 (h!13927 (_ BitVec 64)) (t!19122 List!12886)) )
))
(declare-fun acc!681 () List!12886)

(declare-fun contains!3429 (List!12886 (_ BitVec 64)) Bool)

(assert (=> b!672745 (= res!439518 (not (contains!3429 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672746 () Bool)

(declare-fun res!439523 () Bool)

(assert (=> b!672746 (=> (not res!439523) (not e!384247))))

(declare-fun noDuplicate!676 (List!12886) Bool)

(assert (=> b!672746 (= res!439523 (noDuplicate!676 acc!681))))

(declare-fun b!672747 () Bool)

(declare-fun e!384248 () Bool)

(declare-fun lt!312333 () List!12886)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!672747 (= e!384248 (contains!3429 lt!312333 k!2843))))

(declare-fun b!672748 () Bool)

(declare-fun e!384251 () Bool)

(assert (=> b!672748 (= e!384247 e!384251)))

(declare-fun res!439509 () Bool)

(assert (=> b!672748 (=> (not res!439509) (not e!384251))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39207 0))(
  ( (array!39208 (arr!18792 (Array (_ BitVec 32) (_ BitVec 64))) (size!19156 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39207)

(assert (=> b!672748 (= res!439509 (not (= (select (arr!18792 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23632 0))(
  ( (Unit!23633) )
))
(declare-fun lt!312331 () Unit!23632)

(declare-fun e!384245 () Unit!23632)

(assert (=> b!672748 (= lt!312331 e!384245)))

(declare-fun c!76988 () Bool)

(assert (=> b!672748 (= c!76988 (= (select (arr!18792 a!3626) from!3004) k!2843))))

(declare-fun b!672749 () Bool)

(declare-fun res!439519 () Bool)

(declare-fun e!384253 () Bool)

(assert (=> b!672749 (=> (not res!439519) (not e!384253))))

(declare-fun e!384246 () Bool)

(assert (=> b!672749 (= res!439519 e!384246)))

(declare-fun res!439512 () Bool)

(assert (=> b!672749 (=> res!439512 e!384246)))

(assert (=> b!672749 (= res!439512 e!384248)))

(declare-fun res!439526 () Bool)

(assert (=> b!672749 (=> (not res!439526) (not e!384248))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672749 (= res!439526 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672750 () Bool)

(assert (=> b!672750 (= e!384253 false)))

(declare-fun lt!312332 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39207 (_ BitVec 32) List!12886) Bool)

(assert (=> b!672750 (= lt!312332 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312333))))

(declare-fun b!672751 () Bool)

(declare-fun res!439505 () Bool)

(assert (=> b!672751 (=> (not res!439505) (not e!384247))))

(assert (=> b!672751 (= res!439505 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19156 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672753 () Bool)

(declare-fun res!439508 () Bool)

(assert (=> b!672753 (=> (not res!439508) (not e!384247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672753 (= res!439508 (validKeyInArray!0 (select (arr!18792 a!3626) from!3004)))))

(declare-fun b!672754 () Bool)

(declare-fun e!384244 () Bool)

(assert (=> b!672754 (= e!384244 (not (contains!3429 acc!681 k!2843)))))

(declare-fun b!672755 () Bool)

(assert (=> b!672755 (= e!384251 e!384253)))

(declare-fun res!439506 () Bool)

(assert (=> b!672755 (=> (not res!439506) (not e!384253))))

(assert (=> b!672755 (= res!439506 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!277 (List!12886 (_ BitVec 64)) List!12886)

(assert (=> b!672755 (= lt!312333 ($colon$colon!277 acc!681 (select (arr!18792 a!3626) from!3004)))))

(declare-fun b!672756 () Bool)

(declare-fun e!384243 () Bool)

(assert (=> b!672756 (= e!384243 (not (contains!3429 lt!312333 k!2843)))))

(declare-fun b!672757 () Bool)

(declare-fun Unit!23634 () Unit!23632)

(assert (=> b!672757 (= e!384245 Unit!23634)))

(declare-fun arrayContainsKey!0 (array!39207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672757 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312330 () Unit!23632)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39207 (_ BitVec 64) (_ BitVec 32)) Unit!23632)

(assert (=> b!672757 (= lt!312330 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672757 false))

(declare-fun b!672758 () Bool)

(assert (=> b!672758 (= e!384246 e!384243)))

(declare-fun res!439511 () Bool)

(assert (=> b!672758 (=> (not res!439511) (not e!384243))))

(assert (=> b!672758 (= res!439511 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672759 () Bool)

(declare-fun Unit!23635 () Unit!23632)

(assert (=> b!672759 (= e!384245 Unit!23635)))

(declare-fun b!672760 () Bool)

(declare-fun res!439514 () Bool)

(assert (=> b!672760 (=> (not res!439514) (not e!384247))))

(assert (=> b!672760 (= res!439514 (not (contains!3429 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672761 () Bool)

(declare-fun res!439520 () Bool)

(assert (=> b!672761 (=> (not res!439520) (not e!384247))))

(assert (=> b!672761 (= res!439520 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12883))))

(declare-fun b!672762 () Bool)

(declare-fun e!384250 () Bool)

(assert (=> b!672762 (= e!384250 (contains!3429 acc!681 k!2843))))

(declare-fun b!672763 () Bool)

(declare-fun res!439510 () Bool)

(assert (=> b!672763 (=> (not res!439510) (not e!384247))))

(assert (=> b!672763 (= res!439510 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672764 () Bool)

(declare-fun res!439525 () Bool)

(assert (=> b!672764 (=> (not res!439525) (not e!384247))))

(assert (=> b!672764 (= res!439525 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19156 a!3626))))))

(declare-fun res!439513 () Bool)

(assert (=> start!60204 (=> (not res!439513) (not e!384247))))

(assert (=> start!60204 (= res!439513 (and (bvslt (size!19156 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19156 a!3626))))))

(assert (=> start!60204 e!384247))

(assert (=> start!60204 true))

(declare-fun array_inv!14566 (array!39207) Bool)

(assert (=> start!60204 (array_inv!14566 a!3626)))

(declare-fun b!672752 () Bool)

(declare-fun e!384252 () Bool)

(assert (=> b!672752 (= e!384252 e!384244)))

(declare-fun res!439504 () Bool)

(assert (=> b!672752 (=> (not res!439504) (not e!384244))))

(assert (=> b!672752 (= res!439504 (bvsle from!3004 i!1382))))

(declare-fun b!672765 () Bool)

(declare-fun res!439517 () Bool)

(assert (=> b!672765 (=> (not res!439517) (not e!384253))))

(assert (=> b!672765 (= res!439517 (noDuplicate!676 lt!312333))))

(declare-fun b!672766 () Bool)

(declare-fun res!439522 () Bool)

(assert (=> b!672766 (=> (not res!439522) (not e!384247))))

(assert (=> b!672766 (= res!439522 (validKeyInArray!0 k!2843))))

(declare-fun b!672767 () Bool)

(declare-fun res!439521 () Bool)

(assert (=> b!672767 (=> (not res!439521) (not e!384247))))

(assert (=> b!672767 (= res!439521 e!384252)))

(declare-fun res!439524 () Bool)

(assert (=> b!672767 (=> res!439524 e!384252)))

(assert (=> b!672767 (= res!439524 e!384250)))

(declare-fun res!439507 () Bool)

(assert (=> b!672767 (=> (not res!439507) (not e!384250))))

(assert (=> b!672767 (= res!439507 (bvsgt from!3004 i!1382))))

(declare-fun b!672768 () Bool)

(declare-fun res!439503 () Bool)

(assert (=> b!672768 (=> (not res!439503) (not e!384247))))

(assert (=> b!672768 (= res!439503 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672769 () Bool)

(declare-fun res!439516 () Bool)

(assert (=> b!672769 (=> (not res!439516) (not e!384253))))

(assert (=> b!672769 (= res!439516 (not (contains!3429 lt!312333 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672770 () Bool)

(declare-fun res!439515 () Bool)

(assert (=> b!672770 (=> (not res!439515) (not e!384253))))

(assert (=> b!672770 (= res!439515 (not (contains!3429 lt!312333 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60204 res!439513) b!672746))

(assert (= (and b!672746 res!439523) b!672760))

(assert (= (and b!672760 res!439514) b!672745))

(assert (= (and b!672745 res!439518) b!672767))

(assert (= (and b!672767 res!439507) b!672762))

(assert (= (and b!672767 (not res!439524)) b!672752))

(assert (= (and b!672752 res!439504) b!672754))

(assert (= (and b!672767 res!439521) b!672761))

(assert (= (and b!672761 res!439520) b!672768))

(assert (= (and b!672768 res!439503) b!672764))

(assert (= (and b!672764 res!439525) b!672766))

(assert (= (and b!672766 res!439522) b!672763))

(assert (= (and b!672763 res!439510) b!672751))

(assert (= (and b!672751 res!439505) b!672753))

(assert (= (and b!672753 res!439508) b!672748))

(assert (= (and b!672748 c!76988) b!672757))

(assert (= (and b!672748 (not c!76988)) b!672759))

(assert (= (and b!672748 res!439509) b!672755))

(assert (= (and b!672755 res!439506) b!672765))

(assert (= (and b!672765 res!439517) b!672770))

(assert (= (and b!672770 res!439515) b!672769))

(assert (= (and b!672769 res!439516) b!672749))

(assert (= (and b!672749 res!439526) b!672747))

(assert (= (and b!672749 (not res!439512)) b!672758))

(assert (= (and b!672758 res!439511) b!672756))

(assert (= (and b!672749 res!439519) b!672750))

(declare-fun m!641511 () Bool)

(assert (=> b!672748 m!641511))

(declare-fun m!641513 () Bool)

(assert (=> b!672745 m!641513))

(declare-fun m!641515 () Bool)

(assert (=> b!672766 m!641515))

(declare-fun m!641517 () Bool)

(assert (=> start!60204 m!641517))

(assert (=> b!672753 m!641511))

(assert (=> b!672753 m!641511))

(declare-fun m!641519 () Bool)

(assert (=> b!672753 m!641519))

(declare-fun m!641521 () Bool)

(assert (=> b!672750 m!641521))

(declare-fun m!641523 () Bool)

(assert (=> b!672746 m!641523))

(declare-fun m!641525 () Bool)

(assert (=> b!672747 m!641525))

(assert (=> b!672755 m!641511))

(assert (=> b!672755 m!641511))

(declare-fun m!641527 () Bool)

(assert (=> b!672755 m!641527))

(declare-fun m!641529 () Bool)

(assert (=> b!672760 m!641529))

(declare-fun m!641531 () Bool)

(assert (=> b!672770 m!641531))

(declare-fun m!641533 () Bool)

(assert (=> b!672765 m!641533))

(declare-fun m!641535 () Bool)

(assert (=> b!672762 m!641535))

(declare-fun m!641537 () Bool)

(assert (=> b!672769 m!641537))

(assert (=> b!672756 m!641525))

(declare-fun m!641539 () Bool)

(assert (=> b!672761 m!641539))

(assert (=> b!672754 m!641535))

(declare-fun m!641541 () Bool)

(assert (=> b!672757 m!641541))

(declare-fun m!641543 () Bool)

(assert (=> b!672757 m!641543))

(declare-fun m!641545 () Bool)

(assert (=> b!672768 m!641545))

(declare-fun m!641547 () Bool)

(assert (=> b!672763 m!641547))

(push 1)

