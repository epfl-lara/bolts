; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49626 () Bool)

(assert start!49626)

(declare-fun b!545654 () Bool)

(declare-fun res!339739 () Bool)

(declare-fun e!315389 () Bool)

(assert (=> b!545654 (=> (not res!339739) (not e!315389))))

(declare-datatypes ((array!34395 0))(
  ( (array!34396 (arr!16522 (Array (_ BitVec 32) (_ BitVec 64))) (size!16886 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34395)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34395 (_ BitVec 32)) Bool)

(assert (=> b!545654 (= res!339739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545655 () Bool)

(declare-fun e!315387 () Bool)

(assert (=> b!545655 (= e!315389 e!315387)))

(declare-fun res!339732 () Bool)

(assert (=> b!545655 (=> (not res!339732) (not e!315387))))

(declare-datatypes ((SeekEntryResult!4987 0))(
  ( (MissingZero!4987 (index!22172 (_ BitVec 32))) (Found!4987 (index!22173 (_ BitVec 32))) (Intermediate!4987 (undefined!5799 Bool) (index!22174 (_ BitVec 32)) (x!51126 (_ BitVec 32))) (Undefined!4987) (MissingVacant!4987 (index!22175 (_ BitVec 32))) )
))
(declare-fun lt!248997 () SeekEntryResult!4987)

(declare-fun lt!249002 () SeekEntryResult!4987)

(assert (=> b!545655 (= res!339732 (= lt!248997 lt!249002))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545655 (= lt!249002 (Intermediate!4987 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34395 (_ BitVec 32)) SeekEntryResult!4987)

(assert (=> b!545655 (= lt!248997 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16522 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545656 () Bool)

(declare-fun e!315391 () Bool)

(assert (=> b!545656 (= e!315391 e!315389)))

(declare-fun res!339741 () Bool)

(assert (=> b!545656 (=> (not res!339741) (not e!315389))))

(declare-fun lt!249001 () SeekEntryResult!4987)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545656 (= res!339741 (or (= lt!249001 (MissingZero!4987 i!1153)) (= lt!249001 (MissingVacant!4987 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34395 (_ BitVec 32)) SeekEntryResult!4987)

(assert (=> b!545656 (= lt!249001 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!545657 () Bool)

(declare-fun res!339737 () Bool)

(assert (=> b!545657 (=> (not res!339737) (not e!315389))))

(declare-datatypes ((List!10694 0))(
  ( (Nil!10691) (Cons!10690 (h!11654 (_ BitVec 64)) (t!16930 List!10694)) )
))
(declare-fun arrayNoDuplicates!0 (array!34395 (_ BitVec 32) List!10694) Bool)

(assert (=> b!545657 (= res!339737 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10691))))

(declare-fun res!339733 () Bool)

(assert (=> start!49626 (=> (not res!339733) (not e!315391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49626 (= res!339733 (validMask!0 mask!3216))))

(assert (=> start!49626 e!315391))

(assert (=> start!49626 true))

(declare-fun array_inv!12296 (array!34395) Bool)

(assert (=> start!49626 (array_inv!12296 a!3154)))

(declare-fun b!545658 () Bool)

(declare-fun e!315388 () Bool)

(assert (=> b!545658 (= e!315388 (not true))))

(declare-fun lt!248996 () (_ BitVec 32))

(assert (=> b!545658 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248996 (select (store (arr!16522 a!3154) i!1153 k0!1998) j!147) (array!34396 (store (arr!16522 a!3154) i!1153 k0!1998) (size!16886 a!3154)) mask!3216) lt!249002)))

(declare-datatypes ((Unit!16906 0))(
  ( (Unit!16907) )
))
(declare-fun lt!249000 () Unit!16906)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16906)

(assert (=> b!545658 (= lt!249000 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!248996 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545659 () Bool)

(declare-fun e!315390 () Bool)

(declare-fun e!315386 () Bool)

(assert (=> b!545659 (= e!315390 e!315386)))

(declare-fun res!339740 () Bool)

(assert (=> b!545659 (=> (not res!339740) (not e!315386))))

(assert (=> b!545659 (= res!339740 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248996 #b00000000000000000000000000000000) (bvslt lt!248996 (size!16886 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545659 (= lt!248996 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545660 () Bool)

(declare-fun res!339734 () Bool)

(assert (=> b!545660 (=> (not res!339734) (not e!315389))))

(assert (=> b!545660 (= res!339734 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16886 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16886 a!3154)) (= (select (arr!16522 a!3154) resIndex!32) (select (arr!16522 a!3154) j!147))))))

(declare-fun b!545661 () Bool)

(assert (=> b!545661 (= e!315386 e!315388)))

(declare-fun res!339731 () Bool)

(assert (=> b!545661 (=> (not res!339731) (not e!315388))))

(declare-fun lt!248998 () SeekEntryResult!4987)

(declare-fun lt!248999 () SeekEntryResult!4987)

(assert (=> b!545661 (= res!339731 (and (= lt!248998 lt!249002) (= lt!248999 lt!248998)))))

(assert (=> b!545661 (= lt!248998 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248996 (select (arr!16522 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545662 () Bool)

(declare-fun res!339736 () Bool)

(assert (=> b!545662 (=> (not res!339736) (not e!315391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545662 (= res!339736 (validKeyInArray!0 (select (arr!16522 a!3154) j!147)))))

(declare-fun b!545663 () Bool)

(declare-fun res!339742 () Bool)

(assert (=> b!545663 (=> (not res!339742) (not e!315391))))

(assert (=> b!545663 (= res!339742 (and (= (size!16886 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16886 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16886 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545664 () Bool)

(assert (=> b!545664 (= e!315387 e!315390)))

(declare-fun res!339738 () Bool)

(assert (=> b!545664 (=> (not res!339738) (not e!315390))))

(assert (=> b!545664 (= res!339738 (and (= lt!248999 lt!248997) (not (= (select (arr!16522 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16522 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16522 a!3154) index!1177) (select (arr!16522 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545664 (= lt!248999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16522 a!3154) j!147) mask!3216) (select (arr!16522 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545665 () Bool)

(declare-fun res!339743 () Bool)

(assert (=> b!545665 (=> (not res!339743) (not e!315391))))

(declare-fun arrayContainsKey!0 (array!34395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545665 (= res!339743 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545666 () Bool)

(declare-fun res!339735 () Bool)

(assert (=> b!545666 (=> (not res!339735) (not e!315391))))

(assert (=> b!545666 (= res!339735 (validKeyInArray!0 k0!1998))))

(assert (= (and start!49626 res!339733) b!545663))

(assert (= (and b!545663 res!339742) b!545662))

(assert (= (and b!545662 res!339736) b!545666))

(assert (= (and b!545666 res!339735) b!545665))

(assert (= (and b!545665 res!339743) b!545656))

(assert (= (and b!545656 res!339741) b!545654))

(assert (= (and b!545654 res!339739) b!545657))

(assert (= (and b!545657 res!339737) b!545660))

(assert (= (and b!545660 res!339734) b!545655))

(assert (= (and b!545655 res!339732) b!545664))

(assert (= (and b!545664 res!339738) b!545659))

(assert (= (and b!545659 res!339740) b!545661))

(assert (= (and b!545661 res!339731) b!545658))

(declare-fun m!523235 () Bool)

(assert (=> start!49626 m!523235))

(declare-fun m!523237 () Bool)

(assert (=> start!49626 m!523237))

(declare-fun m!523239 () Bool)

(assert (=> b!545664 m!523239))

(declare-fun m!523241 () Bool)

(assert (=> b!545664 m!523241))

(assert (=> b!545664 m!523241))

(declare-fun m!523243 () Bool)

(assert (=> b!545664 m!523243))

(assert (=> b!545664 m!523243))

(assert (=> b!545664 m!523241))

(declare-fun m!523245 () Bool)

(assert (=> b!545664 m!523245))

(declare-fun m!523247 () Bool)

(assert (=> b!545656 m!523247))

(declare-fun m!523249 () Bool)

(assert (=> b!545660 m!523249))

(assert (=> b!545660 m!523241))

(assert (=> b!545662 m!523241))

(assert (=> b!545662 m!523241))

(declare-fun m!523251 () Bool)

(assert (=> b!545662 m!523251))

(assert (=> b!545661 m!523241))

(assert (=> b!545661 m!523241))

(declare-fun m!523253 () Bool)

(assert (=> b!545661 m!523253))

(declare-fun m!523255 () Bool)

(assert (=> b!545658 m!523255))

(declare-fun m!523257 () Bool)

(assert (=> b!545658 m!523257))

(assert (=> b!545658 m!523257))

(declare-fun m!523259 () Bool)

(assert (=> b!545658 m!523259))

(declare-fun m!523261 () Bool)

(assert (=> b!545658 m!523261))

(assert (=> b!545655 m!523241))

(assert (=> b!545655 m!523241))

(declare-fun m!523263 () Bool)

(assert (=> b!545655 m!523263))

(declare-fun m!523265 () Bool)

(assert (=> b!545657 m!523265))

(declare-fun m!523267 () Bool)

(assert (=> b!545654 m!523267))

(declare-fun m!523269 () Bool)

(assert (=> b!545666 m!523269))

(declare-fun m!523271 () Bool)

(assert (=> b!545659 m!523271))

(declare-fun m!523273 () Bool)

(assert (=> b!545665 m!523273))

(check-sat (not b!545654) (not b!545657) (not b!545661) (not b!545666) (not b!545659) (not b!545662) (not b!545656) (not b!545665) (not start!49626) (not b!545664) (not b!545658) (not b!545655))
(check-sat)
