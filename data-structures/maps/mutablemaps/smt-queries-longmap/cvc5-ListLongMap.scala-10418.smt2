; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122710 () Bool)

(assert start!122710)

(declare-fun b!1420927 () Bool)

(declare-fun e!803571 () Bool)

(declare-fun e!803573 () Bool)

(assert (=> b!1420927 (= e!803571 e!803573)))

(declare-fun res!956471 () Bool)

(assert (=> b!1420927 (=> (not res!956471) (not e!803573))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96993 0))(
  ( (array!96994 (arr!46810 (Array (_ BitVec 32) (_ BitVec 64))) (size!47361 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96993)

(declare-datatypes ((SeekEntryResult!11117 0))(
  ( (MissingZero!11117 (index!46859 (_ BitVec 32))) (Found!11117 (index!46860 (_ BitVec 32))) (Intermediate!11117 (undefined!11929 Bool) (index!46861 (_ BitVec 32)) (x!128522 (_ BitVec 32))) (Undefined!11117) (MissingVacant!11117 (index!46862 (_ BitVec 32))) )
))
(declare-fun lt!626027 () SeekEntryResult!11117)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96993 (_ BitVec 32)) SeekEntryResult!11117)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420927 (= res!956471 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46810 a!2831) j!81) mask!2608) (select (arr!46810 a!2831) j!81) a!2831 mask!2608) lt!626027))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420927 (= lt!626027 (Intermediate!11117 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!956474 () Bool)

(assert (=> start!122710 (=> (not res!956474) (not e!803571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122710 (= res!956474 (validMask!0 mask!2608))))

(assert (=> start!122710 e!803571))

(assert (=> start!122710 true))

(declare-fun array_inv!35755 (array!96993) Bool)

(assert (=> start!122710 (array_inv!35755 a!2831)))

(declare-fun b!1420928 () Bool)

(declare-fun res!956473 () Bool)

(assert (=> b!1420928 (=> (not res!956473) (not e!803571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420928 (= res!956473 (validKeyInArray!0 (select (arr!46810 a!2831) j!81)))))

(declare-fun b!1420929 () Bool)

(declare-fun res!956475 () Bool)

(assert (=> b!1420929 (=> (not res!956475) (not e!803571))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420929 (= res!956475 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47361 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47361 a!2831))))))

(declare-fun b!1420930 () Bool)

(declare-fun res!956477 () Bool)

(assert (=> b!1420930 (=> (not res!956477) (not e!803571))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420930 (= res!956477 (validKeyInArray!0 (select (arr!46810 a!2831) i!982)))))

(declare-fun b!1420931 () Bool)

(declare-fun res!956478 () Bool)

(assert (=> b!1420931 (=> (not res!956478) (not e!803571))))

(assert (=> b!1420931 (= res!956478 (and (= (size!47361 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47361 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47361 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420932 () Bool)

(declare-fun e!803570 () Bool)

(assert (=> b!1420932 (= e!803573 e!803570)))

(declare-fun res!956469 () Bool)

(assert (=> b!1420932 (=> (not res!956469) (not e!803570))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!626029 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun lt!626028 () array!96993)

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1420932 (= res!956469 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626029 mask!2608) lt!626029 lt!626028 mask!2608) (Intermediate!11117 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420932 (= lt!626029 (select (store (arr!46810 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420932 (= lt!626028 (array!96994 (store (arr!46810 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47361 a!2831)))))

(declare-fun b!1420933 () Bool)

(assert (=> b!1420933 (= e!803570 false)))

(declare-fun lt!626026 () SeekEntryResult!11117)

(assert (=> b!1420933 (= lt!626026 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626029 lt!626028 mask!2608))))

(declare-fun b!1420934 () Bool)

(declare-fun res!956472 () Bool)

(assert (=> b!1420934 (=> (not res!956472) (not e!803571))))

(declare-datatypes ((List!33500 0))(
  ( (Nil!33497) (Cons!33496 (h!34798 (_ BitVec 64)) (t!48201 List!33500)) )
))
(declare-fun arrayNoDuplicates!0 (array!96993 (_ BitVec 32) List!33500) Bool)

(assert (=> b!1420934 (= res!956472 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33497))))

(declare-fun b!1420935 () Bool)

(declare-fun res!956470 () Bool)

(assert (=> b!1420935 (=> (not res!956470) (not e!803571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96993 (_ BitVec 32)) Bool)

(assert (=> b!1420935 (= res!956470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420936 () Bool)

(declare-fun res!956476 () Bool)

(assert (=> b!1420936 (=> (not res!956476) (not e!803570))))

(assert (=> b!1420936 (= res!956476 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46810 a!2831) j!81) a!2831 mask!2608) lt!626027))))

(assert (= (and start!122710 res!956474) b!1420931))

(assert (= (and b!1420931 res!956478) b!1420930))

(assert (= (and b!1420930 res!956477) b!1420928))

(assert (= (and b!1420928 res!956473) b!1420935))

(assert (= (and b!1420935 res!956470) b!1420934))

(assert (= (and b!1420934 res!956472) b!1420929))

(assert (= (and b!1420929 res!956475) b!1420927))

(assert (= (and b!1420927 res!956471) b!1420932))

(assert (= (and b!1420932 res!956469) b!1420936))

(assert (= (and b!1420936 res!956476) b!1420933))

(declare-fun m!1311527 () Bool)

(assert (=> b!1420933 m!1311527))

(declare-fun m!1311529 () Bool)

(assert (=> b!1420936 m!1311529))

(assert (=> b!1420936 m!1311529))

(declare-fun m!1311531 () Bool)

(assert (=> b!1420936 m!1311531))

(assert (=> b!1420928 m!1311529))

(assert (=> b!1420928 m!1311529))

(declare-fun m!1311533 () Bool)

(assert (=> b!1420928 m!1311533))

(declare-fun m!1311535 () Bool)

(assert (=> b!1420935 m!1311535))

(declare-fun m!1311537 () Bool)

(assert (=> b!1420934 m!1311537))

(declare-fun m!1311539 () Bool)

(assert (=> b!1420930 m!1311539))

(assert (=> b!1420930 m!1311539))

(declare-fun m!1311541 () Bool)

(assert (=> b!1420930 m!1311541))

(assert (=> b!1420927 m!1311529))

(assert (=> b!1420927 m!1311529))

(declare-fun m!1311543 () Bool)

(assert (=> b!1420927 m!1311543))

(assert (=> b!1420927 m!1311543))

(assert (=> b!1420927 m!1311529))

(declare-fun m!1311545 () Bool)

(assert (=> b!1420927 m!1311545))

(declare-fun m!1311547 () Bool)

(assert (=> b!1420932 m!1311547))

(assert (=> b!1420932 m!1311547))

(declare-fun m!1311549 () Bool)

(assert (=> b!1420932 m!1311549))

(declare-fun m!1311551 () Bool)

(assert (=> b!1420932 m!1311551))

(declare-fun m!1311553 () Bool)

(assert (=> b!1420932 m!1311553))

(declare-fun m!1311555 () Bool)

(assert (=> start!122710 m!1311555))

(declare-fun m!1311557 () Bool)

(assert (=> start!122710 m!1311557))

(push 1)

