; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49750 () Bool)

(assert start!49750)

(declare-fun res!340350 () Bool)

(declare-fun e!315844 () Bool)

(assert (=> start!49750 (=> (not res!340350) (not e!315844))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49750 (= res!340350 (validMask!0 mask!3119))))

(assert (=> start!49750 e!315844))

(assert (=> start!49750 true))

(declare-datatypes ((array!34442 0))(
  ( (array!34443 (arr!16543 (Array (_ BitVec 32) (_ BitVec 64))) (size!16907 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34442)

(declare-fun array_inv!12317 (array!34442) Bool)

(assert (=> start!49750 (array_inv!12317 a!3118)))

(declare-fun b!546483 () Bool)

(declare-fun res!340347 () Bool)

(assert (=> b!546483 (=> (not res!340347) (not e!315844))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4999 0))(
  ( (MissingZero!4999 (index!22223 (_ BitVec 32))) (Found!4999 (index!22224 (_ BitVec 32))) (Intermediate!4999 (undefined!5811 Bool) (index!22225 (_ BitVec 32)) (x!51206 (_ BitVec 32))) (Undefined!4999) (MissingVacant!4999 (index!22226 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34442 (_ BitVec 32)) SeekEntryResult!4999)

(assert (=> b!546483 (= res!340347 (not (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) (MissingZero!4999 i!1132))))))

(declare-fun b!546484 () Bool)

(declare-fun res!340348 () Bool)

(assert (=> b!546484 (=> (not res!340348) (not e!315844))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546484 (= res!340348 (and (= (size!16907 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16907 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16907 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546485 () Bool)

(declare-fun res!340349 () Bool)

(assert (=> b!546485 (=> (not res!340349) (not e!315844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546485 (= res!340349 (validKeyInArray!0 k0!1914))))

(declare-fun b!546486 () Bool)

(declare-fun res!340352 () Bool)

(assert (=> b!546486 (=> (not res!340352) (not e!315844))))

(declare-fun arrayContainsKey!0 (array!34442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546486 (= res!340352 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546487 () Bool)

(assert (=> b!546487 (= e!315844 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!546488 () Bool)

(declare-fun res!340351 () Bool)

(assert (=> b!546488 (=> (not res!340351) (not e!315844))))

(assert (=> b!546488 (= res!340351 (validKeyInArray!0 (select (arr!16543 a!3118) j!142)))))

(assert (= (and start!49750 res!340350) b!546484))

(assert (= (and b!546484 res!340348) b!546488))

(assert (= (and b!546488 res!340351) b!546485))

(assert (= (and b!546485 res!340349) b!546486))

(assert (= (and b!546486 res!340352) b!546483))

(assert (= (and b!546483 res!340347) b!546487))

(declare-fun m!523923 () Bool)

(assert (=> b!546486 m!523923))

(declare-fun m!523925 () Bool)

(assert (=> b!546483 m!523925))

(declare-fun m!523927 () Bool)

(assert (=> b!546485 m!523927))

(declare-fun m!523929 () Bool)

(assert (=> b!546488 m!523929))

(assert (=> b!546488 m!523929))

(declare-fun m!523931 () Bool)

(assert (=> b!546488 m!523931))

(declare-fun m!523933 () Bool)

(assert (=> start!49750 m!523933))

(declare-fun m!523935 () Bool)

(assert (=> start!49750 m!523935))

(check-sat (not b!546485) (not start!49750) (not b!546483) (not b!546486) (not b!546488))
(check-sat)
