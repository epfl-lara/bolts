; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66826 () Bool)

(assert start!66826)

(declare-fun b!770525 () Bool)

(declare-fun res!521357 () Bool)

(declare-fun e!429010 () Bool)

(assert (=> b!770525 (=> (not res!521357) (not e!429010))))

(declare-datatypes ((array!42343 0))(
  ( (array!42344 (arr!20268 (Array (_ BitVec 32) (_ BitVec 64))) (size!20689 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42343)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42343 (_ BitVec 32)) Bool)

(assert (=> b!770525 (= res!521357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770526 () Bool)

(declare-fun e!429015 () Bool)

(assert (=> b!770526 (= e!429015 true)))

(declare-datatypes ((Unit!26536 0))(
  ( (Unit!26537) )
))
(declare-fun lt!342991 () Unit!26536)

(declare-fun e!429019 () Unit!26536)

(assert (=> b!770526 (= lt!342991 e!429019)))

(declare-fun c!84980 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770526 (= c!84980 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!342981 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770526 (= lt!342981 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770527 () Bool)

(declare-fun e!429011 () Bool)

(declare-fun e!429014 () Bool)

(assert (=> b!770527 (= e!429011 e!429014)))

(declare-fun res!521364 () Bool)

(assert (=> b!770527 (=> (not res!521364) (not e!429014))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7875 0))(
  ( (MissingZero!7875 (index!33867 (_ BitVec 32))) (Found!7875 (index!33868 (_ BitVec 32))) (Intermediate!7875 (undefined!8687 Bool) (index!33869 (_ BitVec 32)) (x!64823 (_ BitVec 32))) (Undefined!7875) (MissingVacant!7875 (index!33870 (_ BitVec 32))) )
))
(declare-fun lt!342984 () SeekEntryResult!7875)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42343 (_ BitVec 32)) SeekEntryResult!7875)

(assert (=> b!770527 (= res!521364 (= (seekEntryOrOpen!0 (select (arr!20268 a!3186) j!159) a!3186 mask!3328) lt!342984))))

(assert (=> b!770527 (= lt!342984 (Found!7875 j!159))))

(declare-fun b!770528 () Bool)

(declare-fun e!429012 () Bool)

(assert (=> b!770528 (= e!429012 (not e!429015))))

(declare-fun res!521366 () Bool)

(assert (=> b!770528 (=> res!521366 e!429015)))

(declare-fun lt!342982 () SeekEntryResult!7875)

(assert (=> b!770528 (= res!521366 (or (not (is-Intermediate!7875 lt!342982)) (bvsge x!1131 (x!64823 lt!342982))))))

(assert (=> b!770528 e!429011))

(declare-fun res!521356 () Bool)

(assert (=> b!770528 (=> (not res!521356) (not e!429011))))

(assert (=> b!770528 (= res!521356 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342983 () Unit!26536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42343 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26536)

(assert (=> b!770528 (= lt!342983 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!770529 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42343 (_ BitVec 32)) SeekEntryResult!7875)

(assert (=> b!770529 (= e!429014 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20268 a!3186) j!159) a!3186 mask!3328) lt!342984))))

(declare-fun b!770530 () Bool)

(declare-fun e!429017 () Bool)

(assert (=> b!770530 (= e!429010 e!429017)))

(declare-fun res!521365 () Bool)

(assert (=> b!770530 (=> (not res!521365) (not e!429017))))

(declare-fun lt!342988 () SeekEntryResult!7875)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42343 (_ BitVec 32)) SeekEntryResult!7875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770530 (= res!521365 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20268 a!3186) j!159) mask!3328) (select (arr!20268 a!3186) j!159) a!3186 mask!3328) lt!342988))))

(assert (=> b!770530 (= lt!342988 (Intermediate!7875 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770531 () Bool)

(declare-fun res!521363 () Bool)

(declare-fun e!429018 () Bool)

(assert (=> b!770531 (=> (not res!521363) (not e!429018))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770531 (= res!521363 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770532 () Bool)

(declare-fun res!521371 () Bool)

(assert (=> b!770532 (=> (not res!521371) (not e!429018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770532 (= res!521371 (validKeyInArray!0 k!2102))))

(declare-fun b!770533 () Bool)

(declare-fun e!429013 () Bool)

(assert (=> b!770533 (= e!429013 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20268 a!3186) j!159) a!3186 mask!3328) (Found!7875 j!159)))))

(declare-fun b!770535 () Bool)

(assert (=> b!770535 (= e!429017 e!429012)))

(declare-fun res!521369 () Bool)

(assert (=> b!770535 (=> (not res!521369) (not e!429012))))

(declare-fun lt!342989 () SeekEntryResult!7875)

(assert (=> b!770535 (= res!521369 (= lt!342989 lt!342982))))

(declare-fun lt!342986 () array!42343)

(declare-fun lt!342985 () (_ BitVec 64))

(assert (=> b!770535 (= lt!342982 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342985 lt!342986 mask!3328))))

(assert (=> b!770535 (= lt!342989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342985 mask!3328) lt!342985 lt!342986 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770535 (= lt!342985 (select (store (arr!20268 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770535 (= lt!342986 (array!42344 (store (arr!20268 a!3186) i!1173 k!2102) (size!20689 a!3186)))))

(declare-fun b!770536 () Bool)

(assert (=> b!770536 (= e!429013 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20268 a!3186) j!159) a!3186 mask!3328) lt!342988))))

(declare-fun b!770537 () Bool)

(declare-fun res!521359 () Bool)

(assert (=> b!770537 (=> (not res!521359) (not e!429018))))

(assert (=> b!770537 (= res!521359 (validKeyInArray!0 (select (arr!20268 a!3186) j!159)))))

(declare-fun b!770538 () Bool)

(declare-fun res!521362 () Bool)

(assert (=> b!770538 (=> (not res!521362) (not e!429017))))

(assert (=> b!770538 (= res!521362 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20268 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770539 () Bool)

(declare-fun res!521367 () Bool)

(assert (=> b!770539 (=> (not res!521367) (not e!429010))))

(assert (=> b!770539 (= res!521367 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20689 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20689 a!3186))))))

(declare-fun b!770540 () Bool)

(assert (=> b!770540 (= e!429018 e!429010)))

(declare-fun res!521370 () Bool)

(assert (=> b!770540 (=> (not res!521370) (not e!429010))))

(declare-fun lt!342987 () SeekEntryResult!7875)

(assert (=> b!770540 (= res!521370 (or (= lt!342987 (MissingZero!7875 i!1173)) (= lt!342987 (MissingVacant!7875 i!1173))))))

(assert (=> b!770540 (= lt!342987 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770541 () Bool)

(declare-fun Unit!26538 () Unit!26536)

(assert (=> b!770541 (= e!429019 Unit!26538)))

(declare-fun lt!342990 () SeekEntryResult!7875)

(assert (=> b!770541 (= lt!342990 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20268 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770541 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342981 resIntermediateIndex!5 (select (arr!20268 a!3186) j!159) a!3186 mask!3328) (Found!7875 j!159))))

(declare-fun b!770534 () Bool)

(declare-fun res!521360 () Bool)

(assert (=> b!770534 (=> (not res!521360) (not e!429010))))

(declare-datatypes ((List!14323 0))(
  ( (Nil!14320) (Cons!14319 (h!15418 (_ BitVec 64)) (t!20646 List!14323)) )
))
(declare-fun arrayNoDuplicates!0 (array!42343 (_ BitVec 32) List!14323) Bool)

(assert (=> b!770534 (= res!521360 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14320))))

(declare-fun res!521361 () Bool)

(assert (=> start!66826 (=> (not res!521361) (not e!429018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66826 (= res!521361 (validMask!0 mask!3328))))

(assert (=> start!66826 e!429018))

(assert (=> start!66826 true))

(declare-fun array_inv!16042 (array!42343) Bool)

(assert (=> start!66826 (array_inv!16042 a!3186)))

(declare-fun b!770542 () Bool)

(declare-fun res!521368 () Bool)

(assert (=> b!770542 (=> (not res!521368) (not e!429018))))

(assert (=> b!770542 (= res!521368 (and (= (size!20689 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20689 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20689 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770543 () Bool)

(declare-fun res!521358 () Bool)

(assert (=> b!770543 (=> (not res!521358) (not e!429017))))

(assert (=> b!770543 (= res!521358 e!429013)))

(declare-fun c!84981 () Bool)

(assert (=> b!770543 (= c!84981 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770544 () Bool)

(declare-fun Unit!26539 () Unit!26536)

(assert (=> b!770544 (= e!429019 Unit!26539)))

(assert (=> b!770544 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342981 (select (arr!20268 a!3186) j!159) a!3186 mask!3328) lt!342988)))

(assert (= (and start!66826 res!521361) b!770542))

(assert (= (and b!770542 res!521368) b!770537))

(assert (= (and b!770537 res!521359) b!770532))

(assert (= (and b!770532 res!521371) b!770531))

(assert (= (and b!770531 res!521363) b!770540))

(assert (= (and b!770540 res!521370) b!770525))

(assert (= (and b!770525 res!521357) b!770534))

(assert (= (and b!770534 res!521360) b!770539))

(assert (= (and b!770539 res!521367) b!770530))

(assert (= (and b!770530 res!521365) b!770538))

(assert (= (and b!770538 res!521362) b!770543))

(assert (= (and b!770543 c!84981) b!770536))

(assert (= (and b!770543 (not c!84981)) b!770533))

(assert (= (and b!770543 res!521358) b!770535))

(assert (= (and b!770535 res!521369) b!770528))

(assert (= (and b!770528 res!521356) b!770527))

(assert (= (and b!770527 res!521364) b!770529))

(assert (= (and b!770528 (not res!521366)) b!770526))

(assert (= (and b!770526 c!84980) b!770544))

(assert (= (and b!770526 (not c!84980)) b!770541))

(declare-fun m!715855 () Bool)

(assert (=> b!770528 m!715855))

(declare-fun m!715857 () Bool)

(assert (=> b!770528 m!715857))

(declare-fun m!715859 () Bool)

(assert (=> b!770531 m!715859))

(declare-fun m!715861 () Bool)

(assert (=> b!770526 m!715861))

(declare-fun m!715863 () Bool)

(assert (=> b!770544 m!715863))

(assert (=> b!770544 m!715863))

(declare-fun m!715865 () Bool)

(assert (=> b!770544 m!715865))

(declare-fun m!715867 () Bool)

(assert (=> b!770535 m!715867))

(declare-fun m!715869 () Bool)

(assert (=> b!770535 m!715869))

(declare-fun m!715871 () Bool)

(assert (=> b!770535 m!715871))

(assert (=> b!770535 m!715867))

(declare-fun m!715873 () Bool)

(assert (=> b!770535 m!715873))

(declare-fun m!715875 () Bool)

(assert (=> b!770535 m!715875))

(assert (=> b!770536 m!715863))

(assert (=> b!770536 m!715863))

(declare-fun m!715877 () Bool)

(assert (=> b!770536 m!715877))

(assert (=> b!770541 m!715863))

(assert (=> b!770541 m!715863))

(declare-fun m!715879 () Bool)

(assert (=> b!770541 m!715879))

(assert (=> b!770541 m!715863))

(declare-fun m!715881 () Bool)

(assert (=> b!770541 m!715881))

(assert (=> b!770527 m!715863))

(assert (=> b!770527 m!715863))

(declare-fun m!715883 () Bool)

(assert (=> b!770527 m!715883))

(declare-fun m!715885 () Bool)

(assert (=> b!770532 m!715885))

(declare-fun m!715887 () Bool)

(assert (=> start!66826 m!715887))

(declare-fun m!715889 () Bool)

(assert (=> start!66826 m!715889))

(assert (=> b!770529 m!715863))

(assert (=> b!770529 m!715863))

(declare-fun m!715891 () Bool)

(assert (=> b!770529 m!715891))

(assert (=> b!770537 m!715863))

(assert (=> b!770537 m!715863))

(declare-fun m!715893 () Bool)

(assert (=> b!770537 m!715893))

(declare-fun m!715895 () Bool)

(assert (=> b!770534 m!715895))

(declare-fun m!715897 () Bool)

(assert (=> b!770538 m!715897))

(assert (=> b!770533 m!715863))

(assert (=> b!770533 m!715863))

(assert (=> b!770533 m!715879))

(assert (=> b!770530 m!715863))

(assert (=> b!770530 m!715863))

(declare-fun m!715899 () Bool)

(assert (=> b!770530 m!715899))

(assert (=> b!770530 m!715899))

(assert (=> b!770530 m!715863))

(declare-fun m!715901 () Bool)

(assert (=> b!770530 m!715901))

(declare-fun m!715903 () Bool)

(assert (=> b!770540 m!715903))

(declare-fun m!715905 () Bool)

(assert (=> b!770525 m!715905))

(push 1)

