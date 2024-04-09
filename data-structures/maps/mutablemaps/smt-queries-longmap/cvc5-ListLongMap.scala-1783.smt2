; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32406 () Bool)

(assert start!32406)

(declare-fun b!322953 () Bool)

(assert (=> b!322953 false))

(declare-datatypes ((Unit!9955 0))(
  ( (Unit!9956) )
))
(declare-fun e!199718 () Unit!9955)

(declare-fun Unit!9957 () Unit!9955)

(assert (=> b!322953 (= e!199718 Unit!9957)))

(declare-fun b!322954 () Bool)

(declare-fun res!176756 () Bool)

(declare-fun e!199715 () Bool)

(assert (=> b!322954 (=> (not res!176756) (not e!199715))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((array!16541 0))(
  ( (array!16542 (arr!7825 (Array (_ BitVec 32) (_ BitVec 64))) (size!8177 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16541)

(declare-datatypes ((SeekEntryResult!2967 0))(
  ( (MissingZero!2967 (index!14044 (_ BitVec 32))) (Found!2967 (index!14045 (_ BitVec 32))) (Intermediate!2967 (undefined!3779 Bool) (index!14046 (_ BitVec 32)) (x!32270 (_ BitVec 32))) (Undefined!2967) (MissingVacant!2967 (index!14047 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16541 (_ BitVec 32)) SeekEntryResult!2967)

(assert (=> b!322954 (= res!176756 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2967 i!1250)))))

(declare-fun b!322955 () Bool)

(declare-fun res!176763 () Bool)

(declare-fun e!199717 () Bool)

(assert (=> b!322955 (=> (not res!176763) (not e!199717))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322955 (= res!176763 (and (= (select (arr!7825 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8177 a!3305))))))

(declare-fun b!322956 () Bool)

(declare-fun e!199720 () Unit!9955)

(declare-fun Unit!9958 () Unit!9955)

(assert (=> b!322956 (= e!199720 Unit!9958)))

(assert (=> b!322956 false))

(declare-fun b!322957 () Bool)

(declare-fun e!199716 () Unit!9955)

(declare-fun Unit!9959 () Unit!9955)

(assert (=> b!322957 (= e!199716 Unit!9959)))

(declare-fun b!322958 () Bool)

(declare-fun res!176760 () Bool)

(assert (=> b!322958 (=> (not res!176760) (not e!199715))))

(assert (=> b!322958 (= res!176760 (and (= (size!8177 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8177 a!3305))))))

(declare-fun b!322959 () Bool)

(declare-fun res!176761 () Bool)

(assert (=> b!322959 (=> (not res!176761) (not e!199717))))

(assert (=> b!322959 (= res!176761 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7825 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322960 () Bool)

(assert (=> b!322960 (= e!199715 e!199717)))

(declare-fun res!176758 () Bool)

(assert (=> b!322960 (=> (not res!176758) (not e!199717))))

(declare-fun lt!156545 () SeekEntryResult!2967)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16541 (_ BitVec 32)) SeekEntryResult!2967)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322960 (= res!176758 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156545))))

(assert (=> b!322960 (= lt!156545 (Intermediate!2967 false resIndex!58 resX!58))))

(declare-fun res!176754 () Bool)

(assert (=> start!32406 (=> (not res!176754) (not e!199715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32406 (= res!176754 (validMask!0 mask!3777))))

(assert (=> start!32406 e!199715))

(declare-fun array_inv!5779 (array!16541) Bool)

(assert (=> start!32406 (array_inv!5779 a!3305)))

(assert (=> start!32406 true))

(declare-fun b!322961 () Bool)

(assert (=> b!322961 (= e!199717 (not true))))

(assert (=> b!322961 (= index!1840 resIndex!58)))

(declare-fun lt!156543 () Unit!9955)

(assert (=> b!322961 (= lt!156543 e!199716)))

(declare-fun c!50727 () Bool)

(assert (=> b!322961 (= c!50727 (not (= resIndex!58 index!1840)))))

(declare-fun b!322962 () Bool)

(assert (=> b!322962 false))

(declare-fun lt!156544 () Unit!9955)

(assert (=> b!322962 (= lt!156544 e!199720)))

(declare-fun c!50728 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322962 (= c!50728 (is-Intermediate!2967 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9960 () Unit!9955)

(assert (=> b!322962 (= e!199718 Unit!9960)))

(declare-fun b!322963 () Bool)

(declare-fun res!176757 () Bool)

(assert (=> b!322963 (=> (not res!176757) (not e!199715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16541 (_ BitVec 32)) Bool)

(assert (=> b!322963 (= res!176757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322964 () Bool)

(declare-fun res!176755 () Bool)

(assert (=> b!322964 (=> (not res!176755) (not e!199717))))

(assert (=> b!322964 (= res!176755 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156545))))

(declare-fun b!322965 () Bool)

(declare-fun res!176762 () Bool)

(assert (=> b!322965 (=> (not res!176762) (not e!199715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322965 (= res!176762 (validKeyInArray!0 k!2497))))

(declare-fun b!322966 () Bool)

(assert (=> b!322966 (= e!199716 e!199718)))

(declare-fun c!50729 () Bool)

(assert (=> b!322966 (= c!50729 (or (= (select (arr!7825 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7825 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322967 () Bool)

(declare-fun res!176759 () Bool)

(assert (=> b!322967 (=> (not res!176759) (not e!199715))))

(declare-fun arrayContainsKey!0 (array!16541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322967 (= res!176759 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322968 () Bool)

(declare-fun Unit!9961 () Unit!9955)

(assert (=> b!322968 (= e!199720 Unit!9961)))

(assert (= (and start!32406 res!176754) b!322958))

(assert (= (and b!322958 res!176760) b!322965))

(assert (= (and b!322965 res!176762) b!322967))

(assert (= (and b!322967 res!176759) b!322954))

(assert (= (and b!322954 res!176756) b!322963))

(assert (= (and b!322963 res!176757) b!322960))

(assert (= (and b!322960 res!176758) b!322955))

(assert (= (and b!322955 res!176763) b!322964))

(assert (= (and b!322964 res!176755) b!322959))

(assert (= (and b!322959 res!176761) b!322961))

(assert (= (and b!322961 c!50727) b!322966))

(assert (= (and b!322961 (not c!50727)) b!322957))

(assert (= (and b!322966 c!50729) b!322953))

(assert (= (and b!322966 (not c!50729)) b!322962))

(assert (= (and b!322962 c!50728) b!322968))

(assert (= (and b!322962 (not c!50728)) b!322956))

(declare-fun m!330505 () Bool)

(assert (=> start!32406 m!330505))

(declare-fun m!330507 () Bool)

(assert (=> start!32406 m!330507))

(declare-fun m!330509 () Bool)

(assert (=> b!322959 m!330509))

(declare-fun m!330511 () Bool)

(assert (=> b!322965 m!330511))

(declare-fun m!330513 () Bool)

(assert (=> b!322963 m!330513))

(declare-fun m!330515 () Bool)

(assert (=> b!322964 m!330515))

(declare-fun m!330517 () Bool)

(assert (=> b!322962 m!330517))

(assert (=> b!322962 m!330517))

(declare-fun m!330519 () Bool)

(assert (=> b!322962 m!330519))

(declare-fun m!330521 () Bool)

(assert (=> b!322954 m!330521))

(declare-fun m!330523 () Bool)

(assert (=> b!322967 m!330523))

(declare-fun m!330525 () Bool)

(assert (=> b!322955 m!330525))

(assert (=> b!322966 m!330509))

(declare-fun m!330527 () Bool)

(assert (=> b!322960 m!330527))

(assert (=> b!322960 m!330527))

(declare-fun m!330529 () Bool)

(assert (=> b!322960 m!330529))

(push 1)

