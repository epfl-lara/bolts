; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31086 () Bool)

(assert start!31086)

(declare-fun res!169180 () Bool)

(declare-fun e!194871 () Bool)

(assert (=> start!31086 (=> (not res!169180) (not e!194871))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31086 (= res!169180 (validMask!0 mask!3709))))

(assert (=> start!31086 e!194871))

(declare-datatypes ((array!15986 0))(
  ( (array!15987 (arr!7573 (Array (_ BitVec 32) (_ BitVec 64))) (size!7925 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15986)

(declare-fun array_inv!5527 (array!15986) Bool)

(assert (=> start!31086 (array_inv!5527 a!3293)))

(assert (=> start!31086 true))

(declare-fun b!312564 () Bool)

(declare-fun e!194872 () Bool)

(declare-fun e!194873 () Bool)

(assert (=> b!312564 (= e!194872 (not e!194873))))

(declare-fun res!169183 () Bool)

(assert (=> b!312564 (=> res!169183 e!194873)))

(declare-datatypes ((SeekEntryResult!2724 0))(
  ( (MissingZero!2724 (index!13072 (_ BitVec 32))) (Found!2724 (index!13073 (_ BitVec 32))) (Intermediate!2724 (undefined!3536 Bool) (index!13074 (_ BitVec 32)) (x!31244 (_ BitVec 32))) (Undefined!2724) (MissingVacant!2724 (index!13075 (_ BitVec 32))) )
))
(declare-fun lt!153256 () SeekEntryResult!2724)

(declare-fun lt!153250 () SeekEntryResult!2724)

(declare-fun lt!153253 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312564 (= res!169183 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153253 #b00000000000000000000000000000000) (bvsge lt!153253 (size!7925 a!3293)) (not (= lt!153256 lt!153250))))))

(declare-fun lt!153251 () SeekEntryResult!2724)

(declare-fun lt!153252 () SeekEntryResult!2724)

(assert (=> b!312564 (= lt!153251 lt!153252)))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun lt!153255 () array!15986)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15986 (_ BitVec 32)) SeekEntryResult!2724)

(assert (=> b!312564 (= lt!153252 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153253 k!2441 lt!153255 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312564 (= lt!153251 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153255 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312564 (= lt!153255 (array!15987 (store (arr!7573 a!3293) i!1240 k!2441) (size!7925 a!3293)))))

(declare-fun lt!153254 () SeekEntryResult!2724)

(assert (=> b!312564 (= lt!153254 lt!153256)))

(assert (=> b!312564 (= lt!153256 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153253 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312564 (= lt!153253 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312565 () Bool)

(declare-fun res!169178 () Bool)

(assert (=> b!312565 (=> (not res!169178) (not e!194871))))

(declare-fun arrayContainsKey!0 (array!15986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312565 (= res!169178 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312566 () Bool)

(declare-fun e!194875 () Bool)

(assert (=> b!312566 (= e!194871 e!194875)))

(declare-fun res!169185 () Bool)

(assert (=> b!312566 (=> (not res!169185) (not e!194875))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312566 (= res!169185 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153250))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!312566 (= lt!153250 (Intermediate!2724 false resIndex!52 resX!52))))

(declare-fun b!312567 () Bool)

(assert (=> b!312567 (= e!194873 true)))

(assert (=> b!312567 (= lt!153252 lt!153256)))

(declare-datatypes ((Unit!9646 0))(
  ( (Unit!9647) )
))
(declare-fun lt!153257 () Unit!9646)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15986 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9646)

(assert (=> b!312567 (= lt!153257 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153253 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312568 () Bool)

(declare-fun res!169177 () Bool)

(assert (=> b!312568 (=> (not res!169177) (not e!194871))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15986 (_ BitVec 32)) SeekEntryResult!2724)

(assert (=> b!312568 (= res!169177 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2724 i!1240)))))

(declare-fun b!312569 () Bool)

(assert (=> b!312569 (= e!194875 e!194872)))

(declare-fun res!169179 () Bool)

(assert (=> b!312569 (=> (not res!169179) (not e!194872))))

(assert (=> b!312569 (= res!169179 (and (= lt!153254 lt!153250) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7573 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312569 (= lt!153254 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312570 () Bool)

(declare-fun res!169184 () Bool)

(assert (=> b!312570 (=> (not res!169184) (not e!194871))))

(assert (=> b!312570 (= res!169184 (and (= (size!7925 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7925 a!3293))))))

(declare-fun b!312571 () Bool)

(declare-fun res!169176 () Bool)

(assert (=> b!312571 (=> (not res!169176) (not e!194871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15986 (_ BitVec 32)) Bool)

(assert (=> b!312571 (= res!169176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312572 () Bool)

(declare-fun res!169181 () Bool)

(assert (=> b!312572 (=> (not res!169181) (not e!194871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312572 (= res!169181 (validKeyInArray!0 k!2441))))

(declare-fun b!312573 () Bool)

(declare-fun res!169182 () Bool)

(assert (=> b!312573 (=> (not res!169182) (not e!194875))))

(assert (=> b!312573 (= res!169182 (and (= (select (arr!7573 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7925 a!3293))))))

(assert (= (and start!31086 res!169180) b!312570))

(assert (= (and b!312570 res!169184) b!312572))

(assert (= (and b!312572 res!169181) b!312565))

(assert (= (and b!312565 res!169178) b!312568))

(assert (= (and b!312568 res!169177) b!312571))

(assert (= (and b!312571 res!169176) b!312566))

(assert (= (and b!312566 res!169185) b!312573))

(assert (= (and b!312573 res!169182) b!312569))

(assert (= (and b!312569 res!169179) b!312564))

(assert (= (and b!312564 (not res!169183)) b!312567))

(declare-fun m!322735 () Bool)

(assert (=> b!312565 m!322735))

(declare-fun m!322737 () Bool)

(assert (=> b!312573 m!322737))

(declare-fun m!322739 () Bool)

(assert (=> b!312572 m!322739))

(declare-fun m!322741 () Bool)

(assert (=> b!312567 m!322741))

(declare-fun m!322743 () Bool)

(assert (=> start!31086 m!322743))

(declare-fun m!322745 () Bool)

(assert (=> start!31086 m!322745))

(declare-fun m!322747 () Bool)

(assert (=> b!312564 m!322747))

(declare-fun m!322749 () Bool)

(assert (=> b!312564 m!322749))

(declare-fun m!322751 () Bool)

(assert (=> b!312564 m!322751))

(declare-fun m!322753 () Bool)

(assert (=> b!312564 m!322753))

(declare-fun m!322755 () Bool)

(assert (=> b!312564 m!322755))

(declare-fun m!322757 () Bool)

(assert (=> b!312569 m!322757))

(declare-fun m!322759 () Bool)

(assert (=> b!312569 m!322759))

(declare-fun m!322761 () Bool)

(assert (=> b!312568 m!322761))

(declare-fun m!322763 () Bool)

(assert (=> b!312566 m!322763))

(assert (=> b!312566 m!322763))

(declare-fun m!322765 () Bool)

(assert (=> b!312566 m!322765))

(declare-fun m!322767 () Bool)

(assert (=> b!312571 m!322767))

(push 1)

