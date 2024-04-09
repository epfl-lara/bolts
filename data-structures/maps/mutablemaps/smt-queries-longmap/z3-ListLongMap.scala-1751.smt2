; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32072 () Bool)

(assert start!32072)

(declare-fun b!319694 () Bool)

(declare-fun res!174165 () Bool)

(declare-fun e!198492 () Bool)

(assert (=> b!319694 (=> (not res!174165) (not e!198492))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((array!16342 0))(
  ( (array!16343 (arr!7730 (Array (_ BitVec 32) (_ BitVec 64))) (size!8082 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16342)

(assert (=> b!319694 (= res!174165 (and (= (size!8082 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8082 a!3305))))))

(declare-fun b!319695 () Bool)

(assert (=> b!319695 (= e!198492 false)))

(declare-fun lt!155852 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319695 (= lt!155852 (toIndex!0 k0!2497 mask!3777))))

(declare-fun b!319696 () Bool)

(declare-fun res!174166 () Bool)

(assert (=> b!319696 (=> (not res!174166) (not e!198492))))

(declare-fun arrayContainsKey!0 (array!16342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319696 (= res!174166 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319697 () Bool)

(declare-fun res!174168 () Bool)

(assert (=> b!319697 (=> (not res!174168) (not e!198492))))

(declare-datatypes ((SeekEntryResult!2872 0))(
  ( (MissingZero!2872 (index!13664 (_ BitVec 32))) (Found!2872 (index!13665 (_ BitVec 32))) (Intermediate!2872 (undefined!3684 Bool) (index!13666 (_ BitVec 32)) (x!31901 (_ BitVec 32))) (Undefined!2872) (MissingVacant!2872 (index!13667 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16342 (_ BitVec 32)) SeekEntryResult!2872)

(assert (=> b!319697 (= res!174168 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2872 i!1250)))))

(declare-fun b!319698 () Bool)

(declare-fun res!174167 () Bool)

(assert (=> b!319698 (=> (not res!174167) (not e!198492))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16342 (_ BitVec 32)) Bool)

(assert (=> b!319698 (= res!174167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!174164 () Bool)

(assert (=> start!32072 (=> (not res!174164) (not e!198492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32072 (= res!174164 (validMask!0 mask!3777))))

(assert (=> start!32072 e!198492))

(assert (=> start!32072 true))

(declare-fun array_inv!5684 (array!16342) Bool)

(assert (=> start!32072 (array_inv!5684 a!3305)))

(declare-fun b!319693 () Bool)

(declare-fun res!174163 () Bool)

(assert (=> b!319693 (=> (not res!174163) (not e!198492))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319693 (= res!174163 (validKeyInArray!0 k0!2497))))

(assert (= (and start!32072 res!174164) b!319694))

(assert (= (and b!319694 res!174165) b!319693))

(assert (= (and b!319693 res!174163) b!319696))

(assert (= (and b!319696 res!174166) b!319697))

(assert (= (and b!319697 res!174168) b!319698))

(assert (= (and b!319698 res!174167) b!319695))

(declare-fun m!328221 () Bool)

(assert (=> b!319695 m!328221))

(declare-fun m!328223 () Bool)

(assert (=> b!319693 m!328223))

(declare-fun m!328225 () Bool)

(assert (=> start!32072 m!328225))

(declare-fun m!328227 () Bool)

(assert (=> start!32072 m!328227))

(declare-fun m!328229 () Bool)

(assert (=> b!319696 m!328229))

(declare-fun m!328231 () Bool)

(assert (=> b!319698 m!328231))

(declare-fun m!328233 () Bool)

(assert (=> b!319697 m!328233))

(check-sat (not b!319696) (not b!319698) (not b!319697) (not b!319693) (not b!319695) (not start!32072))
(check-sat)
