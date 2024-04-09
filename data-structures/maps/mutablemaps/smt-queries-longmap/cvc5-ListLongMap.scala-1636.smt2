; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30600 () Bool)

(assert start!30600)

(declare-fun b!306677 () Bool)

(declare-fun res!163625 () Bool)

(declare-fun e!192229 () Bool)

(assert (=> b!306677 (=> (not res!163625) (not e!192229))))

(declare-datatypes ((array!15602 0))(
  ( (array!15603 (arr!7384 (Array (_ BitVec 32) (_ BitVec 64))) (size!7736 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15602)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306677 (= res!163625 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306678 () Bool)

(declare-fun res!163621 () Bool)

(assert (=> b!306678 (=> (not res!163621) (not e!192229))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15602 (_ BitVec 32)) Bool)

(assert (=> b!306678 (= res!163621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306679 () Bool)

(declare-fun e!192226 () Bool)

(assert (=> b!306679 (= e!192226 (not true))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306679 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9553 0))(
  ( (Unit!9554) )
))
(declare-fun lt!151019 () Unit!9553)

(declare-fun e!192225 () Unit!9553)

(assert (=> b!306679 (= lt!151019 e!192225)))

(declare-fun c!49132 () Bool)

(assert (=> b!306679 (= c!49132 (not (= resIndex!52 index!1781)))))

(declare-fun b!306680 () Bool)

(declare-fun Unit!9555 () Unit!9553)

(assert (=> b!306680 (= e!192225 Unit!9555)))

(declare-fun b!306681 () Bool)

(declare-fun res!163626 () Bool)

(assert (=> b!306681 (=> (not res!163626) (not e!192226))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!306681 (= res!163626 (and (= (select (arr!7384 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7736 a!3293))))))

(declare-fun b!306682 () Bool)

(declare-fun res!163622 () Bool)

(assert (=> b!306682 (=> (not res!163622) (not e!192226))))

(assert (=> b!306682 (= res!163622 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7384 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306683 () Bool)

(declare-fun res!163619 () Bool)

(assert (=> b!306683 (=> (not res!163619) (not e!192229))))

(declare-datatypes ((SeekEntryResult!2535 0))(
  ( (MissingZero!2535 (index!12316 (_ BitVec 32))) (Found!2535 (index!12317 (_ BitVec 32))) (Intermediate!2535 (undefined!3347 Bool) (index!12318 (_ BitVec 32)) (x!30533 (_ BitVec 32))) (Undefined!2535) (MissingVacant!2535 (index!12319 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15602 (_ BitVec 32)) SeekEntryResult!2535)

(assert (=> b!306683 (= res!163619 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2535 i!1240)))))

(declare-fun b!306684 () Bool)

(assert (=> b!306684 (= e!192229 e!192226)))

(declare-fun res!163624 () Bool)

(assert (=> b!306684 (=> (not res!163624) (not e!192226))))

(declare-fun lt!151018 () SeekEntryResult!2535)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15602 (_ BitVec 32)) SeekEntryResult!2535)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306684 (= res!163624 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151018))))

(assert (=> b!306684 (= lt!151018 (Intermediate!2535 false resIndex!52 resX!52))))

(declare-fun b!306686 () Bool)

(declare-fun res!163617 () Bool)

(assert (=> b!306686 (=> (not res!163617) (not e!192229))))

(assert (=> b!306686 (= res!163617 (and (= (size!7736 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7736 a!3293))))))

(declare-fun b!306687 () Bool)

(assert (=> b!306687 false))

(declare-fun lt!151017 () SeekEntryResult!2535)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306687 (= lt!151017 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun e!192227 () Unit!9553)

(declare-fun Unit!9556 () Unit!9553)

(assert (=> b!306687 (= e!192227 Unit!9556)))

(declare-fun b!306688 () Bool)

(assert (=> b!306688 false))

(declare-fun Unit!9557 () Unit!9553)

(assert (=> b!306688 (= e!192227 Unit!9557)))

(declare-fun b!306689 () Bool)

(declare-fun res!163620 () Bool)

(assert (=> b!306689 (=> (not res!163620) (not e!192229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306689 (= res!163620 (validKeyInArray!0 k!2441))))

(declare-fun b!306690 () Bool)

(assert (=> b!306690 (= e!192225 e!192227)))

(declare-fun c!49133 () Bool)

(assert (=> b!306690 (= c!49133 (or (= (select (arr!7384 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7384 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306685 () Bool)

(declare-fun res!163618 () Bool)

(assert (=> b!306685 (=> (not res!163618) (not e!192226))))

(assert (=> b!306685 (= res!163618 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151018))))

(declare-fun res!163623 () Bool)

(assert (=> start!30600 (=> (not res!163623) (not e!192229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30600 (= res!163623 (validMask!0 mask!3709))))

(assert (=> start!30600 e!192229))

(declare-fun array_inv!5338 (array!15602) Bool)

(assert (=> start!30600 (array_inv!5338 a!3293)))

(assert (=> start!30600 true))

(assert (= (and start!30600 res!163623) b!306686))

(assert (= (and b!306686 res!163617) b!306689))

(assert (= (and b!306689 res!163620) b!306677))

(assert (= (and b!306677 res!163625) b!306683))

(assert (= (and b!306683 res!163619) b!306678))

(assert (= (and b!306678 res!163621) b!306684))

(assert (= (and b!306684 res!163624) b!306681))

(assert (= (and b!306681 res!163626) b!306685))

(assert (= (and b!306685 res!163618) b!306682))

(assert (= (and b!306682 res!163622) b!306679))

(assert (= (and b!306679 c!49132) b!306690))

(assert (= (and b!306679 (not c!49132)) b!306680))

(assert (= (and b!306690 c!49133) b!306688))

(assert (= (and b!306690 (not c!49133)) b!306687))

(declare-fun m!317143 () Bool)

(assert (=> b!306685 m!317143))

(declare-fun m!317145 () Bool)

(assert (=> b!306684 m!317145))

(assert (=> b!306684 m!317145))

(declare-fun m!317147 () Bool)

(assert (=> b!306684 m!317147))

(declare-fun m!317149 () Bool)

(assert (=> b!306682 m!317149))

(declare-fun m!317151 () Bool)

(assert (=> start!30600 m!317151))

(declare-fun m!317153 () Bool)

(assert (=> start!30600 m!317153))

(assert (=> b!306690 m!317149))

(declare-fun m!317155 () Bool)

(assert (=> b!306687 m!317155))

(assert (=> b!306687 m!317155))

(declare-fun m!317157 () Bool)

(assert (=> b!306687 m!317157))

(declare-fun m!317159 () Bool)

(assert (=> b!306681 m!317159))

(declare-fun m!317161 () Bool)

(assert (=> b!306689 m!317161))

(declare-fun m!317163 () Bool)

(assert (=> b!306678 m!317163))

(declare-fun m!317165 () Bool)

(assert (=> b!306677 m!317165))

(declare-fun m!317167 () Bool)

(assert (=> b!306683 m!317167))

(push 1)

