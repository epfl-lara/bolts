; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65590 () Bool)

(assert start!65590)

(declare-fun b!749123 () Bool)

(declare-fun e!418050 () Bool)

(declare-fun e!418054 () Bool)

(assert (=> b!749123 (= e!418050 e!418054)))

(declare-fun res!505534 () Bool)

(assert (=> b!749123 (=> (not res!505534) (not e!418054))))

(declare-datatypes ((array!41716 0))(
  ( (array!41717 (arr!19968 (Array (_ BitVec 32) (_ BitVec 64))) (size!20389 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41716)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7575 0))(
  ( (MissingZero!7575 (index!32667 (_ BitVec 32))) (Found!7575 (index!32668 (_ BitVec 32))) (Intermediate!7575 (undefined!8387 Bool) (index!32669 (_ BitVec 32)) (x!63630 (_ BitVec 32))) (Undefined!7575) (MissingVacant!7575 (index!32670 (_ BitVec 32))) )
))
(declare-fun lt!333051 () SeekEntryResult!7575)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41716 (_ BitVec 32)) SeekEntryResult!7575)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749123 (= res!505534 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19968 a!3186) j!159) mask!3328) (select (arr!19968 a!3186) j!159) a!3186 mask!3328) lt!333051))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749123 (= lt!333051 (Intermediate!7575 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749124 () Bool)

(declare-datatypes ((Unit!25702 0))(
  ( (Unit!25703) )
))
(declare-fun e!418053 () Unit!25702)

(declare-fun Unit!25704 () Unit!25702)

(assert (=> b!749124 (= e!418053 Unit!25704)))

(assert (=> b!749124 false))

(declare-fun b!749125 () Bool)

(declare-fun res!505542 () Bool)

(declare-fun e!418052 () Bool)

(assert (=> b!749125 (=> res!505542 e!418052)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!333053 () SeekEntryResult!7575)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41716 (_ BitVec 32)) SeekEntryResult!7575)

(assert (=> b!749125 (= res!505542 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19968 a!3186) j!159) a!3186 mask!3328) lt!333053)))))

(declare-fun b!749126 () Bool)

(declare-fun res!505544 () Bool)

(assert (=> b!749126 (=> (not res!505544) (not e!418050))))

(declare-datatypes ((List!14023 0))(
  ( (Nil!14020) (Cons!14019 (h!15091 (_ BitVec 64)) (t!20346 List!14023)) )
))
(declare-fun arrayNoDuplicates!0 (array!41716 (_ BitVec 32) List!14023) Bool)

(assert (=> b!749126 (= res!505544 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14020))))

(declare-fun res!505541 () Bool)

(declare-fun e!418058 () Bool)

(assert (=> start!65590 (=> (not res!505541) (not e!418058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65590 (= res!505541 (validMask!0 mask!3328))))

(assert (=> start!65590 e!418058))

(assert (=> start!65590 true))

(declare-fun array_inv!15742 (array!41716) Bool)

(assert (=> start!65590 (array_inv!15742 a!3186)))

(declare-fun b!749127 () Bool)

(declare-fun res!505540 () Bool)

(assert (=> b!749127 (=> (not res!505540) (not e!418050))))

(assert (=> b!749127 (= res!505540 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20389 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20389 a!3186))))))

(declare-fun b!749128 () Bool)

(declare-fun e!418055 () Bool)

(assert (=> b!749128 (= e!418055 true)))

(declare-fun e!418049 () Bool)

(assert (=> b!749128 e!418049))

(declare-fun res!505547 () Bool)

(assert (=> b!749128 (=> (not res!505547) (not e!418049))))

(declare-fun lt!333054 () (_ BitVec 64))

(assert (=> b!749128 (= res!505547 (= lt!333054 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333050 () Unit!25702)

(assert (=> b!749128 (= lt!333050 e!418053)))

(declare-fun c!82176 () Bool)

(assert (=> b!749128 (= c!82176 (= lt!333054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749129 () Bool)

(declare-fun res!505539 () Bool)

(assert (=> b!749129 (=> (not res!505539) (not e!418054))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749129 (= res!505539 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19968 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749130 () Bool)

(declare-fun res!505548 () Bool)

(assert (=> b!749130 (=> (not res!505548) (not e!418058))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749130 (= res!505548 (validKeyInArray!0 k!2102))))

(declare-fun b!749131 () Bool)

(declare-fun e!418056 () Bool)

(assert (=> b!749131 (= e!418056 (not e!418052))))

(declare-fun res!505543 () Bool)

(assert (=> b!749131 (=> res!505543 e!418052)))

(declare-fun lt!333049 () SeekEntryResult!7575)

(assert (=> b!749131 (= res!505543 (or (not (is-Intermediate!7575 lt!333049)) (bvslt x!1131 (x!63630 lt!333049)) (not (= x!1131 (x!63630 lt!333049))) (not (= index!1321 (index!32669 lt!333049)))))))

(declare-fun e!418051 () Bool)

(assert (=> b!749131 e!418051))

(declare-fun res!505538 () Bool)

(assert (=> b!749131 (=> (not res!505538) (not e!418051))))

(declare-fun lt!333058 () SeekEntryResult!7575)

(assert (=> b!749131 (= res!505538 (= lt!333058 lt!333053))))

(assert (=> b!749131 (= lt!333053 (Found!7575 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41716 (_ BitVec 32)) SeekEntryResult!7575)

(assert (=> b!749131 (= lt!333058 (seekEntryOrOpen!0 (select (arr!19968 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41716 (_ BitVec 32)) Bool)

(assert (=> b!749131 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333059 () Unit!25702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41716 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25702)

(assert (=> b!749131 (= lt!333059 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749132 () Bool)

(declare-fun Unit!25705 () Unit!25702)

(assert (=> b!749132 (= e!418053 Unit!25705)))

(declare-fun b!749133 () Bool)

(declare-fun res!505536 () Bool)

(assert (=> b!749133 (=> (not res!505536) (not e!418050))))

(assert (=> b!749133 (= res!505536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749134 () Bool)

(assert (=> b!749134 (= e!418051 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19968 a!3186) j!159) a!3186 mask!3328) lt!333053))))

(declare-fun b!749135 () Bool)

(declare-fun e!418059 () Bool)

(assert (=> b!749135 (= e!418059 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19968 a!3186) j!159) a!3186 mask!3328) lt!333051))))

(declare-fun b!749136 () Bool)

(assert (=> b!749136 (= e!418054 e!418056)))

(declare-fun res!505537 () Bool)

(assert (=> b!749136 (=> (not res!505537) (not e!418056))))

(declare-fun lt!333055 () SeekEntryResult!7575)

(assert (=> b!749136 (= res!505537 (= lt!333055 lt!333049))))

(declare-fun lt!333057 () array!41716)

(declare-fun lt!333056 () (_ BitVec 64))

(assert (=> b!749136 (= lt!333049 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333056 lt!333057 mask!3328))))

(assert (=> b!749136 (= lt!333055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333056 mask!3328) lt!333056 lt!333057 mask!3328))))

(assert (=> b!749136 (= lt!333056 (select (store (arr!19968 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749136 (= lt!333057 (array!41717 (store (arr!19968 a!3186) i!1173 k!2102) (size!20389 a!3186)))))

(declare-fun b!749137 () Bool)

(assert (=> b!749137 (= e!418059 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19968 a!3186) j!159) a!3186 mask!3328) (Found!7575 j!159)))))

(declare-fun b!749138 () Bool)

(declare-fun res!505545 () Bool)

(assert (=> b!749138 (=> (not res!505545) (not e!418054))))

(assert (=> b!749138 (= res!505545 e!418059)))

(declare-fun c!82175 () Bool)

(assert (=> b!749138 (= c!82175 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749139 () Bool)

(declare-fun res!505549 () Bool)

(assert (=> b!749139 (=> (not res!505549) (not e!418058))))

(assert (=> b!749139 (= res!505549 (and (= (size!20389 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20389 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20389 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749140 () Bool)

(assert (=> b!749140 (= e!418049 (= (seekEntryOrOpen!0 lt!333056 lt!333057 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333056 lt!333057 mask!3328)))))

(declare-fun b!749141 () Bool)

(assert (=> b!749141 (= e!418058 e!418050)))

(declare-fun res!505535 () Bool)

(assert (=> b!749141 (=> (not res!505535) (not e!418050))))

(declare-fun lt!333052 () SeekEntryResult!7575)

(assert (=> b!749141 (= res!505535 (or (= lt!333052 (MissingZero!7575 i!1173)) (= lt!333052 (MissingVacant!7575 i!1173))))))

(assert (=> b!749141 (= lt!333052 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749142 () Bool)

(declare-fun res!505546 () Bool)

(assert (=> b!749142 (=> (not res!505546) (not e!418058))))

(assert (=> b!749142 (= res!505546 (validKeyInArray!0 (select (arr!19968 a!3186) j!159)))))

(declare-fun b!749143 () Bool)

(declare-fun res!505551 () Bool)

(assert (=> b!749143 (=> (not res!505551) (not e!418058))))

(declare-fun arrayContainsKey!0 (array!41716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749143 (= res!505551 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749144 () Bool)

(assert (=> b!749144 (= e!418052 e!418055)))

(declare-fun res!505550 () Bool)

(assert (=> b!749144 (=> res!505550 e!418055)))

(assert (=> b!749144 (= res!505550 (= lt!333054 lt!333056))))

(assert (=> b!749144 (= lt!333054 (select (store (arr!19968 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65590 res!505541) b!749139))

(assert (= (and b!749139 res!505549) b!749142))

(assert (= (and b!749142 res!505546) b!749130))

(assert (= (and b!749130 res!505548) b!749143))

(assert (= (and b!749143 res!505551) b!749141))

(assert (= (and b!749141 res!505535) b!749133))

(assert (= (and b!749133 res!505536) b!749126))

(assert (= (and b!749126 res!505544) b!749127))

(assert (= (and b!749127 res!505540) b!749123))

(assert (= (and b!749123 res!505534) b!749129))

(assert (= (and b!749129 res!505539) b!749138))

(assert (= (and b!749138 c!82175) b!749135))

(assert (= (and b!749138 (not c!82175)) b!749137))

(assert (= (and b!749138 res!505545) b!749136))

(assert (= (and b!749136 res!505537) b!749131))

(assert (= (and b!749131 res!505538) b!749134))

(assert (= (and b!749131 (not res!505543)) b!749125))

(assert (= (and b!749125 (not res!505542)) b!749144))

(assert (= (and b!749144 (not res!505550)) b!749128))

(assert (= (and b!749128 c!82176) b!749124))

(assert (= (and b!749128 (not c!82176)) b!749132))

(assert (= (and b!749128 res!505547) b!749140))

(declare-fun m!698869 () Bool)

(assert (=> b!749142 m!698869))

(assert (=> b!749142 m!698869))

(declare-fun m!698871 () Bool)

(assert (=> b!749142 m!698871))

(declare-fun m!698873 () Bool)

(assert (=> b!749129 m!698873))

(declare-fun m!698875 () Bool)

(assert (=> start!65590 m!698875))

(declare-fun m!698877 () Bool)

(assert (=> start!65590 m!698877))

(declare-fun m!698879 () Bool)

(assert (=> b!749130 m!698879))

(declare-fun m!698881 () Bool)

(assert (=> b!749133 m!698881))

(declare-fun m!698883 () Bool)

(assert (=> b!749140 m!698883))

(declare-fun m!698885 () Bool)

(assert (=> b!749140 m!698885))

(assert (=> b!749123 m!698869))

(assert (=> b!749123 m!698869))

(declare-fun m!698887 () Bool)

(assert (=> b!749123 m!698887))

(assert (=> b!749123 m!698887))

(assert (=> b!749123 m!698869))

(declare-fun m!698889 () Bool)

(assert (=> b!749123 m!698889))

(assert (=> b!749125 m!698869))

(assert (=> b!749125 m!698869))

(declare-fun m!698891 () Bool)

(assert (=> b!749125 m!698891))

(assert (=> b!749134 m!698869))

(assert (=> b!749134 m!698869))

(declare-fun m!698893 () Bool)

(assert (=> b!749134 m!698893))

(declare-fun m!698895 () Bool)

(assert (=> b!749126 m!698895))

(declare-fun m!698897 () Bool)

(assert (=> b!749143 m!698897))

(declare-fun m!698899 () Bool)

(assert (=> b!749141 m!698899))

(assert (=> b!749135 m!698869))

(assert (=> b!749135 m!698869))

(declare-fun m!698901 () Bool)

(assert (=> b!749135 m!698901))

(assert (=> b!749131 m!698869))

(assert (=> b!749131 m!698869))

(declare-fun m!698903 () Bool)

(assert (=> b!749131 m!698903))

(declare-fun m!698905 () Bool)

(assert (=> b!749131 m!698905))

(declare-fun m!698907 () Bool)

(assert (=> b!749131 m!698907))

(assert (=> b!749137 m!698869))

(assert (=> b!749137 m!698869))

(assert (=> b!749137 m!698891))

(declare-fun m!698909 () Bool)

(assert (=> b!749136 m!698909))

(declare-fun m!698911 () Bool)

(assert (=> b!749136 m!698911))

(assert (=> b!749136 m!698909))

(declare-fun m!698913 () Bool)

(assert (=> b!749136 m!698913))

(declare-fun m!698915 () Bool)

(assert (=> b!749136 m!698915))

(declare-fun m!698917 () Bool)

(assert (=> b!749136 m!698917))

(assert (=> b!749144 m!698915))

(declare-fun m!698919 () Bool)

(assert (=> b!749144 m!698919))

(push 1)

