; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122704 () Bool)

(assert start!122704)

(declare-fun b!1420837 () Bool)

(declare-fun res!956379 () Bool)

(declare-fun e!803534 () Bool)

(assert (=> b!1420837 (=> (not res!956379) (not e!803534))))

(declare-datatypes ((array!96987 0))(
  ( (array!96988 (arr!46807 (Array (_ BitVec 32) (_ BitVec 64))) (size!47358 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96987)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420837 (= res!956379 (validKeyInArray!0 (select (arr!46807 a!2831) i!982)))))

(declare-fun b!1420838 () Bool)

(declare-fun e!803537 () Bool)

(assert (=> b!1420838 (= e!803534 e!803537)))

(declare-fun res!956381 () Bool)

(assert (=> b!1420838 (=> (not res!956381) (not e!803537))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11114 0))(
  ( (MissingZero!11114 (index!46847 (_ BitVec 32))) (Found!11114 (index!46848 (_ BitVec 32))) (Intermediate!11114 (undefined!11926 Bool) (index!46849 (_ BitVec 32)) (x!128511 (_ BitVec 32))) (Undefined!11114) (MissingVacant!11114 (index!46850 (_ BitVec 32))) )
))
(declare-fun lt!625992 () SeekEntryResult!11114)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96987 (_ BitVec 32)) SeekEntryResult!11114)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420838 (= res!956381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46807 a!2831) j!81) mask!2608) (select (arr!46807 a!2831) j!81) a!2831 mask!2608) lt!625992))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420838 (= lt!625992 (Intermediate!11114 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420839 () Bool)

(declare-fun e!803536 () Bool)

(assert (=> b!1420839 (= e!803537 e!803536)))

(declare-fun res!956385 () Bool)

(assert (=> b!1420839 (=> (not res!956385) (not e!803536))))

(declare-fun lt!625990 () array!96987)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun lt!625991 () (_ BitVec 64))

(assert (=> b!1420839 (= res!956385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625991 mask!2608) lt!625991 lt!625990 mask!2608) (Intermediate!11114 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420839 (= lt!625991 (select (store (arr!46807 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420839 (= lt!625990 (array!96988 (store (arr!46807 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47358 a!2831)))))

(declare-fun b!1420840 () Bool)

(declare-fun res!956386 () Bool)

(assert (=> b!1420840 (=> (not res!956386) (not e!803534))))

(assert (=> b!1420840 (= res!956386 (and (= (size!47358 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47358 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47358 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!956387 () Bool)

(assert (=> start!122704 (=> (not res!956387) (not e!803534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122704 (= res!956387 (validMask!0 mask!2608))))

(assert (=> start!122704 e!803534))

(assert (=> start!122704 true))

(declare-fun array_inv!35752 (array!96987) Bool)

(assert (=> start!122704 (array_inv!35752 a!2831)))

(declare-fun b!1420841 () Bool)

(declare-fun res!956380 () Bool)

(assert (=> b!1420841 (=> (not res!956380) (not e!803534))))

(assert (=> b!1420841 (= res!956380 (validKeyInArray!0 (select (arr!46807 a!2831) j!81)))))

(declare-fun b!1420842 () Bool)

(assert (=> b!1420842 (= e!803536 false)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!625993 () SeekEntryResult!11114)

(assert (=> b!1420842 (= lt!625993 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625991 lt!625990 mask!2608))))

(declare-fun b!1420843 () Bool)

(declare-fun res!956388 () Bool)

(assert (=> b!1420843 (=> (not res!956388) (not e!803534))))

(declare-datatypes ((List!33497 0))(
  ( (Nil!33494) (Cons!33493 (h!34795 (_ BitVec 64)) (t!48198 List!33497)) )
))
(declare-fun arrayNoDuplicates!0 (array!96987 (_ BitVec 32) List!33497) Bool)

(assert (=> b!1420843 (= res!956388 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33494))))

(declare-fun b!1420844 () Bool)

(declare-fun res!956384 () Bool)

(assert (=> b!1420844 (=> (not res!956384) (not e!803536))))

(assert (=> b!1420844 (= res!956384 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46807 a!2831) j!81) a!2831 mask!2608) lt!625992))))

(declare-fun b!1420845 () Bool)

(declare-fun res!956382 () Bool)

(assert (=> b!1420845 (=> (not res!956382) (not e!803534))))

(assert (=> b!1420845 (= res!956382 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47358 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47358 a!2831))))))

(declare-fun b!1420846 () Bool)

(declare-fun res!956383 () Bool)

(assert (=> b!1420846 (=> (not res!956383) (not e!803534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96987 (_ BitVec 32)) Bool)

(assert (=> b!1420846 (= res!956383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122704 res!956387) b!1420840))

(assert (= (and b!1420840 res!956386) b!1420837))

(assert (= (and b!1420837 res!956379) b!1420841))

(assert (= (and b!1420841 res!956380) b!1420846))

(assert (= (and b!1420846 res!956383) b!1420843))

(assert (= (and b!1420843 res!956388) b!1420845))

(assert (= (and b!1420845 res!956382) b!1420838))

(assert (= (and b!1420838 res!956381) b!1420839))

(assert (= (and b!1420839 res!956385) b!1420844))

(assert (= (and b!1420844 res!956384) b!1420842))

(declare-fun m!1311431 () Bool)

(assert (=> b!1420843 m!1311431))

(declare-fun m!1311433 () Bool)

(assert (=> b!1420837 m!1311433))

(assert (=> b!1420837 m!1311433))

(declare-fun m!1311435 () Bool)

(assert (=> b!1420837 m!1311435))

(declare-fun m!1311437 () Bool)

(assert (=> b!1420844 m!1311437))

(assert (=> b!1420844 m!1311437))

(declare-fun m!1311439 () Bool)

(assert (=> b!1420844 m!1311439))

(declare-fun m!1311441 () Bool)

(assert (=> b!1420839 m!1311441))

(assert (=> b!1420839 m!1311441))

(declare-fun m!1311443 () Bool)

(assert (=> b!1420839 m!1311443))

(declare-fun m!1311445 () Bool)

(assert (=> b!1420839 m!1311445))

(declare-fun m!1311447 () Bool)

(assert (=> b!1420839 m!1311447))

(declare-fun m!1311449 () Bool)

(assert (=> b!1420846 m!1311449))

(assert (=> b!1420838 m!1311437))

(assert (=> b!1420838 m!1311437))

(declare-fun m!1311451 () Bool)

(assert (=> b!1420838 m!1311451))

(assert (=> b!1420838 m!1311451))

(assert (=> b!1420838 m!1311437))

(declare-fun m!1311453 () Bool)

(assert (=> b!1420838 m!1311453))

(declare-fun m!1311455 () Bool)

(assert (=> start!122704 m!1311455))

(declare-fun m!1311457 () Bool)

(assert (=> start!122704 m!1311457))

(declare-fun m!1311459 () Bool)

(assert (=> b!1420842 m!1311459))

(assert (=> b!1420841 m!1311437))

(assert (=> b!1420841 m!1311437))

(declare-fun m!1311461 () Bool)

(assert (=> b!1420841 m!1311461))

(push 1)

