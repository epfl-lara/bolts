; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86942 () Bool)

(assert start!86942)

(declare-fun b!1007763 () Bool)

(declare-fun e!567147 () Bool)

(declare-fun e!567149 () Bool)

(assert (=> b!1007763 (= e!567147 e!567149)))

(declare-fun res!676823 () Bool)

(assert (=> b!1007763 (=> (not res!676823) (not e!567149))))

(declare-datatypes ((SeekEntryResult!9520 0))(
  ( (MissingZero!9520 (index!40450 (_ BitVec 32))) (Found!9520 (index!40451 (_ BitVec 32))) (Intermediate!9520 (undefined!10332 Bool) (index!40452 (_ BitVec 32)) (x!87871 (_ BitVec 32))) (Undefined!9520) (MissingVacant!9520 (index!40453 (_ BitVec 32))) )
))
(declare-fun lt!445376 () SeekEntryResult!9520)

(declare-fun lt!445371 () SeekEntryResult!9520)

(assert (=> b!1007763 (= res!676823 (= lt!445376 lt!445371))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007763 (= lt!445371 (Intermediate!9520 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((array!63542 0))(
  ( (array!63543 (arr!30588 (Array (_ BitVec 32) (_ BitVec 64))) (size!31091 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63542)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63542 (_ BitVec 32)) SeekEntryResult!9520)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007763 (= lt!445376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30588 a!3219) j!170) mask!3464) (select (arr!30588 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!676812 () Bool)

(declare-fun e!567148 () Bool)

(assert (=> start!86942 (=> (not res!676812) (not e!567148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86942 (= res!676812 (validMask!0 mask!3464))))

(assert (=> start!86942 e!567148))

(declare-fun array_inv!23578 (array!63542) Bool)

(assert (=> start!86942 (array_inv!23578 a!3219)))

(assert (=> start!86942 true))

(declare-fun b!1007764 () Bool)

(declare-fun res!676821 () Bool)

(declare-fun e!567152 () Bool)

(assert (=> b!1007764 (=> (not res!676821) (not e!567152))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007764 (= res!676821 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007765 () Bool)

(declare-fun e!567150 () Bool)

(assert (=> b!1007765 (= e!567150 e!567152)))

(declare-fun res!676815 () Bool)

(assert (=> b!1007765 (=> (not res!676815) (not e!567152))))

(declare-fun lt!445377 () array!63542)

(declare-fun lt!445375 () (_ BitVec 64))

(assert (=> b!1007765 (= res!676815 (not (= lt!445376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445375 mask!3464) lt!445375 lt!445377 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1007765 (= lt!445375 (select (store (arr!30588 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007765 (= lt!445377 (array!63543 (store (arr!30588 a!3219) i!1194 k!2224) (size!31091 a!3219)))))

(declare-fun b!1007766 () Bool)

(assert (=> b!1007766 (= e!567152 false)))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!445374 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007766 (= lt!445374 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007767 () Bool)

(declare-fun res!676822 () Bool)

(assert (=> b!1007767 (=> (not res!676822) (not e!567148))))

(declare-fun arrayContainsKey!0 (array!63542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007767 (= res!676822 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007768 () Bool)

(assert (=> b!1007768 (= e!567149 e!567150)))

(declare-fun res!676817 () Bool)

(assert (=> b!1007768 (=> (not res!676817) (not e!567150))))

(declare-fun lt!445373 () SeekEntryResult!9520)

(assert (=> b!1007768 (= res!676817 (= lt!445373 lt!445371))))

(assert (=> b!1007768 (= lt!445373 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30588 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007769 () Bool)

(declare-fun res!676818 () Bool)

(assert (=> b!1007769 (=> (not res!676818) (not e!567147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63542 (_ BitVec 32)) Bool)

(assert (=> b!1007769 (= res!676818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007770 () Bool)

(declare-fun res!676819 () Bool)

(assert (=> b!1007770 (=> (not res!676819) (not e!567148))))

(assert (=> b!1007770 (= res!676819 (and (= (size!31091 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31091 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31091 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007771 () Bool)

(declare-fun res!676814 () Bool)

(assert (=> b!1007771 (=> (not res!676814) (not e!567147))))

(assert (=> b!1007771 (= res!676814 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31091 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31091 a!3219))))))

(declare-fun b!1007772 () Bool)

(declare-fun res!676816 () Bool)

(assert (=> b!1007772 (=> (not res!676816) (not e!567147))))

(declare-datatypes ((List!21390 0))(
  ( (Nil!21387) (Cons!21386 (h!22572 (_ BitVec 64)) (t!30399 List!21390)) )
))
(declare-fun arrayNoDuplicates!0 (array!63542 (_ BitVec 32) List!21390) Bool)

(assert (=> b!1007772 (= res!676816 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21387))))

(declare-fun b!1007773 () Bool)

(declare-fun res!676824 () Bool)

(assert (=> b!1007773 (=> (not res!676824) (not e!567148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007773 (= res!676824 (validKeyInArray!0 (select (arr!30588 a!3219) j!170)))))

(declare-fun b!1007774 () Bool)

(declare-fun res!676825 () Bool)

(assert (=> b!1007774 (=> (not res!676825) (not e!567152))))

(assert (=> b!1007774 (= res!676825 (not (= lt!445373 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445375 lt!445377 mask!3464))))))

(declare-fun b!1007775 () Bool)

(assert (=> b!1007775 (= e!567148 e!567147)))

(declare-fun res!676813 () Bool)

(assert (=> b!1007775 (=> (not res!676813) (not e!567147))))

(declare-fun lt!445372 () SeekEntryResult!9520)

(assert (=> b!1007775 (= res!676813 (or (= lt!445372 (MissingVacant!9520 i!1194)) (= lt!445372 (MissingZero!9520 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63542 (_ BitVec 32)) SeekEntryResult!9520)

(assert (=> b!1007775 (= lt!445372 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007776 () Bool)

(declare-fun res!676820 () Bool)

(assert (=> b!1007776 (=> (not res!676820) (not e!567148))))

(assert (=> b!1007776 (= res!676820 (validKeyInArray!0 k!2224))))

(assert (= (and start!86942 res!676812) b!1007770))

(assert (= (and b!1007770 res!676819) b!1007773))

(assert (= (and b!1007773 res!676824) b!1007776))

(assert (= (and b!1007776 res!676820) b!1007767))

(assert (= (and b!1007767 res!676822) b!1007775))

(assert (= (and b!1007775 res!676813) b!1007769))

(assert (= (and b!1007769 res!676818) b!1007772))

(assert (= (and b!1007772 res!676816) b!1007771))

(assert (= (and b!1007771 res!676814) b!1007763))

(assert (= (and b!1007763 res!676823) b!1007768))

(assert (= (and b!1007768 res!676817) b!1007765))

(assert (= (and b!1007765 res!676815) b!1007774))

(assert (= (and b!1007774 res!676825) b!1007764))

(assert (= (and b!1007764 res!676821) b!1007766))

(declare-fun m!932703 () Bool)

(assert (=> b!1007776 m!932703))

(declare-fun m!932705 () Bool)

(assert (=> b!1007773 m!932705))

(assert (=> b!1007773 m!932705))

(declare-fun m!932707 () Bool)

(assert (=> b!1007773 m!932707))

(declare-fun m!932709 () Bool)

(assert (=> start!86942 m!932709))

(declare-fun m!932711 () Bool)

(assert (=> start!86942 m!932711))

(declare-fun m!932713 () Bool)

(assert (=> b!1007765 m!932713))

(assert (=> b!1007765 m!932713))

(declare-fun m!932715 () Bool)

(assert (=> b!1007765 m!932715))

(declare-fun m!932717 () Bool)

(assert (=> b!1007765 m!932717))

(declare-fun m!932719 () Bool)

(assert (=> b!1007765 m!932719))

(assert (=> b!1007763 m!932705))

(assert (=> b!1007763 m!932705))

(declare-fun m!932721 () Bool)

(assert (=> b!1007763 m!932721))

(assert (=> b!1007763 m!932721))

(assert (=> b!1007763 m!932705))

(declare-fun m!932723 () Bool)

(assert (=> b!1007763 m!932723))

(declare-fun m!932725 () Bool)

(assert (=> b!1007767 m!932725))

(assert (=> b!1007768 m!932705))

(assert (=> b!1007768 m!932705))

(declare-fun m!932727 () Bool)

(assert (=> b!1007768 m!932727))

(declare-fun m!932729 () Bool)

(assert (=> b!1007774 m!932729))

(declare-fun m!932731 () Bool)

(assert (=> b!1007766 m!932731))

(declare-fun m!932733 () Bool)

(assert (=> b!1007769 m!932733))

(declare-fun m!932735 () Bool)

(assert (=> b!1007775 m!932735))

(declare-fun m!932737 () Bool)

(assert (=> b!1007772 m!932737))

(push 1)

