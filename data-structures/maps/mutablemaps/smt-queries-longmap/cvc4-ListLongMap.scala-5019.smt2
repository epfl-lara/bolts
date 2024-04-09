; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68648 () Bool)

(assert start!68648)

(declare-fun b!798465 () Bool)

(declare-fun res!543154 () Bool)

(declare-fun e!442904 () Bool)

(assert (=> b!798465 (=> (not res!543154) (not e!442904))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43389 0))(
  ( (array!43390 (arr!20771 (Array (_ BitVec 32) (_ BitVec 64))) (size!21192 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43389)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798465 (= res!543154 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21192 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20771 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21192 a!3170)) (= (select (arr!20771 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798466 () Bool)

(declare-fun res!543162 () Bool)

(declare-fun e!442903 () Bool)

(assert (=> b!798466 (=> (not res!543162) (not e!442903))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798466 (= res!543162 (validKeyInArray!0 k!2044))))

(declare-fun b!798467 () Bool)

(declare-fun res!543155 () Bool)

(assert (=> b!798467 (=> (not res!543155) (not e!442904))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43389 (_ BitVec 32)) Bool)

(assert (=> b!798467 (= res!543155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798468 () Bool)

(declare-fun res!543156 () Bool)

(assert (=> b!798468 (=> (not res!543156) (not e!442903))))

(declare-fun arrayContainsKey!0 (array!43389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798468 (= res!543156 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798469 () Bool)

(assert (=> b!798469 (= e!442903 e!442904)))

(declare-fun res!543160 () Bool)

(assert (=> b!798469 (=> (not res!543160) (not e!442904))))

(declare-datatypes ((SeekEntryResult!8369 0))(
  ( (MissingZero!8369 (index!35843 (_ BitVec 32))) (Found!8369 (index!35844 (_ BitVec 32))) (Intermediate!8369 (undefined!9181 Bool) (index!35845 (_ BitVec 32)) (x!66752 (_ BitVec 32))) (Undefined!8369) (MissingVacant!8369 (index!35846 (_ BitVec 32))) )
))
(declare-fun lt!356460 () SeekEntryResult!8369)

(assert (=> b!798469 (= res!543160 (or (= lt!356460 (MissingZero!8369 i!1163)) (= lt!356460 (MissingVacant!8369 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43389 (_ BitVec 32)) SeekEntryResult!8369)

(assert (=> b!798469 (= lt!356460 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798470 () Bool)

(declare-fun lt!356464 () SeekEntryResult!8369)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!356462 () SeekEntryResult!8369)

(declare-fun e!442906 () Bool)

(assert (=> b!798470 (= e!442906 (and (= lt!356462 lt!356464) (= lt!356464 (Found!8369 j!153)) (not (= (select (arr!20771 a!3170) index!1236) (select (arr!20771 a!3170) j!153))) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43389 (_ BitVec 32)) SeekEntryResult!8369)

(assert (=> b!798470 (= lt!356464 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20771 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798470 (= lt!356462 (seekEntryOrOpen!0 (select (arr!20771 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798471 () Bool)

(declare-fun res!543163 () Bool)

(assert (=> b!798471 (=> (not res!543163) (not e!442903))))

(assert (=> b!798471 (= res!543163 (validKeyInArray!0 (select (arr!20771 a!3170) j!153)))))

(declare-fun res!543161 () Bool)

(assert (=> start!68648 (=> (not res!543161) (not e!442903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68648 (= res!543161 (validMask!0 mask!3266))))

(assert (=> start!68648 e!442903))

(assert (=> start!68648 true))

(declare-fun array_inv!16545 (array!43389) Bool)

(assert (=> start!68648 (array_inv!16545 a!3170)))

(declare-fun b!798472 () Bool)

(assert (=> b!798472 (= e!442904 e!442906)))

(declare-fun res!543157 () Bool)

(assert (=> b!798472 (=> (not res!543157) (not e!442906))))

(declare-fun lt!356463 () array!43389)

(declare-fun lt!356461 () (_ BitVec 64))

(assert (=> b!798472 (= res!543157 (= (seekEntryOrOpen!0 lt!356461 lt!356463 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356461 lt!356463 mask!3266)))))

(assert (=> b!798472 (= lt!356461 (select (store (arr!20771 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798472 (= lt!356463 (array!43390 (store (arr!20771 a!3170) i!1163 k!2044) (size!21192 a!3170)))))

(declare-fun b!798473 () Bool)

(declare-fun res!543158 () Bool)

(assert (=> b!798473 (=> (not res!543158) (not e!442904))))

(declare-datatypes ((List!14787 0))(
  ( (Nil!14784) (Cons!14783 (h!15912 (_ BitVec 64)) (t!21110 List!14787)) )
))
(declare-fun arrayNoDuplicates!0 (array!43389 (_ BitVec 32) List!14787) Bool)

(assert (=> b!798473 (= res!543158 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14784))))

(declare-fun b!798474 () Bool)

(declare-fun res!543159 () Bool)

(assert (=> b!798474 (=> (not res!543159) (not e!442903))))

(assert (=> b!798474 (= res!543159 (and (= (size!21192 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21192 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21192 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68648 res!543161) b!798474))

(assert (= (and b!798474 res!543159) b!798471))

(assert (= (and b!798471 res!543163) b!798466))

(assert (= (and b!798466 res!543162) b!798468))

(assert (= (and b!798468 res!543156) b!798469))

(assert (= (and b!798469 res!543160) b!798467))

(assert (= (and b!798467 res!543155) b!798473))

(assert (= (and b!798473 res!543158) b!798465))

(assert (= (and b!798465 res!543154) b!798472))

(assert (= (and b!798472 res!543157) b!798470))

(declare-fun m!739495 () Bool)

(assert (=> b!798465 m!739495))

(declare-fun m!739497 () Bool)

(assert (=> b!798465 m!739497))

(declare-fun m!739499 () Bool)

(assert (=> b!798468 m!739499))

(declare-fun m!739501 () Bool)

(assert (=> b!798473 m!739501))

(declare-fun m!739503 () Bool)

(assert (=> start!68648 m!739503))

(declare-fun m!739505 () Bool)

(assert (=> start!68648 m!739505))

(declare-fun m!739507 () Bool)

(assert (=> b!798471 m!739507))

(assert (=> b!798471 m!739507))

(declare-fun m!739509 () Bool)

(assert (=> b!798471 m!739509))

(declare-fun m!739511 () Bool)

(assert (=> b!798467 m!739511))

(declare-fun m!739513 () Bool)

(assert (=> b!798466 m!739513))

(declare-fun m!739515 () Bool)

(assert (=> b!798472 m!739515))

(declare-fun m!739517 () Bool)

(assert (=> b!798472 m!739517))

(declare-fun m!739519 () Bool)

(assert (=> b!798472 m!739519))

(declare-fun m!739521 () Bool)

(assert (=> b!798472 m!739521))

(declare-fun m!739523 () Bool)

(assert (=> b!798470 m!739523))

(assert (=> b!798470 m!739507))

(assert (=> b!798470 m!739507))

(declare-fun m!739525 () Bool)

(assert (=> b!798470 m!739525))

(assert (=> b!798470 m!739507))

(declare-fun m!739527 () Bool)

(assert (=> b!798470 m!739527))

(declare-fun m!739529 () Bool)

(assert (=> b!798469 m!739529))

(push 1)

(assert (not start!68648))

(assert (not b!798473))

(assert (not b!798472))

(assert (not b!798466))

(assert (not b!798468))

(assert (not b!798469))

(assert (not b!798467))

