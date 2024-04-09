; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32408 () Bool)

(assert start!32408)

(declare-fun b!323001 () Bool)

(assert (=> b!323001 false))

(declare-datatypes ((Unit!9962 0))(
  ( (Unit!9963) )
))
(declare-fun lt!156554 () Unit!9962)

(declare-fun e!199733 () Unit!9962)

(assert (=> b!323001 (= lt!156554 e!199733)))

(declare-datatypes ((array!16543 0))(
  ( (array!16544 (arr!7826 (Array (_ BitVec 32) (_ BitVec 64))) (size!8178 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16543)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun c!50737 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(get-info :version)

(declare-datatypes ((SeekEntryResult!2968 0))(
  ( (MissingZero!2968 (index!14048 (_ BitVec 32))) (Found!2968 (index!14049 (_ BitVec 32))) (Intermediate!2968 (undefined!3780 Bool) (index!14050 (_ BitVec 32)) (x!32271 (_ BitVec 32))) (Undefined!2968) (MissingVacant!2968 (index!14051 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16543 (_ BitVec 32)) SeekEntryResult!2968)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323001 (= c!50737 ((_ is Intermediate!2968) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!199737 () Unit!9962)

(declare-fun Unit!9964 () Unit!9962)

(assert (=> b!323001 (= e!199737 Unit!9964)))

(declare-fun b!323002 () Bool)

(declare-fun res!176788 () Bool)

(declare-fun e!199736 () Bool)

(assert (=> b!323002 (=> (not res!176788) (not e!199736))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323002 (= res!176788 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7826 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!323003 () Bool)

(declare-fun e!199735 () Unit!9962)

(assert (=> b!323003 (= e!199735 e!199737)))

(declare-fun c!50736 () Bool)

(assert (=> b!323003 (= c!50736 (or (= (select (arr!7826 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7826 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323004 () Bool)

(declare-fun Unit!9965 () Unit!9962)

(assert (=> b!323004 (= e!199733 Unit!9965)))

(declare-fun b!323005 () Bool)

(declare-fun e!199738 () Bool)

(assert (=> b!323005 (= e!199738 e!199736)))

(declare-fun res!176787 () Bool)

(assert (=> b!323005 (=> (not res!176787) (not e!199736))))

(declare-fun lt!156553 () SeekEntryResult!2968)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323005 (= res!176787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156553))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!323005 (= lt!156553 (Intermediate!2968 false resIndex!58 resX!58))))

(declare-fun b!323006 () Bool)

(declare-fun res!176789 () Bool)

(assert (=> b!323006 (=> (not res!176789) (not e!199738))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323006 (= res!176789 (and (= (size!8178 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8178 a!3305))))))

(declare-fun b!323007 () Bool)

(declare-fun res!176785 () Bool)

(assert (=> b!323007 (=> (not res!176785) (not e!199736))))

(assert (=> b!323007 (= res!176785 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156553))))

(declare-fun b!323008 () Bool)

(declare-fun res!176793 () Bool)

(assert (=> b!323008 (=> (not res!176793) (not e!199738))))

(declare-fun arrayContainsKey!0 (array!16543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323008 (= res!176793 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323009 () Bool)

(declare-fun res!176786 () Bool)

(assert (=> b!323009 (=> (not res!176786) (not e!199738))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16543 (_ BitVec 32)) SeekEntryResult!2968)

(assert (=> b!323009 (= res!176786 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2968 i!1250)))))

(declare-fun b!323010 () Bool)

(declare-fun res!176792 () Bool)

(assert (=> b!323010 (=> (not res!176792) (not e!199738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16543 (_ BitVec 32)) Bool)

(assert (=> b!323010 (= res!176792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323012 () Bool)

(declare-fun Unit!9966 () Unit!9962)

(assert (=> b!323012 (= e!199733 Unit!9966)))

(assert (=> b!323012 false))

(declare-fun b!323013 () Bool)

(declare-fun Unit!9967 () Unit!9962)

(assert (=> b!323013 (= e!199735 Unit!9967)))

(declare-fun b!323014 () Bool)

(declare-fun res!176791 () Bool)

(assert (=> b!323014 (=> (not res!176791) (not e!199736))))

(assert (=> b!323014 (= res!176791 (and (= (select (arr!7826 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8178 a!3305))))))

(declare-fun b!323015 () Bool)

(assert (=> b!323015 (= e!199736 (not true))))

(assert (=> b!323015 (= index!1840 resIndex!58)))

(declare-fun lt!156552 () Unit!9962)

(assert (=> b!323015 (= lt!156552 e!199735)))

(declare-fun c!50738 () Bool)

(assert (=> b!323015 (= c!50738 (not (= resIndex!58 index!1840)))))

(declare-fun b!323016 () Bool)

(declare-fun res!176784 () Bool)

(assert (=> b!323016 (=> (not res!176784) (not e!199738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323016 (= res!176784 (validKeyInArray!0 k0!2497))))

(declare-fun b!323011 () Bool)

(assert (=> b!323011 false))

(declare-fun Unit!9968 () Unit!9962)

(assert (=> b!323011 (= e!199737 Unit!9968)))

(declare-fun res!176790 () Bool)

(assert (=> start!32408 (=> (not res!176790) (not e!199738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32408 (= res!176790 (validMask!0 mask!3777))))

(assert (=> start!32408 e!199738))

(declare-fun array_inv!5780 (array!16543) Bool)

(assert (=> start!32408 (array_inv!5780 a!3305)))

(assert (=> start!32408 true))

(assert (= (and start!32408 res!176790) b!323006))

(assert (= (and b!323006 res!176789) b!323016))

(assert (= (and b!323016 res!176784) b!323008))

(assert (= (and b!323008 res!176793) b!323009))

(assert (= (and b!323009 res!176786) b!323010))

(assert (= (and b!323010 res!176792) b!323005))

(assert (= (and b!323005 res!176787) b!323014))

(assert (= (and b!323014 res!176791) b!323007))

(assert (= (and b!323007 res!176785) b!323002))

(assert (= (and b!323002 res!176788) b!323015))

(assert (= (and b!323015 c!50738) b!323003))

(assert (= (and b!323015 (not c!50738)) b!323013))

(assert (= (and b!323003 c!50736) b!323011))

(assert (= (and b!323003 (not c!50736)) b!323001))

(assert (= (and b!323001 c!50737) b!323004))

(assert (= (and b!323001 (not c!50737)) b!323012))

(declare-fun m!330531 () Bool)

(assert (=> b!323003 m!330531))

(declare-fun m!330533 () Bool)

(assert (=> b!323014 m!330533))

(declare-fun m!330535 () Bool)

(assert (=> b!323008 m!330535))

(declare-fun m!330537 () Bool)

(assert (=> b!323010 m!330537))

(declare-fun m!330539 () Bool)

(assert (=> b!323007 m!330539))

(declare-fun m!330541 () Bool)

(assert (=> b!323005 m!330541))

(assert (=> b!323005 m!330541))

(declare-fun m!330543 () Bool)

(assert (=> b!323005 m!330543))

(declare-fun m!330545 () Bool)

(assert (=> start!32408 m!330545))

(declare-fun m!330547 () Bool)

(assert (=> start!32408 m!330547))

(declare-fun m!330549 () Bool)

(assert (=> b!323016 m!330549))

(declare-fun m!330551 () Bool)

(assert (=> b!323001 m!330551))

(assert (=> b!323001 m!330551))

(declare-fun m!330553 () Bool)

(assert (=> b!323001 m!330553))

(declare-fun m!330555 () Bool)

(assert (=> b!323009 m!330555))

(assert (=> b!323002 m!330531))

(check-sat (not b!323009) (not start!32408) (not b!323007) (not b!323008) (not b!323010) (not b!323016) (not b!323001) (not b!323005))
(check-sat)
