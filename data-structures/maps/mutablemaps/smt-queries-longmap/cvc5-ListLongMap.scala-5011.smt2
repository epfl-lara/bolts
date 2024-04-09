; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68596 () Bool)

(assert start!68596)

(declare-fun b!797599 () Bool)

(declare-fun e!442508 () Bool)

(declare-fun e!442507 () Bool)

(assert (=> b!797599 (= e!442508 e!442507)))

(declare-fun res!542299 () Bool)

(assert (=> b!797599 (=> (not res!542299) (not e!442507))))

(declare-datatypes ((SeekEntryResult!8343 0))(
  ( (MissingZero!8343 (index!35739 (_ BitVec 32))) (Found!8343 (index!35740 (_ BitVec 32))) (Intermediate!8343 (undefined!9155 Bool) (index!35741 (_ BitVec 32)) (x!66662 (_ BitVec 32))) (Undefined!8343) (MissingVacant!8343 (index!35742 (_ BitVec 32))) )
))
(declare-fun lt!355927 () SeekEntryResult!8343)

(declare-fun lt!355929 () SeekEntryResult!8343)

(assert (=> b!797599 (= res!542299 (= lt!355927 lt!355929))))

(declare-datatypes ((array!43337 0))(
  ( (array!43338 (arr!20745 (Array (_ BitVec 32) (_ BitVec 64))) (size!21166 (_ BitVec 32))) )
))
(declare-fun lt!355926 () array!43337)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!355924 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43337 (_ BitVec 32)) SeekEntryResult!8343)

(assert (=> b!797599 (= lt!355929 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355924 lt!355926 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43337 (_ BitVec 32)) SeekEntryResult!8343)

(assert (=> b!797599 (= lt!355927 (seekEntryOrOpen!0 lt!355924 lt!355926 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun a!3170 () array!43337)

(assert (=> b!797599 (= lt!355924 (select (store (arr!20745 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797599 (= lt!355926 (array!43338 (store (arr!20745 a!3170) i!1163 k!2044) (size!21166 a!3170)))))

(declare-fun b!797600 () Bool)

(declare-fun res!542294 () Bool)

(declare-fun e!442505 () Bool)

(assert (=> b!797600 (=> (not res!542294) (not e!442505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797600 (= res!542294 (validKeyInArray!0 (select (arr!20745 a!3170) j!153)))))

(declare-fun b!797601 () Bool)

(declare-fun res!542297 () Bool)

(assert (=> b!797601 (=> (not res!542297) (not e!442505))))

(assert (=> b!797601 (= res!542297 (validKeyInArray!0 k!2044))))

(declare-fun b!797602 () Bool)

(declare-fun res!542290 () Bool)

(assert (=> b!797602 (=> (not res!542290) (not e!442505))))

(assert (=> b!797602 (= res!542290 (and (= (size!21166 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21166 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21166 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797603 () Bool)

(declare-fun res!542298 () Bool)

(assert (=> b!797603 (=> (not res!542298) (not e!442508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43337 (_ BitVec 32)) Bool)

(assert (=> b!797603 (= res!542298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797604 () Bool)

(declare-fun e!442509 () Bool)

(declare-fun e!442510 () Bool)

(assert (=> b!797604 (= e!442509 e!442510)))

(declare-fun res!542296 () Bool)

(assert (=> b!797604 (=> (not res!542296) (not e!442510))))

(declare-fun lt!355930 () SeekEntryResult!8343)

(declare-fun lt!355923 () SeekEntryResult!8343)

(assert (=> b!797604 (= res!542296 (and (= lt!355923 lt!355930) (= (select (arr!20745 a!3170) index!1236) (select (arr!20745 a!3170) j!153))))))

(assert (=> b!797604 (= lt!355930 (Found!8343 j!153))))

(declare-fun b!797605 () Bool)

(assert (=> b!797605 (= e!442505 e!442508)))

(declare-fun res!542292 () Bool)

(assert (=> b!797605 (=> (not res!542292) (not e!442508))))

(declare-fun lt!355928 () SeekEntryResult!8343)

(assert (=> b!797605 (= res!542292 (or (= lt!355928 (MissingZero!8343 i!1163)) (= lt!355928 (MissingVacant!8343 i!1163))))))

(assert (=> b!797605 (= lt!355928 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797606 () Bool)

(declare-fun res!542291 () Bool)

(assert (=> b!797606 (=> (not res!542291) (not e!442505))))

(declare-fun arrayContainsKey!0 (array!43337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797606 (= res!542291 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797607 () Bool)

(declare-fun res!542295 () Bool)

(assert (=> b!797607 (=> (not res!542295) (not e!442508))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797607 (= res!542295 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21166 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20745 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21166 a!3170)) (= (select (arr!20745 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797608 () Bool)

(declare-fun res!542288 () Bool)

(assert (=> b!797608 (=> (not res!542288) (not e!442508))))

(declare-datatypes ((List!14761 0))(
  ( (Nil!14758) (Cons!14757 (h!15886 (_ BitVec 64)) (t!21084 List!14761)) )
))
(declare-fun arrayNoDuplicates!0 (array!43337 (_ BitVec 32) List!14761) Bool)

(assert (=> b!797608 (= res!542288 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14758))))

(declare-fun res!542289 () Bool)

(assert (=> start!68596 (=> (not res!542289) (not e!442505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68596 (= res!542289 (validMask!0 mask!3266))))

(assert (=> start!68596 e!442505))

(assert (=> start!68596 true))

(declare-fun array_inv!16519 (array!43337) Bool)

(assert (=> start!68596 (array_inv!16519 a!3170)))

(declare-fun b!797609 () Bool)

(assert (=> b!797609 (= e!442507 e!442509)))

(declare-fun res!542293 () Bool)

(assert (=> b!797609 (=> (not res!542293) (not e!442509))))

(declare-fun lt!355925 () SeekEntryResult!8343)

(assert (=> b!797609 (= res!542293 (= lt!355925 lt!355923))))

(assert (=> b!797609 (= lt!355923 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20745 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797609 (= lt!355925 (seekEntryOrOpen!0 (select (arr!20745 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797610 () Bool)

(assert (=> b!797610 (= e!442510 (not (or (not (= lt!355929 lt!355930)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(assert (=> b!797610 (= lt!355929 (Found!8343 index!1236))))

(assert (= (and start!68596 res!542289) b!797602))

(assert (= (and b!797602 res!542290) b!797600))

(assert (= (and b!797600 res!542294) b!797601))

(assert (= (and b!797601 res!542297) b!797606))

(assert (= (and b!797606 res!542291) b!797605))

(assert (= (and b!797605 res!542292) b!797603))

(assert (= (and b!797603 res!542298) b!797608))

(assert (= (and b!797608 res!542288) b!797607))

(assert (= (and b!797607 res!542295) b!797599))

(assert (= (and b!797599 res!542299) b!797609))

(assert (= (and b!797609 res!542293) b!797604))

(assert (= (and b!797604 res!542296) b!797610))

(declare-fun m!738565 () Bool)

(assert (=> b!797609 m!738565))

(assert (=> b!797609 m!738565))

(declare-fun m!738567 () Bool)

(assert (=> b!797609 m!738567))

(assert (=> b!797609 m!738565))

(declare-fun m!738569 () Bool)

(assert (=> b!797609 m!738569))

(declare-fun m!738571 () Bool)

(assert (=> b!797599 m!738571))

(declare-fun m!738573 () Bool)

(assert (=> b!797599 m!738573))

(declare-fun m!738575 () Bool)

(assert (=> b!797599 m!738575))

(declare-fun m!738577 () Bool)

(assert (=> b!797599 m!738577))

(declare-fun m!738579 () Bool)

(assert (=> b!797607 m!738579))

(declare-fun m!738581 () Bool)

(assert (=> b!797607 m!738581))

(assert (=> b!797600 m!738565))

(assert (=> b!797600 m!738565))

(declare-fun m!738583 () Bool)

(assert (=> b!797600 m!738583))

(declare-fun m!738585 () Bool)

(assert (=> b!797601 m!738585))

(declare-fun m!738587 () Bool)

(assert (=> b!797603 m!738587))

(declare-fun m!738589 () Bool)

(assert (=> start!68596 m!738589))

(declare-fun m!738591 () Bool)

(assert (=> start!68596 m!738591))

(declare-fun m!738593 () Bool)

(assert (=> b!797605 m!738593))

(declare-fun m!738595 () Bool)

(assert (=> b!797604 m!738595))

(assert (=> b!797604 m!738565))

(declare-fun m!738597 () Bool)

(assert (=> b!797606 m!738597))

(declare-fun m!738599 () Bool)

(assert (=> b!797608 m!738599))

(push 1)

