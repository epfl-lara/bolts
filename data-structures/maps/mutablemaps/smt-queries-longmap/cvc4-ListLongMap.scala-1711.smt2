; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31510 () Bool)

(assert start!31510)

(declare-fun b!315082 () Bool)

(declare-fun e!196168 () Bool)

(declare-fun e!196166 () Bool)

(assert (=> b!315082 (= e!196168 e!196166)))

(declare-fun res!170697 () Bool)

(assert (=> b!315082 (=> (not res!170697) (not e!196166))))

(declare-datatypes ((array!16083 0))(
  ( (array!16084 (arr!7611 (Array (_ BitVec 32) (_ BitVec 64))) (size!7963 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16083)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2762 0))(
  ( (MissingZero!2762 (index!13224 (_ BitVec 32))) (Found!2762 (index!13225 (_ BitVec 32))) (Intermediate!2762 (undefined!3574 Bool) (index!13226 (_ BitVec 32)) (x!31426 (_ BitVec 32))) (Undefined!2762) (MissingVacant!2762 (index!13227 (_ BitVec 32))) )
))
(declare-fun lt!154162 () SeekEntryResult!2762)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16083 (_ BitVec 32)) SeekEntryResult!2762)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315082 (= res!170697 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154162))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315082 (= lt!154162 (Intermediate!2762 false resIndex!52 resX!52))))

(declare-fun b!315083 () Bool)

(declare-fun res!170690 () Bool)

(assert (=> b!315083 (=> (not res!170690) (not e!196168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16083 (_ BitVec 32)) Bool)

(assert (=> b!315083 (= res!170690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315084 () Bool)

(declare-fun e!196165 () Bool)

(declare-fun lt!154161 () SeekEntryResult!2762)

(assert (=> b!315084 (= e!196165 (not (is-Intermediate!2762 lt!154161)))))

(declare-fun lt!154163 () SeekEntryResult!2762)

(assert (=> b!315084 (= lt!154163 lt!154161)))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315084 (= lt!154161 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315085 () Bool)

(declare-fun res!170694 () Bool)

(assert (=> b!315085 (=> (not res!170694) (not e!196168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315085 (= res!170694 (validKeyInArray!0 k!2441))))

(declare-fun res!170693 () Bool)

(assert (=> start!31510 (=> (not res!170693) (not e!196168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31510 (= res!170693 (validMask!0 mask!3709))))

(assert (=> start!31510 e!196168))

(declare-fun array_inv!5565 (array!16083) Bool)

(assert (=> start!31510 (array_inv!5565 a!3293)))

(assert (=> start!31510 true))

(declare-fun b!315086 () Bool)

(assert (=> b!315086 (= e!196166 e!196165)))

(declare-fun res!170691 () Bool)

(assert (=> b!315086 (=> (not res!170691) (not e!196165))))

(assert (=> b!315086 (= res!170691 (and (= lt!154163 lt!154162) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7611 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7611 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7611 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315086 (= lt!154163 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!315087 () Bool)

(declare-fun res!170695 () Bool)

(assert (=> b!315087 (=> (not res!170695) (not e!196168))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315087 (= res!170695 (and (= (size!7963 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7963 a!3293))))))

(declare-fun b!315088 () Bool)

(declare-fun res!170689 () Bool)

(assert (=> b!315088 (=> (not res!170689) (not e!196168))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16083 (_ BitVec 32)) SeekEntryResult!2762)

(assert (=> b!315088 (= res!170689 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2762 i!1240)))))

(declare-fun b!315089 () Bool)

(declare-fun res!170696 () Bool)

(assert (=> b!315089 (=> (not res!170696) (not e!196168))))

(declare-fun arrayContainsKey!0 (array!16083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315089 (= res!170696 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315090 () Bool)

(declare-fun res!170692 () Bool)

(assert (=> b!315090 (=> (not res!170692) (not e!196166))))

(assert (=> b!315090 (= res!170692 (and (= (select (arr!7611 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7963 a!3293))))))

(assert (= (and start!31510 res!170693) b!315087))

(assert (= (and b!315087 res!170695) b!315085))

(assert (= (and b!315085 res!170694) b!315089))

(assert (= (and b!315089 res!170696) b!315088))

(assert (= (and b!315088 res!170689) b!315083))

(assert (= (and b!315083 res!170690) b!315082))

(assert (= (and b!315082 res!170697) b!315090))

(assert (= (and b!315090 res!170692) b!315086))

(assert (= (and b!315086 res!170691) b!315084))

(declare-fun m!324431 () Bool)

(assert (=> b!315083 m!324431))

(declare-fun m!324433 () Bool)

(assert (=> b!315085 m!324433))

(declare-fun m!324435 () Bool)

(assert (=> b!315082 m!324435))

(assert (=> b!315082 m!324435))

(declare-fun m!324437 () Bool)

(assert (=> b!315082 m!324437))

(declare-fun m!324439 () Bool)

(assert (=> start!31510 m!324439))

(declare-fun m!324441 () Bool)

(assert (=> start!31510 m!324441))

(declare-fun m!324443 () Bool)

(assert (=> b!315089 m!324443))

(declare-fun m!324445 () Bool)

(assert (=> b!315086 m!324445))

(declare-fun m!324447 () Bool)

(assert (=> b!315086 m!324447))

(declare-fun m!324449 () Bool)

(assert (=> b!315088 m!324449))

(declare-fun m!324451 () Bool)

(assert (=> b!315090 m!324451))

(declare-fun m!324453 () Bool)

(assert (=> b!315084 m!324453))

(assert (=> b!315084 m!324453))

(declare-fun m!324455 () Bool)

(assert (=> b!315084 m!324455))

(push 1)

(assert (not b!315083))

(assert (not b!315089))

(assert (not start!31510))

(assert (not b!315085))

(assert (not b!315086))

(assert (not b!315088))

(assert (not b!315084))

