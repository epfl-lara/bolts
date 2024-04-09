; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130940 () Bool)

(assert start!130940)

(declare-fun res!1052559 () Bool)

(declare-fun e!854754 () Bool)

(assert (=> start!130940 (=> (not res!1052559) (not e!854754))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130940 (= res!1052559 (validMask!0 mask!2480))))

(assert (=> start!130940 e!854754))

(assert (=> start!130940 true))

(declare-datatypes ((array!101965 0))(
  ( (array!101966 (arr!49194 (Array (_ BitVec 32) (_ BitVec 64))) (size!49745 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101965)

(declare-fun array_inv!38139 (array!101965) Bool)

(assert (=> start!130940 (array_inv!38139 a!2792)))

(declare-fun b!1535326 () Bool)

(declare-fun res!1052556 () Bool)

(assert (=> b!1535326 (=> (not res!1052556) (not e!854754))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13349 0))(
  ( (MissingZero!13349 (index!55790 (_ BitVec 32))) (Found!13349 (index!55791 (_ BitVec 32))) (Intermediate!13349 (undefined!14161 Bool) (index!55792 (_ BitVec 32)) (x!137538 (_ BitVec 32))) (Undefined!13349) (MissingVacant!13349 (index!55793 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101965 (_ BitVec 32)) SeekEntryResult!13349)

(assert (=> b!1535326 (= res!1052556 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49194 a!2792) j!64) a!2792 mask!2480) (Found!13349 j!64)))))

(declare-fun b!1535327 () Bool)

(declare-fun res!1052551 () Bool)

(assert (=> b!1535327 (=> (not res!1052551) (not e!854754))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535327 (= res!1052551 (validKeyInArray!0 (select (arr!49194 a!2792) i!951)))))

(declare-fun b!1535328 () Bool)

(declare-fun e!854755 () Bool)

(assert (=> b!1535328 (= e!854755 false)))

(declare-fun lt!663985 () SeekEntryResult!13349)

(declare-fun lt!663984 () (_ BitVec 32))

(assert (=> b!1535328 (= lt!663985 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663984 vacantIndex!5 (select (arr!49194 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535329 () Bool)

(declare-fun res!1052555 () Bool)

(assert (=> b!1535329 (=> (not res!1052555) (not e!854754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101965 (_ BitVec 32)) Bool)

(assert (=> b!1535329 (= res!1052555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535330 () Bool)

(declare-fun res!1052553 () Bool)

(assert (=> b!1535330 (=> (not res!1052553) (not e!854754))))

(assert (=> b!1535330 (= res!1052553 (validKeyInArray!0 (select (arr!49194 a!2792) j!64)))))

(declare-fun b!1535331 () Bool)

(declare-fun res!1052550 () Bool)

(assert (=> b!1535331 (=> (not res!1052550) (not e!854754))))

(declare-datatypes ((List!35848 0))(
  ( (Nil!35845) (Cons!35844 (h!37290 (_ BitVec 64)) (t!50549 List!35848)) )
))
(declare-fun arrayNoDuplicates!0 (array!101965 (_ BitVec 32) List!35848) Bool)

(assert (=> b!1535331 (= res!1052550 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35845))))

(declare-fun b!1535332 () Bool)

(declare-fun res!1052557 () Bool)

(assert (=> b!1535332 (=> (not res!1052557) (not e!854754))))

(assert (=> b!1535332 (= res!1052557 (and (= (size!49745 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49745 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49745 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535333 () Bool)

(assert (=> b!1535333 (= e!854754 e!854755)))

(declare-fun res!1052552 () Bool)

(assert (=> b!1535333 (=> (not res!1052552) (not e!854755))))

(assert (=> b!1535333 (= res!1052552 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663984 #b00000000000000000000000000000000) (bvslt lt!663984 (size!49745 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535333 (= lt!663984 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535334 () Bool)

(declare-fun res!1052554 () Bool)

(assert (=> b!1535334 (=> (not res!1052554) (not e!854754))))

(assert (=> b!1535334 (= res!1052554 (not (= (select (arr!49194 a!2792) index!463) (select (arr!49194 a!2792) j!64))))))

(declare-fun b!1535335 () Bool)

(declare-fun res!1052558 () Bool)

(assert (=> b!1535335 (=> (not res!1052558) (not e!854754))))

(assert (=> b!1535335 (= res!1052558 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49745 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49745 a!2792)) (= (select (arr!49194 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130940 res!1052559) b!1535332))

(assert (= (and b!1535332 res!1052557) b!1535327))

(assert (= (and b!1535327 res!1052551) b!1535330))

(assert (= (and b!1535330 res!1052553) b!1535329))

(assert (= (and b!1535329 res!1052555) b!1535331))

(assert (= (and b!1535331 res!1052550) b!1535335))

(assert (= (and b!1535335 res!1052558) b!1535326))

(assert (= (and b!1535326 res!1052556) b!1535334))

(assert (= (and b!1535334 res!1052554) b!1535333))

(assert (= (and b!1535333 res!1052552) b!1535328))

(declare-fun m!1417891 () Bool)

(assert (=> b!1535327 m!1417891))

(assert (=> b!1535327 m!1417891))

(declare-fun m!1417893 () Bool)

(assert (=> b!1535327 m!1417893))

(declare-fun m!1417895 () Bool)

(assert (=> b!1535329 m!1417895))

(declare-fun m!1417897 () Bool)

(assert (=> b!1535331 m!1417897))

(declare-fun m!1417899 () Bool)

(assert (=> b!1535333 m!1417899))

(declare-fun m!1417901 () Bool)

(assert (=> start!130940 m!1417901))

(declare-fun m!1417903 () Bool)

(assert (=> start!130940 m!1417903))

(declare-fun m!1417905 () Bool)

(assert (=> b!1535335 m!1417905))

(declare-fun m!1417907 () Bool)

(assert (=> b!1535334 m!1417907))

(declare-fun m!1417909 () Bool)

(assert (=> b!1535334 m!1417909))

(assert (=> b!1535326 m!1417909))

(assert (=> b!1535326 m!1417909))

(declare-fun m!1417911 () Bool)

(assert (=> b!1535326 m!1417911))

(assert (=> b!1535328 m!1417909))

(assert (=> b!1535328 m!1417909))

(declare-fun m!1417913 () Bool)

(assert (=> b!1535328 m!1417913))

(assert (=> b!1535330 m!1417909))

(assert (=> b!1535330 m!1417909))

(declare-fun m!1417915 () Bool)

(assert (=> b!1535330 m!1417915))

(push 1)

(assert (not b!1535330))

(assert (not b!1535327))

(assert (not b!1535333))

(assert (not b!1535331))

(assert (not b!1535329))

(assert (not start!130940))

(assert (not b!1535326))

(assert (not b!1535328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

