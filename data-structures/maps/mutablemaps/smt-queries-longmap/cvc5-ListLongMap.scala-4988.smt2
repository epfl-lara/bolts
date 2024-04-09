; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68458 () Bool)

(assert start!68458)

(declare-fun b!795300 () Bool)

(declare-fun e!441451 () Bool)

(declare-fun e!441449 () Bool)

(assert (=> b!795300 (= e!441451 e!441449)))

(declare-fun res!539991 () Bool)

(assert (=> b!795300 (=> (not res!539991) (not e!441449))))

(declare-datatypes ((SeekEntryResult!8274 0))(
  ( (MissingZero!8274 (index!35463 (_ BitVec 32))) (Found!8274 (index!35464 (_ BitVec 32))) (Intermediate!8274 (undefined!9086 Bool) (index!35465 (_ BitVec 32)) (x!66409 (_ BitVec 32))) (Undefined!8274) (MissingVacant!8274 (index!35466 (_ BitVec 32))) )
))
(declare-fun lt!354532 () SeekEntryResult!8274)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795300 (= res!539991 (or (= lt!354532 (MissingZero!8274 i!1163)) (= lt!354532 (MissingVacant!8274 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43199 0))(
  ( (array!43200 (arr!20676 (Array (_ BitVec 32) (_ BitVec 64))) (size!21097 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43199)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43199 (_ BitVec 32)) SeekEntryResult!8274)

(assert (=> b!795300 (= lt!354532 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795301 () Bool)

(declare-fun res!539995 () Bool)

(assert (=> b!795301 (=> (not res!539995) (not e!441449))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795301 (= res!539995 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21097 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20676 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21097 a!3170)) (= (select (arr!20676 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795302 () Bool)

(declare-fun res!539989 () Bool)

(assert (=> b!795302 (=> (not res!539989) (not e!441451))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795302 (= res!539989 (and (= (size!21097 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21097 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21097 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!539994 () Bool)

(assert (=> start!68458 (=> (not res!539994) (not e!441451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68458 (= res!539994 (validMask!0 mask!3266))))

(assert (=> start!68458 e!441451))

(assert (=> start!68458 true))

(declare-fun array_inv!16450 (array!43199) Bool)

(assert (=> start!68458 (array_inv!16450 a!3170)))

(declare-fun b!795303 () Bool)

(declare-fun e!441448 () Bool)

(assert (=> b!795303 (= e!441449 e!441448)))

(declare-fun res!539996 () Bool)

(assert (=> b!795303 (=> (not res!539996) (not e!441448))))

(declare-fun lt!354531 () array!43199)

(declare-fun lt!354533 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43199 (_ BitVec 32)) SeekEntryResult!8274)

(assert (=> b!795303 (= res!539996 (= (seekEntryOrOpen!0 lt!354533 lt!354531 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354533 lt!354531 mask!3266)))))

(assert (=> b!795303 (= lt!354533 (select (store (arr!20676 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795303 (= lt!354531 (array!43200 (store (arr!20676 a!3170) i!1163 k!2044) (size!21097 a!3170)))))

(declare-fun b!795304 () Bool)

(declare-fun res!539993 () Bool)

(assert (=> b!795304 (=> (not res!539993) (not e!441449))))

(declare-datatypes ((List!14692 0))(
  ( (Nil!14689) (Cons!14688 (h!15817 (_ BitVec 64)) (t!21015 List!14692)) )
))
(declare-fun arrayNoDuplicates!0 (array!43199 (_ BitVec 32) List!14692) Bool)

(assert (=> b!795304 (= res!539993 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14689))))

(declare-fun b!795305 () Bool)

(declare-fun res!539990 () Bool)

(assert (=> b!795305 (=> (not res!539990) (not e!441451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795305 (= res!539990 (validKeyInArray!0 (select (arr!20676 a!3170) j!153)))))

(declare-fun b!795306 () Bool)

(assert (=> b!795306 (= e!441448 false)))

(declare-fun lt!354535 () SeekEntryResult!8274)

(assert (=> b!795306 (= lt!354535 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20676 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354534 () SeekEntryResult!8274)

(assert (=> b!795306 (= lt!354534 (seekEntryOrOpen!0 (select (arr!20676 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795307 () Bool)

(declare-fun res!539998 () Bool)

(assert (=> b!795307 (=> (not res!539998) (not e!441451))))

(assert (=> b!795307 (= res!539998 (validKeyInArray!0 k!2044))))

(declare-fun b!795308 () Bool)

(declare-fun res!539992 () Bool)

(assert (=> b!795308 (=> (not res!539992) (not e!441451))))

(declare-fun arrayContainsKey!0 (array!43199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795308 (= res!539992 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795309 () Bool)

(declare-fun res!539997 () Bool)

(assert (=> b!795309 (=> (not res!539997) (not e!441449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43199 (_ BitVec 32)) Bool)

(assert (=> b!795309 (= res!539997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68458 res!539994) b!795302))

(assert (= (and b!795302 res!539989) b!795305))

(assert (= (and b!795305 res!539990) b!795307))

(assert (= (and b!795307 res!539998) b!795308))

(assert (= (and b!795308 res!539992) b!795300))

(assert (= (and b!795300 res!539991) b!795309))

(assert (= (and b!795309 res!539997) b!795304))

(assert (= (and b!795304 res!539993) b!795301))

(assert (= (and b!795301 res!539995) b!795303))

(assert (= (and b!795303 res!539996) b!795306))

(declare-fun m!736039 () Bool)

(assert (=> b!795306 m!736039))

(assert (=> b!795306 m!736039))

(declare-fun m!736041 () Bool)

(assert (=> b!795306 m!736041))

(assert (=> b!795306 m!736039))

(declare-fun m!736043 () Bool)

(assert (=> b!795306 m!736043))

(assert (=> b!795305 m!736039))

(assert (=> b!795305 m!736039))

(declare-fun m!736045 () Bool)

(assert (=> b!795305 m!736045))

(declare-fun m!736047 () Bool)

(assert (=> start!68458 m!736047))

(declare-fun m!736049 () Bool)

(assert (=> start!68458 m!736049))

(declare-fun m!736051 () Bool)

(assert (=> b!795308 m!736051))

(declare-fun m!736053 () Bool)

(assert (=> b!795301 m!736053))

(declare-fun m!736055 () Bool)

(assert (=> b!795301 m!736055))

(declare-fun m!736057 () Bool)

(assert (=> b!795303 m!736057))

(declare-fun m!736059 () Bool)

(assert (=> b!795303 m!736059))

(declare-fun m!736061 () Bool)

(assert (=> b!795303 m!736061))

(declare-fun m!736063 () Bool)

(assert (=> b!795303 m!736063))

(declare-fun m!736065 () Bool)

(assert (=> b!795300 m!736065))

(declare-fun m!736067 () Bool)

(assert (=> b!795309 m!736067))

(declare-fun m!736069 () Bool)

(assert (=> b!795304 m!736069))

(declare-fun m!736071 () Bool)

(assert (=> b!795307 m!736071))

(push 1)

