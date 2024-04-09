; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50004 () Bool)

(assert start!50004)

(declare-fun b!547882 () Bool)

(declare-fun res!341444 () Bool)

(declare-fun e!316565 () Bool)

(assert (=> b!547882 (=> (not res!341444) (not e!316565))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547882 (= res!341444 (validKeyInArray!0 k!1914))))

(declare-fun b!547883 () Bool)

(declare-fun res!341440 () Bool)

(declare-fun e!316567 () Bool)

(assert (=> b!547883 (=> (not res!341440) (not e!316567))))

(declare-datatypes ((array!34540 0))(
  ( (array!34541 (arr!16586 (Array (_ BitVec 32) (_ BitVec 64))) (size!16950 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34540)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34540 (_ BitVec 32)) Bool)

(assert (=> b!547883 (= res!341440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547885 () Bool)

(declare-fun res!341446 () Bool)

(assert (=> b!547885 (=> (not res!341446) (not e!316565))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547885 (= res!341446 (validKeyInArray!0 (select (arr!16586 a!3118) j!142)))))

(declare-fun b!547886 () Bool)

(assert (=> b!547886 (= e!316567 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun lt!249679 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547886 (= lt!249679 (toIndex!0 (select (arr!16586 a!3118) j!142) mask!3119))))

(declare-fun b!547887 () Bool)

(declare-fun res!341443 () Bool)

(assert (=> b!547887 (=> (not res!341443) (not e!316567))))

(declare-datatypes ((List!10719 0))(
  ( (Nil!10716) (Cons!10715 (h!11682 (_ BitVec 64)) (t!16955 List!10719)) )
))
(declare-fun arrayNoDuplicates!0 (array!34540 (_ BitVec 32) List!10719) Bool)

(assert (=> b!547887 (= res!341443 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10716))))

(declare-fun b!547888 () Bool)

(declare-fun res!341447 () Bool)

(assert (=> b!547888 (=> (not res!341447) (not e!316565))))

(declare-fun arrayContainsKey!0 (array!34540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547888 (= res!341447 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547889 () Bool)

(assert (=> b!547889 (= e!316565 e!316567)))

(declare-fun res!341442 () Bool)

(assert (=> b!547889 (=> (not res!341442) (not e!316567))))

(declare-datatypes ((SeekEntryResult!5042 0))(
  ( (MissingZero!5042 (index!22395 (_ BitVec 32))) (Found!5042 (index!22396 (_ BitVec 32))) (Intermediate!5042 (undefined!5854 Bool) (index!22397 (_ BitVec 32)) (x!51361 (_ BitVec 32))) (Undefined!5042) (MissingVacant!5042 (index!22398 (_ BitVec 32))) )
))
(declare-fun lt!249680 () SeekEntryResult!5042)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547889 (= res!341442 (or (= lt!249680 (MissingZero!5042 i!1132)) (= lt!249680 (MissingVacant!5042 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34540 (_ BitVec 32)) SeekEntryResult!5042)

(assert (=> b!547889 (= lt!249680 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!341441 () Bool)

(assert (=> start!50004 (=> (not res!341441) (not e!316565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50004 (= res!341441 (validMask!0 mask!3119))))

(assert (=> start!50004 e!316565))

(assert (=> start!50004 true))

(declare-fun array_inv!12360 (array!34540) Bool)

(assert (=> start!50004 (array_inv!12360 a!3118)))

(declare-fun b!547884 () Bool)

(declare-fun res!341445 () Bool)

(assert (=> b!547884 (=> (not res!341445) (not e!316565))))

(assert (=> b!547884 (= res!341445 (and (= (size!16950 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16950 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16950 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50004 res!341441) b!547884))

(assert (= (and b!547884 res!341445) b!547885))

(assert (= (and b!547885 res!341446) b!547882))

(assert (= (and b!547882 res!341444) b!547888))

(assert (= (and b!547888 res!341447) b!547889))

(assert (= (and b!547889 res!341442) b!547883))

(assert (= (and b!547883 res!341440) b!547887))

(assert (= (and b!547887 res!341443) b!547886))

(declare-fun m!525029 () Bool)

(assert (=> b!547883 m!525029))

(declare-fun m!525031 () Bool)

(assert (=> b!547886 m!525031))

(assert (=> b!547886 m!525031))

(declare-fun m!525033 () Bool)

(assert (=> b!547886 m!525033))

(declare-fun m!525035 () Bool)

(assert (=> b!547888 m!525035))

(assert (=> b!547885 m!525031))

(assert (=> b!547885 m!525031))

(declare-fun m!525037 () Bool)

(assert (=> b!547885 m!525037))

(declare-fun m!525039 () Bool)

(assert (=> start!50004 m!525039))

(declare-fun m!525041 () Bool)

(assert (=> start!50004 m!525041))

(declare-fun m!525043 () Bool)

(assert (=> b!547889 m!525043))

(declare-fun m!525045 () Bool)

(assert (=> b!547887 m!525045))

(declare-fun m!525047 () Bool)

(assert (=> b!547882 m!525047))

(push 1)

(assert (not b!547889))

(assert (not b!547887))

(assert (not b!547886))

(assert (not b!547888))

(assert (not start!50004))

(assert (not b!547882))

(assert (not b!547883))

