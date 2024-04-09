; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31804 () Bool)

(assert start!31804)

(declare-fun b!317439 () Bool)

(declare-fun e!197355 () Bool)

(declare-fun e!197357 () Bool)

(assert (=> b!317439 (= e!197355 e!197357)))

(declare-fun res!172184 () Bool)

(assert (=> b!317439 (=> (not res!172184) (not e!197357))))

(declare-datatypes ((array!16173 0))(
  ( (array!16174 (arr!7650 (Array (_ BitVec 32) (_ BitVec 64))) (size!8002 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16173)

(declare-datatypes ((SeekEntryResult!2801 0))(
  ( (MissingZero!2801 (index!13380 (_ BitVec 32))) (Found!2801 (index!13381 (_ BitVec 32))) (Intermediate!2801 (undefined!3613 Bool) (index!13382 (_ BitVec 32)) (x!31605 (_ BitVec 32))) (Undefined!2801) (MissingVacant!2801 (index!13383 (_ BitVec 32))) )
))
(declare-fun lt!154994 () SeekEntryResult!2801)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16173 (_ BitVec 32)) SeekEntryResult!2801)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317439 (= res!172184 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154994))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317439 (= lt!154994 (Intermediate!2801 false resIndex!52 resX!52))))

(declare-fun b!317440 () Bool)

(declare-fun res!172182 () Bool)

(assert (=> b!317440 (=> (not res!172182) (not e!197357))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317440 (= res!172182 (and (= (select (arr!7650 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8002 a!3293))))))

(declare-fun b!317441 () Bool)

(declare-fun res!172177 () Bool)

(assert (=> b!317441 (=> (not res!172177) (not e!197355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317441 (= res!172177 (validKeyInArray!0 k!2441))))

(declare-fun b!317442 () Bool)

(declare-fun e!197356 () Bool)

(assert (=> b!317442 (= e!197356 (not true))))

(declare-fun e!197359 () Bool)

(assert (=> b!317442 e!197359))

(declare-fun res!172183 () Bool)

(assert (=> b!317442 (=> (not res!172183) (not e!197359))))

(declare-fun lt!154991 () (_ BitVec 32))

(declare-fun lt!154992 () SeekEntryResult!2801)

(assert (=> b!317442 (= res!172183 (= lt!154992 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154991 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317442 (= lt!154991 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317443 () Bool)

(declare-fun res!172181 () Bool)

(assert (=> b!317443 (=> (not res!172181) (not e!197355))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16173 (_ BitVec 32)) SeekEntryResult!2801)

(assert (=> b!317443 (= res!172181 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2801 i!1240)))))

(declare-fun b!317444 () Bool)

(declare-fun res!172185 () Bool)

(assert (=> b!317444 (=> (not res!172185) (not e!197355))))

(assert (=> b!317444 (= res!172185 (and (= (size!8002 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8002 a!3293))))))

(declare-fun lt!154993 () array!16173)

(declare-fun b!317446 () Bool)

(assert (=> b!317446 (= e!197359 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154993 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154991 k!2441 lt!154993 mask!3709)))))

(assert (=> b!317446 (= lt!154993 (array!16174 (store (arr!7650 a!3293) i!1240 k!2441) (size!8002 a!3293)))))

(declare-fun b!317447 () Bool)

(assert (=> b!317447 (= e!197357 e!197356)))

(declare-fun res!172180 () Bool)

(assert (=> b!317447 (=> (not res!172180) (not e!197356))))

(assert (=> b!317447 (= res!172180 (and (= lt!154992 lt!154994) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7650 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317447 (= lt!154992 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317448 () Bool)

(declare-fun res!172176 () Bool)

(assert (=> b!317448 (=> (not res!172176) (not e!197355))))

(declare-fun arrayContainsKey!0 (array!16173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317448 (= res!172176 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317445 () Bool)

(declare-fun res!172179 () Bool)

(assert (=> b!317445 (=> (not res!172179) (not e!197355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16173 (_ BitVec 32)) Bool)

(assert (=> b!317445 (= res!172179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!172178 () Bool)

(assert (=> start!31804 (=> (not res!172178) (not e!197355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31804 (= res!172178 (validMask!0 mask!3709))))

(assert (=> start!31804 e!197355))

(declare-fun array_inv!5604 (array!16173) Bool)

(assert (=> start!31804 (array_inv!5604 a!3293)))

(assert (=> start!31804 true))

(assert (= (and start!31804 res!172178) b!317444))

(assert (= (and b!317444 res!172185) b!317441))

(assert (= (and b!317441 res!172177) b!317448))

(assert (= (and b!317448 res!172176) b!317443))

(assert (= (and b!317443 res!172181) b!317445))

(assert (= (and b!317445 res!172179) b!317439))

(assert (= (and b!317439 res!172184) b!317440))

(assert (= (and b!317440 res!172182) b!317447))

(assert (= (and b!317447 res!172180) b!317442))

(assert (= (and b!317442 res!172183) b!317446))

(declare-fun m!326129 () Bool)

(assert (=> b!317446 m!326129))

(declare-fun m!326131 () Bool)

(assert (=> b!317446 m!326131))

(declare-fun m!326133 () Bool)

(assert (=> b!317446 m!326133))

(declare-fun m!326135 () Bool)

(assert (=> b!317441 m!326135))

(declare-fun m!326137 () Bool)

(assert (=> b!317440 m!326137))

(declare-fun m!326139 () Bool)

(assert (=> b!317443 m!326139))

(declare-fun m!326141 () Bool)

(assert (=> b!317447 m!326141))

(declare-fun m!326143 () Bool)

(assert (=> b!317447 m!326143))

(declare-fun m!326145 () Bool)

(assert (=> start!31804 m!326145))

(declare-fun m!326147 () Bool)

(assert (=> start!31804 m!326147))

(declare-fun m!326149 () Bool)

(assert (=> b!317442 m!326149))

(declare-fun m!326151 () Bool)

(assert (=> b!317442 m!326151))

(declare-fun m!326153 () Bool)

(assert (=> b!317448 m!326153))

(declare-fun m!326155 () Bool)

(assert (=> b!317439 m!326155))

(assert (=> b!317439 m!326155))

(declare-fun m!326157 () Bool)

(assert (=> b!317439 m!326157))

(declare-fun m!326159 () Bool)

(assert (=> b!317445 m!326159))

(push 1)

