; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66818 () Bool)

(assert start!66818)

(declare-fun b!770285 () Bool)

(declare-fun res!521169 () Bool)

(declare-fun e!428894 () Bool)

(assert (=> b!770285 (=> (not res!521169) (not e!428894))))

(declare-datatypes ((array!42335 0))(
  ( (array!42336 (arr!20264 (Array (_ BitVec 32) (_ BitVec 64))) (size!20685 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42335)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42335 (_ BitVec 32)) Bool)

(assert (=> b!770285 (= res!521169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770286 () Bool)

(declare-datatypes ((Unit!26520 0))(
  ( (Unit!26521) )
))
(declare-fun e!428898 () Unit!26520)

(declare-fun Unit!26522 () Unit!26520)

(assert (=> b!770286 (= e!428898 Unit!26522)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7871 0))(
  ( (MissingZero!7871 (index!33851 (_ BitVec 32))) (Found!7871 (index!33852 (_ BitVec 32))) (Intermediate!7871 (undefined!8683 Bool) (index!33853 (_ BitVec 32)) (x!64803 (_ BitVec 32))) (Undefined!7871) (MissingVacant!7871 (index!33854 (_ BitVec 32))) )
))
(declare-fun lt!342849 () SeekEntryResult!7871)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42335 (_ BitVec 32)) SeekEntryResult!7871)

(assert (=> b!770286 (= lt!342849 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20264 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342856 () (_ BitVec 32))

(assert (=> b!770286 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342856 resIntermediateIndex!5 (select (arr!20264 a!3186) j!159) a!3186 mask!3328) (Found!7871 j!159))))

(declare-fun b!770287 () Bool)

(declare-fun res!521176 () Bool)

(declare-fun e!428896 () Bool)

(assert (=> b!770287 (=> (not res!521176) (not e!428896))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770287 (= res!521176 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20264 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770288 () Bool)

(declare-fun res!521166 () Bool)

(assert (=> b!770288 (=> (not res!521166) (not e!428896))))

(declare-fun e!428899 () Bool)

(assert (=> b!770288 (= res!521166 e!428899)))

(declare-fun c!84957 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770288 (= c!84957 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770289 () Bool)

(declare-fun res!521168 () Bool)

(declare-fun e!428892 () Bool)

(assert (=> b!770289 (=> (not res!521168) (not e!428892))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770289 (= res!521168 (validKeyInArray!0 k!2102))))

(declare-fun b!770291 () Bool)

(declare-fun lt!342859 () SeekEntryResult!7871)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42335 (_ BitVec 32)) SeekEntryResult!7871)

(assert (=> b!770291 (= e!428899 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20264 a!3186) j!159) a!3186 mask!3328) lt!342859))))

(declare-fun b!770292 () Bool)

(assert (=> b!770292 (= e!428894 e!428896)))

(declare-fun res!521170 () Bool)

(assert (=> b!770292 (=> (not res!521170) (not e!428896))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770292 (= res!521170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20264 a!3186) j!159) mask!3328) (select (arr!20264 a!3186) j!159) a!3186 mask!3328) lt!342859))))

(assert (=> b!770292 (= lt!342859 (Intermediate!7871 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770293 () Bool)

(declare-fun e!428897 () Bool)

(declare-fun e!428890 () Bool)

(assert (=> b!770293 (= e!428897 e!428890)))

(declare-fun res!521164 () Bool)

(assert (=> b!770293 (=> (not res!521164) (not e!428890))))

(declare-fun lt!342853 () SeekEntryResult!7871)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42335 (_ BitVec 32)) SeekEntryResult!7871)

(assert (=> b!770293 (= res!521164 (= (seekEntryOrOpen!0 (select (arr!20264 a!3186) j!159) a!3186 mask!3328) lt!342853))))

(assert (=> b!770293 (= lt!342853 (Found!7871 j!159))))

(declare-fun b!770294 () Bool)

(assert (=> b!770294 (= e!428899 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20264 a!3186) j!159) a!3186 mask!3328) (Found!7871 j!159)))))

(declare-fun b!770295 () Bool)

(declare-fun e!428895 () Bool)

(assert (=> b!770295 (= e!428896 e!428895)))

(declare-fun res!521175 () Bool)

(assert (=> b!770295 (=> (not res!521175) (not e!428895))))

(declare-fun lt!342858 () SeekEntryResult!7871)

(declare-fun lt!342850 () SeekEntryResult!7871)

(assert (=> b!770295 (= res!521175 (= lt!342858 lt!342850))))

(declare-fun lt!342857 () array!42335)

(declare-fun lt!342852 () (_ BitVec 64))

(assert (=> b!770295 (= lt!342850 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342852 lt!342857 mask!3328))))

(assert (=> b!770295 (= lt!342858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342852 mask!3328) lt!342852 lt!342857 mask!3328))))

(assert (=> b!770295 (= lt!342852 (select (store (arr!20264 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770295 (= lt!342857 (array!42336 (store (arr!20264 a!3186) i!1173 k!2102) (size!20685 a!3186)))))

(declare-fun b!770296 () Bool)

(declare-fun res!521177 () Bool)

(assert (=> b!770296 (=> (not res!521177) (not e!428894))))

(assert (=> b!770296 (= res!521177 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20685 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20685 a!3186))))))

(declare-fun b!770297 () Bool)

(declare-fun res!521179 () Bool)

(assert (=> b!770297 (=> (not res!521179) (not e!428892))))

(assert (=> b!770297 (= res!521179 (validKeyInArray!0 (select (arr!20264 a!3186) j!159)))))

(declare-fun b!770298 () Bool)

(declare-fun res!521173 () Bool)

(assert (=> b!770298 (=> (not res!521173) (not e!428892))))

(assert (=> b!770298 (= res!521173 (and (= (size!20685 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20685 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20685 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770299 () Bool)

(declare-fun res!521167 () Bool)

(assert (=> b!770299 (=> (not res!521167) (not e!428892))))

(declare-fun arrayContainsKey!0 (array!42335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770299 (= res!521167 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770300 () Bool)

(assert (=> b!770300 (= e!428892 e!428894)))

(declare-fun res!521171 () Bool)

(assert (=> b!770300 (=> (not res!521171) (not e!428894))))

(declare-fun lt!342854 () SeekEntryResult!7871)

(assert (=> b!770300 (= res!521171 (or (= lt!342854 (MissingZero!7871 i!1173)) (= lt!342854 (MissingVacant!7871 i!1173))))))

(assert (=> b!770300 (= lt!342854 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770290 () Bool)

(declare-fun res!521165 () Bool)

(assert (=> b!770290 (=> (not res!521165) (not e!428894))))

(declare-datatypes ((List!14319 0))(
  ( (Nil!14316) (Cons!14315 (h!15414 (_ BitVec 64)) (t!20642 List!14319)) )
))
(declare-fun arrayNoDuplicates!0 (array!42335 (_ BitVec 32) List!14319) Bool)

(assert (=> b!770290 (= res!521165 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14316))))

(declare-fun res!521174 () Bool)

(assert (=> start!66818 (=> (not res!521174) (not e!428892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66818 (= res!521174 (validMask!0 mask!3328))))

(assert (=> start!66818 e!428892))

(assert (=> start!66818 true))

(declare-fun array_inv!16038 (array!42335) Bool)

(assert (=> start!66818 (array_inv!16038 a!3186)))

(declare-fun b!770301 () Bool)

(declare-fun e!428891 () Bool)

(assert (=> b!770301 (= e!428895 (not e!428891))))

(declare-fun res!521172 () Bool)

(assert (=> b!770301 (=> res!521172 e!428891)))

(assert (=> b!770301 (= res!521172 (or (not (is-Intermediate!7871 lt!342850)) (bvsge x!1131 (x!64803 lt!342850))))))

(assert (=> b!770301 e!428897))

(declare-fun res!521178 () Bool)

(assert (=> b!770301 (=> (not res!521178) (not e!428897))))

(assert (=> b!770301 (= res!521178 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342851 () Unit!26520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26520)

(assert (=> b!770301 (= lt!342851 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770302 () Bool)

(declare-fun Unit!26523 () Unit!26520)

(assert (=> b!770302 (= e!428898 Unit!26523)))

(assert (=> b!770302 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342856 (select (arr!20264 a!3186) j!159) a!3186 mask!3328) lt!342859)))

(declare-fun b!770303 () Bool)

(assert (=> b!770303 (= e!428890 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20264 a!3186) j!159) a!3186 mask!3328) lt!342853))))

(declare-fun b!770304 () Bool)

(assert (=> b!770304 (= e!428891 true)))

(declare-fun lt!342855 () Unit!26520)

(assert (=> b!770304 (= lt!342855 e!428898)))

(declare-fun c!84956 () Bool)

(assert (=> b!770304 (= c!84956 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770304 (= lt!342856 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!66818 res!521174) b!770298))

(assert (= (and b!770298 res!521173) b!770297))

(assert (= (and b!770297 res!521179) b!770289))

(assert (= (and b!770289 res!521168) b!770299))

(assert (= (and b!770299 res!521167) b!770300))

(assert (= (and b!770300 res!521171) b!770285))

(assert (= (and b!770285 res!521169) b!770290))

(assert (= (and b!770290 res!521165) b!770296))

(assert (= (and b!770296 res!521177) b!770292))

(assert (= (and b!770292 res!521170) b!770287))

(assert (= (and b!770287 res!521176) b!770288))

(assert (= (and b!770288 c!84957) b!770291))

(assert (= (and b!770288 (not c!84957)) b!770294))

(assert (= (and b!770288 res!521166) b!770295))

(assert (= (and b!770295 res!521175) b!770301))

(assert (= (and b!770301 res!521178) b!770293))

(assert (= (and b!770293 res!521164) b!770303))

(assert (= (and b!770301 (not res!521172)) b!770304))

(assert (= (and b!770304 c!84956) b!770302))

(assert (= (and b!770304 (not c!84956)) b!770286))

(declare-fun m!715647 () Bool)

(assert (=> b!770301 m!715647))

(declare-fun m!715649 () Bool)

(assert (=> b!770301 m!715649))

(declare-fun m!715651 () Bool)

(assert (=> b!770303 m!715651))

(assert (=> b!770303 m!715651))

(declare-fun m!715653 () Bool)

(assert (=> b!770303 m!715653))

(assert (=> b!770302 m!715651))

(assert (=> b!770302 m!715651))

(declare-fun m!715655 () Bool)

(assert (=> b!770302 m!715655))

(assert (=> b!770292 m!715651))

(assert (=> b!770292 m!715651))

(declare-fun m!715657 () Bool)

(assert (=> b!770292 m!715657))

(assert (=> b!770292 m!715657))

(assert (=> b!770292 m!715651))

(declare-fun m!715659 () Bool)

(assert (=> b!770292 m!715659))

(assert (=> b!770291 m!715651))

(assert (=> b!770291 m!715651))

(declare-fun m!715661 () Bool)

(assert (=> b!770291 m!715661))

(assert (=> b!770286 m!715651))

(assert (=> b!770286 m!715651))

(declare-fun m!715663 () Bool)

(assert (=> b!770286 m!715663))

(assert (=> b!770286 m!715651))

(declare-fun m!715665 () Bool)

(assert (=> b!770286 m!715665))

(declare-fun m!715667 () Bool)

(assert (=> b!770287 m!715667))

(assert (=> b!770293 m!715651))

(assert (=> b!770293 m!715651))

(declare-fun m!715669 () Bool)

(assert (=> b!770293 m!715669))

(declare-fun m!715671 () Bool)

(assert (=> b!770295 m!715671))

(declare-fun m!715673 () Bool)

(assert (=> b!770295 m!715673))

(declare-fun m!715675 () Bool)

(assert (=> b!770295 m!715675))

(declare-fun m!715677 () Bool)

(assert (=> b!770295 m!715677))

(declare-fun m!715679 () Bool)

(assert (=> b!770295 m!715679))

(assert (=> b!770295 m!715677))

(declare-fun m!715681 () Bool)

(assert (=> b!770285 m!715681))

(declare-fun m!715683 () Bool)

(assert (=> start!66818 m!715683))

(declare-fun m!715685 () Bool)

(assert (=> start!66818 m!715685))

(declare-fun m!715687 () Bool)

(assert (=> b!770304 m!715687))

(declare-fun m!715689 () Bool)

(assert (=> b!770290 m!715689))

(declare-fun m!715691 () Bool)

(assert (=> b!770289 m!715691))

(declare-fun m!715693 () Bool)

(assert (=> b!770300 m!715693))

(assert (=> b!770294 m!715651))

(assert (=> b!770294 m!715651))

(assert (=> b!770294 m!715663))

(declare-fun m!715695 () Bool)

(assert (=> b!770299 m!715695))

(assert (=> b!770297 m!715651))

(assert (=> b!770297 m!715651))

(declare-fun m!715697 () Bool)

(assert (=> b!770297 m!715697))

(push 1)

