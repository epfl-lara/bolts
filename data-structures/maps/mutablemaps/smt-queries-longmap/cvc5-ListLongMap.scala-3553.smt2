; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48904 () Bool)

(assert start!48904)

(declare-fun b!538604 () Bool)

(declare-fun res!333968 () Bool)

(declare-fun e!312313 () Bool)

(assert (=> b!538604 (=> (not res!333968) (not e!312313))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34072 0))(
  ( (array!34073 (arr!16371 (Array (_ BitVec 32) (_ BitVec 64))) (size!16735 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34072)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538604 (= res!333968 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16735 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16735 a!3154)) (= (select (arr!16371 a!3154) resIndex!32) (select (arr!16371 a!3154) j!147))))))

(declare-fun b!538605 () Bool)

(declare-fun e!312314 () Bool)

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538605 (= e!312314 (validKeyInArray!0 (select (store (arr!16371 a!3154) i!1153 k!1998) j!147)))))

(declare-fun b!538606 () Bool)

(declare-fun e!312315 () Bool)

(declare-fun e!312312 () Bool)

(assert (=> b!538606 (= e!312315 e!312312)))

(declare-fun res!333970 () Bool)

(assert (=> b!538606 (=> (not res!333970) (not e!312312))))

(declare-datatypes ((SeekEntryResult!4836 0))(
  ( (MissingZero!4836 (index!21568 (_ BitVec 32))) (Found!4836 (index!21569 (_ BitVec 32))) (Intermediate!4836 (undefined!5648 Bool) (index!21570 (_ BitVec 32)) (x!50518 (_ BitVec 32))) (Undefined!4836) (MissingVacant!4836 (index!21571 (_ BitVec 32))) )
))
(declare-fun lt!246924 () SeekEntryResult!4836)

(declare-fun lt!246926 () SeekEntryResult!4836)

(assert (=> b!538606 (= res!333970 (and (= lt!246924 lt!246926) (not (= (select (arr!16371 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16371 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16371 a!3154) index!1177) (select (arr!16371 a!3154) j!147)))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34072 (_ BitVec 32)) SeekEntryResult!4836)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538606 (= lt!246924 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16371 a!3154) j!147) mask!3216) (select (arr!16371 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538607 () Bool)

(declare-fun e!312316 () Bool)

(assert (=> b!538607 (= e!312316 e!312313)))

(declare-fun res!333969 () Bool)

(assert (=> b!538607 (=> (not res!333969) (not e!312313))))

(declare-fun lt!246925 () SeekEntryResult!4836)

(assert (=> b!538607 (= res!333969 (or (= lt!246925 (MissingZero!4836 i!1153)) (= lt!246925 (MissingVacant!4836 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34072 (_ BitVec 32)) SeekEntryResult!4836)

(assert (=> b!538607 (= lt!246925 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538608 () Bool)

(declare-fun res!333958 () Bool)

(assert (=> b!538608 (=> (not res!333958) (not e!312313))))

(declare-datatypes ((List!10543 0))(
  ( (Nil!10540) (Cons!10539 (h!11482 (_ BitVec 64)) (t!16779 List!10543)) )
))
(declare-fun arrayNoDuplicates!0 (array!34072 (_ BitVec 32) List!10543) Bool)

(assert (=> b!538608 (= res!333958 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10540))))

(declare-fun b!538609 () Bool)

(declare-fun res!333963 () Bool)

(assert (=> b!538609 (=> (not res!333963) (not e!312313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34072 (_ BitVec 32)) Bool)

(assert (=> b!538609 (= res!333963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538610 () Bool)

(declare-fun e!312310 () Bool)

(assert (=> b!538610 (= e!312310 (not e!312314))))

(declare-fun res!333966 () Bool)

(assert (=> b!538610 (=> res!333966 e!312314)))

(assert (=> b!538610 (= res!333966 (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun lt!246923 () SeekEntryResult!4836)

(declare-fun lt!246929 () (_ BitVec 32))

(assert (=> b!538610 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246929 (select (store (arr!16371 a!3154) i!1153 k!1998) j!147) (array!34073 (store (arr!16371 a!3154) i!1153 k!1998) (size!16735 a!3154)) mask!3216) lt!246923)))

(declare-datatypes ((Unit!16850 0))(
  ( (Unit!16851) )
))
(declare-fun lt!246927 () Unit!16850)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34072 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16850)

(assert (=> b!538610 (= lt!246927 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246929 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538611 () Bool)

(declare-fun e!312311 () Bool)

(assert (=> b!538611 (= e!312312 e!312311)))

(declare-fun res!333961 () Bool)

(assert (=> b!538611 (=> (not res!333961) (not e!312311))))

(assert (=> b!538611 (= res!333961 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246929 #b00000000000000000000000000000000) (bvslt lt!246929 (size!16735 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538611 (= lt!246929 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538612 () Bool)

(declare-fun res!333962 () Bool)

(assert (=> b!538612 (=> (not res!333962) (not e!312316))))

(assert (=> b!538612 (= res!333962 (validKeyInArray!0 k!1998))))

(declare-fun res!333959 () Bool)

(assert (=> start!48904 (=> (not res!333959) (not e!312316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48904 (= res!333959 (validMask!0 mask!3216))))

(assert (=> start!48904 e!312316))

(assert (=> start!48904 true))

(declare-fun array_inv!12145 (array!34072) Bool)

(assert (=> start!48904 (array_inv!12145 a!3154)))

(declare-fun b!538603 () Bool)

(declare-fun res!333967 () Bool)

(assert (=> b!538603 (=> (not res!333967) (not e!312316))))

(assert (=> b!538603 (= res!333967 (validKeyInArray!0 (select (arr!16371 a!3154) j!147)))))

(declare-fun b!538613 () Bool)

(assert (=> b!538613 (= e!312311 e!312310)))

(declare-fun res!333960 () Bool)

(assert (=> b!538613 (=> (not res!333960) (not e!312310))))

(declare-fun lt!246928 () SeekEntryResult!4836)

(assert (=> b!538613 (= res!333960 (and (= lt!246928 lt!246923) (= lt!246924 lt!246928)))))

(assert (=> b!538613 (= lt!246928 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246929 (select (arr!16371 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538614 () Bool)

(declare-fun res!333971 () Bool)

(assert (=> b!538614 (=> (not res!333971) (not e!312316))))

(declare-fun arrayContainsKey!0 (array!34072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538614 (= res!333971 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538615 () Bool)

(assert (=> b!538615 (= e!312313 e!312315)))

(declare-fun res!333964 () Bool)

(assert (=> b!538615 (=> (not res!333964) (not e!312315))))

(assert (=> b!538615 (= res!333964 (= lt!246926 lt!246923))))

(assert (=> b!538615 (= lt!246923 (Intermediate!4836 false resIndex!32 resX!32))))

(assert (=> b!538615 (= lt!246926 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16371 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538616 () Bool)

(declare-fun res!333965 () Bool)

(assert (=> b!538616 (=> (not res!333965) (not e!312316))))

(assert (=> b!538616 (= res!333965 (and (= (size!16735 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16735 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16735 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48904 res!333959) b!538616))

(assert (= (and b!538616 res!333965) b!538603))

(assert (= (and b!538603 res!333967) b!538612))

(assert (= (and b!538612 res!333962) b!538614))

(assert (= (and b!538614 res!333971) b!538607))

(assert (= (and b!538607 res!333969) b!538609))

(assert (= (and b!538609 res!333963) b!538608))

(assert (= (and b!538608 res!333958) b!538604))

(assert (= (and b!538604 res!333968) b!538615))

(assert (= (and b!538615 res!333964) b!538606))

(assert (= (and b!538606 res!333970) b!538611))

(assert (= (and b!538611 res!333961) b!538613))

(assert (= (and b!538613 res!333960) b!538610))

(assert (= (and b!538610 (not res!333966)) b!538605))

(declare-fun m!517747 () Bool)

(assert (=> b!538608 m!517747))

(declare-fun m!517749 () Bool)

(assert (=> b!538612 m!517749))

(declare-fun m!517751 () Bool)

(assert (=> b!538603 m!517751))

(assert (=> b!538603 m!517751))

(declare-fun m!517753 () Bool)

(assert (=> b!538603 m!517753))

(declare-fun m!517755 () Bool)

(assert (=> b!538611 m!517755))

(declare-fun m!517757 () Bool)

(assert (=> b!538605 m!517757))

(declare-fun m!517759 () Bool)

(assert (=> b!538605 m!517759))

(assert (=> b!538605 m!517759))

(declare-fun m!517761 () Bool)

(assert (=> b!538605 m!517761))

(declare-fun m!517763 () Bool)

(assert (=> b!538606 m!517763))

(assert (=> b!538606 m!517751))

(assert (=> b!538606 m!517751))

(declare-fun m!517765 () Bool)

(assert (=> b!538606 m!517765))

(assert (=> b!538606 m!517765))

(assert (=> b!538606 m!517751))

(declare-fun m!517767 () Bool)

(assert (=> b!538606 m!517767))

(declare-fun m!517769 () Bool)

(assert (=> b!538609 m!517769))

(declare-fun m!517771 () Bool)

(assert (=> b!538607 m!517771))

(assert (=> b!538610 m!517757))

(assert (=> b!538610 m!517759))

(assert (=> b!538610 m!517759))

(declare-fun m!517773 () Bool)

(assert (=> b!538610 m!517773))

(declare-fun m!517775 () Bool)

(assert (=> b!538610 m!517775))

(assert (=> b!538615 m!517751))

(assert (=> b!538615 m!517751))

(declare-fun m!517777 () Bool)

(assert (=> b!538615 m!517777))

(declare-fun m!517779 () Bool)

(assert (=> start!48904 m!517779))

(declare-fun m!517781 () Bool)

(assert (=> start!48904 m!517781))

(declare-fun m!517783 () Bool)

(assert (=> b!538604 m!517783))

(assert (=> b!538604 m!517751))

(declare-fun m!517785 () Bool)

(assert (=> b!538614 m!517785))

(assert (=> b!538613 m!517751))

(assert (=> b!538613 m!517751))

(declare-fun m!517787 () Bool)

(assert (=> b!538613 m!517787))

(push 1)

