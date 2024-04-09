; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45288 () Bool)

(assert start!45288)

(declare-fun b!497215 () Bool)

(declare-fun res!299759 () Bool)

(declare-fun e!291456 () Bool)

(assert (=> b!497215 (=> res!299759 e!291456)))

(declare-datatypes ((SeekEntryResult!3922 0))(
  ( (MissingZero!3922 (index!17867 (_ BitVec 32))) (Found!3922 (index!17868 (_ BitVec 32))) (Intermediate!3922 (undefined!4734 Bool) (index!17869 (_ BitVec 32)) (x!46945 (_ BitVec 32))) (Undefined!3922) (MissingVacant!3922 (index!17870 (_ BitVec 32))) )
))
(declare-fun lt!225146 () SeekEntryResult!3922)

(get-info :version)

(assert (=> b!497215 (= res!299759 (or (undefined!4734 lt!225146) (not ((_ is Intermediate!3922) lt!225146))))))

(declare-fun b!497216 () Bool)

(declare-fun res!299752 () Bool)

(declare-fun e!291458 () Bool)

(assert (=> b!497216 (=> (not res!299752) (not e!291458))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32136 0))(
  ( (array!32137 (arr!15448 (Array (_ BitVec 32) (_ BitVec 64))) (size!15812 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32136)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!497216 (= res!299752 (and (= (size!15812 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15812 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15812 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!299754 () Bool)

(assert (=> start!45288 (=> (not res!299754) (not e!291458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45288 (= res!299754 (validMask!0 mask!3524))))

(assert (=> start!45288 e!291458))

(assert (=> start!45288 true))

(declare-fun array_inv!11222 (array!32136) Bool)

(assert (=> start!45288 (array_inv!11222 a!3235)))

(declare-fun b!497217 () Bool)

(declare-fun res!299757 () Bool)

(assert (=> b!497217 (=> (not res!299757) (not e!291458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497217 (= res!299757 (validKeyInArray!0 (select (arr!15448 a!3235) j!176)))))

(declare-fun b!497218 () Bool)

(assert (=> b!497218 (= e!291456 true)))

(assert (=> b!497218 (and (bvslt (x!46945 lt!225146) #b01111111111111111111111111111110) (or (= (select (arr!15448 a!3235) (index!17869 lt!225146)) (select (arr!15448 a!3235) j!176)) (= (select (arr!15448 a!3235) (index!17869 lt!225146)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15448 a!3235) (index!17869 lt!225146)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497219 () Bool)

(declare-fun e!291459 () Bool)

(assert (=> b!497219 (= e!291459 (not e!291456))))

(declare-fun res!299753 () Bool)

(assert (=> b!497219 (=> res!299753 e!291456)))

(declare-fun lt!225148 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32136 (_ BitVec 32)) SeekEntryResult!3922)

(assert (=> b!497219 (= res!299753 (= lt!225146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225148 (select (store (arr!15448 a!3235) i!1204 k0!2280) j!176) (array!32137 (store (arr!15448 a!3235) i!1204 k0!2280) (size!15812 a!3235)) mask!3524)))))

(declare-fun lt!225145 () (_ BitVec 32))

(assert (=> b!497219 (= lt!225146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225145 (select (arr!15448 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497219 (= lt!225148 (toIndex!0 (select (store (arr!15448 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!497219 (= lt!225145 (toIndex!0 (select (arr!15448 a!3235) j!176) mask!3524))))

(declare-fun e!291460 () Bool)

(assert (=> b!497219 e!291460))

(declare-fun res!299758 () Bool)

(assert (=> b!497219 (=> (not res!299758) (not e!291460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32136 (_ BitVec 32)) Bool)

(assert (=> b!497219 (= res!299758 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14782 0))(
  ( (Unit!14783) )
))
(declare-fun lt!225147 () Unit!14782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14782)

(assert (=> b!497219 (= lt!225147 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497220 () Bool)

(declare-fun res!299755 () Bool)

(assert (=> b!497220 (=> (not res!299755) (not e!291459))))

(declare-datatypes ((List!9659 0))(
  ( (Nil!9656) (Cons!9655 (h!10526 (_ BitVec 64)) (t!15895 List!9659)) )
))
(declare-fun arrayNoDuplicates!0 (array!32136 (_ BitVec 32) List!9659) Bool)

(assert (=> b!497220 (= res!299755 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9656))))

(declare-fun b!497221 () Bool)

(declare-fun res!299761 () Bool)

(assert (=> b!497221 (=> (not res!299761) (not e!291459))))

(assert (=> b!497221 (= res!299761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497222 () Bool)

(declare-fun res!299760 () Bool)

(assert (=> b!497222 (=> (not res!299760) (not e!291458))))

(declare-fun arrayContainsKey!0 (array!32136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497222 (= res!299760 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497223 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32136 (_ BitVec 32)) SeekEntryResult!3922)

(assert (=> b!497223 (= e!291460 (= (seekEntryOrOpen!0 (select (arr!15448 a!3235) j!176) a!3235 mask!3524) (Found!3922 j!176)))))

(declare-fun b!497224 () Bool)

(declare-fun res!299756 () Bool)

(assert (=> b!497224 (=> (not res!299756) (not e!291458))))

(assert (=> b!497224 (= res!299756 (validKeyInArray!0 k0!2280))))

(declare-fun b!497225 () Bool)

(assert (=> b!497225 (= e!291458 e!291459)))

(declare-fun res!299762 () Bool)

(assert (=> b!497225 (=> (not res!299762) (not e!291459))))

(declare-fun lt!225149 () SeekEntryResult!3922)

(assert (=> b!497225 (= res!299762 (or (= lt!225149 (MissingZero!3922 i!1204)) (= lt!225149 (MissingVacant!3922 i!1204))))))

(assert (=> b!497225 (= lt!225149 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45288 res!299754) b!497216))

(assert (= (and b!497216 res!299752) b!497217))

(assert (= (and b!497217 res!299757) b!497224))

(assert (= (and b!497224 res!299756) b!497222))

(assert (= (and b!497222 res!299760) b!497225))

(assert (= (and b!497225 res!299762) b!497221))

(assert (= (and b!497221 res!299761) b!497220))

(assert (= (and b!497220 res!299755) b!497219))

(assert (= (and b!497219 res!299758) b!497223))

(assert (= (and b!497219 (not res!299753)) b!497215))

(assert (= (and b!497215 (not res!299759)) b!497218))

(declare-fun m!478635 () Bool)

(assert (=> b!497223 m!478635))

(assert (=> b!497223 m!478635))

(declare-fun m!478637 () Bool)

(assert (=> b!497223 m!478637))

(declare-fun m!478639 () Bool)

(assert (=> b!497219 m!478639))

(declare-fun m!478641 () Bool)

(assert (=> b!497219 m!478641))

(declare-fun m!478643 () Bool)

(assert (=> b!497219 m!478643))

(assert (=> b!497219 m!478635))

(declare-fun m!478645 () Bool)

(assert (=> b!497219 m!478645))

(assert (=> b!497219 m!478643))

(declare-fun m!478647 () Bool)

(assert (=> b!497219 m!478647))

(assert (=> b!497219 m!478635))

(declare-fun m!478649 () Bool)

(assert (=> b!497219 m!478649))

(assert (=> b!497219 m!478635))

(declare-fun m!478651 () Bool)

(assert (=> b!497219 m!478651))

(assert (=> b!497219 m!478643))

(declare-fun m!478653 () Bool)

(assert (=> b!497219 m!478653))

(declare-fun m!478655 () Bool)

(assert (=> start!45288 m!478655))

(declare-fun m!478657 () Bool)

(assert (=> start!45288 m!478657))

(declare-fun m!478659 () Bool)

(assert (=> b!497220 m!478659))

(declare-fun m!478661 () Bool)

(assert (=> b!497222 m!478661))

(assert (=> b!497217 m!478635))

(assert (=> b!497217 m!478635))

(declare-fun m!478663 () Bool)

(assert (=> b!497217 m!478663))

(declare-fun m!478665 () Bool)

(assert (=> b!497225 m!478665))

(declare-fun m!478667 () Bool)

(assert (=> b!497218 m!478667))

(assert (=> b!497218 m!478635))

(declare-fun m!478669 () Bool)

(assert (=> b!497224 m!478669))

(declare-fun m!478671 () Bool)

(assert (=> b!497221 m!478671))

(check-sat (not b!497220) (not b!497225) (not b!497219) (not b!497223) (not b!497221) (not start!45288) (not b!497222) (not b!497217) (not b!497224))
(check-sat)
