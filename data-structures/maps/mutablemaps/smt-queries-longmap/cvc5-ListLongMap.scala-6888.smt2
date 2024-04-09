; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86614 () Bool)

(assert start!86614)

(declare-fun b!1003795 () Bool)

(declare-fun res!673442 () Bool)

(declare-fun e!565354 () Bool)

(assert (=> b!1003795 (=> (not res!673442) (not e!565354))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!443868 () (_ BitVec 64))

(declare-datatypes ((array!63367 0))(
  ( (array!63368 (arr!30505 (Array (_ BitVec 32) (_ BitVec 64))) (size!31008 (_ BitVec 32))) )
))
(declare-fun lt!443870 () array!63367)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9437 0))(
  ( (MissingZero!9437 (index!40118 (_ BitVec 32))) (Found!9437 (index!40119 (_ BitVec 32))) (Intermediate!9437 (undefined!10249 Bool) (index!40120 (_ BitVec 32)) (x!87554 (_ BitVec 32))) (Undefined!9437) (MissingVacant!9437 (index!40121 (_ BitVec 32))) )
))
(declare-fun lt!443869 () SeekEntryResult!9437)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63367 (_ BitVec 32)) SeekEntryResult!9437)

(assert (=> b!1003795 (= res!673442 (not (= lt!443869 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443868 lt!443870 mask!3464))))))

(declare-fun b!1003796 () Bool)

(declare-fun res!673440 () Bool)

(declare-fun e!565351 () Bool)

(assert (=> b!1003796 (=> (not res!673440) (not e!565351))))

(declare-fun a!3219 () array!63367)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003796 (= res!673440 (and (= (size!31008 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31008 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31008 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003797 () Bool)

(declare-fun res!673432 () Bool)

(assert (=> b!1003797 (=> (not res!673432) (not e!565351))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003797 (= res!673432 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003798 () Bool)

(declare-fun res!673443 () Bool)

(declare-fun e!565352 () Bool)

(assert (=> b!1003798 (=> (not res!673443) (not e!565352))))

(declare-datatypes ((List!21307 0))(
  ( (Nil!21304) (Cons!21303 (h!22480 (_ BitVec 64)) (t!30316 List!21307)) )
))
(declare-fun arrayNoDuplicates!0 (array!63367 (_ BitVec 32) List!21307) Bool)

(assert (=> b!1003798 (= res!673443 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21304))))

(declare-fun b!1003799 () Bool)

(declare-fun e!565349 () Bool)

(assert (=> b!1003799 (= e!565354 e!565349)))

(declare-fun res!673444 () Bool)

(assert (=> b!1003799 (=> (not res!673444) (not e!565349))))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun lt!443865 () (_ BitVec 32))

(assert (=> b!1003799 (= res!673444 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443865 #b00000000000000000000000000000000) (bvslt lt!443865 (size!31008 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003799 (= lt!443865 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003800 () Bool)

(declare-fun e!565350 () Bool)

(assert (=> b!1003800 (= e!565350 e!565354)))

(declare-fun res!673434 () Bool)

(assert (=> b!1003800 (=> (not res!673434) (not e!565354))))

(declare-fun lt!443866 () SeekEntryResult!9437)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003800 (= res!673434 (not (= lt!443866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443868 mask!3464) lt!443868 lt!443870 mask!3464))))))

(assert (=> b!1003800 (= lt!443868 (select (store (arr!30505 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003800 (= lt!443870 (array!63368 (store (arr!30505 a!3219) i!1194 k!2224) (size!31008 a!3219)))))

(declare-fun b!1003801 () Bool)

(declare-fun res!673438 () Bool)

(assert (=> b!1003801 (=> (not res!673438) (not e!565351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003801 (= res!673438 (validKeyInArray!0 (select (arr!30505 a!3219) j!170)))))

(declare-fun b!1003802 () Bool)

(declare-fun res!673429 () Bool)

(assert (=> b!1003802 (=> (not res!673429) (not e!565352))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1003802 (= res!673429 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31008 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31008 a!3219))))))

(declare-fun b!1003804 () Bool)

(declare-fun res!673431 () Bool)

(assert (=> b!1003804 (=> (not res!673431) (not e!565352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63367 (_ BitVec 32)) Bool)

(assert (=> b!1003804 (= res!673431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003805 () Bool)

(assert (=> b!1003805 (= e!565351 e!565352)))

(declare-fun res!673441 () Bool)

(assert (=> b!1003805 (=> (not res!673441) (not e!565352))))

(declare-fun lt!443864 () SeekEntryResult!9437)

(assert (=> b!1003805 (= res!673441 (or (= lt!443864 (MissingVacant!9437 i!1194)) (= lt!443864 (MissingZero!9437 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63367 (_ BitVec 32)) SeekEntryResult!9437)

(assert (=> b!1003805 (= lt!443864 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003806 () Bool)

(declare-fun e!565353 () Bool)

(assert (=> b!1003806 (= e!565353 e!565350)))

(declare-fun res!673437 () Bool)

(assert (=> b!1003806 (=> (not res!673437) (not e!565350))))

(declare-fun lt!443867 () SeekEntryResult!9437)

(assert (=> b!1003806 (= res!673437 (= lt!443869 lt!443867))))

(assert (=> b!1003806 (= lt!443869 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30505 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003807 () Bool)

(declare-fun res!673433 () Bool)

(assert (=> b!1003807 (=> (not res!673433) (not e!565354))))

(assert (=> b!1003807 (= res!673433 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun res!673435 () Bool)

(assert (=> start!86614 (=> (not res!673435) (not e!565351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86614 (= res!673435 (validMask!0 mask!3464))))

(assert (=> start!86614 e!565351))

(declare-fun array_inv!23495 (array!63367) Bool)

(assert (=> start!86614 (array_inv!23495 a!3219)))

(assert (=> start!86614 true))

(declare-fun b!1003803 () Bool)

(declare-fun res!673430 () Bool)

(assert (=> b!1003803 (=> (not res!673430) (not e!565349))))

(assert (=> b!1003803 (= res!673430 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443865 (select (arr!30505 a!3219) j!170) a!3219 mask!3464) lt!443867))))

(declare-fun b!1003808 () Bool)

(assert (=> b!1003808 (= e!565352 e!565353)))

(declare-fun res!673439 () Bool)

(assert (=> b!1003808 (=> (not res!673439) (not e!565353))))

(assert (=> b!1003808 (= res!673439 (= lt!443866 lt!443867))))

(assert (=> b!1003808 (= lt!443867 (Intermediate!9437 false resIndex!38 resX!38))))

(assert (=> b!1003808 (= lt!443866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30505 a!3219) j!170) mask!3464) (select (arr!30505 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003809 () Bool)

(assert (=> b!1003809 (= e!565349 false)))

(declare-fun lt!443871 () SeekEntryResult!9437)

(assert (=> b!1003809 (= lt!443871 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443865 lt!443868 lt!443870 mask!3464))))

(declare-fun b!1003810 () Bool)

(declare-fun res!673436 () Bool)

(assert (=> b!1003810 (=> (not res!673436) (not e!565351))))

(assert (=> b!1003810 (= res!673436 (validKeyInArray!0 k!2224))))

(assert (= (and start!86614 res!673435) b!1003796))

(assert (= (and b!1003796 res!673440) b!1003801))

(assert (= (and b!1003801 res!673438) b!1003810))

(assert (= (and b!1003810 res!673436) b!1003797))

(assert (= (and b!1003797 res!673432) b!1003805))

(assert (= (and b!1003805 res!673441) b!1003804))

(assert (= (and b!1003804 res!673431) b!1003798))

(assert (= (and b!1003798 res!673443) b!1003802))

(assert (= (and b!1003802 res!673429) b!1003808))

(assert (= (and b!1003808 res!673439) b!1003806))

(assert (= (and b!1003806 res!673437) b!1003800))

(assert (= (and b!1003800 res!673434) b!1003795))

(assert (= (and b!1003795 res!673442) b!1003807))

(assert (= (and b!1003807 res!673433) b!1003799))

(assert (= (and b!1003799 res!673444) b!1003803))

(assert (= (and b!1003803 res!673430) b!1003809))

(declare-fun m!929541 () Bool)

(assert (=> b!1003805 m!929541))

(declare-fun m!929543 () Bool)

(assert (=> b!1003800 m!929543))

(assert (=> b!1003800 m!929543))

(declare-fun m!929545 () Bool)

(assert (=> b!1003800 m!929545))

(declare-fun m!929547 () Bool)

(assert (=> b!1003800 m!929547))

(declare-fun m!929549 () Bool)

(assert (=> b!1003800 m!929549))

(declare-fun m!929551 () Bool)

(assert (=> b!1003808 m!929551))

(assert (=> b!1003808 m!929551))

(declare-fun m!929553 () Bool)

(assert (=> b!1003808 m!929553))

(assert (=> b!1003808 m!929553))

(assert (=> b!1003808 m!929551))

(declare-fun m!929555 () Bool)

(assert (=> b!1003808 m!929555))

(assert (=> b!1003806 m!929551))

(assert (=> b!1003806 m!929551))

(declare-fun m!929557 () Bool)

(assert (=> b!1003806 m!929557))

(assert (=> b!1003803 m!929551))

(assert (=> b!1003803 m!929551))

(declare-fun m!929559 () Bool)

(assert (=> b!1003803 m!929559))

(declare-fun m!929561 () Bool)

(assert (=> b!1003797 m!929561))

(declare-fun m!929563 () Bool)

(assert (=> b!1003795 m!929563))

(declare-fun m!929565 () Bool)

(assert (=> b!1003799 m!929565))

(declare-fun m!929567 () Bool)

(assert (=> b!1003809 m!929567))

(declare-fun m!929569 () Bool)

(assert (=> start!86614 m!929569))

(declare-fun m!929571 () Bool)

(assert (=> start!86614 m!929571))

(declare-fun m!929573 () Bool)

(assert (=> b!1003804 m!929573))

(declare-fun m!929575 () Bool)

(assert (=> b!1003798 m!929575))

(assert (=> b!1003801 m!929551))

(assert (=> b!1003801 m!929551))

(declare-fun m!929577 () Bool)

(assert (=> b!1003801 m!929577))

(declare-fun m!929579 () Bool)

(assert (=> b!1003810 m!929579))

(push 1)

