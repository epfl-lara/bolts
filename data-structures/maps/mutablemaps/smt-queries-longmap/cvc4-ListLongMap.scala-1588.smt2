; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30160 () Bool)

(assert start!30160)

(declare-fun b!301791 () Bool)

(declare-fun res!159559 () Bool)

(declare-fun e!190360 () Bool)

(assert (=> b!301791 (=> (not res!159559) (not e!190360))))

(declare-datatypes ((array!15309 0))(
  ( (array!15310 (arr!7242 (Array (_ BitVec 32) (_ BitVec 64))) (size!7594 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15309)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301791 (= res!159559 (and (= (size!7594 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7594 a!3293))))))

(declare-fun b!301792 () Bool)

(declare-fun res!159561 () Bool)

(assert (=> b!301792 (=> (not res!159561) (not e!190360))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301792 (= res!159561 (validKeyInArray!0 k!2441))))

(declare-fun b!301793 () Bool)

(declare-fun res!159560 () Bool)

(assert (=> b!301793 (=> (not res!159560) (not e!190360))))

(declare-fun arrayContainsKey!0 (array!15309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301793 (= res!159560 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301794 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!301794 (= e!190360 (and (= (select (arr!7242 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7594 a!3293)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun res!159558 () Bool)

(assert (=> start!30160 (=> (not res!159558) (not e!190360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30160 (= res!159558 (validMask!0 mask!3709))))

(assert (=> start!30160 e!190360))

(declare-fun array_inv!5196 (array!15309) Bool)

(assert (=> start!30160 (array_inv!5196 a!3293)))

(assert (=> start!30160 true))

(declare-fun b!301795 () Bool)

(declare-fun res!159563 () Bool)

(assert (=> b!301795 (=> (not res!159563) (not e!190360))))

(declare-datatypes ((SeekEntryResult!2393 0))(
  ( (MissingZero!2393 (index!11748 (_ BitVec 32))) (Found!2393 (index!11749 (_ BitVec 32))) (Intermediate!2393 (undefined!3205 Bool) (index!11750 (_ BitVec 32)) (x!29983 (_ BitVec 32))) (Undefined!2393) (MissingVacant!2393 (index!11751 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15309 (_ BitVec 32)) SeekEntryResult!2393)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301795 (= res!159563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2393 false resIndex!52 resX!52)))))

(declare-fun b!301796 () Bool)

(declare-fun res!159562 () Bool)

(assert (=> b!301796 (=> (not res!159562) (not e!190360))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15309 (_ BitVec 32)) SeekEntryResult!2393)

(assert (=> b!301796 (= res!159562 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2393 i!1240)))))

(declare-fun b!301797 () Bool)

(declare-fun res!159564 () Bool)

(assert (=> b!301797 (=> (not res!159564) (not e!190360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15309 (_ BitVec 32)) Bool)

(assert (=> b!301797 (= res!159564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30160 res!159558) b!301791))

(assert (= (and b!301791 res!159559) b!301792))

(assert (= (and b!301792 res!159561) b!301793))

(assert (= (and b!301793 res!159560) b!301796))

(assert (= (and b!301796 res!159562) b!301797))

(assert (= (and b!301797 res!159564) b!301795))

(assert (= (and b!301795 res!159563) b!301794))

(declare-fun m!313489 () Bool)

(assert (=> start!30160 m!313489))

(declare-fun m!313491 () Bool)

(assert (=> start!30160 m!313491))

(declare-fun m!313493 () Bool)

(assert (=> b!301794 m!313493))

(declare-fun m!313495 () Bool)

(assert (=> b!301797 m!313495))

(declare-fun m!313497 () Bool)

(assert (=> b!301796 m!313497))

(declare-fun m!313499 () Bool)

(assert (=> b!301795 m!313499))

(assert (=> b!301795 m!313499))

(declare-fun m!313501 () Bool)

(assert (=> b!301795 m!313501))

(declare-fun m!313503 () Bool)

(assert (=> b!301793 m!313503))

(declare-fun m!313505 () Bool)

(assert (=> b!301792 m!313505))

(push 1)

(assert (not b!301796))

(assert (not start!30160))

(assert (not b!301795))

(assert (not b!301792))

(assert (not b!301793))

(assert (not b!301797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

