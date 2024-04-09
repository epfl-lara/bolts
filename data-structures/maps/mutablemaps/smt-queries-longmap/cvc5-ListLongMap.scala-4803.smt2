; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65896 () Bool)

(assert start!65896)

(declare-fun b!759373 () Bool)

(declare-fun res!514012 () Bool)

(declare-fun e!423349 () Bool)

(assert (=> b!759373 (=> (not res!514012) (not e!423349))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42022 0))(
  ( (array!42023 (arr!20121 (Array (_ BitVec 32) (_ BitVec 64))) (size!20542 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42022)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759373 (= res!514012 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20542 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20542 a!3186))))))

(declare-fun b!759374 () Bool)

(declare-fun res!514010 () Bool)

(declare-fun e!423351 () Bool)

(assert (=> b!759374 (=> (not res!514010) (not e!423351))))

(declare-fun e!423348 () Bool)

(assert (=> b!759374 (= res!514010 e!423348)))

(declare-fun c!83064 () Bool)

(assert (=> b!759374 (= c!83064 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759375 () Bool)

(declare-fun res!514007 () Bool)

(assert (=> b!759375 (=> (not res!514007) (not e!423351))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759375 (= res!514007 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20121 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759376 () Bool)

(declare-fun res!514015 () Bool)

(declare-fun e!423347 () Bool)

(assert (=> b!759376 (=> (not res!514015) (not e!423347))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!759376 (= res!514015 (and (= (size!20542 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20542 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20542 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759377 () Bool)

(declare-fun e!423344 () Bool)

(declare-fun e!423350 () Bool)

(assert (=> b!759377 (= e!423344 e!423350)))

(declare-fun res!514008 () Bool)

(assert (=> b!759377 (=> (not res!514008) (not e!423350))))

(declare-datatypes ((SeekEntryResult!7728 0))(
  ( (MissingZero!7728 (index!33279 (_ BitVec 32))) (Found!7728 (index!33280 (_ BitVec 32))) (Intermediate!7728 (undefined!8540 Bool) (index!33281 (_ BitVec 32)) (x!64191 (_ BitVec 32))) (Undefined!7728) (MissingVacant!7728 (index!33282 (_ BitVec 32))) )
))
(declare-fun lt!338388 () SeekEntryResult!7728)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42022 (_ BitVec 32)) SeekEntryResult!7728)

(assert (=> b!759377 (= res!514008 (= (seekEntryOrOpen!0 (select (arr!20121 a!3186) j!159) a!3186 mask!3328) lt!338388))))

(assert (=> b!759377 (= lt!338388 (Found!7728 j!159))))

(declare-fun b!759378 () Bool)

(assert (=> b!759378 (= e!423349 e!423351)))

(declare-fun res!514017 () Bool)

(assert (=> b!759378 (=> (not res!514017) (not e!423351))))

(declare-fun lt!338389 () SeekEntryResult!7728)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42022 (_ BitVec 32)) SeekEntryResult!7728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759378 (= res!514017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20121 a!3186) j!159) mask!3328) (select (arr!20121 a!3186) j!159) a!3186 mask!3328) lt!338389))))

(assert (=> b!759378 (= lt!338389 (Intermediate!7728 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759379 () Bool)

(declare-fun res!514013 () Bool)

(assert (=> b!759379 (=> (not res!514013) (not e!423349))))

(declare-datatypes ((List!14176 0))(
  ( (Nil!14173) (Cons!14172 (h!15244 (_ BitVec 64)) (t!20499 List!14176)) )
))
(declare-fun arrayNoDuplicates!0 (array!42022 (_ BitVec 32) List!14176) Bool)

(assert (=> b!759379 (= res!514013 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14173))))

(declare-fun b!759380 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42022 (_ BitVec 32)) SeekEntryResult!7728)

(assert (=> b!759380 (= e!423350 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20121 a!3186) j!159) a!3186 mask!3328) lt!338388))))

(declare-fun b!759381 () Bool)

(declare-fun res!514016 () Bool)

(assert (=> b!759381 (=> (not res!514016) (not e!423347))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759381 (= res!514016 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759383 () Bool)

(declare-fun e!423345 () Bool)

(assert (=> b!759383 (= e!423345 (not true))))

(assert (=> b!759383 e!423344))

(declare-fun res!514014 () Bool)

(assert (=> b!759383 (=> (not res!514014) (not e!423344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42022 (_ BitVec 32)) Bool)

(assert (=> b!759383 (= res!514014 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26296 0))(
  ( (Unit!26297) )
))
(declare-fun lt!338387 () Unit!26296)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42022 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26296)

(assert (=> b!759383 (= lt!338387 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759384 () Bool)

(assert (=> b!759384 (= e!423351 e!423345)))

(declare-fun res!514006 () Bool)

(assert (=> b!759384 (=> (not res!514006) (not e!423345))))

(declare-fun lt!338390 () (_ BitVec 64))

(declare-fun lt!338385 () array!42022)

(assert (=> b!759384 (= res!514006 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338390 mask!3328) lt!338390 lt!338385 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338390 lt!338385 mask!3328)))))

(assert (=> b!759384 (= lt!338390 (select (store (arr!20121 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759384 (= lt!338385 (array!42023 (store (arr!20121 a!3186) i!1173 k!2102) (size!20542 a!3186)))))

(declare-fun b!759385 () Bool)

(declare-fun res!514018 () Bool)

(assert (=> b!759385 (=> (not res!514018) (not e!423347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759385 (= res!514018 (validKeyInArray!0 (select (arr!20121 a!3186) j!159)))))

(declare-fun b!759386 () Bool)

(assert (=> b!759386 (= e!423347 e!423349)))

(declare-fun res!514009 () Bool)

(assert (=> b!759386 (=> (not res!514009) (not e!423349))))

(declare-fun lt!338386 () SeekEntryResult!7728)

(assert (=> b!759386 (= res!514009 (or (= lt!338386 (MissingZero!7728 i!1173)) (= lt!338386 (MissingVacant!7728 i!1173))))))

(assert (=> b!759386 (= lt!338386 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!759387 () Bool)

(declare-fun res!514020 () Bool)

(assert (=> b!759387 (=> (not res!514020) (not e!423347))))

(assert (=> b!759387 (= res!514020 (validKeyInArray!0 k!2102))))

(declare-fun b!759388 () Bool)

(assert (=> b!759388 (= e!423348 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20121 a!3186) j!159) a!3186 mask!3328) lt!338389))))

(declare-fun b!759389 () Bool)

(declare-fun res!514011 () Bool)

(assert (=> b!759389 (=> (not res!514011) (not e!423349))))

(assert (=> b!759389 (= res!514011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759382 () Bool)

(assert (=> b!759382 (= e!423348 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20121 a!3186) j!159) a!3186 mask!3328) (Found!7728 j!159)))))

(declare-fun res!514019 () Bool)

(assert (=> start!65896 (=> (not res!514019) (not e!423347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65896 (= res!514019 (validMask!0 mask!3328))))

(assert (=> start!65896 e!423347))

(assert (=> start!65896 true))

(declare-fun array_inv!15895 (array!42022) Bool)

(assert (=> start!65896 (array_inv!15895 a!3186)))

(assert (= (and start!65896 res!514019) b!759376))

(assert (= (and b!759376 res!514015) b!759385))

(assert (= (and b!759385 res!514018) b!759387))

(assert (= (and b!759387 res!514020) b!759381))

(assert (= (and b!759381 res!514016) b!759386))

(assert (= (and b!759386 res!514009) b!759389))

(assert (= (and b!759389 res!514011) b!759379))

(assert (= (and b!759379 res!514013) b!759373))

(assert (= (and b!759373 res!514012) b!759378))

(assert (= (and b!759378 res!514017) b!759375))

(assert (= (and b!759375 res!514007) b!759374))

(assert (= (and b!759374 c!83064) b!759388))

(assert (= (and b!759374 (not c!83064)) b!759382))

(assert (= (and b!759374 res!514010) b!759384))

(assert (= (and b!759384 res!514006) b!759383))

(assert (= (and b!759383 res!514014) b!759377))

(assert (= (and b!759377 res!514008) b!759380))

(declare-fun m!706825 () Bool)

(assert (=> b!759379 m!706825))

(declare-fun m!706827 () Bool)

(assert (=> b!759378 m!706827))

(assert (=> b!759378 m!706827))

(declare-fun m!706829 () Bool)

(assert (=> b!759378 m!706829))

(assert (=> b!759378 m!706829))

(assert (=> b!759378 m!706827))

(declare-fun m!706831 () Bool)

(assert (=> b!759378 m!706831))

(assert (=> b!759388 m!706827))

(assert (=> b!759388 m!706827))

(declare-fun m!706833 () Bool)

(assert (=> b!759388 m!706833))

(assert (=> b!759377 m!706827))

(assert (=> b!759377 m!706827))

(declare-fun m!706835 () Bool)

(assert (=> b!759377 m!706835))

(declare-fun m!706837 () Bool)

(assert (=> b!759387 m!706837))

(assert (=> b!759382 m!706827))

(assert (=> b!759382 m!706827))

(declare-fun m!706839 () Bool)

(assert (=> b!759382 m!706839))

(declare-fun m!706841 () Bool)

(assert (=> b!759383 m!706841))

(declare-fun m!706843 () Bool)

(assert (=> b!759383 m!706843))

(declare-fun m!706845 () Bool)

(assert (=> b!759386 m!706845))

(declare-fun m!706847 () Bool)

(assert (=> b!759375 m!706847))

(declare-fun m!706849 () Bool)

(assert (=> b!759384 m!706849))

(declare-fun m!706851 () Bool)

(assert (=> b!759384 m!706851))

(declare-fun m!706853 () Bool)

(assert (=> b!759384 m!706853))

(declare-fun m!706855 () Bool)

(assert (=> b!759384 m!706855))

(declare-fun m!706857 () Bool)

(assert (=> b!759384 m!706857))

(assert (=> b!759384 m!706849))

(declare-fun m!706859 () Bool)

(assert (=> b!759389 m!706859))

(assert (=> b!759380 m!706827))

(assert (=> b!759380 m!706827))

(declare-fun m!706861 () Bool)

(assert (=> b!759380 m!706861))

(assert (=> b!759385 m!706827))

(assert (=> b!759385 m!706827))

(declare-fun m!706863 () Bool)

(assert (=> b!759385 m!706863))

(declare-fun m!706865 () Bool)

(assert (=> b!759381 m!706865))

(declare-fun m!706867 () Bool)

(assert (=> start!65896 m!706867))

(declare-fun m!706869 () Bool)

(assert (=> start!65896 m!706869))

(push 1)

