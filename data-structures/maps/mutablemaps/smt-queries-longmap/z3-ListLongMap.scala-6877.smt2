; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86550 () Bool)

(assert start!86550)

(declare-fun b!1002260 () Bool)

(declare-fun res!671901 () Bool)

(declare-fun e!564680 () Bool)

(assert (=> b!1002260 (=> (not res!671901) (not e!564680))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9405 0))(
  ( (MissingZero!9405 (index!39990 (_ BitVec 32))) (Found!9405 (index!39991 (_ BitVec 32))) (Intermediate!9405 (undefined!10217 Bool) (index!39992 (_ BitVec 32)) (x!87434 (_ BitVec 32))) (Undefined!9405) (MissingVacant!9405 (index!39993 (_ BitVec 32))) )
))
(declare-fun lt!443103 () SeekEntryResult!9405)

(declare-fun lt!443097 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-datatypes ((array!63303 0))(
  ( (array!63304 (arr!30473 (Array (_ BitVec 32) (_ BitVec 64))) (size!30976 (_ BitVec 32))) )
))
(declare-fun lt!443099 () array!63303)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63303 (_ BitVec 32)) SeekEntryResult!9405)

(assert (=> b!1002260 (= res!671901 (not (= lt!443103 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443097 lt!443099 mask!3464))))))

(declare-fun b!1002261 () Bool)

(declare-fun e!564683 () Bool)

(declare-fun e!564681 () Bool)

(assert (=> b!1002261 (= e!564683 e!564681)))

(declare-fun res!671895 () Bool)

(assert (=> b!1002261 (=> (not res!671895) (not e!564681))))

(declare-fun lt!443096 () SeekEntryResult!9405)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002261 (= res!671895 (or (= lt!443096 (MissingVacant!9405 i!1194)) (= lt!443096 (MissingZero!9405 i!1194))))))

(declare-fun a!3219 () array!63303)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63303 (_ BitVec 32)) SeekEntryResult!9405)

(assert (=> b!1002261 (= lt!443096 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1002262 () Bool)

(declare-fun res!671894 () Bool)

(assert (=> b!1002262 (=> (not res!671894) (not e!564683))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002262 (= res!671894 (validKeyInArray!0 (select (arr!30473 a!3219) j!170)))))

(declare-fun b!1002263 () Bool)

(declare-fun res!671897 () Bool)

(assert (=> b!1002263 (=> (not res!671897) (not e!564680))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002263 (= res!671897 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002264 () Bool)

(declare-fun res!671900 () Bool)

(assert (=> b!1002264 (=> (not res!671900) (not e!564683))))

(assert (=> b!1002264 (= res!671900 (validKeyInArray!0 k0!2224))))

(declare-fun b!1002265 () Bool)

(declare-fun res!671896 () Bool)

(assert (=> b!1002265 (=> (not res!671896) (not e!564683))))

(declare-fun arrayContainsKey!0 (array!63303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002265 (= res!671896 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002266 () Bool)

(declare-fun e!564677 () Bool)

(assert (=> b!1002266 (= e!564680 e!564677)))

(declare-fun res!671908 () Bool)

(assert (=> b!1002266 (=> (not res!671908) (not e!564677))))

(declare-fun lt!443101 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002266 (= res!671908 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443101 #b00000000000000000000000000000000) (bvslt lt!443101 (size!30976 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002266 (= lt!443101 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002267 () Bool)

(assert (=> b!1002267 (= e!564677 false)))

(declare-fun lt!443102 () SeekEntryResult!9405)

(assert (=> b!1002267 (= lt!443102 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443101 lt!443097 lt!443099 mask!3464))))

(declare-fun b!1002268 () Bool)

(declare-fun e!564679 () Bool)

(assert (=> b!1002268 (= e!564681 e!564679)))

(declare-fun res!671898 () Bool)

(assert (=> b!1002268 (=> (not res!671898) (not e!564679))))

(declare-fun lt!443100 () SeekEntryResult!9405)

(declare-fun lt!443098 () SeekEntryResult!9405)

(assert (=> b!1002268 (= res!671898 (= lt!443100 lt!443098))))

(assert (=> b!1002268 (= lt!443098 (Intermediate!9405 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002268 (= lt!443100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30473 a!3219) j!170) mask!3464) (select (arr!30473 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002269 () Bool)

(declare-fun res!671902 () Bool)

(assert (=> b!1002269 (=> (not res!671902) (not e!564681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63303 (_ BitVec 32)) Bool)

(assert (=> b!1002269 (= res!671902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002259 () Bool)

(declare-fun e!564682 () Bool)

(assert (=> b!1002259 (= e!564679 e!564682)))

(declare-fun res!671906 () Bool)

(assert (=> b!1002259 (=> (not res!671906) (not e!564682))))

(assert (=> b!1002259 (= res!671906 (= lt!443103 lt!443098))))

(assert (=> b!1002259 (= lt!443103 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30473 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!671904 () Bool)

(assert (=> start!86550 (=> (not res!671904) (not e!564683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86550 (= res!671904 (validMask!0 mask!3464))))

(assert (=> start!86550 e!564683))

(declare-fun array_inv!23463 (array!63303) Bool)

(assert (=> start!86550 (array_inv!23463 a!3219)))

(assert (=> start!86550 true))

(declare-fun b!1002270 () Bool)

(declare-fun res!671905 () Bool)

(assert (=> b!1002270 (=> (not res!671905) (not e!564681))))

(declare-datatypes ((List!21275 0))(
  ( (Nil!21272) (Cons!21271 (h!22448 (_ BitVec 64)) (t!30284 List!21275)) )
))
(declare-fun arrayNoDuplicates!0 (array!63303 (_ BitVec 32) List!21275) Bool)

(assert (=> b!1002270 (= res!671905 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21272))))

(declare-fun b!1002271 () Bool)

(declare-fun res!671893 () Bool)

(assert (=> b!1002271 (=> (not res!671893) (not e!564681))))

(assert (=> b!1002271 (= res!671893 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30976 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30976 a!3219))))))

(declare-fun b!1002272 () Bool)

(declare-fun res!671907 () Bool)

(assert (=> b!1002272 (=> (not res!671907) (not e!564683))))

(assert (=> b!1002272 (= res!671907 (and (= (size!30976 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30976 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30976 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002273 () Bool)

(assert (=> b!1002273 (= e!564682 e!564680)))

(declare-fun res!671899 () Bool)

(assert (=> b!1002273 (=> (not res!671899) (not e!564680))))

(assert (=> b!1002273 (= res!671899 (not (= lt!443100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443097 mask!3464) lt!443097 lt!443099 mask!3464))))))

(assert (=> b!1002273 (= lt!443097 (select (store (arr!30473 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1002273 (= lt!443099 (array!63304 (store (arr!30473 a!3219) i!1194 k0!2224) (size!30976 a!3219)))))

(declare-fun b!1002274 () Bool)

(declare-fun res!671903 () Bool)

(assert (=> b!1002274 (=> (not res!671903) (not e!564677))))

(assert (=> b!1002274 (= res!671903 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443101 (select (arr!30473 a!3219) j!170) a!3219 mask!3464) lt!443098))))

(assert (= (and start!86550 res!671904) b!1002272))

(assert (= (and b!1002272 res!671907) b!1002262))

(assert (= (and b!1002262 res!671894) b!1002264))

(assert (= (and b!1002264 res!671900) b!1002265))

(assert (= (and b!1002265 res!671896) b!1002261))

(assert (= (and b!1002261 res!671895) b!1002269))

(assert (= (and b!1002269 res!671902) b!1002270))

(assert (= (and b!1002270 res!671905) b!1002271))

(assert (= (and b!1002271 res!671893) b!1002268))

(assert (= (and b!1002268 res!671898) b!1002259))

(assert (= (and b!1002259 res!671906) b!1002273))

(assert (= (and b!1002273 res!671899) b!1002260))

(assert (= (and b!1002260 res!671901) b!1002263))

(assert (= (and b!1002263 res!671897) b!1002266))

(assert (= (and b!1002266 res!671908) b!1002274))

(assert (= (and b!1002274 res!671903) b!1002267))

(declare-fun m!928261 () Bool)

(assert (=> b!1002266 m!928261))

(declare-fun m!928263 () Bool)

(assert (=> b!1002274 m!928263))

(assert (=> b!1002274 m!928263))

(declare-fun m!928265 () Bool)

(assert (=> b!1002274 m!928265))

(declare-fun m!928267 () Bool)

(assert (=> b!1002260 m!928267))

(declare-fun m!928269 () Bool)

(assert (=> b!1002270 m!928269))

(assert (=> b!1002268 m!928263))

(assert (=> b!1002268 m!928263))

(declare-fun m!928271 () Bool)

(assert (=> b!1002268 m!928271))

(assert (=> b!1002268 m!928271))

(assert (=> b!1002268 m!928263))

(declare-fun m!928273 () Bool)

(assert (=> b!1002268 m!928273))

(declare-fun m!928275 () Bool)

(assert (=> b!1002261 m!928275))

(declare-fun m!928277 () Bool)

(assert (=> start!86550 m!928277))

(declare-fun m!928279 () Bool)

(assert (=> start!86550 m!928279))

(declare-fun m!928281 () Bool)

(assert (=> b!1002264 m!928281))

(assert (=> b!1002262 m!928263))

(assert (=> b!1002262 m!928263))

(declare-fun m!928283 () Bool)

(assert (=> b!1002262 m!928283))

(assert (=> b!1002259 m!928263))

(assert (=> b!1002259 m!928263))

(declare-fun m!928285 () Bool)

(assert (=> b!1002259 m!928285))

(declare-fun m!928287 () Bool)

(assert (=> b!1002265 m!928287))

(declare-fun m!928289 () Bool)

(assert (=> b!1002269 m!928289))

(declare-fun m!928291 () Bool)

(assert (=> b!1002267 m!928291))

(declare-fun m!928293 () Bool)

(assert (=> b!1002273 m!928293))

(assert (=> b!1002273 m!928293))

(declare-fun m!928295 () Bool)

(assert (=> b!1002273 m!928295))

(declare-fun m!928297 () Bool)

(assert (=> b!1002273 m!928297))

(declare-fun m!928299 () Bool)

(assert (=> b!1002273 m!928299))

(check-sat (not b!1002262) (not b!1002270) (not b!1002259) (not start!86550) (not b!1002264) (not b!1002273) (not b!1002260) (not b!1002266) (not b!1002261) (not b!1002268) (not b!1002267) (not b!1002269) (not b!1002265) (not b!1002274))
(check-sat)
