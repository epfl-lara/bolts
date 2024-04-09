; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48404 () Bool)

(assert start!48404)

(declare-fun b!531502 () Bool)

(declare-fun res!327145 () Bool)

(declare-fun e!309583 () Bool)

(assert (=> b!531502 (=> (not res!327145) (not e!309583))))

(declare-datatypes ((array!33668 0))(
  ( (array!33669 (arr!16172 (Array (_ BitVec 32) (_ BitVec 64))) (size!16536 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33668)

(declare-datatypes ((List!10344 0))(
  ( (Nil!10341) (Cons!10340 (h!11280 (_ BitVec 64)) (t!16580 List!10344)) )
))
(declare-fun arrayNoDuplicates!0 (array!33668 (_ BitVec 32) List!10344) Bool)

(assert (=> b!531502 (= res!327145 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10341))))

(declare-fun res!327143 () Bool)

(declare-fun e!309582 () Bool)

(assert (=> start!48404 (=> (not res!327143) (not e!309582))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48404 (= res!327143 (validMask!0 mask!3216))))

(assert (=> start!48404 e!309582))

(assert (=> start!48404 true))

(declare-fun array_inv!11946 (array!33668) Bool)

(assert (=> start!48404 (array_inv!11946 a!3154)))

(declare-fun b!531503 () Bool)

(declare-fun res!327148 () Bool)

(assert (=> b!531503 (=> (not res!327148) (not e!309582))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531503 (= res!327148 (validKeyInArray!0 (select (arr!16172 a!3154) j!147)))))

(declare-fun b!531504 () Bool)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531504 (= e!309583 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16536 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16536 a!3154)) (= (select (arr!16172 a!3154) resIndex!32) (select (arr!16172 a!3154) j!147)) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun b!531505 () Bool)

(declare-fun res!327142 () Bool)

(assert (=> b!531505 (=> (not res!327142) (not e!309582))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!531505 (= res!327142 (validKeyInArray!0 k!1998))))

(declare-fun b!531506 () Bool)

(assert (=> b!531506 (= e!309582 e!309583)))

(declare-fun res!327144 () Bool)

(assert (=> b!531506 (=> (not res!327144) (not e!309583))))

(declare-datatypes ((SeekEntryResult!4637 0))(
  ( (MissingZero!4637 (index!20772 (_ BitVec 32))) (Found!4637 (index!20773 (_ BitVec 32))) (Intermediate!4637 (undefined!5449 Bool) (index!20774 (_ BitVec 32)) (x!49774 (_ BitVec 32))) (Undefined!4637) (MissingVacant!4637 (index!20775 (_ BitVec 32))) )
))
(declare-fun lt!245018 () SeekEntryResult!4637)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531506 (= res!327144 (or (= lt!245018 (MissingZero!4637 i!1153)) (= lt!245018 (MissingVacant!4637 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33668 (_ BitVec 32)) SeekEntryResult!4637)

(assert (=> b!531506 (= lt!245018 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531507 () Bool)

(declare-fun res!327147 () Bool)

(assert (=> b!531507 (=> (not res!327147) (not e!309583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33668 (_ BitVec 32)) Bool)

(assert (=> b!531507 (= res!327147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531508 () Bool)

(declare-fun res!327149 () Bool)

(assert (=> b!531508 (=> (not res!327149) (not e!309582))))

(declare-fun arrayContainsKey!0 (array!33668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531508 (= res!327149 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531509 () Bool)

(declare-fun res!327146 () Bool)

(assert (=> b!531509 (=> (not res!327146) (not e!309582))))

(assert (=> b!531509 (= res!327146 (and (= (size!16536 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16536 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16536 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48404 res!327143) b!531509))

(assert (= (and b!531509 res!327146) b!531503))

(assert (= (and b!531503 res!327148) b!531505))

(assert (= (and b!531505 res!327142) b!531508))

(assert (= (and b!531508 res!327149) b!531506))

(assert (= (and b!531506 res!327144) b!531507))

(assert (= (and b!531507 res!327147) b!531502))

(assert (= (and b!531502 res!327145) b!531504))

(declare-fun m!511907 () Bool)

(assert (=> b!531502 m!511907))

(declare-fun m!511909 () Bool)

(assert (=> b!531503 m!511909))

(assert (=> b!531503 m!511909))

(declare-fun m!511911 () Bool)

(assert (=> b!531503 m!511911))

(declare-fun m!511913 () Bool)

(assert (=> b!531504 m!511913))

(assert (=> b!531504 m!511909))

(declare-fun m!511915 () Bool)

(assert (=> b!531506 m!511915))

(declare-fun m!511917 () Bool)

(assert (=> b!531507 m!511917))

(declare-fun m!511919 () Bool)

(assert (=> b!531508 m!511919))

(declare-fun m!511921 () Bool)

(assert (=> b!531505 m!511921))

(declare-fun m!511923 () Bool)

(assert (=> start!48404 m!511923))

(declare-fun m!511925 () Bool)

(assert (=> start!48404 m!511925))

(push 1)

(assert (not start!48404))

(assert (not b!531505))

(assert (not b!531502))

(assert (not b!531503))

(assert (not b!531506))

(assert (not b!531507))

(assert (not b!531508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

