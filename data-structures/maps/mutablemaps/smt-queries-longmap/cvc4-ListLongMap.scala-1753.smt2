; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32128 () Bool)

(assert start!32128)

(declare-fun res!174333 () Bool)

(declare-fun e!198606 () Bool)

(assert (=> start!32128 (=> (not res!174333) (not e!198606))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32128 (= res!174333 (validMask!0 mask!3777))))

(assert (=> start!32128 e!198606))

(assert (=> start!32128 true))

(declare-datatypes ((array!16359 0))(
  ( (array!16360 (arr!7737 (Array (_ BitVec 32) (_ BitVec 64))) (size!8089 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16359)

(declare-fun array_inv!5691 (array!16359) Bool)

(assert (=> start!32128 (array_inv!5691 a!3305)))

(declare-fun b!319927 () Bool)

(declare-fun res!174331 () Bool)

(assert (=> b!319927 (=> (not res!174331) (not e!198606))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2879 0))(
  ( (MissingZero!2879 (index!13692 (_ BitVec 32))) (Found!2879 (index!13693 (_ BitVec 32))) (Intermediate!2879 (undefined!3691 Bool) (index!13694 (_ BitVec 32)) (x!31927 (_ BitVec 32))) (Undefined!2879) (MissingVacant!2879 (index!13695 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16359 (_ BitVec 32)) SeekEntryResult!2879)

(assert (=> b!319927 (= res!174331 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2879 i!1250)))))

(declare-fun b!319928 () Bool)

(declare-fun res!174329 () Bool)

(assert (=> b!319928 (=> (not res!174329) (not e!198606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16359 (_ BitVec 32)) Bool)

(assert (=> b!319928 (= res!174329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319929 () Bool)

(declare-fun res!174332 () Bool)

(assert (=> b!319929 (=> (not res!174332) (not e!198606))))

(assert (=> b!319929 (= res!174332 (and (= (size!8089 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8089 a!3305))))))

(declare-fun b!319930 () Bool)

(assert (=> b!319930 (= e!198606 false)))

(declare-fun lt!155945 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319930 (= lt!155945 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319931 () Bool)

(declare-fun res!174328 () Bool)

(assert (=> b!319931 (=> (not res!174328) (not e!198606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319931 (= res!174328 (validKeyInArray!0 k!2497))))

(declare-fun b!319932 () Bool)

(declare-fun res!174330 () Bool)

(assert (=> b!319932 (=> (not res!174330) (not e!198606))))

(declare-fun arrayContainsKey!0 (array!16359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319932 (= res!174330 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32128 res!174333) b!319929))

(assert (= (and b!319929 res!174332) b!319931))

(assert (= (and b!319931 res!174328) b!319932))

(assert (= (and b!319932 res!174330) b!319927))

(assert (= (and b!319927 res!174331) b!319928))

(assert (= (and b!319928 res!174329) b!319930))

(declare-fun m!328397 () Bool)

(assert (=> b!319931 m!328397))

(declare-fun m!328399 () Bool)

(assert (=> b!319928 m!328399))

(declare-fun m!328401 () Bool)

(assert (=> b!319930 m!328401))

(declare-fun m!328403 () Bool)

(assert (=> b!319932 m!328403))

(declare-fun m!328405 () Bool)

(assert (=> b!319927 m!328405))

(declare-fun m!328407 () Bool)

(assert (=> start!32128 m!328407))

(declare-fun m!328409 () Bool)

(assert (=> start!32128 m!328409))

(push 1)

(assert (not b!319930))

(assert (not b!319931))

(assert (not b!319932))

(assert (not b!319928))

(assert (not start!32128))

(assert (not b!319927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

