; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51744 () Bool)

(assert start!51744)

(declare-fun res!356812 () Bool)

(declare-fun e!325632 () Bool)

(assert (=> start!51744 (=> (not res!356812) (not e!325632))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51744 (= res!356812 (validMask!0 mask!3119))))

(assert (=> start!51744 e!325632))

(assert (=> start!51744 true))

(declare-datatypes ((array!35506 0))(
  ( (array!35507 (arr!17048 (Array (_ BitVec 32) (_ BitVec 64))) (size!17412 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35506)

(declare-fun array_inv!12822 (array!35506) Bool)

(assert (=> start!51744 (array_inv!12822 a!3118)))

(declare-fun b!565688 () Bool)

(declare-fun res!356811 () Bool)

(assert (=> b!565688 (=> (not res!356811) (not e!325632))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565688 (= res!356811 (validKeyInArray!0 k!1914))))

(declare-fun b!565689 () Bool)

(declare-fun res!356808 () Bool)

(declare-fun e!325633 () Bool)

(assert (=> b!565689 (=> (not res!356808) (not e!325633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35506 (_ BitVec 32)) Bool)

(assert (=> b!565689 (= res!356808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565690 () Bool)

(declare-fun res!356816 () Bool)

(assert (=> b!565690 (=> (not res!356816) (not e!325633))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5504 0))(
  ( (MissingZero!5504 (index!24243 (_ BitVec 32))) (Found!5504 (index!24244 (_ BitVec 32))) (Intermediate!5504 (undefined!6316 Bool) (index!24245 (_ BitVec 32)) (x!53136 (_ BitVec 32))) (Undefined!5504) (MissingVacant!5504 (index!24246 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35506 (_ BitVec 32)) SeekEntryResult!5504)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565690 (= res!356816 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17048 a!3118) j!142) mask!3119) (select (arr!17048 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17048 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17048 a!3118) i!1132 k!1914) j!142) (array!35507 (store (arr!17048 a!3118) i!1132 k!1914) (size!17412 a!3118)) mask!3119)))))

(declare-fun b!565691 () Bool)

(declare-fun res!356809 () Bool)

(assert (=> b!565691 (=> (not res!356809) (not e!325633))))

(declare-datatypes ((List!11181 0))(
  ( (Nil!11178) (Cons!11177 (h!12183 (_ BitVec 64)) (t!17417 List!11181)) )
))
(declare-fun arrayNoDuplicates!0 (array!35506 (_ BitVec 32) List!11181) Bool)

(assert (=> b!565691 (= res!356809 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11178))))

(declare-fun b!565692 () Bool)

(declare-fun res!356815 () Bool)

(assert (=> b!565692 (=> (not res!356815) (not e!325632))))

(assert (=> b!565692 (= res!356815 (and (= (size!17412 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17412 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17412 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565693 () Bool)

(declare-fun res!356807 () Bool)

(assert (=> b!565693 (=> (not res!356807) (not e!325632))))

(declare-fun arrayContainsKey!0 (array!35506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565693 (= res!356807 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565694 () Bool)

(assert (=> b!565694 (= e!325633 (not true))))

(declare-fun e!325630 () Bool)

(assert (=> b!565694 e!325630))

(declare-fun res!356814 () Bool)

(assert (=> b!565694 (=> (not res!356814) (not e!325630))))

(assert (=> b!565694 (= res!356814 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17710 0))(
  ( (Unit!17711) )
))
(declare-fun lt!257939 () Unit!17710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17710)

(assert (=> b!565694 (= lt!257939 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565695 () Bool)

(declare-fun res!356813 () Bool)

(assert (=> b!565695 (=> (not res!356813) (not e!325632))))

(assert (=> b!565695 (= res!356813 (validKeyInArray!0 (select (arr!17048 a!3118) j!142)))))

(declare-fun b!565696 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35506 (_ BitVec 32)) SeekEntryResult!5504)

(assert (=> b!565696 (= e!325630 (= (seekEntryOrOpen!0 (select (arr!17048 a!3118) j!142) a!3118 mask!3119) (Found!5504 j!142)))))

(declare-fun b!565697 () Bool)

(assert (=> b!565697 (= e!325632 e!325633)))

(declare-fun res!356810 () Bool)

(assert (=> b!565697 (=> (not res!356810) (not e!325633))))

(declare-fun lt!257938 () SeekEntryResult!5504)

(assert (=> b!565697 (= res!356810 (or (= lt!257938 (MissingZero!5504 i!1132)) (= lt!257938 (MissingVacant!5504 i!1132))))))

(assert (=> b!565697 (= lt!257938 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51744 res!356812) b!565692))

(assert (= (and b!565692 res!356815) b!565695))

(assert (= (and b!565695 res!356813) b!565688))

(assert (= (and b!565688 res!356811) b!565693))

(assert (= (and b!565693 res!356807) b!565697))

(assert (= (and b!565697 res!356810) b!565689))

(assert (= (and b!565689 res!356808) b!565691))

(assert (= (and b!565691 res!356809) b!565690))

(assert (= (and b!565690 res!356816) b!565694))

(assert (= (and b!565694 res!356814) b!565696))

(declare-fun m!544273 () Bool)

(assert (=> b!565697 m!544273))

(declare-fun m!544275 () Bool)

(assert (=> b!565695 m!544275))

(assert (=> b!565695 m!544275))

(declare-fun m!544277 () Bool)

(assert (=> b!565695 m!544277))

(declare-fun m!544279 () Bool)

(assert (=> b!565693 m!544279))

(declare-fun m!544281 () Bool)

(assert (=> b!565694 m!544281))

(declare-fun m!544283 () Bool)

(assert (=> b!565694 m!544283))

(declare-fun m!544285 () Bool)

(assert (=> b!565689 m!544285))

(assert (=> b!565690 m!544275))

(declare-fun m!544287 () Bool)

(assert (=> b!565690 m!544287))

(assert (=> b!565690 m!544275))

(declare-fun m!544289 () Bool)

(assert (=> b!565690 m!544289))

(declare-fun m!544291 () Bool)

(assert (=> b!565690 m!544291))

(assert (=> b!565690 m!544289))

(declare-fun m!544293 () Bool)

(assert (=> b!565690 m!544293))

(assert (=> b!565690 m!544287))

(assert (=> b!565690 m!544275))

(declare-fun m!544295 () Bool)

(assert (=> b!565690 m!544295))

(declare-fun m!544297 () Bool)

(assert (=> b!565690 m!544297))

(assert (=> b!565690 m!544289))

(assert (=> b!565690 m!544291))

(declare-fun m!544299 () Bool)

(assert (=> b!565688 m!544299))

(assert (=> b!565696 m!544275))

(assert (=> b!565696 m!544275))

(declare-fun m!544301 () Bool)

(assert (=> b!565696 m!544301))

(declare-fun m!544303 () Bool)

(assert (=> start!51744 m!544303))

(declare-fun m!544305 () Bool)

(assert (=> start!51744 m!544305))

(declare-fun m!544307 () Bool)

(assert (=> b!565691 m!544307))

(push 1)

