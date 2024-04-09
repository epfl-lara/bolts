; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49998 () Bool)

(assert start!49998)

(declare-fun b!547810 () Bool)

(declare-fun res!341375 () Bool)

(declare-fun e!316539 () Bool)

(assert (=> b!547810 (=> (not res!341375) (not e!316539))))

(declare-datatypes ((array!34534 0))(
  ( (array!34535 (arr!16583 (Array (_ BitVec 32) (_ BitVec 64))) (size!16947 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34534)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547810 (= res!341375 (validKeyInArray!0 (select (arr!16583 a!3118) j!142)))))

(declare-fun b!547811 () Bool)

(declare-fun res!341368 () Bool)

(declare-fun e!316540 () Bool)

(assert (=> b!547811 (=> (not res!341368) (not e!316540))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34534 (_ BitVec 32)) Bool)

(assert (=> b!547811 (= res!341368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547812 () Bool)

(declare-fun res!341371 () Bool)

(assert (=> b!547812 (=> (not res!341371) (not e!316539))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!547812 (= res!341371 (validKeyInArray!0 k!1914))))

(declare-fun b!547813 () Bool)

(assert (=> b!547813 (= e!316540 false)))

(declare-fun lt!249662 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547813 (= lt!249662 (toIndex!0 (select (arr!16583 a!3118) j!142) mask!3119))))

(declare-fun b!547814 () Bool)

(declare-fun res!341369 () Bool)

(assert (=> b!547814 (=> (not res!341369) (not e!316540))))

(declare-datatypes ((List!10716 0))(
  ( (Nil!10713) (Cons!10712 (h!11679 (_ BitVec 64)) (t!16952 List!10716)) )
))
(declare-fun arrayNoDuplicates!0 (array!34534 (_ BitVec 32) List!10716) Bool)

(assert (=> b!547814 (= res!341369 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10713))))

(declare-fun res!341372 () Bool)

(assert (=> start!49998 (=> (not res!341372) (not e!316539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49998 (= res!341372 (validMask!0 mask!3119))))

(assert (=> start!49998 e!316539))

(assert (=> start!49998 true))

(declare-fun array_inv!12357 (array!34534) Bool)

(assert (=> start!49998 (array_inv!12357 a!3118)))

(declare-fun b!547815 () Bool)

(declare-fun res!341370 () Bool)

(assert (=> b!547815 (=> (not res!341370) (not e!316539))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547815 (= res!341370 (and (= (size!16947 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16947 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16947 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547816 () Bool)

(declare-fun res!341373 () Bool)

(assert (=> b!547816 (=> (not res!341373) (not e!316539))))

(declare-fun arrayContainsKey!0 (array!34534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547816 (= res!341373 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547817 () Bool)

(assert (=> b!547817 (= e!316539 e!316540)))

(declare-fun res!341374 () Bool)

(assert (=> b!547817 (=> (not res!341374) (not e!316540))))

(declare-datatypes ((SeekEntryResult!5039 0))(
  ( (MissingZero!5039 (index!22383 (_ BitVec 32))) (Found!5039 (index!22384 (_ BitVec 32))) (Intermediate!5039 (undefined!5851 Bool) (index!22385 (_ BitVec 32)) (x!51350 (_ BitVec 32))) (Undefined!5039) (MissingVacant!5039 (index!22386 (_ BitVec 32))) )
))
(declare-fun lt!249661 () SeekEntryResult!5039)

(assert (=> b!547817 (= res!341374 (or (= lt!249661 (MissingZero!5039 i!1132)) (= lt!249661 (MissingVacant!5039 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34534 (_ BitVec 32)) SeekEntryResult!5039)

(assert (=> b!547817 (= lt!249661 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!49998 res!341372) b!547815))

(assert (= (and b!547815 res!341370) b!547810))

(assert (= (and b!547810 res!341375) b!547812))

(assert (= (and b!547812 res!341371) b!547816))

(assert (= (and b!547816 res!341373) b!547817))

(assert (= (and b!547817 res!341374) b!547811))

(assert (= (and b!547811 res!341368) b!547814))

(assert (= (and b!547814 res!341369) b!547813))

(declare-fun m!524969 () Bool)

(assert (=> b!547812 m!524969))

(declare-fun m!524971 () Bool)

(assert (=> b!547817 m!524971))

(declare-fun m!524973 () Bool)

(assert (=> b!547814 m!524973))

(declare-fun m!524975 () Bool)

(assert (=> start!49998 m!524975))

(declare-fun m!524977 () Bool)

(assert (=> start!49998 m!524977))

(declare-fun m!524979 () Bool)

(assert (=> b!547813 m!524979))

(assert (=> b!547813 m!524979))

(declare-fun m!524981 () Bool)

(assert (=> b!547813 m!524981))

(assert (=> b!547810 m!524979))

(assert (=> b!547810 m!524979))

(declare-fun m!524983 () Bool)

(assert (=> b!547810 m!524983))

(declare-fun m!524985 () Bool)

(assert (=> b!547811 m!524985))

(declare-fun m!524987 () Bool)

(assert (=> b!547816 m!524987))

(push 1)

(assert (not start!49998))

(assert (not b!547810))

(assert (not b!547811))

