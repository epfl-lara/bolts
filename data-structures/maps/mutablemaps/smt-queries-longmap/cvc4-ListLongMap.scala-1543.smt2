; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29194 () Bool)

(assert start!29194)

(declare-fun b!296110 () Bool)

(declare-fun res!156037 () Bool)

(declare-fun e!187168 () Bool)

(assert (=> b!296110 (=> (not res!156037) (not e!187168))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14994 0))(
  ( (array!14995 (arr!7107 (Array (_ BitVec 32) (_ BitVec 64))) (size!7459 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14994)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!296110 (= res!156037 (and (= (size!7459 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7459 a!3312))))))

(declare-fun b!296111 () Bool)

(declare-fun res!156036 () Bool)

(assert (=> b!296111 (=> (not res!156036) (not e!187168))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296111 (= res!156036 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296112 () Bool)

(declare-fun e!187166 () Bool)

(declare-fun e!187165 () Bool)

(assert (=> b!296112 (= e!187166 e!187165)))

(declare-fun res!156032 () Bool)

(assert (=> b!296112 (=> (not res!156032) (not e!187165))))

(declare-fun lt!147060 () Bool)

(assert (=> b!296112 (= res!156032 lt!147060)))

(declare-fun lt!147062 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2267 0))(
  ( (MissingZero!2267 (index!11238 (_ BitVec 32))) (Found!2267 (index!11239 (_ BitVec 32))) (Intermediate!2267 (undefined!3079 Bool) (index!11240 (_ BitVec 32)) (x!29412 (_ BitVec 32))) (Undefined!2267) (MissingVacant!2267 (index!11241 (_ BitVec 32))) )
))
(declare-fun lt!147063 () SeekEntryResult!2267)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14994 (_ BitVec 32)) SeekEntryResult!2267)

(assert (=> b!296112 (= lt!147063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147062 k!2524 (array!14995 (store (arr!7107 a!3312) i!1256 k!2524) (size!7459 a!3312)) mask!3809))))

(declare-fun lt!147065 () SeekEntryResult!2267)

(assert (=> b!296112 (= lt!147065 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147062 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296112 (= lt!147062 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296114 () Bool)

(declare-fun res!156033 () Bool)

(assert (=> b!296114 (=> (not res!156033) (not e!187166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14994 (_ BitVec 32)) Bool)

(assert (=> b!296114 (= res!156033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296115 () Bool)

(assert (=> b!296115 (= e!187168 e!187166)))

(declare-fun res!156035 () Bool)

(assert (=> b!296115 (=> (not res!156035) (not e!187166))))

(declare-fun lt!147061 () SeekEntryResult!2267)

(assert (=> b!296115 (= res!156035 (or lt!147060 (= lt!147061 (MissingVacant!2267 i!1256))))))

(assert (=> b!296115 (= lt!147060 (= lt!147061 (MissingZero!2267 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14994 (_ BitVec 32)) SeekEntryResult!2267)

(assert (=> b!296115 (= lt!147061 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296116 () Bool)

(declare-fun e!187167 () Bool)

(assert (=> b!296116 (= e!187167 (not true))))

(assert (=> b!296116 (and (= (select (arr!7107 a!3312) (index!11240 lt!147065)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11240 lt!147065) i!1256))))

(declare-fun b!296117 () Bool)

(declare-fun res!156039 () Bool)

(assert (=> b!296117 (=> (not res!156039) (not e!187168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296117 (= res!156039 (validKeyInArray!0 k!2524))))

(declare-fun b!296113 () Bool)

(assert (=> b!296113 (= e!187165 e!187167)))

(declare-fun res!156038 () Bool)

(assert (=> b!296113 (=> (not res!156038) (not e!187167))))

(declare-fun lt!147064 () Bool)

(assert (=> b!296113 (= res!156038 (and (or lt!147064 (not (undefined!3079 lt!147065))) (or lt!147064 (not (= (select (arr!7107 a!3312) (index!11240 lt!147065)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147064 (not (= (select (arr!7107 a!3312) (index!11240 lt!147065)) k!2524))) (not lt!147064)))))

(assert (=> b!296113 (= lt!147064 (not (is-Intermediate!2267 lt!147065)))))

(declare-fun res!156034 () Bool)

(assert (=> start!29194 (=> (not res!156034) (not e!187168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29194 (= res!156034 (validMask!0 mask!3809))))

(assert (=> start!29194 e!187168))

(assert (=> start!29194 true))

(declare-fun array_inv!5061 (array!14994) Bool)

(assert (=> start!29194 (array_inv!5061 a!3312)))

(assert (= (and start!29194 res!156034) b!296110))

(assert (= (and b!296110 res!156037) b!296117))

(assert (= (and b!296117 res!156039) b!296111))

(assert (= (and b!296111 res!156036) b!296115))

(assert (= (and b!296115 res!156035) b!296114))

(assert (= (and b!296114 res!156033) b!296112))

(assert (= (and b!296112 res!156032) b!296113))

(assert (= (and b!296113 res!156038) b!296116))

(declare-fun m!309187 () Bool)

(assert (=> b!296115 m!309187))

(declare-fun m!309189 () Bool)

(assert (=> b!296116 m!309189))

(declare-fun m!309191 () Bool)

(assert (=> b!296117 m!309191))

(declare-fun m!309193 () Bool)

(assert (=> start!29194 m!309193))

(declare-fun m!309195 () Bool)

(assert (=> start!29194 m!309195))

(declare-fun m!309197 () Bool)

(assert (=> b!296112 m!309197))

(declare-fun m!309199 () Bool)

(assert (=> b!296112 m!309199))

(declare-fun m!309201 () Bool)

(assert (=> b!296112 m!309201))

(declare-fun m!309203 () Bool)

(assert (=> b!296112 m!309203))

(declare-fun m!309205 () Bool)

(assert (=> b!296114 m!309205))

(assert (=> b!296113 m!309189))

(declare-fun m!309207 () Bool)

(assert (=> b!296111 m!309207))

(push 1)

