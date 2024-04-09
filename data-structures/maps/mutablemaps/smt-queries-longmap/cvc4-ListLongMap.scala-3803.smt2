; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52194 () Bool)

(assert start!52194)

(declare-fun b!569340 () Bool)

(declare-fun res!359515 () Bool)

(declare-fun e!327515 () Bool)

(assert (=> b!569340 (=> (not res!359515) (not e!327515))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35671 0))(
  ( (array!35672 (arr!17123 (Array (_ BitVec 32) (_ BitVec 64))) (size!17487 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35671)

(assert (=> b!569340 (= res!359515 (and (= (size!17487 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17487 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17487 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569341 () Bool)

(declare-fun res!359510 () Bool)

(assert (=> b!569341 (=> (not res!359510) (not e!327515))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569341 (= res!359510 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569342 () Bool)

(declare-fun e!327514 () Bool)

(declare-fun e!327517 () Bool)

(assert (=> b!569342 (= e!327514 e!327517)))

(declare-fun res!359513 () Bool)

(assert (=> b!569342 (=> (not res!359513) (not e!327517))))

(declare-fun lt!259569 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5579 0))(
  ( (MissingZero!5579 (index!24543 (_ BitVec 32))) (Found!5579 (index!24544 (_ BitVec 32))) (Intermediate!5579 (undefined!6391 Bool) (index!24545 (_ BitVec 32)) (x!53441 (_ BitVec 32))) (Undefined!5579) (MissingVacant!5579 (index!24546 (_ BitVec 32))) )
))
(declare-fun lt!259573 () SeekEntryResult!5579)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35671 (_ BitVec 32)) SeekEntryResult!5579)

(assert (=> b!569342 (= res!359513 (= lt!259573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259569 (select (store (arr!17123 a!3118) i!1132 k!1914) j!142) (array!35672 (store (arr!17123 a!3118) i!1132 k!1914) (size!17487 a!3118)) mask!3119)))))

(declare-fun lt!259574 () (_ BitVec 32))

(assert (=> b!569342 (= lt!259573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259574 (select (arr!17123 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569342 (= lt!259569 (toIndex!0 (select (store (arr!17123 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569342 (= lt!259574 (toIndex!0 (select (arr!17123 a!3118) j!142) mask!3119))))

(declare-fun b!569343 () Bool)

(declare-fun res!359508 () Bool)

(assert (=> b!569343 (=> (not res!359508) (not e!327515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569343 (= res!359508 (validKeyInArray!0 (select (arr!17123 a!3118) j!142)))))

(declare-fun b!569344 () Bool)

(declare-fun res!359512 () Bool)

(assert (=> b!569344 (=> (not res!359512) (not e!327515))))

(assert (=> b!569344 (= res!359512 (validKeyInArray!0 k!1914))))

(declare-fun b!569345 () Bool)

(assert (=> b!569345 (= e!327517 (not true))))

(declare-fun lt!259570 () SeekEntryResult!5579)

(assert (=> b!569345 (and (= lt!259570 (Found!5579 j!142)) (or (undefined!6391 lt!259573) (not (is-Intermediate!5579 lt!259573)) (= (select (arr!17123 a!3118) (index!24545 lt!259573)) (select (arr!17123 a!3118) j!142)) (not (= (select (arr!17123 a!3118) (index!24545 lt!259573)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259570 (MissingZero!5579 (index!24545 lt!259573)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35671 (_ BitVec 32)) SeekEntryResult!5579)

(assert (=> b!569345 (= lt!259570 (seekEntryOrOpen!0 (select (arr!17123 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35671 (_ BitVec 32)) Bool)

(assert (=> b!569345 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17860 0))(
  ( (Unit!17861) )
))
(declare-fun lt!259572 () Unit!17860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17860)

(assert (=> b!569345 (= lt!259572 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569346 () Bool)

(declare-fun res!359511 () Bool)

(assert (=> b!569346 (=> (not res!359511) (not e!327514))))

(declare-datatypes ((List!11256 0))(
  ( (Nil!11253) (Cons!11252 (h!12273 (_ BitVec 64)) (t!17492 List!11256)) )
))
(declare-fun arrayNoDuplicates!0 (array!35671 (_ BitVec 32) List!11256) Bool)

(assert (=> b!569346 (= res!359511 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11253))))

(declare-fun b!569347 () Bool)

(declare-fun res!359514 () Bool)

(assert (=> b!569347 (=> (not res!359514) (not e!327514))))

(assert (=> b!569347 (= res!359514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569348 () Bool)

(assert (=> b!569348 (= e!327515 e!327514)))

(declare-fun res!359509 () Bool)

(assert (=> b!569348 (=> (not res!359509) (not e!327514))))

(declare-fun lt!259571 () SeekEntryResult!5579)

(assert (=> b!569348 (= res!359509 (or (= lt!259571 (MissingZero!5579 i!1132)) (= lt!259571 (MissingVacant!5579 i!1132))))))

(assert (=> b!569348 (= lt!259571 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!359516 () Bool)

(assert (=> start!52194 (=> (not res!359516) (not e!327515))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52194 (= res!359516 (validMask!0 mask!3119))))

(assert (=> start!52194 e!327515))

(assert (=> start!52194 true))

(declare-fun array_inv!12897 (array!35671) Bool)

(assert (=> start!52194 (array_inv!12897 a!3118)))

(assert (= (and start!52194 res!359516) b!569340))

(assert (= (and b!569340 res!359515) b!569343))

(assert (= (and b!569343 res!359508) b!569344))

(assert (= (and b!569344 res!359512) b!569341))

(assert (= (and b!569341 res!359510) b!569348))

(assert (= (and b!569348 res!359509) b!569347))

(assert (= (and b!569347 res!359514) b!569346))

(assert (= (and b!569346 res!359511) b!569342))

(assert (= (and b!569342 res!359513) b!569345))

(declare-fun m!548147 () Bool)

(assert (=> b!569347 m!548147))

(declare-fun m!548149 () Bool)

(assert (=> b!569343 m!548149))

(assert (=> b!569343 m!548149))

(declare-fun m!548151 () Bool)

(assert (=> b!569343 m!548151))

(assert (=> b!569342 m!548149))

(declare-fun m!548153 () Bool)

(assert (=> b!569342 m!548153))

(assert (=> b!569342 m!548149))

(declare-fun m!548155 () Bool)

(assert (=> b!569342 m!548155))

(declare-fun m!548157 () Bool)

(assert (=> b!569342 m!548157))

(assert (=> b!569342 m!548155))

(declare-fun m!548159 () Bool)

(assert (=> b!569342 m!548159))

(assert (=> b!569342 m!548149))

(declare-fun m!548161 () Bool)

(assert (=> b!569342 m!548161))

(assert (=> b!569342 m!548155))

(declare-fun m!548163 () Bool)

(assert (=> b!569342 m!548163))

(declare-fun m!548165 () Bool)

(assert (=> b!569341 m!548165))

(declare-fun m!548167 () Bool)

(assert (=> b!569346 m!548167))

(declare-fun m!548169 () Bool)

(assert (=> start!52194 m!548169))

(declare-fun m!548171 () Bool)

(assert (=> start!52194 m!548171))

(declare-fun m!548173 () Bool)

(assert (=> b!569345 m!548173))

(assert (=> b!569345 m!548149))

(declare-fun m!548175 () Bool)

(assert (=> b!569345 m!548175))

(declare-fun m!548177 () Bool)

(assert (=> b!569345 m!548177))

(assert (=> b!569345 m!548149))

(declare-fun m!548179 () Bool)

(assert (=> b!569345 m!548179))

(declare-fun m!548181 () Bool)

(assert (=> b!569348 m!548181))

(declare-fun m!548183 () Bool)

(assert (=> b!569344 m!548183))

(push 1)

