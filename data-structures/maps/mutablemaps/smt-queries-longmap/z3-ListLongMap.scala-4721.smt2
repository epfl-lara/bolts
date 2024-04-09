; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65406 () Bool)

(assert start!65406)

(declare-fun b!743774 () Bool)

(declare-fun res!500957 () Bool)

(declare-fun e!415550 () Bool)

(assert (=> b!743774 (=> (not res!500957) (not e!415550))))

(declare-datatypes ((array!41532 0))(
  ( (array!41533 (arr!19876 (Array (_ BitVec 32) (_ BitVec 64))) (size!20297 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41532)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41532 (_ BitVec 32)) Bool)

(assert (=> b!743774 (= res!500957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743775 () Bool)

(declare-fun e!415545 () Bool)

(declare-fun e!415543 () Bool)

(assert (=> b!743775 (= e!415545 (not e!415543))))

(declare-fun res!500962 () Bool)

(assert (=> b!743775 (=> res!500962 e!415543)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7483 0))(
  ( (MissingZero!7483 (index!32299 (_ BitVec 32))) (Found!7483 (index!32300 (_ BitVec 32))) (Intermediate!7483 (undefined!8295 Bool) (index!32301 (_ BitVec 32)) (x!63290 (_ BitVec 32))) (Undefined!7483) (MissingVacant!7483 (index!32302 (_ BitVec 32))) )
))
(declare-fun lt!330415 () SeekEntryResult!7483)

(get-info :version)

(assert (=> b!743775 (= res!500962 (or (not ((_ is Intermediate!7483) lt!330415)) (bvslt x!1131 (x!63290 lt!330415)) (not (= x!1131 (x!63290 lt!330415))) (not (= index!1321 (index!32301 lt!330415)))))))

(declare-fun e!415547 () Bool)

(assert (=> b!743775 e!415547))

(declare-fun res!500973 () Bool)

(assert (=> b!743775 (=> (not res!500973) (not e!415547))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!743775 (= res!500973 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25446 0))(
  ( (Unit!25447) )
))
(declare-fun lt!330419 () Unit!25446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25446)

(assert (=> b!743775 (= lt!330419 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743776 () Bool)

(declare-fun res!500963 () Bool)

(declare-fun e!415548 () Bool)

(assert (=> b!743776 (=> (not res!500963) (not e!415548))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743776 (= res!500963 (and (= (size!20297 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20297 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20297 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743777 () Bool)

(declare-fun res!500959 () Bool)

(declare-fun e!415551 () Bool)

(assert (=> b!743777 (=> (not res!500959) (not e!415551))))

(declare-fun e!415549 () Bool)

(assert (=> b!743777 (= res!500959 e!415549)))

(declare-fun c!81789 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743777 (= c!81789 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743778 () Bool)

(declare-fun res!500970 () Bool)

(assert (=> b!743778 (=> (not res!500970) (not e!415548))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743778 (= res!500970 (validKeyInArray!0 k0!2102))))

(declare-fun b!743779 () Bool)

(declare-fun res!500960 () Bool)

(assert (=> b!743779 (=> (not res!500960) (not e!415548))))

(declare-fun arrayContainsKey!0 (array!41532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743779 (= res!500960 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!743780 () Bool)

(declare-fun lt!330414 () SeekEntryResult!7483)

(declare-fun e!415544 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41532 (_ BitVec 32)) SeekEntryResult!7483)

(assert (=> b!743780 (= e!415544 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19876 a!3186) j!159) a!3186 mask!3328) lt!330414))))

(declare-fun b!743782 () Bool)

(declare-fun res!500972 () Bool)

(assert (=> b!743782 (=> (not res!500972) (not e!415548))))

(assert (=> b!743782 (= res!500972 (validKeyInArray!0 (select (arr!19876 a!3186) j!159)))))

(declare-fun b!743783 () Bool)

(assert (=> b!743783 (= e!415549 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19876 a!3186) j!159) a!3186 mask!3328) (Found!7483 j!159)))))

(declare-fun lt!330412 () SeekEntryResult!7483)

(declare-fun b!743784 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41532 (_ BitVec 32)) SeekEntryResult!7483)

(assert (=> b!743784 (= e!415549 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19876 a!3186) j!159) a!3186 mask!3328) lt!330412))))

(declare-fun lt!330416 () (_ BitVec 64))

(declare-fun b!743785 () Bool)

(assert (=> b!743785 (= e!415543 (or (= (select (store (arr!19876 a!3186) i!1173 k0!2102) index!1321) lt!330416) (not (= (select (store (arr!19876 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!743786 () Bool)

(assert (=> b!743786 (= e!415548 e!415550)))

(declare-fun res!500969 () Bool)

(assert (=> b!743786 (=> (not res!500969) (not e!415550))))

(declare-fun lt!330413 () SeekEntryResult!7483)

(assert (=> b!743786 (= res!500969 (or (= lt!330413 (MissingZero!7483 i!1173)) (= lt!330413 (MissingVacant!7483 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41532 (_ BitVec 32)) SeekEntryResult!7483)

(assert (=> b!743786 (= lt!330413 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!743787 () Bool)

(declare-fun res!500965 () Bool)

(assert (=> b!743787 (=> (not res!500965) (not e!415550))))

(assert (=> b!743787 (= res!500965 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20297 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20297 a!3186))))))

(declare-fun res!500971 () Bool)

(assert (=> start!65406 (=> (not res!500971) (not e!415548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65406 (= res!500971 (validMask!0 mask!3328))))

(assert (=> start!65406 e!415548))

(assert (=> start!65406 true))

(declare-fun array_inv!15650 (array!41532) Bool)

(assert (=> start!65406 (array_inv!15650 a!3186)))

(declare-fun b!743781 () Bool)

(assert (=> b!743781 (= e!415551 e!415545)))

(declare-fun res!500967 () Bool)

(assert (=> b!743781 (=> (not res!500967) (not e!415545))))

(declare-fun lt!330418 () SeekEntryResult!7483)

(assert (=> b!743781 (= res!500967 (= lt!330418 lt!330415))))

(declare-fun lt!330417 () array!41532)

(assert (=> b!743781 (= lt!330415 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330416 lt!330417 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743781 (= lt!330418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330416 mask!3328) lt!330416 lt!330417 mask!3328))))

(assert (=> b!743781 (= lt!330416 (select (store (arr!19876 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!743781 (= lt!330417 (array!41533 (store (arr!19876 a!3186) i!1173 k0!2102) (size!20297 a!3186)))))

(declare-fun b!743788 () Bool)

(assert (=> b!743788 (= e!415547 e!415544)))

(declare-fun res!500968 () Bool)

(assert (=> b!743788 (=> (not res!500968) (not e!415544))))

(assert (=> b!743788 (= res!500968 (= (seekEntryOrOpen!0 (select (arr!19876 a!3186) j!159) a!3186 mask!3328) lt!330414))))

(assert (=> b!743788 (= lt!330414 (Found!7483 j!159))))

(declare-fun b!743789 () Bool)

(declare-fun res!500961 () Bool)

(assert (=> b!743789 (=> (not res!500961) (not e!415550))))

(declare-datatypes ((List!13931 0))(
  ( (Nil!13928) (Cons!13927 (h!14999 (_ BitVec 64)) (t!20254 List!13931)) )
))
(declare-fun arrayNoDuplicates!0 (array!41532 (_ BitVec 32) List!13931) Bool)

(assert (=> b!743789 (= res!500961 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13928))))

(declare-fun b!743790 () Bool)

(declare-fun res!500966 () Bool)

(assert (=> b!743790 (=> res!500966 e!415543)))

(assert (=> b!743790 (= res!500966 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19876 a!3186) j!159) a!3186 mask!3328) (Found!7483 j!159))))))

(declare-fun b!743791 () Bool)

(assert (=> b!743791 (= e!415550 e!415551)))

(declare-fun res!500964 () Bool)

(assert (=> b!743791 (=> (not res!500964) (not e!415551))))

(assert (=> b!743791 (= res!500964 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19876 a!3186) j!159) mask!3328) (select (arr!19876 a!3186) j!159) a!3186 mask!3328) lt!330412))))

(assert (=> b!743791 (= lt!330412 (Intermediate!7483 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743792 () Bool)

(declare-fun res!500958 () Bool)

(assert (=> b!743792 (=> (not res!500958) (not e!415551))))

(assert (=> b!743792 (= res!500958 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19876 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65406 res!500971) b!743776))

(assert (= (and b!743776 res!500963) b!743782))

(assert (= (and b!743782 res!500972) b!743778))

(assert (= (and b!743778 res!500970) b!743779))

(assert (= (and b!743779 res!500960) b!743786))

(assert (= (and b!743786 res!500969) b!743774))

(assert (= (and b!743774 res!500957) b!743789))

(assert (= (and b!743789 res!500961) b!743787))

(assert (= (and b!743787 res!500965) b!743791))

(assert (= (and b!743791 res!500964) b!743792))

(assert (= (and b!743792 res!500958) b!743777))

(assert (= (and b!743777 c!81789) b!743784))

(assert (= (and b!743777 (not c!81789)) b!743783))

(assert (= (and b!743777 res!500959) b!743781))

(assert (= (and b!743781 res!500967) b!743775))

(assert (= (and b!743775 res!500973) b!743788))

(assert (= (and b!743788 res!500968) b!743780))

(assert (= (and b!743775 (not res!500962)) b!743790))

(assert (= (and b!743790 (not res!500966)) b!743785))

(declare-fun m!694483 () Bool)

(assert (=> b!743779 m!694483))

(declare-fun m!694485 () Bool)

(assert (=> b!743781 m!694485))

(declare-fun m!694487 () Bool)

(assert (=> b!743781 m!694487))

(declare-fun m!694489 () Bool)

(assert (=> b!743781 m!694489))

(declare-fun m!694491 () Bool)

(assert (=> b!743781 m!694491))

(declare-fun m!694493 () Bool)

(assert (=> b!743781 m!694493))

(assert (=> b!743781 m!694491))

(declare-fun m!694495 () Bool)

(assert (=> b!743778 m!694495))

(declare-fun m!694497 () Bool)

(assert (=> b!743790 m!694497))

(assert (=> b!743790 m!694497))

(declare-fun m!694499 () Bool)

(assert (=> b!743790 m!694499))

(assert (=> b!743783 m!694497))

(assert (=> b!743783 m!694497))

(assert (=> b!743783 m!694499))

(assert (=> b!743785 m!694487))

(declare-fun m!694501 () Bool)

(assert (=> b!743785 m!694501))

(assert (=> b!743782 m!694497))

(assert (=> b!743782 m!694497))

(declare-fun m!694503 () Bool)

(assert (=> b!743782 m!694503))

(declare-fun m!694505 () Bool)

(assert (=> b!743792 m!694505))

(declare-fun m!694507 () Bool)

(assert (=> b!743786 m!694507))

(declare-fun m!694509 () Bool)

(assert (=> start!65406 m!694509))

(declare-fun m!694511 () Bool)

(assert (=> start!65406 m!694511))

(assert (=> b!743780 m!694497))

(assert (=> b!743780 m!694497))

(declare-fun m!694513 () Bool)

(assert (=> b!743780 m!694513))

(declare-fun m!694515 () Bool)

(assert (=> b!743775 m!694515))

(declare-fun m!694517 () Bool)

(assert (=> b!743775 m!694517))

(declare-fun m!694519 () Bool)

(assert (=> b!743789 m!694519))

(declare-fun m!694521 () Bool)

(assert (=> b!743774 m!694521))

(assert (=> b!743784 m!694497))

(assert (=> b!743784 m!694497))

(declare-fun m!694523 () Bool)

(assert (=> b!743784 m!694523))

(assert (=> b!743791 m!694497))

(assert (=> b!743791 m!694497))

(declare-fun m!694525 () Bool)

(assert (=> b!743791 m!694525))

(assert (=> b!743791 m!694525))

(assert (=> b!743791 m!694497))

(declare-fun m!694527 () Bool)

(assert (=> b!743791 m!694527))

(assert (=> b!743788 m!694497))

(assert (=> b!743788 m!694497))

(declare-fun m!694529 () Bool)

(assert (=> b!743788 m!694529))

(check-sat (not start!65406) (not b!743780) (not b!743778) (not b!743791) (not b!743783) (not b!743788) (not b!743789) (not b!743790) (not b!743781) (not b!743779) (not b!743774) (not b!743786) (not b!743775) (not b!743784) (not b!743782))
(check-sat)
