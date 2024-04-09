; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122292 () Bool)

(assert start!122292)

(declare-fun b!1417790 () Bool)

(declare-fun res!953612 () Bool)

(declare-fun e!802387 () Bool)

(assert (=> b!1417790 (=> (not res!953612) (not e!802387))))

(declare-datatypes ((array!96773 0))(
  ( (array!96774 (arr!46709 (Array (_ BitVec 32) (_ BitVec 64))) (size!47260 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96773)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417790 (= res!953612 (validKeyInArray!0 (select (arr!46709 a!2831) i!982)))))

(declare-fun b!1417791 () Bool)

(declare-fun res!953611 () Bool)

(assert (=> b!1417791 (=> (not res!953611) (not e!802387))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96773 (_ BitVec 32)) Bool)

(assert (=> b!1417791 (= res!953611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417792 () Bool)

(declare-fun res!953615 () Bool)

(assert (=> b!1417792 (=> (not res!953615) (not e!802387))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1417792 (= res!953615 (and (= (size!47260 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47260 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47260 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953613 () Bool)

(assert (=> start!122292 (=> (not res!953613) (not e!802387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122292 (= res!953613 (validMask!0 mask!2608))))

(assert (=> start!122292 e!802387))

(assert (=> start!122292 true))

(declare-fun array_inv!35654 (array!96773) Bool)

(assert (=> start!122292 (array_inv!35654 a!2831)))

(declare-fun b!1417793 () Bool)

(declare-datatypes ((List!33399 0))(
  ( (Nil!33396) (Cons!33395 (h!34688 (_ BitVec 64)) (t!48100 List!33399)) )
))
(declare-fun noDuplicate!2640 (List!33399) Bool)

(assert (=> b!1417793 (= e!802387 (not (noDuplicate!2640 Nil!33396)))))

(declare-fun b!1417794 () Bool)

(declare-fun res!953616 () Bool)

(assert (=> b!1417794 (=> (not res!953616) (not e!802387))))

(assert (=> b!1417794 (= res!953616 (and (bvsle #b00000000000000000000000000000000 (size!47260 a!2831)) (bvslt (size!47260 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417795 () Bool)

(declare-fun res!953614 () Bool)

(assert (=> b!1417795 (=> (not res!953614) (not e!802387))))

(assert (=> b!1417795 (= res!953614 (validKeyInArray!0 (select (arr!46709 a!2831) j!81)))))

(assert (= (and start!122292 res!953613) b!1417792))

(assert (= (and b!1417792 res!953615) b!1417790))

(assert (= (and b!1417790 res!953612) b!1417795))

(assert (= (and b!1417795 res!953614) b!1417791))

(assert (= (and b!1417791 res!953611) b!1417794))

(assert (= (and b!1417794 res!953616) b!1417793))

(declare-fun m!1308621 () Bool)

(assert (=> b!1417793 m!1308621))

(declare-fun m!1308623 () Bool)

(assert (=> b!1417795 m!1308623))

(assert (=> b!1417795 m!1308623))

(declare-fun m!1308625 () Bool)

(assert (=> b!1417795 m!1308625))

(declare-fun m!1308627 () Bool)

(assert (=> b!1417791 m!1308627))

(declare-fun m!1308629 () Bool)

(assert (=> start!122292 m!1308629))

(declare-fun m!1308631 () Bool)

(assert (=> start!122292 m!1308631))

(declare-fun m!1308633 () Bool)

(assert (=> b!1417790 m!1308633))

(assert (=> b!1417790 m!1308633))

(declare-fun m!1308635 () Bool)

(assert (=> b!1417790 m!1308635))

(check-sat (not start!122292) (not b!1417793) (not b!1417795) (not b!1417790) (not b!1417791))
(check-sat)
(get-model)

(declare-fun d!152675 () Bool)

(declare-fun res!953639 () Bool)

(declare-fun e!802399 () Bool)

(assert (=> d!152675 (=> res!953639 e!802399)))

(get-info :version)

(assert (=> d!152675 (= res!953639 ((_ is Nil!33396) Nil!33396))))

(assert (=> d!152675 (= (noDuplicate!2640 Nil!33396) e!802399)))

(declare-fun b!1417818 () Bool)

(declare-fun e!802400 () Bool)

(assert (=> b!1417818 (= e!802399 e!802400)))

(declare-fun res!953640 () Bool)

(assert (=> b!1417818 (=> (not res!953640) (not e!802400))))

(declare-fun contains!9843 (List!33399 (_ BitVec 64)) Bool)

(assert (=> b!1417818 (= res!953640 (not (contains!9843 (t!48100 Nil!33396) (h!34688 Nil!33396))))))

(declare-fun b!1417819 () Bool)

(assert (=> b!1417819 (= e!802400 (noDuplicate!2640 (t!48100 Nil!33396)))))

(assert (= (and d!152675 (not res!953639)) b!1417818))

(assert (= (and b!1417818 res!953640) b!1417819))

(declare-fun m!1308653 () Bool)

(assert (=> b!1417818 m!1308653))

(declare-fun m!1308655 () Bool)

(assert (=> b!1417819 m!1308655))

(assert (=> b!1417793 d!152675))

(declare-fun d!152677 () Bool)

(assert (=> d!152677 (= (validKeyInArray!0 (select (arr!46709 a!2831) j!81)) (and (not (= (select (arr!46709 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46709 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417795 d!152677))

(declare-fun bm!67230 () Bool)

(declare-fun call!67233 () Bool)

(assert (=> bm!67230 (= call!67233 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1417828 () Bool)

(declare-fun e!802407 () Bool)

(declare-fun e!802408 () Bool)

(assert (=> b!1417828 (= e!802407 e!802408)))

(declare-fun c!131576 () Bool)

(assert (=> b!1417828 (= c!131576 (validKeyInArray!0 (select (arr!46709 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1417829 () Bool)

(declare-fun e!802409 () Bool)

(assert (=> b!1417829 (= e!802408 e!802409)))

(declare-fun lt!625414 () (_ BitVec 64))

(assert (=> b!1417829 (= lt!625414 (select (arr!46709 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!47992 0))(
  ( (Unit!47993) )
))
(declare-fun lt!625412 () Unit!47992)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96773 (_ BitVec 64) (_ BitVec 32)) Unit!47992)

(assert (=> b!1417829 (= lt!625412 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625414 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417829 (arrayContainsKey!0 a!2831 lt!625414 #b00000000000000000000000000000000)))

(declare-fun lt!625413 () Unit!47992)

(assert (=> b!1417829 (= lt!625413 lt!625412)))

(declare-fun res!953646 () Bool)

(declare-datatypes ((SeekEntryResult!11034 0))(
  ( (MissingZero!11034 (index!46527 (_ BitVec 32))) (Found!11034 (index!46528 (_ BitVec 32))) (Intermediate!11034 (undefined!11846 Bool) (index!46529 (_ BitVec 32)) (x!128152 (_ BitVec 32))) (Undefined!11034) (MissingVacant!11034 (index!46530 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96773 (_ BitVec 32)) SeekEntryResult!11034)

(assert (=> b!1417829 (= res!953646 (= (seekEntryOrOpen!0 (select (arr!46709 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11034 #b00000000000000000000000000000000)))))

(assert (=> b!1417829 (=> (not res!953646) (not e!802409))))

(declare-fun b!1417830 () Bool)

(assert (=> b!1417830 (= e!802408 call!67233)))

(declare-fun b!1417831 () Bool)

(assert (=> b!1417831 (= e!802409 call!67233)))

(declare-fun d!152679 () Bool)

(declare-fun res!953645 () Bool)

(assert (=> d!152679 (=> res!953645 e!802407)))

(assert (=> d!152679 (= res!953645 (bvsge #b00000000000000000000000000000000 (size!47260 a!2831)))))

(assert (=> d!152679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802407)))

(assert (= (and d!152679 (not res!953645)) b!1417828))

(assert (= (and b!1417828 c!131576) b!1417829))

(assert (= (and b!1417828 (not c!131576)) b!1417830))

(assert (= (and b!1417829 res!953646) b!1417831))

(assert (= (or b!1417831 b!1417830) bm!67230))

(declare-fun m!1308657 () Bool)

(assert (=> bm!67230 m!1308657))

(declare-fun m!1308659 () Bool)

(assert (=> b!1417828 m!1308659))

(assert (=> b!1417828 m!1308659))

(declare-fun m!1308661 () Bool)

(assert (=> b!1417828 m!1308661))

(assert (=> b!1417829 m!1308659))

(declare-fun m!1308663 () Bool)

(assert (=> b!1417829 m!1308663))

(declare-fun m!1308665 () Bool)

(assert (=> b!1417829 m!1308665))

(assert (=> b!1417829 m!1308659))

(declare-fun m!1308667 () Bool)

(assert (=> b!1417829 m!1308667))

(assert (=> b!1417791 d!152679))

(declare-fun d!152693 () Bool)

(assert (=> d!152693 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122292 d!152693))

(declare-fun d!152701 () Bool)

(assert (=> d!152701 (= (array_inv!35654 a!2831) (bvsge (size!47260 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122292 d!152701))

(declare-fun d!152703 () Bool)

(assert (=> d!152703 (= (validKeyInArray!0 (select (arr!46709 a!2831) i!982)) (and (not (= (select (arr!46709 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46709 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417790 d!152703))

(check-sat (not b!1417829) (not bm!67230) (not b!1417828) (not b!1417818) (not b!1417819))
(check-sat)
