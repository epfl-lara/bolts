; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50866 () Bool)

(assert start!50866)

(declare-fun b!556304 () Bool)

(declare-fun res!348875 () Bool)

(declare-fun e!320493 () Bool)

(assert (=> b!556304 (=> (not res!348875) (not e!320493))))

(declare-datatypes ((array!35045 0))(
  ( (array!35046 (arr!16828 (Array (_ BitVec 32) (_ BitVec 64))) (size!17192 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35045)

(declare-datatypes ((List!10961 0))(
  ( (Nil!10958) (Cons!10957 (h!11942 (_ BitVec 64)) (t!17197 List!10961)) )
))
(declare-fun arrayNoDuplicates!0 (array!35045 (_ BitVec 32) List!10961) Bool)

(assert (=> b!556304 (= res!348875 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10958))))

(declare-fun res!348867 () Bool)

(declare-fun e!320492 () Bool)

(assert (=> start!50866 (=> (not res!348867) (not e!320492))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50866 (= res!348867 (validMask!0 mask!3119))))

(assert (=> start!50866 e!320492))

(assert (=> start!50866 true))

(declare-fun array_inv!12602 (array!35045) Bool)

(assert (=> start!50866 (array_inv!12602 a!3118)))

(declare-fun b!556305 () Bool)

(declare-fun res!348868 () Bool)

(assert (=> b!556305 (=> (not res!348868) (not e!320492))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556305 (= res!348868 (and (= (size!17192 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17192 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17192 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556306 () Bool)

(declare-fun res!348869 () Bool)

(assert (=> b!556306 (=> (not res!348869) (not e!320493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35045 (_ BitVec 32)) Bool)

(assert (=> b!556306 (= res!348869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556307 () Bool)

(assert (=> b!556307 (= e!320493 (not true))))

(declare-fun e!320494 () Bool)

(assert (=> b!556307 e!320494))

(declare-fun res!348872 () Bool)

(assert (=> b!556307 (=> (not res!348872) (not e!320494))))

(assert (=> b!556307 (= res!348872 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17342 0))(
  ( (Unit!17343) )
))
(declare-fun lt!252863 () Unit!17342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17342)

(assert (=> b!556307 (= lt!252863 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556308 () Bool)

(declare-fun res!348873 () Bool)

(assert (=> b!556308 (=> (not res!348873) (not e!320492))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556308 (= res!348873 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556309 () Bool)

(declare-fun res!348871 () Bool)

(assert (=> b!556309 (=> (not res!348871) (not e!320492))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556309 (= res!348871 (validKeyInArray!0 k0!1914))))

(declare-fun b!556310 () Bool)

(declare-datatypes ((SeekEntryResult!5284 0))(
  ( (MissingZero!5284 (index!23363 (_ BitVec 32))) (Found!5284 (index!23364 (_ BitVec 32))) (Intermediate!5284 (undefined!6096 Bool) (index!23365 (_ BitVec 32)) (x!52281 (_ BitVec 32))) (Undefined!5284) (MissingVacant!5284 (index!23366 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35045 (_ BitVec 32)) SeekEntryResult!5284)

(assert (=> b!556310 (= e!320494 (= (seekEntryOrOpen!0 (select (arr!16828 a!3118) j!142) a!3118 mask!3119) (Found!5284 j!142)))))

(declare-fun b!556311 () Bool)

(assert (=> b!556311 (= e!320492 e!320493)))

(declare-fun res!348866 () Bool)

(assert (=> b!556311 (=> (not res!348866) (not e!320493))))

(declare-fun lt!252862 () SeekEntryResult!5284)

(assert (=> b!556311 (= res!348866 (or (= lt!252862 (MissingZero!5284 i!1132)) (= lt!252862 (MissingVacant!5284 i!1132))))))

(assert (=> b!556311 (= lt!252862 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!556312 () Bool)

(declare-fun res!348874 () Bool)

(assert (=> b!556312 (=> (not res!348874) (not e!320493))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35045 (_ BitVec 32)) SeekEntryResult!5284)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556312 (= res!348874 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16828 a!3118) j!142) mask!3119) (select (arr!16828 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16828 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16828 a!3118) i!1132 k0!1914) j!142) (array!35046 (store (arr!16828 a!3118) i!1132 k0!1914) (size!17192 a!3118)) mask!3119)))))

(declare-fun b!556313 () Bool)

(declare-fun res!348870 () Bool)

(assert (=> b!556313 (=> (not res!348870) (not e!320492))))

(assert (=> b!556313 (= res!348870 (validKeyInArray!0 (select (arr!16828 a!3118) j!142)))))

(assert (= (and start!50866 res!348867) b!556305))

(assert (= (and b!556305 res!348868) b!556313))

(assert (= (and b!556313 res!348870) b!556309))

(assert (= (and b!556309 res!348871) b!556308))

(assert (= (and b!556308 res!348873) b!556311))

(assert (= (and b!556311 res!348866) b!556306))

(assert (= (and b!556306 res!348869) b!556304))

(assert (= (and b!556304 res!348875) b!556312))

(assert (= (and b!556312 res!348874) b!556307))

(assert (= (and b!556307 res!348872) b!556310))

(declare-fun m!534349 () Bool)

(assert (=> start!50866 m!534349))

(declare-fun m!534351 () Bool)

(assert (=> start!50866 m!534351))

(declare-fun m!534353 () Bool)

(assert (=> b!556312 m!534353))

(declare-fun m!534355 () Bool)

(assert (=> b!556312 m!534355))

(assert (=> b!556312 m!534353))

(declare-fun m!534357 () Bool)

(assert (=> b!556312 m!534357))

(declare-fun m!534359 () Bool)

(assert (=> b!556312 m!534359))

(assert (=> b!556312 m!534357))

(declare-fun m!534361 () Bool)

(assert (=> b!556312 m!534361))

(assert (=> b!556312 m!534355))

(assert (=> b!556312 m!534353))

(declare-fun m!534363 () Bool)

(assert (=> b!556312 m!534363))

(declare-fun m!534365 () Bool)

(assert (=> b!556312 m!534365))

(assert (=> b!556312 m!534357))

(assert (=> b!556312 m!534359))

(declare-fun m!534367 () Bool)

(assert (=> b!556309 m!534367))

(declare-fun m!534369 () Bool)

(assert (=> b!556308 m!534369))

(declare-fun m!534371 () Bool)

(assert (=> b!556306 m!534371))

(assert (=> b!556313 m!534353))

(assert (=> b!556313 m!534353))

(declare-fun m!534373 () Bool)

(assert (=> b!556313 m!534373))

(assert (=> b!556310 m!534353))

(assert (=> b!556310 m!534353))

(declare-fun m!534375 () Bool)

(assert (=> b!556310 m!534375))

(declare-fun m!534377 () Bool)

(assert (=> b!556304 m!534377))

(declare-fun m!534379 () Bool)

(assert (=> b!556311 m!534379))

(declare-fun m!534381 () Bool)

(assert (=> b!556307 m!534381))

(declare-fun m!534383 () Bool)

(assert (=> b!556307 m!534383))

(check-sat (not b!556310) (not b!556313) (not b!556308) (not start!50866) (not b!556311) (not b!556307) (not b!556304) (not b!556309) (not b!556312) (not b!556306))
(check-sat)
