; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62148 () Bool)

(assert start!62148)

(declare-fun b!695442 () Bool)

(declare-fun e!395536 () Bool)

(declare-datatypes ((List!13198 0))(
  ( (Nil!13195) (Cons!13194 (h!14239 (_ BitVec 64)) (t!19488 List!13198)) )
))
(declare-fun acc!681 () List!13198)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3741 (List!13198 (_ BitVec 64)) Bool)

(assert (=> b!695442 (= e!395536 (not (contains!3741 acc!681 k!2843)))))

(declare-fun b!695443 () Bool)

(declare-fun res!459564 () Bool)

(declare-fun e!395533 () Bool)

(assert (=> b!695443 (=> (not res!459564) (not e!395533))))

(assert (=> b!695443 (= res!459564 (not (contains!3741 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695444 () Bool)

(assert (=> b!695444 (= e!395533 false)))

(declare-datatypes ((array!39894 0))(
  ( (array!39895 (arr!19104 (Array (_ BitVec 32) (_ BitVec 64))) (size!19487 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39894)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!317010 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39894 (_ BitVec 32) List!13198) Bool)

(assert (=> b!695444 (= lt!317010 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695445 () Bool)

(declare-fun res!459566 () Bool)

(assert (=> b!695445 (=> (not res!459566) (not e!395533))))

(assert (=> b!695445 (= res!459566 (not (contains!3741 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695446 () Bool)

(declare-fun res!459568 () Bool)

(assert (=> b!695446 (=> (not res!459568) (not e!395533))))

(declare-fun noDuplicate!988 (List!13198) Bool)

(assert (=> b!695446 (= res!459568 (noDuplicate!988 acc!681))))

(declare-fun b!695447 () Bool)

(declare-fun res!459567 () Bool)

(assert (=> b!695447 (=> (not res!459567) (not e!395533))))

(declare-fun e!395535 () Bool)

(assert (=> b!695447 (= res!459567 e!395535)))

(declare-fun res!459570 () Bool)

(assert (=> b!695447 (=> res!459570 e!395535)))

(declare-fun e!395534 () Bool)

(assert (=> b!695447 (= res!459570 e!395534)))

(declare-fun res!459571 () Bool)

(assert (=> b!695447 (=> (not res!459571) (not e!395534))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695447 (= res!459571 (bvsgt from!3004 i!1382))))

(declare-fun b!695448 () Bool)

(assert (=> b!695448 (= e!395534 (contains!3741 acc!681 k!2843))))

(declare-fun res!459572 () Bool)

(assert (=> start!62148 (=> (not res!459572) (not e!395533))))

(assert (=> start!62148 (= res!459572 (and (bvslt (size!19487 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19487 a!3626))))))

(assert (=> start!62148 e!395533))

(assert (=> start!62148 true))

(declare-fun array_inv!14878 (array!39894) Bool)

(assert (=> start!62148 (array_inv!14878 a!3626)))

(declare-fun b!695449 () Bool)

(declare-fun res!459569 () Bool)

(assert (=> b!695449 (=> (not res!459569) (not e!395533))))

(assert (=> b!695449 (= res!459569 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13195))))

(declare-fun b!695450 () Bool)

(assert (=> b!695450 (= e!395535 e!395536)))

(declare-fun res!459565 () Bool)

(assert (=> b!695450 (=> (not res!459565) (not e!395536))))

(assert (=> b!695450 (= res!459565 (bvsle from!3004 i!1382))))

(assert (= (and start!62148 res!459572) b!695446))

(assert (= (and b!695446 res!459568) b!695445))

(assert (= (and b!695445 res!459566) b!695443))

(assert (= (and b!695443 res!459564) b!695447))

(assert (= (and b!695447 res!459571) b!695448))

(assert (= (and b!695447 (not res!459570)) b!695450))

(assert (= (and b!695450 res!459565) b!695442))

(assert (= (and b!695447 res!459567) b!695449))

(assert (= (and b!695449 res!459569) b!695444))

(declare-fun m!656913 () Bool)

(assert (=> start!62148 m!656913))

(declare-fun m!656915 () Bool)

(assert (=> b!695446 m!656915))

(declare-fun m!656917 () Bool)

(assert (=> b!695443 m!656917))

(declare-fun m!656919 () Bool)

(assert (=> b!695448 m!656919))

(assert (=> b!695442 m!656919))

(declare-fun m!656921 () Bool)

(assert (=> b!695445 m!656921))

(declare-fun m!656923 () Bool)

(assert (=> b!695444 m!656923))

(declare-fun m!656925 () Bool)

(assert (=> b!695449 m!656925))

(push 1)

(assert (not b!695446))

(assert (not start!62148))

(assert (not b!695449))

(assert (not b!695448))

(assert (not b!695445))

(assert (not b!695443))

(assert (not b!695442))

(assert (not b!695444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

