; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33302 () Bool)

(assert start!33302)

(declare-fun b!330873 () Bool)

(declare-fun res!182437 () Bool)

(declare-fun e!203029 () Bool)

(assert (=> b!330873 (=> (not res!182437) (not e!203029))))

(declare-datatypes ((array!16906 0))(
  ( (array!16907 (arr!7991 (Array (_ BitVec 32) (_ BitVec 64))) (size!8343 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16906)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330873 (= res!182437 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330874 () Bool)

(declare-fun e!203028 () Bool)

(assert (=> b!330874 (= e!203028 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((Unit!10324 0))(
  ( (Unit!10325) )
))
(declare-fun lt!158668 () Unit!10324)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16906 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10324)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330874 (= lt!158668 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!330875 () Bool)

(declare-fun res!182435 () Bool)

(assert (=> b!330875 (=> (not res!182435) (not e!203029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16906 (_ BitVec 32)) Bool)

(assert (=> b!330875 (= res!182435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330876 () Bool)

(assert (=> b!330876 (= e!203029 e!203028)))

(declare-fun res!182434 () Bool)

(assert (=> b!330876 (=> (not res!182434) (not e!203028))))

(declare-datatypes ((SeekEntryResult!3133 0))(
  ( (MissingZero!3133 (index!14708 (_ BitVec 32))) (Found!3133 (index!14709 (_ BitVec 32))) (Intermediate!3133 (undefined!3945 Bool) (index!14710 (_ BitVec 32)) (x!32960 (_ BitVec 32))) (Undefined!3133) (MissingVacant!3133 (index!14711 (_ BitVec 32))) )
))
(declare-fun lt!158669 () SeekEntryResult!3133)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16906 (_ BitVec 32)) SeekEntryResult!3133)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330876 (= res!182434 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158669))))

(assert (=> b!330876 (= lt!158669 (Intermediate!3133 false resIndex!58 resX!58))))

(declare-fun b!330877 () Bool)

(declare-fun res!182441 () Bool)

(assert (=> b!330877 (=> (not res!182441) (not e!203028))))

(assert (=> b!330877 (= res!182441 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158669))))

(declare-fun b!330878 () Bool)

(declare-fun res!182440 () Bool)

(assert (=> b!330878 (=> (not res!182440) (not e!203028))))

(assert (=> b!330878 (= res!182440 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7991 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!330879 () Bool)

(declare-fun res!182436 () Bool)

(assert (=> b!330879 (=> (not res!182436) (not e!203029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330879 (= res!182436 (validKeyInArray!0 k0!2497))))

(declare-fun res!182438 () Bool)

(assert (=> start!33302 (=> (not res!182438) (not e!203029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33302 (= res!182438 (validMask!0 mask!3777))))

(assert (=> start!33302 e!203029))

(declare-fun array_inv!5945 (array!16906) Bool)

(assert (=> start!33302 (array_inv!5945 a!3305)))

(assert (=> start!33302 true))

(declare-fun b!330880 () Bool)

(declare-fun res!182433 () Bool)

(assert (=> b!330880 (=> (not res!182433) (not e!203029))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16906 (_ BitVec 32)) SeekEntryResult!3133)

(assert (=> b!330880 (= res!182433 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3133 i!1250)))))

(declare-fun b!330881 () Bool)

(declare-fun res!182439 () Bool)

(assert (=> b!330881 (=> (not res!182439) (not e!203029))))

(assert (=> b!330881 (= res!182439 (and (= (size!8343 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8343 a!3305))))))

(declare-fun b!330882 () Bool)

(declare-fun res!182442 () Bool)

(assert (=> b!330882 (=> (not res!182442) (not e!203028))))

(assert (=> b!330882 (= res!182442 (and (= (select (arr!7991 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8343 a!3305))))))

(assert (= (and start!33302 res!182438) b!330881))

(assert (= (and b!330881 res!182439) b!330879))

(assert (= (and b!330879 res!182436) b!330873))

(assert (= (and b!330873 res!182437) b!330880))

(assert (= (and b!330880 res!182433) b!330875))

(assert (= (and b!330875 res!182435) b!330876))

(assert (= (and b!330876 res!182434) b!330882))

(assert (= (and b!330882 res!182442) b!330877))

(assert (= (and b!330877 res!182441) b!330878))

(assert (= (and b!330878 res!182440) b!330874))

(declare-fun m!335919 () Bool)

(assert (=> b!330882 m!335919))

(declare-fun m!335921 () Bool)

(assert (=> b!330879 m!335921))

(declare-fun m!335923 () Bool)

(assert (=> b!330878 m!335923))

(declare-fun m!335925 () Bool)

(assert (=> start!33302 m!335925))

(declare-fun m!335927 () Bool)

(assert (=> start!33302 m!335927))

(declare-fun m!335929 () Bool)

(assert (=> b!330875 m!335929))

(declare-fun m!335931 () Bool)

(assert (=> b!330873 m!335931))

(declare-fun m!335933 () Bool)

(assert (=> b!330877 m!335933))

(declare-fun m!335935 () Bool)

(assert (=> b!330876 m!335935))

(assert (=> b!330876 m!335935))

(declare-fun m!335937 () Bool)

(assert (=> b!330876 m!335937))

(declare-fun m!335939 () Bool)

(assert (=> b!330880 m!335939))

(declare-fun m!335941 () Bool)

(assert (=> b!330874 m!335941))

(assert (=> b!330874 m!335941))

(declare-fun m!335943 () Bool)

(assert (=> b!330874 m!335943))

(check-sat (not b!330875) (not b!330877) (not start!33302) (not b!330879) (not b!330873) (not b!330876) (not b!330880) (not b!330874))
(check-sat)
