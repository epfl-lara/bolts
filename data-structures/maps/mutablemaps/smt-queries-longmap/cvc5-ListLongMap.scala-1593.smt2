; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30234 () Bool)

(assert start!30234)

(declare-fun b!302237 () Bool)

(declare-fun res!159881 () Bool)

(declare-fun e!190555 () Bool)

(assert (=> b!302237 (=> (not res!159881) (not e!190555))))

(declare-datatypes ((array!15338 0))(
  ( (array!15339 (arr!7255 (Array (_ BitVec 32) (_ BitVec 64))) (size!7607 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15338)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15338 (_ BitVec 32)) Bool)

(assert (=> b!302237 (= res!159881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302238 () Bool)

(declare-fun res!159887 () Bool)

(assert (=> b!302238 (=> (not res!159887) (not e!190555))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!302238 (= res!159887 (and (= (size!7607 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7607 a!3293))))))

(declare-fun b!302239 () Bool)

(declare-fun res!159884 () Bool)

(assert (=> b!302239 (=> (not res!159884) (not e!190555))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302239 (= res!159884 (validKeyInArray!0 k!2441))))

(declare-fun b!302240 () Bool)

(declare-fun res!159888 () Bool)

(assert (=> b!302240 (=> (not res!159888) (not e!190555))))

(declare-datatypes ((SeekEntryResult!2406 0))(
  ( (MissingZero!2406 (index!11800 (_ BitVec 32))) (Found!2406 (index!11801 (_ BitVec 32))) (Intermediate!2406 (undefined!3218 Bool) (index!11802 (_ BitVec 32)) (x!30042 (_ BitVec 32))) (Undefined!2406) (MissingVacant!2406 (index!11803 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15338 (_ BitVec 32)) SeekEntryResult!2406)

(assert (=> b!302240 (= res!159888 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2406 i!1240)))))

(declare-fun b!302241 () Bool)

(assert (=> b!302241 (= e!190555 false)))

(declare-fun lt!150050 () SeekEntryResult!2406)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15338 (_ BitVec 32)) SeekEntryResult!2406)

(assert (=> b!302241 (= lt!150050 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302242 () Bool)

(declare-fun res!159886 () Bool)

(assert (=> b!302242 (=> (not res!159886) (not e!190555))))

(declare-fun arrayContainsKey!0 (array!15338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302242 (= res!159886 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!159885 () Bool)

(assert (=> start!30234 (=> (not res!159885) (not e!190555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30234 (= res!159885 (validMask!0 mask!3709))))

(assert (=> start!30234 e!190555))

(declare-fun array_inv!5209 (array!15338) Bool)

(assert (=> start!30234 (array_inv!5209 a!3293)))

(assert (=> start!30234 true))

(declare-fun b!302243 () Bool)

(declare-fun res!159882 () Bool)

(assert (=> b!302243 (=> (not res!159882) (not e!190555))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302243 (= res!159882 (and (= (select (arr!7255 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7607 a!3293))))))

(declare-fun b!302244 () Bool)

(declare-fun res!159883 () Bool)

(assert (=> b!302244 (=> (not res!159883) (not e!190555))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302244 (= res!159883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2406 false resIndex!52 resX!52)))))

(assert (= (and start!30234 res!159885) b!302238))

(assert (= (and b!302238 res!159887) b!302239))

(assert (= (and b!302239 res!159884) b!302242))

(assert (= (and b!302242 res!159886) b!302240))

(assert (= (and b!302240 res!159888) b!302237))

(assert (= (and b!302237 res!159881) b!302244))

(assert (= (and b!302244 res!159883) b!302243))

(assert (= (and b!302243 res!159882) b!302241))

(declare-fun m!313807 () Bool)

(assert (=> b!302243 m!313807))

(declare-fun m!313809 () Bool)

(assert (=> b!302240 m!313809))

(declare-fun m!313811 () Bool)

(assert (=> b!302239 m!313811))

(declare-fun m!313813 () Bool)

(assert (=> b!302242 m!313813))

(declare-fun m!313815 () Bool)

(assert (=> b!302244 m!313815))

(assert (=> b!302244 m!313815))

(declare-fun m!313817 () Bool)

(assert (=> b!302244 m!313817))

(declare-fun m!313819 () Bool)

(assert (=> start!30234 m!313819))

(declare-fun m!313821 () Bool)

(assert (=> start!30234 m!313821))

(declare-fun m!313823 () Bool)

(assert (=> b!302237 m!313823))

(declare-fun m!313825 () Bool)

(assert (=> b!302241 m!313825))

(push 1)

(assert (not b!302240))

(assert (not b!302244))

(assert (not b!302241))

(assert (not b!302242))

(assert (not start!30234))

(assert (not b!302239))

(assert (not b!302237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

