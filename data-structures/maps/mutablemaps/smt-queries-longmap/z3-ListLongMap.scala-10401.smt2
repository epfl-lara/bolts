; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122610 () Bool)

(assert start!122610)

(declare-fun b!1419539 () Bool)

(declare-fun res!955081 () Bool)

(declare-fun e!803165 () Bool)

(assert (=> b!1419539 (=> (not res!955081) (not e!803165))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((array!96893 0))(
  ( (array!96894 (arr!46760 (Array (_ BitVec 32) (_ BitVec 64))) (size!47311 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96893)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11067 0))(
  ( (MissingZero!11067 (index!46659 (_ BitVec 32))) (Found!11067 (index!46660 (_ BitVec 32))) (Intermediate!11067 (undefined!11879 Bool) (index!46661 (_ BitVec 32)) (x!128336 (_ BitVec 32))) (Undefined!11067) (MissingVacant!11067 (index!46662 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96893 (_ BitVec 32)) SeekEntryResult!11067)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419539 (= res!955081 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46760 a!2831) j!81) mask!2608) (select (arr!46760 a!2831) j!81) a!2831 mask!2608) (Intermediate!11067 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419540 () Bool)

(declare-fun e!803163 () Bool)

(assert (=> b!1419540 (= e!803165 e!803163)))

(declare-fun res!955085 () Bool)

(assert (=> b!1419540 (=> (not res!955085) (not e!803163))))

(declare-fun lt!625780 () (_ BitVec 32))

(assert (=> b!1419540 (= res!955085 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge lt!625780 #b00000000000000000000000000000000) (bvslt lt!625780 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419540 (= lt!625780 (toIndex!0 (select (store (arr!46760 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419541 () Bool)

(declare-fun res!955088 () Bool)

(assert (=> b!1419541 (=> (not res!955088) (not e!803165))))

(declare-datatypes ((List!33450 0))(
  ( (Nil!33447) (Cons!33446 (h!34748 (_ BitVec 64)) (t!48151 List!33450)) )
))
(declare-fun arrayNoDuplicates!0 (array!96893 (_ BitVec 32) List!33450) Bool)

(assert (=> b!1419541 (= res!955088 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33447))))

(declare-fun b!1419542 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419542 (= e!803163 (not (validKeyInArray!0 (select (store (arr!46760 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))))

(declare-fun b!1419543 () Bool)

(declare-fun res!955089 () Bool)

(assert (=> b!1419543 (=> (not res!955089) (not e!803165))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419543 (= res!955089 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47311 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47311 a!2831))))))

(declare-fun b!1419544 () Bool)

(declare-fun res!955086 () Bool)

(assert (=> b!1419544 (=> (not res!955086) (not e!803165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96893 (_ BitVec 32)) Bool)

(assert (=> b!1419544 (= res!955086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419545 () Bool)

(declare-fun res!955083 () Bool)

(assert (=> b!1419545 (=> (not res!955083) (not e!803165))))

(assert (=> b!1419545 (= res!955083 (validKeyInArray!0 (select (arr!46760 a!2831) j!81)))))

(declare-fun b!1419546 () Bool)

(declare-fun res!955082 () Bool)

(assert (=> b!1419546 (=> (not res!955082) (not e!803165))))

(assert (=> b!1419546 (= res!955082 (validKeyInArray!0 (select (arr!46760 a!2831) i!982)))))

(declare-fun b!1419547 () Bool)

(declare-fun res!955087 () Bool)

(assert (=> b!1419547 (=> (not res!955087) (not e!803165))))

(assert (=> b!1419547 (= res!955087 (and (= (size!47311 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47311 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47311 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!955084 () Bool)

(assert (=> start!122610 (=> (not res!955084) (not e!803165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122610 (= res!955084 (validMask!0 mask!2608))))

(assert (=> start!122610 e!803165))

(assert (=> start!122610 true))

(declare-fun array_inv!35705 (array!96893) Bool)

(assert (=> start!122610 (array_inv!35705 a!2831)))

(assert (= (and start!122610 res!955084) b!1419547))

(assert (= (and b!1419547 res!955087) b!1419546))

(assert (= (and b!1419546 res!955082) b!1419545))

(assert (= (and b!1419545 res!955083) b!1419544))

(assert (= (and b!1419544 res!955086) b!1419541))

(assert (= (and b!1419541 res!955088) b!1419543))

(assert (= (and b!1419543 res!955089) b!1419539))

(assert (= (and b!1419539 res!955081) b!1419540))

(assert (= (and b!1419540 res!955085) b!1419542))

(declare-fun m!1310037 () Bool)

(assert (=> b!1419544 m!1310037))

(declare-fun m!1310039 () Bool)

(assert (=> start!122610 m!1310039))

(declare-fun m!1310041 () Bool)

(assert (=> start!122610 m!1310041))

(declare-fun m!1310043 () Bool)

(assert (=> b!1419539 m!1310043))

(assert (=> b!1419539 m!1310043))

(declare-fun m!1310045 () Bool)

(assert (=> b!1419539 m!1310045))

(assert (=> b!1419539 m!1310045))

(assert (=> b!1419539 m!1310043))

(declare-fun m!1310047 () Bool)

(assert (=> b!1419539 m!1310047))

(declare-fun m!1310049 () Bool)

(assert (=> b!1419540 m!1310049))

(declare-fun m!1310051 () Bool)

(assert (=> b!1419540 m!1310051))

(assert (=> b!1419540 m!1310051))

(declare-fun m!1310053 () Bool)

(assert (=> b!1419540 m!1310053))

(assert (=> b!1419542 m!1310049))

(assert (=> b!1419542 m!1310051))

(assert (=> b!1419542 m!1310051))

(declare-fun m!1310055 () Bool)

(assert (=> b!1419542 m!1310055))

(declare-fun m!1310057 () Bool)

(assert (=> b!1419546 m!1310057))

(assert (=> b!1419546 m!1310057))

(declare-fun m!1310059 () Bool)

(assert (=> b!1419546 m!1310059))

(declare-fun m!1310061 () Bool)

(assert (=> b!1419541 m!1310061))

(assert (=> b!1419545 m!1310043))

(assert (=> b!1419545 m!1310043))

(declare-fun m!1310063 () Bool)

(assert (=> b!1419545 m!1310063))

(check-sat (not start!122610) (not b!1419544) (not b!1419539) (not b!1419540) (not b!1419542) (not b!1419545) (not b!1419541) (not b!1419546))
