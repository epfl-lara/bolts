; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119168 () Bool)

(assert start!119168)

(declare-fun b!1389671 () Bool)

(declare-fun res!929943 () Bool)

(declare-fun e!787129 () Bool)

(assert (=> b!1389671 (=> (not res!929943) (not e!787129))))

(declare-datatypes ((array!95023 0))(
  ( (array!95024 (arr!45873 (Array (_ BitVec 32) (_ BitVec 64))) (size!46424 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95023)

(declare-datatypes ((List!32572 0))(
  ( (Nil!32569) (Cons!32568 (h!33786 (_ BitVec 64)) (t!47273 List!32572)) )
))
(declare-fun arrayNoDuplicates!0 (array!95023 (_ BitVec 32) List!32572) Bool)

(assert (=> b!1389671 (= res!929943 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32569))))

(declare-fun b!1389672 () Bool)

(declare-fun res!929942 () Bool)

(assert (=> b!1389672 (=> (not res!929942) (not e!787129))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389672 (= res!929942 (and (= (size!46424 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46424 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46424 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389673 () Bool)

(declare-fun res!929945 () Bool)

(assert (=> b!1389673 (=> (not res!929945) (not e!787129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389673 (= res!929945 (validKeyInArray!0 (select (arr!45873 a!2901) i!1037)))))

(declare-fun res!929941 () Bool)

(assert (=> start!119168 (=> (not res!929941) (not e!787129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119168 (= res!929941 (validMask!0 mask!2840))))

(assert (=> start!119168 e!787129))

(assert (=> start!119168 true))

(declare-fun array_inv!34818 (array!95023) Bool)

(assert (=> start!119168 (array_inv!34818 a!2901)))

(declare-fun b!1389674 () Bool)

(declare-fun res!929944 () Bool)

(assert (=> b!1389674 (=> (not res!929944) (not e!787129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95023 (_ BitVec 32)) Bool)

(assert (=> b!1389674 (= res!929944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389675 () Bool)

(assert (=> b!1389675 (= e!787129 false)))

(declare-datatypes ((SeekEntryResult!10212 0))(
  ( (MissingZero!10212 (index!43218 (_ BitVec 32))) (Found!10212 (index!43219 (_ BitVec 32))) (Intermediate!10212 (undefined!11024 Bool) (index!43220 (_ BitVec 32)) (x!124909 (_ BitVec 32))) (Undefined!10212) (MissingVacant!10212 (index!43221 (_ BitVec 32))) )
))
(declare-fun lt!610558 () SeekEntryResult!10212)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95023 (_ BitVec 32)) SeekEntryResult!10212)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389675 (= lt!610558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45873 a!2901) j!112) mask!2840) (select (arr!45873 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389676 () Bool)

(declare-fun res!929946 () Bool)

(assert (=> b!1389676 (=> (not res!929946) (not e!787129))))

(assert (=> b!1389676 (= res!929946 (validKeyInArray!0 (select (arr!45873 a!2901) j!112)))))

(assert (= (and start!119168 res!929941) b!1389672))

(assert (= (and b!1389672 res!929942) b!1389673))

(assert (= (and b!1389673 res!929945) b!1389676))

(assert (= (and b!1389676 res!929946) b!1389674))

(assert (= (and b!1389674 res!929944) b!1389671))

(assert (= (and b!1389671 res!929943) b!1389675))

(declare-fun m!1275399 () Bool)

(assert (=> b!1389673 m!1275399))

(assert (=> b!1389673 m!1275399))

(declare-fun m!1275401 () Bool)

(assert (=> b!1389673 m!1275401))

(declare-fun m!1275403 () Bool)

(assert (=> b!1389671 m!1275403))

(declare-fun m!1275405 () Bool)

(assert (=> b!1389674 m!1275405))

(declare-fun m!1275407 () Bool)

(assert (=> b!1389676 m!1275407))

(assert (=> b!1389676 m!1275407))

(declare-fun m!1275409 () Bool)

(assert (=> b!1389676 m!1275409))

(declare-fun m!1275411 () Bool)

(assert (=> start!119168 m!1275411))

(declare-fun m!1275413 () Bool)

(assert (=> start!119168 m!1275413))

(assert (=> b!1389675 m!1275407))

(assert (=> b!1389675 m!1275407))

(declare-fun m!1275415 () Bool)

(assert (=> b!1389675 m!1275415))

(assert (=> b!1389675 m!1275415))

(assert (=> b!1389675 m!1275407))

(declare-fun m!1275417 () Bool)

(assert (=> b!1389675 m!1275417))

(push 1)

(assert (not b!1389671))

(assert (not b!1389675))

(assert (not b!1389673))

(assert (not b!1389674))

(assert (not b!1389676))

(assert (not start!119168))

(check-sat)

(pop 1)

(push 1)

