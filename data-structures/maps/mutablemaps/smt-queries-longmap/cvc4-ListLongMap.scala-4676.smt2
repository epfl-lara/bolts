; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65138 () Bool)

(assert start!65138)

(declare-fun b!734975 () Bool)

(declare-fun e!411267 () Bool)

(declare-fun e!411258 () Bool)

(assert (=> b!734975 (= e!411267 (not e!411258))))

(declare-fun res!493946 () Bool)

(assert (=> b!734975 (=> res!493946 e!411258)))

(declare-datatypes ((SeekEntryResult!7349 0))(
  ( (MissingZero!7349 (index!31763 (_ BitVec 32))) (Found!7349 (index!31764 (_ BitVec 32))) (Intermediate!7349 (undefined!8161 Bool) (index!31765 (_ BitVec 32)) (x!62796 (_ BitVec 32))) (Undefined!7349) (MissingVacant!7349 (index!31766 (_ BitVec 32))) )
))
(declare-fun lt!325789 () SeekEntryResult!7349)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!734975 (= res!493946 (or (not (is-Intermediate!7349 lt!325789)) (bvsge x!1131 (x!62796 lt!325789))))))

(declare-fun e!411264 () Bool)

(assert (=> b!734975 e!411264))

(declare-fun res!493950 () Bool)

(assert (=> b!734975 (=> (not res!493950) (not e!411264))))

(declare-datatypes ((array!41264 0))(
  ( (array!41265 (arr!19742 (Array (_ BitVec 32) (_ BitVec 64))) (size!20163 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41264)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41264 (_ BitVec 32)) Bool)

(assert (=> b!734975 (= res!493950 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25016 0))(
  ( (Unit!25017) )
))
(declare-fun lt!325788 () Unit!25016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25016)

(assert (=> b!734975 (= lt!325788 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!734976 () Bool)

(declare-fun res!493942 () Bool)

(declare-fun e!411259 () Bool)

(assert (=> b!734976 (=> (not res!493942) (not e!411259))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!734976 (= res!493942 (and (= (size!20163 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20163 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20163 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734977 () Bool)

(declare-fun res!493947 () Bool)

(declare-fun e!411260 () Bool)

(assert (=> b!734977 (=> (not res!493947) (not e!411260))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!734977 (= res!493947 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20163 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20163 a!3186))))))

(declare-fun b!734978 () Bool)

(declare-fun res!493941 () Bool)

(assert (=> b!734978 (=> (not res!493941) (not e!411260))))

(declare-datatypes ((List!13797 0))(
  ( (Nil!13794) (Cons!13793 (h!14865 (_ BitVec 64)) (t!20120 List!13797)) )
))
(declare-fun arrayNoDuplicates!0 (array!41264 (_ BitVec 32) List!13797) Bool)

(assert (=> b!734978 (= res!493941 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13794))))

(declare-fun e!411261 () Bool)

(declare-fun b!734979 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41264 (_ BitVec 32)) SeekEntryResult!7349)

(assert (=> b!734979 (= e!411261 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19742 a!3186) j!159) a!3186 mask!3328) (Found!7349 j!159)))))

(declare-fun e!411266 () Bool)

(declare-fun b!734980 () Bool)

(declare-fun lt!325785 () SeekEntryResult!7349)

(assert (=> b!734980 (= e!411266 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19742 a!3186) j!159) a!3186 mask!3328) lt!325785))))

(declare-fun b!734981 () Bool)

(declare-fun e!411265 () Bool)

(assert (=> b!734981 (= e!411265 true)))

(declare-fun lt!325790 () SeekEntryResult!7349)

(assert (=> b!734981 (= lt!325790 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19742 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734982 () Bool)

(assert (=> b!734982 (= e!411264 e!411266)))

(declare-fun res!493938 () Bool)

(assert (=> b!734982 (=> (not res!493938) (not e!411266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41264 (_ BitVec 32)) SeekEntryResult!7349)

(assert (=> b!734982 (= res!493938 (= (seekEntryOrOpen!0 (select (arr!19742 a!3186) j!159) a!3186 mask!3328) lt!325785))))

(assert (=> b!734982 (= lt!325785 (Found!7349 j!159))))

(declare-fun b!734983 () Bool)

(declare-fun res!493949 () Bool)

(assert (=> b!734983 (=> (not res!493949) (not e!411259))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734983 (= res!493949 (validKeyInArray!0 k!2102))))

(declare-fun b!734984 () Bool)

(declare-fun res!493935 () Bool)

(assert (=> b!734984 (=> (not res!493935) (not e!411259))))

(declare-fun arrayContainsKey!0 (array!41264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734984 (= res!493935 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734985 () Bool)

(declare-fun res!493940 () Bool)

(assert (=> b!734985 (=> (not res!493940) (not e!411260))))

(assert (=> b!734985 (= res!493940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!493948 () Bool)

(assert (=> start!65138 (=> (not res!493948) (not e!411259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65138 (= res!493948 (validMask!0 mask!3328))))

(assert (=> start!65138 e!411259))

(assert (=> start!65138 true))

(declare-fun array_inv!15516 (array!41264) Bool)

(assert (=> start!65138 (array_inv!15516 a!3186)))

(declare-fun b!734986 () Bool)

(declare-fun res!493945 () Bool)

(assert (=> b!734986 (=> (not res!493945) (not e!411259))))

(assert (=> b!734986 (= res!493945 (validKeyInArray!0 (select (arr!19742 a!3186) j!159)))))

(declare-fun b!734987 () Bool)

(declare-fun res!493943 () Bool)

(declare-fun e!411263 () Bool)

(assert (=> b!734987 (=> (not res!493943) (not e!411263))))

(assert (=> b!734987 (= res!493943 e!411261)))

(declare-fun c!80901 () Bool)

(assert (=> b!734987 (= c!80901 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734988 () Bool)

(declare-fun lt!325781 () SeekEntryResult!7349)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41264 (_ BitVec 32)) SeekEntryResult!7349)

(assert (=> b!734988 (= e!411261 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19742 a!3186) j!159) a!3186 mask!3328) lt!325781))))

(declare-fun b!734989 () Bool)

(declare-fun res!493936 () Bool)

(assert (=> b!734989 (=> (not res!493936) (not e!411263))))

(assert (=> b!734989 (= res!493936 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19742 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734990 () Bool)

(assert (=> b!734990 (= e!411263 e!411267)))

(declare-fun res!493944 () Bool)

(assert (=> b!734990 (=> (not res!493944) (not e!411267))))

(declare-fun lt!325786 () SeekEntryResult!7349)

(assert (=> b!734990 (= res!493944 (= lt!325786 lt!325789))))

(declare-fun lt!325784 () array!41264)

(declare-fun lt!325783 () (_ BitVec 64))

(assert (=> b!734990 (= lt!325789 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325783 lt!325784 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734990 (= lt!325786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325783 mask!3328) lt!325783 lt!325784 mask!3328))))

(assert (=> b!734990 (= lt!325783 (select (store (arr!19742 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!734990 (= lt!325784 (array!41265 (store (arr!19742 a!3186) i!1173 k!2102) (size!20163 a!3186)))))

(declare-fun b!734991 () Bool)

(assert (=> b!734991 (= e!411259 e!411260)))

(declare-fun res!493934 () Bool)

(assert (=> b!734991 (=> (not res!493934) (not e!411260))))

(declare-fun lt!325787 () SeekEntryResult!7349)

(assert (=> b!734991 (= res!493934 (or (= lt!325787 (MissingZero!7349 i!1173)) (= lt!325787 (MissingVacant!7349 i!1173))))))

(assert (=> b!734991 (= lt!325787 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!734992 () Bool)

(assert (=> b!734992 (= e!411258 e!411265)))

(declare-fun res!493937 () Bool)

(assert (=> b!734992 (=> res!493937 e!411265)))

(assert (=> b!734992 (= res!493937 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!325782 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734992 (= lt!325782 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!734993 () Bool)

(assert (=> b!734993 (= e!411260 e!411263)))

(declare-fun res!493939 () Bool)

(assert (=> b!734993 (=> (not res!493939) (not e!411263))))

(assert (=> b!734993 (= res!493939 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19742 a!3186) j!159) mask!3328) (select (arr!19742 a!3186) j!159) a!3186 mask!3328) lt!325781))))

(assert (=> b!734993 (= lt!325781 (Intermediate!7349 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65138 res!493948) b!734976))

(assert (= (and b!734976 res!493942) b!734986))

(assert (= (and b!734986 res!493945) b!734983))

(assert (= (and b!734983 res!493949) b!734984))

(assert (= (and b!734984 res!493935) b!734991))

(assert (= (and b!734991 res!493934) b!734985))

(assert (= (and b!734985 res!493940) b!734978))

(assert (= (and b!734978 res!493941) b!734977))

(assert (= (and b!734977 res!493947) b!734993))

(assert (= (and b!734993 res!493939) b!734989))

(assert (= (and b!734989 res!493936) b!734987))

(assert (= (and b!734987 c!80901) b!734988))

(assert (= (and b!734987 (not c!80901)) b!734979))

(assert (= (and b!734987 res!493943) b!734990))

(assert (= (and b!734990 res!493944) b!734975))

(assert (= (and b!734975 res!493950) b!734982))

(assert (= (and b!734982 res!493938) b!734980))

(assert (= (and b!734975 (not res!493946)) b!734992))

(assert (= (and b!734992 (not res!493937)) b!734981))

(declare-fun m!687541 () Bool)

(assert (=> b!734990 m!687541))

(declare-fun m!687543 () Bool)

(assert (=> b!734990 m!687543))

(declare-fun m!687545 () Bool)

(assert (=> b!734990 m!687545))

(declare-fun m!687547 () Bool)

(assert (=> b!734990 m!687547))

(assert (=> b!734990 m!687541))

(declare-fun m!687549 () Bool)

(assert (=> b!734990 m!687549))

(declare-fun m!687551 () Bool)

(assert (=> b!734988 m!687551))

(assert (=> b!734988 m!687551))

(declare-fun m!687553 () Bool)

(assert (=> b!734988 m!687553))

(declare-fun m!687555 () Bool)

(assert (=> b!734984 m!687555))

(assert (=> b!734993 m!687551))

(assert (=> b!734993 m!687551))

(declare-fun m!687557 () Bool)

(assert (=> b!734993 m!687557))

(assert (=> b!734993 m!687557))

(assert (=> b!734993 m!687551))

(declare-fun m!687559 () Bool)

(assert (=> b!734993 m!687559))

(assert (=> b!734982 m!687551))

(assert (=> b!734982 m!687551))

(declare-fun m!687561 () Bool)

(assert (=> b!734982 m!687561))

(assert (=> b!734980 m!687551))

(assert (=> b!734980 m!687551))

(declare-fun m!687563 () Bool)

(assert (=> b!734980 m!687563))

(declare-fun m!687565 () Bool)

(assert (=> start!65138 m!687565))

(declare-fun m!687567 () Bool)

(assert (=> start!65138 m!687567))

(assert (=> b!734981 m!687551))

(assert (=> b!734981 m!687551))

(declare-fun m!687569 () Bool)

(assert (=> b!734981 m!687569))

(assert (=> b!734979 m!687551))

(assert (=> b!734979 m!687551))

(assert (=> b!734979 m!687569))

(declare-fun m!687571 () Bool)

(assert (=> b!734989 m!687571))

(declare-fun m!687573 () Bool)

(assert (=> b!734978 m!687573))

(declare-fun m!687575 () Bool)

(assert (=> b!734991 m!687575))

(declare-fun m!687577 () Bool)

(assert (=> b!734975 m!687577))

(declare-fun m!687579 () Bool)

(assert (=> b!734975 m!687579))

(declare-fun m!687581 () Bool)

(assert (=> b!734983 m!687581))

(assert (=> b!734986 m!687551))

(assert (=> b!734986 m!687551))

(declare-fun m!687583 () Bool)

(assert (=> b!734986 m!687583))

(declare-fun m!687585 () Bool)

(assert (=> b!734992 m!687585))

(declare-fun m!687587 () Bool)

(assert (=> b!734985 m!687587))

(push 1)

