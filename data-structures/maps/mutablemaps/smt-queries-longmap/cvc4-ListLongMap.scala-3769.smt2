; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51630 () Bool)

(assert start!51630)

(declare-fun b!564624 () Bool)

(declare-fun res!355931 () Bool)

(declare-fun e!325148 () Bool)

(assert (=> b!564624 (=> (not res!355931) (not e!325148))))

(declare-datatypes ((array!35449 0))(
  ( (array!35450 (arr!17021 (Array (_ BitVec 32) (_ BitVec 64))) (size!17385 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35449)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35449 (_ BitVec 32)) Bool)

(assert (=> b!564624 (= res!355931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564625 () Bool)

(declare-fun res!355934 () Bool)

(declare-fun e!325150 () Bool)

(assert (=> b!564625 (=> (not res!355934) (not e!325150))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564625 (= res!355934 (validKeyInArray!0 (select (arr!17021 a!3118) j!142)))))

(declare-fun b!564626 () Bool)

(declare-fun res!355930 () Bool)

(assert (=> b!564626 (=> (not res!355930) (not e!325150))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564626 (= res!355930 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564627 () Bool)

(declare-fun res!355927 () Bool)

(assert (=> b!564627 (=> (not res!355927) (not e!325150))))

(assert (=> b!564627 (= res!355927 (validKeyInArray!0 k!1914))))

(declare-fun b!564628 () Bool)

(declare-fun res!355929 () Bool)

(assert (=> b!564628 (=> (not res!355929) (not e!325148))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5477 0))(
  ( (MissingZero!5477 (index!24135 (_ BitVec 32))) (Found!5477 (index!24136 (_ BitVec 32))) (Intermediate!5477 (undefined!6289 Bool) (index!24137 (_ BitVec 32)) (x!53031 (_ BitVec 32))) (Undefined!5477) (MissingVacant!5477 (index!24138 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35449 (_ BitVec 32)) SeekEntryResult!5477)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564628 (= res!355929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17021 a!3118) j!142) mask!3119) (select (arr!17021 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17021 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17021 a!3118) i!1132 k!1914) j!142) (array!35450 (store (arr!17021 a!3118) i!1132 k!1914) (size!17385 a!3118)) mask!3119)))))

(declare-fun b!564629 () Bool)

(declare-fun res!355928 () Bool)

(assert (=> b!564629 (=> (not res!355928) (not e!325150))))

(assert (=> b!564629 (= res!355928 (and (= (size!17385 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17385 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17385 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564631 () Bool)

(assert (=> b!564631 (= e!325150 e!325148)))

(declare-fun res!355932 () Bool)

(assert (=> b!564631 (=> (not res!355932) (not e!325148))))

(declare-fun lt!257621 () SeekEntryResult!5477)

(assert (=> b!564631 (= res!355932 (or (= lt!257621 (MissingZero!5477 i!1132)) (= lt!257621 (MissingVacant!5477 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35449 (_ BitVec 32)) SeekEntryResult!5477)

(assert (=> b!564631 (= lt!257621 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564632 () Bool)

(assert (=> b!564632 (= e!325148 (and (bvsle #b00000000000000000000000000000000 (size!17385 a!3118)) (bvsgt j!142 (size!17385 a!3118))))))

(declare-fun b!564630 () Bool)

(declare-fun res!355933 () Bool)

(assert (=> b!564630 (=> (not res!355933) (not e!325148))))

(declare-datatypes ((List!11154 0))(
  ( (Nil!11151) (Cons!11150 (h!12153 (_ BitVec 64)) (t!17390 List!11154)) )
))
(declare-fun arrayNoDuplicates!0 (array!35449 (_ BitVec 32) List!11154) Bool)

(assert (=> b!564630 (= res!355933 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11151))))

(declare-fun res!355926 () Bool)

(assert (=> start!51630 (=> (not res!355926) (not e!325150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51630 (= res!355926 (validMask!0 mask!3119))))

(assert (=> start!51630 e!325150))

(assert (=> start!51630 true))

(declare-fun array_inv!12795 (array!35449) Bool)

(assert (=> start!51630 (array_inv!12795 a!3118)))

(assert (= (and start!51630 res!355926) b!564629))

(assert (= (and b!564629 res!355928) b!564625))

(assert (= (and b!564625 res!355934) b!564627))

(assert (= (and b!564627 res!355927) b!564626))

(assert (= (and b!564626 res!355930) b!564631))

(assert (= (and b!564631 res!355932) b!564624))

(assert (= (and b!564624 res!355931) b!564630))

(assert (= (and b!564630 res!355933) b!564628))

(assert (= (and b!564628 res!355929) b!564632))

(declare-fun m!543133 () Bool)

(assert (=> b!564624 m!543133))

(declare-fun m!543135 () Bool)

(assert (=> b!564625 m!543135))

(assert (=> b!564625 m!543135))

(declare-fun m!543137 () Bool)

(assert (=> b!564625 m!543137))

(declare-fun m!543139 () Bool)

(assert (=> b!564631 m!543139))

(declare-fun m!543141 () Bool)

(assert (=> b!564627 m!543141))

(declare-fun m!543143 () Bool)

(assert (=> b!564630 m!543143))

(assert (=> b!564628 m!543135))

(declare-fun m!543145 () Bool)

(assert (=> b!564628 m!543145))

(assert (=> b!564628 m!543135))

(declare-fun m!543147 () Bool)

(assert (=> b!564628 m!543147))

(declare-fun m!543149 () Bool)

(assert (=> b!564628 m!543149))

(assert (=> b!564628 m!543147))

(declare-fun m!543151 () Bool)

(assert (=> b!564628 m!543151))

(assert (=> b!564628 m!543145))

(assert (=> b!564628 m!543135))

(declare-fun m!543153 () Bool)

(assert (=> b!564628 m!543153))

(declare-fun m!543155 () Bool)

(assert (=> b!564628 m!543155))

(assert (=> b!564628 m!543147))

(assert (=> b!564628 m!543149))

(declare-fun m!543157 () Bool)

(assert (=> start!51630 m!543157))

(declare-fun m!543159 () Bool)

(assert (=> start!51630 m!543159))

(declare-fun m!543161 () Bool)

(assert (=> b!564626 m!543161))

(push 1)

(assert (not b!564624))

(assert (not b!564626))

(assert (not b!564627))

(assert (not b!564628))

(assert (not b!564630))

(assert (not start!51630))

(assert (not b!564625))

(assert (not b!564631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

