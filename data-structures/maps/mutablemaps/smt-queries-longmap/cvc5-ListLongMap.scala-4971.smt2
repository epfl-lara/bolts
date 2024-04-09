; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68356 () Bool)

(assert start!68356)

(declare-fun b!793779 () Bool)

(declare-fun e!440873 () Bool)

(declare-fun e!440874 () Bool)

(assert (=> b!793779 (= e!440873 e!440874)))

(declare-fun res!538477 () Bool)

(assert (=> b!793779 (=> (not res!538477) (not e!440874))))

(declare-datatypes ((SeekEntryResult!8223 0))(
  ( (MissingZero!8223 (index!35259 (_ BitVec 32))) (Found!8223 (index!35260 (_ BitVec 32))) (Intermediate!8223 (undefined!9035 Bool) (index!35261 (_ BitVec 32)) (x!66222 (_ BitVec 32))) (Undefined!8223) (MissingVacant!8223 (index!35262 (_ BitVec 32))) )
))
(declare-fun lt!353870 () SeekEntryResult!8223)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793779 (= res!538477 (or (= lt!353870 (MissingZero!8223 i!1163)) (= lt!353870 (MissingVacant!8223 i!1163))))))

(declare-datatypes ((array!43097 0))(
  ( (array!43098 (arr!20625 (Array (_ BitVec 32) (_ BitVec 64))) (size!21046 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43097)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43097 (_ BitVec 32)) SeekEntryResult!8223)

(assert (=> b!793779 (= lt!353870 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793780 () Bool)

(declare-fun res!538475 () Bool)

(assert (=> b!793780 (=> (not res!538475) (not e!440873))))

(declare-fun arrayContainsKey!0 (array!43097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793780 (= res!538475 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793781 () Bool)

(declare-fun res!538473 () Bool)

(assert (=> b!793781 (=> (not res!538473) (not e!440873))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793781 (= res!538473 (validKeyInArray!0 (select (arr!20625 a!3170) j!153)))))

(declare-fun b!793782 () Bool)

(declare-fun res!538468 () Bool)

(assert (=> b!793782 (=> (not res!538468) (not e!440873))))

(assert (=> b!793782 (= res!538468 (validKeyInArray!0 k!2044))))

(declare-fun b!793783 () Bool)

(declare-fun e!440875 () Bool)

(assert (=> b!793783 (= e!440874 e!440875)))

(declare-fun res!538476 () Bool)

(assert (=> b!793783 (=> (not res!538476) (not e!440875))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353871 () (_ BitVec 64))

(declare-fun lt!353872 () array!43097)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43097 (_ BitVec 32)) SeekEntryResult!8223)

(assert (=> b!793783 (= res!538476 (= (seekEntryOrOpen!0 lt!353871 lt!353872 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353871 lt!353872 mask!3266)))))

(assert (=> b!793783 (= lt!353871 (select (store (arr!20625 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793783 (= lt!353872 (array!43098 (store (arr!20625 a!3170) i!1163 k!2044) (size!21046 a!3170)))))

(declare-fun b!793784 () Bool)

(declare-fun res!538470 () Bool)

(assert (=> b!793784 (=> (not res!538470) (not e!440874))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793784 (= res!538470 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21046 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20625 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21046 a!3170)) (= (select (arr!20625 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793785 () Bool)

(declare-fun res!538469 () Bool)

(assert (=> b!793785 (=> (not res!538469) (not e!440874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43097 (_ BitVec 32)) Bool)

(assert (=> b!793785 (= res!538469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793786 () Bool)

(declare-fun res!538472 () Bool)

(assert (=> b!793786 (=> (not res!538472) (not e!440873))))

(assert (=> b!793786 (= res!538472 (and (= (size!21046 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21046 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21046 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793788 () Bool)

(declare-fun res!538471 () Bool)

(assert (=> b!793788 (=> (not res!538471) (not e!440874))))

(declare-datatypes ((List!14641 0))(
  ( (Nil!14638) (Cons!14637 (h!15766 (_ BitVec 64)) (t!20964 List!14641)) )
))
(declare-fun arrayNoDuplicates!0 (array!43097 (_ BitVec 32) List!14641) Bool)

(assert (=> b!793788 (= res!538471 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14638))))

(declare-fun b!793787 () Bool)

(assert (=> b!793787 (= e!440875 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun res!538474 () Bool)

(assert (=> start!68356 (=> (not res!538474) (not e!440873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68356 (= res!538474 (validMask!0 mask!3266))))

(assert (=> start!68356 e!440873))

(assert (=> start!68356 true))

(declare-fun array_inv!16399 (array!43097) Bool)

(assert (=> start!68356 (array_inv!16399 a!3170)))

(assert (= (and start!68356 res!538474) b!793786))

(assert (= (and b!793786 res!538472) b!793781))

(assert (= (and b!793781 res!538473) b!793782))

(assert (= (and b!793782 res!538468) b!793780))

(assert (= (and b!793780 res!538475) b!793779))

(assert (= (and b!793779 res!538477) b!793785))

(assert (= (and b!793785 res!538469) b!793788))

(assert (= (and b!793788 res!538471) b!793784))

(assert (= (and b!793784 res!538470) b!793783))

(assert (= (and b!793783 res!538476) b!793787))

(declare-fun m!734383 () Bool)

(assert (=> b!793783 m!734383))

(declare-fun m!734385 () Bool)

(assert (=> b!793783 m!734385))

(declare-fun m!734387 () Bool)

(assert (=> b!793783 m!734387))

(declare-fun m!734389 () Bool)

(assert (=> b!793783 m!734389))

(declare-fun m!734391 () Bool)

(assert (=> b!793780 m!734391))

(declare-fun m!734393 () Bool)

(assert (=> b!793788 m!734393))

(declare-fun m!734395 () Bool)

(assert (=> b!793784 m!734395))

(declare-fun m!734397 () Bool)

(assert (=> b!793784 m!734397))

(declare-fun m!734399 () Bool)

(assert (=> b!793782 m!734399))

(declare-fun m!734401 () Bool)

(assert (=> b!793779 m!734401))

(declare-fun m!734403 () Bool)

(assert (=> start!68356 m!734403))

(declare-fun m!734405 () Bool)

(assert (=> start!68356 m!734405))

(declare-fun m!734407 () Bool)

(assert (=> b!793781 m!734407))

(assert (=> b!793781 m!734407))

(declare-fun m!734409 () Bool)

(assert (=> b!793781 m!734409))

(declare-fun m!734411 () Bool)

(assert (=> b!793785 m!734411))

(push 1)

