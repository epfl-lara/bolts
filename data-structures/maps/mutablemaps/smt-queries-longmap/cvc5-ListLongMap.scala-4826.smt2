; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66314 () Bool)

(assert start!66314)

(declare-fun b!763975 () Bool)

(declare-fun res!517028 () Bool)

(declare-fun e!425565 () Bool)

(assert (=> b!763975 (=> (not res!517028) (not e!425565))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763975 (= res!517028 (validKeyInArray!0 k!2102))))

(declare-datatypes ((array!42172 0))(
  ( (array!42173 (arr!20190 (Array (_ BitVec 32) (_ BitVec 64))) (size!20611 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42172)

(declare-fun e!425564 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7797 0))(
  ( (MissingZero!7797 (index!33555 (_ BitVec 32))) (Found!7797 (index!33556 (_ BitVec 32))) (Intermediate!7797 (undefined!8609 Bool) (index!33557 (_ BitVec 32)) (x!64482 (_ BitVec 32))) (Undefined!7797) (MissingVacant!7797 (index!33558 (_ BitVec 32))) )
))
(declare-fun lt!339995 () SeekEntryResult!7797)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!763976 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42172 (_ BitVec 32)) SeekEntryResult!7797)

(assert (=> b!763976 (= e!425564 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20190 a!3186) j!159) a!3186 mask!3328) lt!339995))))

(declare-fun b!763977 () Bool)

(declare-fun res!517027 () Bool)

(assert (=> b!763977 (=> (not res!517027) (not e!425565))))

(declare-fun arrayContainsKey!0 (array!42172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763977 (= res!517027 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763978 () Bool)

(declare-fun res!517024 () Bool)

(declare-fun e!425567 () Bool)

(assert (=> b!763978 (=> (not res!517024) (not e!425567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42172 (_ BitVec 32)) Bool)

(assert (=> b!763978 (= res!517024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!763979 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42172 (_ BitVec 32)) SeekEntryResult!7797)

(assert (=> b!763979 (= e!425564 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20190 a!3186) j!159) a!3186 mask!3328) (Found!7797 j!159)))))

(declare-fun b!763980 () Bool)

(declare-fun res!517021 () Bool)

(assert (=> b!763980 (=> (not res!517021) (not e!425565))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763980 (= res!517021 (and (= (size!20611 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20611 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20611 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763981 () Bool)

(declare-fun res!517019 () Bool)

(assert (=> b!763981 (=> (not res!517019) (not e!425567))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763981 (= res!517019 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20611 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20611 a!3186))))))

(declare-fun b!763982 () Bool)

(declare-fun res!517026 () Bool)

(assert (=> b!763982 (=> (not res!517026) (not e!425567))))

(declare-datatypes ((List!14245 0))(
  ( (Nil!14242) (Cons!14241 (h!15325 (_ BitVec 64)) (t!20568 List!14245)) )
))
(declare-fun arrayNoDuplicates!0 (array!42172 (_ BitVec 32) List!14245) Bool)

(assert (=> b!763982 (= res!517026 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14242))))

(declare-fun res!517020 () Bool)

(assert (=> start!66314 (=> (not res!517020) (not e!425565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66314 (= res!517020 (validMask!0 mask!3328))))

(assert (=> start!66314 e!425565))

(assert (=> start!66314 true))

(declare-fun array_inv!15964 (array!42172) Bool)

(assert (=> start!66314 (array_inv!15964 a!3186)))

(declare-fun b!763983 () Bool)

(assert (=> b!763983 (= e!425565 e!425567)))

(declare-fun res!517022 () Bool)

(assert (=> b!763983 (=> (not res!517022) (not e!425567))))

(declare-fun lt!339996 () SeekEntryResult!7797)

(assert (=> b!763983 (= res!517022 (or (= lt!339996 (MissingZero!7797 i!1173)) (= lt!339996 (MissingVacant!7797 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42172 (_ BitVec 32)) SeekEntryResult!7797)

(assert (=> b!763983 (= lt!339996 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763984 () Bool)

(declare-fun res!517029 () Bool)

(declare-fun e!425563 () Bool)

(assert (=> b!763984 (=> (not res!517029) (not e!425563))))

(assert (=> b!763984 (= res!517029 e!425564)))

(declare-fun c!83865 () Bool)

(assert (=> b!763984 (= c!83865 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763985 () Bool)

(assert (=> b!763985 (= e!425567 e!425563)))

(declare-fun res!517018 () Bool)

(assert (=> b!763985 (=> (not res!517018) (not e!425563))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763985 (= res!517018 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20190 a!3186) j!159) mask!3328) (select (arr!20190 a!3186) j!159) a!3186 mask!3328) lt!339995))))

(assert (=> b!763985 (= lt!339995 (Intermediate!7797 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763986 () Bool)

(assert (=> b!763986 (= e!425563 false)))

(declare-fun lt!339998 () SeekEntryResult!7797)

(declare-fun lt!340000 () (_ BitVec 64))

(declare-fun lt!339997 () array!42172)

(assert (=> b!763986 (= lt!339998 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340000 lt!339997 mask!3328))))

(declare-fun lt!339999 () SeekEntryResult!7797)

(assert (=> b!763986 (= lt!339999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340000 mask!3328) lt!340000 lt!339997 mask!3328))))

(assert (=> b!763986 (= lt!340000 (select (store (arr!20190 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763986 (= lt!339997 (array!42173 (store (arr!20190 a!3186) i!1173 k!2102) (size!20611 a!3186)))))

(declare-fun b!763987 () Bool)

(declare-fun res!517025 () Bool)

(assert (=> b!763987 (=> (not res!517025) (not e!425563))))

(assert (=> b!763987 (= res!517025 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20190 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763988 () Bool)

(declare-fun res!517023 () Bool)

(assert (=> b!763988 (=> (not res!517023) (not e!425565))))

(assert (=> b!763988 (= res!517023 (validKeyInArray!0 (select (arr!20190 a!3186) j!159)))))

(assert (= (and start!66314 res!517020) b!763980))

(assert (= (and b!763980 res!517021) b!763988))

(assert (= (and b!763988 res!517023) b!763975))

(assert (= (and b!763975 res!517028) b!763977))

(assert (= (and b!763977 res!517027) b!763983))

(assert (= (and b!763983 res!517022) b!763978))

(assert (= (and b!763978 res!517024) b!763982))

(assert (= (and b!763982 res!517026) b!763981))

(assert (= (and b!763981 res!517019) b!763985))

(assert (= (and b!763985 res!517018) b!763987))

(assert (= (and b!763987 res!517025) b!763984))

(assert (= (and b!763984 c!83865) b!763976))

(assert (= (and b!763984 (not c!83865)) b!763979))

(assert (= (and b!763984 res!517029) b!763986))

(declare-fun m!710453 () Bool)

(assert (=> b!763975 m!710453))

(declare-fun m!710455 () Bool)

(assert (=> b!763985 m!710455))

(assert (=> b!763985 m!710455))

(declare-fun m!710457 () Bool)

(assert (=> b!763985 m!710457))

(assert (=> b!763985 m!710457))

(assert (=> b!763985 m!710455))

(declare-fun m!710459 () Bool)

(assert (=> b!763985 m!710459))

(assert (=> b!763979 m!710455))

(assert (=> b!763979 m!710455))

(declare-fun m!710461 () Bool)

(assert (=> b!763979 m!710461))

(declare-fun m!710463 () Bool)

(assert (=> b!763977 m!710463))

(declare-fun m!710465 () Bool)

(assert (=> b!763982 m!710465))

(declare-fun m!710467 () Bool)

(assert (=> b!763978 m!710467))

(declare-fun m!710469 () Bool)

(assert (=> b!763986 m!710469))

(declare-fun m!710471 () Bool)

(assert (=> b!763986 m!710471))

(declare-fun m!710473 () Bool)

(assert (=> b!763986 m!710473))

(declare-fun m!710475 () Bool)

(assert (=> b!763986 m!710475))

(assert (=> b!763986 m!710469))

(declare-fun m!710477 () Bool)

(assert (=> b!763986 m!710477))

(declare-fun m!710479 () Bool)

(assert (=> b!763983 m!710479))

(declare-fun m!710481 () Bool)

(assert (=> b!763987 m!710481))

(declare-fun m!710483 () Bool)

(assert (=> start!66314 m!710483))

(declare-fun m!710485 () Bool)

(assert (=> start!66314 m!710485))

(assert (=> b!763976 m!710455))

(assert (=> b!763976 m!710455))

(declare-fun m!710487 () Bool)

(assert (=> b!763976 m!710487))

(assert (=> b!763988 m!710455))

(assert (=> b!763988 m!710455))

(declare-fun m!710489 () Bool)

(assert (=> b!763988 m!710489))

(push 1)

