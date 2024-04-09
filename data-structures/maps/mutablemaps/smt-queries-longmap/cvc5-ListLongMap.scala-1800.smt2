; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32508 () Bool)

(assert start!32508)

(declare-fun b!324750 () Bool)

(declare-fun res!178240 () Bool)

(declare-fun e!200322 () Bool)

(assert (=> b!324750 (=> (not res!178240) (not e!200322))))

(declare-datatypes ((array!16643 0))(
  ( (array!16644 (arr!7876 (Array (_ BitVec 32) (_ BitVec 64))) (size!8228 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16643)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16643 (_ BitVec 32)) Bool)

(assert (=> b!324750 (= res!178240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324751 () Bool)

(declare-fun e!200323 () Bool)

(assert (=> b!324751 (= e!200322 e!200323)))

(declare-fun res!178244 () Bool)

(assert (=> b!324751 (=> (not res!178244) (not e!200323))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3018 0))(
  ( (MissingZero!3018 (index!14248 (_ BitVec 32))) (Found!3018 (index!14249 (_ BitVec 32))) (Intermediate!3018 (undefined!3830 Bool) (index!14250 (_ BitVec 32)) (x!32457 (_ BitVec 32))) (Undefined!3018) (MissingVacant!3018 (index!14251 (_ BitVec 32))) )
))
(declare-fun lt!156866 () SeekEntryResult!3018)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16643 (_ BitVec 32)) SeekEntryResult!3018)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324751 (= res!178244 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156866))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324751 (= lt!156866 (Intermediate!3018 false resIndex!58 resX!58))))

(declare-fun res!178245 () Bool)

(assert (=> start!32508 (=> (not res!178245) (not e!200322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32508 (= res!178245 (validMask!0 mask!3777))))

(assert (=> start!32508 e!200322))

(declare-fun array_inv!5830 (array!16643) Bool)

(assert (=> start!32508 (array_inv!5830 a!3305)))

(assert (=> start!32508 true))

(declare-fun b!324752 () Bool)

(declare-fun res!178241 () Bool)

(assert (=> b!324752 (=> (not res!178241) (not e!200323))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324752 (= res!178241 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7876 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324753 () Bool)

(declare-fun res!178243 () Bool)

(assert (=> b!324753 (=> (not res!178243) (not e!200322))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16643 (_ BitVec 32)) SeekEntryResult!3018)

(assert (=> b!324753 (= res!178243 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3018 i!1250)))))

(declare-fun b!324754 () Bool)

(declare-fun res!178242 () Bool)

(assert (=> b!324754 (=> (not res!178242) (not e!200322))))

(assert (=> b!324754 (= res!178242 (and (= (size!8228 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8228 a!3305))))))

(declare-fun b!324755 () Bool)

(declare-fun res!178247 () Bool)

(assert (=> b!324755 (=> (not res!178247) (not e!200322))))

(declare-fun arrayContainsKey!0 (array!16643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324755 (= res!178247 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324756 () Bool)

(declare-fun res!178248 () Bool)

(assert (=> b!324756 (=> (not res!178248) (not e!200322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324756 (= res!178248 (validKeyInArray!0 k!2497))))

(declare-fun b!324757 () Bool)

(declare-fun res!178246 () Bool)

(assert (=> b!324757 (=> (not res!178246) (not e!200323))))

(assert (=> b!324757 (= res!178246 (and (= (select (arr!7876 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8228 a!3305))))))

(declare-fun b!324758 () Bool)

(assert (=> b!324758 (= e!200323 false)))

(declare-fun lt!156865 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324758 (= lt!156865 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324759 () Bool)

(declare-fun res!178239 () Bool)

(assert (=> b!324759 (=> (not res!178239) (not e!200323))))

(assert (=> b!324759 (= res!178239 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156866))))

(assert (= (and start!32508 res!178245) b!324754))

(assert (= (and b!324754 res!178242) b!324756))

(assert (= (and b!324756 res!178248) b!324755))

(assert (= (and b!324755 res!178247) b!324753))

(assert (= (and b!324753 res!178243) b!324750))

(assert (= (and b!324750 res!178240) b!324751))

(assert (= (and b!324751 res!178244) b!324757))

(assert (= (and b!324757 res!178246) b!324759))

(assert (= (and b!324759 res!178239) b!324752))

(assert (= (and b!324752 res!178241) b!324758))

(declare-fun m!331735 () Bool)

(assert (=> b!324755 m!331735))

(declare-fun m!331737 () Bool)

(assert (=> start!32508 m!331737))

(declare-fun m!331739 () Bool)

(assert (=> start!32508 m!331739))

(declare-fun m!331741 () Bool)

(assert (=> b!324753 m!331741))

(declare-fun m!331743 () Bool)

(assert (=> b!324752 m!331743))

(declare-fun m!331745 () Bool)

(assert (=> b!324759 m!331745))

(declare-fun m!331747 () Bool)

(assert (=> b!324756 m!331747))

(declare-fun m!331749 () Bool)

(assert (=> b!324758 m!331749))

(declare-fun m!331751 () Bool)

(assert (=> b!324757 m!331751))

(declare-fun m!331753 () Bool)

(assert (=> b!324750 m!331753))

(declare-fun m!331755 () Bool)

(assert (=> b!324751 m!331755))

(assert (=> b!324751 m!331755))

(declare-fun m!331757 () Bool)

(assert (=> b!324751 m!331757))

(push 1)

