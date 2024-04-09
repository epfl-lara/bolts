; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33296 () Bool)

(assert start!33296)

(declare-fun b!330783 () Bool)

(declare-fun e!203002 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!330783 (= e!203002 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1490)) (bvsub #b01111111111111111111111111111110 x!1490)))))

(declare-fun lt!158650 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330783 (= lt!158650 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!330784 () Bool)

(declare-fun res!182344 () Bool)

(assert (=> b!330784 (=> (not res!182344) (not e!203002))))

(declare-datatypes ((array!16900 0))(
  ( (array!16901 (arr!7988 (Array (_ BitVec 32) (_ BitVec 64))) (size!8340 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16900)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330784 (= res!182344 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7988 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!330785 () Bool)

(declare-fun res!182349 () Bool)

(assert (=> b!330785 (=> (not res!182349) (not e!203002))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330785 (= res!182349 (and (= (select (arr!7988 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8340 a!3305))))))

(declare-fun res!182351 () Bool)

(declare-fun e!203000 () Bool)

(assert (=> start!33296 (=> (not res!182351) (not e!203000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33296 (= res!182351 (validMask!0 mask!3777))))

(assert (=> start!33296 e!203000))

(declare-fun array_inv!5942 (array!16900) Bool)

(assert (=> start!33296 (array_inv!5942 a!3305)))

(assert (=> start!33296 true))

(declare-fun b!330786 () Bool)

(assert (=> b!330786 (= e!203000 e!203002)))

(declare-fun res!182348 () Bool)

(assert (=> b!330786 (=> (not res!182348) (not e!203002))))

(declare-datatypes ((SeekEntryResult!3130 0))(
  ( (MissingZero!3130 (index!14696 (_ BitVec 32))) (Found!3130 (index!14697 (_ BitVec 32))) (Intermediate!3130 (undefined!3942 Bool) (index!14698 (_ BitVec 32)) (x!32949 (_ BitVec 32))) (Undefined!3130) (MissingVacant!3130 (index!14699 (_ BitVec 32))) )
))
(declare-fun lt!158651 () SeekEntryResult!3130)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16900 (_ BitVec 32)) SeekEntryResult!3130)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330786 (= res!182348 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158651))))

(assert (=> b!330786 (= lt!158651 (Intermediate!3130 false resIndex!58 resX!58))))

(declare-fun b!330787 () Bool)

(declare-fun res!182352 () Bool)

(assert (=> b!330787 (=> (not res!182352) (not e!203000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330787 (= res!182352 (validKeyInArray!0 k0!2497))))

(declare-fun b!330788 () Bool)

(declare-fun res!182350 () Bool)

(assert (=> b!330788 (=> (not res!182350) (not e!203000))))

(assert (=> b!330788 (= res!182350 (and (= (size!8340 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8340 a!3305))))))

(declare-fun b!330789 () Bool)

(declare-fun res!182345 () Bool)

(assert (=> b!330789 (=> (not res!182345) (not e!203000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16900 (_ BitVec 32)) Bool)

(assert (=> b!330789 (= res!182345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330790 () Bool)

(declare-fun res!182343 () Bool)

(assert (=> b!330790 (=> (not res!182343) (not e!203000))))

(declare-fun arrayContainsKey!0 (array!16900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330790 (= res!182343 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330791 () Bool)

(declare-fun res!182347 () Bool)

(assert (=> b!330791 (=> (not res!182347) (not e!203000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16900 (_ BitVec 32)) SeekEntryResult!3130)

(assert (=> b!330791 (= res!182347 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3130 i!1250)))))

(declare-fun b!330792 () Bool)

(declare-fun res!182346 () Bool)

(assert (=> b!330792 (=> (not res!182346) (not e!203002))))

(assert (=> b!330792 (= res!182346 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158651))))

(assert (= (and start!33296 res!182351) b!330788))

(assert (= (and b!330788 res!182350) b!330787))

(assert (= (and b!330787 res!182352) b!330790))

(assert (= (and b!330790 res!182343) b!330791))

(assert (= (and b!330791 res!182347) b!330789))

(assert (= (and b!330789 res!182345) b!330786))

(assert (= (and b!330786 res!182348) b!330785))

(assert (= (and b!330785 res!182349) b!330792))

(assert (= (and b!330792 res!182346) b!330784))

(assert (= (and b!330784 res!182344) b!330783))

(declare-fun m!335845 () Bool)

(assert (=> b!330791 m!335845))

(declare-fun m!335847 () Bool)

(assert (=> b!330786 m!335847))

(assert (=> b!330786 m!335847))

(declare-fun m!335849 () Bool)

(assert (=> b!330786 m!335849))

(declare-fun m!335851 () Bool)

(assert (=> b!330787 m!335851))

(declare-fun m!335853 () Bool)

(assert (=> b!330783 m!335853))

(declare-fun m!335855 () Bool)

(assert (=> start!33296 m!335855))

(declare-fun m!335857 () Bool)

(assert (=> start!33296 m!335857))

(declare-fun m!335859 () Bool)

(assert (=> b!330790 m!335859))

(declare-fun m!335861 () Bool)

(assert (=> b!330785 m!335861))

(declare-fun m!335863 () Bool)

(assert (=> b!330789 m!335863))

(declare-fun m!335865 () Bool)

(assert (=> b!330792 m!335865))

(declare-fun m!335867 () Bool)

(assert (=> b!330784 m!335867))

(check-sat (not b!330783) (not b!330787) (not b!330792) (not b!330790) (not b!330786) (not b!330791) (not start!33296) (not b!330789))
(check-sat)
