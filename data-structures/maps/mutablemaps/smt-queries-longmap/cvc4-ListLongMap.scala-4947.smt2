; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68090 () Bool)

(assert start!68090)

(declare-fun b!791741 () Bool)

(declare-fun res!536646 () Bool)

(declare-fun e!439966 () Bool)

(assert (=> b!791741 (=> (not res!536646) (not e!439966))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791741 (= res!536646 (validKeyInArray!0 k!2044))))

(declare-fun b!791742 () Bool)

(declare-fun res!536649 () Bool)

(assert (=> b!791742 (=> (not res!536649) (not e!439966))))

(declare-datatypes ((array!42948 0))(
  ( (array!42949 (arr!20555 (Array (_ BitVec 32) (_ BitVec 64))) (size!20976 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42948)

(declare-fun arrayContainsKey!0 (array!42948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791742 (= res!536649 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791743 () Bool)

(declare-fun res!536650 () Bool)

(assert (=> b!791743 (=> (not res!536650) (not e!439966))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791743 (= res!536650 (and (= (size!20976 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20976 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20976 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!536647 () Bool)

(assert (=> start!68090 (=> (not res!536647) (not e!439966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68090 (= res!536647 (validMask!0 mask!3266))))

(assert (=> start!68090 e!439966))

(assert (=> start!68090 true))

(declare-fun array_inv!16329 (array!42948) Bool)

(assert (=> start!68090 (array_inv!16329 a!3170)))

(declare-fun b!791744 () Bool)

(assert (=> b!791744 (= e!439966 false)))

(declare-datatypes ((SeekEntryResult!8153 0))(
  ( (MissingZero!8153 (index!34979 (_ BitVec 32))) (Found!8153 (index!34980 (_ BitVec 32))) (Intermediate!8153 (undefined!8965 Bool) (index!34981 (_ BitVec 32)) (x!65960 (_ BitVec 32))) (Undefined!8153) (MissingVacant!8153 (index!34982 (_ BitVec 32))) )
))
(declare-fun lt!353275 () SeekEntryResult!8153)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42948 (_ BitVec 32)) SeekEntryResult!8153)

(assert (=> b!791744 (= lt!353275 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791745 () Bool)

(declare-fun res!536648 () Bool)

(assert (=> b!791745 (=> (not res!536648) (not e!439966))))

(assert (=> b!791745 (= res!536648 (validKeyInArray!0 (select (arr!20555 a!3170) j!153)))))

(assert (= (and start!68090 res!536647) b!791743))

(assert (= (and b!791743 res!536650) b!791745))

(assert (= (and b!791745 res!536648) b!791741))

(assert (= (and b!791741 res!536646) b!791742))

(assert (= (and b!791742 res!536649) b!791744))

(declare-fun m!732527 () Bool)

(assert (=> start!68090 m!732527))

(declare-fun m!732529 () Bool)

(assert (=> start!68090 m!732529))

(declare-fun m!732531 () Bool)

(assert (=> b!791745 m!732531))

(assert (=> b!791745 m!732531))

(declare-fun m!732533 () Bool)

(assert (=> b!791745 m!732533))

(declare-fun m!732535 () Bool)

(assert (=> b!791741 m!732535))

(declare-fun m!732537 () Bool)

(assert (=> b!791742 m!732537))

(declare-fun m!732539 () Bool)

(assert (=> b!791744 m!732539))

(push 1)

(assert (not b!791744))

(assert (not b!791741))

(assert (not b!791742))

(assert (not b!791745))

(assert (not start!68090))

(check-sat)

