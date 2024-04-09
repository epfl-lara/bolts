; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48628 () Bool)

(assert start!48628)

(declare-fun b!533681 () Bool)

(declare-fun e!310436 () Bool)

(declare-fun e!310437 () Bool)

(assert (=> b!533681 (= e!310436 e!310437)))

(declare-fun res!329042 () Bool)

(assert (=> b!533681 (=> (not res!329042) (not e!310437))))

(declare-datatypes ((SeekEntryResult!4698 0))(
  ( (MissingZero!4698 (index!21016 (_ BitVec 32))) (Found!4698 (index!21017 (_ BitVec 32))) (Intermediate!4698 (undefined!5510 Bool) (index!21018 (_ BitVec 32)) (x!50012 (_ BitVec 32))) (Undefined!4698) (MissingVacant!4698 (index!21019 (_ BitVec 32))) )
))
(declare-fun lt!245482 () SeekEntryResult!4698)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533681 (= res!329042 (or (= lt!245482 (MissingZero!4698 i!1153)) (= lt!245482 (MissingVacant!4698 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33796 0))(
  ( (array!33797 (arr!16233 (Array (_ BitVec 32) (_ BitVec 64))) (size!16597 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33796)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33796 (_ BitVec 32)) SeekEntryResult!4698)

(assert (=> b!533681 (= lt!245482 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533682 () Bool)

(declare-fun res!329040 () Bool)

(assert (=> b!533682 (=> (not res!329040) (not e!310436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533682 (= res!329040 (validKeyInArray!0 k!1998))))

(declare-fun b!533683 () Bool)

(assert (=> b!533683 (= e!310437 false)))

(declare-fun lt!245483 () SeekEntryResult!4698)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33796 (_ BitVec 32)) SeekEntryResult!4698)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533683 (= lt!245483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16233 a!3154) j!147) mask!3216) (select (arr!16233 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533684 () Bool)

(declare-fun res!329045 () Bool)

(assert (=> b!533684 (=> (not res!329045) (not e!310437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33796 (_ BitVec 32)) Bool)

(assert (=> b!533684 (= res!329045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533685 () Bool)

(declare-fun res!329036 () Bool)

(assert (=> b!533685 (=> (not res!329036) (not e!310436))))

(assert (=> b!533685 (= res!329036 (validKeyInArray!0 (select (arr!16233 a!3154) j!147)))))

(declare-fun b!533686 () Bool)

(declare-fun res!329041 () Bool)

(assert (=> b!533686 (=> (not res!329041) (not e!310437))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533686 (= res!329041 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16233 a!3154) j!147) a!3154 mask!3216) (Intermediate!4698 false resIndex!32 resX!32)))))

(declare-fun b!533687 () Bool)

(declare-fun res!329039 () Bool)

(assert (=> b!533687 (=> (not res!329039) (not e!310437))))

(declare-datatypes ((List!10405 0))(
  ( (Nil!10402) (Cons!10401 (h!11344 (_ BitVec 64)) (t!16641 List!10405)) )
))
(declare-fun arrayNoDuplicates!0 (array!33796 (_ BitVec 32) List!10405) Bool)

(assert (=> b!533687 (= res!329039 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10402))))

(declare-fun b!533688 () Bool)

(declare-fun res!329043 () Bool)

(assert (=> b!533688 (=> (not res!329043) (not e!310436))))

(assert (=> b!533688 (= res!329043 (and (= (size!16597 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16597 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16597 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533689 () Bool)

(declare-fun res!329038 () Bool)

(assert (=> b!533689 (=> (not res!329038) (not e!310437))))

(assert (=> b!533689 (= res!329038 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16597 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16597 a!3154)) (= (select (arr!16233 a!3154) resIndex!32) (select (arr!16233 a!3154) j!147))))))

(declare-fun b!533690 () Bool)

(declare-fun res!329037 () Bool)

(assert (=> b!533690 (=> (not res!329037) (not e!310436))))

(declare-fun arrayContainsKey!0 (array!33796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533690 (= res!329037 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!329044 () Bool)

(assert (=> start!48628 (=> (not res!329044) (not e!310436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48628 (= res!329044 (validMask!0 mask!3216))))

(assert (=> start!48628 e!310436))

(assert (=> start!48628 true))

(declare-fun array_inv!12007 (array!33796) Bool)

(assert (=> start!48628 (array_inv!12007 a!3154)))

(assert (= (and start!48628 res!329044) b!533688))

(assert (= (and b!533688 res!329043) b!533685))

(assert (= (and b!533685 res!329036) b!533682))

(assert (= (and b!533682 res!329040) b!533690))

(assert (= (and b!533690 res!329037) b!533681))

(assert (= (and b!533681 res!329042) b!533684))

(assert (= (and b!533684 res!329045) b!533687))

(assert (= (and b!533687 res!329039) b!533689))

(assert (= (and b!533689 res!329038) b!533686))

(assert (= (and b!533686 res!329041) b!533683))

(declare-fun m!513511 () Bool)

(assert (=> b!533683 m!513511))

(assert (=> b!533683 m!513511))

(declare-fun m!513513 () Bool)

(assert (=> b!533683 m!513513))

(assert (=> b!533683 m!513513))

(assert (=> b!533683 m!513511))

(declare-fun m!513515 () Bool)

(assert (=> b!533683 m!513515))

(declare-fun m!513517 () Bool)

(assert (=> start!48628 m!513517))

(declare-fun m!513519 () Bool)

(assert (=> start!48628 m!513519))

(declare-fun m!513521 () Bool)

(assert (=> b!533681 m!513521))

(declare-fun m!513523 () Bool)

(assert (=> b!533689 m!513523))

(assert (=> b!533689 m!513511))

(assert (=> b!533686 m!513511))

(assert (=> b!533686 m!513511))

(declare-fun m!513525 () Bool)

(assert (=> b!533686 m!513525))

(assert (=> b!533685 m!513511))

(assert (=> b!533685 m!513511))

(declare-fun m!513527 () Bool)

(assert (=> b!533685 m!513527))

(declare-fun m!513529 () Bool)

(assert (=> b!533682 m!513529))

(declare-fun m!513531 () Bool)

(assert (=> b!533684 m!513531))

(declare-fun m!513533 () Bool)

(assert (=> b!533687 m!513533))

(declare-fun m!513535 () Bool)

(assert (=> b!533690 m!513535))

(push 1)

