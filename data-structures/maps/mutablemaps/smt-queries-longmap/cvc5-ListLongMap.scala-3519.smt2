; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48700 () Bool)

(assert start!48700)

(declare-fun b!534770 () Bool)

(declare-fun res!330125 () Bool)

(declare-fun e!310770 () Bool)

(assert (=> b!534770 (=> (not res!330125) (not e!310770))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33868 0))(
  ( (array!33869 (arr!16269 (Array (_ BitVec 32) (_ BitVec 64))) (size!16633 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33868)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534770 (= res!330125 (and (= (size!16633 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16633 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16633 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!330133 () Bool)

(assert (=> start!48700 (=> (not res!330133) (not e!310770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48700 (= res!330133 (validMask!0 mask!3216))))

(assert (=> start!48700 e!310770))

(assert (=> start!48700 true))

(declare-fun array_inv!12043 (array!33868) Bool)

(assert (=> start!48700 (array_inv!12043 a!3154)))

(declare-fun b!534771 () Bool)

(declare-fun e!310769 () Bool)

(assert (=> b!534771 (= e!310769 false)))

(declare-datatypes ((SeekEntryResult!4734 0))(
  ( (MissingZero!4734 (index!21160 (_ BitVec 32))) (Found!4734 (index!21161 (_ BitVec 32))) (Intermediate!4734 (undefined!5546 Bool) (index!21162 (_ BitVec 32)) (x!50144 (_ BitVec 32))) (Undefined!4734) (MissingVacant!4734 (index!21163 (_ BitVec 32))) )
))
(declare-fun lt!245699 () SeekEntryResult!4734)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33868 (_ BitVec 32)) SeekEntryResult!4734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534771 (= lt!245699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16269 a!3154) j!147) mask!3216) (select (arr!16269 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534772 () Bool)

(declare-fun res!330130 () Bool)

(assert (=> b!534772 (=> (not res!330130) (not e!310770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534772 (= res!330130 (validKeyInArray!0 (select (arr!16269 a!3154) j!147)))))

(declare-fun b!534773 () Bool)

(declare-fun res!330132 () Bool)

(assert (=> b!534773 (=> (not res!330132) (not e!310769))))

(declare-datatypes ((List!10441 0))(
  ( (Nil!10438) (Cons!10437 (h!11380 (_ BitVec 64)) (t!16677 List!10441)) )
))
(declare-fun arrayNoDuplicates!0 (array!33868 (_ BitVec 32) List!10441) Bool)

(assert (=> b!534773 (= res!330132 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10438))))

(declare-fun b!534774 () Bool)

(declare-fun res!330131 () Bool)

(assert (=> b!534774 (=> (not res!330131) (not e!310770))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534774 (= res!330131 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534775 () Bool)

(declare-fun res!330129 () Bool)

(assert (=> b!534775 (=> (not res!330129) (not e!310770))))

(assert (=> b!534775 (= res!330129 (validKeyInArray!0 k!1998))))

(declare-fun b!534776 () Bool)

(assert (=> b!534776 (= e!310770 e!310769)))

(declare-fun res!330127 () Bool)

(assert (=> b!534776 (=> (not res!330127) (not e!310769))))

(declare-fun lt!245698 () SeekEntryResult!4734)

(assert (=> b!534776 (= res!330127 (or (= lt!245698 (MissingZero!4734 i!1153)) (= lt!245698 (MissingVacant!4734 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33868 (_ BitVec 32)) SeekEntryResult!4734)

(assert (=> b!534776 (= lt!245698 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534777 () Bool)

(declare-fun res!330126 () Bool)

(assert (=> b!534777 (=> (not res!330126) (not e!310769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33868 (_ BitVec 32)) Bool)

(assert (=> b!534777 (= res!330126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534778 () Bool)

(declare-fun res!330128 () Bool)

(assert (=> b!534778 (=> (not res!330128) (not e!310769))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534778 (= res!330128 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16269 a!3154) j!147) a!3154 mask!3216) (Intermediate!4734 false resIndex!32 resX!32)))))

(declare-fun b!534779 () Bool)

(declare-fun res!330134 () Bool)

(assert (=> b!534779 (=> (not res!330134) (not e!310769))))

(assert (=> b!534779 (= res!330134 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16633 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16633 a!3154)) (= (select (arr!16269 a!3154) resIndex!32) (select (arr!16269 a!3154) j!147))))))

(assert (= (and start!48700 res!330133) b!534770))

(assert (= (and b!534770 res!330125) b!534772))

(assert (= (and b!534772 res!330130) b!534775))

(assert (= (and b!534775 res!330129) b!534774))

(assert (= (and b!534774 res!330131) b!534776))

(assert (= (and b!534776 res!330127) b!534777))

(assert (= (and b!534777 res!330126) b!534773))

(assert (= (and b!534773 res!330132) b!534779))

(assert (= (and b!534779 res!330134) b!534778))

(assert (= (and b!534778 res!330128) b!534771))

(declare-fun m!514453 () Bool)

(assert (=> b!534779 m!514453))

(declare-fun m!514455 () Bool)

(assert (=> b!534779 m!514455))

(declare-fun m!514457 () Bool)

(assert (=> b!534776 m!514457))

(assert (=> b!534771 m!514455))

(assert (=> b!534771 m!514455))

(declare-fun m!514459 () Bool)

(assert (=> b!534771 m!514459))

(assert (=> b!534771 m!514459))

(assert (=> b!534771 m!514455))

(declare-fun m!514461 () Bool)

(assert (=> b!534771 m!514461))

(declare-fun m!514463 () Bool)

(assert (=> start!48700 m!514463))

(declare-fun m!514465 () Bool)

(assert (=> start!48700 m!514465))

(declare-fun m!514467 () Bool)

(assert (=> b!534774 m!514467))

(assert (=> b!534778 m!514455))

(assert (=> b!534778 m!514455))

(declare-fun m!514469 () Bool)

(assert (=> b!534778 m!514469))

(assert (=> b!534772 m!514455))

(assert (=> b!534772 m!514455))

(declare-fun m!514471 () Bool)

(assert (=> b!534772 m!514471))

(declare-fun m!514473 () Bool)

(assert (=> b!534775 m!514473))

(declare-fun m!514475 () Bool)

(assert (=> b!534773 m!514475))

(declare-fun m!514477 () Bool)

(assert (=> b!534777 m!514477))

(push 1)

