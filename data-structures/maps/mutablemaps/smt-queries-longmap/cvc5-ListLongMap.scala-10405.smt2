; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122632 () Bool)

(assert start!122632)

(declare-fun b!1419818 () Bool)

(declare-fun res!955364 () Bool)

(declare-fun e!803233 () Bool)

(assert (=> b!1419818 (=> (not res!955364) (not e!803233))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!96915 0))(
  ( (array!96916 (arr!46771 (Array (_ BitVec 32) (_ BitVec 64))) (size!47322 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96915)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11078 0))(
  ( (MissingZero!11078 (index!46703 (_ BitVec 32))) (Found!11078 (index!46704 (_ BitVec 32))) (Intermediate!11078 (undefined!11890 Bool) (index!46705 (_ BitVec 32)) (x!128379 (_ BitVec 32))) (Undefined!11078) (MissingVacant!11078 (index!46706 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96915 (_ BitVec 32)) SeekEntryResult!11078)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419818 (= res!955364 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46771 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46771 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96916 (store (arr!46771 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47322 a!2831)) mask!2608) (Intermediate!11078 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1419819 () Bool)

(declare-fun res!955365 () Bool)

(assert (=> b!1419819 (=> (not res!955365) (not e!803233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419819 (= res!955365 (validKeyInArray!0 (select (arr!46771 a!2831) i!982)))))

(declare-fun b!1419820 () Bool)

(declare-fun res!955367 () Bool)

(assert (=> b!1419820 (=> (not res!955367) (not e!803233))))

(assert (=> b!1419820 (= res!955367 (and (= (size!47322 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47322 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47322 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!955360 () Bool)

(assert (=> start!122632 (=> (not res!955360) (not e!803233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122632 (= res!955360 (validMask!0 mask!2608))))

(assert (=> start!122632 e!803233))

(assert (=> start!122632 true))

(declare-fun array_inv!35716 (array!96915) Bool)

(assert (=> start!122632 (array_inv!35716 a!2831)))

(declare-fun b!1419821 () Bool)

(declare-fun res!955366 () Bool)

(assert (=> b!1419821 (=> (not res!955366) (not e!803233))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419821 (= res!955366 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47322 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47322 a!2831))))))

(declare-fun b!1419822 () Bool)

(declare-fun res!955362 () Bool)

(assert (=> b!1419822 (=> (not res!955362) (not e!803233))))

(declare-datatypes ((List!33461 0))(
  ( (Nil!33458) (Cons!33457 (h!34759 (_ BitVec 64)) (t!48162 List!33461)) )
))
(declare-fun arrayNoDuplicates!0 (array!96915 (_ BitVec 32) List!33461) Bool)

(assert (=> b!1419822 (= res!955362 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33458))))

(declare-fun b!1419823 () Bool)

(declare-fun res!955363 () Bool)

(assert (=> b!1419823 (=> (not res!955363) (not e!803233))))

(assert (=> b!1419823 (= res!955363 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46771 a!2831) j!81) mask!2608) (select (arr!46771 a!2831) j!81) a!2831 mask!2608) (Intermediate!11078 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419824 () Bool)

(assert (=> b!1419824 (= e!803233 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1419825 () Bool)

(declare-fun res!955361 () Bool)

(assert (=> b!1419825 (=> (not res!955361) (not e!803233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96915 (_ BitVec 32)) Bool)

(assert (=> b!1419825 (= res!955361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419826 () Bool)

(declare-fun res!955368 () Bool)

(assert (=> b!1419826 (=> (not res!955368) (not e!803233))))

(assert (=> b!1419826 (= res!955368 (validKeyInArray!0 (select (arr!46771 a!2831) j!81)))))

(assert (= (and start!122632 res!955360) b!1419820))

(assert (= (and b!1419820 res!955367) b!1419819))

(assert (= (and b!1419819 res!955365) b!1419826))

(assert (= (and b!1419826 res!955368) b!1419825))

(assert (= (and b!1419825 res!955361) b!1419822))

(assert (= (and b!1419822 res!955362) b!1419821))

(assert (= (and b!1419821 res!955366) b!1419823))

(assert (= (and b!1419823 res!955363) b!1419818))

(assert (= (and b!1419818 res!955364) b!1419824))

(declare-fun m!1310345 () Bool)

(assert (=> b!1419822 m!1310345))

(declare-fun m!1310347 () Bool)

(assert (=> start!122632 m!1310347))

(declare-fun m!1310349 () Bool)

(assert (=> start!122632 m!1310349))

(declare-fun m!1310351 () Bool)

(assert (=> b!1419825 m!1310351))

(declare-fun m!1310353 () Bool)

(assert (=> b!1419819 m!1310353))

(assert (=> b!1419819 m!1310353))

(declare-fun m!1310355 () Bool)

(assert (=> b!1419819 m!1310355))

(declare-fun m!1310357 () Bool)

(assert (=> b!1419818 m!1310357))

(declare-fun m!1310359 () Bool)

(assert (=> b!1419818 m!1310359))

(assert (=> b!1419818 m!1310359))

(declare-fun m!1310361 () Bool)

(assert (=> b!1419818 m!1310361))

(assert (=> b!1419818 m!1310361))

(assert (=> b!1419818 m!1310359))

(declare-fun m!1310363 () Bool)

(assert (=> b!1419818 m!1310363))

(declare-fun m!1310365 () Bool)

(assert (=> b!1419823 m!1310365))

(assert (=> b!1419823 m!1310365))

(declare-fun m!1310367 () Bool)

(assert (=> b!1419823 m!1310367))

(assert (=> b!1419823 m!1310367))

(assert (=> b!1419823 m!1310365))

(declare-fun m!1310369 () Bool)

(assert (=> b!1419823 m!1310369))

(assert (=> b!1419826 m!1310365))

(assert (=> b!1419826 m!1310365))

(declare-fun m!1310371 () Bool)

(assert (=> b!1419826 m!1310371))

(push 1)

(assert (not b!1419825))

(assert (not b!1419822))

(assert (not b!1419818))

(assert (not b!1419826))

(assert (not b!1419823))

(assert (not start!122632))

(assert (not b!1419819))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

