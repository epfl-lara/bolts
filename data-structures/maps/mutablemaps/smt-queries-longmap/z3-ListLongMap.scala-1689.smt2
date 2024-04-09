; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31028 () Bool)

(assert start!31028)

(declare-fun b!311694 () Bool)

(declare-fun e!194440 () Bool)

(declare-fun e!194438 () Bool)

(assert (=> b!311694 (= e!194440 e!194438)))

(declare-fun res!168310 () Bool)

(assert (=> b!311694 (=> (not res!168310) (not e!194438))))

(declare-datatypes ((array!15928 0))(
  ( (array!15929 (arr!7544 (Array (_ BitVec 32) (_ BitVec 64))) (size!7896 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15928)

(declare-datatypes ((SeekEntryResult!2695 0))(
  ( (MissingZero!2695 (index!12956 (_ BitVec 32))) (Found!2695 (index!12957 (_ BitVec 32))) (Intermediate!2695 (undefined!3507 Bool) (index!12958 (_ BitVec 32)) (x!31135 (_ BitVec 32))) (Undefined!2695) (MissingVacant!2695 (index!12959 (_ BitVec 32))) )
))
(declare-fun lt!152556 () SeekEntryResult!2695)

(declare-fun lt!152560 () SeekEntryResult!2695)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311694 (= res!168310 (and (= lt!152556 lt!152560) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7544 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15928 (_ BitVec 32)) SeekEntryResult!2695)

(assert (=> b!311694 (= lt!152556 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!311696 () Bool)

(declare-fun e!194436 () Bool)

(assert (=> b!311696 (= e!194436 e!194440)))

(declare-fun res!168307 () Bool)

(assert (=> b!311696 (=> (not res!168307) (not e!194440))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311696 (= res!168307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152560))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311696 (= lt!152560 (Intermediate!2695 false resIndex!52 resX!52))))

(declare-fun b!311697 () Bool)

(declare-fun res!168314 () Bool)

(assert (=> b!311697 (=> (not res!168314) (not e!194436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15928 (_ BitVec 32)) Bool)

(assert (=> b!311697 (= res!168314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311698 () Bool)

(declare-fun res!168309 () Bool)

(assert (=> b!311698 (=> (not res!168309) (not e!194436))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311698 (= res!168309 (and (= (size!7896 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7896 a!3293))))))

(declare-fun b!311699 () Bool)

(declare-fun res!168308 () Bool)

(assert (=> b!311699 (=> (not res!168308) (not e!194440))))

(assert (=> b!311699 (= res!168308 (and (= (select (arr!7544 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7896 a!3293))))))

(declare-fun b!311700 () Bool)

(declare-fun e!194437 () Bool)

(assert (=> b!311700 (= e!194438 (not e!194437))))

(declare-fun res!168306 () Bool)

(assert (=> b!311700 (=> res!168306 e!194437)))

(declare-fun lt!152554 () SeekEntryResult!2695)

(declare-fun lt!152555 () (_ BitVec 32))

(assert (=> b!311700 (= res!168306 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152555 #b00000000000000000000000000000000) (bvsge lt!152555 (size!7896 a!3293)) (not (= lt!152554 lt!152560))))))

(declare-fun lt!152557 () SeekEntryResult!2695)

(declare-fun lt!152558 () SeekEntryResult!2695)

(assert (=> b!311700 (= lt!152557 lt!152558)))

(declare-fun lt!152561 () array!15928)

(assert (=> b!311700 (= lt!152558 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152555 k0!2441 lt!152561 mask!3709))))

(assert (=> b!311700 (= lt!152557 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152561 mask!3709))))

(assert (=> b!311700 (= lt!152561 (array!15929 (store (arr!7544 a!3293) i!1240 k0!2441) (size!7896 a!3293)))))

(assert (=> b!311700 (= lt!152556 lt!152554)))

(assert (=> b!311700 (= lt!152554 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152555 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311700 (= lt!152555 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311701 () Bool)

(declare-fun res!168313 () Bool)

(assert (=> b!311701 (=> (not res!168313) (not e!194436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311701 (= res!168313 (validKeyInArray!0 k0!2441))))

(declare-fun b!311702 () Bool)

(assert (=> b!311702 (= e!194437 (bvsge mask!3709 #b00000000000000000000000000000000))))

(assert (=> b!311702 (= lt!152558 lt!152554)))

(declare-datatypes ((Unit!9588 0))(
  ( (Unit!9589) )
))
(declare-fun lt!152559 () Unit!9588)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15928 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9588)

(assert (=> b!311702 (= lt!152559 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152555 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311703 () Bool)

(declare-fun res!168311 () Bool)

(assert (=> b!311703 (=> (not res!168311) (not e!194436))))

(declare-fun arrayContainsKey!0 (array!15928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311703 (= res!168311 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!168312 () Bool)

(assert (=> start!31028 (=> (not res!168312) (not e!194436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31028 (= res!168312 (validMask!0 mask!3709))))

(assert (=> start!31028 e!194436))

(declare-fun array_inv!5498 (array!15928) Bool)

(assert (=> start!31028 (array_inv!5498 a!3293)))

(assert (=> start!31028 true))

(declare-fun b!311695 () Bool)

(declare-fun res!168315 () Bool)

(assert (=> b!311695 (=> (not res!168315) (not e!194436))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15928 (_ BitVec 32)) SeekEntryResult!2695)

(assert (=> b!311695 (= res!168315 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2695 i!1240)))))

(assert (= (and start!31028 res!168312) b!311698))

(assert (= (and b!311698 res!168309) b!311701))

(assert (= (and b!311701 res!168313) b!311703))

(assert (= (and b!311703 res!168311) b!311695))

(assert (= (and b!311695 res!168315) b!311697))

(assert (= (and b!311697 res!168314) b!311696))

(assert (= (and b!311696 res!168307) b!311699))

(assert (= (and b!311699 res!168308) b!311694))

(assert (= (and b!311694 res!168310) b!311700))

(assert (= (and b!311700 (not res!168306)) b!311702))

(declare-fun m!321749 () Bool)

(assert (=> b!311702 m!321749))

(declare-fun m!321751 () Bool)

(assert (=> b!311703 m!321751))

(declare-fun m!321753 () Bool)

(assert (=> start!31028 m!321753))

(declare-fun m!321755 () Bool)

(assert (=> start!31028 m!321755))

(declare-fun m!321757 () Bool)

(assert (=> b!311696 m!321757))

(assert (=> b!311696 m!321757))

(declare-fun m!321759 () Bool)

(assert (=> b!311696 m!321759))

(declare-fun m!321761 () Bool)

(assert (=> b!311699 m!321761))

(declare-fun m!321763 () Bool)

(assert (=> b!311695 m!321763))

(declare-fun m!321765 () Bool)

(assert (=> b!311697 m!321765))

(declare-fun m!321767 () Bool)

(assert (=> b!311701 m!321767))

(declare-fun m!321769 () Bool)

(assert (=> b!311694 m!321769))

(declare-fun m!321771 () Bool)

(assert (=> b!311694 m!321771))

(declare-fun m!321773 () Bool)

(assert (=> b!311700 m!321773))

(declare-fun m!321775 () Bool)

(assert (=> b!311700 m!321775))

(declare-fun m!321777 () Bool)

(assert (=> b!311700 m!321777))

(declare-fun m!321779 () Bool)

(assert (=> b!311700 m!321779))

(declare-fun m!321781 () Bool)

(assert (=> b!311700 m!321781))

(check-sat (not b!311700) (not b!311695) (not b!311702) (not b!311703) (not b!311696) (not b!311694) (not start!31028) (not b!311697) (not b!311701))
(check-sat)
