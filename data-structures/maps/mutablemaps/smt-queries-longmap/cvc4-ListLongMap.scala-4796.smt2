; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65858 () Bool)

(assert start!65858)

(declare-fun b!758255 () Bool)

(declare-fun e!422774 () Bool)

(declare-fun e!422773 () Bool)

(assert (=> b!758255 (= e!422774 e!422773)))

(declare-fun res!513070 () Bool)

(assert (=> b!758255 (=> res!513070 e!422773)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41984 0))(
  ( (array!41985 (arr!20102 (Array (_ BitVec 32) (_ BitVec 64))) (size!20523 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41984)

(assert (=> b!758255 (= res!513070 (or (not (= (select (arr!20102 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-datatypes ((SeekEntryResult!7709 0))(
  ( (MissingZero!7709 (index!33203 (_ BitVec 32))) (Found!7709 (index!33204 (_ BitVec 32))) (Intermediate!7709 (undefined!8521 Bool) (index!33205 (_ BitVec 32)) (x!64116 (_ BitVec 32))) (Undefined!7709) (MissingVacant!7709 (index!33206 (_ BitVec 32))) )
))
(declare-fun lt!337805 () SeekEntryResult!7709)

(declare-fun lt!337793 () SeekEntryResult!7709)

(declare-fun lt!337799 () SeekEntryResult!7709)

(declare-fun lt!337804 () SeekEntryResult!7709)

(assert (=> b!758255 (and (= lt!337804 lt!337799) (= lt!337793 lt!337805))))

(declare-fun lt!337801 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!337796 () array!41984)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41984 (_ BitVec 32)) SeekEntryResult!7709)

(assert (=> b!758255 (= lt!337799 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337801 lt!337796 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41984 (_ BitVec 32)) SeekEntryResult!7709)

(assert (=> b!758255 (= lt!337804 (seekEntryOrOpen!0 lt!337801 lt!337796 mask!3328))))

(declare-fun lt!337791 () (_ BitVec 64))

(assert (=> b!758255 (= lt!337791 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!26238 0))(
  ( (Unit!26239) )
))
(declare-fun lt!337797 () Unit!26238)

(declare-fun e!422772 () Unit!26238)

(assert (=> b!758255 (= lt!337797 e!422772)))

(declare-fun c!82979 () Bool)

(assert (=> b!758255 (= c!82979 (= lt!337791 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758256 () Bool)

(declare-fun Unit!26240 () Unit!26238)

(assert (=> b!758256 (= e!422772 Unit!26240)))

(assert (=> b!758256 false))

(declare-fun b!758257 () Bool)

(declare-fun e!422769 () Bool)

(declare-fun e!422775 () Bool)

(assert (=> b!758257 (= e!422769 e!422775)))

(declare-fun res!513064 () Bool)

(assert (=> b!758257 (=> res!513064 e!422775)))

(declare-fun lt!337800 () SeekEntryResult!7709)

(assert (=> b!758257 (= res!513064 (not (= lt!337805 lt!337800)))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!758257 (= lt!337805 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20102 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!422777 () Bool)

(declare-fun b!758258 () Bool)

(assert (=> b!758258 (= e!422777 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20102 a!3186) j!159) a!3186 mask!3328) (Found!7709 j!159)))))

(declare-fun b!758259 () Bool)

(declare-fun e!422770 () Bool)

(declare-fun e!422778 () Bool)

(assert (=> b!758259 (= e!422770 e!422778)))

(declare-fun res!513058 () Bool)

(assert (=> b!758259 (=> (not res!513058) (not e!422778))))

(declare-fun lt!337802 () SeekEntryResult!7709)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758259 (= res!513058 (or (= lt!337802 (MissingZero!7709 i!1173)) (= lt!337802 (MissingVacant!7709 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!758259 (= lt!337802 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758261 () Bool)

(declare-fun e!422768 () Bool)

(assert (=> b!758261 (= e!422768 (not e!422769))))

(declare-fun res!513071 () Bool)

(assert (=> b!758261 (=> res!513071 e!422769)))

(declare-fun lt!337798 () SeekEntryResult!7709)

(assert (=> b!758261 (= res!513071 (or (not (is-Intermediate!7709 lt!337798)) (bvslt x!1131 (x!64116 lt!337798)) (not (= x!1131 (x!64116 lt!337798))) (not (= index!1321 (index!33205 lt!337798)))))))

(declare-fun e!422771 () Bool)

(assert (=> b!758261 e!422771))

(declare-fun res!513066 () Bool)

(assert (=> b!758261 (=> (not res!513066) (not e!422771))))

(assert (=> b!758261 (= res!513066 (= lt!337793 lt!337800))))

(assert (=> b!758261 (= lt!337800 (Found!7709 j!159))))

(assert (=> b!758261 (= lt!337793 (seekEntryOrOpen!0 (select (arr!20102 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41984 (_ BitVec 32)) Bool)

(assert (=> b!758261 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337792 () Unit!26238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41984 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26238)

(assert (=> b!758261 (= lt!337792 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758262 () Bool)

(declare-fun res!513073 () Bool)

(assert (=> b!758262 (=> (not res!513073) (not e!422778))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758262 (= res!513073 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20523 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20523 a!3186))))))

(declare-fun lt!337803 () SeekEntryResult!7709)

(declare-fun b!758263 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41984 (_ BitVec 32)) SeekEntryResult!7709)

(assert (=> b!758263 (= e!422777 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20102 a!3186) j!159) a!3186 mask!3328) lt!337803))))

(declare-fun b!758264 () Bool)

(assert (=> b!758264 (= e!422775 e!422774)))

(declare-fun res!513065 () Bool)

(assert (=> b!758264 (=> res!513065 e!422774)))

(assert (=> b!758264 (= res!513065 (= lt!337791 lt!337801))))

(assert (=> b!758264 (= lt!337791 (select (store (arr!20102 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758265 () Bool)

(assert (=> b!758265 (= e!422771 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20102 a!3186) j!159) a!3186 mask!3328) lt!337800))))

(declare-fun b!758266 () Bool)

(declare-fun res!513061 () Bool)

(declare-fun e!422767 () Bool)

(assert (=> b!758266 (=> (not res!513061) (not e!422767))))

(assert (=> b!758266 (= res!513061 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20102 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758267 () Bool)

(declare-fun Unit!26241 () Unit!26238)

(assert (=> b!758267 (= e!422772 Unit!26241)))

(declare-fun b!758268 () Bool)

(assert (=> b!758268 (= e!422778 e!422767)))

(declare-fun res!513069 () Bool)

(assert (=> b!758268 (=> (not res!513069) (not e!422767))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758268 (= res!513069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20102 a!3186) j!159) mask!3328) (select (arr!20102 a!3186) j!159) a!3186 mask!3328) lt!337803))))

(assert (=> b!758268 (= lt!337803 (Intermediate!7709 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758269 () Bool)

(declare-fun res!513067 () Bool)

(assert (=> b!758269 (=> (not res!513067) (not e!422770))))

(assert (=> b!758269 (= res!513067 (and (= (size!20523 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20523 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20523 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758270 () Bool)

(declare-fun res!513062 () Bool)

(assert (=> b!758270 (=> (not res!513062) (not e!422770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758270 (= res!513062 (validKeyInArray!0 k!2102))))

(declare-fun b!758260 () Bool)

(declare-fun res!513072 () Bool)

(assert (=> b!758260 (=> (not res!513072) (not e!422767))))

(assert (=> b!758260 (= res!513072 e!422777)))

(declare-fun c!82980 () Bool)

(assert (=> b!758260 (= c!82980 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!513068 () Bool)

(assert (=> start!65858 (=> (not res!513068) (not e!422770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65858 (= res!513068 (validMask!0 mask!3328))))

(assert (=> start!65858 e!422770))

(assert (=> start!65858 true))

(declare-fun array_inv!15876 (array!41984) Bool)

(assert (=> start!65858 (array_inv!15876 a!3186)))

(declare-fun b!758271 () Bool)

(assert (=> b!758271 (= e!422773 true)))

(assert (=> b!758271 (= lt!337799 lt!337805)))

(declare-fun lt!337794 () Unit!26238)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41984 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26238)

(assert (=> b!758271 (= lt!337794 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758272 () Bool)

(declare-fun res!513063 () Bool)

(assert (=> b!758272 (=> (not res!513063) (not e!422770))))

(declare-fun arrayContainsKey!0 (array!41984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758272 (= res!513063 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758273 () Bool)

(declare-fun res!513060 () Bool)

(assert (=> b!758273 (=> (not res!513060) (not e!422778))))

(assert (=> b!758273 (= res!513060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758274 () Bool)

(assert (=> b!758274 (= e!422767 e!422768)))

(declare-fun res!513059 () Bool)

(assert (=> b!758274 (=> (not res!513059) (not e!422768))))

(declare-fun lt!337795 () SeekEntryResult!7709)

(assert (=> b!758274 (= res!513059 (= lt!337795 lt!337798))))

(assert (=> b!758274 (= lt!337798 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337801 lt!337796 mask!3328))))

(assert (=> b!758274 (= lt!337795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337801 mask!3328) lt!337801 lt!337796 mask!3328))))

(assert (=> b!758274 (= lt!337801 (select (store (arr!20102 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758274 (= lt!337796 (array!41985 (store (arr!20102 a!3186) i!1173 k!2102) (size!20523 a!3186)))))

(declare-fun b!758275 () Bool)

(declare-fun res!513075 () Bool)

(assert (=> b!758275 (=> (not res!513075) (not e!422778))))

(declare-datatypes ((List!14157 0))(
  ( (Nil!14154) (Cons!14153 (h!15225 (_ BitVec 64)) (t!20480 List!14157)) )
))
(declare-fun arrayNoDuplicates!0 (array!41984 (_ BitVec 32) List!14157) Bool)

(assert (=> b!758275 (= res!513075 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14154))))

(declare-fun b!758276 () Bool)

(declare-fun res!513074 () Bool)

(assert (=> b!758276 (=> (not res!513074) (not e!422770))))

(assert (=> b!758276 (= res!513074 (validKeyInArray!0 (select (arr!20102 a!3186) j!159)))))

(assert (= (and start!65858 res!513068) b!758269))

(assert (= (and b!758269 res!513067) b!758276))

(assert (= (and b!758276 res!513074) b!758270))

(assert (= (and b!758270 res!513062) b!758272))

(assert (= (and b!758272 res!513063) b!758259))

(assert (= (and b!758259 res!513058) b!758273))

(assert (= (and b!758273 res!513060) b!758275))

(assert (= (and b!758275 res!513075) b!758262))

(assert (= (and b!758262 res!513073) b!758268))

(assert (= (and b!758268 res!513069) b!758266))

(assert (= (and b!758266 res!513061) b!758260))

(assert (= (and b!758260 c!82980) b!758263))

(assert (= (and b!758260 (not c!82980)) b!758258))

(assert (= (and b!758260 res!513072) b!758274))

(assert (= (and b!758274 res!513059) b!758261))

(assert (= (and b!758261 res!513066) b!758265))

(assert (= (and b!758261 (not res!513071)) b!758257))

(assert (= (and b!758257 (not res!513064)) b!758264))

(assert (= (and b!758264 (not res!513065)) b!758255))

(assert (= (and b!758255 c!82979) b!758256))

(assert (= (and b!758255 (not c!82979)) b!758267))

(assert (= (and b!758255 (not res!513070)) b!758271))

(declare-fun m!705845 () Bool)

(assert (=> b!758259 m!705845))

(declare-fun m!705847 () Bool)

(assert (=> b!758271 m!705847))

(declare-fun m!705849 () Bool)

(assert (=> b!758274 m!705849))

(assert (=> b!758274 m!705849))

(declare-fun m!705851 () Bool)

(assert (=> b!758274 m!705851))

(declare-fun m!705853 () Bool)

(assert (=> b!758274 m!705853))

(declare-fun m!705855 () Bool)

(assert (=> b!758274 m!705855))

(declare-fun m!705857 () Bool)

(assert (=> b!758274 m!705857))

(declare-fun m!705859 () Bool)

(assert (=> b!758268 m!705859))

(assert (=> b!758268 m!705859))

(declare-fun m!705861 () Bool)

(assert (=> b!758268 m!705861))

(assert (=> b!758268 m!705861))

(assert (=> b!758268 m!705859))

(declare-fun m!705863 () Bool)

(assert (=> b!758268 m!705863))

(declare-fun m!705865 () Bool)

(assert (=> start!65858 m!705865))

(declare-fun m!705867 () Bool)

(assert (=> start!65858 m!705867))

(declare-fun m!705869 () Bool)

(assert (=> b!758266 m!705869))

(declare-fun m!705871 () Bool)

(assert (=> b!758273 m!705871))

(assert (=> b!758264 m!705853))

(declare-fun m!705873 () Bool)

(assert (=> b!758264 m!705873))

(assert (=> b!758258 m!705859))

(assert (=> b!758258 m!705859))

(declare-fun m!705875 () Bool)

(assert (=> b!758258 m!705875))

(assert (=> b!758257 m!705859))

(assert (=> b!758257 m!705859))

(assert (=> b!758257 m!705875))

(declare-fun m!705877 () Bool)

(assert (=> b!758275 m!705877))

(assert (=> b!758261 m!705859))

(assert (=> b!758261 m!705859))

(declare-fun m!705879 () Bool)

(assert (=> b!758261 m!705879))

(declare-fun m!705881 () Bool)

(assert (=> b!758261 m!705881))

(declare-fun m!705883 () Bool)

(assert (=> b!758261 m!705883))

(assert (=> b!758263 m!705859))

(assert (=> b!758263 m!705859))

(declare-fun m!705885 () Bool)

(assert (=> b!758263 m!705885))

(assert (=> b!758276 m!705859))

(assert (=> b!758276 m!705859))

(declare-fun m!705887 () Bool)

(assert (=> b!758276 m!705887))

(declare-fun m!705889 () Bool)

(assert (=> b!758255 m!705889))

(declare-fun m!705891 () Bool)

(assert (=> b!758255 m!705891))

(declare-fun m!705893 () Bool)

(assert (=> b!758255 m!705893))

(declare-fun m!705895 () Bool)

(assert (=> b!758272 m!705895))

(assert (=> b!758265 m!705859))

(assert (=> b!758265 m!705859))

(declare-fun m!705897 () Bool)

(assert (=> b!758265 m!705897))

(declare-fun m!705899 () Bool)

(assert (=> b!758270 m!705899))

(push 1)

