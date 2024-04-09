; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31592 () Bool)

(assert start!31592)

(declare-fun b!315863 () Bool)

(assert (=> b!315863 false))

(declare-datatypes ((array!16114 0))(
  ( (array!16115 (arr!7625 (Array (_ BitVec 32) (_ BitVec 64))) (size!7977 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16114)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2776 0))(
  ( (MissingZero!2776 (index!13280 (_ BitVec 32))) (Found!2776 (index!13281 (_ BitVec 32))) (Intermediate!2776 (undefined!3588 Bool) (index!13282 (_ BitVec 32)) (x!31489 (_ BitVec 32))) (Undefined!2776) (MissingVacant!2776 (index!13283 (_ BitVec 32))) )
))
(declare-fun lt!154400 () SeekEntryResult!2776)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16114 (_ BitVec 32)) SeekEntryResult!2776)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315863 (= lt!154400 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9750 0))(
  ( (Unit!9751) )
))
(declare-fun e!196514 () Unit!9750)

(declare-fun Unit!9752 () Unit!9750)

(assert (=> b!315863 (= e!196514 Unit!9752)))

(declare-fun b!315864 () Bool)

(assert (=> b!315864 false))

(declare-fun Unit!9753 () Unit!9750)

(assert (=> b!315864 (= e!196514 Unit!9753)))

(declare-fun res!171187 () Bool)

(declare-fun e!196516 () Bool)

(assert (=> start!31592 (=> (not res!171187) (not e!196516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31592 (= res!171187 (validMask!0 mask!3709))))

(assert (=> start!31592 e!196516))

(declare-fun array_inv!5579 (array!16114) Bool)

(assert (=> start!31592 (array_inv!5579 a!3293)))

(assert (=> start!31592 true))

(declare-fun b!315865 () Bool)

(declare-fun res!171184 () Bool)

(assert (=> b!315865 (=> (not res!171184) (not e!196516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16114 (_ BitVec 32)) Bool)

(assert (=> b!315865 (= res!171184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315866 () Bool)

(declare-fun e!196512 () Unit!9750)

(assert (=> b!315866 (= e!196512 e!196514)))

(declare-fun c!49958 () Bool)

(assert (=> b!315866 (= c!49958 (or (= (select (arr!7625 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7625 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315867 () Bool)

(declare-fun res!171188 () Bool)

(declare-fun e!196513 () Bool)

(assert (=> b!315867 (=> (not res!171188) (not e!196513))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315867 (= res!171188 (and (= (select (arr!7625 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7977 a!3293))))))

(declare-fun b!315868 () Bool)

(declare-fun res!171189 () Bool)

(assert (=> b!315868 (=> (not res!171189) (not e!196516))))

(assert (=> b!315868 (= res!171189 (and (= (size!7977 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7977 a!3293))))))

(declare-fun b!315869 () Bool)

(assert (=> b!315869 (= e!196516 e!196513)))

(declare-fun res!171190 () Bool)

(assert (=> b!315869 (=> (not res!171190) (not e!196513))))

(declare-fun lt!154399 () SeekEntryResult!2776)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315869 (= res!171190 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154399))))

(assert (=> b!315869 (= lt!154399 (Intermediate!2776 false resIndex!52 resX!52))))

(declare-fun b!315870 () Bool)

(declare-fun Unit!9754 () Unit!9750)

(assert (=> b!315870 (= e!196512 Unit!9754)))

(declare-fun b!315871 () Bool)

(assert (=> b!315871 (= e!196513 (not true))))

(assert (=> b!315871 (= index!1781 resIndex!52)))

(declare-fun lt!154398 () Unit!9750)

(assert (=> b!315871 (= lt!154398 e!196512)))

(declare-fun c!49957 () Bool)

(assert (=> b!315871 (= c!49957 (not (= resIndex!52 index!1781)))))

(declare-fun b!315872 () Bool)

(declare-fun res!171185 () Bool)

(assert (=> b!315872 (=> (not res!171185) (not e!196516))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16114 (_ BitVec 32)) SeekEntryResult!2776)

(assert (=> b!315872 (= res!171185 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2776 i!1240)))))

(declare-fun b!315873 () Bool)

(declare-fun res!171191 () Bool)

(assert (=> b!315873 (=> (not res!171191) (not e!196513))))

(assert (=> b!315873 (= res!171191 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154399))))

(declare-fun b!315874 () Bool)

(declare-fun res!171186 () Bool)

(assert (=> b!315874 (=> (not res!171186) (not e!196516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315874 (= res!171186 (validKeyInArray!0 k0!2441))))

(declare-fun b!315875 () Bool)

(declare-fun res!171192 () Bool)

(assert (=> b!315875 (=> (not res!171192) (not e!196513))))

(assert (=> b!315875 (= res!171192 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7625 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!315876 () Bool)

(declare-fun res!171183 () Bool)

(assert (=> b!315876 (=> (not res!171183) (not e!196516))))

(declare-fun arrayContainsKey!0 (array!16114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315876 (= res!171183 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31592 res!171187) b!315868))

(assert (= (and b!315868 res!171189) b!315874))

(assert (= (and b!315874 res!171186) b!315876))

(assert (= (and b!315876 res!171183) b!315872))

(assert (= (and b!315872 res!171185) b!315865))

(assert (= (and b!315865 res!171184) b!315869))

(assert (= (and b!315869 res!171190) b!315867))

(assert (= (and b!315867 res!171188) b!315873))

(assert (= (and b!315873 res!171191) b!315875))

(assert (= (and b!315875 res!171192) b!315871))

(assert (= (and b!315871 c!49957) b!315866))

(assert (= (and b!315871 (not c!49957)) b!315870))

(assert (= (and b!315866 c!49958) b!315864))

(assert (= (and b!315866 (not c!49958)) b!315863))

(declare-fun m!324933 () Bool)

(assert (=> b!315874 m!324933))

(declare-fun m!324935 () Bool)

(assert (=> b!315869 m!324935))

(assert (=> b!315869 m!324935))

(declare-fun m!324937 () Bool)

(assert (=> b!315869 m!324937))

(declare-fun m!324939 () Bool)

(assert (=> b!315863 m!324939))

(assert (=> b!315863 m!324939))

(declare-fun m!324941 () Bool)

(assert (=> b!315863 m!324941))

(declare-fun m!324943 () Bool)

(assert (=> b!315872 m!324943))

(declare-fun m!324945 () Bool)

(assert (=> b!315867 m!324945))

(declare-fun m!324947 () Bool)

(assert (=> b!315876 m!324947))

(declare-fun m!324949 () Bool)

(assert (=> b!315875 m!324949))

(declare-fun m!324951 () Bool)

(assert (=> b!315865 m!324951))

(assert (=> b!315866 m!324949))

(declare-fun m!324953 () Bool)

(assert (=> start!31592 m!324953))

(declare-fun m!324955 () Bool)

(assert (=> start!31592 m!324955))

(declare-fun m!324957 () Bool)

(assert (=> b!315873 m!324957))

(check-sat (not b!315874) (not b!315863) (not start!31592) (not b!315873) (not b!315865) (not b!315872) (not b!315869) (not b!315876))
(check-sat)
