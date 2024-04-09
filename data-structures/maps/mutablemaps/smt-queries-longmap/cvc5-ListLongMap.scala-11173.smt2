; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130666 () Bool)

(assert start!130666)

(declare-fun b!1532466 () Bool)

(declare-fun res!1049712 () Bool)

(declare-fun e!853866 () Bool)

(assert (=> b!1532466 (=> (not res!1049712) (not e!853866))))

(declare-datatypes ((array!101724 0))(
  ( (array!101725 (arr!49075 (Array (_ BitVec 32) (_ BitVec 64))) (size!49626 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101724)

(assert (=> b!1532466 (= res!1049712 (and (bvsle #b00000000000000000000000000000000 (size!49626 a!2792)) (bvslt (size!49626 a!2792) #b01111111111111111111111111111111)))))

(declare-fun b!1532467 () Bool)

(declare-fun res!1049713 () Bool)

(assert (=> b!1532467 (=> (not res!1049713) (not e!853866))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532467 (= res!1049713 (validKeyInArray!0 (select (arr!49075 a!2792) i!951)))))

(declare-fun b!1532468 () Bool)

(declare-fun e!853868 () Bool)

(assert (=> b!1532468 (= e!853866 e!853868)))

(declare-fun res!1049715 () Bool)

(assert (=> b!1532468 (=> res!1049715 e!853868)))

(declare-datatypes ((List!35729 0))(
  ( (Nil!35726) (Cons!35725 (h!37171 (_ BitVec 64)) (t!50430 List!35729)) )
))
(declare-fun contains!10020 (List!35729 (_ BitVec 64)) Bool)

(assert (=> b!1532468 (= res!1049715 (contains!10020 Nil!35726 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532469 () Bool)

(declare-fun res!1049710 () Bool)

(assert (=> b!1532469 (=> (not res!1049710) (not e!853866))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532469 (= res!1049710 (validKeyInArray!0 (select (arr!49075 a!2792) j!64)))))

(declare-fun b!1532470 () Bool)

(declare-fun res!1049708 () Bool)

(assert (=> b!1532470 (=> (not res!1049708) (not e!853866))))

(declare-fun noDuplicate!2666 (List!35729) Bool)

(assert (=> b!1532470 (= res!1049708 (noDuplicate!2666 Nil!35726))))

(declare-fun res!1049714 () Bool)

(assert (=> start!130666 (=> (not res!1049714) (not e!853866))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130666 (= res!1049714 (validMask!0 mask!2480))))

(assert (=> start!130666 e!853866))

(assert (=> start!130666 true))

(declare-fun array_inv!38020 (array!101724) Bool)

(assert (=> start!130666 (array_inv!38020 a!2792)))

(declare-fun b!1532471 () Bool)

(declare-fun res!1049709 () Bool)

(assert (=> b!1532471 (=> (not res!1049709) (not e!853866))))

(assert (=> b!1532471 (= res!1049709 (and (= (size!49626 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49626 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49626 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532472 () Bool)

(assert (=> b!1532472 (= e!853868 (contains!10020 Nil!35726 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532473 () Bool)

(declare-fun res!1049711 () Bool)

(assert (=> b!1532473 (=> (not res!1049711) (not e!853866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101724 (_ BitVec 32)) Bool)

(assert (=> b!1532473 (= res!1049711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130666 res!1049714) b!1532471))

(assert (= (and b!1532471 res!1049709) b!1532467))

(assert (= (and b!1532467 res!1049713) b!1532469))

(assert (= (and b!1532469 res!1049710) b!1532473))

(assert (= (and b!1532473 res!1049711) b!1532466))

(assert (= (and b!1532466 res!1049712) b!1532470))

(assert (= (and b!1532470 res!1049708) b!1532468))

(assert (= (and b!1532468 (not res!1049715)) b!1532472))

(declare-fun m!1415223 () Bool)

(assert (=> start!130666 m!1415223))

(declare-fun m!1415225 () Bool)

(assert (=> start!130666 m!1415225))

(declare-fun m!1415227 () Bool)

(assert (=> b!1532472 m!1415227))

(declare-fun m!1415229 () Bool)

(assert (=> b!1532469 m!1415229))

(assert (=> b!1532469 m!1415229))

(declare-fun m!1415231 () Bool)

(assert (=> b!1532469 m!1415231))

(declare-fun m!1415233 () Bool)

(assert (=> b!1532470 m!1415233))

(declare-fun m!1415235 () Bool)

(assert (=> b!1532473 m!1415235))

(declare-fun m!1415237 () Bool)

(assert (=> b!1532468 m!1415237))

(declare-fun m!1415239 () Bool)

(assert (=> b!1532467 m!1415239))

(assert (=> b!1532467 m!1415239))

(declare-fun m!1415241 () Bool)

(assert (=> b!1532467 m!1415241))

(push 1)

(assert (not b!1532472))

(assert (not b!1532467))

(assert (not b!1532468))

(assert (not b!1532469))

(assert (not b!1532470))

(assert (not b!1532473))

(assert (not start!130666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!160033 () Bool)

(declare-fun res!1049768 () Bool)

(declare-fun e!853891 () Bool)

(assert (=> d!160033 (=> res!1049768 e!853891)))

(assert (=> d!160033 (= res!1049768 (is-Nil!35726 Nil!35726))))

(assert (=> d!160033 (= (noDuplicate!2666 Nil!35726) e!853891)))

(declare-fun b!1532526 () Bool)

(declare-fun e!853892 () Bool)

(assert (=> b!1532526 (= e!853891 e!853892)))

(declare-fun res!1049769 () Bool)

(assert (=> b!1532526 (=> (not res!1049769) (not e!853892))))

(assert (=> b!1532526 (= res!1049769 (not (contains!10020 (t!50430 Nil!35726) (h!37171 Nil!35726))))))

(declare-fun b!1532527 () Bool)

(assert (=> b!1532527 (= e!853892 (noDuplicate!2666 (t!50430 Nil!35726)))))

(assert (= (and d!160033 (not res!1049768)) b!1532526))

(assert (= (and b!1532526 res!1049769) b!1532527))

(declare-fun m!1415283 () Bool)

(assert (=> b!1532526 m!1415283))

(declare-fun m!1415285 () Bool)

(assert (=> b!1532527 m!1415285))

(assert (=> b!1532470 d!160033))

(declare-fun d!160037 () Bool)

(assert (=> d!160037 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130666 d!160037))

(declare-fun d!160045 () Bool)

(assert (=> d!160045 (= (array_inv!38020 a!2792) (bvsge (size!49626 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130666 d!160045))

(declare-fun d!160047 () Bool)

(assert (=> d!160047 (= (validKeyInArray!0 (select (arr!49075 a!2792) j!64)) (and (not (= (select (arr!49075 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49075 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532469 d!160047))

(declare-fun d!160049 () Bool)

(declare-fun lt!663628 () Bool)

(declare-fun content!794 (List!35729) (Set (_ BitVec 64)))

(assert (=> d!160049 (= lt!663628 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!794 Nil!35726)))))

(declare-fun e!853912 () Bool)

(assert (=> d!160049 (= lt!663628 e!853912)))

(declare-fun res!1049786 () Bool)

(assert (=> d!160049 (=> (not res!1049786) (not e!853912))))

(assert (=> d!160049 (= res!1049786 (is-Cons!35725 Nil!35726))))

(assert (=> d!160049 (= (contains!10020 Nil!35726 #b0000000000000000000000000000000000000000000000000000000000000000) lt!663628)))

(declare-fun b!1532550 () Bool)

(declare-fun e!853913 () Bool)

(assert (=> b!1532550 (= e!853912 e!853913)))

(declare-fun res!1049787 () Bool)

(assert (=> b!1532550 (=> res!1049787 e!853913)))

(assert (=> b!1532550 (= res!1049787 (= (h!37171 Nil!35726) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532551 () Bool)

(assert (=> b!1532551 (= e!853913 (contains!10020 (t!50430 Nil!35726) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!160049 res!1049786) b!1532550))

(assert (= (and b!1532550 (not res!1049787)) b!1532551))

(declare-fun m!1415305 () Bool)

(assert (=> d!160049 m!1415305))

(declare-fun m!1415307 () Bool)

(assert (=> d!160049 m!1415307))

(declare-fun m!1415309 () Bool)

(assert (=> b!1532551 m!1415309))

(assert (=> b!1532468 d!160049))

(declare-fun d!160063 () Bool)

(declare-fun res!1049813 () Bool)

(declare-fun e!853941 () Bool)

(assert (=> d!160063 (=> res!1049813 e!853941)))

(assert (=> d!160063 (= res!1049813 (bvsge #b00000000000000000000000000000000 (size!49626 a!2792)))))

(assert (=> d!160063 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!853941)))

(declare-fun b!1532584 () Bool)

(declare-fun e!853945 () Bool)

(declare-fun call!68576 () Bool)

(assert (=> b!1532584 (= e!853945 call!68576)))

(declare-fun bm!68574 () Bool)

(assert (=> bm!68574 (= call!68576 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1532586 () Bool)

(declare-fun e!853944 () Bool)

(assert (=> b!1532586 (= e!853944 call!68576)))

(declare-fun b!1532588 () Bool)

(assert (=> b!1532588 (= e!853944 e!853945)))

(declare-fun lt!663646 () (_ BitVec 64))

(assert (=> b!1532588 (= lt!663646 (select (arr!49075 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51250 0))(
  ( (Unit!51251) )
))
(declare-fun lt!663649 () Unit!51250)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101724 (_ BitVec 64) (_ BitVec 32)) Unit!51250)

(assert (=> b!1532588 (= lt!663649 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663646 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532588 (arrayContainsKey!0 a!2792 lt!663646 #b00000000000000000000000000000000)))

(declare-fun lt!663648 () Unit!51250)

(assert (=> b!1532588 (= lt!663648 lt!663649)))

(declare-fun res!1049811 () Bool)

(declare-datatypes ((SeekEntryResult!13255 0))(
  ( (MissingZero!13255 (index!55414 (_ BitVec 32))) (Found!13255 (index!55415 (_ BitVec 32))) (Intermediate!13255 (undefined!14067 Bool) (index!55416 (_ BitVec 32)) (x!137132 (_ BitVec 32))) (Undefined!13255) (MissingVacant!13255 (index!55417 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101724 (_ BitVec 32)) SeekEntryResult!13255)

(assert (=> b!1532588 (= res!1049811 (= (seekEntryOrOpen!0 (select (arr!49075 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13255 #b00000000000000000000000000000000)))))

(assert (=> b!1532588 (=> (not res!1049811) (not e!853945))))

(declare-fun b!1532589 () Bool)

(assert (=> b!1532589 (= e!853941 e!853944)))

(declare-fun c!140948 () Bool)

(assert (=> b!1532589 (= c!140948 (validKeyInArray!0 (select (arr!49075 a!2792) #b00000000000000000000000000000000)))))

(assert (= (and d!160063 (not res!1049813)) b!1532589))

(assert (= (and b!1532589 c!140948) b!1532588))

(assert (= (and b!1532589 (not c!140948)) b!1532586))

(assert (= (and b!1532588 res!1049811) b!1532584))

(assert (= (or b!1532584 b!1532586) bm!68574))

(declare-fun m!1415327 () Bool)

(assert (=> bm!68574 m!1415327))

(declare-fun m!1415329 () Bool)

(assert (=> b!1532588 m!1415329))

(declare-fun m!1415333 () Bool)

(assert (=> b!1532588 m!1415333))

(declare-fun m!1415335 () Bool)

(assert (=> b!1532588 m!1415335))

(assert (=> b!1532588 m!1415329))

(declare-fun m!1415341 () Bool)

(assert (=> b!1532588 m!1415341))

(assert (=> b!1532589 m!1415329))

(assert (=> b!1532589 m!1415329))

(declare-fun m!1415345 () Bool)

(assert (=> b!1532589 m!1415345))

(assert (=> b!1532473 d!160063))

(declare-fun d!160071 () Bool)

(assert (=> d!160071 (= (validKeyInArray!0 (select (arr!49075 a!2792) i!951)) (and (not (= (select (arr!49075 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49075 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532467 d!160071))

(declare-fun d!160075 () Bool)

(declare-fun lt!663652 () Bool)

(assert (=> d!160075 (= lt!663652 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!794 Nil!35726)))))

(declare-fun e!853948 () Bool)

(assert (=> d!160075 (= lt!663652 e!853948)))

(declare-fun res!1049816 () Bool)

(assert (=> d!160075 (=> (not res!1049816) (not e!853948))))

(assert (=> d!160075 (= res!1049816 (is-Cons!35725 Nil!35726))))

(assert (=> d!160075 (= (contains!10020 Nil!35726 #b1000000000000000000000000000000000000000000000000000000000000000) lt!663652)))

(declare-fun b!1532592 () Bool)

(declare-fun e!853949 () Bool)

(assert (=> b!1532592 (= e!853948 e!853949)))

(declare-fun res!1049817 () Bool)

(assert (=> b!1532592 (=> res!1049817 e!853949)))

(assert (=> b!1532592 (= res!1049817 (= (h!37171 Nil!35726) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532593 () Bool)

(assert (=> b!1532593 (= e!853949 (contains!10020 (t!50430 Nil!35726) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!160075 res!1049816) b!1532592))

(assert (= (and b!1532592 (not res!1049817)) b!1532593))

(assert (=> d!160075 m!1415305))

(declare-fun m!1415353 () Bool)

(assert (=> d!160075 m!1415353))

(declare-fun m!1415355 () Bool)

(assert (=> b!1532593 m!1415355))

(assert (=> b!1532472 d!160075))

(push 1)

