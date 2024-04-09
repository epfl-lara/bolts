; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30974 () Bool)

(assert start!30974)

(declare-fun b!310884 () Bool)

(declare-fun res!167496 () Bool)

(declare-fun e!194032 () Bool)

(assert (=> b!310884 (=> (not res!167496) (not e!194032))))

(declare-datatypes ((array!15874 0))(
  ( (array!15875 (arr!7517 (Array (_ BitVec 32) (_ BitVec 64))) (size!7869 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15874)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310884 (= res!167496 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310885 () Bool)

(declare-fun e!194033 () Bool)

(assert (=> b!310885 (= e!194032 e!194033)))

(declare-fun res!167499 () Bool)

(assert (=> b!310885 (=> (not res!167499) (not e!194033))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2668 0))(
  ( (MissingZero!2668 (index!12848 (_ BitVec 32))) (Found!2668 (index!12849 (_ BitVec 32))) (Intermediate!2668 (undefined!3480 Bool) (index!12850 (_ BitVec 32)) (x!31036 (_ BitVec 32))) (Undefined!2668) (MissingVacant!2668 (index!12851 (_ BitVec 32))) )
))
(declare-fun lt!152174 () SeekEntryResult!2668)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15874 (_ BitVec 32)) SeekEntryResult!2668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310885 (= res!167499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152174))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310885 (= lt!152174 (Intermediate!2668 false resIndex!52 resX!52))))

(declare-fun b!310886 () Bool)

(declare-fun res!167504 () Bool)

(assert (=> b!310886 (=> (not res!167504) (not e!194033))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310886 (= res!167504 (and (= (select (arr!7517 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7869 a!3293))))))

(declare-fun b!310888 () Bool)

(declare-fun res!167500 () Bool)

(assert (=> b!310888 (=> (not res!167500) (not e!194032))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15874 (_ BitVec 32)) SeekEntryResult!2668)

(assert (=> b!310888 (= res!167500 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2668 i!1240)))))

(declare-fun lt!152175 () array!15874)

(declare-fun e!194035 () Bool)

(declare-fun lt!152177 () (_ BitVec 32))

(declare-fun b!310889 () Bool)

(assert (=> b!310889 (= e!194035 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152175 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152177 k0!2441 lt!152175 mask!3709)))))

(assert (=> b!310889 (= lt!152175 (array!15875 (store (arr!7517 a!3293) i!1240 k0!2441) (size!7869 a!3293)))))

(declare-fun b!310890 () Bool)

(declare-fun e!194034 () Bool)

(assert (=> b!310890 (= e!194034 (not true))))

(assert (=> b!310890 e!194035))

(declare-fun res!167501 () Bool)

(assert (=> b!310890 (=> (not res!167501) (not e!194035))))

(declare-fun lt!152176 () SeekEntryResult!2668)

(assert (=> b!310890 (= res!167501 (= lt!152176 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152177 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310890 (= lt!152177 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310891 () Bool)

(declare-fun res!167505 () Bool)

(assert (=> b!310891 (=> (not res!167505) (not e!194032))))

(assert (=> b!310891 (= res!167505 (and (= (size!7869 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7869 a!3293))))))

(declare-fun b!310887 () Bool)

(assert (=> b!310887 (= e!194033 e!194034)))

(declare-fun res!167503 () Bool)

(assert (=> b!310887 (=> (not res!167503) (not e!194034))))

(assert (=> b!310887 (= res!167503 (and (= lt!152176 lt!152174) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7517 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310887 (= lt!152176 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!167497 () Bool)

(assert (=> start!30974 (=> (not res!167497) (not e!194032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30974 (= res!167497 (validMask!0 mask!3709))))

(assert (=> start!30974 e!194032))

(declare-fun array_inv!5471 (array!15874) Bool)

(assert (=> start!30974 (array_inv!5471 a!3293)))

(assert (=> start!30974 true))

(declare-fun b!310892 () Bool)

(declare-fun res!167502 () Bool)

(assert (=> b!310892 (=> (not res!167502) (not e!194032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15874 (_ BitVec 32)) Bool)

(assert (=> b!310892 (= res!167502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310893 () Bool)

(declare-fun res!167498 () Bool)

(assert (=> b!310893 (=> (not res!167498) (not e!194032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310893 (= res!167498 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30974 res!167497) b!310891))

(assert (= (and b!310891 res!167505) b!310893))

(assert (= (and b!310893 res!167498) b!310884))

(assert (= (and b!310884 res!167496) b!310888))

(assert (= (and b!310888 res!167500) b!310892))

(assert (= (and b!310892 res!167502) b!310885))

(assert (= (and b!310885 res!167499) b!310886))

(assert (= (and b!310886 res!167504) b!310887))

(assert (= (and b!310887 res!167503) b!310890))

(assert (= (and b!310890 res!167501) b!310889))

(declare-fun m!320877 () Bool)

(assert (=> b!310888 m!320877))

(declare-fun m!320879 () Bool)

(assert (=> b!310885 m!320879))

(assert (=> b!310885 m!320879))

(declare-fun m!320881 () Bool)

(assert (=> b!310885 m!320881))

(declare-fun m!320883 () Bool)

(assert (=> b!310890 m!320883))

(declare-fun m!320885 () Bool)

(assert (=> b!310890 m!320885))

(declare-fun m!320887 () Bool)

(assert (=> b!310892 m!320887))

(declare-fun m!320889 () Bool)

(assert (=> b!310884 m!320889))

(declare-fun m!320891 () Bool)

(assert (=> b!310887 m!320891))

(declare-fun m!320893 () Bool)

(assert (=> b!310887 m!320893))

(declare-fun m!320895 () Bool)

(assert (=> b!310886 m!320895))

(declare-fun m!320897 () Bool)

(assert (=> b!310889 m!320897))

(declare-fun m!320899 () Bool)

(assert (=> b!310889 m!320899))

(declare-fun m!320901 () Bool)

(assert (=> b!310889 m!320901))

(declare-fun m!320903 () Bool)

(assert (=> start!30974 m!320903))

(declare-fun m!320905 () Bool)

(assert (=> start!30974 m!320905))

(declare-fun m!320907 () Bool)

(assert (=> b!310893 m!320907))

(check-sat (not b!310884) (not b!310890) (not start!30974) (not b!310885) (not b!310889) (not b!310887) (not b!310892) (not b!310888) (not b!310893))
(check-sat)
