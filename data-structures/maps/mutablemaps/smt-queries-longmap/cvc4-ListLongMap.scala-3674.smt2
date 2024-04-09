; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50682 () Bool)

(assert start!50682)

(declare-fun b!553688 () Bool)

(declare-fun res!346255 () Bool)

(declare-fun e!319334 () Bool)

(assert (=> b!553688 (=> (not res!346255) (not e!319334))))

(declare-datatypes ((array!34861 0))(
  ( (array!34862 (arr!16736 (Array (_ BitVec 32) (_ BitVec 64))) (size!17100 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34861)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34861 (_ BitVec 32)) Bool)

(assert (=> b!553688 (= res!346255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553689 () Bool)

(declare-fun res!346257 () Bool)

(declare-fun e!319333 () Bool)

(assert (=> b!553689 (=> (not res!346257) (not e!319333))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553689 (= res!346257 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553690 () Bool)

(declare-fun res!346254 () Bool)

(assert (=> b!553690 (=> (not res!346254) (not e!319333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553690 (= res!346254 (validKeyInArray!0 k!1914))))

(declare-fun b!553691 () Bool)

(declare-fun res!346251 () Bool)

(assert (=> b!553691 (=> (not res!346251) (not e!319334))))

(declare-datatypes ((List!10869 0))(
  ( (Nil!10866) (Cons!10865 (h!11850 (_ BitVec 64)) (t!17105 List!10869)) )
))
(declare-fun arrayNoDuplicates!0 (array!34861 (_ BitVec 32) List!10869) Bool)

(assert (=> b!553691 (= res!346251 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10866))))

(declare-fun res!346256 () Bool)

(assert (=> start!50682 (=> (not res!346256) (not e!319333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50682 (= res!346256 (validMask!0 mask!3119))))

(assert (=> start!50682 e!319333))

(assert (=> start!50682 true))

(declare-fun array_inv!12510 (array!34861) Bool)

(assert (=> start!50682 (array_inv!12510 a!3118)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!553692 () Bool)

(declare-fun e!319335 () Bool)

(declare-datatypes ((SeekEntryResult!5192 0))(
  ( (MissingZero!5192 (index!22995 (_ BitVec 32))) (Found!5192 (index!22996 (_ BitVec 32))) (Intermediate!5192 (undefined!6004 Bool) (index!22997 (_ BitVec 32)) (x!51941 (_ BitVec 32))) (Undefined!5192) (MissingVacant!5192 (index!22998 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34861 (_ BitVec 32)) SeekEntryResult!5192)

(assert (=> b!553692 (= e!319335 (= (seekEntryOrOpen!0 (select (arr!16736 a!3118) j!142) a!3118 mask!3119) (Found!5192 j!142)))))

(declare-fun b!553693 () Bool)

(assert (=> b!553693 (= e!319334 (not true))))

(assert (=> b!553693 e!319335))

(declare-fun res!346259 () Bool)

(assert (=> b!553693 (=> (not res!346259) (not e!319335))))

(assert (=> b!553693 (= res!346259 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17158 0))(
  ( (Unit!17159) )
))
(declare-fun lt!251564 () Unit!17158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17158)

(assert (=> b!553693 (= lt!251564 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553694 () Bool)

(declare-fun res!346258 () Bool)

(assert (=> b!553694 (=> (not res!346258) (not e!319333))))

(assert (=> b!553694 (= res!346258 (validKeyInArray!0 (select (arr!16736 a!3118) j!142)))))

(declare-fun b!553695 () Bool)

(assert (=> b!553695 (= e!319333 e!319334)))

(declare-fun res!346250 () Bool)

(assert (=> b!553695 (=> (not res!346250) (not e!319334))))

(declare-fun lt!251563 () SeekEntryResult!5192)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553695 (= res!346250 (or (= lt!251563 (MissingZero!5192 i!1132)) (= lt!251563 (MissingVacant!5192 i!1132))))))

(assert (=> b!553695 (= lt!251563 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553696 () Bool)

(declare-fun res!346253 () Bool)

(assert (=> b!553696 (=> (not res!346253) (not e!319334))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34861 (_ BitVec 32)) SeekEntryResult!5192)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553696 (= res!346253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16736 a!3118) j!142) mask!3119) (select (arr!16736 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16736 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16736 a!3118) i!1132 k!1914) j!142) (array!34862 (store (arr!16736 a!3118) i!1132 k!1914) (size!17100 a!3118)) mask!3119)))))

(declare-fun b!553697 () Bool)

(declare-fun res!346252 () Bool)

(assert (=> b!553697 (=> (not res!346252) (not e!319333))))

(assert (=> b!553697 (= res!346252 (and (= (size!17100 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17100 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17100 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50682 res!346256) b!553697))

(assert (= (and b!553697 res!346252) b!553694))

(assert (= (and b!553694 res!346258) b!553690))

(assert (= (and b!553690 res!346254) b!553689))

(assert (= (and b!553689 res!346257) b!553695))

(assert (= (and b!553695 res!346250) b!553688))

(assert (= (and b!553688 res!346255) b!553691))

(assert (= (and b!553691 res!346251) b!553696))

(assert (= (and b!553696 res!346253) b!553693))

(assert (= (and b!553693 res!346259) b!553692))

(declare-fun m!530899 () Bool)

(assert (=> b!553695 m!530899))

(declare-fun m!530901 () Bool)

(assert (=> b!553690 m!530901))

(declare-fun m!530903 () Bool)

(assert (=> b!553692 m!530903))

(assert (=> b!553692 m!530903))

(declare-fun m!530905 () Bool)

(assert (=> b!553692 m!530905))

(declare-fun m!530907 () Bool)

(assert (=> b!553693 m!530907))

(declare-fun m!530909 () Bool)

(assert (=> b!553693 m!530909))

(declare-fun m!530911 () Bool)

(assert (=> b!553691 m!530911))

(declare-fun m!530913 () Bool)

(assert (=> b!553688 m!530913))

(declare-fun m!530915 () Bool)

(assert (=> start!50682 m!530915))

(declare-fun m!530917 () Bool)

(assert (=> start!50682 m!530917))

(assert (=> b!553696 m!530903))

(declare-fun m!530919 () Bool)

(assert (=> b!553696 m!530919))

(assert (=> b!553696 m!530903))

(declare-fun m!530921 () Bool)

(assert (=> b!553696 m!530921))

(declare-fun m!530923 () Bool)

(assert (=> b!553696 m!530923))

(assert (=> b!553696 m!530921))

(declare-fun m!530925 () Bool)

(assert (=> b!553696 m!530925))

(assert (=> b!553696 m!530919))

(assert (=> b!553696 m!530903))

(declare-fun m!530927 () Bool)

(assert (=> b!553696 m!530927))

(declare-fun m!530929 () Bool)

(assert (=> b!553696 m!530929))

(assert (=> b!553696 m!530921))

(assert (=> b!553696 m!530923))

(assert (=> b!553694 m!530903))

(assert (=> b!553694 m!530903))

(declare-fun m!530931 () Bool)

(assert (=> b!553694 m!530931))

(declare-fun m!530933 () Bool)

(assert (=> b!553689 m!530933))

(push 1)

