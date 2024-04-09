; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50850 () Bool)

(assert start!50850)

(declare-fun b!556064 () Bool)

(declare-fun res!348632 () Bool)

(declare-fun e!320386 () Bool)

(assert (=> b!556064 (=> (not res!348632) (not e!320386))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35029 0))(
  ( (array!35030 (arr!16820 (Array (_ BitVec 32) (_ BitVec 64))) (size!17184 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35029)

(declare-datatypes ((SeekEntryResult!5276 0))(
  ( (MissingZero!5276 (index!23331 (_ BitVec 32))) (Found!5276 (index!23332 (_ BitVec 32))) (Intermediate!5276 (undefined!6088 Bool) (index!23333 (_ BitVec 32)) (x!52249 (_ BitVec 32))) (Undefined!5276) (MissingVacant!5276 (index!23334 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35029 (_ BitVec 32)) SeekEntryResult!5276)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556064 (= res!348632 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16820 a!3118) j!142) mask!3119) (select (arr!16820 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16820 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16820 a!3118) i!1132 k!1914) j!142) (array!35030 (store (arr!16820 a!3118) i!1132 k!1914) (size!17184 a!3118)) mask!3119)))))

(declare-fun b!556065 () Bool)

(declare-fun res!348628 () Bool)

(declare-fun e!320389 () Bool)

(assert (=> b!556065 (=> (not res!348628) (not e!320389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556065 (= res!348628 (validKeyInArray!0 k!1914))))

(declare-fun b!556066 () Bool)

(declare-fun res!348629 () Bool)

(assert (=> b!556066 (=> (not res!348629) (not e!320386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35029 (_ BitVec 32)) Bool)

(assert (=> b!556066 (= res!348629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!320388 () Bool)

(declare-fun b!556067 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35029 (_ BitVec 32)) SeekEntryResult!5276)

(assert (=> b!556067 (= e!320388 (= (seekEntryOrOpen!0 (select (arr!16820 a!3118) j!142) a!3118 mask!3119) (Found!5276 j!142)))))

(declare-fun b!556068 () Bool)

(assert (=> b!556068 (= e!320389 e!320386)))

(declare-fun res!348634 () Bool)

(assert (=> b!556068 (=> (not res!348634) (not e!320386))))

(declare-fun lt!252788 () SeekEntryResult!5276)

(assert (=> b!556068 (= res!348634 (or (= lt!252788 (MissingZero!5276 i!1132)) (= lt!252788 (MissingVacant!5276 i!1132))))))

(assert (=> b!556068 (= lt!252788 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!348635 () Bool)

(assert (=> start!50850 (=> (not res!348635) (not e!320389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50850 (= res!348635 (validMask!0 mask!3119))))

(assert (=> start!50850 e!320389))

(assert (=> start!50850 true))

(declare-fun array_inv!12594 (array!35029) Bool)

(assert (=> start!50850 (array_inv!12594 a!3118)))

(declare-fun b!556069 () Bool)

(declare-fun res!348630 () Bool)

(assert (=> b!556069 (=> (not res!348630) (not e!320389))))

(declare-fun arrayContainsKey!0 (array!35029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556069 (= res!348630 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556070 () Bool)

(declare-fun res!348631 () Bool)

(assert (=> b!556070 (=> (not res!348631) (not e!320389))))

(assert (=> b!556070 (= res!348631 (and (= (size!17184 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17184 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17184 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556071 () Bool)

(declare-fun res!348627 () Bool)

(assert (=> b!556071 (=> (not res!348627) (not e!320386))))

(declare-datatypes ((List!10953 0))(
  ( (Nil!10950) (Cons!10949 (h!11934 (_ BitVec 64)) (t!17189 List!10953)) )
))
(declare-fun arrayNoDuplicates!0 (array!35029 (_ BitVec 32) List!10953) Bool)

(assert (=> b!556071 (= res!348627 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10950))))

(declare-fun b!556072 () Bool)

(assert (=> b!556072 (= e!320386 (not true))))

(assert (=> b!556072 e!320388))

(declare-fun res!348626 () Bool)

(assert (=> b!556072 (=> (not res!348626) (not e!320388))))

(assert (=> b!556072 (= res!348626 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17326 0))(
  ( (Unit!17327) )
))
(declare-fun lt!252787 () Unit!17326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17326)

(assert (=> b!556072 (= lt!252787 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556073 () Bool)

(declare-fun res!348633 () Bool)

(assert (=> b!556073 (=> (not res!348633) (not e!320389))))

(assert (=> b!556073 (= res!348633 (validKeyInArray!0 (select (arr!16820 a!3118) j!142)))))

(assert (= (and start!50850 res!348635) b!556070))

(assert (= (and b!556070 res!348631) b!556073))

(assert (= (and b!556073 res!348633) b!556065))

(assert (= (and b!556065 res!348628) b!556069))

(assert (= (and b!556069 res!348630) b!556068))

(assert (= (and b!556068 res!348634) b!556066))

(assert (= (and b!556066 res!348629) b!556071))

(assert (= (and b!556071 res!348627) b!556064))

(assert (= (and b!556064 res!348632) b!556072))

(assert (= (and b!556072 res!348626) b!556067))

(declare-fun m!534055 () Bool)

(assert (=> b!556072 m!534055))

(declare-fun m!534057 () Bool)

(assert (=> b!556072 m!534057))

(declare-fun m!534059 () Bool)

(assert (=> b!556073 m!534059))

(assert (=> b!556073 m!534059))

(declare-fun m!534061 () Bool)

(assert (=> b!556073 m!534061))

(declare-fun m!534063 () Bool)

(assert (=> b!556069 m!534063))

(declare-fun m!534065 () Bool)

(assert (=> start!50850 m!534065))

(declare-fun m!534067 () Bool)

(assert (=> start!50850 m!534067))

(assert (=> b!556064 m!534059))

(declare-fun m!534069 () Bool)

(assert (=> b!556064 m!534069))

(assert (=> b!556064 m!534059))

(declare-fun m!534071 () Bool)

(assert (=> b!556064 m!534071))

(declare-fun m!534073 () Bool)

(assert (=> b!556064 m!534073))

(assert (=> b!556064 m!534071))

(declare-fun m!534075 () Bool)

(assert (=> b!556064 m!534075))

(assert (=> b!556064 m!534069))

(assert (=> b!556064 m!534059))

(declare-fun m!534077 () Bool)

(assert (=> b!556064 m!534077))

(declare-fun m!534079 () Bool)

(assert (=> b!556064 m!534079))

(assert (=> b!556064 m!534071))

(assert (=> b!556064 m!534073))

(declare-fun m!534081 () Bool)

(assert (=> b!556068 m!534081))

(assert (=> b!556067 m!534059))

(assert (=> b!556067 m!534059))

(declare-fun m!534083 () Bool)

(assert (=> b!556067 m!534083))

(declare-fun m!534085 () Bool)

(assert (=> b!556065 m!534085))

(declare-fun m!534087 () Bool)

(assert (=> b!556066 m!534087))

(declare-fun m!534089 () Bool)

(assert (=> b!556071 m!534089))

(push 1)

