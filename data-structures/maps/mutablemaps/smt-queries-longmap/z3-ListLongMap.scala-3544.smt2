; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48852 () Bool)

(assert start!48852)

(declare-fun b!537587 () Bool)

(declare-fun res!332945 () Bool)

(declare-fun e!311826 () Bool)

(assert (=> b!537587 (=> (not res!332945) (not e!311826))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4810 0))(
  ( (MissingZero!4810 (index!21464 (_ BitVec 32))) (Found!4810 (index!21465 (_ BitVec 32))) (Intermediate!4810 (undefined!5622 Bool) (index!21466 (_ BitVec 32)) (x!50420 (_ BitVec 32))) (Undefined!4810) (MissingVacant!4810 (index!21467 (_ BitVec 32))) )
))
(declare-fun lt!246473 () SeekEntryResult!4810)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34020 0))(
  ( (array!34021 (arr!16345 (Array (_ BitVec 32) (_ BitVec 64))) (size!16709 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34020)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34020 (_ BitVec 32)) SeekEntryResult!4810)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537587 (= res!332945 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16345 a!3154) j!147) mask!3216) (select (arr!16345 a!3154) j!147) a!3154 mask!3216) lt!246473))))

(declare-fun b!537588 () Bool)

(declare-fun res!332948 () Bool)

(declare-fun e!311824 () Bool)

(assert (=> b!537588 (=> (not res!332948) (not e!311824))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537588 (= res!332948 (and (= (size!16709 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16709 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16709 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537589 () Bool)

(declare-fun res!332954 () Bool)

(declare-fun e!311827 () Bool)

(assert (=> b!537589 (=> (not res!332954) (not e!311827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34020 (_ BitVec 32)) Bool)

(assert (=> b!537589 (= res!332954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537591 () Bool)

(declare-fun e!311823 () Bool)

(assert (=> b!537591 (= e!311823 false)))

(declare-fun lt!246471 () SeekEntryResult!4810)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246472 () (_ BitVec 32))

(assert (=> b!537591 (= lt!246471 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246472 (select (arr!16345 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537592 () Bool)

(declare-fun res!332950 () Bool)

(assert (=> b!537592 (=> (not res!332950) (not e!311826))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!537592 (= res!332950 (and (not (= (select (arr!16345 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16345 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16345 a!3154) index!1177) (select (arr!16345 a!3154) j!147)))))))

(declare-fun b!537593 () Bool)

(declare-fun res!332949 () Bool)

(assert (=> b!537593 (=> (not res!332949) (not e!311824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537593 (= res!332949 (validKeyInArray!0 (select (arr!16345 a!3154) j!147)))))

(declare-fun b!537594 () Bool)

(assert (=> b!537594 (= e!311826 e!311823)))

(declare-fun res!332947 () Bool)

(assert (=> b!537594 (=> (not res!332947) (not e!311823))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537594 (= res!332947 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246472 #b00000000000000000000000000000000) (bvslt lt!246472 (size!16709 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537594 (= lt!246472 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537595 () Bool)

(declare-fun res!332946 () Bool)

(assert (=> b!537595 (=> (not res!332946) (not e!311827))))

(declare-datatypes ((List!10517 0))(
  ( (Nil!10514) (Cons!10513 (h!11456 (_ BitVec 64)) (t!16753 List!10517)) )
))
(declare-fun arrayNoDuplicates!0 (array!34020 (_ BitVec 32) List!10517) Bool)

(assert (=> b!537595 (= res!332946 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10514))))

(declare-fun b!537596 () Bool)

(assert (=> b!537596 (= e!311827 e!311826)))

(declare-fun res!332943 () Bool)

(assert (=> b!537596 (=> (not res!332943) (not e!311826))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537596 (= res!332943 (= lt!246473 (Intermediate!4810 false resIndex!32 resX!32)))))

(assert (=> b!537596 (= lt!246473 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16345 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537597 () Bool)

(assert (=> b!537597 (= e!311824 e!311827)))

(declare-fun res!332942 () Bool)

(assert (=> b!537597 (=> (not res!332942) (not e!311827))))

(declare-fun lt!246470 () SeekEntryResult!4810)

(assert (=> b!537597 (= res!332942 (or (= lt!246470 (MissingZero!4810 i!1153)) (= lt!246470 (MissingVacant!4810 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34020 (_ BitVec 32)) SeekEntryResult!4810)

(assert (=> b!537597 (= lt!246470 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!537598 () Bool)

(declare-fun res!332944 () Bool)

(assert (=> b!537598 (=> (not res!332944) (not e!311827))))

(assert (=> b!537598 (= res!332944 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16709 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16709 a!3154)) (= (select (arr!16345 a!3154) resIndex!32) (select (arr!16345 a!3154) j!147))))))

(declare-fun b!537599 () Bool)

(declare-fun res!332951 () Bool)

(assert (=> b!537599 (=> (not res!332951) (not e!311824))))

(declare-fun arrayContainsKey!0 (array!34020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537599 (= res!332951 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537590 () Bool)

(declare-fun res!332952 () Bool)

(assert (=> b!537590 (=> (not res!332952) (not e!311824))))

(assert (=> b!537590 (= res!332952 (validKeyInArray!0 k0!1998))))

(declare-fun res!332953 () Bool)

(assert (=> start!48852 (=> (not res!332953) (not e!311824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48852 (= res!332953 (validMask!0 mask!3216))))

(assert (=> start!48852 e!311824))

(assert (=> start!48852 true))

(declare-fun array_inv!12119 (array!34020) Bool)

(assert (=> start!48852 (array_inv!12119 a!3154)))

(assert (= (and start!48852 res!332953) b!537588))

(assert (= (and b!537588 res!332948) b!537593))

(assert (= (and b!537593 res!332949) b!537590))

(assert (= (and b!537590 res!332952) b!537599))

(assert (= (and b!537599 res!332951) b!537597))

(assert (= (and b!537597 res!332942) b!537589))

(assert (= (and b!537589 res!332954) b!537595))

(assert (= (and b!537595 res!332946) b!537598))

(assert (= (and b!537598 res!332944) b!537596))

(assert (= (and b!537596 res!332943) b!537587))

(assert (= (and b!537587 res!332945) b!537592))

(assert (= (and b!537592 res!332950) b!537594))

(assert (= (and b!537594 res!332947) b!537591))

(declare-fun m!516795 () Bool)

(assert (=> b!537591 m!516795))

(assert (=> b!537591 m!516795))

(declare-fun m!516797 () Bool)

(assert (=> b!537591 m!516797))

(declare-fun m!516799 () Bool)

(assert (=> start!48852 m!516799))

(declare-fun m!516801 () Bool)

(assert (=> start!48852 m!516801))

(declare-fun m!516803 () Bool)

(assert (=> b!537598 m!516803))

(assert (=> b!537598 m!516795))

(assert (=> b!537596 m!516795))

(assert (=> b!537596 m!516795))

(declare-fun m!516805 () Bool)

(assert (=> b!537596 m!516805))

(assert (=> b!537593 m!516795))

(assert (=> b!537593 m!516795))

(declare-fun m!516807 () Bool)

(assert (=> b!537593 m!516807))

(declare-fun m!516809 () Bool)

(assert (=> b!537597 m!516809))

(declare-fun m!516811 () Bool)

(assert (=> b!537590 m!516811))

(declare-fun m!516813 () Bool)

(assert (=> b!537592 m!516813))

(assert (=> b!537592 m!516795))

(declare-fun m!516815 () Bool)

(assert (=> b!537594 m!516815))

(assert (=> b!537587 m!516795))

(assert (=> b!537587 m!516795))

(declare-fun m!516817 () Bool)

(assert (=> b!537587 m!516817))

(assert (=> b!537587 m!516817))

(assert (=> b!537587 m!516795))

(declare-fun m!516819 () Bool)

(assert (=> b!537587 m!516819))

(declare-fun m!516821 () Bool)

(assert (=> b!537589 m!516821))

(declare-fun m!516823 () Bool)

(assert (=> b!537599 m!516823))

(declare-fun m!516825 () Bool)

(assert (=> b!537595 m!516825))

(check-sat (not b!537595) (not b!537589) (not b!537593) (not b!537597) (not b!537594) (not b!537587) (not b!537596) (not b!537599) (not b!537591) (not b!537590) (not start!48852))
(check-sat)
