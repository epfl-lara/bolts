; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50860 () Bool)

(assert start!50860)

(declare-fun res!348780 () Bool)

(declare-fun e!320455 () Bool)

(assert (=> start!50860 (=> (not res!348780) (not e!320455))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50860 (= res!348780 (validMask!0 mask!3119))))

(assert (=> start!50860 e!320455))

(assert (=> start!50860 true))

(declare-datatypes ((array!35039 0))(
  ( (array!35040 (arr!16825 (Array (_ BitVec 32) (_ BitVec 64))) (size!17189 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35039)

(declare-fun array_inv!12599 (array!35039) Bool)

(assert (=> start!50860 (array_inv!12599 a!3118)))

(declare-fun b!556214 () Bool)

(declare-fun e!320454 () Bool)

(declare-fun e!320453 () Bool)

(assert (=> b!556214 (= e!320454 e!320453)))

(declare-fun res!348779 () Bool)

(assert (=> b!556214 (=> (not res!348779) (not e!320453))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!252832 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5281 0))(
  ( (MissingZero!5281 (index!23351 (_ BitVec 32))) (Found!5281 (index!23352 (_ BitVec 32))) (Intermediate!5281 (undefined!6093 Bool) (index!23353 (_ BitVec 32)) (x!52270 (_ BitVec 32))) (Undefined!5281) (MissingVacant!5281 (index!23354 (_ BitVec 32))) )
))
(declare-fun lt!252833 () SeekEntryResult!5281)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35039 (_ BitVec 32)) SeekEntryResult!5281)

(assert (=> b!556214 (= res!348779 (= lt!252833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252832 (select (store (arr!16825 a!3118) i!1132 k0!1914) j!142) (array!35040 (store (arr!16825 a!3118) i!1132 k0!1914) (size!17189 a!3118)) mask!3119)))))

(declare-fun lt!252836 () (_ BitVec 32))

(assert (=> b!556214 (= lt!252833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252836 (select (arr!16825 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556214 (= lt!252832 (toIndex!0 (select (store (arr!16825 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!556214 (= lt!252836 (toIndex!0 (select (arr!16825 a!3118) j!142) mask!3119))))

(declare-fun b!556215 () Bool)

(assert (=> b!556215 (= e!320455 e!320454)))

(declare-fun res!348778 () Bool)

(assert (=> b!556215 (=> (not res!348778) (not e!320454))))

(declare-fun lt!252834 () SeekEntryResult!5281)

(assert (=> b!556215 (= res!348778 (or (= lt!252834 (MissingZero!5281 i!1132)) (= lt!252834 (MissingVacant!5281 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35039 (_ BitVec 32)) SeekEntryResult!5281)

(assert (=> b!556215 (= lt!252834 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun e!320451 () Bool)

(declare-fun b!556216 () Bool)

(assert (=> b!556216 (= e!320451 (= (seekEntryOrOpen!0 (select (arr!16825 a!3118) j!142) a!3118 mask!3119) (Found!5281 j!142)))))

(declare-fun b!556217 () Bool)

(declare-fun res!348785 () Bool)

(assert (=> b!556217 (=> (not res!348785) (not e!320455))))

(declare-fun arrayContainsKey!0 (array!35039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556217 (= res!348785 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556218 () Bool)

(declare-fun res!348783 () Bool)

(assert (=> b!556218 (=> (not res!348783) (not e!320455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556218 (= res!348783 (validKeyInArray!0 k0!1914))))

(declare-fun b!556219 () Bool)

(declare-fun res!348781 () Bool)

(assert (=> b!556219 (=> (not res!348781) (not e!320454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35039 (_ BitVec 32)) Bool)

(assert (=> b!556219 (= res!348781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556220 () Bool)

(declare-fun res!348784 () Bool)

(assert (=> b!556220 (=> (not res!348784) (not e!320455))))

(assert (=> b!556220 (= res!348784 (validKeyInArray!0 (select (arr!16825 a!3118) j!142)))))

(declare-fun b!556221 () Bool)

(get-info :version)

(assert (=> b!556221 (= e!320453 (not (or (not ((_ is Intermediate!5281) lt!252833)) (undefined!6093 lt!252833) (= (select (arr!16825 a!3118) (index!23353 lt!252833)) (select (arr!16825 a!3118) j!142)) (= (select (arr!16825 a!3118) (index!23353 lt!252833)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!556221 e!320451))

(declare-fun res!348777 () Bool)

(assert (=> b!556221 (=> (not res!348777) (not e!320451))))

(assert (=> b!556221 (= res!348777 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17336 0))(
  ( (Unit!17337) )
))
(declare-fun lt!252835 () Unit!17336)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17336)

(assert (=> b!556221 (= lt!252835 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556222 () Bool)

(declare-fun res!348782 () Bool)

(assert (=> b!556222 (=> (not res!348782) (not e!320454))))

(declare-datatypes ((List!10958 0))(
  ( (Nil!10955) (Cons!10954 (h!11939 (_ BitVec 64)) (t!17194 List!10958)) )
))
(declare-fun arrayNoDuplicates!0 (array!35039 (_ BitVec 32) List!10958) Bool)

(assert (=> b!556222 (= res!348782 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10955))))

(declare-fun b!556223 () Bool)

(declare-fun res!348776 () Bool)

(assert (=> b!556223 (=> (not res!348776) (not e!320455))))

(assert (=> b!556223 (= res!348776 (and (= (size!17189 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17189 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17189 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50860 res!348780) b!556223))

(assert (= (and b!556223 res!348776) b!556220))

(assert (= (and b!556220 res!348784) b!556218))

(assert (= (and b!556218 res!348783) b!556217))

(assert (= (and b!556217 res!348785) b!556215))

(assert (= (and b!556215 res!348778) b!556219))

(assert (= (and b!556219 res!348781) b!556222))

(assert (= (and b!556222 res!348782) b!556214))

(assert (= (and b!556214 res!348779) b!556221))

(assert (= (and b!556221 res!348777) b!556216))

(declare-fun m!534237 () Bool)

(assert (=> start!50860 m!534237))

(declare-fun m!534239 () Bool)

(assert (=> start!50860 m!534239))

(declare-fun m!534241 () Bool)

(assert (=> b!556214 m!534241))

(declare-fun m!534243 () Bool)

(assert (=> b!556214 m!534243))

(assert (=> b!556214 m!534241))

(declare-fun m!534245 () Bool)

(assert (=> b!556214 m!534245))

(declare-fun m!534247 () Bool)

(assert (=> b!556214 m!534247))

(assert (=> b!556214 m!534245))

(declare-fun m!534249 () Bool)

(assert (=> b!556214 m!534249))

(assert (=> b!556214 m!534241))

(declare-fun m!534251 () Bool)

(assert (=> b!556214 m!534251))

(assert (=> b!556214 m!534245))

(declare-fun m!534253 () Bool)

(assert (=> b!556214 m!534253))

(declare-fun m!534255 () Bool)

(assert (=> b!556219 m!534255))

(declare-fun m!534257 () Bool)

(assert (=> b!556218 m!534257))

(declare-fun m!534259 () Bool)

(assert (=> b!556221 m!534259))

(assert (=> b!556221 m!534241))

(declare-fun m!534261 () Bool)

(assert (=> b!556221 m!534261))

(declare-fun m!534263 () Bool)

(assert (=> b!556221 m!534263))

(assert (=> b!556216 m!534241))

(assert (=> b!556216 m!534241))

(declare-fun m!534265 () Bool)

(assert (=> b!556216 m!534265))

(assert (=> b!556220 m!534241))

(assert (=> b!556220 m!534241))

(declare-fun m!534267 () Bool)

(assert (=> b!556220 m!534267))

(declare-fun m!534269 () Bool)

(assert (=> b!556217 m!534269))

(declare-fun m!534271 () Bool)

(assert (=> b!556215 m!534271))

(declare-fun m!534273 () Bool)

(assert (=> b!556222 m!534273))

(check-sat (not b!556222) (not b!556217) (not b!556219) (not b!556214) (not b!556216) (not b!556221) (not start!50860) (not b!556220) (not b!556215) (not b!556218))
(check-sat)
