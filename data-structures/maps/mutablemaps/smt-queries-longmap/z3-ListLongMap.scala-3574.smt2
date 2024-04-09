; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49140 () Bool)

(assert start!49140)

(declare-fun b!541001 () Bool)

(declare-fun e!313283 () Bool)

(assert (=> b!541001 (= e!313283 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34206 0))(
  ( (array!34207 (arr!16435 (Array (_ BitVec 32) (_ BitVec 64))) (size!16799 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34206)

(declare-datatypes ((SeekEntryResult!4900 0))(
  ( (MissingZero!4900 (index!21824 (_ BitVec 32))) (Found!4900 (index!21825 (_ BitVec 32))) (Intermediate!4900 (undefined!5712 Bool) (index!21826 (_ BitVec 32)) (x!50762 (_ BitVec 32))) (Undefined!4900) (MissingVacant!4900 (index!21827 (_ BitVec 32))) )
))
(declare-fun lt!247534 () SeekEntryResult!4900)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34206 (_ BitVec 32)) SeekEntryResult!4900)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541001 (= lt!247534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16435 a!3154) j!147) mask!3216) (select (arr!16435 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541002 () Bool)

(declare-fun res!336041 () Bool)

(assert (=> b!541002 (=> (not res!336041) (not e!313283))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541002 (= res!336041 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16799 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16799 a!3154)) (= (select (arr!16435 a!3154) resIndex!32) (select (arr!16435 a!3154) j!147))))))

(declare-fun b!541003 () Bool)

(declare-fun res!336042 () Bool)

(declare-fun e!313284 () Bool)

(assert (=> b!541003 (=> (not res!336042) (not e!313284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541003 (= res!336042 (validKeyInArray!0 (select (arr!16435 a!3154) j!147)))))

(declare-fun b!541004 () Bool)

(declare-fun res!336047 () Bool)

(assert (=> b!541004 (=> (not res!336047) (not e!313284))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!541004 (= res!336047 (validKeyInArray!0 k0!1998))))

(declare-fun b!541005 () Bool)

(declare-fun res!336038 () Bool)

(assert (=> b!541005 (=> (not res!336038) (not e!313284))))

(declare-fun arrayContainsKey!0 (array!34206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541005 (= res!336038 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541006 () Bool)

(declare-fun res!336039 () Bool)

(assert (=> b!541006 (=> (not res!336039) (not e!313284))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541006 (= res!336039 (and (= (size!16799 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16799 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16799 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!336043 () Bool)

(assert (=> start!49140 (=> (not res!336043) (not e!313284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49140 (= res!336043 (validMask!0 mask!3216))))

(assert (=> start!49140 e!313284))

(assert (=> start!49140 true))

(declare-fun array_inv!12209 (array!34206) Bool)

(assert (=> start!49140 (array_inv!12209 a!3154)))

(declare-fun b!541007 () Bool)

(declare-fun res!336040 () Bool)

(assert (=> b!541007 (=> (not res!336040) (not e!313283))))

(assert (=> b!541007 (= res!336040 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16435 a!3154) j!147) a!3154 mask!3216) (Intermediate!4900 false resIndex!32 resX!32)))))

(declare-fun b!541008 () Bool)

(assert (=> b!541008 (= e!313284 e!313283)))

(declare-fun res!336046 () Bool)

(assert (=> b!541008 (=> (not res!336046) (not e!313283))))

(declare-fun lt!247535 () SeekEntryResult!4900)

(assert (=> b!541008 (= res!336046 (or (= lt!247535 (MissingZero!4900 i!1153)) (= lt!247535 (MissingVacant!4900 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34206 (_ BitVec 32)) SeekEntryResult!4900)

(assert (=> b!541008 (= lt!247535 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!541009 () Bool)

(declare-fun res!336045 () Bool)

(assert (=> b!541009 (=> (not res!336045) (not e!313283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34206 (_ BitVec 32)) Bool)

(assert (=> b!541009 (= res!336045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541010 () Bool)

(declare-fun res!336044 () Bool)

(assert (=> b!541010 (=> (not res!336044) (not e!313283))))

(declare-datatypes ((List!10607 0))(
  ( (Nil!10604) (Cons!10603 (h!11552 (_ BitVec 64)) (t!16843 List!10607)) )
))
(declare-fun arrayNoDuplicates!0 (array!34206 (_ BitVec 32) List!10607) Bool)

(assert (=> b!541010 (= res!336044 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10604))))

(assert (= (and start!49140 res!336043) b!541006))

(assert (= (and b!541006 res!336039) b!541003))

(assert (= (and b!541003 res!336042) b!541004))

(assert (= (and b!541004 res!336047) b!541005))

(assert (= (and b!541005 res!336038) b!541008))

(assert (= (and b!541008 res!336046) b!541009))

(assert (= (and b!541009 res!336045) b!541010))

(assert (= (and b!541010 res!336044) b!541002))

(assert (= (and b!541002 res!336041) b!541007))

(assert (= (and b!541007 res!336040) b!541001))

(declare-fun m!519645 () Bool)

(assert (=> b!541003 m!519645))

(assert (=> b!541003 m!519645))

(declare-fun m!519647 () Bool)

(assert (=> b!541003 m!519647))

(declare-fun m!519649 () Bool)

(assert (=> b!541008 m!519649))

(assert (=> b!541001 m!519645))

(assert (=> b!541001 m!519645))

(declare-fun m!519651 () Bool)

(assert (=> b!541001 m!519651))

(assert (=> b!541001 m!519651))

(assert (=> b!541001 m!519645))

(declare-fun m!519653 () Bool)

(assert (=> b!541001 m!519653))

(declare-fun m!519655 () Bool)

(assert (=> b!541010 m!519655))

(declare-fun m!519657 () Bool)

(assert (=> b!541005 m!519657))

(declare-fun m!519659 () Bool)

(assert (=> b!541002 m!519659))

(assert (=> b!541002 m!519645))

(declare-fun m!519661 () Bool)

(assert (=> b!541004 m!519661))

(assert (=> b!541007 m!519645))

(assert (=> b!541007 m!519645))

(declare-fun m!519663 () Bool)

(assert (=> b!541007 m!519663))

(declare-fun m!519665 () Bool)

(assert (=> start!49140 m!519665))

(declare-fun m!519667 () Bool)

(assert (=> start!49140 m!519667))

(declare-fun m!519669 () Bool)

(assert (=> b!541009 m!519669))

(check-sat (not b!541004) (not b!541008) (not b!541003) (not b!541005) (not b!541009) (not start!49140) (not b!541001) (not b!541007) (not b!541010))
(check-sat)
