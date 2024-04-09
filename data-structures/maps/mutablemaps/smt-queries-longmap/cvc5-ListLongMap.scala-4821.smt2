; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66284 () Bool)

(assert start!66284)

(declare-fun b!763327 () Bool)

(declare-fun e!425324 () Bool)

(declare-fun e!425323 () Bool)

(assert (=> b!763327 (= e!425324 e!425323)))

(declare-fun res!516467 () Bool)

(assert (=> b!763327 (=> (not res!516467) (not e!425323))))

(declare-datatypes ((array!42142 0))(
  ( (array!42143 (arr!20175 (Array (_ BitVec 32) (_ BitVec 64))) (size!20596 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42142)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7782 0))(
  ( (MissingZero!7782 (index!33495 (_ BitVec 32))) (Found!7782 (index!33496 (_ BitVec 32))) (Intermediate!7782 (undefined!8594 Bool) (index!33497 (_ BitVec 32)) (x!64427 (_ BitVec 32))) (Undefined!7782) (MissingVacant!7782 (index!33498 (_ BitVec 32))) )
))
(declare-fun lt!339764 () SeekEntryResult!7782)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42142 (_ BitVec 32)) SeekEntryResult!7782)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763327 (= res!516467 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20175 a!3186) j!159) mask!3328) (select (arr!20175 a!3186) j!159) a!3186 mask!3328) lt!339764))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763327 (= lt!339764 (Intermediate!7782 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763328 () Bool)

(declare-fun e!425322 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!763328 (= e!425322 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20175 a!3186) j!159) a!3186 mask!3328) lt!339764))))

(declare-fun b!763329 () Bool)

(declare-fun res!516462 () Bool)

(assert (=> b!763329 (=> (not res!516462) (not e!425323))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763329 (= res!516462 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20175 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!516466 () Bool)

(declare-fun e!425320 () Bool)

(assert (=> start!66284 (=> (not res!516466) (not e!425320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66284 (= res!516466 (validMask!0 mask!3328))))

(assert (=> start!66284 e!425320))

(assert (=> start!66284 true))

(declare-fun array_inv!15949 (array!42142) Bool)

(assert (=> start!66284 (array_inv!15949 a!3186)))

(declare-fun b!763330 () Bool)

(declare-fun res!516471 () Bool)

(assert (=> b!763330 (=> (not res!516471) (not e!425320))))

(assert (=> b!763330 (= res!516471 (and (= (size!20596 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20596 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20596 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763331 () Bool)

(assert (=> b!763331 (= e!425320 e!425324)))

(declare-fun res!516463 () Bool)

(assert (=> b!763331 (=> (not res!516463) (not e!425324))))

(declare-fun lt!339761 () SeekEntryResult!7782)

(assert (=> b!763331 (= res!516463 (or (= lt!339761 (MissingZero!7782 i!1173)) (= lt!339761 (MissingVacant!7782 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42142 (_ BitVec 32)) SeekEntryResult!7782)

(assert (=> b!763331 (= lt!339761 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763332 () Bool)

(declare-fun res!516468 () Bool)

(assert (=> b!763332 (=> (not res!516468) (not e!425320))))

(declare-fun arrayContainsKey!0 (array!42142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763332 (= res!516468 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763333 () Bool)

(declare-fun res!516470 () Bool)

(assert (=> b!763333 (=> (not res!516470) (not e!425320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763333 (= res!516470 (validKeyInArray!0 (select (arr!20175 a!3186) j!159)))))

(declare-fun b!763334 () Bool)

(declare-fun res!516464 () Bool)

(assert (=> b!763334 (=> (not res!516464) (not e!425324))))

(assert (=> b!763334 (= res!516464 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20596 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20596 a!3186))))))

(declare-fun b!763335 () Bool)

(declare-fun res!516469 () Bool)

(assert (=> b!763335 (=> (not res!516469) (not e!425324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42142 (_ BitVec 32)) Bool)

(assert (=> b!763335 (= res!516469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763336 () Bool)

(declare-fun res!516461 () Bool)

(assert (=> b!763336 (=> (not res!516461) (not e!425324))))

(declare-datatypes ((List!14230 0))(
  ( (Nil!14227) (Cons!14226 (h!15310 (_ BitVec 64)) (t!20553 List!14230)) )
))
(declare-fun arrayNoDuplicates!0 (array!42142 (_ BitVec 32) List!14230) Bool)

(assert (=> b!763336 (= res!516461 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14227))))

(declare-fun b!763337 () Bool)

(declare-fun res!516465 () Bool)

(assert (=> b!763337 (=> (not res!516465) (not e!425320))))

(assert (=> b!763337 (= res!516465 (validKeyInArray!0 k!2102))))

(declare-fun b!763338 () Bool)

(assert (=> b!763338 (= e!425323 false)))

(declare-fun lt!339763 () SeekEntryResult!7782)

(declare-fun lt!339765 () array!42142)

(declare-fun lt!339766 () (_ BitVec 64))

(assert (=> b!763338 (= lt!339763 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339766 lt!339765 mask!3328))))

(declare-fun lt!339762 () SeekEntryResult!7782)

(assert (=> b!763338 (= lt!339762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339766 mask!3328) lt!339766 lt!339765 mask!3328))))

(assert (=> b!763338 (= lt!339766 (select (store (arr!20175 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763338 (= lt!339765 (array!42143 (store (arr!20175 a!3186) i!1173 k!2102) (size!20596 a!3186)))))

(declare-fun b!763339 () Bool)

(declare-fun res!516460 () Bool)

(assert (=> b!763339 (=> (not res!516460) (not e!425323))))

(assert (=> b!763339 (= res!516460 e!425322)))

(declare-fun c!83820 () Bool)

(assert (=> b!763339 (= c!83820 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763340 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42142 (_ BitVec 32)) SeekEntryResult!7782)

(assert (=> b!763340 (= e!425322 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20175 a!3186) j!159) a!3186 mask!3328) (Found!7782 j!159)))))

(assert (= (and start!66284 res!516466) b!763330))

(assert (= (and b!763330 res!516471) b!763333))

(assert (= (and b!763333 res!516470) b!763337))

(assert (= (and b!763337 res!516465) b!763332))

(assert (= (and b!763332 res!516468) b!763331))

(assert (= (and b!763331 res!516463) b!763335))

(assert (= (and b!763335 res!516469) b!763336))

(assert (= (and b!763336 res!516461) b!763334))

(assert (= (and b!763334 res!516464) b!763327))

(assert (= (and b!763327 res!516467) b!763329))

(assert (= (and b!763329 res!516462) b!763339))

(assert (= (and b!763339 c!83820) b!763328))

(assert (= (and b!763339 (not c!83820)) b!763340))

(assert (= (and b!763339 res!516460) b!763338))

(declare-fun m!709883 () Bool)

(assert (=> b!763332 m!709883))

(declare-fun m!709885 () Bool)

(assert (=> b!763331 m!709885))

(declare-fun m!709887 () Bool)

(assert (=> b!763329 m!709887))

(declare-fun m!709889 () Bool)

(assert (=> b!763337 m!709889))

(declare-fun m!709891 () Bool)

(assert (=> b!763327 m!709891))

(assert (=> b!763327 m!709891))

(declare-fun m!709893 () Bool)

(assert (=> b!763327 m!709893))

(assert (=> b!763327 m!709893))

(assert (=> b!763327 m!709891))

(declare-fun m!709895 () Bool)

(assert (=> b!763327 m!709895))

(declare-fun m!709897 () Bool)

(assert (=> b!763338 m!709897))

(declare-fun m!709899 () Bool)

(assert (=> b!763338 m!709899))

(declare-fun m!709901 () Bool)

(assert (=> b!763338 m!709901))

(declare-fun m!709903 () Bool)

(assert (=> b!763338 m!709903))

(declare-fun m!709905 () Bool)

(assert (=> b!763338 m!709905))

(assert (=> b!763338 m!709897))

(assert (=> b!763333 m!709891))

(assert (=> b!763333 m!709891))

(declare-fun m!709907 () Bool)

(assert (=> b!763333 m!709907))

(declare-fun m!709909 () Bool)

(assert (=> b!763335 m!709909))

(assert (=> b!763328 m!709891))

(assert (=> b!763328 m!709891))

(declare-fun m!709911 () Bool)

(assert (=> b!763328 m!709911))

(assert (=> b!763340 m!709891))

(assert (=> b!763340 m!709891))

(declare-fun m!709913 () Bool)

(assert (=> b!763340 m!709913))

(declare-fun m!709915 () Bool)

(assert (=> b!763336 m!709915))

(declare-fun m!709917 () Bool)

(assert (=> start!66284 m!709917))

(declare-fun m!709919 () Bool)

(assert (=> start!66284 m!709919))

(push 1)

