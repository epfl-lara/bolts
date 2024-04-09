; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118032 () Bool)

(assert start!118032)

(declare-fun b!1382013 () Bool)

(declare-fun res!923753 () Bool)

(declare-fun e!783365 () Bool)

(assert (=> b!1382013 (=> (not res!923753) (not e!783365))))

(declare-datatypes ((array!94339 0))(
  ( (array!94340 (arr!45548 (Array (_ BitVec 32) (_ BitVec 64))) (size!46099 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94339)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382013 (= res!923753 (validKeyInArray!0 (select (arr!45548 a!2971) i!1094)))))

(declare-fun res!923750 () Bool)

(assert (=> start!118032 (=> (not res!923750) (not e!783365))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118032 (= res!923750 (validMask!0 mask!3034))))

(assert (=> start!118032 e!783365))

(assert (=> start!118032 true))

(declare-fun array_inv!34493 (array!94339) Bool)

(assert (=> start!118032 (array_inv!34493 a!2971)))

(declare-fun b!1382014 () Bool)

(declare-fun res!923754 () Bool)

(assert (=> b!1382014 (=> (not res!923754) (not e!783365))))

(declare-datatypes ((List!32262 0))(
  ( (Nil!32259) (Cons!32258 (h!33467 (_ BitVec 64)) (t!46963 List!32262)) )
))
(declare-fun arrayNoDuplicates!0 (array!94339 (_ BitVec 32) List!32262) Bool)

(assert (=> b!1382014 (= res!923754 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32259))))

(declare-fun b!1382015 () Bool)

(assert (=> b!1382015 (= e!783365 (or (= (select (arr!45548 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!45548 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1382016 () Bool)

(declare-fun res!923752 () Bool)

(assert (=> b!1382016 (=> (not res!923752) (not e!783365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94339 (_ BitVec 32)) Bool)

(assert (=> b!1382016 (= res!923752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382017 () Bool)

(declare-fun res!923751 () Bool)

(assert (=> b!1382017 (=> (not res!923751) (not e!783365))))

(assert (=> b!1382017 (= res!923751 (and (= (size!46099 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46099 a!2971))))))

(assert (= (and start!118032 res!923750) b!1382017))

(assert (= (and b!1382017 res!923751) b!1382013))

(assert (= (and b!1382013 res!923753) b!1382014))

(assert (= (and b!1382014 res!923754) b!1382016))

(assert (= (and b!1382016 res!923752) b!1382015))

(declare-fun m!1267251 () Bool)

(assert (=> b!1382013 m!1267251))

(assert (=> b!1382013 m!1267251))

(declare-fun m!1267253 () Bool)

(assert (=> b!1382013 m!1267253))

(declare-fun m!1267255 () Bool)

(assert (=> b!1382016 m!1267255))

(declare-fun m!1267257 () Bool)

(assert (=> b!1382014 m!1267257))

(declare-fun m!1267259 () Bool)

(assert (=> start!118032 m!1267259))

(declare-fun m!1267261 () Bool)

(assert (=> start!118032 m!1267261))

(assert (=> b!1382015 m!1267251))

(check-sat (not b!1382016) (not start!118032) (not b!1382013) (not b!1382014))
(check-sat)
(get-model)

(declare-fun b!1382041 () Bool)

(declare-fun e!783378 () Bool)

(declare-fun call!66519 () Bool)

(assert (=> b!1382041 (= e!783378 call!66519)))

(declare-fun bm!66516 () Bool)

(assert (=> bm!66516 (= call!66519 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2971 mask!3034))))

(declare-fun d!149075 () Bool)

(declare-fun res!923775 () Bool)

(declare-fun e!783379 () Bool)

(assert (=> d!149075 (=> res!923775 e!783379)))

(assert (=> d!149075 (= res!923775 (bvsge #b00000000000000000000000000000000 (size!46099 a!2971)))))

(assert (=> d!149075 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034) e!783379)))

(declare-fun b!1382042 () Bool)

(declare-fun e!783380 () Bool)

(assert (=> b!1382042 (= e!783380 call!66519)))

(declare-fun b!1382043 () Bool)

(assert (=> b!1382043 (= e!783378 e!783380)))

(declare-fun lt!608287 () (_ BitVec 64))

(assert (=> b!1382043 (= lt!608287 (select (arr!45548 a!2971) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!45995 0))(
  ( (Unit!45996) )
))
(declare-fun lt!608286 () Unit!45995)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94339 (_ BitVec 64) (_ BitVec 32)) Unit!45995)

(assert (=> b!1382043 (= lt!608286 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2971 lt!608287 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1382043 (arrayContainsKey!0 a!2971 lt!608287 #b00000000000000000000000000000000)))

(declare-fun lt!608285 () Unit!45995)

(assert (=> b!1382043 (= lt!608285 lt!608286)))

(declare-fun res!923774 () Bool)

(declare-datatypes ((SeekEntryResult!10058 0))(
  ( (MissingZero!10058 (index!42602 (_ BitVec 32))) (Found!10058 (index!42603 (_ BitVec 32))) (Intermediate!10058 (undefined!10870 Bool) (index!42604 (_ BitVec 32)) (x!123870 (_ BitVec 32))) (Undefined!10058) (MissingVacant!10058 (index!42605 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94339 (_ BitVec 32)) SeekEntryResult!10058)

(assert (=> b!1382043 (= res!923774 (= (seekEntryOrOpen!0 (select (arr!45548 a!2971) #b00000000000000000000000000000000) a!2971 mask!3034) (Found!10058 #b00000000000000000000000000000000)))))

(assert (=> b!1382043 (=> (not res!923774) (not e!783380))))

(declare-fun b!1382044 () Bool)

(assert (=> b!1382044 (= e!783379 e!783378)))

(declare-fun c!128576 () Bool)

(assert (=> b!1382044 (= c!128576 (validKeyInArray!0 (select (arr!45548 a!2971) #b00000000000000000000000000000000)))))

(assert (= (and d!149075 (not res!923775)) b!1382044))

(assert (= (and b!1382044 c!128576) b!1382043))

(assert (= (and b!1382044 (not c!128576)) b!1382041))

(assert (= (and b!1382043 res!923774) b!1382042))

(assert (= (or b!1382042 b!1382041) bm!66516))

(declare-fun m!1267275 () Bool)

(assert (=> bm!66516 m!1267275))

(declare-fun m!1267277 () Bool)

(assert (=> b!1382043 m!1267277))

(declare-fun m!1267279 () Bool)

(assert (=> b!1382043 m!1267279))

(declare-fun m!1267281 () Bool)

(assert (=> b!1382043 m!1267281))

(assert (=> b!1382043 m!1267277))

(declare-fun m!1267283 () Bool)

(assert (=> b!1382043 m!1267283))

(assert (=> b!1382044 m!1267277))

(assert (=> b!1382044 m!1267277))

(declare-fun m!1267285 () Bool)

(assert (=> b!1382044 m!1267285))

(assert (=> b!1382016 d!149075))

(declare-fun d!149081 () Bool)

(assert (=> d!149081 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

(assert (=> start!118032 d!149081))

(declare-fun d!149091 () Bool)

(assert (=> d!149091 (= (array_inv!34493 a!2971) (bvsge (size!46099 a!2971) #b00000000000000000000000000000000))))

(assert (=> start!118032 d!149091))

(declare-fun d!149093 () Bool)

(assert (=> d!149093 (= (validKeyInArray!0 (select (arr!45548 a!2971) i!1094)) (and (not (= (select (arr!45548 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45548 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1382013 d!149093))

(declare-fun b!1382097 () Bool)

(declare-fun e!783424 () Bool)

(declare-fun contains!9747 (List!32262 (_ BitVec 64)) Bool)

(assert (=> b!1382097 (= e!783424 (contains!9747 Nil!32259 (select (arr!45548 a!2971) #b00000000000000000000000000000000)))))

(declare-fun b!1382098 () Bool)

(declare-fun e!783423 () Bool)

(declare-fun e!783425 () Bool)

(assert (=> b!1382098 (= e!783423 e!783425)))

(declare-fun c!128588 () Bool)

(assert (=> b!1382098 (= c!128588 (validKeyInArray!0 (select (arr!45548 a!2971) #b00000000000000000000000000000000)))))

(declare-fun bm!66528 () Bool)

(declare-fun call!66531 () Bool)

(assert (=> bm!66528 (= call!66531 (arrayNoDuplicates!0 a!2971 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128588 (Cons!32258 (select (arr!45548 a!2971) #b00000000000000000000000000000000) Nil!32259) Nil!32259)))))

(declare-fun b!1382099 () Bool)

(assert (=> b!1382099 (= e!783425 call!66531)))

(declare-fun b!1382101 () Bool)

(assert (=> b!1382101 (= e!783425 call!66531)))

(declare-fun b!1382100 () Bool)

(declare-fun e!783422 () Bool)

(assert (=> b!1382100 (= e!783422 e!783423)))

(declare-fun res!923807 () Bool)

(assert (=> b!1382100 (=> (not res!923807) (not e!783423))))

(assert (=> b!1382100 (= res!923807 (not e!783424))))

(declare-fun res!923806 () Bool)

(assert (=> b!1382100 (=> (not res!923806) (not e!783424))))

(assert (=> b!1382100 (= res!923806 (validKeyInArray!0 (select (arr!45548 a!2971) #b00000000000000000000000000000000)))))

(declare-fun d!149095 () Bool)

(declare-fun res!923808 () Bool)

(assert (=> d!149095 (=> res!923808 e!783422)))

(assert (=> d!149095 (= res!923808 (bvsge #b00000000000000000000000000000000 (size!46099 a!2971)))))

(assert (=> d!149095 (= (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32259) e!783422)))

(assert (= (and d!149095 (not res!923808)) b!1382100))

(assert (= (and b!1382100 res!923806) b!1382097))

(assert (= (and b!1382100 res!923807) b!1382098))

(assert (= (and b!1382098 c!128588) b!1382101))

(assert (= (and b!1382098 (not c!128588)) b!1382099))

(assert (= (or b!1382101 b!1382099) bm!66528))

(assert (=> b!1382097 m!1267277))

(assert (=> b!1382097 m!1267277))

(declare-fun m!1267311 () Bool)

(assert (=> b!1382097 m!1267311))

(assert (=> b!1382098 m!1267277))

(assert (=> b!1382098 m!1267277))

(assert (=> b!1382098 m!1267285))

(assert (=> bm!66528 m!1267277))

(declare-fun m!1267313 () Bool)

(assert (=> bm!66528 m!1267313))

(assert (=> b!1382100 m!1267277))

(assert (=> b!1382100 m!1267277))

(assert (=> b!1382100 m!1267285))

(assert (=> b!1382014 d!149095))

(check-sat (not b!1382044) (not b!1382098) (not bm!66516) (not bm!66528) (not b!1382100) (not b!1382043) (not b!1382097))
(check-sat)
