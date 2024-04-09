; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64214 () Bool)

(assert start!64214)

(declare-fun b!720949 () Bool)

(declare-fun e!404303 () Bool)

(declare-fun e!404304 () Bool)

(assert (=> b!720949 (= e!404303 e!404304)))

(declare-fun res!483163 () Bool)

(assert (=> b!720949 (=> (not res!483163) (not e!404304))))

(declare-datatypes ((SeekEntryResult!7130 0))(
  ( (MissingZero!7130 (index!30887 (_ BitVec 32))) (Found!7130 (index!30888 (_ BitVec 32))) (Intermediate!7130 (undefined!7942 Bool) (index!30889 (_ BitVec 32)) (x!61915 (_ BitVec 32))) (Undefined!7130) (MissingVacant!7130 (index!30890 (_ BitVec 32))) )
))
(declare-fun lt!319915 () SeekEntryResult!7130)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720949 (= res!483163 (or (= lt!319915 (MissingZero!7130 i!1173)) (= lt!319915 (MissingVacant!7130 i!1173))))))

(declare-datatypes ((array!40805 0))(
  ( (array!40806 (arr!19523 (Array (_ BitVec 32) (_ BitVec 64))) (size!19944 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40805)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40805 (_ BitVec 32)) SeekEntryResult!7130)

(assert (=> b!720949 (= lt!319915 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720950 () Bool)

(declare-fun res!483172 () Bool)

(assert (=> b!720950 (=> (not res!483172) (not e!404303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720950 (= res!483172 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!720951 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404302 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40805 (_ BitVec 32)) SeekEntryResult!7130)

(assert (=> b!720951 (= e!404302 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19523 a!3186) j!159) a!3186 mask!3328) (Found!7130 j!159)))))

(declare-fun b!720952 () Bool)

(declare-fun res!483168 () Bool)

(declare-fun e!404301 () Bool)

(assert (=> b!720952 (=> (not res!483168) (not e!404301))))

(assert (=> b!720952 (= res!483168 e!404302)))

(declare-fun c!79263 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720952 (= c!79263 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720953 () Bool)

(declare-fun res!483167 () Bool)

(assert (=> b!720953 (=> (not res!483167) (not e!404301))))

(assert (=> b!720953 (= res!483167 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19523 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720954 () Bool)

(assert (=> b!720954 (= e!404304 e!404301)))

(declare-fun res!483169 () Bool)

(assert (=> b!720954 (=> (not res!483169) (not e!404301))))

(declare-fun lt!319916 () SeekEntryResult!7130)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40805 (_ BitVec 32)) SeekEntryResult!7130)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720954 (= res!483169 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19523 a!3186) j!159) mask!3328) (select (arr!19523 a!3186) j!159) a!3186 mask!3328) lt!319916))))

(assert (=> b!720954 (= lt!319916 (Intermediate!7130 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720955 () Bool)

(declare-fun res!483174 () Bool)

(assert (=> b!720955 (=> (not res!483174) (not e!404303))))

(declare-fun arrayContainsKey!0 (array!40805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720955 (= res!483174 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720956 () Bool)

(declare-fun res!483170 () Bool)

(assert (=> b!720956 (=> (not res!483170) (not e!404303))))

(assert (=> b!720956 (= res!483170 (and (= (size!19944 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19944 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19944 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720957 () Bool)

(declare-fun res!483165 () Bool)

(assert (=> b!720957 (=> (not res!483165) (not e!404304))))

(declare-datatypes ((List!13578 0))(
  ( (Nil!13575) (Cons!13574 (h!14625 (_ BitVec 64)) (t!19901 List!13578)) )
))
(declare-fun arrayNoDuplicates!0 (array!40805 (_ BitVec 32) List!13578) Bool)

(assert (=> b!720957 (= res!483165 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13575))))

(declare-fun b!720958 () Bool)

(declare-fun res!483166 () Bool)

(assert (=> b!720958 (=> (not res!483166) (not e!404304))))

(assert (=> b!720958 (= res!483166 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19944 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19944 a!3186))))))

(declare-fun res!483173 () Bool)

(assert (=> start!64214 (=> (not res!483173) (not e!404303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64214 (= res!483173 (validMask!0 mask!3328))))

(assert (=> start!64214 e!404303))

(assert (=> start!64214 true))

(declare-fun array_inv!15297 (array!40805) Bool)

(assert (=> start!64214 (array_inv!15297 a!3186)))

(declare-fun b!720959 () Bool)

(declare-fun lt!319914 () (_ BitVec 32))

(assert (=> b!720959 (= e!404301 (and (bvsge mask!3328 #b00000000000000000000000000000000) (or (bvslt lt!319914 #b00000000000000000000000000000000) (bvsge lt!319914 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!720959 (= lt!319914 (toIndex!0 (select (store (arr!19523 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!720960 () Bool)

(assert (=> b!720960 (= e!404302 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19523 a!3186) j!159) a!3186 mask!3328) lt!319916))))

(declare-fun b!720961 () Bool)

(declare-fun res!483171 () Bool)

(assert (=> b!720961 (=> (not res!483171) (not e!404304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40805 (_ BitVec 32)) Bool)

(assert (=> b!720961 (= res!483171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720962 () Bool)

(declare-fun res!483164 () Bool)

(assert (=> b!720962 (=> (not res!483164) (not e!404303))))

(assert (=> b!720962 (= res!483164 (validKeyInArray!0 (select (arr!19523 a!3186) j!159)))))

(assert (= (and start!64214 res!483173) b!720956))

(assert (= (and b!720956 res!483170) b!720962))

(assert (= (and b!720962 res!483164) b!720950))

(assert (= (and b!720950 res!483172) b!720955))

(assert (= (and b!720955 res!483174) b!720949))

(assert (= (and b!720949 res!483163) b!720961))

(assert (= (and b!720961 res!483171) b!720957))

(assert (= (and b!720957 res!483165) b!720958))

(assert (= (and b!720958 res!483166) b!720954))

(assert (= (and b!720954 res!483169) b!720953))

(assert (= (and b!720953 res!483167) b!720952))

(assert (= (and b!720952 c!79263) b!720960))

(assert (= (and b!720952 (not c!79263)) b!720951))

(assert (= (and b!720952 res!483168) b!720959))

(declare-fun m!676005 () Bool)

(assert (=> b!720950 m!676005))

(declare-fun m!676007 () Bool)

(assert (=> b!720955 m!676007))

(declare-fun m!676009 () Bool)

(assert (=> b!720961 m!676009))

(declare-fun m!676011 () Bool)

(assert (=> b!720949 m!676011))

(declare-fun m!676013 () Bool)

(assert (=> b!720951 m!676013))

(assert (=> b!720951 m!676013))

(declare-fun m!676015 () Bool)

(assert (=> b!720951 m!676015))

(declare-fun m!676017 () Bool)

(assert (=> b!720957 m!676017))

(assert (=> b!720960 m!676013))

(assert (=> b!720960 m!676013))

(declare-fun m!676019 () Bool)

(assert (=> b!720960 m!676019))

(declare-fun m!676021 () Bool)

(assert (=> b!720959 m!676021))

(declare-fun m!676023 () Bool)

(assert (=> b!720959 m!676023))

(assert (=> b!720959 m!676023))

(declare-fun m!676025 () Bool)

(assert (=> b!720959 m!676025))

(declare-fun m!676027 () Bool)

(assert (=> start!64214 m!676027))

(declare-fun m!676029 () Bool)

(assert (=> start!64214 m!676029))

(assert (=> b!720962 m!676013))

(assert (=> b!720962 m!676013))

(declare-fun m!676031 () Bool)

(assert (=> b!720962 m!676031))

(declare-fun m!676033 () Bool)

(assert (=> b!720953 m!676033))

(assert (=> b!720954 m!676013))

(assert (=> b!720954 m!676013))

(declare-fun m!676035 () Bool)

(assert (=> b!720954 m!676035))

(assert (=> b!720954 m!676035))

(assert (=> b!720954 m!676013))

(declare-fun m!676037 () Bool)

(assert (=> b!720954 m!676037))

(push 1)

(assert (not b!720960))

(assert (not b!720951))

(assert (not b!720949))

(assert (not b!720950))

(assert (not b!720955))

(assert (not b!720954))

(assert (not start!64214))

(assert (not b!720962))

(assert (not b!720957))

(assert (not b!720961))

(assert (not b!720959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!721032 () Bool)

(declare-fun e!404347 () SeekEntryResult!7130)

(assert (=> b!721032 (= e!404347 Undefined!7130)))

(declare-fun b!721033 () Bool)

(declare-fun e!404348 () SeekEntryResult!7130)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721033 (= e!404348 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19523 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!721034 () Bool)

(declare-fun c!79290 () Bool)

(declare-fun lt!319946 () (_ BitVec 64))

(assert (=> b!721034 (= c!79290 (= lt!319946 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!404349 () SeekEntryResult!7130)

(assert (=> b!721034 (= e!404349 e!404348)))

(declare-fun b!721035 () Bool)

(assert (=> b!721035 (= e!404347 e!404349)))

(declare-fun c!79288 () Bool)

(assert (=> b!721035 (= c!79288 (= lt!319946 (select (arr!19523 a!3186) j!159)))))

(declare-fun d!99123 () Bool)

(declare-fun lt!319947 () SeekEntryResult!7130)

(assert (=> d!99123 (and (or (is-Undefined!7130 lt!319947) (not (is-Found!7130 lt!319947)) (and (bvsge (index!30888 lt!319947) #b00000000000000000000000000000000) (bvslt (index!30888 lt!319947) (size!19944 a!3186)))) (or (is-Undefined!7130 lt!319947) (is-Found!7130 lt!319947) (not (is-MissingVacant!7130 lt!319947)) (not (= (index!30890 lt!319947) resIntermediateIndex!5)) (and (bvsge (index!30890 lt!319947) #b00000000000000000000000000000000) (bvslt (index!30890 lt!319947) (size!19944 a!3186)))) (or (is-Undefined!7130 lt!319947) (ite (is-Found!7130 lt!319947) (= (select (arr!19523 a!3186) (index!30888 lt!319947)) (select (arr!19523 a!3186) j!159)) (and (is-MissingVacant!7130 lt!319947) (= (index!30890 lt!319947) resIntermediateIndex!5) (= (select (arr!19523 a!3186) (index!30890 lt!319947)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99123 (= lt!319947 e!404347)))

(declare-fun c!79289 () Bool)

(assert (=> d!99123 (= c!79289 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99123 (= lt!319946 (select (arr!19523 a!3186) index!1321))))

(assert (=> d!99123 (validMask!0 mask!3328)))

(assert (=> d!99123 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19523 a!3186) j!159) a!3186 mask!3328) lt!319947)))

(declare-fun b!721036 () Bool)

(assert (=> b!721036 (= e!404349 (Found!7130 index!1321))))

(declare-fun b!721037 () Bool)

(assert (=> b!721037 (= e!404348 (MissingVacant!7130 resIntermediateIndex!5))))

(assert (= (and d!99123 c!79289) b!721032))

(assert (= (and d!99123 (not c!79289)) b!721035))

(assert (= (and b!721035 c!79288) b!721036))

(assert (= (and b!721035 (not c!79288)) b!721034))

(assert (= (and b!721034 c!79290) b!721037))

(assert (= (and b!721034 (not c!79290)) b!721033))

(declare-fun m!676063 () Bool)

(assert (=> b!721033 m!676063))

(assert (=> b!721033 m!676063))

(assert (=> b!721033 m!676013))

(declare-fun m!676065 () Bool)

(assert (=> b!721033 m!676065))

(declare-fun m!676067 () Bool)

(assert (=> d!99123 m!676067))

(declare-fun m!676069 () Bool)

(assert (=> d!99123 m!676069))

(declare-fun m!676071 () Bool)

(assert (=> d!99123 m!676071))

(assert (=> d!99123 m!676027))

(assert (=> b!720951 d!99123))

(declare-fun d!99137 () Bool)

(assert (=> d!99137 (= (validKeyInArray!0 (select (arr!19523 a!3186) j!159)) (and (not (= (select (arr!19523 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19523 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720962 d!99137))

(declare-fun d!99139 () Bool)

(assert (=> d!99139 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64214 d!99139))

(declare-fun d!99145 () Bool)

(assert (=> d!99145 (= (array_inv!15297 a!3186) (bvsge (size!19944 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64214 d!99145))

(declare-fun b!721128 () Bool)

(declare-fun e!404398 () SeekEntryResult!7130)

(declare-fun e!404397 () SeekEntryResult!7130)

(assert (=> b!721128 (= e!404398 e!404397)))

(declare-fun lt!319985 () (_ BitVec 64))

(declare-fun lt!319987 () SeekEntryResult!7130)

(assert (=> b!721128 (= lt!319985 (select (arr!19523 a!3186) (index!30889 lt!319987)))))

(declare-fun c!79332 () Bool)

(assert (=> b!721128 (= c!79332 (= lt!319985 k!2102))))

(declare-fun b!721129 () Bool)

(assert (=> b!721129 (= e!404397 (Found!7130 (index!30889 lt!319987)))))

(declare-fun b!721130 () Bool)

(declare-fun c!79331 () Bool)

(assert (=> b!721130 (= c!79331 (= lt!319985 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!404399 () SeekEntryResult!7130)

(assert (=> b!721130 (= e!404397 e!404399)))

(declare-fun d!99147 () Bool)

(declare-fun lt!319986 () SeekEntryResult!7130)

(assert (=> d!99147 (and (or (is-Undefined!7130 lt!319986) (not (is-Found!7130 lt!319986)) (and (bvsge (index!30888 lt!319986) #b00000000000000000000000000000000) (bvslt (index!30888 lt!319986) (size!19944 a!3186)))) (or (is-Undefined!7130 lt!319986) (is-Found!7130 lt!319986) (not (is-MissingZero!7130 lt!319986)) (and (bvsge (index!30887 lt!319986) #b00000000000000000000000000000000) (bvslt (index!30887 lt!319986) (size!19944 a!3186)))) (or (is-Undefined!7130 lt!319986) (is-Found!7130 lt!319986) (is-MissingZero!7130 lt!319986) (not (is-MissingVacant!7130 lt!319986)) (and (bvsge (index!30890 lt!319986) #b00000000000000000000000000000000) (bvslt (index!30890 lt!319986) (size!19944 a!3186)))) (or (is-Undefined!7130 lt!319986) (ite (is-Found!7130 lt!319986) (= (select (arr!19523 a!3186) (index!30888 lt!319986)) k!2102) (ite (is-MissingZero!7130 lt!319986) (= (select (arr!19523 a!3186) (index!30887 lt!319986)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7130 lt!319986) (= (select (arr!19523 a!3186) (index!30890 lt!319986)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99147 (= lt!319986 e!404398)))

(declare-fun c!79330 () Bool)

(assert (=> d!99147 (= c!79330 (and (is-Intermediate!7130 lt!319987) (undefined!7942 lt!319987)))))

(assert (=> d!99147 (= lt!319987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99147 (validMask!0 mask!3328)))

(assert (=> d!99147 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!319986)))

(declare-fun b!721131 () Bool)

(assert (=> b!721131 (= e!404399 (MissingZero!7130 (index!30889 lt!319987)))))

(declare-fun b!721132 () Bool)

(assert (=> b!721132 (= e!404399 (seekKeyOrZeroReturnVacant!0 (x!61915 lt!319987) (index!30889 lt!319987) (index!30889 lt!319987) k!2102 a!3186 mask!3328))))

(declare-fun b!721133 () Bool)

(assert (=> b!721133 (= e!404398 Undefined!7130)))

(assert (= (and d!99147 c!79330) b!721133))

(assert (= (and d!99147 (not c!79330)) b!721128))

(assert (= (and b!721128 c!79332) b!721129))

(assert (= (and b!721128 (not c!79332)) b!721130))

(assert (= (and b!721130 c!79331) b!721131))

(assert (= (and b!721130 (not c!79331)) b!721132))

(declare-fun m!676115 () Bool)

(assert (=> b!721128 m!676115))

(assert (=> d!99147 m!676027))

(declare-fun m!676117 () Bool)

(assert (=> d!99147 m!676117))

(declare-fun m!676119 () Bool)

(assert (=> d!99147 m!676119))

(declare-fun m!676121 () Bool)

(assert (=> d!99147 m!676121))

(assert (=> d!99147 m!676119))

(declare-fun m!676123 () Bool)

(assert (=> d!99147 m!676123))

(declare-fun m!676125 () Bool)

(assert (=> d!99147 m!676125))

(declare-fun m!676127 () Bool)

(assert (=> b!721132 m!676127))

(assert (=> b!720949 d!99147))

(declare-fun b!721179 () Bool)

(declare-fun lt!320003 () SeekEntryResult!7130)

(assert (=> b!721179 (and (bvsge (index!30889 lt!320003) #b00000000000000000000000000000000) (bvslt (index!30889 lt!320003) (size!19944 a!3186)))))

(declare-fun e!404432 () Bool)

(assert (=> b!721179 (= e!404432 (= (select (arr!19523 a!3186) (index!30889 lt!320003)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!99159 () Bool)

(declare-fun e!404434 () Bool)

(assert (=> d!99159 e!404434))

(declare-fun c!79346 () Bool)

(assert (=> d!99159 (= c!79346 (and (is-Intermediate!7130 lt!320003) (undefined!7942 lt!320003)))))

(declare-fun e!404433 () SeekEntryResult!7130)

(assert (=> d!99159 (= lt!320003 e!404433)))

(declare-fun c!79347 () Bool)

(assert (=> d!99159 (= c!79347 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!320004 () (_ BitVec 64))

(assert (=> d!99159 (= lt!320004 (select (arr!19523 a!3186) index!1321))))

(assert (=> d!99159 (validMask!0 mask!3328)))

(assert (=> d!99159 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19523 a!3186) j!159) a!3186 mask!3328) lt!320003)))

(declare-fun b!721180 () Bool)

(assert (=> b!721180 (and (bvsge (index!30889 lt!320003) #b00000000000000000000000000000000) (bvslt (index!30889 lt!320003) (size!19944 a!3186)))))

(declare-fun res!483232 () Bool)

(assert (=> b!721180 (= res!483232 (= (select (arr!19523 a!3186) (index!30889 lt!320003)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!721180 (=> res!483232 e!404432)))

(declare-fun b!721181 () Bool)

(assert (=> b!721181 (= e!404433 (Intermediate!7130 true index!1321 x!1131))))

(declare-fun b!721182 () Bool)

(assert (=> b!721182 (= e!404434 (bvsge (x!61915 lt!320003) #b01111111111111111111111111111110))))

(declare-fun b!721183 () Bool)

(declare-fun e!404431 () SeekEntryResult!7130)

(assert (=> b!721183 (= e!404431 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19523 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!721184 () Bool)

(assert (=> b!721184 (= e!404431 (Intermediate!7130 false index!1321 x!1131))))

(declare-fun b!721185 () Bool)

(assert (=> b!721185 (= e!404433 e!404431)))

(declare-fun c!79345 () Bool)

(assert (=> b!721185 (= c!79345 (or (= lt!320004 (select (arr!19523 a!3186) j!159)) (= (bvadd lt!320004 lt!320004) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721186 () Bool)

(declare-fun e!404435 () Bool)

(assert (=> b!721186 (= e!404434 e!404435)))

(declare-fun res!483231 () Bool)

(assert (=> b!721186 (= res!483231 (and (is-Intermediate!7130 lt!320003) (not (undefined!7942 lt!320003)) (bvslt (x!61915 lt!320003) #b01111111111111111111111111111110) (bvsge (x!61915 lt!320003) #b00000000000000000000000000000000) (bvsge (x!61915 lt!320003) x!1131)))))

(assert (=> b!721186 (=> (not res!483231) (not e!404435))))

(declare-fun b!721187 () Bool)

(assert (=> b!721187 (and (bvsge (index!30889 lt!320003) #b00000000000000000000000000000000) (bvslt (index!30889 lt!320003) (size!19944 a!3186)))))

(declare-fun res!483233 () Bool)

(assert (=> b!721187 (= res!483233 (= (select (arr!19523 a!3186) (index!30889 lt!320003)) (select (arr!19523 a!3186) j!159)))))

(assert (=> b!721187 (=> res!483233 e!404432)))

(assert (=> b!721187 (= e!404435 e!404432)))

(assert (= (and d!99159 c!79347) b!721181))

(assert (= (and d!99159 (not c!79347)) b!721185))

(assert (= (and b!721185 c!79345) b!721184))

(assert (= (and b!721185 (not c!79345)) b!721183))

(assert (= (and d!99159 c!79346) b!721182))

(assert (= (and d!99159 (not c!79346)) b!721186))

(assert (= (and b!721186 res!483231) b!721187))

(assert (= (and b!721187 (not res!483233)) b!721180))

(assert (= (and b!721180 (not res!483232)) b!721179))

(declare-fun m!676143 () Bool)

(assert (=> b!721179 m!676143))

(assert (=> b!721187 m!676143))

(assert (=> b!721183 m!676063))

(assert (=> b!721183 m!676063))

(assert (=> b!721183 m!676013))

(declare-fun m!676145 () Bool)

(assert (=> b!721183 m!676145))

(assert (=> d!99159 m!676071))

(assert (=> d!99159 m!676027))

(assert (=> b!721180 m!676143))

(assert (=> b!720960 d!99159))

(declare-fun d!99173 () Bool)

(declare-fun lt!320016 () (_ BitVec 32))

(declare-fun lt!320015 () (_ BitVec 32))

(assert (=> d!99173 (= lt!320016 (bvmul (bvxor lt!320015 (bvlshr lt!320015 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99173 (= lt!320015 ((_ extract 31 0) (bvand (bvxor (select (store (arr!19523 a!3186) i!1173 k!2102) j!159) (bvlshr (select (store (arr!19523 a!3186) i!1173 k!2102) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99173 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!483234 (let ((h!14628 ((_ extract 31 0) (bvand (bvxor (select (store (arr!19523 a!3186) i!1173 k!2102) j!159) (bvlshr (select (store (arr!19523 a!3186) i!1173 k!2102) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61924 (bvmul (bvxor h!14628 (bvlshr h!14628 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61924 (bvlshr x!61924 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!483234 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!483234 #b00000000000000000000000000000000))))))

(assert (=> d!99173 (= (toIndex!0 (select (store (arr!19523 a!3186) i!1173 k!2102) j!159) mask!3328) (bvand (bvxor lt!320016 (bvlshr lt!320016 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720959 d!99173))

(declare-fun bm!34776 () Bool)

(declare-fun call!34779 () Bool)

(assert (=> bm!34776 (= call!34779 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!721229 () Bool)

(declare-fun e!404463 () Bool)

(declare-fun e!404462 () Bool)

(assert (=> b!721229 (= e!404463 e!404462)))

(declare-fun lt!320032 () (_ BitVec 64))

(assert (=> b!721229 (= lt!320032 (select (arr!19523 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24656 0))(
  ( (Unit!24657) )
))
(declare-fun lt!320030 () Unit!24656)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40805 (_ BitVec 64) (_ BitVec 32)) Unit!24656)

(assert (=> b!721229 (= lt!320030 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!320032 #b00000000000000000000000000000000))))

(assert (=> b!721229 (arrayContainsKey!0 a!3186 lt!320032 #b00000000000000000000000000000000)))

(declare-fun lt!320031 () Unit!24656)

(assert (=> b!721229 (= lt!320031 lt!320030)))

(declare-fun res!483249 () Bool)

(assert (=> b!721229 (= res!483249 (= (seekEntryOrOpen!0 (select (arr!19523 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7130 #b00000000000000000000000000000000)))))

(assert (=> b!721229 (=> (not res!483249) (not e!404462))))

(declare-fun d!99177 () Bool)

(declare-fun res!483248 () Bool)

(declare-fun e!404464 () Bool)

(assert (=> d!99177 (=> res!483248 e!404464)))

(assert (=> d!99177 (= res!483248 (bvsge #b00000000000000000000000000000000 (size!19944 a!3186)))))

(assert (=> d!99177 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!404464)))

(declare-fun b!721230 () Bool)

(assert (=> b!721230 (= e!404464 e!404463)))

(declare-fun c!79362 () Bool)

(assert (=> b!721230 (= c!79362 (validKeyInArray!0 (select (arr!19523 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!721231 () Bool)

(assert (=> b!721231 (= e!404463 call!34779)))

(declare-fun b!721232 () Bool)

(assert (=> b!721232 (= e!404462 call!34779)))

(assert (= (and d!99177 (not res!483248)) b!721230))

(assert (= (and b!721230 c!79362) b!721229))

(assert (= (and b!721230 (not c!79362)) b!721231))

(assert (= (and b!721229 res!483249) b!721232))

(assert (= (or b!721232 b!721231) bm!34776))

(declare-fun m!676171 () Bool)

(assert (=> bm!34776 m!676171))

(declare-fun m!676173 () Bool)

(assert (=> b!721229 m!676173))

(declare-fun m!676175 () Bool)

(assert (=> b!721229 m!676175))

(declare-fun m!676177 () Bool)

(assert (=> b!721229 m!676177))

(assert (=> b!721229 m!676173))

(declare-fun m!676179 () Bool)

(assert (=> b!721229 m!676179))

(assert (=> b!721230 m!676173))

(assert (=> b!721230 m!676173))

(declare-fun m!676181 () Bool)

(assert (=> b!721230 m!676181))

(assert (=> b!720961 d!99177))

(declare-fun d!99187 () Bool)

(assert (=> d!99187 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720950 d!99187))

(declare-fun b!721258 () Bool)

(declare-fun e!404487 () Bool)

(declare-fun call!34785 () Bool)

(assert (=> b!721258 (= e!404487 call!34785)))

(declare-fun b!721259 () Bool)

(declare-fun e!404488 () Bool)

(declare-fun e!404486 () Bool)

(assert (=> b!721259 (= e!404488 e!404486)))

(declare-fun res!483267 () Bool)

(assert (=> b!721259 (=> (not res!483267) (not e!404486))))

(declare-fun e!404485 () Bool)

(assert (=> b!721259 (= res!483267 (not e!404485))))

(declare-fun res!483266 () Bool)

(assert (=> b!721259 (=> (not res!483266) (not e!404485))))

(assert (=> b!721259 (= res!483266 (validKeyInArray!0 (select (arr!19523 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34782 () Bool)

(declare-fun c!79368 () Bool)

(assert (=> bm!34782 (= call!34785 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79368 (Cons!13574 (select (arr!19523 a!3186) #b00000000000000000000000000000000) Nil!13575) Nil!13575)))))

(declare-fun b!721260 () Bool)

(assert (=> b!721260 (= e!404487 call!34785)))

(declare-fun b!721261 () Bool)

(assert (=> b!721261 (= e!404486 e!404487)))

(assert (=> b!721261 (= c!79368 (validKeyInArray!0 (select (arr!19523 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!721262 () Bool)

(declare-fun contains!4046 (List!13578 (_ BitVec 64)) Bool)

(assert (=> b!721262 (= e!404485 (contains!4046 Nil!13575 (select (arr!19523 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!99189 () Bool)

(declare-fun res!483265 () Bool)

(assert (=> d!99189 (=> res!483265 e!404488)))

(assert (=> d!99189 (= res!483265 (bvsge #b00000000000000000000000000000000 (size!19944 a!3186)))))

(assert (=> d!99189 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13575) e!404488)))

(assert (= (and d!99189 (not res!483265)) b!721259))

(assert (= (and b!721259 res!483266) b!721262))

(assert (= (and b!721259 res!483267) b!721261))

(assert (= (and b!721261 c!79368) b!721258))

(assert (= (and b!721261 (not c!79368)) b!721260))

(assert (= (or b!721258 b!721260) bm!34782))

(assert (=> b!721259 m!676173))

(assert (=> b!721259 m!676173))

(assert (=> b!721259 m!676181))

(assert (=> bm!34782 m!676173))

(declare-fun m!676183 () Bool)

(assert (=> bm!34782 m!676183))

(assert (=> b!721261 m!676173))

(assert (=> b!721261 m!676173))

(assert (=> b!721261 m!676181))

(assert (=> b!721262 m!676173))

(assert (=> b!721262 m!676173))

(declare-fun m!676187 () Bool)

(assert (=> b!721262 m!676187))

(assert (=> b!720957 d!99189))

(declare-fun b!721263 () Bool)

(declare-fun lt!320033 () SeekEntryResult!7130)

(assert (=> b!721263 (and (bvsge (index!30889 lt!320033) #b00000000000000000000000000000000) (bvslt (index!30889 lt!320033) (size!19944 a!3186)))))

(declare-fun e!404490 () Bool)

(assert (=> b!721263 (= e!404490 (= (select (arr!19523 a!3186) (index!30889 lt!320033)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!99191 () Bool)

(declare-fun e!404492 () Bool)

(assert (=> d!99191 e!404492))

(declare-fun c!79370 () Bool)

(assert (=> d!99191 (= c!79370 (and (is-Intermediate!7130 lt!320033) (undefined!7942 lt!320033)))))

(declare-fun e!404491 () SeekEntryResult!7130)

(assert (=> d!99191 (= lt!320033 e!404491)))

(declare-fun c!79371 () Bool)

(assert (=> d!99191 (= c!79371 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!320034 () (_ BitVec 64))

(assert (=> d!99191 (= lt!320034 (select (arr!19523 a!3186) (toIndex!0 (select (arr!19523 a!3186) j!159) mask!3328)))))

(assert (=> d!99191 (validMask!0 mask!3328)))

(assert (=> d!99191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19523 a!3186) j!159) mask!3328) (select (arr!19523 a!3186) j!159) a!3186 mask!3328) lt!320033)))

(declare-fun b!721264 () Bool)

(assert (=> b!721264 (and (bvsge (index!30889 lt!320033) #b00000000000000000000000000000000) (bvslt (index!30889 lt!320033) (size!19944 a!3186)))))

(declare-fun res!483269 () Bool)

(assert (=> b!721264 (= res!483269 (= (select (arr!19523 a!3186) (index!30889 lt!320033)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!721264 (=> res!483269 e!404490)))

(declare-fun b!721265 () Bool)

(assert (=> b!721265 (= e!404491 (Intermediate!7130 true (toIndex!0 (select (arr!19523 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!721266 () Bool)

(assert (=> b!721266 (= e!404492 (bvsge (x!61915 lt!320033) #b01111111111111111111111111111110))))

(declare-fun e!404489 () SeekEntryResult!7130)

(declare-fun b!721267 () Bool)

(assert (=> b!721267 (= e!404489 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19523 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19523 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!721268 () Bool)

(assert (=> b!721268 (= e!404489 (Intermediate!7130 false (toIndex!0 (select (arr!19523 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!721269 () Bool)

(assert (=> b!721269 (= e!404491 e!404489)))

(declare-fun c!79369 () Bool)

(assert (=> b!721269 (= c!79369 (or (= lt!320034 (select (arr!19523 a!3186) j!159)) (= (bvadd lt!320034 lt!320034) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721270 () Bool)

(declare-fun e!404493 () Bool)

(assert (=> b!721270 (= e!404492 e!404493)))

(declare-fun res!483268 () Bool)

(assert (=> b!721270 (= res!483268 (and (is-Intermediate!7130 lt!320033) (not (undefined!7942 lt!320033)) (bvslt (x!61915 lt!320033) #b01111111111111111111111111111110) (bvsge (x!61915 lt!320033) #b00000000000000000000000000000000) (bvsge (x!61915 lt!320033) #b00000000000000000000000000000000)))))

(assert (=> b!721270 (=> (not res!483268) (not e!404493))))

(declare-fun b!721271 () Bool)

(assert (=> b!721271 (and (bvsge (index!30889 lt!320033) #b00000000000000000000000000000000) (bvslt (index!30889 lt!320033) (size!19944 a!3186)))))

(declare-fun res!483270 () Bool)

(assert (=> b!721271 (= res!483270 (= (select (arr!19523 a!3186) (index!30889 lt!320033)) (select (arr!19523 a!3186) j!159)))))

(assert (=> b!721271 (=> res!483270 e!404490)))

(assert (=> b!721271 (= e!404493 e!404490)))

(assert (= (and d!99191 c!79371) b!721265))

(assert (= (and d!99191 (not c!79371)) b!721269))

(assert (= (and b!721269 c!79369) b!721268))

(assert (= (and b!721269 (not c!79369)) b!721267))

(assert (= (and d!99191 c!79370) b!721266))

(assert (= (and d!99191 (not c!79370)) b!721270))

(assert (= (and b!721270 res!483268) b!721271))

(assert (= (and b!721271 (not res!483270)) b!721264))

(assert (= (and b!721264 (not res!483269)) b!721263))

(declare-fun m!676191 () Bool)

(assert (=> b!721263 m!676191))

(assert (=> b!721271 m!676191))

(assert (=> b!721267 m!676035))

(declare-fun m!676193 () Bool)

(assert (=> b!721267 m!676193))

(assert (=> b!721267 m!676193))

(assert (=> b!721267 m!676013))

(declare-fun m!676195 () Bool)

(assert (=> b!721267 m!676195))

(assert (=> d!99191 m!676035))

(declare-fun m!676197 () Bool)

(assert (=> d!99191 m!676197))

(assert (=> d!99191 m!676027))

(assert (=> b!721264 m!676191))

(assert (=> b!720954 d!99191))

(declare-fun d!99193 () Bool)

(declare-fun lt!320036 () (_ BitVec 32))

(declare-fun lt!320035 () (_ BitVec 32))

(assert (=> d!99193 (= lt!320036 (bvmul (bvxor lt!320035 (bvlshr lt!320035 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99193 (= lt!320035 ((_ extract 31 0) (bvand (bvxor (select (arr!19523 a!3186) j!159) (bvlshr (select (arr!19523 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99193 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!483234 (let ((h!14628 ((_ extract 31 0) (bvand (bvxor (select (arr!19523 a!3186) j!159) (bvlshr (select (arr!19523 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61924 (bvmul (bvxor h!14628 (bvlshr h!14628 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61924 (bvlshr x!61924 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!483234 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!483234 #b00000000000000000000000000000000))))))

(assert (=> d!99193 (= (toIndex!0 (select (arr!19523 a!3186) j!159) mask!3328) (bvand (bvxor lt!320036 (bvlshr lt!320036 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720954 d!99193))

(declare-fun d!99195 () Bool)

(declare-fun res!483275 () Bool)

(declare-fun e!404498 () Bool)

(assert (=> d!99195 (=> res!483275 e!404498)))

(assert (=> d!99195 (= res!483275 (= (select (arr!19523 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99195 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!404498)))

(declare-fun b!721276 () Bool)

(declare-fun e!404499 () Bool)

(assert (=> b!721276 (= e!404498 e!404499)))

(declare-fun res!483276 () Bool)

(assert (=> b!721276 (=> (not res!483276) (not e!404499))))

(assert (=> b!721276 (= res!483276 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19944 a!3186)))))

(declare-fun b!721277 () Bool)

(assert (=> b!721277 (= e!404499 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99195 (not res!483275)) b!721276))

(assert (= (and b!721276 res!483276) b!721277))

(assert (=> d!99195 m!676173))

(declare-fun m!676199 () Bool)

(assert (=> b!721277 m!676199))

(assert (=> b!720955 d!99195))

(push 1)

