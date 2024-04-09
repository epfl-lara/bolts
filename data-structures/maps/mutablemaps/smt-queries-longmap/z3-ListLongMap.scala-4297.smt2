; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59828 () Bool)

(assert start!59828)

(declare-fun b!660597 () Bool)

(declare-fun e!379593 () Bool)

(declare-fun e!379595 () Bool)

(assert (=> b!660597 (= e!379593 e!379595)))

(declare-fun res!428839 () Bool)

(assert (=> b!660597 (=> (not res!428839) (not e!379595))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660597 (= res!428839 (bvsle from!3004 i!1382))))

(declare-fun b!660598 () Bool)

(declare-fun e!379597 () Bool)

(assert (=> b!660598 (= e!379597 false)))

(declare-fun lt!308754 () Bool)

(declare-datatypes ((array!38831 0))(
  ( (array!38832 (arr!18604 (Array (_ BitVec 32) (_ BitVec 64))) (size!18968 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38831)

(declare-datatypes ((List!12698 0))(
  ( (Nil!12695) (Cons!12694 (h!13739 (_ BitVec 64)) (t!18934 List!12698)) )
))
(declare-fun acc!681 () List!12698)

(declare-fun arrayNoDuplicates!0 (array!38831 (_ BitVec 32) List!12698) Bool)

(assert (=> b!660598 (= lt!308754 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660599 () Bool)

(declare-fun res!428841 () Bool)

(assert (=> b!660599 (=> (not res!428841) (not e!379597))))

(declare-fun contains!3241 (List!12698 (_ BitVec 64)) Bool)

(assert (=> b!660599 (= res!428841 (not (contains!3241 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660600 () Bool)

(declare-fun res!428835 () Bool)

(assert (=> b!660600 (=> (not res!428835) (not e!379597))))

(declare-fun noDuplicate!488 (List!12698) Bool)

(assert (=> b!660600 (= res!428835 (noDuplicate!488 acc!681))))

(declare-fun b!660601 () Bool)

(declare-fun res!428838 () Bool)

(assert (=> b!660601 (=> (not res!428838) (not e!379597))))

(assert (=> b!660601 (= res!428838 (not (contains!3241 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660602 () Bool)

(declare-fun e!379594 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!660602 (= e!379594 (contains!3241 acc!681 k0!2843))))

(declare-fun b!660603 () Bool)

(assert (=> b!660603 (= e!379595 (not (contains!3241 acc!681 k0!2843)))))

(declare-fun b!660604 () Bool)

(declare-fun res!428836 () Bool)

(assert (=> b!660604 (=> (not res!428836) (not e!379597))))

(assert (=> b!660604 (= res!428836 e!379593)))

(declare-fun res!428842 () Bool)

(assert (=> b!660604 (=> res!428842 e!379593)))

(assert (=> b!660604 (= res!428842 e!379594)))

(declare-fun res!428840 () Bool)

(assert (=> b!660604 (=> (not res!428840) (not e!379594))))

(assert (=> b!660604 (= res!428840 (bvsgt from!3004 i!1382))))

(declare-fun res!428843 () Bool)

(assert (=> start!59828 (=> (not res!428843) (not e!379597))))

(assert (=> start!59828 (= res!428843 (and (bvslt (size!18968 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18968 a!3626))))))

(assert (=> start!59828 e!379597))

(assert (=> start!59828 true))

(declare-fun array_inv!14378 (array!38831) Bool)

(assert (=> start!59828 (array_inv!14378 a!3626)))

(declare-fun b!660605 () Bool)

(declare-fun res!428837 () Bool)

(assert (=> b!660605 (=> (not res!428837) (not e!379597))))

(assert (=> b!660605 (= res!428837 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12695))))

(assert (= (and start!59828 res!428843) b!660600))

(assert (= (and b!660600 res!428835) b!660601))

(assert (= (and b!660601 res!428838) b!660599))

(assert (= (and b!660599 res!428841) b!660604))

(assert (= (and b!660604 res!428840) b!660602))

(assert (= (and b!660604 (not res!428842)) b!660597))

(assert (= (and b!660597 res!428839) b!660603))

(assert (= (and b!660604 res!428836) b!660605))

(assert (= (and b!660605 res!428837) b!660598))

(declare-fun m!633161 () Bool)

(assert (=> b!660599 m!633161))

(declare-fun m!633163 () Bool)

(assert (=> b!660601 m!633163))

(declare-fun m!633165 () Bool)

(assert (=> b!660600 m!633165))

(declare-fun m!633167 () Bool)

(assert (=> b!660598 m!633167))

(declare-fun m!633169 () Bool)

(assert (=> b!660605 m!633169))

(declare-fun m!633171 () Bool)

(assert (=> start!59828 m!633171))

(declare-fun m!633173 () Bool)

(assert (=> b!660603 m!633173))

(assert (=> b!660602 m!633173))

(check-sat (not b!660603) (not start!59828) (not b!660598) (not b!660599) (not b!660601) (not b!660605) (not b!660602) (not b!660600))
