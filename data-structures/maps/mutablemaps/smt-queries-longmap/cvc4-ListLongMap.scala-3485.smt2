; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48398 () Bool)

(assert start!48398)

(declare-fun b!531431 () Bool)

(declare-fun res!327073 () Bool)

(declare-fun e!309556 () Bool)

(assert (=> b!531431 (=> (not res!327073) (not e!309556))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531431 (= res!327073 (validKeyInArray!0 k!1998))))

(declare-fun b!531432 () Bool)

(declare-fun res!327071 () Bool)

(declare-fun e!309555 () Bool)

(assert (=> b!531432 (=> (not res!327071) (not e!309555))))

(declare-datatypes ((array!33662 0))(
  ( (array!33663 (arr!16169 (Array (_ BitVec 32) (_ BitVec 64))) (size!16533 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33662)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33662 (_ BitVec 32)) Bool)

(assert (=> b!531432 (= res!327071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531433 () Bool)

(declare-fun res!327072 () Bool)

(assert (=> b!531433 (=> (not res!327072) (not e!309556))))

(declare-fun arrayContainsKey!0 (array!33662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531433 (= res!327072 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!327076 () Bool)

(assert (=> start!48398 (=> (not res!327076) (not e!309556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48398 (= res!327076 (validMask!0 mask!3216))))

(assert (=> start!48398 e!309556))

(assert (=> start!48398 true))

(declare-fun array_inv!11943 (array!33662) Bool)

(assert (=> start!48398 (array_inv!11943 a!3154)))

(declare-fun b!531434 () Bool)

(declare-fun res!327075 () Bool)

(assert (=> b!531434 (=> (not res!327075) (not e!309556))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531434 (= res!327075 (and (= (size!16533 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16533 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16533 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531435 () Bool)

(declare-fun res!327077 () Bool)

(assert (=> b!531435 (=> (not res!327077) (not e!309556))))

(assert (=> b!531435 (= res!327077 (validKeyInArray!0 (select (arr!16169 a!3154) j!147)))))

(declare-fun b!531436 () Bool)

(assert (=> b!531436 (= e!309555 false)))

(declare-fun lt!245008 () Bool)

(declare-datatypes ((List!10341 0))(
  ( (Nil!10338) (Cons!10337 (h!11277 (_ BitVec 64)) (t!16577 List!10341)) )
))
(declare-fun arrayNoDuplicates!0 (array!33662 (_ BitVec 32) List!10341) Bool)

(assert (=> b!531436 (= lt!245008 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10338))))

(declare-fun b!531437 () Bool)

(assert (=> b!531437 (= e!309556 e!309555)))

(declare-fun res!327074 () Bool)

(assert (=> b!531437 (=> (not res!327074) (not e!309555))))

(declare-datatypes ((SeekEntryResult!4634 0))(
  ( (MissingZero!4634 (index!20760 (_ BitVec 32))) (Found!4634 (index!20761 (_ BitVec 32))) (Intermediate!4634 (undefined!5446 Bool) (index!20762 (_ BitVec 32)) (x!49763 (_ BitVec 32))) (Undefined!4634) (MissingVacant!4634 (index!20763 (_ BitVec 32))) )
))
(declare-fun lt!245009 () SeekEntryResult!4634)

(assert (=> b!531437 (= res!327074 (or (= lt!245009 (MissingZero!4634 i!1153)) (= lt!245009 (MissingVacant!4634 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33662 (_ BitVec 32)) SeekEntryResult!4634)

(assert (=> b!531437 (= lt!245009 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48398 res!327076) b!531434))

(assert (= (and b!531434 res!327075) b!531435))

(assert (= (and b!531435 res!327077) b!531431))

(assert (= (and b!531431 res!327073) b!531433))

(assert (= (and b!531433 res!327072) b!531437))

(assert (= (and b!531437 res!327074) b!531432))

(assert (= (and b!531432 res!327071) b!531436))

(declare-fun m!511849 () Bool)

(assert (=> b!531431 m!511849))

(declare-fun m!511851 () Bool)

(assert (=> b!531437 m!511851))

(declare-fun m!511853 () Bool)

(assert (=> b!531432 m!511853))

(declare-fun m!511855 () Bool)

(assert (=> start!48398 m!511855))

(declare-fun m!511857 () Bool)

(assert (=> start!48398 m!511857))

(declare-fun m!511859 () Bool)

(assert (=> b!531436 m!511859))

(declare-fun m!511861 () Bool)

(assert (=> b!531433 m!511861))

(declare-fun m!511863 () Bool)

(assert (=> b!531435 m!511863))

(assert (=> b!531435 m!511863))

(declare-fun m!511865 () Bool)

(assert (=> b!531435 m!511865))

(push 1)

(assert (not b!531431))

(assert (not b!531432))

(assert (not b!531437))

(assert (not b!531436))

(assert (not b!531433))

(assert (not start!48398))

(assert (not b!531435))

