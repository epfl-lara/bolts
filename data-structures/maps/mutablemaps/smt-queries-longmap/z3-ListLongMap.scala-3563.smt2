; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49020 () Bool)

(assert start!49020)

(declare-fun b!539741 () Bool)

(declare-fun res!334942 () Bool)

(declare-fun e!312809 () Bool)

(assert (=> b!539741 (=> (not res!334942) (not e!312809))))

(declare-datatypes ((array!34137 0))(
  ( (array!34138 (arr!16402 (Array (_ BitVec 32) (_ BitVec 64))) (size!16766 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34137)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34137 (_ BitVec 32)) Bool)

(assert (=> b!539741 (= res!334942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539742 () Bool)

(assert (=> b!539742 (= e!312809 false)))

(declare-datatypes ((SeekEntryResult!4867 0))(
  ( (MissingZero!4867 (index!21692 (_ BitVec 32))) (Found!4867 (index!21693 (_ BitVec 32))) (Intermediate!4867 (undefined!5679 Bool) (index!21694 (_ BitVec 32)) (x!50635 (_ BitVec 32))) (Undefined!4867) (MissingVacant!4867 (index!21695 (_ BitVec 32))) )
))
(declare-fun lt!247241 () SeekEntryResult!4867)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34137 (_ BitVec 32)) SeekEntryResult!4867)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539742 (= lt!247241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16402 a!3154) j!147) mask!3216) (select (arr!16402 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539743 () Bool)

(declare-fun res!334938 () Bool)

(declare-fun e!312811 () Bool)

(assert (=> b!539743 (=> (not res!334938) (not e!312811))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539743 (= res!334938 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539744 () Bool)

(assert (=> b!539744 (= e!312811 e!312809)))

(declare-fun res!334944 () Bool)

(assert (=> b!539744 (=> (not res!334944) (not e!312809))))

(declare-fun lt!247240 () SeekEntryResult!4867)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539744 (= res!334944 (or (= lt!247240 (MissingZero!4867 i!1153)) (= lt!247240 (MissingVacant!4867 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34137 (_ BitVec 32)) SeekEntryResult!4867)

(assert (=> b!539744 (= lt!247240 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539745 () Bool)

(declare-fun res!334939 () Bool)

(assert (=> b!539745 (=> (not res!334939) (not e!312811))))

(assert (=> b!539745 (= res!334939 (and (= (size!16766 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16766 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16766 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539746 () Bool)

(declare-fun res!334940 () Bool)

(assert (=> b!539746 (=> (not res!334940) (not e!312809))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539746 (= res!334940 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16766 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16766 a!3154)) (= (select (arr!16402 a!3154) resIndex!32) (select (arr!16402 a!3154) j!147))))))

(declare-fun b!539747 () Bool)

(declare-fun res!334941 () Bool)

(assert (=> b!539747 (=> (not res!334941) (not e!312811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539747 (= res!334941 (validKeyInArray!0 (select (arr!16402 a!3154) j!147)))))

(declare-fun b!539749 () Bool)

(declare-fun res!334946 () Bool)

(assert (=> b!539749 (=> (not res!334946) (not e!312809))))

(assert (=> b!539749 (= res!334946 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16402 a!3154) j!147) a!3154 mask!3216) (Intermediate!4867 false resIndex!32 resX!32)))))

(declare-fun b!539750 () Bool)

(declare-fun res!334937 () Bool)

(assert (=> b!539750 (=> (not res!334937) (not e!312809))))

(declare-datatypes ((List!10574 0))(
  ( (Nil!10571) (Cons!10570 (h!11516 (_ BitVec 64)) (t!16810 List!10574)) )
))
(declare-fun arrayNoDuplicates!0 (array!34137 (_ BitVec 32) List!10574) Bool)

(assert (=> b!539750 (= res!334937 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10571))))

(declare-fun res!334943 () Bool)

(assert (=> start!49020 (=> (not res!334943) (not e!312811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49020 (= res!334943 (validMask!0 mask!3216))))

(assert (=> start!49020 e!312811))

(assert (=> start!49020 true))

(declare-fun array_inv!12176 (array!34137) Bool)

(assert (=> start!49020 (array_inv!12176 a!3154)))

(declare-fun b!539748 () Bool)

(declare-fun res!334945 () Bool)

(assert (=> b!539748 (=> (not res!334945) (not e!312811))))

(assert (=> b!539748 (= res!334945 (validKeyInArray!0 k0!1998))))

(assert (= (and start!49020 res!334943) b!539745))

(assert (= (and b!539745 res!334939) b!539747))

(assert (= (and b!539747 res!334941) b!539748))

(assert (= (and b!539748 res!334945) b!539743))

(assert (= (and b!539743 res!334938) b!539744))

(assert (= (and b!539744 res!334944) b!539741))

(assert (= (and b!539741 res!334942) b!539750))

(assert (= (and b!539750 res!334937) b!539746))

(assert (= (and b!539746 res!334940) b!539749))

(assert (= (and b!539749 res!334946) b!539742))

(declare-fun m!518643 () Bool)

(assert (=> b!539746 m!518643))

(declare-fun m!518645 () Bool)

(assert (=> b!539746 m!518645))

(declare-fun m!518647 () Bool)

(assert (=> b!539743 m!518647))

(declare-fun m!518649 () Bool)

(assert (=> b!539744 m!518649))

(declare-fun m!518651 () Bool)

(assert (=> b!539741 m!518651))

(declare-fun m!518653 () Bool)

(assert (=> b!539748 m!518653))

(declare-fun m!518655 () Bool)

(assert (=> start!49020 m!518655))

(declare-fun m!518657 () Bool)

(assert (=> start!49020 m!518657))

(assert (=> b!539742 m!518645))

(assert (=> b!539742 m!518645))

(declare-fun m!518659 () Bool)

(assert (=> b!539742 m!518659))

(assert (=> b!539742 m!518659))

(assert (=> b!539742 m!518645))

(declare-fun m!518661 () Bool)

(assert (=> b!539742 m!518661))

(assert (=> b!539749 m!518645))

(assert (=> b!539749 m!518645))

(declare-fun m!518663 () Bool)

(assert (=> b!539749 m!518663))

(declare-fun m!518665 () Bool)

(assert (=> b!539750 m!518665))

(assert (=> b!539747 m!518645))

(assert (=> b!539747 m!518645))

(declare-fun m!518667 () Bool)

(assert (=> b!539747 m!518667))

(check-sat (not b!539743) (not start!49020) (not b!539749) (not b!539750) (not b!539741) (not b!539744) (not b!539748) (not b!539742) (not b!539747))
(check-sat)
