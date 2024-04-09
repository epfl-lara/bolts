; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48570 () Bool)

(assert start!48570)

(declare-fun b!532838 () Bool)

(declare-fun res!328200 () Bool)

(declare-fun e!310177 () Bool)

(assert (=> b!532838 (=> (not res!328200) (not e!310177))))

(declare-datatypes ((array!33738 0))(
  ( (array!33739 (arr!16204 (Array (_ BitVec 32) (_ BitVec 64))) (size!16568 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33738)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532838 (= res!328200 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532839 () Bool)

(declare-fun res!328193 () Bool)

(assert (=> b!532839 (=> (not res!328193) (not e!310177))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532839 (= res!328193 (validKeyInArray!0 (select (arr!16204 a!3154) j!147)))))

(declare-fun b!532840 () Bool)

(declare-fun res!328195 () Bool)

(declare-fun e!310175 () Bool)

(assert (=> b!532840 (=> (not res!328195) (not e!310175))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33738 (_ BitVec 32)) Bool)

(assert (=> b!532840 (= res!328195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532841 () Bool)

(assert (=> b!532841 (= e!310175 false)))

(declare-fun lt!245335 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532841 (= lt!245335 (toIndex!0 (select (arr!16204 a!3154) j!147) mask!3216))))

(declare-fun res!328201 () Bool)

(assert (=> start!48570 (=> (not res!328201) (not e!310177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48570 (= res!328201 (validMask!0 mask!3216))))

(assert (=> start!48570 e!310177))

(assert (=> start!48570 true))

(declare-fun array_inv!11978 (array!33738) Bool)

(assert (=> start!48570 (array_inv!11978 a!3154)))

(declare-fun b!532842 () Bool)

(declare-fun res!328197 () Bool)

(assert (=> b!532842 (=> (not res!328197) (not e!310177))))

(assert (=> b!532842 (= res!328197 (validKeyInArray!0 k0!1998))))

(declare-fun b!532843 () Bool)

(declare-fun res!328194 () Bool)

(assert (=> b!532843 (=> (not res!328194) (not e!310175))))

(declare-datatypes ((List!10376 0))(
  ( (Nil!10373) (Cons!10372 (h!11315 (_ BitVec 64)) (t!16612 List!10376)) )
))
(declare-fun arrayNoDuplicates!0 (array!33738 (_ BitVec 32) List!10376) Bool)

(assert (=> b!532843 (= res!328194 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10373))))

(declare-fun b!532844 () Bool)

(declare-fun res!328198 () Bool)

(assert (=> b!532844 (=> (not res!328198) (not e!310175))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532844 (= res!328198 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16568 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16568 a!3154)) (= (select (arr!16204 a!3154) resIndex!32) (select (arr!16204 a!3154) j!147))))))

(declare-fun b!532845 () Bool)

(assert (=> b!532845 (= e!310177 e!310175)))

(declare-fun res!328202 () Bool)

(assert (=> b!532845 (=> (not res!328202) (not e!310175))))

(declare-datatypes ((SeekEntryResult!4669 0))(
  ( (MissingZero!4669 (index!20900 (_ BitVec 32))) (Found!4669 (index!20901 (_ BitVec 32))) (Intermediate!4669 (undefined!5481 Bool) (index!20902 (_ BitVec 32)) (x!49903 (_ BitVec 32))) (Undefined!4669) (MissingVacant!4669 (index!20903 (_ BitVec 32))) )
))
(declare-fun lt!245336 () SeekEntryResult!4669)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532845 (= res!328202 (or (= lt!245336 (MissingZero!4669 i!1153)) (= lt!245336 (MissingVacant!4669 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33738 (_ BitVec 32)) SeekEntryResult!4669)

(assert (=> b!532845 (= lt!245336 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!532846 () Bool)

(declare-fun res!328199 () Bool)

(assert (=> b!532846 (=> (not res!328199) (not e!310175))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33738 (_ BitVec 32)) SeekEntryResult!4669)

(assert (=> b!532846 (= res!328199 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16204 a!3154) j!147) a!3154 mask!3216) (Intermediate!4669 false resIndex!32 resX!32)))))

(declare-fun b!532847 () Bool)

(declare-fun res!328196 () Bool)

(assert (=> b!532847 (=> (not res!328196) (not e!310177))))

(assert (=> b!532847 (= res!328196 (and (= (size!16568 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16568 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16568 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48570 res!328201) b!532847))

(assert (= (and b!532847 res!328196) b!532839))

(assert (= (and b!532839 res!328193) b!532842))

(assert (= (and b!532842 res!328197) b!532838))

(assert (= (and b!532838 res!328200) b!532845))

(assert (= (and b!532845 res!328202) b!532840))

(assert (= (and b!532840 res!328195) b!532843))

(assert (= (and b!532843 res!328194) b!532844))

(assert (= (and b!532844 res!328198) b!532846))

(assert (= (and b!532846 res!328199) b!532841))

(declare-fun m!512839 () Bool)

(assert (=> start!48570 m!512839))

(declare-fun m!512841 () Bool)

(assert (=> start!48570 m!512841))

(declare-fun m!512843 () Bool)

(assert (=> b!532844 m!512843))

(declare-fun m!512845 () Bool)

(assert (=> b!532844 m!512845))

(assert (=> b!532841 m!512845))

(assert (=> b!532841 m!512845))

(declare-fun m!512847 () Bool)

(assert (=> b!532841 m!512847))

(declare-fun m!512849 () Bool)

(assert (=> b!532840 m!512849))

(declare-fun m!512851 () Bool)

(assert (=> b!532842 m!512851))

(assert (=> b!532839 m!512845))

(assert (=> b!532839 m!512845))

(declare-fun m!512853 () Bool)

(assert (=> b!532839 m!512853))

(declare-fun m!512855 () Bool)

(assert (=> b!532843 m!512855))

(declare-fun m!512857 () Bool)

(assert (=> b!532845 m!512857))

(declare-fun m!512859 () Bool)

(assert (=> b!532838 m!512859))

(assert (=> b!532846 m!512845))

(assert (=> b!532846 m!512845))

(declare-fun m!512861 () Bool)

(assert (=> b!532846 m!512861))

(check-sat (not b!532843) (not start!48570) (not b!532846) (not b!532840) (not b!532839) (not b!532845) (not b!532841) (not b!532838) (not b!532842))
(check-sat)
