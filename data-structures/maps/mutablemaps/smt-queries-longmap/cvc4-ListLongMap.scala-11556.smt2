; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134626 () Bool)

(assert start!134626)

(declare-fun b!1571078 () Bool)

(declare-fun e!876000 () Bool)

(declare-fun mask!4043 () (_ BitVec 32))

(assert (=> b!1571078 (= e!876000 (bvslt mask!4043 #b00000000000000000000000000000000))))

(declare-fun res!1073471 () Bool)

(assert (=> start!134626 (=> (not res!1073471) (not e!876000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134626 (= res!1073471 (validMask!0 mask!4043))))

(assert (=> start!134626 e!876000))

(assert (=> start!134626 true))

(declare-datatypes ((array!104792 0))(
  ( (array!104793 (arr!50571 (Array (_ BitVec 32) (_ BitVec 64))) (size!51122 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104792)

(declare-fun array_inv!39216 (array!104792) Bool)

(assert (=> start!134626 (array_inv!39216 a!3462)))

(declare-fun b!1571075 () Bool)

(declare-fun res!1073468 () Bool)

(assert (=> b!1571075 (=> (not res!1073468) (not e!876000))))

(assert (=> b!1571075 (= res!1073468 (= (size!51122 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571076 () Bool)

(declare-fun res!1073470 () Bool)

(assert (=> b!1571076 (=> (not res!1073470) (not e!876000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104792 (_ BitVec 32)) Bool)

(assert (=> b!1571076 (= res!1073470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571077 () Bool)

(declare-fun res!1073469 () Bool)

(assert (=> b!1571077 (=> (not res!1073469) (not e!876000))))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571077 (= res!1073469 (validKeyInArray!0 k!2731))))

(assert (= (and start!134626 res!1073471) b!1571075))

(assert (= (and b!1571075 res!1073468) b!1571076))

(assert (= (and b!1571076 res!1073470) b!1571077))

(assert (= (and b!1571077 res!1073469) b!1571078))

(declare-fun m!1445111 () Bool)

(assert (=> start!134626 m!1445111))

(declare-fun m!1445113 () Bool)

(assert (=> start!134626 m!1445113))

(declare-fun m!1445115 () Bool)

(assert (=> b!1571076 m!1445115))

(declare-fun m!1445117 () Bool)

(assert (=> b!1571077 m!1445117))

(push 1)

(assert (not b!1571076))

(assert (not start!134626))

(assert (not b!1571077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1571099 () Bool)

(declare-fun e!876018 () Bool)

(declare-fun call!72356 () Bool)

(assert (=> b!1571099 (= e!876018 call!72356)))

(declare-fun b!1571100 () Bool)

(declare-fun e!876017 () Bool)

(assert (=> b!1571100 (= e!876017 call!72356)))

(declare-fun b!1571101 () Bool)

(assert (=> b!1571101 (= e!876017 e!876018)))

(declare-fun lt!673427 () (_ BitVec 64))

(assert (=> b!1571101 (= lt!673427 (select (arr!50571 a!3462) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!52046 0))(
  ( (Unit!52047) )
))
(declare-fun lt!673428 () Unit!52046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104792 (_ BitVec 64) (_ BitVec 32)) Unit!52046)

(assert (=> b!1571101 (= lt!673428 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3462 lt!673427 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1571101 (arrayContainsKey!0 a!3462 lt!673427 #b00000000000000000000000000000000)))

(declare-fun lt!673429 () Unit!52046)

(assert (=> b!1571101 (= lt!673429 lt!673428)))

(declare-fun res!1073482 () Bool)

(declare-datatypes ((SeekEntryResult!13530 0))(
  ( (MissingZero!13530 (index!56517 (_ BitVec 32))) (Found!13530 (index!56518 (_ BitVec 32))) (Intermediate!13530 (undefined!14342 Bool) (index!56519 (_ BitVec 32)) (x!141205 (_ BitVec 32))) (Undefined!13530) (MissingVacant!13530 (index!56520 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104792 (_ BitVec 32)) SeekEntryResult!13530)

(assert (=> b!1571101 (= res!1073482 (= (seekEntryOrOpen!0 (select (arr!50571 a!3462) #b00000000000000000000000000000000) a!3462 mask!4043) (Found!13530 #b00000000000000000000000000000000)))))

(assert (=> b!1571101 (=> (not res!1073482) (not e!876018))))

(declare-fun d!164413 () Bool)

(declare-fun res!1073483 () Bool)

(declare-fun e!876016 () Bool)

(assert (=> d!164413 (=> res!1073483 e!876016)))

(assert (=> d!164413 (= res!1073483 (bvsge #b00000000000000000000000000000000 (size!51122 a!3462)))))

(assert (=> d!164413 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043) e!876016)))

(declare-fun bm!72353 () Bool)

(assert (=> bm!72353 (= call!72356 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3462 mask!4043))))

(declare-fun b!1571102 () Bool)

(assert (=> b!1571102 (= e!876016 e!876017)))

(declare-fun c!145047 () Bool)

(assert (=> b!1571102 (= c!145047 (validKeyInArray!0 (select (arr!50571 a!3462) #b00000000000000000000000000000000)))))

(assert (= (and d!164413 (not res!1073483)) b!1571102))

(assert (= (and b!1571102 c!145047) b!1571101))

(assert (= (and b!1571102 (not c!145047)) b!1571100))

(assert (= (and b!1571101 res!1073482) b!1571099))

(assert (= (or b!1571099 b!1571100) bm!72353))

(declare-fun m!1445131 () Bool)

(assert (=> b!1571101 m!1445131))

(declare-fun m!1445133 () Bool)

(assert (=> b!1571101 m!1445133))

(declare-fun m!1445135 () Bool)

(assert (=> b!1571101 m!1445135))

(assert (=> b!1571101 m!1445131))

(declare-fun m!1445137 () Bool)

(assert (=> b!1571101 m!1445137))

(declare-fun m!1445139 () Bool)

(assert (=> bm!72353 m!1445139))

(assert (=> b!1571102 m!1445131))

(assert (=> b!1571102 m!1445131))

(declare-fun m!1445141 () Bool)

(assert (=> b!1571102 m!1445141))

(assert (=> b!1571076 d!164413))

(declare-fun d!164423 () Bool)

(assert (=> d!164423 (= (validMask!0 mask!4043) (and (or (= mask!4043 #b00000000000000000000000000000111) (= mask!4043 #b00000000000000000000000000001111) (= mask!4043 #b00000000000000000000000000011111) (= mask!4043 #b00000000000000000000000000111111) (= mask!4043 #b00000000000000000000000001111111) (= mask!4043 #b00000000000000000000000011111111) (= mask!4043 #b00000000000000000000000111111111) (= mask!4043 #b00000000000000000000001111111111) (= mask!4043 #b00000000000000000000011111111111) (= mask!4043 #b00000000000000000000111111111111) (= mask!4043 #b00000000000000000001111111111111) (= mask!4043 #b00000000000000000011111111111111) (= mask!4043 #b00000000000000000111111111111111) (= mask!4043 #b00000000000000001111111111111111) (= mask!4043 #b00000000000000011111111111111111) (= mask!4043 #b00000000000000111111111111111111) (= mask!4043 #b00000000000001111111111111111111) (= mask!4043 #b00000000000011111111111111111111) (= mask!4043 #b00000000000111111111111111111111) (= mask!4043 #b00000000001111111111111111111111) (= mask!4043 #b00000000011111111111111111111111) (= mask!4043 #b00000000111111111111111111111111) (= mask!4043 #b00000001111111111111111111111111) (= mask!4043 #b00000011111111111111111111111111) (= mask!4043 #b00000111111111111111111111111111) (= mask!4043 #b00001111111111111111111111111111) (= mask!4043 #b00011111111111111111111111111111) (= mask!4043 #b00111111111111111111111111111111)) (bvsle mask!4043 #b00111111111111111111111111111111)))))

(assert (=> start!134626 d!164423))

(declare-fun d!164427 () Bool)

(assert (=> d!164427 (= (array_inv!39216 a!3462) (bvsge (size!51122 a!3462) #b00000000000000000000000000000000))))

(assert (=> start!134626 d!164427))

(declare-fun d!164429 () Bool)

(assert (=> d!164429 (= (validKeyInArray!0 k!2731) (and (not (= k!2731 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2731 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571077 d!164429))

