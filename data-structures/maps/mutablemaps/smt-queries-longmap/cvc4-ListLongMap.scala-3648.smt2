; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50346 () Bool)

(assert start!50346)

(declare-fun res!343572 () Bool)

(declare-fun e!317760 () Bool)

(assert (=> start!50346 (=> (not res!343572) (not e!317760))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50346 (= res!343572 (validMask!0 mask!3119))))

(assert (=> start!50346 e!317760))

(assert (=> start!50346 true))

(declare-datatypes ((array!34696 0))(
  ( (array!34697 (arr!16658 (Array (_ BitVec 32) (_ BitVec 64))) (size!17022 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34696)

(declare-fun array_inv!12432 (array!34696) Bool)

(assert (=> start!50346 (array_inv!12432 a!3118)))

(declare-fun b!550457 () Bool)

(declare-fun e!317758 () Bool)

(assert (=> b!550457 (= e!317760 e!317758)))

(declare-fun res!343569 () Bool)

(assert (=> b!550457 (=> (not res!343569) (not e!317758))))

(declare-datatypes ((SeekEntryResult!5114 0))(
  ( (MissingZero!5114 (index!22683 (_ BitVec 32))) (Found!5114 (index!22684 (_ BitVec 32))) (Intermediate!5114 (undefined!5926 Bool) (index!22685 (_ BitVec 32)) (x!51637 (_ BitVec 32))) (Undefined!5114) (MissingVacant!5114 (index!22686 (_ BitVec 32))) )
))
(declare-fun lt!250555 () SeekEntryResult!5114)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!550457 (= res!343569 (or (= lt!250555 (MissingZero!5114 i!1132)) (= lt!250555 (MissingVacant!5114 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34696 (_ BitVec 32)) SeekEntryResult!5114)

(assert (=> b!550457 (= lt!250555 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550458 () Bool)

(assert (=> b!550458 (= e!317758 (not true))))

(declare-fun e!317759 () Bool)

(assert (=> b!550458 e!317759))

(declare-fun res!343568 () Bool)

(assert (=> b!550458 (=> (not res!343568) (not e!317759))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34696 (_ BitVec 32)) Bool)

(assert (=> b!550458 (= res!343568 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17002 0))(
  ( (Unit!17003) )
))
(declare-fun lt!250556 () Unit!17002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34696 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17002)

(assert (=> b!550458 (= lt!250556 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550459 () Bool)

(declare-fun res!343577 () Bool)

(assert (=> b!550459 (=> (not res!343577) (not e!317760))))

(assert (=> b!550459 (= res!343577 (and (= (size!17022 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17022 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17022 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550460 () Bool)

(declare-fun res!343570 () Bool)

(assert (=> b!550460 (=> (not res!343570) (not e!317760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550460 (= res!343570 (validKeyInArray!0 (select (arr!16658 a!3118) j!142)))))

(declare-fun b!550461 () Bool)

(declare-fun res!343573 () Bool)

(assert (=> b!550461 (=> (not res!343573) (not e!317760))))

(declare-fun arrayContainsKey!0 (array!34696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550461 (= res!343573 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550462 () Bool)

(declare-fun res!343574 () Bool)

(assert (=> b!550462 (=> (not res!343574) (not e!317760))))

(assert (=> b!550462 (= res!343574 (validKeyInArray!0 k!1914))))

(declare-fun b!550463 () Bool)

(declare-fun res!343575 () Bool)

(assert (=> b!550463 (=> (not res!343575) (not e!317758))))

(assert (=> b!550463 (= res!343575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550464 () Bool)

(declare-fun res!343571 () Bool)

(assert (=> b!550464 (=> (not res!343571) (not e!317758))))

(declare-datatypes ((List!10791 0))(
  ( (Nil!10788) (Cons!10787 (h!11763 (_ BitVec 64)) (t!17027 List!10791)) )
))
(declare-fun arrayNoDuplicates!0 (array!34696 (_ BitVec 32) List!10791) Bool)

(assert (=> b!550464 (= res!343571 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10788))))

(declare-fun b!550465 () Bool)

(declare-fun res!343576 () Bool)

(assert (=> b!550465 (=> (not res!343576) (not e!317758))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34696 (_ BitVec 32)) SeekEntryResult!5114)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550465 (= res!343576 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16658 a!3118) j!142) mask!3119) (select (arr!16658 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16658 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16658 a!3118) i!1132 k!1914) j!142) (array!34697 (store (arr!16658 a!3118) i!1132 k!1914) (size!17022 a!3118)) mask!3119)))))

(declare-fun b!550466 () Bool)

(assert (=> b!550466 (= e!317759 (= (seekEntryOrOpen!0 (select (arr!16658 a!3118) j!142) a!3118 mask!3119) (Found!5114 j!142)))))

(assert (= (and start!50346 res!343572) b!550459))

(assert (= (and b!550459 res!343577) b!550460))

(assert (= (and b!550460 res!343570) b!550462))

(assert (= (and b!550462 res!343574) b!550461))

(assert (= (and b!550461 res!343573) b!550457))

(assert (= (and b!550457 res!343569) b!550463))

(assert (= (and b!550463 res!343575) b!550464))

(assert (= (and b!550464 res!343571) b!550465))

(assert (= (and b!550465 res!343576) b!550458))

(assert (= (and b!550458 res!343568) b!550466))

(declare-fun m!527467 () Bool)

(assert (=> b!550461 m!527467))

(declare-fun m!527469 () Bool)

(assert (=> b!550465 m!527469))

(declare-fun m!527471 () Bool)

(assert (=> b!550465 m!527471))

(assert (=> b!550465 m!527469))

(declare-fun m!527473 () Bool)

(assert (=> b!550465 m!527473))

(declare-fun m!527475 () Bool)

(assert (=> b!550465 m!527475))

(assert (=> b!550465 m!527473))

(declare-fun m!527477 () Bool)

(assert (=> b!550465 m!527477))

(assert (=> b!550465 m!527471))

(assert (=> b!550465 m!527469))

(declare-fun m!527479 () Bool)

(assert (=> b!550465 m!527479))

(declare-fun m!527481 () Bool)

(assert (=> b!550465 m!527481))

(assert (=> b!550465 m!527473))

(assert (=> b!550465 m!527475))

(declare-fun m!527483 () Bool)

(assert (=> b!550463 m!527483))

(declare-fun m!527485 () Bool)

(assert (=> b!550457 m!527485))

(assert (=> b!550460 m!527469))

(assert (=> b!550460 m!527469))

(declare-fun m!527487 () Bool)

(assert (=> b!550460 m!527487))

(assert (=> b!550466 m!527469))

(assert (=> b!550466 m!527469))

(declare-fun m!527489 () Bool)

(assert (=> b!550466 m!527489))

(declare-fun m!527491 () Bool)

(assert (=> start!50346 m!527491))

(declare-fun m!527493 () Bool)

(assert (=> start!50346 m!527493))

(declare-fun m!527495 () Bool)

(assert (=> b!550464 m!527495))

(declare-fun m!527497 () Bool)

(assert (=> b!550458 m!527497))

(declare-fun m!527499 () Bool)

(assert (=> b!550458 m!527499))

(declare-fun m!527501 () Bool)

(assert (=> b!550462 m!527501))

(push 1)

