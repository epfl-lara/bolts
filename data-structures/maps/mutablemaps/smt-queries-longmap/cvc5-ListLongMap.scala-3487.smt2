; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48406 () Bool)

(assert start!48406)

(declare-fun b!531524 () Bool)

(declare-fun res!327164 () Bool)

(declare-fun e!309590 () Bool)

(assert (=> b!531524 (=> (not res!327164) (not e!309590))))

(declare-datatypes ((array!33670 0))(
  ( (array!33671 (arr!16173 (Array (_ BitVec 32) (_ BitVec 64))) (size!16537 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33670)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531524 (= res!327164 (validKeyInArray!0 (select (arr!16173 a!3154) j!147)))))

(declare-fun b!531525 () Bool)

(declare-fun res!327170 () Bool)

(assert (=> b!531525 (=> (not res!327170) (not e!309590))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!531525 (= res!327170 (validKeyInArray!0 k!1998))))

(declare-fun b!531526 () Bool)

(declare-fun e!309591 () Bool)

(assert (=> b!531526 (= e!309591 false)))

(declare-fun lt!245023 () Bool)

(declare-datatypes ((List!10345 0))(
  ( (Nil!10342) (Cons!10341 (h!11281 (_ BitVec 64)) (t!16581 List!10345)) )
))
(declare-fun arrayNoDuplicates!0 (array!33670 (_ BitVec 32) List!10345) Bool)

(assert (=> b!531526 (= lt!245023 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10342))))

(declare-fun res!327167 () Bool)

(assert (=> start!48406 (=> (not res!327167) (not e!309590))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48406 (= res!327167 (validMask!0 mask!3216))))

(assert (=> start!48406 e!309590))

(assert (=> start!48406 true))

(declare-fun array_inv!11947 (array!33670) Bool)

(assert (=> start!48406 (array_inv!11947 a!3154)))

(declare-fun b!531527 () Bool)

(declare-fun res!327168 () Bool)

(assert (=> b!531527 (=> (not res!327168) (not e!309590))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531527 (= res!327168 (and (= (size!16537 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16537 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16537 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531528 () Bool)

(assert (=> b!531528 (= e!309590 e!309591)))

(declare-fun res!327165 () Bool)

(assert (=> b!531528 (=> (not res!327165) (not e!309591))))

(declare-datatypes ((SeekEntryResult!4638 0))(
  ( (MissingZero!4638 (index!20776 (_ BitVec 32))) (Found!4638 (index!20777 (_ BitVec 32))) (Intermediate!4638 (undefined!5450 Bool) (index!20778 (_ BitVec 32)) (x!49783 (_ BitVec 32))) (Undefined!4638) (MissingVacant!4638 (index!20779 (_ BitVec 32))) )
))
(declare-fun lt!245024 () SeekEntryResult!4638)

(assert (=> b!531528 (= res!327165 (or (= lt!245024 (MissingZero!4638 i!1153)) (= lt!245024 (MissingVacant!4638 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33670 (_ BitVec 32)) SeekEntryResult!4638)

(assert (=> b!531528 (= lt!245024 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531529 () Bool)

(declare-fun res!327166 () Bool)

(assert (=> b!531529 (=> (not res!327166) (not e!309591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33670 (_ BitVec 32)) Bool)

(assert (=> b!531529 (= res!327166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531530 () Bool)

(declare-fun res!327169 () Bool)

(assert (=> b!531530 (=> (not res!327169) (not e!309590))))

(declare-fun arrayContainsKey!0 (array!33670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531530 (= res!327169 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48406 res!327167) b!531527))

(assert (= (and b!531527 res!327168) b!531524))

(assert (= (and b!531524 res!327164) b!531525))

(assert (= (and b!531525 res!327170) b!531530))

(assert (= (and b!531530 res!327169) b!531528))

(assert (= (and b!531528 res!327165) b!531529))

(assert (= (and b!531529 res!327166) b!531526))

(declare-fun m!511927 () Bool)

(assert (=> b!531528 m!511927))

(declare-fun m!511929 () Bool)

(assert (=> b!531525 m!511929))

(declare-fun m!511931 () Bool)

(assert (=> b!531524 m!511931))

(assert (=> b!531524 m!511931))

(declare-fun m!511933 () Bool)

(assert (=> b!531524 m!511933))

(declare-fun m!511935 () Bool)

(assert (=> b!531529 m!511935))

(declare-fun m!511937 () Bool)

(assert (=> b!531526 m!511937))

(declare-fun m!511939 () Bool)

(assert (=> b!531530 m!511939))

(declare-fun m!511941 () Bool)

(assert (=> start!48406 m!511941))

(declare-fun m!511943 () Bool)

(assert (=> start!48406 m!511943))

(push 1)

(assert (not b!531529))

