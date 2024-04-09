; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30986 () Bool)

(assert start!30986)

(declare-fun res!167685 () Bool)

(declare-fun e!194124 () Bool)

(assert (=> start!30986 (=> (not res!167685) (not e!194124))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30986 (= res!167685 (validMask!0 mask!3709))))

(assert (=> start!30986 e!194124))

(declare-datatypes ((array!15886 0))(
  ( (array!15887 (arr!7523 (Array (_ BitVec 32) (_ BitVec 64))) (size!7875 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15886)

(declare-fun array_inv!5477 (array!15886) Bool)

(assert (=> start!30986 (array_inv!5477 a!3293)))

(assert (=> start!30986 true))

(declare-fun b!311064 () Bool)

(declare-fun res!167679 () Bool)

(assert (=> b!311064 (=> (not res!167679) (not e!194124))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311064 (= res!167679 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun e!194121 () Bool)

(declare-fun lt!152248 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152247 () array!15886)

(declare-fun b!311065 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2674 0))(
  ( (MissingZero!2674 (index!12872 (_ BitVec 32))) (Found!2674 (index!12873 (_ BitVec 32))) (Intermediate!2674 (undefined!3486 Bool) (index!12874 (_ BitVec 32)) (x!31058 (_ BitVec 32))) (Undefined!2674) (MissingVacant!2674 (index!12875 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15886 (_ BitVec 32)) SeekEntryResult!2674)

(assert (=> b!311065 (= e!194121 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152247 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152248 k0!2441 lt!152247 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311065 (= lt!152247 (array!15887 (store (arr!7523 a!3293) i!1240 k0!2441) (size!7875 a!3293)))))

(declare-fun b!311066 () Bool)

(declare-fun res!167678 () Bool)

(assert (=> b!311066 (=> (not res!167678) (not e!194124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15886 (_ BitVec 32)) Bool)

(assert (=> b!311066 (= res!167678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311067 () Bool)

(declare-fun res!167683 () Bool)

(assert (=> b!311067 (=> (not res!167683) (not e!194124))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15886 (_ BitVec 32)) SeekEntryResult!2674)

(assert (=> b!311067 (= res!167683 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2674 i!1240)))))

(declare-fun b!311068 () Bool)

(declare-fun e!194125 () Bool)

(declare-fun e!194123 () Bool)

(assert (=> b!311068 (= e!194125 e!194123)))

(declare-fun res!167684 () Bool)

(assert (=> b!311068 (=> (not res!167684) (not e!194123))))

(declare-fun lt!152246 () SeekEntryResult!2674)

(declare-fun lt!152249 () SeekEntryResult!2674)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311068 (= res!167684 (and (= lt!152249 lt!152246) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7523 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311068 (= lt!152249 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!311069 () Bool)

(declare-fun res!167680 () Bool)

(assert (=> b!311069 (=> (not res!167680) (not e!194124))))

(assert (=> b!311069 (= res!167680 (and (= (size!7875 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7875 a!3293))))))

(declare-fun b!311070 () Bool)

(declare-fun res!167677 () Bool)

(assert (=> b!311070 (=> (not res!167677) (not e!194125))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311070 (= res!167677 (and (= (select (arr!7523 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7875 a!3293))))))

(declare-fun b!311071 () Bool)

(assert (=> b!311071 (= e!194123 (not true))))

(assert (=> b!311071 e!194121))

(declare-fun res!167681 () Bool)

(assert (=> b!311071 (=> (not res!167681) (not e!194121))))

(assert (=> b!311071 (= res!167681 (= lt!152249 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152248 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311071 (= lt!152248 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311072 () Bool)

(assert (=> b!311072 (= e!194124 e!194125)))

(declare-fun res!167682 () Bool)

(assert (=> b!311072 (=> (not res!167682) (not e!194125))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311072 (= res!167682 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152246))))

(assert (=> b!311072 (= lt!152246 (Intermediate!2674 false resIndex!52 resX!52))))

(declare-fun b!311073 () Bool)

(declare-fun res!167676 () Bool)

(assert (=> b!311073 (=> (not res!167676) (not e!194124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311073 (= res!167676 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30986 res!167685) b!311069))

(assert (= (and b!311069 res!167680) b!311073))

(assert (= (and b!311073 res!167676) b!311064))

(assert (= (and b!311064 res!167679) b!311067))

(assert (= (and b!311067 res!167683) b!311066))

(assert (= (and b!311066 res!167678) b!311072))

(assert (= (and b!311072 res!167682) b!311070))

(assert (= (and b!311070 res!167677) b!311068))

(assert (= (and b!311068 res!167684) b!311071))

(assert (= (and b!311071 res!167681) b!311065))

(declare-fun m!321069 () Bool)

(assert (=> b!311073 m!321069))

(declare-fun m!321071 () Bool)

(assert (=> start!30986 m!321071))

(declare-fun m!321073 () Bool)

(assert (=> start!30986 m!321073))

(declare-fun m!321075 () Bool)

(assert (=> b!311072 m!321075))

(assert (=> b!311072 m!321075))

(declare-fun m!321077 () Bool)

(assert (=> b!311072 m!321077))

(declare-fun m!321079 () Bool)

(assert (=> b!311065 m!321079))

(declare-fun m!321081 () Bool)

(assert (=> b!311065 m!321081))

(declare-fun m!321083 () Bool)

(assert (=> b!311065 m!321083))

(declare-fun m!321085 () Bool)

(assert (=> b!311068 m!321085))

(declare-fun m!321087 () Bool)

(assert (=> b!311068 m!321087))

(declare-fun m!321089 () Bool)

(assert (=> b!311067 m!321089))

(declare-fun m!321091 () Bool)

(assert (=> b!311064 m!321091))

(declare-fun m!321093 () Bool)

(assert (=> b!311066 m!321093))

(declare-fun m!321095 () Bool)

(assert (=> b!311071 m!321095))

(declare-fun m!321097 () Bool)

(assert (=> b!311071 m!321097))

(declare-fun m!321099 () Bool)

(assert (=> b!311070 m!321099))

(check-sat (not b!311066) (not b!311065) (not b!311068) (not b!311071) (not b!311064) (not start!30986) (not b!311072) (not b!311073) (not b!311067))
(check-sat)
