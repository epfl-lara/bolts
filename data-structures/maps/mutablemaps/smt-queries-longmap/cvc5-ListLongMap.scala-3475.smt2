; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48208 () Bool)

(assert start!48208)

(declare-fun b!530443 () Bool)

(declare-fun e!309034 () Bool)

(assert (=> b!530443 (= e!309034 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33589 0))(
  ( (array!33590 (arr!16137 (Array (_ BitVec 32) (_ BitVec 64))) (size!16501 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33589)

(declare-datatypes ((SeekEntryResult!4602 0))(
  ( (MissingZero!4602 (index!20632 (_ BitVec 32))) (Found!4602 (index!20633 (_ BitVec 32))) (Intermediate!4602 (undefined!5414 Bool) (index!20634 (_ BitVec 32)) (x!49651 (_ BitVec 32))) (Undefined!4602) (MissingVacant!4602 (index!20635 (_ BitVec 32))) )
))
(declare-fun lt!244730 () SeekEntryResult!4602)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33589 (_ BitVec 32)) SeekEntryResult!4602)

(assert (=> b!530443 (= lt!244730 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530444 () Bool)

(declare-fun res!326302 () Bool)

(assert (=> b!530444 (=> (not res!326302) (not e!309034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530444 (= res!326302 (validKeyInArray!0 k!1998))))

(declare-fun b!530445 () Bool)

(declare-fun res!326300 () Bool)

(assert (=> b!530445 (=> (not res!326300) (not e!309034))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530445 (= res!326300 (validKeyInArray!0 (select (arr!16137 a!3154) j!147)))))

(declare-fun res!326301 () Bool)

(assert (=> start!48208 (=> (not res!326301) (not e!309034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48208 (= res!326301 (validMask!0 mask!3216))))

(assert (=> start!48208 e!309034))

(assert (=> start!48208 true))

(declare-fun array_inv!11911 (array!33589) Bool)

(assert (=> start!48208 (array_inv!11911 a!3154)))

(declare-fun b!530446 () Bool)

(declare-fun res!326303 () Bool)

(assert (=> b!530446 (=> (not res!326303) (not e!309034))))

(declare-fun arrayContainsKey!0 (array!33589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530446 (= res!326303 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530447 () Bool)

(declare-fun res!326299 () Bool)

(assert (=> b!530447 (=> (not res!326299) (not e!309034))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530447 (= res!326299 (and (= (size!16501 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16501 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16501 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48208 res!326301) b!530447))

(assert (= (and b!530447 res!326299) b!530445))

(assert (= (and b!530445 res!326300) b!530444))

(assert (= (and b!530444 res!326302) b!530446))

(assert (= (and b!530446 res!326303) b!530443))

(declare-fun m!511039 () Bool)

(assert (=> start!48208 m!511039))

(declare-fun m!511041 () Bool)

(assert (=> start!48208 m!511041))

(declare-fun m!511043 () Bool)

(assert (=> b!530445 m!511043))

(assert (=> b!530445 m!511043))

(declare-fun m!511045 () Bool)

(assert (=> b!530445 m!511045))

(declare-fun m!511047 () Bool)

(assert (=> b!530443 m!511047))

(declare-fun m!511049 () Bool)

(assert (=> b!530446 m!511049))

(declare-fun m!511051 () Bool)

(assert (=> b!530444 m!511051))

(push 1)

(assert (not b!530446))

(assert (not start!48208))

(assert (not b!530444))

(assert (not b!530445))

(assert (not b!530443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

