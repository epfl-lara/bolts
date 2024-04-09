; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130632 () Bool)

(assert start!130632)

(declare-fun b!1532372 () Bool)

(declare-fun res!1049634 () Bool)

(declare-fun e!853808 () Bool)

(assert (=> b!1532372 (=> (not res!1049634) (not e!853808))))

(declare-datatypes ((array!101717 0))(
  ( (array!101718 (arr!49073 (Array (_ BitVec 32) (_ BitVec 64))) (size!49624 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101717)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101717 (_ BitVec 32)) Bool)

(assert (=> b!1532372 (= res!1049634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532373 () Bool)

(declare-fun res!1049636 () Bool)

(assert (=> b!1532373 (=> (not res!1049636) (not e!853808))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532373 (= res!1049636 (validKeyInArray!0 (select (arr!49073 a!2792) i!951)))))

(declare-fun b!1532374 () Bool)

(declare-datatypes ((List!35727 0))(
  ( (Nil!35724) (Cons!35723 (h!37169 (_ BitVec 64)) (t!50428 List!35727)) )
))
(declare-fun noDuplicate!2664 (List!35727) Bool)

(assert (=> b!1532374 (= e!853808 (not (noDuplicate!2664 Nil!35724)))))

(declare-fun b!1532375 () Bool)

(declare-fun res!1049637 () Bool)

(assert (=> b!1532375 (=> (not res!1049637) (not e!853808))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532375 (= res!1049637 (and (= (size!49624 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49624 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49624 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1049633 () Bool)

(assert (=> start!130632 (=> (not res!1049633) (not e!853808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130632 (= res!1049633 (validMask!0 mask!2480))))

(assert (=> start!130632 e!853808))

(assert (=> start!130632 true))

(declare-fun array_inv!38018 (array!101717) Bool)

(assert (=> start!130632 (array_inv!38018 a!2792)))

(declare-fun b!1532376 () Bool)

(declare-fun res!1049635 () Bool)

(assert (=> b!1532376 (=> (not res!1049635) (not e!853808))))

(assert (=> b!1532376 (= res!1049635 (validKeyInArray!0 (select (arr!49073 a!2792) j!64)))))

(declare-fun b!1532377 () Bool)

(declare-fun res!1049632 () Bool)

(assert (=> b!1532377 (=> (not res!1049632) (not e!853808))))

(assert (=> b!1532377 (= res!1049632 (and (bvsle #b00000000000000000000000000000000 (size!49624 a!2792)) (bvslt (size!49624 a!2792) #b01111111111111111111111111111111)))))

(assert (= (and start!130632 res!1049633) b!1532375))

(assert (= (and b!1532375 res!1049637) b!1532373))

(assert (= (and b!1532373 res!1049636) b!1532376))

(assert (= (and b!1532376 res!1049635) b!1532372))

(assert (= (and b!1532372 res!1049634) b!1532377))

(assert (= (and b!1532377 res!1049632) b!1532374))

(declare-fun m!1415143 () Bool)

(assert (=> b!1532376 m!1415143))

(assert (=> b!1532376 m!1415143))

(declare-fun m!1415145 () Bool)

(assert (=> b!1532376 m!1415145))

(declare-fun m!1415147 () Bool)

(assert (=> b!1532373 m!1415147))

(assert (=> b!1532373 m!1415147))

(declare-fun m!1415149 () Bool)

(assert (=> b!1532373 m!1415149))

(declare-fun m!1415151 () Bool)

(assert (=> b!1532372 m!1415151))

(declare-fun m!1415153 () Bool)

(assert (=> start!130632 m!1415153))

(declare-fun m!1415155 () Bool)

(assert (=> start!130632 m!1415155))

(declare-fun m!1415157 () Bool)

(assert (=> b!1532374 m!1415157))

(check-sat (not b!1532373) (not b!1532374) (not b!1532372) (not b!1532376) (not start!130632))
(check-sat)
(get-model)

(declare-fun b!1532412 () Bool)

(declare-fun e!853828 () Bool)

(declare-fun e!853829 () Bool)

(assert (=> b!1532412 (= e!853828 e!853829)))

(declare-fun c!140935 () Bool)

(assert (=> b!1532412 (= c!140935 (validKeyInArray!0 (select (arr!49073 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68561 () Bool)

(declare-fun call!68564 () Bool)

(assert (=> bm!68561 (= call!68564 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun d!159993 () Bool)

(declare-fun res!1049664 () Bool)

(assert (=> d!159993 (=> res!1049664 e!853828)))

(assert (=> d!159993 (= res!1049664 (bvsge #b00000000000000000000000000000000 (size!49624 a!2792)))))

(assert (=> d!159993 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!853828)))

(declare-fun b!1532413 () Bool)

(declare-fun e!853827 () Bool)

(assert (=> b!1532413 (= e!853827 call!68564)))

(declare-fun b!1532414 () Bool)

(assert (=> b!1532414 (= e!853829 e!853827)))

(declare-fun lt!663601 () (_ BitVec 64))

(assert (=> b!1532414 (= lt!663601 (select (arr!49073 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51244 0))(
  ( (Unit!51245) )
))
(declare-fun lt!663600 () Unit!51244)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101717 (_ BitVec 64) (_ BitVec 32)) Unit!51244)

(assert (=> b!1532414 (= lt!663600 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663601 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532414 (arrayContainsKey!0 a!2792 lt!663601 #b00000000000000000000000000000000)))

(declare-fun lt!663599 () Unit!51244)

(assert (=> b!1532414 (= lt!663599 lt!663600)))

(declare-fun res!1049665 () Bool)

(declare-datatypes ((SeekEntryResult!13252 0))(
  ( (MissingZero!13252 (index!55402 (_ BitVec 32))) (Found!13252 (index!55403 (_ BitVec 32))) (Intermediate!13252 (undefined!14064 Bool) (index!55404 (_ BitVec 32)) (x!137121 (_ BitVec 32))) (Undefined!13252) (MissingVacant!13252 (index!55405 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101717 (_ BitVec 32)) SeekEntryResult!13252)

(assert (=> b!1532414 (= res!1049665 (= (seekEntryOrOpen!0 (select (arr!49073 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13252 #b00000000000000000000000000000000)))))

(assert (=> b!1532414 (=> (not res!1049665) (not e!853827))))

(declare-fun b!1532415 () Bool)

(assert (=> b!1532415 (= e!853829 call!68564)))

(assert (= (and d!159993 (not res!1049664)) b!1532412))

(assert (= (and b!1532412 c!140935) b!1532414))

(assert (= (and b!1532412 (not c!140935)) b!1532415))

(assert (= (and b!1532414 res!1049665) b!1532413))

(assert (= (or b!1532413 b!1532415) bm!68561))

(declare-fun m!1415175 () Bool)

(assert (=> b!1532412 m!1415175))

(assert (=> b!1532412 m!1415175))

(declare-fun m!1415177 () Bool)

(assert (=> b!1532412 m!1415177))

(declare-fun m!1415179 () Bool)

(assert (=> bm!68561 m!1415179))

(assert (=> b!1532414 m!1415175))

(declare-fun m!1415181 () Bool)

(assert (=> b!1532414 m!1415181))

(declare-fun m!1415183 () Bool)

(assert (=> b!1532414 m!1415183))

(assert (=> b!1532414 m!1415175))

(declare-fun m!1415185 () Bool)

(assert (=> b!1532414 m!1415185))

(assert (=> b!1532372 d!159993))

(declare-fun d!159999 () Bool)

(assert (=> d!159999 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130632 d!159999))

(declare-fun d!160011 () Bool)

(assert (=> d!160011 (= (array_inv!38018 a!2792) (bvsge (size!49624 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130632 d!160011))

(declare-fun d!160013 () Bool)

(assert (=> d!160013 (= (validKeyInArray!0 (select (arr!49073 a!2792) i!951)) (and (not (= (select (arr!49073 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49073 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532373 d!160013))

(declare-fun d!160015 () Bool)

(declare-fun res!1049684 () Bool)

(declare-fun e!853852 () Bool)

(assert (=> d!160015 (=> res!1049684 e!853852)))

(get-info :version)

(assert (=> d!160015 (= res!1049684 ((_ is Nil!35724) Nil!35724))))

(assert (=> d!160015 (= (noDuplicate!2664 Nil!35724) e!853852)))

(declare-fun b!1532442 () Bool)

(declare-fun e!853853 () Bool)

(assert (=> b!1532442 (= e!853852 e!853853)))

(declare-fun res!1049685 () Bool)

(assert (=> b!1532442 (=> (not res!1049685) (not e!853853))))

(declare-fun contains!10019 (List!35727 (_ BitVec 64)) Bool)

(assert (=> b!1532442 (= res!1049685 (not (contains!10019 (t!50428 Nil!35724) (h!37169 Nil!35724))))))

(declare-fun b!1532443 () Bool)

(assert (=> b!1532443 (= e!853853 (noDuplicate!2664 (t!50428 Nil!35724)))))

(assert (= (and d!160015 (not res!1049684)) b!1532442))

(assert (= (and b!1532442 res!1049685) b!1532443))

(declare-fun m!1415215 () Bool)

(assert (=> b!1532442 m!1415215))

(declare-fun m!1415217 () Bool)

(assert (=> b!1532443 m!1415217))

(assert (=> b!1532374 d!160015))

(declare-fun d!160017 () Bool)

(assert (=> d!160017 (= (validKeyInArray!0 (select (arr!49073 a!2792) j!64)) (and (not (= (select (arr!49073 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49073 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532376 d!160017))

(check-sat (not b!1532414) (not b!1532412) (not b!1532442) (not b!1532443) (not bm!68561))
(check-sat)
