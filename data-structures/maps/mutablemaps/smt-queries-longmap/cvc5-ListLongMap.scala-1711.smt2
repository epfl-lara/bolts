; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31506 () Bool)

(assert start!31506)

(declare-fun b!315028 () Bool)

(declare-fun e!196142 () Bool)

(declare-fun e!196141 () Bool)

(assert (=> b!315028 (= e!196142 e!196141)))

(declare-fun res!170637 () Bool)

(assert (=> b!315028 (=> (not res!170637) (not e!196141))))

(declare-datatypes ((array!16079 0))(
  ( (array!16080 (arr!7609 (Array (_ BitVec 32) (_ BitVec 64))) (size!7961 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16079)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2760 0))(
  ( (MissingZero!2760 (index!13216 (_ BitVec 32))) (Found!2760 (index!13217 (_ BitVec 32))) (Intermediate!2760 (undefined!3572 Bool) (index!13218 (_ BitVec 32)) (x!31424 (_ BitVec 32))) (Undefined!2760) (MissingVacant!2760 (index!13219 (_ BitVec 32))) )
))
(declare-fun lt!154144 () SeekEntryResult!2760)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16079 (_ BitVec 32)) SeekEntryResult!2760)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315028 (= res!170637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154144))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315028 (= lt!154144 (Intermediate!2760 false resIndex!52 resX!52))))

(declare-fun b!315029 () Bool)

(declare-fun res!170639 () Bool)

(assert (=> b!315029 (=> (not res!170639) (not e!196141))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315029 (= res!170639 (and (= (select (arr!7609 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7961 a!3293))))))

(declare-fun b!315030 () Bool)

(declare-fun e!196143 () Bool)

(declare-fun lt!154145 () SeekEntryResult!2760)

(assert (=> b!315030 (= e!196143 (not (is-Intermediate!2760 lt!154145)))))

(declare-fun lt!154143 () SeekEntryResult!2760)

(assert (=> b!315030 (= lt!154143 lt!154145)))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315030 (= lt!154145 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315031 () Bool)

(declare-fun res!170642 () Bool)

(assert (=> b!315031 (=> (not res!170642) (not e!196142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315031 (= res!170642 (validKeyInArray!0 k!2441))))

(declare-fun b!315032 () Bool)

(declare-fun res!170643 () Bool)

(assert (=> b!315032 (=> (not res!170643) (not e!196142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16079 (_ BitVec 32)) SeekEntryResult!2760)

(assert (=> b!315032 (= res!170643 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2760 i!1240)))))

(declare-fun b!315033 () Bool)

(declare-fun res!170638 () Bool)

(assert (=> b!315033 (=> (not res!170638) (not e!196142))))

(declare-fun arrayContainsKey!0 (array!16079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315033 (= res!170638 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!170641 () Bool)

(assert (=> start!31506 (=> (not res!170641) (not e!196142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31506 (= res!170641 (validMask!0 mask!3709))))

(assert (=> start!31506 e!196142))

(declare-fun array_inv!5563 (array!16079) Bool)

(assert (=> start!31506 (array_inv!5563 a!3293)))

(assert (=> start!31506 true))

(declare-fun b!315034 () Bool)

(assert (=> b!315034 (= e!196141 e!196143)))

(declare-fun res!170640 () Bool)

(assert (=> b!315034 (=> (not res!170640) (not e!196143))))

(assert (=> b!315034 (= res!170640 (and (= lt!154143 lt!154144) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7609 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7609 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7609 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315034 (= lt!154143 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!315035 () Bool)

(declare-fun res!170635 () Bool)

(assert (=> b!315035 (=> (not res!170635) (not e!196142))))

(assert (=> b!315035 (= res!170635 (and (= (size!7961 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7961 a!3293))))))

(declare-fun b!315036 () Bool)

(declare-fun res!170636 () Bool)

(assert (=> b!315036 (=> (not res!170636) (not e!196142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16079 (_ BitVec 32)) Bool)

(assert (=> b!315036 (= res!170636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31506 res!170641) b!315035))

(assert (= (and b!315035 res!170635) b!315031))

(assert (= (and b!315031 res!170642) b!315033))

(assert (= (and b!315033 res!170638) b!315032))

(assert (= (and b!315032 res!170643) b!315036))

(assert (= (and b!315036 res!170636) b!315028))

(assert (= (and b!315028 res!170637) b!315029))

(assert (= (and b!315029 res!170639) b!315034))

(assert (= (and b!315034 res!170640) b!315030))

(declare-fun m!324379 () Bool)

(assert (=> start!31506 m!324379))

(declare-fun m!324381 () Bool)

(assert (=> start!31506 m!324381))

(declare-fun m!324383 () Bool)

(assert (=> b!315036 m!324383))

(declare-fun m!324385 () Bool)

(assert (=> b!315034 m!324385))

(declare-fun m!324387 () Bool)

(assert (=> b!315034 m!324387))

(declare-fun m!324389 () Bool)

(assert (=> b!315030 m!324389))

(assert (=> b!315030 m!324389))

(declare-fun m!324391 () Bool)

(assert (=> b!315030 m!324391))

(declare-fun m!324393 () Bool)

(assert (=> b!315028 m!324393))

(assert (=> b!315028 m!324393))

(declare-fun m!324395 () Bool)

(assert (=> b!315028 m!324395))

(declare-fun m!324397 () Bool)

(assert (=> b!315031 m!324397))

(declare-fun m!324399 () Bool)

(assert (=> b!315033 m!324399))

(declare-fun m!324401 () Bool)

(assert (=> b!315029 m!324401))

(declare-fun m!324403 () Bool)

(assert (=> b!315032 m!324403))

(push 1)

