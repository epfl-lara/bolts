; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86938 () Bool)

(assert start!86938)

(declare-fun b!1007679 () Bool)

(declare-fun res!676729 () Bool)

(declare-fun e!567115 () Bool)

(assert (=> b!1007679 (=> (not res!676729) (not e!567115))))

(declare-datatypes ((array!63538 0))(
  ( (array!63539 (arr!30586 (Array (_ BitVec 32) (_ BitVec 64))) (size!31089 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63538)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007679 (= res!676729 (and (= (size!31089 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31089 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31089 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007680 () Bool)

(declare-fun res!676728 () Bool)

(declare-fun e!567111 () Bool)

(assert (=> b!1007680 (=> (not res!676728) (not e!567111))))

(declare-datatypes ((SeekEntryResult!9518 0))(
  ( (MissingZero!9518 (index!40442 (_ BitVec 32))) (Found!9518 (index!40443 (_ BitVec 32))) (Intermediate!9518 (undefined!10330 Bool) (index!40444 (_ BitVec 32)) (x!87869 (_ BitVec 32))) (Undefined!9518) (MissingVacant!9518 (index!40445 (_ BitVec 32))) )
))
(declare-fun lt!445329 () SeekEntryResult!9518)

(declare-fun lt!445334 () (_ BitVec 64))

(declare-fun lt!445330 () array!63538)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63538 (_ BitVec 32)) SeekEntryResult!9518)

(assert (=> b!1007680 (= res!676728 (not (= lt!445329 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445334 lt!445330 mask!3464))))))

(declare-fun b!1007681 () Bool)

(declare-fun e!567112 () Bool)

(assert (=> b!1007681 (= e!567112 e!567111)))

(declare-fun res!676735 () Bool)

(assert (=> b!1007681 (=> (not res!676735) (not e!567111))))

(declare-fun lt!445331 () SeekEntryResult!9518)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007681 (= res!676735 (not (= lt!445331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445334 mask!3464) lt!445334 lt!445330 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1007681 (= lt!445334 (select (store (arr!30586 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007681 (= lt!445330 (array!63539 (store (arr!30586 a!3219) i!1194 k!2224) (size!31089 a!3219)))))

(declare-fun b!1007683 () Bool)

(declare-fun res!676732 () Bool)

(assert (=> b!1007683 (=> (not res!676732) (not e!567111))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1007683 (= res!676732 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007684 () Bool)

(declare-fun res!676738 () Bool)

(declare-fun e!567114 () Bool)

(assert (=> b!1007684 (=> (not res!676738) (not e!567114))))

(declare-datatypes ((List!21388 0))(
  ( (Nil!21385) (Cons!21384 (h!22570 (_ BitVec 64)) (t!30397 List!21388)) )
))
(declare-fun arrayNoDuplicates!0 (array!63538 (_ BitVec 32) List!21388) Bool)

(assert (=> b!1007684 (= res!676738 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21385))))

(declare-fun b!1007685 () Bool)

(assert (=> b!1007685 (= e!567111 false)))

(declare-fun lt!445335 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007685 (= lt!445335 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007686 () Bool)

(declare-fun res!676740 () Bool)

(assert (=> b!1007686 (=> (not res!676740) (not e!567115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007686 (= res!676740 (validKeyInArray!0 k!2224))))

(declare-fun b!1007687 () Bool)

(declare-fun res!676736 () Bool)

(assert (=> b!1007687 (=> (not res!676736) (not e!567114))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007687 (= res!676736 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31089 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31089 a!3219))))))

(declare-fun b!1007688 () Bool)

(declare-fun res!676733 () Bool)

(assert (=> b!1007688 (=> (not res!676733) (not e!567115))))

(declare-fun arrayContainsKey!0 (array!63538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007688 (= res!676733 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007689 () Bool)

(declare-fun e!567113 () Bool)

(assert (=> b!1007689 (= e!567113 e!567112)))

(declare-fun res!676739 () Bool)

(assert (=> b!1007689 (=> (not res!676739) (not e!567112))))

(declare-fun lt!445332 () SeekEntryResult!9518)

(assert (=> b!1007689 (= res!676739 (= lt!445329 lt!445332))))

(assert (=> b!1007689 (= lt!445329 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30586 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007690 () Bool)

(assert (=> b!1007690 (= e!567115 e!567114)))

(declare-fun res!676737 () Bool)

(assert (=> b!1007690 (=> (not res!676737) (not e!567114))))

(declare-fun lt!445333 () SeekEntryResult!9518)

(assert (=> b!1007690 (= res!676737 (or (= lt!445333 (MissingVacant!9518 i!1194)) (= lt!445333 (MissingZero!9518 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63538 (_ BitVec 32)) SeekEntryResult!9518)

(assert (=> b!1007690 (= lt!445333 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!676731 () Bool)

(assert (=> start!86938 (=> (not res!676731) (not e!567115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86938 (= res!676731 (validMask!0 mask!3464))))

(assert (=> start!86938 e!567115))

(declare-fun array_inv!23576 (array!63538) Bool)

(assert (=> start!86938 (array_inv!23576 a!3219)))

(assert (=> start!86938 true))

(declare-fun b!1007682 () Bool)

(assert (=> b!1007682 (= e!567114 e!567113)))

(declare-fun res!676741 () Bool)

(assert (=> b!1007682 (=> (not res!676741) (not e!567113))))

(assert (=> b!1007682 (= res!676741 (= lt!445331 lt!445332))))

(assert (=> b!1007682 (= lt!445332 (Intermediate!9518 false resIndex!38 resX!38))))

(assert (=> b!1007682 (= lt!445331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30586 a!3219) j!170) mask!3464) (select (arr!30586 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007691 () Bool)

(declare-fun res!676734 () Bool)

(assert (=> b!1007691 (=> (not res!676734) (not e!567115))))

(assert (=> b!1007691 (= res!676734 (validKeyInArray!0 (select (arr!30586 a!3219) j!170)))))

(declare-fun b!1007692 () Bool)

(declare-fun res!676730 () Bool)

(assert (=> b!1007692 (=> (not res!676730) (not e!567114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63538 (_ BitVec 32)) Bool)

(assert (=> b!1007692 (= res!676730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86938 res!676731) b!1007679))

(assert (= (and b!1007679 res!676729) b!1007691))

(assert (= (and b!1007691 res!676734) b!1007686))

(assert (= (and b!1007686 res!676740) b!1007688))

(assert (= (and b!1007688 res!676733) b!1007690))

(assert (= (and b!1007690 res!676737) b!1007692))

(assert (= (and b!1007692 res!676730) b!1007684))

(assert (= (and b!1007684 res!676738) b!1007687))

(assert (= (and b!1007687 res!676736) b!1007682))

(assert (= (and b!1007682 res!676741) b!1007689))

(assert (= (and b!1007689 res!676739) b!1007681))

(assert (= (and b!1007681 res!676735) b!1007680))

(assert (= (and b!1007680 res!676728) b!1007683))

(assert (= (and b!1007683 res!676732) b!1007685))

(declare-fun m!932631 () Bool)

(assert (=> b!1007682 m!932631))

(assert (=> b!1007682 m!932631))

(declare-fun m!932633 () Bool)

(assert (=> b!1007682 m!932633))

(assert (=> b!1007682 m!932633))

(assert (=> b!1007682 m!932631))

(declare-fun m!932635 () Bool)

(assert (=> b!1007682 m!932635))

(declare-fun m!932637 () Bool)

(assert (=> b!1007681 m!932637))

(assert (=> b!1007681 m!932637))

(declare-fun m!932639 () Bool)

(assert (=> b!1007681 m!932639))

(declare-fun m!932641 () Bool)

(assert (=> b!1007681 m!932641))

(declare-fun m!932643 () Bool)

(assert (=> b!1007681 m!932643))

(declare-fun m!932645 () Bool)

(assert (=> b!1007685 m!932645))

(declare-fun m!932647 () Bool)

(assert (=> b!1007686 m!932647))

(declare-fun m!932649 () Bool)

(assert (=> b!1007690 m!932649))

(declare-fun m!932651 () Bool)

(assert (=> b!1007688 m!932651))

(declare-fun m!932653 () Bool)

(assert (=> b!1007680 m!932653))

(assert (=> b!1007689 m!932631))

(assert (=> b!1007689 m!932631))

(declare-fun m!932655 () Bool)

(assert (=> b!1007689 m!932655))

(declare-fun m!932657 () Bool)

(assert (=> b!1007692 m!932657))

(assert (=> b!1007691 m!932631))

(assert (=> b!1007691 m!932631))

(declare-fun m!932659 () Bool)

(assert (=> b!1007691 m!932659))

(declare-fun m!932661 () Bool)

(assert (=> start!86938 m!932661))

(declare-fun m!932663 () Bool)

(assert (=> start!86938 m!932663))

(declare-fun m!932665 () Bool)

(assert (=> b!1007684 m!932665))

(push 1)

(assert (not b!1007680))

(assert (not b!1007692))

(assert (not b!1007690))

(assert (not b!1007689))

(assert (not b!1007685))

(assert (not b!1007681))

(assert (not b!1007682))

(assert (not b!1007688))

(assert (not b!1007691))

(assert (not start!86938))

(assert (not b!1007684))

