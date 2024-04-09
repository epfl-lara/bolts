; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49206 () Bool)

(assert start!49206)

(declare-fun b!541451 () Bool)

(declare-fun res!336338 () Bool)

(declare-fun e!313516 () Bool)

(assert (=> b!541451 (=> (not res!336338) (not e!313516))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34221 0))(
  ( (array!34222 (arr!16441 (Array (_ BitVec 32) (_ BitVec 64))) (size!16805 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34221)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541451 (= res!336338 (and (= (size!16805 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16805 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16805 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541452 () Bool)

(declare-fun res!336333 () Bool)

(assert (=> b!541452 (=> (not res!336333) (not e!313516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541452 (= res!336333 (validKeyInArray!0 (select (arr!16441 a!3154) j!147)))))

(declare-fun b!541453 () Bool)

(declare-fun res!336337 () Bool)

(declare-fun e!313515 () Bool)

(assert (=> b!541453 (=> (not res!336337) (not e!313515))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541453 (= res!336337 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16805 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16805 a!3154)) (= (select (arr!16441 a!3154) resIndex!32) (select (arr!16441 a!3154) j!147))))))

(declare-fun b!541455 () Bool)

(declare-fun res!336329 () Bool)

(assert (=> b!541455 (=> (not res!336329) (not e!313515))))

(declare-datatypes ((SeekEntryResult!4906 0))(
  ( (MissingZero!4906 (index!21848 (_ BitVec 32))) (Found!4906 (index!21849 (_ BitVec 32))) (Intermediate!4906 (undefined!5718 Bool) (index!21850 (_ BitVec 32)) (x!50790 (_ BitVec 32))) (Undefined!4906) (MissingVacant!4906 (index!21851 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34221 (_ BitVec 32)) SeekEntryResult!4906)

(assert (=> b!541455 (= res!336329 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16441 a!3154) j!147) a!3154 mask!3216) (Intermediate!4906 false resIndex!32 resX!32)))))

(declare-fun b!541456 () Bool)

(declare-fun res!336334 () Bool)

(assert (=> b!541456 (=> (not res!336334) (not e!313515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34221 (_ BitVec 32)) Bool)

(assert (=> b!541456 (= res!336334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541457 () Bool)

(declare-fun res!336331 () Bool)

(assert (=> b!541457 (=> (not res!336331) (not e!313515))))

(declare-datatypes ((List!10613 0))(
  ( (Nil!10610) (Cons!10609 (h!11561 (_ BitVec 64)) (t!16849 List!10613)) )
))
(declare-fun arrayNoDuplicates!0 (array!34221 (_ BitVec 32) List!10613) Bool)

(assert (=> b!541457 (= res!336331 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10610))))

(declare-fun b!541458 () Bool)

(assert (=> b!541458 (= e!313516 e!313515)))

(declare-fun res!336335 () Bool)

(assert (=> b!541458 (=> (not res!336335) (not e!313515))))

(declare-fun lt!247666 () SeekEntryResult!4906)

(assert (=> b!541458 (= res!336335 (or (= lt!247666 (MissingZero!4906 i!1153)) (= lt!247666 (MissingVacant!4906 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34221 (_ BitVec 32)) SeekEntryResult!4906)

(assert (=> b!541458 (= lt!247666 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!336332 () Bool)

(assert (=> start!49206 (=> (not res!336332) (not e!313516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49206 (= res!336332 (validMask!0 mask!3216))))

(assert (=> start!49206 e!313516))

(assert (=> start!49206 true))

(declare-fun array_inv!12215 (array!34221) Bool)

(assert (=> start!49206 (array_inv!12215 a!3154)))

(declare-fun b!541454 () Bool)

(declare-fun res!336330 () Bool)

(assert (=> b!541454 (=> (not res!336330) (not e!313516))))

(assert (=> b!541454 (= res!336330 (validKeyInArray!0 k0!1998))))

(declare-fun b!541459 () Bool)

(declare-fun res!336336 () Bool)

(assert (=> b!541459 (=> (not res!336336) (not e!313516))))

(declare-fun arrayContainsKey!0 (array!34221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541459 (= res!336336 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541460 () Bool)

(assert (=> b!541460 (= e!313515 false)))

(declare-fun lt!247667 () SeekEntryResult!4906)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541460 (= lt!247667 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16441 a!3154) j!147) mask!3216) (select (arr!16441 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49206 res!336332) b!541451))

(assert (= (and b!541451 res!336338) b!541452))

(assert (= (and b!541452 res!336333) b!541454))

(assert (= (and b!541454 res!336330) b!541459))

(assert (= (and b!541459 res!336336) b!541458))

(assert (= (and b!541458 res!336335) b!541456))

(assert (= (and b!541456 res!336334) b!541457))

(assert (= (and b!541457 res!336331) b!541453))

(assert (= (and b!541453 res!336337) b!541455))

(assert (= (and b!541455 res!336329) b!541460))

(declare-fun m!519945 () Bool)

(assert (=> b!541452 m!519945))

(assert (=> b!541452 m!519945))

(declare-fun m!519947 () Bool)

(assert (=> b!541452 m!519947))

(declare-fun m!519949 () Bool)

(assert (=> b!541459 m!519949))

(declare-fun m!519951 () Bool)

(assert (=> b!541458 m!519951))

(declare-fun m!519953 () Bool)

(assert (=> b!541456 m!519953))

(assert (=> b!541460 m!519945))

(assert (=> b!541460 m!519945))

(declare-fun m!519955 () Bool)

(assert (=> b!541460 m!519955))

(assert (=> b!541460 m!519955))

(assert (=> b!541460 m!519945))

(declare-fun m!519957 () Bool)

(assert (=> b!541460 m!519957))

(declare-fun m!519959 () Bool)

(assert (=> start!49206 m!519959))

(declare-fun m!519961 () Bool)

(assert (=> start!49206 m!519961))

(declare-fun m!519963 () Bool)

(assert (=> b!541453 m!519963))

(assert (=> b!541453 m!519945))

(declare-fun m!519965 () Bool)

(assert (=> b!541457 m!519965))

(assert (=> b!541455 m!519945))

(assert (=> b!541455 m!519945))

(declare-fun m!519967 () Bool)

(assert (=> b!541455 m!519967))

(declare-fun m!519969 () Bool)

(assert (=> b!541454 m!519969))

(check-sat (not b!541452) (not b!541458) (not start!49206) (not b!541460) (not b!541459) (not b!541457) (not b!541454) (not b!541455) (not b!541456))
(check-sat)
