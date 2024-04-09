; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67898 () Bool)

(assert start!67898)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!789146 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!438642 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42830 0))(
  ( (array!42831 (arr!20498 (Array (_ BitVec 32) (_ BitVec 64))) (size!20919 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42830)

(declare-datatypes ((SeekEntryResult!8105 0))(
  ( (MissingZero!8105 (index!34787 (_ BitVec 32))) (Found!8105 (index!34788 (_ BitVec 32))) (Intermediate!8105 (undefined!8917 Bool) (index!34789 (_ BitVec 32)) (x!65751 (_ BitVec 32))) (Undefined!8105) (MissingVacant!8105 (index!34790 (_ BitVec 32))) )
))
(declare-fun lt!352128 () SeekEntryResult!8105)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42830 (_ BitVec 32)) SeekEntryResult!8105)

(assert (=> b!789146 (= e!438642 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20498 a!3186) j!159) a!3186 mask!3328) lt!352128))))

(declare-fun b!789147 () Bool)

(declare-fun res!534618 () Bool)

(declare-fun e!438650 () Bool)

(assert (=> b!789147 (=> (not res!534618) (not e!438650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42830 (_ BitVec 32)) Bool)

(assert (=> b!789147 (= res!534618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789148 () Bool)

(declare-fun e!438645 () Bool)

(declare-fun e!438652 () Bool)

(assert (=> b!789148 (= e!438645 e!438652)))

(declare-fun res!534632 () Bool)

(assert (=> b!789148 (=> (not res!534632) (not e!438652))))

(declare-fun lt!352122 () SeekEntryResult!8105)

(declare-fun lt!352119 () SeekEntryResult!8105)

(assert (=> b!789148 (= res!534632 (= lt!352122 lt!352119))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!352121 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!352118 () array!42830)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42830 (_ BitVec 32)) SeekEntryResult!8105)

(assert (=> b!789148 (= lt!352119 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352121 lt!352118 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789148 (= lt!352122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352121 mask!3328) lt!352121 lt!352118 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!789148 (= lt!352121 (select (store (arr!20498 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789148 (= lt!352118 (array!42831 (store (arr!20498 a!3186) i!1173 k!2102) (size!20919 a!3186)))))

(declare-fun b!789149 () Bool)

(assert (=> b!789149 (= e!438650 e!438645)))

(declare-fun res!534633 () Bool)

(assert (=> b!789149 (=> (not res!534633) (not e!438645))))

(declare-fun lt!352123 () SeekEntryResult!8105)

(assert (=> b!789149 (= res!534633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20498 a!3186) j!159) mask!3328) (select (arr!20498 a!3186) j!159) a!3186 mask!3328) lt!352123))))

(assert (=> b!789149 (= lt!352123 (Intermediate!8105 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789150 () Bool)

(declare-fun res!534616 () Bool)

(declare-fun e!438643 () Bool)

(assert (=> b!789150 (=> (not res!534616) (not e!438643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789150 (= res!534616 (validKeyInArray!0 k!2102))))

(declare-fun b!789151 () Bool)

(declare-fun res!534619 () Bool)

(assert (=> b!789151 (=> (not res!534619) (not e!438643))))

(assert (=> b!789151 (= res!534619 (validKeyInArray!0 (select (arr!20498 a!3186) j!159)))))

(declare-fun b!789152 () Bool)

(declare-fun res!534623 () Bool)

(assert (=> b!789152 (=> (not res!534623) (not e!438650))))

(declare-datatypes ((List!14553 0))(
  ( (Nil!14550) (Cons!14549 (h!15675 (_ BitVec 64)) (t!20876 List!14553)) )
))
(declare-fun arrayNoDuplicates!0 (array!42830 (_ BitVec 32) List!14553) Bool)

(assert (=> b!789152 (= res!534623 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14550))))

(declare-fun b!789153 () Bool)

(declare-fun e!438644 () Bool)

(declare-fun e!438641 () Bool)

(assert (=> b!789153 (= e!438644 e!438641)))

(declare-fun res!534624 () Bool)

(assert (=> b!789153 (=> res!534624 e!438641)))

(declare-fun lt!352125 () SeekEntryResult!8105)

(assert (=> b!789153 (= res!534624 (not (= lt!352125 lt!352128)))))

(assert (=> b!789153 (= lt!352125 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20498 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!438646 () Bool)

(declare-fun b!789154 () Bool)

(assert (=> b!789154 (= e!438646 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20498 a!3186) j!159) a!3186 mask!3328) lt!352123))))

(declare-fun b!789155 () Bool)

(declare-datatypes ((Unit!27330 0))(
  ( (Unit!27331) )
))
(declare-fun e!438648 () Unit!27330)

(declare-fun Unit!27332 () Unit!27330)

(assert (=> b!789155 (= e!438648 Unit!27332)))

(assert (=> b!789155 false))

(declare-fun res!534628 () Bool)

(assert (=> start!67898 (=> (not res!534628) (not e!438643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67898 (= res!534628 (validMask!0 mask!3328))))

(assert (=> start!67898 e!438643))

(assert (=> start!67898 true))

(declare-fun array_inv!16272 (array!42830) Bool)

(assert (=> start!67898 (array_inv!16272 a!3186)))

(declare-fun b!789156 () Bool)

(declare-fun e!438647 () Bool)

(assert (=> b!789156 (= e!438647 true)))

(declare-fun e!438649 () Bool)

(assert (=> b!789156 e!438649))

(declare-fun res!534617 () Bool)

(assert (=> b!789156 (=> (not res!534617) (not e!438649))))

(declare-fun lt!352126 () (_ BitVec 64))

(assert (=> b!789156 (= res!534617 (= lt!352126 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!352127 () Unit!27330)

(assert (=> b!789156 (= lt!352127 e!438648)))

(declare-fun c!87674 () Bool)

(assert (=> b!789156 (= c!87674 (= lt!352126 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789157 () Bool)

(declare-fun res!534622 () Bool)

(assert (=> b!789157 (=> (not res!534622) (not e!438650))))

(assert (=> b!789157 (= res!534622 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20919 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20919 a!3186))))))

(declare-fun b!789158 () Bool)

(declare-fun lt!352129 () SeekEntryResult!8105)

(assert (=> b!789158 (= e!438649 (= lt!352129 lt!352125))))

(declare-fun b!789159 () Bool)

(declare-fun res!534621 () Bool)

(assert (=> b!789159 (=> (not res!534621) (not e!438649))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42830 (_ BitVec 32)) SeekEntryResult!8105)

(assert (=> b!789159 (= res!534621 (= (seekEntryOrOpen!0 lt!352121 lt!352118 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352121 lt!352118 mask!3328)))))

(declare-fun b!789160 () Bool)

(declare-fun res!534630 () Bool)

(assert (=> b!789160 (=> (not res!534630) (not e!438643))))

(assert (=> b!789160 (= res!534630 (and (= (size!20919 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20919 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20919 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789161 () Bool)

(assert (=> b!789161 (= e!438641 e!438647)))

(declare-fun res!534625 () Bool)

(assert (=> b!789161 (=> res!534625 e!438647)))

(assert (=> b!789161 (= res!534625 (= lt!352126 lt!352121))))

(assert (=> b!789161 (= lt!352126 (select (store (arr!20498 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789162 () Bool)

(declare-fun res!534620 () Bool)

(assert (=> b!789162 (=> (not res!534620) (not e!438645))))

(assert (=> b!789162 (= res!534620 e!438646)))

(declare-fun c!87675 () Bool)

(assert (=> b!789162 (= c!87675 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789163 () Bool)

(declare-fun Unit!27333 () Unit!27330)

(assert (=> b!789163 (= e!438648 Unit!27333)))

(declare-fun b!789164 () Bool)

(assert (=> b!789164 (= e!438643 e!438650)))

(declare-fun res!534631 () Bool)

(assert (=> b!789164 (=> (not res!534631) (not e!438650))))

(declare-fun lt!352124 () SeekEntryResult!8105)

(assert (=> b!789164 (= res!534631 (or (= lt!352124 (MissingZero!8105 i!1173)) (= lt!352124 (MissingVacant!8105 i!1173))))))

(assert (=> b!789164 (= lt!352124 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789165 () Bool)

(declare-fun res!534634 () Bool)

(assert (=> b!789165 (=> (not res!534634) (not e!438645))))

(assert (=> b!789165 (= res!534634 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20498 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789166 () Bool)

(assert (=> b!789166 (= e!438652 (not e!438644))))

(declare-fun res!534626 () Bool)

(assert (=> b!789166 (=> res!534626 e!438644)))

(assert (=> b!789166 (= res!534626 (or (not (is-Intermediate!8105 lt!352119)) (bvslt x!1131 (x!65751 lt!352119)) (not (= x!1131 (x!65751 lt!352119))) (not (= index!1321 (index!34789 lt!352119)))))))

(assert (=> b!789166 e!438642))

(declare-fun res!534627 () Bool)

(assert (=> b!789166 (=> (not res!534627) (not e!438642))))

(assert (=> b!789166 (= res!534627 (= lt!352129 lt!352128))))

(assert (=> b!789166 (= lt!352128 (Found!8105 j!159))))

(assert (=> b!789166 (= lt!352129 (seekEntryOrOpen!0 (select (arr!20498 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!789166 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352120 () Unit!27330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42830 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27330)

(assert (=> b!789166 (= lt!352120 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789167 () Bool)

(declare-fun res!534629 () Bool)

(assert (=> b!789167 (=> (not res!534629) (not e!438643))))

(declare-fun arrayContainsKey!0 (array!42830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789167 (= res!534629 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789168 () Bool)

(assert (=> b!789168 (= e!438646 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20498 a!3186) j!159) a!3186 mask!3328) (Found!8105 j!159)))))

(assert (= (and start!67898 res!534628) b!789160))

(assert (= (and b!789160 res!534630) b!789151))

(assert (= (and b!789151 res!534619) b!789150))

(assert (= (and b!789150 res!534616) b!789167))

(assert (= (and b!789167 res!534629) b!789164))

(assert (= (and b!789164 res!534631) b!789147))

(assert (= (and b!789147 res!534618) b!789152))

(assert (= (and b!789152 res!534623) b!789157))

(assert (= (and b!789157 res!534622) b!789149))

(assert (= (and b!789149 res!534633) b!789165))

(assert (= (and b!789165 res!534634) b!789162))

(assert (= (and b!789162 c!87675) b!789154))

(assert (= (and b!789162 (not c!87675)) b!789168))

(assert (= (and b!789162 res!534620) b!789148))

(assert (= (and b!789148 res!534632) b!789166))

(assert (= (and b!789166 res!534627) b!789146))

(assert (= (and b!789166 (not res!534626)) b!789153))

(assert (= (and b!789153 (not res!534624)) b!789161))

(assert (= (and b!789161 (not res!534625)) b!789156))

(assert (= (and b!789156 c!87674) b!789155))

(assert (= (and b!789156 (not c!87674)) b!789163))

(assert (= (and b!789156 res!534617) b!789159))

(assert (= (and b!789159 res!534621) b!789158))

(declare-fun m!730341 () Bool)

(assert (=> b!789154 m!730341))

(assert (=> b!789154 m!730341))

(declare-fun m!730343 () Bool)

(assert (=> b!789154 m!730343))

(declare-fun m!730345 () Bool)

(assert (=> b!789167 m!730345))

(assert (=> b!789168 m!730341))

(assert (=> b!789168 m!730341))

(declare-fun m!730347 () Bool)

(assert (=> b!789168 m!730347))

(assert (=> b!789153 m!730341))

(assert (=> b!789153 m!730341))

(assert (=> b!789153 m!730347))

(declare-fun m!730349 () Bool)

(assert (=> b!789152 m!730349))

(declare-fun m!730351 () Bool)

(assert (=> start!67898 m!730351))

(declare-fun m!730353 () Bool)

(assert (=> start!67898 m!730353))

(declare-fun m!730355 () Bool)

(assert (=> b!789147 m!730355))

(declare-fun m!730357 () Bool)

(assert (=> b!789150 m!730357))

(declare-fun m!730359 () Bool)

(assert (=> b!789164 m!730359))

(declare-fun m!730361 () Bool)

(assert (=> b!789148 m!730361))

(declare-fun m!730363 () Bool)

(assert (=> b!789148 m!730363))

(assert (=> b!789148 m!730361))

(declare-fun m!730365 () Bool)

(assert (=> b!789148 m!730365))

(declare-fun m!730367 () Bool)

(assert (=> b!789148 m!730367))

(declare-fun m!730369 () Bool)

(assert (=> b!789148 m!730369))

(declare-fun m!730371 () Bool)

(assert (=> b!789159 m!730371))

(declare-fun m!730373 () Bool)

(assert (=> b!789159 m!730373))

(assert (=> b!789161 m!730365))

(declare-fun m!730375 () Bool)

(assert (=> b!789161 m!730375))

(declare-fun m!730377 () Bool)

(assert (=> b!789165 m!730377))

(assert (=> b!789151 m!730341))

(assert (=> b!789151 m!730341))

(declare-fun m!730379 () Bool)

(assert (=> b!789151 m!730379))

(assert (=> b!789149 m!730341))

(assert (=> b!789149 m!730341))

(declare-fun m!730381 () Bool)

(assert (=> b!789149 m!730381))

(assert (=> b!789149 m!730381))

(assert (=> b!789149 m!730341))

(declare-fun m!730383 () Bool)

(assert (=> b!789149 m!730383))

(assert (=> b!789146 m!730341))

(assert (=> b!789146 m!730341))

(declare-fun m!730385 () Bool)

(assert (=> b!789146 m!730385))

(assert (=> b!789166 m!730341))

(assert (=> b!789166 m!730341))

(declare-fun m!730387 () Bool)

(assert (=> b!789166 m!730387))

(declare-fun m!730389 () Bool)

(assert (=> b!789166 m!730389))

(declare-fun m!730391 () Bool)

(assert (=> b!789166 m!730391))

(push 1)

