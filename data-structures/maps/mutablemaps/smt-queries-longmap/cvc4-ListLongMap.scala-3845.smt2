; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52902 () Bool)

(assert start!52902)

(declare-fun b!576317 () Bool)

(declare-fun e!331563 () Bool)

(assert (=> b!576317 (= e!331563 (not true))))

(declare-fun e!331562 () Bool)

(assert (=> b!576317 e!331562))

(declare-fun res!364700 () Bool)

(assert (=> b!576317 (=> (not res!364700) (not e!331562))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35944 0))(
  ( (array!35945 (arr!17249 (Array (_ BitVec 32) (_ BitVec 64))) (size!17613 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35944)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35944 (_ BitVec 32)) Bool)

(assert (=> b!576317 (= res!364700 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18112 0))(
  ( (Unit!18113) )
))
(declare-fun lt!263638 () Unit!18112)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35944 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18112)

(assert (=> b!576317 (= lt!263638 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576318 () Bool)

(declare-fun res!364708 () Bool)

(declare-fun e!331561 () Bool)

(assert (=> b!576318 (=> (not res!364708) (not e!331561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576318 (= res!364708 (validKeyInArray!0 (select (arr!17249 a!3118) j!142)))))

(declare-fun res!364709 () Bool)

(assert (=> start!52902 (=> (not res!364709) (not e!331561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52902 (= res!364709 (validMask!0 mask!3119))))

(assert (=> start!52902 e!331561))

(assert (=> start!52902 true))

(declare-fun array_inv!13023 (array!35944) Bool)

(assert (=> start!52902 (array_inv!13023 a!3118)))

(declare-fun b!576319 () Bool)

(declare-fun res!364707 () Bool)

(assert (=> b!576319 (=> (not res!364707) (not e!331563))))

(assert (=> b!576319 (= res!364707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576320 () Bool)

(declare-fun res!364703 () Bool)

(assert (=> b!576320 (=> (not res!364703) (not e!331563))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5705 0))(
  ( (MissingZero!5705 (index!25047 (_ BitVec 32))) (Found!5705 (index!25048 (_ BitVec 32))) (Intermediate!5705 (undefined!6517 Bool) (index!25049 (_ BitVec 32)) (x!53963 (_ BitVec 32))) (Undefined!5705) (MissingVacant!5705 (index!25050 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35944 (_ BitVec 32)) SeekEntryResult!5705)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576320 (= res!364703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17249 a!3118) j!142) mask!3119) (select (arr!17249 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17249 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17249 a!3118) i!1132 k!1914) j!142) (array!35945 (store (arr!17249 a!3118) i!1132 k!1914) (size!17613 a!3118)) mask!3119)))))

(declare-fun b!576321 () Bool)

(declare-fun res!364706 () Bool)

(assert (=> b!576321 (=> (not res!364706) (not e!331561))))

(assert (=> b!576321 (= res!364706 (validKeyInArray!0 k!1914))))

(declare-fun b!576322 () Bool)

(declare-fun res!364702 () Bool)

(assert (=> b!576322 (=> (not res!364702) (not e!331563))))

(declare-datatypes ((List!11382 0))(
  ( (Nil!11379) (Cons!11378 (h!12420 (_ BitVec 64)) (t!17618 List!11382)) )
))
(declare-fun arrayNoDuplicates!0 (array!35944 (_ BitVec 32) List!11382) Bool)

(assert (=> b!576322 (= res!364702 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11379))))

(declare-fun b!576323 () Bool)

(declare-fun res!364704 () Bool)

(assert (=> b!576323 (=> (not res!364704) (not e!331561))))

(assert (=> b!576323 (= res!364704 (and (= (size!17613 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17613 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17613 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576324 () Bool)

(assert (=> b!576324 (= e!331561 e!331563)))

(declare-fun res!364701 () Bool)

(assert (=> b!576324 (=> (not res!364701) (not e!331563))))

(declare-fun lt!263639 () SeekEntryResult!5705)

(assert (=> b!576324 (= res!364701 (or (= lt!263639 (MissingZero!5705 i!1132)) (= lt!263639 (MissingVacant!5705 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35944 (_ BitVec 32)) SeekEntryResult!5705)

(assert (=> b!576324 (= lt!263639 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!576325 () Bool)

(assert (=> b!576325 (= e!331562 (= (seekEntryOrOpen!0 (select (arr!17249 a!3118) j!142) a!3118 mask!3119) (Found!5705 j!142)))))

(declare-fun b!576326 () Bool)

(declare-fun res!364705 () Bool)

(assert (=> b!576326 (=> (not res!364705) (not e!331561))))

(declare-fun arrayContainsKey!0 (array!35944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576326 (= res!364705 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52902 res!364709) b!576323))

(assert (= (and b!576323 res!364704) b!576318))

(assert (= (and b!576318 res!364708) b!576321))

(assert (= (and b!576321 res!364706) b!576326))

(assert (= (and b!576326 res!364705) b!576324))

(assert (= (and b!576324 res!364701) b!576319))

(assert (= (and b!576319 res!364707) b!576322))

(assert (= (and b!576322 res!364702) b!576320))

(assert (= (and b!576320 res!364703) b!576317))

(assert (= (and b!576317 res!364700) b!576325))

(declare-fun m!555331 () Bool)

(assert (=> b!576321 m!555331))

(declare-fun m!555333 () Bool)

(assert (=> b!576320 m!555333))

(declare-fun m!555335 () Bool)

(assert (=> b!576320 m!555335))

(assert (=> b!576320 m!555333))

(declare-fun m!555337 () Bool)

(assert (=> b!576320 m!555337))

(declare-fun m!555339 () Bool)

(assert (=> b!576320 m!555339))

(assert (=> b!576320 m!555337))

(declare-fun m!555341 () Bool)

(assert (=> b!576320 m!555341))

(assert (=> b!576320 m!555335))

(assert (=> b!576320 m!555333))

(declare-fun m!555343 () Bool)

(assert (=> b!576320 m!555343))

(declare-fun m!555345 () Bool)

(assert (=> b!576320 m!555345))

(assert (=> b!576320 m!555337))

(assert (=> b!576320 m!555339))

(assert (=> b!576318 m!555333))

(assert (=> b!576318 m!555333))

(declare-fun m!555347 () Bool)

(assert (=> b!576318 m!555347))

(declare-fun m!555349 () Bool)

(assert (=> b!576317 m!555349))

(declare-fun m!555351 () Bool)

(assert (=> b!576317 m!555351))

(declare-fun m!555353 () Bool)

(assert (=> b!576326 m!555353))

(assert (=> b!576325 m!555333))

(assert (=> b!576325 m!555333))

(declare-fun m!555355 () Bool)

(assert (=> b!576325 m!555355))

(declare-fun m!555357 () Bool)

(assert (=> b!576324 m!555357))

(declare-fun m!555359 () Bool)

(assert (=> b!576322 m!555359))

(declare-fun m!555361 () Bool)

(assert (=> start!52902 m!555361))

(declare-fun m!555363 () Bool)

(assert (=> start!52902 m!555363))

(declare-fun m!555365 () Bool)

(assert (=> b!576319 m!555365))

(push 1)

