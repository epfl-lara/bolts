; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32402 () Bool)

(assert start!32402)

(declare-fun b!322857 () Bool)

(assert (=> b!322857 false))

(declare-datatypes ((Unit!9941 0))(
  ( (Unit!9942) )
))
(declare-fun lt!156526 () Unit!9941)

(declare-fun e!199681 () Unit!9941)

(assert (=> b!322857 (= lt!156526 e!199681)))

(declare-datatypes ((array!16537 0))(
  ( (array!16538 (arr!7823 (Array (_ BitVec 32) (_ BitVec 64))) (size!8175 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16537)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun c!50711 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(get-info :version)

(declare-datatypes ((SeekEntryResult!2965 0))(
  ( (MissingZero!2965 (index!14036 (_ BitVec 32))) (Found!2965 (index!14037 (_ BitVec 32))) (Intermediate!2965 (undefined!3777 Bool) (index!14038 (_ BitVec 32)) (x!32260 (_ BitVec 32))) (Undefined!2965) (MissingVacant!2965 (index!14039 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16537 (_ BitVec 32)) SeekEntryResult!2965)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322857 (= c!50711 ((_ is Intermediate!2965) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!199679 () Unit!9941)

(declare-fun Unit!9943 () Unit!9941)

(assert (=> b!322857 (= e!199679 Unit!9943)))

(declare-fun b!322858 () Bool)

(declare-fun res!176703 () Bool)

(declare-fun e!199682 () Bool)

(assert (=> b!322858 (=> (not res!176703) (not e!199682))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322858 (= res!176703 (and (= (select (arr!7823 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8175 a!3305))))))

(declare-fun b!322859 () Bool)

(declare-fun res!176700 () Bool)

(assert (=> b!322859 (=> (not res!176700) (not e!199682))))

(declare-fun lt!156527 () SeekEntryResult!2965)

(assert (=> b!322859 (= res!176700 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156527))))

(declare-fun b!322860 () Bool)

(declare-fun e!199684 () Unit!9941)

(assert (=> b!322860 (= e!199684 e!199679)))

(declare-fun c!50709 () Bool)

(assert (=> b!322860 (= c!50709 (or (= (select (arr!7823 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7823 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322861 () Bool)

(declare-fun e!199680 () Bool)

(assert (=> b!322861 (= e!199680 e!199682)))

(declare-fun res!176699 () Bool)

(assert (=> b!322861 (=> (not res!176699) (not e!199682))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322861 (= res!176699 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156527))))

(assert (=> b!322861 (= lt!156527 (Intermediate!2965 false resIndex!58 resX!58))))

(declare-fun b!322862 () Bool)

(declare-fun res!176694 () Bool)

(assert (=> b!322862 (=> (not res!176694) (not e!199680))))

(assert (=> b!322862 (= res!176694 (and (= (size!8175 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8175 a!3305))))))

(declare-fun b!322863 () Bool)

(declare-fun Unit!9944 () Unit!9941)

(assert (=> b!322863 (= e!199681 Unit!9944)))

(assert (=> b!322863 false))

(declare-fun b!322864 () Bool)

(declare-fun res!176697 () Bool)

(assert (=> b!322864 (=> (not res!176697) (not e!199680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16537 (_ BitVec 32)) Bool)

(assert (=> b!322864 (= res!176697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322865 () Bool)

(declare-fun Unit!9945 () Unit!9941)

(assert (=> b!322865 (= e!199681 Unit!9945)))

(declare-fun res!176701 () Bool)

(assert (=> start!32402 (=> (not res!176701) (not e!199680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32402 (= res!176701 (validMask!0 mask!3777))))

(assert (=> start!32402 e!199680))

(declare-fun array_inv!5777 (array!16537) Bool)

(assert (=> start!32402 (array_inv!5777 a!3305)))

(assert (=> start!32402 true))

(declare-fun b!322866 () Bool)

(declare-fun res!176702 () Bool)

(assert (=> b!322866 (=> (not res!176702) (not e!199680))))

(declare-fun arrayContainsKey!0 (array!16537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322866 (= res!176702 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322867 () Bool)

(declare-fun res!176698 () Bool)

(assert (=> b!322867 (=> (not res!176698) (not e!199680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322867 (= res!176698 (validKeyInArray!0 k0!2497))))

(declare-fun b!322868 () Bool)

(assert (=> b!322868 false))

(declare-fun Unit!9946 () Unit!9941)

(assert (=> b!322868 (= e!199679 Unit!9946)))

(declare-fun b!322869 () Bool)

(assert (=> b!322869 (= e!199682 (not true))))

(assert (=> b!322869 (= index!1840 resIndex!58)))

(declare-fun lt!156525 () Unit!9941)

(assert (=> b!322869 (= lt!156525 e!199684)))

(declare-fun c!50710 () Bool)

(assert (=> b!322869 (= c!50710 (not (= resIndex!58 index!1840)))))

(declare-fun b!322870 () Bool)

(declare-fun Unit!9947 () Unit!9941)

(assert (=> b!322870 (= e!199684 Unit!9947)))

(declare-fun b!322871 () Bool)

(declare-fun res!176695 () Bool)

(assert (=> b!322871 (=> (not res!176695) (not e!199682))))

(assert (=> b!322871 (= res!176695 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7823 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!322872 () Bool)

(declare-fun res!176696 () Bool)

(assert (=> b!322872 (=> (not res!176696) (not e!199680))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16537 (_ BitVec 32)) SeekEntryResult!2965)

(assert (=> b!322872 (= res!176696 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2965 i!1250)))))

(assert (= (and start!32402 res!176701) b!322862))

(assert (= (and b!322862 res!176694) b!322867))

(assert (= (and b!322867 res!176698) b!322866))

(assert (= (and b!322866 res!176702) b!322872))

(assert (= (and b!322872 res!176696) b!322864))

(assert (= (and b!322864 res!176697) b!322861))

(assert (= (and b!322861 res!176699) b!322858))

(assert (= (and b!322858 res!176703) b!322859))

(assert (= (and b!322859 res!176700) b!322871))

(assert (= (and b!322871 res!176695) b!322869))

(assert (= (and b!322869 c!50710) b!322860))

(assert (= (and b!322869 (not c!50710)) b!322870))

(assert (= (and b!322860 c!50709) b!322868))

(assert (= (and b!322860 (not c!50709)) b!322857))

(assert (= (and b!322857 c!50711) b!322865))

(assert (= (and b!322857 (not c!50711)) b!322863))

(declare-fun m!330453 () Bool)

(assert (=> b!322861 m!330453))

(assert (=> b!322861 m!330453))

(declare-fun m!330455 () Bool)

(assert (=> b!322861 m!330455))

(declare-fun m!330457 () Bool)

(assert (=> b!322871 m!330457))

(declare-fun m!330459 () Bool)

(assert (=> b!322858 m!330459))

(declare-fun m!330461 () Bool)

(assert (=> b!322872 m!330461))

(declare-fun m!330463 () Bool)

(assert (=> b!322866 m!330463))

(declare-fun m!330465 () Bool)

(assert (=> b!322859 m!330465))

(assert (=> b!322860 m!330457))

(declare-fun m!330467 () Bool)

(assert (=> b!322864 m!330467))

(declare-fun m!330469 () Bool)

(assert (=> b!322867 m!330469))

(declare-fun m!330471 () Bool)

(assert (=> b!322857 m!330471))

(assert (=> b!322857 m!330471))

(declare-fun m!330473 () Bool)

(assert (=> b!322857 m!330473))

(declare-fun m!330475 () Bool)

(assert (=> start!32402 m!330475))

(declare-fun m!330477 () Bool)

(assert (=> start!32402 m!330477))

(check-sat (not b!322864) (not start!32402) (not b!322861) (not b!322859) (not b!322866) (not b!322857) (not b!322867) (not b!322872))
(check-sat)
