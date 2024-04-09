; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48168 () Bool)

(assert start!48168)

(declare-fun b!530274 () Bool)

(declare-fun res!326129 () Bool)

(declare-fun e!308967 () Bool)

(assert (=> b!530274 (=> (not res!326129) (not e!308967))))

(declare-datatypes ((array!33564 0))(
  ( (array!33565 (arr!16126 (Array (_ BitVec 32) (_ BitVec 64))) (size!16490 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33564)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530274 (= res!326129 (validKeyInArray!0 (select (arr!16126 a!3154) j!147)))))

(declare-fun res!326131 () Bool)

(assert (=> start!48168 (=> (not res!326131) (not e!308967))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48168 (= res!326131 (validMask!0 mask!3216))))

(assert (=> start!48168 e!308967))

(assert (=> start!48168 true))

(declare-fun array_inv!11900 (array!33564) Bool)

(assert (=> start!48168 (array_inv!11900 a!3154)))

(declare-fun b!530276 () Bool)

(assert (=> b!530276 (= e!308967 (and (bvslt #b00000000000000000000000000000000 (size!16490 a!3154)) (bvsge (size!16490 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!530273 () Bool)

(declare-fun res!326132 () Bool)

(assert (=> b!530273 (=> (not res!326132) (not e!308967))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530273 (= res!326132 (and (= (size!16490 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16490 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16490 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530275 () Bool)

(declare-fun res!326130 () Bool)

(assert (=> b!530275 (=> (not res!326130) (not e!308967))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!530275 (= res!326130 (validKeyInArray!0 k0!1998))))

(assert (= (and start!48168 res!326131) b!530273))

(assert (= (and b!530273 res!326132) b!530274))

(assert (= (and b!530274 res!326129) b!530275))

(assert (= (and b!530275 res!326130) b!530276))

(declare-fun m!510899 () Bool)

(assert (=> b!530274 m!510899))

(assert (=> b!530274 m!510899))

(declare-fun m!510901 () Bool)

(assert (=> b!530274 m!510901))

(declare-fun m!510903 () Bool)

(assert (=> start!48168 m!510903))

(declare-fun m!510905 () Bool)

(assert (=> start!48168 m!510905))

(declare-fun m!510907 () Bool)

(assert (=> b!530275 m!510907))

(check-sat (not b!530274) (not start!48168) (not b!530275))
(check-sat)
(get-model)

(declare-fun d!81003 () Bool)

(assert (=> d!81003 (= (validKeyInArray!0 (select (arr!16126 a!3154) j!147)) (and (not (= (select (arr!16126 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16126 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530274 d!81003))

(declare-fun d!81005 () Bool)

(assert (=> d!81005 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48168 d!81005))

(declare-fun d!81015 () Bool)

(assert (=> d!81015 (= (array_inv!11900 a!3154) (bvsge (size!16490 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48168 d!81015))

(declare-fun d!81017 () Bool)

(assert (=> d!81017 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530275 d!81017))

(check-sat)
