; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49122 () Bool)

(assert start!49122)

(declare-fun b!540731 () Bool)

(declare-fun res!335775 () Bool)

(declare-fun e!313203 () Bool)

(assert (=> b!540731 (=> (not res!335775) (not e!313203))))

(declare-datatypes ((array!34188 0))(
  ( (array!34189 (arr!16426 (Array (_ BitVec 32) (_ BitVec 64))) (size!16790 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34188)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34188 (_ BitVec 32)) Bool)

(assert (=> b!540731 (= res!335775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540732 () Bool)

(declare-fun res!335768 () Bool)

(declare-fun e!313204 () Bool)

(assert (=> b!540732 (=> (not res!335768) (not e!313204))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540732 (= res!335768 (validKeyInArray!0 k0!1998))))

(declare-fun b!540733 () Bool)

(declare-fun res!335774 () Bool)

(assert (=> b!540733 (=> (not res!335774) (not e!313204))))

(declare-fun arrayContainsKey!0 (array!34188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540733 (= res!335774 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540734 () Bool)

(declare-fun res!335777 () Bool)

(assert (=> b!540734 (=> (not res!335777) (not e!313203))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!540734 (= res!335777 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16790 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16790 a!3154)) (= (select (arr!16426 a!3154) resIndex!32) (select (arr!16426 a!3154) j!147))))))

(declare-fun b!540735 () Bool)

(declare-fun res!335772 () Bool)

(assert (=> b!540735 (=> (not res!335772) (not e!313204))))

(assert (=> b!540735 (= res!335772 (validKeyInArray!0 (select (arr!16426 a!3154) j!147)))))

(declare-fun b!540736 () Bool)

(declare-fun res!335770 () Bool)

(assert (=> b!540736 (=> (not res!335770) (not e!313203))))

(declare-datatypes ((SeekEntryResult!4891 0))(
  ( (MissingZero!4891 (index!21788 (_ BitVec 32))) (Found!4891 (index!21789 (_ BitVec 32))) (Intermediate!4891 (undefined!5703 Bool) (index!21790 (_ BitVec 32)) (x!50729 (_ BitVec 32))) (Undefined!4891) (MissingVacant!4891 (index!21791 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34188 (_ BitVec 32)) SeekEntryResult!4891)

(assert (=> b!540736 (= res!335770 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16426 a!3154) j!147) a!3154 mask!3216) (Intermediate!4891 false resIndex!32 resX!32)))))

(declare-fun res!335773 () Bool)

(assert (=> start!49122 (=> (not res!335773) (not e!313204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49122 (= res!335773 (validMask!0 mask!3216))))

(assert (=> start!49122 e!313204))

(assert (=> start!49122 true))

(declare-fun array_inv!12200 (array!34188) Bool)

(assert (=> start!49122 (array_inv!12200 a!3154)))

(declare-fun b!540737 () Bool)

(assert (=> b!540737 (= e!313203 false)))

(declare-fun lt!247481 () SeekEntryResult!4891)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540737 (= lt!247481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16426 a!3154) j!147) mask!3216) (select (arr!16426 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540738 () Bool)

(assert (=> b!540738 (= e!313204 e!313203)))

(declare-fun res!335769 () Bool)

(assert (=> b!540738 (=> (not res!335769) (not e!313203))))

(declare-fun lt!247480 () SeekEntryResult!4891)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540738 (= res!335769 (or (= lt!247480 (MissingZero!4891 i!1153)) (= lt!247480 (MissingVacant!4891 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34188 (_ BitVec 32)) SeekEntryResult!4891)

(assert (=> b!540738 (= lt!247480 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540739 () Bool)

(declare-fun res!335771 () Bool)

(assert (=> b!540739 (=> (not res!335771) (not e!313203))))

(declare-datatypes ((List!10598 0))(
  ( (Nil!10595) (Cons!10594 (h!11543 (_ BitVec 64)) (t!16834 List!10598)) )
))
(declare-fun arrayNoDuplicates!0 (array!34188 (_ BitVec 32) List!10598) Bool)

(assert (=> b!540739 (= res!335771 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10595))))

(declare-fun b!540740 () Bool)

(declare-fun res!335776 () Bool)

(assert (=> b!540740 (=> (not res!335776) (not e!313204))))

(assert (=> b!540740 (= res!335776 (and (= (size!16790 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16790 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16790 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49122 res!335773) b!540740))

(assert (= (and b!540740 res!335776) b!540735))

(assert (= (and b!540735 res!335772) b!540732))

(assert (= (and b!540732 res!335768) b!540733))

(assert (= (and b!540733 res!335774) b!540738))

(assert (= (and b!540738 res!335769) b!540731))

(assert (= (and b!540731 res!335775) b!540739))

(assert (= (and b!540739 res!335771) b!540734))

(assert (= (and b!540734 res!335777) b!540736))

(assert (= (and b!540736 res!335770) b!540737))

(declare-fun m!519411 () Bool)

(assert (=> b!540735 m!519411))

(assert (=> b!540735 m!519411))

(declare-fun m!519413 () Bool)

(assert (=> b!540735 m!519413))

(declare-fun m!519415 () Bool)

(assert (=> b!540739 m!519415))

(declare-fun m!519417 () Bool)

(assert (=> b!540732 m!519417))

(declare-fun m!519419 () Bool)

(assert (=> b!540738 m!519419))

(declare-fun m!519421 () Bool)

(assert (=> b!540733 m!519421))

(assert (=> b!540736 m!519411))

(assert (=> b!540736 m!519411))

(declare-fun m!519423 () Bool)

(assert (=> b!540736 m!519423))

(declare-fun m!519425 () Bool)

(assert (=> b!540734 m!519425))

(assert (=> b!540734 m!519411))

(declare-fun m!519427 () Bool)

(assert (=> start!49122 m!519427))

(declare-fun m!519429 () Bool)

(assert (=> start!49122 m!519429))

(declare-fun m!519431 () Bool)

(assert (=> b!540731 m!519431))

(assert (=> b!540737 m!519411))

(assert (=> b!540737 m!519411))

(declare-fun m!519433 () Bool)

(assert (=> b!540737 m!519433))

(assert (=> b!540737 m!519433))

(assert (=> b!540737 m!519411))

(declare-fun m!519435 () Bool)

(assert (=> b!540737 m!519435))

(check-sat (not b!540738) (not b!540736) (not b!540732) (not start!49122) (not b!540731) (not b!540739) (not b!540737) (not b!540735) (not b!540733))
(check-sat)
