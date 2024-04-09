; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49018 () Bool)

(assert start!49018)

(declare-fun b!539711 () Bool)

(declare-fun res!334911 () Bool)

(declare-fun e!312800 () Bool)

(assert (=> b!539711 (=> (not res!334911) (not e!312800))))

(declare-datatypes ((array!34135 0))(
  ( (array!34136 (arr!16401 (Array (_ BitVec 32) (_ BitVec 64))) (size!16765 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34135)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539711 (= res!334911 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!334916 () Bool)

(assert (=> start!49018 (=> (not res!334916) (not e!312800))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49018 (= res!334916 (validMask!0 mask!3216))))

(assert (=> start!49018 e!312800))

(assert (=> start!49018 true))

(declare-fun array_inv!12175 (array!34135) Bool)

(assert (=> start!49018 (array_inv!12175 a!3154)))

(declare-fun b!539712 () Bool)

(declare-fun e!312801 () Bool)

(assert (=> b!539712 (= e!312801 false)))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4866 0))(
  ( (MissingZero!4866 (index!21688 (_ BitVec 32))) (Found!4866 (index!21689 (_ BitVec 32))) (Intermediate!4866 (undefined!5678 Bool) (index!21690 (_ BitVec 32)) (x!50634 (_ BitVec 32))) (Undefined!4866) (MissingVacant!4866 (index!21691 (_ BitVec 32))) )
))
(declare-fun lt!247234 () SeekEntryResult!4866)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34135 (_ BitVec 32)) SeekEntryResult!4866)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539712 (= lt!247234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16401 a!3154) j!147) mask!3216) (select (arr!16401 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539713 () Bool)

(declare-fun res!334907 () Bool)

(assert (=> b!539713 (=> (not res!334907) (not e!312801))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!539713 (= res!334907 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16765 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16765 a!3154)) (= (select (arr!16401 a!3154) resIndex!32) (select (arr!16401 a!3154) j!147))))))

(declare-fun b!539714 () Bool)

(assert (=> b!539714 (= e!312800 e!312801)))

(declare-fun res!334915 () Bool)

(assert (=> b!539714 (=> (not res!334915) (not e!312801))))

(declare-fun lt!247235 () SeekEntryResult!4866)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539714 (= res!334915 (or (= lt!247235 (MissingZero!4866 i!1153)) (= lt!247235 (MissingVacant!4866 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34135 (_ BitVec 32)) SeekEntryResult!4866)

(assert (=> b!539714 (= lt!247235 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539715 () Bool)

(declare-fun res!334910 () Bool)

(assert (=> b!539715 (=> (not res!334910) (not e!312801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34135 (_ BitVec 32)) Bool)

(assert (=> b!539715 (= res!334910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539716 () Bool)

(declare-fun res!334913 () Bool)

(assert (=> b!539716 (=> (not res!334913) (not e!312801))))

(declare-datatypes ((List!10573 0))(
  ( (Nil!10570) (Cons!10569 (h!11515 (_ BitVec 64)) (t!16809 List!10573)) )
))
(declare-fun arrayNoDuplicates!0 (array!34135 (_ BitVec 32) List!10573) Bool)

(assert (=> b!539716 (= res!334913 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10570))))

(declare-fun b!539717 () Bool)

(declare-fun res!334914 () Bool)

(assert (=> b!539717 (=> (not res!334914) (not e!312800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539717 (= res!334914 (validKeyInArray!0 k!1998))))

(declare-fun b!539718 () Bool)

(declare-fun res!334908 () Bool)

(assert (=> b!539718 (=> (not res!334908) (not e!312800))))

(assert (=> b!539718 (= res!334908 (validKeyInArray!0 (select (arr!16401 a!3154) j!147)))))

(declare-fun b!539719 () Bool)

(declare-fun res!334912 () Bool)

(assert (=> b!539719 (=> (not res!334912) (not e!312800))))

(assert (=> b!539719 (= res!334912 (and (= (size!16765 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16765 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16765 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539720 () Bool)

(declare-fun res!334909 () Bool)

(assert (=> b!539720 (=> (not res!334909) (not e!312801))))

(assert (=> b!539720 (= res!334909 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16401 a!3154) j!147) a!3154 mask!3216) (Intermediate!4866 false resIndex!32 resX!32)))))

(assert (= (and start!49018 res!334916) b!539719))

(assert (= (and b!539719 res!334912) b!539718))

(assert (= (and b!539718 res!334908) b!539717))

(assert (= (and b!539717 res!334914) b!539711))

(assert (= (and b!539711 res!334911) b!539714))

(assert (= (and b!539714 res!334915) b!539715))

(assert (= (and b!539715 res!334910) b!539716))

(assert (= (and b!539716 res!334913) b!539713))

(assert (= (and b!539713 res!334907) b!539720))

(assert (= (and b!539720 res!334909) b!539712))

(declare-fun m!518617 () Bool)

(assert (=> start!49018 m!518617))

(declare-fun m!518619 () Bool)

(assert (=> start!49018 m!518619))

(declare-fun m!518621 () Bool)

(assert (=> b!539711 m!518621))

(declare-fun m!518623 () Bool)

(assert (=> b!539717 m!518623))

(declare-fun m!518625 () Bool)

(assert (=> b!539713 m!518625))

(declare-fun m!518627 () Bool)

(assert (=> b!539713 m!518627))

(assert (=> b!539718 m!518627))

(assert (=> b!539718 m!518627))

(declare-fun m!518629 () Bool)

(assert (=> b!539718 m!518629))

(declare-fun m!518631 () Bool)

(assert (=> b!539715 m!518631))

(declare-fun m!518633 () Bool)

(assert (=> b!539714 m!518633))

(declare-fun m!518635 () Bool)

(assert (=> b!539716 m!518635))

(assert (=> b!539720 m!518627))

(assert (=> b!539720 m!518627))

(declare-fun m!518637 () Bool)

(assert (=> b!539720 m!518637))

(assert (=> b!539712 m!518627))

(assert (=> b!539712 m!518627))

(declare-fun m!518639 () Bool)

(assert (=> b!539712 m!518639))

(assert (=> b!539712 m!518639))

(assert (=> b!539712 m!518627))

(declare-fun m!518641 () Bool)

(assert (=> b!539712 m!518641))

(push 1)

