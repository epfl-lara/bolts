; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122374 () Bool)

(assert start!122374)

(declare-fun b!1418084 () Bool)

(declare-fun res!953869 () Bool)

(declare-fun e!802559 () Bool)

(assert (=> b!1418084 (=> (not res!953869) (not e!802559))))

(declare-datatypes ((array!96795 0))(
  ( (array!96796 (arr!46717 (Array (_ BitVec 32) (_ BitVec 64))) (size!47268 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96795)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418084 (= res!953869 (validKeyInArray!0 (select (arr!46717 a!2831) i!982)))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun b!1418086 () Bool)

(assert (=> b!1418086 (= e!802559 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47268 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47268 a!2831)) (bvsge mask!2608 #b00000000000000000000000000000000) (bvsgt mask!2608 #b00111111111111111111111111111111)))))

(declare-fun b!1418087 () Bool)

(declare-fun res!953874 () Bool)

(assert (=> b!1418087 (=> (not res!953874) (not e!802559))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418087 (= res!953874 (validKeyInArray!0 (select (arr!46717 a!2831) j!81)))))

(declare-fun res!953872 () Bool)

(assert (=> start!122374 (=> (not res!953872) (not e!802559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122374 (= res!953872 (validMask!0 mask!2608))))

(assert (=> start!122374 e!802559))

(assert (=> start!122374 true))

(declare-fun array_inv!35662 (array!96795) Bool)

(assert (=> start!122374 (array_inv!35662 a!2831)))

(declare-fun b!1418085 () Bool)

(declare-fun res!953873 () Bool)

(assert (=> b!1418085 (=> (not res!953873) (not e!802559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96795 (_ BitVec 32)) Bool)

(assert (=> b!1418085 (= res!953873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418088 () Bool)

(declare-fun res!953871 () Bool)

(assert (=> b!1418088 (=> (not res!953871) (not e!802559))))

(assert (=> b!1418088 (= res!953871 (and (= (size!47268 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47268 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47268 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418089 () Bool)

(declare-fun res!953870 () Bool)

(assert (=> b!1418089 (=> (not res!953870) (not e!802559))))

(declare-datatypes ((List!33407 0))(
  ( (Nil!33404) (Cons!33403 (h!34696 (_ BitVec 64)) (t!48108 List!33407)) )
))
(declare-fun arrayNoDuplicates!0 (array!96795 (_ BitVec 32) List!33407) Bool)

(assert (=> b!1418089 (= res!953870 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33404))))

(assert (= (and start!122374 res!953872) b!1418088))

(assert (= (and b!1418088 res!953871) b!1418084))

(assert (= (and b!1418084 res!953869) b!1418087))

(assert (= (and b!1418087 res!953874) b!1418085))

(assert (= (and b!1418085 res!953873) b!1418089))

(assert (= (and b!1418089 res!953870) b!1418086))

(declare-fun m!1308887 () Bool)

(assert (=> b!1418087 m!1308887))

(assert (=> b!1418087 m!1308887))

(declare-fun m!1308889 () Bool)

(assert (=> b!1418087 m!1308889))

(declare-fun m!1308891 () Bool)

(assert (=> b!1418084 m!1308891))

(assert (=> b!1418084 m!1308891))

(declare-fun m!1308893 () Bool)

(assert (=> b!1418084 m!1308893))

(declare-fun m!1308895 () Bool)

(assert (=> b!1418085 m!1308895))

(declare-fun m!1308897 () Bool)

(assert (=> b!1418089 m!1308897))

(declare-fun m!1308899 () Bool)

(assert (=> start!122374 m!1308899))

(declare-fun m!1308901 () Bool)

(assert (=> start!122374 m!1308901))

(push 1)

(assert (not b!1418089))

(assert (not b!1418087))

(assert (not start!122374))

(assert (not b!1418085))

(assert (not b!1418084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152769 () Bool)

(assert (=> d!152769 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122374 d!152769))

(declare-fun d!152777 () Bool)

(assert (=> d!152777 (= (array_inv!35662 a!2831) (bvsge (size!47268 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122374 d!152777))

(declare-fun d!152779 () Bool)

(assert (=> d!152779 (= (validKeyInArray!0 (select (arr!46717 a!2831) i!982)) (and (not (= (select (arr!46717 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46717 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418084 d!152779))

(declare-fun b!1418173 () Bool)

(declare-fun e!802609 () Bool)

(declare-fun e!802608 () Bool)

(assert (=> b!1418173 (= e!802609 e!802608)))

(declare-fun lt!625496 () (_ BitVec 64))

(assert (=> b!1418173 (= lt!625496 (select (arr!46717 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48006 0))(
  ( (Unit!48007) )
))
(declare-fun lt!625497 () Unit!48006)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96795 (_ BitVec 64) (_ BitVec 32)) Unit!48006)

(assert (=> b!1418173 (= lt!625497 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625496 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1418173 (arrayContainsKey!0 a!2831 lt!625496 #b00000000000000000000000000000000)))

(declare-fun lt!625498 () Unit!48006)

(assert (=> b!1418173 (= lt!625498 lt!625497)))

(declare-fun res!953936 () Bool)

(declare-datatypes ((SeekEntryResult!11041 0))(
  ( (MissingZero!11041 (index!46555 (_ BitVec 32))) (Found!11041 (index!46556 (_ BitVec 32))) (Intermediate!11041 (undefined!11853 Bool) (index!46557 (_ BitVec 32)) (x!128183 (_ BitVec 32))) (Undefined!11041) (MissingVacant!11041 (index!46558 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96795 (_ BitVec 32)) SeekEntryResult!11041)

(assert (=> b!1418173 (= res!953936 (= (seekEntryOrOpen!0 (select (arr!46717 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11041 #b00000000000000000000000000000000)))))

(assert (=> b!1418173 (=> (not res!953936) (not e!802608))))

(declare-fun b!1418174 () Bool)

(declare-fun call!67260 () Bool)

(assert (=> b!1418174 (= e!802608 call!67260)))

(declare-fun b!1418176 () Bool)

(assert (=> b!1418176 (= e!802609 call!67260)))

(declare-fun bm!67257 () Bool)

(assert (=> bm!67257 (= call!67260 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1418175 () Bool)

(declare-fun e!802610 () Bool)

(assert (=> b!1418175 (= e!802610 e!802609)))

