; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32478 () Bool)

(assert start!32478)

(declare-fun res!177793 () Bool)

(declare-fun e!200187 () Bool)

(assert (=> start!32478 (=> (not res!177793) (not e!200187))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32478 (= res!177793 (validMask!0 mask!3777))))

(assert (=> start!32478 e!200187))

(declare-datatypes ((array!16613 0))(
  ( (array!16614 (arr!7861 (Array (_ BitVec 32) (_ BitVec 64))) (size!8213 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16613)

(declare-fun array_inv!5815 (array!16613) Bool)

(assert (=> start!32478 (array_inv!5815 a!3305)))

(assert (=> start!32478 true))

(declare-fun b!324300 () Bool)

(declare-fun res!177795 () Bool)

(assert (=> b!324300 (=> (not res!177795) (not e!200187))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324300 (= res!177795 (and (= (size!8213 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8213 a!3305))))))

(declare-fun b!324301 () Bool)

(declare-fun res!177792 () Bool)

(assert (=> b!324301 (=> (not res!177792) (not e!200187))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324301 (= res!177792 (validKeyInArray!0 k!2497))))

(declare-fun b!324302 () Bool)

(declare-fun res!177791 () Bool)

(assert (=> b!324302 (=> (not res!177791) (not e!200187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16613 (_ BitVec 32)) Bool)

(assert (=> b!324302 (= res!177791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324303 () Bool)

(declare-fun res!177794 () Bool)

(declare-fun e!200188 () Bool)

(assert (=> b!324303 (=> (not res!177794) (not e!200188))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324303 (= res!177794 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7861 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324304 () Bool)

(assert (=> b!324304 (= e!200188 false)))

(declare-fun lt!156776 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324304 (= lt!156776 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324305 () Bool)

(declare-fun res!177790 () Bool)

(assert (=> b!324305 (=> (not res!177790) (not e!200187))))

(declare-fun arrayContainsKey!0 (array!16613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324305 (= res!177790 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324306 () Bool)

(declare-fun res!177798 () Bool)

(assert (=> b!324306 (=> (not res!177798) (not e!200188))))

(declare-datatypes ((SeekEntryResult!3003 0))(
  ( (MissingZero!3003 (index!14188 (_ BitVec 32))) (Found!3003 (index!14189 (_ BitVec 32))) (Intermediate!3003 (undefined!3815 Bool) (index!14190 (_ BitVec 32)) (x!32402 (_ BitVec 32))) (Undefined!3003) (MissingVacant!3003 (index!14191 (_ BitVec 32))) )
))
(declare-fun lt!156775 () SeekEntryResult!3003)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16613 (_ BitVec 32)) SeekEntryResult!3003)

(assert (=> b!324306 (= res!177798 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156775))))

(declare-fun b!324307 () Bool)

(declare-fun res!177789 () Bool)

(assert (=> b!324307 (=> (not res!177789) (not e!200188))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324307 (= res!177789 (and (= (select (arr!7861 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8213 a!3305))))))

(declare-fun b!324308 () Bool)

(assert (=> b!324308 (= e!200187 e!200188)))

(declare-fun res!177797 () Bool)

(assert (=> b!324308 (=> (not res!177797) (not e!200188))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324308 (= res!177797 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156775))))

(assert (=> b!324308 (= lt!156775 (Intermediate!3003 false resIndex!58 resX!58))))

(declare-fun b!324309 () Bool)

(declare-fun res!177796 () Bool)

(assert (=> b!324309 (=> (not res!177796) (not e!200187))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16613 (_ BitVec 32)) SeekEntryResult!3003)

(assert (=> b!324309 (= res!177796 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3003 i!1250)))))

(assert (= (and start!32478 res!177793) b!324300))

(assert (= (and b!324300 res!177795) b!324301))

(assert (= (and b!324301 res!177792) b!324305))

(assert (= (and b!324305 res!177790) b!324309))

(assert (= (and b!324309 res!177796) b!324302))

(assert (= (and b!324302 res!177791) b!324308))

(assert (= (and b!324308 res!177797) b!324307))

(assert (= (and b!324307 res!177789) b!324306))

(assert (= (and b!324306 res!177798) b!324303))

(assert (= (and b!324303 res!177794) b!324304))

(declare-fun m!331375 () Bool)

(assert (=> b!324306 m!331375))

(declare-fun m!331377 () Bool)

(assert (=> b!324309 m!331377))

(declare-fun m!331379 () Bool)

(assert (=> b!324307 m!331379))

(declare-fun m!331381 () Bool)

(assert (=> start!32478 m!331381))

(declare-fun m!331383 () Bool)

(assert (=> start!32478 m!331383))

(declare-fun m!331385 () Bool)

(assert (=> b!324302 m!331385))

(declare-fun m!331387 () Bool)

(assert (=> b!324304 m!331387))

(declare-fun m!331389 () Bool)

(assert (=> b!324305 m!331389))

(declare-fun m!331391 () Bool)

(assert (=> b!324308 m!331391))

(assert (=> b!324308 m!331391))

(declare-fun m!331393 () Bool)

(assert (=> b!324308 m!331393))

(declare-fun m!331395 () Bool)

(assert (=> b!324301 m!331395))

(declare-fun m!331397 () Bool)

(assert (=> b!324303 m!331397))

(push 1)

