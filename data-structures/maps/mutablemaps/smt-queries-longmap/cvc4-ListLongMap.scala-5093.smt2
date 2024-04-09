; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69188 () Bool)

(assert start!69188)

(declare-fun b!806438 () Bool)

(declare-fun res!550733 () Bool)

(declare-fun e!446605 () Bool)

(assert (=> b!806438 (=> (not res!550733) (not e!446605))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43839 0))(
  ( (array!43840 (arr!20993 (Array (_ BitVec 32) (_ BitVec 64))) (size!21414 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43839)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!806438 (= res!550733 (and (= (size!21414 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21414 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21414 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806439 () Bool)

(declare-fun res!550731 () Bool)

(assert (=> b!806439 (=> (not res!550731) (not e!446605))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806439 (= res!550731 (validKeyInArray!0 k!2044))))

(declare-fun b!806440 () Bool)

(declare-fun e!446603 () Bool)

(declare-fun e!446604 () Bool)

(assert (=> b!806440 (= e!446603 e!446604)))

(declare-fun res!550738 () Bool)

(assert (=> b!806440 (=> (not res!550738) (not e!446604))))

(declare-datatypes ((SeekEntryResult!8591 0))(
  ( (MissingZero!8591 (index!36731 (_ BitVec 32))) (Found!8591 (index!36732 (_ BitVec 32))) (Intermediate!8591 (undefined!9403 Bool) (index!36733 (_ BitVec 32)) (x!67572 (_ BitVec 32))) (Undefined!8591) (MissingVacant!8591 (index!36734 (_ BitVec 32))) )
))
(declare-fun lt!361191 () SeekEntryResult!8591)

(declare-fun lt!361192 () SeekEntryResult!8591)

(assert (=> b!806440 (= res!550738 (= lt!361191 lt!361192))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361189 () array!43839)

(declare-fun lt!361186 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43839 (_ BitVec 32)) SeekEntryResult!8591)

(assert (=> b!806440 (= lt!361192 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361186 lt!361189 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43839 (_ BitVec 32)) SeekEntryResult!8591)

(assert (=> b!806440 (= lt!361191 (seekEntryOrOpen!0 lt!361186 lt!361189 mask!3266))))

(assert (=> b!806440 (= lt!361186 (select (store (arr!20993 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806440 (= lt!361189 (array!43840 (store (arr!20993 a!3170) i!1163 k!2044) (size!21414 a!3170)))))

(declare-fun b!806441 () Bool)

(assert (=> b!806441 (= e!446605 e!446603)))

(declare-fun res!550735 () Bool)

(assert (=> b!806441 (=> (not res!550735) (not e!446603))))

(declare-fun lt!361187 () SeekEntryResult!8591)

(assert (=> b!806441 (= res!550735 (or (= lt!361187 (MissingZero!8591 i!1163)) (= lt!361187 (MissingVacant!8591 i!1163))))))

(assert (=> b!806441 (= lt!361187 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806442 () Bool)

(declare-fun res!550734 () Bool)

(assert (=> b!806442 (=> (not res!550734) (not e!446605))))

(declare-fun arrayContainsKey!0 (array!43839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806442 (= res!550734 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806443 () Bool)

(declare-fun e!446601 () Bool)

(assert (=> b!806443 (= e!446604 e!446601)))

(declare-fun res!550736 () Bool)

(assert (=> b!806443 (=> (not res!550736) (not e!446601))))

(declare-fun lt!361188 () SeekEntryResult!8591)

(declare-fun lt!361190 () SeekEntryResult!8591)

(assert (=> b!806443 (= res!550736 (and (= lt!361188 lt!361190) (= lt!361190 (Found!8591 j!153)) (= (select (arr!20993 a!3170) index!1236) (select (arr!20993 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806443 (= lt!361190 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20993 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806443 (= lt!361188 (seekEntryOrOpen!0 (select (arr!20993 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806444 () Bool)

(declare-fun res!550737 () Bool)

(assert (=> b!806444 (=> (not res!550737) (not e!446603))))

(assert (=> b!806444 (= res!550737 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21414 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20993 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21414 a!3170)) (= (select (arr!20993 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806445 () Bool)

(declare-fun res!550741 () Bool)

(assert (=> b!806445 (=> (not res!550741) (not e!446603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43839 (_ BitVec 32)) Bool)

(assert (=> b!806445 (= res!550741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806446 () Bool)

(assert (=> b!806446 (= e!446601 (not true))))

(assert (=> b!806446 (= lt!361192 (Found!8591 index!1236))))

(declare-fun b!806447 () Bool)

(declare-fun res!550740 () Bool)

(assert (=> b!806447 (=> (not res!550740) (not e!446605))))

(assert (=> b!806447 (= res!550740 (validKeyInArray!0 (select (arr!20993 a!3170) j!153)))))

(declare-fun b!806448 () Bool)

(declare-fun res!550732 () Bool)

(assert (=> b!806448 (=> (not res!550732) (not e!446603))))

(declare-datatypes ((List!15009 0))(
  ( (Nil!15006) (Cons!15005 (h!16134 (_ BitVec 64)) (t!21332 List!15009)) )
))
(declare-fun arrayNoDuplicates!0 (array!43839 (_ BitVec 32) List!15009) Bool)

(assert (=> b!806448 (= res!550732 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15006))))

(declare-fun res!550739 () Bool)

(assert (=> start!69188 (=> (not res!550739) (not e!446605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69188 (= res!550739 (validMask!0 mask!3266))))

(assert (=> start!69188 e!446605))

(assert (=> start!69188 true))

(declare-fun array_inv!16767 (array!43839) Bool)

(assert (=> start!69188 (array_inv!16767 a!3170)))

(assert (= (and start!69188 res!550739) b!806438))

(assert (= (and b!806438 res!550733) b!806447))

(assert (= (and b!806447 res!550740) b!806439))

(assert (= (and b!806439 res!550731) b!806442))

(assert (= (and b!806442 res!550734) b!806441))

(assert (= (and b!806441 res!550735) b!806445))

(assert (= (and b!806445 res!550741) b!806448))

(assert (= (and b!806448 res!550732) b!806444))

(assert (= (and b!806444 res!550737) b!806440))

(assert (= (and b!806440 res!550738) b!806443))

(assert (= (and b!806443 res!550736) b!806446))

(declare-fun m!748471 () Bool)

(assert (=> b!806448 m!748471))

(declare-fun m!748473 () Bool)

(assert (=> b!806440 m!748473))

(declare-fun m!748475 () Bool)

(assert (=> b!806440 m!748475))

(declare-fun m!748477 () Bool)

(assert (=> b!806440 m!748477))

(declare-fun m!748479 () Bool)

(assert (=> b!806440 m!748479))

(declare-fun m!748481 () Bool)

(assert (=> b!806447 m!748481))

(assert (=> b!806447 m!748481))

(declare-fun m!748483 () Bool)

(assert (=> b!806447 m!748483))

(declare-fun m!748485 () Bool)

(assert (=> start!69188 m!748485))

(declare-fun m!748487 () Bool)

(assert (=> start!69188 m!748487))

(declare-fun m!748489 () Bool)

(assert (=> b!806445 m!748489))

(declare-fun m!748491 () Bool)

(assert (=> b!806444 m!748491))

(declare-fun m!748493 () Bool)

(assert (=> b!806444 m!748493))

(declare-fun m!748495 () Bool)

(assert (=> b!806439 m!748495))

(declare-fun m!748497 () Bool)

(assert (=> b!806443 m!748497))

(assert (=> b!806443 m!748481))

(assert (=> b!806443 m!748481))

(declare-fun m!748499 () Bool)

(assert (=> b!806443 m!748499))

(assert (=> b!806443 m!748481))

(declare-fun m!748501 () Bool)

(assert (=> b!806443 m!748501))

(declare-fun m!748503 () Bool)

(assert (=> b!806441 m!748503))

(declare-fun m!748505 () Bool)

(assert (=> b!806442 m!748505))

(push 1)

(assert (not b!806448))

