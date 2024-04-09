; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65206 () Bool)

(assert start!65206)

(declare-fun res!495784 () Bool)

(declare-fun e!412491 () Bool)

(assert (=> start!65206 (=> (not res!495784) (not e!412491))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65206 (= res!495784 (validMask!0 mask!3328))))

(assert (=> start!65206 e!412491))

(assert (=> start!65206 true))

(declare-datatypes ((array!41332 0))(
  ( (array!41333 (arr!19776 (Array (_ BitVec 32) (_ BitVec 64))) (size!20197 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41332)

(declare-fun array_inv!15550 (array!41332) Bool)

(assert (=> start!65206 (array_inv!15550 a!3186)))

(declare-fun b!737418 () Bool)

(declare-fun res!495771 () Bool)

(assert (=> b!737418 (=> (not res!495771) (not e!412491))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737418 (= res!495771 (validKeyInArray!0 k!2102))))

(declare-fun b!737419 () Bool)

(declare-fun res!495778 () Bool)

(declare-fun e!412487 () Bool)

(assert (=> b!737419 (=> (not res!495778) (not e!412487))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737419 (= res!495778 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19776 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737420 () Bool)

(declare-fun res!495773 () Bool)

(declare-fun e!412485 () Bool)

(assert (=> b!737420 (=> (not res!495773) (not e!412485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41332 (_ BitVec 32)) Bool)

(assert (=> b!737420 (= res!495773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737421 () Bool)

(declare-fun res!495781 () Bool)

(assert (=> b!737421 (=> (not res!495781) (not e!412491))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!737421 (= res!495781 (and (= (size!20197 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20197 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20197 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737422 () Bool)

(declare-datatypes ((Unit!25150 0))(
  ( (Unit!25151) )
))
(declare-fun e!412481 () Unit!25150)

(declare-fun Unit!25152 () Unit!25150)

(assert (=> b!737422 (= e!412481 Unit!25152)))

(declare-datatypes ((SeekEntryResult!7383 0))(
  ( (MissingZero!7383 (index!31899 (_ BitVec 32))) (Found!7383 (index!31900 (_ BitVec 32))) (Intermediate!7383 (undefined!8195 Bool) (index!31901 (_ BitVec 32)) (x!62926 (_ BitVec 32))) (Undefined!7383) (MissingVacant!7383 (index!31902 (_ BitVec 32))) )
))
(declare-fun lt!327211 () SeekEntryResult!7383)

(declare-fun lt!327206 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41332 (_ BitVec 32)) SeekEntryResult!7383)

(assert (=> b!737422 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327206 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327211)))

(declare-fun b!737423 () Bool)

(declare-fun e!412486 () Bool)

(declare-fun e!412488 () Bool)

(assert (=> b!737423 (= e!412486 e!412488)))

(declare-fun res!495776 () Bool)

(assert (=> b!737423 (=> (not res!495776) (not e!412488))))

(declare-fun lt!327207 () SeekEntryResult!7383)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41332 (_ BitVec 32)) SeekEntryResult!7383)

(assert (=> b!737423 (= res!495776 (= (seekEntryOrOpen!0 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327207))))

(assert (=> b!737423 (= lt!327207 (Found!7383 j!159))))

(declare-fun b!737424 () Bool)

(declare-fun e!412482 () Bool)

(assert (=> b!737424 (= e!412487 e!412482)))

(declare-fun res!495769 () Bool)

(assert (=> b!737424 (=> (not res!495769) (not e!412482))))

(declare-fun lt!327210 () SeekEntryResult!7383)

(declare-fun lt!327213 () SeekEntryResult!7383)

(assert (=> b!737424 (= res!495769 (= lt!327210 lt!327213))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!327212 () (_ BitVec 64))

(declare-fun lt!327216 () array!41332)

(assert (=> b!737424 (= lt!327213 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327212 lt!327216 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737424 (= lt!327210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327212 mask!3328) lt!327212 lt!327216 mask!3328))))

(assert (=> b!737424 (= lt!327212 (select (store (arr!19776 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737424 (= lt!327216 (array!41333 (store (arr!19776 a!3186) i!1173 k!2102) (size!20197 a!3186)))))

(declare-fun lt!327205 () SeekEntryResult!7383)

(declare-fun e!412489 () Bool)

(declare-fun b!737425 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41332 (_ BitVec 32)) SeekEntryResult!7383)

(assert (=> b!737425 (= e!412489 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327206 resIntermediateIndex!5 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327205)))))

(declare-fun b!737426 () Bool)

(declare-fun res!495785 () Bool)

(assert (=> b!737426 (=> (not res!495785) (not e!412485))))

(declare-datatypes ((List!13831 0))(
  ( (Nil!13828) (Cons!13827 (h!14899 (_ BitVec 64)) (t!20154 List!13831)) )
))
(declare-fun arrayNoDuplicates!0 (array!41332 (_ BitVec 32) List!13831) Bool)

(assert (=> b!737426 (= res!495785 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13828))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!737427 () Bool)

(assert (=> b!737427 (= e!412488 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327207))))

(declare-fun b!737428 () Bool)

(declare-fun e!412483 () Bool)

(assert (=> b!737428 (= e!412482 (not e!412483))))

(declare-fun res!495783 () Bool)

(assert (=> b!737428 (=> res!495783 e!412483)))

(assert (=> b!737428 (= res!495783 (or (not (is-Intermediate!7383 lt!327213)) (bvsge x!1131 (x!62926 lt!327213))))))

(assert (=> b!737428 (= lt!327205 (Found!7383 j!159))))

(assert (=> b!737428 e!412486))

(declare-fun res!495779 () Bool)

(assert (=> b!737428 (=> (not res!495779) (not e!412486))))

(assert (=> b!737428 (= res!495779 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327208 () Unit!25150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25150)

(assert (=> b!737428 (= lt!327208 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737429 () Bool)

(declare-fun res!495774 () Bool)

(assert (=> b!737429 (=> (not res!495774) (not e!412487))))

(declare-fun e!412480 () Bool)

(assert (=> b!737429 (= res!495774 e!412480)))

(declare-fun c!81207 () Bool)

(assert (=> b!737429 (= c!81207 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737430 () Bool)

(assert (=> b!737430 (= e!412480 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327211))))

(declare-fun b!737431 () Bool)

(assert (=> b!737431 (= e!412480 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) (Found!7383 j!159)))))

(declare-fun b!737432 () Bool)

(declare-fun Unit!25153 () Unit!25150)

(assert (=> b!737432 (= e!412481 Unit!25153)))

(declare-fun lt!327214 () SeekEntryResult!7383)

(assert (=> b!737432 (= lt!327214 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19776 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737432 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327206 resIntermediateIndex!5 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327205)))

(declare-fun b!737433 () Bool)

(declare-fun res!495777 () Bool)

(declare-fun e!412484 () Bool)

(assert (=> b!737433 (=> res!495777 e!412484)))

(assert (=> b!737433 (= res!495777 e!412489)))

(declare-fun c!81205 () Bool)

(declare-fun lt!327215 () Bool)

(assert (=> b!737433 (= c!81205 lt!327215)))

(declare-fun b!737434 () Bool)

(declare-fun res!495782 () Bool)

(assert (=> b!737434 (=> (not res!495782) (not e!412485))))

(assert (=> b!737434 (= res!495782 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20197 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20197 a!3186))))))

(declare-fun b!737435 () Bool)

(declare-fun res!495772 () Bool)

(assert (=> b!737435 (=> (not res!495772) (not e!412491))))

(assert (=> b!737435 (= res!495772 (validKeyInArray!0 (select (arr!19776 a!3186) j!159)))))

(declare-fun b!737436 () Bool)

(declare-fun res!495770 () Bool)

(assert (=> b!737436 (=> (not res!495770) (not e!412491))))

(declare-fun arrayContainsKey!0 (array!41332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737436 (= res!495770 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737437 () Bool)

(assert (=> b!737437 (= e!412491 e!412485)))

(declare-fun res!495775 () Bool)

(assert (=> b!737437 (=> (not res!495775) (not e!412485))))

(declare-fun lt!327218 () SeekEntryResult!7383)

(assert (=> b!737437 (= res!495775 (or (= lt!327218 (MissingZero!7383 i!1173)) (= lt!327218 (MissingVacant!7383 i!1173))))))

(assert (=> b!737437 (= lt!327218 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!737438 () Bool)

(assert (=> b!737438 (= e!412489 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327206 (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327211)))))

(declare-fun b!737439 () Bool)

(assert (=> b!737439 (= e!412485 e!412487)))

(declare-fun res!495786 () Bool)

(assert (=> b!737439 (=> (not res!495786) (not e!412487))))

(assert (=> b!737439 (= res!495786 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19776 a!3186) j!159) mask!3328) (select (arr!19776 a!3186) j!159) a!3186 mask!3328) lt!327211))))

(assert (=> b!737439 (= lt!327211 (Intermediate!7383 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737440 () Bool)

(assert (=> b!737440 (= e!412484 true)))

(declare-fun lt!327217 () SeekEntryResult!7383)

(assert (=> b!737440 (= lt!327217 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327206 lt!327212 lt!327216 mask!3328))))

(declare-fun b!737441 () Bool)

(assert (=> b!737441 (= e!412483 e!412484)))

(declare-fun res!495780 () Bool)

(assert (=> b!737441 (=> res!495780 e!412484)))

(assert (=> b!737441 (= res!495780 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327206 #b00000000000000000000000000000000) (bvsge lt!327206 (size!20197 a!3186))))))

(declare-fun lt!327209 () Unit!25150)

(assert (=> b!737441 (= lt!327209 e!412481)))

(declare-fun c!81206 () Bool)

(assert (=> b!737441 (= c!81206 lt!327215)))

(assert (=> b!737441 (= lt!327215 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737441 (= lt!327206 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!65206 res!495784) b!737421))

(assert (= (and b!737421 res!495781) b!737435))

(assert (= (and b!737435 res!495772) b!737418))

(assert (= (and b!737418 res!495771) b!737436))

(assert (= (and b!737436 res!495770) b!737437))

(assert (= (and b!737437 res!495775) b!737420))

(assert (= (and b!737420 res!495773) b!737426))

(assert (= (and b!737426 res!495785) b!737434))

(assert (= (and b!737434 res!495782) b!737439))

(assert (= (and b!737439 res!495786) b!737419))

(assert (= (and b!737419 res!495778) b!737429))

(assert (= (and b!737429 c!81207) b!737430))

(assert (= (and b!737429 (not c!81207)) b!737431))

(assert (= (and b!737429 res!495774) b!737424))

(assert (= (and b!737424 res!495769) b!737428))

(assert (= (and b!737428 res!495779) b!737423))

(assert (= (and b!737423 res!495776) b!737427))

(assert (= (and b!737428 (not res!495783)) b!737441))

(assert (= (and b!737441 c!81206) b!737422))

(assert (= (and b!737441 (not c!81206)) b!737432))

(assert (= (and b!737441 (not res!495780)) b!737433))

(assert (= (and b!737433 c!81205) b!737438))

(assert (= (and b!737433 (not c!81205)) b!737425))

(assert (= (and b!737433 (not res!495777)) b!737440))

(declare-fun m!689371 () Bool)

(assert (=> b!737432 m!689371))

(assert (=> b!737432 m!689371))

(declare-fun m!689373 () Bool)

(assert (=> b!737432 m!689373))

(assert (=> b!737432 m!689371))

(declare-fun m!689375 () Bool)

(assert (=> b!737432 m!689375))

(declare-fun m!689377 () Bool)

(assert (=> b!737437 m!689377))

(assert (=> b!737430 m!689371))

(assert (=> b!737430 m!689371))

(declare-fun m!689379 () Bool)

(assert (=> b!737430 m!689379))

(assert (=> b!737439 m!689371))

(assert (=> b!737439 m!689371))

(declare-fun m!689381 () Bool)

(assert (=> b!737439 m!689381))

(assert (=> b!737439 m!689381))

(assert (=> b!737439 m!689371))

(declare-fun m!689383 () Bool)

(assert (=> b!737439 m!689383))

(assert (=> b!737425 m!689371))

(assert (=> b!737425 m!689371))

(assert (=> b!737425 m!689375))

(declare-fun m!689385 () Bool)

(assert (=> b!737420 m!689385))

(declare-fun m!689387 () Bool)

(assert (=> b!737426 m!689387))

(declare-fun m!689389 () Bool)

(assert (=> b!737441 m!689389))

(declare-fun m!689391 () Bool)

(assert (=> b!737436 m!689391))

(assert (=> b!737427 m!689371))

(assert (=> b!737427 m!689371))

(declare-fun m!689393 () Bool)

(assert (=> b!737427 m!689393))

(assert (=> b!737422 m!689371))

(assert (=> b!737422 m!689371))

(declare-fun m!689395 () Bool)

(assert (=> b!737422 m!689395))

(declare-fun m!689397 () Bool)

(assert (=> b!737440 m!689397))

(assert (=> b!737438 m!689371))

(assert (=> b!737438 m!689371))

(assert (=> b!737438 m!689395))

(declare-fun m!689399 () Bool)

(assert (=> b!737419 m!689399))

(declare-fun m!689401 () Bool)

(assert (=> b!737424 m!689401))

(assert (=> b!737424 m!689401))

(declare-fun m!689403 () Bool)

(assert (=> b!737424 m!689403))

(declare-fun m!689405 () Bool)

(assert (=> b!737424 m!689405))

(declare-fun m!689407 () Bool)

(assert (=> b!737424 m!689407))

(declare-fun m!689409 () Bool)

(assert (=> b!737424 m!689409))

(assert (=> b!737431 m!689371))

(assert (=> b!737431 m!689371))

(assert (=> b!737431 m!689373))

(declare-fun m!689411 () Bool)

(assert (=> b!737418 m!689411))

(assert (=> b!737435 m!689371))

(assert (=> b!737435 m!689371))

(declare-fun m!689413 () Bool)

(assert (=> b!737435 m!689413))

(declare-fun m!689415 () Bool)

(assert (=> start!65206 m!689415))

(declare-fun m!689417 () Bool)

(assert (=> start!65206 m!689417))

(declare-fun m!689419 () Bool)

(assert (=> b!737428 m!689419))

(declare-fun m!689421 () Bool)

(assert (=> b!737428 m!689421))

(assert (=> b!737423 m!689371))

(assert (=> b!737423 m!689371))

(declare-fun m!689423 () Bool)

(assert (=> b!737423 m!689423))

(push 1)

