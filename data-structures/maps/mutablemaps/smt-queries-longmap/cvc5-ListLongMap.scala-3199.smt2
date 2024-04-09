; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44890 () Bool)

(assert start!44890)

(declare-fun b!492305 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31852 0))(
  ( (array!31853 (arr!15309 (Array (_ BitVec 32) (_ BitVec 64))) (size!15673 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31852)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!289199 () Bool)

(declare-datatypes ((SeekEntryResult!3783 0))(
  ( (MissingZero!3783 (index!17311 (_ BitVec 32))) (Found!3783 (index!17312 (_ BitVec 32))) (Intermediate!3783 (undefined!4595 Bool) (index!17313 (_ BitVec 32)) (x!46426 (_ BitVec 32))) (Undefined!3783) (MissingVacant!3783 (index!17314 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31852 (_ BitVec 32)) SeekEntryResult!3783)

(assert (=> b!492305 (= e!289199 (= (seekEntryOrOpen!0 (select (arr!15309 a!3235) j!176) a!3235 mask!3524) (Found!3783 j!176)))))

(declare-fun b!492306 () Bool)

(declare-fun e!289198 () Bool)

(declare-fun e!289197 () Bool)

(assert (=> b!492306 (= e!289198 (not e!289197))))

(declare-fun res!295209 () Bool)

(assert (=> b!492306 (=> res!295209 e!289197)))

(declare-fun lt!222618 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31852 (_ BitVec 32)) SeekEntryResult!3783)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492306 (= res!295209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222618 (select (arr!15309 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235)) mask!3524)))))

(assert (=> b!492306 (= lt!222618 (toIndex!0 (select (arr!15309 a!3235) j!176) mask!3524))))

(assert (=> b!492306 e!289199))

(declare-fun res!295215 () Bool)

(assert (=> b!492306 (=> (not res!295215) (not e!289199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31852 (_ BitVec 32)) Bool)

(assert (=> b!492306 (= res!295215 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14504 0))(
  ( (Unit!14505) )
))
(declare-fun lt!222620 () Unit!14504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14504)

(assert (=> b!492306 (= lt!222620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!295212 () Bool)

(declare-fun e!289200 () Bool)

(assert (=> start!44890 (=> (not res!295212) (not e!289200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44890 (= res!295212 (validMask!0 mask!3524))))

(assert (=> start!44890 e!289200))

(assert (=> start!44890 true))

(declare-fun array_inv!11083 (array!31852) Bool)

(assert (=> start!44890 (array_inv!11083 a!3235)))

(declare-fun b!492307 () Bool)

(assert (=> b!492307 (= e!289197 (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!222618 #b00000000000000000000000000000000) (bvslt lt!222618 (bvadd #b00000000000000000000000000000001 mask!3524)))))))

(declare-fun b!492308 () Bool)

(declare-fun res!295208 () Bool)

(assert (=> b!492308 (=> (not res!295208) (not e!289198))))

(declare-datatypes ((List!9520 0))(
  ( (Nil!9517) (Cons!9516 (h!10381 (_ BitVec 64)) (t!15756 List!9520)) )
))
(declare-fun arrayNoDuplicates!0 (array!31852 (_ BitVec 32) List!9520) Bool)

(assert (=> b!492308 (= res!295208 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9517))))

(declare-fun b!492309 () Bool)

(declare-fun res!295211 () Bool)

(assert (=> b!492309 (=> (not res!295211) (not e!289200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492309 (= res!295211 (validKeyInArray!0 k!2280))))

(declare-fun b!492310 () Bool)

(declare-fun res!295210 () Bool)

(assert (=> b!492310 (=> (not res!295210) (not e!289200))))

(assert (=> b!492310 (= res!295210 (validKeyInArray!0 (select (arr!15309 a!3235) j!176)))))

(declare-fun b!492311 () Bool)

(assert (=> b!492311 (= e!289200 e!289198)))

(declare-fun res!295214 () Bool)

(assert (=> b!492311 (=> (not res!295214) (not e!289198))))

(declare-fun lt!222619 () SeekEntryResult!3783)

(assert (=> b!492311 (= res!295214 (or (= lt!222619 (MissingZero!3783 i!1204)) (= lt!222619 (MissingVacant!3783 i!1204))))))

(assert (=> b!492311 (= lt!222619 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492312 () Bool)

(declare-fun res!295216 () Bool)

(assert (=> b!492312 (=> (not res!295216) (not e!289200))))

(assert (=> b!492312 (= res!295216 (and (= (size!15673 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15673 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15673 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492313 () Bool)

(declare-fun res!295213 () Bool)

(assert (=> b!492313 (=> (not res!295213) (not e!289200))))

(declare-fun arrayContainsKey!0 (array!31852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492313 (= res!295213 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492314 () Bool)

(declare-fun res!295217 () Bool)

(assert (=> b!492314 (=> (not res!295217) (not e!289198))))

(assert (=> b!492314 (= res!295217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44890 res!295212) b!492312))

(assert (= (and b!492312 res!295216) b!492310))

(assert (= (and b!492310 res!295210) b!492309))

(assert (= (and b!492309 res!295211) b!492313))

(assert (= (and b!492313 res!295213) b!492311))

(assert (= (and b!492311 res!295214) b!492314))

(assert (= (and b!492314 res!295217) b!492308))

(assert (= (and b!492308 res!295208) b!492306))

(assert (= (and b!492306 res!295215) b!492305))

(assert (= (and b!492306 (not res!295209)) b!492307))

(declare-fun m!473089 () Bool)

(assert (=> b!492314 m!473089))

(declare-fun m!473091 () Bool)

(assert (=> b!492310 m!473091))

(assert (=> b!492310 m!473091))

(declare-fun m!473093 () Bool)

(assert (=> b!492310 m!473093))

(declare-fun m!473095 () Bool)

(assert (=> b!492308 m!473095))

(declare-fun m!473097 () Bool)

(assert (=> start!44890 m!473097))

(declare-fun m!473099 () Bool)

(assert (=> start!44890 m!473099))

(declare-fun m!473101 () Bool)

(assert (=> b!492311 m!473101))

(declare-fun m!473103 () Bool)

(assert (=> b!492306 m!473103))

(assert (=> b!492306 m!473091))

(declare-fun m!473105 () Bool)

(assert (=> b!492306 m!473105))

(declare-fun m!473107 () Bool)

(assert (=> b!492306 m!473107))

(declare-fun m!473109 () Bool)

(assert (=> b!492306 m!473109))

(assert (=> b!492306 m!473091))

(declare-fun m!473111 () Bool)

(assert (=> b!492306 m!473111))

(declare-fun m!473113 () Bool)

(assert (=> b!492306 m!473113))

(assert (=> b!492306 m!473109))

(declare-fun m!473115 () Bool)

(assert (=> b!492306 m!473115))

(assert (=> b!492306 m!473091))

(declare-fun m!473117 () Bool)

(assert (=> b!492306 m!473117))

(assert (=> b!492306 m!473109))

(assert (=> b!492306 m!473113))

(declare-fun m!473119 () Bool)

(assert (=> b!492309 m!473119))

(declare-fun m!473121 () Bool)

(assert (=> b!492313 m!473121))

(assert (=> b!492305 m!473091))

(assert (=> b!492305 m!473091))

(declare-fun m!473123 () Bool)

(assert (=> b!492305 m!473123))

(push 1)

(assert (not b!492314))

(assert (not b!492313))

(assert (not b!492309))

(assert (not b!492305))

(assert (not b!492308))

(assert (not start!44890))

(assert (not b!492311))

(assert (not b!492306))

(assert (not b!492310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!492443 () Bool)

(declare-fun e!289272 () SeekEntryResult!3783)

(declare-fun lt!222682 () SeekEntryResult!3783)

(assert (=> b!492443 (= e!289272 (MissingZero!3783 (index!17313 lt!222682)))))

(declare-fun b!492444 () Bool)

(declare-fun e!289273 () SeekEntryResult!3783)

(declare-fun e!289274 () SeekEntryResult!3783)

(assert (=> b!492444 (= e!289273 e!289274)))

(declare-fun lt!222683 () (_ BitVec 64))

(assert (=> b!492444 (= lt!222683 (select (arr!15309 a!3235) (index!17313 lt!222682)))))

(declare-fun c!58849 () Bool)

(assert (=> b!492444 (= c!58849 (= lt!222683 (select (arr!15309 a!3235) j!176)))))

(declare-fun b!492445 () Bool)

(declare-fun c!58850 () Bool)

(assert (=> b!492445 (= c!58850 (= lt!222683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492445 (= e!289274 e!289272)))

(declare-fun b!492446 () Bool)

(assert (=> b!492446 (= e!289274 (Found!3783 (index!17313 lt!222682)))))

(declare-fun b!492447 () Bool)

(assert (=> b!492447 (= e!289273 Undefined!3783)))

(declare-fun d!77983 () Bool)

(declare-fun lt!222681 () SeekEntryResult!3783)

(assert (=> d!77983 (and (or (is-Undefined!3783 lt!222681) (not (is-Found!3783 lt!222681)) (and (bvsge (index!17312 lt!222681) #b00000000000000000000000000000000) (bvslt (index!17312 lt!222681) (size!15673 a!3235)))) (or (is-Undefined!3783 lt!222681) (is-Found!3783 lt!222681) (not (is-MissingZero!3783 lt!222681)) (and (bvsge (index!17311 lt!222681) #b00000000000000000000000000000000) (bvslt (index!17311 lt!222681) (size!15673 a!3235)))) (or (is-Undefined!3783 lt!222681) (is-Found!3783 lt!222681) (is-MissingZero!3783 lt!222681) (not (is-MissingVacant!3783 lt!222681)) (and (bvsge (index!17314 lt!222681) #b00000000000000000000000000000000) (bvslt (index!17314 lt!222681) (size!15673 a!3235)))) (or (is-Undefined!3783 lt!222681) (ite (is-Found!3783 lt!222681) (= (select (arr!15309 a!3235) (index!17312 lt!222681)) (select (arr!15309 a!3235) j!176)) (ite (is-MissingZero!3783 lt!222681) (= (select (arr!15309 a!3235) (index!17311 lt!222681)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3783 lt!222681) (= (select (arr!15309 a!3235) (index!17314 lt!222681)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77983 (= lt!222681 e!289273)))

(declare-fun c!58851 () Bool)

(assert (=> d!77983 (= c!58851 (and (is-Intermediate!3783 lt!222682) (undefined!4595 lt!222682)))))

(assert (=> d!77983 (= lt!222682 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15309 a!3235) j!176) mask!3524) (select (arr!15309 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77983 (validMask!0 mask!3524)))

(assert (=> d!77983 (= (seekEntryOrOpen!0 (select (arr!15309 a!3235) j!176) a!3235 mask!3524) lt!222681)))

(declare-fun b!492448 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31852 (_ BitVec 32)) SeekEntryResult!3783)

(assert (=> b!492448 (= e!289272 (seekKeyOrZeroReturnVacant!0 (x!46426 lt!222682) (index!17313 lt!222682) (index!17313 lt!222682) (select (arr!15309 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!77983 c!58851) b!492447))

(assert (= (and d!77983 (not c!58851)) b!492444))

(assert (= (and b!492444 c!58849) b!492446))

(assert (= (and b!492444 (not c!58849)) b!492445))

(assert (= (and b!492445 c!58850) b!492443))

(assert (= (and b!492445 (not c!58850)) b!492448))

(declare-fun m!473239 () Bool)

(assert (=> b!492444 m!473239))

(declare-fun m!473241 () Bool)

(assert (=> d!77983 m!473241))

(assert (=> d!77983 m!473097))

(declare-fun m!473243 () Bool)

(assert (=> d!77983 m!473243))

(declare-fun m!473245 () Bool)

(assert (=> d!77983 m!473245))

(assert (=> d!77983 m!473091))

(assert (=> d!77983 m!473111))

(assert (=> d!77983 m!473111))

(assert (=> d!77983 m!473091))

(declare-fun m!473247 () Bool)

(assert (=> d!77983 m!473247))

(assert (=> b!492448 m!473091))

(declare-fun m!473249 () Bool)

(assert (=> b!492448 m!473249))

(assert (=> b!492305 d!77983))

(declare-fun d!77993 () Bool)

(assert (=> d!77993 (= (validKeyInArray!0 (select (arr!15309 a!3235) j!176)) (and (not (= (select (arr!15309 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15309 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!492310 d!77993))

(declare-fun d!77997 () Bool)

(assert (=> d!77997 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44890 d!77997))

(declare-fun d!78003 () Bool)

(assert (=> d!78003 (= (array_inv!11083 a!3235) (bvsge (size!15673 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44890 d!78003))

(declare-fun b!492512 () Bool)

(declare-fun e!289320 () Bool)

(declare-fun e!289318 () Bool)

(assert (=> b!492512 (= e!289320 e!289318)))

(declare-fun res!295320 () Bool)

(assert (=> b!492512 (=> (not res!295320) (not e!289318))))

(declare-fun e!289317 () Bool)

(assert (=> b!492512 (= res!295320 (not e!289317))))

(declare-fun res!295321 () Bool)

(assert (=> b!492512 (=> (not res!295321) (not e!289317))))

(assert (=> b!492512 (= res!295321 (validKeyInArray!0 (select (arr!15309 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492513 () Bool)

(declare-fun e!289319 () Bool)

(declare-fun call!31395 () Bool)

(assert (=> b!492513 (= e!289319 call!31395)))

(declare-fun d!78007 () Bool)

(declare-fun res!295322 () Bool)

(assert (=> d!78007 (=> res!295322 e!289320)))

(assert (=> d!78007 (= res!295322 (bvsge #b00000000000000000000000000000000 (size!15673 a!3235)))))

(assert (=> d!78007 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9517) e!289320)))

(declare-fun b!492514 () Bool)

(declare-fun contains!2715 (List!9520 (_ BitVec 64)) Bool)

(assert (=> b!492514 (= e!289317 (contains!2715 Nil!9517 (select (arr!15309 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492515 () Bool)

(assert (=> b!492515 (= e!289318 e!289319)))

(declare-fun c!58869 () Bool)

(assert (=> b!492515 (= c!58869 (validKeyInArray!0 (select (arr!15309 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31392 () Bool)

(assert (=> bm!31392 (= call!31395 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58869 (Cons!9516 (select (arr!15309 a!3235) #b00000000000000000000000000000000) Nil!9517) Nil!9517)))))

(declare-fun b!492516 () Bool)

(assert (=> b!492516 (= e!289319 call!31395)))

(assert (= (and d!78007 (not res!295322)) b!492512))

(assert (= (and b!492512 res!295321) b!492514))

(assert (= (and b!492512 res!295320) b!492515))

(assert (= (and b!492515 c!58869) b!492513))

(assert (= (and b!492515 (not c!58869)) b!492516))

(assert (= (or b!492513 b!492516) bm!31392))

(declare-fun m!473279 () Bool)

(assert (=> b!492512 m!473279))

(assert (=> b!492512 m!473279))

(declare-fun m!473281 () Bool)

(assert (=> b!492512 m!473281))

(assert (=> b!492514 m!473279))

(assert (=> b!492514 m!473279))

(declare-fun m!473283 () Bool)

(assert (=> b!492514 m!473283))

(assert (=> b!492515 m!473279))

(assert (=> b!492515 m!473279))

(assert (=> b!492515 m!473281))

(assert (=> bm!31392 m!473279))

(declare-fun m!473285 () Bool)

(assert (=> bm!31392 m!473285))

(assert (=> b!492308 d!78007))

(declare-fun d!78019 () Bool)

(assert (=> d!78019 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!492309 d!78019))

(declare-fun d!78021 () Bool)

(declare-fun res!295329 () Bool)

(declare-fun e!289327 () Bool)

(assert (=> d!78021 (=> res!295329 e!289327)))

(assert (=> d!78021 (= res!295329 (bvsge #b00000000000000000000000000000000 (size!15673 a!3235)))))

(assert (=> d!78021 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!289327)))

(declare-fun b!492525 () Bool)

(declare-fun e!289329 () Bool)

(declare-fun call!31398 () Bool)

(assert (=> b!492525 (= e!289329 call!31398)))

(declare-fun bm!31395 () Bool)

(assert (=> bm!31395 (= call!31398 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!492526 () Bool)

(declare-fun e!289328 () Bool)

(assert (=> b!492526 (= e!289329 e!289328)))

(declare-fun lt!222710 () (_ BitVec 64))

(assert (=> b!492526 (= lt!222710 (select (arr!15309 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!222709 () Unit!14504)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31852 (_ BitVec 64) (_ BitVec 32)) Unit!14504)

(assert (=> b!492526 (= lt!222709 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222710 #b00000000000000000000000000000000))))

(assert (=> b!492526 (arrayContainsKey!0 a!3235 lt!222710 #b00000000000000000000000000000000)))

(declare-fun lt!222711 () Unit!14504)

(assert (=> b!492526 (= lt!222711 lt!222709)))

(declare-fun res!295328 () Bool)

(assert (=> b!492526 (= res!295328 (= (seekEntryOrOpen!0 (select (arr!15309 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3783 #b00000000000000000000000000000000)))))

(assert (=> b!492526 (=> (not res!295328) (not e!289328))))

(declare-fun b!492527 () Bool)

(assert (=> b!492527 (= e!289327 e!289329)))

(declare-fun c!58872 () Bool)

(assert (=> b!492527 (= c!58872 (validKeyInArray!0 (select (arr!15309 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492528 () Bool)

(assert (=> b!492528 (= e!289328 call!31398)))

(assert (= (and d!78021 (not res!295329)) b!492527))

(assert (= (and b!492527 c!58872) b!492526))

(assert (= (and b!492527 (not c!58872)) b!492525))

(assert (= (and b!492526 res!295328) b!492528))

(assert (= (or b!492528 b!492525) bm!31395))

(declare-fun m!473287 () Bool)

(assert (=> bm!31395 m!473287))

(assert (=> b!492526 m!473279))

(declare-fun m!473289 () Bool)

(assert (=> b!492526 m!473289))

(declare-fun m!473291 () Bool)

(assert (=> b!492526 m!473291))

(assert (=> b!492526 m!473279))

(declare-fun m!473293 () Bool)

(assert (=> b!492526 m!473293))

(assert (=> b!492527 m!473279))

(assert (=> b!492527 m!473279))

(assert (=> b!492527 m!473281))

(assert (=> b!492314 d!78021))

(declare-fun d!78029 () Bool)

(declare-fun res!295340 () Bool)

(declare-fun e!289342 () Bool)

(assert (=> d!78029 (=> res!295340 e!289342)))

(assert (=> d!78029 (= res!295340 (= (select (arr!15309 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78029 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!289342)))

(declare-fun b!492543 () Bool)

(declare-fun e!289343 () Bool)

(assert (=> b!492543 (= e!289342 e!289343)))

(declare-fun res!295341 () Bool)

(assert (=> b!492543 (=> (not res!295341) (not e!289343))))

(assert (=> b!492543 (= res!295341 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15673 a!3235)))))

(declare-fun b!492544 () Bool)

(assert (=> b!492544 (= e!289343 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78029 (not res!295340)) b!492543))

(assert (= (and b!492543 res!295341) b!492544))

(assert (=> d!78029 m!473279))

(declare-fun m!473295 () Bool)

(assert (=> b!492544 m!473295))

(assert (=> b!492313 d!78029))

(declare-fun b!492545 () Bool)

(declare-fun e!289344 () SeekEntryResult!3783)

(declare-fun lt!222713 () SeekEntryResult!3783)

(assert (=> b!492545 (= e!289344 (MissingZero!3783 (index!17313 lt!222713)))))

(declare-fun b!492546 () Bool)

(declare-fun e!289345 () SeekEntryResult!3783)

(declare-fun e!289346 () SeekEntryResult!3783)

(assert (=> b!492546 (= e!289345 e!289346)))

(declare-fun lt!222714 () (_ BitVec 64))

(assert (=> b!492546 (= lt!222714 (select (arr!15309 a!3235) (index!17313 lt!222713)))))

(declare-fun c!58875 () Bool)

(assert (=> b!492546 (= c!58875 (= lt!222714 k!2280))))

(declare-fun b!492547 () Bool)

(declare-fun c!58876 () Bool)

(assert (=> b!492547 (= c!58876 (= lt!222714 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492547 (= e!289346 e!289344)))

(declare-fun b!492548 () Bool)

(assert (=> b!492548 (= e!289346 (Found!3783 (index!17313 lt!222713)))))

(declare-fun b!492549 () Bool)

(assert (=> b!492549 (= e!289345 Undefined!3783)))

(declare-fun d!78031 () Bool)

(declare-fun lt!222712 () SeekEntryResult!3783)

(assert (=> d!78031 (and (or (is-Undefined!3783 lt!222712) (not (is-Found!3783 lt!222712)) (and (bvsge (index!17312 lt!222712) #b00000000000000000000000000000000) (bvslt (index!17312 lt!222712) (size!15673 a!3235)))) (or (is-Undefined!3783 lt!222712) (is-Found!3783 lt!222712) (not (is-MissingZero!3783 lt!222712)) (and (bvsge (index!17311 lt!222712) #b00000000000000000000000000000000) (bvslt (index!17311 lt!222712) (size!15673 a!3235)))) (or (is-Undefined!3783 lt!222712) (is-Found!3783 lt!222712) (is-MissingZero!3783 lt!222712) (not (is-MissingVacant!3783 lt!222712)) (and (bvsge (index!17314 lt!222712) #b00000000000000000000000000000000) (bvslt (index!17314 lt!222712) (size!15673 a!3235)))) (or (is-Undefined!3783 lt!222712) (ite (is-Found!3783 lt!222712) (= (select (arr!15309 a!3235) (index!17312 lt!222712)) k!2280) (ite (is-MissingZero!3783 lt!222712) (= (select (arr!15309 a!3235) (index!17311 lt!222712)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3783 lt!222712) (= (select (arr!15309 a!3235) (index!17314 lt!222712)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78031 (= lt!222712 e!289345)))

(declare-fun c!58877 () Bool)

(assert (=> d!78031 (= c!58877 (and (is-Intermediate!3783 lt!222713) (undefined!4595 lt!222713)))))

(assert (=> d!78031 (= lt!222713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78031 (validMask!0 mask!3524)))

(assert (=> d!78031 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!222712)))

(declare-fun b!492550 () Bool)

(assert (=> b!492550 (= e!289344 (seekKeyOrZeroReturnVacant!0 (x!46426 lt!222713) (index!17313 lt!222713) (index!17313 lt!222713) k!2280 a!3235 mask!3524))))

(assert (= (and d!78031 c!58877) b!492549))

(assert (= (and d!78031 (not c!58877)) b!492546))

(assert (= (and b!492546 c!58875) b!492548))

(assert (= (and b!492546 (not c!58875)) b!492547))

(assert (= (and b!492547 c!58876) b!492545))

(assert (= (and b!492547 (not c!58876)) b!492550))

(declare-fun m!473297 () Bool)

(assert (=> b!492546 m!473297))

(declare-fun m!473299 () Bool)

(assert (=> d!78031 m!473299))

(assert (=> d!78031 m!473097))

(declare-fun m!473302 () Bool)

(assert (=> d!78031 m!473302))

(declare-fun m!473305 () Bool)

(assert (=> d!78031 m!473305))

(declare-fun m!473307 () Bool)

(assert (=> d!78031 m!473307))

(assert (=> d!78031 m!473307))

(declare-fun m!473309 () Bool)

(assert (=> d!78031 m!473309))

(declare-fun m!473311 () Bool)

(assert (=> b!492550 m!473311))

(assert (=> b!492311 d!78031))

(declare-fun d!78033 () Bool)

(declare-fun lt!222723 () (_ BitVec 32))

(declare-fun lt!222722 () (_ BitVec 32))

(assert (=> d!78033 (= lt!222723 (bvmul (bvxor lt!222722 (bvlshr lt!222722 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78033 (= lt!222722 ((_ extract 31 0) (bvand (bvxor (select (arr!15309 a!3235) j!176) (bvlshr (select (arr!15309 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78033 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!295345 (let ((h!10386 ((_ extract 31 0) (bvand (bvxor (select (arr!15309 a!3235) j!176) (bvlshr (select (arr!15309 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46432 (bvmul (bvxor h!10386 (bvlshr h!10386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46432 (bvlshr x!46432 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!295345 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!295345 #b00000000000000000000000000000000))))))

(assert (=> d!78033 (= (toIndex!0 (select (arr!15309 a!3235) j!176) mask!3524) (bvand (bvxor lt!222723 (bvlshr lt!222723 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!492306 d!78033))

(declare-fun d!78041 () Bool)

(declare-fun res!295353 () Bool)

(declare-fun e!289360 () Bool)

(assert (=> d!78041 (=> res!295353 e!289360)))

(assert (=> d!78041 (= res!295353 (bvsge j!176 (size!15673 a!3235)))))

(assert (=> d!78041 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!289360)))

(declare-fun b!492568 () Bool)

(declare-fun e!289362 () Bool)

(declare-fun call!31402 () Bool)

(assert (=> b!492568 (= e!289362 call!31402)))

(declare-fun bm!31399 () Bool)

(assert (=> bm!31399 (= call!31402 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!492569 () Bool)

(declare-fun e!289361 () Bool)

(assert (=> b!492569 (= e!289362 e!289361)))

(declare-fun lt!222725 () (_ BitVec 64))

(assert (=> b!492569 (= lt!222725 (select (arr!15309 a!3235) j!176))))

(declare-fun lt!222724 () Unit!14504)

(assert (=> b!492569 (= lt!222724 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222725 j!176))))

(assert (=> b!492569 (arrayContainsKey!0 a!3235 lt!222725 #b00000000000000000000000000000000)))

(declare-fun lt!222726 () Unit!14504)

(assert (=> b!492569 (= lt!222726 lt!222724)))

(declare-fun res!295352 () Bool)

(assert (=> b!492569 (= res!295352 (= (seekEntryOrOpen!0 (select (arr!15309 a!3235) j!176) a!3235 mask!3524) (Found!3783 j!176)))))

(assert (=> b!492569 (=> (not res!295352) (not e!289361))))

(declare-fun b!492570 () Bool)

(assert (=> b!492570 (= e!289360 e!289362)))

(declare-fun c!58882 () Bool)

(assert (=> b!492570 (= c!58882 (validKeyInArray!0 (select (arr!15309 a!3235) j!176)))))

(declare-fun b!492571 () Bool)

(assert (=> b!492571 (= e!289361 call!31402)))

(assert (= (and d!78041 (not res!295353)) b!492570))

(assert (= (and b!492570 c!58882) b!492569))

(assert (= (and b!492570 (not c!58882)) b!492568))

(assert (= (and b!492569 res!295352) b!492571))

(assert (= (or b!492571 b!492568) bm!31399))

(declare-fun m!473331 () Bool)

(assert (=> bm!31399 m!473331))

(assert (=> b!492569 m!473091))

(declare-fun m!473333 () Bool)

(assert (=> b!492569 m!473333))

(declare-fun m!473335 () Bool)

(assert (=> b!492569 m!473335))

(assert (=> b!492569 m!473091))

(assert (=> b!492569 m!473123))

(assert (=> b!492570 m!473091))

(assert (=> b!492570 m!473091))

(assert (=> b!492570 m!473093))

(assert (=> b!492306 d!78041))

(declare-fun d!78043 () Bool)

(declare-fun e!289409 () Bool)

(assert (=> d!78043 e!289409))

(declare-fun c!58907 () Bool)

(declare-fun lt!222756 () SeekEntryResult!3783)

(assert (=> d!78043 (= c!58907 (and (is-Intermediate!3783 lt!222756) (undefined!4595 lt!222756)))))

(declare-fun e!289405 () SeekEntryResult!3783)

(assert (=> d!78043 (= lt!222756 e!289405)))

(declare-fun c!58909 () Bool)

(assert (=> d!78043 (= c!58909 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!222757 () (_ BitVec 64))

(assert (=> d!78043 (= lt!222757 (select (arr!15309 a!3235) lt!222618))))

(assert (=> d!78043 (validMask!0 mask!3524)))

(assert (=> d!78043 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222618 (select (arr!15309 a!3235) j!176) a!3235 mask!3524) lt!222756)))

(declare-fun b!492644 () Bool)

(declare-fun e!289406 () SeekEntryResult!3783)

(assert (=> b!492644 (= e!289406 (Intermediate!3783 false lt!222618 #b00000000000000000000000000000000))))

(declare-fun b!492645 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492645 (= e!289406 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!222618 #b00000000000000000000000000000000 mask!3524) (select (arr!15309 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!492646 () Bool)

(assert (=> b!492646 (= e!289405 (Intermediate!3783 true lt!222618 #b00000000000000000000000000000000))))

(declare-fun b!492647 () Bool)

(declare-fun e!289407 () Bool)

(assert (=> b!492647 (= e!289409 e!289407)))

(declare-fun res!295378 () Bool)

(assert (=> b!492647 (= res!295378 (and (is-Intermediate!3783 lt!222756) (not (undefined!4595 lt!222756)) (bvslt (x!46426 lt!222756) #b01111111111111111111111111111110) (bvsge (x!46426 lt!222756) #b00000000000000000000000000000000) (bvsge (x!46426 lt!222756) #b00000000000000000000000000000000)))))

(assert (=> b!492647 (=> (not res!295378) (not e!289407))))

(declare-fun b!492648 () Bool)

(assert (=> b!492648 (and (bvsge (index!17313 lt!222756) #b00000000000000000000000000000000) (bvslt (index!17313 lt!222756) (size!15673 a!3235)))))

(declare-fun res!295380 () Bool)

(assert (=> b!492648 (= res!295380 (= (select (arr!15309 a!3235) (index!17313 lt!222756)) (select (arr!15309 a!3235) j!176)))))

(declare-fun e!289408 () Bool)

(assert (=> b!492648 (=> res!295380 e!289408)))

(assert (=> b!492648 (= e!289407 e!289408)))

(declare-fun b!492649 () Bool)

(assert (=> b!492649 (and (bvsge (index!17313 lt!222756) #b00000000000000000000000000000000) (bvslt (index!17313 lt!222756) (size!15673 a!3235)))))

(assert (=> b!492649 (= e!289408 (= (select (arr!15309 a!3235) (index!17313 lt!222756)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492650 () Bool)

(assert (=> b!492650 (and (bvsge (index!17313 lt!222756) #b00000000000000000000000000000000) (bvslt (index!17313 lt!222756) (size!15673 a!3235)))))

(declare-fun res!295379 () Bool)

(assert (=> b!492650 (= res!295379 (= (select (arr!15309 a!3235) (index!17313 lt!222756)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492650 (=> res!295379 e!289408)))

(declare-fun b!492651 () Bool)

(assert (=> b!492651 (= e!289409 (bvsge (x!46426 lt!222756) #b01111111111111111111111111111110))))

(declare-fun b!492652 () Bool)

(assert (=> b!492652 (= e!289405 e!289406)))

(declare-fun c!58908 () Bool)

(assert (=> b!492652 (= c!58908 (or (= lt!222757 (select (arr!15309 a!3235) j!176)) (= (bvadd lt!222757 lt!222757) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!78043 c!58909) b!492646))

(assert (= (and d!78043 (not c!58909)) b!492652))

(assert (= (and b!492652 c!58908) b!492644))

(assert (= (and b!492652 (not c!58908)) b!492645))

(assert (= (and d!78043 c!58907) b!492651))

(assert (= (and d!78043 (not c!58907)) b!492647))

(assert (= (and b!492647 res!295378) b!492648))

(assert (= (and b!492648 (not res!295380)) b!492650))

(assert (= (and b!492650 (not res!295379)) b!492649))

(declare-fun m!473383 () Bool)

(assert (=> b!492645 m!473383))

(assert (=> b!492645 m!473383))

(assert (=> b!492645 m!473091))

(declare-fun m!473385 () Bool)

(assert (=> b!492645 m!473385))

(declare-fun m!473387 () Bool)

(assert (=> b!492648 m!473387))

(assert (=> b!492649 m!473387))

(assert (=> b!492650 m!473387))

(declare-fun m!473389 () Bool)

(assert (=> d!78043 m!473389))

(assert (=> d!78043 m!473097))

(assert (=> b!492306 d!78043))

(declare-fun d!78059 () Bool)

(assert (=> d!78059 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222763 () Unit!14504)

(declare-fun choose!38 (array!31852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14504)

(assert (=> d!78059 (= lt!222763 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78059 (validMask!0 mask!3524)))

(assert (=> d!78059 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!222763)))

(declare-fun bs!15701 () Bool)

(assert (= bs!15701 d!78059))

(assert (=> bs!15701 m!473117))

(declare-fun m!473391 () Bool)

(assert (=> bs!15701 m!473391))

(assert (=> bs!15701 m!473097))

(assert (=> b!492306 d!78059))

(declare-fun d!78061 () Bool)

(declare-fun lt!222765 () (_ BitVec 32))

(declare-fun lt!222764 () (_ BitVec 32))

(assert (=> d!78061 (= lt!222765 (bvmul (bvxor lt!222764 (bvlshr lt!222764 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78061 (= lt!222764 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78061 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!295345 (let ((h!10386 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46432 (bvmul (bvxor h!10386 (bvlshr h!10386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46432 (bvlshr x!46432 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!295345 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!295345 #b00000000000000000000000000000000))))))

(assert (=> d!78061 (= (toIndex!0 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!222765 (bvlshr lt!222765 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!492306 d!78061))

(declare-fun d!78063 () Bool)

(declare-fun e!289417 () Bool)

(assert (=> d!78063 e!289417))

(declare-fun c!58911 () Bool)

(declare-fun lt!222766 () SeekEntryResult!3783)

(assert (=> d!78063 (= c!58911 (and (is-Intermediate!3783 lt!222766) (undefined!4595 lt!222766)))))

(declare-fun e!289413 () SeekEntryResult!3783)

(assert (=> d!78063 (= lt!222766 e!289413)))

(declare-fun c!58913 () Bool)

(assert (=> d!78063 (= c!58913 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!222767 () (_ BitVec 64))

(assert (=> d!78063 (= lt!222767 (select (arr!15309 (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235))) (toIndex!0 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) mask!3524)))))

(assert (=> d!78063 (validMask!0 mask!3524)))

(assert (=> d!78063 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235)) mask!3524) lt!222766)))

(declare-fun b!492657 () Bool)

(declare-fun e!289414 () SeekEntryResult!3783)

(assert (=> b!492657 (= e!289414 (Intermediate!3783 false (toIndex!0 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492658 () Bool)

(assert (=> b!492658 (= e!289414 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235)) mask!3524))))

(declare-fun b!492659 () Bool)

(assert (=> b!492659 (= e!289413 (Intermediate!3783 true (toIndex!0 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492660 () Bool)

(declare-fun e!289415 () Bool)

(assert (=> b!492660 (= e!289417 e!289415)))

(declare-fun res!295383 () Bool)

(assert (=> b!492660 (= res!295383 (and (is-Intermediate!3783 lt!222766) (not (undefined!4595 lt!222766)) (bvslt (x!46426 lt!222766) #b01111111111111111111111111111110) (bvsge (x!46426 lt!222766) #b00000000000000000000000000000000) (bvsge (x!46426 lt!222766) #b00000000000000000000000000000000)))))

(assert (=> b!492660 (=> (not res!295383) (not e!289415))))

(declare-fun b!492661 () Bool)

(assert (=> b!492661 (and (bvsge (index!17313 lt!222766) #b00000000000000000000000000000000) (bvslt (index!17313 lt!222766) (size!15673 (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235)))))))

(declare-fun res!295385 () Bool)

(assert (=> b!492661 (= res!295385 (= (select (arr!15309 (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235))) (index!17313 lt!222766)) (select (store (arr!15309 a!3235) i!1204 k!2280) j!176)))))

(declare-fun e!289416 () Bool)

(assert (=> b!492661 (=> res!295385 e!289416)))

(assert (=> b!492661 (= e!289415 e!289416)))

(declare-fun b!492662 () Bool)

(assert (=> b!492662 (and (bvsge (index!17313 lt!222766) #b00000000000000000000000000000000) (bvslt (index!17313 lt!222766) (size!15673 (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235)))))))

(assert (=> b!492662 (= e!289416 (= (select (arr!15309 (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235))) (index!17313 lt!222766)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492663 () Bool)

(assert (=> b!492663 (and (bvsge (index!17313 lt!222766) #b00000000000000000000000000000000) (bvslt (index!17313 lt!222766) (size!15673 (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235)))))))

(declare-fun res!295384 () Bool)

(assert (=> b!492663 (= res!295384 (= (select (arr!15309 (array!31853 (store (arr!15309 a!3235) i!1204 k!2280) (size!15673 a!3235))) (index!17313 lt!222766)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492663 (=> res!295384 e!289416)))

(declare-fun b!492664 () Bool)

(assert (=> b!492664 (= e!289417 (bvsge (x!46426 lt!222766) #b01111111111111111111111111111110))))

(declare-fun b!492665 () Bool)

(assert (=> b!492665 (= e!289413 e!289414)))

(declare-fun c!58912 () Bool)

(assert (=> b!492665 (= c!58912 (or (= lt!222767 (select (store (arr!15309 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!222767 lt!222767) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!78063 c!58913) b!492659))

(assert (= (and d!78063 (not c!58913)) b!492665))

(assert (= (and b!492665 c!58912) b!492657))

(assert (= (and b!492665 (not c!58912)) b!492658))

(assert (= (and d!78063 c!58911) b!492664))

(assert (= (and d!78063 (not c!58911)) b!492660))

(assert (= (and b!492660 res!295383) b!492661))

(assert (= (and b!492661 (not res!295385)) b!492663))

(assert (= (and b!492663 (not res!295384)) b!492662))

(assert (=> b!492658 m!473113))

(declare-fun m!473393 () Bool)

(assert (=> b!492658 m!473393))

(assert (=> b!492658 m!473393))

(assert (=> b!492658 m!473109))

(declare-fun m!473395 () Bool)

(assert (=> b!492658 m!473395))

(declare-fun m!473397 () Bool)

(assert (=> b!492661 m!473397))

(assert (=> b!492662 m!473397))

(assert (=> b!492663 m!473397))

(assert (=> d!78063 m!473113))

(declare-fun m!473399 () Bool)

(assert (=> d!78063 m!473399))

(assert (=> d!78063 m!473097))

(assert (=> b!492306 d!78063))

(push 1)

