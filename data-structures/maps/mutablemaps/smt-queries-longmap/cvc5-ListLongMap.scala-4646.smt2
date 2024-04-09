; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64666 () Bool)

(assert start!64666)

(declare-fun b!728124 () Bool)

(declare-fun res!488812 () Bool)

(declare-fun e!407627 () Bool)

(assert (=> b!728124 (=> (not res!488812) (not e!407627))))

(declare-datatypes ((array!41068 0))(
  ( (array!41069 (arr!19650 (Array (_ BitVec 32) (_ BitVec 64))) (size!20071 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41068)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728124 (= res!488812 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728125 () Bool)

(declare-fun res!488808 () Bool)

(assert (=> b!728125 (=> (not res!488808) (not e!407627))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!728125 (= res!488808 (and (= (size!20071 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20071 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20071 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728126 () Bool)

(declare-fun e!407624 () Bool)

(declare-fun e!407626 () Bool)

(assert (=> b!728126 (= e!407624 e!407626)))

(declare-fun res!488803 () Bool)

(assert (=> b!728126 (=> (not res!488803) (not e!407626))))

(declare-datatypes ((SeekEntryResult!7257 0))(
  ( (MissingZero!7257 (index!31395 (_ BitVec 32))) (Found!7257 (index!31396 (_ BitVec 32))) (Intermediate!7257 (undefined!8069 Bool) (index!31397 (_ BitVec 32)) (x!62416 (_ BitVec 32))) (Undefined!7257) (MissingVacant!7257 (index!31398 (_ BitVec 32))) )
))
(declare-fun lt!322536 () SeekEntryResult!7257)

(declare-fun lt!322533 () SeekEntryResult!7257)

(assert (=> b!728126 (= res!488803 (= lt!322536 lt!322533))))

(declare-fun lt!322537 () (_ BitVec 64))

(declare-fun lt!322538 () array!41068)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41068 (_ BitVec 32)) SeekEntryResult!7257)

(assert (=> b!728126 (= lt!322533 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322537 lt!322538 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728126 (= lt!322536 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322537 mask!3328) lt!322537 lt!322538 mask!3328))))

(assert (=> b!728126 (= lt!322537 (select (store (arr!19650 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728126 (= lt!322538 (array!41069 (store (arr!19650 a!3186) i!1173 k!2102) (size!20071 a!3186)))))

(declare-fun b!728127 () Bool)

(declare-fun res!488806 () Bool)

(assert (=> b!728127 (=> (not res!488806) (not e!407624))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!728127 (= res!488806 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19650 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728128 () Bool)

(declare-fun res!488814 () Bool)

(assert (=> b!728128 (=> (not res!488814) (not e!407627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728128 (= res!488814 (validKeyInArray!0 (select (arr!19650 a!3186) j!159)))))

(declare-fun res!488802 () Bool)

(assert (=> start!64666 (=> (not res!488802) (not e!407627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64666 (= res!488802 (validMask!0 mask!3328))))

(assert (=> start!64666 e!407627))

(assert (=> start!64666 true))

(declare-fun array_inv!15424 (array!41068) Bool)

(assert (=> start!64666 (array_inv!15424 a!3186)))

(declare-fun b!728129 () Bool)

(declare-fun res!488805 () Bool)

(assert (=> b!728129 (=> (not res!488805) (not e!407624))))

(declare-fun e!407631 () Bool)

(assert (=> b!728129 (= res!488805 e!407631)))

(declare-fun c!80037 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728129 (= c!80037 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728130 () Bool)

(declare-fun e!407630 () Bool)

(assert (=> b!728130 (= e!407630 true)))

(declare-fun lt!322534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728130 (= lt!322534 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728131 () Bool)

(declare-fun lt!322530 () SeekEntryResult!7257)

(assert (=> b!728131 (= e!407631 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19650 a!3186) j!159) a!3186 mask!3328) lt!322530))))

(declare-fun b!728132 () Bool)

(declare-fun e!407623 () Bool)

(assert (=> b!728132 (= e!407627 e!407623)))

(declare-fun res!488813 () Bool)

(assert (=> b!728132 (=> (not res!488813) (not e!407623))))

(declare-fun lt!322532 () SeekEntryResult!7257)

(assert (=> b!728132 (= res!488813 (or (= lt!322532 (MissingZero!7257 i!1173)) (= lt!322532 (MissingVacant!7257 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41068 (_ BitVec 32)) SeekEntryResult!7257)

(assert (=> b!728132 (= lt!322532 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!322535 () SeekEntryResult!7257)

(declare-fun b!728133 () Bool)

(declare-fun e!407625 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41068 (_ BitVec 32)) SeekEntryResult!7257)

(assert (=> b!728133 (= e!407625 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19650 a!3186) j!159) a!3186 mask!3328) lt!322535))))

(declare-fun b!728134 () Bool)

(assert (=> b!728134 (= e!407626 (not e!407630))))

(declare-fun res!488799 () Bool)

(assert (=> b!728134 (=> res!488799 e!407630)))

(assert (=> b!728134 (= res!488799 (or (not (is-Intermediate!7257 lt!322533)) (bvsge x!1131 (x!62416 lt!322533))))))

(declare-fun e!407628 () Bool)

(assert (=> b!728134 e!407628))

(declare-fun res!488809 () Bool)

(assert (=> b!728134 (=> (not res!488809) (not e!407628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41068 (_ BitVec 32)) Bool)

(assert (=> b!728134 (= res!488809 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24832 0))(
  ( (Unit!24833) )
))
(declare-fun lt!322531 () Unit!24832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41068 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24832)

(assert (=> b!728134 (= lt!322531 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728135 () Bool)

(declare-fun res!488804 () Bool)

(assert (=> b!728135 (=> (not res!488804) (not e!407623))))

(assert (=> b!728135 (= res!488804 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20071 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20071 a!3186))))))

(declare-fun b!728136 () Bool)

(assert (=> b!728136 (= e!407628 e!407625)))

(declare-fun res!488801 () Bool)

(assert (=> b!728136 (=> (not res!488801) (not e!407625))))

(assert (=> b!728136 (= res!488801 (= (seekEntryOrOpen!0 (select (arr!19650 a!3186) j!159) a!3186 mask!3328) lt!322535))))

(assert (=> b!728136 (= lt!322535 (Found!7257 j!159))))

(declare-fun b!728137 () Bool)

(assert (=> b!728137 (= e!407631 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19650 a!3186) j!159) a!3186 mask!3328) (Found!7257 j!159)))))

(declare-fun b!728138 () Bool)

(declare-fun res!488800 () Bool)

(assert (=> b!728138 (=> (not res!488800) (not e!407623))))

(assert (=> b!728138 (= res!488800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728139 () Bool)

(declare-fun res!488811 () Bool)

(assert (=> b!728139 (=> (not res!488811) (not e!407623))))

(declare-datatypes ((List!13705 0))(
  ( (Nil!13702) (Cons!13701 (h!14761 (_ BitVec 64)) (t!20028 List!13705)) )
))
(declare-fun arrayNoDuplicates!0 (array!41068 (_ BitVec 32) List!13705) Bool)

(assert (=> b!728139 (= res!488811 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13702))))

(declare-fun b!728140 () Bool)

(declare-fun res!488807 () Bool)

(assert (=> b!728140 (=> (not res!488807) (not e!407627))))

(assert (=> b!728140 (= res!488807 (validKeyInArray!0 k!2102))))

(declare-fun b!728141 () Bool)

(assert (=> b!728141 (= e!407623 e!407624)))

(declare-fun res!488810 () Bool)

(assert (=> b!728141 (=> (not res!488810) (not e!407624))))

(assert (=> b!728141 (= res!488810 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19650 a!3186) j!159) mask!3328) (select (arr!19650 a!3186) j!159) a!3186 mask!3328) lt!322530))))

(assert (=> b!728141 (= lt!322530 (Intermediate!7257 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!64666 res!488802) b!728125))

(assert (= (and b!728125 res!488808) b!728128))

(assert (= (and b!728128 res!488814) b!728140))

(assert (= (and b!728140 res!488807) b!728124))

(assert (= (and b!728124 res!488812) b!728132))

(assert (= (and b!728132 res!488813) b!728138))

(assert (= (and b!728138 res!488800) b!728139))

(assert (= (and b!728139 res!488811) b!728135))

(assert (= (and b!728135 res!488804) b!728141))

(assert (= (and b!728141 res!488810) b!728127))

(assert (= (and b!728127 res!488806) b!728129))

(assert (= (and b!728129 c!80037) b!728131))

(assert (= (and b!728129 (not c!80037)) b!728137))

(assert (= (and b!728129 res!488805) b!728126))

(assert (= (and b!728126 res!488803) b!728134))

(assert (= (and b!728134 res!488809) b!728136))

(assert (= (and b!728136 res!488801) b!728133))

(assert (= (and b!728134 (not res!488799)) b!728130))

(declare-fun m!681997 () Bool)

(assert (=> b!728131 m!681997))

(assert (=> b!728131 m!681997))

(declare-fun m!681999 () Bool)

(assert (=> b!728131 m!681999))

(declare-fun m!682001 () Bool)

(assert (=> b!728126 m!682001))

(declare-fun m!682003 () Bool)

(assert (=> b!728126 m!682003))

(assert (=> b!728126 m!682001))

(declare-fun m!682005 () Bool)

(assert (=> b!728126 m!682005))

(declare-fun m!682007 () Bool)

(assert (=> b!728126 m!682007))

(declare-fun m!682009 () Bool)

(assert (=> b!728126 m!682009))

(declare-fun m!682011 () Bool)

(assert (=> b!728139 m!682011))

(assert (=> b!728137 m!681997))

(assert (=> b!728137 m!681997))

(declare-fun m!682013 () Bool)

(assert (=> b!728137 m!682013))

(declare-fun m!682015 () Bool)

(assert (=> b!728130 m!682015))

(declare-fun m!682017 () Bool)

(assert (=> b!728138 m!682017))

(assert (=> b!728133 m!681997))

(assert (=> b!728133 m!681997))

(declare-fun m!682019 () Bool)

(assert (=> b!728133 m!682019))

(declare-fun m!682021 () Bool)

(assert (=> b!728134 m!682021))

(declare-fun m!682023 () Bool)

(assert (=> b!728134 m!682023))

(declare-fun m!682025 () Bool)

(assert (=> b!728127 m!682025))

(declare-fun m!682027 () Bool)

(assert (=> b!728132 m!682027))

(assert (=> b!728136 m!681997))

(assert (=> b!728136 m!681997))

(declare-fun m!682029 () Bool)

(assert (=> b!728136 m!682029))

(assert (=> b!728141 m!681997))

(assert (=> b!728141 m!681997))

(declare-fun m!682031 () Bool)

(assert (=> b!728141 m!682031))

(assert (=> b!728141 m!682031))

(assert (=> b!728141 m!681997))

(declare-fun m!682033 () Bool)

(assert (=> b!728141 m!682033))

(declare-fun m!682035 () Bool)

(assert (=> b!728140 m!682035))

(declare-fun m!682037 () Bool)

(assert (=> b!728124 m!682037))

(assert (=> b!728128 m!681997))

(assert (=> b!728128 m!681997))

(declare-fun m!682039 () Bool)

(assert (=> b!728128 m!682039))

(declare-fun m!682041 () Bool)

(assert (=> start!64666 m!682041))

(declare-fun m!682043 () Bool)

(assert (=> start!64666 m!682043))

(push 1)

