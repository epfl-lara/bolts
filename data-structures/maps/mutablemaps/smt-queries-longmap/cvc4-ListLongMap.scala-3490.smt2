; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48428 () Bool)

(assert start!48428)

(declare-fun b!531773 () Bool)

(declare-fun res!327419 () Bool)

(declare-fun e!309689 () Bool)

(assert (=> b!531773 (=> (not res!327419) (not e!309689))))

(declare-datatypes ((array!33692 0))(
  ( (array!33693 (arr!16184 (Array (_ BitVec 32) (_ BitVec 64))) (size!16548 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33692)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531773 (= res!327419 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531774 () Bool)

(declare-fun res!327416 () Bool)

(assert (=> b!531774 (=> (not res!327416) (not e!309689))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531774 (= res!327416 (and (= (size!16548 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16548 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16548 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531775 () Bool)

(declare-fun res!327414 () Bool)

(assert (=> b!531775 (=> (not res!327414) (not e!309689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531775 (= res!327414 (validKeyInArray!0 (select (arr!16184 a!3154) j!147)))))

(declare-fun b!531776 () Bool)

(declare-fun e!309691 () Bool)

(assert (=> b!531776 (= e!309689 e!309691)))

(declare-fun res!327418 () Bool)

(assert (=> b!531776 (=> (not res!327418) (not e!309691))))

(declare-datatypes ((SeekEntryResult!4649 0))(
  ( (MissingZero!4649 (index!20820 (_ BitVec 32))) (Found!4649 (index!20821 (_ BitVec 32))) (Intermediate!4649 (undefined!5461 Bool) (index!20822 (_ BitVec 32)) (x!49818 (_ BitVec 32))) (Undefined!4649) (MissingVacant!4649 (index!20823 (_ BitVec 32))) )
))
(declare-fun lt!245071 () SeekEntryResult!4649)

(assert (=> b!531776 (= res!327418 (or (= lt!245071 (MissingZero!4649 i!1153)) (= lt!245071 (MissingVacant!4649 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33692 (_ BitVec 32)) SeekEntryResult!4649)

(assert (=> b!531776 (= lt!245071 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531777 () Bool)

(declare-fun res!327417 () Bool)

(assert (=> b!531777 (=> (not res!327417) (not e!309689))))

(assert (=> b!531777 (= res!327417 (validKeyInArray!0 k!1998))))

(declare-fun res!327413 () Bool)

(assert (=> start!48428 (=> (not res!327413) (not e!309689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48428 (= res!327413 (validMask!0 mask!3216))))

(assert (=> start!48428 e!309689))

(assert (=> start!48428 true))

(declare-fun array_inv!11958 (array!33692) Bool)

(assert (=> start!48428 (array_inv!11958 a!3154)))

(declare-fun b!531778 () Bool)

(assert (=> b!531778 (= e!309691 false)))

(declare-fun lt!245072 () Bool)

(declare-datatypes ((List!10356 0))(
  ( (Nil!10353) (Cons!10352 (h!11292 (_ BitVec 64)) (t!16592 List!10356)) )
))
(declare-fun arrayNoDuplicates!0 (array!33692 (_ BitVec 32) List!10356) Bool)

(assert (=> b!531778 (= lt!245072 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10353))))

(declare-fun b!531779 () Bool)

(declare-fun res!327415 () Bool)

(assert (=> b!531779 (=> (not res!327415) (not e!309691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33692 (_ BitVec 32)) Bool)

(assert (=> b!531779 (= res!327415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48428 res!327413) b!531774))

(assert (= (and b!531774 res!327416) b!531775))

(assert (= (and b!531775 res!327414) b!531777))

(assert (= (and b!531777 res!327417) b!531773))

(assert (= (and b!531773 res!327419) b!531776))

(assert (= (and b!531776 res!327418) b!531779))

(assert (= (and b!531779 res!327415) b!531778))

(declare-fun m!512137 () Bool)

(assert (=> b!531775 m!512137))

(assert (=> b!531775 m!512137))

(declare-fun m!512139 () Bool)

(assert (=> b!531775 m!512139))

(declare-fun m!512141 () Bool)

(assert (=> b!531777 m!512141))

(declare-fun m!512143 () Bool)

(assert (=> b!531779 m!512143))

(declare-fun m!512145 () Bool)

(assert (=> b!531773 m!512145))

(declare-fun m!512147 () Bool)

(assert (=> b!531778 m!512147))

(declare-fun m!512149 () Bool)

(assert (=> start!48428 m!512149))

(declare-fun m!512151 () Bool)

(assert (=> start!48428 m!512151))

(declare-fun m!512153 () Bool)

(assert (=> b!531776 m!512153))

(push 1)

(assert (not b!531778))

(assert (not b!531779))

(assert (not start!48428))

(assert (not b!531775))

