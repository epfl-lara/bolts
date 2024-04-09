; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122548 () Bool)

(assert start!122548)

(declare-fun res!954762 () Bool)

(declare-fun e!802990 () Bool)

(assert (=> start!122548 (=> (not res!954762) (not e!802990))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122548 (= res!954762 (validMask!0 mask!2608))))

(assert (=> start!122548 e!802990))

(assert (=> start!122548 true))

(declare-datatypes ((array!96870 0))(
  ( (array!96871 (arr!46750 (Array (_ BitVec 32) (_ BitVec 64))) (size!47301 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96870)

(declare-fun array_inv!35695 (array!96870) Bool)

(assert (=> start!122548 (array_inv!35695 a!2831)))

(declare-fun b!1419132 () Bool)

(declare-fun res!954765 () Bool)

(assert (=> b!1419132 (=> (not res!954765) (not e!802990))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419132 (= res!954765 (validKeyInArray!0 (select (arr!46750 a!2831) j!81)))))

(declare-fun b!1419133 () Bool)

(assert (=> b!1419133 (= e!802990 false)))

(declare-fun lt!625681 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419133 (= lt!625681 (toIndex!0 (select (store (arr!46750 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419134 () Bool)

(declare-fun res!954768 () Bool)

(assert (=> b!1419134 (=> (not res!954768) (not e!802990))))

(assert (=> b!1419134 (= res!954768 (and (= (size!47301 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47301 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47301 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419135 () Bool)

(declare-fun res!954764 () Bool)

(assert (=> b!1419135 (=> (not res!954764) (not e!802990))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419135 (= res!954764 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47301 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47301 a!2831))))))

(declare-fun b!1419136 () Bool)

(declare-fun res!954761 () Bool)

(assert (=> b!1419136 (=> (not res!954761) (not e!802990))))

(assert (=> b!1419136 (= res!954761 (validKeyInArray!0 (select (arr!46750 a!2831) i!982)))))

(declare-fun b!1419137 () Bool)

(declare-fun res!954763 () Bool)

(assert (=> b!1419137 (=> (not res!954763) (not e!802990))))

(declare-datatypes ((List!33440 0))(
  ( (Nil!33437) (Cons!33436 (h!34735 (_ BitVec 64)) (t!48141 List!33440)) )
))
(declare-fun arrayNoDuplicates!0 (array!96870 (_ BitVec 32) List!33440) Bool)

(assert (=> b!1419137 (= res!954763 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33437))))

(declare-fun b!1419138 () Bool)

(declare-fun res!954767 () Bool)

(assert (=> b!1419138 (=> (not res!954767) (not e!802990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96870 (_ BitVec 32)) Bool)

(assert (=> b!1419138 (= res!954767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419139 () Bool)

(declare-fun res!954766 () Bool)

(assert (=> b!1419139 (=> (not res!954766) (not e!802990))))

(declare-datatypes ((SeekEntryResult!11057 0))(
  ( (MissingZero!11057 (index!46619 (_ BitVec 32))) (Found!11057 (index!46620 (_ BitVec 32))) (Intermediate!11057 (undefined!11869 Bool) (index!46621 (_ BitVec 32)) (x!128296 (_ BitVec 32))) (Undefined!11057) (MissingVacant!11057 (index!46622 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96870 (_ BitVec 32)) SeekEntryResult!11057)

(assert (=> b!1419139 (= res!954766 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46750 a!2831) j!81) mask!2608) (select (arr!46750 a!2831) j!81) a!2831 mask!2608) (Intermediate!11057 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(assert (= (and start!122548 res!954762) b!1419134))

(assert (= (and b!1419134 res!954768) b!1419136))

(assert (= (and b!1419136 res!954761) b!1419132))

(assert (= (and b!1419132 res!954765) b!1419138))

(assert (= (and b!1419138 res!954767) b!1419137))

(assert (= (and b!1419137 res!954763) b!1419135))

(assert (= (and b!1419135 res!954764) b!1419139))

(assert (= (and b!1419139 res!954766) b!1419133))

(declare-fun m!1309703 () Bool)

(assert (=> b!1419138 m!1309703))

(declare-fun m!1309705 () Bool)

(assert (=> start!122548 m!1309705))

(declare-fun m!1309707 () Bool)

(assert (=> start!122548 m!1309707))

(declare-fun m!1309709 () Bool)

(assert (=> b!1419133 m!1309709))

(declare-fun m!1309711 () Bool)

(assert (=> b!1419133 m!1309711))

(assert (=> b!1419133 m!1309711))

(declare-fun m!1309713 () Bool)

(assert (=> b!1419133 m!1309713))

(declare-fun m!1309715 () Bool)

(assert (=> b!1419137 m!1309715))

(declare-fun m!1309717 () Bool)

(assert (=> b!1419139 m!1309717))

(assert (=> b!1419139 m!1309717))

(declare-fun m!1309719 () Bool)

(assert (=> b!1419139 m!1309719))

(assert (=> b!1419139 m!1309719))

(assert (=> b!1419139 m!1309717))

(declare-fun m!1309721 () Bool)

(assert (=> b!1419139 m!1309721))

(declare-fun m!1309723 () Bool)

(assert (=> b!1419136 m!1309723))

(assert (=> b!1419136 m!1309723))

(declare-fun m!1309725 () Bool)

(assert (=> b!1419136 m!1309725))

(assert (=> b!1419132 m!1309717))

(assert (=> b!1419132 m!1309717))

(declare-fun m!1309727 () Bool)

(assert (=> b!1419132 m!1309727))

(push 1)

(assert (not b!1419132))

(assert (not b!1419139))

(assert (not b!1419133))

(assert (not b!1419137))

(assert (not b!1419136))

(assert (not start!122548))

(assert (not b!1419138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

