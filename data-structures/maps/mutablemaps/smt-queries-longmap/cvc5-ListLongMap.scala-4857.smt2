; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66928 () Bool)

(assert start!66928)

(declare-fun b!771887 () Bool)

(declare-fun res!522215 () Bool)

(declare-fun e!429738 () Bool)

(assert (=> b!771887 (=> (not res!522215) (not e!429738))))

(declare-datatypes ((array!42376 0))(
  ( (array!42377 (arr!20283 (Array (_ BitVec 32) (_ BitVec 64))) (size!20704 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42376)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42376 (_ BitVec 32)) Bool)

(assert (=> b!771887 (= res!522215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!771888 () Bool)

(declare-fun e!429737 () Bool)

(assert (=> b!771888 (= e!429737 e!429738)))

(declare-fun res!522212 () Bool)

(assert (=> b!771888 (=> (not res!522212) (not e!429738))))

(declare-datatypes ((SeekEntryResult!7890 0))(
  ( (MissingZero!7890 (index!33927 (_ BitVec 32))) (Found!7890 (index!33928 (_ BitVec 32))) (Intermediate!7890 (undefined!8702 Bool) (index!33929 (_ BitVec 32)) (x!64890 (_ BitVec 32))) (Undefined!7890) (MissingVacant!7890 (index!33930 (_ BitVec 32))) )
))
(declare-fun lt!343671 () SeekEntryResult!7890)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771888 (= res!522212 (or (= lt!343671 (MissingZero!7890 i!1173)) (= lt!343671 (MissingVacant!7890 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42376 (_ BitVec 32)) SeekEntryResult!7890)

(assert (=> b!771888 (= lt!343671 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!771889 () Bool)

(declare-fun e!429744 () Bool)

(declare-fun e!429741 () Bool)

(assert (=> b!771889 (= e!429744 e!429741)))

(declare-fun res!522221 () Bool)

(assert (=> b!771889 (=> (not res!522221) (not e!429741))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!343662 () SeekEntryResult!7890)

(assert (=> b!771889 (= res!522221 (= (seekEntryOrOpen!0 (select (arr!20283 a!3186) j!159) a!3186 mask!3328) lt!343662))))

(assert (=> b!771889 (= lt!343662 (Found!7890 j!159))))

(declare-fun b!771890 () Bool)

(declare-datatypes ((Unit!26596 0))(
  ( (Unit!26597) )
))
(declare-fun e!429740 () Unit!26596)

(declare-fun Unit!26598 () Unit!26596)

(assert (=> b!771890 (= e!429740 Unit!26598)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!343663 () SeekEntryResult!7890)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42376 (_ BitVec 32)) SeekEntryResult!7890)

(assert (=> b!771890 (= lt!343663 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20283 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343665 () (_ BitVec 32))

(assert (=> b!771890 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343665 resIntermediateIndex!5 (select (arr!20283 a!3186) j!159) a!3186 mask!3328) (Found!7890 j!159))))

(declare-fun b!771891 () Bool)

(declare-fun lt!343666 () SeekEntryResult!7890)

(declare-fun e!429739 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42376 (_ BitVec 32)) SeekEntryResult!7890)

(assert (=> b!771891 (= e!429739 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20283 a!3186) j!159) a!3186 mask!3328) lt!343666))))

(declare-fun b!771892 () Bool)

(declare-fun res!522214 () Bool)

(declare-fun e!429736 () Bool)

(assert (=> b!771892 (=> (not res!522214) (not e!429736))))

(assert (=> b!771892 (= res!522214 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20283 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771893 () Bool)

(assert (=> b!771893 (= e!429738 e!429736)))

(declare-fun res!522211 () Bool)

(assert (=> b!771893 (=> (not res!522211) (not e!429736))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771893 (= res!522211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20283 a!3186) j!159) mask!3328) (select (arr!20283 a!3186) j!159) a!3186 mask!3328) lt!343666))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!771893 (= lt!343666 (Intermediate!7890 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771895 () Bool)

(declare-fun res!522218 () Bool)

(assert (=> b!771895 (=> (not res!522218) (not e!429737))))

(declare-fun arrayContainsKey!0 (array!42376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771895 (= res!522218 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771896 () Bool)

(declare-fun res!522220 () Bool)

(assert (=> b!771896 (=> (not res!522220) (not e!429737))))

(assert (=> b!771896 (= res!522220 (and (= (size!20704 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20704 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20704 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!771897 () Bool)

(declare-fun e!429743 () Bool)

(assert (=> b!771897 (= e!429743 true)))

(declare-fun lt!343670 () Unit!26596)

(assert (=> b!771897 (= lt!343670 e!429740)))

(declare-fun c!85235 () Bool)

(assert (=> b!771897 (= c!85235 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771897 (= lt!343665 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771898 () Bool)

(assert (=> b!771898 (= e!429741 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20283 a!3186) j!159) a!3186 mask!3328) lt!343662))))

(declare-fun b!771899 () Bool)

(declare-fun e!429745 () Bool)

(assert (=> b!771899 (= e!429745 (not e!429743))))

(declare-fun res!522219 () Bool)

(assert (=> b!771899 (=> res!522219 e!429743)))

(declare-fun lt!343668 () SeekEntryResult!7890)

(assert (=> b!771899 (= res!522219 (or (not (is-Intermediate!7890 lt!343668)) (bvsge x!1131 (x!64890 lt!343668))))))

(assert (=> b!771899 e!429744))

(declare-fun res!522213 () Bool)

(assert (=> b!771899 (=> (not res!522213) (not e!429744))))

(assert (=> b!771899 (= res!522213 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343672 () Unit!26596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42376 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26596)

(assert (=> b!771899 (= lt!343672 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!771900 () Bool)

(declare-fun Unit!26599 () Unit!26596)

(assert (=> b!771900 (= e!429740 Unit!26599)))

(assert (=> b!771900 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343665 (select (arr!20283 a!3186) j!159) a!3186 mask!3328) lt!343666)))

(declare-fun b!771901 () Bool)

(declare-fun res!522216 () Bool)

(assert (=> b!771901 (=> (not res!522216) (not e!429737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771901 (= res!522216 (validKeyInArray!0 (select (arr!20283 a!3186) j!159)))))

(declare-fun b!771902 () Bool)

(declare-fun res!522217 () Bool)

(assert (=> b!771902 (=> (not res!522217) (not e!429736))))

(assert (=> b!771902 (= res!522217 e!429739)))

(declare-fun c!85236 () Bool)

(assert (=> b!771902 (= c!85236 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!771903 () Bool)

(assert (=> b!771903 (= e!429739 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20283 a!3186) j!159) a!3186 mask!3328) (Found!7890 j!159)))))

(declare-fun b!771904 () Bool)

(declare-fun res!522222 () Bool)

(assert (=> b!771904 (=> (not res!522222) (not e!429737))))

(assert (=> b!771904 (= res!522222 (validKeyInArray!0 k!2102))))

(declare-fun res!522225 () Bool)

(assert (=> start!66928 (=> (not res!522225) (not e!429737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66928 (= res!522225 (validMask!0 mask!3328))))

(assert (=> start!66928 e!429737))

(assert (=> start!66928 true))

(declare-fun array_inv!16057 (array!42376) Bool)

(assert (=> start!66928 (array_inv!16057 a!3186)))

(declare-fun b!771894 () Bool)

(declare-fun res!522224 () Bool)

(assert (=> b!771894 (=> (not res!522224) (not e!429738))))

(declare-datatypes ((List!14338 0))(
  ( (Nil!14335) (Cons!14334 (h!15436 (_ BitVec 64)) (t!20661 List!14338)) )
))
(declare-fun arrayNoDuplicates!0 (array!42376 (_ BitVec 32) List!14338) Bool)

(assert (=> b!771894 (= res!522224 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14335))))

(declare-fun b!771905 () Bool)

(declare-fun res!522223 () Bool)

(assert (=> b!771905 (=> (not res!522223) (not e!429738))))

(assert (=> b!771905 (= res!522223 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20704 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20704 a!3186))))))

(declare-fun b!771906 () Bool)

(assert (=> b!771906 (= e!429736 e!429745)))

(declare-fun res!522226 () Bool)

(assert (=> b!771906 (=> (not res!522226) (not e!429745))))

(declare-fun lt!343669 () SeekEntryResult!7890)

(assert (=> b!771906 (= res!522226 (= lt!343669 lt!343668))))

(declare-fun lt!343667 () (_ BitVec 64))

(declare-fun lt!343664 () array!42376)

(assert (=> b!771906 (= lt!343668 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343667 lt!343664 mask!3328))))

(assert (=> b!771906 (= lt!343669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343667 mask!3328) lt!343667 lt!343664 mask!3328))))

(assert (=> b!771906 (= lt!343667 (select (store (arr!20283 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!771906 (= lt!343664 (array!42377 (store (arr!20283 a!3186) i!1173 k!2102) (size!20704 a!3186)))))

(assert (= (and start!66928 res!522225) b!771896))

(assert (= (and b!771896 res!522220) b!771901))

(assert (= (and b!771901 res!522216) b!771904))

(assert (= (and b!771904 res!522222) b!771895))

(assert (= (and b!771895 res!522218) b!771888))

(assert (= (and b!771888 res!522212) b!771887))

(assert (= (and b!771887 res!522215) b!771894))

(assert (= (and b!771894 res!522224) b!771905))

(assert (= (and b!771905 res!522223) b!771893))

(assert (= (and b!771893 res!522211) b!771892))

(assert (= (and b!771892 res!522214) b!771902))

(assert (= (and b!771902 c!85236) b!771891))

(assert (= (and b!771902 (not c!85236)) b!771903))

(assert (= (and b!771902 res!522217) b!771906))

(assert (= (and b!771906 res!522226) b!771899))

(assert (= (and b!771899 res!522213) b!771889))

(assert (= (and b!771889 res!522221) b!771898))

(assert (= (and b!771899 (not res!522219)) b!771897))

(assert (= (and b!771897 c!85235) b!771900))

(assert (= (and b!771897 (not c!85235)) b!771890))

(declare-fun m!716959 () Bool)

(assert (=> b!771894 m!716959))

(declare-fun m!716961 () Bool)

(assert (=> b!771904 m!716961))

(declare-fun m!716963 () Bool)

(assert (=> b!771906 m!716963))

(declare-fun m!716965 () Bool)

(assert (=> b!771906 m!716965))

(declare-fun m!716967 () Bool)

(assert (=> b!771906 m!716967))

(assert (=> b!771906 m!716965))

(declare-fun m!716969 () Bool)

(assert (=> b!771906 m!716969))

(declare-fun m!716971 () Bool)

(assert (=> b!771906 m!716971))

(declare-fun m!716973 () Bool)

(assert (=> b!771890 m!716973))

(assert (=> b!771890 m!716973))

(declare-fun m!716975 () Bool)

(assert (=> b!771890 m!716975))

(assert (=> b!771890 m!716973))

(declare-fun m!716977 () Bool)

(assert (=> b!771890 m!716977))

(declare-fun m!716979 () Bool)

(assert (=> start!66928 m!716979))

(declare-fun m!716981 () Bool)

(assert (=> start!66928 m!716981))

(assert (=> b!771893 m!716973))

(assert (=> b!771893 m!716973))

(declare-fun m!716983 () Bool)

(assert (=> b!771893 m!716983))

(assert (=> b!771893 m!716983))

(assert (=> b!771893 m!716973))

(declare-fun m!716985 () Bool)

(assert (=> b!771893 m!716985))

(assert (=> b!771903 m!716973))

(assert (=> b!771903 m!716973))

(assert (=> b!771903 m!716975))

(declare-fun m!716987 () Bool)

(assert (=> b!771897 m!716987))

(declare-fun m!716989 () Bool)

(assert (=> b!771892 m!716989))

(assert (=> b!771891 m!716973))

(assert (=> b!771891 m!716973))

(declare-fun m!716991 () Bool)

(assert (=> b!771891 m!716991))

(declare-fun m!716993 () Bool)

(assert (=> b!771899 m!716993))

(declare-fun m!716995 () Bool)

(assert (=> b!771899 m!716995))

(declare-fun m!716997 () Bool)

(assert (=> b!771895 m!716997))

(assert (=> b!771901 m!716973))

(assert (=> b!771901 m!716973))

(declare-fun m!716999 () Bool)

(assert (=> b!771901 m!716999))

(assert (=> b!771889 m!716973))

(assert (=> b!771889 m!716973))

(declare-fun m!717001 () Bool)

(assert (=> b!771889 m!717001))

(assert (=> b!771900 m!716973))

(assert (=> b!771900 m!716973))

(declare-fun m!717003 () Bool)

(assert (=> b!771900 m!717003))

(declare-fun m!717005 () Bool)

(assert (=> b!771888 m!717005))

(assert (=> b!771898 m!716973))

(assert (=> b!771898 m!716973))

(declare-fun m!717007 () Bool)

(assert (=> b!771898 m!717007))

(declare-fun m!717009 () Bool)

(assert (=> b!771887 m!717009))

(push 1)

