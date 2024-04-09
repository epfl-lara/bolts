; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49748 () Bool)

(assert start!49748)

(declare-fun b!546465 () Bool)

(declare-fun res!340332 () Bool)

(declare-fun e!315837 () Bool)

(assert (=> b!546465 (=> (not res!340332) (not e!315837))))

(declare-datatypes ((array!34440 0))(
  ( (array!34441 (arr!16542 (Array (_ BitVec 32) (_ BitVec 64))) (size!16906 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34440)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546465 (= res!340332 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546466 () Bool)

(declare-fun res!340333 () Bool)

(assert (=> b!546466 (=> (not res!340333) (not e!315837))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546466 (= res!340333 (validKeyInArray!0 (select (arr!16542 a!3118) j!142)))))

(declare-fun b!546467 () Bool)

(declare-fun res!340329 () Bool)

(assert (=> b!546467 (=> (not res!340329) (not e!315837))))

(assert (=> b!546467 (= res!340329 (validKeyInArray!0 k!1914))))

(declare-fun res!340334 () Bool)

(assert (=> start!49748 (=> (not res!340334) (not e!315837))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49748 (= res!340334 (validMask!0 mask!3119))))

(assert (=> start!49748 e!315837))

(assert (=> start!49748 true))

(declare-fun array_inv!12316 (array!34440) Bool)

(assert (=> start!49748 (array_inv!12316 a!3118)))

(declare-fun b!546468 () Bool)

(declare-fun res!340331 () Bool)

(assert (=> b!546468 (=> (not res!340331) (not e!315837))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546468 (= res!340331 (and (= (size!16906 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16906 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16906 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546469 () Bool)

(declare-fun res!340330 () Bool)

(assert (=> b!546469 (=> (not res!340330) (not e!315837))))

(declare-datatypes ((SeekEntryResult!4998 0))(
  ( (MissingZero!4998 (index!22219 (_ BitVec 32))) (Found!4998 (index!22220 (_ BitVec 32))) (Intermediate!4998 (undefined!5810 Bool) (index!22221 (_ BitVec 32)) (x!51205 (_ BitVec 32))) (Undefined!4998) (MissingVacant!4998 (index!22222 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34440 (_ BitVec 32)) SeekEntryResult!4998)

(assert (=> b!546469 (= res!340330 (not (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) (MissingZero!4998 i!1132))))))

(declare-fun b!546470 () Bool)

(assert (=> b!546470 (= e!315837 (bvslt mask!3119 #b00000000000000000000000000000000))))

(assert (= (and start!49748 res!340334) b!546468))

(assert (= (and b!546468 res!340331) b!546466))

(assert (= (and b!546466 res!340333) b!546467))

(assert (= (and b!546467 res!340329) b!546465))

(assert (= (and b!546465 res!340332) b!546469))

(assert (= (and b!546469 res!340330) b!546470))

(declare-fun m!523909 () Bool)

(assert (=> b!546466 m!523909))

(assert (=> b!546466 m!523909))

(declare-fun m!523911 () Bool)

(assert (=> b!546466 m!523911))

(declare-fun m!523913 () Bool)

(assert (=> start!49748 m!523913))

(declare-fun m!523915 () Bool)

(assert (=> start!49748 m!523915))

(declare-fun m!523917 () Bool)

(assert (=> b!546467 m!523917))

(declare-fun m!523919 () Bool)

(assert (=> b!546469 m!523919))

(declare-fun m!523921 () Bool)

(assert (=> b!546465 m!523921))

(push 1)

(assert (not b!546469))

(assert (not start!49748))

(assert (not b!546465))

(assert (not b!546467))

