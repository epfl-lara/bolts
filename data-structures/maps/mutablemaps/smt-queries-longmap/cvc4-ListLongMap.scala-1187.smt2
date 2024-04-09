; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25478 () Bool)

(assert start!25478)

(declare-fun b!265018 () Bool)

(declare-fun res!129572 () Bool)

(declare-fun e!171638 () Bool)

(assert (=> b!265018 (=> (not res!129572) (not e!171638))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265018 (= res!129572 (validKeyInArray!0 k!2698))))

(declare-fun b!265020 () Bool)

(declare-fun res!129573 () Bool)

(assert (=> b!265020 (=> (not res!129573) (not e!171638))))

(declare-datatypes ((array!12761 0))(
  ( (array!12762 (arr!6039 (Array (_ BitVec 32) (_ BitVec 64))) (size!6391 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12761)

(declare-fun arrayContainsKey!0 (array!12761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265020 (= res!129573 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265021 () Bool)

(declare-fun e!171639 () Bool)

(assert (=> b!265021 (= e!171638 e!171639)))

(declare-fun res!129568 () Bool)

(assert (=> b!265021 (=> (not res!129568) (not e!171639))))

(declare-datatypes ((SeekEntryResult!1241 0))(
  ( (MissingZero!1241 (index!7134 (_ BitVec 32))) (Found!1241 (index!7135 (_ BitVec 32))) (Intermediate!1241 (undefined!2053 Bool) (index!7136 (_ BitVec 32)) (x!25422 (_ BitVec 32))) (Undefined!1241) (MissingVacant!1241 (index!7137 (_ BitVec 32))) )
))
(declare-fun lt!133988 () SeekEntryResult!1241)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265021 (= res!129568 (or (= lt!133988 (MissingZero!1241 i!1355)) (= lt!133988 (MissingVacant!1241 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12761 (_ BitVec 32)) SeekEntryResult!1241)

(assert (=> b!265021 (= lt!133988 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265019 () Bool)

(declare-fun res!129571 () Bool)

(assert (=> b!265019 (=> (not res!129571) (not e!171639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12761 (_ BitVec 32)) Bool)

(assert (=> b!265019 (= res!129571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!129570 () Bool)

(assert (=> start!25478 (=> (not res!129570) (not e!171638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25478 (= res!129570 (validMask!0 mask!4002))))

(assert (=> start!25478 e!171638))

(assert (=> start!25478 true))

(declare-fun array_inv!3993 (array!12761) Bool)

(assert (=> start!25478 (array_inv!3993 a!3436)))

(declare-fun b!265022 () Bool)

(declare-fun res!129569 () Bool)

(assert (=> b!265022 (=> (not res!129569) (not e!171638))))

(assert (=> b!265022 (= res!129569 (and (= (size!6391 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6391 a!3436))))))

(declare-fun b!265023 () Bool)

(assert (=> b!265023 (= e!171639 (and (bvsle #b00000000000000000000000000000000 (size!6391 a!3436)) (bvsge (size!6391 a!3436) #b01111111111111111111111111111111)))))

(assert (= (and start!25478 res!129570) b!265022))

(assert (= (and b!265022 res!129569) b!265018))

(assert (= (and b!265018 res!129572) b!265020))

(assert (= (and b!265020 res!129573) b!265021))

(assert (= (and b!265021 res!129568) b!265019))

(assert (= (and b!265019 res!129571) b!265023))

(declare-fun m!281963 () Bool)

(assert (=> b!265019 m!281963))

(declare-fun m!281965 () Bool)

(assert (=> start!25478 m!281965))

(declare-fun m!281967 () Bool)

(assert (=> start!25478 m!281967))

(declare-fun m!281969 () Bool)

(assert (=> b!265018 m!281969))

(declare-fun m!281971 () Bool)

(assert (=> b!265021 m!281971))

(declare-fun m!281973 () Bool)

(assert (=> b!265020 m!281973))

(push 1)

(assert (not b!265019))

(assert (not start!25478))

(assert (not b!265021))

(assert (not b!265020))

(assert (not b!265018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64027 () Bool)

(declare-fun res!129590 () Bool)

(declare-fun e!171661 () Bool)

(assert (=> d!64027 (=> res!129590 e!171661)))

(assert (=> d!64027 (= res!129590 (bvsge #b00000000000000000000000000000000 (size!6391 a!3436)))))

(assert (=> d!64027 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171661)))

(declare-fun b!265044 () Bool)

(declare-fun e!171659 () Bool)

(declare-fun e!171660 () Bool)

(assert (=> b!265044 (= e!171659 e!171660)))

(declare-fun lt!133997 () (_ BitVec 64))

(assert (=> b!265044 (= lt!133997 (select (arr!6039 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8254 0))(
  ( (Unit!8255) )
))
(declare-fun lt!133996 () Unit!8254)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12761 (_ BitVec 64) (_ BitVec 32)) Unit!8254)

(assert (=> b!265044 (= lt!133996 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!133997 #b00000000000000000000000000000000))))

(assert (=> b!265044 (arrayContainsKey!0 a!3436 lt!133997 #b00000000000000000000000000000000)))

(declare-fun lt!133995 () Unit!8254)

(assert (=> b!265044 (= lt!133995 lt!133996)))

(declare-fun res!129591 () Bool)

(assert (=> b!265044 (= res!129591 (= (seekEntryOrOpen!0 (select (arr!6039 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1241 #b00000000000000000000000000000000)))))

(assert (=> b!265044 (=> (not res!129591) (not e!171660))))

(declare-fun b!265045 () Bool)

(declare-fun call!25313 () Bool)

(assert (=> b!265045 (= e!171659 call!25313)))

(declare-fun b!265046 () Bool)

(assert (=> b!265046 (= e!171661 e!171659)))

(declare-fun c!45278 () Bool)

(assert (=> b!265046 (= c!45278 (validKeyInArray!0 (select (arr!6039 a!3436) #b00000000000000000000000000000000)))))

(declare-fun bm!25310 () Bool)

(assert (=> bm!25310 (= call!25313 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun b!265047 () Bool)

(assert (=> b!265047 (= e!171660 call!25313)))

(assert (= (and d!64027 (not res!129590)) b!265046))

(assert (= (and b!265046 c!45278) b!265044))

(assert (= (and b!265046 (not c!45278)) b!265045))

(assert (= (and b!265044 res!129591) b!265047))

(assert (= (or b!265047 b!265045) bm!25310))

(declare-fun m!281983 () Bool)

(assert (=> b!265044 m!281983))

(declare-fun m!281985 () Bool)

(assert (=> b!265044 m!281985))

(declare-fun m!281987 () Bool)

(assert (=> b!265044 m!281987))

(assert (=> b!265044 m!281983))

(declare-fun m!281989 () Bool)

(assert (=> b!265044 m!281989))

(assert (=> b!265046 m!281983))

(assert (=> b!265046 m!281983))

(declare-fun m!281991 () Bool)

(assert (=> b!265046 m!281991))

(declare-fun m!281993 () Bool)

(assert (=> bm!25310 m!281993))

(assert (=> b!265019 d!64027))

(declare-fun d!64037 () Bool)

(assert (=> d!64037 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25478 d!64037))

(declare-fun d!64045 () Bool)

(assert (=> d!64045 (= (array_inv!3993 a!3436) (bvsge (size!6391 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25478 d!64045))

