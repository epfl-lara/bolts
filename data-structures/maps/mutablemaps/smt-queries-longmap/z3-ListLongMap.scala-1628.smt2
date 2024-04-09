; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30554 () Bool)

(assert start!30554)

(declare-fun b!305711 () Bool)

(declare-fun res!162929 () Bool)

(declare-fun e!191883 () Bool)

(assert (=> b!305711 (=> (not res!162929) (not e!191883))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305711 (= res!162929 (validKeyInArray!0 k0!2441))))

(declare-fun b!305712 () Bool)

(declare-fun res!162932 () Bool)

(declare-fun e!191881 () Bool)

(assert (=> b!305712 (=> (not res!162932) (not e!191881))))

(declare-datatypes ((array!15556 0))(
  ( (array!15557 (arr!7361 (Array (_ BitVec 32) (_ BitVec 64))) (size!7713 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15556)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305712 (= res!162932 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7361 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!305713 () Bool)

(declare-fun res!162936 () Bool)

(assert (=> b!305713 (=> (not res!162936) (not e!191883))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305713 (= res!162936 (and (= (size!7713 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7713 a!3293))))))

(declare-fun b!305714 () Bool)

(assert (=> b!305714 (= e!191883 e!191881)))

(declare-fun res!162934 () Bool)

(assert (=> b!305714 (=> (not res!162934) (not e!191881))))

(declare-datatypes ((SeekEntryResult!2512 0))(
  ( (MissingZero!2512 (index!12224 (_ BitVec 32))) (Found!2512 (index!12225 (_ BitVec 32))) (Intermediate!2512 (undefined!3324 Bool) (index!12226 (_ BitVec 32)) (x!30446 (_ BitVec 32))) (Undefined!2512) (MissingVacant!2512 (index!12227 (_ BitVec 32))) )
))
(declare-fun lt!150811 () SeekEntryResult!2512)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15556 (_ BitVec 32)) SeekEntryResult!2512)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305714 (= res!162934 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150811))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305714 (= lt!150811 (Intermediate!2512 false resIndex!52 resX!52))))

(declare-fun res!162930 () Bool)

(assert (=> start!30554 (=> (not res!162930) (not e!191883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30554 (= res!162930 (validMask!0 mask!3709))))

(assert (=> start!30554 e!191883))

(declare-fun array_inv!5315 (array!15556) Bool)

(assert (=> start!30554 (array_inv!5315 a!3293)))

(assert (=> start!30554 true))

(declare-fun b!305715 () Bool)

(declare-fun res!162933 () Bool)

(assert (=> b!305715 (=> (not res!162933) (not e!191881))))

(assert (=> b!305715 (= res!162933 (and (= (select (arr!7361 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7713 a!3293))))))

(declare-fun b!305716 () Bool)

(assert (=> b!305716 false))

(declare-datatypes ((Unit!9438 0))(
  ( (Unit!9439) )
))
(declare-fun e!191884 () Unit!9438)

(declare-fun Unit!9440 () Unit!9438)

(assert (=> b!305716 (= e!191884 Unit!9440)))

(declare-fun b!305717 () Bool)

(declare-fun res!162935 () Bool)

(assert (=> b!305717 (=> (not res!162935) (not e!191881))))

(assert (=> b!305717 (= res!162935 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150811))))

(declare-fun b!305718 () Bool)

(assert (=> b!305718 (= e!191881 (not (or (not (= (select (arr!7361 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(assert (=> b!305718 (= index!1781 resIndex!52)))

(declare-fun lt!150812 () Unit!9438)

(declare-fun e!191882 () Unit!9438)

(assert (=> b!305718 (= lt!150812 e!191882)))

(declare-fun c!48995 () Bool)

(assert (=> b!305718 (= c!48995 (not (= resIndex!52 index!1781)))))

(declare-fun b!305719 () Bool)

(declare-fun Unit!9441 () Unit!9438)

(assert (=> b!305719 (= e!191882 Unit!9441)))

(declare-fun b!305720 () Bool)

(declare-fun res!162928 () Bool)

(assert (=> b!305720 (=> (not res!162928) (not e!191883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15556 (_ BitVec 32)) Bool)

(assert (=> b!305720 (= res!162928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305721 () Bool)

(declare-fun res!162931 () Bool)

(assert (=> b!305721 (=> (not res!162931) (not e!191883))))

(declare-fun arrayContainsKey!0 (array!15556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305721 (= res!162931 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305722 () Bool)

(assert (=> b!305722 (= e!191882 e!191884)))

(declare-fun c!48994 () Bool)

(assert (=> b!305722 (= c!48994 (or (= (select (arr!7361 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7361 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305723 () Bool)

(declare-fun res!162927 () Bool)

(assert (=> b!305723 (=> (not res!162927) (not e!191883))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15556 (_ BitVec 32)) SeekEntryResult!2512)

(assert (=> b!305723 (= res!162927 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2512 i!1240)))))

(declare-fun b!305724 () Bool)

(assert (=> b!305724 false))

(declare-fun lt!150810 () SeekEntryResult!2512)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305724 (= lt!150810 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9442 () Unit!9438)

(assert (=> b!305724 (= e!191884 Unit!9442)))

(assert (= (and start!30554 res!162930) b!305713))

(assert (= (and b!305713 res!162936) b!305711))

(assert (= (and b!305711 res!162929) b!305721))

(assert (= (and b!305721 res!162931) b!305723))

(assert (= (and b!305723 res!162927) b!305720))

(assert (= (and b!305720 res!162928) b!305714))

(assert (= (and b!305714 res!162934) b!305715))

(assert (= (and b!305715 res!162933) b!305717))

(assert (= (and b!305717 res!162935) b!305712))

(assert (= (and b!305712 res!162932) b!305718))

(assert (= (and b!305718 c!48995) b!305722))

(assert (= (and b!305718 (not c!48995)) b!305719))

(assert (= (and b!305722 c!48994) b!305716))

(assert (= (and b!305722 (not c!48994)) b!305724))

(declare-fun m!316545 () Bool)

(assert (=> b!305722 m!316545))

(declare-fun m!316547 () Bool)

(assert (=> b!305721 m!316547))

(declare-fun m!316549 () Bool)

(assert (=> b!305717 m!316549))

(declare-fun m!316551 () Bool)

(assert (=> b!305714 m!316551))

(assert (=> b!305714 m!316551))

(declare-fun m!316553 () Bool)

(assert (=> b!305714 m!316553))

(declare-fun m!316555 () Bool)

(assert (=> b!305711 m!316555))

(declare-fun m!316557 () Bool)

(assert (=> b!305720 m!316557))

(declare-fun m!316559 () Bool)

(assert (=> b!305715 m!316559))

(assert (=> b!305718 m!316545))

(declare-fun m!316561 () Bool)

(assert (=> start!30554 m!316561))

(declare-fun m!316563 () Bool)

(assert (=> start!30554 m!316563))

(assert (=> b!305712 m!316545))

(declare-fun m!316565 () Bool)

(assert (=> b!305724 m!316565))

(assert (=> b!305724 m!316565))

(declare-fun m!316567 () Bool)

(assert (=> b!305724 m!316567))

(declare-fun m!316569 () Bool)

(assert (=> b!305723 m!316569))

(check-sat (not b!305717) (not start!30554) (not b!305724) (not b!305711) (not b!305714) (not b!305720) (not b!305721) (not b!305723))
(check-sat)
