; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51764 () Bool)

(assert start!51764)

(declare-fun b!565988 () Bool)

(declare-fun e!325751 () Bool)

(assert (=> b!565988 (= e!325751 (not true))))

(declare-fun e!325752 () Bool)

(assert (=> b!565988 e!325752))

(declare-fun res!357109 () Bool)

(assert (=> b!565988 (=> (not res!357109) (not e!325752))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35526 0))(
  ( (array!35527 (arr!17058 (Array (_ BitVec 32) (_ BitVec 64))) (size!17422 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35526)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35526 (_ BitVec 32)) Bool)

(assert (=> b!565988 (= res!357109 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17730 0))(
  ( (Unit!17731) )
))
(declare-fun lt!257998 () Unit!17730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17730)

(assert (=> b!565988 (= lt!257998 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565989 () Bool)

(declare-datatypes ((SeekEntryResult!5514 0))(
  ( (MissingZero!5514 (index!24283 (_ BitVec 32))) (Found!5514 (index!24284 (_ BitVec 32))) (Intermediate!5514 (undefined!6326 Bool) (index!24285 (_ BitVec 32)) (x!53178 (_ BitVec 32))) (Undefined!5514) (MissingVacant!5514 (index!24286 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35526 (_ BitVec 32)) SeekEntryResult!5514)

(assert (=> b!565989 (= e!325752 (= (seekEntryOrOpen!0 (select (arr!17058 a!3118) j!142) a!3118 mask!3119) (Found!5514 j!142)))))

(declare-fun b!565990 () Bool)

(declare-fun res!357110 () Bool)

(declare-fun e!325750 () Bool)

(assert (=> b!565990 (=> (not res!357110) (not e!325750))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565990 (= res!357110 (validKeyInArray!0 k!1914))))

(declare-fun b!565991 () Bool)

(assert (=> b!565991 (= e!325750 e!325751)))

(declare-fun res!357108 () Bool)

(assert (=> b!565991 (=> (not res!357108) (not e!325751))))

(declare-fun lt!257999 () SeekEntryResult!5514)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565991 (= res!357108 (or (= lt!257999 (MissingZero!5514 i!1132)) (= lt!257999 (MissingVacant!5514 i!1132))))))

(assert (=> b!565991 (= lt!257999 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565992 () Bool)

(declare-fun res!357114 () Bool)

(assert (=> b!565992 (=> (not res!357114) (not e!325751))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35526 (_ BitVec 32)) SeekEntryResult!5514)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565992 (= res!357114 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17058 a!3118) j!142) mask!3119) (select (arr!17058 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17058 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17058 a!3118) i!1132 k!1914) j!142) (array!35527 (store (arr!17058 a!3118) i!1132 k!1914) (size!17422 a!3118)) mask!3119)))))

(declare-fun res!357115 () Bool)

(assert (=> start!51764 (=> (not res!357115) (not e!325750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51764 (= res!357115 (validMask!0 mask!3119))))

(assert (=> start!51764 e!325750))

(assert (=> start!51764 true))

(declare-fun array_inv!12832 (array!35526) Bool)

(assert (=> start!51764 (array_inv!12832 a!3118)))

(declare-fun b!565993 () Bool)

(declare-fun res!357107 () Bool)

(assert (=> b!565993 (=> (not res!357107) (not e!325750))))

(assert (=> b!565993 (= res!357107 (validKeyInArray!0 (select (arr!17058 a!3118) j!142)))))

(declare-fun b!565994 () Bool)

(declare-fun res!357113 () Bool)

(assert (=> b!565994 (=> (not res!357113) (not e!325751))))

(assert (=> b!565994 (= res!357113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565995 () Bool)

(declare-fun res!357116 () Bool)

(assert (=> b!565995 (=> (not res!357116) (not e!325750))))

(declare-fun arrayContainsKey!0 (array!35526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565995 (= res!357116 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565996 () Bool)

(declare-fun res!357111 () Bool)

(assert (=> b!565996 (=> (not res!357111) (not e!325751))))

(declare-datatypes ((List!11191 0))(
  ( (Nil!11188) (Cons!11187 (h!12193 (_ BitVec 64)) (t!17427 List!11191)) )
))
(declare-fun arrayNoDuplicates!0 (array!35526 (_ BitVec 32) List!11191) Bool)

(assert (=> b!565996 (= res!357111 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11188))))

(declare-fun b!565997 () Bool)

(declare-fun res!357112 () Bool)

(assert (=> b!565997 (=> (not res!357112) (not e!325750))))

(assert (=> b!565997 (= res!357112 (and (= (size!17422 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17422 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17422 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51764 res!357115) b!565997))

(assert (= (and b!565997 res!357112) b!565993))

(assert (= (and b!565993 res!357107) b!565990))

(assert (= (and b!565990 res!357110) b!565995))

(assert (= (and b!565995 res!357116) b!565991))

(assert (= (and b!565991 res!357108) b!565994))

(assert (= (and b!565994 res!357113) b!565996))

(assert (= (and b!565996 res!357111) b!565992))

(assert (= (and b!565992 res!357114) b!565988))

(assert (= (and b!565988 res!357109) b!565989))

(declare-fun m!544633 () Bool)

(assert (=> b!565988 m!544633))

(declare-fun m!544635 () Bool)

(assert (=> b!565988 m!544635))

(declare-fun m!544637 () Bool)

(assert (=> b!565996 m!544637))

(declare-fun m!544639 () Bool)

(assert (=> b!565993 m!544639))

(assert (=> b!565993 m!544639))

(declare-fun m!544641 () Bool)

(assert (=> b!565993 m!544641))

(declare-fun m!544643 () Bool)

(assert (=> b!565994 m!544643))

(assert (=> b!565992 m!544639))

(declare-fun m!544645 () Bool)

(assert (=> b!565992 m!544645))

(assert (=> b!565992 m!544639))

(declare-fun m!544647 () Bool)

(assert (=> b!565992 m!544647))

(declare-fun m!544649 () Bool)

(assert (=> b!565992 m!544649))

(assert (=> b!565992 m!544647))

(declare-fun m!544651 () Bool)

(assert (=> b!565992 m!544651))

(assert (=> b!565992 m!544645))

(assert (=> b!565992 m!544639))

(declare-fun m!544653 () Bool)

(assert (=> b!565992 m!544653))

(declare-fun m!544655 () Bool)

(assert (=> b!565992 m!544655))

(assert (=> b!565992 m!544647))

(assert (=> b!565992 m!544649))

(declare-fun m!544657 () Bool)

(assert (=> b!565991 m!544657))

(declare-fun m!544659 () Bool)

(assert (=> start!51764 m!544659))

(declare-fun m!544661 () Bool)

(assert (=> start!51764 m!544661))

(assert (=> b!565989 m!544639))

(assert (=> b!565989 m!544639))

(declare-fun m!544663 () Bool)

(assert (=> b!565989 m!544663))

(declare-fun m!544665 () Bool)

(assert (=> b!565995 m!544665))

(declare-fun m!544667 () Bool)

(assert (=> b!565990 m!544667))

(push 1)

