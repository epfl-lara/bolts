; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134622 () Bool)

(assert start!134622)

(declare-fun b!1571053 () Bool)

(declare-fun res!1073445 () Bool)

(declare-fun e!875988 () Bool)

(assert (=> b!1571053 (=> (not res!1073445) (not e!875988))))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571053 (= res!1073445 (validKeyInArray!0 k!2731))))

(declare-fun b!1571051 () Bool)

(declare-fun res!1073446 () Bool)

(assert (=> b!1571051 (=> (not res!1073446) (not e!875988))))

(declare-datatypes ((array!104788 0))(
  ( (array!104789 (arr!50569 (Array (_ BitVec 32) (_ BitVec 64))) (size!51120 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104788)

(declare-fun mask!4043 () (_ BitVec 32))

(assert (=> b!1571051 (= res!1073446 (= (size!51120 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571052 () Bool)

(declare-fun res!1073447 () Bool)

(assert (=> b!1571052 (=> (not res!1073447) (not e!875988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104788 (_ BitVec 32)) Bool)

(assert (=> b!1571052 (= res!1073447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun res!1073444 () Bool)

(assert (=> start!134622 (=> (not res!1073444) (not e!875988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134622 (= res!1073444 (validMask!0 mask!4043))))

(assert (=> start!134622 e!875988))

(assert (=> start!134622 true))

(declare-fun array_inv!39214 (array!104788) Bool)

(assert (=> start!134622 (array_inv!39214 a!3462)))

(declare-fun b!1571054 () Bool)

(assert (=> b!1571054 (= e!875988 (bvslt mask!4043 #b00000000000000000000000000000000))))

(assert (= (and start!134622 res!1073444) b!1571051))

(assert (= (and b!1571051 res!1073446) b!1571052))

(assert (= (and b!1571052 res!1073447) b!1571053))

(assert (= (and b!1571053 res!1073445) b!1571054))

(declare-fun m!1445095 () Bool)

(assert (=> b!1571053 m!1445095))

(declare-fun m!1445097 () Bool)

(assert (=> b!1571052 m!1445097))

(declare-fun m!1445099 () Bool)

(assert (=> start!134622 m!1445099))

(declare-fun m!1445101 () Bool)

(assert (=> start!134622 m!1445101))

(push 1)

(assert (not start!134622))

(assert (not b!1571053))

(assert (not b!1571052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164411 () Bool)

(assert (=> d!164411 (= (validMask!0 mask!4043) (and (or (= mask!4043 #b00000000000000000000000000000111) (= mask!4043 #b00000000000000000000000000001111) (= mask!4043 #b00000000000000000000000000011111) (= mask!4043 #b00000000000000000000000000111111) (= mask!4043 #b00000000000000000000000001111111) (= mask!4043 #b00000000000000000000000011111111) (= mask!4043 #b00000000000000000000000111111111) (= mask!4043 #b00000000000000000000001111111111) (= mask!4043 #b00000000000000000000011111111111) (= mask!4043 #b00000000000000000000111111111111) (= mask!4043 #b00000000000000000001111111111111) (= mask!4043 #b00000000000000000011111111111111) (= mask!4043 #b00000000000000000111111111111111) (= mask!4043 #b00000000000000001111111111111111) (= mask!4043 #b00000000000000011111111111111111) (= mask!4043 #b00000000000000111111111111111111) (= mask!4043 #b00000000000001111111111111111111) (= mask!4043 #b00000000000011111111111111111111) (= mask!4043 #b00000000000111111111111111111111) (= mask!4043 #b00000000001111111111111111111111) (= mask!4043 #b00000000011111111111111111111111) (= mask!4043 #b00000000111111111111111111111111) (= mask!4043 #b00000001111111111111111111111111) (= mask!4043 #b00000011111111111111111111111111) (= mask!4043 #b00000111111111111111111111111111) (= mask!4043 #b00001111111111111111111111111111) (= mask!4043 #b00011111111111111111111111111111) (= mask!4043 #b00111111111111111111111111111111)) (bvsle mask!4043 #b00111111111111111111111111111111)))))

(assert (=> start!134622 d!164411))

(declare-fun d!164415 () Bool)

(assert (=> d!164415 (= (array_inv!39214 a!3462) (bvsge (size!51120 a!3462) #b00000000000000000000000000000000))))

(assert (=> start!134622 d!164415))

(declare-fun d!164417 () Bool)

(assert (=> d!164417 (= (validKeyInArray!0 k!2731) (and (not (= k!2731 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2731 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571053 d!164417))

(declare-fun b!1571111 () Bool)

(declare-fun e!876027 () Bool)

(declare-fun e!876025 () Bool)

(assert (=> b!1571111 (= e!876027 e!876025)))

(declare-fun c!145050 () Bool)

(assert (=> b!1571111 (= c!145050 (validKeyInArray!0 (select (arr!50569 a!3462) #b00000000000000000000000000000000)))))

(declare-fun b!1571112 () Bool)

(declare-fun e!876026 () Bool)

(declare-fun call!72359 () Bool)

(assert (=> b!1571112 (= e!876026 call!72359)))

(declare-fun d!164419 () Bool)

(declare-fun res!1073488 () Bool)

(assert (=> d!164419 (=> res!1073488 e!876027)))

(assert (=> d!164419 (= res!1073488 (bvsge #b00000000000000000000000000000000 (size!51120 a!3462)))))

(assert (=> d!164419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043) e!876027)))

(declare-fun b!1571113 () Bool)

(assert (=> b!1571113 (= e!876025 call!72359)))

(declare-fun b!1571114 () Bool)

(assert (=> b!1571114 (= e!876025 e!876026)))

(declare-fun lt!673437 () (_ BitVec 64))

(assert (=> b!1571114 (= lt!673437 (select (arr!50569 a!3462) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!52042 0))(
  ( (Unit!52043) )
))
(declare-fun lt!673438 () Unit!52042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104788 (_ BitVec 64) (_ BitVec 32)) Unit!52042)

(assert (=> b!1571114 (= lt!673438 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3462 lt!673437 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1571114 (arrayContainsKey!0 a!3462 lt!673437 #b00000000000000000000000000000000)))

(declare-fun lt!673436 () Unit!52042)

(assert (=> b!1571114 (= lt!673436 lt!673438)))

(declare-fun res!1073489 () Bool)

(declare-datatypes ((SeekEntryResult!13528 0))(
  ( (MissingZero!13528 (index!56509 (_ BitVec 32))) (Found!13528 (index!56510 (_ BitVec 32))) (Intermediate!13528 (undefined!14340 Bool) (index!56511 (_ BitVec 32)) (x!141203 (_ BitVec 32))) (Undefined!13528) (MissingVacant!13528 (index!56512 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104788 (_ BitVec 32)) SeekEntryResult!13528)

(assert (=> b!1571114 (= res!1073489 (= (seekEntryOrOpen!0 (select (arr!50569 a!3462) #b00000000000000000000000000000000) a!3462 mask!4043) (Found!13528 #b00000000000000000000000000000000)))))

(assert (=> b!1571114 (=> (not res!1073489) (not e!876026))))

(declare-fun bm!72356 () Bool)

(assert (=> bm!72356 (= call!72359 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3462 mask!4043))))

(assert (= (and d!164419 (not res!1073488)) b!1571111))

(assert (= (and b!1571111 c!145050) b!1571114))

(assert (= (and b!1571111 (not c!145050)) b!1571113))

(assert (= (and b!1571114 res!1073489) b!1571112))

(assert (= (or b!1571112 b!1571113) bm!72356))

(declare-fun m!1445143 () Bool)

(assert (=> b!1571111 m!1445143))

(assert (=> b!1571111 m!1445143))

(declare-fun m!1445145 () Bool)

(assert (=> b!1571111 m!1445145))

(assert (=> b!1571114 m!1445143))

(declare-fun m!1445147 () Bool)

(assert (=> b!1571114 m!1445147))

(declare-fun m!1445149 () Bool)

(assert (=> b!1571114 m!1445149))

(assert (=> b!1571114 m!1445143))

(declare-fun m!1445151 () Bool)

(assert (=> b!1571114 m!1445151))

(declare-fun m!1445153 () Bool)

(assert (=> bm!72356 m!1445153))

(assert (=> b!1571052 d!164419))

(push 1)

(assert (not b!1571114))

(assert (not b!1571111))

(assert (not bm!72356))

(check-sat)

