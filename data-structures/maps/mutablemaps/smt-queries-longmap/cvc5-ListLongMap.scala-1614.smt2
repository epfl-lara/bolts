; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30414 () Bool)

(assert start!30414)

(declare-fun b!304140 () Bool)

(declare-fun e!191194 () Bool)

(assert (=> b!304140 (= e!191194 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!150391 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304140 (= lt!150391 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!304141 () Bool)

(declare-fun res!161652 () Bool)

(assert (=> b!304141 (=> (not res!161652) (not e!191194))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((array!15467 0))(
  ( (array!15468 (arr!7318 (Array (_ BitVec 32) (_ BitVec 64))) (size!7670 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15467)

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!304141 (= res!161652 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7318 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7318 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7318 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!304142 () Bool)

(declare-fun res!161647 () Bool)

(declare-fun e!191193 () Bool)

(assert (=> b!304142 (=> (not res!161647) (not e!191193))))

(declare-fun arrayContainsKey!0 (array!15467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304142 (= res!161647 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!161646 () Bool)

(assert (=> start!30414 (=> (not res!161646) (not e!191193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30414 (= res!161646 (validMask!0 mask!3709))))

(assert (=> start!30414 e!191193))

(declare-fun array_inv!5272 (array!15467) Bool)

(assert (=> start!30414 (array_inv!5272 a!3293)))

(assert (=> start!30414 true))

(declare-fun b!304143 () Bool)

(declare-fun res!161650 () Bool)

(assert (=> b!304143 (=> (not res!161650) (not e!191194))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304143 (= res!161650 (and (= (select (arr!7318 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7670 a!3293))))))

(declare-fun b!304144 () Bool)

(declare-fun res!161645 () Bool)

(assert (=> b!304144 (=> (not res!161645) (not e!191193))))

(declare-datatypes ((SeekEntryResult!2469 0))(
  ( (MissingZero!2469 (index!12052 (_ BitVec 32))) (Found!2469 (index!12053 (_ BitVec 32))) (Intermediate!2469 (undefined!3281 Bool) (index!12054 (_ BitVec 32)) (x!30282 (_ BitVec 32))) (Undefined!2469) (MissingVacant!2469 (index!12055 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15467 (_ BitVec 32)) SeekEntryResult!2469)

(assert (=> b!304144 (= res!161645 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2469 i!1240)))))

(declare-fun b!304145 () Bool)

(declare-fun res!161643 () Bool)

(assert (=> b!304145 (=> (not res!161643) (not e!191193))))

(assert (=> b!304145 (= res!161643 (and (= (size!7670 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7670 a!3293))))))

(declare-fun b!304146 () Bool)

(declare-fun res!161651 () Bool)

(assert (=> b!304146 (=> (not res!161651) (not e!191194))))

(declare-fun lt!150392 () SeekEntryResult!2469)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15467 (_ BitVec 32)) SeekEntryResult!2469)

(assert (=> b!304146 (= res!161651 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150392))))

(declare-fun b!304147 () Bool)

(declare-fun res!161648 () Bool)

(assert (=> b!304147 (=> (not res!161648) (not e!191193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304147 (= res!161648 (validKeyInArray!0 k!2441))))

(declare-fun b!304148 () Bool)

(assert (=> b!304148 (= e!191193 e!191194)))

(declare-fun res!161649 () Bool)

(assert (=> b!304148 (=> (not res!161649) (not e!191194))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304148 (= res!161649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150392))))

(assert (=> b!304148 (= lt!150392 (Intermediate!2469 false resIndex!52 resX!52))))

(declare-fun b!304149 () Bool)

(declare-fun res!161644 () Bool)

(assert (=> b!304149 (=> (not res!161644) (not e!191193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15467 (_ BitVec 32)) Bool)

(assert (=> b!304149 (= res!161644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30414 res!161646) b!304145))

(assert (= (and b!304145 res!161643) b!304147))

(assert (= (and b!304147 res!161648) b!304142))

(assert (= (and b!304142 res!161647) b!304144))

(assert (= (and b!304144 res!161645) b!304149))

(assert (= (and b!304149 res!161644) b!304148))

(assert (= (and b!304148 res!161649) b!304143))

(assert (= (and b!304143 res!161650) b!304146))

(assert (= (and b!304146 res!161651) b!304141))

(assert (= (and b!304141 res!161652) b!304140))

(declare-fun m!315295 () Bool)

(assert (=> start!30414 m!315295))

(declare-fun m!315297 () Bool)

(assert (=> start!30414 m!315297))

(declare-fun m!315299 () Bool)

(assert (=> b!304147 m!315299))

(declare-fun m!315301 () Bool)

(assert (=> b!304140 m!315301))

(declare-fun m!315303 () Bool)

(assert (=> b!304148 m!315303))

(assert (=> b!304148 m!315303))

(declare-fun m!315305 () Bool)

(assert (=> b!304148 m!315305))

(declare-fun m!315307 () Bool)

(assert (=> b!304141 m!315307))

(declare-fun m!315309 () Bool)

(assert (=> b!304146 m!315309))

(declare-fun m!315311 () Bool)

(assert (=> b!304144 m!315311))

(declare-fun m!315313 () Bool)

(assert (=> b!304149 m!315313))

(declare-fun m!315315 () Bool)

(assert (=> b!304143 m!315315))

(declare-fun m!315317 () Bool)

(assert (=> b!304142 m!315317))

(push 1)

