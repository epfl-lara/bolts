; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47776 () Bool)

(assert start!47776)

(declare-fun b!525691 () Bool)

(declare-fun res!322544 () Bool)

(declare-fun e!306478 () Bool)

(assert (=> b!525691 (=> (not res!322544) (not e!306478))))

(declare-datatypes ((array!33373 0))(
  ( (array!33374 (arr!16035 (Array (_ BitVec 32) (_ BitVec 64))) (size!16399 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33373)

(declare-datatypes ((List!10246 0))(
  ( (Nil!10243) (Cons!10242 (h!11173 (_ BitVec 64)) (t!16482 List!10246)) )
))
(declare-fun arrayNoDuplicates!0 (array!33373 (_ BitVec 32) List!10246) Bool)

(assert (=> b!525691 (= res!322544 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10243))))

(declare-fun res!322548 () Bool)

(declare-fun e!306480 () Bool)

(assert (=> start!47776 (=> (not res!322548) (not e!306480))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47776 (= res!322548 (validMask!0 mask!3524))))

(assert (=> start!47776 e!306480))

(assert (=> start!47776 true))

(declare-fun array_inv!11809 (array!33373) Bool)

(assert (=> start!47776 (array_inv!11809 a!3235)))

(declare-fun b!525692 () Bool)

(assert (=> b!525692 (= e!306480 e!306478)))

(declare-fun res!322545 () Bool)

(assert (=> b!525692 (=> (not res!322545) (not e!306478))))

(declare-datatypes ((SeekEntryResult!4509 0))(
  ( (MissingZero!4509 (index!20248 (_ BitVec 32))) (Found!4509 (index!20249 (_ BitVec 32))) (Intermediate!4509 (undefined!5321 Bool) (index!20250 (_ BitVec 32)) (x!49253 (_ BitVec 32))) (Undefined!4509) (MissingVacant!4509 (index!20251 (_ BitVec 32))) )
))
(declare-fun lt!241678 () SeekEntryResult!4509)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525692 (= res!322545 (or (= lt!241678 (MissingZero!4509 i!1204)) (= lt!241678 (MissingVacant!4509 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33373 (_ BitVec 32)) SeekEntryResult!4509)

(assert (=> b!525692 (= lt!241678 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!306476 () Bool)

(declare-fun b!525693 () Bool)

(assert (=> b!525693 (= e!306476 (= (seekEntryOrOpen!0 (select (arr!16035 a!3235) j!176) a!3235 mask!3524) (Found!4509 j!176)))))

(declare-fun b!525694 () Bool)

(declare-fun res!322542 () Bool)

(assert (=> b!525694 (=> (not res!322542) (not e!306480))))

(declare-fun arrayContainsKey!0 (array!33373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525694 (= res!322542 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525695 () Bool)

(declare-fun e!306481 () Bool)

(assert (=> b!525695 (= e!306478 (not e!306481))))

(declare-fun res!322553 () Bool)

(assert (=> b!525695 (=> res!322553 e!306481)))

(declare-fun lt!241684 () SeekEntryResult!4509)

(declare-fun lt!241683 () (_ BitVec 64))

(declare-fun lt!241676 () array!33373)

(declare-fun lt!241685 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33373 (_ BitVec 32)) SeekEntryResult!4509)

(assert (=> b!525695 (= res!322553 (= lt!241684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241685 lt!241683 lt!241676 mask!3524)))))

(declare-fun lt!241679 () (_ BitVec 32))

(assert (=> b!525695 (= lt!241684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241679 (select (arr!16035 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525695 (= lt!241685 (toIndex!0 lt!241683 mask!3524))))

(assert (=> b!525695 (= lt!241683 (select (store (arr!16035 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525695 (= lt!241679 (toIndex!0 (select (arr!16035 a!3235) j!176) mask!3524))))

(assert (=> b!525695 (= lt!241676 (array!33374 (store (arr!16035 a!3235) i!1204 k!2280) (size!16399 a!3235)))))

(assert (=> b!525695 e!306476))

(declare-fun res!322551 () Bool)

(assert (=> b!525695 (=> (not res!322551) (not e!306476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33373 (_ BitVec 32)) Bool)

(assert (=> b!525695 (= res!322551 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16502 0))(
  ( (Unit!16503) )
))
(declare-fun lt!241677 () Unit!16502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33373 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16502)

(assert (=> b!525695 (= lt!241677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525696 () Bool)

(declare-fun res!322549 () Bool)

(assert (=> b!525696 (=> res!322549 e!306481)))

(assert (=> b!525696 (= res!322549 (or (undefined!5321 lt!241684) (not (is-Intermediate!4509 lt!241684))))))

(declare-fun b!525697 () Bool)

(declare-fun e!306479 () Unit!16502)

(declare-fun Unit!16504 () Unit!16502)

(assert (=> b!525697 (= e!306479 Unit!16504)))

(declare-fun lt!241681 () Unit!16502)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33373 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16502)

(assert (=> b!525697 (= lt!241681 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241679 #b00000000000000000000000000000000 (index!20250 lt!241684) (x!49253 lt!241684) mask!3524))))

(declare-fun res!322547 () Bool)

(assert (=> b!525697 (= res!322547 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241679 lt!241683 lt!241676 mask!3524) (Intermediate!4509 false (index!20250 lt!241684) (x!49253 lt!241684))))))

(declare-fun e!306477 () Bool)

(assert (=> b!525697 (=> (not res!322547) (not e!306477))))

(assert (=> b!525697 e!306477))

(declare-fun b!525698 () Bool)

(declare-fun res!322552 () Bool)

(assert (=> b!525698 (=> (not res!322552) (not e!306480))))

(assert (=> b!525698 (= res!322552 (and (= (size!16399 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16399 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16399 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525699 () Bool)

(declare-fun res!322550 () Bool)

(assert (=> b!525699 (=> (not res!322550) (not e!306480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525699 (= res!322550 (validKeyInArray!0 k!2280))))

(declare-fun b!525700 () Bool)

(assert (=> b!525700 (= e!306477 false)))

(declare-fun b!525701 () Bool)

(declare-fun res!322546 () Bool)

(assert (=> b!525701 (=> (not res!322546) (not e!306480))))

(assert (=> b!525701 (= res!322546 (validKeyInArray!0 (select (arr!16035 a!3235) j!176)))))

(declare-fun b!525702 () Bool)

(declare-fun Unit!16505 () Unit!16502)

(assert (=> b!525702 (= e!306479 Unit!16505)))

(declare-fun b!525703 () Bool)

(assert (=> b!525703 (= e!306481 true)))

(assert (=> b!525703 (= (index!20250 lt!241684) i!1204)))

(declare-fun lt!241680 () Unit!16502)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33373 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16502)

(assert (=> b!525703 (= lt!241680 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241679 #b00000000000000000000000000000000 (index!20250 lt!241684) (x!49253 lt!241684) mask!3524))))

(assert (=> b!525703 (and (or (= (select (arr!16035 a!3235) (index!20250 lt!241684)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16035 a!3235) (index!20250 lt!241684)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16035 a!3235) (index!20250 lt!241684)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16035 a!3235) (index!20250 lt!241684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241682 () Unit!16502)

(assert (=> b!525703 (= lt!241682 e!306479)))

(declare-fun c!61880 () Bool)

(assert (=> b!525703 (= c!61880 (= (select (arr!16035 a!3235) (index!20250 lt!241684)) (select (arr!16035 a!3235) j!176)))))

(assert (=> b!525703 (and (bvslt (x!49253 lt!241684) #b01111111111111111111111111111110) (or (= (select (arr!16035 a!3235) (index!20250 lt!241684)) (select (arr!16035 a!3235) j!176)) (= (select (arr!16035 a!3235) (index!20250 lt!241684)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16035 a!3235) (index!20250 lt!241684)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525704 () Bool)

(declare-fun res!322543 () Bool)

(assert (=> b!525704 (=> (not res!322543) (not e!306478))))

(assert (=> b!525704 (= res!322543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47776 res!322548) b!525698))

(assert (= (and b!525698 res!322552) b!525701))

(assert (= (and b!525701 res!322546) b!525699))

(assert (= (and b!525699 res!322550) b!525694))

(assert (= (and b!525694 res!322542) b!525692))

(assert (= (and b!525692 res!322545) b!525704))

(assert (= (and b!525704 res!322543) b!525691))

(assert (= (and b!525691 res!322544) b!525695))

(assert (= (and b!525695 res!322551) b!525693))

(assert (= (and b!525695 (not res!322553)) b!525696))

(assert (= (and b!525696 (not res!322549)) b!525703))

(assert (= (and b!525703 c!61880) b!525697))

(assert (= (and b!525703 (not c!61880)) b!525702))

(assert (= (and b!525697 res!322547) b!525700))

(declare-fun m!506407 () Bool)

(assert (=> b!525704 m!506407))

(declare-fun m!506409 () Bool)

(assert (=> b!525703 m!506409))

(declare-fun m!506411 () Bool)

(assert (=> b!525703 m!506411))

(declare-fun m!506413 () Bool)

(assert (=> b!525703 m!506413))

(declare-fun m!506415 () Bool)

(assert (=> b!525695 m!506415))

(declare-fun m!506417 () Bool)

(assert (=> b!525695 m!506417))

(declare-fun m!506419 () Bool)

(assert (=> b!525695 m!506419))

(declare-fun m!506421 () Bool)

(assert (=> b!525695 m!506421))

(declare-fun m!506423 () Bool)

(assert (=> b!525695 m!506423))

(assert (=> b!525695 m!506413))

(declare-fun m!506425 () Bool)

(assert (=> b!525695 m!506425))

(assert (=> b!525695 m!506413))

(assert (=> b!525695 m!506413))

(declare-fun m!506427 () Bool)

(assert (=> b!525695 m!506427))

(declare-fun m!506429 () Bool)

(assert (=> b!525695 m!506429))

(declare-fun m!506431 () Bool)

(assert (=> b!525699 m!506431))

(declare-fun m!506433 () Bool)

(assert (=> b!525694 m!506433))

(assert (=> b!525701 m!506413))

(assert (=> b!525701 m!506413))

(declare-fun m!506435 () Bool)

(assert (=> b!525701 m!506435))

(declare-fun m!506437 () Bool)

(assert (=> start!47776 m!506437))

(declare-fun m!506439 () Bool)

(assert (=> start!47776 m!506439))

(declare-fun m!506441 () Bool)

(assert (=> b!525697 m!506441))

(declare-fun m!506443 () Bool)

(assert (=> b!525697 m!506443))

(declare-fun m!506445 () Bool)

(assert (=> b!525692 m!506445))

(assert (=> b!525693 m!506413))

(assert (=> b!525693 m!506413))

(declare-fun m!506447 () Bool)

(assert (=> b!525693 m!506447))

(declare-fun m!506449 () Bool)

(assert (=> b!525691 m!506449))

(push 1)

