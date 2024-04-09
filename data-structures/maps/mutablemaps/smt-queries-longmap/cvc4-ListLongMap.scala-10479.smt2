; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123296 () Bool)

(assert start!123296)

(declare-fun b!1429168 () Bool)

(declare-fun e!807053 () Bool)

(assert (=> b!1429168 (= e!807053 (not true))))

(declare-fun e!807051 () Bool)

(assert (=> b!1429168 e!807051))

(declare-fun res!963909 () Bool)

(assert (=> b!1429168 (=> (not res!963909) (not e!807051))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97375 0))(
  ( (array!97376 (arr!46995 (Array (_ BitVec 32) (_ BitVec 64))) (size!47546 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97375)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97375 (_ BitVec 32)) Bool)

(assert (=> b!1429168 (= res!963909 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48286 0))(
  ( (Unit!48287) )
))
(declare-fun lt!629236 () Unit!48286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48286)

(assert (=> b!1429168 (= lt!629236 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429169 () Bool)

(declare-fun res!963916 () Bool)

(declare-fun e!807050 () Bool)

(assert (=> b!1429169 (=> (not res!963916) (not e!807050))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429169 (= res!963916 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47546 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47546 a!2831))))))

(declare-fun b!1429170 () Bool)

(declare-fun res!963910 () Bool)

(assert (=> b!1429170 (=> (not res!963910) (not e!807053))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429170 (= res!963910 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429171 () Bool)

(declare-fun res!963918 () Bool)

(assert (=> b!1429171 (=> (not res!963918) (not e!807050))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429171 (= res!963918 (validKeyInArray!0 (select (arr!46995 a!2831) i!982)))))

(declare-fun b!1429172 () Bool)

(declare-fun res!963913 () Bool)

(assert (=> b!1429172 (=> (not res!963913) (not e!807053))))

(declare-datatypes ((SeekEntryResult!11296 0))(
  ( (MissingZero!11296 (index!47575 (_ BitVec 32))) (Found!11296 (index!47576 (_ BitVec 32))) (Intermediate!11296 (undefined!12108 Bool) (index!47577 (_ BitVec 32)) (x!129213 (_ BitVec 32))) (Undefined!11296) (MissingVacant!11296 (index!47578 (_ BitVec 32))) )
))
(declare-fun lt!629233 () SeekEntryResult!11296)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97375 (_ BitVec 32)) SeekEntryResult!11296)

(assert (=> b!1429172 (= res!963913 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46995 a!2831) j!81) a!2831 mask!2608) lt!629233))))

(declare-fun res!963917 () Bool)

(assert (=> start!123296 (=> (not res!963917) (not e!807050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123296 (= res!963917 (validMask!0 mask!2608))))

(assert (=> start!123296 e!807050))

(assert (=> start!123296 true))

(declare-fun array_inv!35940 (array!97375) Bool)

(assert (=> start!123296 (array_inv!35940 a!2831)))

(declare-fun b!1429173 () Bool)

(declare-fun res!963915 () Bool)

(assert (=> b!1429173 (=> (not res!963915) (not e!807050))))

(declare-datatypes ((List!33685 0))(
  ( (Nil!33682) (Cons!33681 (h!34995 (_ BitVec 64)) (t!48386 List!33685)) )
))
(declare-fun arrayNoDuplicates!0 (array!97375 (_ BitVec 32) List!33685) Bool)

(assert (=> b!1429173 (= res!963915 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33682))))

(declare-fun b!1429174 () Bool)

(declare-fun res!963914 () Bool)

(assert (=> b!1429174 (=> (not res!963914) (not e!807053))))

(declare-fun lt!629235 () array!97375)

(declare-fun lt!629234 () SeekEntryResult!11296)

(declare-fun lt!629232 () (_ BitVec 64))

(assert (=> b!1429174 (= res!963914 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629232 lt!629235 mask!2608) lt!629234))))

(declare-fun b!1429175 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97375 (_ BitVec 32)) SeekEntryResult!11296)

(assert (=> b!1429175 (= e!807051 (= (seekEntryOrOpen!0 (select (arr!46995 a!2831) j!81) a!2831 mask!2608) (Found!11296 j!81)))))

(declare-fun b!1429176 () Bool)

(declare-fun res!963908 () Bool)

(assert (=> b!1429176 (=> (not res!963908) (not e!807050))))

(assert (=> b!1429176 (= res!963908 (validKeyInArray!0 (select (arr!46995 a!2831) j!81)))))

(declare-fun b!1429177 () Bool)

(declare-fun res!963912 () Bool)

(assert (=> b!1429177 (=> (not res!963912) (not e!807050))))

(assert (=> b!1429177 (= res!963912 (and (= (size!47546 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47546 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47546 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429178 () Bool)

(declare-fun e!807052 () Bool)

(assert (=> b!1429178 (= e!807052 e!807053)))

(declare-fun res!963906 () Bool)

(assert (=> b!1429178 (=> (not res!963906) (not e!807053))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429178 (= res!963906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629232 mask!2608) lt!629232 lt!629235 mask!2608) lt!629234))))

(assert (=> b!1429178 (= lt!629234 (Intermediate!11296 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429178 (= lt!629232 (select (store (arr!46995 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429178 (= lt!629235 (array!97376 (store (arr!46995 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47546 a!2831)))))

(declare-fun b!1429179 () Bool)

(assert (=> b!1429179 (= e!807050 e!807052)))

(declare-fun res!963911 () Bool)

(assert (=> b!1429179 (=> (not res!963911) (not e!807052))))

(assert (=> b!1429179 (= res!963911 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46995 a!2831) j!81) mask!2608) (select (arr!46995 a!2831) j!81) a!2831 mask!2608) lt!629233))))

(assert (=> b!1429179 (= lt!629233 (Intermediate!11296 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429180 () Bool)

(declare-fun res!963907 () Bool)

(assert (=> b!1429180 (=> (not res!963907) (not e!807050))))

(assert (=> b!1429180 (= res!963907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123296 res!963917) b!1429177))

(assert (= (and b!1429177 res!963912) b!1429171))

(assert (= (and b!1429171 res!963918) b!1429176))

(assert (= (and b!1429176 res!963908) b!1429180))

(assert (= (and b!1429180 res!963907) b!1429173))

(assert (= (and b!1429173 res!963915) b!1429169))

(assert (= (and b!1429169 res!963916) b!1429179))

(assert (= (and b!1429179 res!963911) b!1429178))

(assert (= (and b!1429178 res!963906) b!1429172))

(assert (= (and b!1429172 res!963913) b!1429174))

(assert (= (and b!1429174 res!963914) b!1429170))

(assert (= (and b!1429170 res!963910) b!1429168))

(assert (= (and b!1429168 res!963909) b!1429175))

(declare-fun m!1319331 () Bool)

(assert (=> b!1429175 m!1319331))

(assert (=> b!1429175 m!1319331))

(declare-fun m!1319333 () Bool)

(assert (=> b!1429175 m!1319333))

(assert (=> b!1429179 m!1319331))

(assert (=> b!1429179 m!1319331))

(declare-fun m!1319335 () Bool)

(assert (=> b!1429179 m!1319335))

(assert (=> b!1429179 m!1319335))

(assert (=> b!1429179 m!1319331))

(declare-fun m!1319337 () Bool)

(assert (=> b!1429179 m!1319337))

(assert (=> b!1429172 m!1319331))

(assert (=> b!1429172 m!1319331))

(declare-fun m!1319339 () Bool)

(assert (=> b!1429172 m!1319339))

(declare-fun m!1319341 () Bool)

(assert (=> b!1429178 m!1319341))

(assert (=> b!1429178 m!1319341))

(declare-fun m!1319343 () Bool)

(assert (=> b!1429178 m!1319343))

(declare-fun m!1319345 () Bool)

(assert (=> b!1429178 m!1319345))

(declare-fun m!1319347 () Bool)

(assert (=> b!1429178 m!1319347))

(declare-fun m!1319349 () Bool)

(assert (=> b!1429168 m!1319349))

(declare-fun m!1319351 () Bool)

(assert (=> b!1429168 m!1319351))

(assert (=> b!1429176 m!1319331))

(assert (=> b!1429176 m!1319331))

(declare-fun m!1319353 () Bool)

(assert (=> b!1429176 m!1319353))

(declare-fun m!1319355 () Bool)

(assert (=> b!1429174 m!1319355))

(declare-fun m!1319357 () Bool)

(assert (=> b!1429171 m!1319357))

(assert (=> b!1429171 m!1319357))

(declare-fun m!1319359 () Bool)

(assert (=> b!1429171 m!1319359))

(declare-fun m!1319361 () Bool)

(assert (=> b!1429173 m!1319361))

(declare-fun m!1319363 () Bool)

(assert (=> start!123296 m!1319363))

(declare-fun m!1319365 () Bool)

(assert (=> start!123296 m!1319365))

(declare-fun m!1319367 () Bool)

(assert (=> b!1429180 m!1319367))

(push 1)

