; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68592 () Bool)

(assert start!68592)

(declare-fun b!797531 () Bool)

(declare-fun e!442473 () Bool)

(declare-fun e!442476 () Bool)

(assert (=> b!797531 (= e!442473 e!442476)))

(declare-fun res!542224 () Bool)

(assert (=> b!797531 (=> (not res!542224) (not e!442476))))

(declare-datatypes ((SeekEntryResult!8341 0))(
  ( (MissingZero!8341 (index!35731 (_ BitVec 32))) (Found!8341 (index!35732 (_ BitVec 32))) (Intermediate!8341 (undefined!9153 Bool) (index!35733 (_ BitVec 32)) (x!66652 (_ BitVec 32))) (Undefined!8341) (MissingVacant!8341 (index!35734 (_ BitVec 32))) )
))
(declare-fun lt!355882 () SeekEntryResult!8341)

(declare-fun lt!355880 () SeekEntryResult!8341)

(declare-datatypes ((array!43333 0))(
  ( (array!43334 (arr!20743 (Array (_ BitVec 32) (_ BitVec 64))) (size!21164 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43333)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797531 (= res!542224 (and (= lt!355882 lt!355880) (= lt!355880 (Found!8341 j!153)) (= (select (arr!20743 a!3170) index!1236) (select (arr!20743 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43333 (_ BitVec 32)) SeekEntryResult!8341)

(assert (=> b!797531 (= lt!355880 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20743 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43333 (_ BitVec 32)) SeekEntryResult!8341)

(assert (=> b!797531 (= lt!355882 (seekEntryOrOpen!0 (select (arr!20743 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797532 () Bool)

(declare-fun res!542227 () Bool)

(declare-fun e!442474 () Bool)

(assert (=> b!797532 (=> (not res!542227) (not e!442474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797532 (= res!542227 (validKeyInArray!0 (select (arr!20743 a!3170) j!153)))))

(declare-fun b!797533 () Bool)

(declare-fun e!442475 () Bool)

(assert (=> b!797533 (= e!442475 e!442473)))

(declare-fun res!542230 () Bool)

(assert (=> b!797533 (=> (not res!542230) (not e!442473))))

(declare-fun lt!355881 () SeekEntryResult!8341)

(declare-fun lt!355885 () SeekEntryResult!8341)

(assert (=> b!797533 (= res!542230 (= lt!355881 lt!355885))))

(declare-fun lt!355883 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!355884 () array!43333)

(assert (=> b!797533 (= lt!355885 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355883 lt!355884 mask!3266))))

(assert (=> b!797533 (= lt!355881 (seekEntryOrOpen!0 lt!355883 lt!355884 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797533 (= lt!355883 (select (store (arr!20743 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797533 (= lt!355884 (array!43334 (store (arr!20743 a!3170) i!1163 k0!2044) (size!21164 a!3170)))))

(declare-fun b!797534 () Bool)

(declare-fun res!542223 () Bool)

(assert (=> b!797534 (=> (not res!542223) (not e!442475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43333 (_ BitVec 32)) Bool)

(assert (=> b!797534 (= res!542223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!542229 () Bool)

(assert (=> start!68592 (=> (not res!542229) (not e!442474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68592 (= res!542229 (validMask!0 mask!3266))))

(assert (=> start!68592 e!442474))

(assert (=> start!68592 true))

(declare-fun array_inv!16517 (array!43333) Bool)

(assert (=> start!68592 (array_inv!16517 a!3170)))

(declare-fun b!797535 () Bool)

(declare-fun res!542226 () Bool)

(assert (=> b!797535 (=> (not res!542226) (not e!442474))))

(assert (=> b!797535 (= res!542226 (validKeyInArray!0 k0!2044))))

(declare-fun b!797536 () Bool)

(declare-fun res!542228 () Bool)

(assert (=> b!797536 (=> (not res!542228) (not e!442474))))

(assert (=> b!797536 (= res!542228 (and (= (size!21164 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21164 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21164 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797537 () Bool)

(declare-fun res!542220 () Bool)

(assert (=> b!797537 (=> (not res!542220) (not e!442474))))

(declare-fun arrayContainsKey!0 (array!43333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797537 (= res!542220 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797538 () Bool)

(assert (=> b!797538 (= e!442474 e!442475)))

(declare-fun res!542225 () Bool)

(assert (=> b!797538 (=> (not res!542225) (not e!442475))))

(declare-fun lt!355879 () SeekEntryResult!8341)

(assert (=> b!797538 (= res!542225 (or (= lt!355879 (MissingZero!8341 i!1163)) (= lt!355879 (MissingVacant!8341 i!1163))))))

(assert (=> b!797538 (= lt!355879 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797539 () Bool)

(declare-fun res!542221 () Bool)

(assert (=> b!797539 (=> (not res!542221) (not e!442475))))

(declare-datatypes ((List!14759 0))(
  ( (Nil!14756) (Cons!14755 (h!15884 (_ BitVec 64)) (t!21082 List!14759)) )
))
(declare-fun arrayNoDuplicates!0 (array!43333 (_ BitVec 32) List!14759) Bool)

(assert (=> b!797539 (= res!542221 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14756))))

(declare-fun b!797540 () Bool)

(assert (=> b!797540 (= e!442476 (not true))))

(assert (=> b!797540 (= lt!355885 (Found!8341 index!1236))))

(declare-fun b!797541 () Bool)

(declare-fun res!542222 () Bool)

(assert (=> b!797541 (=> (not res!542222) (not e!442475))))

(assert (=> b!797541 (= res!542222 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21164 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20743 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21164 a!3170)) (= (select (arr!20743 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68592 res!542229) b!797536))

(assert (= (and b!797536 res!542228) b!797532))

(assert (= (and b!797532 res!542227) b!797535))

(assert (= (and b!797535 res!542226) b!797537))

(assert (= (and b!797537 res!542220) b!797538))

(assert (= (and b!797538 res!542225) b!797534))

(assert (= (and b!797534 res!542223) b!797539))

(assert (= (and b!797539 res!542221) b!797541))

(assert (= (and b!797541 res!542222) b!797533))

(assert (= (and b!797533 res!542230) b!797531))

(assert (= (and b!797531 res!542224) b!797540))

(declare-fun m!738493 () Bool)

(assert (=> b!797531 m!738493))

(declare-fun m!738495 () Bool)

(assert (=> b!797531 m!738495))

(assert (=> b!797531 m!738495))

(declare-fun m!738497 () Bool)

(assert (=> b!797531 m!738497))

(assert (=> b!797531 m!738495))

(declare-fun m!738499 () Bool)

(assert (=> b!797531 m!738499))

(declare-fun m!738501 () Bool)

(assert (=> start!68592 m!738501))

(declare-fun m!738503 () Bool)

(assert (=> start!68592 m!738503))

(declare-fun m!738505 () Bool)

(assert (=> b!797533 m!738505))

(declare-fun m!738507 () Bool)

(assert (=> b!797533 m!738507))

(declare-fun m!738509 () Bool)

(assert (=> b!797533 m!738509))

(declare-fun m!738511 () Bool)

(assert (=> b!797533 m!738511))

(declare-fun m!738513 () Bool)

(assert (=> b!797541 m!738513))

(declare-fun m!738515 () Bool)

(assert (=> b!797541 m!738515))

(declare-fun m!738517 () Bool)

(assert (=> b!797537 m!738517))

(assert (=> b!797532 m!738495))

(assert (=> b!797532 m!738495))

(declare-fun m!738519 () Bool)

(assert (=> b!797532 m!738519))

(declare-fun m!738521 () Bool)

(assert (=> b!797535 m!738521))

(declare-fun m!738523 () Bool)

(assert (=> b!797534 m!738523))

(declare-fun m!738525 () Bool)

(assert (=> b!797539 m!738525))

(declare-fun m!738527 () Bool)

(assert (=> b!797538 m!738527))

(check-sat (not b!797539) (not b!797535) (not b!797532) (not b!797537) (not start!68592) (not b!797533) (not b!797534) (not b!797531) (not b!797538))
(check-sat)
