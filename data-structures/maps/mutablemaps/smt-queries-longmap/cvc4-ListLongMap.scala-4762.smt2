; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65654 () Bool)

(assert start!65654)

(declare-fun b!751235 () Bool)

(declare-fun res!507274 () Bool)

(declare-fun e!419110 () Bool)

(assert (=> b!751235 (=> res!507274 e!419110)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41780 0))(
  ( (array!41781 (arr!20000 (Array (_ BitVec 32) (_ BitVec 64))) (size!20421 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41780)

(declare-datatypes ((SeekEntryResult!7607 0))(
  ( (MissingZero!7607 (index!32795 (_ BitVec 32))) (Found!7607 (index!32796 (_ BitVec 32))) (Intermediate!7607 (undefined!8419 Bool) (index!32797 (_ BitVec 32)) (x!63742 (_ BitVec 32))) (Undefined!7607) (MissingVacant!7607 (index!32798 (_ BitVec 32))) )
))
(declare-fun lt!334110 () SeekEntryResult!7607)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41780 (_ BitVec 32)) SeekEntryResult!7607)

(assert (=> b!751235 (= res!507274 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20000 a!3186) j!159) a!3186 mask!3328) lt!334110)))))

(declare-fun b!751236 () Bool)

(declare-fun res!507267 () Bool)

(declare-fun e!419113 () Bool)

(assert (=> b!751236 (=> (not res!507267) (not e!419113))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751236 (= res!507267 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20421 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20421 a!3186))))))

(declare-fun b!751238 () Bool)

(declare-fun res!507271 () Bool)

(declare-fun e!419114 () Bool)

(assert (=> b!751238 (=> (not res!507271) (not e!419114))))

(declare-fun e!419105 () Bool)

(assert (=> b!751238 (= res!507271 e!419105)))

(declare-fun c!82367 () Bool)

(assert (=> b!751238 (= c!82367 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751239 () Bool)

(declare-fun e!419115 () Bool)

(assert (=> b!751239 (= e!419115 true)))

(declare-fun e!419109 () Bool)

(assert (=> b!751239 e!419109))

(declare-fun res!507273 () Bool)

(assert (=> b!751239 (=> (not res!507273) (not e!419109))))

(declare-fun lt!334105 () (_ BitVec 64))

(assert (=> b!751239 (= res!507273 (= lt!334105 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25830 0))(
  ( (Unit!25831) )
))
(declare-fun lt!334108 () Unit!25830)

(declare-fun e!419106 () Unit!25830)

(assert (=> b!751239 (= lt!334108 e!419106)))

(declare-fun c!82368 () Bool)

(assert (=> b!751239 (= c!82368 (= lt!334105 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751240 () Bool)

(assert (=> b!751240 (= e!419105 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20000 a!3186) j!159) a!3186 mask!3328) (Found!7607 j!159)))))

(declare-fun b!751241 () Bool)

(declare-fun e!419107 () Bool)

(assert (=> b!751241 (= e!419114 e!419107)))

(declare-fun res!507262 () Bool)

(assert (=> b!751241 (=> (not res!507262) (not e!419107))))

(declare-fun lt!334106 () SeekEntryResult!7607)

(declare-fun lt!334114 () SeekEntryResult!7607)

(assert (=> b!751241 (= res!507262 (= lt!334106 lt!334114))))

(declare-fun lt!334115 () array!41780)

(declare-fun lt!334113 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41780 (_ BitVec 32)) SeekEntryResult!7607)

(assert (=> b!751241 (= lt!334114 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334113 lt!334115 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751241 (= lt!334106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334113 mask!3328) lt!334113 lt!334115 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!751241 (= lt!334113 (select (store (arr!20000 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751241 (= lt!334115 (array!41781 (store (arr!20000 a!3186) i!1173 k!2102) (size!20421 a!3186)))))

(declare-fun b!751242 () Bool)

(assert (=> b!751242 (= e!419107 (not e!419110))))

(declare-fun res!507266 () Bool)

(assert (=> b!751242 (=> res!507266 e!419110)))

(assert (=> b!751242 (= res!507266 (or (not (is-Intermediate!7607 lt!334114)) (bvslt x!1131 (x!63742 lt!334114)) (not (= x!1131 (x!63742 lt!334114))) (not (= index!1321 (index!32797 lt!334114)))))))

(declare-fun e!419112 () Bool)

(assert (=> b!751242 e!419112))

(declare-fun res!507278 () Bool)

(assert (=> b!751242 (=> (not res!507278) (not e!419112))))

(declare-fun lt!334112 () SeekEntryResult!7607)

(assert (=> b!751242 (= res!507278 (= lt!334112 lt!334110))))

(assert (=> b!751242 (= lt!334110 (Found!7607 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41780 (_ BitVec 32)) SeekEntryResult!7607)

(assert (=> b!751242 (= lt!334112 (seekEntryOrOpen!0 (select (arr!20000 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41780 (_ BitVec 32)) Bool)

(assert (=> b!751242 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334107 () Unit!25830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41780 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25830)

(assert (=> b!751242 (= lt!334107 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751243 () Bool)

(declare-fun res!507276 () Bool)

(declare-fun e!419111 () Bool)

(assert (=> b!751243 (=> (not res!507276) (not e!419111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751243 (= res!507276 (validKeyInArray!0 k!2102))))

(declare-fun b!751244 () Bool)

(declare-fun Unit!25832 () Unit!25830)

(assert (=> b!751244 (= e!419106 Unit!25832)))

(declare-fun res!507279 () Bool)

(assert (=> start!65654 (=> (not res!507279) (not e!419111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65654 (= res!507279 (validMask!0 mask!3328))))

(assert (=> start!65654 e!419111))

(assert (=> start!65654 true))

(declare-fun array_inv!15774 (array!41780) Bool)

(assert (=> start!65654 (array_inv!15774 a!3186)))

(declare-fun b!751237 () Bool)

(assert (=> b!751237 (= e!419110 e!419115)))

(declare-fun res!507263 () Bool)

(assert (=> b!751237 (=> res!507263 e!419115)))

(assert (=> b!751237 (= res!507263 (= lt!334105 lt!334113))))

(assert (=> b!751237 (= lt!334105 (select (store (arr!20000 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751245 () Bool)

(declare-fun res!507270 () Bool)

(assert (=> b!751245 (=> (not res!507270) (not e!419111))))

(declare-fun arrayContainsKey!0 (array!41780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751245 (= res!507270 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751246 () Bool)

(declare-fun res!507269 () Bool)

(assert (=> b!751246 (=> (not res!507269) (not e!419113))))

(declare-datatypes ((List!14055 0))(
  ( (Nil!14052) (Cons!14051 (h!15123 (_ BitVec 64)) (t!20378 List!14055)) )
))
(declare-fun arrayNoDuplicates!0 (array!41780 (_ BitVec 32) List!14055) Bool)

(assert (=> b!751246 (= res!507269 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14052))))

(declare-fun b!751247 () Bool)

(declare-fun res!507275 () Bool)

(assert (=> b!751247 (=> (not res!507275) (not e!419111))))

(assert (=> b!751247 (= res!507275 (validKeyInArray!0 (select (arr!20000 a!3186) j!159)))))

(declare-fun b!751248 () Bool)

(assert (=> b!751248 (= e!419113 e!419114)))

(declare-fun res!507264 () Bool)

(assert (=> b!751248 (=> (not res!507264) (not e!419114))))

(declare-fun lt!334109 () SeekEntryResult!7607)

(assert (=> b!751248 (= res!507264 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20000 a!3186) j!159) mask!3328) (select (arr!20000 a!3186) j!159) a!3186 mask!3328) lt!334109))))

(assert (=> b!751248 (= lt!334109 (Intermediate!7607 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751249 () Bool)

(assert (=> b!751249 (= e!419111 e!419113)))

(declare-fun res!507277 () Bool)

(assert (=> b!751249 (=> (not res!507277) (not e!419113))))

(declare-fun lt!334111 () SeekEntryResult!7607)

(assert (=> b!751249 (= res!507277 (or (= lt!334111 (MissingZero!7607 i!1173)) (= lt!334111 (MissingVacant!7607 i!1173))))))

(assert (=> b!751249 (= lt!334111 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751250 () Bool)

(declare-fun res!507265 () Bool)

(assert (=> b!751250 (=> (not res!507265) (not e!419114))))

(assert (=> b!751250 (= res!507265 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20000 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751251 () Bool)

(assert (=> b!751251 (= e!419112 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20000 a!3186) j!159) a!3186 mask!3328) lt!334110))))

(declare-fun b!751252 () Bool)

(declare-fun res!507272 () Bool)

(assert (=> b!751252 (=> (not res!507272) (not e!419113))))

(assert (=> b!751252 (= res!507272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751253 () Bool)

(declare-fun Unit!25833 () Unit!25830)

(assert (=> b!751253 (= e!419106 Unit!25833)))

(assert (=> b!751253 false))

(declare-fun b!751254 () Bool)

(assert (=> b!751254 (= e!419105 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20000 a!3186) j!159) a!3186 mask!3328) lt!334109))))

(declare-fun b!751255 () Bool)

(declare-fun res!507268 () Bool)

(assert (=> b!751255 (=> (not res!507268) (not e!419111))))

(assert (=> b!751255 (= res!507268 (and (= (size!20421 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20421 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20421 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751256 () Bool)

(assert (=> b!751256 (= e!419109 (= (seekEntryOrOpen!0 lt!334113 lt!334115 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334113 lt!334115 mask!3328)))))

(assert (= (and start!65654 res!507279) b!751255))

(assert (= (and b!751255 res!507268) b!751247))

(assert (= (and b!751247 res!507275) b!751243))

(assert (= (and b!751243 res!507276) b!751245))

(assert (= (and b!751245 res!507270) b!751249))

(assert (= (and b!751249 res!507277) b!751252))

(assert (= (and b!751252 res!507272) b!751246))

(assert (= (and b!751246 res!507269) b!751236))

(assert (= (and b!751236 res!507267) b!751248))

(assert (= (and b!751248 res!507264) b!751250))

(assert (= (and b!751250 res!507265) b!751238))

(assert (= (and b!751238 c!82367) b!751254))

(assert (= (and b!751238 (not c!82367)) b!751240))

(assert (= (and b!751238 res!507271) b!751241))

(assert (= (and b!751241 res!507262) b!751242))

(assert (= (and b!751242 res!507278) b!751251))

(assert (= (and b!751242 (not res!507266)) b!751235))

(assert (= (and b!751235 (not res!507274)) b!751237))

(assert (= (and b!751237 (not res!507263)) b!751239))

(assert (= (and b!751239 c!82368) b!751253))

(assert (= (and b!751239 (not c!82368)) b!751244))

(assert (= (and b!751239 res!507273) b!751256))

(declare-fun m!700533 () Bool)

(assert (=> b!751245 m!700533))

(declare-fun m!700535 () Bool)

(assert (=> b!751256 m!700535))

(declare-fun m!700537 () Bool)

(assert (=> b!751256 m!700537))

(declare-fun m!700539 () Bool)

(assert (=> b!751241 m!700539))

(declare-fun m!700541 () Bool)

(assert (=> b!751241 m!700541))

(declare-fun m!700543 () Bool)

(assert (=> b!751241 m!700543))

(declare-fun m!700545 () Bool)

(assert (=> b!751241 m!700545))

(declare-fun m!700547 () Bool)

(assert (=> b!751241 m!700547))

(assert (=> b!751241 m!700545))

(declare-fun m!700549 () Bool)

(assert (=> b!751246 m!700549))

(declare-fun m!700551 () Bool)

(assert (=> b!751250 m!700551))

(declare-fun m!700553 () Bool)

(assert (=> b!751252 m!700553))

(declare-fun m!700555 () Bool)

(assert (=> start!65654 m!700555))

(declare-fun m!700557 () Bool)

(assert (=> start!65654 m!700557))

(declare-fun m!700559 () Bool)

(assert (=> b!751248 m!700559))

(assert (=> b!751248 m!700559))

(declare-fun m!700561 () Bool)

(assert (=> b!751248 m!700561))

(assert (=> b!751248 m!700561))

(assert (=> b!751248 m!700559))

(declare-fun m!700563 () Bool)

(assert (=> b!751248 m!700563))

(assert (=> b!751237 m!700541))

(declare-fun m!700565 () Bool)

(assert (=> b!751237 m!700565))

(assert (=> b!751235 m!700559))

(assert (=> b!751235 m!700559))

(declare-fun m!700567 () Bool)

(assert (=> b!751235 m!700567))

(declare-fun m!700569 () Bool)

(assert (=> b!751249 m!700569))

(assert (=> b!751240 m!700559))

(assert (=> b!751240 m!700559))

(assert (=> b!751240 m!700567))

(assert (=> b!751242 m!700559))

(assert (=> b!751242 m!700559))

(declare-fun m!700571 () Bool)

(assert (=> b!751242 m!700571))

(declare-fun m!700573 () Bool)

(assert (=> b!751242 m!700573))

(declare-fun m!700575 () Bool)

(assert (=> b!751242 m!700575))

(assert (=> b!751247 m!700559))

(assert (=> b!751247 m!700559))

(declare-fun m!700577 () Bool)

(assert (=> b!751247 m!700577))

(assert (=> b!751254 m!700559))

(assert (=> b!751254 m!700559))

(declare-fun m!700579 () Bool)

(assert (=> b!751254 m!700579))

(declare-fun m!700581 () Bool)

(assert (=> b!751243 m!700581))

(assert (=> b!751251 m!700559))

(assert (=> b!751251 m!700559))

(declare-fun m!700583 () Bool)

(assert (=> b!751251 m!700583))

(push 1)

