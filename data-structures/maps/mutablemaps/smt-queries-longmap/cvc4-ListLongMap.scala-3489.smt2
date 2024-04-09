; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48422 () Bool)

(assert start!48422)

(declare-fun b!531709 () Bool)

(declare-fun e!309664 () Bool)

(declare-fun e!309662 () Bool)

(assert (=> b!531709 (= e!309664 e!309662)))

(declare-fun res!327353 () Bool)

(assert (=> b!531709 (=> (not res!327353) (not e!309662))))

(declare-datatypes ((SeekEntryResult!4646 0))(
  ( (MissingZero!4646 (index!20808 (_ BitVec 32))) (Found!4646 (index!20809 (_ BitVec 32))) (Intermediate!4646 (undefined!5458 Bool) (index!20810 (_ BitVec 32)) (x!49807 (_ BitVec 32))) (Undefined!4646) (MissingVacant!4646 (index!20811 (_ BitVec 32))) )
))
(declare-fun lt!245054 () SeekEntryResult!4646)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531709 (= res!327353 (or (= lt!245054 (MissingZero!4646 i!1153)) (= lt!245054 (MissingVacant!4646 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33686 0))(
  ( (array!33687 (arr!16181 (Array (_ BitVec 32) (_ BitVec 64))) (size!16545 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33686)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33686 (_ BitVec 32)) SeekEntryResult!4646)

(assert (=> b!531709 (= lt!245054 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531710 () Bool)

(declare-fun res!327356 () Bool)

(assert (=> b!531710 (=> (not res!327356) (not e!309664))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531710 (= res!327356 (validKeyInArray!0 (select (arr!16181 a!3154) j!147)))))

(declare-fun b!531711 () Bool)

(declare-fun res!327354 () Bool)

(assert (=> b!531711 (=> (not res!327354) (not e!309664))))

(assert (=> b!531711 (= res!327354 (validKeyInArray!0 k!1998))))

(declare-fun b!531712 () Bool)

(declare-fun res!327355 () Bool)

(assert (=> b!531712 (=> (not res!327355) (not e!309662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33686 (_ BitVec 32)) Bool)

(assert (=> b!531712 (= res!327355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun b!531713 () Bool)

(assert (=> b!531713 (= e!309662 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16545 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16545 a!3154)) (= (select (arr!16181 a!3154) resIndex!32) (select (arr!16181 a!3154) j!147)) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!531714 () Bool)

(declare-fun res!327351 () Bool)

(assert (=> b!531714 (=> (not res!327351) (not e!309662))))

(declare-datatypes ((List!10353 0))(
  ( (Nil!10350) (Cons!10349 (h!11289 (_ BitVec 64)) (t!16589 List!10353)) )
))
(declare-fun arrayNoDuplicates!0 (array!33686 (_ BitVec 32) List!10353) Bool)

(assert (=> b!531714 (= res!327351 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10350))))

(declare-fun res!327349 () Bool)

(assert (=> start!48422 (=> (not res!327349) (not e!309664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48422 (= res!327349 (validMask!0 mask!3216))))

(assert (=> start!48422 e!309664))

(assert (=> start!48422 true))

(declare-fun array_inv!11955 (array!33686) Bool)

(assert (=> start!48422 (array_inv!11955 a!3154)))

(declare-fun b!531715 () Bool)

(declare-fun res!327350 () Bool)

(assert (=> b!531715 (=> (not res!327350) (not e!309664))))

(assert (=> b!531715 (= res!327350 (and (= (size!16545 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16545 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16545 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531716 () Bool)

(declare-fun res!327352 () Bool)

(assert (=> b!531716 (=> (not res!327352) (not e!309664))))

(declare-fun arrayContainsKey!0 (array!33686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531716 (= res!327352 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48422 res!327349) b!531715))

(assert (= (and b!531715 res!327350) b!531710))

(assert (= (and b!531710 res!327356) b!531711))

(assert (= (and b!531711 res!327354) b!531716))

(assert (= (and b!531716 res!327352) b!531709))

(assert (= (and b!531709 res!327353) b!531712))

(assert (= (and b!531712 res!327355) b!531714))

(assert (= (and b!531714 res!327351) b!531713))

(declare-fun m!512081 () Bool)

(assert (=> b!531712 m!512081))

(declare-fun m!512083 () Bool)

(assert (=> b!531709 m!512083))

(declare-fun m!512085 () Bool)

(assert (=> start!48422 m!512085))

(declare-fun m!512087 () Bool)

(assert (=> start!48422 m!512087))

(declare-fun m!512089 () Bool)

(assert (=> b!531711 m!512089))

(declare-fun m!512091 () Bool)

(assert (=> b!531716 m!512091))

(declare-fun m!512093 () Bool)

(assert (=> b!531710 m!512093))

(assert (=> b!531710 m!512093))

(declare-fun m!512095 () Bool)

(assert (=> b!531710 m!512095))

(declare-fun m!512097 () Bool)

(assert (=> b!531713 m!512097))

(assert (=> b!531713 m!512093))

(declare-fun m!512099 () Bool)

(assert (=> b!531714 m!512099))

(push 1)

(assert (not b!531710))

(assert (not b!531712))

(assert (not start!48422))

(assert (not b!531716))

(assert (not b!531709))

(assert (not b!531711))

(assert (not b!531714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

