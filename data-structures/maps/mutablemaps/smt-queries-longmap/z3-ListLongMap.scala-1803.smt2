; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32528 () Bool)

(assert start!32528)

(declare-fun b!325050 () Bool)

(declare-fun res!178539 () Bool)

(declare-fun e!200412 () Bool)

(assert (=> b!325050 (=> (not res!178539) (not e!200412))))

(declare-datatypes ((array!16663 0))(
  ( (array!16664 (arr!7886 (Array (_ BitVec 32) (_ BitVec 64))) (size!8238 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16663)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16663 (_ BitVec 32)) Bool)

(assert (=> b!325050 (= res!178539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325051 () Bool)

(declare-fun res!178540 () Bool)

(assert (=> b!325051 (=> (not res!178540) (not e!200412))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3028 0))(
  ( (MissingZero!3028 (index!14288 (_ BitVec 32))) (Found!3028 (index!14289 (_ BitVec 32))) (Intermediate!3028 (undefined!3840 Bool) (index!14290 (_ BitVec 32)) (x!32491 (_ BitVec 32))) (Undefined!3028) (MissingVacant!3028 (index!14291 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16663 (_ BitVec 32)) SeekEntryResult!3028)

(assert (=> b!325051 (= res!178540 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3028 i!1250)))))

(declare-fun res!178546 () Bool)

(assert (=> start!32528 (=> (not res!178546) (not e!200412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32528 (= res!178546 (validMask!0 mask!3777))))

(assert (=> start!32528 e!200412))

(declare-fun array_inv!5840 (array!16663) Bool)

(assert (=> start!32528 (array_inv!5840 a!3305)))

(assert (=> start!32528 true))

(declare-fun b!325052 () Bool)

(declare-fun res!178548 () Bool)

(declare-fun e!200411 () Bool)

(assert (=> b!325052 (=> (not res!178548) (not e!200411))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325052 (= res!178548 (and (= (select (arr!7886 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8238 a!3305))))))

(declare-fun b!325053 () Bool)

(declare-fun res!178544 () Bool)

(assert (=> b!325053 (=> (not res!178544) (not e!200412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325053 (= res!178544 (validKeyInArray!0 k0!2497))))

(declare-fun b!325054 () Bool)

(declare-fun res!178541 () Bool)

(assert (=> b!325054 (=> (not res!178541) (not e!200411))))

(assert (=> b!325054 (= res!178541 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7886 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325055 () Bool)

(declare-fun res!178542 () Bool)

(assert (=> b!325055 (=> (not res!178542) (not e!200412))))

(declare-fun arrayContainsKey!0 (array!16663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325055 (= res!178542 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325056 () Bool)

(declare-fun res!178543 () Bool)

(assert (=> b!325056 (=> (not res!178543) (not e!200411))))

(declare-fun lt!156925 () SeekEntryResult!3028)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16663 (_ BitVec 32)) SeekEntryResult!3028)

(assert (=> b!325056 (= res!178543 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156925))))

(declare-fun b!325057 () Bool)

(declare-fun res!178545 () Bool)

(assert (=> b!325057 (=> (not res!178545) (not e!200412))))

(assert (=> b!325057 (= res!178545 (and (= (size!8238 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8238 a!3305))))))

(declare-fun b!325058 () Bool)

(assert (=> b!325058 (= e!200411 false)))

(declare-fun lt!156926 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325058 (= lt!156926 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325059 () Bool)

(assert (=> b!325059 (= e!200412 e!200411)))

(declare-fun res!178547 () Bool)

(assert (=> b!325059 (=> (not res!178547) (not e!200411))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325059 (= res!178547 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156925))))

(assert (=> b!325059 (= lt!156925 (Intermediate!3028 false resIndex!58 resX!58))))

(assert (= (and start!32528 res!178546) b!325057))

(assert (= (and b!325057 res!178545) b!325053))

(assert (= (and b!325053 res!178544) b!325055))

(assert (= (and b!325055 res!178542) b!325051))

(assert (= (and b!325051 res!178540) b!325050))

(assert (= (and b!325050 res!178539) b!325059))

(assert (= (and b!325059 res!178547) b!325052))

(assert (= (and b!325052 res!178548) b!325056))

(assert (= (and b!325056 res!178543) b!325054))

(assert (= (and b!325054 res!178541) b!325058))

(declare-fun m!331975 () Bool)

(assert (=> b!325058 m!331975))

(declare-fun m!331977 () Bool)

(assert (=> b!325052 m!331977))

(declare-fun m!331979 () Bool)

(assert (=> b!325054 m!331979))

(declare-fun m!331981 () Bool)

(assert (=> b!325056 m!331981))

(declare-fun m!331983 () Bool)

(assert (=> b!325055 m!331983))

(declare-fun m!331985 () Bool)

(assert (=> start!32528 m!331985))

(declare-fun m!331987 () Bool)

(assert (=> start!32528 m!331987))

(declare-fun m!331989 () Bool)

(assert (=> b!325053 m!331989))

(declare-fun m!331991 () Bool)

(assert (=> b!325050 m!331991))

(declare-fun m!331993 () Bool)

(assert (=> b!325051 m!331993))

(declare-fun m!331995 () Bool)

(assert (=> b!325059 m!331995))

(assert (=> b!325059 m!331995))

(declare-fun m!331997 () Bool)

(assert (=> b!325059 m!331997))

(check-sat (not b!325051) (not b!325058) (not b!325055) (not b!325056) (not b!325050) (not b!325053) (not b!325059) (not start!32528))
(check-sat)
