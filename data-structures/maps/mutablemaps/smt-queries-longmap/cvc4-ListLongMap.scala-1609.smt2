; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30334 () Bool)

(assert start!30334)

(declare-fun b!303534 () Bool)

(declare-fun res!161187 () Bool)

(declare-fun e!190944 () Bool)

(assert (=> b!303534 (=> (not res!161187) (not e!190944))))

(declare-datatypes ((array!15438 0))(
  ( (array!15439 (arr!7305 (Array (_ BitVec 32) (_ BitVec 64))) (size!7657 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15438)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303534 (= res!161187 (and (= (select (arr!7305 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7657 a!3293))))))

(declare-fun b!303535 () Bool)

(declare-fun res!161185 () Bool)

(assert (=> b!303535 (=> (not res!161185) (not e!190944))))

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!303535 (= res!161185 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7305 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7305 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7305 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!161180 () Bool)

(declare-fun e!190943 () Bool)

(assert (=> start!30334 (=> (not res!161180) (not e!190943))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30334 (= res!161180 (validMask!0 mask!3709))))

(assert (=> start!30334 e!190943))

(declare-fun array_inv!5259 (array!15438) Bool)

(assert (=> start!30334 (array_inv!5259 a!3293)))

(assert (=> start!30334 true))

(declare-fun b!303536 () Bool)

(declare-fun res!161179 () Bool)

(assert (=> b!303536 (=> (not res!161179) (not e!190943))))

(declare-fun arrayContainsKey!0 (array!15438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303536 (= res!161179 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303537 () Bool)

(declare-fun res!161178 () Bool)

(assert (=> b!303537 (=> (not res!161178) (not e!190944))))

(declare-datatypes ((SeekEntryResult!2456 0))(
  ( (MissingZero!2456 (index!12000 (_ BitVec 32))) (Found!2456 (index!12001 (_ BitVec 32))) (Intermediate!2456 (undefined!3268 Bool) (index!12002 (_ BitVec 32)) (x!30220 (_ BitVec 32))) (Undefined!2456) (MissingVacant!2456 (index!12003 (_ BitVec 32))) )
))
(declare-fun lt!150208 () SeekEntryResult!2456)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15438 (_ BitVec 32)) SeekEntryResult!2456)

(assert (=> b!303537 (= res!161178 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150208))))

(declare-fun b!303538 () Bool)

(assert (=> b!303538 (= e!190943 e!190944)))

(declare-fun res!161182 () Bool)

(assert (=> b!303538 (=> (not res!161182) (not e!190944))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303538 (= res!161182 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150208))))

(assert (=> b!303538 (= lt!150208 (Intermediate!2456 false resIndex!52 resX!52))))

(declare-fun b!303539 () Bool)

(declare-fun res!161184 () Bool)

(assert (=> b!303539 (=> (not res!161184) (not e!190943))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15438 (_ BitVec 32)) SeekEntryResult!2456)

(assert (=> b!303539 (= res!161184 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2456 i!1240)))))

(declare-fun b!303540 () Bool)

(declare-fun res!161183 () Bool)

(assert (=> b!303540 (=> (not res!161183) (not e!190943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303540 (= res!161183 (validKeyInArray!0 k!2441))))

(declare-fun b!303541 () Bool)

(declare-fun res!161181 () Bool)

(assert (=> b!303541 (=> (not res!161181) (not e!190943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15438 (_ BitVec 32)) Bool)

(assert (=> b!303541 (= res!161181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303542 () Bool)

(assert (=> b!303542 (= e!190944 false)))

(declare-fun lt!150209 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303542 (= lt!150209 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303543 () Bool)

(declare-fun res!161186 () Bool)

(assert (=> b!303543 (=> (not res!161186) (not e!190943))))

(assert (=> b!303543 (= res!161186 (and (= (size!7657 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7657 a!3293))))))

(assert (= (and start!30334 res!161180) b!303543))

(assert (= (and b!303543 res!161186) b!303540))

(assert (= (and b!303540 res!161183) b!303536))

(assert (= (and b!303536 res!161179) b!303539))

(assert (= (and b!303539 res!161184) b!303541))

(assert (= (and b!303541 res!161181) b!303538))

(assert (= (and b!303538 res!161182) b!303534))

(assert (= (and b!303534 res!161187) b!303537))

(assert (= (and b!303537 res!161178) b!303535))

(assert (= (and b!303535 res!161185) b!303542))

(declare-fun m!314869 () Bool)

(assert (=> b!303542 m!314869))

(declare-fun m!314871 () Bool)

(assert (=> b!303540 m!314871))

(declare-fun m!314873 () Bool)

(assert (=> start!30334 m!314873))

(declare-fun m!314875 () Bool)

(assert (=> start!30334 m!314875))

(declare-fun m!314877 () Bool)

(assert (=> b!303535 m!314877))

(declare-fun m!314879 () Bool)

(assert (=> b!303541 m!314879))

(declare-fun m!314881 () Bool)

(assert (=> b!303537 m!314881))

(declare-fun m!314883 () Bool)

(assert (=> b!303536 m!314883))

(declare-fun m!314885 () Bool)

(assert (=> b!303538 m!314885))

(assert (=> b!303538 m!314885))

(declare-fun m!314887 () Bool)

(assert (=> b!303538 m!314887))

(declare-fun m!314889 () Bool)

(assert (=> b!303534 m!314889))

(declare-fun m!314891 () Bool)

(assert (=> b!303539 m!314891))

(push 1)

(assert (not b!303536))

(assert (not b!303540))

(assert (not b!303538))

