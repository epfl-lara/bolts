; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50144 () Bool)

(assert start!50144)

(declare-fun b!548788 () Bool)

(declare-fun res!342173 () Bool)

(declare-fun e!317006 () Bool)

(assert (=> b!548788 (=> (not res!342173) (not e!317006))))

(declare-datatypes ((array!34596 0))(
  ( (array!34597 (arr!16611 (Array (_ BitVec 32) (_ BitVec 64))) (size!16975 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34596)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34596 (_ BitVec 32)) Bool)

(assert (=> b!548788 (= res!342173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548789 () Bool)

(declare-fun res!342174 () Bool)

(declare-fun e!317007 () Bool)

(assert (=> b!548789 (=> (not res!342174) (not e!317007))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548789 (= res!342174 (and (= (size!16975 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16975 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16975 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548790 () Bool)

(declare-fun res!342172 () Bool)

(assert (=> b!548790 (=> (not res!342172) (not e!317007))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548790 (= res!342172 (validKeyInArray!0 k!1914))))

(declare-fun b!548791 () Bool)

(assert (=> b!548791 (= e!317007 e!317006)))

(declare-fun res!342169 () Bool)

(assert (=> b!548791 (=> (not res!342169) (not e!317006))))

(declare-datatypes ((SeekEntryResult!5067 0))(
  ( (MissingZero!5067 (index!22495 (_ BitVec 32))) (Found!5067 (index!22496 (_ BitVec 32))) (Intermediate!5067 (undefined!5879 Bool) (index!22497 (_ BitVec 32)) (x!51461 (_ BitVec 32))) (Undefined!5067) (MissingVacant!5067 (index!22498 (_ BitVec 32))) )
))
(declare-fun lt!249938 () SeekEntryResult!5067)

(assert (=> b!548791 (= res!342169 (or (= lt!249938 (MissingZero!5067 i!1132)) (= lt!249938 (MissingVacant!5067 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34596 (_ BitVec 32)) SeekEntryResult!5067)

(assert (=> b!548791 (= lt!249938 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548792 () Bool)

(assert (=> b!548792 (= e!317006 false)))

(declare-fun lt!249937 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548792 (= lt!249937 (toIndex!0 (select (store (arr!16611 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!548793 () Bool)

(declare-fun res!342171 () Bool)

(assert (=> b!548793 (=> (not res!342171) (not e!317007))))

(declare-fun arrayContainsKey!0 (array!34596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548793 (= res!342171 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342175 () Bool)

(assert (=> start!50144 (=> (not res!342175) (not e!317007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50144 (= res!342175 (validMask!0 mask!3119))))

(assert (=> start!50144 e!317007))

(assert (=> start!50144 true))

(declare-fun array_inv!12385 (array!34596) Bool)

(assert (=> start!50144 (array_inv!12385 a!3118)))

(declare-fun b!548794 () Bool)

(declare-fun res!342170 () Bool)

(assert (=> b!548794 (=> (not res!342170) (not e!317007))))

(assert (=> b!548794 (= res!342170 (validKeyInArray!0 (select (arr!16611 a!3118) j!142)))))

(declare-fun b!548795 () Bool)

(declare-fun res!342176 () Bool)

(assert (=> b!548795 (=> (not res!342176) (not e!317006))))

(declare-datatypes ((List!10744 0))(
  ( (Nil!10741) (Cons!10740 (h!11710 (_ BitVec 64)) (t!16980 List!10744)) )
))
(declare-fun arrayNoDuplicates!0 (array!34596 (_ BitVec 32) List!10744) Bool)

(assert (=> b!548795 (= res!342176 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10741))))

(assert (= (and start!50144 res!342175) b!548789))

(assert (= (and b!548789 res!342174) b!548794))

(assert (= (and b!548794 res!342170) b!548790))

(assert (= (and b!548790 res!342172) b!548793))

(assert (= (and b!548793 res!342171) b!548791))

(assert (= (and b!548791 res!342169) b!548788))

(assert (= (and b!548788 res!342173) b!548795))

(assert (= (and b!548795 res!342176) b!548792))

(declare-fun m!525733 () Bool)

(assert (=> b!548794 m!525733))

(assert (=> b!548794 m!525733))

(declare-fun m!525735 () Bool)

(assert (=> b!548794 m!525735))

(declare-fun m!525737 () Bool)

(assert (=> b!548793 m!525737))

(declare-fun m!525739 () Bool)

(assert (=> b!548791 m!525739))

(declare-fun m!525741 () Bool)

(assert (=> start!50144 m!525741))

(declare-fun m!525743 () Bool)

(assert (=> start!50144 m!525743))

(declare-fun m!525745 () Bool)

(assert (=> b!548790 m!525745))

(declare-fun m!525747 () Bool)

(assert (=> b!548788 m!525747))

(declare-fun m!525749 () Bool)

(assert (=> b!548792 m!525749))

(declare-fun m!525751 () Bool)

(assert (=> b!548792 m!525751))

(assert (=> b!548792 m!525751))

(declare-fun m!525753 () Bool)

(assert (=> b!548792 m!525753))

(declare-fun m!525755 () Bool)

(assert (=> b!548795 m!525755))

(push 1)

