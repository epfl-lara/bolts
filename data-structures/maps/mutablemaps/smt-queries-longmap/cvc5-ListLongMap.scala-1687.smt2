; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31014 () Bool)

(assert start!31014)

(declare-fun b!311484 () Bool)

(declare-fun res!168097 () Bool)

(declare-fun e!194334 () Bool)

(assert (=> b!311484 (=> (not res!168097) (not e!194334))))

(declare-datatypes ((array!15914 0))(
  ( (array!15915 (arr!7537 (Array (_ BitVec 32) (_ BitVec 64))) (size!7889 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15914)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15914 (_ BitVec 32)) Bool)

(assert (=> b!311484 (= res!168097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311485 () Bool)

(declare-fun e!194331 () Bool)

(assert (=> b!311485 (= e!194331 (not true))))

(declare-fun e!194333 () Bool)

(assert (=> b!311485 e!194333))

(declare-fun res!168096 () Bool)

(assert (=> b!311485 (=> (not res!168096) (not e!194333))))

(declare-datatypes ((SeekEntryResult!2688 0))(
  ( (MissingZero!2688 (index!12928 (_ BitVec 32))) (Found!2688 (index!12929 (_ BitVec 32))) (Intermediate!2688 (undefined!3500 Bool) (index!12930 (_ BitVec 32)) (x!31112 (_ BitVec 32))) (Undefined!2688) (MissingVacant!2688 (index!12931 (_ BitVec 32))) )
))
(declare-fun lt!152414 () SeekEntryResult!2688)

(declare-fun lt!152417 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15914 (_ BitVec 32)) SeekEntryResult!2688)

(assert (=> b!311485 (= res!168096 (= lt!152414 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152417 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311485 (= lt!152417 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311486 () Bool)

(declare-fun res!168103 () Bool)

(assert (=> b!311486 (=> (not res!168103) (not e!194334))))

(declare-fun arrayContainsKey!0 (array!15914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311486 (= res!168103 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311487 () Bool)

(declare-fun e!194335 () Bool)

(assert (=> b!311487 (= e!194334 e!194335)))

(declare-fun res!168102 () Bool)

(assert (=> b!311487 (=> (not res!168102) (not e!194335))))

(declare-fun lt!152416 () SeekEntryResult!2688)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311487 (= res!168102 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152416))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311487 (= lt!152416 (Intermediate!2688 false resIndex!52 resX!52))))

(declare-fun res!168101 () Bool)

(assert (=> start!31014 (=> (not res!168101) (not e!194334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31014 (= res!168101 (validMask!0 mask!3709))))

(assert (=> start!31014 e!194334))

(declare-fun array_inv!5491 (array!15914) Bool)

(assert (=> start!31014 (array_inv!5491 a!3293)))

(assert (=> start!31014 true))

(declare-fun b!311488 () Bool)

(declare-fun res!168100 () Bool)

(assert (=> b!311488 (=> (not res!168100) (not e!194335))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311488 (= res!168100 (and (= (select (arr!7537 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7889 a!3293))))))

(declare-fun b!311489 () Bool)

(assert (=> b!311489 (= e!194335 e!194331)))

(declare-fun res!168104 () Bool)

(assert (=> b!311489 (=> (not res!168104) (not e!194331))))

(assert (=> b!311489 (= res!168104 (and (= lt!152414 lt!152416) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7537 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311489 (= lt!152414 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311490 () Bool)

(declare-fun lt!152415 () array!15914)

(assert (=> b!311490 (= e!194333 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152415 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152417 k!2441 lt!152415 mask!3709)))))

(assert (=> b!311490 (= lt!152415 (array!15915 (store (arr!7537 a!3293) i!1240 k!2441) (size!7889 a!3293)))))

(declare-fun b!311491 () Bool)

(declare-fun res!168105 () Bool)

(assert (=> b!311491 (=> (not res!168105) (not e!194334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311491 (= res!168105 (validKeyInArray!0 k!2441))))

(declare-fun b!311492 () Bool)

(declare-fun res!168098 () Bool)

(assert (=> b!311492 (=> (not res!168098) (not e!194334))))

(assert (=> b!311492 (= res!168098 (and (= (size!7889 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7889 a!3293))))))

(declare-fun b!311493 () Bool)

(declare-fun res!168099 () Bool)

(assert (=> b!311493 (=> (not res!168099) (not e!194334))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15914 (_ BitVec 32)) SeekEntryResult!2688)

(assert (=> b!311493 (= res!168099 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2688 i!1240)))))

(assert (= (and start!31014 res!168101) b!311492))

(assert (= (and b!311492 res!168098) b!311491))

(assert (= (and b!311491 res!168105) b!311486))

(assert (= (and b!311486 res!168103) b!311493))

(assert (= (and b!311493 res!168099) b!311484))

(assert (= (and b!311484 res!168097) b!311487))

(assert (= (and b!311487 res!168102) b!311488))

(assert (= (and b!311488 res!168100) b!311489))

(assert (= (and b!311489 res!168104) b!311485))

(assert (= (and b!311485 res!168096) b!311490))

(declare-fun m!321517 () Bool)

(assert (=> b!311485 m!321517))

(declare-fun m!321519 () Bool)

(assert (=> b!311485 m!321519))

(declare-fun m!321521 () Bool)

(assert (=> b!311491 m!321521))

(declare-fun m!321523 () Bool)

(assert (=> b!311487 m!321523))

(assert (=> b!311487 m!321523))

(declare-fun m!321525 () Bool)

(assert (=> b!311487 m!321525))

(declare-fun m!321527 () Bool)

(assert (=> b!311488 m!321527))

(declare-fun m!321529 () Bool)

(assert (=> start!31014 m!321529))

(declare-fun m!321531 () Bool)

(assert (=> start!31014 m!321531))

(declare-fun m!321533 () Bool)

(assert (=> b!311493 m!321533))

(declare-fun m!321535 () Bool)

(assert (=> b!311484 m!321535))

(declare-fun m!321537 () Bool)

(assert (=> b!311489 m!321537))

(declare-fun m!321539 () Bool)

(assert (=> b!311489 m!321539))

(declare-fun m!321541 () Bool)

(assert (=> b!311490 m!321541))

(declare-fun m!321543 () Bool)

(assert (=> b!311490 m!321543))

(declare-fun m!321545 () Bool)

(assert (=> b!311490 m!321545))

(declare-fun m!321547 () Bool)

(assert (=> b!311486 m!321547))

(push 1)

