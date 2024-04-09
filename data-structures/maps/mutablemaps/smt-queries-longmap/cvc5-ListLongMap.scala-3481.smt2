; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48244 () Bool)

(assert start!48244)

(declare-fun b!530717 () Bool)

(declare-fun e!309144 () Bool)

(declare-fun e!309145 () Bool)

(assert (=> b!530717 (= e!309144 e!309145)))

(declare-fun res!326578 () Bool)

(assert (=> b!530717 (=> (not res!326578) (not e!309145))))

(declare-datatypes ((SeekEntryResult!4620 0))(
  ( (MissingZero!4620 (index!20704 (_ BitVec 32))) (Found!4620 (index!20705 (_ BitVec 32))) (Intermediate!4620 (undefined!5432 Bool) (index!20706 (_ BitVec 32)) (x!49717 (_ BitVec 32))) (Undefined!4620) (MissingVacant!4620 (index!20707 (_ BitVec 32))) )
))
(declare-fun lt!244784 () SeekEntryResult!4620)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530717 (= res!326578 (or (= lt!244784 (MissingZero!4620 i!1153)) (= lt!244784 (MissingVacant!4620 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33625 0))(
  ( (array!33626 (arr!16155 (Array (_ BitVec 32) (_ BitVec 64))) (size!16519 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33625)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33625 (_ BitVec 32)) SeekEntryResult!4620)

(assert (=> b!530717 (= lt!244784 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!326575 () Bool)

(assert (=> start!48244 (=> (not res!326575) (not e!309144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48244 (= res!326575 (validMask!0 mask!3216))))

(assert (=> start!48244 e!309144))

(assert (=> start!48244 true))

(declare-fun array_inv!11929 (array!33625) Bool)

(assert (=> start!48244 (array_inv!11929 a!3154)))

(declare-fun b!530718 () Bool)

(assert (=> b!530718 (= e!309145 (bvsgt #b00000000000000000000000000000000 (size!16519 a!3154)))))

(declare-fun b!530719 () Bool)

(declare-fun res!326577 () Bool)

(assert (=> b!530719 (=> (not res!326577) (not e!309144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530719 (= res!326577 (validKeyInArray!0 k!1998))))

(declare-fun b!530720 () Bool)

(declare-fun res!326573 () Bool)

(assert (=> b!530720 (=> (not res!326573) (not e!309144))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530720 (= res!326573 (validKeyInArray!0 (select (arr!16155 a!3154) j!147)))))

(declare-fun b!530721 () Bool)

(declare-fun res!326576 () Bool)

(assert (=> b!530721 (=> (not res!326576) (not e!309144))))

(declare-fun arrayContainsKey!0 (array!33625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530721 (= res!326576 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530722 () Bool)

(declare-fun res!326579 () Bool)

(assert (=> b!530722 (=> (not res!326579) (not e!309145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33625 (_ BitVec 32)) Bool)

(assert (=> b!530722 (= res!326579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!530723 () Bool)

(declare-fun res!326574 () Bool)

(assert (=> b!530723 (=> (not res!326574) (not e!309144))))

(assert (=> b!530723 (= res!326574 (and (= (size!16519 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16519 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16519 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48244 res!326575) b!530723))

(assert (= (and b!530723 res!326574) b!530720))

(assert (= (and b!530720 res!326573) b!530719))

(assert (= (and b!530719 res!326577) b!530721))

(assert (= (and b!530721 res!326576) b!530717))

(assert (= (and b!530717 res!326578) b!530722))

(assert (= (and b!530722 res!326579) b!530718))

(declare-fun m!511291 () Bool)

(assert (=> b!530717 m!511291))

(declare-fun m!511293 () Bool)

(assert (=> b!530721 m!511293))

(declare-fun m!511295 () Bool)

(assert (=> start!48244 m!511295))

(declare-fun m!511297 () Bool)

(assert (=> start!48244 m!511297))

(declare-fun m!511299 () Bool)

(assert (=> b!530722 m!511299))

(declare-fun m!511301 () Bool)

(assert (=> b!530719 m!511301))

(declare-fun m!511303 () Bool)

(assert (=> b!530720 m!511303))

(assert (=> b!530720 m!511303))

(declare-fun m!511305 () Bool)

(assert (=> b!530720 m!511305))

(push 1)

(assert (not b!530720))

(assert (not b!530721))

(assert (not b!530719))

(assert (not b!530717))

(assert (not start!48244))

(assert (not b!530722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

