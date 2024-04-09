; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48684 () Bool)

(assert start!48684)

(declare-fun b!534521 () Bool)

(declare-fun res!329877 () Bool)

(declare-fun e!310688 () Bool)

(assert (=> b!534521 (=> (not res!329877) (not e!310688))))

(declare-datatypes ((array!33852 0))(
  ( (array!33853 (arr!16261 (Array (_ BitVec 32) (_ BitVec 64))) (size!16625 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33852)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33852 (_ BitVec 32)) Bool)

(assert (=> b!534521 (= res!329877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534522 () Bool)

(declare-fun res!329881 () Bool)

(assert (=> b!534522 (=> (not res!329881) (not e!310688))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4726 0))(
  ( (MissingZero!4726 (index!21128 (_ BitVec 32))) (Found!4726 (index!21129 (_ BitVec 32))) (Intermediate!4726 (undefined!5538 Bool) (index!21130 (_ BitVec 32)) (x!50112 (_ BitVec 32))) (Undefined!4726) (MissingVacant!4726 (index!21131 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33852 (_ BitVec 32)) SeekEntryResult!4726)

(assert (=> b!534522 (= res!329881 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16261 a!3154) j!147) a!3154 mask!3216) (Intermediate!4726 false resIndex!32 resX!32)))))

(declare-fun res!329880 () Bool)

(declare-fun e!310689 () Bool)

(assert (=> start!48684 (=> (not res!329880) (not e!310689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48684 (= res!329880 (validMask!0 mask!3216))))

(assert (=> start!48684 e!310689))

(assert (=> start!48684 true))

(declare-fun array_inv!12035 (array!33852) Bool)

(assert (=> start!48684 (array_inv!12035 a!3154)))

(declare-fun b!534523 () Bool)

(assert (=> b!534523 (= e!310688 false)))

(declare-fun lt!245650 () SeekEntryResult!4726)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534523 (= lt!245650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16261 a!3154) j!147) mask!3216) (select (arr!16261 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534524 () Bool)

(declare-fun res!329878 () Bool)

(assert (=> b!534524 (=> (not res!329878) (not e!310689))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534524 (= res!329878 (and (= (size!16625 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16625 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16625 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534525 () Bool)

(declare-fun res!329883 () Bool)

(assert (=> b!534525 (=> (not res!329883) (not e!310688))))

(declare-datatypes ((List!10433 0))(
  ( (Nil!10430) (Cons!10429 (h!11372 (_ BitVec 64)) (t!16669 List!10433)) )
))
(declare-fun arrayNoDuplicates!0 (array!33852 (_ BitVec 32) List!10433) Bool)

(assert (=> b!534525 (= res!329883 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10430))))

(declare-fun b!534526 () Bool)

(declare-fun res!329876 () Bool)

(assert (=> b!534526 (=> (not res!329876) (not e!310689))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534526 (= res!329876 (validKeyInArray!0 k0!1998))))

(declare-fun b!534527 () Bool)

(declare-fun res!329884 () Bool)

(assert (=> b!534527 (=> (not res!329884) (not e!310689))))

(assert (=> b!534527 (= res!329884 (validKeyInArray!0 (select (arr!16261 a!3154) j!147)))))

(declare-fun b!534528 () Bool)

(declare-fun res!329882 () Bool)

(assert (=> b!534528 (=> (not res!329882) (not e!310689))))

(declare-fun arrayContainsKey!0 (array!33852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534528 (= res!329882 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534529 () Bool)

(assert (=> b!534529 (= e!310689 e!310688)))

(declare-fun res!329885 () Bool)

(assert (=> b!534529 (=> (not res!329885) (not e!310688))))

(declare-fun lt!245651 () SeekEntryResult!4726)

(assert (=> b!534529 (= res!329885 (or (= lt!245651 (MissingZero!4726 i!1153)) (= lt!245651 (MissingVacant!4726 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33852 (_ BitVec 32)) SeekEntryResult!4726)

(assert (=> b!534529 (= lt!245651 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!534530 () Bool)

(declare-fun res!329879 () Bool)

(assert (=> b!534530 (=> (not res!329879) (not e!310688))))

(assert (=> b!534530 (= res!329879 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16625 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16625 a!3154)) (= (select (arr!16261 a!3154) resIndex!32) (select (arr!16261 a!3154) j!147))))))

(assert (= (and start!48684 res!329880) b!534524))

(assert (= (and b!534524 res!329878) b!534527))

(assert (= (and b!534527 res!329884) b!534526))

(assert (= (and b!534526 res!329876) b!534528))

(assert (= (and b!534528 res!329882) b!534529))

(assert (= (and b!534529 res!329885) b!534521))

(assert (= (and b!534521 res!329877) b!534525))

(assert (= (and b!534525 res!329883) b!534530))

(assert (= (and b!534530 res!329879) b!534522))

(assert (= (and b!534522 res!329881) b!534523))

(declare-fun m!514239 () Bool)

(assert (=> b!534529 m!514239))

(declare-fun m!514241 () Bool)

(assert (=> start!48684 m!514241))

(declare-fun m!514243 () Bool)

(assert (=> start!48684 m!514243))

(declare-fun m!514245 () Bool)

(assert (=> b!534528 m!514245))

(declare-fun m!514247 () Bool)

(assert (=> b!534523 m!514247))

(assert (=> b!534523 m!514247))

(declare-fun m!514249 () Bool)

(assert (=> b!534523 m!514249))

(assert (=> b!534523 m!514249))

(assert (=> b!534523 m!514247))

(declare-fun m!514251 () Bool)

(assert (=> b!534523 m!514251))

(declare-fun m!514253 () Bool)

(assert (=> b!534530 m!514253))

(assert (=> b!534530 m!514247))

(assert (=> b!534527 m!514247))

(assert (=> b!534527 m!514247))

(declare-fun m!514255 () Bool)

(assert (=> b!534527 m!514255))

(declare-fun m!514257 () Bool)

(assert (=> b!534525 m!514257))

(declare-fun m!514259 () Bool)

(assert (=> b!534521 m!514259))

(declare-fun m!514261 () Bool)

(assert (=> b!534526 m!514261))

(assert (=> b!534522 m!514247))

(assert (=> b!534522 m!514247))

(declare-fun m!514263 () Bool)

(assert (=> b!534522 m!514263))

(check-sat (not b!534528) (not b!534529) (not b!534527) (not b!534522) (not start!48684) (not b!534525) (not b!534521) (not b!534526) (not b!534523))
(check-sat)
