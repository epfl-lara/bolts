; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65676 () Bool)

(assert start!65676)

(declare-fun b!751984 () Bool)

(declare-fun e!419493 () Bool)

(assert (=> b!751984 (= e!419493 true)))

(declare-fun e!419501 () Bool)

(assert (=> b!751984 e!419501))

(declare-fun res!507894 () Bool)

(assert (=> b!751984 (=> (not res!507894) (not e!419501))))

(declare-fun lt!334501 () (_ BitVec 64))

(assert (=> b!751984 (= res!507894 (= lt!334501 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25874 0))(
  ( (Unit!25875) )
))
(declare-fun lt!334494 () Unit!25874)

(declare-fun e!419495 () Unit!25874)

(assert (=> b!751984 (= lt!334494 e!419495)))

(declare-fun c!82433 () Bool)

(assert (=> b!751984 (= c!82433 (= lt!334501 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751985 () Bool)

(declare-fun e!419494 () Bool)

(declare-fun e!419500 () Bool)

(assert (=> b!751985 (= e!419494 e!419500)))

(declare-fun res!507897 () Bool)

(assert (=> b!751985 (=> (not res!507897) (not e!419500))))

(declare-datatypes ((array!41802 0))(
  ( (array!41803 (arr!20011 (Array (_ BitVec 32) (_ BitVec 64))) (size!20432 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41802)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7618 0))(
  ( (MissingZero!7618 (index!32839 (_ BitVec 32))) (Found!7618 (index!32840 (_ BitVec 32))) (Intermediate!7618 (undefined!8430 Bool) (index!32841 (_ BitVec 32)) (x!63785 (_ BitVec 32))) (Undefined!7618) (MissingVacant!7618 (index!32842 (_ BitVec 32))) )
))
(declare-fun lt!334495 () SeekEntryResult!7618)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41802 (_ BitVec 32)) SeekEntryResult!7618)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751985 (= res!507897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20011 a!3186) j!159) mask!3328) (select (arr!20011 a!3186) j!159) a!3186 mask!3328) lt!334495))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751985 (= lt!334495 (Intermediate!7618 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751986 () Bool)

(declare-fun e!419491 () Bool)

(declare-fun e!419496 () Bool)

(assert (=> b!751986 (= e!419491 (not e!419496))))

(declare-fun res!507879 () Bool)

(assert (=> b!751986 (=> res!507879 e!419496)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!334491 () SeekEntryResult!7618)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!751986 (= res!507879 (or (not ((_ is Intermediate!7618) lt!334491)) (bvslt x!1131 (x!63785 lt!334491)) (not (= x!1131 (x!63785 lt!334491))) (not (= index!1321 (index!32841 lt!334491)))))))

(declare-fun e!419492 () Bool)

(assert (=> b!751986 e!419492))

(declare-fun res!507884 () Bool)

(assert (=> b!751986 (=> (not res!507884) (not e!419492))))

(declare-fun lt!334502 () SeekEntryResult!7618)

(declare-fun lt!334492 () SeekEntryResult!7618)

(assert (=> b!751986 (= res!507884 (= lt!334502 lt!334492))))

(assert (=> b!751986 (= lt!334492 (Found!7618 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41802 (_ BitVec 32)) SeekEntryResult!7618)

(assert (=> b!751986 (= lt!334502 (seekEntryOrOpen!0 (select (arr!20011 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41802 (_ BitVec 32)) Bool)

(assert (=> b!751986 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334493 () Unit!25874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41802 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25874)

(assert (=> b!751986 (= lt!334493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751987 () Bool)

(declare-fun res!507888 () Bool)

(assert (=> b!751987 (=> (not res!507888) (not e!419500))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751987 (= res!507888 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20011 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751988 () Bool)

(declare-fun res!507895 () Bool)

(declare-fun e!419502 () Bool)

(assert (=> b!751988 (=> (not res!507895) (not e!419502))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751988 (= res!507895 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751989 () Bool)

(declare-fun res!507882 () Bool)

(assert (=> b!751989 (=> (not res!507882) (not e!419502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751989 (= res!507882 (validKeyInArray!0 (select (arr!20011 a!3186) j!159)))))

(declare-fun b!751990 () Bool)

(declare-fun res!507881 () Bool)

(assert (=> b!751990 (=> (not res!507881) (not e!419501))))

(declare-fun lt!334496 () (_ BitVec 64))

(declare-fun lt!334497 () array!41802)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41802 (_ BitVec 32)) SeekEntryResult!7618)

(assert (=> b!751990 (= res!507881 (= (seekEntryOrOpen!0 lt!334496 lt!334497 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334496 lt!334497 mask!3328)))))

(declare-fun b!751991 () Bool)

(assert (=> b!751991 (= e!419502 e!419494)))

(declare-fun res!507885 () Bool)

(assert (=> b!751991 (=> (not res!507885) (not e!419494))))

(declare-fun lt!334500 () SeekEntryResult!7618)

(assert (=> b!751991 (= res!507885 (or (= lt!334500 (MissingZero!7618 i!1173)) (= lt!334500 (MissingVacant!7618 i!1173))))))

(assert (=> b!751991 (= lt!334500 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!751992 () Bool)

(declare-fun res!507887 () Bool)

(assert (=> b!751992 (=> (not res!507887) (not e!419494))))

(declare-datatypes ((List!14066 0))(
  ( (Nil!14063) (Cons!14062 (h!15134 (_ BitVec 64)) (t!20389 List!14066)) )
))
(declare-fun arrayNoDuplicates!0 (array!41802 (_ BitVec 32) List!14066) Bool)

(assert (=> b!751992 (= res!507887 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14063))))

(declare-fun b!751993 () Bool)

(declare-fun Unit!25876 () Unit!25874)

(assert (=> b!751993 (= e!419495 Unit!25876)))

(assert (=> b!751993 false))

(declare-fun b!751994 () Bool)

(declare-fun res!507896 () Bool)

(assert (=> b!751994 (=> (not res!507896) (not e!419500))))

(declare-fun e!419497 () Bool)

(assert (=> b!751994 (= res!507896 e!419497)))

(declare-fun c!82434 () Bool)

(assert (=> b!751994 (= c!82434 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751995 () Bool)

(declare-fun e!419498 () Bool)

(assert (=> b!751995 (= e!419496 e!419498)))

(declare-fun res!507892 () Bool)

(assert (=> b!751995 (=> res!507892 e!419498)))

(declare-fun lt!334498 () SeekEntryResult!7618)

(assert (=> b!751995 (= res!507892 (not (= lt!334498 lt!334492)))))

(assert (=> b!751995 (= lt!334498 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20011 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!751997 () Bool)

(assert (=> b!751997 (= e!419501 (= lt!334502 lt!334498))))

(declare-fun b!751998 () Bool)

(assert (=> b!751998 (= e!419498 e!419493)))

(declare-fun res!507891 () Bool)

(assert (=> b!751998 (=> res!507891 e!419493)))

(assert (=> b!751998 (= res!507891 (= lt!334501 lt!334496))))

(assert (=> b!751998 (= lt!334501 (select (store (arr!20011 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!751999 () Bool)

(declare-fun res!507880 () Bool)

(assert (=> b!751999 (=> (not res!507880) (not e!419494))))

(assert (=> b!751999 (= res!507880 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20432 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20432 a!3186))))))

(declare-fun b!752000 () Bool)

(assert (=> b!752000 (= e!419497 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20011 a!3186) j!159) a!3186 mask!3328) lt!334495))))

(declare-fun b!752001 () Bool)

(declare-fun res!507893 () Bool)

(assert (=> b!752001 (=> (not res!507893) (not e!419502))))

(assert (=> b!752001 (= res!507893 (validKeyInArray!0 k0!2102))))

(declare-fun b!752002 () Bool)

(assert (=> b!752002 (= e!419492 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20011 a!3186) j!159) a!3186 mask!3328) lt!334492))))

(declare-fun b!752003 () Bool)

(declare-fun res!507890 () Bool)

(assert (=> b!752003 (=> (not res!507890) (not e!419494))))

(assert (=> b!752003 (= res!507890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752004 () Bool)

(assert (=> b!752004 (= e!419497 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20011 a!3186) j!159) a!3186 mask!3328) (Found!7618 j!159)))))

(declare-fun b!751996 () Bool)

(declare-fun Unit!25877 () Unit!25874)

(assert (=> b!751996 (= e!419495 Unit!25877)))

(declare-fun res!507889 () Bool)

(assert (=> start!65676 (=> (not res!507889) (not e!419502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65676 (= res!507889 (validMask!0 mask!3328))))

(assert (=> start!65676 e!419502))

(assert (=> start!65676 true))

(declare-fun array_inv!15785 (array!41802) Bool)

(assert (=> start!65676 (array_inv!15785 a!3186)))

(declare-fun b!752005 () Bool)

(declare-fun res!507886 () Bool)

(assert (=> b!752005 (=> (not res!507886) (not e!419502))))

(assert (=> b!752005 (= res!507886 (and (= (size!20432 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20432 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20432 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752006 () Bool)

(assert (=> b!752006 (= e!419500 e!419491)))

(declare-fun res!507883 () Bool)

(assert (=> b!752006 (=> (not res!507883) (not e!419491))))

(declare-fun lt!334499 () SeekEntryResult!7618)

(assert (=> b!752006 (= res!507883 (= lt!334499 lt!334491))))

(assert (=> b!752006 (= lt!334491 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334496 lt!334497 mask!3328))))

(assert (=> b!752006 (= lt!334499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334496 mask!3328) lt!334496 lt!334497 mask!3328))))

(assert (=> b!752006 (= lt!334496 (select (store (arr!20011 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!752006 (= lt!334497 (array!41803 (store (arr!20011 a!3186) i!1173 k0!2102) (size!20432 a!3186)))))

(assert (= (and start!65676 res!507889) b!752005))

(assert (= (and b!752005 res!507886) b!751989))

(assert (= (and b!751989 res!507882) b!752001))

(assert (= (and b!752001 res!507893) b!751988))

(assert (= (and b!751988 res!507895) b!751991))

(assert (= (and b!751991 res!507885) b!752003))

(assert (= (and b!752003 res!507890) b!751992))

(assert (= (and b!751992 res!507887) b!751999))

(assert (= (and b!751999 res!507880) b!751985))

(assert (= (and b!751985 res!507897) b!751987))

(assert (= (and b!751987 res!507888) b!751994))

(assert (= (and b!751994 c!82434) b!752000))

(assert (= (and b!751994 (not c!82434)) b!752004))

(assert (= (and b!751994 res!507896) b!752006))

(assert (= (and b!752006 res!507883) b!751986))

(assert (= (and b!751986 res!507884) b!752002))

(assert (= (and b!751986 (not res!507879)) b!751995))

(assert (= (and b!751995 (not res!507892)) b!751998))

(assert (= (and b!751998 (not res!507891)) b!751984))

(assert (= (and b!751984 c!82433) b!751993))

(assert (= (and b!751984 (not c!82433)) b!751996))

(assert (= (and b!751984 res!507894) b!751990))

(assert (= (and b!751990 res!507881) b!751997))

(declare-fun m!701105 () Bool)

(assert (=> b!751986 m!701105))

(assert (=> b!751986 m!701105))

(declare-fun m!701107 () Bool)

(assert (=> b!751986 m!701107))

(declare-fun m!701109 () Bool)

(assert (=> b!751986 m!701109))

(declare-fun m!701111 () Bool)

(assert (=> b!751986 m!701111))

(declare-fun m!701113 () Bool)

(assert (=> b!752006 m!701113))

(declare-fun m!701115 () Bool)

(assert (=> b!752006 m!701115))

(assert (=> b!752006 m!701113))

(declare-fun m!701117 () Bool)

(assert (=> b!752006 m!701117))

(declare-fun m!701119 () Bool)

(assert (=> b!752006 m!701119))

(declare-fun m!701121 () Bool)

(assert (=> b!752006 m!701121))

(assert (=> b!752004 m!701105))

(assert (=> b!752004 m!701105))

(declare-fun m!701123 () Bool)

(assert (=> b!752004 m!701123))

(assert (=> b!751995 m!701105))

(assert (=> b!751995 m!701105))

(assert (=> b!751995 m!701123))

(assert (=> b!751998 m!701119))

(declare-fun m!701125 () Bool)

(assert (=> b!751998 m!701125))

(assert (=> b!752002 m!701105))

(assert (=> b!752002 m!701105))

(declare-fun m!701127 () Bool)

(assert (=> b!752002 m!701127))

(declare-fun m!701129 () Bool)

(assert (=> b!751992 m!701129))

(declare-fun m!701131 () Bool)

(assert (=> b!751991 m!701131))

(declare-fun m!701133 () Bool)

(assert (=> b!751990 m!701133))

(declare-fun m!701135 () Bool)

(assert (=> b!751990 m!701135))

(declare-fun m!701137 () Bool)

(assert (=> b!751988 m!701137))

(assert (=> b!751989 m!701105))

(assert (=> b!751989 m!701105))

(declare-fun m!701139 () Bool)

(assert (=> b!751989 m!701139))

(declare-fun m!701141 () Bool)

(assert (=> start!65676 m!701141))

(declare-fun m!701143 () Bool)

(assert (=> start!65676 m!701143))

(declare-fun m!701145 () Bool)

(assert (=> b!751987 m!701145))

(assert (=> b!751985 m!701105))

(assert (=> b!751985 m!701105))

(declare-fun m!701147 () Bool)

(assert (=> b!751985 m!701147))

(assert (=> b!751985 m!701147))

(assert (=> b!751985 m!701105))

(declare-fun m!701149 () Bool)

(assert (=> b!751985 m!701149))

(declare-fun m!701151 () Bool)

(assert (=> b!752001 m!701151))

(declare-fun m!701153 () Bool)

(assert (=> b!752003 m!701153))

(assert (=> b!752000 m!701105))

(assert (=> b!752000 m!701105))

(declare-fun m!701155 () Bool)

(assert (=> b!752000 m!701155))

(check-sat (not b!752002) (not b!751989) (not b!751995) (not b!751991) (not b!751990) (not b!751986) (not b!752006) (not b!751988) (not b!752003) (not b!752001) (not start!65676) (not b!752004) (not b!752000) (not b!751992) (not b!751985))
(check-sat)
