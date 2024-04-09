; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31442 () Bool)

(assert start!31442)

(declare-fun b!314650 () Bool)

(declare-fun res!170422 () Bool)

(declare-fun e!195936 () Bool)

(assert (=> b!314650 (=> (not res!170422) (not e!195936))))

(declare-datatypes ((array!16066 0))(
  ( (array!16067 (arr!7604 (Array (_ BitVec 32) (_ BitVec 64))) (size!7956 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16066)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314650 (= res!170422 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314651 () Bool)

(declare-fun res!170418 () Bool)

(assert (=> b!314651 (=> (not res!170418) (not e!195936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314651 (= res!170418 (validKeyInArray!0 k0!2441))))

(declare-fun b!314652 () Bool)

(declare-fun res!170421 () Bool)

(assert (=> b!314652 (=> (not res!170421) (not e!195936))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16066 (_ BitVec 32)) Bool)

(assert (=> b!314652 (= res!170421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314653 () Bool)

(declare-fun e!195934 () Bool)

(assert (=> b!314653 (= e!195936 e!195934)))

(declare-fun res!170423 () Bool)

(assert (=> b!314653 (=> (not res!170423) (not e!195934))))

(declare-datatypes ((SeekEntryResult!2755 0))(
  ( (MissingZero!2755 (index!13196 (_ BitVec 32))) (Found!2755 (index!13197 (_ BitVec 32))) (Intermediate!2755 (undefined!3567 Bool) (index!13198 (_ BitVec 32)) (x!31394 (_ BitVec 32))) (Undefined!2755) (MissingVacant!2755 (index!13199 (_ BitVec 32))) )
))
(declare-fun lt!154001 () SeekEntryResult!2755)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16066 (_ BitVec 32)) SeekEntryResult!2755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314653 (= res!170423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154001))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!314653 (= lt!154001 (Intermediate!2755 false resIndex!52 resX!52))))

(declare-fun res!170416 () Bool)

(assert (=> start!31442 (=> (not res!170416) (not e!195936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31442 (= res!170416 (validMask!0 mask!3709))))

(assert (=> start!31442 e!195936))

(declare-fun array_inv!5558 (array!16066) Bool)

(assert (=> start!31442 (array_inv!5558 a!3293)))

(assert (=> start!31442 true))

(declare-fun b!314654 () Bool)

(declare-fun e!195937 () Bool)

(assert (=> b!314654 (= e!195937 (not false))))

(declare-fun lt!154000 () SeekEntryResult!2755)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314654 (= lt!154000 (Intermediate!2755 false index!1781 resX!52))))

(declare-fun b!314655 () Bool)

(declare-fun res!170419 () Bool)

(assert (=> b!314655 (=> (not res!170419) (not e!195936))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314655 (= res!170419 (and (= (size!7956 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7956 a!3293))))))

(declare-fun b!314656 () Bool)

(declare-fun res!170417 () Bool)

(assert (=> b!314656 (=> (not res!170417) (not e!195936))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16066 (_ BitVec 32)) SeekEntryResult!2755)

(assert (=> b!314656 (= res!170417 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2755 i!1240)))))

(declare-fun b!314657 () Bool)

(assert (=> b!314657 (= e!195934 e!195937)))

(declare-fun res!170424 () Bool)

(assert (=> b!314657 (=> (not res!170424) (not e!195937))))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!314657 (= res!170424 (and (= lt!154000 lt!154001) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7604 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7604 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7604 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!314657 (= lt!154000 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!314658 () Bool)

(declare-fun res!170420 () Bool)

(assert (=> b!314658 (=> (not res!170420) (not e!195934))))

(assert (=> b!314658 (= res!170420 (and (= (select (arr!7604 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7956 a!3293))))))

(assert (= (and start!31442 res!170416) b!314655))

(assert (= (and b!314655 res!170419) b!314651))

(assert (= (and b!314651 res!170418) b!314650))

(assert (= (and b!314650 res!170422) b!314656))

(assert (= (and b!314656 res!170417) b!314652))

(assert (= (and b!314652 res!170421) b!314653))

(assert (= (and b!314653 res!170423) b!314658))

(assert (= (and b!314658 res!170420) b!314657))

(assert (= (and b!314657 res!170424) b!314654))

(declare-fun m!324119 () Bool)

(assert (=> b!314653 m!324119))

(assert (=> b!314653 m!324119))

(declare-fun m!324121 () Bool)

(assert (=> b!314653 m!324121))

(declare-fun m!324123 () Bool)

(assert (=> b!314658 m!324123))

(declare-fun m!324125 () Bool)

(assert (=> b!314650 m!324125))

(declare-fun m!324127 () Bool)

(assert (=> b!314656 m!324127))

(declare-fun m!324129 () Bool)

(assert (=> b!314651 m!324129))

(declare-fun m!324131 () Bool)

(assert (=> b!314652 m!324131))

(declare-fun m!324133 () Bool)

(assert (=> start!31442 m!324133))

(declare-fun m!324135 () Bool)

(assert (=> start!31442 m!324135))

(declare-fun m!324137 () Bool)

(assert (=> b!314657 m!324137))

(declare-fun m!324139 () Bool)

(assert (=> b!314657 m!324139))

(check-sat (not b!314653) (not b!314651) (not b!314650) (not start!31442) (not b!314652) (not b!314657) (not b!314656))
(check-sat)
