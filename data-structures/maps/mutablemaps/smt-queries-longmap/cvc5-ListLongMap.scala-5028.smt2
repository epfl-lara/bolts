; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68698 () Bool)

(assert start!68698)

(declare-fun b!799383 () Bool)

(declare-fun res!544080 () Bool)

(declare-fun e!443319 () Bool)

(assert (=> b!799383 (=> (not res!544080) (not e!443319))))

(declare-datatypes ((array!43439 0))(
  ( (array!43440 (arr!20796 (Array (_ BitVec 32) (_ BitVec 64))) (size!21217 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43439)

(declare-datatypes ((List!14812 0))(
  ( (Nil!14809) (Cons!14808 (h!15937 (_ BitVec 64)) (t!21135 List!14812)) )
))
(declare-fun arrayNoDuplicates!0 (array!43439 (_ BitVec 32) List!14812) Bool)

(assert (=> b!799383 (= res!544080 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14809))))

(declare-fun b!799384 () Bool)

(declare-fun e!443316 () Bool)

(assert (=> b!799384 (= e!443316 e!443319)))

(declare-fun res!544074 () Bool)

(assert (=> b!799384 (=> (not res!544074) (not e!443319))))

(declare-datatypes ((SeekEntryResult!8394 0))(
  ( (MissingZero!8394 (index!35943 (_ BitVec 32))) (Found!8394 (index!35944 (_ BitVec 32))) (Intermediate!8394 (undefined!9206 Bool) (index!35945 (_ BitVec 32)) (x!66849 (_ BitVec 32))) (Undefined!8394) (MissingVacant!8394 (index!35946 (_ BitVec 32))) )
))
(declare-fun lt!357006 () SeekEntryResult!8394)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799384 (= res!544074 (or (= lt!357006 (MissingZero!8394 i!1163)) (= lt!357006 (MissingVacant!8394 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43439 (_ BitVec 32)) SeekEntryResult!8394)

(assert (=> b!799384 (= lt!357006 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!544075 () Bool)

(assert (=> start!68698 (=> (not res!544075) (not e!443316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68698 (= res!544075 (validMask!0 mask!3266))))

(assert (=> start!68698 e!443316))

(assert (=> start!68698 true))

(declare-fun array_inv!16570 (array!43439) Bool)

(assert (=> start!68698 (array_inv!16570 a!3170)))

(declare-fun b!799385 () Bool)

(declare-fun e!443315 () Bool)

(declare-fun e!443320 () Bool)

(assert (=> b!799385 (= e!443315 e!443320)))

(declare-fun res!544078 () Bool)

(assert (=> b!799385 (=> (not res!544078) (not e!443320))))

(declare-fun lt!357005 () SeekEntryResult!8394)

(declare-fun lt!357010 () SeekEntryResult!8394)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!799385 (= res!544078 (and (= lt!357005 lt!357010) (= lt!357010 (Found!8394 j!153)) (not (= (select (arr!20796 a!3170) index!1236) (select (arr!20796 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43439 (_ BitVec 32)) SeekEntryResult!8394)

(assert (=> b!799385 (= lt!357010 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20796 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799385 (= lt!357005 (seekEntryOrOpen!0 (select (arr!20796 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799386 () Bool)

(declare-fun res!544081 () Bool)

(assert (=> b!799386 (=> (not res!544081) (not e!443316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799386 (= res!544081 (validKeyInArray!0 (select (arr!20796 a!3170) j!153)))))

(declare-fun b!799387 () Bool)

(assert (=> b!799387 (= e!443319 e!443315)))

(declare-fun res!544077 () Bool)

(assert (=> b!799387 (=> (not res!544077) (not e!443315))))

(declare-fun lt!357007 () array!43439)

(declare-fun lt!357003 () SeekEntryResult!8394)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357004 () (_ BitVec 64))

(assert (=> b!799387 (= res!544077 (= lt!357003 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357004 lt!357007 mask!3266)))))

(assert (=> b!799387 (= lt!357003 (seekEntryOrOpen!0 lt!357004 lt!357007 mask!3266))))

(assert (=> b!799387 (= lt!357004 (select (store (arr!20796 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799387 (= lt!357007 (array!43440 (store (arr!20796 a!3170) i!1163 k!2044) (size!21217 a!3170)))))

(declare-fun b!799388 () Bool)

(declare-fun res!544072 () Bool)

(assert (=> b!799388 (=> (not res!544072) (not e!443316))))

(assert (=> b!799388 (= res!544072 (and (= (size!21217 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21217 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21217 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799389 () Bool)

(declare-fun res!544076 () Bool)

(assert (=> b!799389 (=> (not res!544076) (not e!443316))))

(declare-fun arrayContainsKey!0 (array!43439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799389 (= res!544076 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799390 () Bool)

(declare-fun e!443317 () Bool)

(assert (=> b!799390 (= e!443320 e!443317)))

(declare-fun res!544073 () Bool)

(assert (=> b!799390 (=> (not res!544073) (not e!443317))))

(declare-fun lt!357008 () (_ BitVec 32))

(assert (=> b!799390 (= res!544073 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357008 #b00000000000000000000000000000000) (bvslt lt!357008 (size!21217 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799390 (= lt!357008 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799391 () Bool)

(declare-fun res!544079 () Bool)

(assert (=> b!799391 (=> (not res!544079) (not e!443319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43439 (_ BitVec 32)) Bool)

(assert (=> b!799391 (= res!544079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799392 () Bool)

(declare-fun res!544082 () Bool)

(assert (=> b!799392 (=> (not res!544082) (not e!443319))))

(assert (=> b!799392 (= res!544082 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21217 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20796 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21217 a!3170)) (= (select (arr!20796 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799393 () Bool)

(declare-fun res!544084 () Bool)

(assert (=> b!799393 (=> (not res!544084) (not e!443317))))

(assert (=> b!799393 (= res!544084 (= lt!357003 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357008 vacantAfter!23 lt!357004 lt!357007 mask!3266)))))

(declare-fun b!799394 () Bool)

(declare-fun res!544083 () Bool)

(assert (=> b!799394 (=> (not res!544083) (not e!443316))))

(assert (=> b!799394 (= res!544083 (validKeyInArray!0 k!2044))))

(declare-fun b!799395 () Bool)

(assert (=> b!799395 (= e!443317 false)))

(declare-fun lt!357009 () SeekEntryResult!8394)

(assert (=> b!799395 (= lt!357009 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357008 vacantBefore!23 (select (arr!20796 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68698 res!544075) b!799388))

(assert (= (and b!799388 res!544072) b!799386))

(assert (= (and b!799386 res!544081) b!799394))

(assert (= (and b!799394 res!544083) b!799389))

(assert (= (and b!799389 res!544076) b!799384))

(assert (= (and b!799384 res!544074) b!799391))

(assert (= (and b!799391 res!544079) b!799383))

(assert (= (and b!799383 res!544080) b!799392))

(assert (= (and b!799392 res!544082) b!799387))

(assert (= (and b!799387 res!544077) b!799385))

(assert (= (and b!799385 res!544078) b!799390))

(assert (= (and b!799390 res!544073) b!799393))

(assert (= (and b!799393 res!544084) b!799395))

(declare-fun m!740497 () Bool)

(assert (=> b!799383 m!740497))

(declare-fun m!740499 () Bool)

(assert (=> b!799386 m!740499))

(assert (=> b!799386 m!740499))

(declare-fun m!740501 () Bool)

(assert (=> b!799386 m!740501))

(declare-fun m!740503 () Bool)

(assert (=> b!799391 m!740503))

(declare-fun m!740505 () Bool)

(assert (=> b!799390 m!740505))

(declare-fun m!740507 () Bool)

(assert (=> b!799387 m!740507))

(declare-fun m!740509 () Bool)

(assert (=> b!799387 m!740509))

(declare-fun m!740511 () Bool)

(assert (=> b!799387 m!740511))

(declare-fun m!740513 () Bool)

(assert (=> b!799387 m!740513))

(declare-fun m!740515 () Bool)

(assert (=> b!799385 m!740515))

(assert (=> b!799385 m!740499))

(assert (=> b!799385 m!740499))

(declare-fun m!740517 () Bool)

(assert (=> b!799385 m!740517))

(assert (=> b!799385 m!740499))

(declare-fun m!740519 () Bool)

(assert (=> b!799385 m!740519))

(declare-fun m!740521 () Bool)

(assert (=> b!799384 m!740521))

(declare-fun m!740523 () Bool)

(assert (=> b!799393 m!740523))

(declare-fun m!740525 () Bool)

(assert (=> b!799392 m!740525))

(declare-fun m!740527 () Bool)

(assert (=> b!799392 m!740527))

(assert (=> b!799395 m!740499))

(assert (=> b!799395 m!740499))

(declare-fun m!740529 () Bool)

(assert (=> b!799395 m!740529))

(declare-fun m!740531 () Bool)

(assert (=> b!799394 m!740531))

(declare-fun m!740533 () Bool)

(assert (=> b!799389 m!740533))

(declare-fun m!740535 () Bool)

(assert (=> start!68698 m!740535))

(declare-fun m!740537 () Bool)

(assert (=> start!68698 m!740537))

(push 1)

