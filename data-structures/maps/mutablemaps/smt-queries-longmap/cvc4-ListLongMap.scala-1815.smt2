; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32710 () Bool)

(assert start!32710)

(declare-fun b!326628 () Bool)

(declare-fun res!179822 () Bool)

(declare-fun e!201034 () Bool)

(assert (=> b!326628 (=> (not res!179822) (not e!201034))))

(declare-datatypes ((array!16743 0))(
  ( (array!16744 (arr!7923 (Array (_ BitVec 32) (_ BitVec 64))) (size!8275 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16743)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326628 (= res!179822 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7923 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326629 () Bool)

(declare-fun e!201033 () Bool)

(assert (=> b!326629 (= e!201033 e!201034)))

(declare-fun res!179824 () Bool)

(assert (=> b!326629 (=> (not res!179824) (not e!201034))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3065 0))(
  ( (MissingZero!3065 (index!14436 (_ BitVec 32))) (Found!3065 (index!14437 (_ BitVec 32))) (Intermediate!3065 (undefined!3877 Bool) (index!14438 (_ BitVec 32)) (x!32642 (_ BitVec 32))) (Undefined!3065) (MissingVacant!3065 (index!14439 (_ BitVec 32))) )
))
(declare-fun lt!157364 () SeekEntryResult!3065)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16743 (_ BitVec 32)) SeekEntryResult!3065)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326629 (= res!179824 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157364))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!326629 (= lt!157364 (Intermediate!3065 false resIndex!58 resX!58))))

(declare-fun res!179819 () Bool)

(assert (=> start!32710 (=> (not res!179819) (not e!201033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32710 (= res!179819 (validMask!0 mask!3777))))

(assert (=> start!32710 e!201033))

(declare-fun array_inv!5877 (array!16743) Bool)

(assert (=> start!32710 (array_inv!5877 a!3305)))

(assert (=> start!32710 true))

(declare-fun b!326630 () Bool)

(declare-fun res!179817 () Bool)

(assert (=> b!326630 (=> (not res!179817) (not e!201033))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16743 (_ BitVec 32)) SeekEntryResult!3065)

(assert (=> b!326630 (= res!179817 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3065 i!1250)))))

(declare-fun b!326631 () Bool)

(declare-fun res!179821 () Bool)

(assert (=> b!326631 (=> (not res!179821) (not e!201033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16743 (_ BitVec 32)) Bool)

(assert (=> b!326631 (= res!179821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326632 () Bool)

(declare-fun res!179825 () Bool)

(assert (=> b!326632 (=> (not res!179825) (not e!201033))))

(assert (=> b!326632 (= res!179825 (and (= (size!8275 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8275 a!3305))))))

(declare-fun b!326633 () Bool)

(declare-fun res!179823 () Bool)

(assert (=> b!326633 (=> (not res!179823) (not e!201033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326633 (= res!179823 (validKeyInArray!0 k!2497))))

(declare-fun b!326634 () Bool)

(declare-fun res!179818 () Bool)

(assert (=> b!326634 (=> (not res!179818) (not e!201033))))

(declare-fun arrayContainsKey!0 (array!16743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326634 (= res!179818 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326635 () Bool)

(declare-fun res!179826 () Bool)

(assert (=> b!326635 (=> (not res!179826) (not e!201034))))

(assert (=> b!326635 (= res!179826 (and (= (select (arr!7923 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8275 a!3305))))))

(declare-fun b!326636 () Bool)

(declare-fun res!179820 () Bool)

(assert (=> b!326636 (=> (not res!179820) (not e!201034))))

(assert (=> b!326636 (= res!179820 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157364))))

(declare-fun b!326637 () Bool)

(assert (=> b!326637 (= e!201034 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10139 0))(
  ( (Unit!10140) )
))
(declare-fun lt!157363 () Unit!10139)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16743 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10139)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326637 (= lt!157363 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(assert (= (and start!32710 res!179819) b!326632))

(assert (= (and b!326632 res!179825) b!326633))

(assert (= (and b!326633 res!179823) b!326634))

(assert (= (and b!326634 res!179818) b!326630))

(assert (= (and b!326630 res!179817) b!326631))

(assert (= (and b!326631 res!179821) b!326629))

(assert (= (and b!326629 res!179824) b!326635))

(assert (= (and b!326635 res!179826) b!326636))

(assert (= (and b!326636 res!179820) b!326628))

(assert (= (and b!326628 res!179822) b!326637))

(declare-fun m!333167 () Bool)

(assert (=> b!326631 m!333167))

(declare-fun m!333169 () Bool)

(assert (=> b!326633 m!333169))

(declare-fun m!333171 () Bool)

(assert (=> b!326634 m!333171))

(declare-fun m!333173 () Bool)

(assert (=> b!326630 m!333173))

(declare-fun m!333175 () Bool)

(assert (=> b!326628 m!333175))

(declare-fun m!333177 () Bool)

(assert (=> b!326629 m!333177))

(assert (=> b!326629 m!333177))

(declare-fun m!333179 () Bool)

(assert (=> b!326629 m!333179))

(declare-fun m!333181 () Bool)

(assert (=> b!326635 m!333181))

(declare-fun m!333183 () Bool)

(assert (=> b!326637 m!333183))

(assert (=> b!326637 m!333183))

(declare-fun m!333185 () Bool)

(assert (=> b!326637 m!333185))

(declare-fun m!333187 () Bool)

(assert (=> start!32710 m!333187))

(declare-fun m!333189 () Bool)

(assert (=> start!32710 m!333189))

(declare-fun m!333191 () Bool)

(assert (=> b!326636 m!333191))

(push 1)

(assert (not b!326634))

(assert (not b!326631))

(assert (not b!326633))

(assert (not b!326637))

(assert (not b!326636))

(assert (not b!326630))

(assert (not start!32710))

(assert (not b!326629))

(check-sat)

(pop 1)

