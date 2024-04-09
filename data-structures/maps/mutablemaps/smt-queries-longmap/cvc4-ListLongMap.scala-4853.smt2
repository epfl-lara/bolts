; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66836 () Bool)

(assert start!66836)

(declare-fun b!770825 () Bool)

(declare-fun res!521606 () Bool)

(declare-fun e!429164 () Bool)

(assert (=> b!770825 (=> (not res!521606) (not e!429164))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42353 0))(
  ( (array!42354 (arr!20273 (Array (_ BitVec 32) (_ BitVec 64))) (size!20694 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42353)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770825 (= res!521606 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20273 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770826 () Bool)

(declare-fun e!429168 () Bool)

(declare-fun e!429169 () Bool)

(assert (=> b!770826 (= e!429168 e!429169)))

(declare-fun res!521597 () Bool)

(assert (=> b!770826 (=> (not res!521597) (not e!429169))))

(declare-datatypes ((SeekEntryResult!7880 0))(
  ( (MissingZero!7880 (index!33887 (_ BitVec 32))) (Found!7880 (index!33888 (_ BitVec 32))) (Intermediate!7880 (undefined!8692 Bool) (index!33889 (_ BitVec 32)) (x!64836 (_ BitVec 32))) (Undefined!7880) (MissingVacant!7880 (index!33890 (_ BitVec 32))) )
))
(declare-fun lt!343156 () SeekEntryResult!7880)

(assert (=> b!770826 (= res!521597 (or (= lt!343156 (MissingZero!7880 i!1173)) (= lt!343156 (MissingVacant!7880 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42353 (_ BitVec 32)) SeekEntryResult!7880)

(assert (=> b!770826 (= lt!343156 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!521610 () Bool)

(assert (=> start!66836 (=> (not res!521610) (not e!429168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66836 (= res!521610 (validMask!0 mask!3328))))

(assert (=> start!66836 e!429168))

(assert (=> start!66836 true))

(declare-fun array_inv!16047 (array!42353) Bool)

(assert (=> start!66836 (array_inv!16047 a!3186)))

(declare-fun b!770827 () Bool)

(declare-fun res!521611 () Bool)

(assert (=> b!770827 (=> (not res!521611) (not e!429169))))

(declare-datatypes ((List!14328 0))(
  ( (Nil!14325) (Cons!14324 (h!15423 (_ BitVec 64)) (t!20651 List!14328)) )
))
(declare-fun arrayNoDuplicates!0 (array!42353 (_ BitVec 32) List!14328) Bool)

(assert (=> b!770827 (= res!521611 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14325))))

(declare-fun lt!343147 () SeekEntryResult!7880)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!429163 () Bool)

(declare-fun b!770828 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42353 (_ BitVec 32)) SeekEntryResult!7880)

(assert (=> b!770828 (= e!429163 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20273 a!3186) j!159) a!3186 mask!3328) lt!343147))))

(declare-fun b!770829 () Bool)

(declare-fun res!521602 () Bool)

(assert (=> b!770829 (=> (not res!521602) (not e!429168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770829 (= res!521602 (validKeyInArray!0 (select (arr!20273 a!3186) j!159)))))

(declare-fun b!770830 () Bool)

(declare-fun e!429161 () Bool)

(assert (=> b!770830 (= e!429161 true)))

(declare-datatypes ((Unit!26556 0))(
  ( (Unit!26557) )
))
(declare-fun lt!343153 () Unit!26556)

(declare-fun e!429160 () Unit!26556)

(assert (=> b!770830 (= lt!343153 e!429160)))

(declare-fun c!85011 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!770830 (= c!85011 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!343150 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770830 (= lt!343150 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun e!429162 () Bool)

(declare-fun b!770831 () Bool)

(declare-fun lt!343154 () SeekEntryResult!7880)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42353 (_ BitVec 32)) SeekEntryResult!7880)

(assert (=> b!770831 (= e!429162 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20273 a!3186) j!159) a!3186 mask!3328) lt!343154))))

(declare-fun b!770832 () Bool)

(declare-fun res!521609 () Bool)

(assert (=> b!770832 (=> (not res!521609) (not e!429169))))

(assert (=> b!770832 (= res!521609 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20694 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20694 a!3186))))))

(declare-fun b!770833 () Bool)

(declare-fun res!521596 () Bool)

(assert (=> b!770833 (=> (not res!521596) (not e!429168))))

(assert (=> b!770833 (= res!521596 (and (= (size!20694 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20694 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20694 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770834 () Bool)

(declare-fun Unit!26558 () Unit!26556)

(assert (=> b!770834 (= e!429160 Unit!26558)))

(assert (=> b!770834 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343150 (select (arr!20273 a!3186) j!159) a!3186 mask!3328) lt!343154)))

(declare-fun b!770835 () Bool)

(declare-fun e!429165 () Bool)

(assert (=> b!770835 (= e!429164 e!429165)))

(declare-fun res!521607 () Bool)

(assert (=> b!770835 (=> (not res!521607) (not e!429165))))

(declare-fun lt!343149 () SeekEntryResult!7880)

(declare-fun lt!343148 () SeekEntryResult!7880)

(assert (=> b!770835 (= res!521607 (= lt!343149 lt!343148))))

(declare-fun lt!343146 () array!42353)

(declare-fun lt!343151 () (_ BitVec 64))

(assert (=> b!770835 (= lt!343148 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343151 lt!343146 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770835 (= lt!343149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343151 mask!3328) lt!343151 lt!343146 mask!3328))))

(assert (=> b!770835 (= lt!343151 (select (store (arr!20273 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770835 (= lt!343146 (array!42354 (store (arr!20273 a!3186) i!1173 k!2102) (size!20694 a!3186)))))

(declare-fun b!770836 () Bool)

(assert (=> b!770836 (= e!429162 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20273 a!3186) j!159) a!3186 mask!3328) (Found!7880 j!159)))))

(declare-fun b!770837 () Bool)

(declare-fun res!521605 () Bool)

(assert (=> b!770837 (=> (not res!521605) (not e!429164))))

(assert (=> b!770837 (= res!521605 e!429162)))

(declare-fun c!85010 () Bool)

(assert (=> b!770837 (= c!85010 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770838 () Bool)

(declare-fun e!429166 () Bool)

(assert (=> b!770838 (= e!429166 e!429163)))

(declare-fun res!521604 () Bool)

(assert (=> b!770838 (=> (not res!521604) (not e!429163))))

(assert (=> b!770838 (= res!521604 (= (seekEntryOrOpen!0 (select (arr!20273 a!3186) j!159) a!3186 mask!3328) lt!343147))))

(assert (=> b!770838 (= lt!343147 (Found!7880 j!159))))

(declare-fun b!770839 () Bool)

(declare-fun res!521598 () Bool)

(assert (=> b!770839 (=> (not res!521598) (not e!429168))))

(assert (=> b!770839 (= res!521598 (validKeyInArray!0 k!2102))))

(declare-fun b!770840 () Bool)

(assert (=> b!770840 (= e!429165 (not e!429161))))

(declare-fun res!521599 () Bool)

(assert (=> b!770840 (=> res!521599 e!429161)))

(assert (=> b!770840 (= res!521599 (or (not (is-Intermediate!7880 lt!343148)) (bvsge x!1131 (x!64836 lt!343148))))))

(assert (=> b!770840 e!429166))

(declare-fun res!521608 () Bool)

(assert (=> b!770840 (=> (not res!521608) (not e!429166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42353 (_ BitVec 32)) Bool)

(assert (=> b!770840 (= res!521608 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343152 () Unit!26556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26556)

(assert (=> b!770840 (= lt!343152 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770841 () Bool)

(assert (=> b!770841 (= e!429169 e!429164)))

(declare-fun res!521601 () Bool)

(assert (=> b!770841 (=> (not res!521601) (not e!429164))))

(assert (=> b!770841 (= res!521601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20273 a!3186) j!159) mask!3328) (select (arr!20273 a!3186) j!159) a!3186 mask!3328) lt!343154))))

(assert (=> b!770841 (= lt!343154 (Intermediate!7880 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770842 () Bool)

(declare-fun res!521603 () Bool)

(assert (=> b!770842 (=> (not res!521603) (not e!429168))))

(declare-fun arrayContainsKey!0 (array!42353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770842 (= res!521603 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770843 () Bool)

(declare-fun res!521600 () Bool)

(assert (=> b!770843 (=> (not res!521600) (not e!429169))))

(assert (=> b!770843 (= res!521600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770844 () Bool)

(declare-fun Unit!26559 () Unit!26556)

(assert (=> b!770844 (= e!429160 Unit!26559)))

(declare-fun lt!343155 () SeekEntryResult!7880)

(assert (=> b!770844 (= lt!343155 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20273 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770844 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343150 resIntermediateIndex!5 (select (arr!20273 a!3186) j!159) a!3186 mask!3328) (Found!7880 j!159))))

(assert (= (and start!66836 res!521610) b!770833))

(assert (= (and b!770833 res!521596) b!770829))

(assert (= (and b!770829 res!521602) b!770839))

(assert (= (and b!770839 res!521598) b!770842))

(assert (= (and b!770842 res!521603) b!770826))

(assert (= (and b!770826 res!521597) b!770843))

(assert (= (and b!770843 res!521600) b!770827))

(assert (= (and b!770827 res!521611) b!770832))

(assert (= (and b!770832 res!521609) b!770841))

(assert (= (and b!770841 res!521601) b!770825))

(assert (= (and b!770825 res!521606) b!770837))

(assert (= (and b!770837 c!85010) b!770831))

(assert (= (and b!770837 (not c!85010)) b!770836))

(assert (= (and b!770837 res!521605) b!770835))

(assert (= (and b!770835 res!521607) b!770840))

(assert (= (and b!770840 res!521608) b!770838))

(assert (= (and b!770838 res!521604) b!770828))

(assert (= (and b!770840 (not res!521599)) b!770830))

(assert (= (and b!770830 c!85011) b!770834))

(assert (= (and b!770830 (not c!85011)) b!770844))

(declare-fun m!716115 () Bool)

(assert (=> b!770834 m!716115))

(assert (=> b!770834 m!716115))

(declare-fun m!716117 () Bool)

(assert (=> b!770834 m!716117))

(declare-fun m!716119 () Bool)

(assert (=> b!770827 m!716119))

(assert (=> b!770844 m!716115))

(assert (=> b!770844 m!716115))

(declare-fun m!716121 () Bool)

(assert (=> b!770844 m!716121))

(assert (=> b!770844 m!716115))

(declare-fun m!716123 () Bool)

(assert (=> b!770844 m!716123))

(declare-fun m!716125 () Bool)

(assert (=> b!770825 m!716125))

(declare-fun m!716127 () Bool)

(assert (=> b!770843 m!716127))

(assert (=> b!770829 m!716115))

(assert (=> b!770829 m!716115))

(declare-fun m!716129 () Bool)

(assert (=> b!770829 m!716129))

(assert (=> b!770831 m!716115))

(assert (=> b!770831 m!716115))

(declare-fun m!716131 () Bool)

(assert (=> b!770831 m!716131))

(assert (=> b!770841 m!716115))

(assert (=> b!770841 m!716115))

(declare-fun m!716133 () Bool)

(assert (=> b!770841 m!716133))

(assert (=> b!770841 m!716133))

(assert (=> b!770841 m!716115))

(declare-fun m!716135 () Bool)

(assert (=> b!770841 m!716135))

(declare-fun m!716137 () Bool)

(assert (=> b!770842 m!716137))

(declare-fun m!716139 () Bool)

(assert (=> b!770839 m!716139))

(assert (=> b!770836 m!716115))

(assert (=> b!770836 m!716115))

(assert (=> b!770836 m!716121))

(declare-fun m!716141 () Bool)

(assert (=> b!770830 m!716141))

(declare-fun m!716143 () Bool)

(assert (=> start!66836 m!716143))

(declare-fun m!716145 () Bool)

(assert (=> start!66836 m!716145))

(declare-fun m!716147 () Bool)

(assert (=> b!770826 m!716147))

(declare-fun m!716149 () Bool)

(assert (=> b!770840 m!716149))

(declare-fun m!716151 () Bool)

(assert (=> b!770840 m!716151))

(assert (=> b!770828 m!716115))

(assert (=> b!770828 m!716115))

(declare-fun m!716153 () Bool)

(assert (=> b!770828 m!716153))

(assert (=> b!770838 m!716115))

(assert (=> b!770838 m!716115))

(declare-fun m!716155 () Bool)

(assert (=> b!770838 m!716155))

(declare-fun m!716157 () Bool)

(assert (=> b!770835 m!716157))

(declare-fun m!716159 () Bool)

(assert (=> b!770835 m!716159))

(declare-fun m!716161 () Bool)

(assert (=> b!770835 m!716161))

(declare-fun m!716163 () Bool)

(assert (=> b!770835 m!716163))

(declare-fun m!716165 () Bool)

(assert (=> b!770835 m!716165))

(assert (=> b!770835 m!716163))

(push 1)

