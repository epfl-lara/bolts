; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65790 () Bool)

(assert start!65790)

(declare-fun b!755917 () Bool)

(declare-datatypes ((Unit!26102 0))(
  ( (Unit!26103) )
))
(declare-fun e!421545 () Unit!26102)

(declare-fun Unit!26104 () Unit!26102)

(assert (=> b!755917 (= e!421545 Unit!26104)))

(assert (=> b!755917 false))

(declare-fun b!755918 () Bool)

(declare-fun res!511146 () Bool)

(declare-fun e!421546 () Bool)

(assert (=> b!755918 (=> (not res!511146) (not e!421546))))

(declare-datatypes ((array!41916 0))(
  ( (array!41917 (arr!20068 (Array (_ BitVec 32) (_ BitVec 64))) (size!20489 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41916)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755918 (= res!511146 (validKeyInArray!0 (select (arr!20068 a!3186) j!159)))))

(declare-fun b!755919 () Bool)

(declare-fun res!511144 () Bool)

(declare-fun e!421548 () Bool)

(assert (=> b!755919 (=> (not res!511144) (not e!421548))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41916 (_ BitVec 32)) Bool)

(assert (=> b!755919 (= res!511144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755920 () Bool)

(declare-fun Unit!26105 () Unit!26102)

(assert (=> b!755920 (= e!421545 Unit!26105)))

(declare-fun b!755921 () Bool)

(assert (=> b!755921 (= e!421546 e!421548)))

(declare-fun res!511138 () Bool)

(assert (=> b!755921 (=> (not res!511138) (not e!421548))))

(declare-datatypes ((SeekEntryResult!7675 0))(
  ( (MissingZero!7675 (index!33067 (_ BitVec 32))) (Found!7675 (index!33068 (_ BitVec 32))) (Intermediate!7675 (undefined!8487 Bool) (index!33069 (_ BitVec 32)) (x!63994 (_ BitVec 32))) (Undefined!7675) (MissingVacant!7675 (index!33070 (_ BitVec 32))) )
))
(declare-fun lt!336548 () SeekEntryResult!7675)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755921 (= res!511138 (or (= lt!336548 (MissingZero!7675 i!1173)) (= lt!336548 (MissingVacant!7675 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41916 (_ BitVec 32)) SeekEntryResult!7675)

(assert (=> b!755921 (= lt!336548 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!755922 () Bool)

(declare-fun e!421550 () Bool)

(declare-fun e!421554 () Bool)

(assert (=> b!755922 (= e!421550 e!421554)))

(declare-fun res!511136 () Bool)

(assert (=> b!755922 (=> res!511136 e!421554)))

(declare-fun lt!336547 () (_ BitVec 64))

(declare-fun lt!336549 () (_ BitVec 64))

(assert (=> b!755922 (= res!511136 (= lt!336547 lt!336549))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!755922 (= lt!336547 (select (store (arr!20068 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!755923 () Bool)

(declare-fun e!421552 () Bool)

(declare-fun lt!336551 () SeekEntryResult!7675)

(declare-fun lt!336543 () SeekEntryResult!7675)

(assert (=> b!755923 (= e!421552 (= lt!336551 lt!336543))))

(declare-fun b!755924 () Bool)

(assert (=> b!755924 (= e!421554 true)))

(assert (=> b!755924 e!421552))

(declare-fun res!511132 () Bool)

(assert (=> b!755924 (=> (not res!511132) (not e!421552))))

(assert (=> b!755924 (= res!511132 (= lt!336547 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336552 () Unit!26102)

(assert (=> b!755924 (= lt!336552 e!421545)))

(declare-fun c!82776 () Bool)

(assert (=> b!755924 (= c!82776 (= lt!336547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755925 () Bool)

(declare-fun res!511133 () Bool)

(declare-fun e!421553 () Bool)

(assert (=> b!755925 (=> (not res!511133) (not e!421553))))

(declare-fun e!421551 () Bool)

(assert (=> b!755925 (= res!511133 e!421551)))

(declare-fun c!82775 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755925 (= c!82775 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755926 () Bool)

(assert (=> b!755926 (= e!421548 e!421553)))

(declare-fun res!511141 () Bool)

(assert (=> b!755926 (=> (not res!511141) (not e!421553))))

(declare-fun lt!336554 () SeekEntryResult!7675)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41916 (_ BitVec 32)) SeekEntryResult!7675)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755926 (= res!511141 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20068 a!3186) j!159) mask!3328) (select (arr!20068 a!3186) j!159) a!3186 mask!3328) lt!336554))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!755926 (= lt!336554 (Intermediate!7675 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755927 () Bool)

(declare-fun res!511130 () Bool)

(assert (=> b!755927 (=> (not res!511130) (not e!421548))))

(assert (=> b!755927 (= res!511130 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20489 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20489 a!3186))))))

(declare-fun b!755928 () Bool)

(declare-fun res!511128 () Bool)

(assert (=> b!755928 (=> (not res!511128) (not e!421546))))

(assert (=> b!755928 (= res!511128 (and (= (size!20489 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20489 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20489 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755929 () Bool)

(declare-fun e!421544 () Bool)

(assert (=> b!755929 (= e!421544 e!421550)))

(declare-fun res!511145 () Bool)

(assert (=> b!755929 (=> res!511145 e!421550)))

(declare-fun lt!336544 () SeekEntryResult!7675)

(assert (=> b!755929 (= res!511145 (not (= lt!336543 lt!336544)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41916 (_ BitVec 32)) SeekEntryResult!7675)

(assert (=> b!755929 (= lt!336543 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20068 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755930 () Bool)

(declare-fun res!511143 () Bool)

(assert (=> b!755930 (=> (not res!511143) (not e!421553))))

(assert (=> b!755930 (= res!511143 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20068 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755931 () Bool)

(assert (=> b!755931 (= e!421551 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20068 a!3186) j!159) a!3186 mask!3328) lt!336554))))

(declare-fun b!755932 () Bool)

(declare-fun e!421549 () Bool)

(assert (=> b!755932 (= e!421549 (not e!421544))))

(declare-fun res!511140 () Bool)

(assert (=> b!755932 (=> res!511140 e!421544)))

(declare-fun lt!336553 () SeekEntryResult!7675)

(get-info :version)

(assert (=> b!755932 (= res!511140 (or (not ((_ is Intermediate!7675) lt!336553)) (bvslt x!1131 (x!63994 lt!336553)) (not (= x!1131 (x!63994 lt!336553))) (not (= index!1321 (index!33069 lt!336553)))))))

(declare-fun e!421543 () Bool)

(assert (=> b!755932 e!421543))

(declare-fun res!511139 () Bool)

(assert (=> b!755932 (=> (not res!511139) (not e!421543))))

(assert (=> b!755932 (= res!511139 (= lt!336551 lt!336544))))

(assert (=> b!755932 (= lt!336544 (Found!7675 j!159))))

(assert (=> b!755932 (= lt!336551 (seekEntryOrOpen!0 (select (arr!20068 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755932 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336550 () Unit!26102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41916 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26102)

(assert (=> b!755932 (= lt!336550 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755933 () Bool)

(assert (=> b!755933 (= e!421551 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20068 a!3186) j!159) a!3186 mask!3328) (Found!7675 j!159)))))

(declare-fun b!755934 () Bool)

(declare-fun res!511137 () Bool)

(assert (=> b!755934 (=> (not res!511137) (not e!421548))))

(declare-datatypes ((List!14123 0))(
  ( (Nil!14120) (Cons!14119 (h!15191 (_ BitVec 64)) (t!20446 List!14123)) )
))
(declare-fun arrayNoDuplicates!0 (array!41916 (_ BitVec 32) List!14123) Bool)

(assert (=> b!755934 (= res!511137 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14120))))

(declare-fun b!755935 () Bool)

(declare-fun res!511135 () Bool)

(assert (=> b!755935 (=> (not res!511135) (not e!421546))))

(assert (=> b!755935 (= res!511135 (validKeyInArray!0 k0!2102))))

(declare-fun b!755936 () Bool)

(declare-fun res!511131 () Bool)

(assert (=> b!755936 (=> (not res!511131) (not e!421546))))

(declare-fun arrayContainsKey!0 (array!41916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755936 (= res!511131 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755937 () Bool)

(assert (=> b!755937 (= e!421543 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20068 a!3186) j!159) a!3186 mask!3328) lt!336544))))

(declare-fun res!511142 () Bool)

(assert (=> start!65790 (=> (not res!511142) (not e!421546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65790 (= res!511142 (validMask!0 mask!3328))))

(assert (=> start!65790 e!421546))

(assert (=> start!65790 true))

(declare-fun array_inv!15842 (array!41916) Bool)

(assert (=> start!65790 (array_inv!15842 a!3186)))

(declare-fun b!755938 () Bool)

(declare-fun res!511134 () Bool)

(assert (=> b!755938 (=> (not res!511134) (not e!421552))))

(declare-fun lt!336546 () array!41916)

(assert (=> b!755938 (= res!511134 (= (seekEntryOrOpen!0 lt!336549 lt!336546 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336549 lt!336546 mask!3328)))))

(declare-fun b!755939 () Bool)

(assert (=> b!755939 (= e!421553 e!421549)))

(declare-fun res!511129 () Bool)

(assert (=> b!755939 (=> (not res!511129) (not e!421549))))

(declare-fun lt!336545 () SeekEntryResult!7675)

(assert (=> b!755939 (= res!511129 (= lt!336545 lt!336553))))

(assert (=> b!755939 (= lt!336553 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336549 lt!336546 mask!3328))))

(assert (=> b!755939 (= lt!336545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336549 mask!3328) lt!336549 lt!336546 mask!3328))))

(assert (=> b!755939 (= lt!336549 (select (store (arr!20068 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!755939 (= lt!336546 (array!41917 (store (arr!20068 a!3186) i!1173 k0!2102) (size!20489 a!3186)))))

(assert (= (and start!65790 res!511142) b!755928))

(assert (= (and b!755928 res!511128) b!755918))

(assert (= (and b!755918 res!511146) b!755935))

(assert (= (and b!755935 res!511135) b!755936))

(assert (= (and b!755936 res!511131) b!755921))

(assert (= (and b!755921 res!511138) b!755919))

(assert (= (and b!755919 res!511144) b!755934))

(assert (= (and b!755934 res!511137) b!755927))

(assert (= (and b!755927 res!511130) b!755926))

(assert (= (and b!755926 res!511141) b!755930))

(assert (= (and b!755930 res!511143) b!755925))

(assert (= (and b!755925 c!82775) b!755931))

(assert (= (and b!755925 (not c!82775)) b!755933))

(assert (= (and b!755925 res!511133) b!755939))

(assert (= (and b!755939 res!511129) b!755932))

(assert (= (and b!755932 res!511139) b!755937))

(assert (= (and b!755932 (not res!511140)) b!755929))

(assert (= (and b!755929 (not res!511145)) b!755922))

(assert (= (and b!755922 (not res!511136)) b!755924))

(assert (= (and b!755924 c!82776) b!755917))

(assert (= (and b!755924 (not c!82776)) b!755920))

(assert (= (and b!755924 res!511132) b!755938))

(assert (= (and b!755938 res!511134) b!755923))

(declare-fun m!704069 () Bool)

(assert (=> b!755934 m!704069))

(declare-fun m!704071 () Bool)

(assert (=> b!755935 m!704071))

(declare-fun m!704073 () Bool)

(assert (=> b!755931 m!704073))

(assert (=> b!755931 m!704073))

(declare-fun m!704075 () Bool)

(assert (=> b!755931 m!704075))

(assert (=> b!755929 m!704073))

(assert (=> b!755929 m!704073))

(declare-fun m!704077 () Bool)

(assert (=> b!755929 m!704077))

(declare-fun m!704079 () Bool)

(assert (=> start!65790 m!704079))

(declare-fun m!704081 () Bool)

(assert (=> start!65790 m!704081))

(assert (=> b!755932 m!704073))

(assert (=> b!755932 m!704073))

(declare-fun m!704083 () Bool)

(assert (=> b!755932 m!704083))

(declare-fun m!704085 () Bool)

(assert (=> b!755932 m!704085))

(declare-fun m!704087 () Bool)

(assert (=> b!755932 m!704087))

(declare-fun m!704089 () Bool)

(assert (=> b!755919 m!704089))

(declare-fun m!704091 () Bool)

(assert (=> b!755930 m!704091))

(declare-fun m!704093 () Bool)

(assert (=> b!755938 m!704093))

(declare-fun m!704095 () Bool)

(assert (=> b!755938 m!704095))

(assert (=> b!755933 m!704073))

(assert (=> b!755933 m!704073))

(assert (=> b!755933 m!704077))

(assert (=> b!755937 m!704073))

(assert (=> b!755937 m!704073))

(declare-fun m!704097 () Bool)

(assert (=> b!755937 m!704097))

(declare-fun m!704099 () Bool)

(assert (=> b!755939 m!704099))

(declare-fun m!704101 () Bool)

(assert (=> b!755939 m!704101))

(assert (=> b!755939 m!704099))

(declare-fun m!704103 () Bool)

(assert (=> b!755939 m!704103))

(declare-fun m!704105 () Bool)

(assert (=> b!755939 m!704105))

(declare-fun m!704107 () Bool)

(assert (=> b!755939 m!704107))

(declare-fun m!704109 () Bool)

(assert (=> b!755936 m!704109))

(assert (=> b!755922 m!704103))

(declare-fun m!704111 () Bool)

(assert (=> b!755922 m!704111))

(assert (=> b!755926 m!704073))

(assert (=> b!755926 m!704073))

(declare-fun m!704113 () Bool)

(assert (=> b!755926 m!704113))

(assert (=> b!755926 m!704113))

(assert (=> b!755926 m!704073))

(declare-fun m!704115 () Bool)

(assert (=> b!755926 m!704115))

(declare-fun m!704117 () Bool)

(assert (=> b!755921 m!704117))

(assert (=> b!755918 m!704073))

(assert (=> b!755918 m!704073))

(declare-fun m!704119 () Bool)

(assert (=> b!755918 m!704119))

(check-sat (not b!755939) (not b!755933) (not b!755935) (not b!755931) (not b!755919) (not b!755918) (not b!755938) (not b!755936) (not start!65790) (not b!755934) (not b!755929) (not b!755926) (not b!755921) (not b!755932) (not b!755937))
(check-sat)
