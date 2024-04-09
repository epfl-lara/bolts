; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49532 () Bool)

(assert start!49532)

(declare-fun b!544731 () Bool)

(declare-fun res!338991 () Bool)

(declare-fun e!314914 () Bool)

(assert (=> b!544731 (=> (not res!338991) (not e!314914))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34358 0))(
  ( (array!34359 (arr!16505 (Array (_ BitVec 32) (_ BitVec 64))) (size!16869 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34358)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4970 0))(
  ( (MissingZero!4970 (index!22104 (_ BitVec 32))) (Found!4970 (index!22105 (_ BitVec 32))) (Intermediate!4970 (undefined!5782 Bool) (index!22106 (_ BitVec 32)) (x!51052 (_ BitVec 32))) (Undefined!4970) (MissingVacant!4970 (index!22107 (_ BitVec 32))) )
))
(declare-fun lt!248614 () SeekEntryResult!4970)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34358 (_ BitVec 32)) SeekEntryResult!4970)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544731 (= res!338991 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16505 a!3154) j!147) mask!3216) (select (arr!16505 a!3154) j!147) a!3154 mask!3216) lt!248614))))

(declare-fun res!338985 () Bool)

(declare-fun e!314913 () Bool)

(assert (=> start!49532 (=> (not res!338985) (not e!314913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49532 (= res!338985 (validMask!0 mask!3216))))

(assert (=> start!49532 e!314913))

(assert (=> start!49532 true))

(declare-fun array_inv!12279 (array!34358) Bool)

(assert (=> start!49532 (array_inv!12279 a!3154)))

(declare-fun b!544732 () Bool)

(declare-fun e!314912 () Bool)

(assert (=> b!544732 (= e!314913 e!314912)))

(declare-fun res!338995 () Bool)

(assert (=> b!544732 (=> (not res!338995) (not e!314912))))

(declare-fun lt!248613 () SeekEntryResult!4970)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544732 (= res!338995 (or (= lt!248613 (MissingZero!4970 i!1153)) (= lt!248613 (MissingVacant!4970 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34358 (_ BitVec 32)) SeekEntryResult!4970)

(assert (=> b!544732 (= lt!248613 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544733 () Bool)

(declare-fun res!338988 () Bool)

(assert (=> b!544733 (=> (not res!338988) (not e!314913))))

(declare-fun arrayContainsKey!0 (array!34358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544733 (= res!338988 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544734 () Bool)

(declare-fun res!338989 () Bool)

(assert (=> b!544734 (=> (not res!338989) (not e!314912))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544734 (= res!338989 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16869 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16869 a!3154)) (= (select (arr!16505 a!3154) resIndex!32) (select (arr!16505 a!3154) j!147))))))

(declare-fun b!544735 () Bool)

(declare-fun res!338986 () Bool)

(assert (=> b!544735 (=> (not res!338986) (not e!314913))))

(assert (=> b!544735 (= res!338986 (and (= (size!16869 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16869 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16869 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544736 () Bool)

(declare-fun res!338987 () Bool)

(assert (=> b!544736 (=> (not res!338987) (not e!314913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544736 (= res!338987 (validKeyInArray!0 (select (arr!16505 a!3154) j!147)))))

(declare-fun b!544737 () Bool)

(assert (=> b!544737 (= e!314912 e!314914)))

(declare-fun res!338996 () Bool)

(assert (=> b!544737 (=> (not res!338996) (not e!314914))))

(assert (=> b!544737 (= res!338996 (= lt!248614 (Intermediate!4970 false resIndex!32 resX!32)))))

(assert (=> b!544737 (= lt!248614 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16505 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544738 () Bool)

(declare-fun res!338993 () Bool)

(assert (=> b!544738 (=> (not res!338993) (not e!314914))))

(assert (=> b!544738 (= res!338993 (and (not (= (select (arr!16505 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16505 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16505 a!3154) index!1177) (select (arr!16505 a!3154) j!147)))))))

(declare-fun b!544739 () Bool)

(declare-fun res!338994 () Bool)

(assert (=> b!544739 (=> (not res!338994) (not e!314913))))

(assert (=> b!544739 (= res!338994 (validKeyInArray!0 k!1998))))

(declare-fun b!544740 () Bool)

(declare-fun res!338992 () Bool)

(assert (=> b!544740 (=> (not res!338992) (not e!314912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34358 (_ BitVec 32)) Bool)

(assert (=> b!544740 (= res!338992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544741 () Bool)

(declare-fun res!338990 () Bool)

(assert (=> b!544741 (=> (not res!338990) (not e!314912))))

(declare-datatypes ((List!10677 0))(
  ( (Nil!10674) (Cons!10673 (h!11634 (_ BitVec 64)) (t!16913 List!10677)) )
))
(declare-fun arrayNoDuplicates!0 (array!34358 (_ BitVec 32) List!10677) Bool)

(assert (=> b!544741 (= res!338990 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10674))))

(declare-fun b!544742 () Bool)

(assert (=> b!544742 (= e!314914 false)))

(declare-fun lt!248615 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544742 (= lt!248615 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!49532 res!338985) b!544735))

(assert (= (and b!544735 res!338986) b!544736))

(assert (= (and b!544736 res!338987) b!544739))

(assert (= (and b!544739 res!338994) b!544733))

(assert (= (and b!544733 res!338988) b!544732))

(assert (= (and b!544732 res!338995) b!544740))

(assert (= (and b!544740 res!338992) b!544741))

(assert (= (and b!544741 res!338990) b!544734))

(assert (= (and b!544734 res!338989) b!544737))

(assert (= (and b!544737 res!338996) b!544731))

(assert (= (and b!544731 res!338991) b!544738))

(assert (= (and b!544738 res!338993) b!544742))

(declare-fun m!522505 () Bool)

(assert (=> b!544741 m!522505))

(declare-fun m!522507 () Bool)

(assert (=> b!544733 m!522507))

(declare-fun m!522509 () Bool)

(assert (=> b!544736 m!522509))

(assert (=> b!544736 m!522509))

(declare-fun m!522511 () Bool)

(assert (=> b!544736 m!522511))

(declare-fun m!522513 () Bool)

(assert (=> b!544742 m!522513))

(declare-fun m!522515 () Bool)

(assert (=> b!544740 m!522515))

(declare-fun m!522517 () Bool)

(assert (=> b!544738 m!522517))

(assert (=> b!544738 m!522509))

(declare-fun m!522519 () Bool)

(assert (=> start!49532 m!522519))

(declare-fun m!522521 () Bool)

(assert (=> start!49532 m!522521))

(declare-fun m!522523 () Bool)

(assert (=> b!544732 m!522523))

(declare-fun m!522525 () Bool)

(assert (=> b!544734 m!522525))

(assert (=> b!544734 m!522509))

(declare-fun m!522527 () Bool)

(assert (=> b!544739 m!522527))

(assert (=> b!544737 m!522509))

(assert (=> b!544737 m!522509))

(declare-fun m!522529 () Bool)

(assert (=> b!544737 m!522529))

(assert (=> b!544731 m!522509))

(assert (=> b!544731 m!522509))

(declare-fun m!522531 () Bool)

(assert (=> b!544731 m!522531))

(assert (=> b!544731 m!522531))

(assert (=> b!544731 m!522509))

(declare-fun m!522533 () Bool)

(assert (=> b!544731 m!522533))

(push 1)

(assert (not b!544739))

(assert (not b!544741))

(assert (not b!544736))

