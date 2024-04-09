; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32404 () Bool)

(assert start!32404)

(declare-fun b!322905 () Bool)

(declare-datatypes ((Unit!9948 0))(
  ( (Unit!9949) )
))
(declare-fun e!199701 () Unit!9948)

(declare-fun Unit!9950 () Unit!9948)

(assert (=> b!322905 (= e!199701 Unit!9950)))

(declare-fun res!176733 () Bool)

(declare-fun e!199702 () Bool)

(assert (=> start!32404 (=> (not res!176733) (not e!199702))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32404 (= res!176733 (validMask!0 mask!3777))))

(assert (=> start!32404 e!199702))

(declare-datatypes ((array!16539 0))(
  ( (array!16540 (arr!7824 (Array (_ BitVec 32) (_ BitVec 64))) (size!8176 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16539)

(declare-fun array_inv!5778 (array!16539) Bool)

(assert (=> start!32404 (array_inv!5778 a!3305)))

(assert (=> start!32404 true))

(declare-fun b!322906 () Bool)

(declare-fun res!176731 () Bool)

(assert (=> b!322906 (=> (not res!176731) (not e!199702))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322906 (= res!176731 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322907 () Bool)

(declare-fun res!176729 () Bool)

(declare-fun e!199698 () Bool)

(assert (=> b!322907 (=> (not res!176729) (not e!199698))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322907 (= res!176729 (and (= (select (arr!7824 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8176 a!3305))))))

(declare-fun b!322908 () Bool)

(declare-fun e!199699 () Unit!9948)

(declare-fun Unit!9951 () Unit!9948)

(assert (=> b!322908 (= e!199699 Unit!9951)))

(declare-fun b!322909 () Bool)

(declare-fun res!176726 () Bool)

(assert (=> b!322909 (=> (not res!176726) (not e!199702))))

(assert (=> b!322909 (= res!176726 (and (= (size!8176 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8176 a!3305))))))

(declare-fun b!322910 () Bool)

(declare-fun res!176732 () Bool)

(assert (=> b!322910 (=> (not res!176732) (not e!199698))))

(declare-datatypes ((SeekEntryResult!2966 0))(
  ( (MissingZero!2966 (index!14040 (_ BitVec 32))) (Found!2966 (index!14041 (_ BitVec 32))) (Intermediate!2966 (undefined!3778 Bool) (index!14042 (_ BitVec 32)) (x!32261 (_ BitVec 32))) (Undefined!2966) (MissingVacant!2966 (index!14043 (_ BitVec 32))) )
))
(declare-fun lt!156535 () SeekEntryResult!2966)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16539 (_ BitVec 32)) SeekEntryResult!2966)

(assert (=> b!322910 (= res!176732 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156535))))

(declare-fun b!322911 () Bool)

(declare-fun res!176724 () Bool)

(assert (=> b!322911 (=> (not res!176724) (not e!199702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322911 (= res!176724 (validKeyInArray!0 k!2497))))

(declare-fun b!322912 () Bool)

(assert (=> b!322912 (= e!199702 e!199698)))

(declare-fun res!176730 () Bool)

(assert (=> b!322912 (=> (not res!176730) (not e!199698))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322912 (= res!176730 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156535))))

(assert (=> b!322912 (= lt!156535 (Intermediate!2966 false resIndex!58 resX!58))))

(declare-fun b!322913 () Bool)

(declare-fun res!176727 () Bool)

(assert (=> b!322913 (=> (not res!176727) (not e!199698))))

(assert (=> b!322913 (= res!176727 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7824 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322914 () Bool)

(declare-fun res!176728 () Bool)

(assert (=> b!322914 (=> (not res!176728) (not e!199702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16539 (_ BitVec 32)) Bool)

(assert (=> b!322914 (= res!176728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322915 () Bool)

(assert (=> b!322915 false))

(declare-fun lt!156534 () Unit!9948)

(assert (=> b!322915 (= lt!156534 e!199701)))

(declare-fun c!50719 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322915 (= c!50719 (is-Intermediate!2966 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!199697 () Unit!9948)

(declare-fun Unit!9952 () Unit!9948)

(assert (=> b!322915 (= e!199697 Unit!9952)))

(declare-fun b!322916 () Bool)

(assert (=> b!322916 (= e!199699 e!199697)))

(declare-fun c!50718 () Bool)

(assert (=> b!322916 (= c!50718 (or (= (select (arr!7824 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7824 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322917 () Bool)

(assert (=> b!322917 false))

(declare-fun Unit!9953 () Unit!9948)

(assert (=> b!322917 (= e!199697 Unit!9953)))

(declare-fun b!322918 () Bool)

(assert (=> b!322918 (= e!199698 (not true))))

(assert (=> b!322918 (= index!1840 resIndex!58)))

(declare-fun lt!156536 () Unit!9948)

(assert (=> b!322918 (= lt!156536 e!199699)))

(declare-fun c!50720 () Bool)

(assert (=> b!322918 (= c!50720 (not (= resIndex!58 index!1840)))))

(declare-fun b!322919 () Bool)

(declare-fun Unit!9954 () Unit!9948)

(assert (=> b!322919 (= e!199701 Unit!9954)))

(assert (=> b!322919 false))

(declare-fun b!322920 () Bool)

(declare-fun res!176725 () Bool)

(assert (=> b!322920 (=> (not res!176725) (not e!199702))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16539 (_ BitVec 32)) SeekEntryResult!2966)

(assert (=> b!322920 (= res!176725 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2966 i!1250)))))

(assert (= (and start!32404 res!176733) b!322909))

(assert (= (and b!322909 res!176726) b!322911))

(assert (= (and b!322911 res!176724) b!322906))

(assert (= (and b!322906 res!176731) b!322920))

(assert (= (and b!322920 res!176725) b!322914))

(assert (= (and b!322914 res!176728) b!322912))

(assert (= (and b!322912 res!176730) b!322907))

(assert (= (and b!322907 res!176729) b!322910))

(assert (= (and b!322910 res!176732) b!322913))

(assert (= (and b!322913 res!176727) b!322918))

(assert (= (and b!322918 c!50720) b!322916))

(assert (= (and b!322918 (not c!50720)) b!322908))

(assert (= (and b!322916 c!50718) b!322917))

(assert (= (and b!322916 (not c!50718)) b!322915))

(assert (= (and b!322915 c!50719) b!322905))

(assert (= (and b!322915 (not c!50719)) b!322919))

(declare-fun m!330479 () Bool)

(assert (=> b!322912 m!330479))

(assert (=> b!322912 m!330479))

(declare-fun m!330481 () Bool)

(assert (=> b!322912 m!330481))

(declare-fun m!330483 () Bool)

(assert (=> b!322916 m!330483))

(declare-fun m!330485 () Bool)

(assert (=> b!322910 m!330485))

(declare-fun m!330487 () Bool)

(assert (=> b!322907 m!330487))

(declare-fun m!330489 () Bool)

(assert (=> b!322911 m!330489))

(declare-fun m!330491 () Bool)

(assert (=> b!322914 m!330491))

(declare-fun m!330493 () Bool)

(assert (=> start!32404 m!330493))

(declare-fun m!330495 () Bool)

(assert (=> start!32404 m!330495))

(assert (=> b!322913 m!330483))

(declare-fun m!330497 () Bool)

(assert (=> b!322915 m!330497))

(assert (=> b!322915 m!330497))

(declare-fun m!330499 () Bool)

(assert (=> b!322915 m!330499))

(declare-fun m!330501 () Bool)

(assert (=> b!322920 m!330501))

(declare-fun m!330503 () Bool)

(assert (=> b!322906 m!330503))

(push 1)

