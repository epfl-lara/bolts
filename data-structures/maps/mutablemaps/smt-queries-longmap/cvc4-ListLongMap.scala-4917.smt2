; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67766 () Bool)

(assert start!67766)

(declare-fun b!786416 () Bool)

(declare-fun res!532622 () Bool)

(declare-fun e!437192 () Bool)

(assert (=> b!786416 (=> (not res!532622) (not e!437192))))

(declare-datatypes ((array!42761 0))(
  ( (array!42762 (arr!20465 (Array (_ BitVec 32) (_ BitVec 64))) (size!20886 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42761)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786416 (= res!532622 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786417 () Bool)

(declare-fun e!437187 () Bool)

(declare-fun e!437185 () Bool)

(assert (=> b!786417 (= e!437187 e!437185)))

(declare-fun res!532626 () Bool)

(assert (=> b!786417 (=> (not res!532626) (not e!437185))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8072 0))(
  ( (MissingZero!8072 (index!34655 (_ BitVec 32))) (Found!8072 (index!34656 (_ BitVec 32))) (Intermediate!8072 (undefined!8884 Bool) (index!34657 (_ BitVec 32)) (x!65621 (_ BitVec 32))) (Undefined!8072) (MissingVacant!8072 (index!34658 (_ BitVec 32))) )
))
(declare-fun lt!350753 () SeekEntryResult!8072)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42761 (_ BitVec 32)) SeekEntryResult!8072)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786417 (= res!532626 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20465 a!3186) j!159) mask!3328) (select (arr!20465 a!3186) j!159) a!3186 mask!3328) lt!350753))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786417 (= lt!350753 (Intermediate!8072 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786418 () Bool)

(declare-fun lt!350758 () SeekEntryResult!8072)

(declare-fun e!437191 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42761 (_ BitVec 32)) SeekEntryResult!8072)

(assert (=> b!786418 (= e!437191 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20465 a!3186) j!159) a!3186 mask!3328) lt!350758))))

(declare-fun b!786419 () Bool)

(declare-fun res!532611 () Bool)

(assert (=> b!786419 (=> (not res!532611) (not e!437192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786419 (= res!532611 (validKeyInArray!0 k!2102))))

(declare-fun b!786420 () Bool)

(declare-fun res!532620 () Bool)

(assert (=> b!786420 (=> (not res!532620) (not e!437185))))

(declare-fun e!437188 () Bool)

(assert (=> b!786420 (= res!532620 e!437188)))

(declare-fun c!87311 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!786420 (= c!87311 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786421 () Bool)

(declare-fun e!437193 () Bool)

(assert (=> b!786421 (= e!437185 e!437193)))

(declare-fun res!532615 () Bool)

(assert (=> b!786421 (=> (not res!532615) (not e!437193))))

(declare-fun lt!350760 () SeekEntryResult!8072)

(declare-fun lt!350756 () SeekEntryResult!8072)

(assert (=> b!786421 (= res!532615 (= lt!350760 lt!350756))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!350754 () (_ BitVec 64))

(declare-fun lt!350761 () array!42761)

(assert (=> b!786421 (= lt!350756 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350754 lt!350761 mask!3328))))

(assert (=> b!786421 (= lt!350760 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350754 mask!3328) lt!350754 lt!350761 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786421 (= lt!350754 (select (store (arr!20465 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786421 (= lt!350761 (array!42762 (store (arr!20465 a!3186) i!1173 k!2102) (size!20886 a!3186)))))

(declare-fun b!786422 () Bool)

(declare-fun res!532617 () Bool)

(assert (=> b!786422 (=> (not res!532617) (not e!437187))))

(declare-datatypes ((List!14520 0))(
  ( (Nil!14517) (Cons!14516 (h!15639 (_ BitVec 64)) (t!20843 List!14520)) )
))
(declare-fun arrayNoDuplicates!0 (array!42761 (_ BitVec 32) List!14520) Bool)

(assert (=> b!786422 (= res!532617 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14517))))

(declare-fun b!786423 () Bool)

(declare-fun res!532625 () Bool)

(declare-fun e!437186 () Bool)

(assert (=> b!786423 (=> (not res!532625) (not e!437186))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42761 (_ BitVec 32)) SeekEntryResult!8072)

(assert (=> b!786423 (= res!532625 (= (seekEntryOrOpen!0 lt!350754 lt!350761 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350754 lt!350761 mask!3328)))))

(declare-fun b!786424 () Bool)

(declare-fun e!437190 () Bool)

(assert (=> b!786424 (= e!437190 true)))

(assert (=> b!786424 e!437186))

(declare-fun res!532627 () Bool)

(assert (=> b!786424 (=> (not res!532627) (not e!437186))))

(declare-fun lt!350759 () (_ BitVec 64))

(assert (=> b!786424 (= res!532627 (= lt!350759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27198 0))(
  ( (Unit!27199) )
))
(declare-fun lt!350755 () Unit!27198)

(declare-fun e!437183 () Unit!27198)

(assert (=> b!786424 (= lt!350755 e!437183)))

(declare-fun c!87312 () Bool)

(assert (=> b!786424 (= c!87312 (= lt!350759 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786425 () Bool)

(declare-fun e!437194 () Bool)

(assert (=> b!786425 (= e!437194 e!437190)))

(declare-fun res!532621 () Bool)

(assert (=> b!786425 (=> res!532621 e!437190)))

(assert (=> b!786425 (= res!532621 (= lt!350759 lt!350754))))

(assert (=> b!786425 (= lt!350759 (select (store (arr!20465 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786426 () Bool)

(assert (=> b!786426 (= e!437192 e!437187)))

(declare-fun res!532614 () Bool)

(assert (=> b!786426 (=> (not res!532614) (not e!437187))))

(declare-fun lt!350752 () SeekEntryResult!8072)

(assert (=> b!786426 (= res!532614 (or (= lt!350752 (MissingZero!8072 i!1173)) (= lt!350752 (MissingVacant!8072 i!1173))))))

(assert (=> b!786426 (= lt!350752 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786428 () Bool)

(declare-fun Unit!27200 () Unit!27198)

(assert (=> b!786428 (= e!437183 Unit!27200)))

(assert (=> b!786428 false))

(declare-fun b!786429 () Bool)

(declare-fun Unit!27201 () Unit!27198)

(assert (=> b!786429 (= e!437183 Unit!27201)))

(declare-fun b!786430 () Bool)

(declare-fun res!532623 () Bool)

(assert (=> b!786430 (=> (not res!532623) (not e!437192))))

(assert (=> b!786430 (= res!532623 (and (= (size!20886 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20886 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20886 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786431 () Bool)

(assert (=> b!786431 (= e!437188 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20465 a!3186) j!159) a!3186 mask!3328) (Found!8072 j!159)))))

(declare-fun b!786432 () Bool)

(declare-fun e!437189 () Bool)

(assert (=> b!786432 (= e!437189 e!437194)))

(declare-fun res!532616 () Bool)

(assert (=> b!786432 (=> res!532616 e!437194)))

(declare-fun lt!350751 () SeekEntryResult!8072)

(assert (=> b!786432 (= res!532616 (not (= lt!350751 lt!350758)))))

(assert (=> b!786432 (= lt!350751 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20465 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786433 () Bool)

(declare-fun res!532609 () Bool)

(assert (=> b!786433 (=> (not res!532609) (not e!437192))))

(assert (=> b!786433 (= res!532609 (validKeyInArray!0 (select (arr!20465 a!3186) j!159)))))

(declare-fun b!786434 () Bool)

(assert (=> b!786434 (= e!437193 (not e!437189))))

(declare-fun res!532619 () Bool)

(assert (=> b!786434 (=> res!532619 e!437189)))

(assert (=> b!786434 (= res!532619 (or (not (is-Intermediate!8072 lt!350756)) (bvslt x!1131 (x!65621 lt!350756)) (not (= x!1131 (x!65621 lt!350756))) (not (= index!1321 (index!34657 lt!350756)))))))

(assert (=> b!786434 e!437191))

(declare-fun res!532618 () Bool)

(assert (=> b!786434 (=> (not res!532618) (not e!437191))))

(declare-fun lt!350757 () SeekEntryResult!8072)

(assert (=> b!786434 (= res!532618 (= lt!350757 lt!350758))))

(assert (=> b!786434 (= lt!350758 (Found!8072 j!159))))

(assert (=> b!786434 (= lt!350757 (seekEntryOrOpen!0 (select (arr!20465 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42761 (_ BitVec 32)) Bool)

(assert (=> b!786434 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350750 () Unit!27198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27198)

(assert (=> b!786434 (= lt!350750 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786435 () Bool)

(assert (=> b!786435 (= e!437188 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20465 a!3186) j!159) a!3186 mask!3328) lt!350753))))

(declare-fun b!786436 () Bool)

(declare-fun res!532613 () Bool)

(assert (=> b!786436 (=> (not res!532613) (not e!437187))))

(assert (=> b!786436 (= res!532613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786427 () Bool)

(declare-fun res!532624 () Bool)

(assert (=> b!786427 (=> (not res!532624) (not e!437187))))

(assert (=> b!786427 (= res!532624 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20886 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20886 a!3186))))))

(declare-fun res!532610 () Bool)

(assert (=> start!67766 (=> (not res!532610) (not e!437192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67766 (= res!532610 (validMask!0 mask!3328))))

(assert (=> start!67766 e!437192))

(assert (=> start!67766 true))

(declare-fun array_inv!16239 (array!42761) Bool)

(assert (=> start!67766 (array_inv!16239 a!3186)))

(declare-fun b!786437 () Bool)

(assert (=> b!786437 (= e!437186 (= lt!350757 lt!350751))))

(declare-fun b!786438 () Bool)

(declare-fun res!532612 () Bool)

(assert (=> b!786438 (=> (not res!532612) (not e!437185))))

(assert (=> b!786438 (= res!532612 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20465 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67766 res!532610) b!786430))

(assert (= (and b!786430 res!532623) b!786433))

(assert (= (and b!786433 res!532609) b!786419))

(assert (= (and b!786419 res!532611) b!786416))

(assert (= (and b!786416 res!532622) b!786426))

(assert (= (and b!786426 res!532614) b!786436))

(assert (= (and b!786436 res!532613) b!786422))

(assert (= (and b!786422 res!532617) b!786427))

(assert (= (and b!786427 res!532624) b!786417))

(assert (= (and b!786417 res!532626) b!786438))

(assert (= (and b!786438 res!532612) b!786420))

(assert (= (and b!786420 c!87311) b!786435))

(assert (= (and b!786420 (not c!87311)) b!786431))

(assert (= (and b!786420 res!532620) b!786421))

(assert (= (and b!786421 res!532615) b!786434))

(assert (= (and b!786434 res!532618) b!786418))

(assert (= (and b!786434 (not res!532619)) b!786432))

(assert (= (and b!786432 (not res!532616)) b!786425))

(assert (= (and b!786425 (not res!532621)) b!786424))

(assert (= (and b!786424 c!87312) b!786428))

(assert (= (and b!786424 (not c!87312)) b!786429))

(assert (= (and b!786424 res!532627) b!786423))

(assert (= (and b!786423 res!532625) b!786437))

(declare-fun m!728289 () Bool)

(assert (=> b!786433 m!728289))

(assert (=> b!786433 m!728289))

(declare-fun m!728291 () Bool)

(assert (=> b!786433 m!728291))

(assert (=> b!786418 m!728289))

(assert (=> b!786418 m!728289))

(declare-fun m!728293 () Bool)

(assert (=> b!786418 m!728293))

(declare-fun m!728295 () Bool)

(assert (=> b!786426 m!728295))

(declare-fun m!728297 () Bool)

(assert (=> b!786425 m!728297))

(declare-fun m!728299 () Bool)

(assert (=> b!786425 m!728299))

(assert (=> b!786434 m!728289))

(assert (=> b!786434 m!728289))

(declare-fun m!728301 () Bool)

(assert (=> b!786434 m!728301))

(declare-fun m!728303 () Bool)

(assert (=> b!786434 m!728303))

(declare-fun m!728305 () Bool)

(assert (=> b!786434 m!728305))

(declare-fun m!728307 () Bool)

(assert (=> b!786421 m!728307))

(declare-fun m!728309 () Bool)

(assert (=> b!786421 m!728309))

(assert (=> b!786421 m!728297))

(assert (=> b!786421 m!728309))

(declare-fun m!728311 () Bool)

(assert (=> b!786421 m!728311))

(declare-fun m!728313 () Bool)

(assert (=> b!786421 m!728313))

(declare-fun m!728315 () Bool)

(assert (=> b!786422 m!728315))

(declare-fun m!728317 () Bool)

(assert (=> b!786423 m!728317))

(declare-fun m!728319 () Bool)

(assert (=> b!786423 m!728319))

(assert (=> b!786431 m!728289))

(assert (=> b!786431 m!728289))

(declare-fun m!728321 () Bool)

(assert (=> b!786431 m!728321))

(declare-fun m!728323 () Bool)

(assert (=> start!67766 m!728323))

(declare-fun m!728325 () Bool)

(assert (=> start!67766 m!728325))

(assert (=> b!786417 m!728289))

(assert (=> b!786417 m!728289))

(declare-fun m!728327 () Bool)

(assert (=> b!786417 m!728327))

(assert (=> b!786417 m!728327))

(assert (=> b!786417 m!728289))

(declare-fun m!728329 () Bool)

(assert (=> b!786417 m!728329))

(assert (=> b!786435 m!728289))

(assert (=> b!786435 m!728289))

(declare-fun m!728331 () Bool)

(assert (=> b!786435 m!728331))

(declare-fun m!728333 () Bool)

(assert (=> b!786436 m!728333))

(declare-fun m!728335 () Bool)

(assert (=> b!786438 m!728335))

(declare-fun m!728337 () Bool)

(assert (=> b!786416 m!728337))

(declare-fun m!728339 () Bool)

(assert (=> b!786419 m!728339))

(assert (=> b!786432 m!728289))

(assert (=> b!786432 m!728289))

(assert (=> b!786432 m!728321))

(push 1)

(assert (not b!786435))

(assert (not b!786421))

(assert (not b!786434))

(assert (not b!786423))

(assert (not b!786436))

(assert (not b!786422))

(assert (not b!786416))

(assert (not b!786432))

(assert (not b!786433))

(assert (not b!786417))

(assert (not b!786426))

(assert (not start!67766))

(assert (not b!786431))

(assert (not b!786419))

(assert (not b!786418))

(check-sat)

