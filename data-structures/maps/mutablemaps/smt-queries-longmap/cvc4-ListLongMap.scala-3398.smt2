; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46994 () Bool)

(assert start!46994)

(declare-fun res!316973 () Bool)

(declare-fun e!302170 () Bool)

(assert (=> start!46994 (=> (not res!316973) (not e!302170))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46994 (= res!316973 (validMask!0 mask!3524))))

(assert (=> start!46994 e!302170))

(assert (=> start!46994 true))

(declare-datatypes ((array!33095 0))(
  ( (array!33096 (arr!15908 (Array (_ BitVec 32) (_ BitVec 64))) (size!16272 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33095)

(declare-fun array_inv!11682 (array!33095) Bool)

(assert (=> start!46994 (array_inv!11682 a!3235)))

(declare-fun b!517807 () Bool)

(declare-fun res!316975 () Bool)

(assert (=> b!517807 (=> (not res!316975) (not e!302170))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517807 (= res!316975 (validKeyInArray!0 (select (arr!15908 a!3235) j!176)))))

(declare-fun b!517808 () Bool)

(declare-fun e!302166 () Bool)

(assert (=> b!517808 (= e!302170 e!302166)))

(declare-fun res!316978 () Bool)

(assert (=> b!517808 (=> (not res!316978) (not e!302166))))

(declare-datatypes ((SeekEntryResult!4382 0))(
  ( (MissingZero!4382 (index!19716 (_ BitVec 32))) (Found!4382 (index!19717 (_ BitVec 32))) (Intermediate!4382 (undefined!5194 Bool) (index!19718 (_ BitVec 32)) (x!48710 (_ BitVec 32))) (Undefined!4382) (MissingVacant!4382 (index!19719 (_ BitVec 32))) )
))
(declare-fun lt!237080 () SeekEntryResult!4382)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!517808 (= res!316978 (or (= lt!237080 (MissingZero!4382 i!1204)) (= lt!237080 (MissingVacant!4382 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33095 (_ BitVec 32)) SeekEntryResult!4382)

(assert (=> b!517808 (= lt!237080 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!517809 () Bool)

(declare-fun e!302169 () Bool)

(assert (=> b!517809 (= e!302169 true)))

(declare-fun lt!237082 () SeekEntryResult!4382)

(assert (=> b!517809 (and (bvslt (x!48710 lt!237082) #b01111111111111111111111111111110) (or (= (select (arr!15908 a!3235) (index!19718 lt!237082)) (select (arr!15908 a!3235) j!176)) (= (select (arr!15908 a!3235) (index!19718 lt!237082)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15908 a!3235) (index!19718 lt!237082)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517810 () Bool)

(declare-fun res!316981 () Bool)

(assert (=> b!517810 (=> (not res!316981) (not e!302166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33095 (_ BitVec 32)) Bool)

(assert (=> b!517810 (= res!316981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517811 () Bool)

(declare-fun res!316977 () Bool)

(assert (=> b!517811 (=> (not res!316977) (not e!302170))))

(declare-fun arrayContainsKey!0 (array!33095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517811 (= res!316977 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517812 () Bool)

(declare-fun res!316980 () Bool)

(assert (=> b!517812 (=> res!316980 e!302169)))

(assert (=> b!517812 (= res!316980 (or (undefined!5194 lt!237082) (not (is-Intermediate!4382 lt!237082))))))

(declare-fun e!302167 () Bool)

(declare-fun b!517813 () Bool)

(assert (=> b!517813 (= e!302167 (= (seekEntryOrOpen!0 (select (arr!15908 a!3235) j!176) a!3235 mask!3524) (Found!4382 j!176)))))

(declare-fun b!517814 () Bool)

(declare-fun res!316974 () Bool)

(assert (=> b!517814 (=> (not res!316974) (not e!302170))))

(assert (=> b!517814 (= res!316974 (validKeyInArray!0 k!2280))))

(declare-fun b!517815 () Bool)

(assert (=> b!517815 (= e!302166 (not e!302169))))

(declare-fun res!316972 () Bool)

(assert (=> b!517815 (=> res!316972 e!302169)))

(declare-fun lt!237079 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33095 (_ BitVec 32)) SeekEntryResult!4382)

(assert (=> b!517815 (= res!316972 (= lt!237082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237079 (select (store (arr!15908 a!3235) i!1204 k!2280) j!176) (array!33096 (store (arr!15908 a!3235) i!1204 k!2280) (size!16272 a!3235)) mask!3524)))))

(declare-fun lt!237083 () (_ BitVec 32))

(assert (=> b!517815 (= lt!237082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237083 (select (arr!15908 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517815 (= lt!237079 (toIndex!0 (select (store (arr!15908 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517815 (= lt!237083 (toIndex!0 (select (arr!15908 a!3235) j!176) mask!3524))))

(assert (=> b!517815 e!302167))

(declare-fun res!316979 () Bool)

(assert (=> b!517815 (=> (not res!316979) (not e!302167))))

(assert (=> b!517815 (= res!316979 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16014 0))(
  ( (Unit!16015) )
))
(declare-fun lt!237081 () Unit!16014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16014)

(assert (=> b!517815 (= lt!237081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517816 () Bool)

(declare-fun res!316976 () Bool)

(assert (=> b!517816 (=> (not res!316976) (not e!302170))))

(assert (=> b!517816 (= res!316976 (and (= (size!16272 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16272 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16272 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517817 () Bool)

(declare-fun res!316982 () Bool)

(assert (=> b!517817 (=> (not res!316982) (not e!302166))))

(declare-datatypes ((List!10119 0))(
  ( (Nil!10116) (Cons!10115 (h!11022 (_ BitVec 64)) (t!16355 List!10119)) )
))
(declare-fun arrayNoDuplicates!0 (array!33095 (_ BitVec 32) List!10119) Bool)

(assert (=> b!517817 (= res!316982 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10116))))

(assert (= (and start!46994 res!316973) b!517816))

(assert (= (and b!517816 res!316976) b!517807))

(assert (= (and b!517807 res!316975) b!517814))

(assert (= (and b!517814 res!316974) b!517811))

(assert (= (and b!517811 res!316977) b!517808))

(assert (= (and b!517808 res!316978) b!517810))

(assert (= (and b!517810 res!316981) b!517817))

(assert (= (and b!517817 res!316982) b!517815))

(assert (= (and b!517815 res!316979) b!517813))

(assert (= (and b!517815 (not res!316972)) b!517812))

(assert (= (and b!517812 (not res!316980)) b!517809))

(declare-fun m!499175 () Bool)

(assert (=> b!517814 m!499175))

(declare-fun m!499177 () Bool)

(assert (=> b!517813 m!499177))

(assert (=> b!517813 m!499177))

(declare-fun m!499179 () Bool)

(assert (=> b!517813 m!499179))

(declare-fun m!499181 () Bool)

(assert (=> b!517811 m!499181))

(assert (=> b!517807 m!499177))

(assert (=> b!517807 m!499177))

(declare-fun m!499183 () Bool)

(assert (=> b!517807 m!499183))

(declare-fun m!499185 () Bool)

(assert (=> b!517809 m!499185))

(assert (=> b!517809 m!499177))

(declare-fun m!499187 () Bool)

(assert (=> b!517810 m!499187))

(declare-fun m!499189 () Bool)

(assert (=> b!517815 m!499189))

(declare-fun m!499191 () Bool)

(assert (=> b!517815 m!499191))

(declare-fun m!499193 () Bool)

(assert (=> b!517815 m!499193))

(assert (=> b!517815 m!499177))

(declare-fun m!499195 () Bool)

(assert (=> b!517815 m!499195))

(assert (=> b!517815 m!499193))

(declare-fun m!499197 () Bool)

(assert (=> b!517815 m!499197))

(assert (=> b!517815 m!499177))

(declare-fun m!499199 () Bool)

(assert (=> b!517815 m!499199))

(assert (=> b!517815 m!499193))

(declare-fun m!499201 () Bool)

(assert (=> b!517815 m!499201))

(assert (=> b!517815 m!499177))

(declare-fun m!499203 () Bool)

(assert (=> b!517815 m!499203))

(declare-fun m!499205 () Bool)

(assert (=> b!517817 m!499205))

(declare-fun m!499207 () Bool)

(assert (=> b!517808 m!499207))

(declare-fun m!499209 () Bool)

(assert (=> start!46994 m!499209))

(declare-fun m!499211 () Bool)

(assert (=> start!46994 m!499211))

(push 1)

