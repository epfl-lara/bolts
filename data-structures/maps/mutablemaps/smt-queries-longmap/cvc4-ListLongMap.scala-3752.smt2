; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51528 () Bool)

(assert start!51528)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!563300 () Bool)

(declare-fun e!324607 () Bool)

(declare-datatypes ((array!35347 0))(
  ( (array!35348 (arr!16970 (Array (_ BitVec 32) (_ BitVec 64))) (size!17334 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35347)

(declare-datatypes ((SeekEntryResult!5426 0))(
  ( (MissingZero!5426 (index!23931 (_ BitVec 32))) (Found!5426 (index!23932 (_ BitVec 32))) (Intermediate!5426 (undefined!6238 Bool) (index!23933 (_ BitVec 32)) (x!52844 (_ BitVec 32))) (Undefined!5426) (MissingVacant!5426 (index!23934 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35347 (_ BitVec 32)) SeekEntryResult!5426)

(assert (=> b!563300 (= e!324607 (= (seekEntryOrOpen!0 (select (arr!16970 a!3118) j!142) a!3118 mask!3119) (Found!5426 j!142)))))

(declare-fun b!563301 () Bool)

(declare-fun e!324609 () Bool)

(declare-fun e!324610 () Bool)

(assert (=> b!563301 (= e!324609 e!324610)))

(declare-fun res!354602 () Bool)

(assert (=> b!563301 (=> (not res!354602) (not e!324610))))

(declare-fun lt!257206 () SeekEntryResult!5426)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563301 (= res!354602 (or (= lt!257206 (MissingZero!5426 i!1132)) (= lt!257206 (MissingVacant!5426 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!563301 (= lt!257206 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563302 () Bool)

(declare-fun res!354606 () Bool)

(assert (=> b!563302 (=> (not res!354606) (not e!324609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563302 (= res!354606 (validKeyInArray!0 k!1914))))

(declare-fun b!563303 () Bool)

(declare-fun res!354605 () Bool)

(assert (=> b!563303 (=> (not res!354605) (not e!324610))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35347 (_ BitVec 32)) SeekEntryResult!5426)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563303 (= res!354605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16970 a!3118) j!142) mask!3119) (select (arr!16970 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16970 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16970 a!3118) i!1132 k!1914) j!142) (array!35348 (store (arr!16970 a!3118) i!1132 k!1914) (size!17334 a!3118)) mask!3119)))))

(declare-fun b!563304 () Bool)

(assert (=> b!563304 (= e!324610 (not true))))

(assert (=> b!563304 e!324607))

(declare-fun res!354609 () Bool)

(assert (=> b!563304 (=> (not res!354609) (not e!324607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35347 (_ BitVec 32)) Bool)

(assert (=> b!563304 (= res!354609 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17626 0))(
  ( (Unit!17627) )
))
(declare-fun lt!257207 () Unit!17626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17626)

(assert (=> b!563304 (= lt!257207 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563305 () Bool)

(declare-fun res!354611 () Bool)

(assert (=> b!563305 (=> (not res!354611) (not e!324609))))

(assert (=> b!563305 (= res!354611 (validKeyInArray!0 (select (arr!16970 a!3118) j!142)))))

(declare-fun b!563306 () Bool)

(declare-fun res!354608 () Bool)

(assert (=> b!563306 (=> (not res!354608) (not e!324610))))

(assert (=> b!563306 (= res!354608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563307 () Bool)

(declare-fun res!354604 () Bool)

(assert (=> b!563307 (=> (not res!354604) (not e!324609))))

(declare-fun arrayContainsKey!0 (array!35347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563307 (= res!354604 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!354607 () Bool)

(assert (=> start!51528 (=> (not res!354607) (not e!324609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51528 (= res!354607 (validMask!0 mask!3119))))

(assert (=> start!51528 e!324609))

(assert (=> start!51528 true))

(declare-fun array_inv!12744 (array!35347) Bool)

(assert (=> start!51528 (array_inv!12744 a!3118)))

(declare-fun b!563308 () Bool)

(declare-fun res!354610 () Bool)

(assert (=> b!563308 (=> (not res!354610) (not e!324610))))

(declare-datatypes ((List!11103 0))(
  ( (Nil!11100) (Cons!11099 (h!12102 (_ BitVec 64)) (t!17339 List!11103)) )
))
(declare-fun arrayNoDuplicates!0 (array!35347 (_ BitVec 32) List!11103) Bool)

(assert (=> b!563308 (= res!354610 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11100))))

(declare-fun b!563309 () Bool)

(declare-fun res!354603 () Bool)

(assert (=> b!563309 (=> (not res!354603) (not e!324609))))

(assert (=> b!563309 (= res!354603 (and (= (size!17334 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17334 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17334 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51528 res!354607) b!563309))

(assert (= (and b!563309 res!354603) b!563305))

(assert (= (and b!563305 res!354611) b!563302))

(assert (= (and b!563302 res!354606) b!563307))

(assert (= (and b!563307 res!354604) b!563301))

(assert (= (and b!563301 res!354602) b!563306))

(assert (= (and b!563306 res!354608) b!563308))

(assert (= (and b!563308 res!354610) b!563303))

(assert (= (and b!563303 res!354605) b!563304))

(assert (= (and b!563304 res!354609) b!563300))

(declare-fun m!541693 () Bool)

(assert (=> b!563308 m!541693))

(declare-fun m!541695 () Bool)

(assert (=> b!563306 m!541695))

(declare-fun m!541697 () Bool)

(assert (=> b!563303 m!541697))

(declare-fun m!541699 () Bool)

(assert (=> b!563303 m!541699))

(assert (=> b!563303 m!541697))

(declare-fun m!541701 () Bool)

(assert (=> b!563303 m!541701))

(declare-fun m!541703 () Bool)

(assert (=> b!563303 m!541703))

(assert (=> b!563303 m!541701))

(declare-fun m!541705 () Bool)

(assert (=> b!563303 m!541705))

(assert (=> b!563303 m!541699))

(assert (=> b!563303 m!541697))

(declare-fun m!541707 () Bool)

(assert (=> b!563303 m!541707))

(declare-fun m!541709 () Bool)

(assert (=> b!563303 m!541709))

(assert (=> b!563303 m!541701))

(assert (=> b!563303 m!541703))

(assert (=> b!563305 m!541697))

(assert (=> b!563305 m!541697))

(declare-fun m!541711 () Bool)

(assert (=> b!563305 m!541711))

(declare-fun m!541713 () Bool)

(assert (=> b!563301 m!541713))

(declare-fun m!541715 () Bool)

(assert (=> b!563304 m!541715))

(declare-fun m!541717 () Bool)

(assert (=> b!563304 m!541717))

(declare-fun m!541719 () Bool)

(assert (=> start!51528 m!541719))

(declare-fun m!541721 () Bool)

(assert (=> start!51528 m!541721))

(declare-fun m!541723 () Bool)

(assert (=> b!563302 m!541723))

(declare-fun m!541725 () Bool)

(assert (=> b!563307 m!541725))

(assert (=> b!563300 m!541697))

(assert (=> b!563300 m!541697))

(declare-fun m!541727 () Bool)

(assert (=> b!563300 m!541727))

(push 1)

