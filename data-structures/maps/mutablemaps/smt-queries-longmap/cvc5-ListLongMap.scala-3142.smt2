; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44284 () Bool)

(assert start!44284)

(declare-fun b!486678 () Bool)

(declare-fun res!290213 () Bool)

(declare-fun e!286452 () Bool)

(assert (=> b!486678 (=> (not res!290213) (not e!286452))))

(declare-datatypes ((array!31495 0))(
  ( (array!31496 (arr!15138 (Array (_ BitVec 32) (_ BitVec 64))) (size!15502 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31495)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31495 (_ BitVec 32)) Bool)

(assert (=> b!486678 (= res!290213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486679 () Bool)

(declare-fun e!286453 () Bool)

(assert (=> b!486679 (= e!286453 e!286452)))

(declare-fun res!290219 () Bool)

(assert (=> b!486679 (=> (not res!290219) (not e!286452))))

(declare-datatypes ((SeekEntryResult!3612 0))(
  ( (MissingZero!3612 (index!16627 (_ BitVec 32))) (Found!3612 (index!16628 (_ BitVec 32))) (Intermediate!3612 (undefined!4424 Bool) (index!16629 (_ BitVec 32)) (x!45787 (_ BitVec 32))) (Undefined!3612) (MissingVacant!3612 (index!16630 (_ BitVec 32))) )
))
(declare-fun lt!219842 () SeekEntryResult!3612)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486679 (= res!290219 (or (= lt!219842 (MissingZero!3612 i!1204)) (= lt!219842 (MissingVacant!3612 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31495 (_ BitVec 32)) SeekEntryResult!3612)

(assert (=> b!486679 (= lt!219842 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486680 () Bool)

(assert (=> b!486680 (= e!286452 false)))

(declare-fun lt!219841 () Bool)

(declare-datatypes ((List!9349 0))(
  ( (Nil!9346) (Cons!9345 (h!10201 (_ BitVec 64)) (t!15585 List!9349)) )
))
(declare-fun arrayNoDuplicates!0 (array!31495 (_ BitVec 32) List!9349) Bool)

(assert (=> b!486680 (= lt!219841 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9346))))

(declare-fun b!486681 () Bool)

(declare-fun res!290215 () Bool)

(assert (=> b!486681 (=> (not res!290215) (not e!286453))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486681 (= res!290215 (validKeyInArray!0 (select (arr!15138 a!3235) j!176)))))

(declare-fun b!486682 () Bool)

(declare-fun res!290214 () Bool)

(assert (=> b!486682 (=> (not res!290214) (not e!286453))))

(assert (=> b!486682 (= res!290214 (validKeyInArray!0 k!2280))))

(declare-fun b!486683 () Bool)

(declare-fun res!290216 () Bool)

(assert (=> b!486683 (=> (not res!290216) (not e!286453))))

(assert (=> b!486683 (= res!290216 (and (= (size!15502 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15502 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15502 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486677 () Bool)

(declare-fun res!290217 () Bool)

(assert (=> b!486677 (=> (not res!290217) (not e!286453))))

(declare-fun arrayContainsKey!0 (array!31495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486677 (= res!290217 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!290218 () Bool)

(assert (=> start!44284 (=> (not res!290218) (not e!286453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44284 (= res!290218 (validMask!0 mask!3524))))

(assert (=> start!44284 e!286453))

(assert (=> start!44284 true))

(declare-fun array_inv!10912 (array!31495) Bool)

(assert (=> start!44284 (array_inv!10912 a!3235)))

(assert (= (and start!44284 res!290218) b!486683))

(assert (= (and b!486683 res!290216) b!486681))

(assert (= (and b!486681 res!290215) b!486682))

(assert (= (and b!486682 res!290214) b!486677))

(assert (= (and b!486677 res!290217) b!486679))

(assert (= (and b!486679 res!290219) b!486678))

(assert (= (and b!486678 res!290213) b!486680))

(declare-fun m!466591 () Bool)

(assert (=> b!486681 m!466591))

(assert (=> b!486681 m!466591))

(declare-fun m!466593 () Bool)

(assert (=> b!486681 m!466593))

(declare-fun m!466595 () Bool)

(assert (=> b!486677 m!466595))

(declare-fun m!466597 () Bool)

(assert (=> b!486679 m!466597))

(declare-fun m!466599 () Bool)

(assert (=> b!486682 m!466599))

(declare-fun m!466601 () Bool)

(assert (=> b!486678 m!466601))

(declare-fun m!466603 () Bool)

(assert (=> start!44284 m!466603))

(declare-fun m!466605 () Bool)

(assert (=> start!44284 m!466605))

(declare-fun m!466607 () Bool)

(assert (=> b!486680 m!466607))

(push 1)

