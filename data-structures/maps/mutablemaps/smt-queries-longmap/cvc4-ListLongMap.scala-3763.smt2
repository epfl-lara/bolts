; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51594 () Bool)

(assert start!51594)

(declare-fun b!564176 () Bool)

(declare-fun e!324987 () Bool)

(assert (=> b!564176 (= e!324987 false)))

(declare-fun lt!257476 () Bool)

(declare-datatypes ((array!35413 0))(
  ( (array!35414 (arr!17003 (Array (_ BitVec 32) (_ BitVec 64))) (size!17367 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35413)

(declare-datatypes ((List!11136 0))(
  ( (Nil!11133) (Cons!11132 (h!12135 (_ BitVec 64)) (t!17372 List!11136)) )
))
(declare-fun arrayNoDuplicates!0 (array!35413 (_ BitVec 32) List!11136) Bool)

(assert (=> b!564176 (= lt!257476 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11133))))

(declare-fun b!564177 () Bool)

(declare-fun res!355478 () Bool)

(declare-fun e!324986 () Bool)

(assert (=> b!564177 (=> (not res!355478) (not e!324986))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564177 (= res!355478 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564178 () Bool)

(declare-fun res!355483 () Bool)

(assert (=> b!564178 (=> (not res!355483) (not e!324986))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564178 (= res!355483 (and (= (size!17367 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17367 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17367 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564179 () Bool)

(declare-fun res!355480 () Bool)

(assert (=> b!564179 (=> (not res!355480) (not e!324986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564179 (= res!355480 (validKeyInArray!0 k!1914))))

(declare-fun b!564180 () Bool)

(declare-fun res!355484 () Bool)

(assert (=> b!564180 (=> (not res!355484) (not e!324986))))

(assert (=> b!564180 (= res!355484 (validKeyInArray!0 (select (arr!17003 a!3118) j!142)))))

(declare-fun b!564181 () Bool)

(declare-fun res!355482 () Bool)

(assert (=> b!564181 (=> (not res!355482) (not e!324987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35413 (_ BitVec 32)) Bool)

(assert (=> b!564181 (= res!355482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564182 () Bool)

(assert (=> b!564182 (= e!324986 e!324987)))

(declare-fun res!355479 () Bool)

(assert (=> b!564182 (=> (not res!355479) (not e!324987))))

(declare-datatypes ((SeekEntryResult!5459 0))(
  ( (MissingZero!5459 (index!24063 (_ BitVec 32))) (Found!5459 (index!24064 (_ BitVec 32))) (Intermediate!5459 (undefined!6271 Bool) (index!24065 (_ BitVec 32)) (x!52965 (_ BitVec 32))) (Undefined!5459) (MissingVacant!5459 (index!24066 (_ BitVec 32))) )
))
(declare-fun lt!257477 () SeekEntryResult!5459)

(assert (=> b!564182 (= res!355479 (or (= lt!257477 (MissingZero!5459 i!1132)) (= lt!257477 (MissingVacant!5459 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35413 (_ BitVec 32)) SeekEntryResult!5459)

(assert (=> b!564182 (= lt!257477 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!355481 () Bool)

(assert (=> start!51594 (=> (not res!355481) (not e!324986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51594 (= res!355481 (validMask!0 mask!3119))))

(assert (=> start!51594 e!324986))

(assert (=> start!51594 true))

(declare-fun array_inv!12777 (array!35413) Bool)

(assert (=> start!51594 (array_inv!12777 a!3118)))

(assert (= (and start!51594 res!355481) b!564178))

(assert (= (and b!564178 res!355483) b!564180))

(assert (= (and b!564180 res!355484) b!564179))

(assert (= (and b!564179 res!355480) b!564177))

(assert (= (and b!564177 res!355478) b!564182))

(assert (= (and b!564182 res!355479) b!564181))

(assert (= (and b!564181 res!355482) b!564176))

(declare-fun m!542641 () Bool)

(assert (=> start!51594 m!542641))

(declare-fun m!542643 () Bool)

(assert (=> start!51594 m!542643))

(declare-fun m!542645 () Bool)

(assert (=> b!564176 m!542645))

(declare-fun m!542647 () Bool)

(assert (=> b!564179 m!542647))

(declare-fun m!542649 () Bool)

(assert (=> b!564180 m!542649))

(assert (=> b!564180 m!542649))

(declare-fun m!542651 () Bool)

(assert (=> b!564180 m!542651))

(declare-fun m!542653 () Bool)

(assert (=> b!564182 m!542653))

(declare-fun m!542655 () Bool)

(assert (=> b!564181 m!542655))

(declare-fun m!542657 () Bool)

(assert (=> b!564177 m!542657))

(push 1)

(assert (not b!564181))

(assert (not b!564176))

(assert (not b!564180))

(assert (not b!564177))

