; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44072 () Bool)

(assert start!44072)

(declare-fun b!485473 () Bool)

(declare-fun res!289227 () Bool)

(declare-fun e!285844 () Bool)

(assert (=> b!485473 (=> (not res!289227) (not e!285844))))

(declare-datatypes ((array!31400 0))(
  ( (array!31401 (arr!15095 (Array (_ BitVec 32) (_ BitVec 64))) (size!15459 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31400)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485473 (= res!289227 (validKeyInArray!0 (select (arr!15095 a!3235) j!176)))))

(declare-fun b!485474 () Bool)

(declare-fun res!289225 () Bool)

(assert (=> b!485474 (=> (not res!289225) (not e!285844))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485474 (= res!289225 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485475 () Bool)

(assert (=> b!485475 (= e!285844 false)))

(declare-datatypes ((SeekEntryResult!3569 0))(
  ( (MissingZero!3569 (index!16455 (_ BitVec 32))) (Found!3569 (index!16456 (_ BitVec 32))) (Intermediate!3569 (undefined!4381 Bool) (index!16457 (_ BitVec 32)) (x!45624 (_ BitVec 32))) (Undefined!3569) (MissingVacant!3569 (index!16458 (_ BitVec 32))) )
))
(declare-fun lt!219518 () SeekEntryResult!3569)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31400 (_ BitVec 32)) SeekEntryResult!3569)

(assert (=> b!485475 (= lt!219518 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!289228 () Bool)

(assert (=> start!44072 (=> (not res!289228) (not e!285844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44072 (= res!289228 (validMask!0 mask!3524))))

(assert (=> start!44072 e!285844))

(assert (=> start!44072 true))

(declare-fun array_inv!10869 (array!31400) Bool)

(assert (=> start!44072 (array_inv!10869 a!3235)))

(declare-fun b!485476 () Bool)

(declare-fun res!289229 () Bool)

(assert (=> b!485476 (=> (not res!289229) (not e!285844))))

(assert (=> b!485476 (= res!289229 (validKeyInArray!0 k!2280))))

(declare-fun b!485477 () Bool)

(declare-fun res!289226 () Bool)

(assert (=> b!485477 (=> (not res!289226) (not e!285844))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485477 (= res!289226 (and (= (size!15459 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15459 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15459 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44072 res!289228) b!485477))

(assert (= (and b!485477 res!289226) b!485473))

(assert (= (and b!485473 res!289227) b!485476))

(assert (= (and b!485476 res!289229) b!485474))

(assert (= (and b!485474 res!289225) b!485475))

(declare-fun m!465599 () Bool)

(assert (=> b!485475 m!465599))

(declare-fun m!465601 () Bool)

(assert (=> b!485474 m!465601))

(declare-fun m!465603 () Bool)

(assert (=> start!44072 m!465603))

(declare-fun m!465605 () Bool)

(assert (=> start!44072 m!465605))

(declare-fun m!465607 () Bool)

(assert (=> b!485473 m!465607))

(assert (=> b!485473 m!465607))

(declare-fun m!465609 () Bool)

(assert (=> b!485473 m!465609))

(declare-fun m!465611 () Bool)

(assert (=> b!485476 m!465611))

(push 1)

(assert (not b!485474))

(assert (not b!485476))

(assert (not b!485475))

(assert (not start!44072))

(assert (not b!485473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

