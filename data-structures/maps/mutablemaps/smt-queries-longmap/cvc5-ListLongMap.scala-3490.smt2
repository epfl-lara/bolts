; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48424 () Bool)

(assert start!48424)

(declare-fun b!531731 () Bool)

(declare-fun res!327373 () Bool)

(declare-fun e!309671 () Bool)

(assert (=> b!531731 (=> (not res!327373) (not e!309671))))

(declare-datatypes ((array!33688 0))(
  ( (array!33689 (arr!16182 (Array (_ BitVec 32) (_ BitVec 64))) (size!16546 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33688)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531731 (= res!327373 (validKeyInArray!0 (select (arr!16182 a!3154) j!147)))))

(declare-fun res!327376 () Bool)

(assert (=> start!48424 (=> (not res!327376) (not e!309671))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48424 (= res!327376 (validMask!0 mask!3216))))

(assert (=> start!48424 e!309671))

(assert (=> start!48424 true))

(declare-fun array_inv!11956 (array!33688) Bool)

(assert (=> start!48424 (array_inv!11956 a!3154)))

(declare-fun b!531732 () Bool)

(declare-fun e!309672 () Bool)

(assert (=> b!531732 (= e!309671 e!309672)))

(declare-fun res!327377 () Bool)

(assert (=> b!531732 (=> (not res!327377) (not e!309672))))

(declare-datatypes ((SeekEntryResult!4647 0))(
  ( (MissingZero!4647 (index!20812 (_ BitVec 32))) (Found!4647 (index!20813 (_ BitVec 32))) (Intermediate!4647 (undefined!5459 Bool) (index!20814 (_ BitVec 32)) (x!49816 (_ BitVec 32))) (Undefined!4647) (MissingVacant!4647 (index!20815 (_ BitVec 32))) )
))
(declare-fun lt!245059 () SeekEntryResult!4647)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531732 (= res!327377 (or (= lt!245059 (MissingZero!4647 i!1153)) (= lt!245059 (MissingVacant!4647 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33688 (_ BitVec 32)) SeekEntryResult!4647)

(assert (=> b!531732 (= lt!245059 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531733 () Bool)

(declare-fun res!327372 () Bool)

(assert (=> b!531733 (=> (not res!327372) (not e!309671))))

(assert (=> b!531733 (= res!327372 (and (= (size!16546 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16546 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16546 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531734 () Bool)

(declare-fun res!327374 () Bool)

(assert (=> b!531734 (=> (not res!327374) (not e!309671))))

(declare-fun arrayContainsKey!0 (array!33688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531734 (= res!327374 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531735 () Bool)

(assert (=> b!531735 (= e!309672 false)))

(declare-fun lt!245060 () Bool)

(declare-datatypes ((List!10354 0))(
  ( (Nil!10351) (Cons!10350 (h!11290 (_ BitVec 64)) (t!16590 List!10354)) )
))
(declare-fun arrayNoDuplicates!0 (array!33688 (_ BitVec 32) List!10354) Bool)

(assert (=> b!531735 (= lt!245060 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10351))))

(declare-fun b!531736 () Bool)

(declare-fun res!327375 () Bool)

(assert (=> b!531736 (=> (not res!327375) (not e!309671))))

(assert (=> b!531736 (= res!327375 (validKeyInArray!0 k!1998))))

(declare-fun b!531737 () Bool)

(declare-fun res!327371 () Bool)

(assert (=> b!531737 (=> (not res!327371) (not e!309672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33688 (_ BitVec 32)) Bool)

(assert (=> b!531737 (= res!327371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48424 res!327376) b!531733))

(assert (= (and b!531733 res!327372) b!531731))

(assert (= (and b!531731 res!327373) b!531736))

(assert (= (and b!531736 res!327375) b!531734))

(assert (= (and b!531734 res!327374) b!531732))

(assert (= (and b!531732 res!327377) b!531737))

(assert (= (and b!531737 res!327371) b!531735))

(declare-fun m!512101 () Bool)

(assert (=> b!531732 m!512101))

(declare-fun m!512103 () Bool)

(assert (=> b!531736 m!512103))

(declare-fun m!512105 () Bool)

(assert (=> b!531734 m!512105))

(declare-fun m!512107 () Bool)

(assert (=> b!531737 m!512107))

(declare-fun m!512109 () Bool)

(assert (=> b!531731 m!512109))

(assert (=> b!531731 m!512109))

(declare-fun m!512111 () Bool)

(assert (=> b!531731 m!512111))

(declare-fun m!512113 () Bool)

(assert (=> start!48424 m!512113))

(declare-fun m!512115 () Bool)

(assert (=> start!48424 m!512115))

(declare-fun m!512117 () Bool)

(assert (=> b!531735 m!512117))

(push 1)

(assert (not start!48424))

(assert (not b!531732))

(assert (not b!531736))

(assert (not b!531735))

(assert (not b!531734))

