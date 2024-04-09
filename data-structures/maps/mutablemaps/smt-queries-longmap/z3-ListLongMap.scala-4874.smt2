; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67176 () Bool)

(assert start!67176)

(declare-fun b!776155 () Bool)

(declare-fun e!431943 () Bool)

(assert (=> b!776155 (= e!431943 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42486 0))(
  ( (array!42487 (arr!20335 (Array (_ BitVec 32) (_ BitVec 64))) (size!20756 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42486)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7942 0))(
  ( (MissingZero!7942 (index!34135 (_ BitVec 32))) (Found!7942 (index!34136 (_ BitVec 32))) (Intermediate!7942 (undefined!8754 Bool) (index!34137 (_ BitVec 32)) (x!65102 (_ BitVec 32))) (Undefined!7942) (MissingVacant!7942 (index!34138 (_ BitVec 32))) )
))
(declare-fun lt!345811 () SeekEntryResult!7942)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42486 (_ BitVec 32)) SeekEntryResult!7942)

(assert (=> b!776155 (= lt!345811 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20335 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776156 () Bool)

(declare-fun e!431939 () Bool)

(declare-fun e!431941 () Bool)

(assert (=> b!776156 (= e!431939 e!431941)))

(declare-fun res!525150 () Bool)

(assert (=> b!776156 (=> (not res!525150) (not e!431941))))

(declare-fun lt!345815 () SeekEntryResult!7942)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42486 (_ BitVec 32)) SeekEntryResult!7942)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776156 (= res!525150 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20335 a!3186) j!159) mask!3328) (select (arr!20335 a!3186) j!159) a!3186 mask!3328) lt!345815))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776156 (= lt!345815 (Intermediate!7942 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776157 () Bool)

(declare-fun res!525141 () Bool)

(assert (=> b!776157 (=> (not res!525141) (not e!431939))))

(declare-datatypes ((List!14390 0))(
  ( (Nil!14387) (Cons!14386 (h!15494 (_ BitVec 64)) (t!20713 List!14390)) )
))
(declare-fun arrayNoDuplicates!0 (array!42486 (_ BitVec 32) List!14390) Bool)

(assert (=> b!776157 (= res!525141 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14387))))

(declare-fun b!776158 () Bool)

(declare-fun res!525148 () Bool)

(declare-fun e!431945 () Bool)

(assert (=> b!776158 (=> (not res!525148) (not e!431945))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776158 (= res!525148 (validKeyInArray!0 k0!2102))))

(declare-fun b!776159 () Bool)

(declare-fun e!431946 () Bool)

(assert (=> b!776159 (= e!431941 e!431946)))

(declare-fun res!525140 () Bool)

(assert (=> b!776159 (=> (not res!525140) (not e!431946))))

(declare-fun lt!345813 () SeekEntryResult!7942)

(declare-fun lt!345817 () SeekEntryResult!7942)

(assert (=> b!776159 (= res!525140 (= lt!345813 lt!345817))))

(declare-fun lt!345809 () (_ BitVec 64))

(declare-fun lt!345816 () array!42486)

(assert (=> b!776159 (= lt!345817 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345809 lt!345816 mask!3328))))

(assert (=> b!776159 (= lt!345813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345809 mask!3328) lt!345809 lt!345816 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776159 (= lt!345809 (select (store (arr!20335 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!776159 (= lt!345816 (array!42487 (store (arr!20335 a!3186) i!1173 k0!2102) (size!20756 a!3186)))))

(declare-fun b!776160 () Bool)

(declare-fun res!525146 () Bool)

(assert (=> b!776160 (=> (not res!525146) (not e!431945))))

(assert (=> b!776160 (= res!525146 (and (= (size!20756 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20756 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20756 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776161 () Bool)

(declare-fun res!525151 () Bool)

(assert (=> b!776161 (=> (not res!525151) (not e!431939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42486 (_ BitVec 32)) Bool)

(assert (=> b!776161 (= res!525151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!525153 () Bool)

(assert (=> start!67176 (=> (not res!525153) (not e!431945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67176 (= res!525153 (validMask!0 mask!3328))))

(assert (=> start!67176 e!431945))

(assert (=> start!67176 true))

(declare-fun array_inv!16109 (array!42486) Bool)

(assert (=> start!67176 (array_inv!16109 a!3186)))

(declare-fun b!776162 () Bool)

(assert (=> b!776162 (= e!431945 e!431939)))

(declare-fun res!525154 () Bool)

(assert (=> b!776162 (=> (not res!525154) (not e!431939))))

(declare-fun lt!345814 () SeekEntryResult!7942)

(assert (=> b!776162 (= res!525154 (or (= lt!345814 (MissingZero!7942 i!1173)) (= lt!345814 (MissingVacant!7942 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42486 (_ BitVec 32)) SeekEntryResult!7942)

(assert (=> b!776162 (= lt!345814 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!776163 () Bool)

(declare-fun res!525139 () Bool)

(assert (=> b!776163 (=> (not res!525139) (not e!431945))))

(declare-fun arrayContainsKey!0 (array!42486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776163 (= res!525139 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!431944 () Bool)

(declare-fun b!776164 () Bool)

(assert (=> b!776164 (= e!431944 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20335 a!3186) j!159) a!3186 mask!3328) (Found!7942 j!159)))))

(declare-fun b!776165 () Bool)

(declare-fun res!525145 () Bool)

(assert (=> b!776165 (=> (not res!525145) (not e!431939))))

(assert (=> b!776165 (= res!525145 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20756 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20756 a!3186))))))

(declare-fun b!776166 () Bool)

(declare-fun res!525147 () Bool)

(assert (=> b!776166 (=> (not res!525147) (not e!431945))))

(assert (=> b!776166 (= res!525147 (validKeyInArray!0 (select (arr!20335 a!3186) j!159)))))

(declare-fun b!776167 () Bool)

(assert (=> b!776167 (= e!431946 (not e!431943))))

(declare-fun res!525144 () Bool)

(assert (=> b!776167 (=> res!525144 e!431943)))

(get-info :version)

(assert (=> b!776167 (= res!525144 (or (not ((_ is Intermediate!7942) lt!345817)) (bvslt x!1131 (x!65102 lt!345817)) (not (= x!1131 (x!65102 lt!345817))) (not (= index!1321 (index!34137 lt!345817)))))))

(declare-fun e!431940 () Bool)

(assert (=> b!776167 e!431940))

(declare-fun res!525152 () Bool)

(assert (=> b!776167 (=> (not res!525152) (not e!431940))))

(assert (=> b!776167 (= res!525152 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26778 0))(
  ( (Unit!26779) )
))
(declare-fun lt!345812 () Unit!26778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26778)

(assert (=> b!776167 (= lt!345812 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776168 () Bool)

(declare-fun res!525142 () Bool)

(assert (=> b!776168 (=> (not res!525142) (not e!431941))))

(assert (=> b!776168 (= res!525142 e!431944)))

(declare-fun c!85908 () Bool)

(assert (=> b!776168 (= c!85908 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776169 () Bool)

(assert (=> b!776169 (= e!431944 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20335 a!3186) j!159) a!3186 mask!3328) lt!345815))))

(declare-fun b!776170 () Bool)

(declare-fun res!525143 () Bool)

(assert (=> b!776170 (=> (not res!525143) (not e!431941))))

(assert (=> b!776170 (= res!525143 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20335 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776171 () Bool)

(declare-fun e!431947 () Bool)

(assert (=> b!776171 (= e!431940 e!431947)))

(declare-fun res!525149 () Bool)

(assert (=> b!776171 (=> (not res!525149) (not e!431947))))

(declare-fun lt!345810 () SeekEntryResult!7942)

(assert (=> b!776171 (= res!525149 (= (seekEntryOrOpen!0 (select (arr!20335 a!3186) j!159) a!3186 mask!3328) lt!345810))))

(assert (=> b!776171 (= lt!345810 (Found!7942 j!159))))

(declare-fun b!776172 () Bool)

(assert (=> b!776172 (= e!431947 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20335 a!3186) j!159) a!3186 mask!3328) lt!345810))))

(assert (= (and start!67176 res!525153) b!776160))

(assert (= (and b!776160 res!525146) b!776166))

(assert (= (and b!776166 res!525147) b!776158))

(assert (= (and b!776158 res!525148) b!776163))

(assert (= (and b!776163 res!525139) b!776162))

(assert (= (and b!776162 res!525154) b!776161))

(assert (= (and b!776161 res!525151) b!776157))

(assert (= (and b!776157 res!525141) b!776165))

(assert (= (and b!776165 res!525145) b!776156))

(assert (= (and b!776156 res!525150) b!776170))

(assert (= (and b!776170 res!525143) b!776168))

(assert (= (and b!776168 c!85908) b!776169))

(assert (= (and b!776168 (not c!85908)) b!776164))

(assert (= (and b!776168 res!525142) b!776159))

(assert (= (and b!776159 res!525140) b!776167))

(assert (= (and b!776167 res!525152) b!776171))

(assert (= (and b!776171 res!525149) b!776172))

(assert (= (and b!776167 (not res!525144)) b!776155))

(declare-fun m!720335 () Bool)

(assert (=> b!776161 m!720335))

(declare-fun m!720337 () Bool)

(assert (=> b!776158 m!720337))

(declare-fun m!720339 () Bool)

(assert (=> b!776170 m!720339))

(declare-fun m!720341 () Bool)

(assert (=> b!776156 m!720341))

(assert (=> b!776156 m!720341))

(declare-fun m!720343 () Bool)

(assert (=> b!776156 m!720343))

(assert (=> b!776156 m!720343))

(assert (=> b!776156 m!720341))

(declare-fun m!720345 () Bool)

(assert (=> b!776156 m!720345))

(assert (=> b!776164 m!720341))

(assert (=> b!776164 m!720341))

(declare-fun m!720347 () Bool)

(assert (=> b!776164 m!720347))

(assert (=> b!776171 m!720341))

(assert (=> b!776171 m!720341))

(declare-fun m!720349 () Bool)

(assert (=> b!776171 m!720349))

(assert (=> b!776172 m!720341))

(assert (=> b!776172 m!720341))

(declare-fun m!720351 () Bool)

(assert (=> b!776172 m!720351))

(declare-fun m!720353 () Bool)

(assert (=> b!776157 m!720353))

(assert (=> b!776166 m!720341))

(assert (=> b!776166 m!720341))

(declare-fun m!720355 () Bool)

(assert (=> b!776166 m!720355))

(assert (=> b!776155 m!720341))

(assert (=> b!776155 m!720341))

(assert (=> b!776155 m!720347))

(declare-fun m!720357 () Bool)

(assert (=> b!776159 m!720357))

(declare-fun m!720359 () Bool)

(assert (=> b!776159 m!720359))

(declare-fun m!720361 () Bool)

(assert (=> b!776159 m!720361))

(assert (=> b!776159 m!720357))

(declare-fun m!720363 () Bool)

(assert (=> b!776159 m!720363))

(declare-fun m!720365 () Bool)

(assert (=> b!776159 m!720365))

(declare-fun m!720367 () Bool)

(assert (=> b!776163 m!720367))

(declare-fun m!720369 () Bool)

(assert (=> b!776162 m!720369))

(assert (=> b!776169 m!720341))

(assert (=> b!776169 m!720341))

(declare-fun m!720371 () Bool)

(assert (=> b!776169 m!720371))

(declare-fun m!720373 () Bool)

(assert (=> b!776167 m!720373))

(declare-fun m!720375 () Bool)

(assert (=> b!776167 m!720375))

(declare-fun m!720377 () Bool)

(assert (=> start!67176 m!720377))

(declare-fun m!720379 () Bool)

(assert (=> start!67176 m!720379))

(check-sat (not b!776157) (not b!776158) (not b!776163) (not b!776155) (not b!776156) (not b!776172) (not b!776162) (not b!776164) (not b!776159) (not b!776167) (not b!776171) (not b!776166) (not start!67176) (not b!776161) (not b!776169))
(check-sat)
