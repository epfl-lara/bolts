; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59830 () Bool)

(assert start!59830)

(declare-fun b!660624 () Bool)

(declare-fun res!428866 () Bool)

(declare-fun e!379608 () Bool)

(assert (=> b!660624 (=> (not res!428866) (not e!379608))))

(declare-datatypes ((List!12699 0))(
  ( (Nil!12696) (Cons!12695 (h!13740 (_ BitVec 64)) (t!18935 List!12699)) )
))
(declare-fun acc!681 () List!12699)

(declare-fun contains!3242 (List!12699 (_ BitVec 64)) Bool)

(assert (=> b!660624 (= res!428866 (not (contains!3242 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660625 () Bool)

(declare-fun res!428867 () Bool)

(assert (=> b!660625 (=> (not res!428867) (not e!379608))))

(assert (=> b!660625 (= res!428867 (not (contains!3242 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660627 () Bool)

(declare-fun e!379609 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660627 (= e!379609 (not (contains!3242 acc!681 k!2843)))))

(declare-fun b!660628 () Bool)

(declare-fun e!379611 () Bool)

(assert (=> b!660628 (= e!379611 e!379609)))

(declare-fun res!428865 () Bool)

(assert (=> b!660628 (=> (not res!428865) (not e!379609))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660628 (= res!428865 (bvsle from!3004 i!1382))))

(declare-fun b!660629 () Bool)

(declare-fun res!428864 () Bool)

(assert (=> b!660629 (=> (not res!428864) (not e!379608))))

(declare-datatypes ((array!38833 0))(
  ( (array!38834 (arr!18605 (Array (_ BitVec 32) (_ BitVec 64))) (size!18969 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38833)

(declare-fun arrayNoDuplicates!0 (array!38833 (_ BitVec 32) List!12699) Bool)

(assert (=> b!660629 (= res!428864 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12696))))

(declare-fun b!660630 () Bool)

(declare-fun res!428869 () Bool)

(assert (=> b!660630 (=> (not res!428869) (not e!379608))))

(declare-fun noDuplicate!489 (List!12699) Bool)

(assert (=> b!660630 (= res!428869 (noDuplicate!489 acc!681))))

(declare-fun b!660631 () Bool)

(declare-fun res!428862 () Bool)

(assert (=> b!660631 (=> (not res!428862) (not e!379608))))

(assert (=> b!660631 (= res!428862 e!379611)))

(declare-fun res!428868 () Bool)

(assert (=> b!660631 (=> res!428868 e!379611)))

(declare-fun e!379610 () Bool)

(assert (=> b!660631 (= res!428868 e!379610)))

(declare-fun res!428870 () Bool)

(assert (=> b!660631 (=> (not res!428870) (not e!379610))))

(assert (=> b!660631 (= res!428870 (bvsgt from!3004 i!1382))))

(declare-fun b!660632 () Bool)

(assert (=> b!660632 (= e!379608 false)))

(declare-fun lt!308757 () Bool)

(assert (=> b!660632 (= lt!308757 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!428863 () Bool)

(assert (=> start!59830 (=> (not res!428863) (not e!379608))))

(assert (=> start!59830 (= res!428863 (and (bvslt (size!18969 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18969 a!3626))))))

(assert (=> start!59830 e!379608))

(assert (=> start!59830 true))

(declare-fun array_inv!14379 (array!38833) Bool)

(assert (=> start!59830 (array_inv!14379 a!3626)))

(declare-fun b!660626 () Bool)

(assert (=> b!660626 (= e!379610 (contains!3242 acc!681 k!2843))))

(assert (= (and start!59830 res!428863) b!660630))

(assert (= (and b!660630 res!428869) b!660625))

(assert (= (and b!660625 res!428867) b!660624))

(assert (= (and b!660624 res!428866) b!660631))

(assert (= (and b!660631 res!428870) b!660626))

(assert (= (and b!660631 (not res!428868)) b!660628))

(assert (= (and b!660628 res!428865) b!660627))

(assert (= (and b!660631 res!428862) b!660629))

(assert (= (and b!660629 res!428864) b!660632))

(declare-fun m!633175 () Bool)

(assert (=> b!660629 m!633175))

(declare-fun m!633177 () Bool)

(assert (=> start!59830 m!633177))

(declare-fun m!633179 () Bool)

(assert (=> b!660624 m!633179))

(declare-fun m!633181 () Bool)

(assert (=> b!660632 m!633181))

(declare-fun m!633183 () Bool)

(assert (=> b!660626 m!633183))

(declare-fun m!633185 () Bool)

(assert (=> b!660625 m!633185))

(assert (=> b!660627 m!633183))

(declare-fun m!633187 () Bool)

(assert (=> b!660630 m!633187))

(push 1)

(assert (not b!660625))

(assert (not b!660632))

(assert (not b!660630))

(assert (not start!59830))

(assert (not b!660627))

(assert (not b!660624))

(assert (not b!660629))

(assert (not b!660626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

