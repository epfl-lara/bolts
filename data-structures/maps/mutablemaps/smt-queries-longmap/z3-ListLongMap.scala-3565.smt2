; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49032 () Bool)

(assert start!49032)

(declare-fun b!539921 () Bool)

(declare-fun res!335126 () Bool)

(declare-fun e!312865 () Bool)

(assert (=> b!539921 (=> (not res!335126) (not e!312865))))

(declare-datatypes ((array!34149 0))(
  ( (array!34150 (arr!16408 (Array (_ BitVec 32) (_ BitVec 64))) (size!16772 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34149)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539921 (= res!335126 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539922 () Bool)

(declare-fun res!335118 () Bool)

(declare-fun e!312864 () Bool)

(assert (=> b!539922 (=> (not res!335118) (not e!312864))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!539922 (= res!335118 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16772 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16772 a!3154)) (= (select (arr!16408 a!3154) resIndex!32) (select (arr!16408 a!3154) j!147))))))

(declare-fun res!335121 () Bool)

(assert (=> start!49032 (=> (not res!335121) (not e!312865))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49032 (= res!335121 (validMask!0 mask!3216))))

(assert (=> start!49032 e!312865))

(assert (=> start!49032 true))

(declare-fun array_inv!12182 (array!34149) Bool)

(assert (=> start!49032 (array_inv!12182 a!3154)))

(declare-fun b!539923 () Bool)

(declare-fun res!335117 () Bool)

(assert (=> b!539923 (=> (not res!335117) (not e!312865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539923 (= res!335117 (validKeyInArray!0 k0!1998))))

(declare-fun b!539924 () Bool)

(declare-fun res!335122 () Bool)

(assert (=> b!539924 (=> (not res!335122) (not e!312864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34149 (_ BitVec 32)) Bool)

(assert (=> b!539924 (= res!335122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539925 () Bool)

(assert (=> b!539925 (= e!312864 false)))

(declare-datatypes ((SeekEntryResult!4873 0))(
  ( (MissingZero!4873 (index!21716 (_ BitVec 32))) (Found!4873 (index!21717 (_ BitVec 32))) (Intermediate!4873 (undefined!5685 Bool) (index!21718 (_ BitVec 32)) (x!50657 (_ BitVec 32))) (Undefined!4873) (MissingVacant!4873 (index!21719 (_ BitVec 32))) )
))
(declare-fun lt!247276 () SeekEntryResult!4873)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34149 (_ BitVec 32)) SeekEntryResult!4873)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539925 (= lt!247276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16408 a!3154) j!147) mask!3216) (select (arr!16408 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539926 () Bool)

(declare-fun res!335119 () Bool)

(assert (=> b!539926 (=> (not res!335119) (not e!312864))))

(declare-datatypes ((List!10580 0))(
  ( (Nil!10577) (Cons!10576 (h!11522 (_ BitVec 64)) (t!16816 List!10580)) )
))
(declare-fun arrayNoDuplicates!0 (array!34149 (_ BitVec 32) List!10580) Bool)

(assert (=> b!539926 (= res!335119 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10577))))

(declare-fun b!539927 () Bool)

(assert (=> b!539927 (= e!312865 e!312864)))

(declare-fun res!335120 () Bool)

(assert (=> b!539927 (=> (not res!335120) (not e!312864))))

(declare-fun lt!247277 () SeekEntryResult!4873)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539927 (= res!335120 (or (= lt!247277 (MissingZero!4873 i!1153)) (= lt!247277 (MissingVacant!4873 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34149 (_ BitVec 32)) SeekEntryResult!4873)

(assert (=> b!539927 (= lt!247277 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539928 () Bool)

(declare-fun res!335123 () Bool)

(assert (=> b!539928 (=> (not res!335123) (not e!312865))))

(assert (=> b!539928 (= res!335123 (and (= (size!16772 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16772 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16772 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539929 () Bool)

(declare-fun res!335124 () Bool)

(assert (=> b!539929 (=> (not res!335124) (not e!312864))))

(assert (=> b!539929 (= res!335124 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16408 a!3154) j!147) a!3154 mask!3216) (Intermediate!4873 false resIndex!32 resX!32)))))

(declare-fun b!539930 () Bool)

(declare-fun res!335125 () Bool)

(assert (=> b!539930 (=> (not res!335125) (not e!312865))))

(assert (=> b!539930 (= res!335125 (validKeyInArray!0 (select (arr!16408 a!3154) j!147)))))

(assert (= (and start!49032 res!335121) b!539928))

(assert (= (and b!539928 res!335123) b!539930))

(assert (= (and b!539930 res!335125) b!539923))

(assert (= (and b!539923 res!335117) b!539921))

(assert (= (and b!539921 res!335126) b!539927))

(assert (= (and b!539927 res!335120) b!539924))

(assert (= (and b!539924 res!335122) b!539926))

(assert (= (and b!539926 res!335119) b!539922))

(assert (= (and b!539922 res!335118) b!539929))

(assert (= (and b!539929 res!335124) b!539925))

(declare-fun m!518799 () Bool)

(assert (=> b!539921 m!518799))

(declare-fun m!518801 () Bool)

(assert (=> b!539922 m!518801))

(declare-fun m!518803 () Bool)

(assert (=> b!539922 m!518803))

(assert (=> b!539929 m!518803))

(assert (=> b!539929 m!518803))

(declare-fun m!518805 () Bool)

(assert (=> b!539929 m!518805))

(declare-fun m!518807 () Bool)

(assert (=> b!539927 m!518807))

(declare-fun m!518809 () Bool)

(assert (=> start!49032 m!518809))

(declare-fun m!518811 () Bool)

(assert (=> start!49032 m!518811))

(assert (=> b!539930 m!518803))

(assert (=> b!539930 m!518803))

(declare-fun m!518813 () Bool)

(assert (=> b!539930 m!518813))

(declare-fun m!518815 () Bool)

(assert (=> b!539923 m!518815))

(declare-fun m!518817 () Bool)

(assert (=> b!539926 m!518817))

(declare-fun m!518819 () Bool)

(assert (=> b!539924 m!518819))

(assert (=> b!539925 m!518803))

(assert (=> b!539925 m!518803))

(declare-fun m!518821 () Bool)

(assert (=> b!539925 m!518821))

(assert (=> b!539925 m!518821))

(assert (=> b!539925 m!518803))

(declare-fun m!518823 () Bool)

(assert (=> b!539925 m!518823))

(check-sat (not b!539921) (not start!49032) (not b!539930) (not b!539924) (not b!539929) (not b!539927) (not b!539926) (not b!539925) (not b!539923))
(check-sat)
