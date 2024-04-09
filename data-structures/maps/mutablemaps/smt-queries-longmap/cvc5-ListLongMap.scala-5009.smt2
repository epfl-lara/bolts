; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68584 () Bool)

(assert start!68584)

(declare-fun res!542085 () Bool)

(declare-fun e!442402 () Bool)

(assert (=> start!68584 (=> (not res!542085) (not e!442402))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68584 (= res!542085 (validMask!0 mask!3266))))

(assert (=> start!68584 e!442402))

(assert (=> start!68584 true))

(declare-datatypes ((array!43325 0))(
  ( (array!43326 (arr!20739 (Array (_ BitVec 32) (_ BitVec 64))) (size!21160 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43325)

(declare-fun array_inv!16513 (array!43325) Bool)

(assert (=> start!68584 (array_inv!16513 a!3170)))

(declare-fun b!797385 () Bool)

(declare-fun res!542079 () Bool)

(assert (=> b!797385 (=> (not res!542079) (not e!442402))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797385 (= res!542079 (validKeyInArray!0 (select (arr!20739 a!3170) j!153)))))

(declare-fun b!797386 () Bool)

(declare-fun res!542084 () Bool)

(assert (=> b!797386 (=> (not res!542084) (not e!442402))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797386 (= res!542084 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797387 () Bool)

(declare-fun e!442403 () Bool)

(assert (=> b!797387 (= e!442402 e!442403)))

(declare-fun res!542074 () Bool)

(assert (=> b!797387 (=> (not res!542074) (not e!442403))))

(declare-datatypes ((SeekEntryResult!8337 0))(
  ( (MissingZero!8337 (index!35715 (_ BitVec 32))) (Found!8337 (index!35716 (_ BitVec 32))) (Intermediate!8337 (undefined!9149 Bool) (index!35717 (_ BitVec 32)) (x!66640 (_ BitVec 32))) (Undefined!8337) (MissingVacant!8337 (index!35718 (_ BitVec 32))) )
))
(declare-fun lt!355795 () SeekEntryResult!8337)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797387 (= res!542074 (or (= lt!355795 (MissingZero!8337 i!1163)) (= lt!355795 (MissingVacant!8337 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43325 (_ BitVec 32)) SeekEntryResult!8337)

(assert (=> b!797387 (= lt!355795 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797388 () Bool)

(declare-fun res!542086 () Bool)

(assert (=> b!797388 (=> (not res!542086) (not e!442403))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43325 (_ BitVec 32)) Bool)

(assert (=> b!797388 (= res!542086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797389 () Bool)

(declare-fun res!542081 () Bool)

(assert (=> b!797389 (=> (not res!542081) (not e!442403))))

(declare-datatypes ((List!14755 0))(
  ( (Nil!14752) (Cons!14751 (h!15880 (_ BitVec 64)) (t!21078 List!14755)) )
))
(declare-fun arrayNoDuplicates!0 (array!43325 (_ BitVec 32) List!14755) Bool)

(assert (=> b!797389 (= res!542081 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14752))))

(declare-fun b!797390 () Bool)

(declare-fun res!542083 () Bool)

(assert (=> b!797390 (=> (not res!542083) (not e!442403))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797390 (= res!542083 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21160 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20739 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21160 a!3170)) (= (select (arr!20739 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797391 () Bool)

(declare-fun e!442404 () Bool)

(declare-fun e!442405 () Bool)

(assert (=> b!797391 (= e!442404 e!442405)))

(declare-fun res!542082 () Bool)

(assert (=> b!797391 (=> (not res!542082) (not e!442405))))

(declare-fun lt!355789 () SeekEntryResult!8337)

(declare-fun lt!355794 () SeekEntryResult!8337)

(assert (=> b!797391 (= res!542082 (and (= lt!355794 lt!355789) (= (select (arr!20739 a!3170) index!1236) (select (arr!20739 a!3170) j!153))))))

(assert (=> b!797391 (= lt!355789 (Found!8337 j!153))))

(declare-fun b!797392 () Bool)

(declare-fun res!542078 () Bool)

(assert (=> b!797392 (=> (not res!542078) (not e!442402))))

(assert (=> b!797392 (= res!542078 (validKeyInArray!0 k!2044))))

(declare-fun b!797393 () Bool)

(declare-fun e!442399 () Bool)

(assert (=> b!797393 (= e!442405 (not e!442399))))

(declare-fun res!542077 () Bool)

(assert (=> b!797393 (=> res!542077 e!442399)))

(declare-fun lt!355788 () SeekEntryResult!8337)

(assert (=> b!797393 (= res!542077 (or (not (= lt!355788 lt!355789)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20739 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!797393 (= lt!355788 (Found!8337 index!1236))))

(declare-fun b!797394 () Bool)

(declare-fun lt!355791 () (_ BitVec 64))

(assert (=> b!797394 (= e!442399 (validKeyInArray!0 lt!355791))))

(declare-fun b!797395 () Bool)

(declare-fun res!542075 () Bool)

(assert (=> b!797395 (=> (not res!542075) (not e!442402))))

(assert (=> b!797395 (= res!542075 (and (= (size!21160 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21160 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21160 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797396 () Bool)

(declare-fun e!442401 () Bool)

(assert (=> b!797396 (= e!442401 e!442404)))

(declare-fun res!542080 () Bool)

(assert (=> b!797396 (=> (not res!542080) (not e!442404))))

(declare-fun lt!355793 () SeekEntryResult!8337)

(assert (=> b!797396 (= res!542080 (= lt!355793 lt!355794))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43325 (_ BitVec 32)) SeekEntryResult!8337)

(assert (=> b!797396 (= lt!355794 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20739 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797396 (= lt!355793 (seekEntryOrOpen!0 (select (arr!20739 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797397 () Bool)

(assert (=> b!797397 (= e!442403 e!442401)))

(declare-fun res!542076 () Bool)

(assert (=> b!797397 (=> (not res!542076) (not e!442401))))

(declare-fun lt!355790 () SeekEntryResult!8337)

(assert (=> b!797397 (= res!542076 (= lt!355790 lt!355788))))

(declare-fun lt!355792 () array!43325)

(assert (=> b!797397 (= lt!355788 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355791 lt!355792 mask!3266))))

(assert (=> b!797397 (= lt!355790 (seekEntryOrOpen!0 lt!355791 lt!355792 mask!3266))))

(assert (=> b!797397 (= lt!355791 (select (store (arr!20739 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797397 (= lt!355792 (array!43326 (store (arr!20739 a!3170) i!1163 k!2044) (size!21160 a!3170)))))

(assert (= (and start!68584 res!542085) b!797395))

(assert (= (and b!797395 res!542075) b!797385))

(assert (= (and b!797385 res!542079) b!797392))

(assert (= (and b!797392 res!542078) b!797386))

(assert (= (and b!797386 res!542084) b!797387))

(assert (= (and b!797387 res!542074) b!797388))

(assert (= (and b!797388 res!542086) b!797389))

(assert (= (and b!797389 res!542081) b!797390))

(assert (= (and b!797390 res!542083) b!797397))

(assert (= (and b!797397 res!542076) b!797396))

(assert (= (and b!797396 res!542080) b!797391))

(assert (= (and b!797391 res!542082) b!797393))

(assert (= (and b!797393 (not res!542077)) b!797394))

(declare-fun m!738337 () Bool)

(assert (=> b!797387 m!738337))

(declare-fun m!738339 () Bool)

(assert (=> start!68584 m!738339))

(declare-fun m!738341 () Bool)

(assert (=> start!68584 m!738341))

(declare-fun m!738343 () Bool)

(assert (=> b!797385 m!738343))

(assert (=> b!797385 m!738343))

(declare-fun m!738345 () Bool)

(assert (=> b!797385 m!738345))

(declare-fun m!738347 () Bool)

(assert (=> b!797390 m!738347))

(declare-fun m!738349 () Bool)

(assert (=> b!797390 m!738349))

(declare-fun m!738351 () Bool)

(assert (=> b!797389 m!738351))

(declare-fun m!738353 () Bool)

(assert (=> b!797388 m!738353))

(declare-fun m!738355 () Bool)

(assert (=> b!797392 m!738355))

(declare-fun m!738357 () Bool)

(assert (=> b!797391 m!738357))

(assert (=> b!797391 m!738343))

(declare-fun m!738359 () Bool)

(assert (=> b!797393 m!738359))

(declare-fun m!738361 () Bool)

(assert (=> b!797393 m!738361))

(declare-fun m!738363 () Bool)

(assert (=> b!797394 m!738363))

(assert (=> b!797396 m!738343))

(assert (=> b!797396 m!738343))

(declare-fun m!738365 () Bool)

(assert (=> b!797396 m!738365))

(assert (=> b!797396 m!738343))

(declare-fun m!738367 () Bool)

(assert (=> b!797396 m!738367))

(declare-fun m!738369 () Bool)

(assert (=> b!797386 m!738369))

(declare-fun m!738371 () Bool)

(assert (=> b!797397 m!738371))

(declare-fun m!738373 () Bool)

(assert (=> b!797397 m!738373))

(assert (=> b!797397 m!738359))

(declare-fun m!738375 () Bool)

(assert (=> b!797397 m!738375))

(push 1)

