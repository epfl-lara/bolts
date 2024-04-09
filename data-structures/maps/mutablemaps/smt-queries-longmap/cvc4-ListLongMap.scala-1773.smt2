; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32296 () Bool)

(assert start!32296)

(declare-fun b!321562 () Bool)

(declare-fun res!175848 () Bool)

(declare-fun e!199165 () Bool)

(assert (=> b!321562 (=> (not res!175848) (not e!199165))))

(declare-datatypes ((array!16482 0))(
  ( (array!16483 (arr!7797 (Array (_ BitVec 32) (_ BitVec 64))) (size!8149 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16482)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!321562 (= res!175848 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7797 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7797 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7797 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321563 () Bool)

(declare-fun res!175843 () Bool)

(declare-fun e!199164 () Bool)

(assert (=> b!321563 (=> (not res!175843) (not e!199164))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16482 (_ BitVec 32)) Bool)

(assert (=> b!321563 (= res!175843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321564 () Bool)

(assert (=> b!321564 (= e!199164 e!199165)))

(declare-fun res!175839 () Bool)

(assert (=> b!321564 (=> (not res!175839) (not e!199165))))

(declare-datatypes ((SeekEntryResult!2939 0))(
  ( (MissingZero!2939 (index!13932 (_ BitVec 32))) (Found!2939 (index!13933 (_ BitVec 32))) (Intermediate!2939 (undefined!3751 Bool) (index!13934 (_ BitVec 32)) (x!32153 (_ BitVec 32))) (Undefined!2939) (MissingVacant!2939 (index!13935 (_ BitVec 32))) )
))
(declare-fun lt!156215 () SeekEntryResult!2939)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16482 (_ BitVec 32)) SeekEntryResult!2939)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321564 (= res!175839 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156215))))

(assert (=> b!321564 (= lt!156215 (Intermediate!2939 false resIndex!58 resX!58))))

(declare-fun b!321565 () Bool)

(declare-fun res!175846 () Bool)

(assert (=> b!321565 (=> (not res!175846) (not e!199164))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321565 (= res!175846 (and (= (size!8149 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8149 a!3305))))))

(declare-fun b!321566 () Bool)

(declare-fun res!175847 () Bool)

(assert (=> b!321566 (=> (not res!175847) (not e!199165))))

(assert (=> b!321566 (= res!175847 (and (= (select (arr!7797 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8149 a!3305))))))

(declare-fun b!321567 () Bool)

(declare-fun res!175840 () Bool)

(assert (=> b!321567 (=> (not res!175840) (not e!199164))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16482 (_ BitVec 32)) SeekEntryResult!2939)

(assert (=> b!321567 (= res!175840 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2939 i!1250)))))

(declare-fun b!321568 () Bool)

(assert (=> b!321568 (= e!199165 false)))

(declare-fun lt!156214 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321568 (= lt!156214 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321569 () Bool)

(declare-fun res!175841 () Bool)

(assert (=> b!321569 (=> (not res!175841) (not e!199164))))

(declare-fun arrayContainsKey!0 (array!16482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321569 (= res!175841 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321570 () Bool)

(declare-fun res!175842 () Bool)

(assert (=> b!321570 (=> (not res!175842) (not e!199164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321570 (= res!175842 (validKeyInArray!0 k!2497))))

(declare-fun b!321561 () Bool)

(declare-fun res!175844 () Bool)

(assert (=> b!321561 (=> (not res!175844) (not e!199165))))

(assert (=> b!321561 (= res!175844 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156215))))

(declare-fun res!175845 () Bool)

(assert (=> start!32296 (=> (not res!175845) (not e!199164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32296 (= res!175845 (validMask!0 mask!3777))))

(assert (=> start!32296 e!199164))

(declare-fun array_inv!5751 (array!16482) Bool)

(assert (=> start!32296 (array_inv!5751 a!3305)))

(assert (=> start!32296 true))

(assert (= (and start!32296 res!175845) b!321565))

(assert (= (and b!321565 res!175846) b!321570))

(assert (= (and b!321570 res!175842) b!321569))

(assert (= (and b!321569 res!175841) b!321567))

(assert (= (and b!321567 res!175840) b!321563))

(assert (= (and b!321563 res!175843) b!321564))

(assert (= (and b!321564 res!175839) b!321566))

(assert (= (and b!321566 res!175847) b!321561))

(assert (= (and b!321561 res!175844) b!321562))

(assert (= (and b!321562 res!175848) b!321568))

(declare-fun m!329683 () Bool)

(assert (=> b!321563 m!329683))

(declare-fun m!329685 () Bool)

(assert (=> b!321568 m!329685))

(declare-fun m!329687 () Bool)

(assert (=> b!321566 m!329687))

(declare-fun m!329689 () Bool)

(assert (=> b!321561 m!329689))

(declare-fun m!329691 () Bool)

(assert (=> start!32296 m!329691))

(declare-fun m!329693 () Bool)

(assert (=> start!32296 m!329693))

(declare-fun m!329695 () Bool)

(assert (=> b!321569 m!329695))

(declare-fun m!329697 () Bool)

(assert (=> b!321567 m!329697))

(declare-fun m!329699 () Bool)

(assert (=> b!321562 m!329699))

(declare-fun m!329701 () Bool)

(assert (=> b!321570 m!329701))

(declare-fun m!329703 () Bool)

(assert (=> b!321564 m!329703))

(assert (=> b!321564 m!329703))

(declare-fun m!329705 () Bool)

(assert (=> b!321564 m!329705))

(push 1)

(assert (not b!321561))

(assert (not b!321564))

(assert (not b!321570))

