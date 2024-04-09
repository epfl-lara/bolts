; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30314 () Bool)

(assert start!30314)

(declare-fun b!303256 () Bool)

(declare-fun res!160904 () Bool)

(declare-fun e!190853 () Bool)

(assert (=> b!303256 (=> (not res!160904) (not e!190853))))

(declare-datatypes ((array!15418 0))(
  ( (array!15419 (arr!7295 (Array (_ BitVec 32) (_ BitVec 64))) (size!7647 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15418)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303256 (= res!160904 (and (= (select (arr!7295 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7647 a!3293))))))

(declare-fun b!303258 () Bool)

(declare-fun res!160901 () Bool)

(declare-fun e!190855 () Bool)

(assert (=> b!303258 (=> (not res!160901) (not e!190855))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!303258 (= res!160901 (and (= (size!7647 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7647 a!3293))))))

(declare-fun b!303259 () Bool)

(declare-fun res!160902 () Bool)

(assert (=> b!303259 (=> (not res!160902) (not e!190855))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303259 (= res!160902 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303260 () Bool)

(declare-fun res!160908 () Bool)

(assert (=> b!303260 (=> (not res!160908) (not e!190855))))

(declare-datatypes ((SeekEntryResult!2446 0))(
  ( (MissingZero!2446 (index!11960 (_ BitVec 32))) (Found!2446 (index!11961 (_ BitVec 32))) (Intermediate!2446 (undefined!3258 Bool) (index!11962 (_ BitVec 32)) (x!30186 (_ BitVec 32))) (Undefined!2446) (MissingVacant!2446 (index!11963 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15418 (_ BitVec 32)) SeekEntryResult!2446)

(assert (=> b!303260 (= res!160908 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2446 i!1240)))))

(declare-fun b!303261 () Bool)

(declare-fun res!160905 () Bool)

(assert (=> b!303261 (=> (not res!160905) (not e!190853))))

(declare-fun lt!150170 () SeekEntryResult!2446)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15418 (_ BitVec 32)) SeekEntryResult!2446)

(assert (=> b!303261 (= res!160905 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150170))))

(declare-fun b!303262 () Bool)

(declare-fun res!160907 () Bool)

(assert (=> b!303262 (=> (not res!160907) (not e!190855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15418 (_ BitVec 32)) Bool)

(assert (=> b!303262 (= res!160907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303263 () Bool)

(declare-fun res!160900 () Bool)

(assert (=> b!303263 (=> (not res!160900) (not e!190855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303263 (= res!160900 (validKeyInArray!0 k0!2441))))

(declare-fun b!303264 () Bool)

(assert (=> b!303264 (= e!190853 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7295 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7295 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7295 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun res!160903 () Bool)

(assert (=> start!30314 (=> (not res!160903) (not e!190855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30314 (= res!160903 (validMask!0 mask!3709))))

(assert (=> start!30314 e!190855))

(declare-fun array_inv!5249 (array!15418) Bool)

(assert (=> start!30314 (array_inv!5249 a!3293)))

(assert (=> start!30314 true))

(declare-fun b!303257 () Bool)

(assert (=> b!303257 (= e!190855 e!190853)))

(declare-fun res!160906 () Bool)

(assert (=> b!303257 (=> (not res!160906) (not e!190853))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303257 (= res!160906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150170))))

(assert (=> b!303257 (= lt!150170 (Intermediate!2446 false resIndex!52 resX!52))))

(assert (= (and start!30314 res!160903) b!303258))

(assert (= (and b!303258 res!160901) b!303263))

(assert (= (and b!303263 res!160900) b!303259))

(assert (= (and b!303259 res!160902) b!303260))

(assert (= (and b!303260 res!160908) b!303262))

(assert (= (and b!303262 res!160907) b!303257))

(assert (= (and b!303257 res!160906) b!303256))

(assert (= (and b!303256 res!160904) b!303261))

(assert (= (and b!303261 res!160905) b!303264))

(declare-fun m!314645 () Bool)

(assert (=> b!303260 m!314645))

(declare-fun m!314647 () Bool)

(assert (=> b!303264 m!314647))

(declare-fun m!314649 () Bool)

(assert (=> b!303263 m!314649))

(declare-fun m!314651 () Bool)

(assert (=> b!303257 m!314651))

(assert (=> b!303257 m!314651))

(declare-fun m!314653 () Bool)

(assert (=> b!303257 m!314653))

(declare-fun m!314655 () Bool)

(assert (=> b!303259 m!314655))

(declare-fun m!314657 () Bool)

(assert (=> start!30314 m!314657))

(declare-fun m!314659 () Bool)

(assert (=> start!30314 m!314659))

(declare-fun m!314661 () Bool)

(assert (=> b!303256 m!314661))

(declare-fun m!314663 () Bool)

(assert (=> b!303261 m!314663))

(declare-fun m!314665 () Bool)

(assert (=> b!303262 m!314665))

(check-sat (not b!303257) (not start!30314) (not b!303262) (not b!303260) (not b!303259) (not b!303263) (not b!303261))
(check-sat)
