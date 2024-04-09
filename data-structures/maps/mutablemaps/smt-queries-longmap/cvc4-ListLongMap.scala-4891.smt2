; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67478 () Bool)

(assert start!67478)

(declare-fun b!780355 () Bool)

(declare-fun e!434116 () Bool)

(declare-fun e!434115 () Bool)

(assert (=> b!780355 (= e!434116 e!434115)))

(declare-fun res!528104 () Bool)

(assert (=> b!780355 (=> (not res!528104) (not e!434115))))

(declare-datatypes ((array!42599 0))(
  ( (array!42600 (arr!20387 (Array (_ BitVec 32) (_ BitVec 64))) (size!20808 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42599)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7994 0))(
  ( (MissingZero!7994 (index!34343 (_ BitVec 32))) (Found!7994 (index!34344 (_ BitVec 32))) (Intermediate!7994 (undefined!8806 Bool) (index!34345 (_ BitVec 32)) (x!65317 (_ BitVec 32))) (Undefined!7994) (MissingVacant!7994 (index!34346 (_ BitVec 32))) )
))
(declare-fun lt!347774 () SeekEntryResult!7994)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42599 (_ BitVec 32)) SeekEntryResult!7994)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780355 (= res!528104 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20387 a!3186) j!159) mask!3328) (select (arr!20387 a!3186) j!159) a!3186 mask!3328) lt!347774))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780355 (= lt!347774 (Intermediate!7994 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780356 () Bool)

(declare-datatypes ((Unit!26886 0))(
  ( (Unit!26887) )
))
(declare-fun e!434110 () Unit!26886)

(declare-fun Unit!26888 () Unit!26886)

(assert (=> b!780356 (= e!434110 Unit!26888)))

(assert (=> b!780356 false))

(declare-fun b!780357 () Bool)

(declare-fun res!528118 () Bool)

(assert (=> b!780357 (=> (not res!528118) (not e!434116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42599 (_ BitVec 32)) Bool)

(assert (=> b!780357 (= res!528118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780358 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!434113 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42599 (_ BitVec 32)) SeekEntryResult!7994)

(assert (=> b!780358 (= e!434113 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20387 a!3186) j!159) a!3186 mask!3328) (Found!7994 j!159)))))

(declare-fun b!780359 () Bool)

(declare-fun res!528106 () Bool)

(declare-fun e!434109 () Bool)

(assert (=> b!780359 (=> res!528106 e!434109)))

(declare-fun lt!347775 () SeekEntryResult!7994)

(assert (=> b!780359 (= res!528106 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20387 a!3186) j!159) a!3186 mask!3328) lt!347775)))))

(declare-fun b!780360 () Bool)

(declare-fun e!434112 () Bool)

(assert (=> b!780360 (= e!434115 e!434112)))

(declare-fun res!528102 () Bool)

(assert (=> b!780360 (=> (not res!528102) (not e!434112))))

(declare-fun lt!347773 () SeekEntryResult!7994)

(declare-fun lt!347771 () SeekEntryResult!7994)

(assert (=> b!780360 (= res!528102 (= lt!347773 lt!347771))))

(declare-fun lt!347772 () (_ BitVec 64))

(declare-fun lt!347778 () array!42599)

(assert (=> b!780360 (= lt!347771 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347772 lt!347778 mask!3328))))

(assert (=> b!780360 (= lt!347773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347772 mask!3328) lt!347772 lt!347778 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!780360 (= lt!347772 (select (store (arr!20387 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780360 (= lt!347778 (array!42600 (store (arr!20387 a!3186) i!1173 k!2102) (size!20808 a!3186)))))

(declare-fun b!780361 () Bool)

(declare-fun res!528115 () Bool)

(assert (=> b!780361 (=> (not res!528115) (not e!434115))))

(assert (=> b!780361 (= res!528115 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20387 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!528110 () Bool)

(declare-fun e!434108 () Bool)

(assert (=> start!67478 (=> (not res!528110) (not e!434108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67478 (= res!528110 (validMask!0 mask!3328))))

(assert (=> start!67478 e!434108))

(assert (=> start!67478 true))

(declare-fun array_inv!16161 (array!42599) Bool)

(assert (=> start!67478 (array_inv!16161 a!3186)))

(declare-fun b!780362 () Bool)

(declare-fun res!528116 () Bool)

(assert (=> b!780362 (=> (not res!528116) (not e!434116))))

(declare-datatypes ((List!14442 0))(
  ( (Nil!14439) (Cons!14438 (h!15555 (_ BitVec 64)) (t!20765 List!14442)) )
))
(declare-fun arrayNoDuplicates!0 (array!42599 (_ BitVec 32) List!14442) Bool)

(assert (=> b!780362 (= res!528116 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14439))))

(declare-fun b!780363 () Bool)

(declare-fun res!528105 () Bool)

(assert (=> b!780363 (=> (not res!528105) (not e!434108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780363 (= res!528105 (validKeyInArray!0 (select (arr!20387 a!3186) j!159)))))

(declare-fun b!780364 () Bool)

(declare-fun res!528117 () Bool)

(assert (=> b!780364 (=> (not res!528117) (not e!434108))))

(declare-fun arrayContainsKey!0 (array!42599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780364 (= res!528117 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780365 () Bool)

(declare-fun Unit!26889 () Unit!26886)

(assert (=> b!780365 (= e!434110 Unit!26889)))

(declare-fun b!780366 () Bool)

(declare-fun res!528112 () Bool)

(assert (=> b!780366 (=> (not res!528112) (not e!434115))))

(assert (=> b!780366 (= res!528112 e!434113)))

(declare-fun c!86532 () Bool)

(assert (=> b!780366 (= c!86532 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780367 () Bool)

(assert (=> b!780367 (= e!434109 true)))

(declare-fun lt!347776 () Unit!26886)

(assert (=> b!780367 (= lt!347776 e!434110)))

(declare-fun c!86531 () Bool)

(assert (=> b!780367 (= c!86531 (= (select (store (arr!20387 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780368 () Bool)

(assert (=> b!780368 (= e!434108 e!434116)))

(declare-fun res!528113 () Bool)

(assert (=> b!780368 (=> (not res!528113) (not e!434116))))

(declare-fun lt!347777 () SeekEntryResult!7994)

(assert (=> b!780368 (= res!528113 (or (= lt!347777 (MissingZero!7994 i!1173)) (= lt!347777 (MissingVacant!7994 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42599 (_ BitVec 32)) SeekEntryResult!7994)

(assert (=> b!780368 (= lt!347777 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780369 () Bool)

(declare-fun res!528107 () Bool)

(assert (=> b!780369 (=> (not res!528107) (not e!434108))))

(assert (=> b!780369 (= res!528107 (and (= (size!20808 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20808 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20808 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780370 () Bool)

(declare-fun res!528114 () Bool)

(assert (=> b!780370 (=> (not res!528114) (not e!434116))))

(assert (=> b!780370 (= res!528114 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20808 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20808 a!3186))))))

(declare-fun b!780371 () Bool)

(assert (=> b!780371 (= e!434112 (not e!434109))))

(declare-fun res!528103 () Bool)

(assert (=> b!780371 (=> res!528103 e!434109)))

(assert (=> b!780371 (= res!528103 (or (not (is-Intermediate!7994 lt!347771)) (bvslt x!1131 (x!65317 lt!347771)) (not (= x!1131 (x!65317 lt!347771))) (not (= index!1321 (index!34345 lt!347771)))))))

(declare-fun e!434111 () Bool)

(assert (=> b!780371 e!434111))

(declare-fun res!528111 () Bool)

(assert (=> b!780371 (=> (not res!528111) (not e!434111))))

(declare-fun lt!347770 () SeekEntryResult!7994)

(assert (=> b!780371 (= res!528111 (= lt!347770 lt!347775))))

(assert (=> b!780371 (= lt!347775 (Found!7994 j!159))))

(assert (=> b!780371 (= lt!347770 (seekEntryOrOpen!0 (select (arr!20387 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!780371 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347779 () Unit!26886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26886)

(assert (=> b!780371 (= lt!347779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780372 () Bool)

(assert (=> b!780372 (= e!434111 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20387 a!3186) j!159) a!3186 mask!3328) lt!347775))))

(declare-fun b!780373 () Bool)

(declare-fun res!528108 () Bool)

(assert (=> b!780373 (=> res!528108 e!434109)))

(assert (=> b!780373 (= res!528108 (= (select (store (arr!20387 a!3186) i!1173 k!2102) index!1321) lt!347772))))

(declare-fun b!780374 () Bool)

(declare-fun res!528109 () Bool)

(assert (=> b!780374 (=> (not res!528109) (not e!434108))))

(assert (=> b!780374 (= res!528109 (validKeyInArray!0 k!2102))))

(declare-fun b!780375 () Bool)

(assert (=> b!780375 (= e!434113 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20387 a!3186) j!159) a!3186 mask!3328) lt!347774))))

(assert (= (and start!67478 res!528110) b!780369))

(assert (= (and b!780369 res!528107) b!780363))

(assert (= (and b!780363 res!528105) b!780374))

(assert (= (and b!780374 res!528109) b!780364))

(assert (= (and b!780364 res!528117) b!780368))

(assert (= (and b!780368 res!528113) b!780357))

(assert (= (and b!780357 res!528118) b!780362))

(assert (= (and b!780362 res!528116) b!780370))

(assert (= (and b!780370 res!528114) b!780355))

(assert (= (and b!780355 res!528104) b!780361))

(assert (= (and b!780361 res!528115) b!780366))

(assert (= (and b!780366 c!86532) b!780375))

(assert (= (and b!780366 (not c!86532)) b!780358))

(assert (= (and b!780366 res!528112) b!780360))

(assert (= (and b!780360 res!528102) b!780371))

(assert (= (and b!780371 res!528111) b!780372))

(assert (= (and b!780371 (not res!528103)) b!780359))

(assert (= (and b!780359 (not res!528106)) b!780373))

(assert (= (and b!780373 (not res!528108)) b!780367))

(assert (= (and b!780367 c!86531) b!780356))

(assert (= (and b!780367 (not c!86531)) b!780365))

(declare-fun m!723721 () Bool)

(assert (=> b!780357 m!723721))

(declare-fun m!723723 () Bool)

(assert (=> start!67478 m!723723))

(declare-fun m!723725 () Bool)

(assert (=> start!67478 m!723725))

(declare-fun m!723727 () Bool)

(assert (=> b!780355 m!723727))

(assert (=> b!780355 m!723727))

(declare-fun m!723729 () Bool)

(assert (=> b!780355 m!723729))

(assert (=> b!780355 m!723729))

(assert (=> b!780355 m!723727))

(declare-fun m!723731 () Bool)

(assert (=> b!780355 m!723731))

(assert (=> b!780359 m!723727))

(assert (=> b!780359 m!723727))

(declare-fun m!723733 () Bool)

(assert (=> b!780359 m!723733))

(declare-fun m!723735 () Bool)

(assert (=> b!780360 m!723735))

(declare-fun m!723737 () Bool)

(assert (=> b!780360 m!723737))

(declare-fun m!723739 () Bool)

(assert (=> b!780360 m!723739))

(assert (=> b!780360 m!723735))

(declare-fun m!723741 () Bool)

(assert (=> b!780360 m!723741))

(declare-fun m!723743 () Bool)

(assert (=> b!780360 m!723743))

(assert (=> b!780373 m!723737))

(declare-fun m!723745 () Bool)

(assert (=> b!780373 m!723745))

(assert (=> b!780358 m!723727))

(assert (=> b!780358 m!723727))

(assert (=> b!780358 m!723733))

(declare-fun m!723747 () Bool)

(assert (=> b!780374 m!723747))

(declare-fun m!723749 () Bool)

(assert (=> b!780361 m!723749))

(assert (=> b!780371 m!723727))

(assert (=> b!780371 m!723727))

(declare-fun m!723751 () Bool)

(assert (=> b!780371 m!723751))

(declare-fun m!723753 () Bool)

(assert (=> b!780371 m!723753))

(declare-fun m!723755 () Bool)

(assert (=> b!780371 m!723755))

(assert (=> b!780367 m!723737))

(assert (=> b!780367 m!723745))

(assert (=> b!780363 m!723727))

(assert (=> b!780363 m!723727))

(declare-fun m!723757 () Bool)

(assert (=> b!780363 m!723757))

(declare-fun m!723759 () Bool)

(assert (=> b!780364 m!723759))

(assert (=> b!780375 m!723727))

(assert (=> b!780375 m!723727))

(declare-fun m!723761 () Bool)

(assert (=> b!780375 m!723761))

(declare-fun m!723763 () Bool)

(assert (=> b!780362 m!723763))

(assert (=> b!780372 m!723727))

(assert (=> b!780372 m!723727))

(declare-fun m!723765 () Bool)

(assert (=> b!780372 m!723765))

(declare-fun m!723767 () Bool)

(assert (=> b!780368 m!723767))

(push 1)

(assert (not b!780375))

(assert (not b!780374))

(assert (not b!780359))

(assert (not b!780360))

(assert (not b!780368))

(assert (not b!780363))

(assert (not b!780357))

(assert (not b!780362))

(assert (not b!780371))

(assert (not b!780358))

(assert (not b!780364))

(assert (not b!780372))

(assert (not b!780355))

(assert (not start!67478))

(check-sat)

(pop 1)

