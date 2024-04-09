; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118918 () Bool)

(assert start!118918)

(declare-fun b!1388484 () Bool)

(declare-fun e!786571 () Bool)

(declare-datatypes ((array!94914 0))(
  ( (array!94915 (arr!45826 (Array (_ BitVec 32) (_ BitVec 64))) (size!46377 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94914)

(assert (=> b!1388484 (= e!786571 (and (bvsle #b00000000000000000000000000000000 (size!46377 a!2901)) (bvsge (size!46377 a!2901) #b01111111111111111111111111111111)))))

(declare-fun b!1388485 () Bool)

(declare-fun res!928878 () Bool)

(assert (=> b!1388485 (=> (not res!928878) (not e!786571))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388485 (= res!928878 (validKeyInArray!0 (select (arr!45826 a!2901) j!112)))))

(declare-fun b!1388486 () Bool)

(declare-fun res!928877 () Bool)

(assert (=> b!1388486 (=> (not res!928877) (not e!786571))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1388486 (= res!928877 (and (= (size!46377 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46377 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46377 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388487 () Bool)

(declare-fun res!928881 () Bool)

(assert (=> b!1388487 (=> (not res!928881) (not e!786571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94914 (_ BitVec 32)) Bool)

(assert (=> b!1388487 (= res!928881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!928880 () Bool)

(assert (=> start!118918 (=> (not res!928880) (not e!786571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118918 (= res!928880 (validMask!0 mask!2840))))

(assert (=> start!118918 e!786571))

(assert (=> start!118918 true))

(declare-fun array_inv!34771 (array!94914) Bool)

(assert (=> start!118918 (array_inv!34771 a!2901)))

(declare-fun b!1388488 () Bool)

(declare-fun res!928879 () Bool)

(assert (=> b!1388488 (=> (not res!928879) (not e!786571))))

(assert (=> b!1388488 (= res!928879 (validKeyInArray!0 (select (arr!45826 a!2901) i!1037)))))

(assert (= (and start!118918 res!928880) b!1388486))

(assert (= (and b!1388486 res!928877) b!1388488))

(assert (= (and b!1388488 res!928879) b!1388485))

(assert (= (and b!1388485 res!928878) b!1388487))

(assert (= (and b!1388487 res!928881) b!1388484))

(declare-fun m!1274291 () Bool)

(assert (=> b!1388485 m!1274291))

(assert (=> b!1388485 m!1274291))

(declare-fun m!1274293 () Bool)

(assert (=> b!1388485 m!1274293))

(declare-fun m!1274295 () Bool)

(assert (=> b!1388487 m!1274295))

(declare-fun m!1274297 () Bool)

(assert (=> start!118918 m!1274297))

(declare-fun m!1274299 () Bool)

(assert (=> start!118918 m!1274299))

(declare-fun m!1274301 () Bool)

(assert (=> b!1388488 m!1274301))

(assert (=> b!1388488 m!1274301))

(declare-fun m!1274303 () Bool)

(assert (=> b!1388488 m!1274303))

(push 1)

(assert (not b!1388485))

(assert (not start!118918))

(assert (not b!1388488))

(assert (not b!1388487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149885 () Bool)

(assert (=> d!149885 (= (validKeyInArray!0 (select (arr!45826 a!2901) j!112)) (and (not (= (select (arr!45826 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45826 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388485 d!149885))

(declare-fun d!149887 () Bool)

(assert (=> d!149887 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118918 d!149887))

(declare-fun d!149899 () Bool)

(assert (=> d!149899 (= (array_inv!34771 a!2901) (bvsge (size!46377 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118918 d!149899))

(declare-fun d!149901 () Bool)

(assert (=> d!149901 (= (validKeyInArray!0 (select (arr!45826 a!2901) i!1037)) (and (not (= (select (arr!45826 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45826 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388488 d!149901))

(declare-fun d!149903 () Bool)

(declare-fun res!928929 () Bool)

(declare-fun e!786609 () Bool)

(assert (=> d!149903 (=> res!928929 e!786609)))

(assert (=> d!149903 (= res!928929 (bvsge #b00000000000000000000000000000000 (size!46377 a!2901)))))

(assert (=> d!149903 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786609)))

(declare-fun bm!66639 () Bool)

(declare-fun call!66642 () Bool)

(assert (=> bm!66639 (= call!66642 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1388551 () Bool)

(declare-fun e!786611 () Bool)

(assert (=> b!1388551 (= e!786611 call!66642)))

(declare-fun b!1388552 () Bool)

(declare-fun e!786610 () Bool)

(assert (=> b!1388552 (= e!786609 e!786610)))

(declare-fun c!129257 () Bool)

(assert (=> b!1388552 (= c!129257 (validKeyInArray!0 (select (arr!45826 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388553 () Bool)

(assert (=> b!1388553 (= e!786610 call!66642)))

(declare-fun b!1388554 () Bool)

(assert (=> b!1388554 (= e!786610 e!786611)))

(declare-fun lt!610319 () (_ BitVec 64))

(assert (=> b!1388554 (= lt!610319 (select (arr!45826 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46358 0))(
  ( (Unit!46359) )
))
(declare-fun lt!610320 () Unit!46358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94914 (_ BitVec 64) (_ BitVec 32)) Unit!46358)

(assert (=> b!1388554 (= lt!610320 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610319 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388554 (arrayContainsKey!0 a!2901 lt!610319 #b00000000000000000000000000000000)))

(declare-fun lt!610321 () Unit!46358)

(assert (=> b!1388554 (= lt!610321 lt!610320)))

(declare-fun res!928928 () Bool)

(declare-datatypes ((SeekEntryResult!10187 0))(
  ( (MissingZero!10187 (index!43118 (_ BitVec 32))) (Found!10187 (index!43119 (_ BitVec 32))) (Intermediate!10187 (undefined!10999 Bool) (index!43120 (_ BitVec 32)) (x!124761 (_ BitVec 32))) (Undefined!10187) (MissingVacant!10187 (index!43121 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94914 (_ BitVec 32)) SeekEntryResult!10187)

(assert (=> b!1388554 (= res!928928 (= (seekEntryOrOpen!0 (select (arr!45826 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10187 #b00000000000000000000000000000000)))))

(assert (=> b!1388554 (=> (not res!928928) (not e!786611))))

(assert (= (and d!149903 (not res!928929)) b!1388552))

(assert (= (and b!1388552 c!129257) b!1388554))

(assert (= (and b!1388552 (not c!129257)) b!1388553))

(assert (= (and b!1388554 res!928928) b!1388551))

(assert (= (or b!1388551 b!1388553) bm!66639))

(declare-fun m!1274357 () Bool)

(assert (=> bm!66639 m!1274357))

(declare-fun m!1274359 () Bool)

(assert (=> b!1388552 m!1274359))

(assert (=> b!1388552 m!1274359))

(declare-fun m!1274361 () Bool)

(assert (=> b!1388552 m!1274361))

(assert (=> b!1388554 m!1274359))

(declare-fun m!1274363 () Bool)

