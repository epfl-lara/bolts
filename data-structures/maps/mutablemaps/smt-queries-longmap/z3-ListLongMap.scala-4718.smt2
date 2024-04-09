; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65388 () Bool)

(assert start!65388)

(declare-fun b!743239 () Bool)

(declare-fun e!415301 () Bool)

(declare-fun e!415305 () Bool)

(assert (=> b!743239 (= e!415301 e!415305)))

(declare-fun res!500480 () Bool)

(assert (=> b!743239 (=> (not res!500480) (not e!415305))))

(declare-datatypes ((SeekEntryResult!7474 0))(
  ( (MissingZero!7474 (index!32263 (_ BitVec 32))) (Found!7474 (index!32264 (_ BitVec 32))) (Intermediate!7474 (undefined!8286 Bool) (index!32265 (_ BitVec 32)) (x!63257 (_ BitVec 32))) (Undefined!7474) (MissingVacant!7474 (index!32266 (_ BitVec 32))) )
))
(declare-fun lt!330184 () SeekEntryResult!7474)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743239 (= res!500480 (or (= lt!330184 (MissingZero!7474 i!1173)) (= lt!330184 (MissingVacant!7474 i!1173))))))

(declare-datatypes ((array!41514 0))(
  ( (array!41515 (arr!19867 (Array (_ BitVec 32) (_ BitVec 64))) (size!20288 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41514)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41514 (_ BitVec 32)) SeekEntryResult!7474)

(assert (=> b!743239 (= lt!330184 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!743240 () Bool)

(declare-fun e!415304 () Bool)

(declare-fun e!415300 () Bool)

(assert (=> b!743240 (= e!415304 (not e!415300))))

(declare-fun res!500493 () Bool)

(assert (=> b!743240 (=> res!500493 e!415300)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!330191 () SeekEntryResult!7474)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!743240 (= res!500493 (or (not ((_ is Intermediate!7474) lt!330191)) (bvslt x!1131 (x!63257 lt!330191)) (not (= x!1131 (x!63257 lt!330191))) (not (= index!1321 (index!32265 lt!330191)))))))

(declare-fun e!415306 () Bool)

(assert (=> b!743240 e!415306))

(declare-fun res!500481 () Bool)

(assert (=> b!743240 (=> (not res!500481) (not e!415306))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41514 (_ BitVec 32)) Bool)

(assert (=> b!743240 (= res!500481 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25428 0))(
  ( (Unit!25429) )
))
(declare-fun lt!330188 () Unit!25428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25428)

(assert (=> b!743240 (= lt!330188 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743241 () Bool)

(declare-fun res!500492 () Bool)

(assert (=> b!743241 (=> (not res!500492) (not e!415305))))

(declare-datatypes ((List!13922 0))(
  ( (Nil!13919) (Cons!13918 (h!14990 (_ BitVec 64)) (t!20245 List!13922)) )
))
(declare-fun arrayNoDuplicates!0 (array!41514 (_ BitVec 32) List!13922) Bool)

(assert (=> b!743241 (= res!500492 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13919))))

(declare-fun b!743242 () Bool)

(declare-fun res!500489 () Bool)

(assert (=> b!743242 (=> (not res!500489) (not e!415301))))

(declare-fun arrayContainsKey!0 (array!41514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743242 (= res!500489 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!415308 () Bool)

(declare-fun b!743243 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41514 (_ BitVec 32)) SeekEntryResult!7474)

(assert (=> b!743243 (= e!415308 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19867 a!3186) j!159) a!3186 mask!3328) (Found!7474 j!159)))))

(declare-fun b!743244 () Bool)

(declare-fun res!500483 () Bool)

(assert (=> b!743244 (=> (not res!500483) (not e!415301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743244 (= res!500483 (validKeyInArray!0 k0!2102))))

(declare-fun e!415307 () Bool)

(declare-fun lt!330185 () SeekEntryResult!7474)

(declare-fun b!743245 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743245 (= e!415307 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19867 a!3186) j!159) a!3186 mask!3328) lt!330185))))

(declare-fun b!743246 () Bool)

(declare-fun e!415303 () Bool)

(assert (=> b!743246 (= e!415305 e!415303)))

(declare-fun res!500477 () Bool)

(assert (=> b!743246 (=> (not res!500477) (not e!415303))))

(declare-fun lt!330187 () SeekEntryResult!7474)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41514 (_ BitVec 32)) SeekEntryResult!7474)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743246 (= res!500477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19867 a!3186) j!159) mask!3328) (select (arr!19867 a!3186) j!159) a!3186 mask!3328) lt!330187))))

(assert (=> b!743246 (= lt!330187 (Intermediate!7474 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743247 () Bool)

(declare-fun res!500488 () Bool)

(assert (=> b!743247 (=> (not res!500488) (not e!415305))))

(assert (=> b!743247 (= res!500488 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20288 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20288 a!3186))))))

(declare-fun b!743248 () Bool)

(assert (=> b!743248 (= e!415300 true)))

(declare-fun lt!330189 () SeekEntryResult!7474)

(declare-fun lt!330183 () (_ BitVec 64))

(declare-fun lt!330190 () array!41514)

(assert (=> b!743248 (= lt!330189 (seekEntryOrOpen!0 lt!330183 lt!330190 mask!3328))))

(declare-fun b!743249 () Bool)

(declare-fun res!500491 () Bool)

(assert (=> b!743249 (=> (not res!500491) (not e!415305))))

(assert (=> b!743249 (= res!500491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743250 () Bool)

(declare-fun res!500476 () Bool)

(assert (=> b!743250 (=> (not res!500476) (not e!415301))))

(assert (=> b!743250 (= res!500476 (and (= (size!20288 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20288 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20288 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!500484 () Bool)

(assert (=> start!65388 (=> (not res!500484) (not e!415301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65388 (= res!500484 (validMask!0 mask!3328))))

(assert (=> start!65388 e!415301))

(assert (=> start!65388 true))

(declare-fun array_inv!15641 (array!41514) Bool)

(assert (=> start!65388 (array_inv!15641 a!3186)))

(declare-fun b!743251 () Bool)

(declare-fun res!500479 () Bool)

(assert (=> b!743251 (=> (not res!500479) (not e!415303))))

(assert (=> b!743251 (= res!500479 e!415308)))

(declare-fun c!81762 () Bool)

(assert (=> b!743251 (= c!81762 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743252 () Bool)

(declare-fun res!500490 () Bool)

(assert (=> b!743252 (=> res!500490 e!415300)))

(assert (=> b!743252 (= res!500490 (or (not (= (select (store (arr!19867 a!3186) i!1173 k0!2102) index!1321) lt!330183)) (undefined!8286 lt!330191)))))

(declare-fun b!743253 () Bool)

(declare-fun res!500482 () Bool)

(assert (=> b!743253 (=> res!500482 e!415300)))

(assert (=> b!743253 (= res!500482 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19867 a!3186) j!159) a!3186 mask!3328) (Found!7474 j!159))))))

(declare-fun b!743254 () Bool)

(assert (=> b!743254 (= e!415303 e!415304)))

(declare-fun res!500478 () Bool)

(assert (=> b!743254 (=> (not res!500478) (not e!415304))))

(declare-fun lt!330186 () SeekEntryResult!7474)

(assert (=> b!743254 (= res!500478 (= lt!330186 lt!330191))))

(assert (=> b!743254 (= lt!330191 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330183 lt!330190 mask!3328))))

(assert (=> b!743254 (= lt!330186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330183 mask!3328) lt!330183 lt!330190 mask!3328))))

(assert (=> b!743254 (= lt!330183 (select (store (arr!19867 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!743254 (= lt!330190 (array!41515 (store (arr!19867 a!3186) i!1173 k0!2102) (size!20288 a!3186)))))

(declare-fun b!743255 () Bool)

(declare-fun res!500487 () Bool)

(assert (=> b!743255 (=> (not res!500487) (not e!415303))))

(assert (=> b!743255 (= res!500487 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19867 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743256 () Bool)

(assert (=> b!743256 (= e!415306 e!415307)))

(declare-fun res!500486 () Bool)

(assert (=> b!743256 (=> (not res!500486) (not e!415307))))

(assert (=> b!743256 (= res!500486 (= (seekEntryOrOpen!0 (select (arr!19867 a!3186) j!159) a!3186 mask!3328) lt!330185))))

(assert (=> b!743256 (= lt!330185 (Found!7474 j!159))))

(declare-fun b!743257 () Bool)

(assert (=> b!743257 (= e!415308 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19867 a!3186) j!159) a!3186 mask!3328) lt!330187))))

(declare-fun b!743258 () Bool)

(declare-fun res!500485 () Bool)

(assert (=> b!743258 (=> (not res!500485) (not e!415301))))

(assert (=> b!743258 (= res!500485 (validKeyInArray!0 (select (arr!19867 a!3186) j!159)))))

(assert (= (and start!65388 res!500484) b!743250))

(assert (= (and b!743250 res!500476) b!743258))

(assert (= (and b!743258 res!500485) b!743244))

(assert (= (and b!743244 res!500483) b!743242))

(assert (= (and b!743242 res!500489) b!743239))

(assert (= (and b!743239 res!500480) b!743249))

(assert (= (and b!743249 res!500491) b!743241))

(assert (= (and b!743241 res!500492) b!743247))

(assert (= (and b!743247 res!500488) b!743246))

(assert (= (and b!743246 res!500477) b!743255))

(assert (= (and b!743255 res!500487) b!743251))

(assert (= (and b!743251 c!81762) b!743257))

(assert (= (and b!743251 (not c!81762)) b!743243))

(assert (= (and b!743251 res!500479) b!743254))

(assert (= (and b!743254 res!500478) b!743240))

(assert (= (and b!743240 res!500481) b!743256))

(assert (= (and b!743256 res!500486) b!743245))

(assert (= (and b!743240 (not res!500493)) b!743253))

(assert (= (and b!743253 (not res!500482)) b!743252))

(assert (= (and b!743252 (not res!500490)) b!743248))

(declare-fun m!694041 () Bool)

(assert (=> b!743256 m!694041))

(assert (=> b!743256 m!694041))

(declare-fun m!694043 () Bool)

(assert (=> b!743256 m!694043))

(declare-fun m!694045 () Bool)

(assert (=> b!743252 m!694045))

(declare-fun m!694047 () Bool)

(assert (=> b!743252 m!694047))

(declare-fun m!694049 () Bool)

(assert (=> b!743239 m!694049))

(declare-fun m!694051 () Bool)

(assert (=> b!743254 m!694051))

(declare-fun m!694053 () Bool)

(assert (=> b!743254 m!694053))

(assert (=> b!743254 m!694045))

(declare-fun m!694055 () Bool)

(assert (=> b!743254 m!694055))

(assert (=> b!743254 m!694051))

(declare-fun m!694057 () Bool)

(assert (=> b!743254 m!694057))

(assert (=> b!743243 m!694041))

(assert (=> b!743243 m!694041))

(declare-fun m!694059 () Bool)

(assert (=> b!743243 m!694059))

(assert (=> b!743245 m!694041))

(assert (=> b!743245 m!694041))

(declare-fun m!694061 () Bool)

(assert (=> b!743245 m!694061))

(assert (=> b!743246 m!694041))

(assert (=> b!743246 m!694041))

(declare-fun m!694063 () Bool)

(assert (=> b!743246 m!694063))

(assert (=> b!743246 m!694063))

(assert (=> b!743246 m!694041))

(declare-fun m!694065 () Bool)

(assert (=> b!743246 m!694065))

(declare-fun m!694067 () Bool)

(assert (=> b!743248 m!694067))

(declare-fun m!694069 () Bool)

(assert (=> b!743241 m!694069))

(declare-fun m!694071 () Bool)

(assert (=> b!743244 m!694071))

(declare-fun m!694073 () Bool)

(assert (=> start!65388 m!694073))

(declare-fun m!694075 () Bool)

(assert (=> start!65388 m!694075))

(assert (=> b!743253 m!694041))

(assert (=> b!743253 m!694041))

(assert (=> b!743253 m!694059))

(assert (=> b!743257 m!694041))

(assert (=> b!743257 m!694041))

(declare-fun m!694077 () Bool)

(assert (=> b!743257 m!694077))

(declare-fun m!694079 () Bool)

(assert (=> b!743249 m!694079))

(assert (=> b!743258 m!694041))

(assert (=> b!743258 m!694041))

(declare-fun m!694081 () Bool)

(assert (=> b!743258 m!694081))

(declare-fun m!694083 () Bool)

(assert (=> b!743242 m!694083))

(declare-fun m!694085 () Bool)

(assert (=> b!743255 m!694085))

(declare-fun m!694087 () Bool)

(assert (=> b!743240 m!694087))

(declare-fun m!694089 () Bool)

(assert (=> b!743240 m!694089))

(check-sat (not b!743256) (not b!743239) (not b!743243) (not b!743248) (not b!743246) (not b!743244) (not b!743257) (not b!743249) (not start!65388) (not b!743253) (not b!743241) (not b!743242) (not b!743245) (not b!743240) (not b!743254) (not b!743258))
(check-sat)
