; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64694 () Bool)

(assert start!64694)

(declare-fun b!728880 () Bool)

(declare-fun res!489473 () Bool)

(declare-fun e!408007 () Bool)

(assert (=> b!728880 (=> (not res!489473) (not e!408007))))

(declare-datatypes ((array!41096 0))(
  ( (array!41097 (arr!19664 (Array (_ BitVec 32) (_ BitVec 64))) (size!20085 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41096)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728880 (= res!489473 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728881 () Bool)

(declare-fun e!408002 () Bool)

(assert (=> b!728881 (= e!408007 e!408002)))

(declare-fun res!489476 () Bool)

(assert (=> b!728881 (=> (not res!489476) (not e!408002))))

(declare-datatypes ((SeekEntryResult!7271 0))(
  ( (MissingZero!7271 (index!31451 (_ BitVec 32))) (Found!7271 (index!31452 (_ BitVec 32))) (Intermediate!7271 (undefined!8083 Bool) (index!31453 (_ BitVec 32)) (x!62462 (_ BitVec 32))) (Undefined!7271) (MissingVacant!7271 (index!31454 (_ BitVec 32))) )
))
(declare-fun lt!322908 () SeekEntryResult!7271)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728881 (= res!489476 (or (= lt!322908 (MissingZero!7271 i!1173)) (= lt!322908 (MissingVacant!7271 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41096 (_ BitVec 32)) SeekEntryResult!7271)

(assert (=> b!728881 (= lt!322908 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728882 () Bool)

(declare-fun res!489485 () Bool)

(assert (=> b!728882 (=> (not res!489485) (not e!408002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41096 (_ BitVec 32)) Bool)

(assert (=> b!728882 (= res!489485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728883 () Bool)

(declare-fun res!489482 () Bool)

(assert (=> b!728883 (=> (not res!489482) (not e!408007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728883 (= res!489482 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!322913 () SeekEntryResult!7271)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!728884 () Bool)

(declare-fun e!408009 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41096 (_ BitVec 32)) SeekEntryResult!7271)

(assert (=> b!728884 (= e!408009 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19664 a!3186) j!159) a!3186 mask!3328) lt!322913))))

(declare-fun res!489477 () Bool)

(assert (=> start!64694 (=> (not res!489477) (not e!408007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64694 (= res!489477 (validMask!0 mask!3328))))

(assert (=> start!64694 e!408007))

(assert (=> start!64694 true))

(declare-fun array_inv!15438 (array!41096) Bool)

(assert (=> start!64694 (array_inv!15438 a!3186)))

(declare-fun b!728885 () Bool)

(declare-fun res!489474 () Bool)

(assert (=> b!728885 (=> (not res!489474) (not e!408007))))

(assert (=> b!728885 (= res!489474 (and (= (size!20085 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20085 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20085 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728886 () Bool)

(declare-fun e!408001 () Bool)

(assert (=> b!728886 (= e!408001 e!408009)))

(declare-fun res!489480 () Bool)

(assert (=> b!728886 (=> (not res!489480) (not e!408009))))

(assert (=> b!728886 (= res!489480 (= (seekEntryOrOpen!0 (select (arr!19664 a!3186) j!159) a!3186 mask!3328) lt!322913))))

(assert (=> b!728886 (= lt!322913 (Found!7271 j!159))))

(declare-fun b!728887 () Bool)

(declare-fun res!489475 () Bool)

(declare-fun e!408004 () Bool)

(assert (=> b!728887 (=> (not res!489475) (not e!408004))))

(declare-fun e!408008 () Bool)

(assert (=> b!728887 (= res!489475 e!408008)))

(declare-fun c!80079 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!728887 (= c!80079 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728888 () Bool)

(declare-fun res!489486 () Bool)

(assert (=> b!728888 (=> (not res!489486) (not e!408007))))

(assert (=> b!728888 (= res!489486 (validKeyInArray!0 (select (arr!19664 a!3186) j!159)))))

(declare-fun b!728889 () Bool)

(assert (=> b!728889 (= e!408002 e!408004)))

(declare-fun res!489484 () Bool)

(assert (=> b!728889 (=> (not res!489484) (not e!408004))))

(declare-fun lt!322911 () SeekEntryResult!7271)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41096 (_ BitVec 32)) SeekEntryResult!7271)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728889 (= res!489484 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19664 a!3186) j!159) mask!3328) (select (arr!19664 a!3186) j!159) a!3186 mask!3328) lt!322911))))

(assert (=> b!728889 (= lt!322911 (Intermediate!7271 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!728890 () Bool)

(assert (=> b!728890 (= e!408008 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19664 a!3186) j!159) a!3186 mask!3328) lt!322911))))

(declare-fun b!728891 () Bool)

(declare-fun res!489472 () Bool)

(assert (=> b!728891 (=> (not res!489472) (not e!408002))))

(declare-datatypes ((List!13719 0))(
  ( (Nil!13716) (Cons!13715 (h!14775 (_ BitVec 64)) (t!20042 List!13719)) )
))
(declare-fun arrayNoDuplicates!0 (array!41096 (_ BitVec 32) List!13719) Bool)

(assert (=> b!728891 (= res!489472 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13716))))

(declare-fun b!728892 () Bool)

(declare-fun res!489479 () Bool)

(assert (=> b!728892 (=> (not res!489479) (not e!408004))))

(assert (=> b!728892 (= res!489479 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19664 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728893 () Bool)

(declare-fun res!489471 () Bool)

(assert (=> b!728893 (=> (not res!489471) (not e!408002))))

(assert (=> b!728893 (= res!489471 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20085 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20085 a!3186))))))

(declare-fun b!728894 () Bool)

(declare-fun e!408005 () Bool)

(assert (=> b!728894 (= e!408005 true)))

(declare-fun lt!322914 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728894 (= lt!322914 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728895 () Bool)

(declare-fun e!408006 () Bool)

(assert (=> b!728895 (= e!408006 (not e!408005))))

(declare-fun res!489481 () Bool)

(assert (=> b!728895 (=> res!489481 e!408005)))

(declare-fun lt!322909 () SeekEntryResult!7271)

(assert (=> b!728895 (= res!489481 (or (not (is-Intermediate!7271 lt!322909)) (bvsge x!1131 (x!62462 lt!322909))))))

(assert (=> b!728895 e!408001))

(declare-fun res!489483 () Bool)

(assert (=> b!728895 (=> (not res!489483) (not e!408001))))

(assert (=> b!728895 (= res!489483 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24860 0))(
  ( (Unit!24861) )
))
(declare-fun lt!322910 () Unit!24860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41096 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24860)

(assert (=> b!728895 (= lt!322910 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728896 () Bool)

(assert (=> b!728896 (= e!408004 e!408006)))

(declare-fun res!489478 () Bool)

(assert (=> b!728896 (=> (not res!489478) (not e!408006))))

(declare-fun lt!322916 () SeekEntryResult!7271)

(assert (=> b!728896 (= res!489478 (= lt!322916 lt!322909))))

(declare-fun lt!322912 () (_ BitVec 64))

(declare-fun lt!322915 () array!41096)

(assert (=> b!728896 (= lt!322909 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322912 lt!322915 mask!3328))))

(assert (=> b!728896 (= lt!322916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322912 mask!3328) lt!322912 lt!322915 mask!3328))))

(assert (=> b!728896 (= lt!322912 (select (store (arr!19664 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728896 (= lt!322915 (array!41097 (store (arr!19664 a!3186) i!1173 k!2102) (size!20085 a!3186)))))

(declare-fun b!728897 () Bool)

(assert (=> b!728897 (= e!408008 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19664 a!3186) j!159) a!3186 mask!3328) (Found!7271 j!159)))))

(assert (= (and start!64694 res!489477) b!728885))

(assert (= (and b!728885 res!489474) b!728888))

(assert (= (and b!728888 res!489486) b!728883))

(assert (= (and b!728883 res!489482) b!728880))

(assert (= (and b!728880 res!489473) b!728881))

(assert (= (and b!728881 res!489476) b!728882))

(assert (= (and b!728882 res!489485) b!728891))

(assert (= (and b!728891 res!489472) b!728893))

(assert (= (and b!728893 res!489471) b!728889))

(assert (= (and b!728889 res!489484) b!728892))

(assert (= (and b!728892 res!489479) b!728887))

(assert (= (and b!728887 c!80079) b!728890))

(assert (= (and b!728887 (not c!80079)) b!728897))

(assert (= (and b!728887 res!489475) b!728896))

(assert (= (and b!728896 res!489478) b!728895))

(assert (= (and b!728895 res!489483) b!728886))

(assert (= (and b!728886 res!489480) b!728884))

(assert (= (and b!728895 (not res!489481)) b!728894))

(declare-fun m!682669 () Bool)

(assert (=> b!728886 m!682669))

(assert (=> b!728886 m!682669))

(declare-fun m!682671 () Bool)

(assert (=> b!728886 m!682671))

(assert (=> b!728889 m!682669))

(assert (=> b!728889 m!682669))

(declare-fun m!682673 () Bool)

(assert (=> b!728889 m!682673))

(assert (=> b!728889 m!682673))

(assert (=> b!728889 m!682669))

(declare-fun m!682675 () Bool)

(assert (=> b!728889 m!682675))

(declare-fun m!682677 () Bool)

(assert (=> b!728881 m!682677))

(assert (=> b!728884 m!682669))

(assert (=> b!728884 m!682669))

(declare-fun m!682679 () Bool)

(assert (=> b!728884 m!682679))

(assert (=> b!728897 m!682669))

(assert (=> b!728897 m!682669))

(declare-fun m!682681 () Bool)

(assert (=> b!728897 m!682681))

(declare-fun m!682683 () Bool)

(assert (=> b!728896 m!682683))

(declare-fun m!682685 () Bool)

(assert (=> b!728896 m!682685))

(declare-fun m!682687 () Bool)

(assert (=> b!728896 m!682687))

(declare-fun m!682689 () Bool)

(assert (=> b!728896 m!682689))

(declare-fun m!682691 () Bool)

(assert (=> b!728896 m!682691))

(assert (=> b!728896 m!682683))

(declare-fun m!682693 () Bool)

(assert (=> start!64694 m!682693))

(declare-fun m!682695 () Bool)

(assert (=> start!64694 m!682695))

(assert (=> b!728890 m!682669))

(assert (=> b!728890 m!682669))

(declare-fun m!682697 () Bool)

(assert (=> b!728890 m!682697))

(declare-fun m!682699 () Bool)

(assert (=> b!728891 m!682699))

(declare-fun m!682701 () Bool)

(assert (=> b!728880 m!682701))

(declare-fun m!682703 () Bool)

(assert (=> b!728894 m!682703))

(declare-fun m!682705 () Bool)

(assert (=> b!728892 m!682705))

(declare-fun m!682707 () Bool)

(assert (=> b!728883 m!682707))

(declare-fun m!682709 () Bool)

(assert (=> b!728882 m!682709))

(assert (=> b!728888 m!682669))

(assert (=> b!728888 m!682669))

(declare-fun m!682711 () Bool)

(assert (=> b!728888 m!682711))

(declare-fun m!682713 () Bool)

(assert (=> b!728895 m!682713))

(declare-fun m!682715 () Bool)

(assert (=> b!728895 m!682715))

(push 1)

