; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49746 () Bool)

(assert start!49746)

(declare-fun b!546448 () Bool)

(declare-fun res!340315 () Bool)

(declare-fun e!315831 () Bool)

(assert (=> b!546448 (=> (not res!340315) (not e!315831))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34438 0))(
  ( (array!34439 (arr!16541 (Array (_ BitVec 32) (_ BitVec 64))) (size!16905 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34438)

(assert (=> b!546448 (= res!340315 (and (= (size!16905 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16905 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16905 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546449 () Bool)

(declare-fun res!340313 () Bool)

(assert (=> b!546449 (=> (not res!340313) (not e!315831))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546449 (= res!340313 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340316 () Bool)

(assert (=> start!49746 (=> (not res!340316) (not e!315831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49746 (= res!340316 (validMask!0 mask!3119))))

(assert (=> start!49746 e!315831))

(assert (=> start!49746 true))

(declare-fun array_inv!12315 (array!34438) Bool)

(assert (=> start!49746 (array_inv!12315 a!3118)))

(declare-fun b!546450 () Bool)

(declare-fun res!340314 () Bool)

(assert (=> b!546450 (=> (not res!340314) (not e!315831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546450 (= res!340314 (validKeyInArray!0 (select (arr!16541 a!3118) j!142)))))

(declare-fun b!546451 () Bool)

(assert (=> b!546451 (= e!315831 false)))

(declare-datatypes ((SeekEntryResult!4997 0))(
  ( (MissingZero!4997 (index!22215 (_ BitVec 32))) (Found!4997 (index!22216 (_ BitVec 32))) (Intermediate!4997 (undefined!5809 Bool) (index!22217 (_ BitVec 32)) (x!51196 (_ BitVec 32))) (Undefined!4997) (MissingVacant!4997 (index!22218 (_ BitVec 32))) )
))
(declare-fun lt!249308 () SeekEntryResult!4997)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34438 (_ BitVec 32)) SeekEntryResult!4997)

(assert (=> b!546451 (= lt!249308 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546452 () Bool)

(declare-fun res!340312 () Bool)

(assert (=> b!546452 (=> (not res!340312) (not e!315831))))

(assert (=> b!546452 (= res!340312 (validKeyInArray!0 k!1914))))

(assert (= (and start!49746 res!340316) b!546448))

(assert (= (and b!546448 res!340315) b!546450))

(assert (= (and b!546450 res!340314) b!546452))

(assert (= (and b!546452 res!340312) b!546449))

(assert (= (and b!546449 res!340313) b!546451))

(declare-fun m!523895 () Bool)

(assert (=> b!546449 m!523895))

(declare-fun m!523897 () Bool)

(assert (=> b!546452 m!523897))

(declare-fun m!523899 () Bool)

(assert (=> b!546451 m!523899))

(declare-fun m!523901 () Bool)

(assert (=> start!49746 m!523901))

(declare-fun m!523903 () Bool)

(assert (=> start!49746 m!523903))

(declare-fun m!523905 () Bool)

(assert (=> b!546450 m!523905))

(assert (=> b!546450 m!523905))

(declare-fun m!523907 () Bool)

(assert (=> b!546450 m!523907))

(push 1)

(assert (not b!546451))

(assert (not b!546450))

(assert (not start!49746))

(assert (not b!546449))

(assert (not b!546452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

