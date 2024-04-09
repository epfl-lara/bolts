; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31050 () Bool)

(assert start!31050)

(declare-fun b!312024 () Bool)

(declare-fun res!168642 () Bool)

(declare-fun e!194604 () Bool)

(assert (=> b!312024 (=> (not res!168642) (not e!194604))))

(declare-datatypes ((array!15950 0))(
  ( (array!15951 (arr!7555 (Array (_ BitVec 32) (_ BitVec 64))) (size!7907 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15950)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!312024 (= res!168642 (and (= (size!7907 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7907 a!3293))))))

(declare-fun b!312025 () Bool)

(declare-fun res!168640 () Bool)

(declare-fun e!194605 () Bool)

(assert (=> b!312025 (=> (not res!168640) (not e!194605))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312025 (= res!168640 (and (= (select (arr!7555 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7907 a!3293))))))

(declare-fun b!312026 () Bool)

(declare-fun res!168641 () Bool)

(assert (=> b!312026 (=> (not res!168641) (not e!194604))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312026 (= res!168641 (validKeyInArray!0 k!2441))))

(declare-fun b!312027 () Bool)

(assert (=> b!312027 (= e!194604 e!194605)))

(declare-fun res!168645 () Bool)

(assert (=> b!312027 (=> (not res!168645) (not e!194605))))

(declare-datatypes ((SeekEntryResult!2706 0))(
  ( (MissingZero!2706 (index!13000 (_ BitVec 32))) (Found!2706 (index!13001 (_ BitVec 32))) (Intermediate!2706 (undefined!3518 Bool) (index!13002 (_ BitVec 32)) (x!31178 (_ BitVec 32))) (Undefined!2706) (MissingVacant!2706 (index!13003 (_ BitVec 32))) )
))
(declare-fun lt!152818 () SeekEntryResult!2706)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15950 (_ BitVec 32)) SeekEntryResult!2706)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312027 (= res!168645 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152818))))

(assert (=> b!312027 (= lt!152818 (Intermediate!2706 false resIndex!52 resX!52))))

(declare-fun b!312028 () Bool)

(declare-fun e!194602 () Bool)

(assert (=> b!312028 (= e!194602 true)))

(declare-fun lt!152825 () SeekEntryResult!2706)

(declare-fun lt!152821 () SeekEntryResult!2706)

(assert (=> b!312028 (= lt!152825 lt!152821)))

(declare-fun lt!152820 () (_ BitVec 32))

(declare-datatypes ((Unit!9610 0))(
  ( (Unit!9611) )
))
(declare-fun lt!152819 () Unit!9610)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15950 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9610)

(assert (=> b!312028 (= lt!152819 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152820 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312029 () Bool)

(declare-fun e!194603 () Bool)

(assert (=> b!312029 (= e!194605 e!194603)))

(declare-fun res!168637 () Bool)

(assert (=> b!312029 (=> (not res!168637) (not e!194603))))

(declare-fun lt!152823 () SeekEntryResult!2706)

(assert (=> b!312029 (= res!168637 (and (= lt!152823 lt!152818) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7555 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312029 (= lt!152823 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312030 () Bool)

(assert (=> b!312030 (= e!194603 (not e!194602))))

(declare-fun res!168643 () Bool)

(assert (=> b!312030 (=> res!168643 e!194602)))

(assert (=> b!312030 (= res!168643 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152820 #b00000000000000000000000000000000) (bvsge lt!152820 (size!7907 a!3293)) (not (= lt!152821 lt!152818))))))

(declare-fun lt!152822 () SeekEntryResult!2706)

(assert (=> b!312030 (= lt!152822 lt!152825)))

(declare-fun lt!152824 () array!15950)

(assert (=> b!312030 (= lt!152825 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152820 k!2441 lt!152824 mask!3709))))

(assert (=> b!312030 (= lt!152822 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152824 mask!3709))))

(assert (=> b!312030 (= lt!152824 (array!15951 (store (arr!7555 a!3293) i!1240 k!2441) (size!7907 a!3293)))))

(assert (=> b!312030 (= lt!152823 lt!152821)))

(assert (=> b!312030 (= lt!152821 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152820 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312030 (= lt!152820 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312031 () Bool)

(declare-fun res!168644 () Bool)

(assert (=> b!312031 (=> (not res!168644) (not e!194604))))

(declare-fun arrayContainsKey!0 (array!15950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312031 (= res!168644 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!168639 () Bool)

(assert (=> start!31050 (=> (not res!168639) (not e!194604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31050 (= res!168639 (validMask!0 mask!3709))))

(assert (=> start!31050 e!194604))

(declare-fun array_inv!5509 (array!15950) Bool)

(assert (=> start!31050 (array_inv!5509 a!3293)))

(assert (=> start!31050 true))

(declare-fun b!312032 () Bool)

(declare-fun res!168636 () Bool)

(assert (=> b!312032 (=> (not res!168636) (not e!194604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15950 (_ BitVec 32)) Bool)

(assert (=> b!312032 (= res!168636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312033 () Bool)

(declare-fun res!168638 () Bool)

(assert (=> b!312033 (=> (not res!168638) (not e!194604))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15950 (_ BitVec 32)) SeekEntryResult!2706)

(assert (=> b!312033 (= res!168638 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2706 i!1240)))))

(assert (= (and start!31050 res!168639) b!312024))

(assert (= (and b!312024 res!168642) b!312026))

(assert (= (and b!312026 res!168641) b!312031))

(assert (= (and b!312031 res!168644) b!312033))

(assert (= (and b!312033 res!168638) b!312032))

(assert (= (and b!312032 res!168636) b!312027))

(assert (= (and b!312027 res!168645) b!312025))

(assert (= (and b!312025 res!168640) b!312029))

(assert (= (and b!312029 res!168637) b!312030))

(assert (= (and b!312030 (not res!168643)) b!312028))

(declare-fun m!322123 () Bool)

(assert (=> b!312028 m!322123))

(declare-fun m!322125 () Bool)

(assert (=> b!312032 m!322125))

(declare-fun m!322127 () Bool)

(assert (=> b!312033 m!322127))

(declare-fun m!322129 () Bool)

(assert (=> b!312025 m!322129))

(declare-fun m!322131 () Bool)

(assert (=> b!312026 m!322131))

(declare-fun m!322133 () Bool)

(assert (=> b!312029 m!322133))

(declare-fun m!322135 () Bool)

(assert (=> b!312029 m!322135))

(declare-fun m!322137 () Bool)

(assert (=> start!31050 m!322137))

(declare-fun m!322139 () Bool)

(assert (=> start!31050 m!322139))

(declare-fun m!322141 () Bool)

(assert (=> b!312031 m!322141))

(declare-fun m!322143 () Bool)

(assert (=> b!312027 m!322143))

(assert (=> b!312027 m!322143))

(declare-fun m!322145 () Bool)

(assert (=> b!312027 m!322145))

(declare-fun m!322147 () Bool)

(assert (=> b!312030 m!322147))

(declare-fun m!322149 () Bool)

(assert (=> b!312030 m!322149))

(declare-fun m!322151 () Bool)

(assert (=> b!312030 m!322151))

(declare-fun m!322153 () Bool)

(assert (=> b!312030 m!322153))

(declare-fun m!322155 () Bool)

(assert (=> b!312030 m!322155))

(push 1)

