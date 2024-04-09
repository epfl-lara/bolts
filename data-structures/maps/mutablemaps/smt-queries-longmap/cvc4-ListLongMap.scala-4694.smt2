; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65246 () Bool)

(assert start!65246)

(declare-fun b!738858 () Bool)

(declare-datatypes ((Unit!25230 0))(
  ( (Unit!25231) )
))
(declare-fun e!413203 () Unit!25230)

(declare-fun Unit!25232 () Unit!25230)

(assert (=> b!738858 (= e!413203 Unit!25232)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41372 0))(
  ( (array!41373 (arr!19796 (Array (_ BitVec 32) (_ BitVec 64))) (size!20217 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41372)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7403 0))(
  ( (MissingZero!7403 (index!31979 (_ BitVec 32))) (Found!7403 (index!31980 (_ BitVec 32))) (Intermediate!7403 (undefined!8215 Bool) (index!31981 (_ BitVec 32)) (x!62994 (_ BitVec 32))) (Undefined!7403) (MissingVacant!7403 (index!31982 (_ BitVec 32))) )
))
(declare-fun lt!328052 () SeekEntryResult!7403)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41372 (_ BitVec 32)) SeekEntryResult!7403)

(assert (=> b!738858 (= lt!328052 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19796 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328054 () (_ BitVec 32))

(declare-fun lt!328056 () SeekEntryResult!7403)

(assert (=> b!738858 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328054 resIntermediateIndex!5 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328056)))

(declare-fun b!738859 () Bool)

(declare-fun res!496849 () Bool)

(declare-fun e!413211 () Bool)

(assert (=> b!738859 (=> (not res!496849) (not e!413211))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738859 (= res!496849 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20217 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20217 a!3186))))))

(declare-fun b!738860 () Bool)

(declare-fun e!413207 () Bool)

(assert (=> b!738860 (= e!413207 e!413211)))

(declare-fun res!496861 () Bool)

(assert (=> b!738860 (=> (not res!496861) (not e!413211))))

(declare-fun lt!328046 () SeekEntryResult!7403)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738860 (= res!496861 (or (= lt!328046 (MissingZero!7403 i!1173)) (= lt!328046 (MissingVacant!7403 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41372 (_ BitVec 32)) SeekEntryResult!7403)

(assert (=> b!738860 (= lt!328046 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738861 () Bool)

(declare-fun res!496864 () Bool)

(assert (=> b!738861 (=> (not res!496864) (not e!413207))))

(assert (=> b!738861 (= res!496864 (and (= (size!20217 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20217 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20217 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!328049 () SeekEntryResult!7403)

(declare-fun e!413205 () Bool)

(declare-fun b!738862 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41372 (_ BitVec 32)) SeekEntryResult!7403)

(assert (=> b!738862 (= e!413205 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328049))))

(declare-fun b!738863 () Bool)

(declare-fun res!496856 () Bool)

(assert (=> b!738863 (=> (not res!496856) (not e!413207))))

(declare-fun arrayContainsKey!0 (array!41372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738863 (= res!496856 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738864 () Bool)

(declare-fun res!496862 () Bool)

(declare-fun e!413204 () Bool)

(assert (=> b!738864 (=> (not res!496862) (not e!413204))))

(assert (=> b!738864 (= res!496862 e!413205)))

(declare-fun c!81386 () Bool)

(assert (=> b!738864 (= c!81386 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738866 () Bool)

(declare-fun Unit!25233 () Unit!25230)

(assert (=> b!738866 (= e!413203 Unit!25233)))

(assert (=> b!738866 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328054 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328049)))

(declare-fun b!738867 () Bool)

(declare-fun res!496857 () Bool)

(assert (=> b!738867 (=> (not res!496857) (not e!413204))))

(assert (=> b!738867 (= res!496857 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19796 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738868 () Bool)

(declare-fun e!413201 () Bool)

(declare-fun e!413206 () Bool)

(assert (=> b!738868 (= e!413201 e!413206)))

(declare-fun res!496851 () Bool)

(assert (=> b!738868 (=> (not res!496851) (not e!413206))))

(declare-fun lt!328058 () SeekEntryResult!7403)

(assert (=> b!738868 (= res!496851 (= (seekEntryOrOpen!0 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328058))))

(assert (=> b!738868 (= lt!328058 (Found!7403 j!159))))

(declare-fun b!738869 () Bool)

(declare-fun e!413202 () Bool)

(assert (=> b!738869 (= e!413204 e!413202)))

(declare-fun res!496863 () Bool)

(assert (=> b!738869 (=> (not res!496863) (not e!413202))))

(declare-fun lt!328048 () SeekEntryResult!7403)

(declare-fun lt!328057 () SeekEntryResult!7403)

(assert (=> b!738869 (= res!496863 (= lt!328048 lt!328057))))

(declare-fun lt!328055 () (_ BitVec 64))

(declare-fun lt!328051 () array!41372)

(assert (=> b!738869 (= lt!328057 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328055 lt!328051 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738869 (= lt!328048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328055 mask!3328) lt!328055 lt!328051 mask!3328))))

(assert (=> b!738869 (= lt!328055 (select (store (arr!19796 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738869 (= lt!328051 (array!41373 (store (arr!19796 a!3186) i!1173 k!2102) (size!20217 a!3186)))))

(declare-fun b!738870 () Bool)

(declare-fun res!496854 () Bool)

(assert (=> b!738870 (=> (not res!496854) (not e!413211))))

(declare-datatypes ((List!13851 0))(
  ( (Nil!13848) (Cons!13847 (h!14919 (_ BitVec 64)) (t!20174 List!13851)) )
))
(declare-fun arrayNoDuplicates!0 (array!41372 (_ BitVec 32) List!13851) Bool)

(assert (=> b!738870 (= res!496854 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13848))))

(declare-fun b!738871 () Bool)

(declare-fun res!496865 () Bool)

(assert (=> b!738871 (=> (not res!496865) (not e!413211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41372 (_ BitVec 32)) Bool)

(assert (=> b!738871 (= res!496865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738872 () Bool)

(declare-fun e!413209 () Bool)

(assert (=> b!738872 (= e!413209 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328054 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328049)))))

(declare-fun b!738873 () Bool)

(assert (=> b!738873 (= e!413209 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328054 resIntermediateIndex!5 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328056)))))

(declare-fun b!738874 () Bool)

(assert (=> b!738874 (= e!413205 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) (Found!7403 j!159)))))

(declare-fun b!738875 () Bool)

(assert (=> b!738875 (= e!413211 e!413204)))

(declare-fun res!496850 () Bool)

(assert (=> b!738875 (=> (not res!496850) (not e!413204))))

(assert (=> b!738875 (= res!496850 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19796 a!3186) j!159) mask!3328) (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328049))))

(assert (=> b!738875 (= lt!328049 (Intermediate!7403 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738876 () Bool)

(declare-fun res!496853 () Bool)

(assert (=> b!738876 (=> (not res!496853) (not e!413207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738876 (= res!496853 (validKeyInArray!0 (select (arr!19796 a!3186) j!159)))))

(declare-fun b!738877 () Bool)

(declare-fun res!496866 () Bool)

(declare-fun e!413210 () Bool)

(assert (=> b!738877 (=> res!496866 e!413210)))

(assert (=> b!738877 (= res!496866 e!413209)))

(declare-fun c!81387 () Bool)

(declare-fun lt!328047 () Bool)

(assert (=> b!738877 (= c!81387 lt!328047)))

(declare-fun b!738865 () Bool)

(assert (=> b!738865 (= e!413210 true)))

(declare-fun lt!328045 () SeekEntryResult!7403)

(assert (=> b!738865 (= lt!328045 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328054 lt!328055 lt!328051 mask!3328))))

(declare-fun res!496860 () Bool)

(assert (=> start!65246 (=> (not res!496860) (not e!413207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65246 (= res!496860 (validMask!0 mask!3328))))

(assert (=> start!65246 e!413207))

(assert (=> start!65246 true))

(declare-fun array_inv!15570 (array!41372) Bool)

(assert (=> start!65246 (array_inv!15570 a!3186)))

(declare-fun b!738878 () Bool)

(declare-fun res!496859 () Bool)

(assert (=> b!738878 (=> (not res!496859) (not e!413207))))

(assert (=> b!738878 (= res!496859 (validKeyInArray!0 k!2102))))

(declare-fun b!738879 () Bool)

(declare-fun e!413200 () Bool)

(assert (=> b!738879 (= e!413202 (not e!413200))))

(declare-fun res!496852 () Bool)

(assert (=> b!738879 (=> res!496852 e!413200)))

(assert (=> b!738879 (= res!496852 (or (not (is-Intermediate!7403 lt!328057)) (bvsge x!1131 (x!62994 lt!328057))))))

(assert (=> b!738879 (= lt!328056 (Found!7403 j!159))))

(assert (=> b!738879 e!413201))

(declare-fun res!496855 () Bool)

(assert (=> b!738879 (=> (not res!496855) (not e!413201))))

(assert (=> b!738879 (= res!496855 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328053 () Unit!25230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25230)

(assert (=> b!738879 (= lt!328053 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738880 () Bool)

(assert (=> b!738880 (= e!413200 e!413210)))

(declare-fun res!496858 () Bool)

(assert (=> b!738880 (=> res!496858 e!413210)))

(assert (=> b!738880 (= res!496858 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328054 #b00000000000000000000000000000000) (bvsge lt!328054 (size!20217 a!3186))))))

(declare-fun lt!328050 () Unit!25230)

(assert (=> b!738880 (= lt!328050 e!413203)))

(declare-fun c!81385 () Bool)

(assert (=> b!738880 (= c!81385 lt!328047)))

(assert (=> b!738880 (= lt!328047 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738880 (= lt!328054 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738881 () Bool)

(assert (=> b!738881 (= e!413206 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19796 a!3186) j!159) a!3186 mask!3328) lt!328058))))

(assert (= (and start!65246 res!496860) b!738861))

(assert (= (and b!738861 res!496864) b!738876))

(assert (= (and b!738876 res!496853) b!738878))

(assert (= (and b!738878 res!496859) b!738863))

(assert (= (and b!738863 res!496856) b!738860))

(assert (= (and b!738860 res!496861) b!738871))

(assert (= (and b!738871 res!496865) b!738870))

(assert (= (and b!738870 res!496854) b!738859))

(assert (= (and b!738859 res!496849) b!738875))

(assert (= (and b!738875 res!496850) b!738867))

(assert (= (and b!738867 res!496857) b!738864))

(assert (= (and b!738864 c!81386) b!738862))

(assert (= (and b!738864 (not c!81386)) b!738874))

(assert (= (and b!738864 res!496862) b!738869))

(assert (= (and b!738869 res!496863) b!738879))

(assert (= (and b!738879 res!496855) b!738868))

(assert (= (and b!738868 res!496851) b!738881))

(assert (= (and b!738879 (not res!496852)) b!738880))

(assert (= (and b!738880 c!81385) b!738866))

(assert (= (and b!738880 (not c!81385)) b!738858))

(assert (= (and b!738880 (not res!496858)) b!738877))

(assert (= (and b!738877 c!81387) b!738872))

(assert (= (and b!738877 (not c!81387)) b!738873))

(assert (= (and b!738877 (not res!496866)) b!738865))

(declare-fun m!690451 () Bool)

(assert (=> b!738878 m!690451))

(declare-fun m!690453 () Bool)

(assert (=> b!738862 m!690453))

(assert (=> b!738862 m!690453))

(declare-fun m!690455 () Bool)

(assert (=> b!738862 m!690455))

(declare-fun m!690457 () Bool)

(assert (=> b!738879 m!690457))

(declare-fun m!690459 () Bool)

(assert (=> b!738879 m!690459))

(declare-fun m!690461 () Bool)

(assert (=> b!738865 m!690461))

(assert (=> b!738872 m!690453))

(assert (=> b!738872 m!690453))

(declare-fun m!690463 () Bool)

(assert (=> b!738872 m!690463))

(assert (=> b!738881 m!690453))

(assert (=> b!738881 m!690453))

(declare-fun m!690465 () Bool)

(assert (=> b!738881 m!690465))

(assert (=> b!738858 m!690453))

(assert (=> b!738858 m!690453))

(declare-fun m!690467 () Bool)

(assert (=> b!738858 m!690467))

(assert (=> b!738858 m!690453))

(declare-fun m!690469 () Bool)

(assert (=> b!738858 m!690469))

(assert (=> b!738873 m!690453))

(assert (=> b!738873 m!690453))

(assert (=> b!738873 m!690469))

(declare-fun m!690471 () Bool)

(assert (=> b!738869 m!690471))

(declare-fun m!690473 () Bool)

(assert (=> b!738869 m!690473))

(declare-fun m!690475 () Bool)

(assert (=> b!738869 m!690475))

(declare-fun m!690477 () Bool)

(assert (=> b!738869 m!690477))

(declare-fun m!690479 () Bool)

(assert (=> b!738869 m!690479))

(assert (=> b!738869 m!690473))

(declare-fun m!690481 () Bool)

(assert (=> b!738860 m!690481))

(declare-fun m!690483 () Bool)

(assert (=> b!738863 m!690483))

(declare-fun m!690485 () Bool)

(assert (=> start!65246 m!690485))

(declare-fun m!690487 () Bool)

(assert (=> start!65246 m!690487))

(declare-fun m!690489 () Bool)

(assert (=> b!738880 m!690489))

(declare-fun m!690491 () Bool)

(assert (=> b!738871 m!690491))

(declare-fun m!690493 () Bool)

(assert (=> b!738867 m!690493))

(declare-fun m!690495 () Bool)

(assert (=> b!738870 m!690495))

(assert (=> b!738875 m!690453))

(assert (=> b!738875 m!690453))

(declare-fun m!690497 () Bool)

(assert (=> b!738875 m!690497))

(assert (=> b!738875 m!690497))

(assert (=> b!738875 m!690453))

(declare-fun m!690499 () Bool)

(assert (=> b!738875 m!690499))

(assert (=> b!738868 m!690453))

(assert (=> b!738868 m!690453))

(declare-fun m!690501 () Bool)

(assert (=> b!738868 m!690501))

(assert (=> b!738866 m!690453))

(assert (=> b!738866 m!690453))

(assert (=> b!738866 m!690463))

(assert (=> b!738874 m!690453))

(assert (=> b!738874 m!690453))

(assert (=> b!738874 m!690467))

(assert (=> b!738876 m!690453))

(assert (=> b!738876 m!690453))

(declare-fun m!690503 () Bool)

(assert (=> b!738876 m!690503))

(push 1)

