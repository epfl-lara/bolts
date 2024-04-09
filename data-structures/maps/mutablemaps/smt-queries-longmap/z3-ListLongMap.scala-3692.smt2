; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50788 () Bool)

(assert start!50788)

(declare-fun b!555192 () Bool)

(declare-fun e!320006 () Bool)

(assert (=> b!555192 (= e!320006 (not true))))

(declare-datatypes ((SeekEntryResult!5245 0))(
  ( (MissingZero!5245 (index!23207 (_ BitVec 32))) (Found!5245 (index!23208 (_ BitVec 32))) (Intermediate!5245 (undefined!6057 Bool) (index!23209 (_ BitVec 32)) (x!52138 (_ BitVec 32))) (Undefined!5245) (MissingVacant!5245 (index!23210 (_ BitVec 32))) )
))
(declare-fun lt!252347 () SeekEntryResult!5245)

(declare-datatypes ((array!34967 0))(
  ( (array!34968 (arr!16789 (Array (_ BitVec 32) (_ BitVec 64))) (size!17153 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34967)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!252342 () SeekEntryResult!5245)

(get-info :version)

(assert (=> b!555192 (and (= lt!252342 (Found!5245 j!142)) (or (undefined!6057 lt!252347) (not ((_ is Intermediate!5245) lt!252347)) (= (select (arr!16789 a!3118) (index!23209 lt!252347)) (select (arr!16789 a!3118) j!142)) (not (= (select (arr!16789 a!3118) (index!23209 lt!252347)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252342 (MissingZero!5245 (index!23209 lt!252347)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34967 (_ BitVec 32)) SeekEntryResult!5245)

(assert (=> b!555192 (= lt!252342 (seekEntryOrOpen!0 (select (arr!16789 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34967 (_ BitVec 32)) Bool)

(assert (=> b!555192 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17264 0))(
  ( (Unit!17265) )
))
(declare-fun lt!252345 () Unit!17264)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17264)

(assert (=> b!555192 (= lt!252345 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555193 () Bool)

(declare-fun res!347759 () Bool)

(declare-fun e!320005 () Bool)

(assert (=> b!555193 (=> (not res!347759) (not e!320005))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555193 (= res!347759 (validKeyInArray!0 k0!1914))))

(declare-fun b!555194 () Bool)

(declare-fun res!347754 () Bool)

(declare-fun e!320008 () Bool)

(assert (=> b!555194 (=> (not res!347754) (not e!320008))))

(declare-datatypes ((List!10922 0))(
  ( (Nil!10919) (Cons!10918 (h!11903 (_ BitVec 64)) (t!17158 List!10922)) )
))
(declare-fun arrayNoDuplicates!0 (array!34967 (_ BitVec 32) List!10922) Bool)

(assert (=> b!555194 (= res!347754 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10919))))

(declare-fun b!555195 () Bool)

(declare-fun res!347756 () Bool)

(assert (=> b!555195 (=> (not res!347756) (not e!320008))))

(assert (=> b!555195 (= res!347756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555196 () Bool)

(assert (=> b!555196 (= e!320008 e!320006)))

(declare-fun res!347762 () Bool)

(assert (=> b!555196 (=> (not res!347762) (not e!320006))))

(declare-fun lt!252343 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34967 (_ BitVec 32)) SeekEntryResult!5245)

(assert (=> b!555196 (= res!347762 (= lt!252347 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252343 (select (store (arr!16789 a!3118) i!1132 k0!1914) j!142) (array!34968 (store (arr!16789 a!3118) i!1132 k0!1914) (size!17153 a!3118)) mask!3119)))))

(declare-fun lt!252344 () (_ BitVec 32))

(assert (=> b!555196 (= lt!252347 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252344 (select (arr!16789 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555196 (= lt!252343 (toIndex!0 (select (store (arr!16789 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555196 (= lt!252344 (toIndex!0 (select (arr!16789 a!3118) j!142) mask!3119))))

(declare-fun b!555197 () Bool)

(declare-fun res!347757 () Bool)

(assert (=> b!555197 (=> (not res!347757) (not e!320005))))

(assert (=> b!555197 (= res!347757 (validKeyInArray!0 (select (arr!16789 a!3118) j!142)))))

(declare-fun b!555198 () Bool)

(assert (=> b!555198 (= e!320005 e!320008)))

(declare-fun res!347761 () Bool)

(assert (=> b!555198 (=> (not res!347761) (not e!320008))))

(declare-fun lt!252346 () SeekEntryResult!5245)

(assert (=> b!555198 (= res!347761 (or (= lt!252346 (MissingZero!5245 i!1132)) (= lt!252346 (MissingVacant!5245 i!1132))))))

(assert (=> b!555198 (= lt!252346 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!347755 () Bool)

(assert (=> start!50788 (=> (not res!347755) (not e!320005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50788 (= res!347755 (validMask!0 mask!3119))))

(assert (=> start!50788 e!320005))

(assert (=> start!50788 true))

(declare-fun array_inv!12563 (array!34967) Bool)

(assert (=> start!50788 (array_inv!12563 a!3118)))

(declare-fun b!555199 () Bool)

(declare-fun res!347758 () Bool)

(assert (=> b!555199 (=> (not res!347758) (not e!320005))))

(declare-fun arrayContainsKey!0 (array!34967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555199 (= res!347758 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555200 () Bool)

(declare-fun res!347760 () Bool)

(assert (=> b!555200 (=> (not res!347760) (not e!320005))))

(assert (=> b!555200 (= res!347760 (and (= (size!17153 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17153 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17153 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50788 res!347755) b!555200))

(assert (= (and b!555200 res!347760) b!555197))

(assert (= (and b!555197 res!347757) b!555193))

(assert (= (and b!555193 res!347759) b!555199))

(assert (= (and b!555199 res!347758) b!555198))

(assert (= (and b!555198 res!347761) b!555195))

(assert (= (and b!555195 res!347756) b!555194))

(assert (= (and b!555194 res!347754) b!555196))

(assert (= (and b!555196 res!347762) b!555192))

(declare-fun m!532893 () Bool)

(assert (=> b!555194 m!532893))

(declare-fun m!532895 () Bool)

(assert (=> b!555198 m!532895))

(declare-fun m!532897 () Bool)

(assert (=> b!555199 m!532897))

(declare-fun m!532899 () Bool)

(assert (=> b!555196 m!532899))

(declare-fun m!532901 () Bool)

(assert (=> b!555196 m!532901))

(assert (=> b!555196 m!532899))

(declare-fun m!532903 () Bool)

(assert (=> b!555196 m!532903))

(declare-fun m!532905 () Bool)

(assert (=> b!555196 m!532905))

(declare-fun m!532907 () Bool)

(assert (=> b!555196 m!532907))

(assert (=> b!555196 m!532899))

(assert (=> b!555196 m!532905))

(declare-fun m!532909 () Bool)

(assert (=> b!555196 m!532909))

(assert (=> b!555196 m!532905))

(declare-fun m!532911 () Bool)

(assert (=> b!555196 m!532911))

(assert (=> b!555197 m!532899))

(assert (=> b!555197 m!532899))

(declare-fun m!532913 () Bool)

(assert (=> b!555197 m!532913))

(assert (=> b!555192 m!532899))

(declare-fun m!532915 () Bool)

(assert (=> b!555192 m!532915))

(assert (=> b!555192 m!532899))

(declare-fun m!532917 () Bool)

(assert (=> b!555192 m!532917))

(declare-fun m!532919 () Bool)

(assert (=> b!555192 m!532919))

(declare-fun m!532921 () Bool)

(assert (=> b!555192 m!532921))

(declare-fun m!532923 () Bool)

(assert (=> b!555193 m!532923))

(declare-fun m!532925 () Bool)

(assert (=> b!555195 m!532925))

(declare-fun m!532927 () Bool)

(assert (=> start!50788 m!532927))

(declare-fun m!532929 () Bool)

(assert (=> start!50788 m!532929))

(check-sat (not b!555199) (not b!555192) (not b!555198) (not b!555197) (not start!50788) (not b!555196) (not b!555194) (not b!555195) (not b!555193))
(check-sat)
