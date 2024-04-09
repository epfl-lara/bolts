; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30276 () Bool)

(assert start!30276)

(declare-fun b!302770 () Bool)

(declare-fun res!160416 () Bool)

(declare-fun e!190711 () Bool)

(assert (=> b!302770 (=> (not res!160416) (not e!190711))))

(declare-datatypes ((array!15380 0))(
  ( (array!15381 (arr!7276 (Array (_ BitVec 32) (_ BitVec 64))) (size!7628 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15380)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15380 (_ BitVec 32)) Bool)

(assert (=> b!302770 (= res!160416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302771 () Bool)

(declare-fun res!160414 () Bool)

(declare-fun e!190710 () Bool)

(assert (=> b!302771 (=> (not res!160414) (not e!190710))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302771 (= res!160414 (and (= (select (arr!7276 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7628 a!3293))))))

(declare-fun b!302772 () Bool)

(declare-fun res!160422 () Bool)

(assert (=> b!302772 (=> (not res!160422) (not e!190711))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302772 (= res!160422 (validKeyInArray!0 k!2441))))

(declare-fun b!302773 () Bool)

(assert (=> b!302773 (= e!190711 e!190710)))

(declare-fun res!160420 () Bool)

(assert (=> b!302773 (=> (not res!160420) (not e!190710))))

(declare-datatypes ((SeekEntryResult!2427 0))(
  ( (MissingZero!2427 (index!11884 (_ BitVec 32))) (Found!2427 (index!11885 (_ BitVec 32))) (Intermediate!2427 (undefined!3239 Bool) (index!11886 (_ BitVec 32)) (x!30119 (_ BitVec 32))) (Undefined!2427) (MissingVacant!2427 (index!11887 (_ BitVec 32))) )
))
(declare-fun lt!150113 () SeekEntryResult!2427)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15380 (_ BitVec 32)) SeekEntryResult!2427)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302773 (= res!160420 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150113))))

(assert (=> b!302773 (= lt!150113 (Intermediate!2427 false resIndex!52 resX!52))))

(declare-fun res!160421 () Bool)

(assert (=> start!30276 (=> (not res!160421) (not e!190711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30276 (= res!160421 (validMask!0 mask!3709))))

(assert (=> start!30276 e!190711))

(declare-fun array_inv!5230 (array!15380) Bool)

(assert (=> start!30276 (array_inv!5230 a!3293)))

(assert (=> start!30276 true))

(declare-fun b!302774 () Bool)

(declare-fun res!160417 () Bool)

(assert (=> b!302774 (=> (not res!160417) (not e!190710))))

(assert (=> b!302774 (= res!160417 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150113))))

(declare-fun b!302775 () Bool)

(declare-fun res!160415 () Bool)

(assert (=> b!302775 (=> (not res!160415) (not e!190711))))

(declare-fun arrayContainsKey!0 (array!15380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302775 (= res!160415 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302776 () Bool)

(assert (=> b!302776 (= e!190710 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7276 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7276 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7276 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!302777 () Bool)

(declare-fun res!160419 () Bool)

(assert (=> b!302777 (=> (not res!160419) (not e!190711))))

(assert (=> b!302777 (= res!160419 (and (= (size!7628 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7628 a!3293))))))

(declare-fun b!302778 () Bool)

(declare-fun res!160418 () Bool)

(assert (=> b!302778 (=> (not res!160418) (not e!190711))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15380 (_ BitVec 32)) SeekEntryResult!2427)

(assert (=> b!302778 (= res!160418 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2427 i!1240)))))

(assert (= (and start!30276 res!160421) b!302777))

(assert (= (and b!302777 res!160419) b!302772))

(assert (= (and b!302772 res!160422) b!302775))

(assert (= (and b!302775 res!160415) b!302778))

(assert (= (and b!302778 res!160418) b!302770))

(assert (= (and b!302770 res!160416) b!302773))

(assert (= (and b!302773 res!160420) b!302771))

(assert (= (and b!302771 res!160414) b!302774))

(assert (= (and b!302774 res!160417) b!302776))

(declare-fun m!314245 () Bool)

(assert (=> b!302778 m!314245))

(declare-fun m!314247 () Bool)

(assert (=> b!302774 m!314247))

(declare-fun m!314249 () Bool)

(assert (=> b!302771 m!314249))

(declare-fun m!314251 () Bool)

(assert (=> b!302772 m!314251))

(declare-fun m!314253 () Bool)

(assert (=> b!302773 m!314253))

(assert (=> b!302773 m!314253))

(declare-fun m!314255 () Bool)

(assert (=> b!302773 m!314255))

(declare-fun m!314257 () Bool)

(assert (=> start!30276 m!314257))

(declare-fun m!314259 () Bool)

(assert (=> start!30276 m!314259))

(declare-fun m!314261 () Bool)

(assert (=> b!302775 m!314261))

(declare-fun m!314263 () Bool)

(assert (=> b!302770 m!314263))

(declare-fun m!314265 () Bool)

(assert (=> b!302776 m!314265))

(push 1)

(assert (not b!302773))

(assert (not b!302775))

(assert (not b!302774))

(assert (not b!302772))

(assert (not b!302778))

