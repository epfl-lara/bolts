; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49026 () Bool)

(assert start!49026)

(declare-fun res!335029 () Bool)

(declare-fun e!312838 () Bool)

(assert (=> start!49026 (=> (not res!335029) (not e!312838))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49026 (= res!335029 (validMask!0 mask!3216))))

(assert (=> start!49026 e!312838))

(assert (=> start!49026 true))

(declare-datatypes ((array!34143 0))(
  ( (array!34144 (arr!16405 (Array (_ BitVec 32) (_ BitVec 64))) (size!16769 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34143)

(declare-fun array_inv!12179 (array!34143) Bool)

(assert (=> start!49026 (array_inv!12179 a!3154)))

(declare-fun b!539831 () Bool)

(declare-fun res!335028 () Bool)

(declare-fun e!312836 () Bool)

(assert (=> b!539831 (=> (not res!335028) (not e!312836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34143 (_ BitVec 32)) Bool)

(assert (=> b!539831 (= res!335028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539832 () Bool)

(declare-fun res!335033 () Bool)

(assert (=> b!539832 (=> (not res!335033) (not e!312838))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539832 (= res!335033 (validKeyInArray!0 k0!1998))))

(declare-fun b!539833 () Bool)

(assert (=> b!539833 (= e!312838 e!312836)))

(declare-fun res!335036 () Bool)

(assert (=> b!539833 (=> (not res!335036) (not e!312836))))

(declare-datatypes ((SeekEntryResult!4870 0))(
  ( (MissingZero!4870 (index!21704 (_ BitVec 32))) (Found!4870 (index!21705 (_ BitVec 32))) (Intermediate!4870 (undefined!5682 Bool) (index!21706 (_ BitVec 32)) (x!50646 (_ BitVec 32))) (Undefined!4870) (MissingVacant!4870 (index!21707 (_ BitVec 32))) )
))
(declare-fun lt!247258 () SeekEntryResult!4870)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539833 (= res!335036 (or (= lt!247258 (MissingZero!4870 i!1153)) (= lt!247258 (MissingVacant!4870 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34143 (_ BitVec 32)) SeekEntryResult!4870)

(assert (=> b!539833 (= lt!247258 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539834 () Bool)

(declare-fun res!335032 () Bool)

(assert (=> b!539834 (=> (not res!335032) (not e!312838))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!539834 (= res!335032 (validKeyInArray!0 (select (arr!16405 a!3154) j!147)))))

(declare-fun b!539835 () Bool)

(assert (=> b!539835 (= e!312836 false)))

(declare-fun lt!247259 () SeekEntryResult!4870)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34143 (_ BitVec 32)) SeekEntryResult!4870)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539835 (= lt!247259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16405 a!3154) j!147) mask!3216) (select (arr!16405 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539836 () Bool)

(declare-fun res!335027 () Bool)

(assert (=> b!539836 (=> (not res!335027) (not e!312836))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539836 (= res!335027 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16405 a!3154) j!147) a!3154 mask!3216) (Intermediate!4870 false resIndex!32 resX!32)))))

(declare-fun b!539837 () Bool)

(declare-fun res!335030 () Bool)

(assert (=> b!539837 (=> (not res!335030) (not e!312836))))

(declare-datatypes ((List!10577 0))(
  ( (Nil!10574) (Cons!10573 (h!11519 (_ BitVec 64)) (t!16813 List!10577)) )
))
(declare-fun arrayNoDuplicates!0 (array!34143 (_ BitVec 32) List!10577) Bool)

(assert (=> b!539837 (= res!335030 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10574))))

(declare-fun b!539838 () Bool)

(declare-fun res!335034 () Bool)

(assert (=> b!539838 (=> (not res!335034) (not e!312838))))

(assert (=> b!539838 (= res!335034 (and (= (size!16769 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16769 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16769 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539839 () Bool)

(declare-fun res!335035 () Bool)

(assert (=> b!539839 (=> (not res!335035) (not e!312836))))

(assert (=> b!539839 (= res!335035 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16769 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16769 a!3154)) (= (select (arr!16405 a!3154) resIndex!32) (select (arr!16405 a!3154) j!147))))))

(declare-fun b!539840 () Bool)

(declare-fun res!335031 () Bool)

(assert (=> b!539840 (=> (not res!335031) (not e!312838))))

(declare-fun arrayContainsKey!0 (array!34143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539840 (= res!335031 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49026 res!335029) b!539838))

(assert (= (and b!539838 res!335034) b!539834))

(assert (= (and b!539834 res!335032) b!539832))

(assert (= (and b!539832 res!335033) b!539840))

(assert (= (and b!539840 res!335031) b!539833))

(assert (= (and b!539833 res!335036) b!539831))

(assert (= (and b!539831 res!335028) b!539837))

(assert (= (and b!539837 res!335030) b!539839))

(assert (= (and b!539839 res!335035) b!539836))

(assert (= (and b!539836 res!335027) b!539835))

(declare-fun m!518721 () Bool)

(assert (=> start!49026 m!518721))

(declare-fun m!518723 () Bool)

(assert (=> start!49026 m!518723))

(declare-fun m!518725 () Bool)

(assert (=> b!539839 m!518725))

(declare-fun m!518727 () Bool)

(assert (=> b!539839 m!518727))

(declare-fun m!518729 () Bool)

(assert (=> b!539837 m!518729))

(declare-fun m!518731 () Bool)

(assert (=> b!539833 m!518731))

(declare-fun m!518733 () Bool)

(assert (=> b!539840 m!518733))

(assert (=> b!539835 m!518727))

(assert (=> b!539835 m!518727))

(declare-fun m!518735 () Bool)

(assert (=> b!539835 m!518735))

(assert (=> b!539835 m!518735))

(assert (=> b!539835 m!518727))

(declare-fun m!518737 () Bool)

(assert (=> b!539835 m!518737))

(declare-fun m!518739 () Bool)

(assert (=> b!539831 m!518739))

(declare-fun m!518741 () Bool)

(assert (=> b!539832 m!518741))

(assert (=> b!539836 m!518727))

(assert (=> b!539836 m!518727))

(declare-fun m!518743 () Bool)

(assert (=> b!539836 m!518743))

(assert (=> b!539834 m!518727))

(assert (=> b!539834 m!518727))

(declare-fun m!518745 () Bool)

(assert (=> b!539834 m!518745))

(check-sat (not b!539835) (not b!539832) (not b!539840) (not start!49026) (not b!539837) (not b!539834) (not b!539836) (not b!539833) (not b!539831))
(check-sat)
