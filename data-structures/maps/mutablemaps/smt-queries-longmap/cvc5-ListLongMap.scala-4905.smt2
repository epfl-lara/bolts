; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67690 () Bool)

(assert start!67690)

(declare-fun b!783794 () Bool)

(declare-fun e!435824 () Bool)

(declare-fun e!435816 () Bool)

(assert (=> b!783794 (= e!435824 (not e!435816))))

(declare-fun res!530457 () Bool)

(assert (=> b!783794 (=> res!530457 e!435816)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8034 0))(
  ( (MissingZero!8034 (index!34503 (_ BitVec 32))) (Found!8034 (index!34504 (_ BitVec 32))) (Intermediate!8034 (undefined!8846 Bool) (index!34505 (_ BitVec 32)) (x!65487 (_ BitVec 32))) (Undefined!8034) (MissingVacant!8034 (index!34506 (_ BitVec 32))) )
))
(declare-fun lt!349390 () SeekEntryResult!8034)

(assert (=> b!783794 (= res!530457 (or (not (is-Intermediate!8034 lt!349390)) (bvslt x!1131 (x!65487 lt!349390)) (not (= x!1131 (x!65487 lt!349390))) (not (= index!1321 (index!34505 lt!349390)))))))

(declare-fun e!435825 () Bool)

(assert (=> b!783794 e!435825))

(declare-fun res!530454 () Bool)

(assert (=> b!783794 (=> (not res!530454) (not e!435825))))

(declare-fun lt!349391 () SeekEntryResult!8034)

(declare-fun lt!349389 () SeekEntryResult!8034)

(assert (=> b!783794 (= res!530454 (= lt!349391 lt!349389))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!783794 (= lt!349389 (Found!8034 j!159))))

(declare-datatypes ((array!42685 0))(
  ( (array!42686 (arr!20427 (Array (_ BitVec 32) (_ BitVec 64))) (size!20848 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42685)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42685 (_ BitVec 32)) SeekEntryResult!8034)

(assert (=> b!783794 (= lt!349391 (seekEntryOrOpen!0 (select (arr!20427 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42685 (_ BitVec 32)) Bool)

(assert (=> b!783794 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27046 0))(
  ( (Unit!27047) )
))
(declare-fun lt!349384 () Unit!27046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27046)

(assert (=> b!783794 (= lt!349384 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783795 () Bool)

(declare-fun res!530447 () Bool)

(declare-fun e!435826 () Bool)

(assert (=> b!783795 (=> (not res!530447) (not e!435826))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783795 (= res!530447 (and (= (size!20848 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20848 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20848 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!530443 () Bool)

(assert (=> start!67690 (=> (not res!530443) (not e!435826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67690 (= res!530443 (validMask!0 mask!3328))))

(assert (=> start!67690 e!435826))

(assert (=> start!67690 true))

(declare-fun array_inv!16201 (array!42685) Bool)

(assert (=> start!67690 (array_inv!16201 a!3186)))

(declare-fun b!783796 () Bool)

(declare-fun e!435820 () Bool)

(declare-fun lt!349382 () SeekEntryResult!8034)

(assert (=> b!783796 (= e!435820 (= lt!349391 lt!349382))))

(declare-fun b!783797 () Bool)

(declare-fun e!435819 () Bool)

(assert (=> b!783797 (= e!435816 e!435819)))

(declare-fun res!530459 () Bool)

(assert (=> b!783797 (=> res!530459 e!435819)))

(assert (=> b!783797 (= res!530459 (not (= lt!349382 lt!349389)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42685 (_ BitVec 32)) SeekEntryResult!8034)

(assert (=> b!783797 (= lt!349382 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20427 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783798 () Bool)

(declare-fun e!435818 () Bool)

(declare-fun e!435821 () Bool)

(assert (=> b!783798 (= e!435818 e!435821)))

(declare-fun res!530444 () Bool)

(assert (=> b!783798 (=> (not res!530444) (not e!435821))))

(declare-fun lt!349383 () SeekEntryResult!8034)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42685 (_ BitVec 32)) SeekEntryResult!8034)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783798 (= res!530444 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20427 a!3186) j!159) mask!3328) (select (arr!20427 a!3186) j!159) a!3186 mask!3328) lt!349383))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783798 (= lt!349383 (Intermediate!8034 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783799 () Bool)

(declare-fun res!530461 () Bool)

(assert (=> b!783799 (=> (not res!530461) (not e!435818))))

(assert (=> b!783799 (= res!530461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783800 () Bool)

(declare-fun res!530456 () Bool)

(assert (=> b!783800 (=> (not res!530456) (not e!435826))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783800 (= res!530456 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783801 () Bool)

(assert (=> b!783801 (= e!435821 e!435824)))

(declare-fun res!530446 () Bool)

(assert (=> b!783801 (=> (not res!530446) (not e!435824))))

(declare-fun lt!349392 () SeekEntryResult!8034)

(assert (=> b!783801 (= res!530446 (= lt!349392 lt!349390))))

(declare-fun lt!349385 () (_ BitVec 64))

(declare-fun lt!349386 () array!42685)

(assert (=> b!783801 (= lt!349390 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349385 lt!349386 mask!3328))))

(assert (=> b!783801 (= lt!349392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349385 mask!3328) lt!349385 lt!349386 mask!3328))))

(assert (=> b!783801 (= lt!349385 (select (store (arr!20427 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783801 (= lt!349386 (array!42686 (store (arr!20427 a!3186) i!1173 k!2102) (size!20848 a!3186)))))

(declare-fun b!783802 () Bool)

(declare-fun res!530448 () Bool)

(assert (=> b!783802 (=> (not res!530448) (not e!435821))))

(assert (=> b!783802 (= res!530448 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20427 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783803 () Bool)

(declare-fun e!435823 () Unit!27046)

(declare-fun Unit!27048 () Unit!27046)

(assert (=> b!783803 (= e!435823 Unit!27048)))

(assert (=> b!783803 false))

(declare-fun b!783804 () Bool)

(assert (=> b!783804 (= e!435825 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20427 a!3186) j!159) a!3186 mask!3328) lt!349389))))

(declare-fun b!783805 () Bool)

(declare-fun res!530449 () Bool)

(assert (=> b!783805 (=> (not res!530449) (not e!435821))))

(declare-fun e!435817 () Bool)

(assert (=> b!783805 (= res!530449 e!435817)))

(declare-fun c!87083 () Bool)

(assert (=> b!783805 (= c!87083 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783806 () Bool)

(assert (=> b!783806 (= e!435826 e!435818)))

(declare-fun res!530445 () Bool)

(assert (=> b!783806 (=> (not res!530445) (not e!435818))))

(declare-fun lt!349393 () SeekEntryResult!8034)

(assert (=> b!783806 (= res!530445 (or (= lt!349393 (MissingZero!8034 i!1173)) (= lt!349393 (MissingVacant!8034 i!1173))))))

(assert (=> b!783806 (= lt!349393 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783807 () Bool)

(declare-fun res!530451 () Bool)

(assert (=> b!783807 (=> (not res!530451) (not e!435826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783807 (= res!530451 (validKeyInArray!0 k!2102))))

(declare-fun b!783808 () Bool)

(declare-fun e!435822 () Bool)

(assert (=> b!783808 (= e!435819 e!435822)))

(declare-fun res!530455 () Bool)

(assert (=> b!783808 (=> res!530455 e!435822)))

(declare-fun lt!349388 () (_ BitVec 64))

(assert (=> b!783808 (= res!530455 (= lt!349388 lt!349385))))

(assert (=> b!783808 (= lt!349388 (select (store (arr!20427 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783809 () Bool)

(assert (=> b!783809 (= e!435817 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20427 a!3186) j!159) a!3186 mask!3328) lt!349383))))

(declare-fun b!783810 () Bool)

(declare-fun res!530452 () Bool)

(assert (=> b!783810 (=> (not res!530452) (not e!435818))))

(assert (=> b!783810 (= res!530452 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20848 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20848 a!3186))))))

(declare-fun b!783811 () Bool)

(declare-fun Unit!27049 () Unit!27046)

(assert (=> b!783811 (= e!435823 Unit!27049)))

(declare-fun b!783812 () Bool)

(assert (=> b!783812 (= e!435822 true)))

(assert (=> b!783812 e!435820))

(declare-fun res!530453 () Bool)

(assert (=> b!783812 (=> (not res!530453) (not e!435820))))

(assert (=> b!783812 (= res!530453 (= lt!349388 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349387 () Unit!27046)

(assert (=> b!783812 (= lt!349387 e!435823)))

(declare-fun c!87084 () Bool)

(assert (=> b!783812 (= c!87084 (= lt!349388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783813 () Bool)

(assert (=> b!783813 (= e!435817 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20427 a!3186) j!159) a!3186 mask!3328) (Found!8034 j!159)))))

(declare-fun b!783814 () Bool)

(declare-fun res!530460 () Bool)

(assert (=> b!783814 (=> (not res!530460) (not e!435818))))

(declare-datatypes ((List!14482 0))(
  ( (Nil!14479) (Cons!14478 (h!15601 (_ BitVec 64)) (t!20805 List!14482)) )
))
(declare-fun arrayNoDuplicates!0 (array!42685 (_ BitVec 32) List!14482) Bool)

(assert (=> b!783814 (= res!530460 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14479))))

(declare-fun b!783815 () Bool)

(declare-fun res!530458 () Bool)

(assert (=> b!783815 (=> (not res!530458) (not e!435826))))

(assert (=> b!783815 (= res!530458 (validKeyInArray!0 (select (arr!20427 a!3186) j!159)))))

(declare-fun b!783816 () Bool)

(declare-fun res!530450 () Bool)

(assert (=> b!783816 (=> (not res!530450) (not e!435820))))

(assert (=> b!783816 (= res!530450 (= (seekEntryOrOpen!0 lt!349385 lt!349386 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349385 lt!349386 mask!3328)))))

(assert (= (and start!67690 res!530443) b!783795))

(assert (= (and b!783795 res!530447) b!783815))

(assert (= (and b!783815 res!530458) b!783807))

(assert (= (and b!783807 res!530451) b!783800))

(assert (= (and b!783800 res!530456) b!783806))

(assert (= (and b!783806 res!530445) b!783799))

(assert (= (and b!783799 res!530461) b!783814))

(assert (= (and b!783814 res!530460) b!783810))

(assert (= (and b!783810 res!530452) b!783798))

(assert (= (and b!783798 res!530444) b!783802))

(assert (= (and b!783802 res!530448) b!783805))

(assert (= (and b!783805 c!87083) b!783809))

(assert (= (and b!783805 (not c!87083)) b!783813))

(assert (= (and b!783805 res!530449) b!783801))

(assert (= (and b!783801 res!530446) b!783794))

(assert (= (and b!783794 res!530454) b!783804))

(assert (= (and b!783794 (not res!530457)) b!783797))

(assert (= (and b!783797 (not res!530459)) b!783808))

(assert (= (and b!783808 (not res!530455)) b!783812))

(assert (= (and b!783812 c!87084) b!783803))

(assert (= (and b!783812 (not c!87084)) b!783811))

(assert (= (and b!783812 res!530453) b!783816))

(assert (= (and b!783816 res!530450) b!783796))

(declare-fun m!726313 () Bool)

(assert (=> b!783797 m!726313))

(assert (=> b!783797 m!726313))

(declare-fun m!726315 () Bool)

(assert (=> b!783797 m!726315))

(declare-fun m!726317 () Bool)

(assert (=> b!783806 m!726317))

(assert (=> b!783794 m!726313))

(assert (=> b!783794 m!726313))

(declare-fun m!726319 () Bool)

(assert (=> b!783794 m!726319))

(declare-fun m!726321 () Bool)

(assert (=> b!783794 m!726321))

(declare-fun m!726323 () Bool)

(assert (=> b!783794 m!726323))

(assert (=> b!783804 m!726313))

(assert (=> b!783804 m!726313))

(declare-fun m!726325 () Bool)

(assert (=> b!783804 m!726325))

(declare-fun m!726327 () Bool)

(assert (=> b!783801 m!726327))

(declare-fun m!726329 () Bool)

(assert (=> b!783801 m!726329))

(declare-fun m!726331 () Bool)

(assert (=> b!783801 m!726331))

(declare-fun m!726333 () Bool)

(assert (=> b!783801 m!726333))

(assert (=> b!783801 m!726327))

(declare-fun m!726335 () Bool)

(assert (=> b!783801 m!726335))

(declare-fun m!726337 () Bool)

(assert (=> b!783807 m!726337))

(declare-fun m!726339 () Bool)

(assert (=> b!783799 m!726339))

(assert (=> b!783798 m!726313))

(assert (=> b!783798 m!726313))

(declare-fun m!726341 () Bool)

(assert (=> b!783798 m!726341))

(assert (=> b!783798 m!726341))

(assert (=> b!783798 m!726313))

(declare-fun m!726343 () Bool)

(assert (=> b!783798 m!726343))

(assert (=> b!783808 m!726331))

(declare-fun m!726345 () Bool)

(assert (=> b!783808 m!726345))

(declare-fun m!726347 () Bool)

(assert (=> b!783802 m!726347))

(declare-fun m!726349 () Bool)

(assert (=> b!783800 m!726349))

(declare-fun m!726351 () Bool)

(assert (=> b!783816 m!726351))

(declare-fun m!726353 () Bool)

(assert (=> b!783816 m!726353))

(declare-fun m!726355 () Bool)

(assert (=> b!783814 m!726355))

(assert (=> b!783815 m!726313))

(assert (=> b!783815 m!726313))

(declare-fun m!726357 () Bool)

(assert (=> b!783815 m!726357))

(assert (=> b!783813 m!726313))

(assert (=> b!783813 m!726313))

(assert (=> b!783813 m!726315))

(assert (=> b!783809 m!726313))

(assert (=> b!783809 m!726313))

(declare-fun m!726359 () Bool)

(assert (=> b!783809 m!726359))

(declare-fun m!726361 () Bool)

(assert (=> start!67690 m!726361))

(declare-fun m!726363 () Bool)

(assert (=> start!67690 m!726363))

(push 1)

