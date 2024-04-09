; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62160 () Bool)

(assert start!62160)

(declare-fun b!695624 () Bool)

(declare-fun res!459756 () Bool)

(declare-fun e!395632 () Bool)

(assert (=> b!695624 (=> (not res!459756) (not e!395632))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39906 0))(
  ( (array!39907 (arr!19110 (Array (_ BitVec 32) (_ BitVec 64))) (size!19493 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39906)

(assert (=> b!695624 (= res!459756 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19493 a!3626))))))

(declare-fun b!695625 () Bool)

(declare-fun e!395630 () Bool)

(assert (=> b!695625 (= e!395632 e!395630)))

(declare-fun res!459746 () Bool)

(assert (=> b!695625 (=> res!459746 e!395630)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!695625 (= res!459746 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!695626 () Bool)

(declare-fun e!395628 () Bool)

(declare-datatypes ((List!13204 0))(
  ( (Nil!13201) (Cons!13200 (h!14245 (_ BitVec 64)) (t!19494 List!13204)) )
))
(declare-fun acc!681 () List!13204)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3747 (List!13204 (_ BitVec 64)) Bool)

(assert (=> b!695626 (= e!395628 (not (contains!3747 acc!681 k!2843)))))

(declare-fun b!695627 () Bool)

(declare-fun res!459763 () Bool)

(assert (=> b!695627 (=> (not res!459763) (not e!395632))))

(declare-fun arrayNoDuplicates!0 (array!39906 (_ BitVec 32) List!13204) Bool)

(assert (=> b!695627 (= res!459763 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13201))))

(declare-fun b!695628 () Bool)

(declare-fun res!459752 () Bool)

(assert (=> b!695628 (=> (not res!459752) (not e!395632))))

(assert (=> b!695628 (= res!459752 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695629 () Bool)

(declare-fun res!459760 () Bool)

(assert (=> b!695629 (=> (not res!459760) (not e!395632))))

(declare-fun arrayContainsKey!0 (array!39906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!695629 (= res!459760 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!695630 () Bool)

(declare-fun e!395627 () Bool)

(assert (=> b!695630 (= e!395627 e!395628)))

(declare-fun res!459762 () Bool)

(assert (=> b!695630 (=> (not res!459762) (not e!395628))))

(assert (=> b!695630 (= res!459762 (bvsle from!3004 i!1382))))

(declare-fun res!459748 () Bool)

(assert (=> start!62160 (=> (not res!459748) (not e!395632))))

(assert (=> start!62160 (= res!459748 (and (bvslt (size!19493 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19493 a!3626))))))

(assert (=> start!62160 e!395632))

(assert (=> start!62160 true))

(declare-fun array_inv!14884 (array!39906) Bool)

(assert (=> start!62160 (array_inv!14884 a!3626)))

(declare-fun b!695631 () Bool)

(declare-fun e!395629 () Bool)

(assert (=> b!695631 (= e!395629 (not (contains!3747 acc!681 k!2843)))))

(declare-fun b!695632 () Bool)

(assert (=> b!695632 (= e!395630 (contains!3747 acc!681 k!2843))))

(declare-fun b!695633 () Bool)

(declare-fun res!459757 () Bool)

(assert (=> b!695633 (=> (not res!459757) (not e!395632))))

(assert (=> b!695633 (= res!459757 e!395627)))

(declare-fun res!459761 () Bool)

(assert (=> b!695633 (=> res!459761 e!395627)))

(declare-fun e!395631 () Bool)

(assert (=> b!695633 (= res!459761 e!395631)))

(declare-fun res!459755 () Bool)

(assert (=> b!695633 (=> (not res!459755) (not e!395631))))

(assert (=> b!695633 (= res!459755 (bvsgt from!3004 i!1382))))

(declare-fun b!695634 () Bool)

(assert (=> b!695634 (= e!395631 (contains!3747 acc!681 k!2843))))

(declare-fun b!695635 () Bool)

(declare-fun res!459749 () Bool)

(assert (=> b!695635 (=> (not res!459749) (not e!395632))))

(assert (=> b!695635 (= res!459749 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19493 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!695636 () Bool)

(declare-fun res!459747 () Bool)

(assert (=> b!695636 (=> (not res!459747) (not e!395632))))

(declare-fun noDuplicate!994 (List!13204) Bool)

(assert (=> b!695636 (= res!459747 (noDuplicate!994 acc!681))))

(declare-fun b!695637 () Bool)

(declare-fun res!459750 () Bool)

(assert (=> b!695637 (=> (not res!459750) (not e!395632))))

(assert (=> b!695637 (= res!459750 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!695638 () Bool)

(declare-fun res!459751 () Bool)

(assert (=> b!695638 (=> (not res!459751) (not e!395632))))

(assert (=> b!695638 (= res!459751 (not (contains!3747 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695639 () Bool)

(declare-fun res!459764 () Bool)

(assert (=> b!695639 (=> (not res!459764) (not e!395632))))

(assert (=> b!695639 (= res!459764 e!395629)))

(declare-fun res!459758 () Bool)

(assert (=> b!695639 (=> res!459758 e!395629)))

(assert (=> b!695639 (= res!459758 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!695640 () Bool)

(declare-fun res!459759 () Bool)

(assert (=> b!695640 (=> (not res!459759) (not e!395632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!695640 (= res!459759 (validKeyInArray!0 k!2843))))

(declare-fun b!695641 () Bool)

(declare-fun res!459754 () Bool)

(assert (=> b!695641 (=> (not res!459754) (not e!395632))))

(assert (=> b!695641 (= res!459754 (not (validKeyInArray!0 (select (arr!19110 a!3626) from!3004))))))

(declare-fun b!695642 () Bool)

(declare-fun res!459753 () Bool)

(assert (=> b!695642 (=> (not res!459753) (not e!395632))))

(assert (=> b!695642 (= res!459753 (not (contains!3747 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62160 res!459748) b!695636))

(assert (= (and b!695636 res!459747) b!695642))

(assert (= (and b!695642 res!459753) b!695638))

(assert (= (and b!695638 res!459751) b!695633))

(assert (= (and b!695633 res!459755) b!695634))

(assert (= (and b!695633 (not res!459761)) b!695630))

(assert (= (and b!695630 res!459762) b!695626))

(assert (= (and b!695633 res!459757) b!695627))

(assert (= (and b!695627 res!459763) b!695628))

(assert (= (and b!695628 res!459752) b!695624))

(assert (= (and b!695624 res!459756) b!695640))

(assert (= (and b!695640 res!459759) b!695629))

(assert (= (and b!695629 res!459760) b!695635))

(assert (= (and b!695635 res!459749) b!695641))

(assert (= (and b!695641 res!459754) b!695637))

(assert (= (and b!695637 res!459750) b!695639))

(assert (= (and b!695639 (not res!459758)) b!695631))

(assert (= (and b!695639 res!459764) b!695625))

(assert (= (and b!695625 (not res!459746)) b!695632))

(declare-fun m!656997 () Bool)

(assert (=> b!695626 m!656997))

(declare-fun m!656999 () Bool)

(assert (=> b!695640 m!656999))

(assert (=> b!695632 m!656997))

(declare-fun m!657001 () Bool)

(assert (=> b!695642 m!657001))

(declare-fun m!657003 () Bool)

(assert (=> start!62160 m!657003))

(declare-fun m!657005 () Bool)

(assert (=> b!695627 m!657005))

(assert (=> b!695631 m!656997))

(declare-fun m!657007 () Bool)

(assert (=> b!695629 m!657007))

(declare-fun m!657009 () Bool)

(assert (=> b!695638 m!657009))

(declare-fun m!657011 () Bool)

(assert (=> b!695636 m!657011))

(assert (=> b!695634 m!656997))

(declare-fun m!657013 () Bool)

(assert (=> b!695641 m!657013))

(assert (=> b!695641 m!657013))

(declare-fun m!657015 () Bool)

(assert (=> b!695641 m!657015))

(declare-fun m!657017 () Bool)

(assert (=> b!695628 m!657017))

(push 1)

(assert (not b!695634))

(assert (not b!695636))

(assert (not start!62160))

(assert (not b!695638))

(assert (not b!695628))

(assert (not b!695627))

(assert (not b!695631))

(assert (not b!695641))

(assert (not b!695632))

(assert (not b!695640))

(assert (not b!695626))

(assert (not b!695642))

(assert (not b!695629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

