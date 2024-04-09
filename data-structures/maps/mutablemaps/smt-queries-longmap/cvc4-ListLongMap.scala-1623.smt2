; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30526 () Bool)

(assert start!30526)

(declare-fun b!305173 () Bool)

(declare-fun e!191683 () Bool)

(declare-fun e!191681 () Bool)

(assert (=> b!305173 (= e!191683 e!191681)))

(declare-fun res!162517 () Bool)

(assert (=> b!305173 (=> (not res!162517) (not e!191681))))

(declare-datatypes ((SeekEntryResult!2498 0))(
  ( (MissingZero!2498 (index!12168 (_ BitVec 32))) (Found!2498 (index!12169 (_ BitVec 32))) (Intermediate!2498 (undefined!3310 Bool) (index!12170 (_ BitVec 32)) (x!30392 (_ BitVec 32))) (Undefined!2498) (MissingVacant!2498 (index!12171 (_ BitVec 32))) )
))
(declare-fun lt!150693 () SeekEntryResult!2498)

(declare-datatypes ((array!15528 0))(
  ( (array!15529 (arr!7347 (Array (_ BitVec 32) (_ BitVec 64))) (size!7699 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15528)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15528 (_ BitVec 32)) SeekEntryResult!2498)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305173 (= res!162517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150693))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305173 (= lt!150693 (Intermediate!2498 false resIndex!52 resX!52))))

(declare-fun b!305174 () Bool)

(declare-fun res!162522 () Bool)

(assert (=> b!305174 (=> (not res!162522) (not e!191683))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15528 (_ BitVec 32)) SeekEntryResult!2498)

(assert (=> b!305174 (= res!162522 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2498 i!1240)))))

(declare-fun b!305175 () Bool)

(declare-fun e!191680 () Bool)

(declare-fun lt!150695 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!305175 (= e!191680 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt lt!150695 #b00000000000000000000000000000000) (bvsge lt!150695 (bvadd #b00000000000000000000000000000001 mask!3709)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000)))))))

(declare-fun lt!150694 () SeekEntryResult!2498)

(assert (=> b!305175 (= lt!150694 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!150695 k!2441 a!3293 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305175 (= lt!150695 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!305176 () Bool)

(declare-fun res!162524 () Bool)

(assert (=> b!305176 (=> (not res!162524) (not e!191683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15528 (_ BitVec 32)) Bool)

(assert (=> b!305176 (= res!162524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305177 () Bool)

(declare-fun res!162519 () Bool)

(assert (=> b!305177 (=> (not res!162519) (not e!191683))))

(assert (=> b!305177 (= res!162519 (and (= (size!7699 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7699 a!3293))))))

(declare-fun res!162521 () Bool)

(assert (=> start!30526 (=> (not res!162521) (not e!191683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30526 (= res!162521 (validMask!0 mask!3709))))

(assert (=> start!30526 e!191683))

(declare-fun array_inv!5301 (array!15528) Bool)

(assert (=> start!30526 (array_inv!5301 a!3293)))

(assert (=> start!30526 true))

(declare-fun b!305178 () Bool)

(declare-fun res!162520 () Bool)

(assert (=> b!305178 (=> (not res!162520) (not e!191681))))

(assert (=> b!305178 (= res!162520 (and (= (select (arr!7347 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7699 a!3293))))))

(declare-fun b!305179 () Bool)

(declare-fun res!162518 () Bool)

(assert (=> b!305179 (=> (not res!162518) (not e!191683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305179 (= res!162518 (validKeyInArray!0 k!2441))))

(declare-fun b!305180 () Bool)

(declare-fun res!162525 () Bool)

(assert (=> b!305180 (=> (not res!162525) (not e!191683))))

(declare-fun arrayContainsKey!0 (array!15528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305180 (= res!162525 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305181 () Bool)

(assert (=> b!305181 (= e!191681 e!191680)))

(declare-fun res!162523 () Bool)

(assert (=> b!305181 (=> (not res!162523) (not e!191680))))

(assert (=> b!305181 (= res!162523 (and (= lt!150694 lt!150693) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7347 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7347 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7347 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!305181 (= lt!150694 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30526 res!162521) b!305177))

(assert (= (and b!305177 res!162519) b!305179))

(assert (= (and b!305179 res!162518) b!305180))

(assert (= (and b!305180 res!162525) b!305174))

(assert (= (and b!305174 res!162522) b!305176))

(assert (= (and b!305176 res!162524) b!305173))

(assert (= (and b!305173 res!162517) b!305178))

(assert (= (and b!305178 res!162520) b!305181))

(assert (= (and b!305181 res!162523) b!305175))

(declare-fun m!316181 () Bool)

(assert (=> b!305175 m!316181))

(declare-fun m!316183 () Bool)

(assert (=> b!305175 m!316183))

(declare-fun m!316185 () Bool)

(assert (=> b!305176 m!316185))

(declare-fun m!316187 () Bool)

(assert (=> start!30526 m!316187))

(declare-fun m!316189 () Bool)

(assert (=> start!30526 m!316189))

(declare-fun m!316191 () Bool)

(assert (=> b!305178 m!316191))

(declare-fun m!316193 () Bool)

(assert (=> b!305174 m!316193))

(declare-fun m!316195 () Bool)

(assert (=> b!305173 m!316195))

(assert (=> b!305173 m!316195))

(declare-fun m!316197 () Bool)

(assert (=> b!305173 m!316197))

(declare-fun m!316199 () Bool)

(assert (=> b!305179 m!316199))

(declare-fun m!316201 () Bool)

(assert (=> b!305180 m!316201))

(declare-fun m!316203 () Bool)

(assert (=> b!305181 m!316203))

(declare-fun m!316205 () Bool)

(assert (=> b!305181 m!316205))

(push 1)

(assert (not b!305179))

(assert (not b!305174))

(assert (not b!305173))

(assert (not b!305175))

(assert (not start!30526))

(assert (not b!305176))

(assert (not b!305181))

(assert (not b!305180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

