; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68652 () Bool)

(assert start!68652)

(declare-fun b!798525 () Bool)

(declare-fun res!543219 () Bool)

(declare-fun e!442928 () Bool)

(assert (=> b!798525 (=> (not res!543219) (not e!442928))))

(declare-datatypes ((array!43393 0))(
  ( (array!43394 (arr!20773 (Array (_ BitVec 32) (_ BitVec 64))) (size!21194 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43393)

(declare-datatypes ((List!14789 0))(
  ( (Nil!14786) (Cons!14785 (h!15914 (_ BitVec 64)) (t!21112 List!14789)) )
))
(declare-fun arrayNoDuplicates!0 (array!43393 (_ BitVec 32) List!14789) Bool)

(assert (=> b!798525 (= res!543219 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14786))))

(declare-fun e!442930 () Bool)

(declare-datatypes ((SeekEntryResult!8371 0))(
  ( (MissingZero!8371 (index!35851 (_ BitVec 32))) (Found!8371 (index!35852 (_ BitVec 32))) (Intermediate!8371 (undefined!9183 Bool) (index!35853 (_ BitVec 32)) (x!66762 (_ BitVec 32))) (Undefined!8371) (MissingVacant!8371 (index!35854 (_ BitVec 32))) )
))
(declare-fun lt!356494 () SeekEntryResult!8371)

(declare-fun b!798526 () Bool)

(declare-fun lt!356493 () SeekEntryResult!8371)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798526 (= e!442930 (and (= lt!356493 lt!356494) (= lt!356494 (Found!8371 j!153)) (not (= (select (arr!20773 a!3170) index!1236) (select (arr!20773 a!3170) j!153))) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43393 (_ BitVec 32)) SeekEntryResult!8371)

(assert (=> b!798526 (= lt!356494 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20773 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43393 (_ BitVec 32)) SeekEntryResult!8371)

(assert (=> b!798526 (= lt!356493 (seekEntryOrOpen!0 (select (arr!20773 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798527 () Bool)

(declare-fun res!543218 () Bool)

(declare-fun e!442927 () Bool)

(assert (=> b!798527 (=> (not res!543218) (not e!442927))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798527 (= res!543218 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798528 () Bool)

(declare-fun res!543214 () Bool)

(assert (=> b!798528 (=> (not res!543214) (not e!442927))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798528 (= res!543214 (and (= (size!21194 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21194 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21194 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798529 () Bool)

(declare-fun res!543221 () Bool)

(assert (=> b!798529 (=> (not res!543221) (not e!442927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798529 (= res!543221 (validKeyInArray!0 k0!2044))))

(declare-fun b!798530 () Bool)

(assert (=> b!798530 (= e!442927 e!442928)))

(declare-fun res!543223 () Bool)

(assert (=> b!798530 (=> (not res!543223) (not e!442928))))

(declare-fun lt!356492 () SeekEntryResult!8371)

(assert (=> b!798530 (= res!543223 (or (= lt!356492 (MissingZero!8371 i!1163)) (= lt!356492 (MissingVacant!8371 i!1163))))))

(assert (=> b!798530 (= lt!356492 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!543217 () Bool)

(assert (=> start!68652 (=> (not res!543217) (not e!442927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68652 (= res!543217 (validMask!0 mask!3266))))

(assert (=> start!68652 e!442927))

(assert (=> start!68652 true))

(declare-fun array_inv!16547 (array!43393) Bool)

(assert (=> start!68652 (array_inv!16547 a!3170)))

(declare-fun b!798531 () Bool)

(declare-fun res!543220 () Bool)

(assert (=> b!798531 (=> (not res!543220) (not e!442927))))

(assert (=> b!798531 (= res!543220 (validKeyInArray!0 (select (arr!20773 a!3170) j!153)))))

(declare-fun b!798532 () Bool)

(assert (=> b!798532 (= e!442928 e!442930)))

(declare-fun res!543222 () Bool)

(assert (=> b!798532 (=> (not res!543222) (not e!442930))))

(declare-fun lt!356490 () array!43393)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356491 () (_ BitVec 64))

(assert (=> b!798532 (= res!543222 (= (seekEntryOrOpen!0 lt!356491 lt!356490 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356491 lt!356490 mask!3266)))))

(assert (=> b!798532 (= lt!356491 (select (store (arr!20773 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798532 (= lt!356490 (array!43394 (store (arr!20773 a!3170) i!1163 k0!2044) (size!21194 a!3170)))))

(declare-fun b!798533 () Bool)

(declare-fun res!543216 () Bool)

(assert (=> b!798533 (=> (not res!543216) (not e!442928))))

(assert (=> b!798533 (= res!543216 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21194 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20773 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21194 a!3170)) (= (select (arr!20773 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798534 () Bool)

(declare-fun res!543215 () Bool)

(assert (=> b!798534 (=> (not res!543215) (not e!442928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43393 (_ BitVec 32)) Bool)

(assert (=> b!798534 (= res!543215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68652 res!543217) b!798528))

(assert (= (and b!798528 res!543214) b!798531))

(assert (= (and b!798531 res!543220) b!798529))

(assert (= (and b!798529 res!543221) b!798527))

(assert (= (and b!798527 res!543218) b!798530))

(assert (= (and b!798530 res!543223) b!798534))

(assert (= (and b!798534 res!543215) b!798525))

(assert (= (and b!798525 res!543219) b!798533))

(assert (= (and b!798533 res!543216) b!798532))

(assert (= (and b!798532 res!543222) b!798526))

(declare-fun m!739567 () Bool)

(assert (=> b!798527 m!739567))

(declare-fun m!739569 () Bool)

(assert (=> b!798530 m!739569))

(declare-fun m!739571 () Bool)

(assert (=> b!798533 m!739571))

(declare-fun m!739573 () Bool)

(assert (=> b!798533 m!739573))

(declare-fun m!739575 () Bool)

(assert (=> b!798529 m!739575))

(declare-fun m!739577 () Bool)

(assert (=> start!68652 m!739577))

(declare-fun m!739579 () Bool)

(assert (=> start!68652 m!739579))

(declare-fun m!739581 () Bool)

(assert (=> b!798534 m!739581))

(declare-fun m!739583 () Bool)

(assert (=> b!798532 m!739583))

(declare-fun m!739585 () Bool)

(assert (=> b!798532 m!739585))

(declare-fun m!739587 () Bool)

(assert (=> b!798532 m!739587))

(declare-fun m!739589 () Bool)

(assert (=> b!798532 m!739589))

(declare-fun m!739591 () Bool)

(assert (=> b!798526 m!739591))

(declare-fun m!739593 () Bool)

(assert (=> b!798526 m!739593))

(assert (=> b!798526 m!739593))

(declare-fun m!739595 () Bool)

(assert (=> b!798526 m!739595))

(assert (=> b!798526 m!739593))

(declare-fun m!739597 () Bool)

(assert (=> b!798526 m!739597))

(assert (=> b!798531 m!739593))

(assert (=> b!798531 m!739593))

(declare-fun m!739599 () Bool)

(assert (=> b!798531 m!739599))

(declare-fun m!739601 () Bool)

(assert (=> b!798525 m!739601))

(check-sat (not b!798531) (not b!798534) (not b!798527) (not b!798530) (not b!798529) (not b!798532) (not start!68652) (not b!798525) (not b!798526))
(check-sat)
