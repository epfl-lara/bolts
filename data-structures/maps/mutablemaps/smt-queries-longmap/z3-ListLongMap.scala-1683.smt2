; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30992 () Bool)

(assert start!30992)

(declare-datatypes ((array!15892 0))(
  ( (array!15893 (arr!7526 (Array (_ BitVec 32) (_ BitVec 64))) (size!7878 (_ BitVec 32))) )
))
(declare-fun lt!152284 () array!15892)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152282 () (_ BitVec 32))

(declare-fun b!311154 () Bool)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun e!194170 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2677 0))(
  ( (MissingZero!2677 (index!12884 (_ BitVec 32))) (Found!2677 (index!12885 (_ BitVec 32))) (Intermediate!2677 (undefined!3489 Bool) (index!12886 (_ BitVec 32)) (x!31069 (_ BitVec 32))) (Undefined!2677) (MissingVacant!2677 (index!12887 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15892 (_ BitVec 32)) SeekEntryResult!2677)

(assert (=> b!311154 (= e!194170 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152284 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152282 k0!2441 lt!152284 mask!3709)))))

(declare-fun a!3293 () array!15892)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311154 (= lt!152284 (array!15893 (store (arr!7526 a!3293) i!1240 k0!2441) (size!7878 a!3293)))))

(declare-fun b!311155 () Bool)

(declare-fun res!167768 () Bool)

(declare-fun e!194166 () Bool)

(assert (=> b!311155 (=> (not res!167768) (not e!194166))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15892 (_ BitVec 32)) SeekEntryResult!2677)

(assert (=> b!311155 (= res!167768 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2677 i!1240)))))

(declare-fun b!311157 () Bool)

(declare-fun res!167772 () Bool)

(declare-fun e!194167 () Bool)

(assert (=> b!311157 (=> (not res!167772) (not e!194167))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311157 (= res!167772 (and (= (select (arr!7526 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7878 a!3293))))))

(declare-fun b!311158 () Bool)

(declare-fun res!167770 () Bool)

(assert (=> b!311158 (=> (not res!167770) (not e!194166))))

(assert (=> b!311158 (= res!167770 (and (= (size!7878 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7878 a!3293))))))

(declare-fun b!311159 () Bool)

(declare-fun e!194169 () Bool)

(assert (=> b!311159 (= e!194169 (not true))))

(assert (=> b!311159 e!194170))

(declare-fun res!167769 () Bool)

(assert (=> b!311159 (=> (not res!167769) (not e!194170))))

(declare-fun lt!152283 () SeekEntryResult!2677)

(assert (=> b!311159 (= res!167769 (= lt!152283 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152282 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311159 (= lt!152282 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311160 () Bool)

(assert (=> b!311160 (= e!194166 e!194167)))

(declare-fun res!167773 () Bool)

(assert (=> b!311160 (=> (not res!167773) (not e!194167))))

(declare-fun lt!152285 () SeekEntryResult!2677)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311160 (= res!167773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152285))))

(assert (=> b!311160 (= lt!152285 (Intermediate!2677 false resIndex!52 resX!52))))

(declare-fun b!311161 () Bool)

(declare-fun res!167766 () Bool)

(assert (=> b!311161 (=> (not res!167766) (not e!194166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311161 (= res!167766 (validKeyInArray!0 k0!2441))))

(declare-fun res!167771 () Bool)

(assert (=> start!30992 (=> (not res!167771) (not e!194166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30992 (= res!167771 (validMask!0 mask!3709))))

(assert (=> start!30992 e!194166))

(declare-fun array_inv!5480 (array!15892) Bool)

(assert (=> start!30992 (array_inv!5480 a!3293)))

(assert (=> start!30992 true))

(declare-fun b!311156 () Bool)

(assert (=> b!311156 (= e!194167 e!194169)))

(declare-fun res!167774 () Bool)

(assert (=> b!311156 (=> (not res!167774) (not e!194169))))

(assert (=> b!311156 (= res!167774 (and (= lt!152283 lt!152285) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7526 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311156 (= lt!152283 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!311162 () Bool)

(declare-fun res!167767 () Bool)

(assert (=> b!311162 (=> (not res!167767) (not e!194166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15892 (_ BitVec 32)) Bool)

(assert (=> b!311162 (= res!167767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311163 () Bool)

(declare-fun res!167775 () Bool)

(assert (=> b!311163 (=> (not res!167775) (not e!194166))))

(declare-fun arrayContainsKey!0 (array!15892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311163 (= res!167775 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30992 res!167771) b!311158))

(assert (= (and b!311158 res!167770) b!311161))

(assert (= (and b!311161 res!167766) b!311163))

(assert (= (and b!311163 res!167775) b!311155))

(assert (= (and b!311155 res!167768) b!311162))

(assert (= (and b!311162 res!167767) b!311160))

(assert (= (and b!311160 res!167773) b!311157))

(assert (= (and b!311157 res!167772) b!311156))

(assert (= (and b!311156 res!167774) b!311159))

(assert (= (and b!311159 res!167769) b!311154))

(declare-fun m!321165 () Bool)

(assert (=> b!311160 m!321165))

(assert (=> b!311160 m!321165))

(declare-fun m!321167 () Bool)

(assert (=> b!311160 m!321167))

(declare-fun m!321169 () Bool)

(assert (=> b!311157 m!321169))

(declare-fun m!321171 () Bool)

(assert (=> b!311159 m!321171))

(declare-fun m!321173 () Bool)

(assert (=> b!311159 m!321173))

(declare-fun m!321175 () Bool)

(assert (=> b!311154 m!321175))

(declare-fun m!321177 () Bool)

(assert (=> b!311154 m!321177))

(declare-fun m!321179 () Bool)

(assert (=> b!311154 m!321179))

(declare-fun m!321181 () Bool)

(assert (=> b!311156 m!321181))

(declare-fun m!321183 () Bool)

(assert (=> b!311156 m!321183))

(declare-fun m!321185 () Bool)

(assert (=> start!30992 m!321185))

(declare-fun m!321187 () Bool)

(assert (=> start!30992 m!321187))

(declare-fun m!321189 () Bool)

(assert (=> b!311162 m!321189))

(declare-fun m!321191 () Bool)

(assert (=> b!311155 m!321191))

(declare-fun m!321193 () Bool)

(assert (=> b!311161 m!321193))

(declare-fun m!321195 () Bool)

(assert (=> b!311163 m!321195))

(check-sat (not b!311154) (not b!311162) (not b!311155) (not b!311161) (not b!311160) (not b!311156) (not b!311159) (not b!311163) (not start!30992))
(check-sat)
