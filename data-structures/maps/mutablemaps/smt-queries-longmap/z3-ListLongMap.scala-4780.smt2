; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65760 () Bool)

(assert start!65760)

(declare-fun b!754882 () Bool)

(declare-fun e!421004 () Bool)

(declare-fun e!421008 () Bool)

(assert (=> b!754882 (= e!421004 e!421008)))

(declare-fun res!510282 () Bool)

(assert (=> b!754882 (=> (not res!510282) (not e!421008))))

(declare-datatypes ((SeekEntryResult!7660 0))(
  ( (MissingZero!7660 (index!33007 (_ BitVec 32))) (Found!7660 (index!33008 (_ BitVec 32))) (Intermediate!7660 (undefined!8472 Bool) (index!33009 (_ BitVec 32)) (x!63939 (_ BitVec 32))) (Undefined!7660) (MissingVacant!7660 (index!33010 (_ BitVec 32))) )
))
(declare-fun lt!336007 () SeekEntryResult!7660)

(declare-fun lt!336003 () SeekEntryResult!7660)

(assert (=> b!754882 (= res!510282 (= lt!336007 lt!336003))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!336013 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41886 0))(
  ( (array!41887 (arr!20053 (Array (_ BitVec 32) (_ BitVec 64))) (size!20474 (_ BitVec 32))) )
))
(declare-fun lt!336005 () array!41886)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41886 (_ BitVec 32)) SeekEntryResult!7660)

(assert (=> b!754882 (= lt!336003 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336013 lt!336005 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754882 (= lt!336007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336013 mask!3328) lt!336013 lt!336005 mask!3328))))

(declare-fun a!3186 () array!41886)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!754882 (= lt!336013 (select (store (arr!20053 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!754882 (= lt!336005 (array!41887 (store (arr!20053 a!3186) i!1173 k0!2102) (size!20474 a!3186)))))

(declare-fun b!754883 () Bool)

(declare-fun res!510291 () Bool)

(declare-fun e!421011 () Bool)

(assert (=> b!754883 (=> (not res!510291) (not e!421011))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754883 (= res!510291 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20474 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20474 a!3186))))))

(declare-fun b!754884 () Bool)

(declare-fun res!510280 () Bool)

(assert (=> b!754884 (=> (not res!510280) (not e!421004))))

(declare-fun e!421014 () Bool)

(assert (=> b!754884 (= res!510280 e!421014)))

(declare-fun c!82686 () Bool)

(assert (=> b!754884 (= c!82686 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754885 () Bool)

(declare-fun res!510289 () Bool)

(assert (=> b!754885 (=> (not res!510289) (not e!421004))))

(assert (=> b!754885 (= res!510289 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20053 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754886 () Bool)

(declare-fun e!421006 () Bool)

(assert (=> b!754886 (= e!421008 (not e!421006))))

(declare-fun res!510283 () Bool)

(assert (=> b!754886 (=> res!510283 e!421006)))

(get-info :version)

(assert (=> b!754886 (= res!510283 (or (not ((_ is Intermediate!7660) lt!336003)) (bvslt x!1131 (x!63939 lt!336003)) (not (= x!1131 (x!63939 lt!336003))) (not (= index!1321 (index!33009 lt!336003)))))))

(declare-fun e!421010 () Bool)

(assert (=> b!754886 e!421010))

(declare-fun res!510287 () Bool)

(assert (=> b!754886 (=> (not res!510287) (not e!421010))))

(declare-fun lt!336014 () SeekEntryResult!7660)

(declare-fun lt!336008 () SeekEntryResult!7660)

(assert (=> b!754886 (= res!510287 (= lt!336014 lt!336008))))

(assert (=> b!754886 (= lt!336008 (Found!7660 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41886 (_ BitVec 32)) SeekEntryResult!7660)

(assert (=> b!754886 (= lt!336014 (seekEntryOrOpen!0 (select (arr!20053 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41886 (_ BitVec 32)) Bool)

(assert (=> b!754886 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26042 0))(
  ( (Unit!26043) )
))
(declare-fun lt!336009 () Unit!26042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41886 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26042)

(assert (=> b!754886 (= lt!336009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754888 () Bool)

(declare-fun res!510276 () Bool)

(assert (=> b!754888 (=> (not res!510276) (not e!421011))))

(assert (=> b!754888 (= res!510276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!754889 () Bool)

(declare-fun res!510286 () Bool)

(declare-fun e!421003 () Bool)

(assert (=> b!754889 (=> (not res!510286) (not e!421003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754889 (= res!510286 (validKeyInArray!0 (select (arr!20053 a!3186) j!159)))))

(declare-fun b!754890 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41886 (_ BitVec 32)) SeekEntryResult!7660)

(assert (=> b!754890 (= e!421014 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20053 a!3186) j!159) a!3186 mask!3328) (Found!7660 j!159)))))

(declare-fun b!754891 () Bool)

(assert (=> b!754891 (= e!421010 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20053 a!3186) j!159) a!3186 mask!3328) lt!336008))))

(declare-fun b!754892 () Bool)

(assert (=> b!754892 (= e!421003 e!421011)))

(declare-fun res!510281 () Bool)

(assert (=> b!754892 (=> (not res!510281) (not e!421011))))

(declare-fun lt!336010 () SeekEntryResult!7660)

(assert (=> b!754892 (= res!510281 (or (= lt!336010 (MissingZero!7660 i!1173)) (= lt!336010 (MissingVacant!7660 i!1173))))))

(assert (=> b!754892 (= lt!336010 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!754893 () Bool)

(declare-fun e!421013 () Bool)

(assert (=> b!754893 (= e!421013 true)))

(declare-fun e!421007 () Bool)

(assert (=> b!754893 e!421007))

(declare-fun res!510285 () Bool)

(assert (=> b!754893 (=> (not res!510285) (not e!421007))))

(declare-fun lt!336011 () (_ BitVec 64))

(assert (=> b!754893 (= res!510285 (= lt!336011 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336004 () Unit!26042)

(declare-fun e!421009 () Unit!26042)

(assert (=> b!754893 (= lt!336004 e!421009)))

(declare-fun c!82685 () Bool)

(assert (=> b!754893 (= c!82685 (= lt!336011 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!510279 () Bool)

(assert (=> start!65760 (=> (not res!510279) (not e!421003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65760 (= res!510279 (validMask!0 mask!3328))))

(assert (=> start!65760 e!421003))

(assert (=> start!65760 true))

(declare-fun array_inv!15827 (array!41886) Bool)

(assert (=> start!65760 (array_inv!15827 a!3186)))

(declare-fun b!754887 () Bool)

(declare-fun res!510275 () Bool)

(assert (=> b!754887 (=> (not res!510275) (not e!421007))))

(assert (=> b!754887 (= res!510275 (= (seekEntryOrOpen!0 lt!336013 lt!336005 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336013 lt!336005 mask!3328)))))

(declare-fun b!754894 () Bool)

(declare-fun res!510284 () Bool)

(assert (=> b!754894 (=> (not res!510284) (not e!421003))))

(assert (=> b!754894 (= res!510284 (and (= (size!20474 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20474 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20474 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754895 () Bool)

(declare-fun Unit!26044 () Unit!26042)

(assert (=> b!754895 (= e!421009 Unit!26044)))

(assert (=> b!754895 false))

(declare-fun b!754896 () Bool)

(declare-fun Unit!26045 () Unit!26042)

(assert (=> b!754896 (= e!421009 Unit!26045)))

(declare-fun b!754897 () Bool)

(declare-fun res!510290 () Bool)

(assert (=> b!754897 (=> (not res!510290) (not e!421003))))

(declare-fun arrayContainsKey!0 (array!41886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754897 (= res!510290 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754898 () Bool)

(declare-fun e!421012 () Bool)

(assert (=> b!754898 (= e!421012 e!421013)))

(declare-fun res!510278 () Bool)

(assert (=> b!754898 (=> res!510278 e!421013)))

(assert (=> b!754898 (= res!510278 (= lt!336011 lt!336013))))

(assert (=> b!754898 (= lt!336011 (select (store (arr!20053 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!754899 () Bool)

(declare-fun lt!336006 () SeekEntryResult!7660)

(assert (=> b!754899 (= e!421007 (= lt!336014 lt!336006))))

(declare-fun b!754900 () Bool)

(assert (=> b!754900 (= e!421006 e!421012)))

(declare-fun res!510274 () Bool)

(assert (=> b!754900 (=> res!510274 e!421012)))

(assert (=> b!754900 (= res!510274 (not (= lt!336006 lt!336008)))))

(assert (=> b!754900 (= lt!336006 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20053 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754901 () Bool)

(declare-fun res!510277 () Bool)

(assert (=> b!754901 (=> (not res!510277) (not e!421003))))

(assert (=> b!754901 (= res!510277 (validKeyInArray!0 k0!2102))))

(declare-fun b!754902 () Bool)

(assert (=> b!754902 (= e!421011 e!421004)))

(declare-fun res!510288 () Bool)

(assert (=> b!754902 (=> (not res!510288) (not e!421004))))

(declare-fun lt!336012 () SeekEntryResult!7660)

(assert (=> b!754902 (= res!510288 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20053 a!3186) j!159) mask!3328) (select (arr!20053 a!3186) j!159) a!3186 mask!3328) lt!336012))))

(assert (=> b!754902 (= lt!336012 (Intermediate!7660 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754903 () Bool)

(assert (=> b!754903 (= e!421014 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20053 a!3186) j!159) a!3186 mask!3328) lt!336012))))

(declare-fun b!754904 () Bool)

(declare-fun res!510273 () Bool)

(assert (=> b!754904 (=> (not res!510273) (not e!421011))))

(declare-datatypes ((List!14108 0))(
  ( (Nil!14105) (Cons!14104 (h!15176 (_ BitVec 64)) (t!20431 List!14108)) )
))
(declare-fun arrayNoDuplicates!0 (array!41886 (_ BitVec 32) List!14108) Bool)

(assert (=> b!754904 (= res!510273 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14105))))

(assert (= (and start!65760 res!510279) b!754894))

(assert (= (and b!754894 res!510284) b!754889))

(assert (= (and b!754889 res!510286) b!754901))

(assert (= (and b!754901 res!510277) b!754897))

(assert (= (and b!754897 res!510290) b!754892))

(assert (= (and b!754892 res!510281) b!754888))

(assert (= (and b!754888 res!510276) b!754904))

(assert (= (and b!754904 res!510273) b!754883))

(assert (= (and b!754883 res!510291) b!754902))

(assert (= (and b!754902 res!510288) b!754885))

(assert (= (and b!754885 res!510289) b!754884))

(assert (= (and b!754884 c!82686) b!754903))

(assert (= (and b!754884 (not c!82686)) b!754890))

(assert (= (and b!754884 res!510280) b!754882))

(assert (= (and b!754882 res!510282) b!754886))

(assert (= (and b!754886 res!510287) b!754891))

(assert (= (and b!754886 (not res!510283)) b!754900))

(assert (= (and b!754900 (not res!510274)) b!754898))

(assert (= (and b!754898 (not res!510278)) b!754893))

(assert (= (and b!754893 c!82685) b!754895))

(assert (= (and b!754893 (not c!82685)) b!754896))

(assert (= (and b!754893 res!510285) b!754887))

(assert (= (and b!754887 res!510275) b!754899))

(declare-fun m!703289 () Bool)

(assert (=> b!754890 m!703289))

(assert (=> b!754890 m!703289))

(declare-fun m!703291 () Bool)

(assert (=> b!754890 m!703291))

(declare-fun m!703293 () Bool)

(assert (=> b!754901 m!703293))

(declare-fun m!703295 () Bool)

(assert (=> b!754887 m!703295))

(declare-fun m!703297 () Bool)

(assert (=> b!754887 m!703297))

(declare-fun m!703299 () Bool)

(assert (=> start!65760 m!703299))

(declare-fun m!703301 () Bool)

(assert (=> start!65760 m!703301))

(assert (=> b!754900 m!703289))

(assert (=> b!754900 m!703289))

(assert (=> b!754900 m!703291))

(declare-fun m!703303 () Bool)

(assert (=> b!754898 m!703303))

(declare-fun m!703305 () Bool)

(assert (=> b!754898 m!703305))

(assert (=> b!754903 m!703289))

(assert (=> b!754903 m!703289))

(declare-fun m!703307 () Bool)

(assert (=> b!754903 m!703307))

(assert (=> b!754891 m!703289))

(assert (=> b!754891 m!703289))

(declare-fun m!703309 () Bool)

(assert (=> b!754891 m!703309))

(declare-fun m!703311 () Bool)

(assert (=> b!754904 m!703311))

(declare-fun m!703313 () Bool)

(assert (=> b!754885 m!703313))

(assert (=> b!754886 m!703289))

(assert (=> b!754886 m!703289))

(declare-fun m!703315 () Bool)

(assert (=> b!754886 m!703315))

(declare-fun m!703317 () Bool)

(assert (=> b!754886 m!703317))

(declare-fun m!703319 () Bool)

(assert (=> b!754886 m!703319))

(declare-fun m!703321 () Bool)

(assert (=> b!754897 m!703321))

(assert (=> b!754882 m!703303))

(declare-fun m!703323 () Bool)

(assert (=> b!754882 m!703323))

(declare-fun m!703325 () Bool)

(assert (=> b!754882 m!703325))

(declare-fun m!703327 () Bool)

(assert (=> b!754882 m!703327))

(assert (=> b!754882 m!703325))

(declare-fun m!703329 () Bool)

(assert (=> b!754882 m!703329))

(declare-fun m!703331 () Bool)

(assert (=> b!754892 m!703331))

(assert (=> b!754902 m!703289))

(assert (=> b!754902 m!703289))

(declare-fun m!703333 () Bool)

(assert (=> b!754902 m!703333))

(assert (=> b!754902 m!703333))

(assert (=> b!754902 m!703289))

(declare-fun m!703335 () Bool)

(assert (=> b!754902 m!703335))

(assert (=> b!754889 m!703289))

(assert (=> b!754889 m!703289))

(declare-fun m!703337 () Bool)

(assert (=> b!754889 m!703337))

(declare-fun m!703339 () Bool)

(assert (=> b!754888 m!703339))

(check-sat (not b!754888) (not b!754890) (not b!754892) (not b!754902) (not b!754882) (not b!754891) (not b!754889) (not b!754903) (not start!65760) (not b!754901) (not b!754904) (not b!754900) (not b!754897) (not b!754886) (not b!754887))
(check-sat)
