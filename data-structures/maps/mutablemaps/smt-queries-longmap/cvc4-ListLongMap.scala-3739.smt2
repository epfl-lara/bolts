; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51450 () Bool)

(assert start!51450)

(declare-datatypes ((array!35269 0))(
  ( (array!35270 (arr!16931 (Array (_ BitVec 32) (_ BitVec 64))) (size!17295 (_ BitVec 32))) )
))
(declare-fun lt!255943 () array!35269)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5387 0))(
  ( (MissingZero!5387 (index!23775 (_ BitVec 32))) (Found!5387 (index!23776 (_ BitVec 32))) (Intermediate!5387 (undefined!6199 Bool) (index!23777 (_ BitVec 32)) (x!52701 (_ BitVec 32))) (Undefined!5387) (MissingVacant!5387 (index!23778 (_ BitVec 32))) )
))
(declare-fun lt!255944 () SeekEntryResult!5387)

(declare-fun b!561920 () Bool)

(declare-fun e!323833 () Bool)

(declare-fun lt!255947 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35269 (_ BitVec 32)) SeekEntryResult!5387)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35269 (_ BitVec 32)) SeekEntryResult!5387)

(assert (=> b!561920 (= e!323833 (= (seekEntryOrOpen!0 lt!255947 lt!255943 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52701 lt!255944) (index!23777 lt!255944) (index!23777 lt!255944) lt!255947 lt!255943 mask!3119)))))

(declare-fun b!561921 () Bool)

(declare-fun res!353225 () Bool)

(declare-fun e!323829 () Bool)

(assert (=> b!561921 (=> (not res!353225) (not e!323829))))

(declare-fun a!3118 () array!35269)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35269 (_ BitVec 32)) Bool)

(assert (=> b!561921 (= res!353225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!353228 () Bool)

(declare-fun e!323830 () Bool)

(assert (=> start!51450 (=> (not res!353228) (not e!323830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51450 (= res!353228 (validMask!0 mask!3119))))

(assert (=> start!51450 e!323830))

(assert (=> start!51450 true))

(declare-fun array_inv!12705 (array!35269) Bool)

(assert (=> start!51450 (array_inv!12705 a!3118)))

(declare-fun b!561922 () Bool)

(declare-fun res!353224 () Bool)

(assert (=> b!561922 (=> (not res!353224) (not e!323830))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561922 (= res!353224 (and (= (size!17295 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17295 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17295 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561923 () Bool)

(declare-fun res!353233 () Bool)

(assert (=> b!561923 (=> (not res!353233) (not e!323830))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561923 (= res!353233 (validKeyInArray!0 k!1914))))

(declare-fun b!561924 () Bool)

(declare-fun e!323835 () Bool)

(assert (=> b!561924 (= e!323835 e!323833)))

(declare-fun res!353226 () Bool)

(assert (=> b!561924 (=> (not res!353226) (not e!323833))))

(declare-fun lt!255942 () SeekEntryResult!5387)

(assert (=> b!561924 (= res!353226 (= lt!255942 (seekKeyOrZeroReturnVacant!0 (x!52701 lt!255944) (index!23777 lt!255944) (index!23777 lt!255944) (select (arr!16931 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561925 () Bool)

(assert (=> b!561925 (= e!323830 e!323829)))

(declare-fun res!353223 () Bool)

(assert (=> b!561925 (=> (not res!353223) (not e!323829))))

(declare-fun lt!255941 () SeekEntryResult!5387)

(assert (=> b!561925 (= res!353223 (or (= lt!255941 (MissingZero!5387 i!1132)) (= lt!255941 (MissingVacant!5387 i!1132))))))

(assert (=> b!561925 (= lt!255941 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561926 () Bool)

(declare-fun e!323832 () Bool)

(assert (=> b!561926 (= e!323832 e!323835)))

(declare-fun res!353234 () Bool)

(assert (=> b!561926 (=> res!353234 e!323835)))

(declare-fun lt!255945 () (_ BitVec 64))

(assert (=> b!561926 (= res!353234 (or (= lt!255945 (select (arr!16931 a!3118) j!142)) (= lt!255945 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561926 (= lt!255945 (select (arr!16931 a!3118) (index!23777 lt!255944)))))

(declare-fun b!561927 () Bool)

(declare-fun res!353230 () Bool)

(assert (=> b!561927 (=> (not res!353230) (not e!323829))))

(declare-datatypes ((List!11064 0))(
  ( (Nil!11061) (Cons!11060 (h!12063 (_ BitVec 64)) (t!17300 List!11064)) )
))
(declare-fun arrayNoDuplicates!0 (array!35269 (_ BitVec 32) List!11064) Bool)

(assert (=> b!561927 (= res!353230 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11061))))

(declare-fun b!561928 () Bool)

(declare-fun e!323834 () Bool)

(assert (=> b!561928 (= e!323834 (not true))))

(declare-fun e!323836 () Bool)

(assert (=> b!561928 e!323836))

(declare-fun res!353229 () Bool)

(assert (=> b!561928 (=> (not res!353229) (not e!323836))))

(assert (=> b!561928 (= res!353229 (= lt!255942 (Found!5387 j!142)))))

(assert (=> b!561928 (= lt!255942 (seekEntryOrOpen!0 (select (arr!16931 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561928 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17548 0))(
  ( (Unit!17549) )
))
(declare-fun lt!255939 () Unit!17548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17548)

(assert (=> b!561928 (= lt!255939 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561929 () Bool)

(declare-fun res!353222 () Bool)

(assert (=> b!561929 (=> (not res!353222) (not e!323830))))

(declare-fun arrayContainsKey!0 (array!35269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561929 (= res!353222 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561930 () Bool)

(declare-fun res!353232 () Bool)

(assert (=> b!561930 (=> (not res!353232) (not e!323830))))

(assert (=> b!561930 (= res!353232 (validKeyInArray!0 (select (arr!16931 a!3118) j!142)))))

(declare-fun b!561931 () Bool)

(assert (=> b!561931 (= e!323829 e!323834)))

(declare-fun res!353227 () Bool)

(assert (=> b!561931 (=> (not res!353227) (not e!323834))))

(declare-fun lt!255940 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35269 (_ BitVec 32)) SeekEntryResult!5387)

(assert (=> b!561931 (= res!353227 (= lt!255944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255940 lt!255947 lt!255943 mask!3119)))))

(declare-fun lt!255946 () (_ BitVec 32))

(assert (=> b!561931 (= lt!255944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255946 (select (arr!16931 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561931 (= lt!255940 (toIndex!0 lt!255947 mask!3119))))

(assert (=> b!561931 (= lt!255947 (select (store (arr!16931 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561931 (= lt!255946 (toIndex!0 (select (arr!16931 a!3118) j!142) mask!3119))))

(assert (=> b!561931 (= lt!255943 (array!35270 (store (arr!16931 a!3118) i!1132 k!1914) (size!17295 a!3118)))))

(declare-fun b!561932 () Bool)

(assert (=> b!561932 (= e!323836 e!323832)))

(declare-fun res!353231 () Bool)

(assert (=> b!561932 (=> res!353231 e!323832)))

(assert (=> b!561932 (= res!353231 (or (undefined!6199 lt!255944) (not (is-Intermediate!5387 lt!255944))))))

(assert (= (and start!51450 res!353228) b!561922))

(assert (= (and b!561922 res!353224) b!561930))

(assert (= (and b!561930 res!353232) b!561923))

(assert (= (and b!561923 res!353233) b!561929))

(assert (= (and b!561929 res!353222) b!561925))

(assert (= (and b!561925 res!353223) b!561921))

(assert (= (and b!561921 res!353225) b!561927))

(assert (= (and b!561927 res!353230) b!561931))

(assert (= (and b!561931 res!353227) b!561928))

(assert (= (and b!561928 res!353229) b!561932))

(assert (= (and b!561932 (not res!353231)) b!561926))

(assert (= (and b!561926 (not res!353234)) b!561924))

(assert (= (and b!561924 res!353226) b!561920))

(declare-fun m!539939 () Bool)

(assert (=> b!561920 m!539939))

(declare-fun m!539941 () Bool)

(assert (=> b!561920 m!539941))

(declare-fun m!539943 () Bool)

(assert (=> b!561930 m!539943))

(assert (=> b!561930 m!539943))

(declare-fun m!539945 () Bool)

(assert (=> b!561930 m!539945))

(assert (=> b!561931 m!539943))

(declare-fun m!539947 () Bool)

(assert (=> b!561931 m!539947))

(declare-fun m!539949 () Bool)

(assert (=> b!561931 m!539949))

(assert (=> b!561931 m!539943))

(declare-fun m!539951 () Bool)

(assert (=> b!561931 m!539951))

(declare-fun m!539953 () Bool)

(assert (=> b!561931 m!539953))

(declare-fun m!539955 () Bool)

(assert (=> b!561931 m!539955))

(assert (=> b!561931 m!539943))

(declare-fun m!539957 () Bool)

(assert (=> b!561931 m!539957))

(declare-fun m!539959 () Bool)

(assert (=> b!561921 m!539959))

(declare-fun m!539961 () Bool)

(assert (=> b!561923 m!539961))

(declare-fun m!539963 () Bool)

(assert (=> b!561925 m!539963))

(assert (=> b!561928 m!539943))

(assert (=> b!561928 m!539943))

(declare-fun m!539965 () Bool)

(assert (=> b!561928 m!539965))

(declare-fun m!539967 () Bool)

(assert (=> b!561928 m!539967))

(declare-fun m!539969 () Bool)

(assert (=> b!561928 m!539969))

(declare-fun m!539971 () Bool)

(assert (=> start!51450 m!539971))

(declare-fun m!539973 () Bool)

(assert (=> start!51450 m!539973))

(declare-fun m!539975 () Bool)

(assert (=> b!561927 m!539975))

(assert (=> b!561926 m!539943))

(declare-fun m!539977 () Bool)

(assert (=> b!561926 m!539977))

(assert (=> b!561924 m!539943))

(assert (=> b!561924 m!539943))

(declare-fun m!539979 () Bool)

(assert (=> b!561924 m!539979))

(declare-fun m!539981 () Bool)

(assert (=> b!561929 m!539981))

(push 1)

