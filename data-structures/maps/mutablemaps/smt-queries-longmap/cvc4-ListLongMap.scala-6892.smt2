; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86642 () Bool)

(assert start!86642)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun b!1004443 () Bool)

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun e!565640 () Bool)

(assert (=> b!1004443 (= e!565640 (and (= index!1507 resIndex!38) (not (= x!1245 resX!38))))))

(declare-fun b!1004444 () Bool)

(declare-fun res!674077 () Bool)

(declare-fun e!565639 () Bool)

(assert (=> b!1004444 (=> (not res!674077) (not e!565639))))

(declare-datatypes ((array!63395 0))(
  ( (array!63396 (arr!30519 (Array (_ BitVec 32) (_ BitVec 64))) (size!31022 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63395)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63395 (_ BitVec 32)) Bool)

(assert (=> b!1004444 (= res!674077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004445 () Bool)

(declare-fun e!565636 () Bool)

(declare-fun e!565635 () Bool)

(assert (=> b!1004445 (= e!565636 e!565635)))

(declare-fun res!674082 () Bool)

(assert (=> b!1004445 (=> (not res!674082) (not e!565635))))

(declare-datatypes ((SeekEntryResult!9451 0))(
  ( (MissingZero!9451 (index!40174 (_ BitVec 32))) (Found!9451 (index!40175 (_ BitVec 32))) (Intermediate!9451 (undefined!10263 Bool) (index!40176 (_ BitVec 32)) (x!87600 (_ BitVec 32))) (Undefined!9451) (MissingVacant!9451 (index!40177 (_ BitVec 32))) )
))
(declare-fun lt!444185 () SeekEntryResult!9451)

(declare-fun lt!444186 () SeekEntryResult!9451)

(assert (=> b!1004445 (= res!674082 (= lt!444185 lt!444186))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63395 (_ BitVec 32)) SeekEntryResult!9451)

(assert (=> b!1004445 (= lt!444185 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30519 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004446 () Bool)

(declare-fun res!674080 () Bool)

(declare-fun e!565637 () Bool)

(assert (=> b!1004446 (=> (not res!674080) (not e!565637))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004446 (= res!674080 (and (= (size!31022 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31022 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31022 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004447 () Bool)

(declare-fun res!674083 () Bool)

(assert (=> b!1004447 (=> (not res!674083) (not e!565639))))

(declare-datatypes ((List!21321 0))(
  ( (Nil!21318) (Cons!21317 (h!22494 (_ BitVec 64)) (t!30330 List!21321)) )
))
(declare-fun arrayNoDuplicates!0 (array!63395 (_ BitVec 32) List!21321) Bool)

(assert (=> b!1004447 (= res!674083 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21318))))

(declare-fun b!1004448 () Bool)

(declare-fun res!674081 () Bool)

(assert (=> b!1004448 (=> (not res!674081) (not e!565637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004448 (= res!674081 (validKeyInArray!0 (select (arr!30519 a!3219) j!170)))))

(declare-fun b!1004449 () Bool)

(declare-fun res!674089 () Bool)

(assert (=> b!1004449 (=> (not res!674089) (not e!565637))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004449 (= res!674089 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004451 () Bool)

(assert (=> b!1004451 (= e!565635 e!565640)))

(declare-fun res!674087 () Bool)

(assert (=> b!1004451 (=> (not res!674087) (not e!565640))))

(declare-fun lt!444187 () SeekEntryResult!9451)

(declare-fun lt!444188 () array!63395)

(declare-fun lt!444184 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004451 (= res!674087 (not (= lt!444187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444184 mask!3464) lt!444184 lt!444188 mask!3464))))))

(assert (=> b!1004451 (= lt!444184 (select (store (arr!30519 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004451 (= lt!444188 (array!63396 (store (arr!30519 a!3219) i!1194 k!2224) (size!31022 a!3219)))))

(declare-fun b!1004452 () Bool)

(declare-fun res!674078 () Bool)

(assert (=> b!1004452 (=> (not res!674078) (not e!565637))))

(assert (=> b!1004452 (= res!674078 (validKeyInArray!0 k!2224))))

(declare-fun b!1004453 () Bool)

(declare-fun res!674086 () Bool)

(assert (=> b!1004453 (=> (not res!674086) (not e!565640))))

(assert (=> b!1004453 (= res!674086 (not (= lt!444185 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444184 lt!444188 mask!3464))))))

(declare-fun b!1004454 () Bool)

(assert (=> b!1004454 (= e!565637 e!565639)))

(declare-fun res!674085 () Bool)

(assert (=> b!1004454 (=> (not res!674085) (not e!565639))))

(declare-fun lt!444189 () SeekEntryResult!9451)

(assert (=> b!1004454 (= res!674085 (or (= lt!444189 (MissingVacant!9451 i!1194)) (= lt!444189 (MissingZero!9451 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63395 (_ BitVec 32)) SeekEntryResult!9451)

(assert (=> b!1004454 (= lt!444189 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004455 () Bool)

(assert (=> b!1004455 (= e!565639 e!565636)))

(declare-fun res!674084 () Bool)

(assert (=> b!1004455 (=> (not res!674084) (not e!565636))))

(assert (=> b!1004455 (= res!674084 (= lt!444187 lt!444186))))

(assert (=> b!1004455 (= lt!444186 (Intermediate!9451 false resIndex!38 resX!38))))

(assert (=> b!1004455 (= lt!444187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30519 a!3219) j!170) mask!3464) (select (arr!30519 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004450 () Bool)

(declare-fun res!674088 () Bool)

(assert (=> b!1004450 (=> (not res!674088) (not e!565639))))

(assert (=> b!1004450 (= res!674088 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31022 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31022 a!3219))))))

(declare-fun res!674079 () Bool)

(assert (=> start!86642 (=> (not res!674079) (not e!565637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86642 (= res!674079 (validMask!0 mask!3464))))

(assert (=> start!86642 e!565637))

(declare-fun array_inv!23509 (array!63395) Bool)

(assert (=> start!86642 (array_inv!23509 a!3219)))

(assert (=> start!86642 true))

(assert (= (and start!86642 res!674079) b!1004446))

(assert (= (and b!1004446 res!674080) b!1004448))

(assert (= (and b!1004448 res!674081) b!1004452))

(assert (= (and b!1004452 res!674078) b!1004449))

(assert (= (and b!1004449 res!674089) b!1004454))

(assert (= (and b!1004454 res!674085) b!1004444))

(assert (= (and b!1004444 res!674077) b!1004447))

(assert (= (and b!1004447 res!674083) b!1004450))

(assert (= (and b!1004450 res!674088) b!1004455))

(assert (= (and b!1004455 res!674084) b!1004445))

(assert (= (and b!1004445 res!674082) b!1004451))

(assert (= (and b!1004451 res!674087) b!1004453))

(assert (= (and b!1004453 res!674086) b!1004443))

(declare-fun m!930089 () Bool)

(assert (=> b!1004445 m!930089))

(assert (=> b!1004445 m!930089))

(declare-fun m!930091 () Bool)

(assert (=> b!1004445 m!930091))

(declare-fun m!930093 () Bool)

(assert (=> b!1004452 m!930093))

(declare-fun m!930095 () Bool)

(assert (=> b!1004451 m!930095))

(assert (=> b!1004451 m!930095))

(declare-fun m!930097 () Bool)

(assert (=> b!1004451 m!930097))

(declare-fun m!930099 () Bool)

(assert (=> b!1004451 m!930099))

(declare-fun m!930101 () Bool)

(assert (=> b!1004451 m!930101))

(assert (=> b!1004448 m!930089))

(assert (=> b!1004448 m!930089))

(declare-fun m!930103 () Bool)

(assert (=> b!1004448 m!930103))

(declare-fun m!930105 () Bool)

(assert (=> b!1004449 m!930105))

(declare-fun m!930107 () Bool)

(assert (=> b!1004447 m!930107))

(declare-fun m!930109 () Bool)

(assert (=> b!1004453 m!930109))

(assert (=> b!1004455 m!930089))

(assert (=> b!1004455 m!930089))

(declare-fun m!930111 () Bool)

(assert (=> b!1004455 m!930111))

(assert (=> b!1004455 m!930111))

(assert (=> b!1004455 m!930089))

(declare-fun m!930113 () Bool)

(assert (=> b!1004455 m!930113))

(declare-fun m!930115 () Bool)

(assert (=> b!1004454 m!930115))

(declare-fun m!930117 () Bool)

(assert (=> start!86642 m!930117))

(declare-fun m!930119 () Bool)

(assert (=> start!86642 m!930119))

(declare-fun m!930121 () Bool)

(assert (=> b!1004444 m!930121))

(push 1)

(assert (not b!1004452))

(assert (not b!1004455))

(assert (not start!86642))

(assert (not b!1004447))

(assert (not b!1004444))

(assert (not b!1004454))

(assert (not b!1004453))

(assert (not b!1004451))

(assert (not b!1004448))

(assert (not b!1004449))

(assert (not b!1004445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1004505 () Bool)

(declare-fun e!565673 () Bool)

(declare-fun contains!5888 (List!21321 (_ BitVec 64)) Bool)

(assert (=> b!1004505 (= e!565673 (contains!5888 Nil!21318 (select (arr!30519 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42316 () Bool)

(declare-fun call!42319 () Bool)

(declare-fun c!101346 () Bool)

(assert (=> bm!42316 (= call!42319 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101346 (Cons!21317 (select (arr!30519 a!3219) #b00000000000000000000000000000000) Nil!21318) Nil!21318)))))

(declare-fun b!1004506 () Bool)

(declare-fun e!565676 () Bool)

(declare-fun e!565674 () Bool)

(assert (=> b!1004506 (= e!565676 e!565674)))

(declare-fun res!674111 () Bool)

(assert (=> b!1004506 (=> (not res!674111) (not e!565674))))

(assert (=> b!1004506 (= res!674111 (not e!565673))))

(declare-fun res!674112 () Bool)

(assert (=> b!1004506 (=> (not res!674112) (not e!565673))))

(assert (=> b!1004506 (= res!674112 (validKeyInArray!0 (select (arr!30519 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004507 () Bool)

(declare-fun e!565675 () Bool)

(assert (=> b!1004507 (= e!565674 e!565675)))

(assert (=> b!1004507 (= c!101346 (validKeyInArray!0 (select (arr!30519 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004508 () Bool)

(assert (=> b!1004508 (= e!565675 call!42319)))

(declare-fun d!119355 () Bool)

(declare-fun res!674113 () Bool)

(assert (=> d!119355 (=> res!674113 e!565676)))

(assert (=> d!119355 (= res!674113 (bvsge #b00000000000000000000000000000000 (size!31022 a!3219)))))

(assert (=> d!119355 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21318) e!565676)))

(declare-fun b!1004509 () Bool)

(assert (=> b!1004509 (= e!565675 call!42319)))

(assert (= (and d!119355 (not res!674113)) b!1004506))

(assert (= (and b!1004506 res!674112) b!1004505))

(assert (= (and b!1004506 res!674111) b!1004507))

(assert (= (and b!1004507 c!101346) b!1004509))

(assert (= (and b!1004507 (not c!101346)) b!1004508))

(assert (= (or b!1004509 b!1004508) bm!42316))

(declare-fun m!930143 () Bool)

(assert (=> b!1004505 m!930143))

(assert (=> b!1004505 m!930143))

(declare-fun m!930145 () Bool)

(assert (=> b!1004505 m!930145))

(assert (=> bm!42316 m!930143))

(declare-fun m!930147 () Bool)

(assert (=> bm!42316 m!930147))

(assert (=> b!1004506 m!930143))

(assert (=> b!1004506 m!930143))

(declare-fun m!930149 () Bool)

(assert (=> b!1004506 m!930149))

(assert (=> b!1004507 m!930143))

(assert (=> b!1004507 m!930143))

(assert (=> b!1004507 m!930149))

(assert (=> b!1004447 d!119355))

(declare-fun d!119361 () Bool)

(assert (=> d!119361 (= (validKeyInArray!0 (select (arr!30519 a!3219) j!170)) (and (not (= (select (arr!30519 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30519 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004448 d!119361))

(declare-fun d!119363 () Bool)

(assert (=> d!119363 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86642 d!119363))

(declare-fun d!119365 () Bool)

(assert (=> d!119365 (= (array_inv!23509 a!3219) (bvsge (size!31022 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86642 d!119365))

(declare-fun d!119367 () Bool)

(declare-fun res!674118 () Bool)

(declare-fun e!565691 () Bool)

(assert (=> d!119367 (=> res!674118 e!565691)))

(assert (=> d!119367 (= res!674118 (= (select (arr!30519 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119367 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!565691)))

(declare-fun b!1004534 () Bool)

(declare-fun e!565692 () Bool)

(assert (=> b!1004534 (= e!565691 e!565692)))

(declare-fun res!674119 () Bool)

(assert (=> b!1004534 (=> (not res!674119) (not e!565692))))

(assert (=> b!1004534 (= res!674119 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31022 a!3219)))))

(declare-fun b!1004535 () Bool)

(assert (=> b!1004535 (= e!565692 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119367 (not res!674118)) b!1004534))

(assert (= (and b!1004534 res!674119) b!1004535))

(assert (=> d!119367 m!930143))

(declare-fun m!930151 () Bool)

(assert (=> b!1004535 m!930151))

(assert (=> b!1004449 d!119367))

(declare-fun b!1004646 () Bool)

(declare-fun lt!444246 () SeekEntryResult!9451)

(assert (=> b!1004646 (and (bvsge (index!40176 lt!444246) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444246) (size!31022 lt!444188)))))

(declare-fun res!674171 () Bool)

(assert (=> b!1004646 (= res!674171 (= (select (arr!30519 lt!444188) (index!40176 lt!444246)) lt!444184))))

(declare-fun e!565764 () Bool)

(assert (=> b!1004646 (=> res!674171 e!565764)))

(declare-fun e!565767 () Bool)

(assert (=> b!1004646 (= e!565767 e!565764)))

(declare-fun b!1004647 () Bool)

(assert (=> b!1004647 (and (bvsge (index!40176 lt!444246) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444246) (size!31022 lt!444188)))))

(declare-fun res!674172 () Bool)

(assert (=> b!1004647 (= res!674172 (= (select (arr!30519 lt!444188) (index!40176 lt!444246)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004647 (=> res!674172 e!565764)))

(declare-fun b!1004648 () Bool)

(declare-fun e!565763 () SeekEntryResult!9451)

(declare-fun e!565765 () SeekEntryResult!9451)

(assert (=> b!1004648 (= e!565763 e!565765)))

(declare-fun c!101388 () Bool)

(declare-fun lt!444247 () (_ BitVec 64))

(assert (=> b!1004648 (= c!101388 (or (= lt!444247 lt!444184) (= (bvadd lt!444247 lt!444247) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004649 () Bool)

(assert (=> b!1004649 (and (bvsge (index!40176 lt!444246) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444246) (size!31022 lt!444188)))))

(assert (=> b!1004649 (= e!565764 (= (select (arr!30519 lt!444188) (index!40176 lt!444246)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004650 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004650 (= e!565765 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444184 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444184 lt!444188 mask!3464))))

(declare-fun b!1004651 () Bool)

(assert (=> b!1004651 (= e!565765 (Intermediate!9451 false (toIndex!0 lt!444184 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004652 () Bool)

(declare-fun e!565766 () Bool)

(assert (=> b!1004652 (= e!565766 (bvsge (x!87600 lt!444246) #b01111111111111111111111111111110))))

(declare-fun d!119369 () Bool)

(assert (=> d!119369 e!565766))

(declare-fun c!101390 () Bool)

(assert (=> d!119369 (= c!101390 (and (is-Intermediate!9451 lt!444246) (undefined!10263 lt!444246)))))

(assert (=> d!119369 (= lt!444246 e!565763)))

(declare-fun c!101389 () Bool)

(assert (=> d!119369 (= c!101389 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119369 (= lt!444247 (select (arr!30519 lt!444188) (toIndex!0 lt!444184 mask!3464)))))

(assert (=> d!119369 (validMask!0 mask!3464)))

(assert (=> d!119369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444184 mask!3464) lt!444184 lt!444188 mask!3464) lt!444246)))

(declare-fun b!1004653 () Bool)

(assert (=> b!1004653 (= e!565766 e!565767)))

(declare-fun res!674170 () Bool)

(assert (=> b!1004653 (= res!674170 (and (is-Intermediate!9451 lt!444246) (not (undefined!10263 lt!444246)) (bvslt (x!87600 lt!444246) #b01111111111111111111111111111110) (bvsge (x!87600 lt!444246) #b00000000000000000000000000000000) (bvsge (x!87600 lt!444246) #b00000000000000000000000000000000)))))

(assert (=> b!1004653 (=> (not res!674170) (not e!565767))))

(declare-fun b!1004654 () Bool)

(assert (=> b!1004654 (= e!565763 (Intermediate!9451 true (toIndex!0 lt!444184 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119369 c!101389) b!1004654))

(assert (= (and d!119369 (not c!101389)) b!1004648))

(assert (= (and b!1004648 c!101388) b!1004651))

(assert (= (and b!1004648 (not c!101388)) b!1004650))

(assert (= (and d!119369 c!101390) b!1004652))

(assert (= (and d!119369 (not c!101390)) b!1004653))

(assert (= (and b!1004653 res!674170) b!1004646))

(assert (= (and b!1004646 (not res!674171)) b!1004647))

(assert (= (and b!1004647 (not res!674172)) b!1004649))

(declare-fun m!930215 () Bool)

(assert (=> b!1004649 m!930215))

(assert (=> d!119369 m!930095))

(declare-fun m!930217 () Bool)

(assert (=> d!119369 m!930217))

(assert (=> d!119369 m!930117))

(assert (=> b!1004650 m!930095))

(declare-fun m!930219 () Bool)

(assert (=> b!1004650 m!930219))

(assert (=> b!1004650 m!930219))

(declare-fun m!930221 () Bool)

(assert (=> b!1004650 m!930221))

(assert (=> b!1004646 m!930215))

(assert (=> b!1004647 m!930215))

(assert (=> b!1004451 d!119369))

(declare-fun d!119397 () Bool)

(declare-fun lt!444255 () (_ BitVec 32))

(declare-fun lt!444254 () (_ BitVec 32))

(assert (=> d!119397 (= lt!444255 (bvmul (bvxor lt!444254 (bvlshr lt!444254 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119397 (= lt!444254 ((_ extract 31 0) (bvand (bvxor lt!444184 (bvlshr lt!444184 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119397 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674173 (let ((h!22497 ((_ extract 31 0) (bvand (bvxor lt!444184 (bvlshr lt!444184 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87606 (bvmul (bvxor h!22497 (bvlshr h!22497 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87606 (bvlshr x!87606 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674173 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674173 #b00000000000000000000000000000000))))))

(assert (=> d!119397 (= (toIndex!0 lt!444184 mask!3464) (bvand (bvxor lt!444255 (bvlshr lt!444255 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004451 d!119397))

(declare-fun d!119401 () Bool)

(assert (=> d!119401 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004452 d!119401))

(declare-fun b!1004660 () Bool)

(declare-fun lt!444256 () SeekEntryResult!9451)

(assert (=> b!1004660 (and (bvsge (index!40176 lt!444256) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444256) (size!31022 lt!444188)))))

(declare-fun res!674178 () Bool)

(assert (=> b!1004660 (= res!674178 (= (select (arr!30519 lt!444188) (index!40176 lt!444256)) lt!444184))))

(declare-fun e!565773 () Bool)

(assert (=> b!1004660 (=> res!674178 e!565773)))

(declare-fun e!565776 () Bool)

(assert (=> b!1004660 (= e!565776 e!565773)))

(declare-fun b!1004661 () Bool)

(assert (=> b!1004661 (and (bvsge (index!40176 lt!444256) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444256) (size!31022 lt!444188)))))

(declare-fun res!674179 () Bool)

(assert (=> b!1004661 (= res!674179 (= (select (arr!30519 lt!444188) (index!40176 lt!444256)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004661 (=> res!674179 e!565773)))

(declare-fun b!1004662 () Bool)

(declare-fun e!565772 () SeekEntryResult!9451)

(declare-fun e!565774 () SeekEntryResult!9451)

(assert (=> b!1004662 (= e!565772 e!565774)))

(declare-fun c!101392 () Bool)

(declare-fun lt!444257 () (_ BitVec 64))

(assert (=> b!1004662 (= c!101392 (or (= lt!444257 lt!444184) (= (bvadd lt!444257 lt!444257) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004663 () Bool)

(assert (=> b!1004663 (and (bvsge (index!40176 lt!444256) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444256) (size!31022 lt!444188)))))

(assert (=> b!1004663 (= e!565773 (= (select (arr!30519 lt!444188) (index!40176 lt!444256)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004664 () Bool)

(assert (=> b!1004664 (= e!565774 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444184 lt!444188 mask!3464))))

(declare-fun b!1004665 () Bool)

(assert (=> b!1004665 (= e!565774 (Intermediate!9451 false index!1507 x!1245))))

(declare-fun b!1004666 () Bool)

(declare-fun e!565775 () Bool)

(assert (=> b!1004666 (= e!565775 (bvsge (x!87600 lt!444256) #b01111111111111111111111111111110))))

(declare-fun d!119403 () Bool)

(assert (=> d!119403 e!565775))

(declare-fun c!101394 () Bool)

(assert (=> d!119403 (= c!101394 (and (is-Intermediate!9451 lt!444256) (undefined!10263 lt!444256)))))

(assert (=> d!119403 (= lt!444256 e!565772)))

(declare-fun c!101393 () Bool)

(assert (=> d!119403 (= c!101393 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119403 (= lt!444257 (select (arr!30519 lt!444188) index!1507))))

(assert (=> d!119403 (validMask!0 mask!3464)))

(assert (=> d!119403 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444184 lt!444188 mask!3464) lt!444256)))

(declare-fun b!1004667 () Bool)

(assert (=> b!1004667 (= e!565775 e!565776)))

(declare-fun res!674177 () Bool)

(assert (=> b!1004667 (= res!674177 (and (is-Intermediate!9451 lt!444256) (not (undefined!10263 lt!444256)) (bvslt (x!87600 lt!444256) #b01111111111111111111111111111110) (bvsge (x!87600 lt!444256) #b00000000000000000000000000000000) (bvsge (x!87600 lt!444256) x!1245)))))

(assert (=> b!1004667 (=> (not res!674177) (not e!565776))))

(declare-fun b!1004668 () Bool)

(assert (=> b!1004668 (= e!565772 (Intermediate!9451 true index!1507 x!1245))))

(assert (= (and d!119403 c!101393) b!1004668))

(assert (= (and d!119403 (not c!101393)) b!1004662))

(assert (= (and b!1004662 c!101392) b!1004665))

(assert (= (and b!1004662 (not c!101392)) b!1004664))

(assert (= (and d!119403 c!101394) b!1004666))

(assert (= (and d!119403 (not c!101394)) b!1004667))

(assert (= (and b!1004667 res!674177) b!1004660))

(assert (= (and b!1004660 (not res!674178)) b!1004661))

(assert (= (and b!1004661 (not res!674179)) b!1004663))

(declare-fun m!930227 () Bool)

(assert (=> b!1004663 m!930227))

(declare-fun m!930229 () Bool)

(assert (=> d!119403 m!930229))

(assert (=> d!119403 m!930117))

(declare-fun m!930231 () Bool)

(assert (=> b!1004664 m!930231))

(assert (=> b!1004664 m!930231))

(declare-fun m!930233 () Bool)

(assert (=> b!1004664 m!930233))

(assert (=> b!1004660 m!930227))

(assert (=> b!1004661 m!930227))

(assert (=> b!1004453 d!119403))

(declare-fun b!1004689 () Bool)

(declare-fun e!565790 () SeekEntryResult!9451)

(declare-fun e!565791 () SeekEntryResult!9451)

(assert (=> b!1004689 (= e!565790 e!565791)))

(declare-fun lt!444268 () (_ BitVec 64))

(declare-fun lt!444270 () SeekEntryResult!9451)

(assert (=> b!1004689 (= lt!444268 (select (arr!30519 a!3219) (index!40176 lt!444270)))))

(declare-fun c!101401 () Bool)

(assert (=> b!1004689 (= c!101401 (= lt!444268 k!2224))))

(declare-fun d!119405 () Bool)

(declare-fun lt!444269 () SeekEntryResult!9451)

(assert (=> d!119405 (and (or (is-Undefined!9451 lt!444269) (not (is-Found!9451 lt!444269)) (and (bvsge (index!40175 lt!444269) #b00000000000000000000000000000000) (bvslt (index!40175 lt!444269) (size!31022 a!3219)))) (or (is-Undefined!9451 lt!444269) (is-Found!9451 lt!444269) (not (is-MissingZero!9451 lt!444269)) (and (bvsge (index!40174 lt!444269) #b00000000000000000000000000000000) (bvslt (index!40174 lt!444269) (size!31022 a!3219)))) (or (is-Undefined!9451 lt!444269) (is-Found!9451 lt!444269) (is-MissingZero!9451 lt!444269) (not (is-MissingVacant!9451 lt!444269)) (and (bvsge (index!40177 lt!444269) #b00000000000000000000000000000000) (bvslt (index!40177 lt!444269) (size!31022 a!3219)))) (or (is-Undefined!9451 lt!444269) (ite (is-Found!9451 lt!444269) (= (select (arr!30519 a!3219) (index!40175 lt!444269)) k!2224) (ite (is-MissingZero!9451 lt!444269) (= (select (arr!30519 a!3219) (index!40174 lt!444269)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9451 lt!444269) (= (select (arr!30519 a!3219) (index!40177 lt!444269)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119405 (= lt!444269 e!565790)))

(declare-fun c!101403 () Bool)

(assert (=> d!119405 (= c!101403 (and (is-Intermediate!9451 lt!444270) (undefined!10263 lt!444270)))))

(assert (=> d!119405 (= lt!444270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119405 (validMask!0 mask!3464)))

(assert (=> d!119405 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!444269)))

(declare-fun b!1004690 () Bool)

(declare-fun c!101402 () Bool)

(assert (=> b!1004690 (= c!101402 (= lt!444268 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565789 () SeekEntryResult!9451)

(assert (=> b!1004690 (= e!565791 e!565789)))

(declare-fun b!1004691 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63395 (_ BitVec 32)) SeekEntryResult!9451)

(assert (=> b!1004691 (= e!565789 (seekKeyOrZeroReturnVacant!0 (x!87600 lt!444270) (index!40176 lt!444270) (index!40176 lt!444270) k!2224 a!3219 mask!3464))))

(declare-fun b!1004692 () Bool)

(assert (=> b!1004692 (= e!565789 (MissingZero!9451 (index!40176 lt!444270)))))

(declare-fun b!1004693 () Bool)

(assert (=> b!1004693 (= e!565790 Undefined!9451)))

(declare-fun b!1004694 () Bool)

(assert (=> b!1004694 (= e!565791 (Found!9451 (index!40176 lt!444270)))))

(assert (= (and d!119405 c!101403) b!1004693))

(assert (= (and d!119405 (not c!101403)) b!1004689))

(assert (= (and b!1004689 c!101401) b!1004694))

(assert (= (and b!1004689 (not c!101401)) b!1004690))

(assert (= (and b!1004690 c!101402) b!1004692))

(assert (= (and b!1004690 (not c!101402)) b!1004691))

(declare-fun m!930237 () Bool)

(assert (=> b!1004689 m!930237))

(declare-fun m!930239 () Bool)

(assert (=> d!119405 m!930239))

(declare-fun m!930241 () Bool)

(assert (=> d!119405 m!930241))

(declare-fun m!930243 () Bool)

(assert (=> d!119405 m!930243))

(declare-fun m!930245 () Bool)

(assert (=> d!119405 m!930245))

(assert (=> d!119405 m!930117))

(declare-fun m!930247 () Bool)

(assert (=> d!119405 m!930247))

(assert (=> d!119405 m!930239))

(declare-fun m!930249 () Bool)

(assert (=> b!1004691 m!930249))

(assert (=> b!1004454 d!119405))

(declare-fun b!1004725 () Bool)

(declare-fun e!565812 () Bool)

(declare-fun e!565813 () Bool)

(assert (=> b!1004725 (= e!565812 e!565813)))

(declare-fun lt!444290 () (_ BitVec 64))

(assert (=> b!1004725 (= lt!444290 (select (arr!30519 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32946 0))(
  ( (Unit!32947) )
))
(declare-fun lt!444289 () Unit!32946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63395 (_ BitVec 64) (_ BitVec 32)) Unit!32946)

(assert (=> b!1004725 (= lt!444289 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444290 #b00000000000000000000000000000000))))

(assert (=> b!1004725 (arrayContainsKey!0 a!3219 lt!444290 #b00000000000000000000000000000000)))

(declare-fun lt!444288 () Unit!32946)

(assert (=> b!1004725 (= lt!444288 lt!444289)))

(declare-fun res!674192 () Bool)

(assert (=> b!1004725 (= res!674192 (= (seekEntryOrOpen!0 (select (arr!30519 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9451 #b00000000000000000000000000000000)))))

(assert (=> b!1004725 (=> (not res!674192) (not e!565813))))

(declare-fun b!1004726 () Bool)

(declare-fun call!42328 () Bool)

(assert (=> b!1004726 (= e!565813 call!42328)))

(declare-fun b!1004727 () Bool)

(assert (=> b!1004727 (= e!565812 call!42328)))

(declare-fun d!119417 () Bool)

(declare-fun res!674193 () Bool)

(declare-fun e!565811 () Bool)

(assert (=> d!119417 (=> res!674193 e!565811)))

(assert (=> d!119417 (= res!674193 (bvsge #b00000000000000000000000000000000 (size!31022 a!3219)))))

(assert (=> d!119417 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!565811)))

(declare-fun b!1004728 () Bool)

(assert (=> b!1004728 (= e!565811 e!565812)))

(declare-fun c!101417 () Bool)

(assert (=> b!1004728 (= c!101417 (validKeyInArray!0 (select (arr!30519 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42325 () Bool)

(assert (=> bm!42325 (= call!42328 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!119417 (not res!674193)) b!1004728))

(assert (= (and b!1004728 c!101417) b!1004725))

(assert (= (and b!1004728 (not c!101417)) b!1004727))

(assert (= (and b!1004725 res!674192) b!1004726))

(assert (= (or b!1004726 b!1004727) bm!42325))

(assert (=> b!1004725 m!930143))

(declare-fun m!930265 () Bool)

(assert (=> b!1004725 m!930265))

(declare-fun m!930267 () Bool)

(assert (=> b!1004725 m!930267))

(assert (=> b!1004725 m!930143))

(declare-fun m!930269 () Bool)

(assert (=> b!1004725 m!930269))

(assert (=> b!1004728 m!930143))

(assert (=> b!1004728 m!930143))

(assert (=> b!1004728 m!930149))

(declare-fun m!930271 () Bool)

(assert (=> bm!42325 m!930271))

(assert (=> b!1004444 d!119417))

(declare-fun b!1004731 () Bool)

(declare-fun lt!444291 () SeekEntryResult!9451)

(assert (=> b!1004731 (and (bvsge (index!40176 lt!444291) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444291) (size!31022 a!3219)))))

(declare-fun res!674197 () Bool)

(assert (=> b!1004731 (= res!674197 (= (select (arr!30519 a!3219) (index!40176 lt!444291)) (select (arr!30519 a!3219) j!170)))))

(declare-fun e!565817 () Bool)

(assert (=> b!1004731 (=> res!674197 e!565817)))

(declare-fun e!565820 () Bool)

(assert (=> b!1004731 (= e!565820 e!565817)))

(declare-fun b!1004732 () Bool)

(assert (=> b!1004732 (and (bvsge (index!40176 lt!444291) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444291) (size!31022 a!3219)))))

(declare-fun res!674198 () Bool)

(assert (=> b!1004732 (= res!674198 (= (select (arr!30519 a!3219) (index!40176 lt!444291)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004732 (=> res!674198 e!565817)))

(declare-fun b!1004733 () Bool)

(declare-fun e!565816 () SeekEntryResult!9451)

(declare-fun e!565818 () SeekEntryResult!9451)

(assert (=> b!1004733 (= e!565816 e!565818)))

(declare-fun c!101418 () Bool)

(declare-fun lt!444292 () (_ BitVec 64))

(assert (=> b!1004733 (= c!101418 (or (= lt!444292 (select (arr!30519 a!3219) j!170)) (= (bvadd lt!444292 lt!444292) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004734 () Bool)

(assert (=> b!1004734 (and (bvsge (index!40176 lt!444291) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444291) (size!31022 a!3219)))))

(assert (=> b!1004734 (= e!565817 (= (select (arr!30519 a!3219) (index!40176 lt!444291)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004735 () Bool)

(assert (=> b!1004735 (= e!565818 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30519 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30519 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004736 () Bool)

(assert (=> b!1004736 (= e!565818 (Intermediate!9451 false (toIndex!0 (select (arr!30519 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004737 () Bool)

(declare-fun e!565819 () Bool)

(assert (=> b!1004737 (= e!565819 (bvsge (x!87600 lt!444291) #b01111111111111111111111111111110))))

(declare-fun d!119421 () Bool)

(assert (=> d!119421 e!565819))

(declare-fun c!101420 () Bool)

(assert (=> d!119421 (= c!101420 (and (is-Intermediate!9451 lt!444291) (undefined!10263 lt!444291)))))

(assert (=> d!119421 (= lt!444291 e!565816)))

(declare-fun c!101419 () Bool)

(assert (=> d!119421 (= c!101419 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119421 (= lt!444292 (select (arr!30519 a!3219) (toIndex!0 (select (arr!30519 a!3219) j!170) mask!3464)))))

(assert (=> d!119421 (validMask!0 mask!3464)))

(assert (=> d!119421 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30519 a!3219) j!170) mask!3464) (select (arr!30519 a!3219) j!170) a!3219 mask!3464) lt!444291)))

(declare-fun b!1004738 () Bool)

(assert (=> b!1004738 (= e!565819 e!565820)))

(declare-fun res!674196 () Bool)

(assert (=> b!1004738 (= res!674196 (and (is-Intermediate!9451 lt!444291) (not (undefined!10263 lt!444291)) (bvslt (x!87600 lt!444291) #b01111111111111111111111111111110) (bvsge (x!87600 lt!444291) #b00000000000000000000000000000000) (bvsge (x!87600 lt!444291) #b00000000000000000000000000000000)))))

(assert (=> b!1004738 (=> (not res!674196) (not e!565820))))

(declare-fun b!1004739 () Bool)

(assert (=> b!1004739 (= e!565816 (Intermediate!9451 true (toIndex!0 (select (arr!30519 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119421 c!101419) b!1004739))

(assert (= (and d!119421 (not c!101419)) b!1004733))

(assert (= (and b!1004733 c!101418) b!1004736))

(assert (= (and b!1004733 (not c!101418)) b!1004735))

(assert (= (and d!119421 c!101420) b!1004737))

(assert (= (and d!119421 (not c!101420)) b!1004738))

(assert (= (and b!1004738 res!674196) b!1004731))

(assert (= (and b!1004731 (not res!674197)) b!1004732))

(assert (= (and b!1004732 (not res!674198)) b!1004734))

(declare-fun m!930273 () Bool)

(assert (=> b!1004734 m!930273))

(assert (=> d!119421 m!930111))

(declare-fun m!930275 () Bool)

(assert (=> d!119421 m!930275))

(assert (=> d!119421 m!930117))

(assert (=> b!1004735 m!930111))

(declare-fun m!930277 () Bool)

(assert (=> b!1004735 m!930277))

(assert (=> b!1004735 m!930277))

(assert (=> b!1004735 m!930089))

(declare-fun m!930279 () Bool)

(assert (=> b!1004735 m!930279))

(assert (=> b!1004731 m!930273))

(assert (=> b!1004732 m!930273))

(assert (=> b!1004455 d!119421))

(declare-fun d!119423 () Bool)

(declare-fun lt!444294 () (_ BitVec 32))

(declare-fun lt!444293 () (_ BitVec 32))

(assert (=> d!119423 (= lt!444294 (bvmul (bvxor lt!444293 (bvlshr lt!444293 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119423 (= lt!444293 ((_ extract 31 0) (bvand (bvxor (select (arr!30519 a!3219) j!170) (bvlshr (select (arr!30519 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119423 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674173 (let ((h!22497 ((_ extract 31 0) (bvand (bvxor (select (arr!30519 a!3219) j!170) (bvlshr (select (arr!30519 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87606 (bvmul (bvxor h!22497 (bvlshr h!22497 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87606 (bvlshr x!87606 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674173 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674173 #b00000000000000000000000000000000))))))

(assert (=> d!119423 (= (toIndex!0 (select (arr!30519 a!3219) j!170) mask!3464) (bvand (bvxor lt!444294 (bvlshr lt!444294 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004455 d!119423))

(declare-fun b!1004744 () Bool)

(declare-fun lt!444298 () SeekEntryResult!9451)

(assert (=> b!1004744 (and (bvsge (index!40176 lt!444298) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444298) (size!31022 a!3219)))))

(declare-fun res!674202 () Bool)

(assert (=> b!1004744 (= res!674202 (= (select (arr!30519 a!3219) (index!40176 lt!444298)) (select (arr!30519 a!3219) j!170)))))

(declare-fun e!565825 () Bool)

(assert (=> b!1004744 (=> res!674202 e!565825)))

(declare-fun e!565828 () Bool)

(assert (=> b!1004744 (= e!565828 e!565825)))

(declare-fun b!1004745 () Bool)

(assert (=> b!1004745 (and (bvsge (index!40176 lt!444298) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444298) (size!31022 a!3219)))))

(declare-fun res!674203 () Bool)

(assert (=> b!1004745 (= res!674203 (= (select (arr!30519 a!3219) (index!40176 lt!444298)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004745 (=> res!674203 e!565825)))

(declare-fun b!1004746 () Bool)

(declare-fun e!565824 () SeekEntryResult!9451)

(declare-fun e!565826 () SeekEntryResult!9451)

(assert (=> b!1004746 (= e!565824 e!565826)))

(declare-fun lt!444299 () (_ BitVec 64))

(declare-fun c!101422 () Bool)

(assert (=> b!1004746 (= c!101422 (or (= lt!444299 (select (arr!30519 a!3219) j!170)) (= (bvadd lt!444299 lt!444299) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004747 () Bool)

(assert (=> b!1004747 (and (bvsge (index!40176 lt!444298) #b00000000000000000000000000000000) (bvslt (index!40176 lt!444298) (size!31022 a!3219)))))

(assert (=> b!1004747 (= e!565825 (= (select (arr!30519 a!3219) (index!40176 lt!444298)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004748 () Bool)

(assert (=> b!1004748 (= e!565826 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30519 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004749 () Bool)

(assert (=> b!1004749 (= e!565826 (Intermediate!9451 false index!1507 x!1245))))

(declare-fun b!1004750 () Bool)

(declare-fun e!565827 () Bool)

(assert (=> b!1004750 (= e!565827 (bvsge (x!87600 lt!444298) #b01111111111111111111111111111110))))

(declare-fun d!119425 () Bool)

(assert (=> d!119425 e!565827))

(declare-fun c!101424 () Bool)

(assert (=> d!119425 (= c!101424 (and (is-Intermediate!9451 lt!444298) (undefined!10263 lt!444298)))))

(assert (=> d!119425 (= lt!444298 e!565824)))

(declare-fun c!101423 () Bool)

(assert (=> d!119425 (= c!101423 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119425 (= lt!444299 (select (arr!30519 a!3219) index!1507))))

(assert (=> d!119425 (validMask!0 mask!3464)))

(assert (=> d!119425 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30519 a!3219) j!170) a!3219 mask!3464) lt!444298)))

(declare-fun b!1004751 () Bool)

(assert (=> b!1004751 (= e!565827 e!565828)))

(declare-fun res!674201 () Bool)

(assert (=> b!1004751 (= res!674201 (and (is-Intermediate!9451 lt!444298) (not (undefined!10263 lt!444298)) (bvslt (x!87600 lt!444298) #b01111111111111111111111111111110) (bvsge (x!87600 lt!444298) #b00000000000000000000000000000000) (bvsge (x!87600 lt!444298) x!1245)))))

(assert (=> b!1004751 (=> (not res!674201) (not e!565828))))

(declare-fun b!1004752 () Bool)

(assert (=> b!1004752 (= e!565824 (Intermediate!9451 true index!1507 x!1245))))

(assert (= (and d!119425 c!101423) b!1004752))

(assert (= (and d!119425 (not c!101423)) b!1004746))

(assert (= (and b!1004746 c!101422) b!1004749))

(assert (= (and b!1004746 (not c!101422)) b!1004748))

(assert (= (and d!119425 c!101424) b!1004750))

(assert (= (and d!119425 (not c!101424)) b!1004751))

(assert (= (and b!1004751 res!674201) b!1004744))

(assert (= (and b!1004744 (not res!674202)) b!1004745))

(assert (= (and b!1004745 (not res!674203)) b!1004747))

(declare-fun m!930289 () Bool)

(assert (=> b!1004747 m!930289))

(declare-fun m!930291 () Bool)

(assert (=> d!119425 m!930291))

(assert (=> d!119425 m!930117))

(assert (=> b!1004748 m!930231))

(assert (=> b!1004748 m!930231))

(assert (=> b!1004748 m!930089))

(declare-fun m!930293 () Bool)

(assert (=> b!1004748 m!930293))

(assert (=> b!1004744 m!930289))

(assert (=> b!1004745 m!930289))

(assert (=> b!1004445 d!119425))

(push 1)

(assert (not b!1004664))

(assert (not bm!42316))

(assert (not b!1004728))

(assert (not d!119369))

(assert (not d!119405))

(assert (not b!1004650))

(assert (not b!1004735))

(assert (not b!1004725))

(assert (not b!1004748))

(assert (not bm!42325))

(assert (not d!119425))

(assert (not b!1004535))

(assert (not b!1004507))

(assert (not d!119403))

(assert (not b!1004505))

(assert (not d!119421))

(assert (not b!1004691))

(assert (not b!1004506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

