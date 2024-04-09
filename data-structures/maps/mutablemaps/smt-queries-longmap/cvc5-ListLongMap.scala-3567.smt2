; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49042 () Bool)

(assert start!49042)

(declare-fun b!540071 () Bool)

(declare-fun e!312910 () Bool)

(declare-fun e!312909 () Bool)

(assert (=> b!540071 (= e!312910 e!312909)))

(declare-fun res!335272 () Bool)

(assert (=> b!540071 (=> (not res!335272) (not e!312909))))

(declare-datatypes ((SeekEntryResult!4878 0))(
  ( (MissingZero!4878 (index!21736 (_ BitVec 32))) (Found!4878 (index!21737 (_ BitVec 32))) (Intermediate!4878 (undefined!5690 Bool) (index!21738 (_ BitVec 32)) (x!50678 (_ BitVec 32))) (Undefined!4878) (MissingVacant!4878 (index!21739 (_ BitVec 32))) )
))
(declare-fun lt!247307 () SeekEntryResult!4878)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540071 (= res!335272 (or (= lt!247307 (MissingZero!4878 i!1153)) (= lt!247307 (MissingVacant!4878 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!34159 0))(
  ( (array!34160 (arr!16413 (Array (_ BitVec 32) (_ BitVec 64))) (size!16777 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34159)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34159 (_ BitVec 32)) SeekEntryResult!4878)

(assert (=> b!540071 (= lt!247307 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540072 () Bool)

(assert (=> b!540072 (= e!312909 false)))

(declare-fun lt!247306 () SeekEntryResult!4878)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34159 (_ BitVec 32)) SeekEntryResult!4878)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540072 (= lt!247306 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16413 a!3154) j!147) mask!3216) (select (arr!16413 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540073 () Bool)

(declare-fun res!335270 () Bool)

(assert (=> b!540073 (=> (not res!335270) (not e!312909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34159 (_ BitVec 32)) Bool)

(assert (=> b!540073 (= res!335270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!335268 () Bool)

(assert (=> start!49042 (=> (not res!335268) (not e!312910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49042 (= res!335268 (validMask!0 mask!3216))))

(assert (=> start!49042 e!312910))

(assert (=> start!49042 true))

(declare-fun array_inv!12187 (array!34159) Bool)

(assert (=> start!49042 (array_inv!12187 a!3154)))

(declare-fun b!540074 () Bool)

(declare-fun res!335267 () Bool)

(assert (=> b!540074 (=> (not res!335267) (not e!312910))))

(assert (=> b!540074 (= res!335267 (and (= (size!16777 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16777 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16777 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540075 () Bool)

(declare-fun res!335276 () Bool)

(assert (=> b!540075 (=> (not res!335276) (not e!312909))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540075 (= res!335276 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16777 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16777 a!3154)) (= (select (arr!16413 a!3154) resIndex!32) (select (arr!16413 a!3154) j!147))))))

(declare-fun b!540076 () Bool)

(declare-fun res!335274 () Bool)

(assert (=> b!540076 (=> (not res!335274) (not e!312909))))

(assert (=> b!540076 (= res!335274 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16413 a!3154) j!147) a!3154 mask!3216) (Intermediate!4878 false resIndex!32 resX!32)))))

(declare-fun b!540077 () Bool)

(declare-fun res!335275 () Bool)

(assert (=> b!540077 (=> (not res!335275) (not e!312909))))

(declare-datatypes ((List!10585 0))(
  ( (Nil!10582) (Cons!10581 (h!11527 (_ BitVec 64)) (t!16821 List!10585)) )
))
(declare-fun arrayNoDuplicates!0 (array!34159 (_ BitVec 32) List!10585) Bool)

(assert (=> b!540077 (= res!335275 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10582))))

(declare-fun b!540078 () Bool)

(declare-fun res!335273 () Bool)

(assert (=> b!540078 (=> (not res!335273) (not e!312910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540078 (= res!335273 (validKeyInArray!0 k!1998))))

(declare-fun b!540079 () Bool)

(declare-fun res!335269 () Bool)

(assert (=> b!540079 (=> (not res!335269) (not e!312910))))

(declare-fun arrayContainsKey!0 (array!34159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540079 (= res!335269 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540080 () Bool)

(declare-fun res!335271 () Bool)

(assert (=> b!540080 (=> (not res!335271) (not e!312910))))

(assert (=> b!540080 (= res!335271 (validKeyInArray!0 (select (arr!16413 a!3154) j!147)))))

(assert (= (and start!49042 res!335268) b!540074))

(assert (= (and b!540074 res!335267) b!540080))

(assert (= (and b!540080 res!335271) b!540078))

(assert (= (and b!540078 res!335273) b!540079))

(assert (= (and b!540079 res!335269) b!540071))

(assert (= (and b!540071 res!335272) b!540073))

(assert (= (and b!540073 res!335270) b!540077))

(assert (= (and b!540077 res!335275) b!540075))

(assert (= (and b!540075 res!335276) b!540076))

(assert (= (and b!540076 res!335274) b!540072))

(declare-fun m!518929 () Bool)

(assert (=> b!540073 m!518929))

(declare-fun m!518931 () Bool)

(assert (=> b!540076 m!518931))

(assert (=> b!540076 m!518931))

(declare-fun m!518933 () Bool)

(assert (=> b!540076 m!518933))

(declare-fun m!518935 () Bool)

(assert (=> start!49042 m!518935))

(declare-fun m!518937 () Bool)

(assert (=> start!49042 m!518937))

(declare-fun m!518939 () Bool)

(assert (=> b!540075 m!518939))

(assert (=> b!540075 m!518931))

(declare-fun m!518941 () Bool)

(assert (=> b!540079 m!518941))

(declare-fun m!518943 () Bool)

(assert (=> b!540078 m!518943))

(assert (=> b!540080 m!518931))

(assert (=> b!540080 m!518931))

(declare-fun m!518945 () Bool)

(assert (=> b!540080 m!518945))

(assert (=> b!540072 m!518931))

(assert (=> b!540072 m!518931))

(declare-fun m!518947 () Bool)

(assert (=> b!540072 m!518947))

(assert (=> b!540072 m!518947))

(assert (=> b!540072 m!518931))

(declare-fun m!518949 () Bool)

(assert (=> b!540072 m!518949))

(declare-fun m!518951 () Bool)

(assert (=> b!540071 m!518951))

(declare-fun m!518953 () Bool)

(assert (=> b!540077 m!518953))

(push 1)

