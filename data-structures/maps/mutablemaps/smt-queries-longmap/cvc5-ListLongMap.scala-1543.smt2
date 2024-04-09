; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29190 () Bool)

(assert start!29190)

(declare-fun b!296062 () Bool)

(declare-fun e!187137 () Bool)

(declare-fun e!187139 () Bool)

(assert (=> b!296062 (= e!187137 e!187139)))

(declare-fun res!155987 () Bool)

(assert (=> b!296062 (=> (not res!155987) (not e!187139))))

(declare-datatypes ((SeekEntryResult!2265 0))(
  ( (MissingZero!2265 (index!11230 (_ BitVec 32))) (Found!2265 (index!11231 (_ BitVec 32))) (Intermediate!2265 (undefined!3077 Bool) (index!11232 (_ BitVec 32)) (x!29410 (_ BitVec 32))) (Undefined!2265) (MissingVacant!2265 (index!11233 (_ BitVec 32))) )
))
(declare-fun lt!147028 () SeekEntryResult!2265)

(declare-datatypes ((array!14990 0))(
  ( (array!14991 (arr!7105 (Array (_ BitVec 32) (_ BitVec 64))) (size!7457 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14990)

(declare-fun lt!147026 () Bool)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!296062 (= res!155987 (and (or lt!147026 (not (undefined!3077 lt!147028))) (or lt!147026 (not (= (select (arr!7105 a!3312) (index!11232 lt!147028)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147026 (not (= (select (arr!7105 a!3312) (index!11232 lt!147028)) k!2524))) (not lt!147026)))))

(assert (=> b!296062 (= lt!147026 (not (is-Intermediate!2265 lt!147028)))))

(declare-fun b!296063 () Bool)

(declare-fun res!155984 () Bool)

(declare-fun e!187138 () Bool)

(assert (=> b!296063 (=> (not res!155984) (not e!187138))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!296063 (= res!155984 (and (= (size!7457 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7457 a!3312))))))

(declare-fun b!296064 () Bool)

(declare-fun e!187135 () Bool)

(assert (=> b!296064 (= e!187135 e!187137)))

(declare-fun res!155985 () Bool)

(assert (=> b!296064 (=> (not res!155985) (not e!187137))))

(declare-fun lt!147024 () Bool)

(assert (=> b!296064 (= res!155985 lt!147024)))

(declare-fun lt!147025 () SeekEntryResult!2265)

(declare-fun lt!147027 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14990 (_ BitVec 32)) SeekEntryResult!2265)

(assert (=> b!296064 (= lt!147025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147027 k!2524 (array!14991 (store (arr!7105 a!3312) i!1256 k!2524) (size!7457 a!3312)) mask!3809))))

(assert (=> b!296064 (= lt!147028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147027 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296064 (= lt!147027 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296066 () Bool)

(assert (=> b!296066 (= e!187138 e!187135)))

(declare-fun res!155990 () Bool)

(assert (=> b!296066 (=> (not res!155990) (not e!187135))))

(declare-fun lt!147029 () SeekEntryResult!2265)

(assert (=> b!296066 (= res!155990 (or lt!147024 (= lt!147029 (MissingVacant!2265 i!1256))))))

(assert (=> b!296066 (= lt!147024 (= lt!147029 (MissingZero!2265 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14990 (_ BitVec 32)) SeekEntryResult!2265)

(assert (=> b!296066 (= lt!147029 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296067 () Bool)

(assert (=> b!296067 (= e!187139 (not true))))

(assert (=> b!296067 (and (= (select (arr!7105 a!3312) (index!11232 lt!147028)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11232 lt!147028) i!1256))))

(declare-fun b!296068 () Bool)

(declare-fun res!155991 () Bool)

(assert (=> b!296068 (=> (not res!155991) (not e!187138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296068 (= res!155991 (validKeyInArray!0 k!2524))))

(declare-fun b!296069 () Bool)

(declare-fun res!155988 () Bool)

(assert (=> b!296069 (=> (not res!155988) (not e!187138))))

(declare-fun arrayContainsKey!0 (array!14990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296069 (= res!155988 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296065 () Bool)

(declare-fun res!155989 () Bool)

(assert (=> b!296065 (=> (not res!155989) (not e!187135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14990 (_ BitVec 32)) Bool)

(assert (=> b!296065 (= res!155989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!155986 () Bool)

(assert (=> start!29190 (=> (not res!155986) (not e!187138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29190 (= res!155986 (validMask!0 mask!3809))))

(assert (=> start!29190 e!187138))

(assert (=> start!29190 true))

(declare-fun array_inv!5059 (array!14990) Bool)

(assert (=> start!29190 (array_inv!5059 a!3312)))

(assert (= (and start!29190 res!155986) b!296063))

(assert (= (and b!296063 res!155984) b!296068))

(assert (= (and b!296068 res!155991) b!296069))

(assert (= (and b!296069 res!155988) b!296066))

(assert (= (and b!296066 res!155990) b!296065))

(assert (= (and b!296065 res!155989) b!296064))

(assert (= (and b!296064 res!155985) b!296062))

(assert (= (and b!296062 res!155987) b!296067))

(declare-fun m!309143 () Bool)

(assert (=> b!296062 m!309143))

(assert (=> b!296067 m!309143))

(declare-fun m!309145 () Bool)

(assert (=> b!296065 m!309145))

(declare-fun m!309147 () Bool)

(assert (=> b!296068 m!309147))

(declare-fun m!309149 () Bool)

(assert (=> b!296066 m!309149))

(declare-fun m!309151 () Bool)

(assert (=> start!29190 m!309151))

(declare-fun m!309153 () Bool)

(assert (=> start!29190 m!309153))

(declare-fun m!309155 () Bool)

(assert (=> b!296069 m!309155))

(declare-fun m!309157 () Bool)

(assert (=> b!296064 m!309157))

(declare-fun m!309159 () Bool)

(assert (=> b!296064 m!309159))

(declare-fun m!309161 () Bool)

(assert (=> b!296064 m!309161))

(declare-fun m!309163 () Bool)

(assert (=> b!296064 m!309163))

(push 1)

