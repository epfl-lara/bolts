; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86770 () Bool)

(assert start!86770)

(declare-fun b!1005365 () Bool)

(declare-fun res!674617 () Bool)

(declare-fun e!566153 () Bool)

(assert (=> b!1005365 (=> (not res!674617) (not e!566153))))

(declare-datatypes ((array!63421 0))(
  ( (array!63422 (arr!30529 (Array (_ BitVec 32) (_ BitVec 64))) (size!31032 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63421)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005365 (= res!674617 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31032 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31032 a!3219))))))

(declare-fun b!1005366 () Bool)

(declare-fun res!674613 () Bool)

(declare-fun e!566152 () Bool)

(assert (=> b!1005366 (=> (not res!674613) (not e!566152))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005366 (= res!674613 (validKeyInArray!0 (select (arr!30529 a!3219) j!170)))))

(declare-fun b!1005367 () Bool)

(declare-fun res!674615 () Bool)

(assert (=> b!1005367 (=> (not res!674615) (not e!566153))))

(declare-datatypes ((List!21331 0))(
  ( (Nil!21328) (Cons!21327 (h!22510 (_ BitVec 64)) (t!30340 List!21331)) )
))
(declare-fun arrayNoDuplicates!0 (array!63421 (_ BitVec 32) List!21331) Bool)

(assert (=> b!1005367 (= res!674615 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21328))))

(declare-fun b!1005368 () Bool)

(assert (=> b!1005368 (= e!566153 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9461 0))(
  ( (MissingZero!9461 (index!40214 (_ BitVec 32))) (Found!9461 (index!40215 (_ BitVec 32))) (Intermediate!9461 (undefined!10273 Bool) (index!40216 (_ BitVec 32)) (x!87654 (_ BitVec 32))) (Undefined!9461) (MissingVacant!9461 (index!40217 (_ BitVec 32))) )
))
(declare-fun lt!444513 () SeekEntryResult!9461)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63421 (_ BitVec 32)) SeekEntryResult!9461)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005368 (= lt!444513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30529 a!3219) j!170) mask!3464) (select (arr!30529 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!674610 () Bool)

(assert (=> start!86770 (=> (not res!674610) (not e!566152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86770 (= res!674610 (validMask!0 mask!3464))))

(assert (=> start!86770 e!566152))

(declare-fun array_inv!23519 (array!63421) Bool)

(assert (=> start!86770 (array_inv!23519 a!3219)))

(assert (=> start!86770 true))

(declare-fun b!1005369 () Bool)

(declare-fun res!674609 () Bool)

(assert (=> b!1005369 (=> (not res!674609) (not e!566153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63421 (_ BitVec 32)) Bool)

(assert (=> b!1005369 (= res!674609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005370 () Bool)

(declare-fun res!674616 () Bool)

(assert (=> b!1005370 (=> (not res!674616) (not e!566152))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1005370 (= res!674616 (validKeyInArray!0 k!2224))))

(declare-fun b!1005371 () Bool)

(assert (=> b!1005371 (= e!566152 e!566153)))

(declare-fun res!674612 () Bool)

(assert (=> b!1005371 (=> (not res!674612) (not e!566153))))

(declare-fun lt!444512 () SeekEntryResult!9461)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005371 (= res!674612 (or (= lt!444512 (MissingVacant!9461 i!1194)) (= lt!444512 (MissingZero!9461 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63421 (_ BitVec 32)) SeekEntryResult!9461)

(assert (=> b!1005371 (= lt!444512 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005372 () Bool)

(declare-fun res!674611 () Bool)

(assert (=> b!1005372 (=> (not res!674611) (not e!566152))))

(assert (=> b!1005372 (= res!674611 (and (= (size!31032 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31032 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31032 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005373 () Bool)

(declare-fun res!674614 () Bool)

(assert (=> b!1005373 (=> (not res!674614) (not e!566152))))

(declare-fun arrayContainsKey!0 (array!63421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005373 (= res!674614 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86770 res!674610) b!1005372))

(assert (= (and b!1005372 res!674611) b!1005366))

(assert (= (and b!1005366 res!674613) b!1005370))

(assert (= (and b!1005370 res!674616) b!1005373))

(assert (= (and b!1005373 res!674614) b!1005371))

(assert (= (and b!1005371 res!674612) b!1005369))

(assert (= (and b!1005369 res!674609) b!1005367))

(assert (= (and b!1005367 res!674615) b!1005365))

(assert (= (and b!1005365 res!674617) b!1005368))

(declare-fun m!930711 () Bool)

(assert (=> b!1005366 m!930711))

(assert (=> b!1005366 m!930711))

(declare-fun m!930713 () Bool)

(assert (=> b!1005366 m!930713))

(declare-fun m!930715 () Bool)

(assert (=> b!1005369 m!930715))

(declare-fun m!930717 () Bool)

(assert (=> b!1005373 m!930717))

(declare-fun m!930719 () Bool)

(assert (=> b!1005371 m!930719))

(declare-fun m!930721 () Bool)

(assert (=> b!1005367 m!930721))

(assert (=> b!1005368 m!930711))

(assert (=> b!1005368 m!930711))

(declare-fun m!930723 () Bool)

(assert (=> b!1005368 m!930723))

(assert (=> b!1005368 m!930723))

(assert (=> b!1005368 m!930711))

(declare-fun m!930725 () Bool)

(assert (=> b!1005368 m!930725))

(declare-fun m!930727 () Bool)

(assert (=> start!86770 m!930727))

(declare-fun m!930729 () Bool)

(assert (=> start!86770 m!930729))

(declare-fun m!930731 () Bool)

(assert (=> b!1005370 m!930731))

(push 1)

