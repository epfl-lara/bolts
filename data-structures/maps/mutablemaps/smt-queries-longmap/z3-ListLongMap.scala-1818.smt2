; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32726 () Bool)

(assert start!32726)

(declare-fun b!326868 () Bool)

(declare-fun e!201106 () Bool)

(declare-fun e!201104 () Bool)

(assert (=> b!326868 (= e!201106 e!201104)))

(declare-fun res!180057 () Bool)

(assert (=> b!326868 (=> (not res!180057) (not e!201104))))

(declare-datatypes ((array!16759 0))(
  ( (array!16760 (arr!7931 (Array (_ BitVec 32) (_ BitVec 64))) (size!8283 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16759)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3073 0))(
  ( (MissingZero!3073 (index!14468 (_ BitVec 32))) (Found!3073 (index!14469 (_ BitVec 32))) (Intermediate!3073 (undefined!3885 Bool) (index!14470 (_ BitVec 32)) (x!32674 (_ BitVec 32))) (Undefined!3073) (MissingVacant!3073 (index!14471 (_ BitVec 32))) )
))
(declare-fun lt!157412 () SeekEntryResult!3073)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16759 (_ BitVec 32)) SeekEntryResult!3073)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326868 (= res!180057 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157412))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326868 (= lt!157412 (Intermediate!3073 false resIndex!58 resX!58))))

(declare-fun b!326869 () Bool)

(declare-fun res!180058 () Bool)

(assert (=> b!326869 (=> (not res!180058) (not e!201106))))

(declare-fun arrayContainsKey!0 (array!16759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326869 (= res!180058 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!180064 () Bool)

(assert (=> start!32726 (=> (not res!180064) (not e!201106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32726 (= res!180064 (validMask!0 mask!3777))))

(assert (=> start!32726 e!201106))

(declare-fun array_inv!5885 (array!16759) Bool)

(assert (=> start!32726 (array_inv!5885 a!3305)))

(assert (=> start!32726 true))

(declare-fun b!326870 () Bool)

(declare-fun res!180060 () Bool)

(assert (=> b!326870 (=> (not res!180060) (not e!201106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326870 (= res!180060 (validKeyInArray!0 k0!2497))))

(declare-fun b!326871 () Bool)

(declare-fun res!180061 () Bool)

(assert (=> b!326871 (=> (not res!180061) (not e!201104))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326871 (= res!180061 (and (= (select (arr!7931 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8283 a!3305))))))

(declare-fun b!326872 () Bool)

(declare-fun res!180066 () Bool)

(assert (=> b!326872 (=> (not res!180066) (not e!201106))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16759 (_ BitVec 32)) SeekEntryResult!3073)

(assert (=> b!326872 (= res!180066 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3073 i!1250)))))

(declare-fun b!326873 () Bool)

(assert (=> b!326873 (= e!201104 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-datatypes ((Unit!10155 0))(
  ( (Unit!10156) )
))
(declare-fun lt!157411 () Unit!10155)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16759 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10155)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326873 (= lt!157411 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326874 () Bool)

(declare-fun res!180065 () Bool)

(assert (=> b!326874 (=> (not res!180065) (not e!201106))))

(assert (=> b!326874 (= res!180065 (and (= (size!8283 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8283 a!3305))))))

(declare-fun b!326875 () Bool)

(declare-fun res!180059 () Bool)

(assert (=> b!326875 (=> (not res!180059) (not e!201104))))

(assert (=> b!326875 (= res!180059 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7931 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326876 () Bool)

(declare-fun res!180063 () Bool)

(assert (=> b!326876 (=> (not res!180063) (not e!201104))))

(assert (=> b!326876 (= res!180063 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157412))))

(declare-fun b!326877 () Bool)

(declare-fun res!180062 () Bool)

(assert (=> b!326877 (=> (not res!180062) (not e!201106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16759 (_ BitVec 32)) Bool)

(assert (=> b!326877 (= res!180062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32726 res!180064) b!326874))

(assert (= (and b!326874 res!180065) b!326870))

(assert (= (and b!326870 res!180060) b!326869))

(assert (= (and b!326869 res!180058) b!326872))

(assert (= (and b!326872 res!180066) b!326877))

(assert (= (and b!326877 res!180062) b!326868))

(assert (= (and b!326868 res!180057) b!326871))

(assert (= (and b!326871 res!180061) b!326876))

(assert (= (and b!326876 res!180063) b!326875))

(assert (= (and b!326875 res!180059) b!326873))

(declare-fun m!333375 () Bool)

(assert (=> b!326876 m!333375))

(declare-fun m!333377 () Bool)

(assert (=> start!32726 m!333377))

(declare-fun m!333379 () Bool)

(assert (=> start!32726 m!333379))

(declare-fun m!333381 () Bool)

(assert (=> b!326877 m!333381))

(declare-fun m!333383 () Bool)

(assert (=> b!326869 m!333383))

(declare-fun m!333385 () Bool)

(assert (=> b!326872 m!333385))

(declare-fun m!333387 () Bool)

(assert (=> b!326873 m!333387))

(assert (=> b!326873 m!333387))

(declare-fun m!333389 () Bool)

(assert (=> b!326873 m!333389))

(declare-fun m!333391 () Bool)

(assert (=> b!326870 m!333391))

(declare-fun m!333393 () Bool)

(assert (=> b!326871 m!333393))

(declare-fun m!333395 () Bool)

(assert (=> b!326875 m!333395))

(declare-fun m!333397 () Bool)

(assert (=> b!326868 m!333397))

(assert (=> b!326868 m!333397))

(declare-fun m!333399 () Bool)

(assert (=> b!326868 m!333399))

(check-sat (not start!32726) (not b!326873) (not b!326869) (not b!326872) (not b!326876) (not b!326877) (not b!326870) (not b!326868))
(check-sat)
