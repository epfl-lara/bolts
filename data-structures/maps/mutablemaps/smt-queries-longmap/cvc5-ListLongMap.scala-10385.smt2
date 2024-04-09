; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122326 () Bool)

(assert start!122326)

(declare-fun b!1417884 () Bool)

(declare-fun res!953687 () Bool)

(declare-fun e!802446 () Bool)

(assert (=> b!1417884 (=> (not res!953687) (not e!802446))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96780 0))(
  ( (array!96781 (arr!46711 (Array (_ BitVec 32) (_ BitVec 64))) (size!47262 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96780)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1417884 (= res!953687 (and (= (size!47262 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47262 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47262 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1417885 () Bool)

(declare-fun res!953693 () Bool)

(assert (=> b!1417885 (=> (not res!953693) (not e!802446))))

(assert (=> b!1417885 (= res!953693 (and (bvsle #b00000000000000000000000000000000 (size!47262 a!2831)) (bvslt (size!47262 a!2831) #b01111111111111111111111111111111)))))

(declare-fun res!953690 () Bool)

(assert (=> start!122326 (=> (not res!953690) (not e!802446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122326 (= res!953690 (validMask!0 mask!2608))))

(assert (=> start!122326 e!802446))

(assert (=> start!122326 true))

(declare-fun array_inv!35656 (array!96780) Bool)

(assert (=> start!122326 (array_inv!35656 a!2831)))

(declare-fun b!1417886 () Bool)

(declare-fun e!802447 () Bool)

(assert (=> b!1417886 (= e!802446 e!802447)))

(declare-fun res!953689 () Bool)

(assert (=> b!1417886 (=> res!953689 e!802447)))

(declare-datatypes ((List!33401 0))(
  ( (Nil!33398) (Cons!33397 (h!34690 (_ BitVec 64)) (t!48102 List!33401)) )
))
(declare-fun contains!9844 (List!33401 (_ BitVec 64)) Bool)

(assert (=> b!1417886 (= res!953689 (contains!9844 Nil!33398 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417887 () Bool)

(assert (=> b!1417887 (= e!802447 (contains!9844 Nil!33398 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417888 () Bool)

(declare-fun res!953691 () Bool)

(assert (=> b!1417888 (=> (not res!953691) (not e!802446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417888 (= res!953691 (validKeyInArray!0 (select (arr!46711 a!2831) j!81)))))

(declare-fun b!1417889 () Bool)

(declare-fun res!953688 () Bool)

(assert (=> b!1417889 (=> (not res!953688) (not e!802446))))

(assert (=> b!1417889 (= res!953688 (validKeyInArray!0 (select (arr!46711 a!2831) i!982)))))

(declare-fun b!1417890 () Bool)

(declare-fun res!953692 () Bool)

(assert (=> b!1417890 (=> (not res!953692) (not e!802446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96780 (_ BitVec 32)) Bool)

(assert (=> b!1417890 (= res!953692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417891 () Bool)

(declare-fun res!953694 () Bool)

(assert (=> b!1417891 (=> (not res!953694) (not e!802446))))

(declare-fun noDuplicate!2642 (List!33401) Bool)

(assert (=> b!1417891 (= res!953694 (noDuplicate!2642 Nil!33398))))

(assert (= (and start!122326 res!953690) b!1417884))

(assert (= (and b!1417884 res!953687) b!1417889))

(assert (= (and b!1417889 res!953688) b!1417888))

(assert (= (and b!1417888 res!953691) b!1417890))

(assert (= (and b!1417890 res!953692) b!1417885))

(assert (= (and b!1417885 res!953693) b!1417891))

(assert (= (and b!1417891 res!953694) b!1417886))

(assert (= (and b!1417886 (not res!953689)) b!1417887))

(declare-fun m!1308701 () Bool)

(assert (=> b!1417886 m!1308701))

(declare-fun m!1308703 () Bool)

(assert (=> b!1417891 m!1308703))

(declare-fun m!1308705 () Bool)

(assert (=> b!1417889 m!1308705))

(assert (=> b!1417889 m!1308705))

(declare-fun m!1308707 () Bool)

(assert (=> b!1417889 m!1308707))

(declare-fun m!1308709 () Bool)

(assert (=> start!122326 m!1308709))

(declare-fun m!1308711 () Bool)

(assert (=> start!122326 m!1308711))

(declare-fun m!1308713 () Bool)

(assert (=> b!1417887 m!1308713))

(declare-fun m!1308715 () Bool)

(assert (=> b!1417888 m!1308715))

(assert (=> b!1417888 m!1308715))

(declare-fun m!1308717 () Bool)

(assert (=> b!1417888 m!1308717))

(declare-fun m!1308719 () Bool)

(assert (=> b!1417890 m!1308719))

(push 1)

(assert (not start!122326))

(assert (not b!1417891))

(assert (not b!1417888))

(assert (not b!1417890))

(assert (not b!1417887))

(assert (not b!1417889))

(assert (not b!1417886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152715 () Bool)

(assert (=> d!152715 (= (validKeyInArray!0 (select (arr!46711 a!2831) i!982)) (and (not (= (select (arr!46711 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46711 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417889 d!152715))

(declare-fun d!152717 () Bool)

(assert (=> d!152717 (= (validKeyInArray!0 (select (arr!46711 a!2831) j!81)) (and (not (= (select (arr!46711 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46711 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417888 d!152717))

(declare-fun b!1417964 () Bool)

(declare-fun e!802488 () Bool)

(declare-fun call!67245 () Bool)

(assert (=> b!1417964 (= e!802488 call!67245)))

(declare-fun bm!67242 () Bool)

(assert (=> bm!67242 (= call!67245 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1417965 () Bool)

(declare-fun e!802487 () Bool)

(assert (=> b!1417965 (= e!802487 call!67245)))

(declare-fun b!1417966 () Bool)

(assert (=> b!1417966 (= e!802487 e!802488)))

(declare-fun lt!625450 () (_ BitVec 64))

(assert (=> b!1417966 (= lt!625450 (select (arr!46711 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48000 0))(
  ( (Unit!48001) )
))
(declare-fun lt!625448 () Unit!48000)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96780 (_ BitVec 64) (_ BitVec 32)) Unit!48000)

(assert (=> b!1417966 (= lt!625448 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625450 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417966 (arrayContainsKey!0 a!2831 lt!625450 #b00000000000000000000000000000000)))

(declare-fun lt!625449 () Unit!48000)

(assert (=> b!1417966 (= lt!625449 lt!625448)))

(declare-fun res!953758 () Bool)

(declare-datatypes ((SeekEntryResult!11038 0))(
  ( (MissingZero!11038 (index!46543 (_ BitVec 32))) (Found!11038 (index!46544 (_ BitVec 32))) (Intermediate!11038 (undefined!11850 Bool) (index!46545 (_ BitVec 32)) (x!128164 (_ BitVec 32))) (Undefined!11038) (MissingVacant!11038 (index!46546 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96780 (_ BitVec 32)) SeekEntryResult!11038)

(assert (=> b!1417966 (= res!953758 (= (seekEntryOrOpen!0 (select (arr!46711 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11038 #b00000000000000000000000000000000)))))

(assert (=> b!1417966 (=> (not res!953758) (not e!802488))))

(declare-fun d!152719 () Bool)

(declare-fun res!953757 () Bool)

(declare-fun e!802486 () Bool)

(assert (=> d!152719 (=> res!953757 e!802486)))

(assert (=> d!152719 (= res!953757 (bvsge #b00000000000000000000000000000000 (size!47262 a!2831)))))

(assert (=> d!152719 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802486)))

(declare-fun b!1417967 () Bool)

(assert (=> b!1417967 (= e!802486 e!802487)))

(declare-fun c!131588 () Bool)

(assert (=> b!1417967 (= c!131588 (validKeyInArray!0 (select (arr!46711 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152719 (not res!953757)) b!1417967))

(assert (= (and b!1417967 c!131588) b!1417966))

(assert (= (and b!1417967 (not c!131588)) b!1417965))

(assert (= (and b!1417966 res!953758) b!1417964))

(assert (= (or b!1417964 b!1417965) bm!67242))

(declare-fun m!1308773 () Bool)

(assert (=> bm!67242 m!1308773))

(declare-fun m!1308775 () Bool)

(assert (=> b!1417966 m!1308775))

(declare-fun m!1308777 () Bool)

(assert (=> b!1417966 m!1308777))

(declare-fun m!1308779 () Bool)

(assert (=> b!1417966 m!1308779))

(assert (=> b!1417966 m!1308775))

(declare-fun m!1308781 () Bool)

(assert (=> b!1417966 m!1308781))

(assert (=> b!1417967 m!1308775))

(assert (=> b!1417967 m!1308775))

(declare-fun m!1308783 () Bool)

(assert (=> b!1417967 m!1308783))

(assert (=> b!1417890 d!152719))

(declare-fun d!152727 () Bool)

(declare-fun lt!625461 () Bool)

(declare-fun content!774 (List!33401) (Set (_ BitVec 64)))

(assert (=> d!152727 (= lt!625461 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!774 Nil!33398)))))

(declare-fun e!802505 () Bool)

(assert (=> d!152727 (= lt!625461 e!802505)))

(declare-fun res!953774 () Bool)

(assert (=> d!152727 (=> (not res!953774) (not e!802505))))

(assert (=> d!152727 (= res!953774 (is-Cons!33397 Nil!33398))))

(assert (=> d!152727 (= (contains!9844 Nil!33398 #b0000000000000000000000000000000000000000000000000000000000000000) lt!625461)))

(declare-fun b!1417986 () Bool)

(declare-fun e!802506 () Bool)

(assert (=> b!1417986 (= e!802505 e!802506)))

(declare-fun res!953773 () Bool)

(assert (=> b!1417986 (=> res!953773 e!802506)))

(assert (=> b!1417986 (= res!953773 (= (h!34690 Nil!33398) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417987 () Bool)

(assert (=> b!1417987 (= e!802506 (contains!9844 (t!48102 Nil!33398) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!152727 res!953774) b!1417986))

(assert (= (and b!1417986 (not res!953773)) b!1417987))

(declare-fun m!1308789 () Bool)

(assert (=> d!152727 m!1308789))

(declare-fun m!1308791 () Bool)

(assert (=> d!152727 m!1308791))

(declare-fun m!1308793 () Bool)

(assert (=> b!1417987 m!1308793))

(assert (=> b!1417886 d!152727))

(declare-fun d!152733 () Bool)

(declare-fun res!953785 () Bool)

(declare-fun e!802518 () Bool)

(assert (=> d!152733 (=> res!953785 e!802518)))

(assert (=> d!152733 (= res!953785 (is-Nil!33398 Nil!33398))))

(assert (=> d!152733 (= (noDuplicate!2642 Nil!33398) e!802518)))

(declare-fun b!1418000 () Bool)

(declare-fun e!802519 () Bool)

(assert (=> b!1418000 (= e!802518 e!802519)))

(declare-fun res!953786 () Bool)

(assert (=> b!1418000 (=> (not res!953786) (not e!802519))))

(assert (=> b!1418000 (= res!953786 (not (contains!9844 (t!48102 Nil!33398) (h!34690 Nil!33398))))))

(declare-fun b!1418001 () Bool)

(assert (=> b!1418001 (= e!802519 (noDuplicate!2642 (t!48102 Nil!33398)))))

(assert (= (and d!152733 (not res!953785)) b!1418000))

(assert (= (and b!1418000 res!953786) b!1418001))

(declare-fun m!1308817 () Bool)

(assert (=> b!1418000 m!1308817))

(declare-fun m!1308819 () Bool)

(assert (=> b!1418001 m!1308819))

(assert (=> b!1417891 d!152733))

(declare-fun d!152741 () Bool)

(assert (=> d!152741 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122326 d!152741))

(declare-fun d!152749 () Bool)

(assert (=> d!152749 (= (array_inv!35656 a!2831) (bvsge (size!47262 a!2831) #b00000000000000000000000000000000))))

