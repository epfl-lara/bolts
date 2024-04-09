; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66772 () Bool)

(assert start!66772)

(declare-fun b!768905 () Bool)

(declare-datatypes ((Unit!26428 0))(
  ( (Unit!26429) )
))
(declare-fun e!428208 () Unit!26428)

(declare-fun Unit!26430 () Unit!26428)

(assert (=> b!768905 (= e!428208 Unit!26430)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42289 0))(
  ( (array!42290 (arr!20241 (Array (_ BitVec 32) (_ BitVec 64))) (size!20662 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42289)

(declare-datatypes ((SeekEntryResult!7848 0))(
  ( (MissingZero!7848 (index!33759 (_ BitVec 32))) (Found!7848 (index!33760 (_ BitVec 32))) (Intermediate!7848 (undefined!8660 Bool) (index!33761 (_ BitVec 32)) (x!64724 (_ BitVec 32))) (Undefined!7848) (MissingVacant!7848 (index!33762 (_ BitVec 32))) )
))
(declare-fun lt!342090 () SeekEntryResult!7848)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42289 (_ BitVec 32)) SeekEntryResult!7848)

(assert (=> b!768905 (= lt!342090 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20241 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342095 () (_ BitVec 32))

(assert (=> b!768905 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342095 resIntermediateIndex!5 (select (arr!20241 a!3186) j!159) a!3186 mask!3328) (Found!7848 j!159))))

(declare-fun b!768906 () Bool)

(declare-fun res!520062 () Bool)

(declare-fun e!428209 () Bool)

(assert (=> b!768906 (=> (not res!520062) (not e!428209))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!768906 (= res!520062 (and (= (size!20662 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20662 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20662 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!768907 () Bool)

(declare-fun res!520060 () Bool)

(assert (=> b!768907 (=> (not res!520060) (not e!428209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768907 (= res!520060 (validKeyInArray!0 (select (arr!20241 a!3186) j!159)))))

(declare-fun b!768908 () Bool)

(declare-fun e!428207 () Bool)

(assert (=> b!768908 (= e!428209 e!428207)))

(declare-fun res!520068 () Bool)

(assert (=> b!768908 (=> (not res!520068) (not e!428207))))

(declare-fun lt!342096 () SeekEntryResult!7848)

(assert (=> b!768908 (= res!520068 (or (= lt!342096 (MissingZero!7848 i!1173)) (= lt!342096 (MissingVacant!7848 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42289 (_ BitVec 32)) SeekEntryResult!7848)

(assert (=> b!768908 (= lt!342096 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!768909 () Bool)

(declare-fun Unit!26431 () Unit!26428)

(assert (=> b!768909 (= e!428208 Unit!26431)))

(declare-fun lt!342097 () SeekEntryResult!7848)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42289 (_ BitVec 32)) SeekEntryResult!7848)

(assert (=> b!768909 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342095 (select (arr!20241 a!3186) j!159) a!3186 mask!3328) lt!342097)))

(declare-fun b!768910 () Bool)

(declare-fun res!520074 () Bool)

(declare-fun e!428202 () Bool)

(assert (=> b!768910 (=> (not res!520074) (not e!428202))))

(declare-fun e!428203 () Bool)

(assert (=> b!768910 (= res!520074 e!428203)))

(declare-fun c!84818 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!768910 (= c!84818 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!768911 () Bool)

(declare-fun e!428205 () Bool)

(declare-fun e!428201 () Bool)

(assert (=> b!768911 (= e!428205 e!428201)))

(declare-fun res!520071 () Bool)

(assert (=> b!768911 (=> (not res!520071) (not e!428201))))

(declare-fun lt!342098 () SeekEntryResult!7848)

(assert (=> b!768911 (= res!520071 (= (seekEntryOrOpen!0 (select (arr!20241 a!3186) j!159) a!3186 mask!3328) lt!342098))))

(assert (=> b!768911 (= lt!342098 (Found!7848 j!159))))

(declare-fun b!768912 () Bool)

(declare-fun e!428206 () Bool)

(assert (=> b!768912 (= e!428206 true)))

(declare-fun lt!342092 () Unit!26428)

(assert (=> b!768912 (= lt!342092 e!428208)))

(declare-fun c!84819 () Bool)

(assert (=> b!768912 (= c!84819 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768912 (= lt!342095 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768913 () Bool)

(declare-fun e!428200 () Bool)

(assert (=> b!768913 (= e!428200 (not e!428206))))

(declare-fun res!520067 () Bool)

(assert (=> b!768913 (=> res!520067 e!428206)))

(declare-fun lt!342099 () SeekEntryResult!7848)

(assert (=> b!768913 (= res!520067 (or (not (is-Intermediate!7848 lt!342099)) (bvsge x!1131 (x!64724 lt!342099))))))

(assert (=> b!768913 e!428205))

(declare-fun res!520070 () Bool)

(assert (=> b!768913 (=> (not res!520070) (not e!428205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42289 (_ BitVec 32)) Bool)

(assert (=> b!768913 (= res!520070 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342093 () Unit!26428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26428)

(assert (=> b!768913 (= lt!342093 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768914 () Bool)

(declare-fun res!520066 () Bool)

(assert (=> b!768914 (=> (not res!520066) (not e!428207))))

(declare-datatypes ((List!14296 0))(
  ( (Nil!14293) (Cons!14292 (h!15391 (_ BitVec 64)) (t!20619 List!14296)) )
))
(declare-fun arrayNoDuplicates!0 (array!42289 (_ BitVec 32) List!14296) Bool)

(assert (=> b!768914 (= res!520066 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14293))))

(declare-fun b!768915 () Bool)

(declare-fun res!520063 () Bool)

(assert (=> b!768915 (=> (not res!520063) (not e!428207))))

(assert (=> b!768915 (= res!520063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!768916 () Bool)

(assert (=> b!768916 (= e!428203 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20241 a!3186) j!159) a!3186 mask!3328) lt!342097))))

(declare-fun b!768917 () Bool)

(declare-fun res!520065 () Bool)

(assert (=> b!768917 (=> (not res!520065) (not e!428202))))

(assert (=> b!768917 (= res!520065 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20241 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768918 () Bool)

(declare-fun res!520064 () Bool)

(assert (=> b!768918 (=> (not res!520064) (not e!428207))))

(assert (=> b!768918 (= res!520064 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20662 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20662 a!3186))))))

(declare-fun b!768919 () Bool)

(declare-fun res!520072 () Bool)

(assert (=> b!768919 (=> (not res!520072) (not e!428209))))

(assert (=> b!768919 (= res!520072 (validKeyInArray!0 k!2102))))

(declare-fun b!768920 () Bool)

(assert (=> b!768920 (= e!428203 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20241 a!3186) j!159) a!3186 mask!3328) (Found!7848 j!159)))))

(declare-fun b!768921 () Bool)

(declare-fun res!520061 () Bool)

(assert (=> b!768921 (=> (not res!520061) (not e!428209))))

(declare-fun arrayContainsKey!0 (array!42289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768921 (= res!520061 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768922 () Bool)

(assert (=> b!768922 (= e!428207 e!428202)))

(declare-fun res!520073 () Bool)

(assert (=> b!768922 (=> (not res!520073) (not e!428202))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768922 (= res!520073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20241 a!3186) j!159) mask!3328) (select (arr!20241 a!3186) j!159) a!3186 mask!3328) lt!342097))))

(assert (=> b!768922 (= lt!342097 (Intermediate!7848 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!520075 () Bool)

(assert (=> start!66772 (=> (not res!520075) (not e!428209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66772 (= res!520075 (validMask!0 mask!3328))))

(assert (=> start!66772 e!428209))

(assert (=> start!66772 true))

(declare-fun array_inv!16015 (array!42289) Bool)

(assert (=> start!66772 (array_inv!16015 a!3186)))

(declare-fun b!768923 () Bool)

(assert (=> b!768923 (= e!428201 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20241 a!3186) j!159) a!3186 mask!3328) lt!342098))))

(declare-fun b!768924 () Bool)

(assert (=> b!768924 (= e!428202 e!428200)))

(declare-fun res!520069 () Bool)

(assert (=> b!768924 (=> (not res!520069) (not e!428200))))

(declare-fun lt!342094 () SeekEntryResult!7848)

(assert (=> b!768924 (= res!520069 (= lt!342094 lt!342099))))

(declare-fun lt!342100 () array!42289)

(declare-fun lt!342091 () (_ BitVec 64))

(assert (=> b!768924 (= lt!342099 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342091 lt!342100 mask!3328))))

(assert (=> b!768924 (= lt!342094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342091 mask!3328) lt!342091 lt!342100 mask!3328))))

(assert (=> b!768924 (= lt!342091 (select (store (arr!20241 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!768924 (= lt!342100 (array!42290 (store (arr!20241 a!3186) i!1173 k!2102) (size!20662 a!3186)))))

(assert (= (and start!66772 res!520075) b!768906))

(assert (= (and b!768906 res!520062) b!768907))

(assert (= (and b!768907 res!520060) b!768919))

(assert (= (and b!768919 res!520072) b!768921))

(assert (= (and b!768921 res!520061) b!768908))

(assert (= (and b!768908 res!520068) b!768915))

(assert (= (and b!768915 res!520063) b!768914))

(assert (= (and b!768914 res!520066) b!768918))

(assert (= (and b!768918 res!520064) b!768922))

(assert (= (and b!768922 res!520073) b!768917))

(assert (= (and b!768917 res!520065) b!768910))

(assert (= (and b!768910 c!84818) b!768916))

(assert (= (and b!768910 (not c!84818)) b!768920))

(assert (= (and b!768910 res!520074) b!768924))

(assert (= (and b!768924 res!520069) b!768913))

(assert (= (and b!768913 res!520070) b!768911))

(assert (= (and b!768911 res!520071) b!768923))

(assert (= (and b!768913 (not res!520067)) b!768912))

(assert (= (and b!768912 c!84819) b!768909))

(assert (= (and b!768912 (not c!84819)) b!768905))

(declare-fun m!714451 () Bool)

(assert (=> b!768911 m!714451))

(assert (=> b!768911 m!714451))

(declare-fun m!714453 () Bool)

(assert (=> b!768911 m!714453))

(declare-fun m!714455 () Bool)

(assert (=> b!768913 m!714455))

(declare-fun m!714457 () Bool)

(assert (=> b!768913 m!714457))

(declare-fun m!714459 () Bool)

(assert (=> b!768919 m!714459))

(assert (=> b!768916 m!714451))

(assert (=> b!768916 m!714451))

(declare-fun m!714461 () Bool)

(assert (=> b!768916 m!714461))

(declare-fun m!714463 () Bool)

(assert (=> b!768908 m!714463))

(declare-fun m!714465 () Bool)

(assert (=> start!66772 m!714465))

(declare-fun m!714467 () Bool)

(assert (=> start!66772 m!714467))

(declare-fun m!714469 () Bool)

(assert (=> b!768917 m!714469))

(assert (=> b!768922 m!714451))

(assert (=> b!768922 m!714451))

(declare-fun m!714471 () Bool)

(assert (=> b!768922 m!714471))

(assert (=> b!768922 m!714471))

(assert (=> b!768922 m!714451))

(declare-fun m!714473 () Bool)

(assert (=> b!768922 m!714473))

(assert (=> b!768923 m!714451))

(assert (=> b!768923 m!714451))

(declare-fun m!714475 () Bool)

(assert (=> b!768923 m!714475))

(assert (=> b!768920 m!714451))

(assert (=> b!768920 m!714451))

(declare-fun m!714477 () Bool)

(assert (=> b!768920 m!714477))

(assert (=> b!768909 m!714451))

(assert (=> b!768909 m!714451))

(declare-fun m!714479 () Bool)

(assert (=> b!768909 m!714479))

(declare-fun m!714481 () Bool)

(assert (=> b!768921 m!714481))

(assert (=> b!768907 m!714451))

(assert (=> b!768907 m!714451))

(declare-fun m!714483 () Bool)

(assert (=> b!768907 m!714483))

(declare-fun m!714485 () Bool)

(assert (=> b!768915 m!714485))

(declare-fun m!714487 () Bool)

(assert (=> b!768914 m!714487))

(assert (=> b!768905 m!714451))

(assert (=> b!768905 m!714451))

(assert (=> b!768905 m!714477))

(assert (=> b!768905 m!714451))

(declare-fun m!714489 () Bool)

(assert (=> b!768905 m!714489))

(declare-fun m!714491 () Bool)

(assert (=> b!768912 m!714491))

(declare-fun m!714493 () Bool)

(assert (=> b!768924 m!714493))

(declare-fun m!714495 () Bool)

(assert (=> b!768924 m!714495))

(declare-fun m!714497 () Bool)

(assert (=> b!768924 m!714497))

(declare-fun m!714499 () Bool)

(assert (=> b!768924 m!714499))

(declare-fun m!714501 () Bool)

(assert (=> b!768924 m!714501))

(assert (=> b!768924 m!714493))

(push 1)

