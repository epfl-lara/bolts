; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67692 () Bool)

(assert start!67692)

(declare-fun b!783863 () Bool)

(declare-fun res!530502 () Bool)

(declare-fun e!435858 () Bool)

(assert (=> b!783863 (=> (not res!530502) (not e!435858))))

(declare-datatypes ((array!42687 0))(
  ( (array!42688 (arr!20428 (Array (_ BitVec 32) (_ BitVec 64))) (size!20849 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42687)

(declare-datatypes ((List!14483 0))(
  ( (Nil!14480) (Cons!14479 (h!15602 (_ BitVec 64)) (t!20806 List!14483)) )
))
(declare-fun arrayNoDuplicates!0 (array!42687 (_ BitVec 32) List!14483) Bool)

(assert (=> b!783863 (= res!530502 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14480))))

(declare-fun b!783864 () Bool)

(declare-fun res!530514 () Bool)

(assert (=> b!783864 (=> (not res!530514) (not e!435858))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783864 (= res!530514 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20849 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20849 a!3186))))))

(declare-fun e!435860 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!783865 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8035 0))(
  ( (MissingZero!8035 (index!34507 (_ BitVec 32))) (Found!8035 (index!34508 (_ BitVec 32))) (Intermediate!8035 (undefined!8847 Bool) (index!34509 (_ BitVec 32)) (x!65488 (_ BitVec 32))) (Undefined!8035) (MissingVacant!8035 (index!34510 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42687 (_ BitVec 32)) SeekEntryResult!8035)

(assert (=> b!783865 (= e!435860 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20428 a!3186) j!159) a!3186 mask!3328) (Found!8035 j!159)))))

(declare-fun b!783866 () Bool)

(declare-fun e!435862 () Bool)

(declare-fun e!435861 () Bool)

(assert (=> b!783866 (= e!435862 e!435861)))

(declare-fun res!530506 () Bool)

(assert (=> b!783866 (=> (not res!530506) (not e!435861))))

(declare-fun lt!349420 () SeekEntryResult!8035)

(declare-fun lt!349419 () SeekEntryResult!8035)

(assert (=> b!783866 (= res!530506 (= lt!349420 lt!349419))))

(declare-fun lt!349429 () (_ BitVec 64))

(declare-fun lt!349423 () array!42687)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42687 (_ BitVec 32)) SeekEntryResult!8035)

(assert (=> b!783866 (= lt!349419 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349429 lt!349423 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783866 (= lt!349420 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349429 mask!3328) lt!349429 lt!349423 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783866 (= lt!349429 (select (store (arr!20428 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!783866 (= lt!349423 (array!42688 (store (arr!20428 a!3186) i!1173 k0!2102) (size!20849 a!3186)))))

(declare-fun b!783867 () Bool)

(declare-fun e!435852 () Bool)

(assert (=> b!783867 (= e!435852 e!435858)))

(declare-fun res!530503 () Bool)

(assert (=> b!783867 (=> (not res!530503) (not e!435858))))

(declare-fun lt!349421 () SeekEntryResult!8035)

(assert (=> b!783867 (= res!530503 (or (= lt!349421 (MissingZero!8035 i!1173)) (= lt!349421 (MissingVacant!8035 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42687 (_ BitVec 32)) SeekEntryResult!8035)

(assert (=> b!783867 (= lt!349421 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!530515 () Bool)

(assert (=> start!67692 (=> (not res!530515) (not e!435852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67692 (= res!530515 (validMask!0 mask!3328))))

(assert (=> start!67692 e!435852))

(assert (=> start!67692 true))

(declare-fun array_inv!16202 (array!42687) Bool)

(assert (=> start!67692 (array_inv!16202 a!3186)))

(declare-fun b!783868 () Bool)

(declare-datatypes ((Unit!27050 0))(
  ( (Unit!27051) )
))
(declare-fun e!435859 () Unit!27050)

(declare-fun Unit!27052 () Unit!27050)

(assert (=> b!783868 (= e!435859 Unit!27052)))

(assert (=> b!783868 false))

(declare-fun b!783869 () Bool)

(declare-fun e!435857 () Bool)

(declare-fun lt!349425 () SeekEntryResult!8035)

(declare-fun lt!349418 () SeekEntryResult!8035)

(assert (=> b!783869 (= e!435857 (= lt!349425 lt!349418))))

(declare-fun b!783870 () Bool)

(assert (=> b!783870 (= e!435858 e!435862)))

(declare-fun res!530507 () Bool)

(assert (=> b!783870 (=> (not res!530507) (not e!435862))))

(declare-fun lt!349424 () SeekEntryResult!8035)

(assert (=> b!783870 (= res!530507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20428 a!3186) j!159) mask!3328) (select (arr!20428 a!3186) j!159) a!3186 mask!3328) lt!349424))))

(assert (=> b!783870 (= lt!349424 (Intermediate!8035 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783871 () Bool)

(declare-fun res!530504 () Bool)

(assert (=> b!783871 (=> (not res!530504) (not e!435852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783871 (= res!530504 (validKeyInArray!0 k0!2102))))

(declare-fun b!783872 () Bool)

(declare-fun res!530513 () Bool)

(assert (=> b!783872 (=> (not res!530513) (not e!435857))))

(assert (=> b!783872 (= res!530513 (= (seekEntryOrOpen!0 lt!349429 lt!349423 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349429 lt!349423 mask!3328)))))

(declare-fun b!783873 () Bool)

(declare-fun res!530511 () Bool)

(assert (=> b!783873 (=> (not res!530511) (not e!435852))))

(assert (=> b!783873 (= res!530511 (validKeyInArray!0 (select (arr!20428 a!3186) j!159)))))

(declare-fun b!783874 () Bool)

(declare-fun res!530500 () Bool)

(assert (=> b!783874 (=> (not res!530500) (not e!435852))))

(declare-fun arrayContainsKey!0 (array!42687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783874 (= res!530500 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783875 () Bool)

(declare-fun res!530516 () Bool)

(assert (=> b!783875 (=> (not res!530516) (not e!435862))))

(assert (=> b!783875 (= res!530516 e!435860)))

(declare-fun c!87089 () Bool)

(assert (=> b!783875 (= c!87089 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783876 () Bool)

(declare-fun res!530508 () Bool)

(assert (=> b!783876 (=> (not res!530508) (not e!435858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42687 (_ BitVec 32)) Bool)

(assert (=> b!783876 (= res!530508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783877 () Bool)

(declare-fun res!530512 () Bool)

(assert (=> b!783877 (=> (not res!530512) (not e!435862))))

(assert (=> b!783877 (= res!530512 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20428 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783878 () Bool)

(declare-fun Unit!27053 () Unit!27050)

(assert (=> b!783878 (= e!435859 Unit!27053)))

(declare-fun b!783879 () Bool)

(declare-fun res!530505 () Bool)

(assert (=> b!783879 (=> (not res!530505) (not e!435852))))

(assert (=> b!783879 (= res!530505 (and (= (size!20849 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20849 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20849 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783880 () Bool)

(declare-fun e!435854 () Bool)

(assert (=> b!783880 (= e!435861 (not e!435854))))

(declare-fun res!530518 () Bool)

(assert (=> b!783880 (=> res!530518 e!435854)))

(get-info :version)

(assert (=> b!783880 (= res!530518 (or (not ((_ is Intermediate!8035) lt!349419)) (bvslt x!1131 (x!65488 lt!349419)) (not (= x!1131 (x!65488 lt!349419))) (not (= index!1321 (index!34509 lt!349419)))))))

(declare-fun e!435853 () Bool)

(assert (=> b!783880 e!435853))

(declare-fun res!530501 () Bool)

(assert (=> b!783880 (=> (not res!530501) (not e!435853))))

(declare-fun lt!349422 () SeekEntryResult!8035)

(assert (=> b!783880 (= res!530501 (= lt!349425 lt!349422))))

(assert (=> b!783880 (= lt!349422 (Found!8035 j!159))))

(assert (=> b!783880 (= lt!349425 (seekEntryOrOpen!0 (select (arr!20428 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783880 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349428 () Unit!27050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27050)

(assert (=> b!783880 (= lt!349428 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783881 () Bool)

(declare-fun e!435856 () Bool)

(assert (=> b!783881 (= e!435854 e!435856)))

(declare-fun res!530510 () Bool)

(assert (=> b!783881 (=> res!530510 e!435856)))

(assert (=> b!783881 (= res!530510 (not (= lt!349418 lt!349422)))))

(assert (=> b!783881 (= lt!349418 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20428 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783882 () Bool)

(declare-fun e!435855 () Bool)

(assert (=> b!783882 (= e!435855 true)))

(assert (=> b!783882 e!435857))

(declare-fun res!530509 () Bool)

(assert (=> b!783882 (=> (not res!530509) (not e!435857))))

(declare-fun lt!349426 () (_ BitVec 64))

(assert (=> b!783882 (= res!530509 (= lt!349426 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349427 () Unit!27050)

(assert (=> b!783882 (= lt!349427 e!435859)))

(declare-fun c!87090 () Bool)

(assert (=> b!783882 (= c!87090 (= lt!349426 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783883 () Bool)

(assert (=> b!783883 (= e!435856 e!435855)))

(declare-fun res!530517 () Bool)

(assert (=> b!783883 (=> res!530517 e!435855)))

(assert (=> b!783883 (= res!530517 (= lt!349426 lt!349429))))

(assert (=> b!783883 (= lt!349426 (select (store (arr!20428 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!783884 () Bool)

(assert (=> b!783884 (= e!435860 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20428 a!3186) j!159) a!3186 mask!3328) lt!349424))))

(declare-fun b!783885 () Bool)

(assert (=> b!783885 (= e!435853 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20428 a!3186) j!159) a!3186 mask!3328) lt!349422))))

(assert (= (and start!67692 res!530515) b!783879))

(assert (= (and b!783879 res!530505) b!783873))

(assert (= (and b!783873 res!530511) b!783871))

(assert (= (and b!783871 res!530504) b!783874))

(assert (= (and b!783874 res!530500) b!783867))

(assert (= (and b!783867 res!530503) b!783876))

(assert (= (and b!783876 res!530508) b!783863))

(assert (= (and b!783863 res!530502) b!783864))

(assert (= (and b!783864 res!530514) b!783870))

(assert (= (and b!783870 res!530507) b!783877))

(assert (= (and b!783877 res!530512) b!783875))

(assert (= (and b!783875 c!87089) b!783884))

(assert (= (and b!783875 (not c!87089)) b!783865))

(assert (= (and b!783875 res!530516) b!783866))

(assert (= (and b!783866 res!530506) b!783880))

(assert (= (and b!783880 res!530501) b!783885))

(assert (= (and b!783880 (not res!530518)) b!783881))

(assert (= (and b!783881 (not res!530510)) b!783883))

(assert (= (and b!783883 (not res!530517)) b!783882))

(assert (= (and b!783882 c!87090) b!783868))

(assert (= (and b!783882 (not c!87090)) b!783878))

(assert (= (and b!783882 res!530509) b!783872))

(assert (= (and b!783872 res!530513) b!783869))

(declare-fun m!726365 () Bool)

(assert (=> b!783873 m!726365))

(assert (=> b!783873 m!726365))

(declare-fun m!726367 () Bool)

(assert (=> b!783873 m!726367))

(assert (=> b!783885 m!726365))

(assert (=> b!783885 m!726365))

(declare-fun m!726369 () Bool)

(assert (=> b!783885 m!726369))

(declare-fun m!726371 () Bool)

(assert (=> start!67692 m!726371))

(declare-fun m!726373 () Bool)

(assert (=> start!67692 m!726373))

(declare-fun m!726375 () Bool)

(assert (=> b!783874 m!726375))

(declare-fun m!726377 () Bool)

(assert (=> b!783866 m!726377))

(declare-fun m!726379 () Bool)

(assert (=> b!783866 m!726379))

(declare-fun m!726381 () Bool)

(assert (=> b!783866 m!726381))

(declare-fun m!726383 () Bool)

(assert (=> b!783866 m!726383))

(assert (=> b!783866 m!726377))

(declare-fun m!726385 () Bool)

(assert (=> b!783866 m!726385))

(declare-fun m!726387 () Bool)

(assert (=> b!783872 m!726387))

(declare-fun m!726389 () Bool)

(assert (=> b!783872 m!726389))

(assert (=> b!783881 m!726365))

(assert (=> b!783881 m!726365))

(declare-fun m!726391 () Bool)

(assert (=> b!783881 m!726391))

(assert (=> b!783865 m!726365))

(assert (=> b!783865 m!726365))

(assert (=> b!783865 m!726391))

(declare-fun m!726393 () Bool)

(assert (=> b!783867 m!726393))

(declare-fun m!726395 () Bool)

(assert (=> b!783877 m!726395))

(assert (=> b!783883 m!726379))

(declare-fun m!726397 () Bool)

(assert (=> b!783883 m!726397))

(assert (=> b!783870 m!726365))

(assert (=> b!783870 m!726365))

(declare-fun m!726399 () Bool)

(assert (=> b!783870 m!726399))

(assert (=> b!783870 m!726399))

(assert (=> b!783870 m!726365))

(declare-fun m!726401 () Bool)

(assert (=> b!783870 m!726401))

(declare-fun m!726403 () Bool)

(assert (=> b!783863 m!726403))

(assert (=> b!783884 m!726365))

(assert (=> b!783884 m!726365))

(declare-fun m!726405 () Bool)

(assert (=> b!783884 m!726405))

(declare-fun m!726407 () Bool)

(assert (=> b!783871 m!726407))

(declare-fun m!726409 () Bool)

(assert (=> b!783876 m!726409))

(assert (=> b!783880 m!726365))

(assert (=> b!783880 m!726365))

(declare-fun m!726411 () Bool)

(assert (=> b!783880 m!726411))

(declare-fun m!726413 () Bool)

(assert (=> b!783880 m!726413))

(declare-fun m!726415 () Bool)

(assert (=> b!783880 m!726415))

(check-sat (not start!67692) (not b!783863) (not b!783867) (not b!783871) (not b!783884) (not b!783873) (not b!783880) (not b!783885) (not b!783881) (not b!783866) (not b!783876) (not b!783872) (not b!783874) (not b!783865) (not b!783870))
(check-sat)
