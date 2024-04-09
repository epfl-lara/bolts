; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62164 () Bool)

(assert start!62164)

(declare-fun b!695738 () Bool)

(declare-fun res!459878 () Bool)

(declare-fun e!395669 () Bool)

(assert (=> b!695738 (=> (not res!459878) (not e!395669))))

(declare-datatypes ((array!39910 0))(
  ( (array!39911 (arr!19112 (Array (_ BitVec 32) (_ BitVec 64))) (size!19495 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39910)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13206 0))(
  ( (Nil!13203) (Cons!13202 (h!14247 (_ BitVec 64)) (t!19496 List!13206)) )
))
(declare-fun acc!681 () List!13206)

(declare-fun arrayNoDuplicates!0 (array!39910 (_ BitVec 32) List!13206) Bool)

(assert (=> b!695738 (= res!459878 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695739 () Bool)

(declare-fun e!395672 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3749 (List!13206 (_ BitVec 64)) Bool)

(assert (=> b!695739 (= e!395672 (contains!3749 acc!681 k!2843))))

(declare-fun b!695740 () Bool)

(declare-fun res!459863 () Bool)

(assert (=> b!695740 (=> (not res!459863) (not e!395669))))

(assert (=> b!695740 (= res!459863 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!695741 () Bool)

(declare-fun res!459871 () Bool)

(assert (=> b!695741 (=> (not res!459871) (not e!395669))))

(declare-fun e!395674 () Bool)

(assert (=> b!695741 (= res!459871 e!395674)))

(declare-fun res!459875 () Bool)

(assert (=> b!695741 (=> res!459875 e!395674)))

(assert (=> b!695741 (= res!459875 e!395672)))

(declare-fun res!459861 () Bool)

(assert (=> b!695741 (=> (not res!459861) (not e!395672))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695741 (= res!459861 (bvsgt from!3004 i!1382))))

(declare-fun res!459868 () Bool)

(assert (=> start!62164 (=> (not res!459868) (not e!395669))))

(assert (=> start!62164 (= res!459868 (and (bvslt (size!19495 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19495 a!3626))))))

(assert (=> start!62164 e!395669))

(assert (=> start!62164 true))

(declare-fun array_inv!14886 (array!39910) Bool)

(assert (=> start!62164 (array_inv!14886 a!3626)))

(declare-fun b!695742 () Bool)

(declare-fun res!459866 () Bool)

(assert (=> b!695742 (=> (not res!459866) (not e!395669))))

(assert (=> b!695742 (= res!459866 (not (contains!3749 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695743 () Bool)

(declare-fun e!395668 () Bool)

(assert (=> b!695743 (= e!395674 e!395668)))

(declare-fun res!459862 () Bool)

(assert (=> b!695743 (=> (not res!459862) (not e!395668))))

(assert (=> b!695743 (= res!459862 (bvsle from!3004 i!1382))))

(declare-fun b!695744 () Bool)

(declare-fun res!459867 () Bool)

(assert (=> b!695744 (=> (not res!459867) (not e!395669))))

(assert (=> b!695744 (= res!459867 (not (contains!3749 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695745 () Bool)

(declare-fun res!459873 () Bool)

(assert (=> b!695745 (=> (not res!459873) (not e!395669))))

(declare-fun arrayContainsKey!0 (array!39910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!695745 (= res!459873 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!695746 () Bool)

(declare-fun res!459860 () Bool)

(assert (=> b!695746 (=> (not res!459860) (not e!395669))))

(declare-fun e!395671 () Bool)

(assert (=> b!695746 (= res!459860 e!395671)))

(declare-fun res!459869 () Bool)

(assert (=> b!695746 (=> res!459869 e!395671)))

(assert (=> b!695746 (= res!459869 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!695747 () Bool)

(assert (=> b!695747 (= e!395671 (not (contains!3749 acc!681 k!2843)))))

(declare-fun b!695748 () Bool)

(declare-fun res!459876 () Bool)

(assert (=> b!695748 (=> (not res!459876) (not e!395669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!695748 (= res!459876 (validKeyInArray!0 k!2843))))

(declare-fun b!695749 () Bool)

(declare-fun res!459870 () Bool)

(assert (=> b!695749 (=> (not res!459870) (not e!395669))))

(assert (=> b!695749 (= res!459870 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19495 a!3626))))))

(declare-fun b!695750 () Bool)

(declare-fun e!395673 () Bool)

(assert (=> b!695750 (= e!395673 (contains!3749 acc!681 k!2843))))

(declare-fun b!695751 () Bool)

(declare-fun res!459865 () Bool)

(assert (=> b!695751 (=> (not res!459865) (not e!395669))))

(assert (=> b!695751 (= res!459865 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13203))))

(declare-fun b!695752 () Bool)

(declare-fun res!459877 () Bool)

(assert (=> b!695752 (=> (not res!459877) (not e!395669))))

(assert (=> b!695752 (= res!459877 (not (validKeyInArray!0 (select (arr!19112 a!3626) from!3004))))))

(declare-fun b!695753 () Bool)

(declare-fun res!459872 () Bool)

(assert (=> b!695753 (=> (not res!459872) (not e!395669))))

(assert (=> b!695753 (= res!459872 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19495 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!695754 () Bool)

(declare-fun res!459864 () Bool)

(assert (=> b!695754 (=> (not res!459864) (not e!395669))))

(declare-fun noDuplicate!996 (List!13206) Bool)

(assert (=> b!695754 (= res!459864 (noDuplicate!996 acc!681))))

(declare-fun b!695755 () Bool)

(assert (=> b!695755 (= e!395669 e!395673)))

(declare-fun res!459874 () Bool)

(assert (=> b!695755 (=> res!459874 e!395673)))

(assert (=> b!695755 (= res!459874 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!695756 () Bool)

(assert (=> b!695756 (= e!395668 (not (contains!3749 acc!681 k!2843)))))

(assert (= (and start!62164 res!459868) b!695754))

(assert (= (and b!695754 res!459864) b!695744))

(assert (= (and b!695744 res!459867) b!695742))

(assert (= (and b!695742 res!459866) b!695741))

(assert (= (and b!695741 res!459861) b!695739))

(assert (= (and b!695741 (not res!459875)) b!695743))

(assert (= (and b!695743 res!459862) b!695756))

(assert (= (and b!695741 res!459871) b!695751))

(assert (= (and b!695751 res!459865) b!695738))

(assert (= (and b!695738 res!459878) b!695749))

(assert (= (and b!695749 res!459870) b!695748))

(assert (= (and b!695748 res!459876) b!695745))

(assert (= (and b!695745 res!459873) b!695753))

(assert (= (and b!695753 res!459872) b!695752))

(assert (= (and b!695752 res!459877) b!695740))

(assert (= (and b!695740 res!459863) b!695746))

(assert (= (and b!695746 (not res!459869)) b!695747))

(assert (= (and b!695746 res!459860) b!695755))

(assert (= (and b!695755 (not res!459874)) b!695750))

(declare-fun m!657041 () Bool)

(assert (=> b!695754 m!657041))

(declare-fun m!657043 () Bool)

(assert (=> b!695739 m!657043))

(assert (=> b!695750 m!657043))

(declare-fun m!657045 () Bool)

(assert (=> b!695752 m!657045))

(assert (=> b!695752 m!657045))

(declare-fun m!657047 () Bool)

(assert (=> b!695752 m!657047))

(declare-fun m!657049 () Bool)

(assert (=> b!695744 m!657049))

(declare-fun m!657051 () Bool)

(assert (=> start!62164 m!657051))

(declare-fun m!657053 () Bool)

(assert (=> b!695738 m!657053))

(declare-fun m!657055 () Bool)

(assert (=> b!695748 m!657055))

(assert (=> b!695756 m!657043))

(declare-fun m!657057 () Bool)

(assert (=> b!695751 m!657057))

(assert (=> b!695747 m!657043))

(declare-fun m!657059 () Bool)

(assert (=> b!695742 m!657059))

(declare-fun m!657061 () Bool)

(assert (=> b!695745 m!657061))

(push 1)

(assert (not b!695739))

(assert (not b!695748))

(assert (not b!695751))

(assert (not b!695756))

(assert (not b!695754))

(assert (not b!695742))

(assert (not b!695744))

(assert (not start!62164))

(assert (not b!695738))

(assert (not b!695750))

(assert (not b!695747))

(assert (not b!695752))

(assert (not b!695745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

