; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50776 () Bool)

(assert start!50776)

(declare-fun b!555030 () Bool)

(declare-fun res!347595 () Bool)

(declare-fun e!319936 () Bool)

(assert (=> b!555030 (=> (not res!347595) (not e!319936))))

(declare-datatypes ((array!34955 0))(
  ( (array!34956 (arr!16783 (Array (_ BitVec 32) (_ BitVec 64))) (size!17147 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34955)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34955 (_ BitVec 32)) Bool)

(assert (=> b!555030 (= res!347595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555031 () Bool)

(declare-fun res!347592 () Bool)

(declare-fun e!319933 () Bool)

(assert (=> b!555031 (=> (not res!347592) (not e!319933))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555031 (= res!347592 (validKeyInArray!0 (select (arr!16783 a!3118) j!142)))))

(declare-fun b!555032 () Bool)

(declare-fun res!347593 () Bool)

(assert (=> b!555032 (=> (not res!347593) (not e!319936))))

(declare-datatypes ((List!10916 0))(
  ( (Nil!10913) (Cons!10912 (h!11897 (_ BitVec 64)) (t!17152 List!10916)) )
))
(declare-fun arrayNoDuplicates!0 (array!34955 (_ BitVec 32) List!10916) Bool)

(assert (=> b!555032 (= res!347593 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10913))))

(declare-fun b!555033 () Bool)

(declare-fun e!319934 () Bool)

(assert (=> b!555033 (= e!319934 (not true))))

(declare-datatypes ((SeekEntryResult!5239 0))(
  ( (MissingZero!5239 (index!23183 (_ BitVec 32))) (Found!5239 (index!23184 (_ BitVec 32))) (Intermediate!5239 (undefined!6051 Bool) (index!23185 (_ BitVec 32)) (x!52116 (_ BitVec 32))) (Undefined!5239) (MissingVacant!5239 (index!23186 (_ BitVec 32))) )
))
(declare-fun lt!252239 () SeekEntryResult!5239)

(declare-fun lt!252234 () SeekEntryResult!5239)

(get-info :version)

(assert (=> b!555033 (and (= lt!252239 (Found!5239 j!142)) (or (undefined!6051 lt!252234) (not ((_ is Intermediate!5239) lt!252234)) (= (select (arr!16783 a!3118) (index!23185 lt!252234)) (select (arr!16783 a!3118) j!142)) (not (= (select (arr!16783 a!3118) (index!23185 lt!252234)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252239 (MissingZero!5239 (index!23185 lt!252234)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34955 (_ BitVec 32)) SeekEntryResult!5239)

(assert (=> b!555033 (= lt!252239 (seekEntryOrOpen!0 (select (arr!16783 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555033 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17252 0))(
  ( (Unit!17253) )
))
(declare-fun lt!252237 () Unit!17252)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17252)

(assert (=> b!555033 (= lt!252237 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555034 () Bool)

(declare-fun res!347598 () Bool)

(assert (=> b!555034 (=> (not res!347598) (not e!319933))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555034 (= res!347598 (and (= (size!17147 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17147 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17147 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555035 () Bool)

(assert (=> b!555035 (= e!319933 e!319936)))

(declare-fun res!347594 () Bool)

(assert (=> b!555035 (=> (not res!347594) (not e!319936))))

(declare-fun lt!252235 () SeekEntryResult!5239)

(assert (=> b!555035 (= res!347594 (or (= lt!252235 (MissingZero!5239 i!1132)) (= lt!252235 (MissingVacant!5239 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!555035 (= lt!252235 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555036 () Bool)

(declare-fun res!347597 () Bool)

(assert (=> b!555036 (=> (not res!347597) (not e!319933))))

(declare-fun arrayContainsKey!0 (array!34955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555036 (= res!347597 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!347599 () Bool)

(assert (=> start!50776 (=> (not res!347599) (not e!319933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50776 (= res!347599 (validMask!0 mask!3119))))

(assert (=> start!50776 e!319933))

(assert (=> start!50776 true))

(declare-fun array_inv!12557 (array!34955) Bool)

(assert (=> start!50776 (array_inv!12557 a!3118)))

(declare-fun b!555037 () Bool)

(declare-fun res!347596 () Bool)

(assert (=> b!555037 (=> (not res!347596) (not e!319933))))

(assert (=> b!555037 (= res!347596 (validKeyInArray!0 k0!1914))))

(declare-fun b!555038 () Bool)

(assert (=> b!555038 (= e!319936 e!319934)))

(declare-fun res!347600 () Bool)

(assert (=> b!555038 (=> (not res!347600) (not e!319934))))

(declare-fun lt!252238 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34955 (_ BitVec 32)) SeekEntryResult!5239)

(assert (=> b!555038 (= res!347600 (= lt!252234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252238 (select (store (arr!16783 a!3118) i!1132 k0!1914) j!142) (array!34956 (store (arr!16783 a!3118) i!1132 k0!1914) (size!17147 a!3118)) mask!3119)))))

(declare-fun lt!252236 () (_ BitVec 32))

(assert (=> b!555038 (= lt!252234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252236 (select (arr!16783 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555038 (= lt!252238 (toIndex!0 (select (store (arr!16783 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555038 (= lt!252236 (toIndex!0 (select (arr!16783 a!3118) j!142) mask!3119))))

(assert (= (and start!50776 res!347599) b!555034))

(assert (= (and b!555034 res!347598) b!555031))

(assert (= (and b!555031 res!347592) b!555037))

(assert (= (and b!555037 res!347596) b!555036))

(assert (= (and b!555036 res!347597) b!555035))

(assert (= (and b!555035 res!347594) b!555030))

(assert (= (and b!555030 res!347595) b!555032))

(assert (= (and b!555032 res!347593) b!555038))

(assert (= (and b!555038 res!347600) b!555033))

(declare-fun m!532665 () Bool)

(assert (=> b!555038 m!532665))

(declare-fun m!532667 () Bool)

(assert (=> b!555038 m!532667))

(assert (=> b!555038 m!532665))

(declare-fun m!532669 () Bool)

(assert (=> b!555038 m!532669))

(declare-fun m!532671 () Bool)

(assert (=> b!555038 m!532671))

(assert (=> b!555038 m!532669))

(assert (=> b!555038 m!532665))

(declare-fun m!532673 () Bool)

(assert (=> b!555038 m!532673))

(declare-fun m!532675 () Bool)

(assert (=> b!555038 m!532675))

(assert (=> b!555038 m!532669))

(declare-fun m!532677 () Bool)

(assert (=> b!555038 m!532677))

(declare-fun m!532679 () Bool)

(assert (=> b!555037 m!532679))

(declare-fun m!532681 () Bool)

(assert (=> b!555032 m!532681))

(declare-fun m!532683 () Bool)

(assert (=> b!555036 m!532683))

(declare-fun m!532685 () Bool)

(assert (=> start!50776 m!532685))

(declare-fun m!532687 () Bool)

(assert (=> start!50776 m!532687))

(declare-fun m!532689 () Bool)

(assert (=> b!555035 m!532689))

(declare-fun m!532691 () Bool)

(assert (=> b!555030 m!532691))

(assert (=> b!555033 m!532665))

(declare-fun m!532693 () Bool)

(assert (=> b!555033 m!532693))

(declare-fun m!532695 () Bool)

(assert (=> b!555033 m!532695))

(declare-fun m!532697 () Bool)

(assert (=> b!555033 m!532697))

(assert (=> b!555033 m!532665))

(declare-fun m!532699 () Bool)

(assert (=> b!555033 m!532699))

(assert (=> b!555031 m!532665))

(assert (=> b!555031 m!532665))

(declare-fun m!532701 () Bool)

(assert (=> b!555031 m!532701))

(check-sat (not b!555033) (not b!555036) (not b!555035) (not b!555038) (not b!555037) (not b!555030) (not start!50776) (not b!555032) (not b!555031))
(check-sat)
