; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32398 () Bool)

(assert start!32398)

(declare-fun b!322761 () Bool)

(declare-fun res!176635 () Bool)

(declare-fun e!199645 () Bool)

(assert (=> b!322761 (=> (not res!176635) (not e!199645))))

(declare-datatypes ((array!16533 0))(
  ( (array!16534 (arr!7821 (Array (_ BitVec 32) (_ BitVec 64))) (size!8173 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16533)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16533 (_ BitVec 32)) Bool)

(assert (=> b!322761 (= res!176635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322762 () Bool)

(assert (=> b!322762 false))

(declare-datatypes ((Unit!9927 0))(
  ( (Unit!9928) )
))
(declare-fun lt!156507 () Unit!9927)

(declare-fun e!199643 () Unit!9927)

(assert (=> b!322762 (= lt!156507 e!199643)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun c!50693 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2963 0))(
  ( (MissingZero!2963 (index!14028 (_ BitVec 32))) (Found!2963 (index!14029 (_ BitVec 32))) (Intermediate!2963 (undefined!3775 Bool) (index!14030 (_ BitVec 32)) (x!32250 (_ BitVec 32))) (Undefined!2963) (MissingVacant!2963 (index!14031 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16533 (_ BitVec 32)) SeekEntryResult!2963)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322762 (= c!50693 (is-Intermediate!2963 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!199646 () Unit!9927)

(declare-fun Unit!9929 () Unit!9927)

(assert (=> b!322762 (= e!199646 Unit!9929)))

(declare-fun res!176639 () Bool)

(assert (=> start!32398 (=> (not res!176639) (not e!199645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32398 (= res!176639 (validMask!0 mask!3777))))

(assert (=> start!32398 e!199645))

(declare-fun array_inv!5775 (array!16533) Bool)

(assert (=> start!32398 (array_inv!5775 a!3305)))

(assert (=> start!32398 true))

(declare-fun b!322763 () Bool)

(declare-fun res!176636 () Bool)

(assert (=> b!322763 (=> (not res!176636) (not e!199645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322763 (= res!176636 (validKeyInArray!0 k!2497))))

(declare-fun b!322764 () Bool)

(declare-fun Unit!9930 () Unit!9927)

(assert (=> b!322764 (= e!199643 Unit!9930)))

(declare-fun b!322765 () Bool)

(declare-fun res!176640 () Bool)

(declare-fun e!199648 () Bool)

(assert (=> b!322765 (=> (not res!176640) (not e!199648))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322765 (= res!176640 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7821 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322766 () Bool)

(assert (=> b!322766 (= e!199648 (not (or (not (= (select (arr!7821 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsle x!1490 #b01111111111111111111111111111110))))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322766 (= index!1840 resIndex!58)))

(declare-fun lt!156508 () Unit!9927)

(declare-fun e!199644 () Unit!9927)

(assert (=> b!322766 (= lt!156508 e!199644)))

(declare-fun c!50692 () Bool)

(assert (=> b!322766 (= c!50692 (not (= resIndex!58 index!1840)))))

(declare-fun b!322767 () Bool)

(declare-fun res!176638 () Bool)

(assert (=> b!322767 (=> (not res!176638) (not e!199645))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322767 (= res!176638 (and (= (size!8173 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8173 a!3305))))))

(declare-fun b!322768 () Bool)

(declare-fun res!176642 () Bool)

(assert (=> b!322768 (=> (not res!176642) (not e!199648))))

(assert (=> b!322768 (= res!176642 (and (= (select (arr!7821 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8173 a!3305))))))

(declare-fun b!322769 () Bool)

(declare-fun res!176641 () Bool)

(assert (=> b!322769 (=> (not res!176641) (not e!199645))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16533 (_ BitVec 32)) SeekEntryResult!2963)

(assert (=> b!322769 (= res!176641 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2963 i!1250)))))

(declare-fun b!322770 () Bool)

(declare-fun Unit!9931 () Unit!9927)

(assert (=> b!322770 (= e!199643 Unit!9931)))

(assert (=> b!322770 false))

(declare-fun b!322771 () Bool)

(assert (=> b!322771 (= e!199644 e!199646)))

(declare-fun c!50691 () Bool)

(assert (=> b!322771 (= c!50691 (or (= (select (arr!7821 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7821 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322772 () Bool)

(declare-fun res!176643 () Bool)

(assert (=> b!322772 (=> (not res!176643) (not e!199645))))

(declare-fun arrayContainsKey!0 (array!16533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322772 (= res!176643 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322773 () Bool)

(declare-fun Unit!9932 () Unit!9927)

(assert (=> b!322773 (= e!199644 Unit!9932)))

(declare-fun b!322774 () Bool)

(assert (=> b!322774 false))

(declare-fun Unit!9933 () Unit!9927)

(assert (=> b!322774 (= e!199646 Unit!9933)))

(declare-fun b!322775 () Bool)

(declare-fun res!176637 () Bool)

(assert (=> b!322775 (=> (not res!176637) (not e!199648))))

(declare-fun lt!156509 () SeekEntryResult!2963)

(assert (=> b!322775 (= res!176637 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156509))))

(declare-fun b!322776 () Bool)

(assert (=> b!322776 (= e!199645 e!199648)))

(declare-fun res!176634 () Bool)

(assert (=> b!322776 (=> (not res!176634) (not e!199648))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322776 (= res!176634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156509))))

(assert (=> b!322776 (= lt!156509 (Intermediate!2963 false resIndex!58 resX!58))))

(assert (= (and start!32398 res!176639) b!322767))

(assert (= (and b!322767 res!176638) b!322763))

(assert (= (and b!322763 res!176636) b!322772))

(assert (= (and b!322772 res!176643) b!322769))

(assert (= (and b!322769 res!176641) b!322761))

(assert (= (and b!322761 res!176635) b!322776))

(assert (= (and b!322776 res!176634) b!322768))

(assert (= (and b!322768 res!176642) b!322775))

(assert (= (and b!322775 res!176637) b!322765))

(assert (= (and b!322765 res!176640) b!322766))

(assert (= (and b!322766 c!50692) b!322771))

(assert (= (and b!322766 (not c!50692)) b!322773))

(assert (= (and b!322771 c!50691) b!322774))

(assert (= (and b!322771 (not c!50691)) b!322762))

(assert (= (and b!322762 c!50693) b!322764))

(assert (= (and b!322762 (not c!50693)) b!322770))

(declare-fun m!330401 () Bool)

(assert (=> b!322775 m!330401))

(declare-fun m!330403 () Bool)

(assert (=> b!322763 m!330403))

(declare-fun m!330405 () Bool)

(assert (=> b!322768 m!330405))

(declare-fun m!330407 () Bool)

(assert (=> b!322769 m!330407))

(declare-fun m!330409 () Bool)

(assert (=> b!322776 m!330409))

(assert (=> b!322776 m!330409))

(declare-fun m!330411 () Bool)

(assert (=> b!322776 m!330411))

(declare-fun m!330413 () Bool)

(assert (=> b!322762 m!330413))

(assert (=> b!322762 m!330413))

(declare-fun m!330415 () Bool)

(assert (=> b!322762 m!330415))

(declare-fun m!330417 () Bool)

(assert (=> b!322765 m!330417))

(assert (=> b!322771 m!330417))

(declare-fun m!330419 () Bool)

(assert (=> b!322772 m!330419))

(declare-fun m!330421 () Bool)

(assert (=> b!322761 m!330421))

(assert (=> b!322766 m!330417))

(declare-fun m!330423 () Bool)

(assert (=> start!32398 m!330423))

(declare-fun m!330425 () Bool)

(assert (=> start!32398 m!330425))

(push 1)

(assert (not b!322772))

(assert (not b!322761))

