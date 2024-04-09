; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30574 () Bool)

(assert start!30574)

(declare-fun b!306131 () Bool)

(declare-fun e!192033 () Bool)

(declare-fun e!192034 () Bool)

(assert (=> b!306131 (= e!192033 e!192034)))

(declare-fun res!163228 () Bool)

(assert (=> b!306131 (=> (not res!163228) (not e!192034))))

(declare-datatypes ((array!15576 0))(
  ( (array!15577 (arr!7371 (Array (_ BitVec 32) (_ BitVec 64))) (size!7723 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15576)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2522 0))(
  ( (MissingZero!2522 (index!12264 (_ BitVec 32))) (Found!2522 (index!12265 (_ BitVec 32))) (Intermediate!2522 (undefined!3334 Bool) (index!12266 (_ BitVec 32)) (x!30480 (_ BitVec 32))) (Undefined!2522) (MissingVacant!2522 (index!12267 (_ BitVec 32))) )
))
(declare-fun lt!150900 () SeekEntryResult!2522)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15576 (_ BitVec 32)) SeekEntryResult!2522)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306131 (= res!163228 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150900))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306131 (= lt!150900 (Intermediate!2522 false resIndex!52 resX!52))))

(declare-fun b!306132 () Bool)

(assert (=> b!306132 false))

(declare-datatypes ((Unit!9488 0))(
  ( (Unit!9489) )
))
(declare-fun e!192030 () Unit!9488)

(declare-fun Unit!9490 () Unit!9488)

(assert (=> b!306132 (= e!192030 Unit!9490)))

(declare-fun b!306133 () Bool)

(assert (=> b!306133 (= e!192034 (not true))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306133 (= index!1781 resIndex!52)))

(declare-fun lt!150901 () Unit!9488)

(declare-fun e!192032 () Unit!9488)

(assert (=> b!306133 (= lt!150901 e!192032)))

(declare-fun c!49055 () Bool)

(assert (=> b!306133 (= c!49055 (not (= resIndex!52 index!1781)))))

(declare-fun b!306134 () Bool)

(declare-fun res!163232 () Bool)

(assert (=> b!306134 (=> (not res!163232) (not e!192034))))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!306134 (= res!163232 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150900))))

(declare-fun b!306135 () Bool)

(declare-fun Unit!9491 () Unit!9488)

(assert (=> b!306135 (= e!192032 Unit!9491)))

(declare-fun b!306136 () Bool)

(declare-fun res!163227 () Bool)

(assert (=> b!306136 (=> (not res!163227) (not e!192033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306136 (= res!163227 (validKeyInArray!0 k!2441))))

(declare-fun b!306138 () Bool)

(declare-fun res!163230 () Bool)

(assert (=> b!306138 (=> (not res!163230) (not e!192033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15576 (_ BitVec 32)) Bool)

(assert (=> b!306138 (= res!163230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306139 () Bool)

(declare-fun res!163233 () Bool)

(assert (=> b!306139 (=> (not res!163233) (not e!192033))))

(declare-fun arrayContainsKey!0 (array!15576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306139 (= res!163233 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306140 () Bool)

(declare-fun res!163236 () Bool)

(assert (=> b!306140 (=> (not res!163236) (not e!192034))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306140 (= res!163236 (and (= (select (arr!7371 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7723 a!3293))))))

(declare-fun b!306141 () Bool)

(declare-fun res!163229 () Bool)

(assert (=> b!306141 (=> (not res!163229) (not e!192033))))

(assert (=> b!306141 (= res!163229 (and (= (size!7723 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7723 a!3293))))))

(declare-fun res!163235 () Bool)

(assert (=> start!30574 (=> (not res!163235) (not e!192033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30574 (= res!163235 (validMask!0 mask!3709))))

(assert (=> start!30574 e!192033))

(declare-fun array_inv!5325 (array!15576) Bool)

(assert (=> start!30574 (array_inv!5325 a!3293)))

(assert (=> start!30574 true))

(declare-fun b!306137 () Bool)

(assert (=> b!306137 (= e!192032 e!192030)))

(declare-fun c!49054 () Bool)

(assert (=> b!306137 (= c!49054 (or (= (select (arr!7371 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7371 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306142 () Bool)

(declare-fun res!163231 () Bool)

(assert (=> b!306142 (=> (not res!163231) (not e!192033))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15576 (_ BitVec 32)) SeekEntryResult!2522)

(assert (=> b!306142 (= res!163231 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2522 i!1240)))))

(declare-fun b!306143 () Bool)

(assert (=> b!306143 false))

(declare-fun lt!150902 () SeekEntryResult!2522)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306143 (= lt!150902 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9492 () Unit!9488)

(assert (=> b!306143 (= e!192030 Unit!9492)))

(declare-fun b!306144 () Bool)

(declare-fun res!163234 () Bool)

(assert (=> b!306144 (=> (not res!163234) (not e!192034))))

(assert (=> b!306144 (= res!163234 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7371 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(assert (= (and start!30574 res!163235) b!306141))

(assert (= (and b!306141 res!163229) b!306136))

(assert (= (and b!306136 res!163227) b!306139))

(assert (= (and b!306139 res!163233) b!306142))

(assert (= (and b!306142 res!163231) b!306138))

(assert (= (and b!306138 res!163230) b!306131))

(assert (= (and b!306131 res!163228) b!306140))

(assert (= (and b!306140 res!163236) b!306134))

(assert (= (and b!306134 res!163232) b!306144))

(assert (= (and b!306144 res!163234) b!306133))

(assert (= (and b!306133 c!49055) b!306137))

(assert (= (and b!306133 (not c!49055)) b!306135))

(assert (= (and b!306137 c!49054) b!306132))

(assert (= (and b!306137 (not c!49054)) b!306143))

(declare-fun m!316805 () Bool)

(assert (=> b!306142 m!316805))

(declare-fun m!316807 () Bool)

(assert (=> start!30574 m!316807))

(declare-fun m!316809 () Bool)

(assert (=> start!30574 m!316809))

(declare-fun m!316811 () Bool)

(assert (=> b!306140 m!316811))

(declare-fun m!316813 () Bool)

(assert (=> b!306134 m!316813))

(declare-fun m!316815 () Bool)

(assert (=> b!306137 m!316815))

(declare-fun m!316817 () Bool)

(assert (=> b!306136 m!316817))

(declare-fun m!316819 () Bool)

(assert (=> b!306139 m!316819))

(declare-fun m!316821 () Bool)

(assert (=> b!306131 m!316821))

(assert (=> b!306131 m!316821))

(declare-fun m!316823 () Bool)

(assert (=> b!306131 m!316823))

(assert (=> b!306144 m!316815))

(declare-fun m!316825 () Bool)

(assert (=> b!306143 m!316825))

(assert (=> b!306143 m!316825))

(declare-fun m!316827 () Bool)

(assert (=> b!306143 m!316827))

(declare-fun m!316829 () Bool)

(assert (=> b!306138 m!316829))

(push 1)

(assert (not b!306138))

