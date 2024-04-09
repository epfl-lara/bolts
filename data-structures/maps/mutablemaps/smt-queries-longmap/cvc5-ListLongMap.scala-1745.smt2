; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31998 () Bool)

(assert start!31998)

(declare-fun b!319269 () Bool)

(declare-fun e!198307 () Bool)

(assert (=> b!319269 (= e!198307 false)))

(declare-datatypes ((array!16301 0))(
  ( (array!16302 (arr!7711 (Array (_ BitVec 32) (_ BitVec 64))) (size!8063 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16301)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2853 0))(
  ( (MissingZero!2853 (index!13588 (_ BitVec 32))) (Found!2853 (index!13589 (_ BitVec 32))) (Intermediate!2853 (undefined!3665 Bool) (index!13590 (_ BitVec 32)) (x!31834 (_ BitVec 32))) (Undefined!2853) (MissingVacant!2853 (index!13591 (_ BitVec 32))) )
))
(declare-fun lt!155768 () SeekEntryResult!2853)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16301 (_ BitVec 32)) SeekEntryResult!2853)

(assert (=> b!319269 (= lt!155768 (seekEntryOrOpen!0 k!2497 a!3305 mask!3777))))

(declare-fun b!319266 () Bool)

(declare-fun res!173811 () Bool)

(assert (=> b!319266 (=> (not res!173811) (not e!198307))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319266 (= res!173811 (and (= (size!8063 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8063 a!3305))))))

(declare-fun b!319268 () Bool)

(declare-fun res!173810 () Bool)

(assert (=> b!319268 (=> (not res!173810) (not e!198307))))

(declare-fun arrayContainsKey!0 (array!16301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319268 (= res!173810 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319267 () Bool)

(declare-fun res!173809 () Bool)

(assert (=> b!319267 (=> (not res!173809) (not e!198307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319267 (= res!173809 (validKeyInArray!0 k!2497))))

(declare-fun res!173808 () Bool)

(assert (=> start!31998 (=> (not res!173808) (not e!198307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31998 (= res!173808 (validMask!0 mask!3777))))

(assert (=> start!31998 e!198307))

(assert (=> start!31998 true))

(declare-fun array_inv!5665 (array!16301) Bool)

(assert (=> start!31998 (array_inv!5665 a!3305)))

(assert (= (and start!31998 res!173808) b!319266))

(assert (= (and b!319266 res!173811) b!319267))

(assert (= (and b!319267 res!173809) b!319268))

(assert (= (and b!319268 res!173810) b!319269))

(declare-fun m!327907 () Bool)

(assert (=> b!319269 m!327907))

(declare-fun m!327909 () Bool)

(assert (=> b!319268 m!327909))

(declare-fun m!327911 () Bool)

(assert (=> b!319267 m!327911))

(declare-fun m!327913 () Bool)

(assert (=> start!31998 m!327913))

(declare-fun m!327915 () Bool)

(assert (=> start!31998 m!327915))

(push 1)

(assert (not b!319267))

(assert (not b!319269))

(assert (not b!319268))

(assert (not start!31998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

