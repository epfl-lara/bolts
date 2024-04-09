; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122804 () Bool)

(assert start!122804)

(declare-fun b!1422889 () Bool)

(declare-fun e!804358 () Bool)

(assert (=> b!1422889 (= e!804358 true)))

(declare-datatypes ((array!97087 0))(
  ( (array!97088 (arr!46857 (Array (_ BitVec 32) (_ BitVec 64))) (size!47408 (_ BitVec 32))) )
))
(declare-fun lt!626852 () array!97087)

(declare-fun lt!626853 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626849 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11164 0))(
  ( (MissingZero!11164 (index!47047 (_ BitVec 32))) (Found!11164 (index!47048 (_ BitVec 32))) (Intermediate!11164 (undefined!11976 Bool) (index!47049 (_ BitVec 32)) (x!128689 (_ BitVec 32))) (Undefined!11164) (MissingVacant!11164 (index!47050 (_ BitVec 32))) )
))
(declare-fun lt!626851 () SeekEntryResult!11164)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97087 (_ BitVec 32)) SeekEntryResult!11164)

(assert (=> b!1422889 (= lt!626851 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626849 lt!626853 lt!626852 mask!2608))))

(declare-fun res!958445 () Bool)

(declare-fun e!804362 () Bool)

(assert (=> start!122804 (=> (not res!958445) (not e!804362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122804 (= res!958445 (validMask!0 mask!2608))))

(assert (=> start!122804 e!804362))

(assert (=> start!122804 true))

(declare-fun a!2831 () array!97087)

(declare-fun array_inv!35802 (array!97087) Bool)

(assert (=> start!122804 (array_inv!35802 a!2831)))

(declare-fun b!1422890 () Bool)

(declare-fun res!958440 () Bool)

(assert (=> b!1422890 (=> (not res!958440) (not e!804362))))

(declare-datatypes ((List!33547 0))(
  ( (Nil!33544) (Cons!33543 (h!34845 (_ BitVec 64)) (t!48248 List!33547)) )
))
(declare-fun arrayNoDuplicates!0 (array!97087 (_ BitVec 32) List!33547) Bool)

(assert (=> b!1422890 (= res!958440 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33544))))

(declare-fun b!1422891 () Bool)

(declare-fun res!958432 () Bool)

(assert (=> b!1422891 (=> (not res!958432) (not e!804362))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422891 (= res!958432 (validKeyInArray!0 (select (arr!46857 a!2831) i!982)))))

(declare-fun b!1422892 () Bool)

(declare-fun res!958434 () Bool)

(assert (=> b!1422892 (=> (not res!958434) (not e!804362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97087 (_ BitVec 32)) Bool)

(assert (=> b!1422892 (= res!958434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422893 () Bool)

(declare-fun e!804361 () Bool)

(assert (=> b!1422893 (= e!804362 e!804361)))

(declare-fun res!958446 () Bool)

(assert (=> b!1422893 (=> (not res!958446) (not e!804361))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun lt!626848 () SeekEntryResult!11164)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422893 (= res!958446 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46857 a!2831) j!81) mask!2608) (select (arr!46857 a!2831) j!81) a!2831 mask!2608) lt!626848))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422893 (= lt!626848 (Intermediate!11164 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422894 () Bool)

(declare-fun res!958433 () Bool)

(declare-fun e!804357 () Bool)

(assert (=> b!1422894 (=> (not res!958433) (not e!804357))))

(declare-fun lt!626854 () SeekEntryResult!11164)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1422894 (= res!958433 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626853 lt!626852 mask!2608) lt!626854))))

(declare-fun b!1422895 () Bool)

(declare-fun res!958443 () Bool)

(assert (=> b!1422895 (=> res!958443 e!804358)))

(assert (=> b!1422895 (= res!958443 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626849 (select (arr!46857 a!2831) j!81) a!2831 mask!2608) lt!626848)))))

(declare-fun e!804359 () Bool)

(declare-fun b!1422896 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97087 (_ BitVec 32)) SeekEntryResult!11164)

(assert (=> b!1422896 (= e!804359 (= (seekEntryOrOpen!0 (select (arr!46857 a!2831) j!81) a!2831 mask!2608) (Found!11164 j!81)))))

(declare-fun b!1422897 () Bool)

(declare-fun res!958441 () Bool)

(assert (=> b!1422897 (=> (not res!958441) (not e!804357))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422897 (= res!958441 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422898 () Bool)

(declare-fun res!958436 () Bool)

(assert (=> b!1422898 (=> (not res!958436) (not e!804357))))

(assert (=> b!1422898 (= res!958436 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46857 a!2831) j!81) a!2831 mask!2608) lt!626848))))

(declare-fun b!1422899 () Bool)

(declare-fun res!958431 () Bool)

(assert (=> b!1422899 (=> (not res!958431) (not e!804362))))

(assert (=> b!1422899 (= res!958431 (and (= (size!47408 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47408 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47408 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422900 () Bool)

(declare-fun e!804356 () Bool)

(assert (=> b!1422900 (= e!804357 (not e!804356))))

(declare-fun res!958444 () Bool)

(assert (=> b!1422900 (=> res!958444 e!804356)))

(assert (=> b!1422900 (= res!958444 (or (= (select (arr!46857 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46857 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46857 a!2831) index!585) (select (arr!46857 a!2831) j!81)) (= (select (store (arr!46857 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422900 e!804359))

(declare-fun res!958435 () Bool)

(assert (=> b!1422900 (=> (not res!958435) (not e!804359))))

(assert (=> b!1422900 (= res!958435 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48112 0))(
  ( (Unit!48113) )
))
(declare-fun lt!626850 () Unit!48112)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48112)

(assert (=> b!1422900 (= lt!626850 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422901 () Bool)

(assert (=> b!1422901 (= e!804356 e!804358)))

(declare-fun res!958438 () Bool)

(assert (=> b!1422901 (=> res!958438 e!804358)))

(assert (=> b!1422901 (= res!958438 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626849 #b00000000000000000000000000000000) (bvsge lt!626849 (size!47408 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422901 (= lt!626849 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422902 () Bool)

(declare-fun res!958437 () Bool)

(assert (=> b!1422902 (=> (not res!958437) (not e!804362))))

(assert (=> b!1422902 (= res!958437 (validKeyInArray!0 (select (arr!46857 a!2831) j!81)))))

(declare-fun b!1422903 () Bool)

(assert (=> b!1422903 (= e!804361 e!804357)))

(declare-fun res!958439 () Bool)

(assert (=> b!1422903 (=> (not res!958439) (not e!804357))))

(assert (=> b!1422903 (= res!958439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626853 mask!2608) lt!626853 lt!626852 mask!2608) lt!626854))))

(assert (=> b!1422903 (= lt!626854 (Intermediate!11164 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422903 (= lt!626853 (select (store (arr!46857 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422903 (= lt!626852 (array!97088 (store (arr!46857 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47408 a!2831)))))

(declare-fun b!1422904 () Bool)

(declare-fun res!958442 () Bool)

(assert (=> b!1422904 (=> (not res!958442) (not e!804362))))

(assert (=> b!1422904 (= res!958442 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47408 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47408 a!2831))))))

(assert (= (and start!122804 res!958445) b!1422899))

(assert (= (and b!1422899 res!958431) b!1422891))

(assert (= (and b!1422891 res!958432) b!1422902))

(assert (= (and b!1422902 res!958437) b!1422892))

(assert (= (and b!1422892 res!958434) b!1422890))

(assert (= (and b!1422890 res!958440) b!1422904))

(assert (= (and b!1422904 res!958442) b!1422893))

(assert (= (and b!1422893 res!958446) b!1422903))

(assert (= (and b!1422903 res!958439) b!1422898))

(assert (= (and b!1422898 res!958436) b!1422894))

(assert (= (and b!1422894 res!958433) b!1422897))

(assert (= (and b!1422897 res!958441) b!1422900))

(assert (= (and b!1422900 res!958435) b!1422896))

(assert (= (and b!1422900 (not res!958444)) b!1422901))

(assert (= (and b!1422901 (not res!958438)) b!1422895))

(assert (= (and b!1422895 (not res!958443)) b!1422889))

(declare-fun m!1313495 () Bool)

(assert (=> b!1422900 m!1313495))

(declare-fun m!1313497 () Bool)

(assert (=> b!1422900 m!1313497))

(declare-fun m!1313499 () Bool)

(assert (=> b!1422900 m!1313499))

(declare-fun m!1313501 () Bool)

(assert (=> b!1422900 m!1313501))

(declare-fun m!1313503 () Bool)

(assert (=> b!1422900 m!1313503))

(declare-fun m!1313505 () Bool)

(assert (=> b!1422900 m!1313505))

(assert (=> b!1422902 m!1313503))

(assert (=> b!1422902 m!1313503))

(declare-fun m!1313507 () Bool)

(assert (=> b!1422902 m!1313507))

(assert (=> b!1422893 m!1313503))

(assert (=> b!1422893 m!1313503))

(declare-fun m!1313509 () Bool)

(assert (=> b!1422893 m!1313509))

(assert (=> b!1422893 m!1313509))

(assert (=> b!1422893 m!1313503))

(declare-fun m!1313511 () Bool)

(assert (=> b!1422893 m!1313511))

(declare-fun m!1313513 () Bool)

(assert (=> b!1422889 m!1313513))

(declare-fun m!1313515 () Bool)

(assert (=> start!122804 m!1313515))

(declare-fun m!1313517 () Bool)

(assert (=> start!122804 m!1313517))

(assert (=> b!1422895 m!1313503))

(assert (=> b!1422895 m!1313503))

(declare-fun m!1313519 () Bool)

(assert (=> b!1422895 m!1313519))

(declare-fun m!1313521 () Bool)

(assert (=> b!1422903 m!1313521))

(assert (=> b!1422903 m!1313521))

(declare-fun m!1313523 () Bool)

(assert (=> b!1422903 m!1313523))

(assert (=> b!1422903 m!1313495))

(declare-fun m!1313525 () Bool)

(assert (=> b!1422903 m!1313525))

(declare-fun m!1313527 () Bool)

(assert (=> b!1422890 m!1313527))

(assert (=> b!1422896 m!1313503))

(assert (=> b!1422896 m!1313503))

(declare-fun m!1313529 () Bool)

(assert (=> b!1422896 m!1313529))

(declare-fun m!1313531 () Bool)

(assert (=> b!1422891 m!1313531))

(assert (=> b!1422891 m!1313531))

(declare-fun m!1313533 () Bool)

(assert (=> b!1422891 m!1313533))

(declare-fun m!1313535 () Bool)

(assert (=> b!1422892 m!1313535))

(declare-fun m!1313537 () Bool)

(assert (=> b!1422894 m!1313537))

(declare-fun m!1313539 () Bool)

(assert (=> b!1422901 m!1313539))

(assert (=> b!1422898 m!1313503))

(assert (=> b!1422898 m!1313503))

(declare-fun m!1313541 () Bool)

(assert (=> b!1422898 m!1313541))

(push 1)

