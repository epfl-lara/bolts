; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64964 () Bool)

(assert start!64964)

(declare-fun b!733259 () Bool)

(declare-fun res!492902 () Bool)

(declare-fun e!410307 () Bool)

(assert (=> b!733259 (=> (not res!492902) (not e!410307))))

(declare-datatypes ((array!41228 0))(
  ( (array!41229 (arr!19727 (Array (_ BitVec 32) (_ BitVec 64))) (size!20148 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41228)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733259 (= res!492902 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733260 () Bool)

(declare-fun e!410313 () Bool)

(declare-fun e!410308 () Bool)

(assert (=> b!733260 (= e!410313 e!410308)))

(declare-fun res!492891 () Bool)

(assert (=> b!733260 (=> (not res!492891) (not e!410308))))

(declare-datatypes ((SeekEntryResult!7334 0))(
  ( (MissingZero!7334 (index!31703 (_ BitVec 32))) (Found!7334 (index!31704 (_ BitVec 32))) (Intermediate!7334 (undefined!8146 Bool) (index!31705 (_ BitVec 32)) (x!62717 (_ BitVec 32))) (Undefined!7334) (MissingVacant!7334 (index!31706 (_ BitVec 32))) )
))
(declare-fun lt!325012 () SeekEntryResult!7334)

(declare-fun lt!325015 () SeekEntryResult!7334)

(assert (=> b!733260 (= res!492891 (= lt!325012 lt!325015))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!325014 () array!41228)

(declare-fun lt!325013 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41228 (_ BitVec 32)) SeekEntryResult!7334)

(assert (=> b!733260 (= lt!325015 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325013 lt!325014 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733260 (= lt!325012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325013 mask!3328) lt!325013 lt!325014 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733260 (= lt!325013 (select (store (arr!19727 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!733260 (= lt!325014 (array!41229 (store (arr!19727 a!3186) i!1173 k!2102) (size!20148 a!3186)))))

(declare-fun b!733261 () Bool)

(declare-fun res!492890 () Bool)

(assert (=> b!733261 (=> (not res!492890) (not e!410307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733261 (= res!492890 (validKeyInArray!0 (select (arr!19727 a!3186) j!159)))))

(declare-fun b!733262 () Bool)

(declare-fun res!492900 () Bool)

(declare-fun e!410305 () Bool)

(assert (=> b!733262 (=> (not res!492900) (not e!410305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41228 (_ BitVec 32)) Bool)

(assert (=> b!733262 (= res!492900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733263 () Bool)

(declare-fun e!410312 () Bool)

(assert (=> b!733263 (= e!410308 (not e!410312))))

(declare-fun res!492892 () Bool)

(assert (=> b!733263 (=> res!492892 e!410312)))

(assert (=> b!733263 (= res!492892 (or (not (is-Intermediate!7334 lt!325015)) (bvsge x!1131 (x!62717 lt!325015))))))

(declare-fun e!410304 () Bool)

(assert (=> b!733263 e!410304))

(declare-fun res!492895 () Bool)

(assert (=> b!733263 (=> (not res!492895) (not e!410304))))

(assert (=> b!733263 (= res!492895 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24986 0))(
  ( (Unit!24987) )
))
(declare-fun lt!325016 () Unit!24986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41228 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24986)

(assert (=> b!733263 (= lt!325016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733264 () Bool)

(declare-fun res!492899 () Bool)

(assert (=> b!733264 (=> (not res!492899) (not e!410305))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733264 (= res!492899 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20148 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20148 a!3186))))))

(declare-fun lt!325010 () SeekEntryResult!7334)

(declare-fun b!733265 () Bool)

(declare-fun e!410309 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41228 (_ BitVec 32)) SeekEntryResult!7334)

(assert (=> b!733265 (= e!410309 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19727 a!3186) j!159) a!3186 mask!3328) lt!325010))))

(declare-fun b!733266 () Bool)

(declare-fun res!492904 () Bool)

(assert (=> b!733266 (=> (not res!492904) (not e!410305))))

(declare-datatypes ((List!13782 0))(
  ( (Nil!13779) (Cons!13778 (h!14844 (_ BitVec 64)) (t!20105 List!13782)) )
))
(declare-fun arrayNoDuplicates!0 (array!41228 (_ BitVec 32) List!13782) Bool)

(assert (=> b!733266 (= res!492904 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13779))))

(declare-fun b!733267 () Bool)

(declare-fun e!410310 () Bool)

(declare-fun lt!325019 () SeekEntryResult!7334)

(assert (=> b!733267 (= e!410310 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19727 a!3186) j!159) a!3186 mask!3328) lt!325019))))

(declare-fun res!492905 () Bool)

(assert (=> start!64964 (=> (not res!492905) (not e!410307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64964 (= res!492905 (validMask!0 mask!3328))))

(assert (=> start!64964 e!410307))

(assert (=> start!64964 true))

(declare-fun array_inv!15501 (array!41228) Bool)

(assert (=> start!64964 (array_inv!15501 a!3186)))

(declare-fun b!733268 () Bool)

(declare-fun res!492893 () Bool)

(assert (=> b!733268 (=> (not res!492893) (not e!410313))))

(assert (=> b!733268 (= res!492893 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19727 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733269 () Bool)

(declare-fun e!410306 () Bool)

(assert (=> b!733269 (= e!410312 e!410306)))

(declare-fun res!492894 () Bool)

(assert (=> b!733269 (=> res!492894 e!410306)))

(assert (=> b!733269 (= res!492894 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!325017 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733269 (= lt!325017 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!733270 () Bool)

(declare-fun res!492896 () Bool)

(assert (=> b!733270 (=> (not res!492896) (not e!410307))))

(assert (=> b!733270 (= res!492896 (validKeyInArray!0 k!2102))))

(declare-fun b!733271 () Bool)

(declare-fun res!492901 () Bool)

(assert (=> b!733271 (=> (not res!492901) (not e!410307))))

(assert (=> b!733271 (= res!492901 (and (= (size!20148 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20148 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20148 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733272 () Bool)

(assert (=> b!733272 (= e!410305 e!410313)))

(declare-fun res!492897 () Bool)

(assert (=> b!733272 (=> (not res!492897) (not e!410313))))

(assert (=> b!733272 (= res!492897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19727 a!3186) j!159) mask!3328) (select (arr!19727 a!3186) j!159) a!3186 mask!3328) lt!325019))))

(assert (=> b!733272 (= lt!325019 (Intermediate!7334 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733273 () Bool)

(assert (=> b!733273 (= e!410310 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19727 a!3186) j!159) a!3186 mask!3328) (Found!7334 j!159)))))

(declare-fun b!733274 () Bool)

(assert (=> b!733274 (= e!410306 true)))

(declare-fun lt!325011 () SeekEntryResult!7334)

(assert (=> b!733274 (= lt!325011 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19727 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733275 () Bool)

(assert (=> b!733275 (= e!410304 e!410309)))

(declare-fun res!492903 () Bool)

(assert (=> b!733275 (=> (not res!492903) (not e!410309))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41228 (_ BitVec 32)) SeekEntryResult!7334)

(assert (=> b!733275 (= res!492903 (= (seekEntryOrOpen!0 (select (arr!19727 a!3186) j!159) a!3186 mask!3328) lt!325010))))

(assert (=> b!733275 (= lt!325010 (Found!7334 j!159))))

(declare-fun b!733276 () Bool)

(declare-fun res!492906 () Bool)

(assert (=> b!733276 (=> (not res!492906) (not e!410313))))

(assert (=> b!733276 (= res!492906 e!410310)))

(declare-fun c!80562 () Bool)

(assert (=> b!733276 (= c!80562 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733277 () Bool)

(assert (=> b!733277 (= e!410307 e!410305)))

(declare-fun res!492898 () Bool)

(assert (=> b!733277 (=> (not res!492898) (not e!410305))))

(declare-fun lt!325018 () SeekEntryResult!7334)

(assert (=> b!733277 (= res!492898 (or (= lt!325018 (MissingZero!7334 i!1173)) (= lt!325018 (MissingVacant!7334 i!1173))))))

(assert (=> b!733277 (= lt!325018 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64964 res!492905) b!733271))

(assert (= (and b!733271 res!492901) b!733261))

(assert (= (and b!733261 res!492890) b!733270))

(assert (= (and b!733270 res!492896) b!733259))

(assert (= (and b!733259 res!492902) b!733277))

(assert (= (and b!733277 res!492898) b!733262))

(assert (= (and b!733262 res!492900) b!733266))

(assert (= (and b!733266 res!492904) b!733264))

(assert (= (and b!733264 res!492899) b!733272))

(assert (= (and b!733272 res!492897) b!733268))

(assert (= (and b!733268 res!492893) b!733276))

(assert (= (and b!733276 c!80562) b!733267))

(assert (= (and b!733276 (not c!80562)) b!733273))

(assert (= (and b!733276 res!492906) b!733260))

(assert (= (and b!733260 res!492891) b!733263))

(assert (= (and b!733263 res!492895) b!733275))

(assert (= (and b!733275 res!492903) b!733265))

(assert (= (and b!733263 (not res!492892)) b!733269))

(assert (= (and b!733269 (not res!492894)) b!733274))

(declare-fun m!686257 () Bool)

(assert (=> b!733268 m!686257))

(declare-fun m!686259 () Bool)

(assert (=> b!733261 m!686259))

(assert (=> b!733261 m!686259))

(declare-fun m!686261 () Bool)

(assert (=> b!733261 m!686261))

(assert (=> b!733275 m!686259))

(assert (=> b!733275 m!686259))

(declare-fun m!686263 () Bool)

(assert (=> b!733275 m!686263))

(declare-fun m!686265 () Bool)

(assert (=> b!733269 m!686265))

(declare-fun m!686267 () Bool)

(assert (=> start!64964 m!686267))

(declare-fun m!686269 () Bool)

(assert (=> start!64964 m!686269))

(declare-fun m!686271 () Bool)

(assert (=> b!733270 m!686271))

(assert (=> b!733274 m!686259))

(assert (=> b!733274 m!686259))

(declare-fun m!686273 () Bool)

(assert (=> b!733274 m!686273))

(assert (=> b!733267 m!686259))

(assert (=> b!733267 m!686259))

(declare-fun m!686275 () Bool)

(assert (=> b!733267 m!686275))

(assert (=> b!733272 m!686259))

(assert (=> b!733272 m!686259))

(declare-fun m!686277 () Bool)

(assert (=> b!733272 m!686277))

(assert (=> b!733272 m!686277))

(assert (=> b!733272 m!686259))

(declare-fun m!686279 () Bool)

(assert (=> b!733272 m!686279))

(declare-fun m!686281 () Bool)

(assert (=> b!733263 m!686281))

(declare-fun m!686283 () Bool)

(assert (=> b!733263 m!686283))

(declare-fun m!686285 () Bool)

(assert (=> b!733262 m!686285))

(assert (=> b!733273 m!686259))

(assert (=> b!733273 m!686259))

(assert (=> b!733273 m!686273))

(declare-fun m!686287 () Bool)

(assert (=> b!733259 m!686287))

(declare-fun m!686289 () Bool)

(assert (=> b!733277 m!686289))

(declare-fun m!686291 () Bool)

(assert (=> b!733266 m!686291))

(assert (=> b!733265 m!686259))

(assert (=> b!733265 m!686259))

(declare-fun m!686293 () Bool)

(assert (=> b!733265 m!686293))

(declare-fun m!686295 () Bool)

(assert (=> b!733260 m!686295))

(declare-fun m!686297 () Bool)

(assert (=> b!733260 m!686297))

(declare-fun m!686299 () Bool)

(assert (=> b!733260 m!686299))

(declare-fun m!686301 () Bool)

(assert (=> b!733260 m!686301))

(assert (=> b!733260 m!686297))

(declare-fun m!686303 () Bool)

(assert (=> b!733260 m!686303))

(push 1)

