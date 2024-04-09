; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32000 () Bool)

(assert start!32000)

(declare-fun b!319279 () Bool)

(declare-fun res!173820 () Bool)

(declare-fun e!198313 () Bool)

(assert (=> b!319279 (=> (not res!173820) (not e!198313))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319279 (= res!173820 (validKeyInArray!0 k0!2497))))

(declare-fun b!319278 () Bool)

(declare-fun res!173822 () Bool)

(assert (=> b!319278 (=> (not res!173822) (not e!198313))))

(declare-datatypes ((array!16303 0))(
  ( (array!16304 (arr!7712 (Array (_ BitVec 32) (_ BitVec 64))) (size!8064 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16303)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319278 (= res!173822 (and (= (size!8064 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8064 a!3305))))))

(declare-fun res!173821 () Bool)

(assert (=> start!32000 (=> (not res!173821) (not e!198313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32000 (= res!173821 (validMask!0 mask!3777))))

(assert (=> start!32000 e!198313))

(assert (=> start!32000 true))

(declare-fun array_inv!5666 (array!16303) Bool)

(assert (=> start!32000 (array_inv!5666 a!3305)))

(declare-fun b!319280 () Bool)

(declare-fun res!173823 () Bool)

(assert (=> b!319280 (=> (not res!173823) (not e!198313))))

(declare-fun arrayContainsKey!0 (array!16303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319280 (= res!173823 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319281 () Bool)

(assert (=> b!319281 (= e!198313 false)))

(declare-datatypes ((SeekEntryResult!2854 0))(
  ( (MissingZero!2854 (index!13592 (_ BitVec 32))) (Found!2854 (index!13593 (_ BitVec 32))) (Intermediate!2854 (undefined!3666 Bool) (index!13594 (_ BitVec 32)) (x!31835 (_ BitVec 32))) (Undefined!2854) (MissingVacant!2854 (index!13595 (_ BitVec 32))) )
))
(declare-fun lt!155771 () SeekEntryResult!2854)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16303 (_ BitVec 32)) SeekEntryResult!2854)

(assert (=> b!319281 (= lt!155771 (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777))))

(assert (= (and start!32000 res!173821) b!319278))

(assert (= (and b!319278 res!173822) b!319279))

(assert (= (and b!319279 res!173820) b!319280))

(assert (= (and b!319280 res!173823) b!319281))

(declare-fun m!327917 () Bool)

(assert (=> b!319279 m!327917))

(declare-fun m!327919 () Bool)

(assert (=> start!32000 m!327919))

(declare-fun m!327921 () Bool)

(assert (=> start!32000 m!327921))

(declare-fun m!327923 () Bool)

(assert (=> b!319280 m!327923))

(declare-fun m!327925 () Bool)

(assert (=> b!319281 m!327925))

(check-sat (not b!319281) (not b!319279) (not b!319280) (not start!32000))
(check-sat)
