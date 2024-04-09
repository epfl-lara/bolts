; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31038 () Bool)

(assert start!31038)

(declare-fun b!311844 () Bool)

(declare-fun e!194513 () Bool)

(declare-fun e!194511 () Bool)

(assert (=> b!311844 (= e!194513 e!194511)))

(declare-fun res!168460 () Bool)

(assert (=> b!311844 (=> (not res!168460) (not e!194511))))

(declare-datatypes ((array!15938 0))(
  ( (array!15939 (arr!7549 (Array (_ BitVec 32) (_ BitVec 64))) (size!7901 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15938)

(declare-datatypes ((SeekEntryResult!2700 0))(
  ( (MissingZero!2700 (index!12976 (_ BitVec 32))) (Found!2700 (index!12977 (_ BitVec 32))) (Intermediate!2700 (undefined!3512 Bool) (index!12978 (_ BitVec 32)) (x!31156 (_ BitVec 32))) (Undefined!2700) (MissingVacant!2700 (index!12979 (_ BitVec 32))) )
))
(declare-fun lt!152677 () SeekEntryResult!2700)

(declare-fun lt!152680 () SeekEntryResult!2700)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311844 (= res!168460 (and (= lt!152680 lt!152677) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7549 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15938 (_ BitVec 32)) SeekEntryResult!2700)

(assert (=> b!311844 (= lt!152680 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311845 () Bool)

(declare-fun res!168459 () Bool)

(declare-fun e!194514 () Bool)

(assert (=> b!311845 (=> (not res!168459) (not e!194514))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311845 (= res!168459 (and (= (size!7901 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7901 a!3293))))))

(declare-fun b!311846 () Bool)

(assert (=> b!311846 (= e!194514 e!194513)))

(declare-fun res!168456 () Bool)

(assert (=> b!311846 (=> (not res!168456) (not e!194513))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311846 (= res!168456 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152677))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311846 (= lt!152677 (Intermediate!2700 false resIndex!52 resX!52))))

(declare-fun b!311847 () Bool)

(declare-fun res!168457 () Bool)

(assert (=> b!311847 (=> (not res!168457) (not e!194514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15938 (_ BitVec 32)) Bool)

(assert (=> b!311847 (= res!168457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311848 () Bool)

(declare-fun e!194512 () Bool)

(assert (=> b!311848 (= e!194511 (not e!194512))))

(declare-fun res!168461 () Bool)

(assert (=> b!311848 (=> res!168461 e!194512)))

(declare-fun lt!152678 () SeekEntryResult!2700)

(declare-fun lt!152676 () (_ BitVec 32))

(assert (=> b!311848 (= res!168461 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152676 #b00000000000000000000000000000000) (bvsge lt!152676 (size!7901 a!3293)) (not (= lt!152678 lt!152677))))))

(declare-fun lt!152675 () SeekEntryResult!2700)

(declare-fun lt!152679 () SeekEntryResult!2700)

(assert (=> b!311848 (= lt!152675 lt!152679)))

(declare-fun lt!152674 () array!15938)

(assert (=> b!311848 (= lt!152679 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152676 k!2441 lt!152674 mask!3709))))

(assert (=> b!311848 (= lt!152675 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152674 mask!3709))))

(assert (=> b!311848 (= lt!152674 (array!15939 (store (arr!7549 a!3293) i!1240 k!2441) (size!7901 a!3293)))))

(assert (=> b!311848 (= lt!152680 lt!152678)))

(assert (=> b!311848 (= lt!152678 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152676 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311848 (= lt!152676 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311849 () Bool)

(declare-fun res!168465 () Bool)

(assert (=> b!311849 (=> (not res!168465) (not e!194514))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15938 (_ BitVec 32)) SeekEntryResult!2700)

(assert (=> b!311849 (= res!168465 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2700 i!1240)))))

(declare-fun b!311850 () Bool)

(declare-fun res!168463 () Bool)

(assert (=> b!311850 (=> (not res!168463) (not e!194514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311850 (= res!168463 (validKeyInArray!0 k!2441))))

(declare-fun res!168464 () Bool)

(assert (=> start!31038 (=> (not res!168464) (not e!194514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31038 (= res!168464 (validMask!0 mask!3709))))

(assert (=> start!31038 e!194514))

(declare-fun array_inv!5503 (array!15938) Bool)

(assert (=> start!31038 (array_inv!5503 a!3293)))

(assert (=> start!31038 true))

(declare-fun b!311851 () Bool)

(declare-fun res!168462 () Bool)

(assert (=> b!311851 (=> (not res!168462) (not e!194513))))

(assert (=> b!311851 (= res!168462 (and (= (select (arr!7549 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7901 a!3293))))))

(declare-fun b!311852 () Bool)

(declare-fun res!168458 () Bool)

(assert (=> b!311852 (=> (not res!168458) (not e!194514))))

(declare-fun arrayContainsKey!0 (array!15938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311852 (= res!168458 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311853 () Bool)

(assert (=> b!311853 (= e!194512 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(assert (=> b!311853 (= lt!152679 lt!152678)))

(declare-datatypes ((Unit!9598 0))(
  ( (Unit!9599) )
))
(declare-fun lt!152681 () Unit!9598)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15938 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9598)

(assert (=> b!311853 (= lt!152681 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152676 resIndex!52 resX!52 mask!3709))))

(assert (= (and start!31038 res!168464) b!311845))

(assert (= (and b!311845 res!168459) b!311850))

(assert (= (and b!311850 res!168463) b!311852))

(assert (= (and b!311852 res!168458) b!311849))

(assert (= (and b!311849 res!168465) b!311847))

(assert (= (and b!311847 res!168457) b!311846))

(assert (= (and b!311846 res!168456) b!311851))

(assert (= (and b!311851 res!168462) b!311844))

(assert (= (and b!311844 res!168460) b!311848))

(assert (= (and b!311848 (not res!168461)) b!311853))

(declare-fun m!321919 () Bool)

(assert (=> b!311851 m!321919))

(declare-fun m!321921 () Bool)

(assert (=> start!31038 m!321921))

(declare-fun m!321923 () Bool)

(assert (=> start!31038 m!321923))

(declare-fun m!321925 () Bool)

(assert (=> b!311847 m!321925))

(declare-fun m!321927 () Bool)

(assert (=> b!311853 m!321927))

(declare-fun m!321929 () Bool)

(assert (=> b!311848 m!321929))

(declare-fun m!321931 () Bool)

(assert (=> b!311848 m!321931))

(declare-fun m!321933 () Bool)

(assert (=> b!311848 m!321933))

(declare-fun m!321935 () Bool)

(assert (=> b!311848 m!321935))

(declare-fun m!321937 () Bool)

(assert (=> b!311848 m!321937))

(declare-fun m!321939 () Bool)

(assert (=> b!311844 m!321939))

(declare-fun m!321941 () Bool)

(assert (=> b!311844 m!321941))

(declare-fun m!321943 () Bool)

(assert (=> b!311852 m!321943))

(declare-fun m!321945 () Bool)

(assert (=> b!311849 m!321945))

(declare-fun m!321947 () Bool)

(assert (=> b!311850 m!321947))

(declare-fun m!321949 () Bool)

(assert (=> b!311846 m!321949))

(assert (=> b!311846 m!321949))

(declare-fun m!321951 () Bool)

(assert (=> b!311846 m!321951))

(push 1)

(assert (not b!311849))

(assert (not b!311848))

(assert (not b!311846))

(assert (not b!311852))

(assert (not b!311847))

(assert (not b!311844))

(assert (not start!31038))

(assert (not b!311853))

(assert (not b!311850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

