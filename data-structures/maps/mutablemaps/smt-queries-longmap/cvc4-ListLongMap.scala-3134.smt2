; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44114 () Bool)

(assert start!44114)

(declare-fun res!289552 () Bool)

(declare-fun e!285970 () Bool)

(assert (=> start!44114 (=> (not res!289552) (not e!285970))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44114 (= res!289552 (validMask!0 mask!3524))))

(assert (=> start!44114 e!285970))

(assert (=> start!44114 true))

(declare-datatypes ((array!31442 0))(
  ( (array!31443 (arr!15116 (Array (_ BitVec 32) (_ BitVec 64))) (size!15480 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31442)

(declare-fun array_inv!10890 (array!31442) Bool)

(assert (=> start!44114 (array_inv!10890 a!3235)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3590 0))(
  ( (MissingZero!3590 (index!16539 (_ BitVec 32))) (Found!3590 (index!16540 (_ BitVec 32))) (Intermediate!3590 (undefined!4402 Bool) (index!16541 (_ BitVec 32)) (x!45701 (_ BitVec 32))) (Undefined!3590) (MissingVacant!3590 (index!16542 (_ BitVec 32))) )
))
(declare-fun lt!219572 () SeekEntryResult!3590)

(declare-fun b!485797 () Bool)

(assert (=> b!485797 (= e!285970 (and (or (= lt!219572 (MissingZero!3590 i!1204)) (= lt!219572 (MissingVacant!3590 i!1204))) (bvsgt #b00000000000000000000000000000000 (size!15480 a!3235))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31442 (_ BitVec 32)) SeekEntryResult!3590)

(assert (=> b!485797 (= lt!219572 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485798 () Bool)

(declare-fun res!289551 () Bool)

(assert (=> b!485798 (=> (not res!289551) (not e!285970))))

(declare-fun arrayContainsKey!0 (array!31442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485798 (= res!289551 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485799 () Bool)

(declare-fun res!289550 () Bool)

(assert (=> b!485799 (=> (not res!289550) (not e!285970))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485799 (= res!289550 (and (= (size!15480 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15480 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15480 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485800 () Bool)

(declare-fun res!289553 () Bool)

(assert (=> b!485800 (=> (not res!289553) (not e!285970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485800 (= res!289553 (validKeyInArray!0 (select (arr!15116 a!3235) j!176)))))

(declare-fun b!485801 () Bool)

(declare-fun res!289549 () Bool)

(assert (=> b!485801 (=> (not res!289549) (not e!285970))))

(assert (=> b!485801 (= res!289549 (validKeyInArray!0 k!2280))))

(assert (= (and start!44114 res!289552) b!485799))

(assert (= (and b!485799 res!289550) b!485800))

(assert (= (and b!485800 res!289553) b!485801))

(assert (= (and b!485801 res!289549) b!485798))

(assert (= (and b!485798 res!289551) b!485797))

(declare-fun m!465893 () Bool)

(assert (=> b!485800 m!465893))

(assert (=> b!485800 m!465893))

(declare-fun m!465895 () Bool)

(assert (=> b!485800 m!465895))

(declare-fun m!465897 () Bool)

(assert (=> b!485801 m!465897))

(declare-fun m!465899 () Bool)

(assert (=> b!485798 m!465899))

(declare-fun m!465901 () Bool)

(assert (=> b!485797 m!465901))

(declare-fun m!465903 () Bool)

(assert (=> start!44114 m!465903))

(declare-fun m!465905 () Bool)

(assert (=> start!44114 m!465905))

(push 1)

(assert (not b!485801))

(assert (not b!485798))

(assert (not b!485797))

(assert (not start!44114))

(assert (not b!485800))

