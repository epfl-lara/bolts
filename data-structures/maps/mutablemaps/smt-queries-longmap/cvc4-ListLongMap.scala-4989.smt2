; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68468 () Bool)

(assert start!68468)

(declare-fun res!540147 () Bool)

(declare-fun e!441511 () Bool)

(assert (=> start!68468 (=> (not res!540147) (not e!441511))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68468 (= res!540147 (validMask!0 mask!3266))))

(assert (=> start!68468 e!441511))

(assert (=> start!68468 true))

(declare-datatypes ((array!43209 0))(
  ( (array!43210 (arr!20681 (Array (_ BitVec 32) (_ BitVec 64))) (size!21102 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43209)

(declare-fun array_inv!16455 (array!43209) Bool)

(assert (=> start!68468 (array_inv!16455 a!3170)))

(declare-fun b!795450 () Bool)

(declare-fun res!540144 () Bool)

(assert (=> b!795450 (=> (not res!540144) (not e!441511))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795450 (= res!540144 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795451 () Bool)

(declare-fun res!540142 () Bool)

(declare-fun e!441510 () Bool)

(assert (=> b!795451 (=> (not res!540142) (not e!441510))))

(declare-datatypes ((List!14697 0))(
  ( (Nil!14694) (Cons!14693 (h!15822 (_ BitVec 64)) (t!21020 List!14697)) )
))
(declare-fun arrayNoDuplicates!0 (array!43209 (_ BitVec 32) List!14697) Bool)

(assert (=> b!795451 (= res!540142 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14694))))

(declare-fun b!795452 () Bool)

(declare-fun res!540139 () Bool)

(assert (=> b!795452 (=> (not res!540139) (not e!441511))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795452 (= res!540139 (and (= (size!21102 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21102 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21102 a!3170)) (not (= i!1163 j!153))))))

(declare-fun e!441509 () Bool)

(declare-datatypes ((SeekEntryResult!8279 0))(
  ( (MissingZero!8279 (index!35483 (_ BitVec 32))) (Found!8279 (index!35484 (_ BitVec 32))) (Intermediate!8279 (undefined!9091 Bool) (index!35485 (_ BitVec 32)) (x!66422 (_ BitVec 32))) (Undefined!8279) (MissingVacant!8279 (index!35486 (_ BitVec 32))) )
))
(declare-fun lt!354608 () SeekEntryResult!8279)

(declare-fun lt!354609 () SeekEntryResult!8279)

(declare-fun b!795453 () Bool)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795453 (= e!441509 (and (= lt!354608 lt!354609) (= lt!354609 (Found!8279 j!153)) (= (select (arr!20681 a!3170) index!1236) (select (arr!20681 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43209 (_ BitVec 32)) SeekEntryResult!8279)

(assert (=> b!795453 (= lt!354609 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20681 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43209 (_ BitVec 32)) SeekEntryResult!8279)

(assert (=> b!795453 (= lt!354608 (seekEntryOrOpen!0 (select (arr!20681 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795454 () Bool)

(declare-fun res!540146 () Bool)

(assert (=> b!795454 (=> (not res!540146) (not e!441510))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!795454 (= res!540146 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21102 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20681 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21102 a!3170)) (= (select (arr!20681 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795455 () Bool)

(assert (=> b!795455 (= e!441510 e!441509)))

(declare-fun res!540140 () Bool)

(assert (=> b!795455 (=> (not res!540140) (not e!441509))))

(declare-fun lt!354606 () (_ BitVec 64))

(declare-fun lt!354607 () array!43209)

(assert (=> b!795455 (= res!540140 (= (seekEntryOrOpen!0 lt!354606 lt!354607 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354606 lt!354607 mask!3266)))))

(assert (=> b!795455 (= lt!354606 (select (store (arr!20681 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795455 (= lt!354607 (array!43210 (store (arr!20681 a!3170) i!1163 k!2044) (size!21102 a!3170)))))

(declare-fun b!795456 () Bool)

(declare-fun res!540148 () Bool)

(assert (=> b!795456 (=> (not res!540148) (not e!441511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795456 (= res!540148 (validKeyInArray!0 k!2044))))

(declare-fun b!795457 () Bool)

(declare-fun res!540143 () Bool)

(assert (=> b!795457 (=> (not res!540143) (not e!441511))))

(assert (=> b!795457 (= res!540143 (validKeyInArray!0 (select (arr!20681 a!3170) j!153)))))

(declare-fun b!795458 () Bool)

(assert (=> b!795458 (= e!441511 e!441510)))

(declare-fun res!540141 () Bool)

(assert (=> b!795458 (=> (not res!540141) (not e!441510))))

(declare-fun lt!354610 () SeekEntryResult!8279)

(assert (=> b!795458 (= res!540141 (or (= lt!354610 (MissingZero!8279 i!1163)) (= lt!354610 (MissingVacant!8279 i!1163))))))

(assert (=> b!795458 (= lt!354610 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795459 () Bool)

(declare-fun res!540145 () Bool)

(assert (=> b!795459 (=> (not res!540145) (not e!441510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43209 (_ BitVec 32)) Bool)

(assert (=> b!795459 (= res!540145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68468 res!540147) b!795452))

(assert (= (and b!795452 res!540139) b!795457))

(assert (= (and b!795457 res!540143) b!795456))

(assert (= (and b!795456 res!540148) b!795450))

(assert (= (and b!795450 res!540144) b!795458))

(assert (= (and b!795458 res!540141) b!795459))

(assert (= (and b!795459 res!540145) b!795451))

(assert (= (and b!795451 res!540142) b!795454))

(assert (= (and b!795454 res!540146) b!795455))

(assert (= (and b!795455 res!540140) b!795453))

(declare-fun m!736213 () Bool)

(assert (=> b!795450 m!736213))

(declare-fun m!736215 () Bool)

(assert (=> b!795459 m!736215))

(declare-fun m!736217 () Bool)

(assert (=> b!795457 m!736217))

(assert (=> b!795457 m!736217))

(declare-fun m!736219 () Bool)

(assert (=> b!795457 m!736219))

(declare-fun m!736221 () Bool)

(assert (=> b!795454 m!736221))

(declare-fun m!736223 () Bool)

(assert (=> b!795454 m!736223))

(declare-fun m!736225 () Bool)

(assert (=> b!795458 m!736225))

(declare-fun m!736227 () Bool)

(assert (=> b!795451 m!736227))

(declare-fun m!736229 () Bool)

(assert (=> b!795453 m!736229))

(assert (=> b!795453 m!736217))

(assert (=> b!795453 m!736217))

(declare-fun m!736231 () Bool)

(assert (=> b!795453 m!736231))

(assert (=> b!795453 m!736217))

(declare-fun m!736233 () Bool)

(assert (=> b!795453 m!736233))

(declare-fun m!736235 () Bool)

(assert (=> start!68468 m!736235))

(declare-fun m!736237 () Bool)

(assert (=> start!68468 m!736237))

(declare-fun m!736239 () Bool)

(assert (=> b!795455 m!736239))

(declare-fun m!736241 () Bool)

(assert (=> b!795455 m!736241))

(declare-fun m!736243 () Bool)

(assert (=> b!795455 m!736243))

(declare-fun m!736245 () Bool)

(assert (=> b!795455 m!736245))

(declare-fun m!736247 () Bool)

(assert (=> b!795456 m!736247))

(push 1)

(assert (not start!68468))

(assert (not b!795459))

(assert (not b!795457))

(assert (not b!795451))

(assert (not b!795455))

(assert (not b!795453))

(assert (not b!795450))

(assert (not b!795456))

(assert (not b!795458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

