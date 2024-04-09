; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66676 () Bool)

(assert start!66676)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42270 0))(
  ( (array!42271 (arr!20233 (Array (_ BitVec 32) (_ BitVec 64))) (size!20654 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42270)

(declare-fun e!427636 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!767888 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7840 0))(
  ( (MissingZero!7840 (index!33727 (_ BitVec 32))) (Found!7840 (index!33728 (_ BitVec 32))) (Intermediate!7840 (undefined!8652 Bool) (index!33729 (_ BitVec 32)) (x!64679 (_ BitVec 32))) (Undefined!7840) (MissingVacant!7840 (index!33730 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42270 (_ BitVec 32)) SeekEntryResult!7840)

(assert (=> b!767888 (= e!427636 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20233 a!3186) j!159) a!3186 mask!3328) (Found!7840 j!159)))))

(declare-fun b!767889 () Bool)

(declare-fun e!427635 () Bool)

(declare-fun e!427637 () Bool)

(assert (=> b!767889 (= e!427635 e!427637)))

(declare-fun res!519507 () Bool)

(assert (=> b!767889 (=> res!519507 e!427637)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767889 (= res!519507 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!341626 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767889 (= lt!341626 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767890 () Bool)

(declare-fun e!427640 () Bool)

(assert (=> b!767890 (= e!427640 (not e!427635))))

(declare-fun res!519501 () Bool)

(assert (=> b!767890 (=> res!519501 e!427635)))

(declare-fun lt!341620 () SeekEntryResult!7840)

(get-info :version)

(assert (=> b!767890 (= res!519501 (or (not ((_ is Intermediate!7840) lt!341620)) (bvsge x!1131 (x!64679 lt!341620))))))

(declare-fun e!427639 () Bool)

(assert (=> b!767890 e!427639))

(declare-fun res!519500 () Bool)

(assert (=> b!767890 (=> (not res!519500) (not e!427639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42270 (_ BitVec 32)) Bool)

(assert (=> b!767890 (= res!519500 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26406 0))(
  ( (Unit!26407) )
))
(declare-fun lt!341622 () Unit!26406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26406)

(assert (=> b!767890 (= lt!341622 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!767891 () Bool)

(assert (=> b!767891 (= e!427637 true)))

(declare-fun lt!341621 () SeekEntryResult!7840)

(assert (=> b!767891 (= lt!341621 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20233 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767893 () Bool)

(declare-fun res!519502 () Bool)

(declare-fun e!427634 () Bool)

(assert (=> b!767893 (=> (not res!519502) (not e!427634))))

(declare-datatypes ((List!14288 0))(
  ( (Nil!14285) (Cons!14284 (h!15380 (_ BitVec 64)) (t!20611 List!14288)) )
))
(declare-fun arrayNoDuplicates!0 (array!42270 (_ BitVec 32) List!14288) Bool)

(assert (=> b!767893 (= res!519502 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14285))))

(declare-fun b!767894 () Bool)

(declare-fun res!519506 () Bool)

(declare-fun e!427642 () Bool)

(assert (=> b!767894 (=> (not res!519506) (not e!427642))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!767894 (= res!519506 (and (= (size!20654 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20654 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20654 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767895 () Bool)

(declare-fun res!519492 () Bool)

(assert (=> b!767895 (=> (not res!519492) (not e!427634))))

(assert (=> b!767895 (= res!519492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767896 () Bool)

(assert (=> b!767896 (= e!427642 e!427634)))

(declare-fun res!519494 () Bool)

(assert (=> b!767896 (=> (not res!519494) (not e!427634))))

(declare-fun lt!341623 () SeekEntryResult!7840)

(assert (=> b!767896 (= res!519494 (or (= lt!341623 (MissingZero!7840 i!1173)) (= lt!341623 (MissingVacant!7840 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42270 (_ BitVec 32)) SeekEntryResult!7840)

(assert (=> b!767896 (= lt!341623 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!767892 () Bool)

(declare-fun res!519498 () Bool)

(assert (=> b!767892 (=> (not res!519498) (not e!427642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767892 (= res!519498 (validKeyInArray!0 k0!2102))))

(declare-fun res!519503 () Bool)

(assert (=> start!66676 (=> (not res!519503) (not e!427642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66676 (= res!519503 (validMask!0 mask!3328))))

(assert (=> start!66676 e!427642))

(assert (=> start!66676 true))

(declare-fun array_inv!16007 (array!42270) Bool)

(assert (=> start!66676 (array_inv!16007 a!3186)))

(declare-fun b!767897 () Bool)

(declare-fun res!519505 () Bool)

(declare-fun e!427638 () Bool)

(assert (=> b!767897 (=> (not res!519505) (not e!427638))))

(assert (=> b!767897 (= res!519505 e!427636)))

(declare-fun c!84591 () Bool)

(assert (=> b!767897 (= c!84591 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767898 () Bool)

(declare-fun res!519504 () Bool)

(assert (=> b!767898 (=> (not res!519504) (not e!427634))))

(assert (=> b!767898 (= res!519504 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20654 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20654 a!3186))))))

(declare-fun b!767899 () Bool)

(declare-fun e!427641 () Bool)

(assert (=> b!767899 (= e!427639 e!427641)))

(declare-fun res!519499 () Bool)

(assert (=> b!767899 (=> (not res!519499) (not e!427641))))

(declare-fun lt!341625 () SeekEntryResult!7840)

(assert (=> b!767899 (= res!519499 (= (seekEntryOrOpen!0 (select (arr!20233 a!3186) j!159) a!3186 mask!3328) lt!341625))))

(assert (=> b!767899 (= lt!341625 (Found!7840 j!159))))

(declare-fun b!767900 () Bool)

(assert (=> b!767900 (= e!427638 e!427640)))

(declare-fun res!519491 () Bool)

(assert (=> b!767900 (=> (not res!519491) (not e!427640))))

(declare-fun lt!341618 () SeekEntryResult!7840)

(assert (=> b!767900 (= res!519491 (= lt!341618 lt!341620))))

(declare-fun lt!341619 () (_ BitVec 64))

(declare-fun lt!341617 () array!42270)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42270 (_ BitVec 32)) SeekEntryResult!7840)

(assert (=> b!767900 (= lt!341620 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341619 lt!341617 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767900 (= lt!341618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341619 mask!3328) lt!341619 lt!341617 mask!3328))))

(assert (=> b!767900 (= lt!341619 (select (store (arr!20233 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!767900 (= lt!341617 (array!42271 (store (arr!20233 a!3186) i!1173 k0!2102) (size!20654 a!3186)))))

(declare-fun b!767901 () Bool)

(declare-fun res!519495 () Bool)

(assert (=> b!767901 (=> (not res!519495) (not e!427638))))

(assert (=> b!767901 (= res!519495 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20233 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767902 () Bool)

(declare-fun res!519497 () Bool)

(assert (=> b!767902 (=> (not res!519497) (not e!427642))))

(assert (=> b!767902 (= res!519497 (validKeyInArray!0 (select (arr!20233 a!3186) j!159)))))

(declare-fun b!767903 () Bool)

(assert (=> b!767903 (= e!427641 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20233 a!3186) j!159) a!3186 mask!3328) lt!341625))))

(declare-fun b!767904 () Bool)

(declare-fun res!519496 () Bool)

(assert (=> b!767904 (=> (not res!519496) (not e!427642))))

(declare-fun arrayContainsKey!0 (array!42270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767904 (= res!519496 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767905 () Bool)

(assert (=> b!767905 (= e!427634 e!427638)))

(declare-fun res!519493 () Bool)

(assert (=> b!767905 (=> (not res!519493) (not e!427638))))

(declare-fun lt!341624 () SeekEntryResult!7840)

(assert (=> b!767905 (= res!519493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20233 a!3186) j!159) mask!3328) (select (arr!20233 a!3186) j!159) a!3186 mask!3328) lt!341624))))

(assert (=> b!767905 (= lt!341624 (Intermediate!7840 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767906 () Bool)

(assert (=> b!767906 (= e!427636 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20233 a!3186) j!159) a!3186 mask!3328) lt!341624))))

(assert (= (and start!66676 res!519503) b!767894))

(assert (= (and b!767894 res!519506) b!767902))

(assert (= (and b!767902 res!519497) b!767892))

(assert (= (and b!767892 res!519498) b!767904))

(assert (= (and b!767904 res!519496) b!767896))

(assert (= (and b!767896 res!519494) b!767895))

(assert (= (and b!767895 res!519492) b!767893))

(assert (= (and b!767893 res!519502) b!767898))

(assert (= (and b!767898 res!519504) b!767905))

(assert (= (and b!767905 res!519493) b!767901))

(assert (= (and b!767901 res!519495) b!767897))

(assert (= (and b!767897 c!84591) b!767906))

(assert (= (and b!767897 (not c!84591)) b!767888))

(assert (= (and b!767897 res!519505) b!767900))

(assert (= (and b!767900 res!519491) b!767890))

(assert (= (and b!767890 res!519500) b!767899))

(assert (= (and b!767899 res!519499) b!767903))

(assert (= (and b!767890 (not res!519501)) b!767889))

(assert (= (and b!767889 (not res!519507)) b!767891))

(declare-fun m!713591 () Bool)

(assert (=> b!767901 m!713591))

(declare-fun m!713593 () Bool)

(assert (=> b!767902 m!713593))

(assert (=> b!767902 m!713593))

(declare-fun m!713595 () Bool)

(assert (=> b!767902 m!713595))

(declare-fun m!713597 () Bool)

(assert (=> b!767889 m!713597))

(declare-fun m!713599 () Bool)

(assert (=> b!767900 m!713599))

(declare-fun m!713601 () Bool)

(assert (=> b!767900 m!713601))

(declare-fun m!713603 () Bool)

(assert (=> b!767900 m!713603))

(declare-fun m!713605 () Bool)

(assert (=> b!767900 m!713605))

(assert (=> b!767900 m!713601))

(declare-fun m!713607 () Bool)

(assert (=> b!767900 m!713607))

(assert (=> b!767888 m!713593))

(assert (=> b!767888 m!713593))

(declare-fun m!713609 () Bool)

(assert (=> b!767888 m!713609))

(declare-fun m!713611 () Bool)

(assert (=> b!767890 m!713611))

(declare-fun m!713613 () Bool)

(assert (=> b!767890 m!713613))

(declare-fun m!713615 () Bool)

(assert (=> b!767895 m!713615))

(declare-fun m!713617 () Bool)

(assert (=> start!66676 m!713617))

(declare-fun m!713619 () Bool)

(assert (=> start!66676 m!713619))

(assert (=> b!767891 m!713593))

(assert (=> b!767891 m!713593))

(assert (=> b!767891 m!713609))

(declare-fun m!713621 () Bool)

(assert (=> b!767892 m!713621))

(declare-fun m!713623 () Bool)

(assert (=> b!767904 m!713623))

(assert (=> b!767903 m!713593))

(assert (=> b!767903 m!713593))

(declare-fun m!713625 () Bool)

(assert (=> b!767903 m!713625))

(assert (=> b!767905 m!713593))

(assert (=> b!767905 m!713593))

(declare-fun m!713627 () Bool)

(assert (=> b!767905 m!713627))

(assert (=> b!767905 m!713627))

(assert (=> b!767905 m!713593))

(declare-fun m!713629 () Bool)

(assert (=> b!767905 m!713629))

(assert (=> b!767906 m!713593))

(assert (=> b!767906 m!713593))

(declare-fun m!713631 () Bool)

(assert (=> b!767906 m!713631))

(declare-fun m!713633 () Bool)

(assert (=> b!767896 m!713633))

(assert (=> b!767899 m!713593))

(assert (=> b!767899 m!713593))

(declare-fun m!713635 () Bool)

(assert (=> b!767899 m!713635))

(declare-fun m!713637 () Bool)

(assert (=> b!767893 m!713637))

(check-sat (not b!767904) (not start!66676) (not b!767903) (not b!767905) (not b!767902) (not b!767889) (not b!767899) (not b!767893) (not b!767890) (not b!767906) (not b!767891) (not b!767895) (not b!767888) (not b!767900) (not b!767896) (not b!767892))
(check-sat)
