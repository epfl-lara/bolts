; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64476 () Bool)

(assert start!64476)

(declare-fun b!724646 () Bool)

(declare-fun res!485977 () Bool)

(declare-fun e!405907 () Bool)

(assert (=> b!724646 (=> (not res!485977) (not e!405907))))

(declare-datatypes ((array!40947 0))(
  ( (array!40948 (arr!19591 (Array (_ BitVec 32) (_ BitVec 64))) (size!20012 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40947)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724646 (= res!485977 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724647 () Bool)

(declare-fun e!405909 () Bool)

(assert (=> b!724647 (= e!405909 (not true))))

(declare-fun e!405905 () Bool)

(assert (=> b!724647 e!405905))

(declare-fun res!485971 () Bool)

(assert (=> b!724647 (=> (not res!485971) (not e!405905))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40947 (_ BitVec 32)) Bool)

(assert (=> b!724647 (= res!485971 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24714 0))(
  ( (Unit!24715) )
))
(declare-fun lt!321088 () Unit!24714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24714)

(assert (=> b!724647 (= lt!321088 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724648 () Bool)

(declare-fun e!405903 () Bool)

(declare-fun e!405904 () Bool)

(assert (=> b!724648 (= e!405903 e!405904)))

(declare-fun res!485969 () Bool)

(assert (=> b!724648 (=> (not res!485969) (not e!405904))))

(declare-datatypes ((SeekEntryResult!7198 0))(
  ( (MissingZero!7198 (index!31159 (_ BitVec 32))) (Found!7198 (index!31160 (_ BitVec 32))) (Intermediate!7198 (undefined!8010 Bool) (index!31161 (_ BitVec 32)) (x!62185 (_ BitVec 32))) (Undefined!7198) (MissingVacant!7198 (index!31162 (_ BitVec 32))) )
))
(declare-fun lt!321085 () SeekEntryResult!7198)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40947 (_ BitVec 32)) SeekEntryResult!7198)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724648 (= res!485969 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19591 a!3186) j!159) mask!3328) (select (arr!19591 a!3186) j!159) a!3186 mask!3328) lt!321085))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724648 (= lt!321085 (Intermediate!7198 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724649 () Bool)

(assert (=> b!724649 (= e!405904 e!405909)))

(declare-fun res!485974 () Bool)

(assert (=> b!724649 (=> (not res!485974) (not e!405909))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321087 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321086 () array!40947)

(assert (=> b!724649 (= res!485974 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321087 mask!3328) lt!321087 lt!321086 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321087 lt!321086 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724649 (= lt!321087 (select (store (arr!19591 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!724649 (= lt!321086 (array!40948 (store (arr!19591 a!3186) i!1173 k0!2102) (size!20012 a!3186)))))

(declare-fun b!724650 () Bool)

(declare-fun res!485973 () Bool)

(assert (=> b!724650 (=> (not res!485973) (not e!405907))))

(assert (=> b!724650 (= res!485973 (and (= (size!20012 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20012 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20012 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724651 () Bool)

(declare-fun res!485970 () Bool)

(assert (=> b!724651 (=> (not res!485970) (not e!405907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724651 (= res!485970 (validKeyInArray!0 k0!2102))))

(declare-fun e!405908 () Bool)

(declare-fun b!724652 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40947 (_ BitVec 32)) SeekEntryResult!7198)

(assert (=> b!724652 (= e!405908 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19591 a!3186) j!159) a!3186 mask!3328) (Found!7198 j!159)))))

(declare-fun res!485979 () Bool)

(assert (=> start!64476 (=> (not res!485979) (not e!405907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64476 (= res!485979 (validMask!0 mask!3328))))

(assert (=> start!64476 e!405907))

(assert (=> start!64476 true))

(declare-fun array_inv!15365 (array!40947) Bool)

(assert (=> start!64476 (array_inv!15365 a!3186)))

(declare-fun b!724653 () Bool)

(assert (=> b!724653 (= e!405907 e!405903)))

(declare-fun res!485975 () Bool)

(assert (=> b!724653 (=> (not res!485975) (not e!405903))))

(declare-fun lt!321089 () SeekEntryResult!7198)

(assert (=> b!724653 (= res!485975 (or (= lt!321089 (MissingZero!7198 i!1173)) (= lt!321089 (MissingVacant!7198 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40947 (_ BitVec 32)) SeekEntryResult!7198)

(assert (=> b!724653 (= lt!321089 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!724654 () Bool)

(declare-fun res!485978 () Bool)

(assert (=> b!724654 (=> (not res!485978) (not e!405904))))

(assert (=> b!724654 (= res!485978 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19591 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724655 () Bool)

(assert (=> b!724655 (= e!405908 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19591 a!3186) j!159) a!3186 mask!3328) lt!321085))))

(declare-fun b!724656 () Bool)

(declare-fun res!485968 () Bool)

(assert (=> b!724656 (=> (not res!485968) (not e!405903))))

(declare-datatypes ((List!13646 0))(
  ( (Nil!13643) (Cons!13642 (h!14699 (_ BitVec 64)) (t!19969 List!13646)) )
))
(declare-fun arrayNoDuplicates!0 (array!40947 (_ BitVec 32) List!13646) Bool)

(assert (=> b!724656 (= res!485968 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13643))))

(declare-fun b!724657 () Bool)

(declare-fun res!485976 () Bool)

(assert (=> b!724657 (=> (not res!485976) (not e!405903))))

(assert (=> b!724657 (= res!485976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724658 () Bool)

(declare-fun res!485967 () Bool)

(assert (=> b!724658 (=> (not res!485967) (not e!405907))))

(assert (=> b!724658 (= res!485967 (validKeyInArray!0 (select (arr!19591 a!3186) j!159)))))

(declare-fun b!724659 () Bool)

(assert (=> b!724659 (= e!405905 (= (seekEntryOrOpen!0 (select (arr!19591 a!3186) j!159) a!3186 mask!3328) (Found!7198 j!159)))))

(declare-fun b!724660 () Bool)

(declare-fun res!485966 () Bool)

(assert (=> b!724660 (=> (not res!485966) (not e!405904))))

(assert (=> b!724660 (= res!485966 e!405908)))

(declare-fun c!79713 () Bool)

(assert (=> b!724660 (= c!79713 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724661 () Bool)

(declare-fun res!485972 () Bool)

(assert (=> b!724661 (=> (not res!485972) (not e!405903))))

(assert (=> b!724661 (= res!485972 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20012 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20012 a!3186))))))

(assert (= (and start!64476 res!485979) b!724650))

(assert (= (and b!724650 res!485973) b!724658))

(assert (= (and b!724658 res!485967) b!724651))

(assert (= (and b!724651 res!485970) b!724646))

(assert (= (and b!724646 res!485977) b!724653))

(assert (= (and b!724653 res!485975) b!724657))

(assert (= (and b!724657 res!485976) b!724656))

(assert (= (and b!724656 res!485968) b!724661))

(assert (= (and b!724661 res!485972) b!724648))

(assert (= (and b!724648 res!485969) b!724654))

(assert (= (and b!724654 res!485978) b!724660))

(assert (= (and b!724660 c!79713) b!724655))

(assert (= (and b!724660 (not c!79713)) b!724652))

(assert (= (and b!724660 res!485966) b!724649))

(assert (= (and b!724649 res!485974) b!724647))

(assert (= (and b!724647 res!485971) b!724659))

(declare-fun m!678969 () Bool)

(assert (=> b!724648 m!678969))

(assert (=> b!724648 m!678969))

(declare-fun m!678971 () Bool)

(assert (=> b!724648 m!678971))

(assert (=> b!724648 m!678971))

(assert (=> b!724648 m!678969))

(declare-fun m!678973 () Bool)

(assert (=> b!724648 m!678973))

(declare-fun m!678975 () Bool)

(assert (=> start!64476 m!678975))

(declare-fun m!678977 () Bool)

(assert (=> start!64476 m!678977))

(declare-fun m!678979 () Bool)

(assert (=> b!724647 m!678979))

(declare-fun m!678981 () Bool)

(assert (=> b!724647 m!678981))

(declare-fun m!678983 () Bool)

(assert (=> b!724646 m!678983))

(declare-fun m!678985 () Bool)

(assert (=> b!724649 m!678985))

(assert (=> b!724649 m!678985))

(declare-fun m!678987 () Bool)

(assert (=> b!724649 m!678987))

(declare-fun m!678989 () Bool)

(assert (=> b!724649 m!678989))

(declare-fun m!678991 () Bool)

(assert (=> b!724649 m!678991))

(declare-fun m!678993 () Bool)

(assert (=> b!724649 m!678993))

(assert (=> b!724652 m!678969))

(assert (=> b!724652 m!678969))

(declare-fun m!678995 () Bool)

(assert (=> b!724652 m!678995))

(declare-fun m!678997 () Bool)

(assert (=> b!724656 m!678997))

(declare-fun m!678999 () Bool)

(assert (=> b!724653 m!678999))

(declare-fun m!679001 () Bool)

(assert (=> b!724654 m!679001))

(declare-fun m!679003 () Bool)

(assert (=> b!724657 m!679003))

(assert (=> b!724655 m!678969))

(assert (=> b!724655 m!678969))

(declare-fun m!679005 () Bool)

(assert (=> b!724655 m!679005))

(assert (=> b!724658 m!678969))

(assert (=> b!724658 m!678969))

(declare-fun m!679007 () Bool)

(assert (=> b!724658 m!679007))

(declare-fun m!679009 () Bool)

(assert (=> b!724651 m!679009))

(assert (=> b!724659 m!678969))

(assert (=> b!724659 m!678969))

(declare-fun m!679011 () Bool)

(assert (=> b!724659 m!679011))

(check-sat (not b!724647) (not b!724659) (not b!724658) (not start!64476) (not b!724657) (not b!724646) (not b!724655) (not b!724649) (not b!724648) (not b!724656) (not b!724652) (not b!724651) (not b!724653))
(check-sat)
