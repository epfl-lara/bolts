; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122670 () Bool)

(assert start!122670)

(declare-fun res!955875 () Bool)

(declare-fun e!803362 () Bool)

(assert (=> start!122670 (=> (not res!955875) (not e!803362))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122670 (= res!955875 (validMask!0 mask!2608))))

(assert (=> start!122670 e!803362))

(assert (=> start!122670 true))

(declare-datatypes ((array!96953 0))(
  ( (array!96954 (arr!46790 (Array (_ BitVec 32) (_ BitVec 64))) (size!47341 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96953)

(declare-fun array_inv!35735 (array!96953) Bool)

(assert (=> start!122670 (array_inv!35735 a!2831)))

(declare-fun b!1420327 () Bool)

(declare-fun res!955874 () Bool)

(assert (=> b!1420327 (=> (not res!955874) (not e!803362))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420327 (= res!955874 (validKeyInArray!0 (select (arr!46790 a!2831) j!81)))))

(declare-fun b!1420328 () Bool)

(declare-fun res!955878 () Bool)

(assert (=> b!1420328 (=> (not res!955878) (not e!803362))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420328 (= res!955878 (and (= (size!47341 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47341 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47341 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420329 () Bool)

(declare-fun e!803363 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420329 (= e!803363 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1420330 () Bool)

(declare-fun res!955876 () Bool)

(assert (=> b!1420330 (=> (not res!955876) (not e!803362))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1420330 (= res!955876 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47341 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47341 a!2831))))))

(declare-fun b!1420331 () Bool)

(assert (=> b!1420331 (= e!803362 e!803363)))

(declare-fun res!955877 () Bool)

(assert (=> b!1420331 (=> (not res!955877) (not e!803363))))

(declare-datatypes ((SeekEntryResult!11097 0))(
  ( (MissingZero!11097 (index!46779 (_ BitVec 32))) (Found!11097 (index!46780 (_ BitVec 32))) (Intermediate!11097 (undefined!11909 Bool) (index!46781 (_ BitVec 32)) (x!128446 (_ BitVec 32))) (Undefined!11097) (MissingVacant!11097 (index!46782 (_ BitVec 32))) )
))
(declare-fun lt!625852 () SeekEntryResult!11097)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96953 (_ BitVec 32)) SeekEntryResult!11097)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420331 (= res!955877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46790 a!2831) j!81) mask!2608) (select (arr!46790 a!2831) j!81) a!2831 mask!2608) lt!625852))))

(assert (=> b!1420331 (= lt!625852 (Intermediate!11097 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420332 () Bool)

(declare-fun res!955871 () Bool)

(assert (=> b!1420332 (=> (not res!955871) (not e!803362))))

(assert (=> b!1420332 (= res!955871 (validKeyInArray!0 (select (arr!46790 a!2831) i!982)))))

(declare-fun b!1420333 () Bool)

(declare-fun res!955873 () Bool)

(assert (=> b!1420333 (=> (not res!955873) (not e!803363))))

(assert (=> b!1420333 (= res!955873 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46790 a!2831) j!81) a!2831 mask!2608) lt!625852))))

(declare-fun b!1420334 () Bool)

(declare-fun res!955870 () Bool)

(assert (=> b!1420334 (=> (not res!955870) (not e!803362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96953 (_ BitVec 32)) Bool)

(assert (=> b!1420334 (= res!955870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420335 () Bool)

(declare-fun res!955872 () Bool)

(assert (=> b!1420335 (=> (not res!955872) (not e!803362))))

(declare-datatypes ((List!33480 0))(
  ( (Nil!33477) (Cons!33476 (h!34778 (_ BitVec 64)) (t!48181 List!33480)) )
))
(declare-fun arrayNoDuplicates!0 (array!96953 (_ BitVec 32) List!33480) Bool)

(assert (=> b!1420335 (= res!955872 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33477))))

(declare-fun b!1420336 () Bool)

(declare-fun res!955869 () Bool)

(assert (=> b!1420336 (=> (not res!955869) (not e!803363))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420336 (= res!955869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46790 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46790 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96954 (store (arr!46790 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47341 a!2831)) mask!2608) (Intermediate!11097 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (= (and start!122670 res!955875) b!1420328))

(assert (= (and b!1420328 res!955878) b!1420332))

(assert (= (and b!1420332 res!955871) b!1420327))

(assert (= (and b!1420327 res!955874) b!1420334))

(assert (= (and b!1420334 res!955870) b!1420335))

(assert (= (and b!1420335 res!955872) b!1420330))

(assert (= (and b!1420330 res!955876) b!1420331))

(assert (= (and b!1420331 res!955877) b!1420336))

(assert (= (and b!1420336 res!955869) b!1420333))

(assert (= (and b!1420333 res!955873) b!1420329))

(declare-fun m!1310897 () Bool)

(assert (=> b!1420336 m!1310897))

(declare-fun m!1310899 () Bool)

(assert (=> b!1420336 m!1310899))

(assert (=> b!1420336 m!1310899))

(declare-fun m!1310901 () Bool)

(assert (=> b!1420336 m!1310901))

(assert (=> b!1420336 m!1310901))

(assert (=> b!1420336 m!1310899))

(declare-fun m!1310903 () Bool)

(assert (=> b!1420336 m!1310903))

(declare-fun m!1310905 () Bool)

(assert (=> b!1420334 m!1310905))

(declare-fun m!1310907 () Bool)

(assert (=> start!122670 m!1310907))

(declare-fun m!1310909 () Bool)

(assert (=> start!122670 m!1310909))

(declare-fun m!1310911 () Bool)

(assert (=> b!1420335 m!1310911))

(declare-fun m!1310913 () Bool)

(assert (=> b!1420331 m!1310913))

(assert (=> b!1420331 m!1310913))

(declare-fun m!1310915 () Bool)

(assert (=> b!1420331 m!1310915))

(assert (=> b!1420331 m!1310915))

(assert (=> b!1420331 m!1310913))

(declare-fun m!1310917 () Bool)

(assert (=> b!1420331 m!1310917))

(assert (=> b!1420333 m!1310913))

(assert (=> b!1420333 m!1310913))

(declare-fun m!1310919 () Bool)

(assert (=> b!1420333 m!1310919))

(declare-fun m!1310921 () Bool)

(assert (=> b!1420332 m!1310921))

(assert (=> b!1420332 m!1310921))

(declare-fun m!1310923 () Bool)

(assert (=> b!1420332 m!1310923))

(assert (=> b!1420327 m!1310913))

(assert (=> b!1420327 m!1310913))

(declare-fun m!1310925 () Bool)

(assert (=> b!1420327 m!1310925))

(check-sat (not b!1420332) (not start!122670) (not b!1420334) (not b!1420333) (not b!1420335) (not b!1420327) (not b!1420336) (not b!1420331))
(check-sat)
