; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122652 () Bool)

(assert start!122652)

(declare-fun res!955612 () Bool)

(declare-fun e!803293 () Bool)

(assert (=> start!122652 (=> (not res!955612) (not e!803293))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122652 (= res!955612 (validMask!0 mask!2608))))

(assert (=> start!122652 e!803293))

(assert (=> start!122652 true))

(declare-datatypes ((array!96935 0))(
  ( (array!96936 (arr!46781 (Array (_ BitVec 32) (_ BitVec 64))) (size!47332 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96935)

(declare-fun array_inv!35726 (array!96935) Bool)

(assert (=> start!122652 (array_inv!35726 a!2831)))

(declare-fun b!1420070 () Bool)

(declare-fun res!955617 () Bool)

(assert (=> b!1420070 (=> (not res!955617) (not e!803293))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420070 (= res!955617 (and (= (size!47332 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47332 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47332 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420071 () Bool)

(assert (=> b!1420071 (= e!803293 false)))

(declare-datatypes ((SeekEntryResult!11088 0))(
  ( (MissingZero!11088 (index!46743 (_ BitVec 32))) (Found!11088 (index!46744 (_ BitVec 32))) (Intermediate!11088 (undefined!11900 Bool) (index!46745 (_ BitVec 32)) (x!128413 (_ BitVec 32))) (Undefined!11088) (MissingVacant!11088 (index!46746 (_ BitVec 32))) )
))
(declare-fun lt!625825 () SeekEntryResult!11088)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96935 (_ BitVec 32)) SeekEntryResult!11088)

(assert (=> b!1420071 (= lt!625825 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46781 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420072 () Bool)

(declare-fun res!955620 () Bool)

(assert (=> b!1420072 (=> (not res!955620) (not e!803293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420072 (= res!955620 (validKeyInArray!0 (select (arr!46781 a!2831) i!982)))))

(declare-fun b!1420073 () Bool)

(declare-fun res!955616 () Bool)

(assert (=> b!1420073 (=> (not res!955616) (not e!803293))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420073 (= res!955616 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47332 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47332 a!2831))))))

(declare-fun b!1420074 () Bool)

(declare-fun res!955614 () Bool)

(assert (=> b!1420074 (=> (not res!955614) (not e!803293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96935 (_ BitVec 32)) Bool)

(assert (=> b!1420074 (= res!955614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420075 () Bool)

(declare-fun res!955619 () Bool)

(assert (=> b!1420075 (=> (not res!955619) (not e!803293))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420075 (= res!955619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46781 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46781 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96936 (store (arr!46781 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47332 a!2831)) mask!2608) (Intermediate!11088 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420076 () Bool)

(declare-fun res!955618 () Bool)

(assert (=> b!1420076 (=> (not res!955618) (not e!803293))))

(assert (=> b!1420076 (= res!955618 (validKeyInArray!0 (select (arr!46781 a!2831) j!81)))))

(declare-fun b!1420077 () Bool)

(declare-fun res!955613 () Bool)

(assert (=> b!1420077 (=> (not res!955613) (not e!803293))))

(assert (=> b!1420077 (= res!955613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46781 a!2831) j!81) mask!2608) (select (arr!46781 a!2831) j!81) a!2831 mask!2608) (Intermediate!11088 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420078 () Bool)

(declare-fun res!955615 () Bool)

(assert (=> b!1420078 (=> (not res!955615) (not e!803293))))

(declare-datatypes ((List!33471 0))(
  ( (Nil!33468) (Cons!33467 (h!34769 (_ BitVec 64)) (t!48172 List!33471)) )
))
(declare-fun arrayNoDuplicates!0 (array!96935 (_ BitVec 32) List!33471) Bool)

(assert (=> b!1420078 (= res!955615 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33468))))

(assert (= (and start!122652 res!955612) b!1420070))

(assert (= (and b!1420070 res!955617) b!1420072))

(assert (= (and b!1420072 res!955620) b!1420076))

(assert (= (and b!1420076 res!955618) b!1420074))

(assert (= (and b!1420074 res!955614) b!1420078))

(assert (= (and b!1420078 res!955615) b!1420073))

(assert (= (and b!1420073 res!955616) b!1420077))

(assert (= (and b!1420077 res!955613) b!1420075))

(assert (= (and b!1420075 res!955619) b!1420071))

(declare-fun m!1310627 () Bool)

(assert (=> b!1420071 m!1310627))

(assert (=> b!1420071 m!1310627))

(declare-fun m!1310629 () Bool)

(assert (=> b!1420071 m!1310629))

(declare-fun m!1310631 () Bool)

(assert (=> b!1420075 m!1310631))

(declare-fun m!1310633 () Bool)

(assert (=> b!1420075 m!1310633))

(assert (=> b!1420075 m!1310633))

(declare-fun m!1310635 () Bool)

(assert (=> b!1420075 m!1310635))

(assert (=> b!1420075 m!1310635))

(assert (=> b!1420075 m!1310633))

(declare-fun m!1310637 () Bool)

(assert (=> b!1420075 m!1310637))

(assert (=> b!1420077 m!1310627))

(assert (=> b!1420077 m!1310627))

(declare-fun m!1310639 () Bool)

(assert (=> b!1420077 m!1310639))

(assert (=> b!1420077 m!1310639))

(assert (=> b!1420077 m!1310627))

(declare-fun m!1310641 () Bool)

(assert (=> b!1420077 m!1310641))

(assert (=> b!1420076 m!1310627))

(assert (=> b!1420076 m!1310627))

(declare-fun m!1310643 () Bool)

(assert (=> b!1420076 m!1310643))

(declare-fun m!1310645 () Bool)

(assert (=> start!122652 m!1310645))

(declare-fun m!1310647 () Bool)

(assert (=> start!122652 m!1310647))

(declare-fun m!1310649 () Bool)

(assert (=> b!1420074 m!1310649))

(declare-fun m!1310651 () Bool)

(assert (=> b!1420072 m!1310651))

(assert (=> b!1420072 m!1310651))

(declare-fun m!1310653 () Bool)

(assert (=> b!1420072 m!1310653))

(declare-fun m!1310655 () Bool)

(assert (=> b!1420078 m!1310655))

(check-sat (not b!1420074) (not b!1420075) (not b!1420077) (not start!122652) (not b!1420076) (not b!1420072) (not b!1420071) (not b!1420078))
