; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46082 () Bool)

(assert start!46082)

(declare-fun b!510075 () Bool)

(declare-fun res!311073 () Bool)

(declare-fun e!298184 () Bool)

(assert (=> b!510075 (=> (not res!311073) (not e!298184))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510075 (= res!311073 (validKeyInArray!0 k!2280))))

(declare-fun b!510076 () Bool)

(declare-fun res!311078 () Bool)

(assert (=> b!510076 (=> (not res!311078) (not e!298184))))

(declare-datatypes ((array!32753 0))(
  ( (array!32754 (arr!15752 (Array (_ BitVec 32) (_ BitVec 64))) (size!16116 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32753)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!510076 (= res!311078 (validKeyInArray!0 (select (arr!15752 a!3235) j!176)))))

(declare-fun res!311072 () Bool)

(assert (=> start!46082 (=> (not res!311072) (not e!298184))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46082 (= res!311072 (validMask!0 mask!3524))))

(assert (=> start!46082 e!298184))

(assert (=> start!46082 true))

(declare-fun array_inv!11526 (array!32753) Bool)

(assert (=> start!46082 (array_inv!11526 a!3235)))

(declare-fun b!510077 () Bool)

(declare-fun res!311076 () Bool)

(assert (=> b!510077 (=> (not res!311076) (not e!298184))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510077 (= res!311076 (and (= (size!16116 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16116 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16116 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510078 () Bool)

(declare-fun e!298186 () Bool)

(declare-fun e!298183 () Bool)

(assert (=> b!510078 (= e!298186 (not e!298183))))

(declare-fun res!311077 () Bool)

(assert (=> b!510078 (=> res!311077 e!298183)))

(declare-fun lt!233236 () (_ BitVec 64))

(declare-fun lt!233234 () array!32753)

(declare-datatypes ((SeekEntryResult!4226 0))(
  ( (MissingZero!4226 (index!19092 (_ BitVec 32))) (Found!4226 (index!19093 (_ BitVec 32))) (Intermediate!4226 (undefined!5038 Bool) (index!19094 (_ BitVec 32)) (x!48078 (_ BitVec 32))) (Undefined!4226) (MissingVacant!4226 (index!19095 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32753 (_ BitVec 32)) SeekEntryResult!4226)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510078 (= res!311077 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15752 a!3235) j!176) mask!3524) (select (arr!15752 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233236 mask!3524) lt!233236 lt!233234 mask!3524))))))

(assert (=> b!510078 (= lt!233236 (select (store (arr!15752 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510078 (= lt!233234 (array!32754 (store (arr!15752 a!3235) i!1204 k!2280) (size!16116 a!3235)))))

(declare-fun lt!233235 () SeekEntryResult!4226)

(assert (=> b!510078 (= lt!233235 (Found!4226 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32753 (_ BitVec 32)) SeekEntryResult!4226)

(assert (=> b!510078 (= lt!233235 (seekEntryOrOpen!0 (select (arr!15752 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32753 (_ BitVec 32)) Bool)

(assert (=> b!510078 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15702 0))(
  ( (Unit!15703) )
))
(declare-fun lt!233233 () Unit!15702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15702)

(assert (=> b!510078 (= lt!233233 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510079 () Bool)

(assert (=> b!510079 (= e!298183 true)))

(assert (=> b!510079 (= lt!233235 (seekEntryOrOpen!0 lt!233236 lt!233234 mask!3524))))

(declare-fun lt!233237 () Unit!15702)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32753 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15702)

(assert (=> b!510079 (= lt!233237 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510080 () Bool)

(assert (=> b!510080 (= e!298184 e!298186)))

(declare-fun res!311074 () Bool)

(assert (=> b!510080 (=> (not res!311074) (not e!298186))))

(declare-fun lt!233232 () SeekEntryResult!4226)

(assert (=> b!510080 (= res!311074 (or (= lt!233232 (MissingZero!4226 i!1204)) (= lt!233232 (MissingVacant!4226 i!1204))))))

(assert (=> b!510080 (= lt!233232 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510081 () Bool)

(declare-fun res!311070 () Bool)

(assert (=> b!510081 (=> (not res!311070) (not e!298186))))

(assert (=> b!510081 (= res!311070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510082 () Bool)

(declare-fun res!311071 () Bool)

(assert (=> b!510082 (=> (not res!311071) (not e!298184))))

(declare-fun arrayContainsKey!0 (array!32753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510082 (= res!311071 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510083 () Bool)

(declare-fun res!311075 () Bool)

(assert (=> b!510083 (=> (not res!311075) (not e!298186))))

(declare-datatypes ((List!9963 0))(
  ( (Nil!9960) (Cons!9959 (h!10836 (_ BitVec 64)) (t!16199 List!9963)) )
))
(declare-fun arrayNoDuplicates!0 (array!32753 (_ BitVec 32) List!9963) Bool)

(assert (=> b!510083 (= res!311075 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9960))))

(assert (= (and start!46082 res!311072) b!510077))

(assert (= (and b!510077 res!311076) b!510076))

(assert (= (and b!510076 res!311078) b!510075))

(assert (= (and b!510075 res!311073) b!510082))

(assert (= (and b!510082 res!311071) b!510080))

(assert (= (and b!510080 res!311074) b!510081))

(assert (= (and b!510081 res!311070) b!510083))

(assert (= (and b!510083 res!311075) b!510078))

(assert (= (and b!510078 (not res!311077)) b!510079))

(declare-fun m!491295 () Bool)

(assert (=> b!510081 m!491295))

(declare-fun m!491297 () Bool)

(assert (=> b!510078 m!491297))

(declare-fun m!491299 () Bool)

(assert (=> b!510078 m!491299))

(declare-fun m!491301 () Bool)

(assert (=> b!510078 m!491301))

(declare-fun m!491303 () Bool)

(assert (=> b!510078 m!491303))

(declare-fun m!491305 () Bool)

(assert (=> b!510078 m!491305))

(declare-fun m!491307 () Bool)

(assert (=> b!510078 m!491307))

(declare-fun m!491309 () Bool)

(assert (=> b!510078 m!491309))

(declare-fun m!491311 () Bool)

(assert (=> b!510078 m!491311))

(assert (=> b!510078 m!491309))

(assert (=> b!510078 m!491307))

(assert (=> b!510078 m!491299))

(assert (=> b!510078 m!491309))

(declare-fun m!491313 () Bool)

(assert (=> b!510078 m!491313))

(assert (=> b!510078 m!491309))

(declare-fun m!491315 () Bool)

(assert (=> b!510078 m!491315))

(declare-fun m!491317 () Bool)

(assert (=> b!510080 m!491317))

(declare-fun m!491319 () Bool)

(assert (=> b!510082 m!491319))

(declare-fun m!491321 () Bool)

(assert (=> b!510083 m!491321))

(declare-fun m!491323 () Bool)

(assert (=> b!510075 m!491323))

(assert (=> b!510076 m!491309))

(assert (=> b!510076 m!491309))

(declare-fun m!491325 () Bool)

(assert (=> b!510076 m!491325))

(declare-fun m!491327 () Bool)

(assert (=> b!510079 m!491327))

(declare-fun m!491329 () Bool)

(assert (=> b!510079 m!491329))

(declare-fun m!491331 () Bool)

(assert (=> start!46082 m!491331))

(declare-fun m!491333 () Bool)

(assert (=> start!46082 m!491333))

(push 1)

