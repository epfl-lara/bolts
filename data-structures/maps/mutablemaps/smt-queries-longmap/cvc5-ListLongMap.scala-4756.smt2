; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65614 () Bool)

(assert start!65614)

(declare-fun b!749915 () Bool)

(declare-fun e!418453 () Bool)

(assert (=> b!749915 (= e!418453 true)))

(declare-fun e!418445 () Bool)

(assert (=> b!749915 e!418445))

(declare-fun res!506196 () Bool)

(assert (=> b!749915 (=> (not res!506196) (not e!418445))))

(declare-fun lt!333455 () (_ BitVec 64))

(assert (=> b!749915 (= res!506196 (= lt!333455 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25750 0))(
  ( (Unit!25751) )
))
(declare-fun lt!333452 () Unit!25750)

(declare-fun e!418447 () Unit!25750)

(assert (=> b!749915 (= lt!333452 e!418447)))

(declare-fun c!82247 () Bool)

(assert (=> b!749915 (= c!82247 (= lt!333455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!41740 0))(
  ( (array!41741 (arr!19980 (Array (_ BitVec 32) (_ BitVec 64))) (size!20401 (_ BitVec 32))) )
))
(declare-fun lt!333448 () array!41740)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!333450 () (_ BitVec 64))

(declare-fun b!749916 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7587 0))(
  ( (MissingZero!7587 (index!32715 (_ BitVec 32))) (Found!7587 (index!32716 (_ BitVec 32))) (Intermediate!7587 (undefined!8399 Bool) (index!32717 (_ BitVec 32)) (x!63674 (_ BitVec 32))) (Undefined!7587) (MissingVacant!7587 (index!32718 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41740 (_ BitVec 32)) SeekEntryResult!7587)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41740 (_ BitVec 32)) SeekEntryResult!7587)

(assert (=> b!749916 (= e!418445 (= (seekEntryOrOpen!0 lt!333450 lt!333448 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333450 lt!333448 mask!3328)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun a!3186 () array!41740)

(declare-fun b!749917 () Bool)

(declare-fun e!418454 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!749917 (= e!418454 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19980 a!3186) j!159) a!3186 mask!3328) (Found!7587 j!159)))))

(declare-fun lt!333453 () SeekEntryResult!7587)

(declare-fun b!749918 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41740 (_ BitVec 32)) SeekEntryResult!7587)

(assert (=> b!749918 (= e!418454 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19980 a!3186) j!159) a!3186 mask!3328) lt!333453))))

(declare-fun res!506189 () Bool)

(declare-fun e!418446 () Bool)

(assert (=> start!65614 (=> (not res!506189) (not e!418446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65614 (= res!506189 (validMask!0 mask!3328))))

(assert (=> start!65614 e!418446))

(assert (=> start!65614 true))

(declare-fun array_inv!15754 (array!41740) Bool)

(assert (=> start!65614 (array_inv!15754 a!3186)))

(declare-fun b!749919 () Bool)

(declare-fun res!506198 () Bool)

(declare-fun e!418455 () Bool)

(assert (=> b!749919 (=> (not res!506198) (not e!418455))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749919 (= res!506198 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19980 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749920 () Bool)

(declare-fun res!506195 () Bool)

(declare-fun e!418450 () Bool)

(assert (=> b!749920 (=> res!506195 e!418450)))

(declare-fun lt!333451 () SeekEntryResult!7587)

(assert (=> b!749920 (= res!506195 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19980 a!3186) j!159) a!3186 mask!3328) lt!333451)))))

(declare-fun b!749921 () Bool)

(declare-fun Unit!25752 () Unit!25750)

(assert (=> b!749921 (= e!418447 Unit!25752)))

(declare-fun b!749922 () Bool)

(declare-fun e!418448 () Bool)

(assert (=> b!749922 (= e!418455 e!418448)))

(declare-fun res!506184 () Bool)

(assert (=> b!749922 (=> (not res!506184) (not e!418448))))

(declare-fun lt!333446 () SeekEntryResult!7587)

(declare-fun lt!333454 () SeekEntryResult!7587)

(assert (=> b!749922 (= res!506184 (= lt!333446 lt!333454))))

(assert (=> b!749922 (= lt!333454 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333450 lt!333448 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749922 (= lt!333446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333450 mask!3328) lt!333450 lt!333448 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!749922 (= lt!333450 (select (store (arr!19980 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749922 (= lt!333448 (array!41741 (store (arr!19980 a!3186) i!1173 k!2102) (size!20401 a!3186)))))

(declare-fun b!749923 () Bool)

(declare-fun res!506197 () Bool)

(assert (=> b!749923 (=> (not res!506197) (not e!418446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749923 (= res!506197 (validKeyInArray!0 (select (arr!19980 a!3186) j!159)))))

(declare-fun b!749924 () Bool)

(declare-fun res!506194 () Bool)

(declare-fun e!418452 () Bool)

(assert (=> b!749924 (=> (not res!506194) (not e!418452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41740 (_ BitVec 32)) Bool)

(assert (=> b!749924 (= res!506194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749925 () Bool)

(declare-fun res!506187 () Bool)

(assert (=> b!749925 (=> (not res!506187) (not e!418446))))

(assert (=> b!749925 (= res!506187 (validKeyInArray!0 k!2102))))

(declare-fun b!749926 () Bool)

(assert (=> b!749926 (= e!418452 e!418455)))

(declare-fun res!506199 () Bool)

(assert (=> b!749926 (=> (not res!506199) (not e!418455))))

(assert (=> b!749926 (= res!506199 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19980 a!3186) j!159) mask!3328) (select (arr!19980 a!3186) j!159) a!3186 mask!3328) lt!333453))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749926 (= lt!333453 (Intermediate!7587 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749927 () Bool)

(declare-fun res!506192 () Bool)

(assert (=> b!749927 (=> (not res!506192) (not e!418452))))

(declare-datatypes ((List!14035 0))(
  ( (Nil!14032) (Cons!14031 (h!15103 (_ BitVec 64)) (t!20358 List!14035)) )
))
(declare-fun arrayNoDuplicates!0 (array!41740 (_ BitVec 32) List!14035) Bool)

(assert (=> b!749927 (= res!506192 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14032))))

(declare-fun b!749928 () Bool)

(assert (=> b!749928 (= e!418446 e!418452)))

(declare-fun res!506190 () Bool)

(assert (=> b!749928 (=> (not res!506190) (not e!418452))))

(declare-fun lt!333447 () SeekEntryResult!7587)

(assert (=> b!749928 (= res!506190 (or (= lt!333447 (MissingZero!7587 i!1173)) (= lt!333447 (MissingVacant!7587 i!1173))))))

(assert (=> b!749928 (= lt!333447 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749929 () Bool)

(declare-fun res!506183 () Bool)

(assert (=> b!749929 (=> (not res!506183) (not e!418446))))

(declare-fun arrayContainsKey!0 (array!41740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749929 (= res!506183 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749930 () Bool)

(declare-fun res!506186 () Bool)

(assert (=> b!749930 (=> (not res!506186) (not e!418452))))

(assert (=> b!749930 (= res!506186 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20401 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20401 a!3186))))))

(declare-fun b!749931 () Bool)

(declare-fun Unit!25753 () Unit!25750)

(assert (=> b!749931 (= e!418447 Unit!25753)))

(assert (=> b!749931 false))

(declare-fun b!749932 () Bool)

(assert (=> b!749932 (= e!418448 (not e!418450))))

(declare-fun res!506185 () Bool)

(assert (=> b!749932 (=> res!506185 e!418450)))

(assert (=> b!749932 (= res!506185 (or (not (is-Intermediate!7587 lt!333454)) (bvslt x!1131 (x!63674 lt!333454)) (not (= x!1131 (x!63674 lt!333454))) (not (= index!1321 (index!32717 lt!333454)))))))

(declare-fun e!418449 () Bool)

(assert (=> b!749932 e!418449))

(declare-fun res!506193 () Bool)

(assert (=> b!749932 (=> (not res!506193) (not e!418449))))

(declare-fun lt!333449 () SeekEntryResult!7587)

(assert (=> b!749932 (= res!506193 (= lt!333449 lt!333451))))

(assert (=> b!749932 (= lt!333451 (Found!7587 j!159))))

(assert (=> b!749932 (= lt!333449 (seekEntryOrOpen!0 (select (arr!19980 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!749932 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333445 () Unit!25750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25750)

(assert (=> b!749932 (= lt!333445 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749933 () Bool)

(declare-fun res!506188 () Bool)

(assert (=> b!749933 (=> (not res!506188) (not e!418455))))

(assert (=> b!749933 (= res!506188 e!418454)))

(declare-fun c!82248 () Bool)

(assert (=> b!749933 (= c!82248 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749934 () Bool)

(declare-fun res!506191 () Bool)

(assert (=> b!749934 (=> (not res!506191) (not e!418446))))

(assert (=> b!749934 (= res!506191 (and (= (size!20401 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20401 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20401 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749935 () Bool)

(assert (=> b!749935 (= e!418449 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19980 a!3186) j!159) a!3186 mask!3328) lt!333451))))

(declare-fun b!749936 () Bool)

(assert (=> b!749936 (= e!418450 e!418453)))

(declare-fun res!506182 () Bool)

(assert (=> b!749936 (=> res!506182 e!418453)))

(assert (=> b!749936 (= res!506182 (= lt!333455 lt!333450))))

(assert (=> b!749936 (= lt!333455 (select (store (arr!19980 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65614 res!506189) b!749934))

(assert (= (and b!749934 res!506191) b!749923))

(assert (= (and b!749923 res!506197) b!749925))

(assert (= (and b!749925 res!506187) b!749929))

(assert (= (and b!749929 res!506183) b!749928))

(assert (= (and b!749928 res!506190) b!749924))

(assert (= (and b!749924 res!506194) b!749927))

(assert (= (and b!749927 res!506192) b!749930))

(assert (= (and b!749930 res!506186) b!749926))

(assert (= (and b!749926 res!506199) b!749919))

(assert (= (and b!749919 res!506198) b!749933))

(assert (= (and b!749933 c!82248) b!749918))

(assert (= (and b!749933 (not c!82248)) b!749917))

(assert (= (and b!749933 res!506188) b!749922))

(assert (= (and b!749922 res!506184) b!749932))

(assert (= (and b!749932 res!506193) b!749935))

(assert (= (and b!749932 (not res!506185)) b!749920))

(assert (= (and b!749920 (not res!506195)) b!749936))

(assert (= (and b!749936 (not res!506182)) b!749915))

(assert (= (and b!749915 c!82247) b!749931))

(assert (= (and b!749915 (not c!82247)) b!749921))

(assert (= (and b!749915 res!506196) b!749916))

(declare-fun m!699493 () Bool)

(assert (=> b!749926 m!699493))

(assert (=> b!749926 m!699493))

(declare-fun m!699495 () Bool)

(assert (=> b!749926 m!699495))

(assert (=> b!749926 m!699495))

(assert (=> b!749926 m!699493))

(declare-fun m!699497 () Bool)

(assert (=> b!749926 m!699497))

(declare-fun m!699499 () Bool)

(assert (=> b!749936 m!699499))

(declare-fun m!699501 () Bool)

(assert (=> b!749936 m!699501))

(declare-fun m!699503 () Bool)

(assert (=> b!749919 m!699503))

(assert (=> b!749935 m!699493))

(assert (=> b!749935 m!699493))

(declare-fun m!699505 () Bool)

(assert (=> b!749935 m!699505))

(declare-fun m!699507 () Bool)

(assert (=> b!749922 m!699507))

(declare-fun m!699509 () Bool)

(assert (=> b!749922 m!699509))

(assert (=> b!749922 m!699499))

(declare-fun m!699511 () Bool)

(assert (=> b!749922 m!699511))

(assert (=> b!749922 m!699507))

(declare-fun m!699513 () Bool)

(assert (=> b!749922 m!699513))

(declare-fun m!699515 () Bool)

(assert (=> b!749928 m!699515))

(assert (=> b!749920 m!699493))

(assert (=> b!749920 m!699493))

(declare-fun m!699517 () Bool)

(assert (=> b!749920 m!699517))

(declare-fun m!699519 () Bool)

(assert (=> b!749924 m!699519))

(declare-fun m!699521 () Bool)

(assert (=> b!749929 m!699521))

(declare-fun m!699523 () Bool)

(assert (=> b!749925 m!699523))

(assert (=> b!749918 m!699493))

(assert (=> b!749918 m!699493))

(declare-fun m!699525 () Bool)

(assert (=> b!749918 m!699525))

(declare-fun m!699527 () Bool)

(assert (=> b!749916 m!699527))

(declare-fun m!699529 () Bool)

(assert (=> b!749916 m!699529))

(assert (=> b!749923 m!699493))

(assert (=> b!749923 m!699493))

(declare-fun m!699531 () Bool)

(assert (=> b!749923 m!699531))

(assert (=> b!749917 m!699493))

(assert (=> b!749917 m!699493))

(assert (=> b!749917 m!699517))

(declare-fun m!699533 () Bool)

(assert (=> start!65614 m!699533))

(declare-fun m!699535 () Bool)

(assert (=> start!65614 m!699535))

(assert (=> b!749932 m!699493))

(assert (=> b!749932 m!699493))

(declare-fun m!699537 () Bool)

(assert (=> b!749932 m!699537))

(declare-fun m!699539 () Bool)

(assert (=> b!749932 m!699539))

(declare-fun m!699541 () Bool)

(assert (=> b!749932 m!699541))

(declare-fun m!699543 () Bool)

(assert (=> b!749927 m!699543))

(push 1)

