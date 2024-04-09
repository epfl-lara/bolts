; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51348 () Bool)

(assert start!51348)

(declare-fun b!559930 () Bool)

(declare-fun res!351236 () Bool)

(declare-fun e!322606 () Bool)

(assert (=> b!559930 (=> (not res!351236) (not e!322606))))

(declare-datatypes ((array!35167 0))(
  ( (array!35168 (arr!16880 (Array (_ BitVec 32) (_ BitVec 64))) (size!17244 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35167)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559930 (= res!351236 (validKeyInArray!0 (select (arr!16880 a!3118) j!142)))))

(declare-fun b!559931 () Bool)

(declare-fun e!322604 () Bool)

(declare-fun e!322612 () Bool)

(assert (=> b!559931 (= e!322604 e!322612)))

(declare-fun res!351245 () Bool)

(assert (=> b!559931 (=> res!351245 e!322612)))

(declare-fun lt!254567 () (_ BitVec 64))

(assert (=> b!559931 (= res!351245 (or (= lt!254567 (select (arr!16880 a!3118) j!142)) (= lt!254567 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5336 0))(
  ( (MissingZero!5336 (index!23571 (_ BitVec 32))) (Found!5336 (index!23572 (_ BitVec 32))) (Intermediate!5336 (undefined!6148 Bool) (index!23573 (_ BitVec 32)) (x!52514 (_ BitVec 32))) (Undefined!5336) (MissingVacant!5336 (index!23574 (_ BitVec 32))) )
))
(declare-fun lt!254570 () SeekEntryResult!5336)

(assert (=> b!559931 (= lt!254567 (select (arr!16880 a!3118) (index!23573 lt!254570)))))

(declare-fun b!559932 () Bool)

(declare-fun e!322607 () Bool)

(declare-fun e!322611 () Bool)

(assert (=> b!559932 (= e!322607 e!322611)))

(declare-fun res!351238 () Bool)

(assert (=> b!559932 (=> res!351238 e!322611)))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!254566 () (_ BitVec 64))

(assert (=> b!559932 (= res!351238 (or (= lt!254566 (select (arr!16880 a!3118) j!142)) (= lt!254566 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23573 lt!254570) #b00000000000000000000000000000000) (bvsge (index!23573 lt!254570) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52514 lt!254570) #b01111111111111111111111111111110) (bvslt (x!52514 lt!254570) #b00000000000000000000000000000000) (not (= (select (store (arr!16880 a!3118) i!1132 k!1914) (index!23573 lt!254570)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559932 (= lt!254566 (select (arr!16880 a!3118) (index!23573 lt!254570)))))

(declare-fun b!559933 () Bool)

(declare-fun res!351234 () Bool)

(assert (=> b!559933 (=> (not res!351234) (not e!322606))))

(assert (=> b!559933 (= res!351234 (validKeyInArray!0 k!1914))))

(declare-fun b!559934 () Bool)

(declare-fun e!322610 () Bool)

(declare-fun e!322608 () Bool)

(assert (=> b!559934 (= e!322610 e!322608)))

(declare-fun res!351232 () Bool)

(assert (=> b!559934 (=> (not res!351232) (not e!322608))))

(declare-fun lt!254568 () (_ BitVec 64))

(declare-fun lt!254565 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35167 (_ BitVec 32)) SeekEntryResult!5336)

(assert (=> b!559934 (= res!351232 (= lt!254570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254565 lt!254568 (array!35168 (store (arr!16880 a!3118) i!1132 k!1914) (size!17244 a!3118)) mask!3119)))))

(declare-fun lt!254569 () (_ BitVec 32))

(assert (=> b!559934 (= lt!254570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254569 (select (arr!16880 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559934 (= lt!254565 (toIndex!0 lt!254568 mask!3119))))

(assert (=> b!559934 (= lt!254568 (select (store (arr!16880 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!559934 (= lt!254569 (toIndex!0 (select (arr!16880 a!3118) j!142) mask!3119))))

(declare-fun b!559935 () Bool)

(declare-fun lt!254564 () SeekEntryResult!5336)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35167 (_ BitVec 32)) SeekEntryResult!5336)

(assert (=> b!559935 (= e!322612 (= lt!254564 (seekKeyOrZeroReturnVacant!0 (x!52514 lt!254570) (index!23573 lt!254570) (index!23573 lt!254570) (select (arr!16880 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559936 () Bool)

(assert (=> b!559936 (= e!322611 (validKeyInArray!0 lt!254568))))

(declare-fun b!559938 () Bool)

(declare-fun e!322609 () Bool)

(assert (=> b!559938 (= e!322609 e!322604)))

(declare-fun res!351240 () Bool)

(assert (=> b!559938 (=> res!351240 e!322604)))

(assert (=> b!559938 (= res!351240 (or (undefined!6148 lt!254570) (not (is-Intermediate!5336 lt!254570))))))

(declare-fun b!559939 () Bool)

(assert (=> b!559939 (= e!322608 (not e!322607))))

(declare-fun res!351244 () Bool)

(assert (=> b!559939 (=> res!351244 e!322607)))

(assert (=> b!559939 (= res!351244 (or (undefined!6148 lt!254570) (not (is-Intermediate!5336 lt!254570))))))

(assert (=> b!559939 e!322609))

(declare-fun res!351237 () Bool)

(assert (=> b!559939 (=> (not res!351237) (not e!322609))))

(assert (=> b!559939 (= res!351237 (= lt!254564 (Found!5336 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35167 (_ BitVec 32)) SeekEntryResult!5336)

(assert (=> b!559939 (= lt!254564 (seekEntryOrOpen!0 (select (arr!16880 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35167 (_ BitVec 32)) Bool)

(assert (=> b!559939 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17446 0))(
  ( (Unit!17447) )
))
(declare-fun lt!254562 () Unit!17446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17446)

(assert (=> b!559939 (= lt!254562 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559940 () Bool)

(declare-fun res!351242 () Bool)

(assert (=> b!559940 (=> (not res!351242) (not e!322606))))

(assert (=> b!559940 (= res!351242 (and (= (size!17244 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17244 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17244 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559941 () Bool)

(declare-fun res!351239 () Bool)

(assert (=> b!559941 (=> (not res!351239) (not e!322610))))

(assert (=> b!559941 (= res!351239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559942 () Bool)

(assert (=> b!559942 (= e!322606 e!322610)))

(declare-fun res!351233 () Bool)

(assert (=> b!559942 (=> (not res!351233) (not e!322610))))

(declare-fun lt!254563 () SeekEntryResult!5336)

(assert (=> b!559942 (= res!351233 (or (= lt!254563 (MissingZero!5336 i!1132)) (= lt!254563 (MissingVacant!5336 i!1132))))))

(assert (=> b!559942 (= lt!254563 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!559943 () Bool)

(declare-fun res!351243 () Bool)

(assert (=> b!559943 (=> (not res!351243) (not e!322606))))

(declare-fun arrayContainsKey!0 (array!35167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559943 (= res!351243 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!351241 () Bool)

(assert (=> start!51348 (=> (not res!351241) (not e!322606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51348 (= res!351241 (validMask!0 mask!3119))))

(assert (=> start!51348 e!322606))

(assert (=> start!51348 true))

(declare-fun array_inv!12654 (array!35167) Bool)

(assert (=> start!51348 (array_inv!12654 a!3118)))

(declare-fun b!559937 () Bool)

(declare-fun res!351235 () Bool)

(assert (=> b!559937 (=> (not res!351235) (not e!322610))))

(declare-datatypes ((List!11013 0))(
  ( (Nil!11010) (Cons!11009 (h!12012 (_ BitVec 64)) (t!17249 List!11013)) )
))
(declare-fun arrayNoDuplicates!0 (array!35167 (_ BitVec 32) List!11013) Bool)

(assert (=> b!559937 (= res!351235 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11010))))

(assert (= (and start!51348 res!351241) b!559940))

(assert (= (and b!559940 res!351242) b!559930))

(assert (= (and b!559930 res!351236) b!559933))

(assert (= (and b!559933 res!351234) b!559943))

(assert (= (and b!559943 res!351243) b!559942))

(assert (= (and b!559942 res!351233) b!559941))

(assert (= (and b!559941 res!351239) b!559937))

(assert (= (and b!559937 res!351235) b!559934))

(assert (= (and b!559934 res!351232) b!559939))

(assert (= (and b!559939 res!351237) b!559938))

(assert (= (and b!559938 (not res!351240)) b!559931))

(assert (= (and b!559931 (not res!351245)) b!559935))

(assert (= (and b!559939 (not res!351244)) b!559932))

(assert (= (and b!559932 (not res!351238)) b!559936))

(declare-fun m!537695 () Bool)

(assert (=> b!559937 m!537695))

(declare-fun m!537697 () Bool)

(assert (=> b!559943 m!537697))

(declare-fun m!537699 () Bool)

(assert (=> b!559935 m!537699))

(assert (=> b!559935 m!537699))

(declare-fun m!537701 () Bool)

(assert (=> b!559935 m!537701))

(declare-fun m!537703 () Bool)

(assert (=> b!559933 m!537703))

(declare-fun m!537705 () Bool)

(assert (=> b!559942 m!537705))

(declare-fun m!537707 () Bool)

(assert (=> b!559936 m!537707))

(declare-fun m!537709 () Bool)

(assert (=> start!51348 m!537709))

(declare-fun m!537711 () Bool)

(assert (=> start!51348 m!537711))

(assert (=> b!559939 m!537699))

(assert (=> b!559939 m!537699))

(declare-fun m!537713 () Bool)

(assert (=> b!559939 m!537713))

(declare-fun m!537715 () Bool)

(assert (=> b!559939 m!537715))

(declare-fun m!537717 () Bool)

(assert (=> b!559939 m!537717))

(assert (=> b!559932 m!537699))

(declare-fun m!537719 () Bool)

(assert (=> b!559932 m!537719))

(declare-fun m!537721 () Bool)

(assert (=> b!559932 m!537721))

(declare-fun m!537723 () Bool)

(assert (=> b!559932 m!537723))

(assert (=> b!559934 m!537699))

(declare-fun m!537725 () Bool)

(assert (=> b!559934 m!537725))

(declare-fun m!537727 () Bool)

(assert (=> b!559934 m!537727))

(assert (=> b!559934 m!537699))

(declare-fun m!537729 () Bool)

(assert (=> b!559934 m!537729))

(assert (=> b!559934 m!537719))

(declare-fun m!537731 () Bool)

(assert (=> b!559934 m!537731))

(assert (=> b!559934 m!537699))

(declare-fun m!537733 () Bool)

(assert (=> b!559934 m!537733))

(assert (=> b!559931 m!537699))

(assert (=> b!559931 m!537723))

(declare-fun m!537735 () Bool)

(assert (=> b!559941 m!537735))

(assert (=> b!559930 m!537699))

(assert (=> b!559930 m!537699))

(declare-fun m!537737 () Bool)

(assert (=> b!559930 m!537737))

(push 1)

