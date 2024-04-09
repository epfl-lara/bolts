; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49030 () Bool)

(assert start!49030)

(declare-fun b!539891 () Bool)

(declare-fun res!335096 () Bool)

(declare-fun e!312855 () Bool)

(assert (=> b!539891 (=> (not res!335096) (not e!312855))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34147 0))(
  ( (array!34148 (arr!16407 (Array (_ BitVec 32) (_ BitVec 64))) (size!16771 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34147)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!539891 (= res!335096 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16771 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16771 a!3154)) (= (select (arr!16407 a!3154) resIndex!32) (select (arr!16407 a!3154) j!147))))))

(declare-fun b!539892 () Bool)

(declare-fun e!312854 () Bool)

(assert (=> b!539892 (= e!312854 e!312855)))

(declare-fun res!335091 () Bool)

(assert (=> b!539892 (=> (not res!335091) (not e!312855))))

(declare-datatypes ((SeekEntryResult!4872 0))(
  ( (MissingZero!4872 (index!21712 (_ BitVec 32))) (Found!4872 (index!21713 (_ BitVec 32))) (Intermediate!4872 (undefined!5684 Bool) (index!21714 (_ BitVec 32)) (x!50656 (_ BitVec 32))) (Undefined!4872) (MissingVacant!4872 (index!21715 (_ BitVec 32))) )
))
(declare-fun lt!247271 () SeekEntryResult!4872)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539892 (= res!335091 (or (= lt!247271 (MissingZero!4872 i!1153)) (= lt!247271 (MissingVacant!4872 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34147 (_ BitVec 32)) SeekEntryResult!4872)

(assert (=> b!539892 (= lt!247271 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539893 () Bool)

(declare-fun res!335092 () Bool)

(assert (=> b!539893 (=> (not res!335092) (not e!312854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539893 (= res!335092 (validKeyInArray!0 k!1998))))

(declare-fun b!539894 () Bool)

(assert (=> b!539894 (= e!312855 false)))

(declare-fun lt!247270 () SeekEntryResult!4872)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34147 (_ BitVec 32)) SeekEntryResult!4872)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539894 (= lt!247270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16407 a!3154) j!147) mask!3216) (select (arr!16407 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539895 () Bool)

(declare-fun res!335090 () Bool)

(assert (=> b!539895 (=> (not res!335090) (not e!312854))))

(assert (=> b!539895 (= res!335090 (and (= (size!16771 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16771 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16771 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539896 () Bool)

(declare-fun res!335093 () Bool)

(assert (=> b!539896 (=> (not res!335093) (not e!312854))))

(assert (=> b!539896 (= res!335093 (validKeyInArray!0 (select (arr!16407 a!3154) j!147)))))

(declare-fun b!539898 () Bool)

(declare-fun res!335088 () Bool)

(assert (=> b!539898 (=> (not res!335088) (not e!312855))))

(declare-datatypes ((List!10579 0))(
  ( (Nil!10576) (Cons!10575 (h!11521 (_ BitVec 64)) (t!16815 List!10579)) )
))
(declare-fun arrayNoDuplicates!0 (array!34147 (_ BitVec 32) List!10579) Bool)

(assert (=> b!539898 (= res!335088 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10576))))

(declare-fun b!539899 () Bool)

(declare-fun res!335087 () Bool)

(assert (=> b!539899 (=> (not res!335087) (not e!312855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34147 (_ BitVec 32)) Bool)

(assert (=> b!539899 (= res!335087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539900 () Bool)

(declare-fun res!335095 () Bool)

(assert (=> b!539900 (=> (not res!335095) (not e!312855))))

(assert (=> b!539900 (= res!335095 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16407 a!3154) j!147) a!3154 mask!3216) (Intermediate!4872 false resIndex!32 resX!32)))))

(declare-fun res!335094 () Bool)

(assert (=> start!49030 (=> (not res!335094) (not e!312854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49030 (= res!335094 (validMask!0 mask!3216))))

(assert (=> start!49030 e!312854))

(assert (=> start!49030 true))

(declare-fun array_inv!12181 (array!34147) Bool)

(assert (=> start!49030 (array_inv!12181 a!3154)))

(declare-fun b!539897 () Bool)

(declare-fun res!335089 () Bool)

(assert (=> b!539897 (=> (not res!335089) (not e!312854))))

(declare-fun arrayContainsKey!0 (array!34147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539897 (= res!335089 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49030 res!335094) b!539895))

(assert (= (and b!539895 res!335090) b!539896))

(assert (= (and b!539896 res!335093) b!539893))

(assert (= (and b!539893 res!335092) b!539897))

(assert (= (and b!539897 res!335089) b!539892))

(assert (= (and b!539892 res!335091) b!539899))

(assert (= (and b!539899 res!335087) b!539898))

(assert (= (and b!539898 res!335088) b!539891))

(assert (= (and b!539891 res!335096) b!539900))

(assert (= (and b!539900 res!335095) b!539894))

(declare-fun m!518773 () Bool)

(assert (=> b!539897 m!518773))

(declare-fun m!518775 () Bool)

(assert (=> b!539893 m!518775))

(declare-fun m!518777 () Bool)

(assert (=> b!539894 m!518777))

(assert (=> b!539894 m!518777))

(declare-fun m!518779 () Bool)

(assert (=> b!539894 m!518779))

(assert (=> b!539894 m!518779))

(assert (=> b!539894 m!518777))

(declare-fun m!518781 () Bool)

(assert (=> b!539894 m!518781))

(declare-fun m!518783 () Bool)

(assert (=> b!539892 m!518783))

(declare-fun m!518785 () Bool)

(assert (=> b!539891 m!518785))

(assert (=> b!539891 m!518777))

(assert (=> b!539896 m!518777))

(assert (=> b!539896 m!518777))

(declare-fun m!518787 () Bool)

(assert (=> b!539896 m!518787))

(declare-fun m!518789 () Bool)

(assert (=> start!49030 m!518789))

(declare-fun m!518791 () Bool)

(assert (=> start!49030 m!518791))

(assert (=> b!539900 m!518777))

(assert (=> b!539900 m!518777))

(declare-fun m!518793 () Bool)

(assert (=> b!539900 m!518793))

(declare-fun m!518795 () Bool)

(assert (=> b!539898 m!518795))

(declare-fun m!518797 () Bool)

(assert (=> b!539899 m!518797))

(push 1)

