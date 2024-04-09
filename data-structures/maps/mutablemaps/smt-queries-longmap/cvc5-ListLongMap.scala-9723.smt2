; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115100 () Bool)

(assert start!115100)

(declare-fun b!1363437 () Bool)

(declare-fun res!907350 () Bool)

(declare-fun e!773266 () Bool)

(assert (=> b!1363437 (=> (not res!907350) (not e!773266))))

(declare-datatypes ((array!92650 0))(
  ( (array!92651 (arr!44752 (Array (_ BitVec 32) (_ BitVec 64))) (size!45303 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92650)

(declare-datatypes ((List!31973 0))(
  ( (Nil!31970) (Cons!31969 (h!33178 (_ BitVec 64)) (t!46671 List!31973)) )
))
(declare-fun arrayNoDuplicates!0 (array!92650 (_ BitVec 32) List!31973) Bool)

(assert (=> b!1363437 (= res!907350 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31970))))

(declare-fun b!1363438 () Bool)

(declare-fun res!907352 () Bool)

(assert (=> b!1363438 (=> (not res!907352) (not e!773266))))

(declare-fun acc!759 () List!31973)

(declare-fun contains!9538 (List!31973 (_ BitVec 64)) Bool)

(assert (=> b!1363438 (= res!907352 (not (contains!9538 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363439 () Bool)

(declare-datatypes ((Unit!44939 0))(
  ( (Unit!44940) )
))
(declare-fun e!773269 () Unit!44939)

(declare-fun Unit!44941 () Unit!44939)

(assert (=> b!1363439 (= e!773269 Unit!44941)))

(declare-fun b!1363440 () Bool)

(declare-fun res!907359 () Bool)

(assert (=> b!1363440 (=> (not res!907359) (not e!773266))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1363440 (= res!907359 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363441 () Bool)

(declare-fun e!773268 () Bool)

(assert (=> b!1363441 (= e!773268 false)))

(declare-fun lt!600743 () Bool)

(assert (=> b!1363441 (= lt!600743 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363442 () Bool)

(declare-fun res!907353 () Bool)

(assert (=> b!1363442 (=> (not res!907353) (not e!773266))))

(assert (=> b!1363442 (= res!907353 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45303 a!3742)))))

(declare-fun b!1363443 () Bool)

(declare-fun res!907356 () Bool)

(assert (=> b!1363443 (=> (not res!907356) (not e!773266))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363443 (= res!907356 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45303 a!3742))))))

(declare-fun b!1363444 () Bool)

(assert (=> b!1363444 (= e!773266 e!773268)))

(declare-fun res!907351 () Bool)

(assert (=> b!1363444 (=> (not res!907351) (not e!773268))))

(declare-fun lt!600739 () Bool)

(assert (=> b!1363444 (= res!907351 (and (not (= from!3120 i!1404)) (not lt!600739) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600740 () Unit!44939)

(assert (=> b!1363444 (= lt!600740 e!773269)))

(declare-fun c!127486 () Bool)

(assert (=> b!1363444 (= c!127486 lt!600739)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363444 (= lt!600739 (validKeyInArray!0 (select (arr!44752 a!3742) from!3120)))))

(declare-fun b!1363445 () Bool)

(declare-fun lt!600742 () Unit!44939)

(assert (=> b!1363445 (= e!773269 lt!600742)))

(declare-fun lt!600741 () Unit!44939)

(declare-fun lemmaListSubSeqRefl!0 (List!31973) Unit!44939)

(assert (=> b!1363445 (= lt!600741 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!929 (List!31973 List!31973) Bool)

(assert (=> b!1363445 (subseq!929 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92650 List!31973 List!31973 (_ BitVec 32)) Unit!44939)

(declare-fun $colon$colon!934 (List!31973 (_ BitVec 64)) List!31973)

(assert (=> b!1363445 (= lt!600742 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!934 acc!759 (select (arr!44752 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363445 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363446 () Bool)

(declare-fun res!907355 () Bool)

(assert (=> b!1363446 (=> (not res!907355) (not e!773266))))

(declare-fun noDuplicate!2417 (List!31973) Bool)

(assert (=> b!1363446 (= res!907355 (noDuplicate!2417 acc!759))))

(declare-fun res!907358 () Bool)

(assert (=> start!115100 (=> (not res!907358) (not e!773266))))

(assert (=> start!115100 (= res!907358 (and (bvslt (size!45303 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45303 a!3742))))))

(assert (=> start!115100 e!773266))

(assert (=> start!115100 true))

(declare-fun array_inv!33697 (array!92650) Bool)

(assert (=> start!115100 (array_inv!33697 a!3742)))

(declare-fun b!1363447 () Bool)

(declare-fun res!907357 () Bool)

(assert (=> b!1363447 (=> (not res!907357) (not e!773266))))

(assert (=> b!1363447 (= res!907357 (not (contains!9538 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363448 () Bool)

(declare-fun res!907354 () Bool)

(assert (=> b!1363448 (=> (not res!907354) (not e!773266))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1363448 (= res!907354 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!115100 res!907358) b!1363446))

(assert (= (and b!1363446 res!907355) b!1363438))

(assert (= (and b!1363438 res!907352) b!1363447))

(assert (= (and b!1363447 res!907357) b!1363437))

(assert (= (and b!1363437 res!907350) b!1363440))

(assert (= (and b!1363440 res!907359) b!1363443))

(assert (= (and b!1363443 res!907356) b!1363448))

(assert (= (and b!1363448 res!907354) b!1363442))

(assert (= (and b!1363442 res!907353) b!1363444))

(assert (= (and b!1363444 c!127486) b!1363445))

(assert (= (and b!1363444 (not c!127486)) b!1363439))

(assert (= (and b!1363444 res!907351) b!1363441))

(declare-fun m!1248265 () Bool)

(assert (=> start!115100 m!1248265))

(declare-fun m!1248267 () Bool)

(assert (=> b!1363448 m!1248267))

(declare-fun m!1248269 () Bool)

(assert (=> b!1363446 m!1248269))

(declare-fun m!1248271 () Bool)

(assert (=> b!1363441 m!1248271))

(declare-fun m!1248273 () Bool)

(assert (=> b!1363444 m!1248273))

(assert (=> b!1363444 m!1248273))

(declare-fun m!1248275 () Bool)

(assert (=> b!1363444 m!1248275))

(declare-fun m!1248277 () Bool)

(assert (=> b!1363438 m!1248277))

(declare-fun m!1248279 () Bool)

(assert (=> b!1363437 m!1248279))

(declare-fun m!1248281 () Bool)

(assert (=> b!1363445 m!1248281))

(assert (=> b!1363445 m!1248273))

(declare-fun m!1248283 () Bool)

(assert (=> b!1363445 m!1248283))

(declare-fun m!1248285 () Bool)

(assert (=> b!1363445 m!1248285))

(assert (=> b!1363445 m!1248271))

(assert (=> b!1363445 m!1248273))

(assert (=> b!1363445 m!1248283))

(declare-fun m!1248287 () Bool)

(assert (=> b!1363445 m!1248287))

(declare-fun m!1248289 () Bool)

(assert (=> b!1363447 m!1248289))

(declare-fun m!1248291 () Bool)

(assert (=> b!1363440 m!1248291))

(push 1)

