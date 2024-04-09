; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51466 () Bool)

(assert start!51466)

(declare-fun b!562227 () Bool)

(declare-fun e!324021 () Bool)

(declare-fun e!324018 () Bool)

(assert (=> b!562227 (= e!324021 e!324018)))

(declare-fun res!353540 () Bool)

(assert (=> b!562227 (=> res!353540 e!324018)))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!256187 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5395 0))(
  ( (MissingZero!5395 (index!23807 (_ BitVec 32))) (Found!5395 (index!23808 (_ BitVec 32))) (Intermediate!5395 (undefined!6207 Bool) (index!23809 (_ BitVec 32)) (x!52733 (_ BitVec 32))) (Undefined!5395) (MissingVacant!5395 (index!23810 (_ BitVec 32))) )
))
(declare-fun lt!256186 () SeekEntryResult!5395)

(declare-fun lt!256189 () SeekEntryResult!5395)

(declare-datatypes ((array!35285 0))(
  ( (array!35286 (arr!16939 (Array (_ BitVec 32) (_ BitVec 64))) (size!17303 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35285)

(declare-fun lt!256188 () SeekEntryResult!5395)

(assert (=> b!562227 (= res!353540 (or (bvslt (index!23809 lt!256189) #b00000000000000000000000000000000) (bvsge (index!23809 lt!256189) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52733 lt!256189) #b01111111111111111111111111111110) (bvslt (x!52733 lt!256189) #b00000000000000000000000000000000) (not (= lt!256187 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16939 a!3118) i!1132 k0!1914) (index!23809 lt!256189)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256188 lt!256186))))))

(declare-fun lt!256183 () SeekEntryResult!5395)

(declare-fun lt!256193 () SeekEntryResult!5395)

(assert (=> b!562227 (= lt!256183 lt!256193)))

(declare-fun lt!256182 () (_ BitVec 64))

(declare-fun lt!256184 () array!35285)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35285 (_ BitVec 32)) SeekEntryResult!5395)

(assert (=> b!562227 (= lt!256193 (seekKeyOrZeroReturnVacant!0 (x!52733 lt!256189) (index!23809 lt!256189) (index!23809 lt!256189) lt!256182 lt!256184 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35285 (_ BitVec 32)) SeekEntryResult!5395)

(assert (=> b!562227 (= lt!256183 (seekEntryOrOpen!0 lt!256182 lt!256184 mask!3119))))

(declare-fun lt!256185 () SeekEntryResult!5395)

(assert (=> b!562227 (= lt!256185 lt!256188)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!562227 (= lt!256188 (seekKeyOrZeroReturnVacant!0 (x!52733 lt!256189) (index!23809 lt!256189) (index!23809 lt!256189) (select (arr!16939 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562228 () Bool)

(declare-fun e!324020 () Bool)

(assert (=> b!562228 (= e!324020 e!324021)))

(declare-fun res!353531 () Bool)

(assert (=> b!562228 (=> res!353531 e!324021)))

(assert (=> b!562228 (= res!353531 (or (= lt!256187 (select (arr!16939 a!3118) j!142)) (= lt!256187 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562228 (= lt!256187 (select (arr!16939 a!3118) (index!23809 lt!256189)))))

(declare-fun b!562229 () Bool)

(declare-fun e!324016 () Bool)

(assert (=> b!562229 (= e!324016 (not e!324020))))

(declare-fun res!353539 () Bool)

(assert (=> b!562229 (=> res!353539 e!324020)))

(get-info :version)

(assert (=> b!562229 (= res!353539 (or (undefined!6207 lt!256189) (not ((_ is Intermediate!5395) lt!256189))))))

(assert (=> b!562229 (= lt!256185 lt!256186)))

(assert (=> b!562229 (= lt!256186 (Found!5395 j!142))))

(assert (=> b!562229 (= lt!256185 (seekEntryOrOpen!0 (select (arr!16939 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35285 (_ BitVec 32)) Bool)

(assert (=> b!562229 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17564 0))(
  ( (Unit!17565) )
))
(declare-fun lt!256192 () Unit!17564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17564)

(assert (=> b!562229 (= lt!256192 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562230 () Bool)

(declare-fun res!353537 () Bool)

(declare-fun e!324017 () Bool)

(assert (=> b!562230 (=> (not res!353537) (not e!324017))))

(declare-fun arrayContainsKey!0 (array!35285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562230 (= res!353537 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562231 () Bool)

(declare-fun res!353530 () Bool)

(declare-fun e!324019 () Bool)

(assert (=> b!562231 (=> (not res!353530) (not e!324019))))

(declare-datatypes ((List!11072 0))(
  ( (Nil!11069) (Cons!11068 (h!12071 (_ BitVec 64)) (t!17308 List!11072)) )
))
(declare-fun arrayNoDuplicates!0 (array!35285 (_ BitVec 32) List!11072) Bool)

(assert (=> b!562231 (= res!353530 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11069))))

(declare-fun b!562232 () Bool)

(assert (=> b!562232 (= e!324017 e!324019)))

(declare-fun res!353538 () Bool)

(assert (=> b!562232 (=> (not res!353538) (not e!324019))))

(declare-fun lt!256181 () SeekEntryResult!5395)

(assert (=> b!562232 (= res!353538 (or (= lt!256181 (MissingZero!5395 i!1132)) (= lt!256181 (MissingVacant!5395 i!1132))))))

(assert (=> b!562232 (= lt!256181 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562233 () Bool)

(declare-fun res!353533 () Bool)

(assert (=> b!562233 (=> (not res!353533) (not e!324017))))

(assert (=> b!562233 (= res!353533 (and (= (size!17303 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17303 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17303 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562234 () Bool)

(declare-fun res!353534 () Bool)

(assert (=> b!562234 (=> (not res!353534) (not e!324019))))

(assert (=> b!562234 (= res!353534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!353529 () Bool)

(assert (=> start!51466 (=> (not res!353529) (not e!324017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51466 (= res!353529 (validMask!0 mask!3119))))

(assert (=> start!51466 e!324017))

(assert (=> start!51466 true))

(declare-fun array_inv!12713 (array!35285) Bool)

(assert (=> start!51466 (array_inv!12713 a!3118)))

(declare-fun b!562235 () Bool)

(assert (=> b!562235 (= e!324019 e!324016)))

(declare-fun res!353536 () Bool)

(assert (=> b!562235 (=> (not res!353536) (not e!324016))))

(declare-fun lt!256190 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35285 (_ BitVec 32)) SeekEntryResult!5395)

(assert (=> b!562235 (= res!353536 (= lt!256189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256190 lt!256182 lt!256184 mask!3119)))))

(declare-fun lt!256180 () (_ BitVec 32))

(assert (=> b!562235 (= lt!256189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256180 (select (arr!16939 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562235 (= lt!256190 (toIndex!0 lt!256182 mask!3119))))

(assert (=> b!562235 (= lt!256182 (select (store (arr!16939 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562235 (= lt!256180 (toIndex!0 (select (arr!16939 a!3118) j!142) mask!3119))))

(assert (=> b!562235 (= lt!256184 (array!35286 (store (arr!16939 a!3118) i!1132 k0!1914) (size!17303 a!3118)))))

(declare-fun b!562236 () Bool)

(assert (=> b!562236 (= e!324018 true)))

(assert (=> b!562236 (= lt!256188 lt!256193)))

(declare-fun lt!256191 () Unit!17564)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35285 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17564)

(assert (=> b!562236 (= lt!256191 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52733 lt!256189) (index!23809 lt!256189) (index!23809 lt!256189) mask!3119))))

(declare-fun b!562237 () Bool)

(declare-fun res!353535 () Bool)

(assert (=> b!562237 (=> (not res!353535) (not e!324017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562237 (= res!353535 (validKeyInArray!0 k0!1914))))

(declare-fun b!562238 () Bool)

(declare-fun res!353532 () Bool)

(assert (=> b!562238 (=> (not res!353532) (not e!324017))))

(assert (=> b!562238 (= res!353532 (validKeyInArray!0 (select (arr!16939 a!3118) j!142)))))

(assert (= (and start!51466 res!353529) b!562233))

(assert (= (and b!562233 res!353533) b!562238))

(assert (= (and b!562238 res!353532) b!562237))

(assert (= (and b!562237 res!353535) b!562230))

(assert (= (and b!562230 res!353537) b!562232))

(assert (= (and b!562232 res!353538) b!562234))

(assert (= (and b!562234 res!353534) b!562231))

(assert (= (and b!562231 res!353530) b!562235))

(assert (= (and b!562235 res!353536) b!562229))

(assert (= (and b!562229 (not res!353539)) b!562228))

(assert (= (and b!562228 (not res!353531)) b!562227))

(assert (= (and b!562227 (not res!353540)) b!562236))

(declare-fun m!540295 () Bool)

(assert (=> b!562230 m!540295))

(declare-fun m!540297 () Bool)

(assert (=> b!562237 m!540297))

(declare-fun m!540299 () Bool)

(assert (=> b!562232 m!540299))

(declare-fun m!540301 () Bool)

(assert (=> b!562235 m!540301))

(declare-fun m!540303 () Bool)

(assert (=> b!562235 m!540303))

(declare-fun m!540305 () Bool)

(assert (=> b!562235 m!540305))

(declare-fun m!540307 () Bool)

(assert (=> b!562235 m!540307))

(declare-fun m!540309 () Bool)

(assert (=> b!562235 m!540309))

(assert (=> b!562235 m!540305))

(declare-fun m!540311 () Bool)

(assert (=> b!562235 m!540311))

(declare-fun m!540313 () Bool)

(assert (=> b!562235 m!540313))

(assert (=> b!562235 m!540305))

(declare-fun m!540315 () Bool)

(assert (=> b!562231 m!540315))

(declare-fun m!540317 () Bool)

(assert (=> b!562234 m!540317))

(assert (=> b!562227 m!540305))

(declare-fun m!540319 () Bool)

(assert (=> b!562227 m!540319))

(assert (=> b!562227 m!540305))

(assert (=> b!562227 m!540303))

(declare-fun m!540321 () Bool)

(assert (=> b!562227 m!540321))

(declare-fun m!540323 () Bool)

(assert (=> b!562227 m!540323))

(declare-fun m!540325 () Bool)

(assert (=> b!562227 m!540325))

(assert (=> b!562228 m!540305))

(declare-fun m!540327 () Bool)

(assert (=> b!562228 m!540327))

(declare-fun m!540329 () Bool)

(assert (=> start!51466 m!540329))

(declare-fun m!540331 () Bool)

(assert (=> start!51466 m!540331))

(assert (=> b!562238 m!540305))

(assert (=> b!562238 m!540305))

(declare-fun m!540333 () Bool)

(assert (=> b!562238 m!540333))

(assert (=> b!562229 m!540305))

(assert (=> b!562229 m!540305))

(declare-fun m!540335 () Bool)

(assert (=> b!562229 m!540335))

(declare-fun m!540337 () Bool)

(assert (=> b!562229 m!540337))

(declare-fun m!540339 () Bool)

(assert (=> b!562229 m!540339))

(declare-fun m!540341 () Bool)

(assert (=> b!562236 m!540341))

(check-sat (not b!562235) (not b!562234) (not b!562229) (not b!562227) (not b!562237) (not b!562231) (not b!562232) (not b!562236) (not b!562238) (not b!562230) (not start!51466))
(check-sat)
