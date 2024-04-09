; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64696 () Bool)

(assert start!64696)

(declare-fun b!728934 () Bool)

(declare-fun e!408031 () Bool)

(declare-fun e!408033 () Bool)

(assert (=> b!728934 (= e!408031 e!408033)))

(declare-fun res!489532 () Bool)

(assert (=> b!728934 (=> (not res!489532) (not e!408033))))

(declare-datatypes ((SeekEntryResult!7272 0))(
  ( (MissingZero!7272 (index!31455 (_ BitVec 32))) (Found!7272 (index!31456 (_ BitVec 32))) (Intermediate!7272 (undefined!8084 Bool) (index!31457 (_ BitVec 32)) (x!62471 (_ BitVec 32))) (Undefined!7272) (MissingVacant!7272 (index!31458 (_ BitVec 32))) )
))
(declare-fun lt!322942 () SeekEntryResult!7272)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728934 (= res!489532 (or (= lt!322942 (MissingZero!7272 i!1173)) (= lt!322942 (MissingVacant!7272 i!1173))))))

(declare-datatypes ((array!41098 0))(
  ( (array!41099 (arr!19665 (Array (_ BitVec 32) (_ BitVec 64))) (size!20086 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41098)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41098 (_ BitVec 32)) SeekEntryResult!7272)

(assert (=> b!728934 (= lt!322942 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!322940 () SeekEntryResult!7272)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!728935 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!408034 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41098 (_ BitVec 32)) SeekEntryResult!7272)

(assert (=> b!728935 (= e!408034 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19665 a!3186) j!159) a!3186 mask!3328) lt!322940))))

(declare-fun b!728936 () Bool)

(declare-fun res!489525 () Bool)

(assert (=> b!728936 (=> (not res!489525) (not e!408033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41098 (_ BitVec 32)) Bool)

(assert (=> b!728936 (= res!489525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728937 () Bool)

(declare-fun res!489527 () Bool)

(declare-fun e!408029 () Bool)

(assert (=> b!728937 (=> (not res!489527) (not e!408029))))

(assert (=> b!728937 (= res!489527 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19665 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728938 () Bool)

(assert (=> b!728938 (= e!408033 e!408029)))

(declare-fun res!489531 () Bool)

(assert (=> b!728938 (=> (not res!489531) (not e!408029))))

(declare-fun lt!322943 () SeekEntryResult!7272)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41098 (_ BitVec 32)) SeekEntryResult!7272)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728938 (= res!489531 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19665 a!3186) j!159) mask!3328) (select (arr!19665 a!3186) j!159) a!3186 mask!3328) lt!322943))))

(assert (=> b!728938 (= lt!322943 (Intermediate!7272 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728939 () Bool)

(declare-fun e!408032 () Bool)

(assert (=> b!728939 (= e!408032 e!408034)))

(declare-fun res!489519 () Bool)

(assert (=> b!728939 (=> (not res!489519) (not e!408034))))

(assert (=> b!728939 (= res!489519 (= (seekEntryOrOpen!0 (select (arr!19665 a!3186) j!159) a!3186 mask!3328) lt!322940))))

(assert (=> b!728939 (= lt!322940 (Found!7272 j!159))))

(declare-fun b!728940 () Bool)

(declare-fun res!489528 () Bool)

(assert (=> b!728940 (=> (not res!489528) (not e!408031))))

(declare-fun arrayContainsKey!0 (array!41098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728940 (= res!489528 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728941 () Bool)

(declare-fun res!489534 () Bool)

(assert (=> b!728941 (=> (not res!489534) (not e!408033))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!728941 (= res!489534 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20086 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20086 a!3186))))))

(declare-fun b!728943 () Bool)

(declare-fun e!408028 () Bool)

(declare-fun e!408036 () Bool)

(assert (=> b!728943 (= e!408028 (not e!408036))))

(declare-fun res!489524 () Bool)

(assert (=> b!728943 (=> res!489524 e!408036)))

(declare-fun lt!322938 () SeekEntryResult!7272)

(assert (=> b!728943 (= res!489524 (or (not (is-Intermediate!7272 lt!322938)) (bvsge x!1131 (x!62471 lt!322938))))))

(assert (=> b!728943 e!408032))

(declare-fun res!489520 () Bool)

(assert (=> b!728943 (=> (not res!489520) (not e!408032))))

(assert (=> b!728943 (= res!489520 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24862 0))(
  ( (Unit!24863) )
))
(declare-fun lt!322937 () Unit!24862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41098 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24862)

(assert (=> b!728943 (= lt!322937 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728944 () Bool)

(declare-fun e!408035 () Bool)

(assert (=> b!728944 (= e!408035 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19665 a!3186) j!159) a!3186 mask!3328) lt!322943))))

(declare-fun b!728945 () Bool)

(declare-fun res!489522 () Bool)

(assert (=> b!728945 (=> (not res!489522) (not e!408031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728945 (= res!489522 (validKeyInArray!0 k!2102))))

(declare-fun b!728946 () Bool)

(declare-fun res!489530 () Bool)

(assert (=> b!728946 (=> (not res!489530) (not e!408031))))

(assert (=> b!728946 (= res!489530 (and (= (size!20086 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20086 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20086 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728947 () Bool)

(declare-fun res!489529 () Bool)

(assert (=> b!728947 (=> (not res!489529) (not e!408033))))

(declare-datatypes ((List!13720 0))(
  ( (Nil!13717) (Cons!13716 (h!14776 (_ BitVec 64)) (t!20043 List!13720)) )
))
(declare-fun arrayNoDuplicates!0 (array!41098 (_ BitVec 32) List!13720) Bool)

(assert (=> b!728947 (= res!489529 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13717))))

(declare-fun b!728948 () Bool)

(assert (=> b!728948 (= e!408035 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19665 a!3186) j!159) a!3186 mask!3328) (Found!7272 j!159)))))

(declare-fun b!728949 () Bool)

(assert (=> b!728949 (= e!408036 true)))

(declare-fun lt!322935 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728949 (= lt!322935 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728942 () Bool)

(declare-fun res!489523 () Bool)

(assert (=> b!728942 (=> (not res!489523) (not e!408029))))

(assert (=> b!728942 (= res!489523 e!408035)))

(declare-fun c!80082 () Bool)

(assert (=> b!728942 (= c!80082 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!489533 () Bool)

(assert (=> start!64696 (=> (not res!489533) (not e!408031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64696 (= res!489533 (validMask!0 mask!3328))))

(assert (=> start!64696 e!408031))

(assert (=> start!64696 true))

(declare-fun array_inv!15439 (array!41098) Bool)

(assert (=> start!64696 (array_inv!15439 a!3186)))

(declare-fun b!728950 () Bool)

(assert (=> b!728950 (= e!408029 e!408028)))

(declare-fun res!489526 () Bool)

(assert (=> b!728950 (=> (not res!489526) (not e!408028))))

(declare-fun lt!322936 () SeekEntryResult!7272)

(assert (=> b!728950 (= res!489526 (= lt!322936 lt!322938))))

(declare-fun lt!322939 () array!41098)

(declare-fun lt!322941 () (_ BitVec 64))

(assert (=> b!728950 (= lt!322938 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322941 lt!322939 mask!3328))))

(assert (=> b!728950 (= lt!322936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322941 mask!3328) lt!322941 lt!322939 mask!3328))))

(assert (=> b!728950 (= lt!322941 (select (store (arr!19665 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728950 (= lt!322939 (array!41099 (store (arr!19665 a!3186) i!1173 k!2102) (size!20086 a!3186)))))

(declare-fun b!728951 () Bool)

(declare-fun res!489521 () Bool)

(assert (=> b!728951 (=> (not res!489521) (not e!408031))))

(assert (=> b!728951 (= res!489521 (validKeyInArray!0 (select (arr!19665 a!3186) j!159)))))

(assert (= (and start!64696 res!489533) b!728946))

(assert (= (and b!728946 res!489530) b!728951))

(assert (= (and b!728951 res!489521) b!728945))

(assert (= (and b!728945 res!489522) b!728940))

(assert (= (and b!728940 res!489528) b!728934))

(assert (= (and b!728934 res!489532) b!728936))

(assert (= (and b!728936 res!489525) b!728947))

(assert (= (and b!728947 res!489529) b!728941))

(assert (= (and b!728941 res!489534) b!728938))

(assert (= (and b!728938 res!489531) b!728937))

(assert (= (and b!728937 res!489527) b!728942))

(assert (= (and b!728942 c!80082) b!728944))

(assert (= (and b!728942 (not c!80082)) b!728948))

(assert (= (and b!728942 res!489523) b!728950))

(assert (= (and b!728950 res!489526) b!728943))

(assert (= (and b!728943 res!489520) b!728939))

(assert (= (and b!728939 res!489519) b!728935))

(assert (= (and b!728943 (not res!489524)) b!728949))

(declare-fun m!682717 () Bool)

(assert (=> start!64696 m!682717))

(declare-fun m!682719 () Bool)

(assert (=> start!64696 m!682719))

(declare-fun m!682721 () Bool)

(assert (=> b!728944 m!682721))

(assert (=> b!728944 m!682721))

(declare-fun m!682723 () Bool)

(assert (=> b!728944 m!682723))

(assert (=> b!728935 m!682721))

(assert (=> b!728935 m!682721))

(declare-fun m!682725 () Bool)

(assert (=> b!728935 m!682725))

(assert (=> b!728938 m!682721))

(assert (=> b!728938 m!682721))

(declare-fun m!682727 () Bool)

(assert (=> b!728938 m!682727))

(assert (=> b!728938 m!682727))

(assert (=> b!728938 m!682721))

(declare-fun m!682729 () Bool)

(assert (=> b!728938 m!682729))

(declare-fun m!682731 () Bool)

(assert (=> b!728934 m!682731))

(assert (=> b!728948 m!682721))

(assert (=> b!728948 m!682721))

(declare-fun m!682733 () Bool)

(assert (=> b!728948 m!682733))

(declare-fun m!682735 () Bool)

(assert (=> b!728940 m!682735))

(assert (=> b!728951 m!682721))

(assert (=> b!728951 m!682721))

(declare-fun m!682737 () Bool)

(assert (=> b!728951 m!682737))

(declare-fun m!682739 () Bool)

(assert (=> b!728945 m!682739))

(assert (=> b!728939 m!682721))

(assert (=> b!728939 m!682721))

(declare-fun m!682741 () Bool)

(assert (=> b!728939 m!682741))

(declare-fun m!682743 () Bool)

(assert (=> b!728943 m!682743))

(declare-fun m!682745 () Bool)

(assert (=> b!728943 m!682745))

(declare-fun m!682747 () Bool)

(assert (=> b!728949 m!682747))

(declare-fun m!682749 () Bool)

(assert (=> b!728937 m!682749))

(declare-fun m!682751 () Bool)

(assert (=> b!728947 m!682751))

(declare-fun m!682753 () Bool)

(assert (=> b!728950 m!682753))

(declare-fun m!682755 () Bool)

(assert (=> b!728950 m!682755))

(declare-fun m!682757 () Bool)

(assert (=> b!728950 m!682757))

(declare-fun m!682759 () Bool)

(assert (=> b!728950 m!682759))

(assert (=> b!728950 m!682753))

(declare-fun m!682761 () Bool)

(assert (=> b!728950 m!682761))

(declare-fun m!682763 () Bool)

(assert (=> b!728936 m!682763))

(push 1)

