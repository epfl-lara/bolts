; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32392 () Bool)

(assert start!32392)

(declare-fun b!322617 () Bool)

(declare-datatypes ((Unit!9906 0))(
  ( (Unit!9907) )
))
(declare-fun e!199592 () Unit!9906)

(declare-fun Unit!9908 () Unit!9906)

(assert (=> b!322617 (= e!199592 Unit!9908)))

(declare-fun b!322618 () Bool)

(assert (=> b!322618 false))

(declare-fun e!199591 () Unit!9906)

(declare-fun Unit!9909 () Unit!9906)

(assert (=> b!322618 (= e!199591 Unit!9909)))

(declare-fun b!322619 () Bool)

(declare-fun res!176551 () Bool)

(declare-fun e!199589 () Bool)

(assert (=> b!322619 (=> (not res!176551) (not e!199589))))

(declare-datatypes ((array!16527 0))(
  ( (array!16528 (arr!7818 (Array (_ BitVec 32) (_ BitVec 64))) (size!8170 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16527)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16527 (_ BitVec 32)) Bool)

(assert (=> b!322619 (= res!176551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322620 () Bool)

(declare-fun res!176544 () Bool)

(assert (=> b!322620 (=> (not res!176544) (not e!199589))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322620 (= res!176544 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!322621 () Bool)

(declare-fun e!199590 () Bool)

(assert (=> b!322621 (= e!199590 (not (or (not (= (select (arr!7818 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322621 (= index!1840 resIndex!58)))

(declare-fun lt!156481 () Unit!9906)

(assert (=> b!322621 (= lt!156481 e!199592)))

(declare-fun c!50664 () Bool)

(assert (=> b!322621 (= c!50664 (not (= resIndex!58 index!1840)))))

(declare-fun b!322622 () Bool)

(declare-fun res!176549 () Bool)

(assert (=> b!322622 (=> (not res!176549) (not e!199589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322622 (= res!176549 (validKeyInArray!0 k!2497))))

(declare-fun b!322623 () Bool)

(declare-fun res!176547 () Bool)

(assert (=> b!322623 (=> (not res!176547) (not e!199590))))

(declare-datatypes ((SeekEntryResult!2960 0))(
  ( (MissingZero!2960 (index!14016 (_ BitVec 32))) (Found!2960 (index!14017 (_ BitVec 32))) (Intermediate!2960 (undefined!3772 Bool) (index!14018 (_ BitVec 32)) (x!32239 (_ BitVec 32))) (Undefined!2960) (MissingVacant!2960 (index!14019 (_ BitVec 32))) )
))
(declare-fun lt!156480 () SeekEntryResult!2960)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16527 (_ BitVec 32)) SeekEntryResult!2960)

(assert (=> b!322623 (= res!176547 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156480))))

(declare-fun b!322624 () Bool)

(declare-fun e!199593 () Unit!9906)

(declare-fun Unit!9910 () Unit!9906)

(assert (=> b!322624 (= e!199593 Unit!9910)))

(assert (=> b!322624 false))

(declare-fun b!322626 () Bool)

(declare-fun res!176552 () Bool)

(assert (=> b!322626 (=> (not res!176552) (not e!199589))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322626 (= res!176552 (and (= (size!8170 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8170 a!3305))))))

(declare-fun b!322627 () Bool)

(declare-fun res!176546 () Bool)

(assert (=> b!322627 (=> (not res!176546) (not e!199590))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322627 (= res!176546 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7818 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322628 () Bool)

(declare-fun Unit!9911 () Unit!9906)

(assert (=> b!322628 (= e!199593 Unit!9911)))

(declare-fun b!322629 () Bool)

(assert (=> b!322629 (= e!199589 e!199590)))

(declare-fun res!176553 () Bool)

(assert (=> b!322629 (=> (not res!176553) (not e!199590))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322629 (= res!176553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156480))))

(assert (=> b!322629 (= lt!156480 (Intermediate!2960 false resIndex!58 resX!58))))

(declare-fun b!322630 () Bool)

(assert (=> b!322630 (= e!199592 e!199591)))

(declare-fun c!50665 () Bool)

(assert (=> b!322630 (= c!50665 (or (= (select (arr!7818 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7818 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322631 () Bool)

(assert (=> b!322631 false))

(declare-fun lt!156482 () Unit!9906)

(assert (=> b!322631 (= lt!156482 e!199593)))

(declare-fun c!50666 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322631 (= c!50666 (is-Intermediate!2960 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9912 () Unit!9906)

(assert (=> b!322631 (= e!199591 Unit!9912)))

(declare-fun b!322632 () Bool)

(declare-fun res!176545 () Bool)

(assert (=> b!322632 (=> (not res!176545) (not e!199589))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16527 (_ BitVec 32)) SeekEntryResult!2960)

(assert (=> b!322632 (= res!176545 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2960 i!1250)))))

(declare-fun res!176548 () Bool)

(assert (=> start!32392 (=> (not res!176548) (not e!199589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32392 (= res!176548 (validMask!0 mask!3777))))

(assert (=> start!32392 e!199589))

(declare-fun array_inv!5772 (array!16527) Bool)

(assert (=> start!32392 (array_inv!5772 a!3305)))

(assert (=> start!32392 true))

(declare-fun b!322625 () Bool)

(declare-fun res!176550 () Bool)

(assert (=> b!322625 (=> (not res!176550) (not e!199590))))

(assert (=> b!322625 (= res!176550 (and (= (select (arr!7818 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8170 a!3305))))))

(assert (= (and start!32392 res!176548) b!322626))

(assert (= (and b!322626 res!176552) b!322622))

(assert (= (and b!322622 res!176549) b!322620))

(assert (= (and b!322620 res!176544) b!322632))

(assert (= (and b!322632 res!176545) b!322619))

(assert (= (and b!322619 res!176551) b!322629))

(assert (= (and b!322629 res!176553) b!322625))

(assert (= (and b!322625 res!176550) b!322623))

(assert (= (and b!322623 res!176547) b!322627))

(assert (= (and b!322627 res!176546) b!322621))

(assert (= (and b!322621 c!50664) b!322630))

(assert (= (and b!322621 (not c!50664)) b!322617))

(assert (= (and b!322630 c!50665) b!322618))

(assert (= (and b!322630 (not c!50665)) b!322631))

(assert (= (and b!322631 c!50666) b!322628))

(assert (= (and b!322631 (not c!50666)) b!322624))

(declare-fun m!330323 () Bool)

(assert (=> b!322629 m!330323))

(assert (=> b!322629 m!330323))

(declare-fun m!330325 () Bool)

(assert (=> b!322629 m!330325))

(declare-fun m!330327 () Bool)

(assert (=> b!322623 m!330327))

(declare-fun m!330329 () Bool)

(assert (=> b!322631 m!330329))

(assert (=> b!322631 m!330329))

(declare-fun m!330331 () Bool)

(assert (=> b!322631 m!330331))

(declare-fun m!330333 () Bool)

(assert (=> b!322630 m!330333))

(declare-fun m!330335 () Bool)

(assert (=> start!32392 m!330335))

(declare-fun m!330337 () Bool)

(assert (=> start!32392 m!330337))

(declare-fun m!330339 () Bool)

(assert (=> b!322620 m!330339))

(declare-fun m!330341 () Bool)

(assert (=> b!322625 m!330341))

(declare-fun m!330343 () Bool)

(assert (=> b!322619 m!330343))

(assert (=> b!322627 m!330333))

(declare-fun m!330345 () Bool)

(assert (=> b!322632 m!330345))

(declare-fun m!330347 () Bool)

(assert (=> b!322622 m!330347))

(assert (=> b!322621 m!330333))

(push 1)

(assert (not start!32392))

(assert (not b!322631))

(assert (not b!322629))

(assert (not b!322622))

(assert (not b!322620))

(assert (not b!322623))

(assert (not b!322619))

(assert (not b!322632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

