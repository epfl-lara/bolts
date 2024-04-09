; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49118 () Bool)

(assert start!49118)

(declare-fun b!540672 () Bool)

(declare-fun res!335715 () Bool)

(declare-fun e!313185 () Bool)

(assert (=> b!540672 (=> (not res!335715) (not e!313185))))

(declare-datatypes ((array!34184 0))(
  ( (array!34185 (arr!16424 (Array (_ BitVec 32) (_ BitVec 64))) (size!16788 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34184)

(declare-datatypes ((List!10596 0))(
  ( (Nil!10593) (Cons!10592 (h!11541 (_ BitVec 64)) (t!16832 List!10596)) )
))
(declare-fun arrayNoDuplicates!0 (array!34184 (_ BitVec 32) List!10596) Bool)

(assert (=> b!540672 (= res!335715 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10593))))

(declare-fun b!540673 () Bool)

(declare-fun res!335716 () Bool)

(declare-fun e!313186 () Bool)

(assert (=> b!540673 (=> (not res!335716) (not e!313186))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540673 (= res!335716 (and (= (size!16788 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16788 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16788 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540674 () Bool)

(declare-fun res!335714 () Bool)

(assert (=> b!540674 (=> (not res!335714) (not e!313186))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540674 (= res!335714 (validKeyInArray!0 k!1998))))

(declare-fun b!540675 () Bool)

(declare-fun res!335717 () Bool)

(assert (=> b!540675 (=> (not res!335717) (not e!313185))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4889 0))(
  ( (MissingZero!4889 (index!21780 (_ BitVec 32))) (Found!4889 (index!21781 (_ BitVec 32))) (Intermediate!4889 (undefined!5701 Bool) (index!21782 (_ BitVec 32)) (x!50719 (_ BitVec 32))) (Undefined!4889) (MissingVacant!4889 (index!21783 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34184 (_ BitVec 32)) SeekEntryResult!4889)

(assert (=> b!540675 (= res!335717 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16424 a!3154) j!147) a!3154 mask!3216) (Intermediate!4889 false resIndex!32 resX!32)))))

(declare-fun b!540676 () Bool)

(assert (=> b!540676 (= e!313185 false)))

(declare-fun lt!247468 () SeekEntryResult!4889)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540676 (= lt!247468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16424 a!3154) j!147) mask!3216) (select (arr!16424 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540677 () Bool)

(declare-fun res!335711 () Bool)

(assert (=> b!540677 (=> (not res!335711) (not e!313185))))

(assert (=> b!540677 (= res!335711 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16788 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16788 a!3154)) (= (select (arr!16424 a!3154) resIndex!32) (select (arr!16424 a!3154) j!147))))))

(declare-fun b!540678 () Bool)

(assert (=> b!540678 (= e!313186 e!313185)))

(declare-fun res!335712 () Bool)

(assert (=> b!540678 (=> (not res!335712) (not e!313185))))

(declare-fun lt!247469 () SeekEntryResult!4889)

(assert (=> b!540678 (= res!335712 (or (= lt!247469 (MissingZero!4889 i!1153)) (= lt!247469 (MissingVacant!4889 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34184 (_ BitVec 32)) SeekEntryResult!4889)

(assert (=> b!540678 (= lt!247469 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!335713 () Bool)

(assert (=> start!49118 (=> (not res!335713) (not e!313186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49118 (= res!335713 (validMask!0 mask!3216))))

(assert (=> start!49118 e!313186))

(assert (=> start!49118 true))

(declare-fun array_inv!12198 (array!34184) Bool)

(assert (=> start!49118 (array_inv!12198 a!3154)))

(declare-fun b!540671 () Bool)

(declare-fun res!335708 () Bool)

(assert (=> b!540671 (=> (not res!335708) (not e!313186))))

(declare-fun arrayContainsKey!0 (array!34184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540671 (= res!335708 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540679 () Bool)

(declare-fun res!335710 () Bool)

(assert (=> b!540679 (=> (not res!335710) (not e!313185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34184 (_ BitVec 32)) Bool)

(assert (=> b!540679 (= res!335710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540680 () Bool)

(declare-fun res!335709 () Bool)

(assert (=> b!540680 (=> (not res!335709) (not e!313186))))

(assert (=> b!540680 (= res!335709 (validKeyInArray!0 (select (arr!16424 a!3154) j!147)))))

(assert (= (and start!49118 res!335713) b!540673))

(assert (= (and b!540673 res!335716) b!540680))

(assert (= (and b!540680 res!335709) b!540674))

(assert (= (and b!540674 res!335714) b!540671))

(assert (= (and b!540671 res!335708) b!540678))

(assert (= (and b!540678 res!335712) b!540679))

(assert (= (and b!540679 res!335710) b!540672))

(assert (= (and b!540672 res!335715) b!540677))

(assert (= (and b!540677 res!335711) b!540675))

(assert (= (and b!540675 res!335717) b!540676))

(declare-fun m!519359 () Bool)

(assert (=> start!49118 m!519359))

(declare-fun m!519361 () Bool)

(assert (=> start!49118 m!519361))

(declare-fun m!519363 () Bool)

(assert (=> b!540676 m!519363))

(assert (=> b!540676 m!519363))

(declare-fun m!519365 () Bool)

(assert (=> b!540676 m!519365))

(assert (=> b!540676 m!519365))

(assert (=> b!540676 m!519363))

(declare-fun m!519367 () Bool)

(assert (=> b!540676 m!519367))

(assert (=> b!540675 m!519363))

(assert (=> b!540675 m!519363))

(declare-fun m!519369 () Bool)

(assert (=> b!540675 m!519369))

(declare-fun m!519371 () Bool)

(assert (=> b!540674 m!519371))

(declare-fun m!519373 () Bool)

(assert (=> b!540679 m!519373))

(declare-fun m!519375 () Bool)

(assert (=> b!540677 m!519375))

(assert (=> b!540677 m!519363))

(assert (=> b!540680 m!519363))

(assert (=> b!540680 m!519363))

(declare-fun m!519377 () Bool)

(assert (=> b!540680 m!519377))

(declare-fun m!519379 () Bool)

(assert (=> b!540671 m!519379))

(declare-fun m!519381 () Bool)

(assert (=> b!540672 m!519381))

(declare-fun m!519383 () Bool)

(assert (=> b!540678 m!519383))

(push 1)

(assert (not b!540671))

(assert (not b!540675))

(assert (not b!540674))

(assert (not b!540678))

(assert (not b!540676))

(assert (not b!540679))

(assert (not b!540680))

(assert (not b!540672))

(assert (not start!49118))

(check-sat)

(pop 1)

