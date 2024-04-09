; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49282 () Bool)

(assert start!49282)

(declare-fun res!336796 () Bool)

(declare-fun e!313809 () Bool)

(assert (=> start!49282 (=> (not res!336796) (not e!313809))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49282 (= res!336796 (validMask!0 mask!3216))))

(assert (=> start!49282 e!313809))

(assert (=> start!49282 true))

(declare-datatypes ((array!34246 0))(
  ( (array!34247 (arr!16452 (Array (_ BitVec 32) (_ BitVec 64))) (size!16816 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34246)

(declare-fun array_inv!12226 (array!34246) Bool)

(assert (=> start!49282 (array_inv!12226 a!3154)))

(declare-fun b!542091 () Bool)

(declare-fun res!336794 () Bool)

(assert (=> b!542091 (=> (not res!336794) (not e!313809))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542091 (= res!336794 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542092 () Bool)

(declare-fun e!313808 () Bool)

(declare-fun e!313807 () Bool)

(assert (=> b!542092 (= e!313808 e!313807)))

(declare-fun res!336793 () Bool)

(assert (=> b!542092 (=> (not res!336793) (not e!313807))))

(declare-datatypes ((SeekEntryResult!4917 0))(
  ( (MissingZero!4917 (index!21892 (_ BitVec 32))) (Found!4917 (index!21893 (_ BitVec 32))) (Intermediate!4917 (undefined!5729 Bool) (index!21894 (_ BitVec 32)) (x!50839 (_ BitVec 32))) (Undefined!4917) (MissingVacant!4917 (index!21895 (_ BitVec 32))) )
))
(declare-fun lt!247846 () SeekEntryResult!4917)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542092 (= res!336793 (= lt!247846 (Intermediate!4917 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34246 (_ BitVec 32)) SeekEntryResult!4917)

(assert (=> b!542092 (= lt!247846 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16452 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542093 () Bool)

(declare-fun res!336798 () Bool)

(assert (=> b!542093 (=> (not res!336798) (not e!313807))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542093 (= res!336798 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16452 a!3154) j!147) mask!3216) (select (arr!16452 a!3154) j!147) a!3154 mask!3216) lt!247846))))

(declare-fun b!542094 () Bool)

(declare-fun res!336801 () Bool)

(assert (=> b!542094 (=> (not res!336801) (not e!313809))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542094 (= res!336801 (and (= (size!16816 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16816 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16816 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542095 () Bool)

(declare-fun res!336802 () Bool)

(assert (=> b!542095 (=> (not res!336802) (not e!313808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34246 (_ BitVec 32)) Bool)

(assert (=> b!542095 (= res!336802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542096 () Bool)

(declare-fun res!336792 () Bool)

(assert (=> b!542096 (=> (not res!336792) (not e!313809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542096 (= res!336792 (validKeyInArray!0 (select (arr!16452 a!3154) j!147)))))

(declare-fun b!542097 () Bool)

(assert (=> b!542097 (= e!313807 false)))

(declare-fun lt!247847 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542097 (= lt!247847 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542098 () Bool)

(declare-fun res!336795 () Bool)

(assert (=> b!542098 (=> (not res!336795) (not e!313808))))

(declare-datatypes ((List!10624 0))(
  ( (Nil!10621) (Cons!10620 (h!11575 (_ BitVec 64)) (t!16860 List!10624)) )
))
(declare-fun arrayNoDuplicates!0 (array!34246 (_ BitVec 32) List!10624) Bool)

(assert (=> b!542098 (= res!336795 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10621))))

(declare-fun b!542099 () Bool)

(assert (=> b!542099 (= e!313809 e!313808)))

(declare-fun res!336797 () Bool)

(assert (=> b!542099 (=> (not res!336797) (not e!313808))))

(declare-fun lt!247845 () SeekEntryResult!4917)

(assert (=> b!542099 (= res!336797 (or (= lt!247845 (MissingZero!4917 i!1153)) (= lt!247845 (MissingVacant!4917 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34246 (_ BitVec 32)) SeekEntryResult!4917)

(assert (=> b!542099 (= lt!247845 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542100 () Bool)

(declare-fun res!336800 () Bool)

(assert (=> b!542100 (=> (not res!336800) (not e!313809))))

(assert (=> b!542100 (= res!336800 (validKeyInArray!0 k!1998))))

(declare-fun b!542101 () Bool)

(declare-fun res!336803 () Bool)

(assert (=> b!542101 (=> (not res!336803) (not e!313808))))

(assert (=> b!542101 (= res!336803 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16816 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16816 a!3154)) (= (select (arr!16452 a!3154) resIndex!32) (select (arr!16452 a!3154) j!147))))))

(declare-fun b!542102 () Bool)

(declare-fun res!336799 () Bool)

(assert (=> b!542102 (=> (not res!336799) (not e!313807))))

(assert (=> b!542102 (= res!336799 (and (not (= (select (arr!16452 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16452 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16452 a!3154) index!1177) (select (arr!16452 a!3154) j!147)))))))

(assert (= (and start!49282 res!336796) b!542094))

(assert (= (and b!542094 res!336801) b!542096))

(assert (= (and b!542096 res!336792) b!542100))

(assert (= (and b!542100 res!336800) b!542091))

(assert (= (and b!542091 res!336794) b!542099))

(assert (= (and b!542099 res!336797) b!542095))

(assert (= (and b!542095 res!336802) b!542098))

(assert (= (and b!542098 res!336795) b!542101))

(assert (= (and b!542101 res!336803) b!542092))

(assert (= (and b!542092 res!336793) b!542093))

(assert (= (and b!542093 res!336798) b!542102))

(assert (= (and b!542102 res!336799) b!542097))

(declare-fun m!520411 () Bool)

(assert (=> b!542096 m!520411))

(assert (=> b!542096 m!520411))

(declare-fun m!520413 () Bool)

(assert (=> b!542096 m!520413))

(declare-fun m!520415 () Bool)

(assert (=> b!542098 m!520415))

(declare-fun m!520417 () Bool)

(assert (=> b!542101 m!520417))

(assert (=> b!542101 m!520411))

(assert (=> b!542093 m!520411))

(assert (=> b!542093 m!520411))

(declare-fun m!520419 () Bool)

(assert (=> b!542093 m!520419))

(assert (=> b!542093 m!520419))

(assert (=> b!542093 m!520411))

(declare-fun m!520421 () Bool)

(assert (=> b!542093 m!520421))

(declare-fun m!520423 () Bool)

(assert (=> b!542099 m!520423))

(declare-fun m!520425 () Bool)

(assert (=> b!542097 m!520425))

(declare-fun m!520427 () Bool)

(assert (=> start!49282 m!520427))

(declare-fun m!520429 () Bool)

(assert (=> start!49282 m!520429))

(declare-fun m!520431 () Bool)

(assert (=> b!542095 m!520431))

(declare-fun m!520433 () Bool)

(assert (=> b!542102 m!520433))

(assert (=> b!542102 m!520411))

(declare-fun m!520435 () Bool)

(assert (=> b!542100 m!520435))

(declare-fun m!520437 () Bool)

(assert (=> b!542091 m!520437))

(assert (=> b!542092 m!520411))

(assert (=> b!542092 m!520411))

(declare-fun m!520439 () Bool)

(assert (=> b!542092 m!520439))

(push 1)

