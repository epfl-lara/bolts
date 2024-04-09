; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65276 () Bool)

(assert start!65276)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7418 0))(
  ( (MissingZero!7418 (index!32039 (_ BitVec 32))) (Found!7418 (index!32040 (_ BitVec 32))) (Intermediate!7418 (undefined!8230 Bool) (index!32041 (_ BitVec 32)) (x!63049 (_ BitVec 32))) (Undefined!7418) (MissingVacant!7418 (index!32042 (_ BitVec 32))) )
))
(declare-fun lt!328678 () SeekEntryResult!7418)

(declare-fun e!413750 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41402 0))(
  ( (array!41403 (arr!19811 (Array (_ BitVec 32) (_ BitVec 64))) (size!20232 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41402)

(declare-fun b!739938 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41402 (_ BitVec 32)) SeekEntryResult!7418)

(assert (=> b!739938 (= e!413750 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328678))))

(declare-fun lt!328683 () (_ BitVec 32))

(declare-fun e!413748 () Bool)

(declare-fun lt!328679 () SeekEntryResult!7418)

(declare-fun b!739939 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41402 (_ BitVec 32)) SeekEntryResult!7418)

(assert (=> b!739939 (= e!413748 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328683 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328679)))))

(declare-fun b!739940 () Bool)

(declare-datatypes ((Unit!25290 0))(
  ( (Unit!25291) )
))
(declare-fun e!413747 () Unit!25290)

(declare-fun Unit!25292 () Unit!25290)

(assert (=> b!739940 (= e!413747 Unit!25292)))

(assert (=> b!739940 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328683 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328679)))

(declare-fun b!739941 () Bool)

(declare-fun e!413751 () Bool)

(declare-fun e!413745 () Bool)

(assert (=> b!739941 (= e!413751 e!413745)))

(declare-fun res!497663 () Bool)

(assert (=> b!739941 (=> (not res!497663) (not e!413745))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739941 (= res!497663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19811 a!3186) j!159) mask!3328) (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328679))))

(assert (=> b!739941 (= lt!328679 (Intermediate!7418 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739942 () Bool)

(declare-fun res!497672 () Bool)

(declare-fun e!413742 () Bool)

(assert (=> b!739942 (=> (not res!497672) (not e!413742))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739942 (= res!497672 (and (= (size!20232 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20232 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20232 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739943 () Bool)

(declare-fun e!413749 () Bool)

(declare-fun e!413743 () Bool)

(assert (=> b!739943 (= e!413749 (not e!413743))))

(declare-fun res!497669 () Bool)

(assert (=> b!739943 (=> res!497669 e!413743)))

(declare-fun lt!328676 () SeekEntryResult!7418)

(assert (=> b!739943 (= res!497669 (or (not (is-Intermediate!7418 lt!328676)) (bvsge x!1131 (x!63049 lt!328676))))))

(declare-fun lt!328677 () SeekEntryResult!7418)

(assert (=> b!739943 (= lt!328677 (Found!7418 j!159))))

(declare-fun e!413741 () Bool)

(assert (=> b!739943 e!413741))

(declare-fun res!497676 () Bool)

(assert (=> b!739943 (=> (not res!497676) (not e!413741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41402 (_ BitVec 32)) Bool)

(assert (=> b!739943 (= res!497676 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328675 () Unit!25290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41402 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25290)

(assert (=> b!739943 (= lt!328675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739944 () Bool)

(declare-fun res!497671 () Bool)

(assert (=> b!739944 (=> (not res!497671) (not e!413751))))

(declare-datatypes ((List!13866 0))(
  ( (Nil!13863) (Cons!13862 (h!14934 (_ BitVec 64)) (t!20189 List!13866)) )
))
(declare-fun arrayNoDuplicates!0 (array!41402 (_ BitVec 32) List!13866) Bool)

(assert (=> b!739944 (= res!497671 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13863))))

(declare-fun b!739945 () Bool)

(declare-fun res!497674 () Bool)

(declare-fun e!413740 () Bool)

(assert (=> b!739945 (=> res!497674 e!413740)))

(assert (=> b!739945 (= res!497674 e!413748)))

(declare-fun c!81521 () Bool)

(declare-fun lt!328680 () Bool)

(assert (=> b!739945 (= c!81521 lt!328680)))

(declare-fun b!739946 () Bool)

(declare-fun res!497665 () Bool)

(assert (=> b!739946 (=> (not res!497665) (not e!413751))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!739946 (= res!497665 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20232 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20232 a!3186))))))

(declare-fun b!739947 () Bool)

(declare-fun res!497659 () Bool)

(assert (=> b!739947 (=> (not res!497659) (not e!413745))))

(declare-fun e!413744 () Bool)

(assert (=> b!739947 (= res!497659 e!413744)))

(declare-fun c!81520 () Bool)

(assert (=> b!739947 (= c!81520 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!497662 () Bool)

(assert (=> start!65276 (=> (not res!497662) (not e!413742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65276 (= res!497662 (validMask!0 mask!3328))))

(assert (=> start!65276 e!413742))

(assert (=> start!65276 true))

(declare-fun array_inv!15585 (array!41402) Bool)

(assert (=> start!65276 (array_inv!15585 a!3186)))

(declare-fun b!739948 () Bool)

(assert (=> b!739948 (= e!413741 e!413750)))

(declare-fun res!497670 () Bool)

(assert (=> b!739948 (=> (not res!497670) (not e!413750))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41402 (_ BitVec 32)) SeekEntryResult!7418)

(assert (=> b!739948 (= res!497670 (= (seekEntryOrOpen!0 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328678))))

(assert (=> b!739948 (= lt!328678 (Found!7418 j!159))))

(declare-fun b!739949 () Bool)

(declare-fun res!497667 () Bool)

(assert (=> b!739949 (=> (not res!497667) (not e!413742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739949 (= res!497667 (validKeyInArray!0 (select (arr!19811 a!3186) j!159)))))

(declare-fun b!739950 () Bool)

(assert (=> b!739950 (= e!413743 e!413740)))

(declare-fun res!497661 () Bool)

(assert (=> b!739950 (=> res!497661 e!413740)))

(assert (=> b!739950 (= res!497661 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328683 #b00000000000000000000000000000000) (bvsge lt!328683 (size!20232 a!3186))))))

(declare-fun lt!328681 () Unit!25290)

(assert (=> b!739950 (= lt!328681 e!413747)))

(declare-fun c!81522 () Bool)

(assert (=> b!739950 (= c!81522 lt!328680)))

(assert (=> b!739950 (= lt!328680 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739950 (= lt!328683 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739951 () Bool)

(declare-fun res!497660 () Bool)

(assert (=> b!739951 (=> (not res!497660) (not e!413742))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!739951 (= res!497660 (validKeyInArray!0 k!2102))))

(declare-fun b!739952 () Bool)

(assert (=> b!739952 (= e!413740 true)))

(declare-fun lt!328688 () (_ BitVec 64))

(declare-fun lt!328682 () array!41402)

(declare-fun lt!328687 () SeekEntryResult!7418)

(assert (=> b!739952 (= lt!328687 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328683 lt!328688 lt!328682 mask!3328))))

(declare-fun b!739953 () Bool)

(declare-fun res!497668 () Bool)

(assert (=> b!739953 (=> (not res!497668) (not e!413751))))

(assert (=> b!739953 (= res!497668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739954 () Bool)

(assert (=> b!739954 (= e!413748 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328683 resIntermediateIndex!5 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328677)))))

(declare-fun b!739955 () Bool)

(assert (=> b!739955 (= e!413744 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) (Found!7418 j!159)))))

(declare-fun b!739956 () Bool)

(assert (=> b!739956 (= e!413745 e!413749)))

(declare-fun res!497666 () Bool)

(assert (=> b!739956 (=> (not res!497666) (not e!413749))))

(declare-fun lt!328684 () SeekEntryResult!7418)

(assert (=> b!739956 (= res!497666 (= lt!328684 lt!328676))))

(assert (=> b!739956 (= lt!328676 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328688 lt!328682 mask!3328))))

(assert (=> b!739956 (= lt!328684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328688 mask!3328) lt!328688 lt!328682 mask!3328))))

(assert (=> b!739956 (= lt!328688 (select (store (arr!19811 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739956 (= lt!328682 (array!41403 (store (arr!19811 a!3186) i!1173 k!2102) (size!20232 a!3186)))))

(declare-fun b!739957 () Bool)

(assert (=> b!739957 (= e!413742 e!413751)))

(declare-fun res!497675 () Bool)

(assert (=> b!739957 (=> (not res!497675) (not e!413751))))

(declare-fun lt!328686 () SeekEntryResult!7418)

(assert (=> b!739957 (= res!497675 (or (= lt!328686 (MissingZero!7418 i!1173)) (= lt!328686 (MissingVacant!7418 i!1173))))))

(assert (=> b!739957 (= lt!328686 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739958 () Bool)

(declare-fun res!497664 () Bool)

(assert (=> b!739958 (=> (not res!497664) (not e!413745))))

(assert (=> b!739958 (= res!497664 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19811 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739959 () Bool)

(assert (=> b!739959 (= e!413744 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328679))))

(declare-fun b!739960 () Bool)

(declare-fun res!497673 () Bool)

(assert (=> b!739960 (=> (not res!497673) (not e!413742))))

(declare-fun arrayContainsKey!0 (array!41402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739960 (= res!497673 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739961 () Bool)

(declare-fun Unit!25293 () Unit!25290)

(assert (=> b!739961 (= e!413747 Unit!25293)))

(declare-fun lt!328685 () SeekEntryResult!7418)

(assert (=> b!739961 (= lt!328685 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19811 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!739961 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328683 resIntermediateIndex!5 (select (arr!19811 a!3186) j!159) a!3186 mask!3328) lt!328677)))

(assert (= (and start!65276 res!497662) b!739942))

(assert (= (and b!739942 res!497672) b!739949))

(assert (= (and b!739949 res!497667) b!739951))

(assert (= (and b!739951 res!497660) b!739960))

(assert (= (and b!739960 res!497673) b!739957))

(assert (= (and b!739957 res!497675) b!739953))

(assert (= (and b!739953 res!497668) b!739944))

(assert (= (and b!739944 res!497671) b!739946))

(assert (= (and b!739946 res!497665) b!739941))

(assert (= (and b!739941 res!497663) b!739958))

(assert (= (and b!739958 res!497664) b!739947))

(assert (= (and b!739947 c!81520) b!739959))

(assert (= (and b!739947 (not c!81520)) b!739955))

(assert (= (and b!739947 res!497659) b!739956))

(assert (= (and b!739956 res!497666) b!739943))

(assert (= (and b!739943 res!497676) b!739948))

(assert (= (and b!739948 res!497670) b!739938))

(assert (= (and b!739943 (not res!497669)) b!739950))

(assert (= (and b!739950 c!81522) b!739940))

(assert (= (and b!739950 (not c!81522)) b!739961))

(assert (= (and b!739950 (not res!497661)) b!739945))

(assert (= (and b!739945 c!81521) b!739939))

(assert (= (and b!739945 (not c!81521)) b!739954))

(assert (= (and b!739945 (not res!497674)) b!739952))

(declare-fun m!691261 () Bool)

(assert (=> b!739953 m!691261))

(declare-fun m!691263 () Bool)

(assert (=> b!739949 m!691263))

(assert (=> b!739949 m!691263))

(declare-fun m!691265 () Bool)

(assert (=> b!739949 m!691265))

(declare-fun m!691267 () Bool)

(assert (=> b!739951 m!691267))

(assert (=> b!739940 m!691263))

(assert (=> b!739940 m!691263))

(declare-fun m!691269 () Bool)

(assert (=> b!739940 m!691269))

(assert (=> b!739938 m!691263))

(assert (=> b!739938 m!691263))

(declare-fun m!691271 () Bool)

(assert (=> b!739938 m!691271))

(assert (=> b!739939 m!691263))

(assert (=> b!739939 m!691263))

(assert (=> b!739939 m!691269))

(declare-fun m!691273 () Bool)

(assert (=> b!739952 m!691273))

(declare-fun m!691275 () Bool)

(assert (=> start!65276 m!691275))

(declare-fun m!691277 () Bool)

(assert (=> start!65276 m!691277))

(assert (=> b!739948 m!691263))

(assert (=> b!739948 m!691263))

(declare-fun m!691279 () Bool)

(assert (=> b!739948 m!691279))

(assert (=> b!739941 m!691263))

(assert (=> b!739941 m!691263))

(declare-fun m!691281 () Bool)

(assert (=> b!739941 m!691281))

(assert (=> b!739941 m!691281))

(assert (=> b!739941 m!691263))

(declare-fun m!691283 () Bool)

(assert (=> b!739941 m!691283))

(declare-fun m!691285 () Bool)

(assert (=> b!739944 m!691285))

(declare-fun m!691287 () Bool)

(assert (=> b!739960 m!691287))

(assert (=> b!739961 m!691263))

(assert (=> b!739961 m!691263))

(declare-fun m!691289 () Bool)

(assert (=> b!739961 m!691289))

(assert (=> b!739961 m!691263))

(declare-fun m!691291 () Bool)

(assert (=> b!739961 m!691291))

(assert (=> b!739955 m!691263))

(assert (=> b!739955 m!691263))

(assert (=> b!739955 m!691289))

(assert (=> b!739954 m!691263))

(assert (=> b!739954 m!691263))

(assert (=> b!739954 m!691291))

(declare-fun m!691293 () Bool)

(assert (=> b!739956 m!691293))

(declare-fun m!691295 () Bool)

(assert (=> b!739956 m!691295))

(assert (=> b!739956 m!691293))

(declare-fun m!691297 () Bool)

(assert (=> b!739956 m!691297))

(declare-fun m!691299 () Bool)

(assert (=> b!739956 m!691299))

(declare-fun m!691301 () Bool)

(assert (=> b!739956 m!691301))

(assert (=> b!739959 m!691263))

(assert (=> b!739959 m!691263))

(declare-fun m!691303 () Bool)

(assert (=> b!739959 m!691303))

(declare-fun m!691305 () Bool)

(assert (=> b!739957 m!691305))

(declare-fun m!691307 () Bool)

(assert (=> b!739958 m!691307))

(declare-fun m!691309 () Bool)

(assert (=> b!739950 m!691309))

(declare-fun m!691311 () Bool)

(assert (=> b!739943 m!691311))

(declare-fun m!691313 () Bool)

(assert (=> b!739943 m!691313))

(push 1)

