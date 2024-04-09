; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130630 () Bool)

(assert start!130630)

(declare-fun b!1532354 () Bool)

(declare-fun res!1049617 () Bool)

(declare-fun e!853802 () Bool)

(assert (=> b!1532354 (=> (not res!1049617) (not e!853802))))

(declare-datatypes ((array!101715 0))(
  ( (array!101716 (arr!49072 (Array (_ BitVec 32) (_ BitVec 64))) (size!49623 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101715)

(assert (=> b!1532354 (= res!1049617 (and (bvsle #b00000000000000000000000000000000 (size!49623 a!2792)) (bvslt (size!49623 a!2792) #b01111111111111111111111111111111)))))

(declare-fun b!1532355 () Bool)

(declare-fun res!1049619 () Bool)

(assert (=> b!1532355 (=> (not res!1049619) (not e!853802))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532355 (= res!1049619 (validKeyInArray!0 (select (arr!49072 a!2792) j!64)))))

(declare-fun b!1532356 () Bool)

(declare-fun res!1049618 () Bool)

(assert (=> b!1532356 (=> (not res!1049618) (not e!853802))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532356 (= res!1049618 (and (= (size!49623 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49623 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49623 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532357 () Bool)

(declare-fun res!1049616 () Bool)

(assert (=> b!1532357 (=> (not res!1049616) (not e!853802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101715 (_ BitVec 32)) Bool)

(assert (=> b!1532357 (= res!1049616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532359 () Bool)

(declare-fun res!1049615 () Bool)

(assert (=> b!1532359 (=> (not res!1049615) (not e!853802))))

(assert (=> b!1532359 (= res!1049615 (validKeyInArray!0 (select (arr!49072 a!2792) i!951)))))

(declare-fun b!1532358 () Bool)

(declare-datatypes ((List!35726 0))(
  ( (Nil!35723) (Cons!35722 (h!37168 (_ BitVec 64)) (t!50427 List!35726)) )
))
(declare-fun noDuplicate!2663 (List!35726) Bool)

(assert (=> b!1532358 (= e!853802 (not (noDuplicate!2663 Nil!35723)))))

(declare-fun res!1049614 () Bool)

(assert (=> start!130630 (=> (not res!1049614) (not e!853802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130630 (= res!1049614 (validMask!0 mask!2480))))

(assert (=> start!130630 e!853802))

(assert (=> start!130630 true))

(declare-fun array_inv!38017 (array!101715) Bool)

(assert (=> start!130630 (array_inv!38017 a!2792)))

(assert (= (and start!130630 res!1049614) b!1532356))

(assert (= (and b!1532356 res!1049618) b!1532359))

(assert (= (and b!1532359 res!1049615) b!1532355))

(assert (= (and b!1532355 res!1049619) b!1532357))

(assert (= (and b!1532357 res!1049616) b!1532354))

(assert (= (and b!1532354 res!1049617) b!1532358))

(declare-fun m!1415127 () Bool)

(assert (=> b!1532355 m!1415127))

(assert (=> b!1532355 m!1415127))

(declare-fun m!1415129 () Bool)

(assert (=> b!1532355 m!1415129))

(declare-fun m!1415131 () Bool)

(assert (=> b!1532359 m!1415131))

(assert (=> b!1532359 m!1415131))

(declare-fun m!1415133 () Bool)

(assert (=> b!1532359 m!1415133))

(declare-fun m!1415135 () Bool)

(assert (=> start!130630 m!1415135))

(declare-fun m!1415137 () Bool)

(assert (=> start!130630 m!1415137))

(declare-fun m!1415139 () Bool)

(assert (=> b!1532357 m!1415139))

(declare-fun m!1415141 () Bool)

(assert (=> b!1532358 m!1415141))

(push 1)

(assert (not b!1532357))

(assert (not start!130630))

(assert (not b!1532358))

(assert (not b!1532359))

(assert (not b!1532355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1532416 () Bool)

(declare-fun e!853832 () Bool)

(declare-fun e!853830 () Bool)

(assert (=> b!1532416 (= e!853832 e!853830)))

(declare-fun lt!663604 () (_ BitVec 64))

(assert (=> b!1532416 (= lt!663604 (select (arr!49072 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51242 0))(
  ( (Unit!51243) )
))
(declare-fun lt!663603 () Unit!51242)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101715 (_ BitVec 64) (_ BitVec 32)) Unit!51242)

(assert (=> b!1532416 (= lt!663603 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663604 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532416 (arrayContainsKey!0 a!2792 lt!663604 #b00000000000000000000000000000000)))

(declare-fun lt!663602 () Unit!51242)

(assert (=> b!1532416 (= lt!663602 lt!663603)))

(declare-fun res!1049667 () Bool)

(declare-datatypes ((SeekEntryResult!13251 0))(
  ( (MissingZero!13251 (index!55398 (_ BitVec 32))) (Found!13251 (index!55399 (_ BitVec 32))) (Intermediate!13251 (undefined!14063 Bool) (index!55400 (_ BitVec 32)) (x!137120 (_ BitVec 32))) (Undefined!13251) (MissingVacant!13251 (index!55401 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101715 (_ BitVec 32)) SeekEntryResult!13251)

(assert (=> b!1532416 (= res!1049667 (= (seekEntryOrOpen!0 (select (arr!49072 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13251 #b00000000000000000000000000000000)))))

(assert (=> b!1532416 (=> (not res!1049667) (not e!853830))))

(declare-fun b!1532417 () Bool)

(declare-fun e!853831 () Bool)

(assert (=> b!1532417 (= e!853831 e!853832)))

(declare-fun c!140936 () Bool)

(assert (=> b!1532417 (= c!140936 (validKeyInArray!0 (select (arr!49072 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1532418 () Bool)

(declare-fun call!68565 () Bool)

(assert (=> b!1532418 (= e!853830 call!68565)))

(declare-fun d!159995 () Bool)

(declare-fun res!1049666 () Bool)

(assert (=> d!159995 (=> res!1049666 e!853831)))

(assert (=> d!159995 (= res!1049666 (bvsge #b00000000000000000000000000000000 (size!49623 a!2792)))))

(assert (=> d!159995 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!853831)))

(declare-fun bm!68562 () Bool)

(assert (=> bm!68562 (= call!68565 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1532419 () Bool)

(assert (=> b!1532419 (= e!853832 call!68565)))

(assert (= (and d!159995 (not res!1049666)) b!1532417))

(assert (= (and b!1532417 c!140936) b!1532416))

(assert (= (and b!1532417 (not c!140936)) b!1532419))

(assert (= (and b!1532416 res!1049667) b!1532418))

(assert (= (or b!1532418 b!1532419) bm!68562))

(declare-fun m!1415187 () Bool)

(assert (=> b!1532416 m!1415187))

(declare-fun m!1415189 () Bool)

(assert (=> b!1532416 m!1415189))

(declare-fun m!1415191 () Bool)

(assert (=> b!1532416 m!1415191))

(assert (=> b!1532416 m!1415187))

(declare-fun m!1415193 () Bool)

(assert (=> b!1532416 m!1415193))

(assert (=> b!1532417 m!1415187))

(assert (=> b!1532417 m!1415187))

(declare-fun m!1415195 () Bool)

(assert (=> b!1532417 m!1415195))

(declare-fun m!1415197 () Bool)

(assert (=> bm!68562 m!1415197))

(assert (=> b!1532357 d!159995))

(declare-fun d!160001 () Bool)

(declare-fun res!1049672 () Bool)

(declare-fun e!853837 () Bool)

(assert (=> d!160001 (=> res!1049672 e!853837)))

(assert (=> d!160001 (= res!1049672 (is-Nil!35723 Nil!35723))))

(assert (=> d!160001 (= (noDuplicate!2663 Nil!35723) e!853837)))

(declare-fun b!1532424 () Bool)

(declare-fun e!853838 () Bool)

(assert (=> b!1532424 (= e!853837 e!853838)))

(declare-fun res!1049673 () Bool)

(assert (=> b!1532424 (=> (not res!1049673) (not e!853838))))

(declare-fun contains!10018 (List!35726 (_ BitVec 64)) Bool)

(assert (=> b!1532424 (= res!1049673 (not (contains!10018 (t!50427 Nil!35723) (h!37168 Nil!35723))))))

(declare-fun b!1532425 () Bool)

(assert (=> b!1532425 (= e!853838 (noDuplicate!2663 (t!50427 Nil!35723)))))

(assert (= (and d!160001 (not res!1049672)) b!1532424))

(assert (= (and b!1532424 res!1049673) b!1532425))

(declare-fun m!1415199 () Bool)

(assert (=> b!1532424 m!1415199))

(declare-fun m!1415201 () Bool)

(assert (=> b!1532425 m!1415201))

(assert (=> b!1532358 d!160001))

(declare-fun d!160003 () Bool)

(assert (=> d!160003 (= (validKeyInArray!0 (select (arr!49072 a!2792) i!951)) (and (not (= (select (arr!49072 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49072 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532359 d!160003))

(declare-fun d!160005 () Bool)

(assert (=> d!160005 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130630 d!160005))

(declare-fun d!160019 () Bool)

(assert (=> d!160019 (= (array_inv!38017 a!2792) (bvsge (size!49623 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130630 d!160019))

(declare-fun d!160021 () Bool)

(assert (=> d!160021 (= (validKeyInArray!0 (select (arr!49072 a!2792) j!64)) (and (not (= (select (arr!49072 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49072 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532355 d!160021))

(push 1)

