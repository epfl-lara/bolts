; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65284 () Bool)

(assert start!65284)

(declare-fun b!740237 () Bool)

(declare-fun res!497896 () Bool)

(declare-fun e!413890 () Bool)

(assert (=> b!740237 (=> (not res!497896) (not e!413890))))

(declare-datatypes ((array!41410 0))(
  ( (array!41411 (arr!19815 (Array (_ BitVec 32) (_ BitVec 64))) (size!20236 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41410)

(declare-datatypes ((List!13870 0))(
  ( (Nil!13867) (Cons!13866 (h!14938 (_ BitVec 64)) (t!20193 List!13870)) )
))
(declare-fun arrayNoDuplicates!0 (array!41410 (_ BitVec 32) List!13870) Bool)

(assert (=> b!740237 (= res!497896 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13867))))

(declare-fun b!740238 () Bool)

(declare-fun res!497893 () Bool)

(declare-fun e!413889 () Bool)

(assert (=> b!740238 (=> (not res!497893) (not e!413889))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!740238 (= res!497893 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19815 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!740239 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!413891 () Bool)

(declare-datatypes ((SeekEntryResult!7422 0))(
  ( (MissingZero!7422 (index!32055 (_ BitVec 32))) (Found!7422 (index!32056 (_ BitVec 32))) (Intermediate!7422 (undefined!8234 Bool) (index!32057 (_ BitVec 32)) (x!63069 (_ BitVec 32))) (Undefined!7422) (MissingVacant!7422 (index!32058 (_ BitVec 32))) )
))
(declare-fun lt!328845 () SeekEntryResult!7422)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41410 (_ BitVec 32)) SeekEntryResult!7422)

(assert (=> b!740239 (= e!413891 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328845))))

(declare-fun b!740240 () Bool)

(declare-fun e!413887 () Bool)

(declare-fun e!413894 () Bool)

(assert (=> b!740240 (= e!413887 (not e!413894))))

(declare-fun res!497898 () Bool)

(assert (=> b!740240 (=> res!497898 e!413894)))

(declare-fun lt!328853 () SeekEntryResult!7422)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!740240 (= res!497898 (or (not (is-Intermediate!7422 lt!328853)) (bvsge x!1131 (x!63069 lt!328853))))))

(declare-fun lt!328854 () SeekEntryResult!7422)

(assert (=> b!740240 (= lt!328854 (Found!7422 j!159))))

(declare-fun e!413893 () Bool)

(assert (=> b!740240 e!413893))

(declare-fun res!497897 () Bool)

(assert (=> b!740240 (=> (not res!497897) (not e!413893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41410 (_ BitVec 32)) Bool)

(assert (=> b!740240 (= res!497897 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25306 0))(
  ( (Unit!25307) )
))
(declare-fun lt!328850 () Unit!25306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41410 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25306)

(assert (=> b!740240 (= lt!328850 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740241 () Bool)

(declare-fun res!497899 () Bool)

(assert (=> b!740241 (=> (not res!497899) (not e!413889))))

(declare-fun e!413892 () Bool)

(assert (=> b!740241 (= res!497899 e!413892)))

(declare-fun c!81558 () Bool)

(assert (=> b!740241 (= c!81558 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740242 () Bool)

(declare-fun e!413885 () Bool)

(assert (=> b!740242 (= e!413885 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!328855 () array!41410)

(declare-fun lt!328848 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41410 (_ BitVec 32)) SeekEntryResult!7422)

(assert (=> b!740242 (= (seekEntryOrOpen!0 lt!328848 lt!328855 mask!3328) lt!328854)))

(declare-fun lt!328843 () (_ BitVec 32))

(declare-fun lt!328849 () Unit!25306)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41410 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25306)

(assert (=> b!740242 (= lt!328849 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!328843 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun res!497891 () Bool)

(declare-fun e!413884 () Bool)

(assert (=> start!65284 (=> (not res!497891) (not e!413884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65284 (= res!497891 (validMask!0 mask!3328))))

(assert (=> start!65284 e!413884))

(assert (=> start!65284 true))

(declare-fun array_inv!15589 (array!41410) Bool)

(assert (=> start!65284 (array_inv!15589 a!3186)))

(declare-fun b!740243 () Bool)

(declare-fun res!497889 () Bool)

(assert (=> b!740243 (=> (not res!497889) (not e!413884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740243 (= res!497889 (validKeyInArray!0 k!2102))))

(declare-fun b!740244 () Bool)

(assert (=> b!740244 (= e!413894 e!413885)))

(declare-fun res!497901 () Bool)

(assert (=> b!740244 (=> res!497901 e!413885)))

(assert (=> b!740244 (= res!497901 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328843 #b00000000000000000000000000000000) (bvsge lt!328843 (size!20236 a!3186))))))

(declare-fun lt!328852 () Unit!25306)

(declare-fun e!413886 () Unit!25306)

(assert (=> b!740244 (= lt!328852 e!413886)))

(declare-fun c!81556 () Bool)

(declare-fun lt!328847 () Bool)

(assert (=> b!740244 (= c!81556 lt!328847)))

(assert (=> b!740244 (= lt!328847 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740244 (= lt!328843 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740245 () Bool)

(assert (=> b!740245 (= e!413889 e!413887)))

(declare-fun res!497902 () Bool)

(assert (=> b!740245 (=> (not res!497902) (not e!413887))))

(declare-fun lt!328856 () SeekEntryResult!7422)

(assert (=> b!740245 (= res!497902 (= lt!328856 lt!328853))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41410 (_ BitVec 32)) SeekEntryResult!7422)

(assert (=> b!740245 (= lt!328853 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328848 lt!328855 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740245 (= lt!328856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328848 mask!3328) lt!328848 lt!328855 mask!3328))))

(assert (=> b!740245 (= lt!328848 (select (store (arr!19815 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740245 (= lt!328855 (array!41411 (store (arr!19815 a!3186) i!1173 k!2102) (size!20236 a!3186)))))

(declare-fun b!740246 () Bool)

(declare-fun Unit!25308 () Unit!25306)

(assert (=> b!740246 (= e!413886 Unit!25308)))

(declare-fun lt!328844 () SeekEntryResult!7422)

(assert (=> b!740246 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328843 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328844)))

(declare-fun b!740247 () Bool)

(assert (=> b!740247 (= e!413890 e!413889)))

(declare-fun res!497890 () Bool)

(assert (=> b!740247 (=> (not res!497890) (not e!413889))))

(assert (=> b!740247 (= res!497890 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19815 a!3186) j!159) mask!3328) (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328844))))

(assert (=> b!740247 (= lt!328844 (Intermediate!7422 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740248 () Bool)

(declare-fun e!413895 () Bool)

(assert (=> b!740248 (= e!413895 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328843 resIntermediateIndex!5 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328854)))))

(declare-fun b!740249 () Bool)

(declare-fun res!497894 () Bool)

(assert (=> b!740249 (=> (not res!497894) (not e!413884))))

(declare-fun arrayContainsKey!0 (array!41410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740249 (= res!497894 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740250 () Bool)

(assert (=> b!740250 (= e!413893 e!413891)))

(declare-fun res!497904 () Bool)

(assert (=> b!740250 (=> (not res!497904) (not e!413891))))

(assert (=> b!740250 (= res!497904 (= (seekEntryOrOpen!0 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328845))))

(assert (=> b!740250 (= lt!328845 (Found!7422 j!159))))

(declare-fun b!740251 () Bool)

(assert (=> b!740251 (= e!413884 e!413890)))

(declare-fun res!497886 () Bool)

(assert (=> b!740251 (=> (not res!497886) (not e!413890))))

(declare-fun lt!328851 () SeekEntryResult!7422)

(assert (=> b!740251 (= res!497886 (or (= lt!328851 (MissingZero!7422 i!1173)) (= lt!328851 (MissingVacant!7422 i!1173))))))

(assert (=> b!740251 (= lt!328851 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740252 () Bool)

(declare-fun Unit!25309 () Unit!25306)

(assert (=> b!740252 (= e!413886 Unit!25309)))

(declare-fun lt!328846 () SeekEntryResult!7422)

(assert (=> b!740252 (= lt!328846 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19815 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740252 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328843 resIntermediateIndex!5 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328854)))

(declare-fun b!740253 () Bool)

(assert (=> b!740253 (= e!413892 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) (Found!7422 j!159)))))

(declare-fun b!740254 () Bool)

(declare-fun res!497887 () Bool)

(assert (=> b!740254 (=> (not res!497887) (not e!413884))))

(assert (=> b!740254 (= res!497887 (and (= (size!20236 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20236 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20236 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740255 () Bool)

(declare-fun res!497892 () Bool)

(assert (=> b!740255 (=> res!497892 e!413885)))

(assert (=> b!740255 (= res!497892 (not (= lt!328856 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328843 lt!328848 lt!328855 mask!3328))))))

(declare-fun b!740256 () Bool)

(declare-fun res!497888 () Bool)

(assert (=> b!740256 (=> (not res!497888) (not e!413890))))

(assert (=> b!740256 (= res!497888 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20236 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20236 a!3186))))))

(declare-fun b!740257 () Bool)

(assert (=> b!740257 (= e!413895 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328843 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328844)))))

(declare-fun b!740258 () Bool)

(declare-fun res!497900 () Bool)

(assert (=> b!740258 (=> (not res!497900) (not e!413884))))

(assert (=> b!740258 (= res!497900 (validKeyInArray!0 (select (arr!19815 a!3186) j!159)))))

(declare-fun b!740259 () Bool)

(declare-fun res!497895 () Bool)

(assert (=> b!740259 (=> res!497895 e!413885)))

(assert (=> b!740259 (= res!497895 e!413895)))

(declare-fun c!81557 () Bool)

(assert (=> b!740259 (= c!81557 lt!328847)))

(declare-fun b!740260 () Bool)

(declare-fun res!497903 () Bool)

(assert (=> b!740260 (=> (not res!497903) (not e!413890))))

(assert (=> b!740260 (= res!497903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740261 () Bool)

(assert (=> b!740261 (= e!413892 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19815 a!3186) j!159) a!3186 mask!3328) lt!328844))))

(assert (= (and start!65284 res!497891) b!740254))

(assert (= (and b!740254 res!497887) b!740258))

(assert (= (and b!740258 res!497900) b!740243))

(assert (= (and b!740243 res!497889) b!740249))

(assert (= (and b!740249 res!497894) b!740251))

(assert (= (and b!740251 res!497886) b!740260))

(assert (= (and b!740260 res!497903) b!740237))

(assert (= (and b!740237 res!497896) b!740256))

(assert (= (and b!740256 res!497888) b!740247))

(assert (= (and b!740247 res!497890) b!740238))

(assert (= (and b!740238 res!497893) b!740241))

(assert (= (and b!740241 c!81558) b!740261))

(assert (= (and b!740241 (not c!81558)) b!740253))

(assert (= (and b!740241 res!497899) b!740245))

(assert (= (and b!740245 res!497902) b!740240))

(assert (= (and b!740240 res!497897) b!740250))

(assert (= (and b!740250 res!497904) b!740239))

(assert (= (and b!740240 (not res!497898)) b!740244))

(assert (= (and b!740244 c!81556) b!740246))

(assert (= (and b!740244 (not c!81556)) b!740252))

(assert (= (and b!740244 (not res!497901)) b!740259))

(assert (= (and b!740259 c!81557) b!740257))

(assert (= (and b!740259 (not c!81557)) b!740248))

(assert (= (and b!740259 (not res!497895)) b!740255))

(assert (= (and b!740255 (not res!497892)) b!740242))

(declare-fun m!691489 () Bool)

(assert (=> b!740257 m!691489))

(assert (=> b!740257 m!691489))

(declare-fun m!691491 () Bool)

(assert (=> b!740257 m!691491))

(assert (=> b!740250 m!691489))

(assert (=> b!740250 m!691489))

(declare-fun m!691493 () Bool)

(assert (=> b!740250 m!691493))

(declare-fun m!691495 () Bool)

(assert (=> b!740244 m!691495))

(assert (=> b!740248 m!691489))

(assert (=> b!740248 m!691489))

(declare-fun m!691497 () Bool)

(assert (=> b!740248 m!691497))

(declare-fun m!691499 () Bool)

(assert (=> b!740243 m!691499))

(assert (=> b!740258 m!691489))

(assert (=> b!740258 m!691489))

(declare-fun m!691501 () Bool)

(assert (=> b!740258 m!691501))

(declare-fun m!691503 () Bool)

(assert (=> b!740251 m!691503))

(assert (=> b!740253 m!691489))

(assert (=> b!740253 m!691489))

(declare-fun m!691505 () Bool)

(assert (=> b!740253 m!691505))

(declare-fun m!691507 () Bool)

(assert (=> b!740249 m!691507))

(declare-fun m!691509 () Bool)

(assert (=> start!65284 m!691509))

(declare-fun m!691511 () Bool)

(assert (=> start!65284 m!691511))

(declare-fun m!691513 () Bool)

(assert (=> b!740240 m!691513))

(declare-fun m!691515 () Bool)

(assert (=> b!740240 m!691515))

(assert (=> b!740247 m!691489))

(assert (=> b!740247 m!691489))

(declare-fun m!691517 () Bool)

(assert (=> b!740247 m!691517))

(assert (=> b!740247 m!691517))

(assert (=> b!740247 m!691489))

(declare-fun m!691519 () Bool)

(assert (=> b!740247 m!691519))

(assert (=> b!740252 m!691489))

(assert (=> b!740252 m!691489))

(assert (=> b!740252 m!691505))

(assert (=> b!740252 m!691489))

(assert (=> b!740252 m!691497))

(assert (=> b!740246 m!691489))

(assert (=> b!740246 m!691489))

(assert (=> b!740246 m!691491))

(declare-fun m!691521 () Bool)

(assert (=> b!740238 m!691521))

(declare-fun m!691523 () Bool)

(assert (=> b!740245 m!691523))

(declare-fun m!691525 () Bool)

(assert (=> b!740245 m!691525))

(declare-fun m!691527 () Bool)

(assert (=> b!740245 m!691527))

(assert (=> b!740245 m!691527))

(declare-fun m!691529 () Bool)

(assert (=> b!740245 m!691529))

(declare-fun m!691531 () Bool)

(assert (=> b!740245 m!691531))

(assert (=> b!740239 m!691489))

(assert (=> b!740239 m!691489))

(declare-fun m!691533 () Bool)

(assert (=> b!740239 m!691533))

(assert (=> b!740261 m!691489))

(assert (=> b!740261 m!691489))

(declare-fun m!691535 () Bool)

(assert (=> b!740261 m!691535))

(declare-fun m!691537 () Bool)

(assert (=> b!740255 m!691537))

(declare-fun m!691539 () Bool)

(assert (=> b!740237 m!691539))

(declare-fun m!691541 () Bool)

(assert (=> b!740242 m!691541))

(declare-fun m!691543 () Bool)

(assert (=> b!740242 m!691543))

(declare-fun m!691545 () Bool)

(assert (=> b!740260 m!691545))

(push 1)

