; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30280 () Bool)

(assert start!30280)

(declare-fun b!302824 () Bool)

(declare-fun e!190727 () Bool)

(declare-fun e!190728 () Bool)

(assert (=> b!302824 (= e!190727 e!190728)))

(declare-fun res!160468 () Bool)

(assert (=> b!302824 (=> (not res!160468) (not e!190728))))

(declare-datatypes ((array!15384 0))(
  ( (array!15385 (arr!7278 (Array (_ BitVec 32) (_ BitVec 64))) (size!7630 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15384)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2429 0))(
  ( (MissingZero!2429 (index!11892 (_ BitVec 32))) (Found!2429 (index!11893 (_ BitVec 32))) (Intermediate!2429 (undefined!3241 Bool) (index!11894 (_ BitVec 32)) (x!30121 (_ BitVec 32))) (Undefined!2429) (MissingVacant!2429 (index!11895 (_ BitVec 32))) )
))
(declare-fun lt!150119 () SeekEntryResult!2429)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15384 (_ BitVec 32)) SeekEntryResult!2429)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302824 (= res!160468 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150119))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302824 (= lt!150119 (Intermediate!2429 false resIndex!52 resX!52))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun b!302826 () Bool)

(assert (=> b!302826 (= e!190728 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7278 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7278 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7278 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!302827 () Bool)

(declare-fun res!160470 () Bool)

(assert (=> b!302827 (=> (not res!160470) (not e!190727))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15384 (_ BitVec 32)) SeekEntryResult!2429)

(assert (=> b!302827 (= res!160470 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2429 i!1240)))))

(declare-fun b!302828 () Bool)

(declare-fun res!160469 () Bool)

(assert (=> b!302828 (=> (not res!160469) (not e!190727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302828 (= res!160469 (validKeyInArray!0 k!2441))))

(declare-fun b!302829 () Bool)

(declare-fun res!160476 () Bool)

(assert (=> b!302829 (=> (not res!160476) (not e!190727))))

(assert (=> b!302829 (= res!160476 (and (= (size!7630 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7630 a!3293))))))

(declare-fun b!302830 () Bool)

(declare-fun res!160472 () Bool)

(assert (=> b!302830 (=> (not res!160472) (not e!190728))))

(assert (=> b!302830 (= res!160472 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150119))))

(declare-fun b!302831 () Bool)

(declare-fun res!160471 () Bool)

(assert (=> b!302831 (=> (not res!160471) (not e!190727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15384 (_ BitVec 32)) Bool)

(assert (=> b!302831 (= res!160471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302832 () Bool)

(declare-fun res!160474 () Bool)

(assert (=> b!302832 (=> (not res!160474) (not e!190727))))

(declare-fun arrayContainsKey!0 (array!15384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302832 (= res!160474 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!160475 () Bool)

(assert (=> start!30280 (=> (not res!160475) (not e!190727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30280 (= res!160475 (validMask!0 mask!3709))))

(assert (=> start!30280 e!190727))

(declare-fun array_inv!5232 (array!15384) Bool)

(assert (=> start!30280 (array_inv!5232 a!3293)))

(assert (=> start!30280 true))

(declare-fun b!302825 () Bool)

(declare-fun res!160473 () Bool)

(assert (=> b!302825 (=> (not res!160473) (not e!190728))))

(assert (=> b!302825 (= res!160473 (and (= (select (arr!7278 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7630 a!3293))))))

(assert (= (and start!30280 res!160475) b!302829))

(assert (= (and b!302829 res!160476) b!302828))

(assert (= (and b!302828 res!160469) b!302832))

(assert (= (and b!302832 res!160474) b!302827))

(assert (= (and b!302827 res!160470) b!302831))

(assert (= (and b!302831 res!160471) b!302824))

(assert (= (and b!302824 res!160468) b!302825))

(assert (= (and b!302825 res!160473) b!302830))

(assert (= (and b!302830 res!160472) b!302826))

(declare-fun m!314289 () Bool)

(assert (=> b!302826 m!314289))

(declare-fun m!314291 () Bool)

(assert (=> b!302824 m!314291))

(assert (=> b!302824 m!314291))

(declare-fun m!314293 () Bool)

(assert (=> b!302824 m!314293))

(declare-fun m!314295 () Bool)

(assert (=> b!302827 m!314295))

(declare-fun m!314297 () Bool)

(assert (=> b!302831 m!314297))

(declare-fun m!314299 () Bool)

(assert (=> start!30280 m!314299))

(declare-fun m!314301 () Bool)

(assert (=> start!30280 m!314301))

(declare-fun m!314303 () Bool)

(assert (=> b!302825 m!314303))

(declare-fun m!314305 () Bool)

(assert (=> b!302828 m!314305))

(declare-fun m!314307 () Bool)

(assert (=> b!302832 m!314307))

(declare-fun m!314309 () Bool)

(assert (=> b!302830 m!314309))

(push 1)

(assert (not start!30280))

(assert (not b!302824))

(assert (not b!302828))

(assert (not b!302831))

(assert (not b!302827))

(assert (not b!302832))

(assert (not b!302830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

