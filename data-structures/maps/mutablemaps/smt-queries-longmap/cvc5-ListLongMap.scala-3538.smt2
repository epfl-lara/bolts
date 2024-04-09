; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48814 () Bool)

(assert start!48814)

(declare-fun b!536846 () Bool)

(declare-fun e!311538 () Bool)

(assert (=> b!536846 (= e!311538 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!246244 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33982 0))(
  ( (array!33983 (arr!16326 (Array (_ BitVec 32) (_ BitVec 64))) (size!16690 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33982)

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4791 0))(
  ( (MissingZero!4791 (index!21388 (_ BitVec 32))) (Found!4791 (index!21389 (_ BitVec 32))) (Intermediate!4791 (undefined!5603 Bool) (index!21390 (_ BitVec 32)) (x!50353 (_ BitVec 32))) (Undefined!4791) (MissingVacant!4791 (index!21391 (_ BitVec 32))) )
))
(declare-fun lt!246243 () SeekEntryResult!4791)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33982 (_ BitVec 32)) SeekEntryResult!4791)

(assert (=> b!536846 (= lt!246243 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246244 (select (arr!16326 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536847 () Bool)

(declare-fun e!311542 () Bool)

(assert (=> b!536847 (= e!311542 e!311538)))

(declare-fun res!332207 () Bool)

(assert (=> b!536847 (=> (not res!332207) (not e!311538))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536847 (= res!332207 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246244 #b00000000000000000000000000000000) (bvslt lt!246244 (size!16690 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536847 (= lt!246244 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!332204 () Bool)

(declare-fun e!311539 () Bool)

(assert (=> start!48814 (=> (not res!332204) (not e!311539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48814 (= res!332204 (validMask!0 mask!3216))))

(assert (=> start!48814 e!311539))

(assert (=> start!48814 true))

(declare-fun array_inv!12100 (array!33982) Bool)

(assert (=> start!48814 (array_inv!12100 a!3154)))

(declare-fun b!536848 () Bool)

(declare-fun res!332203 () Bool)

(assert (=> b!536848 (=> (not res!332203) (not e!311539))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536848 (= res!332203 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536849 () Bool)

(declare-fun res!332201 () Bool)

(assert (=> b!536849 (=> (not res!332201) (not e!311539))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536849 (= res!332201 (and (= (size!16690 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16690 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16690 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536850 () Bool)

(declare-fun res!332212 () Bool)

(declare-fun e!311540 () Bool)

(assert (=> b!536850 (=> (not res!332212) (not e!311540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33982 (_ BitVec 32)) Bool)

(assert (=> b!536850 (= res!332212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536851 () Bool)

(assert (=> b!536851 (= e!311540 e!311542)))

(declare-fun res!332209 () Bool)

(assert (=> b!536851 (=> (not res!332209) (not e!311542))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun lt!246245 () SeekEntryResult!4791)

(assert (=> b!536851 (= res!332209 (= lt!246245 (Intermediate!4791 false resIndex!32 resX!32)))))

(assert (=> b!536851 (= lt!246245 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16326 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536852 () Bool)

(declare-fun res!332206 () Bool)

(assert (=> b!536852 (=> (not res!332206) (not e!311542))))

(assert (=> b!536852 (= res!332206 (and (not (= (select (arr!16326 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16326 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16326 a!3154) index!1177) (select (arr!16326 a!3154) j!147)))))))

(declare-fun b!536853 () Bool)

(declare-fun res!332208 () Bool)

(assert (=> b!536853 (=> (not res!332208) (not e!311539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536853 (= res!332208 (validKeyInArray!0 (select (arr!16326 a!3154) j!147)))))

(declare-fun b!536854 () Bool)

(declare-fun res!332205 () Bool)

(assert (=> b!536854 (=> (not res!332205) (not e!311540))))

(declare-datatypes ((List!10498 0))(
  ( (Nil!10495) (Cons!10494 (h!11437 (_ BitVec 64)) (t!16734 List!10498)) )
))
(declare-fun arrayNoDuplicates!0 (array!33982 (_ BitVec 32) List!10498) Bool)

(assert (=> b!536854 (= res!332205 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10495))))

(declare-fun b!536855 () Bool)

(assert (=> b!536855 (= e!311539 e!311540)))

(declare-fun res!332211 () Bool)

(assert (=> b!536855 (=> (not res!332211) (not e!311540))))

(declare-fun lt!246242 () SeekEntryResult!4791)

(assert (=> b!536855 (= res!332211 (or (= lt!246242 (MissingZero!4791 i!1153)) (= lt!246242 (MissingVacant!4791 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33982 (_ BitVec 32)) SeekEntryResult!4791)

(assert (=> b!536855 (= lt!246242 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536856 () Bool)

(declare-fun res!332202 () Bool)

(assert (=> b!536856 (=> (not res!332202) (not e!311540))))

(assert (=> b!536856 (= res!332202 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16690 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16690 a!3154)) (= (select (arr!16326 a!3154) resIndex!32) (select (arr!16326 a!3154) j!147))))))

(declare-fun b!536857 () Bool)

(declare-fun res!332210 () Bool)

(assert (=> b!536857 (=> (not res!332210) (not e!311542))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536857 (= res!332210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16326 a!3154) j!147) mask!3216) (select (arr!16326 a!3154) j!147) a!3154 mask!3216) lt!246245))))

(declare-fun b!536858 () Bool)

(declare-fun res!332213 () Bool)

(assert (=> b!536858 (=> (not res!332213) (not e!311539))))

(assert (=> b!536858 (= res!332213 (validKeyInArray!0 k!1998))))

(assert (= (and start!48814 res!332204) b!536849))

(assert (= (and b!536849 res!332201) b!536853))

(assert (= (and b!536853 res!332208) b!536858))

(assert (= (and b!536858 res!332213) b!536848))

(assert (= (and b!536848 res!332203) b!536855))

(assert (= (and b!536855 res!332211) b!536850))

(assert (= (and b!536850 res!332212) b!536854))

(assert (= (and b!536854 res!332205) b!536856))

(assert (= (and b!536856 res!332202) b!536851))

(assert (= (and b!536851 res!332209) b!536857))

(assert (= (and b!536857 res!332210) b!536852))

(assert (= (and b!536852 res!332206) b!536847))

(assert (= (and b!536847 res!332207) b!536846))

(declare-fun m!516187 () Bool)

(assert (=> b!536855 m!516187))

(declare-fun m!516189 () Bool)

(assert (=> b!536848 m!516189))

(declare-fun m!516191 () Bool)

(assert (=> b!536851 m!516191))

(assert (=> b!536851 m!516191))

(declare-fun m!516193 () Bool)

(assert (=> b!536851 m!516193))

(declare-fun m!516195 () Bool)

(assert (=> b!536858 m!516195))

(declare-fun m!516197 () Bool)

(assert (=> start!48814 m!516197))

(declare-fun m!516199 () Bool)

(assert (=> start!48814 m!516199))

(assert (=> b!536846 m!516191))

(assert (=> b!536846 m!516191))

(declare-fun m!516201 () Bool)

(assert (=> b!536846 m!516201))

(declare-fun m!516203 () Bool)

(assert (=> b!536850 m!516203))

(assert (=> b!536857 m!516191))

(assert (=> b!536857 m!516191))

(declare-fun m!516205 () Bool)

(assert (=> b!536857 m!516205))

(assert (=> b!536857 m!516205))

(assert (=> b!536857 m!516191))

(declare-fun m!516207 () Bool)

(assert (=> b!536857 m!516207))

(declare-fun m!516209 () Bool)

(assert (=> b!536852 m!516209))

(assert (=> b!536852 m!516191))

(assert (=> b!536853 m!516191))

(assert (=> b!536853 m!516191))

(declare-fun m!516211 () Bool)

(assert (=> b!536853 m!516211))

(declare-fun m!516213 () Bool)

(assert (=> b!536847 m!516213))

(declare-fun m!516215 () Bool)

(assert (=> b!536856 m!516215))

(assert (=> b!536856 m!516191))

(declare-fun m!516217 () Bool)

(assert (=> b!536854 m!516217))

(push 1)

