; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65852 () Bool)

(assert start!65852)

(declare-fun b!758056 () Bool)

(declare-fun res!512899 () Bool)

(declare-fun e!422662 () Bool)

(assert (=> b!758056 (=> (not res!512899) (not e!422662))))

(declare-datatypes ((array!41978 0))(
  ( (array!41979 (arr!20099 (Array (_ BitVec 32) (_ BitVec 64))) (size!20520 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41978)

(declare-datatypes ((List!14154 0))(
  ( (Nil!14151) (Cons!14150 (h!15222 (_ BitVec 64)) (t!20477 List!14154)) )
))
(declare-fun arrayNoDuplicates!0 (array!41978 (_ BitVec 32) List!14154) Bool)

(assert (=> b!758056 (= res!512899 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14151))))

(declare-fun b!758057 () Bool)

(declare-fun e!422668 () Bool)

(declare-fun e!422659 () Bool)

(assert (=> b!758057 (= e!422668 e!422659)))

(declare-fun res!512911 () Bool)

(assert (=> b!758057 (=> res!512911 e!422659)))

(declare-datatypes ((SeekEntryResult!7706 0))(
  ( (MissingZero!7706 (index!33191 (_ BitVec 32))) (Found!7706 (index!33192 (_ BitVec 32))) (Intermediate!7706 (undefined!8518 Bool) (index!33193 (_ BitVec 32)) (x!64105 (_ BitVec 32))) (Undefined!7706) (MissingVacant!7706 (index!33194 (_ BitVec 32))) )
))
(declare-fun lt!337667 () SeekEntryResult!7706)

(declare-fun lt!337661 () SeekEntryResult!7706)

(assert (=> b!758057 (= res!512911 (not (= lt!337667 lt!337661)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41978 (_ BitVec 32)) SeekEntryResult!7706)

(assert (=> b!758057 (= lt!337667 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20099 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758058 () Bool)

(declare-fun e!422661 () Bool)

(declare-fun lt!337668 () SeekEntryResult!7706)

(assert (=> b!758058 (= e!422661 (= lt!337668 lt!337667))))

(declare-fun b!758059 () Bool)

(declare-fun lt!337664 () SeekEntryResult!7706)

(declare-fun e!422666 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41978 (_ BitVec 32)) SeekEntryResult!7706)

(assert (=> b!758059 (= e!422666 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20099 a!3186) j!159) a!3186 mask!3328) lt!337664))))

(declare-fun b!758060 () Bool)

(declare-fun res!512912 () Bool)

(declare-fun e!422670 () Bool)

(assert (=> b!758060 (=> (not res!512912) (not e!422670))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758060 (= res!512912 (and (= (size!20520 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20520 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20520 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758061 () Bool)

(declare-fun res!512908 () Bool)

(assert (=> b!758061 (=> (not res!512908) (not e!422670))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758061 (= res!512908 (validKeyInArray!0 k!2102))))

(declare-fun res!512905 () Bool)

(assert (=> start!65852 (=> (not res!512905) (not e!422670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65852 (= res!512905 (validMask!0 mask!3328))))

(assert (=> start!65852 e!422670))

(assert (=> start!65852 true))

(declare-fun array_inv!15873 (array!41978) Bool)

(assert (=> start!65852 (array_inv!15873 a!3186)))

(declare-fun b!758062 () Bool)

(declare-datatypes ((Unit!26226 0))(
  ( (Unit!26227) )
))
(declare-fun e!422664 () Unit!26226)

(declare-fun Unit!26228 () Unit!26226)

(assert (=> b!758062 (= e!422664 Unit!26228)))

(assert (=> b!758062 false))

(declare-fun b!758063 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!422667 () Bool)

(assert (=> b!758063 (= e!422667 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20099 a!3186) j!159) a!3186 mask!3328) lt!337661))))

(declare-fun b!758064 () Bool)

(declare-fun res!512903 () Bool)

(assert (=> b!758064 (=> (not res!512903) (not e!422670))))

(declare-fun arrayContainsKey!0 (array!41978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758064 (= res!512903 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758065 () Bool)

(declare-fun e!422665 () Bool)

(assert (=> b!758065 (= e!422659 e!422665)))

(declare-fun res!512902 () Bool)

(assert (=> b!758065 (=> res!512902 e!422665)))

(declare-fun lt!337665 () (_ BitVec 64))

(declare-fun lt!337660 () (_ BitVec 64))

(assert (=> b!758065 (= res!512902 (= lt!337665 lt!337660))))

(assert (=> b!758065 (= lt!337665 (select (store (arr!20099 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758066 () Bool)

(assert (=> b!758066 (= e!422666 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20099 a!3186) j!159) a!3186 mask!3328) (Found!7706 j!159)))))

(declare-fun b!758067 () Bool)

(declare-fun res!512901 () Bool)

(assert (=> b!758067 (=> (not res!512901) (not e!422662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41978 (_ BitVec 32)) Bool)

(assert (=> b!758067 (= res!512901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758068 () Bool)

(declare-fun e!422660 () Bool)

(declare-fun e!422663 () Bool)

(assert (=> b!758068 (= e!422660 e!422663)))

(declare-fun res!512907 () Bool)

(assert (=> b!758068 (=> (not res!512907) (not e!422663))))

(declare-fun lt!337666 () SeekEntryResult!7706)

(declare-fun lt!337663 () SeekEntryResult!7706)

(assert (=> b!758068 (= res!512907 (= lt!337666 lt!337663))))

(declare-fun lt!337669 () array!41978)

(assert (=> b!758068 (= lt!337663 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337660 lt!337669 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758068 (= lt!337666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337660 mask!3328) lt!337660 lt!337669 mask!3328))))

(assert (=> b!758068 (= lt!337660 (select (store (arr!20099 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758068 (= lt!337669 (array!41979 (store (arr!20099 a!3186) i!1173 k!2102) (size!20520 a!3186)))))

(declare-fun b!758069 () Bool)

(assert (=> b!758069 (= e!422670 e!422662)))

(declare-fun res!512897 () Bool)

(assert (=> b!758069 (=> (not res!512897) (not e!422662))))

(declare-fun lt!337659 () SeekEntryResult!7706)

(assert (=> b!758069 (= res!512897 (or (= lt!337659 (MissingZero!7706 i!1173)) (= lt!337659 (MissingVacant!7706 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41978 (_ BitVec 32)) SeekEntryResult!7706)

(assert (=> b!758069 (= lt!337659 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758070 () Bool)

(declare-fun res!512913 () Bool)

(assert (=> b!758070 (=> (not res!512913) (not e!422660))))

(assert (=> b!758070 (= res!512913 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20099 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758071 () Bool)

(declare-fun res!512895 () Bool)

(assert (=> b!758071 (=> (not res!512895) (not e!422661))))

(assert (=> b!758071 (= res!512895 (= (seekEntryOrOpen!0 lt!337660 lt!337669 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337660 lt!337669 mask!3328)))))

(declare-fun b!758072 () Bool)

(assert (=> b!758072 (= e!422665 true)))

(assert (=> b!758072 e!422661))

(declare-fun res!512910 () Bool)

(assert (=> b!758072 (=> (not res!512910) (not e!422661))))

(assert (=> b!758072 (= res!512910 (= lt!337665 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337670 () Unit!26226)

(assert (=> b!758072 (= lt!337670 e!422664)))

(declare-fun c!82961 () Bool)

(assert (=> b!758072 (= c!82961 (= lt!337665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758073 () Bool)

(declare-fun res!512896 () Bool)

(assert (=> b!758073 (=> (not res!512896) (not e!422662))))

(assert (=> b!758073 (= res!512896 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20520 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20520 a!3186))))))

(declare-fun b!758074 () Bool)

(declare-fun res!512909 () Bool)

(assert (=> b!758074 (=> (not res!512909) (not e!422660))))

(assert (=> b!758074 (= res!512909 e!422666)))

(declare-fun c!82962 () Bool)

(assert (=> b!758074 (= c!82962 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758075 () Bool)

(declare-fun Unit!26229 () Unit!26226)

(assert (=> b!758075 (= e!422664 Unit!26229)))

(declare-fun b!758076 () Bool)

(assert (=> b!758076 (= e!422662 e!422660)))

(declare-fun res!512906 () Bool)

(assert (=> b!758076 (=> (not res!512906) (not e!422660))))

(assert (=> b!758076 (= res!512906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20099 a!3186) j!159) mask!3328) (select (arr!20099 a!3186) j!159) a!3186 mask!3328) lt!337664))))

(assert (=> b!758076 (= lt!337664 (Intermediate!7706 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758077 () Bool)

(assert (=> b!758077 (= e!422663 (not e!422668))))

(declare-fun res!512898 () Bool)

(assert (=> b!758077 (=> res!512898 e!422668)))

(assert (=> b!758077 (= res!512898 (or (not (is-Intermediate!7706 lt!337663)) (bvslt x!1131 (x!64105 lt!337663)) (not (= x!1131 (x!64105 lt!337663))) (not (= index!1321 (index!33193 lt!337663)))))))

(assert (=> b!758077 e!422667))

(declare-fun res!512900 () Bool)

(assert (=> b!758077 (=> (not res!512900) (not e!422667))))

(assert (=> b!758077 (= res!512900 (= lt!337668 lt!337661))))

(assert (=> b!758077 (= lt!337661 (Found!7706 j!159))))

(assert (=> b!758077 (= lt!337668 (seekEntryOrOpen!0 (select (arr!20099 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!758077 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337662 () Unit!26226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41978 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26226)

(assert (=> b!758077 (= lt!337662 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758078 () Bool)

(declare-fun res!512904 () Bool)

(assert (=> b!758078 (=> (not res!512904) (not e!422670))))

(assert (=> b!758078 (= res!512904 (validKeyInArray!0 (select (arr!20099 a!3186) j!159)))))

(assert (= (and start!65852 res!512905) b!758060))

(assert (= (and b!758060 res!512912) b!758078))

(assert (= (and b!758078 res!512904) b!758061))

(assert (= (and b!758061 res!512908) b!758064))

(assert (= (and b!758064 res!512903) b!758069))

(assert (= (and b!758069 res!512897) b!758067))

(assert (= (and b!758067 res!512901) b!758056))

(assert (= (and b!758056 res!512899) b!758073))

(assert (= (and b!758073 res!512896) b!758076))

(assert (= (and b!758076 res!512906) b!758070))

(assert (= (and b!758070 res!512913) b!758074))

(assert (= (and b!758074 c!82962) b!758059))

(assert (= (and b!758074 (not c!82962)) b!758066))

(assert (= (and b!758074 res!512909) b!758068))

(assert (= (and b!758068 res!512907) b!758077))

(assert (= (and b!758077 res!512900) b!758063))

(assert (= (and b!758077 (not res!512898)) b!758057))

(assert (= (and b!758057 (not res!512911)) b!758065))

(assert (= (and b!758065 (not res!512902)) b!758072))

(assert (= (and b!758072 c!82961) b!758062))

(assert (= (and b!758072 (not c!82961)) b!758075))

(assert (= (and b!758072 res!512910) b!758071))

(assert (= (and b!758071 res!512895) b!758058))

(declare-fun m!705681 () Bool)

(assert (=> b!758065 m!705681))

(declare-fun m!705683 () Bool)

(assert (=> b!758065 m!705683))

(declare-fun m!705685 () Bool)

(assert (=> b!758077 m!705685))

(assert (=> b!758077 m!705685))

(declare-fun m!705687 () Bool)

(assert (=> b!758077 m!705687))

(declare-fun m!705689 () Bool)

(assert (=> b!758077 m!705689))

(declare-fun m!705691 () Bool)

(assert (=> b!758077 m!705691))

(declare-fun m!705693 () Bool)

(assert (=> b!758056 m!705693))

(assert (=> b!758059 m!705685))

(assert (=> b!758059 m!705685))

(declare-fun m!705695 () Bool)

(assert (=> b!758059 m!705695))

(declare-fun m!705697 () Bool)

(assert (=> b!758064 m!705697))

(assert (=> b!758076 m!705685))

(assert (=> b!758076 m!705685))

(declare-fun m!705699 () Bool)

(assert (=> b!758076 m!705699))

(assert (=> b!758076 m!705699))

(assert (=> b!758076 m!705685))

(declare-fun m!705701 () Bool)

(assert (=> b!758076 m!705701))

(declare-fun m!705703 () Bool)

(assert (=> b!758071 m!705703))

(declare-fun m!705705 () Bool)

(assert (=> b!758071 m!705705))

(assert (=> b!758078 m!705685))

(assert (=> b!758078 m!705685))

(declare-fun m!705707 () Bool)

(assert (=> b!758078 m!705707))

(declare-fun m!705709 () Bool)

(assert (=> b!758067 m!705709))

(declare-fun m!705711 () Bool)

(assert (=> b!758061 m!705711))

(declare-fun m!705713 () Bool)

(assert (=> start!65852 m!705713))

(declare-fun m!705715 () Bool)

(assert (=> start!65852 m!705715))

(assert (=> b!758063 m!705685))

(assert (=> b!758063 m!705685))

(declare-fun m!705717 () Bool)

(assert (=> b!758063 m!705717))

(assert (=> b!758066 m!705685))

(assert (=> b!758066 m!705685))

(declare-fun m!705719 () Bool)

(assert (=> b!758066 m!705719))

(declare-fun m!705721 () Bool)

(assert (=> b!758070 m!705721))

(assert (=> b!758057 m!705685))

(assert (=> b!758057 m!705685))

(assert (=> b!758057 m!705719))

(declare-fun m!705723 () Bool)

(assert (=> b!758069 m!705723))

(declare-fun m!705725 () Bool)

(assert (=> b!758068 m!705725))

(assert (=> b!758068 m!705681))

(declare-fun m!705727 () Bool)

(assert (=> b!758068 m!705727))

(declare-fun m!705729 () Bool)

(assert (=> b!758068 m!705729))

(assert (=> b!758068 m!705725))

(declare-fun m!705731 () Bool)

(assert (=> b!758068 m!705731))

(push 1)

