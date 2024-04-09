; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48630 () Bool)

(assert start!48630)

(declare-fun b!533712 () Bool)

(declare-fun res!329073 () Bool)

(declare-fun e!310446 () Bool)

(assert (=> b!533712 (=> (not res!329073) (not e!310446))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33798 0))(
  ( (array!33799 (arr!16234 (Array (_ BitVec 32) (_ BitVec 64))) (size!16598 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33798)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533712 (= res!329073 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16598 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16598 a!3154)) (= (select (arr!16234 a!3154) resIndex!32) (select (arr!16234 a!3154) j!147))))))

(declare-fun b!533713 () Bool)

(declare-fun res!329068 () Bool)

(assert (=> b!533713 (=> (not res!329068) (not e!310446))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33798 (_ BitVec 32)) Bool)

(assert (=> b!533713 (= res!329068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533714 () Bool)

(declare-fun res!329072 () Bool)

(assert (=> b!533714 (=> (not res!329072) (not e!310446))))

(declare-datatypes ((List!10406 0))(
  ( (Nil!10403) (Cons!10402 (h!11345 (_ BitVec 64)) (t!16642 List!10406)) )
))
(declare-fun arrayNoDuplicates!0 (array!33798 (_ BitVec 32) List!10406) Bool)

(assert (=> b!533714 (= res!329072 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10403))))

(declare-fun b!533715 () Bool)

(assert (=> b!533715 (= e!310446 false)))

(declare-datatypes ((SeekEntryResult!4699 0))(
  ( (MissingZero!4699 (index!21020 (_ BitVec 32))) (Found!4699 (index!21021 (_ BitVec 32))) (Intermediate!4699 (undefined!5511 Bool) (index!21022 (_ BitVec 32)) (x!50013 (_ BitVec 32))) (Undefined!4699) (MissingVacant!4699 (index!21023 (_ BitVec 32))) )
))
(declare-fun lt!245489 () SeekEntryResult!4699)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33798 (_ BitVec 32)) SeekEntryResult!4699)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533715 (= lt!245489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16234 a!3154) j!147) mask!3216) (select (arr!16234 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533716 () Bool)

(declare-fun res!329074 () Bool)

(declare-fun e!310447 () Bool)

(assert (=> b!533716 (=> (not res!329074) (not e!310447))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533716 (= res!329074 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533717 () Bool)

(declare-fun res!329070 () Bool)

(assert (=> b!533717 (=> (not res!329070) (not e!310447))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533717 (= res!329070 (and (= (size!16598 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16598 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16598 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533718 () Bool)

(declare-fun res!329075 () Bool)

(assert (=> b!533718 (=> (not res!329075) (not e!310447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533718 (= res!329075 (validKeyInArray!0 k0!1998))))

(declare-fun b!533711 () Bool)

(declare-fun res!329066 () Bool)

(assert (=> b!533711 (=> (not res!329066) (not e!310446))))

(assert (=> b!533711 (= res!329066 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16234 a!3154) j!147) a!3154 mask!3216) (Intermediate!4699 false resIndex!32 resX!32)))))

(declare-fun res!329067 () Bool)

(assert (=> start!48630 (=> (not res!329067) (not e!310447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48630 (= res!329067 (validMask!0 mask!3216))))

(assert (=> start!48630 e!310447))

(assert (=> start!48630 true))

(declare-fun array_inv!12008 (array!33798) Bool)

(assert (=> start!48630 (array_inv!12008 a!3154)))

(declare-fun b!533719 () Bool)

(declare-fun res!329071 () Bool)

(assert (=> b!533719 (=> (not res!329071) (not e!310447))))

(assert (=> b!533719 (= res!329071 (validKeyInArray!0 (select (arr!16234 a!3154) j!147)))))

(declare-fun b!533720 () Bool)

(assert (=> b!533720 (= e!310447 e!310446)))

(declare-fun res!329069 () Bool)

(assert (=> b!533720 (=> (not res!329069) (not e!310446))))

(declare-fun lt!245488 () SeekEntryResult!4699)

(assert (=> b!533720 (= res!329069 (or (= lt!245488 (MissingZero!4699 i!1153)) (= lt!245488 (MissingVacant!4699 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33798 (_ BitVec 32)) SeekEntryResult!4699)

(assert (=> b!533720 (= lt!245488 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48630 res!329067) b!533717))

(assert (= (and b!533717 res!329070) b!533719))

(assert (= (and b!533719 res!329071) b!533718))

(assert (= (and b!533718 res!329075) b!533716))

(assert (= (and b!533716 res!329074) b!533720))

(assert (= (and b!533720 res!329069) b!533713))

(assert (= (and b!533713 res!329068) b!533714))

(assert (= (and b!533714 res!329072) b!533712))

(assert (= (and b!533712 res!329073) b!533711))

(assert (= (and b!533711 res!329066) b!533715))

(declare-fun m!513537 () Bool)

(assert (=> b!533716 m!513537))

(declare-fun m!513539 () Bool)

(assert (=> b!533712 m!513539))

(declare-fun m!513541 () Bool)

(assert (=> b!533712 m!513541))

(declare-fun m!513543 () Bool)

(assert (=> b!533720 m!513543))

(declare-fun m!513545 () Bool)

(assert (=> b!533714 m!513545))

(declare-fun m!513547 () Bool)

(assert (=> start!48630 m!513547))

(declare-fun m!513549 () Bool)

(assert (=> start!48630 m!513549))

(declare-fun m!513551 () Bool)

(assert (=> b!533713 m!513551))

(declare-fun m!513553 () Bool)

(assert (=> b!533718 m!513553))

(assert (=> b!533715 m!513541))

(assert (=> b!533715 m!513541))

(declare-fun m!513555 () Bool)

(assert (=> b!533715 m!513555))

(assert (=> b!533715 m!513555))

(assert (=> b!533715 m!513541))

(declare-fun m!513557 () Bool)

(assert (=> b!533715 m!513557))

(assert (=> b!533711 m!513541))

(assert (=> b!533711 m!513541))

(declare-fun m!513559 () Bool)

(assert (=> b!533711 m!513559))

(assert (=> b!533719 m!513541))

(assert (=> b!533719 m!513541))

(declare-fun m!513561 () Bool)

(assert (=> b!533719 m!513561))

(check-sat (not b!533718) (not start!48630) (not b!533711) (not b!533713) (not b!533719) (not b!533716) (not b!533715) (not b!533720) (not b!533714))
(check-sat)
