; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49034 () Bool)

(assert start!49034)

(declare-fun res!335155 () Bool)

(declare-fun e!312874 () Bool)

(assert (=> start!49034 (=> (not res!335155) (not e!312874))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49034 (= res!335155 (validMask!0 mask!3216))))

(assert (=> start!49034 e!312874))

(assert (=> start!49034 true))

(declare-datatypes ((array!34151 0))(
  ( (array!34152 (arr!16409 (Array (_ BitVec 32) (_ BitVec 64))) (size!16773 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34151)

(declare-fun array_inv!12183 (array!34151) Bool)

(assert (=> start!49034 (array_inv!12183 a!3154)))

(declare-fun b!539951 () Bool)

(declare-fun res!335150 () Bool)

(assert (=> b!539951 (=> (not res!335150) (not e!312874))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539951 (= res!335150 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539952 () Bool)

(declare-fun e!312873 () Bool)

(assert (=> b!539952 (= e!312874 e!312873)))

(declare-fun res!335148 () Bool)

(assert (=> b!539952 (=> (not res!335148) (not e!312873))))

(declare-datatypes ((SeekEntryResult!4874 0))(
  ( (MissingZero!4874 (index!21720 (_ BitVec 32))) (Found!4874 (index!21721 (_ BitVec 32))) (Intermediate!4874 (undefined!5686 Bool) (index!21722 (_ BitVec 32)) (x!50658 (_ BitVec 32))) (Undefined!4874) (MissingVacant!4874 (index!21723 (_ BitVec 32))) )
))
(declare-fun lt!247282 () SeekEntryResult!4874)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539952 (= res!335148 (or (= lt!247282 (MissingZero!4874 i!1153)) (= lt!247282 (MissingVacant!4874 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34151 (_ BitVec 32)) SeekEntryResult!4874)

(assert (=> b!539952 (= lt!247282 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539953 () Bool)

(declare-fun res!335153 () Bool)

(assert (=> b!539953 (=> (not res!335153) (not e!312873))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34151 (_ BitVec 32)) SeekEntryResult!4874)

(assert (=> b!539953 (= res!335153 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16409 a!3154) j!147) a!3154 mask!3216) (Intermediate!4874 false resIndex!32 resX!32)))))

(declare-fun b!539954 () Bool)

(declare-fun res!335151 () Bool)

(assert (=> b!539954 (=> (not res!335151) (not e!312873))))

(declare-datatypes ((List!10581 0))(
  ( (Nil!10578) (Cons!10577 (h!11523 (_ BitVec 64)) (t!16817 List!10581)) )
))
(declare-fun arrayNoDuplicates!0 (array!34151 (_ BitVec 32) List!10581) Bool)

(assert (=> b!539954 (= res!335151 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10578))))

(declare-fun b!539955 () Bool)

(assert (=> b!539955 (= e!312873 false)))

(declare-fun lt!247283 () SeekEntryResult!4874)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539955 (= lt!247283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16409 a!3154) j!147) mask!3216) (select (arr!16409 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539956 () Bool)

(declare-fun res!335149 () Bool)

(assert (=> b!539956 (=> (not res!335149) (not e!312874))))

(assert (=> b!539956 (= res!335149 (and (= (size!16773 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16773 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16773 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539957 () Bool)

(declare-fun res!335152 () Bool)

(assert (=> b!539957 (=> (not res!335152) (not e!312873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34151 (_ BitVec 32)) Bool)

(assert (=> b!539957 (= res!335152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539958 () Bool)

(declare-fun res!335154 () Bool)

(assert (=> b!539958 (=> (not res!335154) (not e!312874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539958 (= res!335154 (validKeyInArray!0 (select (arr!16409 a!3154) j!147)))))

(declare-fun b!539959 () Bool)

(declare-fun res!335156 () Bool)

(assert (=> b!539959 (=> (not res!335156) (not e!312873))))

(assert (=> b!539959 (= res!335156 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16773 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16773 a!3154)) (= (select (arr!16409 a!3154) resIndex!32) (select (arr!16409 a!3154) j!147))))))

(declare-fun b!539960 () Bool)

(declare-fun res!335147 () Bool)

(assert (=> b!539960 (=> (not res!335147) (not e!312874))))

(assert (=> b!539960 (= res!335147 (validKeyInArray!0 k!1998))))

(assert (= (and start!49034 res!335155) b!539956))

(assert (= (and b!539956 res!335149) b!539958))

(assert (= (and b!539958 res!335154) b!539960))

(assert (= (and b!539960 res!335147) b!539951))

(assert (= (and b!539951 res!335150) b!539952))

(assert (= (and b!539952 res!335148) b!539957))

(assert (= (and b!539957 res!335152) b!539954))

(assert (= (and b!539954 res!335151) b!539959))

(assert (= (and b!539959 res!335156) b!539953))

(assert (= (and b!539953 res!335153) b!539955))

(declare-fun m!518825 () Bool)

(assert (=> b!539951 m!518825))

(declare-fun m!518827 () Bool)

(assert (=> b!539960 m!518827))

(declare-fun m!518829 () Bool)

(assert (=> b!539958 m!518829))

(assert (=> b!539958 m!518829))

(declare-fun m!518831 () Bool)

(assert (=> b!539958 m!518831))

(declare-fun m!518833 () Bool)

(assert (=> start!49034 m!518833))

(declare-fun m!518835 () Bool)

(assert (=> start!49034 m!518835))

(declare-fun m!518837 () Bool)

(assert (=> b!539959 m!518837))

(assert (=> b!539959 m!518829))

(declare-fun m!518839 () Bool)

(assert (=> b!539952 m!518839))

(assert (=> b!539953 m!518829))

(assert (=> b!539953 m!518829))

(declare-fun m!518841 () Bool)

(assert (=> b!539953 m!518841))

(declare-fun m!518843 () Bool)

(assert (=> b!539954 m!518843))

(declare-fun m!518845 () Bool)

(assert (=> b!539957 m!518845))

(assert (=> b!539955 m!518829))

(assert (=> b!539955 m!518829))

(declare-fun m!518847 () Bool)

(assert (=> b!539955 m!518847))

(assert (=> b!539955 m!518847))

(assert (=> b!539955 m!518829))

(declare-fun m!518849 () Bool)

(assert (=> b!539955 m!518849))

(push 1)

(assert (not b!539960))

(assert (not b!539958))

(assert (not b!539953))

(assert (not b!539957))

(assert (not b!539952))

(assert (not start!49034))

(assert (not b!539954))

(assert (not b!539955))

(assert (not b!539951))

(check-sat)

