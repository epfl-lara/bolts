; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48910 () Bool)

(assert start!48910)

(declare-fun b!538715 () Bool)

(declare-fun res!334071 () Bool)

(declare-fun e!312373 () Bool)

(assert (=> b!538715 (=> (not res!334071) (not e!312373))))

(declare-datatypes ((array!34078 0))(
  ( (array!34079 (arr!16374 (Array (_ BitVec 32) (_ BitVec 64))) (size!16738 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34078)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538715 (= res!334071 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538716 () Bool)

(declare-fun res!334073 () Bool)

(declare-fun e!312372 () Bool)

(assert (=> b!538716 (=> (not res!334073) (not e!312372))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34078 (_ BitVec 32)) Bool)

(assert (=> b!538716 (= res!334073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538717 () Bool)

(assert (=> b!538717 (= e!312373 e!312372)))

(declare-fun res!334076 () Bool)

(assert (=> b!538717 (=> (not res!334076) (not e!312372))))

(declare-datatypes ((SeekEntryResult!4839 0))(
  ( (MissingZero!4839 (index!21580 (_ BitVec 32))) (Found!4839 (index!21581 (_ BitVec 32))) (Intermediate!4839 (undefined!5651 Bool) (index!21582 (_ BitVec 32)) (x!50529 (_ BitVec 32))) (Undefined!4839) (MissingVacant!4839 (index!21583 (_ BitVec 32))) )
))
(declare-fun lt!246977 () SeekEntryResult!4839)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538717 (= res!334076 (or (= lt!246977 (MissingZero!4839 i!1153)) (= lt!246977 (MissingVacant!4839 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34078 (_ BitVec 32)) SeekEntryResult!4839)

(assert (=> b!538717 (= lt!246977 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!334075 () Bool)

(assert (=> start!48910 (=> (not res!334075) (not e!312373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48910 (= res!334075 (validMask!0 mask!3216))))

(assert (=> start!48910 e!312373))

(assert (=> start!48910 true))

(declare-fun array_inv!12148 (array!34078) Bool)

(assert (=> start!48910 (array_inv!12148 a!3154)))

(declare-fun b!538718 () Bool)

(declare-fun res!334072 () Bool)

(assert (=> b!538718 (=> (not res!334072) (not e!312373))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538718 (= res!334072 (validKeyInArray!0 (select (arr!16374 a!3154) j!147)))))

(declare-fun b!538719 () Bool)

(declare-fun res!334070 () Bool)

(assert (=> b!538719 (=> (not res!334070) (not e!312373))))

(assert (=> b!538719 (= res!334070 (and (= (size!16738 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16738 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16738 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538720 () Bool)

(declare-fun res!334074 () Bool)

(assert (=> b!538720 (=> (not res!334074) (not e!312373))))

(assert (=> b!538720 (= res!334074 (validKeyInArray!0 k!1998))))

(declare-fun b!538721 () Bool)

(assert (=> b!538721 (= e!312372 false)))

(declare-fun lt!246976 () Bool)

(declare-datatypes ((List!10546 0))(
  ( (Nil!10543) (Cons!10542 (h!11485 (_ BitVec 64)) (t!16782 List!10546)) )
))
(declare-fun arrayNoDuplicates!0 (array!34078 (_ BitVec 32) List!10546) Bool)

(assert (=> b!538721 (= lt!246976 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10543))))

(assert (= (and start!48910 res!334075) b!538719))

(assert (= (and b!538719 res!334070) b!538718))

(assert (= (and b!538718 res!334072) b!538720))

(assert (= (and b!538720 res!334074) b!538715))

(assert (= (and b!538715 res!334071) b!538717))

(assert (= (and b!538717 res!334076) b!538716))

(assert (= (and b!538716 res!334073) b!538721))

(declare-fun m!517873 () Bool)

(assert (=> b!538715 m!517873))

(declare-fun m!517875 () Bool)

(assert (=> b!538720 m!517875))

(declare-fun m!517877 () Bool)

(assert (=> b!538718 m!517877))

(assert (=> b!538718 m!517877))

(declare-fun m!517879 () Bool)

(assert (=> b!538718 m!517879))

(declare-fun m!517881 () Bool)

(assert (=> b!538721 m!517881))

(declare-fun m!517883 () Bool)

(assert (=> b!538717 m!517883))

(declare-fun m!517885 () Bool)

(assert (=> start!48910 m!517885))

(declare-fun m!517887 () Bool)

(assert (=> start!48910 m!517887))

(declare-fun m!517889 () Bool)

(assert (=> b!538716 m!517889))

(push 1)

