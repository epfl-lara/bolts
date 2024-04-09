; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62226 () Bool)

(assert start!62226)

(declare-fun b!696649 () Bool)

(declare-fun res!460751 () Bool)

(declare-fun e!396107 () Bool)

(assert (=> b!696649 (=> (not res!460751) (not e!396107))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39939 0))(
  ( (array!39940 (arr!19125 (Array (_ BitVec 32) (_ BitVec 64))) (size!19508 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39939)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!696649 (= res!460751 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19508 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696650 () Bool)

(declare-fun res!460741 () Bool)

(assert (=> b!696650 (=> (not res!460741) (not e!396107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696650 (= res!460741 (not (validKeyInArray!0 (select (arr!19125 a!3626) from!3004))))))

(declare-fun b!696651 () Bool)

(declare-fun res!460742 () Bool)

(assert (=> b!696651 (=> (not res!460742) (not e!396107))))

(declare-datatypes ((List!13219 0))(
  ( (Nil!13216) (Cons!13215 (h!14260 (_ BitVec 64)) (t!19509 List!13219)) )
))
(declare-fun acc!681 () List!13219)

(declare-fun contains!3762 (List!13219 (_ BitVec 64)) Bool)

(assert (=> b!696651 (= res!460742 (not (contains!3762 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696652 () Bool)

(declare-fun res!460758 () Bool)

(assert (=> b!696652 (=> (not res!460758) (not e!396107))))

(assert (=> b!696652 (= res!460758 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696653 () Bool)

(declare-fun res!460756 () Bool)

(assert (=> b!696653 (=> (not res!460756) (not e!396107))))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!696653 (= res!460756 (validKeyInArray!0 k!2843))))

(declare-fun b!696654 () Bool)

(declare-fun res!460760 () Bool)

(assert (=> b!696654 (=> (not res!460760) (not e!396107))))

(declare-fun noDuplicate!1009 (List!13219) Bool)

(assert (=> b!696654 (= res!460760 (noDuplicate!1009 acc!681))))

(declare-fun res!460757 () Bool)

(assert (=> start!62226 (=> (not res!460757) (not e!396107))))

(assert (=> start!62226 (= res!460757 (and (bvslt (size!19508 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19508 a!3626))))))

(assert (=> start!62226 e!396107))

(assert (=> start!62226 true))

(declare-fun array_inv!14899 (array!39939) Bool)

(assert (=> start!62226 (array_inv!14899 a!3626)))

(declare-fun b!696655 () Bool)

(declare-fun e!396106 () Bool)

(declare-fun e!396109 () Bool)

(assert (=> b!696655 (= e!396106 e!396109)))

(declare-fun res!460749 () Bool)

(assert (=> b!696655 (=> (not res!460749) (not e!396109))))

(assert (=> b!696655 (= res!460749 (bvsle from!3004 i!1382))))

(declare-fun b!696656 () Bool)

(declare-fun res!460746 () Bool)

(assert (=> b!696656 (=> (not res!460746) (not e!396107))))

(declare-fun e!396105 () Bool)

(assert (=> b!696656 (= res!460746 e!396105)))

(declare-fun res!460752 () Bool)

(assert (=> b!696656 (=> res!460752 e!396105)))

(declare-fun e!396112 () Bool)

(assert (=> b!696656 (= res!460752 e!396112)))

(declare-fun res!460747 () Bool)

(assert (=> b!696656 (=> (not res!460747) (not e!396112))))

(assert (=> b!696656 (= res!460747 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696657 () Bool)

(declare-fun e!396108 () Bool)

(assert (=> b!696657 (= e!396108 (contains!3762 acc!681 k!2843))))

(declare-fun b!696658 () Bool)

(declare-fun res!460755 () Bool)

(assert (=> b!696658 (=> (not res!460755) (not e!396107))))

(declare-fun arrayContainsKey!0 (array!39939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696658 (= res!460755 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696659 () Bool)

(declare-fun res!460753 () Bool)

(assert (=> b!696659 (=> (not res!460753) (not e!396107))))

(assert (=> b!696659 (= res!460753 (not (contains!3762 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696660 () Bool)

(assert (=> b!696660 (= e!396109 (not (contains!3762 acc!681 k!2843)))))

(declare-fun b!696661 () Bool)

(declare-fun e!396111 () Bool)

(assert (=> b!696661 (= e!396111 (not (contains!3762 acc!681 k!2843)))))

(declare-fun b!696662 () Bool)

(declare-fun res!460744 () Bool)

(assert (=> b!696662 (=> (not res!460744) (not e!396107))))

(assert (=> b!696662 (= res!460744 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19508 a!3626))))))

(declare-fun b!696663 () Bool)

(assert (=> b!696663 (= e!396107 false)))

(declare-fun lt!317070 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39939 (_ BitVec 32) List!13219) Bool)

(assert (=> b!696663 (= lt!317070 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696664 () Bool)

(declare-fun res!460759 () Bool)

(assert (=> b!696664 (=> (not res!460759) (not e!396107))))

(assert (=> b!696664 (= res!460759 e!396106)))

(declare-fun res!460748 () Bool)

(assert (=> b!696664 (=> res!460748 e!396106)))

(assert (=> b!696664 (= res!460748 e!396108)))

(declare-fun res!460750 () Bool)

(assert (=> b!696664 (=> (not res!460750) (not e!396108))))

(assert (=> b!696664 (= res!460750 (bvsgt from!3004 i!1382))))

(declare-fun b!696665 () Bool)

(assert (=> b!696665 (= e!396112 (contains!3762 acc!681 k!2843))))

(declare-fun b!696666 () Bool)

(declare-fun res!460754 () Bool)

(assert (=> b!696666 (=> (not res!460754) (not e!396107))))

(assert (=> b!696666 (= res!460754 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13216))))

(declare-fun b!696667 () Bool)

(assert (=> b!696667 (= e!396105 e!396111)))

(declare-fun res!460743 () Bool)

(assert (=> b!696667 (=> (not res!460743) (not e!396111))))

(assert (=> b!696667 (= res!460743 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696668 () Bool)

(declare-fun res!460745 () Bool)

(assert (=> b!696668 (=> (not res!460745) (not e!396107))))

(assert (=> b!696668 (= res!460745 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!62226 res!460757) b!696654))

(assert (= (and b!696654 res!460760) b!696659))

(assert (= (and b!696659 res!460753) b!696651))

(assert (= (and b!696651 res!460742) b!696664))

(assert (= (and b!696664 res!460750) b!696657))

(assert (= (and b!696664 (not res!460748)) b!696655))

(assert (= (and b!696655 res!460749) b!696660))

(assert (= (and b!696664 res!460759) b!696666))

(assert (= (and b!696666 res!460754) b!696668))

(assert (= (and b!696668 res!460745) b!696662))

(assert (= (and b!696662 res!460744) b!696653))

(assert (= (and b!696653 res!460756) b!696658))

(assert (= (and b!696658 res!460755) b!696649))

(assert (= (and b!696649 res!460751) b!696650))

(assert (= (and b!696650 res!460741) b!696652))

(assert (= (and b!696652 res!460758) b!696656))

(assert (= (and b!696656 res!460747) b!696665))

(assert (= (and b!696656 (not res!460752)) b!696667))

(assert (= (and b!696667 res!460743) b!696661))

(assert (= (and b!696656 res!460746) b!696663))

(declare-fun m!657465 () Bool)

(assert (=> b!696666 m!657465))

(declare-fun m!657467 () Bool)

(assert (=> b!696661 m!657467))

(declare-fun m!657469 () Bool)

(assert (=> start!62226 m!657469))

(assert (=> b!696657 m!657467))

(declare-fun m!657471 () Bool)

(assert (=> b!696663 m!657471))

(declare-fun m!657473 () Bool)

(assert (=> b!696668 m!657473))

(declare-fun m!657475 () Bool)

(assert (=> b!696658 m!657475))

(declare-fun m!657477 () Bool)

(assert (=> b!696650 m!657477))

(assert (=> b!696650 m!657477))

(declare-fun m!657479 () Bool)

(assert (=> b!696650 m!657479))

(declare-fun m!657481 () Bool)

(assert (=> b!696659 m!657481))

(declare-fun m!657483 () Bool)

(assert (=> b!696654 m!657483))

(assert (=> b!696660 m!657467))

(declare-fun m!657485 () Bool)

(assert (=> b!696653 m!657485))

(declare-fun m!657487 () Bool)

(assert (=> b!696651 m!657487))

(assert (=> b!696665 m!657467))

(push 1)

(assert (not b!696658))

(assert (not b!696661))

(assert (not b!696657))

(assert (not b!696653))

(assert (not b!696660))

(assert (not b!696666))

(assert (not b!696663))

(assert (not start!62226))

(assert (not b!696650))

(assert (not b!696665))

(assert (not b!696659))

(assert (not b!696668))

(assert (not b!696651))

(assert (not b!696654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

