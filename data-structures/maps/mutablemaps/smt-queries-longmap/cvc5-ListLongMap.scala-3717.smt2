; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51116 () Bool)

(assert start!51116)

(declare-fun b!558292 () Bool)

(declare-fun e!321617 () Bool)

(declare-fun e!321621 () Bool)

(assert (=> b!558292 (= e!321617 e!321621)))

(declare-fun res!350315 () Bool)

(assert (=> b!558292 (=> res!350315 e!321621)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5319 0))(
  ( (MissingZero!5319 (index!23503 (_ BitVec 32))) (Found!5319 (index!23504 (_ BitVec 32))) (Intermediate!5319 (undefined!6131 Bool) (index!23505 (_ BitVec 32)) (x!52430 (_ BitVec 32))) (Undefined!5319) (MissingVacant!5319 (index!23506 (_ BitVec 32))) )
))
(declare-fun lt!253764 () SeekEntryResult!5319)

(declare-datatypes ((array!35124 0))(
  ( (array!35125 (arr!16863 (Array (_ BitVec 32) (_ BitVec 64))) (size!17227 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35124)

(assert (=> b!558292 (= res!350315 (or (undefined!6131 lt!253764) (not (is-Intermediate!5319 lt!253764)) (= (select (arr!16863 a!3118) (index!23505 lt!253764)) (select (arr!16863 a!3118) j!142)) (= (select (arr!16863 a!3118) (index!23505 lt!253764)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558293 () Bool)

(declare-fun res!350311 () Bool)

(declare-fun e!321618 () Bool)

(assert (=> b!558293 (=> (not res!350311) (not e!321618))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558293 (= res!350311 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun lt!253768 () SeekEntryResult!5319)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!558294 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35124 (_ BitVec 32)) SeekEntryResult!5319)

(assert (=> b!558294 (= e!321621 (= lt!253768 (seekKeyOrZeroReturnVacant!0 (x!52430 lt!253764) (index!23505 lt!253764) (index!23505 lt!253764) (select (arr!16863 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558295 () Bool)

(declare-fun res!350308 () Bool)

(assert (=> b!558295 (=> (not res!350308) (not e!321618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558295 (= res!350308 (validKeyInArray!0 (select (arr!16863 a!3118) j!142)))))

(declare-fun b!558296 () Bool)

(declare-fun e!321620 () Bool)

(assert (=> b!558296 (= e!321620 (not true))))

(assert (=> b!558296 e!321617))

(declare-fun res!350310 () Bool)

(assert (=> b!558296 (=> (not res!350310) (not e!321617))))

(assert (=> b!558296 (= res!350310 (= lt!253768 (Found!5319 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35124 (_ BitVec 32)) SeekEntryResult!5319)

(assert (=> b!558296 (= lt!253768 (seekEntryOrOpen!0 (select (arr!16863 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35124 (_ BitVec 32)) Bool)

(assert (=> b!558296 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17412 0))(
  ( (Unit!17413) )
))
(declare-fun lt!253769 () Unit!17412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17412)

(assert (=> b!558296 (= lt!253769 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558297 () Bool)

(declare-fun res!350305 () Bool)

(declare-fun e!321619 () Bool)

(assert (=> b!558297 (=> (not res!350305) (not e!321619))))

(declare-datatypes ((List!10996 0))(
  ( (Nil!10993) (Cons!10992 (h!11986 (_ BitVec 64)) (t!17232 List!10996)) )
))
(declare-fun arrayNoDuplicates!0 (array!35124 (_ BitVec 32) List!10996) Bool)

(assert (=> b!558297 (= res!350305 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10993))))

(declare-fun b!558298 () Bool)

(assert (=> b!558298 (= e!321619 e!321620)))

(declare-fun res!350312 () Bool)

(assert (=> b!558298 (=> (not res!350312) (not e!321620))))

(declare-fun lt!253767 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35124 (_ BitVec 32)) SeekEntryResult!5319)

(assert (=> b!558298 (= res!350312 (= lt!253764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253767 (select (store (arr!16863 a!3118) i!1132 k!1914) j!142) (array!35125 (store (arr!16863 a!3118) i!1132 k!1914) (size!17227 a!3118)) mask!3119)))))

(declare-fun lt!253766 () (_ BitVec 32))

(assert (=> b!558298 (= lt!253764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253766 (select (arr!16863 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558298 (= lt!253767 (toIndex!0 (select (store (arr!16863 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558298 (= lt!253766 (toIndex!0 (select (arr!16863 a!3118) j!142) mask!3119))))

(declare-fun res!350314 () Bool)

(assert (=> start!51116 (=> (not res!350314) (not e!321618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51116 (= res!350314 (validMask!0 mask!3119))))

(assert (=> start!51116 e!321618))

(assert (=> start!51116 true))

(declare-fun array_inv!12637 (array!35124) Bool)

(assert (=> start!51116 (array_inv!12637 a!3118)))

(declare-fun b!558299 () Bool)

(assert (=> b!558299 (= e!321618 e!321619)))

(declare-fun res!350313 () Bool)

(assert (=> b!558299 (=> (not res!350313) (not e!321619))))

(declare-fun lt!253765 () SeekEntryResult!5319)

(assert (=> b!558299 (= res!350313 (or (= lt!253765 (MissingZero!5319 i!1132)) (= lt!253765 (MissingVacant!5319 i!1132))))))

(assert (=> b!558299 (= lt!253765 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558300 () Bool)

(declare-fun res!350306 () Bool)

(assert (=> b!558300 (=> (not res!350306) (not e!321619))))

(assert (=> b!558300 (= res!350306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558301 () Bool)

(declare-fun res!350307 () Bool)

(assert (=> b!558301 (=> (not res!350307) (not e!321618))))

(assert (=> b!558301 (= res!350307 (and (= (size!17227 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17227 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17227 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558302 () Bool)

(declare-fun res!350309 () Bool)

(assert (=> b!558302 (=> (not res!350309) (not e!321618))))

(assert (=> b!558302 (= res!350309 (validKeyInArray!0 k!1914))))

(assert (= (and start!51116 res!350314) b!558301))

(assert (= (and b!558301 res!350307) b!558295))

(assert (= (and b!558295 res!350308) b!558302))

(assert (= (and b!558302 res!350309) b!558293))

(assert (= (and b!558293 res!350311) b!558299))

(assert (= (and b!558299 res!350313) b!558300))

(assert (= (and b!558300 res!350306) b!558297))

(assert (= (and b!558297 res!350305) b!558298))

(assert (= (and b!558298 res!350312) b!558296))

(assert (= (and b!558296 res!350310) b!558292))

(assert (= (and b!558292 (not res!350315)) b!558294))

(declare-fun m!536317 () Bool)

(assert (=> b!558294 m!536317))

(assert (=> b!558294 m!536317))

(declare-fun m!536319 () Bool)

(assert (=> b!558294 m!536319))

(declare-fun m!536321 () Bool)

(assert (=> b!558302 m!536321))

(declare-fun m!536323 () Bool)

(assert (=> b!558293 m!536323))

(declare-fun m!536325 () Bool)

(assert (=> b!558299 m!536325))

(assert (=> b!558295 m!536317))

(assert (=> b!558295 m!536317))

(declare-fun m!536327 () Bool)

(assert (=> b!558295 m!536327))

(declare-fun m!536329 () Bool)

(assert (=> b!558300 m!536329))

(declare-fun m!536331 () Bool)

(assert (=> start!51116 m!536331))

(declare-fun m!536333 () Bool)

(assert (=> start!51116 m!536333))

(declare-fun m!536335 () Bool)

(assert (=> b!558292 m!536335))

(assert (=> b!558292 m!536317))

(assert (=> b!558298 m!536317))

(declare-fun m!536337 () Bool)

(assert (=> b!558298 m!536337))

(assert (=> b!558298 m!536317))

(declare-fun m!536339 () Bool)

(assert (=> b!558298 m!536339))

(assert (=> b!558298 m!536317))

(declare-fun m!536341 () Bool)

(assert (=> b!558298 m!536341))

(assert (=> b!558298 m!536341))

(declare-fun m!536343 () Bool)

(assert (=> b!558298 m!536343))

(declare-fun m!536345 () Bool)

(assert (=> b!558298 m!536345))

(assert (=> b!558298 m!536341))

(declare-fun m!536347 () Bool)

(assert (=> b!558298 m!536347))

(declare-fun m!536349 () Bool)

(assert (=> b!558297 m!536349))

(assert (=> b!558296 m!536317))

(assert (=> b!558296 m!536317))

(declare-fun m!536351 () Bool)

(assert (=> b!558296 m!536351))

(declare-fun m!536353 () Bool)

(assert (=> b!558296 m!536353))

(declare-fun m!536355 () Bool)

(assert (=> b!558296 m!536355))

(push 1)

