; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86572 () Bool)

(assert start!86572)

(declare-fun b!1002787 () Bool)

(declare-fun e!564912 () Bool)

(declare-fun e!564914 () Bool)

(assert (=> b!1002787 (= e!564912 e!564914)))

(declare-fun res!672429 () Bool)

(assert (=> b!1002787 (=> (not res!672429) (not e!564914))))

(declare-datatypes ((SeekEntryResult!9416 0))(
  ( (MissingZero!9416 (index!40034 (_ BitVec 32))) (Found!9416 (index!40035 (_ BitVec 32))) (Intermediate!9416 (undefined!10228 Bool) (index!40036 (_ BitVec 32)) (x!87477 (_ BitVec 32))) (Undefined!9416) (MissingVacant!9416 (index!40037 (_ BitVec 32))) )
))
(declare-fun lt!443360 () SeekEntryResult!9416)

(declare-fun lt!443363 () SeekEntryResult!9416)

(assert (=> b!1002787 (= res!672429 (= lt!443360 lt!443363))))

(declare-datatypes ((array!63325 0))(
  ( (array!63326 (arr!30484 (Array (_ BitVec 32) (_ BitVec 64))) (size!30987 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63325)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63325 (_ BitVec 32)) SeekEntryResult!9416)

(assert (=> b!1002787 (= lt!443360 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30484 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002788 () Bool)

(declare-fun e!564913 () Bool)

(assert (=> b!1002788 (= e!564914 e!564913)))

(declare-fun res!672436 () Bool)

(assert (=> b!1002788 (=> (not res!672436) (not e!564913))))

(declare-fun lt!443367 () (_ BitVec 64))

(declare-fun lt!443361 () array!63325)

(declare-fun lt!443364 () SeekEntryResult!9416)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002788 (= res!672436 (not (= lt!443364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443367 mask!3464) lt!443367 lt!443361 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1002788 (= lt!443367 (select (store (arr!30484 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002788 (= lt!443361 (array!63326 (store (arr!30484 a!3219) i!1194 k!2224) (size!30987 a!3219)))))

(declare-fun b!1002789 () Bool)

(declare-fun res!672426 () Bool)

(declare-fun e!564908 () Bool)

(assert (=> b!1002789 (=> (not res!672426) (not e!564908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63325 (_ BitVec 32)) Bool)

(assert (=> b!1002789 (= res!672426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!672432 () Bool)

(declare-fun e!564909 () Bool)

(assert (=> start!86572 (=> (not res!672432) (not e!564909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86572 (= res!672432 (validMask!0 mask!3464))))

(assert (=> start!86572 e!564909))

(declare-fun array_inv!23474 (array!63325) Bool)

(assert (=> start!86572 (array_inv!23474 a!3219)))

(assert (=> start!86572 true))

(declare-fun b!1002790 () Bool)

(assert (=> b!1002790 (= e!564909 e!564908)))

(declare-fun res!672430 () Bool)

(assert (=> b!1002790 (=> (not res!672430) (not e!564908))))

(declare-fun lt!443366 () SeekEntryResult!9416)

(assert (=> b!1002790 (= res!672430 (or (= lt!443366 (MissingVacant!9416 i!1194)) (= lt!443366 (MissingZero!9416 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63325 (_ BitVec 32)) SeekEntryResult!9416)

(assert (=> b!1002790 (= lt!443366 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002791 () Bool)

(declare-fun res!672427 () Bool)

(assert (=> b!1002791 (=> (not res!672427) (not e!564908))))

(declare-datatypes ((List!21286 0))(
  ( (Nil!21283) (Cons!21282 (h!22459 (_ BitVec 64)) (t!30295 List!21286)) )
))
(declare-fun arrayNoDuplicates!0 (array!63325 (_ BitVec 32) List!21286) Bool)

(assert (=> b!1002791 (= res!672427 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21283))))

(declare-fun b!1002792 () Bool)

(declare-fun e!564911 () Bool)

(assert (=> b!1002792 (= e!564913 e!564911)))

(declare-fun res!672425 () Bool)

(assert (=> b!1002792 (=> (not res!672425) (not e!564911))))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun lt!443362 () (_ BitVec 32))

(assert (=> b!1002792 (= res!672425 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443362 #b00000000000000000000000000000000) (bvslt lt!443362 (size!30987 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002792 (= lt!443362 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002793 () Bool)

(declare-fun res!672431 () Bool)

(assert (=> b!1002793 (=> (not res!672431) (not e!564909))))

(assert (=> b!1002793 (= res!672431 (and (= (size!30987 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30987 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30987 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002794 () Bool)

(declare-fun res!672423 () Bool)

(assert (=> b!1002794 (=> (not res!672423) (not e!564909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002794 (= res!672423 (validKeyInArray!0 (select (arr!30484 a!3219) j!170)))))

(declare-fun b!1002795 () Bool)

(declare-fun res!672435 () Bool)

(assert (=> b!1002795 (=> (not res!672435) (not e!564911))))

(assert (=> b!1002795 (= res!672435 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443362 (select (arr!30484 a!3219) j!170) a!3219 mask!3464) lt!443363))))

(declare-fun b!1002796 () Bool)

(assert (=> b!1002796 (= e!564908 e!564912)))

(declare-fun res!672434 () Bool)

(assert (=> b!1002796 (=> (not res!672434) (not e!564912))))

(assert (=> b!1002796 (= res!672434 (= lt!443364 lt!443363))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002796 (= lt!443363 (Intermediate!9416 false resIndex!38 resX!38))))

(assert (=> b!1002796 (= lt!443364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30484 a!3219) j!170) mask!3464) (select (arr!30484 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002797 () Bool)

(declare-fun res!672421 () Bool)

(assert (=> b!1002797 (=> (not res!672421) (not e!564913))))

(assert (=> b!1002797 (= res!672421 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002798 () Bool)

(assert (=> b!1002798 (= e!564911 false)))

(declare-fun lt!443365 () SeekEntryResult!9416)

(assert (=> b!1002798 (= lt!443365 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443362 lt!443367 lt!443361 mask!3464))))

(declare-fun b!1002799 () Bool)

(declare-fun res!672433 () Bool)

(assert (=> b!1002799 (=> (not res!672433) (not e!564908))))

(assert (=> b!1002799 (= res!672433 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30987 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30987 a!3219))))))

(declare-fun b!1002800 () Bool)

(declare-fun res!672424 () Bool)

(assert (=> b!1002800 (=> (not res!672424) (not e!564909))))

(assert (=> b!1002800 (= res!672424 (validKeyInArray!0 k!2224))))

(declare-fun b!1002801 () Bool)

(declare-fun res!672428 () Bool)

(assert (=> b!1002801 (=> (not res!672428) (not e!564913))))

(assert (=> b!1002801 (= res!672428 (not (= lt!443360 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443367 lt!443361 mask!3464))))))

(declare-fun b!1002802 () Bool)

(declare-fun res!672422 () Bool)

(assert (=> b!1002802 (=> (not res!672422) (not e!564909))))

(declare-fun arrayContainsKey!0 (array!63325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002802 (= res!672422 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86572 res!672432) b!1002793))

(assert (= (and b!1002793 res!672431) b!1002794))

(assert (= (and b!1002794 res!672423) b!1002800))

(assert (= (and b!1002800 res!672424) b!1002802))

(assert (= (and b!1002802 res!672422) b!1002790))

(assert (= (and b!1002790 res!672430) b!1002789))

(assert (= (and b!1002789 res!672426) b!1002791))

(assert (= (and b!1002791 res!672427) b!1002799))

(assert (= (and b!1002799 res!672433) b!1002796))

(assert (= (and b!1002796 res!672434) b!1002787))

(assert (= (and b!1002787 res!672429) b!1002788))

(assert (= (and b!1002788 res!672436) b!1002801))

(assert (= (and b!1002801 res!672428) b!1002797))

(assert (= (and b!1002797 res!672421) b!1002792))

(assert (= (and b!1002792 res!672425) b!1002795))

(assert (= (and b!1002795 res!672435) b!1002798))

(declare-fun m!928701 () Bool)

(assert (=> b!1002787 m!928701))

(assert (=> b!1002787 m!928701))

(declare-fun m!928703 () Bool)

(assert (=> b!1002787 m!928703))

(assert (=> b!1002795 m!928701))

(assert (=> b!1002795 m!928701))

(declare-fun m!928705 () Bool)

(assert (=> b!1002795 m!928705))

(declare-fun m!928707 () Bool)

(assert (=> b!1002801 m!928707))

(declare-fun m!928709 () Bool)

(assert (=> b!1002789 m!928709))

(declare-fun m!928711 () Bool)

(assert (=> b!1002790 m!928711))

(declare-fun m!928713 () Bool)

(assert (=> b!1002791 m!928713))

(declare-fun m!928715 () Bool)

(assert (=> b!1002792 m!928715))

(assert (=> b!1002796 m!928701))

(assert (=> b!1002796 m!928701))

(declare-fun m!928717 () Bool)

(assert (=> b!1002796 m!928717))

(assert (=> b!1002796 m!928717))

(assert (=> b!1002796 m!928701))

(declare-fun m!928719 () Bool)

(assert (=> b!1002796 m!928719))

(declare-fun m!928721 () Bool)

(assert (=> b!1002800 m!928721))

(declare-fun m!928723 () Bool)

(assert (=> b!1002788 m!928723))

(assert (=> b!1002788 m!928723))

(declare-fun m!928725 () Bool)

(assert (=> b!1002788 m!928725))

(declare-fun m!928727 () Bool)

(assert (=> b!1002788 m!928727))

(declare-fun m!928729 () Bool)

(assert (=> b!1002788 m!928729))

(assert (=> b!1002794 m!928701))

(assert (=> b!1002794 m!928701))

(declare-fun m!928731 () Bool)

(assert (=> b!1002794 m!928731))

(declare-fun m!928733 () Bool)

(assert (=> start!86572 m!928733))

(declare-fun m!928735 () Bool)

(assert (=> start!86572 m!928735))

(declare-fun m!928737 () Bool)

(assert (=> b!1002798 m!928737))

(declare-fun m!928739 () Bool)

(assert (=> b!1002802 m!928739))

(push 1)

