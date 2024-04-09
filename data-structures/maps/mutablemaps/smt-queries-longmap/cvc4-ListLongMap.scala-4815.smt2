; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66252 () Bool)

(assert start!66252)

(declare-fun b!762683 () Bool)

(declare-fun res!515916 () Bool)

(declare-fun e!425084 () Bool)

(assert (=> b!762683 (=> (not res!515916) (not e!425084))))

(declare-datatypes ((array!42110 0))(
  ( (array!42111 (arr!20159 (Array (_ BitVec 32) (_ BitVec 64))) (size!20580 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42110)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42110 (_ BitVec 32)) Bool)

(assert (=> b!762683 (= res!515916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762684 () Bool)

(declare-fun res!515912 () Bool)

(declare-fun e!425080 () Bool)

(assert (=> b!762684 (=> (not res!515912) (not e!425080))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762684 (= res!515912 (validKeyInArray!0 (select (arr!20159 a!3186) j!159)))))

(declare-fun b!762685 () Bool)

(declare-fun res!515913 () Bool)

(assert (=> b!762685 (=> (not res!515913) (not e!425080))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762685 (= res!515913 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762686 () Bool)

(declare-fun e!425081 () Bool)

(assert (=> b!762686 (= e!425081 false)))

(declare-fun lt!339611 () Bool)

(declare-fun e!425083 () Bool)

(assert (=> b!762686 (= lt!339611 e!425083)))

(declare-fun c!83772 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762686 (= c!83772 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762687 () Bool)

(declare-fun res!515917 () Bool)

(assert (=> b!762687 (=> (not res!515917) (not e!425084))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!762687 (= res!515917 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20580 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20580 a!3186))))))

(declare-fun b!762688 () Bool)

(assert (=> b!762688 (= e!425080 e!425084)))

(declare-fun res!515915 () Bool)

(assert (=> b!762688 (=> (not res!515915) (not e!425084))))

(declare-datatypes ((SeekEntryResult!7766 0))(
  ( (MissingZero!7766 (index!33431 (_ BitVec 32))) (Found!7766 (index!33432 (_ BitVec 32))) (Intermediate!7766 (undefined!8578 Bool) (index!33433 (_ BitVec 32)) (x!64363 (_ BitVec 32))) (Undefined!7766) (MissingVacant!7766 (index!33434 (_ BitVec 32))) )
))
(declare-fun lt!339613 () SeekEntryResult!7766)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762688 (= res!515915 (or (= lt!339613 (MissingZero!7766 i!1173)) (= lt!339613 (MissingVacant!7766 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42110 (_ BitVec 32)) SeekEntryResult!7766)

(assert (=> b!762688 (= lt!339613 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!515922 () Bool)

(assert (=> start!66252 (=> (not res!515922) (not e!425080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66252 (= res!515922 (validMask!0 mask!3328))))

(assert (=> start!66252 e!425080))

(assert (=> start!66252 true))

(declare-fun array_inv!15933 (array!42110) Bool)

(assert (=> start!66252 (array_inv!15933 a!3186)))

(declare-fun lt!339612 () SeekEntryResult!7766)

(declare-fun b!762689 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42110 (_ BitVec 32)) SeekEntryResult!7766)

(assert (=> b!762689 (= e!425083 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20159 a!3186) j!159) a!3186 mask!3328) lt!339612)))))

(declare-fun b!762690 () Bool)

(declare-fun res!515921 () Bool)

(assert (=> b!762690 (=> (not res!515921) (not e!425080))))

(assert (=> b!762690 (= res!515921 (and (= (size!20580 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20580 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20580 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762691 () Bool)

(assert (=> b!762691 (= e!425084 e!425081)))

(declare-fun res!515919 () Bool)

(assert (=> b!762691 (=> (not res!515919) (not e!425081))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762691 (= res!515919 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20159 a!3186) j!159) mask!3328) (select (arr!20159 a!3186) j!159) a!3186 mask!3328) lt!339612))))

(assert (=> b!762691 (= lt!339612 (Intermediate!7766 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762692 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42110 (_ BitVec 32)) SeekEntryResult!7766)

(assert (=> b!762692 (= e!425083 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20159 a!3186) j!159) a!3186 mask!3328) (Found!7766 j!159))))))

(declare-fun b!762693 () Bool)

(declare-fun res!515920 () Bool)

(assert (=> b!762693 (=> (not res!515920) (not e!425081))))

(assert (=> b!762693 (= res!515920 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20159 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762694 () Bool)

(declare-fun res!515914 () Bool)

(assert (=> b!762694 (=> (not res!515914) (not e!425084))))

(declare-datatypes ((List!14214 0))(
  ( (Nil!14211) (Cons!14210 (h!15294 (_ BitVec 64)) (t!20537 List!14214)) )
))
(declare-fun arrayNoDuplicates!0 (array!42110 (_ BitVec 32) List!14214) Bool)

(assert (=> b!762694 (= res!515914 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14211))))

(declare-fun b!762695 () Bool)

(declare-fun res!515918 () Bool)

(assert (=> b!762695 (=> (not res!515918) (not e!425080))))

(assert (=> b!762695 (= res!515918 (validKeyInArray!0 k!2102))))

(assert (= (and start!66252 res!515922) b!762690))

(assert (= (and b!762690 res!515921) b!762684))

(assert (= (and b!762684 res!515912) b!762695))

(assert (= (and b!762695 res!515918) b!762685))

(assert (= (and b!762685 res!515913) b!762688))

(assert (= (and b!762688 res!515915) b!762683))

(assert (= (and b!762683 res!515916) b!762694))

(assert (= (and b!762694 res!515914) b!762687))

(assert (= (and b!762687 res!515917) b!762691))

(assert (= (and b!762691 res!515919) b!762693))

(assert (= (and b!762693 res!515920) b!762686))

(assert (= (and b!762686 c!83772) b!762689))

(assert (= (and b!762686 (not c!83772)) b!762692))

(declare-fun m!709399 () Bool)

(assert (=> b!762694 m!709399))

(declare-fun m!709401 () Bool)

(assert (=> b!762695 m!709401))

(declare-fun m!709403 () Bool)

(assert (=> b!762691 m!709403))

(assert (=> b!762691 m!709403))

(declare-fun m!709405 () Bool)

(assert (=> b!762691 m!709405))

(assert (=> b!762691 m!709405))

(assert (=> b!762691 m!709403))

(declare-fun m!709407 () Bool)

(assert (=> b!762691 m!709407))

(declare-fun m!709409 () Bool)

(assert (=> b!762693 m!709409))

(assert (=> b!762692 m!709403))

(assert (=> b!762692 m!709403))

(declare-fun m!709411 () Bool)

(assert (=> b!762692 m!709411))

(declare-fun m!709413 () Bool)

(assert (=> b!762685 m!709413))

(declare-fun m!709415 () Bool)

(assert (=> b!762688 m!709415))

(declare-fun m!709417 () Bool)

(assert (=> b!762683 m!709417))

(assert (=> b!762684 m!709403))

(assert (=> b!762684 m!709403))

(declare-fun m!709419 () Bool)

(assert (=> b!762684 m!709419))

(assert (=> b!762689 m!709403))

(assert (=> b!762689 m!709403))

(declare-fun m!709421 () Bool)

(assert (=> b!762689 m!709421))

(declare-fun m!709423 () Bool)

(assert (=> start!66252 m!709423))

(declare-fun m!709425 () Bool)

(assert (=> start!66252 m!709425))

(push 1)

