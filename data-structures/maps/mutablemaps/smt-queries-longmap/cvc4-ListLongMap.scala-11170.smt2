; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130598 () Bool)

(assert start!130598)

(declare-fun b!1532256 () Bool)

(declare-fun res!1049535 () Bool)

(declare-fun e!853751 () Bool)

(assert (=> b!1532256 (=> (not res!1049535) (not e!853751))))

(declare-datatypes ((array!101704 0))(
  ( (array!101705 (arr!49068 (Array (_ BitVec 32) (_ BitVec 64))) (size!49619 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101704)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532256 (= res!1049535 (validKeyInArray!0 (select (arr!49068 a!2792) i!951)))))

(declare-fun b!1532257 () Bool)

(declare-fun res!1049536 () Bool)

(assert (=> b!1532257 (=> (not res!1049536) (not e!853751))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101704 (_ BitVec 32)) Bool)

(assert (=> b!1532257 (= res!1049536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532258 () Bool)

(assert (=> b!1532258 (= e!853751 (bvsgt #b00000000000000000000000000000000 (size!49619 a!2792)))))

(declare-fun b!1532259 () Bool)

(declare-fun res!1049534 () Bool)

(assert (=> b!1532259 (=> (not res!1049534) (not e!853751))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532259 (= res!1049534 (validKeyInArray!0 (select (arr!49068 a!2792) j!64)))))

(declare-fun b!1532260 () Bool)

(declare-fun res!1049538 () Bool)

(assert (=> b!1532260 (=> (not res!1049538) (not e!853751))))

(assert (=> b!1532260 (= res!1049538 (and (= (size!49619 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49619 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49619 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1049537 () Bool)

(assert (=> start!130598 (=> (not res!1049537) (not e!853751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130598 (= res!1049537 (validMask!0 mask!2480))))

(assert (=> start!130598 e!853751))

(assert (=> start!130598 true))

(declare-fun array_inv!38013 (array!101704) Bool)

(assert (=> start!130598 (array_inv!38013 a!2792)))

(assert (= (and start!130598 res!1049537) b!1532260))

(assert (= (and b!1532260 res!1049538) b!1532256))

(assert (= (and b!1532256 res!1049535) b!1532259))

(assert (= (and b!1532259 res!1049534) b!1532257))

(assert (= (and b!1532257 res!1049536) b!1532258))

(declare-fun m!1415035 () Bool)

(assert (=> b!1532256 m!1415035))

(assert (=> b!1532256 m!1415035))

(declare-fun m!1415037 () Bool)

(assert (=> b!1532256 m!1415037))

(declare-fun m!1415039 () Bool)

(assert (=> b!1532257 m!1415039))

(declare-fun m!1415041 () Bool)

(assert (=> b!1532259 m!1415041))

(assert (=> b!1532259 m!1415041))

(declare-fun m!1415043 () Bool)

(assert (=> b!1532259 m!1415043))

(declare-fun m!1415045 () Bool)

(assert (=> start!130598 m!1415045))

(declare-fun m!1415047 () Bool)

(assert (=> start!130598 m!1415047))

(push 1)

(assert (not b!1532259))

(assert (not start!130598))

(assert (not b!1532256))

(assert (not b!1532257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

