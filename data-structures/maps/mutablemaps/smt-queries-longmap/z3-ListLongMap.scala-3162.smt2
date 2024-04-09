; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44610 () Bool)

(assert start!44610)

(declare-fun res!292080 () Bool)

(declare-fun e!287637 () Bool)

(assert (=> start!44610 (=> (not res!292080) (not e!287637))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44610 (= res!292080 (validMask!0 mask!3524))))

(assert (=> start!44610 e!287637))

(assert (=> start!44610 true))

(declare-datatypes ((array!31629 0))(
  ( (array!31630 (arr!15199 (Array (_ BitVec 32) (_ BitVec 64))) (size!15563 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31629)

(declare-fun array_inv!10973 (array!31629) Bool)

(assert (=> start!44610 (array_inv!10973 a!3235)))

(declare-fun b!488988 () Bool)

(declare-fun res!292079 () Bool)

(assert (=> b!488988 (=> (not res!292079) (not e!287637))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488988 (= res!292079 (and (= (size!15563 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15563 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15563 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488989 () Bool)

(declare-fun e!287638 () Bool)

(assert (=> b!488989 (= e!287638 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!220662 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488989 (= lt!220662 (toIndex!0 (select (store (arr!15199 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(declare-fun e!287635 () Bool)

(assert (=> b!488989 e!287635))

(declare-fun res!292077 () Bool)

(assert (=> b!488989 (=> (not res!292077) (not e!287635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31629 (_ BitVec 32)) Bool)

(assert (=> b!488989 (= res!292077 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14284 0))(
  ( (Unit!14285) )
))
(declare-fun lt!220664 () Unit!14284)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14284)

(assert (=> b!488989 (= lt!220664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488990 () Bool)

(declare-fun res!292075 () Bool)

(assert (=> b!488990 (=> (not res!292075) (not e!287637))))

(declare-fun arrayContainsKey!0 (array!31629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488990 (= res!292075 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488991 () Bool)

(declare-fun res!292078 () Bool)

(assert (=> b!488991 (=> (not res!292078) (not e!287638))))

(assert (=> b!488991 (= res!292078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488992 () Bool)

(declare-fun res!292076 () Bool)

(assert (=> b!488992 (=> (not res!292076) (not e!287638))))

(declare-datatypes ((List!9410 0))(
  ( (Nil!9407) (Cons!9406 (h!10268 (_ BitVec 64)) (t!15646 List!9410)) )
))
(declare-fun arrayNoDuplicates!0 (array!31629 (_ BitVec 32) List!9410) Bool)

(assert (=> b!488992 (= res!292076 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9407))))

(declare-fun b!488993 () Bool)

(declare-datatypes ((SeekEntryResult!3673 0))(
  ( (MissingZero!3673 (index!16871 (_ BitVec 32))) (Found!3673 (index!16872 (_ BitVec 32))) (Intermediate!3673 (undefined!4485 Bool) (index!16873 (_ BitVec 32)) (x!46014 (_ BitVec 32))) (Undefined!3673) (MissingVacant!3673 (index!16874 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31629 (_ BitVec 32)) SeekEntryResult!3673)

(assert (=> b!488993 (= e!287635 (= (seekEntryOrOpen!0 (select (arr!15199 a!3235) j!176) a!3235 mask!3524) (Found!3673 j!176)))))

(declare-fun b!488994 () Bool)

(assert (=> b!488994 (= e!287637 e!287638)))

(declare-fun res!292081 () Bool)

(assert (=> b!488994 (=> (not res!292081) (not e!287638))))

(declare-fun lt!220663 () SeekEntryResult!3673)

(assert (=> b!488994 (= res!292081 (or (= lt!220663 (MissingZero!3673 i!1204)) (= lt!220663 (MissingVacant!3673 i!1204))))))

(assert (=> b!488994 (= lt!220663 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!488995 () Bool)

(declare-fun res!292074 () Bool)

(assert (=> b!488995 (=> (not res!292074) (not e!287637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488995 (= res!292074 (validKeyInArray!0 (select (arr!15199 a!3235) j!176)))))

(declare-fun b!488996 () Bool)

(declare-fun res!292082 () Bool)

(assert (=> b!488996 (=> (not res!292082) (not e!287637))))

(assert (=> b!488996 (= res!292082 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44610 res!292080) b!488988))

(assert (= (and b!488988 res!292079) b!488995))

(assert (= (and b!488995 res!292074) b!488996))

(assert (= (and b!488996 res!292082) b!488990))

(assert (= (and b!488990 res!292075) b!488994))

(assert (= (and b!488994 res!292081) b!488991))

(assert (= (and b!488991 res!292078) b!488992))

(assert (= (and b!488992 res!292076) b!488989))

(assert (= (and b!488989 res!292077) b!488993))

(declare-fun m!468751 () Bool)

(assert (=> start!44610 m!468751))

(declare-fun m!468753 () Bool)

(assert (=> start!44610 m!468753))

(declare-fun m!468755 () Bool)

(assert (=> b!488993 m!468755))

(assert (=> b!488993 m!468755))

(declare-fun m!468757 () Bool)

(assert (=> b!488993 m!468757))

(declare-fun m!468759 () Bool)

(assert (=> b!488992 m!468759))

(declare-fun m!468761 () Bool)

(assert (=> b!488996 m!468761))

(declare-fun m!468763 () Bool)

(assert (=> b!488990 m!468763))

(declare-fun m!468765 () Bool)

(assert (=> b!488994 m!468765))

(assert (=> b!488995 m!468755))

(assert (=> b!488995 m!468755))

(declare-fun m!468767 () Bool)

(assert (=> b!488995 m!468767))

(declare-fun m!468769 () Bool)

(assert (=> b!488989 m!468769))

(declare-fun m!468771 () Bool)

(assert (=> b!488989 m!468771))

(declare-fun m!468773 () Bool)

(assert (=> b!488989 m!468773))

(declare-fun m!468775 () Bool)

(assert (=> b!488989 m!468775))

(assert (=> b!488989 m!468773))

(declare-fun m!468777 () Bool)

(assert (=> b!488989 m!468777))

(declare-fun m!468779 () Bool)

(assert (=> b!488991 m!468779))

(check-sat (not b!488993) (not b!488991) (not b!488996) (not start!44610) (not b!488995) (not b!488990) (not b!488994) (not b!488992) (not b!488989))
(check-sat)
