; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49772 () Bool)

(assert start!49772)

(declare-fun b!546652 () Bool)

(declare-fun res!340519 () Bool)

(declare-fun e!315909 () Bool)

(assert (=> b!546652 (=> (not res!340519) (not e!315909))))

(declare-datatypes ((array!34464 0))(
  ( (array!34465 (arr!16554 (Array (_ BitVec 32) (_ BitVec 64))) (size!16918 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34464)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546652 (= res!340519 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546653 () Bool)

(assert (=> b!546653 (= e!315909 false)))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5010 0))(
  ( (MissingZero!5010 (index!22267 (_ BitVec 32))) (Found!5010 (index!22268 (_ BitVec 32))) (Intermediate!5010 (undefined!5822 Bool) (index!22269 (_ BitVec 32)) (x!51249 (_ BitVec 32))) (Undefined!5010) (MissingVacant!5010 (index!22270 (_ BitVec 32))) )
))
(declare-fun lt!249338 () SeekEntryResult!5010)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34464 (_ BitVec 32)) SeekEntryResult!5010)

(assert (=> b!546653 (= lt!249338 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546654 () Bool)

(declare-fun res!340518 () Bool)

(assert (=> b!546654 (=> (not res!340518) (not e!315909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546654 (= res!340518 (validKeyInArray!0 k!1914))))

(declare-fun res!340516 () Bool)

(assert (=> start!49772 (=> (not res!340516) (not e!315909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49772 (= res!340516 (validMask!0 mask!3119))))

(assert (=> start!49772 e!315909))

(assert (=> start!49772 true))

(declare-fun array_inv!12328 (array!34464) Bool)

(assert (=> start!49772 (array_inv!12328 a!3118)))

(declare-fun b!546655 () Bool)

(declare-fun res!340517 () Bool)

(assert (=> b!546655 (=> (not res!340517) (not e!315909))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546655 (= res!340517 (and (= (size!16918 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16918 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16918 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546656 () Bool)

(declare-fun res!340520 () Bool)

(assert (=> b!546656 (=> (not res!340520) (not e!315909))))

(assert (=> b!546656 (= res!340520 (validKeyInArray!0 (select (arr!16554 a!3118) j!142)))))

(assert (= (and start!49772 res!340516) b!546655))

(assert (= (and b!546655 res!340517) b!546656))

(assert (= (and b!546656 res!340520) b!546654))

(assert (= (and b!546654 res!340518) b!546652))

(assert (= (and b!546652 res!340519) b!546653))

(declare-fun m!524077 () Bool)

(assert (=> b!546653 m!524077))

(declare-fun m!524079 () Bool)

(assert (=> b!546656 m!524079))

(assert (=> b!546656 m!524079))

(declare-fun m!524081 () Bool)

(assert (=> b!546656 m!524081))

(declare-fun m!524083 () Bool)

(assert (=> b!546654 m!524083))

(declare-fun m!524085 () Bool)

(assert (=> start!49772 m!524085))

(declare-fun m!524087 () Bool)

(assert (=> start!49772 m!524087))

(declare-fun m!524089 () Bool)

(assert (=> b!546652 m!524089))

(push 1)

(assert (not b!546652))

(assert (not b!546654))

(assert (not start!49772))

(assert (not b!546653))

(assert (not b!546656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

