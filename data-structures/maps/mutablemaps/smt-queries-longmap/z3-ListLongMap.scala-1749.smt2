; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32060 () Bool)

(assert start!32060)

(declare-fun res!174058 () Bool)

(declare-fun e!198457 () Bool)

(assert (=> start!32060 (=> (not res!174058) (not e!198457))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32060 (= res!174058 (validMask!0 mask!3777))))

(assert (=> start!32060 e!198457))

(assert (=> start!32060 true))

(declare-datatypes ((array!16330 0))(
  ( (array!16331 (arr!7724 (Array (_ BitVec 32) (_ BitVec 64))) (size!8076 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16330)

(declare-fun array_inv!5678 (array!16330) Bool)

(assert (=> start!32060 (array_inv!5678 a!3305)))

(declare-fun b!319585 () Bool)

(declare-fun res!174057 () Bool)

(assert (=> b!319585 (=> (not res!174057) (not e!198457))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2866 0))(
  ( (MissingZero!2866 (index!13640 (_ BitVec 32))) (Found!2866 (index!13641 (_ BitVec 32))) (Intermediate!2866 (undefined!3678 Bool) (index!13642 (_ BitVec 32)) (x!31879 (_ BitVec 32))) (Undefined!2866) (MissingVacant!2866 (index!13643 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16330 (_ BitVec 32)) SeekEntryResult!2866)

(assert (=> b!319585 (= res!174057 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2866 i!1250)))))

(declare-fun b!319586 () Bool)

(declare-fun res!174059 () Bool)

(assert (=> b!319586 (=> (not res!174059) (not e!198457))))

(declare-fun arrayContainsKey!0 (array!16330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319586 (= res!174059 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319587 () Bool)

(assert (=> b!319587 (= e!198457 false)))

(declare-fun lt!155834 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319587 (= lt!155834 (toIndex!0 k0!2497 mask!3777))))

(declare-fun b!319588 () Bool)

(declare-fun res!174060 () Bool)

(assert (=> b!319588 (=> (not res!174060) (not e!198457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319588 (= res!174060 (validKeyInArray!0 k0!2497))))

(declare-fun b!319589 () Bool)

(declare-fun res!174056 () Bool)

(assert (=> b!319589 (=> (not res!174056) (not e!198457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16330 (_ BitVec 32)) Bool)

(assert (=> b!319589 (= res!174056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319590 () Bool)

(declare-fun res!174055 () Bool)

(assert (=> b!319590 (=> (not res!174055) (not e!198457))))

(assert (=> b!319590 (= res!174055 (and (= (size!8076 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8076 a!3305))))))

(assert (= (and start!32060 res!174058) b!319590))

(assert (= (and b!319590 res!174055) b!319588))

(assert (= (and b!319588 res!174060) b!319586))

(assert (= (and b!319586 res!174059) b!319585))

(assert (= (and b!319585 res!174057) b!319589))

(assert (= (and b!319589 res!174056) b!319587))

(declare-fun m!328137 () Bool)

(assert (=> b!319585 m!328137))

(declare-fun m!328139 () Bool)

(assert (=> b!319589 m!328139))

(declare-fun m!328141 () Bool)

(assert (=> b!319586 m!328141))

(declare-fun m!328143 () Bool)

(assert (=> b!319587 m!328143))

(declare-fun m!328145 () Bool)

(assert (=> b!319588 m!328145))

(declare-fun m!328147 () Bool)

(assert (=> start!32060 m!328147))

(declare-fun m!328149 () Bool)

(assert (=> start!32060 m!328149))

(check-sat (not b!319587) (not b!319589) (not b!319585) (not b!319588) (not b!319586) (not start!32060))
(check-sat)
