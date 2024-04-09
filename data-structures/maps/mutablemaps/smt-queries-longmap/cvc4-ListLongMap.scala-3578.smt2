; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49220 () Bool)

(assert start!49220)

(declare-fun b!541661 () Bool)

(declare-fun res!336540 () Bool)

(declare-fun e!313579 () Bool)

(assert (=> b!541661 (=> (not res!336540) (not e!313579))))

(declare-datatypes ((array!34235 0))(
  ( (array!34236 (arr!16448 (Array (_ BitVec 32) (_ BitVec 64))) (size!16812 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34235)

(declare-datatypes ((List!10620 0))(
  ( (Nil!10617) (Cons!10616 (h!11568 (_ BitVec 64)) (t!16856 List!10620)) )
))
(declare-fun arrayNoDuplicates!0 (array!34235 (_ BitVec 32) List!10620) Bool)

(assert (=> b!541661 (= res!336540 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10617))))

(declare-fun b!541662 () Bool)

(declare-fun res!336545 () Bool)

(declare-fun e!313577 () Bool)

(assert (=> b!541662 (=> (not res!336545) (not e!313577))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541662 (= res!336545 (validKeyInArray!0 k!1998))))

(declare-fun res!336542 () Bool)

(assert (=> start!49220 (=> (not res!336542) (not e!313577))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49220 (= res!336542 (validMask!0 mask!3216))))

(assert (=> start!49220 e!313577))

(assert (=> start!49220 true))

(declare-fun array_inv!12222 (array!34235) Bool)

(assert (=> start!49220 (array_inv!12222 a!3154)))

(declare-fun b!541663 () Bool)

(assert (=> b!541663 (= e!313579 false)))

(declare-datatypes ((SeekEntryResult!4913 0))(
  ( (MissingZero!4913 (index!21876 (_ BitVec 32))) (Found!4913 (index!21877 (_ BitVec 32))) (Intermediate!4913 (undefined!5725 Bool) (index!21878 (_ BitVec 32)) (x!50813 (_ BitVec 32))) (Undefined!4913) (MissingVacant!4913 (index!21879 (_ BitVec 32))) )
))
(declare-fun lt!247709 () SeekEntryResult!4913)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34235 (_ BitVec 32)) SeekEntryResult!4913)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541663 (= lt!247709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16448 a!3154) j!147) mask!3216) (select (arr!16448 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541664 () Bool)

(declare-fun res!336548 () Bool)

(assert (=> b!541664 (=> (not res!336548) (not e!313579))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!541664 (= res!336548 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16448 a!3154) j!147) a!3154 mask!3216) (Intermediate!4913 false resIndex!32 resX!32)))))

(declare-fun b!541665 () Bool)

(declare-fun res!336544 () Bool)

(assert (=> b!541665 (=> (not res!336544) (not e!313577))))

(declare-fun arrayContainsKey!0 (array!34235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541665 (= res!336544 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541666 () Bool)

(declare-fun res!336543 () Bool)

(assert (=> b!541666 (=> (not res!336543) (not e!313579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34235 (_ BitVec 32)) Bool)

(assert (=> b!541666 (= res!336543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541667 () Bool)

(assert (=> b!541667 (= e!313577 e!313579)))

(declare-fun res!336547 () Bool)

(assert (=> b!541667 (=> (not res!336547) (not e!313579))))

(declare-fun lt!247708 () SeekEntryResult!4913)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541667 (= res!336547 (or (= lt!247708 (MissingZero!4913 i!1153)) (= lt!247708 (MissingVacant!4913 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34235 (_ BitVec 32)) SeekEntryResult!4913)

(assert (=> b!541667 (= lt!247708 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541668 () Bool)

(declare-fun res!336541 () Bool)

(assert (=> b!541668 (=> (not res!336541) (not e!313577))))

(assert (=> b!541668 (= res!336541 (validKeyInArray!0 (select (arr!16448 a!3154) j!147)))))

(declare-fun b!541669 () Bool)

(declare-fun res!336539 () Bool)

(assert (=> b!541669 (=> (not res!336539) (not e!313577))))

(assert (=> b!541669 (= res!336539 (and (= (size!16812 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16812 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16812 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541670 () Bool)

(declare-fun res!336546 () Bool)

(assert (=> b!541670 (=> (not res!336546) (not e!313579))))

(assert (=> b!541670 (= res!336546 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16812 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16812 a!3154)) (= (select (arr!16448 a!3154) resIndex!32) (select (arr!16448 a!3154) j!147))))))

(assert (= (and start!49220 res!336542) b!541669))

(assert (= (and b!541669 res!336539) b!541668))

(assert (= (and b!541668 res!336541) b!541662))

(assert (= (and b!541662 res!336545) b!541665))

(assert (= (and b!541665 res!336544) b!541667))

(assert (= (and b!541667 res!336547) b!541666))

(assert (= (and b!541666 res!336543) b!541661))

(assert (= (and b!541661 res!336540) b!541670))

(assert (= (and b!541670 res!336546) b!541664))

(assert (= (and b!541664 res!336548) b!541663))

(declare-fun m!520127 () Bool)

(assert (=> b!541670 m!520127))

(declare-fun m!520129 () Bool)

(assert (=> b!541670 m!520129))

(declare-fun m!520131 () Bool)

(assert (=> start!49220 m!520131))

(declare-fun m!520133 () Bool)

(assert (=> start!49220 m!520133))

(declare-fun m!520135 () Bool)

(assert (=> b!541661 m!520135))

(declare-fun m!520137 () Bool)

(assert (=> b!541667 m!520137))

(declare-fun m!520139 () Bool)

(assert (=> b!541665 m!520139))

(assert (=> b!541664 m!520129))

(assert (=> b!541664 m!520129))

(declare-fun m!520141 () Bool)

(assert (=> b!541664 m!520141))

(assert (=> b!541663 m!520129))

(assert (=> b!541663 m!520129))

(declare-fun m!520143 () Bool)

(assert (=> b!541663 m!520143))

(assert (=> b!541663 m!520143))

(assert (=> b!541663 m!520129))

(declare-fun m!520145 () Bool)

(assert (=> b!541663 m!520145))

(declare-fun m!520147 () Bool)

(assert (=> b!541662 m!520147))

(assert (=> b!541668 m!520129))

(assert (=> b!541668 m!520129))

(declare-fun m!520149 () Bool)

(assert (=> b!541668 m!520149))

(declare-fun m!520151 () Bool)

(assert (=> b!541666 m!520151))

(push 1)

(assert (not b!541662))

(assert (not b!541663))

(assert (not b!541665))

(assert (not b!541661))

(assert (not b!541668))

(assert (not b!541667))

(assert (not b!541664))

