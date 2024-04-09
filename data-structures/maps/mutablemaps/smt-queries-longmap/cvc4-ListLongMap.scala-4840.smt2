; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66678 () Bool)

(assert start!66678)

(declare-fun b!767945 () Bool)

(declare-fun e!427673 () Bool)

(declare-fun e!427672 () Bool)

(assert (=> b!767945 (= e!427673 e!427672)))

(declare-fun res!519545 () Bool)

(assert (=> b!767945 (=> (not res!519545) (not e!427672))))

(declare-datatypes ((array!42272 0))(
  ( (array!42273 (arr!20234 (Array (_ BitVec 32) (_ BitVec 64))) (size!20655 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42272)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7841 0))(
  ( (MissingZero!7841 (index!33731 (_ BitVec 32))) (Found!7841 (index!33732 (_ BitVec 32))) (Intermediate!7841 (undefined!8653 Bool) (index!33733 (_ BitVec 32)) (x!64680 (_ BitVec 32))) (Undefined!7841) (MissingVacant!7841 (index!33734 (_ BitVec 32))) )
))
(declare-fun lt!341650 () SeekEntryResult!7841)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42272 (_ BitVec 32)) SeekEntryResult!7841)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767945 (= res!519545 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20234 a!3186) j!159) mask!3328) (select (arr!20234 a!3186) j!159) a!3186 mask!3328) lt!341650))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767945 (= lt!341650 (Intermediate!7841 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!427665 () Bool)

(declare-fun b!767946 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42272 (_ BitVec 32)) SeekEntryResult!7841)

(assert (=> b!767946 (= e!427665 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20234 a!3186) j!159) a!3186 mask!3328) (Found!7841 j!159)))))

(declare-fun b!767947 () Bool)

(declare-fun e!427669 () Bool)

(assert (=> b!767947 (= e!427669 e!427673)))

(declare-fun res!519553 () Bool)

(assert (=> b!767947 (=> (not res!519553) (not e!427673))))

(declare-fun lt!341647 () SeekEntryResult!7841)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!767947 (= res!519553 (or (= lt!341647 (MissingZero!7841 i!1173)) (= lt!341647 (MissingVacant!7841 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42272 (_ BitVec 32)) SeekEntryResult!7841)

(assert (=> b!767947 (= lt!341647 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!767948 () Bool)

(declare-fun res!519558 () Bool)

(assert (=> b!767948 (=> (not res!519558) (not e!427673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42272 (_ BitVec 32)) Bool)

(assert (=> b!767948 (= res!519558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!341649 () SeekEntryResult!7841)

(declare-fun b!767949 () Bool)

(declare-fun e!427670 () Bool)

(assert (=> b!767949 (= e!427670 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20234 a!3186) j!159) a!3186 mask!3328) lt!341649))))

(declare-fun b!767950 () Bool)

(declare-fun res!519547 () Bool)

(assert (=> b!767950 (=> (not res!519547) (not e!427672))))

(assert (=> b!767950 (= res!519547 e!427665)))

(declare-fun c!84594 () Bool)

(assert (=> b!767950 (= c!84594 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!519552 () Bool)

(assert (=> start!66678 (=> (not res!519552) (not e!427669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66678 (= res!519552 (validMask!0 mask!3328))))

(assert (=> start!66678 e!427669))

(assert (=> start!66678 true))

(declare-fun array_inv!16008 (array!42272) Bool)

(assert (=> start!66678 (array_inv!16008 a!3186)))

(declare-fun b!767951 () Bool)

(declare-fun res!519551 () Bool)

(assert (=> b!767951 (=> (not res!519551) (not e!427669))))

(assert (=> b!767951 (= res!519551 (and (= (size!20655 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20655 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20655 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767952 () Bool)

(declare-fun e!427664 () Bool)

(declare-fun e!427667 () Bool)

(assert (=> b!767952 (= e!427664 (not e!427667))))

(declare-fun res!519554 () Bool)

(assert (=> b!767952 (=> res!519554 e!427667)))

(declare-fun lt!341655 () SeekEntryResult!7841)

(assert (=> b!767952 (= res!519554 (or (not (is-Intermediate!7841 lt!341655)) (bvsge x!1131 (x!64680 lt!341655))))))

(declare-fun e!427666 () Bool)

(assert (=> b!767952 e!427666))

(declare-fun res!519556 () Bool)

(assert (=> b!767952 (=> (not res!519556) (not e!427666))))

(assert (=> b!767952 (= res!519556 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26408 0))(
  ( (Unit!26409) )
))
(declare-fun lt!341653 () Unit!26408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42272 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26408)

(assert (=> b!767952 (= lt!341653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!767953 () Bool)

(declare-fun res!519549 () Bool)

(assert (=> b!767953 (=> (not res!519549) (not e!427673))))

(assert (=> b!767953 (= res!519549 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20655 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20655 a!3186))))))

(declare-fun b!767954 () Bool)

(assert (=> b!767954 (= e!427672 e!427664)))

(declare-fun res!519555 () Bool)

(assert (=> b!767954 (=> (not res!519555) (not e!427664))))

(declare-fun lt!341654 () SeekEntryResult!7841)

(assert (=> b!767954 (= res!519555 (= lt!341654 lt!341655))))

(declare-fun lt!341648 () array!42272)

(declare-fun lt!341656 () (_ BitVec 64))

(assert (=> b!767954 (= lt!341655 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341656 lt!341648 mask!3328))))

(assert (=> b!767954 (= lt!341654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341656 mask!3328) lt!341656 lt!341648 mask!3328))))

(assert (=> b!767954 (= lt!341656 (select (store (arr!20234 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!767954 (= lt!341648 (array!42273 (store (arr!20234 a!3186) i!1173 k!2102) (size!20655 a!3186)))))

(declare-fun b!767955 () Bool)

(declare-fun e!427668 () Bool)

(assert (=> b!767955 (= e!427667 e!427668)))

(declare-fun res!519543 () Bool)

(assert (=> b!767955 (=> res!519543 e!427668)))

(assert (=> b!767955 (= res!519543 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!341652 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767955 (= lt!341652 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767956 () Bool)

(declare-fun res!519557 () Bool)

(assert (=> b!767956 (=> (not res!519557) (not e!427672))))

(assert (=> b!767956 (= res!519557 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20234 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767957 () Bool)

(assert (=> b!767957 (= e!427668 true)))

(declare-fun lt!341651 () SeekEntryResult!7841)

(assert (=> b!767957 (= lt!341651 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20234 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767958 () Bool)

(declare-fun res!519548 () Bool)

(assert (=> b!767958 (=> (not res!519548) (not e!427669))))

(declare-fun arrayContainsKey!0 (array!42272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767958 (= res!519548 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767959 () Bool)

(assert (=> b!767959 (= e!427665 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20234 a!3186) j!159) a!3186 mask!3328) lt!341650))))

(declare-fun b!767960 () Bool)

(declare-fun res!519544 () Bool)

(assert (=> b!767960 (=> (not res!519544) (not e!427669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767960 (= res!519544 (validKeyInArray!0 k!2102))))

(declare-fun b!767961 () Bool)

(declare-fun res!519542 () Bool)

(assert (=> b!767961 (=> (not res!519542) (not e!427669))))

(assert (=> b!767961 (= res!519542 (validKeyInArray!0 (select (arr!20234 a!3186) j!159)))))

(declare-fun b!767962 () Bool)

(assert (=> b!767962 (= e!427666 e!427670)))

(declare-fun res!519546 () Bool)

(assert (=> b!767962 (=> (not res!519546) (not e!427670))))

(assert (=> b!767962 (= res!519546 (= (seekEntryOrOpen!0 (select (arr!20234 a!3186) j!159) a!3186 mask!3328) lt!341649))))

(assert (=> b!767962 (= lt!341649 (Found!7841 j!159))))

(declare-fun b!767963 () Bool)

(declare-fun res!519550 () Bool)

(assert (=> b!767963 (=> (not res!519550) (not e!427673))))

(declare-datatypes ((List!14289 0))(
  ( (Nil!14286) (Cons!14285 (h!15381 (_ BitVec 64)) (t!20612 List!14289)) )
))
(declare-fun arrayNoDuplicates!0 (array!42272 (_ BitVec 32) List!14289) Bool)

(assert (=> b!767963 (= res!519550 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14286))))

(assert (= (and start!66678 res!519552) b!767951))

(assert (= (and b!767951 res!519551) b!767961))

(assert (= (and b!767961 res!519542) b!767960))

(assert (= (and b!767960 res!519544) b!767958))

(assert (= (and b!767958 res!519548) b!767947))

(assert (= (and b!767947 res!519553) b!767948))

(assert (= (and b!767948 res!519558) b!767963))

(assert (= (and b!767963 res!519550) b!767953))

(assert (= (and b!767953 res!519549) b!767945))

(assert (= (and b!767945 res!519545) b!767956))

(assert (= (and b!767956 res!519557) b!767950))

(assert (= (and b!767950 c!84594) b!767959))

(assert (= (and b!767950 (not c!84594)) b!767946))

(assert (= (and b!767950 res!519547) b!767954))

(assert (= (and b!767954 res!519555) b!767952))

(assert (= (and b!767952 res!519556) b!767962))

(assert (= (and b!767962 res!519546) b!767949))

(assert (= (and b!767952 (not res!519554)) b!767955))

(assert (= (and b!767955 (not res!519543)) b!767957))

(declare-fun m!713639 () Bool)

(assert (=> b!767946 m!713639))

(assert (=> b!767946 m!713639))

(declare-fun m!713641 () Bool)

(assert (=> b!767946 m!713641))

(assert (=> b!767949 m!713639))

(assert (=> b!767949 m!713639))

(declare-fun m!713643 () Bool)

(assert (=> b!767949 m!713643))

(declare-fun m!713645 () Bool)

(assert (=> start!66678 m!713645))

(declare-fun m!713647 () Bool)

(assert (=> start!66678 m!713647))

(declare-fun m!713649 () Bool)

(assert (=> b!767955 m!713649))

(declare-fun m!713651 () Bool)

(assert (=> b!767960 m!713651))

(declare-fun m!713653 () Bool)

(assert (=> b!767952 m!713653))

(declare-fun m!713655 () Bool)

(assert (=> b!767952 m!713655))

(assert (=> b!767959 m!713639))

(assert (=> b!767959 m!713639))

(declare-fun m!713657 () Bool)

(assert (=> b!767959 m!713657))

(declare-fun m!713659 () Bool)

(assert (=> b!767958 m!713659))

(assert (=> b!767957 m!713639))

(assert (=> b!767957 m!713639))

(assert (=> b!767957 m!713641))

(declare-fun m!713661 () Bool)

(assert (=> b!767963 m!713661))

(assert (=> b!767962 m!713639))

(assert (=> b!767962 m!713639))

(declare-fun m!713663 () Bool)

(assert (=> b!767962 m!713663))

(assert (=> b!767961 m!713639))

(assert (=> b!767961 m!713639))

(declare-fun m!713665 () Bool)

(assert (=> b!767961 m!713665))

(declare-fun m!713667 () Bool)

(assert (=> b!767954 m!713667))

(declare-fun m!713669 () Bool)

(assert (=> b!767954 m!713669))

(assert (=> b!767954 m!713667))

(declare-fun m!713671 () Bool)

(assert (=> b!767954 m!713671))

(declare-fun m!713673 () Bool)

(assert (=> b!767954 m!713673))

(declare-fun m!713675 () Bool)

(assert (=> b!767954 m!713675))

(declare-fun m!713677 () Bool)

(assert (=> b!767947 m!713677))

(declare-fun m!713679 () Bool)

(assert (=> b!767956 m!713679))

(assert (=> b!767945 m!713639))

(assert (=> b!767945 m!713639))

(declare-fun m!713681 () Bool)

(assert (=> b!767945 m!713681))

(assert (=> b!767945 m!713681))

(assert (=> b!767945 m!713639))

(declare-fun m!713683 () Bool)

(assert (=> b!767945 m!713683))

(declare-fun m!713685 () Bool)

(assert (=> b!767948 m!713685))

(push 1)

