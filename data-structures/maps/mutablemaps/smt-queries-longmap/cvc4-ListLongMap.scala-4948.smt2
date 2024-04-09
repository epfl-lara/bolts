; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68096 () Bool)

(assert start!68096)

(declare-fun b!791786 () Bool)

(declare-fun e!439984 () Bool)

(assert (=> b!791786 (= e!439984 false)))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!42954 0))(
  ( (array!42955 (arr!20558 (Array (_ BitVec 32) (_ BitVec 64))) (size!20979 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42954)

(declare-datatypes ((SeekEntryResult!8156 0))(
  ( (MissingZero!8156 (index!34991 (_ BitVec 32))) (Found!8156 (index!34992 (_ BitVec 32))) (Intermediate!8156 (undefined!8968 Bool) (index!34993 (_ BitVec 32)) (x!65971 (_ BitVec 32))) (Undefined!8156) (MissingVacant!8156 (index!34994 (_ BitVec 32))) )
))
(declare-fun lt!353284 () SeekEntryResult!8156)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42954 (_ BitVec 32)) SeekEntryResult!8156)

(assert (=> b!791786 (= lt!353284 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!536691 () Bool)

(assert (=> start!68096 (=> (not res!536691) (not e!439984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68096 (= res!536691 (validMask!0 mask!3266))))

(assert (=> start!68096 e!439984))

(assert (=> start!68096 true))

(declare-fun array_inv!16332 (array!42954) Bool)

(assert (=> start!68096 (array_inv!16332 a!3170)))

(declare-fun b!791787 () Bool)

(declare-fun res!536692 () Bool)

(assert (=> b!791787 (=> (not res!536692) (not e!439984))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791787 (= res!536692 (and (= (size!20979 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20979 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20979 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791788 () Bool)

(declare-fun res!536694 () Bool)

(assert (=> b!791788 (=> (not res!536694) (not e!439984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791788 (= res!536694 (validKeyInArray!0 (select (arr!20558 a!3170) j!153)))))

(declare-fun b!791789 () Bool)

(declare-fun res!536695 () Bool)

(assert (=> b!791789 (=> (not res!536695) (not e!439984))))

(declare-fun arrayContainsKey!0 (array!42954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791789 (= res!536695 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791790 () Bool)

(declare-fun res!536693 () Bool)

(assert (=> b!791790 (=> (not res!536693) (not e!439984))))

(assert (=> b!791790 (= res!536693 (validKeyInArray!0 k!2044))))

(assert (= (and start!68096 res!536691) b!791787))

(assert (= (and b!791787 res!536692) b!791788))

(assert (= (and b!791788 res!536694) b!791790))

(assert (= (and b!791790 res!536693) b!791789))

(assert (= (and b!791789 res!536695) b!791786))

(declare-fun m!732569 () Bool)

(assert (=> b!791786 m!732569))

(declare-fun m!732571 () Bool)

(assert (=> b!791788 m!732571))

(assert (=> b!791788 m!732571))

(declare-fun m!732573 () Bool)

(assert (=> b!791788 m!732573))

(declare-fun m!732575 () Bool)

(assert (=> b!791789 m!732575))

(declare-fun m!732577 () Bool)

(assert (=> b!791790 m!732577))

(declare-fun m!732579 () Bool)

(assert (=> start!68096 m!732579))

(declare-fun m!732581 () Bool)

(assert (=> start!68096 m!732581))

(push 1)

(assert (not b!791786))

(assert (not b!791789))

(assert (not start!68096))

(assert (not b!791788))

(assert (not b!791790))

(check-sat)

