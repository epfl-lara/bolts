; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65320 () Bool)

(assert start!65320)

(declare-datatypes ((array!41446 0))(
  ( (array!41447 (arr!19833 (Array (_ BitVec 32) (_ BitVec 64))) (size!20254 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41446)

(declare-datatypes ((SeekEntryResult!7440 0))(
  ( (MissingZero!7440 (index!32127 (_ BitVec 32))) (Found!7440 (index!32128 (_ BitVec 32))) (Intermediate!7440 (undefined!8252 Bool) (index!32129 (_ BitVec 32)) (x!63135 (_ BitVec 32))) (Undefined!7440) (MissingVacant!7440 (index!32130 (_ BitVec 32))) )
))
(declare-fun lt!329389 () SeekEntryResult!7440)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!741364 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!414432 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41446 (_ BitVec 32)) SeekEntryResult!7440)

(assert (=> b!741364 (= e!414432 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19833 a!3186) j!159) a!3186 mask!3328) lt!329389))))

(declare-fun b!741365 () Bool)

(declare-fun res!498818 () Bool)

(declare-fun e!414426 () Bool)

(assert (=> b!741365 (=> (not res!498818) (not e!414426))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741365 (= res!498818 (validKeyInArray!0 k!2102))))

(declare-fun b!741366 () Bool)

(declare-fun e!414427 () Bool)

(declare-fun e!414428 () Bool)

(assert (=> b!741366 (= e!414427 e!414428)))

(declare-fun res!498819 () Bool)

(assert (=> b!741366 (=> (not res!498819) (not e!414428))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741366 (= res!498819 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19833 a!3186) j!159) mask!3328) (select (arr!19833 a!3186) j!159) a!3186 mask!3328) lt!329389))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741366 (= lt!329389 (Intermediate!7440 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!498810 () Bool)

(assert (=> start!65320 (=> (not res!498810) (not e!414426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65320 (= res!498810 (validMask!0 mask!3328))))

(assert (=> start!65320 e!414426))

(assert (=> start!65320 true))

(declare-fun array_inv!15607 (array!41446) Bool)

(assert (=> start!65320 (array_inv!15607 a!3186)))

(declare-fun lt!329391 () SeekEntryResult!7440)

(declare-fun e!414430 () Bool)

(declare-fun b!741367 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41446 (_ BitVec 32)) SeekEntryResult!7440)

(assert (=> b!741367 (= e!414430 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19833 a!3186) j!159) a!3186 mask!3328) lt!329391))))

(declare-fun b!741368 () Bool)

(assert (=> b!741368 (= e!414432 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19833 a!3186) j!159) a!3186 mask!3328) (Found!7440 j!159)))))

(declare-fun b!741369 () Bool)

(declare-fun res!498812 () Bool)

(assert (=> b!741369 (=> (not res!498812) (not e!414428))))

(assert (=> b!741369 (= res!498812 e!414432)))

(declare-fun c!81660 () Bool)

(assert (=> b!741369 (= c!81660 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741370 () Bool)

(declare-fun res!498813 () Bool)

(assert (=> b!741370 (=> (not res!498813) (not e!414426))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741370 (= res!498813 (and (= (size!20254 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20254 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20254 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741371 () Bool)

(declare-fun res!498807 () Bool)

(assert (=> b!741371 (=> (not res!498807) (not e!414426))))

(assert (=> b!741371 (= res!498807 (validKeyInArray!0 (select (arr!19833 a!3186) j!159)))))

(declare-fun b!741372 () Bool)

(declare-fun e!414425 () Bool)

(assert (=> b!741372 (= e!414428 e!414425)))

(declare-fun res!498806 () Bool)

(assert (=> b!741372 (=> (not res!498806) (not e!414425))))

(declare-fun lt!329393 () SeekEntryResult!7440)

(declare-fun lt!329390 () SeekEntryResult!7440)

(assert (=> b!741372 (= res!498806 (= lt!329393 lt!329390))))

(declare-fun lt!329392 () array!41446)

(declare-fun lt!329395 () (_ BitVec 64))

(assert (=> b!741372 (= lt!329390 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329395 lt!329392 mask!3328))))

(assert (=> b!741372 (= lt!329393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329395 mask!3328) lt!329395 lt!329392 mask!3328))))

(assert (=> b!741372 (= lt!329395 (select (store (arr!19833 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741372 (= lt!329392 (array!41447 (store (arr!19833 a!3186) i!1173 k!2102) (size!20254 a!3186)))))

(declare-fun b!741373 () Bool)

(assert (=> b!741373 (= e!414426 e!414427)))

(declare-fun res!498815 () Bool)

(assert (=> b!741373 (=> (not res!498815) (not e!414427))))

(declare-fun lt!329396 () SeekEntryResult!7440)

(assert (=> b!741373 (= res!498815 (or (= lt!329396 (MissingZero!7440 i!1173)) (= lt!329396 (MissingVacant!7440 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41446 (_ BitVec 32)) SeekEntryResult!7440)

(assert (=> b!741373 (= lt!329396 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741374 () Bool)

(declare-fun res!498816 () Bool)

(assert (=> b!741374 (=> (not res!498816) (not e!414427))))

(declare-datatypes ((List!13888 0))(
  ( (Nil!13885) (Cons!13884 (h!14956 (_ BitVec 64)) (t!20211 List!13888)) )
))
(declare-fun arrayNoDuplicates!0 (array!41446 (_ BitVec 32) List!13888) Bool)

(assert (=> b!741374 (= res!498816 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13885))))

(declare-fun b!741375 () Bool)

(declare-fun res!498805 () Bool)

(assert (=> b!741375 (=> (not res!498805) (not e!414428))))

(assert (=> b!741375 (= res!498805 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19833 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741376 () Bool)

(declare-fun e!414429 () Bool)

(assert (=> b!741376 (= e!414429 e!414430)))

(declare-fun res!498809 () Bool)

(assert (=> b!741376 (=> (not res!498809) (not e!414430))))

(assert (=> b!741376 (= res!498809 (= (seekEntryOrOpen!0 (select (arr!19833 a!3186) j!159) a!3186 mask!3328) lt!329391))))

(assert (=> b!741376 (= lt!329391 (Found!7440 j!159))))

(declare-fun b!741377 () Bool)

(declare-fun res!498814 () Bool)

(assert (=> b!741377 (=> (not res!498814) (not e!414427))))

(assert (=> b!741377 (= res!498814 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20254 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20254 a!3186))))))

(declare-fun b!741378 () Bool)

(declare-fun res!498811 () Bool)

(assert (=> b!741378 (=> (not res!498811) (not e!414427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41446 (_ BitVec 32)) Bool)

(assert (=> b!741378 (= res!498811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741379 () Bool)

(declare-fun res!498808 () Bool)

(assert (=> b!741379 (=> (not res!498808) (not e!414426))))

(declare-fun arrayContainsKey!0 (array!41446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741379 (= res!498808 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741380 () Bool)

(assert (=> b!741380 (= e!414425 (not (or (not (is-Intermediate!7440 lt!329390)) (not (= x!1131 (x!63135 lt!329390))) (not (= index!1321 (index!32129 lt!329390))) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!741380 e!414429))

(declare-fun res!498817 () Bool)

(assert (=> b!741380 (=> (not res!498817) (not e!414429))))

(assert (=> b!741380 (= res!498817 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25360 0))(
  ( (Unit!25361) )
))
(declare-fun lt!329394 () Unit!25360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25360)

(assert (=> b!741380 (= lt!329394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65320 res!498810) b!741370))

(assert (= (and b!741370 res!498813) b!741371))

(assert (= (and b!741371 res!498807) b!741365))

(assert (= (and b!741365 res!498818) b!741379))

(assert (= (and b!741379 res!498808) b!741373))

(assert (= (and b!741373 res!498815) b!741378))

(assert (= (and b!741378 res!498811) b!741374))

(assert (= (and b!741374 res!498816) b!741377))

(assert (= (and b!741377 res!498814) b!741366))

(assert (= (and b!741366 res!498819) b!741375))

(assert (= (and b!741375 res!498805) b!741369))

(assert (= (and b!741369 c!81660) b!741364))

(assert (= (and b!741369 (not c!81660)) b!741368))

(assert (= (and b!741369 res!498812) b!741372))

(assert (= (and b!741372 res!498806) b!741380))

(assert (= (and b!741380 res!498817) b!741376))

(assert (= (and b!741376 res!498809) b!741367))

(declare-fun m!692431 () Bool)

(assert (=> b!741364 m!692431))

(assert (=> b!741364 m!692431))

(declare-fun m!692433 () Bool)

(assert (=> b!741364 m!692433))

(declare-fun m!692435 () Bool)

(assert (=> b!741379 m!692435))

(declare-fun m!692437 () Bool)

(assert (=> start!65320 m!692437))

(declare-fun m!692439 () Bool)

(assert (=> start!65320 m!692439))

(declare-fun m!692441 () Bool)

(assert (=> b!741373 m!692441))

(declare-fun m!692443 () Bool)

(assert (=> b!741372 m!692443))

(declare-fun m!692445 () Bool)

(assert (=> b!741372 m!692445))

(declare-fun m!692447 () Bool)

(assert (=> b!741372 m!692447))

(declare-fun m!692449 () Bool)

(assert (=> b!741372 m!692449))

(assert (=> b!741372 m!692449))

(declare-fun m!692451 () Bool)

(assert (=> b!741372 m!692451))

(declare-fun m!692453 () Bool)

(assert (=> b!741380 m!692453))

(declare-fun m!692455 () Bool)

(assert (=> b!741380 m!692455))

(declare-fun m!692457 () Bool)

(assert (=> b!741365 m!692457))

(assert (=> b!741366 m!692431))

(assert (=> b!741366 m!692431))

(declare-fun m!692459 () Bool)

(assert (=> b!741366 m!692459))

(assert (=> b!741366 m!692459))

(assert (=> b!741366 m!692431))

(declare-fun m!692461 () Bool)

(assert (=> b!741366 m!692461))

(declare-fun m!692463 () Bool)

(assert (=> b!741375 m!692463))

(assert (=> b!741376 m!692431))

(assert (=> b!741376 m!692431))

(declare-fun m!692465 () Bool)

(assert (=> b!741376 m!692465))

(assert (=> b!741367 m!692431))

(assert (=> b!741367 m!692431))

(declare-fun m!692467 () Bool)

(assert (=> b!741367 m!692467))

(declare-fun m!692469 () Bool)

(assert (=> b!741374 m!692469))

(assert (=> b!741368 m!692431))

(assert (=> b!741368 m!692431))

(declare-fun m!692471 () Bool)

(assert (=> b!741368 m!692471))

(declare-fun m!692473 () Bool)

(assert (=> b!741378 m!692473))

(assert (=> b!741371 m!692431))

(assert (=> b!741371 m!692431))

(declare-fun m!692475 () Bool)

(assert (=> b!741371 m!692475))

(push 1)

(assert (not b!741364))

(assert (not b!741371))

(assert (not b!741378))

(assert (not b!741365))

(assert (not b!741372))

(assert (not b!741374))

(assert (not b!741380))

(assert (not b!741376))

(assert (not b!741379))

(assert (not b!741368))

(assert (not b!741373))

(assert (not b!741367))

(assert (not b!741366))

(assert (not start!65320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

