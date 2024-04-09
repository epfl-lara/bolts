; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32432 () Bool)

(assert start!32432)

(declare-fun b!323577 () Bool)

(declare-datatypes ((Unit!10046 0))(
  ( (Unit!10047) )
))
(declare-fun e!199949 () Unit!10046)

(declare-fun e!199953 () Unit!10046)

(assert (=> b!323577 (= e!199949 e!199953)))

(declare-fun c!50845 () Bool)

(declare-datatypes ((array!16567 0))(
  ( (array!16568 (arr!7838 (Array (_ BitVec 32) (_ BitVec 64))) (size!8190 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16567)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!323577 (= c!50845 (or (= (select (arr!7838 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7838 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323578 () Bool)

(declare-fun e!199951 () Unit!10046)

(declare-fun Unit!10048 () Unit!10046)

(assert (=> b!323578 (= e!199951 Unit!10048)))

(declare-fun b!323579 () Bool)

(declare-fun res!177147 () Bool)

(declare-fun e!199950 () Bool)

(assert (=> b!323579 (=> (not res!177147) (not e!199950))))

(declare-datatypes ((SeekEntryResult!2980 0))(
  ( (MissingZero!2980 (index!14096 (_ BitVec 32))) (Found!2980 (index!14097 (_ BitVec 32))) (Intermediate!2980 (undefined!3792 Bool) (index!14098 (_ BitVec 32)) (x!32315 (_ BitVec 32))) (Undefined!2980) (MissingVacant!2980 (index!14099 (_ BitVec 32))) )
))
(declare-fun lt!156662 () SeekEntryResult!2980)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16567 (_ BitVec 32)) SeekEntryResult!2980)

(assert (=> b!323579 (= res!177147 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156662))))

(declare-fun b!323580 () Bool)

(assert (=> b!323580 false))

(declare-fun lt!156661 () Unit!10046)

(assert (=> b!323580 (= lt!156661 e!199951)))

(declare-fun c!50844 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323580 (= c!50844 ((_ is Intermediate!2980) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun Unit!10049 () Unit!10046)

(assert (=> b!323580 (= e!199953 Unit!10049)))

(declare-fun b!323581 () Bool)

(declare-fun res!177153 () Bool)

(declare-fun e!199954 () Bool)

(assert (=> b!323581 (=> (not res!177153) (not e!199954))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323581 (= res!177153 (and (= (size!8190 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8190 a!3305))))))

(declare-fun b!323582 () Bool)

(assert (=> b!323582 (= e!199954 e!199950)))

(declare-fun res!177149 () Bool)

(assert (=> b!323582 (=> (not res!177149) (not e!199950))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323582 (= res!177149 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156662))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323582 (= lt!156662 (Intermediate!2980 false resIndex!58 resX!58))))

(declare-fun b!323583 () Bool)

(declare-fun res!177145 () Bool)

(assert (=> b!323583 (=> (not res!177145) (not e!199954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323583 (= res!177145 (validKeyInArray!0 k0!2497))))

(declare-fun b!323584 () Bool)

(assert (=> b!323584 false))

(declare-fun Unit!10050 () Unit!10046)

(assert (=> b!323584 (= e!199953 Unit!10050)))

(declare-fun b!323585 () Bool)

(declare-fun res!177152 () Bool)

(assert (=> b!323585 (=> (not res!177152) (not e!199954))))

(declare-fun arrayContainsKey!0 (array!16567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323585 (= res!177152 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323586 () Bool)

(declare-fun res!177150 () Bool)

(assert (=> b!323586 (=> (not res!177150) (not e!199950))))

(assert (=> b!323586 (= res!177150 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7838 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun res!177148 () Bool)

(assert (=> start!32432 (=> (not res!177148) (not e!199954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32432 (= res!177148 (validMask!0 mask!3777))))

(assert (=> start!32432 e!199954))

(declare-fun array_inv!5792 (array!16567) Bool)

(assert (=> start!32432 (array_inv!5792 a!3305)))

(assert (=> start!32432 true))

(declare-fun b!323587 () Bool)

(declare-fun res!177151 () Bool)

(assert (=> b!323587 (=> (not res!177151) (not e!199954))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16567 (_ BitVec 32)) SeekEntryResult!2980)

(assert (=> b!323587 (= res!177151 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2980 i!1250)))))

(declare-fun b!323588 () Bool)

(declare-fun res!177144 () Bool)

(assert (=> b!323588 (=> (not res!177144) (not e!199954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16567 (_ BitVec 32)) Bool)

(assert (=> b!323588 (= res!177144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323589 () Bool)

(declare-fun Unit!10051 () Unit!10046)

(assert (=> b!323589 (= e!199949 Unit!10051)))

(declare-fun b!323590 () Bool)

(declare-fun res!177146 () Bool)

(assert (=> b!323590 (=> (not res!177146) (not e!199950))))

(assert (=> b!323590 (= res!177146 (and (= (select (arr!7838 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8190 a!3305))))))

(declare-fun b!323591 () Bool)

(declare-fun Unit!10052 () Unit!10046)

(assert (=> b!323591 (= e!199951 Unit!10052)))

(assert (=> b!323591 false))

(declare-fun b!323592 () Bool)

(assert (=> b!323592 (= e!199950 (not (or (not (= (select (arr!7838 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsle x!1490 #b01111111111111111111111111111110))))))

(assert (=> b!323592 (= index!1840 resIndex!58)))

(declare-fun lt!156660 () Unit!10046)

(assert (=> b!323592 (= lt!156660 e!199949)))

(declare-fun c!50846 () Bool)

(assert (=> b!323592 (= c!50846 (not (= resIndex!58 index!1840)))))

(assert (= (and start!32432 res!177148) b!323581))

(assert (= (and b!323581 res!177153) b!323583))

(assert (= (and b!323583 res!177145) b!323585))

(assert (= (and b!323585 res!177152) b!323587))

(assert (= (and b!323587 res!177151) b!323588))

(assert (= (and b!323588 res!177144) b!323582))

(assert (= (and b!323582 res!177149) b!323590))

(assert (= (and b!323590 res!177146) b!323579))

(assert (= (and b!323579 res!177147) b!323586))

(assert (= (and b!323586 res!177150) b!323592))

(assert (= (and b!323592 c!50846) b!323577))

(assert (= (and b!323592 (not c!50846)) b!323589))

(assert (= (and b!323577 c!50845) b!323584))

(assert (= (and b!323577 (not c!50845)) b!323580))

(assert (= (and b!323580 c!50844) b!323578))

(assert (= (and b!323580 (not c!50844)) b!323591))

(declare-fun m!330843 () Bool)

(assert (=> b!323583 m!330843))

(declare-fun m!330845 () Bool)

(assert (=> b!323582 m!330845))

(assert (=> b!323582 m!330845))

(declare-fun m!330847 () Bool)

(assert (=> b!323582 m!330847))

(declare-fun m!330849 () Bool)

(assert (=> b!323585 m!330849))

(declare-fun m!330851 () Bool)

(assert (=> b!323577 m!330851))

(declare-fun m!330853 () Bool)

(assert (=> b!323590 m!330853))

(assert (=> b!323586 m!330851))

(declare-fun m!330855 () Bool)

(assert (=> b!323579 m!330855))

(declare-fun m!330857 () Bool)

(assert (=> start!32432 m!330857))

(declare-fun m!330859 () Bool)

(assert (=> start!32432 m!330859))

(assert (=> b!323592 m!330851))

(declare-fun m!330861 () Bool)

(assert (=> b!323587 m!330861))

(declare-fun m!330863 () Bool)

(assert (=> b!323588 m!330863))

(declare-fun m!330865 () Bool)

(assert (=> b!323580 m!330865))

(assert (=> b!323580 m!330865))

(declare-fun m!330867 () Bool)

(assert (=> b!323580 m!330867))

(check-sat (not b!323583) (not b!323585) (not b!323587) (not b!323582) (not b!323588) (not b!323580) (not start!32432) (not b!323579))
(check-sat)
