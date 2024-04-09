; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67714 () Bool)

(assert start!67714)

(declare-fun b!784622 () Bool)

(declare-fun e!436250 () Bool)

(assert (=> b!784622 (= e!436250 true)))

(declare-fun e!436252 () Bool)

(assert (=> b!784622 e!436252))

(declare-fun res!531130 () Bool)

(assert (=> b!784622 (=> (not res!531130) (not e!436252))))

(declare-fun lt!349818 () (_ BitVec 64))

(assert (=> b!784622 (= res!531130 (= lt!349818 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27094 0))(
  ( (Unit!27095) )
))
(declare-fun lt!349825 () Unit!27094)

(declare-fun e!436258 () Unit!27094)

(assert (=> b!784622 (= lt!349825 e!436258)))

(declare-fun c!87156 () Bool)

(assert (=> b!784622 (= c!87156 (= lt!349818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784623 () Bool)

(declare-fun res!531140 () Bool)

(declare-fun e!436249 () Bool)

(assert (=> b!784623 (=> (not res!531140) (not e!436249))))

(declare-datatypes ((array!42709 0))(
  ( (array!42710 (arr!20439 (Array (_ BitVec 32) (_ BitVec 64))) (size!20860 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42709)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42709 (_ BitVec 32)) Bool)

(assert (=> b!784623 (= res!531140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784624 () Bool)

(declare-fun e!436256 () Bool)

(declare-fun e!436254 () Bool)

(assert (=> b!784624 (= e!436256 e!436254)))

(declare-fun res!531139 () Bool)

(assert (=> b!784624 (=> res!531139 e!436254)))

(declare-datatypes ((SeekEntryResult!8046 0))(
  ( (MissingZero!8046 (index!34551 (_ BitVec 32))) (Found!8046 (index!34552 (_ BitVec 32))) (Intermediate!8046 (undefined!8858 Bool) (index!34553 (_ BitVec 32)) (x!65531 (_ BitVec 32))) (Undefined!8046) (MissingVacant!8046 (index!34554 (_ BitVec 32))) )
))
(declare-fun lt!349819 () SeekEntryResult!8046)

(declare-fun lt!349822 () SeekEntryResult!8046)

(assert (=> b!784624 (= res!531139 (not (= lt!349819 lt!349822)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42709 (_ BitVec 32)) SeekEntryResult!8046)

(assert (=> b!784624 (= lt!349819 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20439 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784625 () Bool)

(declare-fun Unit!27096 () Unit!27094)

(assert (=> b!784625 (= e!436258 Unit!27096)))

(assert (=> b!784625 false))

(declare-fun b!784626 () Bool)

(declare-fun e!436247 () Bool)

(assert (=> b!784626 (= e!436247 e!436249)))

(declare-fun res!531142 () Bool)

(assert (=> b!784626 (=> (not res!531142) (not e!436249))))

(declare-fun lt!349821 () SeekEntryResult!8046)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784626 (= res!531142 (or (= lt!349821 (MissingZero!8046 i!1173)) (= lt!349821 (MissingVacant!8046 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42709 (_ BitVec 32)) SeekEntryResult!8046)

(assert (=> b!784626 (= lt!349821 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784628 () Bool)

(declare-fun Unit!27097 () Unit!27094)

(assert (=> b!784628 (= e!436258 Unit!27097)))

(declare-fun b!784629 () Bool)

(declare-fun res!531136 () Bool)

(assert (=> b!784629 (=> (not res!531136) (not e!436247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784629 (= res!531136 (validKeyInArray!0 k!2102))))

(declare-fun b!784630 () Bool)

(declare-fun res!531133 () Bool)

(declare-fun e!436257 () Bool)

(assert (=> b!784630 (=> (not res!531133) (not e!436257))))

(assert (=> b!784630 (= res!531133 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20439 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784631 () Bool)

(assert (=> b!784631 (= e!436249 e!436257)))

(declare-fun res!531131 () Bool)

(assert (=> b!784631 (=> (not res!531131) (not e!436257))))

(declare-fun lt!349817 () SeekEntryResult!8046)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42709 (_ BitVec 32)) SeekEntryResult!8046)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784631 (= res!531131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20439 a!3186) j!159) mask!3328) (select (arr!20439 a!3186) j!159) a!3186 mask!3328) lt!349817))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784631 (= lt!349817 (Intermediate!8046 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784632 () Bool)

(declare-fun e!436248 () Bool)

(assert (=> b!784632 (= e!436248 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20439 a!3186) j!159) a!3186 mask!3328) (Found!8046 j!159)))))

(declare-fun b!784633 () Bool)

(declare-fun e!436253 () Bool)

(assert (=> b!784633 (= e!436253 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20439 a!3186) j!159) a!3186 mask!3328) lt!349822))))

(declare-fun b!784634 () Bool)

(declare-fun res!531138 () Bool)

(assert (=> b!784634 (=> (not res!531138) (not e!436247))))

(declare-fun arrayContainsKey!0 (array!42709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784634 (= res!531138 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784635 () Bool)

(declare-fun res!531145 () Bool)

(assert (=> b!784635 (=> (not res!531145) (not e!436249))))

(assert (=> b!784635 (= res!531145 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20860 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20860 a!3186))))))

(declare-fun b!784636 () Bool)

(declare-fun res!531144 () Bool)

(assert (=> b!784636 (=> (not res!531144) (not e!436252))))

(declare-fun lt!349815 () (_ BitVec 64))

(declare-fun lt!349823 () array!42709)

(assert (=> b!784636 (= res!531144 (= (seekEntryOrOpen!0 lt!349815 lt!349823 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349815 lt!349823 mask!3328)))))

(declare-fun b!784627 () Bool)

(declare-fun res!531141 () Bool)

(assert (=> b!784627 (=> (not res!531141) (not e!436257))))

(assert (=> b!784627 (= res!531141 e!436248)))

(declare-fun c!87155 () Bool)

(assert (=> b!784627 (= c!87155 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!531134 () Bool)

(assert (=> start!67714 (=> (not res!531134) (not e!436247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67714 (= res!531134 (validMask!0 mask!3328))))

(assert (=> start!67714 e!436247))

(assert (=> start!67714 true))

(declare-fun array_inv!16213 (array!42709) Bool)

(assert (=> start!67714 (array_inv!16213 a!3186)))

(declare-fun b!784637 () Bool)

(declare-fun res!531137 () Bool)

(assert (=> b!784637 (=> (not res!531137) (not e!436249))))

(declare-datatypes ((List!14494 0))(
  ( (Nil!14491) (Cons!14490 (h!15613 (_ BitVec 64)) (t!20817 List!14494)) )
))
(declare-fun arrayNoDuplicates!0 (array!42709 (_ BitVec 32) List!14494) Bool)

(assert (=> b!784637 (= res!531137 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14491))))

(declare-fun b!784638 () Bool)

(declare-fun res!531129 () Bool)

(assert (=> b!784638 (=> (not res!531129) (not e!436247))))

(assert (=> b!784638 (= res!531129 (and (= (size!20860 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20860 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20860 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784639 () Bool)

(declare-fun e!436255 () Bool)

(assert (=> b!784639 (= e!436255 (not e!436256))))

(declare-fun res!531143 () Bool)

(assert (=> b!784639 (=> res!531143 e!436256)))

(declare-fun lt!349824 () SeekEntryResult!8046)

(assert (=> b!784639 (= res!531143 (or (not (is-Intermediate!8046 lt!349824)) (bvslt x!1131 (x!65531 lt!349824)) (not (= x!1131 (x!65531 lt!349824))) (not (= index!1321 (index!34553 lt!349824)))))))

(assert (=> b!784639 e!436253))

(declare-fun res!531128 () Bool)

(assert (=> b!784639 (=> (not res!531128) (not e!436253))))

(declare-fun lt!349814 () SeekEntryResult!8046)

(assert (=> b!784639 (= res!531128 (= lt!349814 lt!349822))))

(assert (=> b!784639 (= lt!349822 (Found!8046 j!159))))

(assert (=> b!784639 (= lt!349814 (seekEntryOrOpen!0 (select (arr!20439 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784639 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349820 () Unit!27094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27094)

(assert (=> b!784639 (= lt!349820 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784640 () Bool)

(assert (=> b!784640 (= e!436248 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20439 a!3186) j!159) a!3186 mask!3328) lt!349817))))

(declare-fun b!784641 () Bool)

(assert (=> b!784641 (= e!436252 (= lt!349814 lt!349819))))

(declare-fun b!784642 () Bool)

(assert (=> b!784642 (= e!436257 e!436255)))

(declare-fun res!531132 () Bool)

(assert (=> b!784642 (=> (not res!531132) (not e!436255))))

(declare-fun lt!349816 () SeekEntryResult!8046)

(assert (=> b!784642 (= res!531132 (= lt!349816 lt!349824))))

(assert (=> b!784642 (= lt!349824 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349815 lt!349823 mask!3328))))

(assert (=> b!784642 (= lt!349816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349815 mask!3328) lt!349815 lt!349823 mask!3328))))

(assert (=> b!784642 (= lt!349815 (select (store (arr!20439 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784642 (= lt!349823 (array!42710 (store (arr!20439 a!3186) i!1173 k!2102) (size!20860 a!3186)))))

(declare-fun b!784643 () Bool)

(declare-fun res!531135 () Bool)

(assert (=> b!784643 (=> (not res!531135) (not e!436247))))

(assert (=> b!784643 (= res!531135 (validKeyInArray!0 (select (arr!20439 a!3186) j!159)))))

(declare-fun b!784644 () Bool)

(assert (=> b!784644 (= e!436254 e!436250)))

(declare-fun res!531127 () Bool)

(assert (=> b!784644 (=> res!531127 e!436250)))

(assert (=> b!784644 (= res!531127 (= lt!349818 lt!349815))))

(assert (=> b!784644 (= lt!349818 (select (store (arr!20439 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!67714 res!531134) b!784638))

(assert (= (and b!784638 res!531129) b!784643))

(assert (= (and b!784643 res!531135) b!784629))

(assert (= (and b!784629 res!531136) b!784634))

(assert (= (and b!784634 res!531138) b!784626))

(assert (= (and b!784626 res!531142) b!784623))

(assert (= (and b!784623 res!531140) b!784637))

(assert (= (and b!784637 res!531137) b!784635))

(assert (= (and b!784635 res!531145) b!784631))

(assert (= (and b!784631 res!531131) b!784630))

(assert (= (and b!784630 res!531133) b!784627))

(assert (= (and b!784627 c!87155) b!784640))

(assert (= (and b!784627 (not c!87155)) b!784632))

(assert (= (and b!784627 res!531141) b!784642))

(assert (= (and b!784642 res!531132) b!784639))

(assert (= (and b!784639 res!531128) b!784633))

(assert (= (and b!784639 (not res!531143)) b!784624))

(assert (= (and b!784624 (not res!531139)) b!784644))

(assert (= (and b!784644 (not res!531127)) b!784622))

(assert (= (and b!784622 c!87156) b!784625))

(assert (= (and b!784622 (not c!87156)) b!784628))

(assert (= (and b!784622 res!531130) b!784636))

(assert (= (and b!784636 res!531144) b!784641))

(declare-fun m!726937 () Bool)

(assert (=> b!784626 m!726937))

(declare-fun m!726939 () Bool)

(assert (=> b!784632 m!726939))

(assert (=> b!784632 m!726939))

(declare-fun m!726941 () Bool)

(assert (=> b!784632 m!726941))

(assert (=> b!784633 m!726939))

(assert (=> b!784633 m!726939))

(declare-fun m!726943 () Bool)

(assert (=> b!784633 m!726943))

(declare-fun m!726945 () Bool)

(assert (=> b!784630 m!726945))

(declare-fun m!726947 () Bool)

(assert (=> b!784642 m!726947))

(declare-fun m!726949 () Bool)

(assert (=> b!784642 m!726949))

(declare-fun m!726951 () Bool)

(assert (=> b!784642 m!726951))

(declare-fun m!726953 () Bool)

(assert (=> b!784642 m!726953))

(declare-fun m!726955 () Bool)

(assert (=> b!784642 m!726955))

(assert (=> b!784642 m!726947))

(assert (=> b!784640 m!726939))

(assert (=> b!784640 m!726939))

(declare-fun m!726957 () Bool)

(assert (=> b!784640 m!726957))

(assert (=> b!784643 m!726939))

(assert (=> b!784643 m!726939))

(declare-fun m!726959 () Bool)

(assert (=> b!784643 m!726959))

(assert (=> b!784624 m!726939))

(assert (=> b!784624 m!726939))

(assert (=> b!784624 m!726941))

(assert (=> b!784631 m!726939))

(assert (=> b!784631 m!726939))

(declare-fun m!726961 () Bool)

(assert (=> b!784631 m!726961))

(assert (=> b!784631 m!726961))

(assert (=> b!784631 m!726939))

(declare-fun m!726963 () Bool)

(assert (=> b!784631 m!726963))

(declare-fun m!726965 () Bool)

(assert (=> b!784629 m!726965))

(declare-fun m!726967 () Bool)

(assert (=> b!784637 m!726967))

(declare-fun m!726969 () Bool)

(assert (=> b!784634 m!726969))

(declare-fun m!726971 () Bool)

(assert (=> start!67714 m!726971))

(declare-fun m!726973 () Bool)

(assert (=> start!67714 m!726973))

(declare-fun m!726975 () Bool)

(assert (=> b!784623 m!726975))

(assert (=> b!784639 m!726939))

(assert (=> b!784639 m!726939))

(declare-fun m!726977 () Bool)

(assert (=> b!784639 m!726977))

(declare-fun m!726979 () Bool)

(assert (=> b!784639 m!726979))

(declare-fun m!726981 () Bool)

(assert (=> b!784639 m!726981))

(declare-fun m!726983 () Bool)

(assert (=> b!784636 m!726983))

(declare-fun m!726985 () Bool)

(assert (=> b!784636 m!726985))

(assert (=> b!784644 m!726953))

(declare-fun m!726987 () Bool)

(assert (=> b!784644 m!726987))

(push 1)

