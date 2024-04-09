; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31850 () Bool)

(assert start!31850)

(declare-fun b!318129 () Bool)

(declare-fun res!172867 () Bool)

(declare-fun e!197700 () Bool)

(assert (=> b!318129 (=> (not res!172867) (not e!197700))))

(declare-datatypes ((array!16219 0))(
  ( (array!16220 (arr!7673 (Array (_ BitVec 32) (_ BitVec 64))) (size!8025 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16219)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318129 (= res!172867 (and (= (select (arr!7673 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8025 a!3293))))))

(declare-fun b!318130 () Bool)

(declare-fun e!197702 () Bool)

(assert (=> b!318130 (= e!197700 e!197702)))

(declare-fun res!172871 () Bool)

(assert (=> b!318130 (=> (not res!172871) (not e!197702))))

(declare-datatypes ((SeekEntryResult!2824 0))(
  ( (MissingZero!2824 (index!13472 (_ BitVec 32))) (Found!2824 (index!13473 (_ BitVec 32))) (Intermediate!2824 (undefined!3636 Bool) (index!13474 (_ BitVec 32)) (x!31692 (_ BitVec 32))) (Undefined!2824) (MissingVacant!2824 (index!13475 (_ BitVec 32))) )
))
(declare-fun lt!155270 () SeekEntryResult!2824)

(declare-fun lt!155269 () SeekEntryResult!2824)

(declare-fun k0!2441 () (_ BitVec 64))

(assert (=> b!318130 (= res!172871 (and (= lt!155270 lt!155269) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7673 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16219 (_ BitVec 32)) SeekEntryResult!2824)

(assert (=> b!318130 (= lt!155270 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!318131 () Bool)

(assert (=> b!318131 (= e!197702 (not true))))

(declare-fun e!197703 () Bool)

(assert (=> b!318131 e!197703))

(declare-fun res!172875 () Bool)

(assert (=> b!318131 (=> (not res!172875) (not e!197703))))

(declare-fun lt!155268 () (_ BitVec 32))

(assert (=> b!318131 (= res!172875 (= lt!155270 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155268 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318131 (= lt!155268 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318132 () Bool)

(declare-fun res!172872 () Bool)

(declare-fun e!197701 () Bool)

(assert (=> b!318132 (=> (not res!172872) (not e!197701))))

(assert (=> b!318132 (= res!172872 (and (= (size!8025 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8025 a!3293))))))

(declare-fun b!318133 () Bool)

(declare-fun res!172873 () Bool)

(assert (=> b!318133 (=> (not res!172873) (not e!197701))))

(declare-fun arrayContainsKey!0 (array!16219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318133 (= res!172873 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!172866 () Bool)

(assert (=> start!31850 (=> (not res!172866) (not e!197701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31850 (= res!172866 (validMask!0 mask!3709))))

(assert (=> start!31850 e!197701))

(declare-fun array_inv!5627 (array!16219) Bool)

(assert (=> start!31850 (array_inv!5627 a!3293)))

(assert (=> start!31850 true))

(declare-fun b!318134 () Bool)

(declare-fun res!172870 () Bool)

(assert (=> b!318134 (=> (not res!172870) (not e!197701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318134 (= res!172870 (validKeyInArray!0 k0!2441))))

(declare-fun b!318135 () Bool)

(assert (=> b!318135 (= e!197701 e!197700)))

(declare-fun res!172868 () Bool)

(assert (=> b!318135 (=> (not res!172868) (not e!197700))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318135 (= res!172868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155269))))

(assert (=> b!318135 (= lt!155269 (Intermediate!2824 false resIndex!52 resX!52))))

(declare-fun b!318136 () Bool)

(declare-fun res!172874 () Bool)

(assert (=> b!318136 (=> (not res!172874) (not e!197701))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16219 (_ BitVec 32)) SeekEntryResult!2824)

(assert (=> b!318136 (= res!172874 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2824 i!1240)))))

(declare-fun lt!155267 () array!16219)

(declare-fun b!318137 () Bool)

(assert (=> b!318137 (= e!197703 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155267 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155268 k0!2441 lt!155267 mask!3709)))))

(assert (=> b!318137 (= lt!155267 (array!16220 (store (arr!7673 a!3293) i!1240 k0!2441) (size!8025 a!3293)))))

(declare-fun b!318138 () Bool)

(declare-fun res!172869 () Bool)

(assert (=> b!318138 (=> (not res!172869) (not e!197701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16219 (_ BitVec 32)) Bool)

(assert (=> b!318138 (= res!172869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31850 res!172866) b!318132))

(assert (= (and b!318132 res!172872) b!318134))

(assert (= (and b!318134 res!172870) b!318133))

(assert (= (and b!318133 res!172873) b!318136))

(assert (= (and b!318136 res!172874) b!318138))

(assert (= (and b!318138 res!172869) b!318135))

(assert (= (and b!318135 res!172868) b!318129))

(assert (= (and b!318129 res!172867) b!318130))

(assert (= (and b!318130 res!172871) b!318131))

(assert (= (and b!318131 res!172875) b!318137))

(declare-fun m!326865 () Bool)

(assert (=> b!318138 m!326865))

(declare-fun m!326867 () Bool)

(assert (=> b!318133 m!326867))

(declare-fun m!326869 () Bool)

(assert (=> b!318130 m!326869))

(declare-fun m!326871 () Bool)

(assert (=> b!318130 m!326871))

(declare-fun m!326873 () Bool)

(assert (=> b!318131 m!326873))

(declare-fun m!326875 () Bool)

(assert (=> b!318131 m!326875))

(declare-fun m!326877 () Bool)

(assert (=> b!318135 m!326877))

(assert (=> b!318135 m!326877))

(declare-fun m!326879 () Bool)

(assert (=> b!318135 m!326879))

(declare-fun m!326881 () Bool)

(assert (=> b!318137 m!326881))

(declare-fun m!326883 () Bool)

(assert (=> b!318137 m!326883))

(declare-fun m!326885 () Bool)

(assert (=> b!318137 m!326885))

(declare-fun m!326887 () Bool)

(assert (=> start!31850 m!326887))

(declare-fun m!326889 () Bool)

(assert (=> start!31850 m!326889))

(declare-fun m!326891 () Bool)

(assert (=> b!318129 m!326891))

(declare-fun m!326893 () Bool)

(assert (=> b!318136 m!326893))

(declare-fun m!326895 () Bool)

(assert (=> b!318134 m!326895))

(check-sat (not b!318133) (not b!318137) (not b!318136) (not b!318130) (not b!318135) (not b!318134) (not b!318138) (not b!318131) (not start!31850))
(check-sat)
