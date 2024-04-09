; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115096 () Bool)

(assert start!115096)

(declare-fun b!1363365 () Bool)

(declare-fun res!907297 () Bool)

(declare-fun e!773244 () Bool)

(assert (=> b!1363365 (=> (not res!907297) (not e!773244))))

(declare-datatypes ((List!31971 0))(
  ( (Nil!31968) (Cons!31967 (h!33176 (_ BitVec 64)) (t!46669 List!31971)) )
))
(declare-fun acc!759 () List!31971)

(declare-fun noDuplicate!2415 (List!31971) Bool)

(assert (=> b!1363365 (= res!907297 (noDuplicate!2415 acc!759))))

(declare-fun b!1363366 () Bool)

(declare-fun res!907299 () Bool)

(assert (=> b!1363366 (=> (not res!907299) (not e!773244))))

(declare-datatypes ((array!92646 0))(
  ( (array!92647 (arr!44750 (Array (_ BitVec 32) (_ BitVec 64))) (size!45301 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92646)

(declare-fun arrayNoDuplicates!0 (array!92646 (_ BitVec 32) List!31971) Bool)

(assert (=> b!1363366 (= res!907299 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31968))))

(declare-fun b!1363368 () Bool)

(declare-fun res!907296 () Bool)

(assert (=> b!1363368 (=> (not res!907296) (not e!773244))))

(declare-fun contains!9536 (List!31971 (_ BitVec 64)) Bool)

(assert (=> b!1363368 (= res!907296 (not (contains!9536 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363369 () Bool)

(declare-fun res!907290 () Bool)

(assert (=> b!1363369 (=> (not res!907290) (not e!773244))))

(assert (=> b!1363369 (= res!907290 (not (contains!9536 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363370 () Bool)

(declare-fun res!907293 () Bool)

(assert (=> b!1363370 (=> (not res!907293) (not e!773244))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363370 (= res!907293 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363371 () Bool)

(declare-datatypes ((Unit!44933 0))(
  ( (Unit!44934) )
))
(declare-fun e!773245 () Unit!44933)

(declare-fun Unit!44935 () Unit!44933)

(assert (=> b!1363371 (= e!773245 Unit!44935)))

(declare-fun b!1363372 () Bool)

(declare-fun lt!600713 () Unit!44933)

(assert (=> b!1363372 (= e!773245 lt!600713)))

(declare-fun lt!600712 () Unit!44933)

(declare-fun lemmaListSubSeqRefl!0 (List!31971) Unit!44933)

(assert (=> b!1363372 (= lt!600712 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!927 (List!31971 List!31971) Bool)

(assert (=> b!1363372 (subseq!927 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92646 List!31971 List!31971 (_ BitVec 32)) Unit!44933)

(declare-fun $colon$colon!932 (List!31971 (_ BitVec 64)) List!31971)

(assert (=> b!1363372 (= lt!600713 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!932 acc!759 (select (arr!44750 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363372 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363373 () Bool)

(declare-fun res!907292 () Bool)

(assert (=> b!1363373 (=> (not res!907292) (not e!773244))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363373 (= res!907292 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45301 a!3742))))))

(declare-fun b!1363374 () Bool)

(declare-fun res!907291 () Bool)

(assert (=> b!1363374 (=> (not res!907291) (not e!773244))))

(assert (=> b!1363374 (= res!907291 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363367 () Bool)

(declare-fun res!907294 () Bool)

(assert (=> b!1363367 (=> (not res!907294) (not e!773244))))

(assert (=> b!1363367 (= res!907294 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45301 a!3742)))))

(declare-fun res!907298 () Bool)

(assert (=> start!115096 (=> (not res!907298) (not e!773244))))

(assert (=> start!115096 (= res!907298 (and (bvslt (size!45301 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45301 a!3742))))))

(assert (=> start!115096 e!773244))

(assert (=> start!115096 true))

(declare-fun array_inv!33695 (array!92646) Bool)

(assert (=> start!115096 (array_inv!33695 a!3742)))

(declare-fun b!1363375 () Bool)

(declare-fun e!773243 () Bool)

(assert (=> b!1363375 (= e!773243 false)))

(declare-fun lt!600709 () Bool)

(assert (=> b!1363375 (= lt!600709 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363376 () Bool)

(assert (=> b!1363376 (= e!773244 e!773243)))

(declare-fun res!907295 () Bool)

(assert (=> b!1363376 (=> (not res!907295) (not e!773243))))

(declare-fun lt!600711 () Bool)

(assert (=> b!1363376 (= res!907295 (and (not (= from!3120 i!1404)) (not lt!600711) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600710 () Unit!44933)

(assert (=> b!1363376 (= lt!600710 e!773245)))

(declare-fun c!127480 () Bool)

(assert (=> b!1363376 (= c!127480 lt!600711)))

(assert (=> b!1363376 (= lt!600711 (validKeyInArray!0 (select (arr!44750 a!3742) from!3120)))))

(assert (= (and start!115096 res!907298) b!1363365))

(assert (= (and b!1363365 res!907297) b!1363369))

(assert (= (and b!1363369 res!907290) b!1363368))

(assert (= (and b!1363368 res!907296) b!1363366))

(assert (= (and b!1363366 res!907299) b!1363374))

(assert (= (and b!1363374 res!907291) b!1363373))

(assert (= (and b!1363373 res!907292) b!1363370))

(assert (= (and b!1363370 res!907293) b!1363367))

(assert (= (and b!1363367 res!907294) b!1363376))

(assert (= (and b!1363376 c!127480) b!1363372))

(assert (= (and b!1363376 (not c!127480)) b!1363371))

(assert (= (and b!1363376 res!907295) b!1363375))

(declare-fun m!1248209 () Bool)

(assert (=> b!1363368 m!1248209))

(declare-fun m!1248211 () Bool)

(assert (=> b!1363375 m!1248211))

(declare-fun m!1248213 () Bool)

(assert (=> b!1363366 m!1248213))

(declare-fun m!1248215 () Bool)

(assert (=> b!1363372 m!1248215))

(declare-fun m!1248217 () Bool)

(assert (=> b!1363372 m!1248217))

(declare-fun m!1248219 () Bool)

(assert (=> b!1363372 m!1248219))

(declare-fun m!1248221 () Bool)

(assert (=> b!1363372 m!1248221))

(assert (=> b!1363372 m!1248211))

(assert (=> b!1363372 m!1248217))

(assert (=> b!1363372 m!1248219))

(declare-fun m!1248223 () Bool)

(assert (=> b!1363372 m!1248223))

(assert (=> b!1363376 m!1248217))

(assert (=> b!1363376 m!1248217))

(declare-fun m!1248225 () Bool)

(assert (=> b!1363376 m!1248225))

(declare-fun m!1248227 () Bool)

(assert (=> b!1363374 m!1248227))

(declare-fun m!1248229 () Bool)

(assert (=> b!1363370 m!1248229))

(declare-fun m!1248231 () Bool)

(assert (=> start!115096 m!1248231))

(declare-fun m!1248233 () Bool)

(assert (=> b!1363369 m!1248233))

(declare-fun m!1248235 () Bool)

(assert (=> b!1363365 m!1248235))

(check-sat (not b!1363366) (not b!1363374) (not b!1363370) (not b!1363376) (not b!1363372) (not b!1363365) (not b!1363375) (not b!1363368) (not b!1363369) (not start!115096))
(check-sat)
