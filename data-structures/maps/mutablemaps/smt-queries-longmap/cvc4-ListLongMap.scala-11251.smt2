; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131210 () Bool)

(assert start!131210)

(declare-fun b!1538774 () Bool)

(declare-fun res!1055891 () Bool)

(declare-fun e!856052 () Bool)

(assert (=> b!1538774 (=> (not res!1055891) (not e!856052))))

(declare-datatypes ((array!102202 0))(
  ( (array!102203 (arr!49311 (Array (_ BitVec 32) (_ BitVec 64))) (size!49862 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102202)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538774 (= res!1055891 (not (= (select (arr!49311 a!2792) index!463) (select (arr!49311 a!2792) j!64))))))

(declare-fun b!1538775 () Bool)

(declare-fun res!1055894 () Bool)

(assert (=> b!1538775 (=> (not res!1055894) (not e!856052))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538775 (= res!1055894 (and (= (size!49862 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49862 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49862 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538776 () Bool)

(declare-fun res!1055898 () Bool)

(assert (=> b!1538776 (=> (not res!1055898) (not e!856052))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1538776 (= res!1055898 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49862 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49862 a!2792)) (= (select (arr!49311 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538777 () Bool)

(declare-fun res!1055892 () Bool)

(assert (=> b!1538777 (=> (not res!1055892) (not e!856052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102202 (_ BitVec 32)) Bool)

(assert (=> b!1538777 (= res!1055892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538778 () Bool)

(declare-fun res!1055893 () Bool)

(assert (=> b!1538778 (=> (not res!1055893) (not e!856052))))

(declare-datatypes ((List!35965 0))(
  ( (Nil!35962) (Cons!35961 (h!37407 (_ BitVec 64)) (t!50666 List!35965)) )
))
(declare-fun arrayNoDuplicates!0 (array!102202 (_ BitVec 32) List!35965) Bool)

(assert (=> b!1538778 (= res!1055893 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35962))))

(declare-fun b!1538779 () Bool)

(assert (=> b!1538779 (= e!856052 false)))

(declare-fun lt!664873 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538779 (= lt!664873 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538780 () Bool)

(declare-fun res!1055895 () Bool)

(assert (=> b!1538780 (=> (not res!1055895) (not e!856052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538780 (= res!1055895 (validKeyInArray!0 (select (arr!49311 a!2792) i!951)))))

(declare-fun b!1538781 () Bool)

(declare-fun res!1055896 () Bool)

(assert (=> b!1538781 (=> (not res!1055896) (not e!856052))))

(assert (=> b!1538781 (= res!1055896 (validKeyInArray!0 (select (arr!49311 a!2792) j!64)))))

(declare-fun res!1055897 () Bool)

(assert (=> start!131210 (=> (not res!1055897) (not e!856052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131210 (= res!1055897 (validMask!0 mask!2480))))

(assert (=> start!131210 e!856052))

(assert (=> start!131210 true))

(declare-fun array_inv!38256 (array!102202) Bool)

(assert (=> start!131210 (array_inv!38256 a!2792)))

(declare-fun b!1538782 () Bool)

(declare-fun res!1055890 () Bool)

(assert (=> b!1538782 (=> (not res!1055890) (not e!856052))))

(declare-datatypes ((SeekEntryResult!13460 0))(
  ( (MissingZero!13460 (index!56234 (_ BitVec 32))) (Found!13460 (index!56235 (_ BitVec 32))) (Intermediate!13460 (undefined!14272 Bool) (index!56236 (_ BitVec 32)) (x!137964 (_ BitVec 32))) (Undefined!13460) (MissingVacant!13460 (index!56237 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102202 (_ BitVec 32)) SeekEntryResult!13460)

(assert (=> b!1538782 (= res!1055890 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49311 a!2792) j!64) a!2792 mask!2480) (Found!13460 j!64)))))

(assert (= (and start!131210 res!1055897) b!1538775))

(assert (= (and b!1538775 res!1055894) b!1538780))

(assert (= (and b!1538780 res!1055895) b!1538781))

(assert (= (and b!1538781 res!1055896) b!1538777))

(assert (= (and b!1538777 res!1055892) b!1538778))

(assert (= (and b!1538778 res!1055893) b!1538776))

(assert (= (and b!1538776 res!1055898) b!1538782))

(assert (= (and b!1538782 res!1055890) b!1538774))

(assert (= (and b!1538774 res!1055891) b!1538779))

(declare-fun m!1421205 () Bool)

(assert (=> start!131210 m!1421205))

(declare-fun m!1421207 () Bool)

(assert (=> start!131210 m!1421207))

(declare-fun m!1421209 () Bool)

(assert (=> b!1538779 m!1421209))

(declare-fun m!1421211 () Bool)

(assert (=> b!1538776 m!1421211))

(declare-fun m!1421213 () Bool)

(assert (=> b!1538774 m!1421213))

(declare-fun m!1421215 () Bool)

(assert (=> b!1538774 m!1421215))

(declare-fun m!1421217 () Bool)

(assert (=> b!1538778 m!1421217))

(assert (=> b!1538781 m!1421215))

(assert (=> b!1538781 m!1421215))

(declare-fun m!1421219 () Bool)

(assert (=> b!1538781 m!1421219))

(assert (=> b!1538782 m!1421215))

(assert (=> b!1538782 m!1421215))

(declare-fun m!1421221 () Bool)

(assert (=> b!1538782 m!1421221))

(declare-fun m!1421223 () Bool)

(assert (=> b!1538780 m!1421223))

(assert (=> b!1538780 m!1421223))

(declare-fun m!1421225 () Bool)

(assert (=> b!1538780 m!1421225))

(declare-fun m!1421227 () Bool)

(assert (=> b!1538777 m!1421227))

(push 1)

(assert (not start!131210))

(assert (not b!1538781))

(assert (not b!1538779))

(assert (not b!1538778))

(assert (not b!1538782))

(assert (not b!1538777))

(assert (not b!1538780))

(check-sat)

(pop 1)

