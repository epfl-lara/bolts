; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130668 () Bool)

(assert start!130668)

(declare-fun res!1049733 () Bool)

(declare-fun e!853875 () Bool)

(assert (=> start!130668 (=> (not res!1049733) (not e!853875))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130668 (= res!1049733 (validMask!0 mask!2480))))

(assert (=> start!130668 e!853875))

(assert (=> start!130668 true))

(declare-datatypes ((array!101726 0))(
  ( (array!101727 (arr!49076 (Array (_ BitVec 32) (_ BitVec 64))) (size!49627 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101726)

(declare-fun array_inv!38021 (array!101726) Bool)

(assert (=> start!130668 (array_inv!38021 a!2792)))

(declare-fun b!1532490 () Bool)

(declare-fun e!853876 () Bool)

(declare-datatypes ((List!35730 0))(
  ( (Nil!35727) (Cons!35726 (h!37172 (_ BitVec 64)) (t!50431 List!35730)) )
))
(declare-fun contains!10021 (List!35730 (_ BitVec 64)) Bool)

(assert (=> b!1532490 (= e!853876 (contains!10021 Nil!35727 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532491 () Bool)

(assert (=> b!1532491 (= e!853875 e!853876)))

(declare-fun res!1049738 () Bool)

(assert (=> b!1532491 (=> res!1049738 e!853876)))

(assert (=> b!1532491 (= res!1049738 (contains!10021 Nil!35727 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532492 () Bool)

(declare-fun res!1049739 () Bool)

(assert (=> b!1532492 (=> (not res!1049739) (not e!853875))))

(assert (=> b!1532492 (= res!1049739 (and (bvsle #b00000000000000000000000000000000 (size!49627 a!2792)) (bvslt (size!49627 a!2792) #b01111111111111111111111111111111)))))

(declare-fun b!1532493 () Bool)

(declare-fun res!1049732 () Bool)

(assert (=> b!1532493 (=> (not res!1049732) (not e!853875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101726 (_ BitVec 32)) Bool)

(assert (=> b!1532493 (= res!1049732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532494 () Bool)

(declare-fun res!1049734 () Bool)

(assert (=> b!1532494 (=> (not res!1049734) (not e!853875))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532494 (= res!1049734 (and (= (size!49627 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49627 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49627 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532495 () Bool)

(declare-fun res!1049737 () Bool)

(assert (=> b!1532495 (=> (not res!1049737) (not e!853875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532495 (= res!1049737 (validKeyInArray!0 (select (arr!49076 a!2792) i!951)))))

(declare-fun b!1532496 () Bool)

(declare-fun res!1049735 () Bool)

(assert (=> b!1532496 (=> (not res!1049735) (not e!853875))))

(declare-fun noDuplicate!2667 (List!35730) Bool)

(assert (=> b!1532496 (= res!1049735 (noDuplicate!2667 Nil!35727))))

(declare-fun b!1532497 () Bool)

(declare-fun res!1049736 () Bool)

(assert (=> b!1532497 (=> (not res!1049736) (not e!853875))))

(assert (=> b!1532497 (= res!1049736 (validKeyInArray!0 (select (arr!49076 a!2792) j!64)))))

(assert (= (and start!130668 res!1049733) b!1532494))

(assert (= (and b!1532494 res!1049734) b!1532495))

(assert (= (and b!1532495 res!1049737) b!1532497))

(assert (= (and b!1532497 res!1049736) b!1532493))

(assert (= (and b!1532493 res!1049732) b!1532492))

(assert (= (and b!1532492 res!1049739) b!1532496))

(assert (= (and b!1532496 res!1049735) b!1532491))

(assert (= (and b!1532491 (not res!1049738)) b!1532490))

(declare-fun m!1415243 () Bool)

(assert (=> start!130668 m!1415243))

(declare-fun m!1415245 () Bool)

(assert (=> start!130668 m!1415245))

(declare-fun m!1415247 () Bool)

(assert (=> b!1532497 m!1415247))

(assert (=> b!1532497 m!1415247))

(declare-fun m!1415249 () Bool)

(assert (=> b!1532497 m!1415249))

(declare-fun m!1415251 () Bool)

(assert (=> b!1532493 m!1415251))

(declare-fun m!1415253 () Bool)

(assert (=> b!1532491 m!1415253))

(declare-fun m!1415255 () Bool)

(assert (=> b!1532496 m!1415255))

(declare-fun m!1415257 () Bool)

(assert (=> b!1532490 m!1415257))

(declare-fun m!1415259 () Bool)

(assert (=> b!1532495 m!1415259))

(assert (=> b!1532495 m!1415259))

(declare-fun m!1415261 () Bool)

(assert (=> b!1532495 m!1415261))

(check-sat (not b!1532493) (not start!130668) (not b!1532497) (not b!1532495) (not b!1532490) (not b!1532496) (not b!1532491))
(check-sat)
(get-model)

(declare-fun d!160031 () Bool)

(assert (=> d!160031 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130668 d!160031))

(declare-fun d!160041 () Bool)

(assert (=> d!160041 (= (array_inv!38021 a!2792) (bvsge (size!49627 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130668 d!160041))

(declare-fun bm!68568 () Bool)

(declare-fun call!68571 () Bool)

(assert (=> bm!68568 (= call!68571 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1532542 () Bool)

(declare-fun e!853905 () Bool)

(declare-fun e!853907 () Bool)

(assert (=> b!1532542 (= e!853905 e!853907)))

(declare-fun lt!663625 () (_ BitVec 64))

(assert (=> b!1532542 (= lt!663625 (select (arr!49076 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51248 0))(
  ( (Unit!51249) )
))
(declare-fun lt!663626 () Unit!51248)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101726 (_ BitVec 64) (_ BitVec 32)) Unit!51248)

(assert (=> b!1532542 (= lt!663626 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663625 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532542 (arrayContainsKey!0 a!2792 lt!663625 #b00000000000000000000000000000000)))

(declare-fun lt!663627 () Unit!51248)

(assert (=> b!1532542 (= lt!663627 lt!663626)))

(declare-fun res!1049781 () Bool)

(declare-datatypes ((SeekEntryResult!13254 0))(
  ( (MissingZero!13254 (index!55410 (_ BitVec 32))) (Found!13254 (index!55411 (_ BitVec 32))) (Intermediate!13254 (undefined!14066 Bool) (index!55412 (_ BitVec 32)) (x!137131 (_ BitVec 32))) (Undefined!13254) (MissingVacant!13254 (index!55413 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101726 (_ BitVec 32)) SeekEntryResult!13254)

(assert (=> b!1532542 (= res!1049781 (= (seekEntryOrOpen!0 (select (arr!49076 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13254 #b00000000000000000000000000000000)))))

(assert (=> b!1532542 (=> (not res!1049781) (not e!853907))))

(declare-fun b!1532543 () Bool)

(assert (=> b!1532543 (= e!853905 call!68571)))

(declare-fun d!160043 () Bool)

(declare-fun res!1049780 () Bool)

(declare-fun e!853906 () Bool)

(assert (=> d!160043 (=> res!1049780 e!853906)))

(assert (=> d!160043 (= res!1049780 (bvsge #b00000000000000000000000000000000 (size!49627 a!2792)))))

(assert (=> d!160043 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!853906)))

(declare-fun b!1532544 () Bool)

(assert (=> b!1532544 (= e!853906 e!853905)))

(declare-fun c!140942 () Bool)

(assert (=> b!1532544 (= c!140942 (validKeyInArray!0 (select (arr!49076 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1532545 () Bool)

(assert (=> b!1532545 (= e!853907 call!68571)))

(assert (= (and d!160043 (not res!1049780)) b!1532544))

(assert (= (and b!1532544 c!140942) b!1532542))

(assert (= (and b!1532544 (not c!140942)) b!1532543))

(assert (= (and b!1532542 res!1049781) b!1532545))

(assert (= (or b!1532545 b!1532543) bm!68568))

(declare-fun m!1415293 () Bool)

(assert (=> bm!68568 m!1415293))

(declare-fun m!1415295 () Bool)

(assert (=> b!1532542 m!1415295))

(declare-fun m!1415297 () Bool)

(assert (=> b!1532542 m!1415297))

(declare-fun m!1415299 () Bool)

(assert (=> b!1532542 m!1415299))

(assert (=> b!1532542 m!1415295))

(declare-fun m!1415301 () Bool)

(assert (=> b!1532542 m!1415301))

(assert (=> b!1532544 m!1415295))

(assert (=> b!1532544 m!1415295))

(declare-fun m!1415303 () Bool)

(assert (=> b!1532544 m!1415303))

(assert (=> b!1532493 d!160043))

(declare-fun d!160055 () Bool)

(assert (=> d!160055 (= (validKeyInArray!0 (select (arr!49076 a!2792) j!64)) (and (not (= (select (arr!49076 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49076 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532497 d!160055))

(declare-fun d!160061 () Bool)

(declare-fun lt!663631 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!795 (List!35730) (InoxSet (_ BitVec 64)))

(assert (=> d!160061 (= lt!663631 (select (content!795 Nil!35727) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!853918 () Bool)

(assert (=> d!160061 (= lt!663631 e!853918)))

(declare-fun res!1049792 () Bool)

(assert (=> d!160061 (=> (not res!1049792) (not e!853918))))

(get-info :version)

(assert (=> d!160061 (= res!1049792 ((_ is Cons!35726) Nil!35727))))

(assert (=> d!160061 (= (contains!10021 Nil!35727 #b0000000000000000000000000000000000000000000000000000000000000000) lt!663631)))

(declare-fun b!1532556 () Bool)

(declare-fun e!853919 () Bool)

(assert (=> b!1532556 (= e!853918 e!853919)))

(declare-fun res!1049793 () Bool)

(assert (=> b!1532556 (=> res!1049793 e!853919)))

(assert (=> b!1532556 (= res!1049793 (= (h!37172 Nil!35727) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532557 () Bool)

(assert (=> b!1532557 (= e!853919 (contains!10021 (t!50431 Nil!35727) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!160061 res!1049792) b!1532556))

(assert (= (and b!1532556 (not res!1049793)) b!1532557))

(declare-fun m!1415311 () Bool)

(assert (=> d!160061 m!1415311))

(declare-fun m!1415313 () Bool)

(assert (=> d!160061 m!1415313))

(declare-fun m!1415315 () Bool)

(assert (=> b!1532557 m!1415315))

(assert (=> b!1532491 d!160061))

(declare-fun d!160065 () Bool)

(declare-fun res!1049802 () Bool)

(declare-fun e!853932 () Bool)

(assert (=> d!160065 (=> res!1049802 e!853932)))

(assert (=> d!160065 (= res!1049802 ((_ is Nil!35727) Nil!35727))))

(assert (=> d!160065 (= (noDuplicate!2667 Nil!35727) e!853932)))

(declare-fun b!1532574 () Bool)

(declare-fun e!853933 () Bool)

(assert (=> b!1532574 (= e!853932 e!853933)))

(declare-fun res!1049803 () Bool)

(assert (=> b!1532574 (=> (not res!1049803) (not e!853933))))

(assert (=> b!1532574 (= res!1049803 (not (contains!10021 (t!50431 Nil!35727) (h!37172 Nil!35727))))))

(declare-fun b!1532575 () Bool)

(assert (=> b!1532575 (= e!853933 (noDuplicate!2667 (t!50431 Nil!35727)))))

(assert (= (and d!160065 (not res!1049802)) b!1532574))

(assert (= (and b!1532574 res!1049803) b!1532575))

(declare-fun m!1415317 () Bool)

(assert (=> b!1532574 m!1415317))

(declare-fun m!1415319 () Bool)

(assert (=> b!1532575 m!1415319))

(assert (=> b!1532496 d!160065))

(declare-fun d!160067 () Bool)

(declare-fun lt!663644 () Bool)

(assert (=> d!160067 (= lt!663644 (select (content!795 Nil!35727) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!853938 () Bool)

(assert (=> d!160067 (= lt!663644 e!853938)))

(declare-fun res!1049808 () Bool)

(assert (=> d!160067 (=> (not res!1049808) (not e!853938))))

(assert (=> d!160067 (= res!1049808 ((_ is Cons!35726) Nil!35727))))

(assert (=> d!160067 (= (contains!10021 Nil!35727 #b1000000000000000000000000000000000000000000000000000000000000000) lt!663644)))

(declare-fun b!1532580 () Bool)

(declare-fun e!853939 () Bool)

(assert (=> b!1532580 (= e!853938 e!853939)))

(declare-fun res!1049809 () Bool)

(assert (=> b!1532580 (=> res!1049809 e!853939)))

(assert (=> b!1532580 (= res!1049809 (= (h!37172 Nil!35727) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532581 () Bool)

(assert (=> b!1532581 (= e!853939 (contains!10021 (t!50431 Nil!35727) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!160067 res!1049808) b!1532580))

(assert (= (and b!1532580 (not res!1049809)) b!1532581))

(assert (=> d!160067 m!1415311))

(declare-fun m!1415321 () Bool)

(assert (=> d!160067 m!1415321))

(declare-fun m!1415323 () Bool)

(assert (=> b!1532581 m!1415323))

(assert (=> b!1532490 d!160067))

(declare-fun d!160069 () Bool)

(assert (=> d!160069 (= (validKeyInArray!0 (select (arr!49076 a!2792) i!951)) (and (not (= (select (arr!49076 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49076 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532495 d!160069))

(check-sat (not b!1532557) (not d!160067) (not b!1532581) (not b!1532544) (not b!1532574) (not b!1532542) (not b!1532575) (not bm!68568) (not d!160061))
(check-sat)
