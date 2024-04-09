; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49022 () Bool)

(assert start!49022)

(declare-fun b!539771 () Bool)

(declare-fun res!334971 () Bool)

(declare-fun e!312818 () Bool)

(assert (=> b!539771 (=> (not res!334971) (not e!312818))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34139 0))(
  ( (array!34140 (arr!16403 (Array (_ BitVec 32) (_ BitVec 64))) (size!16767 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34139)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!539771 (= res!334971 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16767 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16767 a!3154)) (= (select (arr!16403 a!3154) resIndex!32) (select (arr!16403 a!3154) j!147))))))

(declare-fun b!539772 () Bool)

(declare-fun res!334976 () Bool)

(declare-fun e!312820 () Bool)

(assert (=> b!539772 (=> (not res!334976) (not e!312820))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539772 (= res!334976 (and (= (size!16767 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16767 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16767 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!334975 () Bool)

(assert (=> start!49022 (=> (not res!334975) (not e!312820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49022 (= res!334975 (validMask!0 mask!3216))))

(assert (=> start!49022 e!312820))

(assert (=> start!49022 true))

(declare-fun array_inv!12177 (array!34139) Bool)

(assert (=> start!49022 (array_inv!12177 a!3154)))

(declare-fun b!539773 () Bool)

(declare-fun res!334970 () Bool)

(assert (=> b!539773 (=> (not res!334970) (not e!312818))))

(declare-datatypes ((SeekEntryResult!4868 0))(
  ( (MissingZero!4868 (index!21696 (_ BitVec 32))) (Found!4868 (index!21697 (_ BitVec 32))) (Intermediate!4868 (undefined!5680 Bool) (index!21698 (_ BitVec 32)) (x!50636 (_ BitVec 32))) (Undefined!4868) (MissingVacant!4868 (index!21699 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34139 (_ BitVec 32)) SeekEntryResult!4868)

(assert (=> b!539773 (= res!334970 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16403 a!3154) j!147) a!3154 mask!3216) (Intermediate!4868 false resIndex!32 resX!32)))))

(declare-fun b!539774 () Bool)

(declare-fun res!334973 () Bool)

(assert (=> b!539774 (=> (not res!334973) (not e!312818))))

(declare-datatypes ((List!10575 0))(
  ( (Nil!10572) (Cons!10571 (h!11517 (_ BitVec 64)) (t!16811 List!10575)) )
))
(declare-fun arrayNoDuplicates!0 (array!34139 (_ BitVec 32) List!10575) Bool)

(assert (=> b!539774 (= res!334973 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10572))))

(declare-fun b!539775 () Bool)

(declare-fun res!334969 () Bool)

(assert (=> b!539775 (=> (not res!334969) (not e!312818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34139 (_ BitVec 32)) Bool)

(assert (=> b!539775 (= res!334969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539776 () Bool)

(declare-fun res!334967 () Bool)

(assert (=> b!539776 (=> (not res!334967) (not e!312820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539776 (= res!334967 (validKeyInArray!0 (select (arr!16403 a!3154) j!147)))))

(declare-fun b!539777 () Bool)

(declare-fun res!334974 () Bool)

(assert (=> b!539777 (=> (not res!334974) (not e!312820))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539777 (= res!334974 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539778 () Bool)

(declare-fun res!334972 () Bool)

(assert (=> b!539778 (=> (not res!334972) (not e!312820))))

(assert (=> b!539778 (= res!334972 (validKeyInArray!0 k!1998))))

(declare-fun b!539779 () Bool)

(assert (=> b!539779 (= e!312818 false)))

(declare-fun lt!247247 () SeekEntryResult!4868)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539779 (= lt!247247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16403 a!3154) j!147) mask!3216) (select (arr!16403 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539780 () Bool)

(assert (=> b!539780 (= e!312820 e!312818)))

(declare-fun res!334968 () Bool)

(assert (=> b!539780 (=> (not res!334968) (not e!312818))))

(declare-fun lt!247246 () SeekEntryResult!4868)

(assert (=> b!539780 (= res!334968 (or (= lt!247246 (MissingZero!4868 i!1153)) (= lt!247246 (MissingVacant!4868 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34139 (_ BitVec 32)) SeekEntryResult!4868)

(assert (=> b!539780 (= lt!247246 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!49022 res!334975) b!539772))

(assert (= (and b!539772 res!334976) b!539776))

(assert (= (and b!539776 res!334967) b!539778))

(assert (= (and b!539778 res!334972) b!539777))

(assert (= (and b!539777 res!334974) b!539780))

(assert (= (and b!539780 res!334968) b!539775))

(assert (= (and b!539775 res!334969) b!539774))

(assert (= (and b!539774 res!334973) b!539771))

(assert (= (and b!539771 res!334971) b!539773))

(assert (= (and b!539773 res!334970) b!539779))

(declare-fun m!518669 () Bool)

(assert (=> b!539773 m!518669))

(assert (=> b!539773 m!518669))

(declare-fun m!518671 () Bool)

(assert (=> b!539773 m!518671))

(declare-fun m!518673 () Bool)

(assert (=> b!539778 m!518673))

(declare-fun m!518675 () Bool)

(assert (=> b!539775 m!518675))

(assert (=> b!539779 m!518669))

(assert (=> b!539779 m!518669))

(declare-fun m!518677 () Bool)

(assert (=> b!539779 m!518677))

(assert (=> b!539779 m!518677))

(assert (=> b!539779 m!518669))

(declare-fun m!518679 () Bool)

(assert (=> b!539779 m!518679))

(assert (=> b!539776 m!518669))

(assert (=> b!539776 m!518669))

(declare-fun m!518681 () Bool)

(assert (=> b!539776 m!518681))

(declare-fun m!518683 () Bool)

(assert (=> b!539774 m!518683))

(declare-fun m!518685 () Bool)

(assert (=> start!49022 m!518685))

(declare-fun m!518687 () Bool)

(assert (=> start!49022 m!518687))

(declare-fun m!518689 () Bool)

(assert (=> b!539771 m!518689))

(assert (=> b!539771 m!518669))

(declare-fun m!518691 () Bool)

(assert (=> b!539780 m!518691))

(declare-fun m!518693 () Bool)

(assert (=> b!539777 m!518693))

(push 1)

(assert (not b!539775))

(assert (not start!49022))

(assert (not b!539778))

(assert (not b!539777))

(assert (not b!539773))

(assert (not b!539779))

(assert (not b!539774))

