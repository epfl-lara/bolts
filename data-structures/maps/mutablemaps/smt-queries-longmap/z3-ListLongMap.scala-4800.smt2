; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65880 () Bool)

(assert start!65880)

(declare-fun b!758965 () Bool)

(declare-fun e!423154 () Bool)

(declare-fun e!423155 () Bool)

(assert (=> b!758965 (= e!423154 e!423155)))

(declare-fun res!513647 () Bool)

(assert (=> b!758965 (=> (not res!513647) (not e!423155))))

(declare-datatypes ((array!42006 0))(
  ( (array!42007 (arr!20113 (Array (_ BitVec 32) (_ BitVec 64))) (size!20534 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42006)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7720 0))(
  ( (MissingZero!7720 (index!33247 (_ BitVec 32))) (Found!7720 (index!33248 (_ BitVec 32))) (Intermediate!7720 (undefined!8532 Bool) (index!33249 (_ BitVec 32)) (x!64159 (_ BitVec 32))) (Undefined!7720) (MissingVacant!7720 (index!33250 (_ BitVec 32))) )
))
(declare-fun lt!338246 () SeekEntryResult!7720)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42006 (_ BitVec 32)) SeekEntryResult!7720)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758965 (= res!513647 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20113 a!3186) j!159) mask!3328) (select (arr!20113 a!3186) j!159) a!3186 mask!3328) lt!338246))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758965 (= lt!338246 (Intermediate!7720 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758966 () Bool)

(declare-fun e!423153 () Bool)

(assert (=> b!758966 (= e!423155 e!423153)))

(declare-fun res!513654 () Bool)

(assert (=> b!758966 (=> (not res!513654) (not e!423153))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!338243 () array!42006)

(declare-fun lt!338242 () (_ BitVec 64))

(assert (=> b!758966 (= res!513654 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338242 mask!3328) lt!338242 lt!338243 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338242 lt!338243 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!758966 (= lt!338242 (select (store (arr!20113 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!758966 (= lt!338243 (array!42007 (store (arr!20113 a!3186) i!1173 k0!2102) (size!20534 a!3186)))))

(declare-fun b!758967 () Bool)

(declare-fun e!423159 () Bool)

(assert (=> b!758967 (= e!423159 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20113 a!3186) j!159) a!3186 mask!3328) lt!338246))))

(declare-fun b!758968 () Bool)

(declare-fun res!513648 () Bool)

(assert (=> b!758968 (=> (not res!513648) (not e!423155))))

(assert (=> b!758968 (= res!513648 e!423159)))

(declare-fun c!83040 () Bool)

(assert (=> b!758968 (= c!83040 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758969 () Bool)

(declare-fun res!513655 () Bool)

(declare-fun e!423152 () Bool)

(assert (=> b!758969 (=> (not res!513655) (not e!423152))))

(assert (=> b!758969 (= res!513655 (and (= (size!20534 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20534 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20534 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758970 () Bool)

(declare-fun e!423156 () Bool)

(declare-fun e!423157 () Bool)

(assert (=> b!758970 (= e!423156 e!423157)))

(declare-fun res!513650 () Bool)

(assert (=> b!758970 (=> (not res!513650) (not e!423157))))

(declare-fun lt!338244 () SeekEntryResult!7720)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42006 (_ BitVec 32)) SeekEntryResult!7720)

(assert (=> b!758970 (= res!513650 (= (seekEntryOrOpen!0 (select (arr!20113 a!3186) j!159) a!3186 mask!3328) lt!338244))))

(assert (=> b!758970 (= lt!338244 (Found!7720 j!159))))

(declare-fun b!758971 () Bool)

(declare-fun res!513659 () Bool)

(assert (=> b!758971 (=> (not res!513659) (not e!423154))))

(declare-datatypes ((List!14168 0))(
  ( (Nil!14165) (Cons!14164 (h!15236 (_ BitVec 64)) (t!20491 List!14168)) )
))
(declare-fun arrayNoDuplicates!0 (array!42006 (_ BitVec 32) List!14168) Bool)

(assert (=> b!758971 (= res!513659 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14165))))

(declare-fun b!758972 () Bool)

(assert (=> b!758972 (= e!423153 (not true))))

(assert (=> b!758972 e!423156))

(declare-fun res!513660 () Bool)

(assert (=> b!758972 (=> (not res!513660) (not e!423156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42006 (_ BitVec 32)) Bool)

(assert (=> b!758972 (= res!513660 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26280 0))(
  ( (Unit!26281) )
))
(declare-fun lt!338241 () Unit!26280)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42006 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26280)

(assert (=> b!758972 (= lt!338241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!513653 () Bool)

(assert (=> start!65880 (=> (not res!513653) (not e!423152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65880 (= res!513653 (validMask!0 mask!3328))))

(assert (=> start!65880 e!423152))

(assert (=> start!65880 true))

(declare-fun array_inv!15887 (array!42006) Bool)

(assert (=> start!65880 (array_inv!15887 a!3186)))

(declare-fun b!758973 () Bool)

(declare-fun res!513652 () Bool)

(assert (=> b!758973 (=> (not res!513652) (not e!423155))))

(assert (=> b!758973 (= res!513652 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20113 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758974 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42006 (_ BitVec 32)) SeekEntryResult!7720)

(assert (=> b!758974 (= e!423157 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20113 a!3186) j!159) a!3186 mask!3328) lt!338244))))

(declare-fun b!758975 () Bool)

(assert (=> b!758975 (= e!423152 e!423154)))

(declare-fun res!513657 () Bool)

(assert (=> b!758975 (=> (not res!513657) (not e!423154))))

(declare-fun lt!338245 () SeekEntryResult!7720)

(assert (=> b!758975 (= res!513657 (or (= lt!338245 (MissingZero!7720 i!1173)) (= lt!338245 (MissingVacant!7720 i!1173))))))

(assert (=> b!758975 (= lt!338245 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!758976 () Bool)

(assert (=> b!758976 (= e!423159 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20113 a!3186) j!159) a!3186 mask!3328) (Found!7720 j!159)))))

(declare-fun b!758977 () Bool)

(declare-fun res!513658 () Bool)

(assert (=> b!758977 (=> (not res!513658) (not e!423152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758977 (= res!513658 (validKeyInArray!0 (select (arr!20113 a!3186) j!159)))))

(declare-fun b!758978 () Bool)

(declare-fun res!513646 () Bool)

(assert (=> b!758978 (=> (not res!513646) (not e!423152))))

(declare-fun arrayContainsKey!0 (array!42006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758978 (= res!513646 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758979 () Bool)

(declare-fun res!513656 () Bool)

(assert (=> b!758979 (=> (not res!513656) (not e!423154))))

(assert (=> b!758979 (= res!513656 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20534 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20534 a!3186))))))

(declare-fun b!758980 () Bool)

(declare-fun res!513649 () Bool)

(assert (=> b!758980 (=> (not res!513649) (not e!423152))))

(assert (=> b!758980 (= res!513649 (validKeyInArray!0 k0!2102))))

(declare-fun b!758981 () Bool)

(declare-fun res!513651 () Bool)

(assert (=> b!758981 (=> (not res!513651) (not e!423154))))

(assert (=> b!758981 (= res!513651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65880 res!513653) b!758969))

(assert (= (and b!758969 res!513655) b!758977))

(assert (= (and b!758977 res!513658) b!758980))

(assert (= (and b!758980 res!513649) b!758978))

(assert (= (and b!758978 res!513646) b!758975))

(assert (= (and b!758975 res!513657) b!758981))

(assert (= (and b!758981 res!513651) b!758971))

(assert (= (and b!758971 res!513659) b!758979))

(assert (= (and b!758979 res!513656) b!758965))

(assert (= (and b!758965 res!513647) b!758973))

(assert (= (and b!758973 res!513652) b!758968))

(assert (= (and b!758968 c!83040) b!758967))

(assert (= (and b!758968 (not c!83040)) b!758976))

(assert (= (and b!758968 res!513648) b!758966))

(assert (= (and b!758966 res!513654) b!758972))

(assert (= (and b!758972 res!513660) b!758970))

(assert (= (and b!758970 res!513650) b!758974))

(declare-fun m!706457 () Bool)

(assert (=> b!758976 m!706457))

(assert (=> b!758976 m!706457))

(declare-fun m!706459 () Bool)

(assert (=> b!758976 m!706459))

(declare-fun m!706461 () Bool)

(assert (=> start!65880 m!706461))

(declare-fun m!706463 () Bool)

(assert (=> start!65880 m!706463))

(declare-fun m!706465 () Bool)

(assert (=> b!758971 m!706465))

(declare-fun m!706467 () Bool)

(assert (=> b!758966 m!706467))

(assert (=> b!758966 m!706467))

(declare-fun m!706469 () Bool)

(assert (=> b!758966 m!706469))

(declare-fun m!706471 () Bool)

(assert (=> b!758966 m!706471))

(declare-fun m!706473 () Bool)

(assert (=> b!758966 m!706473))

(declare-fun m!706475 () Bool)

(assert (=> b!758966 m!706475))

(declare-fun m!706477 () Bool)

(assert (=> b!758975 m!706477))

(assert (=> b!758977 m!706457))

(assert (=> b!758977 m!706457))

(declare-fun m!706479 () Bool)

(assert (=> b!758977 m!706479))

(assert (=> b!758967 m!706457))

(assert (=> b!758967 m!706457))

(declare-fun m!706481 () Bool)

(assert (=> b!758967 m!706481))

(declare-fun m!706483 () Bool)

(assert (=> b!758980 m!706483))

(assert (=> b!758970 m!706457))

(assert (=> b!758970 m!706457))

(declare-fun m!706485 () Bool)

(assert (=> b!758970 m!706485))

(declare-fun m!706487 () Bool)

(assert (=> b!758973 m!706487))

(assert (=> b!758974 m!706457))

(assert (=> b!758974 m!706457))

(declare-fun m!706489 () Bool)

(assert (=> b!758974 m!706489))

(declare-fun m!706491 () Bool)

(assert (=> b!758981 m!706491))

(declare-fun m!706493 () Bool)

(assert (=> b!758972 m!706493))

(declare-fun m!706495 () Bool)

(assert (=> b!758972 m!706495))

(declare-fun m!706497 () Bool)

(assert (=> b!758978 m!706497))

(assert (=> b!758965 m!706457))

(assert (=> b!758965 m!706457))

(declare-fun m!706499 () Bool)

(assert (=> b!758965 m!706499))

(assert (=> b!758965 m!706499))

(assert (=> b!758965 m!706457))

(declare-fun m!706501 () Bool)

(assert (=> b!758965 m!706501))

(check-sat (not b!758971) (not b!758965) (not b!758980) (not b!758981) (not b!758972) (not start!65880) (not b!758976) (not b!758977) (not b!758970) (not b!758967) (not b!758974) (not b!758978) (not b!758966) (not b!758975))
(check-sat)
