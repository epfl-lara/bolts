; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65870 () Bool)

(assert start!65870)

(declare-fun b!758651 () Bool)

(declare-fun e!422983 () Bool)

(declare-fun e!422984 () Bool)

(assert (=> b!758651 (= e!422983 e!422984)))

(declare-fun res!513388 () Bool)

(assert (=> b!758651 (=> (not res!513388) (not e!422984))))

(declare-datatypes ((array!41996 0))(
  ( (array!41997 (arr!20108 (Array (_ BitVec 32) (_ BitVec 64))) (size!20529 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41996)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7715 0))(
  ( (MissingZero!7715 (index!33227 (_ BitVec 32))) (Found!7715 (index!33228 (_ BitVec 32))) (Intermediate!7715 (undefined!8527 Bool) (index!33229 (_ BitVec 32)) (x!64138 (_ BitVec 32))) (Undefined!7715) (MissingVacant!7715 (index!33230 (_ BitVec 32))) )
))
(declare-fun lt!338064 () SeekEntryResult!7715)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41996 (_ BitVec 32)) SeekEntryResult!7715)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758651 (= res!513388 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20108 a!3186) j!159) mask!3328) (select (arr!20108 a!3186) j!159) a!3186 mask!3328) lt!338064))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758651 (= lt!338064 (Intermediate!7715 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758652 () Bool)

(declare-fun res!513391 () Bool)

(declare-fun e!422988 () Bool)

(assert (=> b!758652 (=> (not res!513391) (not e!422988))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758652 (= res!513391 (validKeyInArray!0 k!2102))))

(declare-fun res!513393 () Bool)

(assert (=> start!65870 (=> (not res!513393) (not e!422988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65870 (= res!513393 (validMask!0 mask!3328))))

(assert (=> start!65870 e!422988))

(assert (=> start!65870 true))

(declare-fun array_inv!15882 (array!41996) Bool)

(assert (=> start!65870 (array_inv!15882 a!3186)))

(declare-fun b!758653 () Bool)

(declare-fun res!513399 () Bool)

(assert (=> b!758653 (=> (not res!513399) (not e!422983))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!758653 (= res!513399 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20529 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20529 a!3186))))))

(declare-fun b!758654 () Bool)

(declare-datatypes ((Unit!26262 0))(
  ( (Unit!26263) )
))
(declare-fun e!422993 () Unit!26262)

(declare-fun Unit!26264 () Unit!26262)

(assert (=> b!758654 (= e!422993 Unit!26264)))

(declare-fun b!758655 () Bool)

(declare-fun res!513386 () Bool)

(assert (=> b!758655 (=> (not res!513386) (not e!422983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41996 (_ BitVec 32)) Bool)

(assert (=> b!758655 (= res!513386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758656 () Bool)

(declare-fun res!513397 () Bool)

(assert (=> b!758656 (=> (not res!513397) (not e!422988))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758656 (= res!513397 (and (= (size!20529 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20529 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20529 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758657 () Bool)

(declare-fun e!422985 () Bool)

(declare-fun e!422990 () Bool)

(assert (=> b!758657 (= e!422985 e!422990)))

(declare-fun res!513398 () Bool)

(assert (=> b!758657 (=> res!513398 e!422990)))

(declare-fun lt!338067 () (_ BitVec 64))

(declare-fun lt!338068 () (_ BitVec 64))

(assert (=> b!758657 (= res!513398 (= lt!338067 lt!338068))))

(assert (=> b!758657 (= lt!338067 (select (store (arr!20108 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758658 () Bool)

(declare-fun e!422989 () Bool)

(assert (=> b!758658 (= e!422990 e!422989)))

(declare-fun res!513395 () Bool)

(assert (=> b!758658 (=> res!513395 e!422989)))

(assert (=> b!758658 (= res!513395 (or (not (= (select (arr!20108 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!338061 () SeekEntryResult!7715)

(declare-fun lt!338065 () SeekEntryResult!7715)

(declare-fun lt!338071 () SeekEntryResult!7715)

(declare-fun lt!338072 () SeekEntryResult!7715)

(assert (=> b!758658 (and (= lt!338072 lt!338065) (= lt!338071 lt!338061))))

(declare-fun lt!338073 () array!41996)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41996 (_ BitVec 32)) SeekEntryResult!7715)

(assert (=> b!758658 (= lt!338065 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!338068 lt!338073 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41996 (_ BitVec 32)) SeekEntryResult!7715)

(assert (=> b!758658 (= lt!338072 (seekEntryOrOpen!0 lt!338068 lt!338073 mask!3328))))

(assert (=> b!758658 (= lt!338067 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!338069 () Unit!26262)

(assert (=> b!758658 (= lt!338069 e!422993)))

(declare-fun c!83015 () Bool)

(assert (=> b!758658 (= c!83015 (= lt!338067 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758659 () Bool)

(declare-fun res!513392 () Bool)

(assert (=> b!758659 (=> (not res!513392) (not e!422984))))

(assert (=> b!758659 (= res!513392 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20108 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758660 () Bool)

(assert (=> b!758660 (= e!422989 true)))

(assert (=> b!758660 (= lt!338065 lt!338061)))

(declare-fun lt!338075 () Unit!26262)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41996 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26262)

(assert (=> b!758660 (= lt!338075 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758661 () Bool)

(declare-fun res!513389 () Bool)

(assert (=> b!758661 (=> (not res!513389) (not e!422988))))

(assert (=> b!758661 (= res!513389 (validKeyInArray!0 (select (arr!20108 a!3186) j!159)))))

(declare-fun b!758662 () Bool)

(declare-fun e!422991 () Bool)

(assert (=> b!758662 (= e!422984 e!422991)))

(declare-fun res!513383 () Bool)

(assert (=> b!758662 (=> (not res!513383) (not e!422991))))

(declare-fun lt!338063 () SeekEntryResult!7715)

(declare-fun lt!338074 () SeekEntryResult!7715)

(assert (=> b!758662 (= res!513383 (= lt!338063 lt!338074))))

(assert (=> b!758662 (= lt!338074 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338068 lt!338073 mask!3328))))

(assert (=> b!758662 (= lt!338063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338068 mask!3328) lt!338068 lt!338073 mask!3328))))

(assert (=> b!758662 (= lt!338068 (select (store (arr!20108 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758662 (= lt!338073 (array!41997 (store (arr!20108 a!3186) i!1173 k!2102) (size!20529 a!3186)))))

(declare-fun b!758663 () Bool)

(declare-fun res!513384 () Bool)

(assert (=> b!758663 (=> (not res!513384) (not e!422984))))

(declare-fun e!422992 () Bool)

(assert (=> b!758663 (= res!513384 e!422992)))

(declare-fun c!83016 () Bool)

(assert (=> b!758663 (= c!83016 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758664 () Bool)

(assert (=> b!758664 (= e!422992 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20108 a!3186) j!159) a!3186 mask!3328) (Found!7715 j!159)))))

(declare-fun b!758665 () Bool)

(declare-fun res!513390 () Bool)

(assert (=> b!758665 (=> (not res!513390) (not e!422983))))

(declare-datatypes ((List!14163 0))(
  ( (Nil!14160) (Cons!14159 (h!15231 (_ BitVec 64)) (t!20486 List!14163)) )
))
(declare-fun arrayNoDuplicates!0 (array!41996 (_ BitVec 32) List!14163) Bool)

(assert (=> b!758665 (= res!513390 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14160))))

(declare-fun b!758666 () Bool)

(declare-fun res!513382 () Bool)

(assert (=> b!758666 (=> (not res!513382) (not e!422988))))

(declare-fun arrayContainsKey!0 (array!41996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758666 (= res!513382 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758667 () Bool)

(assert (=> b!758667 (= e!422988 e!422983)))

(declare-fun res!513394 () Bool)

(assert (=> b!758667 (=> (not res!513394) (not e!422983))))

(declare-fun lt!338066 () SeekEntryResult!7715)

(assert (=> b!758667 (= res!513394 (or (= lt!338066 (MissingZero!7715 i!1173)) (= lt!338066 (MissingVacant!7715 i!1173))))))

(assert (=> b!758667 (= lt!338066 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758668 () Bool)

(declare-fun e!422987 () Bool)

(assert (=> b!758668 (= e!422987 e!422985)))

(declare-fun res!513396 () Bool)

(assert (=> b!758668 (=> res!513396 e!422985)))

(declare-fun lt!338062 () SeekEntryResult!7715)

(assert (=> b!758668 (= res!513396 (not (= lt!338061 lt!338062)))))

(assert (=> b!758668 (= lt!338061 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20108 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!422986 () Bool)

(declare-fun b!758669 () Bool)

(assert (=> b!758669 (= e!422986 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20108 a!3186) j!159) a!3186 mask!3328) lt!338062))))

(declare-fun b!758670 () Bool)

(declare-fun Unit!26265 () Unit!26262)

(assert (=> b!758670 (= e!422993 Unit!26265)))

(assert (=> b!758670 false))

(declare-fun b!758671 () Bool)

(assert (=> b!758671 (= e!422991 (not e!422987))))

(declare-fun res!513387 () Bool)

(assert (=> b!758671 (=> res!513387 e!422987)))

(assert (=> b!758671 (= res!513387 (or (not (is-Intermediate!7715 lt!338074)) (bvslt x!1131 (x!64138 lt!338074)) (not (= x!1131 (x!64138 lt!338074))) (not (= index!1321 (index!33229 lt!338074)))))))

(assert (=> b!758671 e!422986))

(declare-fun res!513385 () Bool)

(assert (=> b!758671 (=> (not res!513385) (not e!422986))))

(assert (=> b!758671 (= res!513385 (= lt!338071 lt!338062))))

(assert (=> b!758671 (= lt!338062 (Found!7715 j!159))))

(assert (=> b!758671 (= lt!338071 (seekEntryOrOpen!0 (select (arr!20108 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!758671 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338070 () Unit!26262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41996 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26262)

(assert (=> b!758671 (= lt!338070 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758672 () Bool)

(assert (=> b!758672 (= e!422992 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20108 a!3186) j!159) a!3186 mask!3328) lt!338064))))

(assert (= (and start!65870 res!513393) b!758656))

(assert (= (and b!758656 res!513397) b!758661))

(assert (= (and b!758661 res!513389) b!758652))

(assert (= (and b!758652 res!513391) b!758666))

(assert (= (and b!758666 res!513382) b!758667))

(assert (= (and b!758667 res!513394) b!758655))

(assert (= (and b!758655 res!513386) b!758665))

(assert (= (and b!758665 res!513390) b!758653))

(assert (= (and b!758653 res!513399) b!758651))

(assert (= (and b!758651 res!513388) b!758659))

(assert (= (and b!758659 res!513392) b!758663))

(assert (= (and b!758663 c!83016) b!758672))

(assert (= (and b!758663 (not c!83016)) b!758664))

(assert (= (and b!758663 res!513384) b!758662))

(assert (= (and b!758662 res!513383) b!758671))

(assert (= (and b!758671 res!513385) b!758669))

(assert (= (and b!758671 (not res!513387)) b!758668))

(assert (= (and b!758668 (not res!513396)) b!758657))

(assert (= (and b!758657 (not res!513398)) b!758658))

(assert (= (and b!758658 c!83015) b!758670))

(assert (= (and b!758658 (not c!83015)) b!758654))

(assert (= (and b!758658 (not res!513395)) b!758660))

(declare-fun m!706181 () Bool)

(assert (=> b!758652 m!706181))

(declare-fun m!706183 () Bool)

(assert (=> b!758664 m!706183))

(assert (=> b!758664 m!706183))

(declare-fun m!706185 () Bool)

(assert (=> b!758664 m!706185))

(assert (=> b!758671 m!706183))

(assert (=> b!758671 m!706183))

(declare-fun m!706187 () Bool)

(assert (=> b!758671 m!706187))

(declare-fun m!706189 () Bool)

(assert (=> b!758671 m!706189))

(declare-fun m!706191 () Bool)

(assert (=> b!758671 m!706191))

(declare-fun m!706193 () Bool)

(assert (=> b!758657 m!706193))

(declare-fun m!706195 () Bool)

(assert (=> b!758657 m!706195))

(assert (=> b!758668 m!706183))

(assert (=> b!758668 m!706183))

(assert (=> b!758668 m!706185))

(declare-fun m!706197 () Bool)

(assert (=> b!758662 m!706197))

(assert (=> b!758662 m!706193))

(declare-fun m!706199 () Bool)

(assert (=> b!758662 m!706199))

(declare-fun m!706201 () Bool)

(assert (=> b!758662 m!706201))

(declare-fun m!706203 () Bool)

(assert (=> b!758662 m!706203))

(assert (=> b!758662 m!706201))

(declare-fun m!706205 () Bool)

(assert (=> b!758665 m!706205))

(declare-fun m!706207 () Bool)

(assert (=> b!758666 m!706207))

(assert (=> b!758651 m!706183))

(assert (=> b!758651 m!706183))

(declare-fun m!706209 () Bool)

(assert (=> b!758651 m!706209))

(assert (=> b!758651 m!706209))

(assert (=> b!758651 m!706183))

(declare-fun m!706211 () Bool)

(assert (=> b!758651 m!706211))

(assert (=> b!758672 m!706183))

(assert (=> b!758672 m!706183))

(declare-fun m!706213 () Bool)

(assert (=> b!758672 m!706213))

(declare-fun m!706215 () Bool)

(assert (=> b!758655 m!706215))

(declare-fun m!706217 () Bool)

(assert (=> b!758659 m!706217))

(declare-fun m!706219 () Bool)

(assert (=> start!65870 m!706219))

(declare-fun m!706221 () Bool)

(assert (=> start!65870 m!706221))

(declare-fun m!706223 () Bool)

(assert (=> b!758660 m!706223))

(assert (=> b!758669 m!706183))

(assert (=> b!758669 m!706183))

(declare-fun m!706225 () Bool)

(assert (=> b!758669 m!706225))

(declare-fun m!706227 () Bool)

(assert (=> b!758667 m!706227))

(declare-fun m!706229 () Bool)

(assert (=> b!758658 m!706229))

(declare-fun m!706231 () Bool)

(assert (=> b!758658 m!706231))

(declare-fun m!706233 () Bool)

(assert (=> b!758658 m!706233))

(assert (=> b!758661 m!706183))

(assert (=> b!758661 m!706183))

(declare-fun m!706235 () Bool)

(assert (=> b!758661 m!706235))

(push 1)

