; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65768 () Bool)

(assert start!65768)

(declare-fun b!755158 () Bool)

(declare-fun e!421155 () Bool)

(declare-fun e!421150 () Bool)

(assert (=> b!755158 (= e!421155 e!421150)))

(declare-fun res!510514 () Bool)

(assert (=> b!755158 (=> (not res!510514) (not e!421150))))

(declare-datatypes ((SeekEntryResult!7664 0))(
  ( (MissingZero!7664 (index!33023 (_ BitVec 32))) (Found!7664 (index!33024 (_ BitVec 32))) (Intermediate!7664 (undefined!8476 Bool) (index!33025 (_ BitVec 32)) (x!63951 (_ BitVec 32))) (Undefined!7664) (MissingVacant!7664 (index!33026 (_ BitVec 32))) )
))
(declare-fun lt!336156 () SeekEntryResult!7664)

(declare-fun lt!336147 () SeekEntryResult!7664)

(assert (=> b!755158 (= res!510514 (= lt!336156 lt!336147))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!336154 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41894 0))(
  ( (array!41895 (arr!20057 (Array (_ BitVec 32) (_ BitVec 64))) (size!20478 (_ BitVec 32))) )
))
(declare-fun lt!336158 () array!41894)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41894 (_ BitVec 32)) SeekEntryResult!7664)

(assert (=> b!755158 (= lt!336147 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336154 lt!336158 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755158 (= lt!336156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336154 mask!3328) lt!336154 lt!336158 mask!3328))))

(declare-fun a!3186 () array!41894)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755158 (= lt!336154 (select (store (arr!20057 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755158 (= lt!336158 (array!41895 (store (arr!20057 a!3186) i!1173 k!2102) (size!20478 a!3186)))))

(declare-fun b!755159 () Bool)

(declare-fun res!510519 () Bool)

(assert (=> b!755159 (=> (not res!510519) (not e!421155))))

(declare-fun e!421153 () Bool)

(assert (=> b!755159 (= res!510519 e!421153)))

(declare-fun c!82710 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755159 (= c!82710 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755160 () Bool)

(declare-fun e!421149 () Bool)

(assert (=> b!755160 (= e!421149 e!421155)))

(declare-fun res!510509 () Bool)

(assert (=> b!755160 (=> (not res!510509) (not e!421155))))

(declare-fun lt!336152 () SeekEntryResult!7664)

(assert (=> b!755160 (= res!510509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20057 a!3186) j!159) mask!3328) (select (arr!20057 a!3186) j!159) a!3186 mask!3328) lt!336152))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!755160 (= lt!336152 (Intermediate!7664 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755161 () Bool)

(declare-fun e!421156 () Bool)

(declare-fun e!421148 () Bool)

(assert (=> b!755161 (= e!421156 e!421148)))

(declare-fun res!510513 () Bool)

(assert (=> b!755161 (=> res!510513 e!421148)))

(declare-fun lt!336150 () SeekEntryResult!7664)

(declare-fun lt!336148 () SeekEntryResult!7664)

(assert (=> b!755161 (= res!510513 (not (= lt!336150 lt!336148)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41894 (_ BitVec 32)) SeekEntryResult!7664)

(assert (=> b!755161 (= lt!336150 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20057 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755162 () Bool)

(declare-fun res!510505 () Bool)

(assert (=> b!755162 (=> (not res!510505) (not e!421149))))

(assert (=> b!755162 (= res!510505 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20478 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20478 a!3186))))))

(declare-fun b!755164 () Bool)

(declare-fun e!421154 () Bool)

(assert (=> b!755164 (= e!421154 e!421149)))

(declare-fun res!510512 () Bool)

(assert (=> b!755164 (=> (not res!510512) (not e!421149))))

(declare-fun lt!336149 () SeekEntryResult!7664)

(assert (=> b!755164 (= res!510512 (or (= lt!336149 (MissingZero!7664 i!1173)) (= lt!336149 (MissingVacant!7664 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41894 (_ BitVec 32)) SeekEntryResult!7664)

(assert (=> b!755164 (= lt!336149 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755165 () Bool)

(assert (=> b!755165 (= e!421153 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20057 a!3186) j!159) a!3186 mask!3328) (Found!7664 j!159)))))

(declare-fun b!755166 () Bool)

(declare-fun res!510510 () Bool)

(assert (=> b!755166 (=> (not res!510510) (not e!421154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755166 (= res!510510 (validKeyInArray!0 k!2102))))

(declare-fun b!755167 () Bool)

(declare-fun e!421147 () Bool)

(assert (=> b!755167 (= e!421147 true)))

(declare-fun e!421158 () Bool)

(assert (=> b!755167 e!421158))

(declare-fun res!510503 () Bool)

(assert (=> b!755167 (=> (not res!510503) (not e!421158))))

(declare-fun lt!336155 () (_ BitVec 64))

(assert (=> b!755167 (= res!510503 (= lt!336155 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26058 0))(
  ( (Unit!26059) )
))
(declare-fun lt!336157 () Unit!26058)

(declare-fun e!421151 () Unit!26058)

(assert (=> b!755167 (= lt!336157 e!421151)))

(declare-fun c!82709 () Bool)

(assert (=> b!755167 (= c!82709 (= lt!336155 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755168 () Bool)

(assert (=> b!755168 (= e!421153 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20057 a!3186) j!159) a!3186 mask!3328) lt!336152))))

(declare-fun b!755169 () Bool)

(declare-fun e!421152 () Bool)

(assert (=> b!755169 (= e!421152 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20057 a!3186) j!159) a!3186 mask!3328) lt!336148))))

(declare-fun b!755170 () Bool)

(assert (=> b!755170 (= e!421148 e!421147)))

(declare-fun res!510504 () Bool)

(assert (=> b!755170 (=> res!510504 e!421147)))

(assert (=> b!755170 (= res!510504 (= lt!336155 lt!336154))))

(assert (=> b!755170 (= lt!336155 (select (store (arr!20057 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755171 () Bool)

(declare-fun res!510517 () Bool)

(assert (=> b!755171 (=> (not res!510517) (not e!421149))))

(declare-datatypes ((List!14112 0))(
  ( (Nil!14109) (Cons!14108 (h!15180 (_ BitVec 64)) (t!20435 List!14112)) )
))
(declare-fun arrayNoDuplicates!0 (array!41894 (_ BitVec 32) List!14112) Bool)

(assert (=> b!755171 (= res!510517 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14109))))

(declare-fun b!755172 () Bool)

(assert (=> b!755172 (= e!421150 (not e!421156))))

(declare-fun res!510515 () Bool)

(assert (=> b!755172 (=> res!510515 e!421156)))

(assert (=> b!755172 (= res!510515 (or (not (is-Intermediate!7664 lt!336147)) (bvslt x!1131 (x!63951 lt!336147)) (not (= x!1131 (x!63951 lt!336147))) (not (= index!1321 (index!33025 lt!336147)))))))

(assert (=> b!755172 e!421152))

(declare-fun res!510511 () Bool)

(assert (=> b!755172 (=> (not res!510511) (not e!421152))))

(declare-fun lt!336151 () SeekEntryResult!7664)

(assert (=> b!755172 (= res!510511 (= lt!336151 lt!336148))))

(assert (=> b!755172 (= lt!336148 (Found!7664 j!159))))

(assert (=> b!755172 (= lt!336151 (seekEntryOrOpen!0 (select (arr!20057 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41894 (_ BitVec 32)) Bool)

(assert (=> b!755172 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336153 () Unit!26058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41894 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26058)

(assert (=> b!755172 (= lt!336153 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755173 () Bool)

(declare-fun res!510501 () Bool)

(assert (=> b!755173 (=> (not res!510501) (not e!421154))))

(assert (=> b!755173 (= res!510501 (and (= (size!20478 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20478 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20478 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755174 () Bool)

(assert (=> b!755174 (= e!421158 (= lt!336151 lt!336150))))

(declare-fun b!755175 () Bool)

(declare-fun res!510507 () Bool)

(assert (=> b!755175 (=> (not res!510507) (not e!421154))))

(declare-fun arrayContainsKey!0 (array!41894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755175 (= res!510507 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755176 () Bool)

(declare-fun Unit!26060 () Unit!26058)

(assert (=> b!755176 (= e!421151 Unit!26060)))

(assert (=> b!755176 false))

(declare-fun b!755177 () Bool)

(declare-fun res!510506 () Bool)

(assert (=> b!755177 (=> (not res!510506) (not e!421154))))

(assert (=> b!755177 (= res!510506 (validKeyInArray!0 (select (arr!20057 a!3186) j!159)))))

(declare-fun b!755178 () Bool)

(declare-fun res!510502 () Bool)

(assert (=> b!755178 (=> (not res!510502) (not e!421155))))

(assert (=> b!755178 (= res!510502 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20057 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755163 () Bool)

(declare-fun res!510518 () Bool)

(assert (=> b!755163 (=> (not res!510518) (not e!421149))))

(assert (=> b!755163 (= res!510518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!510508 () Bool)

(assert (=> start!65768 (=> (not res!510508) (not e!421154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65768 (= res!510508 (validMask!0 mask!3328))))

(assert (=> start!65768 e!421154))

(assert (=> start!65768 true))

(declare-fun array_inv!15831 (array!41894) Bool)

(assert (=> start!65768 (array_inv!15831 a!3186)))

(declare-fun b!755179 () Bool)

(declare-fun Unit!26061 () Unit!26058)

(assert (=> b!755179 (= e!421151 Unit!26061)))

(declare-fun b!755180 () Bool)

(declare-fun res!510516 () Bool)

(assert (=> b!755180 (=> (not res!510516) (not e!421158))))

(assert (=> b!755180 (= res!510516 (= (seekEntryOrOpen!0 lt!336154 lt!336158 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336154 lt!336158 mask!3328)))))

(assert (= (and start!65768 res!510508) b!755173))

(assert (= (and b!755173 res!510501) b!755177))

(assert (= (and b!755177 res!510506) b!755166))

(assert (= (and b!755166 res!510510) b!755175))

(assert (= (and b!755175 res!510507) b!755164))

(assert (= (and b!755164 res!510512) b!755163))

(assert (= (and b!755163 res!510518) b!755171))

(assert (= (and b!755171 res!510517) b!755162))

(assert (= (and b!755162 res!510505) b!755160))

(assert (= (and b!755160 res!510509) b!755178))

(assert (= (and b!755178 res!510502) b!755159))

(assert (= (and b!755159 c!82710) b!755168))

(assert (= (and b!755159 (not c!82710)) b!755165))

(assert (= (and b!755159 res!510519) b!755158))

(assert (= (and b!755158 res!510514) b!755172))

(assert (= (and b!755172 res!510511) b!755169))

(assert (= (and b!755172 (not res!510515)) b!755161))

(assert (= (and b!755161 (not res!510513)) b!755170))

(assert (= (and b!755170 (not res!510504)) b!755167))

(assert (= (and b!755167 c!82709) b!755176))

(assert (= (and b!755167 (not c!82709)) b!755179))

(assert (= (and b!755167 res!510503) b!755180))

(assert (= (and b!755180 res!510516) b!755174))

(declare-fun m!703497 () Bool)

(assert (=> b!755175 m!703497))

(declare-fun m!703499 () Bool)

(assert (=> b!755170 m!703499))

(declare-fun m!703501 () Bool)

(assert (=> b!755170 m!703501))

(declare-fun m!703503 () Bool)

(assert (=> b!755168 m!703503))

(assert (=> b!755168 m!703503))

(declare-fun m!703505 () Bool)

(assert (=> b!755168 m!703505))

(declare-fun m!703507 () Bool)

(assert (=> b!755158 m!703507))

(declare-fun m!703509 () Bool)

(assert (=> b!755158 m!703509))

(assert (=> b!755158 m!703499))

(declare-fun m!703511 () Bool)

(assert (=> b!755158 m!703511))

(declare-fun m!703513 () Bool)

(assert (=> b!755158 m!703513))

(assert (=> b!755158 m!703507))

(declare-fun m!703515 () Bool)

(assert (=> b!755180 m!703515))

(declare-fun m!703517 () Bool)

(assert (=> b!755180 m!703517))

(assert (=> b!755177 m!703503))

(assert (=> b!755177 m!703503))

(declare-fun m!703519 () Bool)

(assert (=> b!755177 m!703519))

(assert (=> b!755172 m!703503))

(assert (=> b!755172 m!703503))

(declare-fun m!703521 () Bool)

(assert (=> b!755172 m!703521))

(declare-fun m!703523 () Bool)

(assert (=> b!755172 m!703523))

(declare-fun m!703525 () Bool)

(assert (=> b!755172 m!703525))

(assert (=> b!755165 m!703503))

(assert (=> b!755165 m!703503))

(declare-fun m!703527 () Bool)

(assert (=> b!755165 m!703527))

(assert (=> b!755169 m!703503))

(assert (=> b!755169 m!703503))

(declare-fun m!703529 () Bool)

(assert (=> b!755169 m!703529))

(declare-fun m!703531 () Bool)

(assert (=> start!65768 m!703531))

(declare-fun m!703533 () Bool)

(assert (=> start!65768 m!703533))

(declare-fun m!703535 () Bool)

(assert (=> b!755163 m!703535))

(declare-fun m!703537 () Bool)

(assert (=> b!755166 m!703537))

(assert (=> b!755160 m!703503))

(assert (=> b!755160 m!703503))

(declare-fun m!703539 () Bool)

(assert (=> b!755160 m!703539))

(assert (=> b!755160 m!703539))

(assert (=> b!755160 m!703503))

(declare-fun m!703541 () Bool)

(assert (=> b!755160 m!703541))

(declare-fun m!703543 () Bool)

(assert (=> b!755178 m!703543))

(declare-fun m!703545 () Bool)

(assert (=> b!755171 m!703545))

(declare-fun m!703547 () Bool)

(assert (=> b!755164 m!703547))

(assert (=> b!755161 m!703503))

(assert (=> b!755161 m!703503))

(assert (=> b!755161 m!703527))

(push 1)

