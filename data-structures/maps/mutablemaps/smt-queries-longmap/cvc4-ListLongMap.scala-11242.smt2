; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131120 () Bool)

(assert start!131120)

(declare-fun b!1537903 () Bool)

(declare-fun res!1055127 () Bool)

(declare-fun e!855782 () Bool)

(assert (=> b!1537903 (=> (not res!1055127) (not e!855782))))

(declare-datatypes ((array!102145 0))(
  ( (array!102146 (arr!49284 (Array (_ BitVec 32) (_ BitVec 64))) (size!49835 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102145)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537903 (= res!1055127 (validKeyInArray!0 (select (arr!49284 a!2792) i!951)))))

(declare-fun b!1537904 () Bool)

(declare-fun res!1055131 () Bool)

(assert (=> b!1537904 (=> (not res!1055131) (not e!855782))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537904 (= res!1055131 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49835 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49835 a!2792)) (= (select (arr!49284 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537905 () Bool)

(assert (=> b!1537905 (= e!855782 false)))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13433 0))(
  ( (MissingZero!13433 (index!56126 (_ BitVec 32))) (Found!13433 (index!56127 (_ BitVec 32))) (Intermediate!13433 (undefined!14245 Bool) (index!56128 (_ BitVec 32)) (x!137862 (_ BitVec 32))) (Undefined!13433) (MissingVacant!13433 (index!56129 (_ BitVec 32))) )
))
(declare-fun lt!664741 () SeekEntryResult!13433)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102145 (_ BitVec 32)) SeekEntryResult!13433)

(assert (=> b!1537905 (= lt!664741 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49284 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537906 () Bool)

(declare-fun res!1055133 () Bool)

(assert (=> b!1537906 (=> (not res!1055133) (not e!855782))))

(assert (=> b!1537906 (= res!1055133 (validKeyInArray!0 (select (arr!49284 a!2792) j!64)))))

(declare-fun b!1537907 () Bool)

(declare-fun res!1055132 () Bool)

(assert (=> b!1537907 (=> (not res!1055132) (not e!855782))))

(assert (=> b!1537907 (= res!1055132 (and (= (size!49835 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49835 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49835 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537908 () Bool)

(declare-fun res!1055128 () Bool)

(assert (=> b!1537908 (=> (not res!1055128) (not e!855782))))

(declare-datatypes ((List!35938 0))(
  ( (Nil!35935) (Cons!35934 (h!37380 (_ BitVec 64)) (t!50639 List!35938)) )
))
(declare-fun arrayNoDuplicates!0 (array!102145 (_ BitVec 32) List!35938) Bool)

(assert (=> b!1537908 (= res!1055128 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35935))))

(declare-fun b!1537909 () Bool)

(declare-fun res!1055129 () Bool)

(assert (=> b!1537909 (=> (not res!1055129) (not e!855782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102145 (_ BitVec 32)) Bool)

(assert (=> b!1537909 (= res!1055129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1055130 () Bool)

(assert (=> start!131120 (=> (not res!1055130) (not e!855782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131120 (= res!1055130 (validMask!0 mask!2480))))

(assert (=> start!131120 e!855782))

(assert (=> start!131120 true))

(declare-fun array_inv!38229 (array!102145) Bool)

(assert (=> start!131120 (array_inv!38229 a!2792)))

(assert (= (and start!131120 res!1055130) b!1537907))

(assert (= (and b!1537907 res!1055132) b!1537903))

(assert (= (and b!1537903 res!1055127) b!1537906))

(assert (= (and b!1537906 res!1055133) b!1537909))

(assert (= (and b!1537909 res!1055129) b!1537908))

(assert (= (and b!1537908 res!1055128) b!1537904))

(assert (= (and b!1537904 res!1055131) b!1537905))

(declare-fun m!1420453 () Bool)

(assert (=> b!1537906 m!1420453))

(assert (=> b!1537906 m!1420453))

(declare-fun m!1420455 () Bool)

(assert (=> b!1537906 m!1420455))

(declare-fun m!1420457 () Bool)

(assert (=> b!1537908 m!1420457))

(declare-fun m!1420459 () Bool)

(assert (=> b!1537909 m!1420459))

(assert (=> b!1537905 m!1420453))

(assert (=> b!1537905 m!1420453))

(declare-fun m!1420461 () Bool)

(assert (=> b!1537905 m!1420461))

(declare-fun m!1420463 () Bool)

(assert (=> b!1537903 m!1420463))

(assert (=> b!1537903 m!1420463))

(declare-fun m!1420465 () Bool)

(assert (=> b!1537903 m!1420465))

(declare-fun m!1420467 () Bool)

(assert (=> start!131120 m!1420467))

(declare-fun m!1420469 () Bool)

(assert (=> start!131120 m!1420469))

(declare-fun m!1420471 () Bool)

(assert (=> b!1537904 m!1420471))

(push 1)

(assert (not b!1537906))

(assert (not b!1537909))

(assert (not b!1537908))

(assert (not start!131120))

(assert (not b!1537905))

