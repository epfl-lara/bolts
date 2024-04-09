; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30550 () Bool)

(assert start!30550)

(declare-fun b!305627 () Bool)

(declare-fun e!191852 () Bool)

(assert (=> b!305627 (= e!191852 (not true))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305627 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9428 0))(
  ( (Unit!9429) )
))
(declare-fun lt!150794 () Unit!9428)

(declare-fun e!191851 () Unit!9428)

(assert (=> b!305627 (= lt!150794 e!191851)))

(declare-fun c!48982 () Bool)

(assert (=> b!305627 (= c!48982 (not (= resIndex!52 index!1781)))))

(declare-fun b!305628 () Bool)

(declare-fun res!162875 () Bool)

(declare-fun e!191854 () Bool)

(assert (=> b!305628 (=> (not res!162875) (not e!191854))))

(declare-datatypes ((array!15552 0))(
  ( (array!15553 (arr!7359 (Array (_ BitVec 32) (_ BitVec 64))) (size!7711 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15552)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305628 (= res!162875 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!162873 () Bool)

(assert (=> start!30550 (=> (not res!162873) (not e!191854))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30550 (= res!162873 (validMask!0 mask!3709))))

(assert (=> start!30550 e!191854))

(declare-fun array_inv!5313 (array!15552) Bool)

(assert (=> start!30550 (array_inv!5313 a!3293)))

(assert (=> start!30550 true))

(declare-fun b!305629 () Bool)

(declare-fun res!162867 () Bool)

(assert (=> b!305629 (=> (not res!162867) (not e!191854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305629 (= res!162867 (validKeyInArray!0 k!2441))))

(declare-fun b!305630 () Bool)

(declare-fun res!162869 () Bool)

(assert (=> b!305630 (=> (not res!162869) (not e!191854))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2510 0))(
  ( (MissingZero!2510 (index!12216 (_ BitVec 32))) (Found!2510 (index!12217 (_ BitVec 32))) (Intermediate!2510 (undefined!3322 Bool) (index!12218 (_ BitVec 32)) (x!30436 (_ BitVec 32))) (Undefined!2510) (MissingVacant!2510 (index!12219 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15552 (_ BitVec 32)) SeekEntryResult!2510)

(assert (=> b!305630 (= res!162869 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2510 i!1240)))))

(declare-fun b!305631 () Bool)

(declare-fun res!162871 () Bool)

(assert (=> b!305631 (=> (not res!162871) (not e!191852))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!150792 () SeekEntryResult!2510)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15552 (_ BitVec 32)) SeekEntryResult!2510)

(assert (=> b!305631 (= res!162871 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150792))))

(declare-fun b!305632 () Bool)

(assert (=> b!305632 (= e!191854 e!191852)))

(declare-fun res!162872 () Bool)

(assert (=> b!305632 (=> (not res!162872) (not e!191852))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305632 (= res!162872 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150792))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305632 (= lt!150792 (Intermediate!2510 false resIndex!52 resX!52))))

(declare-fun b!305633 () Bool)

(declare-fun res!162876 () Bool)

(assert (=> b!305633 (=> (not res!162876) (not e!191852))))

(assert (=> b!305633 (= res!162876 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7359 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305634 () Bool)

(assert (=> b!305634 false))

(declare-fun e!191850 () Unit!9428)

(declare-fun Unit!9430 () Unit!9428)

(assert (=> b!305634 (= e!191850 Unit!9430)))

(declare-fun b!305635 () Bool)

(declare-fun res!162870 () Bool)

(assert (=> b!305635 (=> (not res!162870) (not e!191854))))

(assert (=> b!305635 (= res!162870 (and (= (size!7711 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7711 a!3293))))))

(declare-fun b!305636 () Bool)

(declare-fun Unit!9431 () Unit!9428)

(assert (=> b!305636 (= e!191851 Unit!9431)))

(declare-fun b!305637 () Bool)

(declare-fun res!162874 () Bool)

(assert (=> b!305637 (=> (not res!162874) (not e!191852))))

(assert (=> b!305637 (= res!162874 (and (= (select (arr!7359 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7711 a!3293))))))

(declare-fun b!305638 () Bool)

(assert (=> b!305638 false))

(declare-fun lt!150793 () SeekEntryResult!2510)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305638 (= lt!150793 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9432 () Unit!9428)

(assert (=> b!305638 (= e!191850 Unit!9432)))

(declare-fun b!305639 () Bool)

(declare-fun res!162868 () Bool)

(assert (=> b!305639 (=> (not res!162868) (not e!191854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15552 (_ BitVec 32)) Bool)

(assert (=> b!305639 (= res!162868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305640 () Bool)

(assert (=> b!305640 (= e!191851 e!191850)))

(declare-fun c!48983 () Bool)

(assert (=> b!305640 (= c!48983 (or (= (select (arr!7359 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7359 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!30550 res!162873) b!305635))

(assert (= (and b!305635 res!162870) b!305629))

(assert (= (and b!305629 res!162867) b!305628))

(assert (= (and b!305628 res!162875) b!305630))

(assert (= (and b!305630 res!162869) b!305639))

(assert (= (and b!305639 res!162868) b!305632))

(assert (= (and b!305632 res!162872) b!305637))

(assert (= (and b!305637 res!162874) b!305631))

(assert (= (and b!305631 res!162871) b!305633))

(assert (= (and b!305633 res!162876) b!305627))

(assert (= (and b!305627 c!48982) b!305640))

(assert (= (and b!305627 (not c!48982)) b!305636))

(assert (= (and b!305640 c!48983) b!305634))

(assert (= (and b!305640 (not c!48983)) b!305638))

(declare-fun m!316493 () Bool)

(assert (=> b!305640 m!316493))

(declare-fun m!316495 () Bool)

(assert (=> start!30550 m!316495))

(declare-fun m!316497 () Bool)

(assert (=> start!30550 m!316497))

(declare-fun m!316499 () Bool)

(assert (=> b!305628 m!316499))

(declare-fun m!316501 () Bool)

(assert (=> b!305632 m!316501))

(assert (=> b!305632 m!316501))

(declare-fun m!316503 () Bool)

(assert (=> b!305632 m!316503))

(declare-fun m!316505 () Bool)

(assert (=> b!305631 m!316505))

(assert (=> b!305633 m!316493))

(declare-fun m!316507 () Bool)

(assert (=> b!305629 m!316507))

(declare-fun m!316509 () Bool)

(assert (=> b!305639 m!316509))

(declare-fun m!316511 () Bool)

(assert (=> b!305637 m!316511))

(declare-fun m!316513 () Bool)

(assert (=> b!305630 m!316513))

(declare-fun m!316515 () Bool)

(assert (=> b!305638 m!316515))

(assert (=> b!305638 m!316515))

(declare-fun m!316517 () Bool)

(assert (=> b!305638 m!316517))

(push 1)

(assert (not b!305629))

