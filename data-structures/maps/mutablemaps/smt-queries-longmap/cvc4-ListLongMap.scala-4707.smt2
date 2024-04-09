; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65324 () Bool)

(assert start!65324)

(declare-fun b!741466 () Bool)

(declare-fun res!498897 () Bool)

(declare-fun e!414474 () Bool)

(assert (=> b!741466 (=> (not res!498897) (not e!414474))))

(declare-datatypes ((array!41450 0))(
  ( (array!41451 (arr!19835 (Array (_ BitVec 32) (_ BitVec 64))) (size!20256 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41450)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!741466 (= res!498897 (and (= (size!20256 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20256 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20256 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741467 () Bool)

(declare-fun res!498909 () Bool)

(declare-fun e!414473 () Bool)

(assert (=> b!741467 (=> (not res!498909) (not e!414473))))

(declare-datatypes ((List!13890 0))(
  ( (Nil!13887) (Cons!13886 (h!14958 (_ BitVec 64)) (t!20213 List!13890)) )
))
(declare-fun arrayNoDuplicates!0 (array!41450 (_ BitVec 32) List!13890) Bool)

(assert (=> b!741467 (= res!498909 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13887))))

(declare-fun b!741468 () Bool)

(declare-fun e!414475 () Bool)

(declare-fun e!414479 () Bool)

(assert (=> b!741468 (= e!414475 e!414479)))

(declare-fun res!498902 () Bool)

(assert (=> b!741468 (=> (not res!498902) (not e!414479))))

(declare-datatypes ((SeekEntryResult!7442 0))(
  ( (MissingZero!7442 (index!32135 (_ BitVec 32))) (Found!7442 (index!32136 (_ BitVec 32))) (Intermediate!7442 (undefined!8254 Bool) (index!32137 (_ BitVec 32)) (x!63137 (_ BitVec 32))) (Undefined!7442) (MissingVacant!7442 (index!32138 (_ BitVec 32))) )
))
(declare-fun lt!329437 () SeekEntryResult!7442)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41450 (_ BitVec 32)) SeekEntryResult!7442)

(assert (=> b!741468 (= res!498902 (= (seekEntryOrOpen!0 (select (arr!19835 a!3186) j!159) a!3186 mask!3328) lt!329437))))

(assert (=> b!741468 (= lt!329437 (Found!7442 j!159))))

(declare-fun b!741469 () Bool)

(declare-fun res!498904 () Bool)

(declare-fun e!414476 () Bool)

(assert (=> b!741469 (=> (not res!498904) (not e!414476))))

(declare-fun e!414480 () Bool)

(assert (=> b!741469 (= res!498904 e!414480)))

(declare-fun c!81666 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741469 (= c!81666 (bvsle x!1131 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!741470 () Bool)

(declare-fun lt!329438 () SeekEntryResult!7442)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41450 (_ BitVec 32)) SeekEntryResult!7442)

(assert (=> b!741470 (= e!414480 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19835 a!3186) j!159) a!3186 mask!3328) lt!329438))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!741471 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41450 (_ BitVec 32)) SeekEntryResult!7442)

(assert (=> b!741471 (= e!414479 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19835 a!3186) j!159) a!3186 mask!3328) lt!329437))))

(declare-fun b!741472 () Bool)

(declare-fun res!498898 () Bool)

(assert (=> b!741472 (=> (not res!498898) (not e!414474))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741472 (= res!498898 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741473 () Bool)

(declare-fun res!498896 () Bool)

(assert (=> b!741473 (=> (not res!498896) (not e!414476))))

(assert (=> b!741473 (= res!498896 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19835 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741474 () Bool)

(declare-fun res!498907 () Bool)

(assert (=> b!741474 (=> (not res!498907) (not e!414473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41450 (_ BitVec 32)) Bool)

(assert (=> b!741474 (= res!498907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!329444 () SeekEntryResult!7442)

(declare-fun b!741475 () Bool)

(declare-fun e!414478 () Bool)

(assert (=> b!741475 (= e!414478 (not (or (not (is-Intermediate!7442 lt!329444)) (not (= x!1131 (x!63137 lt!329444))) (not (= index!1321 (index!32137 lt!329444))) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!741475 e!414475))

(declare-fun res!498908 () Bool)

(assert (=> b!741475 (=> (not res!498908) (not e!414475))))

(assert (=> b!741475 (= res!498908 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25364 0))(
  ( (Unit!25365) )
))
(declare-fun lt!329443 () Unit!25364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41450 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25364)

(assert (=> b!741475 (= lt!329443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741476 () Bool)

(declare-fun res!498900 () Bool)

(assert (=> b!741476 (=> (not res!498900) (not e!414474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741476 (= res!498900 (validKeyInArray!0 (select (arr!19835 a!3186) j!159)))))

(declare-fun b!741477 () Bool)

(assert (=> b!741477 (= e!414480 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19835 a!3186) j!159) a!3186 mask!3328) (Found!7442 j!159)))))

(declare-fun b!741478 () Bool)

(assert (=> b!741478 (= e!414473 e!414476)))

(declare-fun res!498905 () Bool)

(assert (=> b!741478 (=> (not res!498905) (not e!414476))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741478 (= res!498905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19835 a!3186) j!159) mask!3328) (select (arr!19835 a!3186) j!159) a!3186 mask!3328) lt!329438))))

(assert (=> b!741478 (= lt!329438 (Intermediate!7442 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741479 () Bool)

(assert (=> b!741479 (= e!414476 e!414478)))

(declare-fun res!498906 () Bool)

(assert (=> b!741479 (=> (not res!498906) (not e!414478))))

(declare-fun lt!329442 () SeekEntryResult!7442)

(assert (=> b!741479 (= res!498906 (= lt!329442 lt!329444))))

(declare-fun lt!329440 () array!41450)

(declare-fun lt!329439 () (_ BitVec 64))

(assert (=> b!741479 (= lt!329444 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329439 lt!329440 mask!3328))))

(assert (=> b!741479 (= lt!329442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329439 mask!3328) lt!329439 lt!329440 mask!3328))))

(assert (=> b!741479 (= lt!329439 (select (store (arr!19835 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741479 (= lt!329440 (array!41451 (store (arr!19835 a!3186) i!1173 k!2102) (size!20256 a!3186)))))

(declare-fun b!741480 () Bool)

(assert (=> b!741480 (= e!414474 e!414473)))

(declare-fun res!498895 () Bool)

(assert (=> b!741480 (=> (not res!498895) (not e!414473))))

(declare-fun lt!329441 () SeekEntryResult!7442)

(assert (=> b!741480 (= res!498895 (or (= lt!329441 (MissingZero!7442 i!1173)) (= lt!329441 (MissingVacant!7442 i!1173))))))

(assert (=> b!741480 (= lt!329441 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741481 () Bool)

(declare-fun res!498899 () Bool)

(assert (=> b!741481 (=> (not res!498899) (not e!414473))))

(assert (=> b!741481 (= res!498899 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20256 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20256 a!3186))))))

(declare-fun res!498903 () Bool)

(assert (=> start!65324 (=> (not res!498903) (not e!414474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65324 (= res!498903 (validMask!0 mask!3328))))

(assert (=> start!65324 e!414474))

(assert (=> start!65324 true))

(declare-fun array_inv!15609 (array!41450) Bool)

(assert (=> start!65324 (array_inv!15609 a!3186)))

(declare-fun b!741482 () Bool)

(declare-fun res!498901 () Bool)

(assert (=> b!741482 (=> (not res!498901) (not e!414474))))

(assert (=> b!741482 (= res!498901 (validKeyInArray!0 k!2102))))

(assert (= (and start!65324 res!498903) b!741466))

(assert (= (and b!741466 res!498897) b!741476))

(assert (= (and b!741476 res!498900) b!741482))

(assert (= (and b!741482 res!498901) b!741472))

(assert (= (and b!741472 res!498898) b!741480))

(assert (= (and b!741480 res!498895) b!741474))

(assert (= (and b!741474 res!498907) b!741467))

(assert (= (and b!741467 res!498909) b!741481))

(assert (= (and b!741481 res!498899) b!741478))

(assert (= (and b!741478 res!498905) b!741473))

(assert (= (and b!741473 res!498896) b!741469))

(assert (= (and b!741469 c!81666) b!741470))

(assert (= (and b!741469 (not c!81666)) b!741477))

(assert (= (and b!741469 res!498904) b!741479))

(assert (= (and b!741479 res!498906) b!741475))

(assert (= (and b!741475 res!498908) b!741468))

(assert (= (and b!741468 res!498902) b!741471))

(declare-fun m!692523 () Bool)

(assert (=> b!741477 m!692523))

(assert (=> b!741477 m!692523))

(declare-fun m!692525 () Bool)

(assert (=> b!741477 m!692525))

(assert (=> b!741471 m!692523))

(assert (=> b!741471 m!692523))

(declare-fun m!692527 () Bool)

(assert (=> b!741471 m!692527))

(declare-fun m!692529 () Bool)

(assert (=> b!741473 m!692529))

(declare-fun m!692531 () Bool)

(assert (=> b!741474 m!692531))

(declare-fun m!692533 () Bool)

(assert (=> b!741475 m!692533))

(declare-fun m!692535 () Bool)

(assert (=> b!741475 m!692535))

(declare-fun m!692537 () Bool)

(assert (=> b!741480 m!692537))

(declare-fun m!692539 () Bool)

(assert (=> b!741479 m!692539))

(declare-fun m!692541 () Bool)

(assert (=> b!741479 m!692541))

(declare-fun m!692543 () Bool)

(assert (=> b!741479 m!692543))

(assert (=> b!741479 m!692541))

(declare-fun m!692545 () Bool)

(assert (=> b!741479 m!692545))

(declare-fun m!692547 () Bool)

(assert (=> b!741479 m!692547))

(assert (=> b!741470 m!692523))

(assert (=> b!741470 m!692523))

(declare-fun m!692549 () Bool)

(assert (=> b!741470 m!692549))

(assert (=> b!741478 m!692523))

(assert (=> b!741478 m!692523))

(declare-fun m!692551 () Bool)

(assert (=> b!741478 m!692551))

(assert (=> b!741478 m!692551))

(assert (=> b!741478 m!692523))

(declare-fun m!692553 () Bool)

(assert (=> b!741478 m!692553))

(declare-fun m!692555 () Bool)

(assert (=> b!741472 m!692555))

(assert (=> b!741476 m!692523))

(assert (=> b!741476 m!692523))

(declare-fun m!692557 () Bool)

(assert (=> b!741476 m!692557))

(declare-fun m!692559 () Bool)

(assert (=> b!741467 m!692559))

(assert (=> b!741468 m!692523))

(assert (=> b!741468 m!692523))

(declare-fun m!692561 () Bool)

(assert (=> b!741468 m!692561))

(declare-fun m!692563 () Bool)

(assert (=> start!65324 m!692563))

(declare-fun m!692565 () Bool)

(assert (=> start!65324 m!692565))

(declare-fun m!692567 () Bool)

(assert (=> b!741482 m!692567))

(push 1)

(assert (not b!741467))

(assert (not b!741479))

(assert (not b!741482))

(assert (not b!741470))

(assert (not b!741474))

(assert (not b!741480))

(assert (not b!741475))

(assert (not b!741478))

(assert (not b!741471))

(assert (not b!741477))

(assert (not start!65324))

(assert (not b!741468))

(assert (not b!741476))

(assert (not b!741472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

