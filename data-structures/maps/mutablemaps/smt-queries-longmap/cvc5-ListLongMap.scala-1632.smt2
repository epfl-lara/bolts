; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30576 () Bool)

(assert start!30576)

(declare-datatypes ((array!15578 0))(
  ( (array!15579 (arr!7372 (Array (_ BitVec 32) (_ BitVec 64))) (size!7724 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15578)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!192047 () Bool)

(declare-fun b!306173 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306173 (= e!192047 (not (or (not (= (select (arr!7372 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306173 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9493 0))(
  ( (Unit!9494) )
))
(declare-fun lt!150909 () Unit!9493)

(declare-fun e!192049 () Unit!9493)

(assert (=> b!306173 (= lt!150909 e!192049)))

(declare-fun c!49060 () Bool)

(assert (=> b!306173 (= c!49060 (not (= resIndex!52 index!1781)))))

(declare-fun b!306174 () Bool)

(declare-fun e!192045 () Bool)

(assert (=> b!306174 (= e!192045 e!192047)))

(declare-fun res!163266 () Bool)

(assert (=> b!306174 (=> (not res!163266) (not e!192047))))

(declare-datatypes ((SeekEntryResult!2523 0))(
  ( (MissingZero!2523 (index!12268 (_ BitVec 32))) (Found!2523 (index!12269 (_ BitVec 32))) (Intermediate!2523 (undefined!3335 Bool) (index!12270 (_ BitVec 32)) (x!30489 (_ BitVec 32))) (Undefined!2523) (MissingVacant!2523 (index!12271 (_ BitVec 32))) )
))
(declare-fun lt!150910 () SeekEntryResult!2523)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15578 (_ BitVec 32)) SeekEntryResult!2523)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306174 (= res!163266 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150910))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306174 (= lt!150910 (Intermediate!2523 false resIndex!52 resX!52))))

(declare-fun b!306175 () Bool)

(declare-fun res!163261 () Bool)

(assert (=> b!306175 (=> (not res!163261) (not e!192045))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15578 (_ BitVec 32)) SeekEntryResult!2523)

(assert (=> b!306175 (= res!163261 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2523 i!1240)))))

(declare-fun b!306176 () Bool)

(assert (=> b!306176 false))

(declare-fun e!192046 () Unit!9493)

(declare-fun Unit!9495 () Unit!9493)

(assert (=> b!306176 (= e!192046 Unit!9495)))

(declare-fun b!306177 () Bool)

(declare-fun res!163258 () Bool)

(assert (=> b!306177 (=> (not res!163258) (not e!192045))))

(declare-fun arrayContainsKey!0 (array!15578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306177 (= res!163258 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306178 () Bool)

(assert (=> b!306178 false))

(declare-fun lt!150911 () SeekEntryResult!2523)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306178 (= lt!150911 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9496 () Unit!9493)

(assert (=> b!306178 (= e!192046 Unit!9496)))

(declare-fun b!306179 () Bool)

(declare-fun res!163263 () Bool)

(assert (=> b!306179 (=> (not res!163263) (not e!192047))))

(assert (=> b!306179 (= res!163263 (and (= (select (arr!7372 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7724 a!3293))))))

(declare-fun b!306180 () Bool)

(declare-fun res!163259 () Bool)

(assert (=> b!306180 (=> (not res!163259) (not e!192045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15578 (_ BitVec 32)) Bool)

(assert (=> b!306180 (= res!163259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306181 () Bool)

(assert (=> b!306181 (= e!192049 e!192046)))

(declare-fun c!49061 () Bool)

(assert (=> b!306181 (= c!49061 (or (= (select (arr!7372 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7372 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306182 () Bool)

(declare-fun res!163264 () Bool)

(assert (=> b!306182 (=> (not res!163264) (not e!192047))))

(assert (=> b!306182 (= res!163264 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7372 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306183 () Bool)

(declare-fun res!163265 () Bool)

(assert (=> b!306183 (=> (not res!163265) (not e!192047))))

(assert (=> b!306183 (= res!163265 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150910))))

(declare-fun b!306185 () Bool)

(declare-fun Unit!9497 () Unit!9493)

(assert (=> b!306185 (= e!192049 Unit!9497)))

(declare-fun b!306186 () Bool)

(declare-fun res!163262 () Bool)

(assert (=> b!306186 (=> (not res!163262) (not e!192045))))

(assert (=> b!306186 (= res!163262 (and (= (size!7724 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7724 a!3293))))))

(declare-fun b!306184 () Bool)

(declare-fun res!163260 () Bool)

(assert (=> b!306184 (=> (not res!163260) (not e!192045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306184 (= res!163260 (validKeyInArray!0 k!2441))))

(declare-fun res!163257 () Bool)

(assert (=> start!30576 (=> (not res!163257) (not e!192045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30576 (= res!163257 (validMask!0 mask!3709))))

(assert (=> start!30576 e!192045))

(declare-fun array_inv!5326 (array!15578) Bool)

(assert (=> start!30576 (array_inv!5326 a!3293)))

(assert (=> start!30576 true))

(assert (= (and start!30576 res!163257) b!306186))

(assert (= (and b!306186 res!163262) b!306184))

(assert (= (and b!306184 res!163260) b!306177))

(assert (= (and b!306177 res!163258) b!306175))

(assert (= (and b!306175 res!163261) b!306180))

(assert (= (and b!306180 res!163259) b!306174))

(assert (= (and b!306174 res!163266) b!306179))

(assert (= (and b!306179 res!163263) b!306183))

(assert (= (and b!306183 res!163265) b!306182))

(assert (= (and b!306182 res!163264) b!306173))

(assert (= (and b!306173 c!49060) b!306181))

(assert (= (and b!306173 (not c!49060)) b!306185))

(assert (= (and b!306181 c!49061) b!306176))

(assert (= (and b!306181 (not c!49061)) b!306178))

(declare-fun m!316831 () Bool)

(assert (=> b!306181 m!316831))

(declare-fun m!316833 () Bool)

(assert (=> start!30576 m!316833))

(declare-fun m!316835 () Bool)

(assert (=> start!30576 m!316835))

(declare-fun m!316837 () Bool)

(assert (=> b!306183 m!316837))

(assert (=> b!306182 m!316831))

(assert (=> b!306173 m!316831))

(declare-fun m!316839 () Bool)

(assert (=> b!306178 m!316839))

(assert (=> b!306178 m!316839))

(declare-fun m!316841 () Bool)

(assert (=> b!306178 m!316841))

(declare-fun m!316843 () Bool)

(assert (=> b!306180 m!316843))

(declare-fun m!316845 () Bool)

(assert (=> b!306174 m!316845))

(assert (=> b!306174 m!316845))

(declare-fun m!316847 () Bool)

(assert (=> b!306174 m!316847))

(declare-fun m!316849 () Bool)

(assert (=> b!306184 m!316849))

(declare-fun m!316851 () Bool)

(assert (=> b!306177 m!316851))

(declare-fun m!316853 () Bool)

(assert (=> b!306179 m!316853))

(declare-fun m!316855 () Bool)

(assert (=> b!306175 m!316855))

(push 1)

