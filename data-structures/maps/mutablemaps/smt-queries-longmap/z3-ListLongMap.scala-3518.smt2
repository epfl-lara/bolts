; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48696 () Bool)

(assert start!48696)

(declare-fun b!534706 () Bool)

(declare-fun res!330071 () Bool)

(declare-fun e!310747 () Bool)

(assert (=> b!534706 (=> (not res!330071) (not e!310747))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33864 0))(
  ( (array!33865 (arr!16267 (Array (_ BitVec 32) (_ BitVec 64))) (size!16631 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33864)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4732 0))(
  ( (MissingZero!4732 (index!21152 (_ BitVec 32))) (Found!4732 (index!21153 (_ BitVec 32))) (Intermediate!4732 (undefined!5544 Bool) (index!21154 (_ BitVec 32)) (x!50134 (_ BitVec 32))) (Undefined!4732) (MissingVacant!4732 (index!21155 (_ BitVec 32))) )
))
(declare-fun lt!245686 () SeekEntryResult!4732)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33864 (_ BitVec 32)) SeekEntryResult!4732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534706 (= res!330071 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16267 a!3154) j!147) mask!3216) (select (arr!16267 a!3154) j!147) a!3154 mask!3216) lt!245686))))

(declare-fun b!534707 () Bool)

(declare-fun e!310749 () Bool)

(assert (=> b!534707 (= e!310749 e!310747)))

(declare-fun res!330068 () Bool)

(assert (=> b!534707 (=> (not res!330068) (not e!310747))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534707 (= res!330068 (= lt!245686 (Intermediate!4732 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!534707 (= lt!245686 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16267 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534708 () Bool)

(declare-fun res!330065 () Bool)

(declare-fun e!310750 () Bool)

(assert (=> b!534708 (=> (not res!330065) (not e!310750))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534708 (= res!330065 (and (= (size!16631 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16631 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16631 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534709 () Bool)

(declare-fun res!330066 () Bool)

(assert (=> b!534709 (=> (not res!330066) (not e!310749))))

(assert (=> b!534709 (= res!330066 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16631 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16631 a!3154)) (= (select (arr!16267 a!3154) resIndex!32) (select (arr!16267 a!3154) j!147))))))

(declare-fun b!534710 () Bool)

(assert (=> b!534710 (= e!310747 (and (not (= (select (arr!16267 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16267 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16267 a!3154) index!1177) (select (arr!16267 a!3154) j!147)) (= index!1177 resIndex!32) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun res!330064 () Bool)

(assert (=> start!48696 (=> (not res!330064) (not e!310750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48696 (= res!330064 (validMask!0 mask!3216))))

(assert (=> start!48696 e!310750))

(assert (=> start!48696 true))

(declare-fun array_inv!12041 (array!33864) Bool)

(assert (=> start!48696 (array_inv!12041 a!3154)))

(declare-fun b!534711 () Bool)

(declare-fun res!330067 () Bool)

(assert (=> b!534711 (=> (not res!330067) (not e!310749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33864 (_ BitVec 32)) Bool)

(assert (=> b!534711 (= res!330067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534712 () Bool)

(declare-fun res!330070 () Bool)

(assert (=> b!534712 (=> (not res!330070) (not e!310749))))

(declare-datatypes ((List!10439 0))(
  ( (Nil!10436) (Cons!10435 (h!11378 (_ BitVec 64)) (t!16675 List!10439)) )
))
(declare-fun arrayNoDuplicates!0 (array!33864 (_ BitVec 32) List!10439) Bool)

(assert (=> b!534712 (= res!330070 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10436))))

(declare-fun b!534713 () Bool)

(declare-fun res!330061 () Bool)

(assert (=> b!534713 (=> (not res!330061) (not e!310750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534713 (= res!330061 (validKeyInArray!0 (select (arr!16267 a!3154) j!147)))))

(declare-fun b!534714 () Bool)

(declare-fun res!330063 () Bool)

(assert (=> b!534714 (=> (not res!330063) (not e!310750))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!534714 (= res!330063 (validKeyInArray!0 k0!1998))))

(declare-fun b!534715 () Bool)

(declare-fun res!330062 () Bool)

(assert (=> b!534715 (=> (not res!330062) (not e!310750))))

(declare-fun arrayContainsKey!0 (array!33864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534715 (= res!330062 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534716 () Bool)

(assert (=> b!534716 (= e!310750 e!310749)))

(declare-fun res!330069 () Bool)

(assert (=> b!534716 (=> (not res!330069) (not e!310749))))

(declare-fun lt!245687 () SeekEntryResult!4732)

(assert (=> b!534716 (= res!330069 (or (= lt!245687 (MissingZero!4732 i!1153)) (= lt!245687 (MissingVacant!4732 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33864 (_ BitVec 32)) SeekEntryResult!4732)

(assert (=> b!534716 (= lt!245687 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48696 res!330064) b!534708))

(assert (= (and b!534708 res!330065) b!534713))

(assert (= (and b!534713 res!330061) b!534714))

(assert (= (and b!534714 res!330063) b!534715))

(assert (= (and b!534715 res!330062) b!534716))

(assert (= (and b!534716 res!330069) b!534711))

(assert (= (and b!534711 res!330067) b!534712))

(assert (= (and b!534712 res!330070) b!534709))

(assert (= (and b!534709 res!330066) b!534707))

(assert (= (and b!534707 res!330068) b!534706))

(assert (= (and b!534706 res!330071) b!534710))

(declare-fun m!514397 () Bool)

(assert (=> b!534715 m!514397))

(declare-fun m!514399 () Bool)

(assert (=> start!48696 m!514399))

(declare-fun m!514401 () Bool)

(assert (=> start!48696 m!514401))

(declare-fun m!514403 () Bool)

(assert (=> b!534706 m!514403))

(assert (=> b!534706 m!514403))

(declare-fun m!514405 () Bool)

(assert (=> b!534706 m!514405))

(assert (=> b!534706 m!514405))

(assert (=> b!534706 m!514403))

(declare-fun m!514407 () Bool)

(assert (=> b!534706 m!514407))

(declare-fun m!514409 () Bool)

(assert (=> b!534711 m!514409))

(declare-fun m!514411 () Bool)

(assert (=> b!534716 m!514411))

(assert (=> b!534713 m!514403))

(assert (=> b!534713 m!514403))

(declare-fun m!514413 () Bool)

(assert (=> b!534713 m!514413))

(declare-fun m!514415 () Bool)

(assert (=> b!534712 m!514415))

(declare-fun m!514417 () Bool)

(assert (=> b!534710 m!514417))

(assert (=> b!534710 m!514403))

(declare-fun m!514419 () Bool)

(assert (=> b!534709 m!514419))

(assert (=> b!534709 m!514403))

(declare-fun m!514421 () Bool)

(assert (=> b!534714 m!514421))

(assert (=> b!534707 m!514403))

(assert (=> b!534707 m!514403))

(declare-fun m!514423 () Bool)

(assert (=> b!534707 m!514423))

(check-sat (not b!534707) (not b!534714) (not b!534712) (not b!534711) (not start!48696) (not b!534713) (not b!534715) (not b!534716) (not b!534706))
(check-sat)
