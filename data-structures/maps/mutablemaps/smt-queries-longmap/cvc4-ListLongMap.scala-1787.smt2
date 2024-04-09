; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32434 () Bool)

(assert start!32434)

(declare-datatypes ((array!16569 0))(
  ( (array!16570 (arr!7839 (Array (_ BitVec 32) (_ BitVec 64))) (size!8191 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16569)

(declare-fun b!323625 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun e!199969 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!323625 (= e!199969 (not (or (not (= (select (arr!7839 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsle x!1490 #b01111111111111111111111111111110))))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!323625 (= index!1840 resIndex!58)))

(declare-datatypes ((Unit!10053 0))(
  ( (Unit!10054) )
))
(declare-fun lt!156671 () Unit!10053)

(declare-fun e!199967 () Unit!10053)

(assert (=> b!323625 (= lt!156671 e!199967)))

(declare-fun c!50854 () Bool)

(assert (=> b!323625 (= c!50854 (not (= resIndex!58 index!1840)))))

(declare-fun b!323626 () Bool)

(assert (=> b!323626 false))

(declare-fun e!199968 () Unit!10053)

(declare-fun Unit!10055 () Unit!10053)

(assert (=> b!323626 (= e!199968 Unit!10055)))

(declare-fun b!323627 () Bool)

(declare-fun res!177175 () Bool)

(declare-fun e!199972 () Bool)

(assert (=> b!323627 (=> (not res!177175) (not e!199972))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323627 (= res!177175 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323628 () Bool)

(assert (=> b!323628 (= e!199972 e!199969)))

(declare-fun res!177177 () Bool)

(assert (=> b!323628 (=> (not res!177177) (not e!199969))))

(declare-datatypes ((SeekEntryResult!2981 0))(
  ( (MissingZero!2981 (index!14100 (_ BitVec 32))) (Found!2981 (index!14101 (_ BitVec 32))) (Intermediate!2981 (undefined!3793 Bool) (index!14102 (_ BitVec 32)) (x!32316 (_ BitVec 32))) (Undefined!2981) (MissingVacant!2981 (index!14103 (_ BitVec 32))) )
))
(declare-fun lt!156669 () SeekEntryResult!2981)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16569 (_ BitVec 32)) SeekEntryResult!2981)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323628 (= res!177177 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156669))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323628 (= lt!156669 (Intermediate!2981 false resIndex!58 resX!58))))

(declare-fun b!323629 () Bool)

(declare-fun res!177183 () Bool)

(assert (=> b!323629 (=> (not res!177183) (not e!199972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16569 (_ BitVec 32)) Bool)

(assert (=> b!323629 (= res!177183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323630 () Bool)

(declare-fun res!177178 () Bool)

(assert (=> b!323630 (=> (not res!177178) (not e!199969))))

(assert (=> b!323630 (= res!177178 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7839 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323631 () Bool)

(declare-fun e!199971 () Unit!10053)

(declare-fun Unit!10056 () Unit!10053)

(assert (=> b!323631 (= e!199971 Unit!10056)))

(declare-fun b!323632 () Bool)

(declare-fun Unit!10057 () Unit!10053)

(assert (=> b!323632 (= e!199971 Unit!10057)))

(assert (=> b!323632 false))

(declare-fun b!323633 () Bool)

(declare-fun res!177181 () Bool)

(assert (=> b!323633 (=> (not res!177181) (not e!199972))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323633 (= res!177181 (and (= (size!8191 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8191 a!3305))))))

(declare-fun b!323635 () Bool)

(declare-fun res!177182 () Bool)

(assert (=> b!323635 (=> (not res!177182) (not e!199969))))

(assert (=> b!323635 (= res!177182 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156669))))

(declare-fun b!323636 () Bool)

(assert (=> b!323636 false))

(declare-fun lt!156670 () Unit!10053)

(assert (=> b!323636 (= lt!156670 e!199971)))

(declare-fun c!50855 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323636 (= c!50855 (is-Intermediate!2981 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10058 () Unit!10053)

(assert (=> b!323636 (= e!199968 Unit!10058)))

(declare-fun b!323637 () Bool)

(declare-fun res!177180 () Bool)

(assert (=> b!323637 (=> (not res!177180) (not e!199972))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16569 (_ BitVec 32)) SeekEntryResult!2981)

(assert (=> b!323637 (= res!177180 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2981 i!1250)))))

(declare-fun b!323638 () Bool)

(assert (=> b!323638 (= e!199967 e!199968)))

(declare-fun c!50853 () Bool)

(assert (=> b!323638 (= c!50853 (or (= (select (arr!7839 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7839 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!177179 () Bool)

(assert (=> start!32434 (=> (not res!177179) (not e!199972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32434 (= res!177179 (validMask!0 mask!3777))))

(assert (=> start!32434 e!199972))

(declare-fun array_inv!5793 (array!16569) Bool)

(assert (=> start!32434 (array_inv!5793 a!3305)))

(assert (=> start!32434 true))

(declare-fun b!323634 () Bool)

(declare-fun res!177174 () Bool)

(assert (=> b!323634 (=> (not res!177174) (not e!199972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323634 (= res!177174 (validKeyInArray!0 k!2497))))

(declare-fun b!323639 () Bool)

(declare-fun Unit!10059 () Unit!10053)

(assert (=> b!323639 (= e!199967 Unit!10059)))

(declare-fun b!323640 () Bool)

(declare-fun res!177176 () Bool)

(assert (=> b!323640 (=> (not res!177176) (not e!199969))))

(assert (=> b!323640 (= res!177176 (and (= (select (arr!7839 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8191 a!3305))))))

(assert (= (and start!32434 res!177179) b!323633))

(assert (= (and b!323633 res!177181) b!323634))

(assert (= (and b!323634 res!177174) b!323627))

(assert (= (and b!323627 res!177175) b!323637))

(assert (= (and b!323637 res!177180) b!323629))

(assert (= (and b!323629 res!177183) b!323628))

(assert (= (and b!323628 res!177177) b!323640))

(assert (= (and b!323640 res!177176) b!323635))

(assert (= (and b!323635 res!177182) b!323630))

(assert (= (and b!323630 res!177178) b!323625))

(assert (= (and b!323625 c!50854) b!323638))

(assert (= (and b!323625 (not c!50854)) b!323639))

(assert (= (and b!323638 c!50853) b!323626))

(assert (= (and b!323638 (not c!50853)) b!323636))

(assert (= (and b!323636 c!50855) b!323631))

(assert (= (and b!323636 (not c!50855)) b!323632))

(declare-fun m!330869 () Bool)

(assert (=> b!323637 m!330869))

(declare-fun m!330871 () Bool)

(assert (=> b!323625 m!330871))

(declare-fun m!330873 () Bool)

(assert (=> b!323634 m!330873))

(declare-fun m!330875 () Bool)

(assert (=> b!323629 m!330875))

(assert (=> b!323638 m!330871))

(declare-fun m!330877 () Bool)

(assert (=> b!323636 m!330877))

(assert (=> b!323636 m!330877))

(declare-fun m!330879 () Bool)

(assert (=> b!323636 m!330879))

(declare-fun m!330881 () Bool)

(assert (=> b!323627 m!330881))

(assert (=> b!323630 m!330871))

(declare-fun m!330883 () Bool)

(assert (=> b!323635 m!330883))

(declare-fun m!330885 () Bool)

(assert (=> b!323640 m!330885))

(declare-fun m!330887 () Bool)

(assert (=> start!32434 m!330887))

(declare-fun m!330889 () Bool)

(assert (=> start!32434 m!330889))

(declare-fun m!330891 () Bool)

(assert (=> b!323628 m!330891))

(assert (=> b!323628 m!330891))

(declare-fun m!330893 () Bool)

(assert (=> b!323628 m!330893))

(push 1)

(assert (not start!32434))

(assert (not b!323629))

