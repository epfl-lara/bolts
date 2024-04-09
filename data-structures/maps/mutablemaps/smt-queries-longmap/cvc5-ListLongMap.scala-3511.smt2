; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48652 () Bool)

(assert start!48652)

(declare-fun b!534041 () Bool)

(declare-fun res!329398 () Bool)

(declare-fun e!310546 () Bool)

(assert (=> b!534041 (=> (not res!329398) (not e!310546))))

(declare-datatypes ((array!33820 0))(
  ( (array!33821 (arr!16245 (Array (_ BitVec 32) (_ BitVec 64))) (size!16609 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33820)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!534041 (= res!329398 (and (= (size!16609 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16609 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16609 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534042 () Bool)

(declare-fun res!329397 () Bool)

(declare-fun e!310545 () Bool)

(assert (=> b!534042 (=> (not res!329397) (not e!310545))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534042 (= res!329397 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16609 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16609 a!3154)) (= (select (arr!16245 a!3154) resIndex!32) (select (arr!16245 a!3154) j!147))))))

(declare-fun b!534043 () Bool)

(declare-fun res!329405 () Bool)

(assert (=> b!534043 (=> (not res!329405) (not e!310545))))

(declare-datatypes ((List!10417 0))(
  ( (Nil!10414) (Cons!10413 (h!11356 (_ BitVec 64)) (t!16653 List!10417)) )
))
(declare-fun arrayNoDuplicates!0 (array!33820 (_ BitVec 32) List!10417) Bool)

(assert (=> b!534043 (= res!329405 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10414))))

(declare-fun b!534044 () Bool)

(declare-fun res!329402 () Bool)

(assert (=> b!534044 (=> (not res!329402) (not e!310546))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534044 (= res!329402 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534045 () Bool)

(assert (=> b!534045 (= e!310546 e!310545)))

(declare-fun res!329403 () Bool)

(assert (=> b!534045 (=> (not res!329403) (not e!310545))))

(declare-datatypes ((SeekEntryResult!4710 0))(
  ( (MissingZero!4710 (index!21064 (_ BitVec 32))) (Found!4710 (index!21065 (_ BitVec 32))) (Intermediate!4710 (undefined!5522 Bool) (index!21066 (_ BitVec 32)) (x!50056 (_ BitVec 32))) (Undefined!4710) (MissingVacant!4710 (index!21067 (_ BitVec 32))) )
))
(declare-fun lt!245555 () SeekEntryResult!4710)

(assert (=> b!534045 (= res!329403 (or (= lt!245555 (MissingZero!4710 i!1153)) (= lt!245555 (MissingVacant!4710 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33820 (_ BitVec 32)) SeekEntryResult!4710)

(assert (=> b!534045 (= lt!245555 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534046 () Bool)

(assert (=> b!534046 (= e!310545 false)))

(declare-fun lt!245554 () SeekEntryResult!4710)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33820 (_ BitVec 32)) SeekEntryResult!4710)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534046 (= lt!245554 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16245 a!3154) j!147) mask!3216) (select (arr!16245 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534047 () Bool)

(declare-fun res!329404 () Bool)

(assert (=> b!534047 (=> (not res!329404) (not e!310546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534047 (= res!329404 (validKeyInArray!0 k!1998))))

(declare-fun b!534048 () Bool)

(declare-fun res!329396 () Bool)

(assert (=> b!534048 (=> (not res!329396) (not e!310545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33820 (_ BitVec 32)) Bool)

(assert (=> b!534048 (= res!329396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534049 () Bool)

(declare-fun res!329401 () Bool)

(assert (=> b!534049 (=> (not res!329401) (not e!310546))))

(assert (=> b!534049 (= res!329401 (validKeyInArray!0 (select (arr!16245 a!3154) j!147)))))

(declare-fun b!534050 () Bool)

(declare-fun res!329399 () Bool)

(assert (=> b!534050 (=> (not res!329399) (not e!310545))))

(assert (=> b!534050 (= res!329399 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16245 a!3154) j!147) a!3154 mask!3216) (Intermediate!4710 false resIndex!32 resX!32)))))

(declare-fun res!329400 () Bool)

(assert (=> start!48652 (=> (not res!329400) (not e!310546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48652 (= res!329400 (validMask!0 mask!3216))))

(assert (=> start!48652 e!310546))

(assert (=> start!48652 true))

(declare-fun array_inv!12019 (array!33820) Bool)

(assert (=> start!48652 (array_inv!12019 a!3154)))

(assert (= (and start!48652 res!329400) b!534041))

(assert (= (and b!534041 res!329398) b!534049))

(assert (= (and b!534049 res!329401) b!534047))

(assert (= (and b!534047 res!329404) b!534044))

(assert (= (and b!534044 res!329402) b!534045))

(assert (= (and b!534045 res!329403) b!534048))

(assert (= (and b!534048 res!329396) b!534043))

(assert (= (and b!534043 res!329405) b!534042))

(assert (= (and b!534042 res!329397) b!534050))

(assert (= (and b!534050 res!329399) b!534046))

(declare-fun m!513823 () Bool)

(assert (=> b!534044 m!513823))

(declare-fun m!513825 () Bool)

(assert (=> b!534045 m!513825))

(declare-fun m!513827 () Bool)

(assert (=> b!534042 m!513827))

(declare-fun m!513829 () Bool)

(assert (=> b!534042 m!513829))

(declare-fun m!513831 () Bool)

(assert (=> start!48652 m!513831))

(declare-fun m!513833 () Bool)

(assert (=> start!48652 m!513833))

(declare-fun m!513835 () Bool)

(assert (=> b!534047 m!513835))

(assert (=> b!534046 m!513829))

(assert (=> b!534046 m!513829))

(declare-fun m!513837 () Bool)

(assert (=> b!534046 m!513837))

(assert (=> b!534046 m!513837))

(assert (=> b!534046 m!513829))

(declare-fun m!513839 () Bool)

(assert (=> b!534046 m!513839))

(assert (=> b!534049 m!513829))

(assert (=> b!534049 m!513829))

(declare-fun m!513841 () Bool)

(assert (=> b!534049 m!513841))

(assert (=> b!534050 m!513829))

(assert (=> b!534050 m!513829))

(declare-fun m!513843 () Bool)

(assert (=> b!534050 m!513843))

(declare-fun m!513845 () Bool)

(assert (=> b!534048 m!513845))

(declare-fun m!513847 () Bool)

(assert (=> b!534043 m!513847))

(push 1)

