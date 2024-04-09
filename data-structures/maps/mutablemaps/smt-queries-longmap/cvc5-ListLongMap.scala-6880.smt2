; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86566 () Bool)

(assert start!86566)

(declare-fun b!1002643 () Bool)

(declare-fun e!564849 () Bool)

(declare-fun e!564848 () Bool)

(assert (=> b!1002643 (= e!564849 e!564848)))

(declare-fun res!672283 () Bool)

(assert (=> b!1002643 (=> (not res!672283) (not e!564848))))

(declare-datatypes ((SeekEntryResult!9413 0))(
  ( (MissingZero!9413 (index!40022 (_ BitVec 32))) (Found!9413 (index!40023 (_ BitVec 32))) (Intermediate!9413 (undefined!10225 Bool) (index!40024 (_ BitVec 32)) (x!87466 (_ BitVec 32))) (Undefined!9413) (MissingVacant!9413 (index!40025 (_ BitVec 32))) )
))
(declare-fun lt!443293 () SeekEntryResult!9413)

(declare-fun lt!443290 () SeekEntryResult!9413)

(assert (=> b!1002643 (= res!672283 (= lt!443293 lt!443290))))

(declare-datatypes ((array!63319 0))(
  ( (array!63320 (arr!30481 (Array (_ BitVec 32) (_ BitVec 64))) (size!30984 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63319)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63319 (_ BitVec 32)) SeekEntryResult!9413)

(assert (=> b!1002643 (= lt!443293 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30481 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002644 () Bool)

(declare-fun res!672278 () Bool)

(declare-fun e!564851 () Bool)

(assert (=> b!1002644 (=> (not res!672278) (not e!564851))))

(declare-datatypes ((List!21283 0))(
  ( (Nil!21280) (Cons!21279 (h!22456 (_ BitVec 64)) (t!30292 List!21283)) )
))
(declare-fun arrayNoDuplicates!0 (array!63319 (_ BitVec 32) List!21283) Bool)

(assert (=> b!1002644 (= res!672278 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21280))))

(declare-fun b!1002645 () Bool)

(declare-fun res!672277 () Bool)

(declare-fun e!564850 () Bool)

(assert (=> b!1002645 (=> (not res!672277) (not e!564850))))

(declare-fun lt!443292 () (_ BitVec 64))

(declare-fun lt!443289 () array!63319)

(assert (=> b!1002645 (= res!672277 (not (= lt!443293 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443292 lt!443289 mask!3464))))))

(declare-fun b!1002646 () Bool)

(declare-fun res!672291 () Bool)

(declare-fun e!564846 () Bool)

(assert (=> b!1002646 (=> (not res!672291) (not e!564846))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002646 (= res!672291 (and (= (size!30984 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30984 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30984 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002647 () Bool)

(declare-fun res!672290 () Bool)

(assert (=> b!1002647 (=> (not res!672290) (not e!564846))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002647 (= res!672290 (validKeyInArray!0 k!2224))))

(declare-fun b!1002648 () Bool)

(declare-fun res!672288 () Bool)

(assert (=> b!1002648 (=> (not res!672288) (not e!564851))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002648 (= res!672288 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30984 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30984 a!3219))))))

(declare-fun b!1002649 () Bool)

(declare-fun e!564847 () Bool)

(assert (=> b!1002649 (= e!564850 e!564847)))

(declare-fun res!672289 () Bool)

(assert (=> b!1002649 (=> (not res!672289) (not e!564847))))

(declare-fun lt!443291 () (_ BitVec 32))

(assert (=> b!1002649 (= res!672289 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443291 #b00000000000000000000000000000000) (bvslt lt!443291 (size!30984 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002649 (= lt!443291 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002650 () Bool)

(declare-fun res!672286 () Bool)

(assert (=> b!1002650 (=> (not res!672286) (not e!564846))))

(assert (=> b!1002650 (= res!672286 (validKeyInArray!0 (select (arr!30481 a!3219) j!170)))))

(declare-fun b!1002651 () Bool)

(declare-fun res!672285 () Bool)

(assert (=> b!1002651 (=> (not res!672285) (not e!564847))))

(assert (=> b!1002651 (= res!672285 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443291 (select (arr!30481 a!3219) j!170) a!3219 mask!3464) lt!443290))))

(declare-fun res!672281 () Bool)

(assert (=> start!86566 (=> (not res!672281) (not e!564846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86566 (= res!672281 (validMask!0 mask!3464))))

(assert (=> start!86566 e!564846))

(declare-fun array_inv!23471 (array!63319) Bool)

(assert (=> start!86566 (array_inv!23471 a!3219)))

(assert (=> start!86566 true))

(declare-fun b!1002652 () Bool)

(assert (=> b!1002652 (= e!564848 e!564850)))

(declare-fun res!672287 () Bool)

(assert (=> b!1002652 (=> (not res!672287) (not e!564850))))

(declare-fun lt!443294 () SeekEntryResult!9413)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002652 (= res!672287 (not (= lt!443294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443292 mask!3464) lt!443292 lt!443289 mask!3464))))))

(assert (=> b!1002652 (= lt!443292 (select (store (arr!30481 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002652 (= lt!443289 (array!63320 (store (arr!30481 a!3219) i!1194 k!2224) (size!30984 a!3219)))))

(declare-fun b!1002653 () Bool)

(assert (=> b!1002653 (= e!564847 false)))

(declare-fun lt!443288 () SeekEntryResult!9413)

(assert (=> b!1002653 (= lt!443288 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443291 lt!443292 lt!443289 mask!3464))))

(declare-fun b!1002654 () Bool)

(declare-fun res!672284 () Bool)

(assert (=> b!1002654 (=> (not res!672284) (not e!564851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63319 (_ BitVec 32)) Bool)

(assert (=> b!1002654 (= res!672284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002655 () Bool)

(assert (=> b!1002655 (= e!564851 e!564849)))

(declare-fun res!672292 () Bool)

(assert (=> b!1002655 (=> (not res!672292) (not e!564849))))

(assert (=> b!1002655 (= res!672292 (= lt!443294 lt!443290))))

(assert (=> b!1002655 (= lt!443290 (Intermediate!9413 false resIndex!38 resX!38))))

(assert (=> b!1002655 (= lt!443294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30481 a!3219) j!170) mask!3464) (select (arr!30481 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002656 () Bool)

(declare-fun res!672279 () Bool)

(assert (=> b!1002656 (=> (not res!672279) (not e!564846))))

(declare-fun arrayContainsKey!0 (array!63319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002656 (= res!672279 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002657 () Bool)

(declare-fun res!672280 () Bool)

(assert (=> b!1002657 (=> (not res!672280) (not e!564850))))

(assert (=> b!1002657 (= res!672280 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002658 () Bool)

(assert (=> b!1002658 (= e!564846 e!564851)))

(declare-fun res!672282 () Bool)

(assert (=> b!1002658 (=> (not res!672282) (not e!564851))))

(declare-fun lt!443295 () SeekEntryResult!9413)

(assert (=> b!1002658 (= res!672282 (or (= lt!443295 (MissingVacant!9413 i!1194)) (= lt!443295 (MissingZero!9413 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63319 (_ BitVec 32)) SeekEntryResult!9413)

(assert (=> b!1002658 (= lt!443295 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86566 res!672281) b!1002646))

(assert (= (and b!1002646 res!672291) b!1002650))

(assert (= (and b!1002650 res!672286) b!1002647))

(assert (= (and b!1002647 res!672290) b!1002656))

(assert (= (and b!1002656 res!672279) b!1002658))

(assert (= (and b!1002658 res!672282) b!1002654))

(assert (= (and b!1002654 res!672284) b!1002644))

(assert (= (and b!1002644 res!672278) b!1002648))

(assert (= (and b!1002648 res!672288) b!1002655))

(assert (= (and b!1002655 res!672292) b!1002643))

(assert (= (and b!1002643 res!672283) b!1002652))

(assert (= (and b!1002652 res!672287) b!1002645))

(assert (= (and b!1002645 res!672277) b!1002657))

(assert (= (and b!1002657 res!672280) b!1002649))

(assert (= (and b!1002649 res!672289) b!1002651))

(assert (= (and b!1002651 res!672285) b!1002653))

(declare-fun m!928581 () Bool)

(assert (=> b!1002643 m!928581))

(assert (=> b!1002643 m!928581))

(declare-fun m!928583 () Bool)

(assert (=> b!1002643 m!928583))

(declare-fun m!928585 () Bool)

(assert (=> b!1002656 m!928585))

(declare-fun m!928587 () Bool)

(assert (=> b!1002644 m!928587))

(declare-fun m!928589 () Bool)

(assert (=> b!1002658 m!928589))

(assert (=> b!1002651 m!928581))

(assert (=> b!1002651 m!928581))

(declare-fun m!928591 () Bool)

(assert (=> b!1002651 m!928591))

(declare-fun m!928593 () Bool)

(assert (=> b!1002652 m!928593))

(assert (=> b!1002652 m!928593))

(declare-fun m!928595 () Bool)

(assert (=> b!1002652 m!928595))

(declare-fun m!928597 () Bool)

(assert (=> b!1002652 m!928597))

(declare-fun m!928599 () Bool)

(assert (=> b!1002652 m!928599))

(declare-fun m!928601 () Bool)

(assert (=> b!1002654 m!928601))

(declare-fun m!928603 () Bool)

(assert (=> b!1002647 m!928603))

(declare-fun m!928605 () Bool)

(assert (=> b!1002645 m!928605))

(declare-fun m!928607 () Bool)

(assert (=> start!86566 m!928607))

(declare-fun m!928609 () Bool)

(assert (=> start!86566 m!928609))

(assert (=> b!1002650 m!928581))

(assert (=> b!1002650 m!928581))

(declare-fun m!928611 () Bool)

(assert (=> b!1002650 m!928611))

(assert (=> b!1002655 m!928581))

(assert (=> b!1002655 m!928581))

(declare-fun m!928613 () Bool)

(assert (=> b!1002655 m!928613))

(assert (=> b!1002655 m!928613))

(assert (=> b!1002655 m!928581))

(declare-fun m!928615 () Bool)

(assert (=> b!1002655 m!928615))

(declare-fun m!928617 () Bool)

(assert (=> b!1002649 m!928617))

(declare-fun m!928619 () Bool)

(assert (=> b!1002653 m!928619))

(push 1)

