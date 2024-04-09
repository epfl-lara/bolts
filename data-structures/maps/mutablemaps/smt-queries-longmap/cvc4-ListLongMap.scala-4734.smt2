; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65486 () Bool)

(assert start!65486)

(declare-fun b!745965 () Bool)

(declare-fun res!502914 () Bool)

(declare-fun e!416631 () Bool)

(assert (=> b!745965 (=> (not res!502914) (not e!416631))))

(declare-datatypes ((array!41612 0))(
  ( (array!41613 (arr!19916 (Array (_ BitVec 32) (_ BitVec 64))) (size!20337 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41612)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745965 (= res!502914 (validKeyInArray!0 (select (arr!19916 a!3186) j!159)))))

(declare-fun b!745967 () Bool)

(declare-fun res!502921 () Bool)

(declare-fun e!416625 () Bool)

(assert (=> b!745967 (=> (not res!502921) (not e!416625))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41612 (_ BitVec 32)) Bool)

(assert (=> b!745967 (= res!502921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!416628 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!745968 () Bool)

(declare-datatypes ((SeekEntryResult!7523 0))(
  ( (MissingZero!7523 (index!32459 (_ BitVec 32))) (Found!7523 (index!32460 (_ BitVec 32))) (Intermediate!7523 (undefined!8335 Bool) (index!32461 (_ BitVec 32)) (x!63434 (_ BitVec 32))) (Undefined!7523) (MissingVacant!7523 (index!32462 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41612 (_ BitVec 32)) SeekEntryResult!7523)

(assert (=> b!745968 (= e!416628 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19916 a!3186) j!159) a!3186 mask!3328) (Found!7523 j!159)))))

(declare-fun b!745969 () Bool)

(declare-fun res!502919 () Bool)

(assert (=> b!745969 (=> (not res!502919) (not e!416631))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745969 (= res!502919 (and (= (size!20337 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20337 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20337 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!416626 () Bool)

(declare-fun b!745970 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!331487 () SeekEntryResult!7523)

(assert (=> b!745970 (= e!416626 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19916 a!3186) j!159) a!3186 mask!3328) lt!331487))))

(declare-fun b!745971 () Bool)

(declare-fun res!502917 () Bool)

(assert (=> b!745971 (=> (not res!502917) (not e!416625))))

(assert (=> b!745971 (= res!502917 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20337 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20337 a!3186))))))

(declare-fun b!745972 () Bool)

(declare-fun res!502911 () Bool)

(assert (=> b!745972 (=> (not res!502911) (not e!416631))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745972 (= res!502911 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745973 () Bool)

(assert (=> b!745973 (= e!416631 e!416625)))

(declare-fun res!502923 () Bool)

(assert (=> b!745973 (=> (not res!502923) (not e!416625))))

(declare-fun lt!331494 () SeekEntryResult!7523)

(assert (=> b!745973 (= res!502923 (or (= lt!331494 (MissingZero!7523 i!1173)) (= lt!331494 (MissingVacant!7523 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41612 (_ BitVec 32)) SeekEntryResult!7523)

(assert (=> b!745973 (= lt!331494 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745974 () Bool)

(declare-fun res!502920 () Bool)

(declare-fun e!416627 () Bool)

(assert (=> b!745974 (=> (not res!502920) (not e!416627))))

(assert (=> b!745974 (= res!502920 e!416628)))

(declare-fun c!81909 () Bool)

(assert (=> b!745974 (= c!81909 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745975 () Bool)

(assert (=> b!745975 (= e!416625 e!416627)))

(declare-fun res!502908 () Bool)

(assert (=> b!745975 (=> (not res!502908) (not e!416627))))

(declare-fun lt!331491 () SeekEntryResult!7523)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41612 (_ BitVec 32)) SeekEntryResult!7523)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745975 (= res!502908 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19916 a!3186) j!159) mask!3328) (select (arr!19916 a!3186) j!159) a!3186 mask!3328) lt!331491))))

(assert (=> b!745975 (= lt!331491 (Intermediate!7523 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745976 () Bool)

(declare-fun e!416630 () Bool)

(assert (=> b!745976 (= e!416630 true)))

(declare-fun lt!331488 () SeekEntryResult!7523)

(declare-fun lt!331490 () SeekEntryResult!7523)

(assert (=> b!745976 (= lt!331488 lt!331490)))

(declare-fun b!745966 () Bool)

(declare-fun res!502915 () Bool)

(assert (=> b!745966 (=> (not res!502915) (not e!416625))))

(declare-datatypes ((List!13971 0))(
  ( (Nil!13968) (Cons!13967 (h!15039 (_ BitVec 64)) (t!20294 List!13971)) )
))
(declare-fun arrayNoDuplicates!0 (array!41612 (_ BitVec 32) List!13971) Bool)

(assert (=> b!745966 (= res!502915 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13968))))

(declare-fun res!502912 () Bool)

(assert (=> start!65486 (=> (not res!502912) (not e!416631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65486 (= res!502912 (validMask!0 mask!3328))))

(assert (=> start!65486 e!416631))

(assert (=> start!65486 true))

(declare-fun array_inv!15690 (array!41612) Bool)

(assert (=> start!65486 (array_inv!15690 a!3186)))

(declare-fun b!745977 () Bool)

(declare-fun e!416624 () Bool)

(assert (=> b!745977 (= e!416624 e!416630)))

(declare-fun res!502913 () Bool)

(assert (=> b!745977 (=> res!502913 e!416630)))

(declare-fun lt!331492 () (_ BitVec 64))

(assert (=> b!745977 (= res!502913 (or (not (= lt!331490 lt!331487)) (= (select (store (arr!19916 a!3186) i!1173 k!2102) index!1321) lt!331492) (not (= (select (store (arr!19916 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745977 (= lt!331490 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19916 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745978 () Bool)

(declare-fun res!502909 () Bool)

(assert (=> b!745978 (=> (not res!502909) (not e!416631))))

(assert (=> b!745978 (= res!502909 (validKeyInArray!0 k!2102))))

(declare-fun b!745979 () Bool)

(declare-fun e!416623 () Bool)

(assert (=> b!745979 (= e!416623 (not e!416624))))

(declare-fun res!502918 () Bool)

(assert (=> b!745979 (=> res!502918 e!416624)))

(declare-fun lt!331495 () SeekEntryResult!7523)

(assert (=> b!745979 (= res!502918 (or (not (is-Intermediate!7523 lt!331495)) (bvslt x!1131 (x!63434 lt!331495)) (not (= x!1131 (x!63434 lt!331495))) (not (= index!1321 (index!32461 lt!331495)))))))

(assert (=> b!745979 e!416626))

(declare-fun res!502910 () Bool)

(assert (=> b!745979 (=> (not res!502910) (not e!416626))))

(assert (=> b!745979 (= res!502910 (= lt!331488 lt!331487))))

(assert (=> b!745979 (= lt!331487 (Found!7523 j!159))))

(assert (=> b!745979 (= lt!331488 (seekEntryOrOpen!0 (select (arr!19916 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745979 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25526 0))(
  ( (Unit!25527) )
))
(declare-fun lt!331493 () Unit!25526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25526)

(assert (=> b!745979 (= lt!331493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745980 () Bool)

(declare-fun res!502922 () Bool)

(assert (=> b!745980 (=> (not res!502922) (not e!416627))))

(assert (=> b!745980 (= res!502922 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19916 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745981 () Bool)

(assert (=> b!745981 (= e!416627 e!416623)))

(declare-fun res!502916 () Bool)

(assert (=> b!745981 (=> (not res!502916) (not e!416623))))

(declare-fun lt!331489 () SeekEntryResult!7523)

(assert (=> b!745981 (= res!502916 (= lt!331489 lt!331495))))

(declare-fun lt!331496 () array!41612)

(assert (=> b!745981 (= lt!331495 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331492 lt!331496 mask!3328))))

(assert (=> b!745981 (= lt!331489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331492 mask!3328) lt!331492 lt!331496 mask!3328))))

(assert (=> b!745981 (= lt!331492 (select (store (arr!19916 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745981 (= lt!331496 (array!41613 (store (arr!19916 a!3186) i!1173 k!2102) (size!20337 a!3186)))))

(declare-fun b!745982 () Bool)

(assert (=> b!745982 (= e!416628 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19916 a!3186) j!159) a!3186 mask!3328) lt!331491))))

(assert (= (and start!65486 res!502912) b!745969))

(assert (= (and b!745969 res!502919) b!745965))

(assert (= (and b!745965 res!502914) b!745978))

(assert (= (and b!745978 res!502909) b!745972))

(assert (= (and b!745972 res!502911) b!745973))

(assert (= (and b!745973 res!502923) b!745967))

(assert (= (and b!745967 res!502921) b!745966))

(assert (= (and b!745966 res!502915) b!745971))

(assert (= (and b!745971 res!502917) b!745975))

(assert (= (and b!745975 res!502908) b!745980))

(assert (= (and b!745980 res!502922) b!745974))

(assert (= (and b!745974 c!81909) b!745982))

(assert (= (and b!745974 (not c!81909)) b!745968))

(assert (= (and b!745974 res!502920) b!745981))

(assert (= (and b!745981 res!502916) b!745979))

(assert (= (and b!745979 res!502910) b!745970))

(assert (= (and b!745979 (not res!502918)) b!745977))

(assert (= (and b!745977 (not res!502913)) b!745976))

(declare-fun m!696361 () Bool)

(assert (=> b!745972 m!696361))

(declare-fun m!696363 () Bool)

(assert (=> b!745965 m!696363))

(assert (=> b!745965 m!696363))

(declare-fun m!696365 () Bool)

(assert (=> b!745965 m!696365))

(declare-fun m!696367 () Bool)

(assert (=> b!745981 m!696367))

(declare-fun m!696369 () Bool)

(assert (=> b!745981 m!696369))

(declare-fun m!696371 () Bool)

(assert (=> b!745981 m!696371))

(declare-fun m!696373 () Bool)

(assert (=> b!745981 m!696373))

(declare-fun m!696375 () Bool)

(assert (=> b!745981 m!696375))

(assert (=> b!745981 m!696367))

(assert (=> b!745968 m!696363))

(assert (=> b!745968 m!696363))

(declare-fun m!696377 () Bool)

(assert (=> b!745968 m!696377))

(declare-fun m!696379 () Bool)

(assert (=> b!745980 m!696379))

(assert (=> b!745979 m!696363))

(assert (=> b!745979 m!696363))

(declare-fun m!696381 () Bool)

(assert (=> b!745979 m!696381))

(declare-fun m!696383 () Bool)

(assert (=> b!745979 m!696383))

(declare-fun m!696385 () Bool)

(assert (=> b!745979 m!696385))

(declare-fun m!696387 () Bool)

(assert (=> b!745978 m!696387))

(assert (=> b!745977 m!696371))

(declare-fun m!696389 () Bool)

(assert (=> b!745977 m!696389))

(assert (=> b!745977 m!696363))

(assert (=> b!745977 m!696363))

(assert (=> b!745977 m!696377))

(declare-fun m!696391 () Bool)

(assert (=> b!745966 m!696391))

(assert (=> b!745970 m!696363))

(assert (=> b!745970 m!696363))

(declare-fun m!696393 () Bool)

(assert (=> b!745970 m!696393))

(assert (=> b!745982 m!696363))

(assert (=> b!745982 m!696363))

(declare-fun m!696395 () Bool)

(assert (=> b!745982 m!696395))

(declare-fun m!696397 () Bool)

(assert (=> start!65486 m!696397))

(declare-fun m!696399 () Bool)

(assert (=> start!65486 m!696399))

(declare-fun m!696401 () Bool)

(assert (=> b!745967 m!696401))

(declare-fun m!696403 () Bool)

(assert (=> b!745973 m!696403))

(assert (=> b!745975 m!696363))

(assert (=> b!745975 m!696363))

(declare-fun m!696405 () Bool)

(assert (=> b!745975 m!696405))

(assert (=> b!745975 m!696405))

(assert (=> b!745975 m!696363))

(declare-fun m!696407 () Bool)

(assert (=> b!745975 m!696407))

(push 1)

